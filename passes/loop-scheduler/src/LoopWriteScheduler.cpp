#include "Configurations.hpp"
#include "LoopWriteScheduler.hpp"
#include "Utils.hpp"

using namespace llvm;
using namespace LoopWriteScheduler;


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

/*
 * Order the WAR store instructions in the order that they appear in.
 * This will be the order the reschedules stores will appear in.
 */
void orderWars(Noelle &N, LoopStructure *LS, BasicBlock *latch,
               InstructionDependecyMap &warDep,
               list<Instruction *> &warDepOrder) {
    /*
     * Get Dominator information for the function
     */
    auto D = N.getDominators(LS->getFunction())->DT;

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

void findLoadsDependingOnRescheduledStores(
    list<Instruction *> &warRescheduleInst, InstructionDependecyMap &rawDep,
    map<Instruction *, list<Instruction *>> &affectedLoadStoresMap) {

    for (auto raw : rawDep) {
        auto &load = raw.first;
        auto &writes = raw.second;
        for (auto war : warRescheduleInst) {
            // If this RAW depends on a WAR that we will reschedule
            if (find(writes.begin(), writes.end(), war) != writes.end()) {
                affectedLoadStoresMap[load].push_back(war);
            }
        }
    }
}

void insertLoadChecks(
    map<Instruction *, list<Instruction *>> &affectedLoadStoresMap,
    Function *F) {

    errs() << "\n";
    for (auto rload : affectedLoadStoresMap) {
        auto load = rload.first;
        auto block = load->getParent();
        errs() << "Resolving load: " << *load << "\n";

        // Add metadata
        Utils::SetInstrumentationMetadata(load, "ics_scheduler", "ics_resolved_load");

        // Get a builder
        auto builder = Utils::GetBuilder(F, block);
        builder.SetInsertPoint(load->getNextNode());
        auto insert_point = load->getNextNode();

        auto load_inst = dyn_cast<LoadInst>(load);
        auto load_src = load_inst->getPointerOperand();
        errs() << "Load src: " << *load_src << "\n";

        // Add a check for each store location
        Value *load_propagated = load_inst;
        Value *first_select_inst = nullptr;
        for (auto store : rload.second) {
            auto store_inst = dyn_cast<StoreInst>(store);
            auto store_src = store_inst->getValueOperand();
            auto store_dst = store_inst->getPointerOperand();
            errs() << "Load propagated: " << *load_propagated << "\n";
            errs() << "Store src: " << *store_src << "\n";
            errs() << "Store dst: " << *store_dst << "\n";

            auto icmp_inst = builder.CreateICmpEQ(load_src, store_dst);
            auto select_inst =
                builder.CreateSelect(icmp_inst, store_src, load_propagated);

            // Add metadata
            Utils::SetInstrumentationMetadata(cast<ICmpInst>(icmp_inst),
                                              "ics_scheduler",
                                              "ics_resolved_load_icmp");
            Utils::SetInstrumentationMetadata(cast<SelectInst>(select_inst),
                                              "ics_scheduler",
                                              "ics_resolved_load_select");

            // Next select instruction uses the result of the previous select
            // to propagate the load, or correct store value forward.
            load_propagated = select_inst;

            if (first_select_inst == nullptr)
                first_select_inst = select_inst;
        }

        if (first_select_inst != nullptr) {

        }
        // Replace the use of the load (except the use in the select
        // instruction) with the last select instruction
        for (LoadInst::use_iterator UI = load_inst->use_begin(),
                                    E = load_inst->use_end();
                                    UI != E;) {
            Use &U = *UI;
            ++UI;
            auto user = U.getUser();
            if (user == first_select_inst) {
                continue;
            }
            // Add metadata
            Utils::SetInstrumentationMetadata(cast<Instruction>(user), "ics_scheduler", "ics_resolved_load_use");
            U.set(load_propagated);
        }
    }
}


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

bool LoopWriteScheduler::Schedule(Noelle &N, Module &M) {
    errs() << "Running LoopWriteScheduler::Schedule on: " << M.getName() << "\n";

    bool modified = false;

    /*
     * Fetch the entry point.
     */
    auto fm = N.getFunctionsManager();
    auto mainF = fm->getEntryFunction();

    /*
     * Iterate over the loops
     */
    auto loops = N.getLoops();
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

        /*
         * WAR stores can only be rescheduled if they dominate the latch.
         * We also place them in the latch.
         */
        BasicBlock *latch = *LS->getLatches().begin();

        /*
         * Order the WAR stores correctly
         */
        list<Instruction *> warDepOrder;
        orderWars(N, LS, latch, instDep.warDep, warDepOrder);


        /*
         * If a WAR store is already in the latch we don't have to reschedule it.
         */
        list<Instruction *> warRescheduleInst;
        for (auto war : warDepOrder) {
            if (war->getParent() != latch) {
                warRescheduleInst.push_back(war);
            }
        }

        /*
         * Find the RAW load dependencies that have to be resolved when we move
         * a WAR store.
         */
        map<Instruction *, list<Instruction *>> affectedLoadStoresMap;
        findLoadsDependingOnRescheduledStores(warRescheduleInst, instDep.rawDep,
                                              affectedLoadStoresMap);

        /*
         * Find the exit blocks that need to be modified when we reschedule
         * the WAR stores.
         * This needs to be done because if the loop exits early (before the latch)
         * the stores up to that point need to be written.
         */
        map<Instruction *, pair<BasicBlock *, BasicBlock *>> scheduleExitEdges;
        for (auto exit : LS->getLoopExitEdges()) {
            for (auto war : warRescheduleInst) {
                if (war->getParent() == exit.first) {
                    scheduleExitEdges[war] = exit;
                }
            }
        }

        /*
         * Find the WAR store insertion point in the latch block
         */
        Instruction *storeInsertPoint;
        for (Instruction &inst : *latch) {
            storeInsertPoint = &inst;
          if (dyn_cast<StoreInst>(&inst)) {
              break;
          }
        }

        /*
         * Print some information
         */
        errs() << "WAR order that should be rescheduled\n";
        for (auto war : warRescheduleInst) {
            errs() << *war << "\n";
        }

        errs() << "Loads that are affected by rescheduling the WAR stores\n";
        for (auto kv : affectedLoadStoresMap) {
            errs() << *kv.first << " due to stores:\n";
            for (auto store : kv.second) {
                errs() << *store << "\n";
            }
        }

        errs() << "Exit edges to modify\n";
        for (auto kv : scheduleExitEdges) {
            errs() << "WAR: " << *kv.first << "\nin edge:" << *kv.second.first
                   << " TO " << *kv.second.second << "\n";
        }

        errs() << "Latch block: " << *latch;
        errs() << "Store insertion point (before) in latch: " << *storeInsertPoint << "\n";

        /*
         * Transform the IR
         */

        /*
         * Insert additional stores in the early exits (critical edges) of the
         * loop.
         * Each exit should write all postponed (rescheduled) stores up to that
         * point before exiting the loop.
         */
        list<Instruction *> previousWrites;
        for (auto war : warRescheduleInst) {
            auto edge = scheduleExitEdges[war];
            auto block = edge.second;

            auto builder = Utils::GetBuilder(F, block);

            builder.SetInsertPoint(block->getFirstNonPHI());

            // This WAR also has to be inserted in the next exit
            previousWrites.push_back(war);

            // Insert all postponed writes untill now in the early exit
            for (auto pwrite : previousWrites) {
                auto clone_write = pwrite->clone();

                // Add metadata
                Utils::SetInstrumentationMetadata(clone_write, "ics_scheduler", "ics_write_early_exit");

                // Insert the write
                builder.Insert(clone_write);
            }
        }

        /*
         * Move the WAR stores (ordered) to the insertion point
         */
        for (auto war : warRescheduleInst) {
            auto war_bb = war->getParent();
            war->moveBefore(storeInsertPoint);
            // Add metadata
            Utils::SetInstrumentationMetadata(war, "ics_scheduler", "ics_moved_write");
        }


        /*
         * Instrument the loads to check if it loads a value that "should" have
         * been written, but has been postponed
         */
        insertLoadChecks(affectedLoadStoresMap, F);

        modified = true;

        /*
         * Print the IR of the new version of the function (for debugging)
         */
        errs() << "\n\nNew function:\n";
        errs() << *LS->getFunction();
    }

    return modified;
}
