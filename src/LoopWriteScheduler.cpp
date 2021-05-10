#include "Configurations.hpp"
#include "LoopWriteScheduler.hpp"
#include "Utils.hpp"

using namespace llvm;
using namespace LoopWriteScheduler;

bool LoopWriteScheduler::isCandidate(LoopStructure *LS) {
    auto n_subloops = LS->getNumberOfSubLoops();

    // For testing, should be removed before using on other LLVMIR
    if (LS->getFunction()->getName() != "list_reverse") {
        return false;
    }

    if (n_subloops != 0) {
        return false;
    }

    auto latches = LS->getLatches();
    if (latches.size() > 1) {
        errs() << "Loop has multiple latches, not a candidate\n";
        return false;
    }

    // Is a candidate
    return true;
}


void collectInstructionDependencies(LoopDependenceInfo *loop, InstructionDependencies &instDep) {
    auto sccManager = loop->getSCCManager();
    auto SCCDAG = sccManager->getSCCDAG();
    auto LDG = loop->getLoopDG();

    auto sccIterator = [&](SCC *scc) -> bool {
        /*
         * Check if @scc is a single instruction
         */
        if (!scc->hasCycle()) {
            return false;
        }

        /*
         * Print the instructions that compose the SCC.
         */
        errs() << "     Instructions:\n";
        auto mySCCIter = [&](Instruction *i) -> bool {
            errs() << "       " << *i << "\n";

            list<Value *> war_deps;
            list<Value *> raw_deps;

            auto iterDep = [&](Value *src, DGEdge<Value> *dependence) -> bool {
                if (dependence->isLoopCarriedDependence()) {
                    return false;
                }
                switch (dependence->dataDependenceType()) {
                    case DG_DATA_WAR:
                        errs() << "             needs [WAR]";
                        errs() << "  " << *src << "\n";
                        war_deps.push_back(src);
                        break;
                    case DG_DATA_RAW:
                        errs() << "             needs [RAW]";
                        errs() << "  " << *src << "\n";
                        raw_deps.push_back(src);
                        break;
                    case DG_DATA_WAW:
                        errs() << "             needs [WAW]";
                        errs() << "  " << *src << "\n";
                        break;
                    case DG_DATA_NONE:
                        break;
                    default:
                        errs() << "             needs [UNKNOWN]";
                }
                return false;
            };

            LDG->iterateOverDependencesTo(i, false, true, false, iterDep);
            if (war_deps.size() > 0)
                instDep.addWar(i, war_deps);
            if (raw_deps.size() > 0)
                instDep.addRaw(i, raw_deps);

            return false;
        };
        scc->iterateOverInstructions(mySCCIter);

        return false;
    };

    SCCDAG->iterateOverSCCs(sccIterator);
}

// Collect the loop body instructions that have WAR and RAW violations
//  -

void orderWars(Noelle &noelle, LoopStructure *LS, BasicBlock *latch,
               InstructionDependecyMap &warDep,
               list<Instruction *> &warDepOrder) {
    /*
     * Get Dominator information for the function
     */
    auto D = noelle.getDominators(LS->getFunction())->DT;

    warDepOrder.clear();

    // Get all the war instructions
    for (const auto &kv : warDep) {
        // Only schedule if it dominates the latch (TODO: is this check needed?)
        auto war_inst = kv.first;

        if (D.dominates(war_inst->getParent(), latch)) {
            warDepOrder.push_back(kv.first);
        } else {
            errs() << "War Instruction: " << *war_inst << " does not dominate the latch, can not schedule\n";
        }
    }

    // Sort the list
    warDepOrder.sort([&](Instruction *a, Instruction *b) {
                return D.dominates(a, b);
            });
}

bool LoopWriteScheduler::Schedule(Noelle &noelle, Module &M) {
    errs() << "Running LoopWriteScheduler on: " << M.getName() << "\n";

    /*
     * Fetch the entry point.
     */
    auto fm = noelle.getFunctionsManager();
    auto mainF = fm->getEntryFunction();

    /*
     * Iterate over the loops
     */
    auto loops = noelle.getLoops();
    for (auto loop : *loops) {

        auto LS = loop->getLoopStructure();
        auto entryInst = LS->getEntryInstruction();
        auto F = LS->getFunction();
        auto functionName = F->getName();

        if (isCandidate(LS) == false) {
            continue;
        }

        errs() << "Function: " << functionName << "\n"
               << "  Loop: " << *entryInst << "\n";

        /*
         * Collect WAR and RAW violations in the loop body
         */
        InstructionDependencies instDep;
        collectInstructionDependencies(loop, instDep);

#if 0
        /*
         * Get Dominator information for the function
         */
        auto D = noelle.getDominators(LS->getFunction())->DT;

        for (const auto &kv_a : instDep.warDep) {
            errs() << "WAR instruction: " << *kv_a.first << "\n";
            for (const auto &kv_b : instDep.warDep) {
                if (kv_a.first != kv_b.first) {
                    auto dom = D.dominates(kv_a.first, kv_b.first);
                    if (dom)
                        errs() << "  Dominates war: " << *kv_b.first << "\n";
                    else
                        errs() << "  DOES NOT dominate war: " << *kv_b.first
                               << "\n";
                }
            }
        }
#endif

#if 0
        for (auto latch : LS->getLatches()) {
            errs() << "Latch: " << *latch << "\n";
        }

        for (auto exit : LS->getLoopExitEdges()) {
            errs() << "Exit block: " << *exit.first << " to " << *exit.second << "\n";
        }
#endif

        // isCandidate checks if there is only one latch
        BasicBlock *latch = *LS->getLatches().begin();

        list<Instruction *> warDepOrder;
        orderWars(noelle, LS, latch, instDep.warDep, warDepOrder);

#if 0
        errs() << "WAR order that can be rescheduled (dominates latch)\n";
        for (auto war : warDepOrder) {
            errs() << *war << "\n";
        }
#endif

        // Get the Instructrions to reschedule (remove stores in the latch)
        list<Instruction *> warRescheduleInst;
        for (auto war : warDepOrder) {
            if (war->getParent() != latch) {
                warRescheduleInst.push_back(war);
            }
        }

#if 0
        // Find the RAW dependencies that have to be resolved when we move a
        // store WAR.
        map<Instruction *, list<Instruction *>> resolveLoads;
        for (auto raw : instDep.rawDep) {
            auto &load = raw.first;
            auto &writes = raw.second;
            for (auto war : warRescheduleInst) {
                // If this RAW depends on a WAR that we will reschedule
                if (find(writes.begin(), writes.end(), war) != writes.end()) {
                    resolveLoads[war].push_back(load);
                }
            }
        }

        errs() << "WAR order that should be rescheduled\n";
        for (auto war : warRescheduleInst) {
            errs() << *war << "\n";
            errs() << "  affected loads:\n";
            for (auto load : resolveLoads[war]) {
                errs() << "  " << *load << "\n";
            }
        }
#endif
        // Find the RAW dependencies that have to be resolved when we move a
        // store WAR.
        map<Instruction *, list<Instruction *>> resolveLoads;
        map<Instruction *, list<Instruction *>> affectedWarLoads;
        for (auto raw : instDep.rawDep) {
            auto &load = raw.first;
            auto &writes = raw.second;
            for (auto war : warRescheduleInst) {
                // If this RAW depends on a WAR that we will reschedule
                if (find(writes.begin(), writes.end(), war) != writes.end()) {
                    resolveLoads[load].push_back(war);
                    affectedWarLoads[war].push_back(load);
                }
            }
        }

        errs() << "WAR order that should be rescheduled\n";
        for (auto war : warRescheduleInst) {
            errs() << *war << "\n";
            errs() << "  affected loads:\n";
            for (auto load : affectedWarLoads[war]) {
                errs() << "  " << *load << "\n";
            }
        }

        // Find the exit blocks that have to be modified if we reschedule
        // the write
        map<Instruction *, pair<BasicBlock *, BasicBlock *>> scheduleExitEdges;
        for (auto exit : LS->getLoopExitEdges()) {
            for (auto war : warRescheduleInst) {
                if (war->getParent() == exit.first) {
                    scheduleExitEdges[war] = exit;
                }
            }
        }

        errs() << "Exit edges to modify\n";
        for (auto kv : scheduleExitEdges) {
            errs() << "WAR: " << *kv.first << "\nin edge:" << *kv.second.first
                   << " TO " << *kv.second.second << "\n";
        }

        /*
         * Modify the IR
         */
        // 1. Remove the store from its current block
        // 2. Insert write in the latch (after the last load, before any other stores)
        // 3. "Solve" the loads (insert checks if addresses overlap)
        // 4. Add additional writebacks between the edge from a bock that had a write
        //    moved and an exit

        // Find where to place the writes
        // TODO: Only break if the store is a WAR store
        errs() << "Latch block: " << *latch;
        Instruction *insertPointLatch;
        for (Instruction &inst : *latch) {
            insertPointLatch = &inst;
          if (dyn_cast<StoreInst>(&inst)) {
              break;
          }
        }
        errs() << "Insertion point (before) in latch: " << *insertPointLatch << "\n";

        for (auto war : warRescheduleInst) {
            war->moveBefore(insertPointLatch);
        }

        /*
         * Create a basic block for the writeback before exits
         */
        list<Instruction *> previousWrites;
        for (auto war : warRescheduleInst) {
            auto edge = scheduleExitEdges[war];
            auto block = edge.second;

            auto builder = Utils::GetBuilder(F, block);

            builder.SetInsertPoint(block->getFirstNonPHI());
            for (auto pwrite : previousWrites) {
                builder.Insert(pwrite->clone());
            }
            builder.Insert(war->clone());

            // This WAR also has to be inserted in the next exit
            previousWrites.push_back(war);
        }

        /*
         * Instrument the loads to check if it loads a value that "should" have
         * been written, bat will be postponed
         */
        errs() << "\n";

        list<Value *> keepLoadUses;
        for (auto rload : resolveLoads) {
            auto load = rload.first;
            auto block = load->getParent();
            errs() << "Resolving load: " << *load << "\n";

            // Get a builder
            auto builder = Utils::GetBuilder(F, block);
            builder.SetInsertPoint(load->getNextNode());
            auto insert_point = load->getNextNode();

            auto load_inst = dyn_cast<LoadInst>(load);
            auto load_src = load_inst->getPointerOperand();
            errs() << "Load src: " << *load_src << "\n";

            for (auto store : rload.second) {
                auto store_inst = dyn_cast<StoreInst>(store);
                auto store_src = store_inst->getValueOperand();
                auto store_dst = store_inst->getPointerOperand();
                errs() << "Store src: " << *store_src << "\n";
                errs() << "Store dst: " << *store_dst << "\n";

                auto icmp_inst = builder.CreateICmpEQ(load_src, store_dst);
                auto select_inst = builder.CreateSelect(icmp_inst, store_src, load_inst);

                keepLoadUses.push_back(select_inst);

#if 0
                // Replace the uses in the basic block EXCEPT for the use in
                // the select instruction
                for (LoadInst::use_iterator UI = load_inst->use_begin(), E = load_inst->use_end(); UI != E;) {
                    Use &U = *UI;
                    ++UI;
                    auto user = U.getUser();
                    if (user == select_inst) {
                        continue;
                    }
                    U.set(select_inst);
                }
#endif
            }
        }


        errs() << "\n\nNew function:\n";
        errs() << *LS->getFunction();
    }

    return false;
}
