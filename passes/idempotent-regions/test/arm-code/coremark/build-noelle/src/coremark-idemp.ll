; ModuleID = '/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src/coremark-norm.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-gnu"

%struct.RESULTS_S = type { i16, i16, i16, [4 x i8*], i32, i32, i32, %struct.list_head_s*, %struct.MAT_PARAMS_S, i16, i16, i16, i16, i16, %struct.CORE_PORTABLE_S }
%struct.list_head_s = type { %struct.list_head_s*, %struct.list_data_s* }
%struct.list_data_s = type { i16, i16 }
%struct.MAT_PARAMS_S = type { i32, i16*, i16*, i32* }
%struct.CORE_PORTABLE_S = type { i8 }
%struct.__va_list = type { i8* }
%union.anon = type { i64 }
%struct.out_fct_wrap_type = type { void (i8, i8*)*, i8* }

@mem_name = dso_local global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 4, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Heap\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Stack\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"6k performance run parameters for coremark.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"6k validation run parameters for coremark.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Profile generation run parameters for coremark.\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"2K performance run parameters for coremark.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"2K validation run parameters for coremark.\0A\00", align 1
@list_known_crc = internal global [5 x i16] [i16 -11088, i16 13120, i16 27257, i16 -6380, i16 -7231], align 2, !dbg !72
@.str.8 = private unnamed_addr constant [47 x i8] c"[%u]ERROR! list crc 0x%04x - should be 0x%04x\0A\00", align 1
@matrix_known_crc = internal global [5 x i16] [i16 -16814, i16 4505, i16 22024, i16 8151, i16 1863], align 2, !dbg !78
@.str.9 = private unnamed_addr constant [49 x i8] c"[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\0A\00", align 1
@state_known_crc = internal global [5 x i16] [i16 24135, i16 14783, i16 -6748, i16 -29126, i16 -29308], align 2, !dbg !80
@.str.10 = private unnamed_addr constant [48 x i8] c"[%u]ERROR! state crc 0x%04x - should be 0x%04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"CoreMark Size    : %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Total ticks      : %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Total time (secs): %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Iterations/Sec   : %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"ERROR! Must execute for at least 10 secs for a valid result!\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Iterations       : %lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Compiler version : %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"GCCClang 9.0.1 \00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Compiler flags   : %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Memory location  : %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"STACK\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"seedcrc          : 0x%04x\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"[%d]crclist       : 0x%04x\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"[%d]crcmatrix     : 0x%04x\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"[%d]crcstate      : 0x%04x\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"[%d]crcfinal      : 0x%04x\0A\00", align 1
@.str.28 = private unnamed_addr constant [73 x i8] c"Correct operation validated. See README.md for run and reporting rules.\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"CoreMark 1.0 : %f / %s %s\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c" / %s\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Errors detected\0A\00", align 1
@.str.33 = private unnamed_addr constant [99 x i8] c"Cannot validate operation for these seed values, please compare with results on a known platform.\0A\00", align 1
@intpat = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.37, i32 0, i32 0)], align 4, !dbg !85
@floatpat = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7.20, i32 0, i32 0)], align 4, !dbg !103
@scipat = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11.16, i32 0, i32 0)], align 4, !dbg !108
@errpat = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15.12, i32 0, i32 0)], align 4, !dbg !110
@.str.12.9 = private unnamed_addr constant [9 x i8] c"T0.3e-1F\00", align 1
@.str.13.10 = private unnamed_addr constant [9 x i8] c"-T.T++Tq\00", align 1
@.str.14.11 = private unnamed_addr constant [9 x i8] c"1T3.4e4z\00", align 1
@.str.15.12 = private unnamed_addr constant [9 x i8] c"34.0e-T^\00", align 1
@.str.8.13 = private unnamed_addr constant [9 x i8] c"5.500e+3\00", align 1
@.str.9.14 = private unnamed_addr constant [9 x i8] c"-.123e-2\00", align 1
@.str.10.15 = private unnamed_addr constant [9 x i8] c"-87e+832\00", align 1
@.str.11.16 = private unnamed_addr constant [9 x i8] c"+0.6e-12\00", align 1
@.str.4.17 = private unnamed_addr constant [9 x i8] c"35.54400\00", align 1
@.str.5.18 = private unnamed_addr constant [9 x i8] c".1234500\00", align 1
@.str.6.19 = private unnamed_addr constant [9 x i8] c"-110.700\00", align 1
@.str.7.20 = private unnamed_addr constant [9 x i8] c"+0.64400\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"5012\00", align 1
@.str.1.35 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.2.36 = private unnamed_addr constant [5 x i8] c"-874\00", align 1
@.str.3.37 = private unnamed_addr constant [5 x i8] c"+122\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"ERROR: Please modify the datatypes in core_portme.h!\0A\00", align 1
@seed1_volatile = dso_local global i32 0, align 4, !dbg !112
@seed2_volatile = dso_local global i32 0, align 4, !dbg !123
@seed3_volatile = dso_local global i32 102, align 4, !dbg !127
@seed4_volatile = dso_local global i32 5, align 4, !dbg !129
@seed5_volatile = dso_local global i32 0, align 4, !dbg !131
@dummy = common dso_local global i64 0, align 8, !dbg !135
@default_num_contexts = dso_local global i32 1, align 4, !dbg !133
@start_time_val = internal global i64 0, align 8, !dbg !141
@stop_time_val = internal global i64 0, align 8, !dbg !143
@.str.75 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1.76 = private unnamed_addr constant [5 x i8] c"fni-\00", align 1
@.str.2.77 = private unnamed_addr constant [5 x i8] c"fni+\00", align 1
@.str.3.78 = private unnamed_addr constant [4 x i8] c"fni\00", align 1
@_ftoa.pow10 = internal constant [10 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09], align 8, !dbg !145
@g_am_pfnVectors = dso_local constant [48 x void ()*] [void ()* bitcast (i32* @_estack to void ()*), void ()* @Reset_Handler, void ()* @NMI_Handler, void ()* @HardFault_Handler, void ()* @MemManage_Handler, void ()* @BusFault_Handler, void ()* @UsageFault_Handler, void ()* @SecureFault_Handler, void ()* null, void ()* null, void ()* null, void ()* @SVC_Handler, void ()* @DebugMon_Handler, void ()* null, void ()* @PendSV_Handler, void ()* @SysTick_Handler, void ()* @am_brownout_isr, void ()* @am_watchdog_isr, void ()* @am_rtc_isr, void ()* @am_vcomp_isr, void ()* @am_ioslave_ios_isr, void ()* @am_ioslave_acc_isr, void ()* @am_iomaster0_isr, void ()* @am_iomaster1_isr, void ()* @am_iomaster2_isr, void ()* @am_iomaster3_isr, void ()* @am_iomaster4_isr, void ()* @am_iomaster5_isr, void ()* @am_ble_isr, void ()* @am_gpio_isr, void ()* @am_ctimer_isr, void ()* @am_uart_isr, void ()* @am_uart1_isr, void ()* @am_scard_isr, void ()* @am_adc_isr, void ()* @am_pdm0_isr, void ()* @am_mspi0_isr, void ()* @am_software0_isr, void ()* @am_stimer_isr, void ()* @am_stimer_cmpr0_isr, void ()* @am_stimer_cmpr1_isr, void ()* @am_stimer_cmpr2_isr, void ()* @am_stimer_cmpr3_isr, void ()* @am_stimer_cmpr4_isr, void ()* @am_stimer_cmpr5_isr, void ()* @am_stimer_cmpr6_isr, void ()* @am_stimer_cmpr7_isr, void ()* @am_clkgen_isr], section ".isr_vector", align 4, !dbg !199
@_estack = external dso_local constant i32, align 4
@__Patchable = dso_local constant [16 x i32] zeroinitializer, section ".patch", align 4, !dbg !204
@__checkpoint_count = common dso_local global i32 0, align 4

@MemManage_Handler = weak dso_local alias void (), void ()* @HardFault_Handler
@BusFault_Handler = weak dso_local alias void (), void ()* @HardFault_Handler
@UsageFault_Handler = weak dso_local alias void (), void ()* @HardFault_Handler
@SecureFault_Handler = weak dso_local alias void (), void ()* @HardFault_Handler
@SVC_Handler = weak dso_local alias void (), void ()* @am_default_isr
@DebugMon_Handler = weak dso_local alias void (), void ()* @am_default_isr
@PendSV_Handler = weak dso_local alias void (), void ()* @am_default_isr
@SysTick_Handler = weak dso_local alias void (), void ()* @am_default_isr
@am_brownout_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_watchdog_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_rtc_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_vcomp_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_ioslave_ios_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_ioslave_acc_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_iomaster0_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_iomaster1_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_iomaster2_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_iomaster3_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_iomaster4_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_iomaster5_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_ble_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_gpio_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_ctimer_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_uart_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_uart1_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_scard_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_adc_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_pdm0_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_mspi0_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_software0_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_cmpr0_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_cmpr1_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_cmpr2_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_cmpr3_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_cmpr4_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_cmpr5_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_cmpr6_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_stimer_cmpr7_isr = weak dso_local alias void (), void ()* @am_default_isr
@am_clkgen_isr = weak dso_local alias void (), void ()* @am_default_isr

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @calc_func(i16*, %struct.RESULTS_S*) #0 !dbg !241 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %1, metadata !284, metadata !DIExpression()), !dbg !292
  %3 = load i16, i16* %0, align 2, !dbg !293, !tbaa !294, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata i16 %3, metadata !285, metadata !DIExpression()), !dbg !292
  %4 = sext i16 %3 to i32, !dbg !299
  %5 = ashr i32 %4, 7, !dbg !300
  %6 = and i32 %5, 1, !dbg !301
  %7 = trunc i32 %6 to i8, !dbg !302
  call void @llvm.dbg.value(metadata i8 %7, metadata !287, metadata !DIExpression()), !dbg !292
  %8 = icmp ne i8 %7, 0, !dbg !303
  br i1 %8, label %9, label %13, !dbg !304

9:                                                ; preds = %2
  %10 = sext i16 %3 to i32, !dbg !305
  %11 = and i32 %10, 127, !dbg !306
  %12 = trunc i32 %11 to i16, !dbg !307
  br label %88, !dbg !308

13:                                               ; preds = %2
  %14 = sext i16 %3 to i32, !dbg !309
  %15 = and i32 %14, 7, !dbg !310
  %16 = trunc i32 %15 to i16, !dbg !309
  call void @llvm.dbg.value(metadata i16 %16, metadata !288, metadata !DIExpression()), !dbg !311
  %17 = sext i16 %3 to i32, !dbg !312
  %18 = ashr i32 %17, 3, !dbg !313
  %19 = and i32 %18, 15, !dbg !314
  %20 = trunc i32 %19 to i16, !dbg !315
  call void @llvm.dbg.value(metadata i16 %20, metadata !291, metadata !DIExpression()), !dbg !311
  %21 = sext i16 %20 to i32, !dbg !316
  %22 = shl i32 %21, 4, !dbg !317
  %23 = sext i16 %20 to i32, !dbg !318
  %24 = or i32 %23, %22, !dbg !318
  %25 = trunc i32 %24 to i16, !dbg !318
  call void @llvm.dbg.value(metadata i16 %25, metadata !291, metadata !DIExpression()), !dbg !311
  %26 = sext i16 %16 to i32, !dbg !319
  br label %NodeBlock

NodeBlock:                                        ; preds = %13
  %Pivot = icmp slt i32 %26, 1
  br i1 %Pivot, label %27, label %LeafBlock

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %26, 1
  br i1 %SwitchLeaf, label %55, label %NewDefault

27:                                               ; preds = %NodeBlock
  %28 = sext i16 %25 to i32, !dbg !320
  %29 = icmp slt i32 %28, 34, !dbg !323
  br i1 %29, label %30, label %._crit_edge, !dbg !324

._crit_edge:                                      ; preds = %27
  br label %31, !dbg !324

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i16 34, metadata !291, metadata !DIExpression()), !dbg !311
  br label %31, !dbg !325

31:                                               ; preds = %30, %._crit_edge
  %.01 = phi i16 [ 34, %30 ], [ %25, %._crit_edge ], !dbg !311
  call void @llvm.dbg.value(metadata i16 %.01, metadata !291, metadata !DIExpression()), !dbg !311
  %32 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 4, !dbg !326
  %33 = load i32, i32* %32, align 4, !dbg !326, !tbaa !327
  %34 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 3, !dbg !333
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %34, i32 0, i32 3, !dbg !334
  %36 = load i8*, i8** %35, align 4, !dbg !334, !tbaa !335
  %37 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 0, !dbg !336
  %38 = load i16, i16* %37, align 4, !dbg !336, !tbaa !337
  %39 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 1, !dbg !338
  %40 = load i16, i16* %39, align 2, !dbg !338, !tbaa !339
  %41 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 9, !dbg !340
  %42 = load i16, i16* %41, align 4, !dbg !340, !tbaa !341
  %43 = load i32, i32* @__checkpoint_count, align 4, !dbg !342, !idemp_checkpoint_count !298
  %44 = add i32 %43, 1, !dbg !342, !idemp_checkpoint_count !298
  store volatile i32 %44, i32* @__checkpoint_count, align 4, !dbg !342, !idemp_checkpoint_count !298
  %45 = call arm_aapcscc zeroext i16 @core_bench_state(i32 %33, i8* %36, i16 signext %38, i16 signext %40, i16 signext %.01, i16 zeroext %42), !dbg !342
  call void @llvm.dbg.value(metadata i16 %45, metadata !286, metadata !DIExpression()), !dbg !292
  %46 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 12, !dbg !343
  %47 = load i16, i16* %46, align 2, !dbg !343, !tbaa !345, !idemp_war_rd !298
  %48 = zext i16 %47 to i32, !dbg !346
  %49 = icmp eq i32 %48, 0, !dbg !347
  br i1 %49, label %50, label %._crit_edge3, !dbg !348

._crit_edge3:                                     ; preds = %31
  br label %54, !dbg !348

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 12, !dbg !349
  %52 = load i32, i32* @__checkpoint_count, align 4, !dbg !350, !idemp_checkpoint_count !298
  %53 = add i32 %52, 1, !dbg !350, !idemp_checkpoint_count !298
  store volatile i32 %53, i32* @__checkpoint_count, align 4, !dbg !350, !idemp_checkpoint_count !298
  store i16 %45, i16* %51, align 2, !dbg !350, !tbaa !345, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %54, !dbg !351

54:                                               ; preds = %50, %._crit_edge3
  br label %72, !dbg !352

55:                                               ; preds = %LeafBlock
  %56 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 8, !dbg !353
  %57 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 9, !dbg !354
  %58 = load i16, i16* %57, align 4, !dbg !354, !tbaa !341
  %59 = load i32, i32* @__checkpoint_count, align 4, !dbg !355, !idemp_checkpoint_count !298
  %60 = add i32 %59, 1, !dbg !355, !idemp_checkpoint_count !298
  store volatile i32 %60, i32* @__checkpoint_count, align 4, !dbg !355, !idemp_checkpoint_count !298
  %61 = call arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S* %56, i16 signext %25, i16 zeroext %58), !dbg !355
  call void @llvm.dbg.value(metadata i16 %61, metadata !286, metadata !DIExpression()), !dbg !292
  %62 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 11, !dbg !356
  %63 = load i16, i16* %62, align 4, !dbg !356, !tbaa !358, !idemp_war_rd !298
  %64 = zext i16 %63 to i32, !dbg !359
  %65 = icmp eq i32 %64, 0, !dbg !360
  br i1 %65, label %66, label %._crit_edge4, !dbg !361

._crit_edge4:                                     ; preds = %55
  br label %70, !dbg !361

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 11, !dbg !362
  %68 = load i32, i32* @__checkpoint_count, align 4, !dbg !363, !idemp_checkpoint_count !298
  %69 = add i32 %68, 1, !dbg !363, !idemp_checkpoint_count !298
  store volatile i32 %69, i32* @__checkpoint_count, align 4, !dbg !363, !idemp_checkpoint_count !298
  store i16 %61, i16* %67, align 4, !dbg !363, !tbaa !358, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %70, !dbg !364

70:                                               ; preds = %66, %._crit_edge4
  br label %72, !dbg !365

NewDefault:                                       ; preds = %LeafBlock
  br label %71

71:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i16 %3, metadata !286, metadata !DIExpression()), !dbg !292
  br label %72, !dbg !366

72:                                               ; preds = %71, %70, %54
  %.02 = phi i16 [ %3, %71 ], [ %61, %70 ], [ %45, %54 ], !dbg !367
  call void @llvm.dbg.value(metadata i16 %.02, metadata !286, metadata !DIExpression()), !dbg !292
  %73 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 9, !dbg !368
  %74 = load i16, i16* %73, align 4, !dbg !368, !tbaa !341, !idemp_war_rd !298
  %75 = load i32, i32* @__checkpoint_count, align 4, !dbg !369, !idemp_checkpoint_count !298
  %76 = add i32 %75, 1, !dbg !369, !idemp_checkpoint_count !298
  store volatile i32 %76, i32* @__checkpoint_count, align 4, !dbg !369, !idemp_checkpoint_count !298
  %77 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %.02, i16 zeroext %74), !dbg !369
  %78 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 9, !dbg !370
  store i16 %77, i16* %78, align 4, !dbg !371, !tbaa !341, !idemp_war_wr !298, !idemp_precut_war !298
  %79 = sext i16 %.02 to i32, !dbg !372
  %80 = and i32 %79, 127, !dbg !372
  %81 = trunc i32 %80 to i16, !dbg !372
  call void @llvm.dbg.value(metadata i16 %81, metadata !286, metadata !DIExpression()), !dbg !292
  %82 = sext i16 %3 to i32, !dbg !373
  %83 = and i32 %82, 65280, !dbg !374
  %84 = or i32 %83, 128, !dbg !375
  %85 = sext i16 %81 to i32, !dbg !376
  %86 = or i32 %84, %85, !dbg !377
  %87 = trunc i32 %86 to i16, !dbg !378
  store i16 %87, i16* %0, align 2, !dbg !379, !tbaa !294, !idemp_war_wr !298, !idemp_precut_war !298
  br label %88

88:                                               ; preds = %72, %9
  %.0 = phi i16 [ %12, %9 ], [ %81, %72 ], !dbg !380
  ret i16 %.0, !dbg !381
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @cmp_complex(%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*) #0 !dbg !382 {
  call void @llvm.dbg.value(metadata %struct.list_data_s* %0, metadata !386, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !387, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !388, metadata !DIExpression()), !dbg !391
  %4 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !392
  %5 = load i32, i32* @__checkpoint_count, align 4, !dbg !393, !idemp_checkpoint_count !298
  %6 = add i32 %5, 1, !dbg !393, !idemp_checkpoint_count !298
  store volatile i32 %6, i32* @__checkpoint_count, align 4, !dbg !393, !idemp_checkpoint_count !298
  %7 = call arm_aapcscc signext i16 @calc_func(i16* %4, %struct.RESULTS_S* %2), !dbg !393
  call void @llvm.dbg.value(metadata i16 %7, metadata !389, metadata !DIExpression()), !dbg !391
  %8 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !394
  %9 = load i32, i32* @__checkpoint_count, align 4, !dbg !395, !idemp_checkpoint_count !298
  %10 = add i32 %9, 1, !dbg !395, !idemp_checkpoint_count !298
  store volatile i32 %10, i32* @__checkpoint_count, align 4, !dbg !395, !idemp_checkpoint_count !298
  %11 = call arm_aapcscc signext i16 @calc_func(i16* %8, %struct.RESULTS_S* %2), !dbg !395
  call void @llvm.dbg.value(metadata i16 %11, metadata !390, metadata !DIExpression()), !dbg !391
  %12 = sext i16 %7 to i32, !dbg !396
  %13 = sext i16 %11 to i32, !dbg !397
  %14 = sub nsw i32 %12, %13, !dbg !398
  ret i32 %14, !dbg !399
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @cmp_idx(%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*) #0 !dbg !400 {
  call void @llvm.dbg.value(metadata %struct.list_data_s* %0, metadata !402, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !403, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !404, metadata !DIExpression()), !dbg !405
  %4 = icmp eq %struct.RESULTS_S* %2, null, !dbg !406
  br i1 %4, label %5, label %._crit_edge, !dbg !408

._crit_edge:                                      ; preds = %3
  br label %34, !dbg !408

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !409
  %7 = load i16, i16* %6, align 2, !dbg !409, !tbaa !411
  %8 = sext i16 %7 to i32, !dbg !413
  %9 = and i32 %8, 65280, !dbg !414
  %10 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !415
  %11 = load i16, i16* %10, align 2, !dbg !415, !tbaa !411, !idemp_war_rd !298
  %12 = sext i16 %11 to i32, !dbg !416
  %13 = ashr i32 %12, 8, !dbg !417
  %14 = and i32 255, %13, !dbg !418
  %15 = or i32 %9, %14, !dbg !419
  %16 = trunc i32 %15 to i16, !dbg !420
  %17 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !421
  %18 = load i32, i32* @__checkpoint_count, align 4, !dbg !422, !idemp_checkpoint_count !298
  %19 = add i32 %18, 1, !dbg !422, !idemp_checkpoint_count !298
  store volatile i32 %19, i32* @__checkpoint_count, align 4, !dbg !422, !idemp_checkpoint_count !298
  store i16 %16, i16* %17, align 2, !dbg !422, !tbaa !411, !idemp_war_wr !298, !idemp_uncut_war !298
  %20 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !423
  %21 = load i16, i16* %20, align 2, !dbg !423, !tbaa !411
  %22 = sext i16 %21 to i32, !dbg !424
  %23 = and i32 %22, 65280, !dbg !425
  %24 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !426
  %25 = load i16, i16* %24, align 2, !dbg !426, !tbaa !411, !idemp_war_rd !298
  %26 = sext i16 %25 to i32, !dbg !427
  %27 = ashr i32 %26, 8, !dbg !428
  %28 = and i32 255, %27, !dbg !429
  %29 = or i32 %23, %28, !dbg !430
  %30 = trunc i32 %29 to i16, !dbg !431
  %31 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !432
  %32 = load i32, i32* @__checkpoint_count, align 4, !dbg !433, !idemp_checkpoint_count !298
  %33 = add i32 %32, 1, !dbg !433, !idemp_checkpoint_count !298
  store volatile i32 %33, i32* @__checkpoint_count, align 4, !dbg !433, !idemp_checkpoint_count !298
  store i16 %30, i16* %31, align 2, !dbg !433, !tbaa !411, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %34, !dbg !434

34:                                               ; preds = %5, %._crit_edge
  %35 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 1, !dbg !435
  %36 = load i16, i16* %35, align 2, !dbg !435, !tbaa !436
  %37 = sext i16 %36 to i32, !dbg !437
  %38 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 1, !dbg !438
  %39 = load i16, i16* %38, align 2, !dbg !438, !tbaa !436
  %40 = sext i16 %39 to i32, !dbg !439
  %41 = sub nsw i32 %37, %40, !dbg !440
  ret i32 %41, !dbg !441
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @copy_info(%struct.list_data_s*, %struct.list_data_s*) #0 !dbg !442 {
  call void @llvm.dbg.value(metadata %struct.list_data_s* %0, metadata !446, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !447, metadata !DIExpression()), !dbg !448
  %3 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !449
  %4 = load i16, i16* %3, align 2, !dbg !449, !tbaa !411
  %5 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !450
  store i16 %4, i16* %5, align 2, !dbg !451, !tbaa !411
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 1, !dbg !452
  %7 = load i16, i16* %6, align 2, !dbg !452, !tbaa !436
  %8 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 1, !dbg !453
  store i16 %7, i16* %8, align 2, !dbg !454, !tbaa !436
  ret void, !dbg !455
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S*, i16 signext) #0 !dbg !456 {
  %3 = alloca %struct.list_data_s, align 2
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %0, metadata !460, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %1, metadata !461, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 0, metadata !462, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 0, metadata !463, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 0, metadata !464, metadata !DIExpression()), !dbg !474
  %4 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %0, i32 0, i32 7, !dbg !475
  %5 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !475, !tbaa !476
  call void @llvm.dbg.value(metadata %struct.list_head_s* %5, metadata !465, metadata !DIExpression()), !dbg !474
  %6 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %0, i32 0, i32 2, !dbg !477
  %7 = load i16, i16* %6, align 4, !dbg !477, !tbaa !478
  call void @llvm.dbg.value(metadata i16 %7, metadata !468, metadata !DIExpression()), !dbg !474
  %8 = bitcast %struct.list_data_s* %3 to i8*, !dbg !479
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !479
  call void @llvm.dbg.declare(metadata %struct.list_data_s* %3, metadata !472, metadata !DIExpression()), !dbg !480
  %9 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %3, i32 0, i32 1, !dbg !481
  store i16 %1, i16* %9, align 2, !dbg !482, !tbaa !436
  call void @llvm.dbg.value(metadata i16 0, metadata !473, metadata !DIExpression()), !dbg !474
  br label %10, !dbg !483

10:                                               ; preds = %91, %2
  %.06 = phi %struct.list_head_s* [ %5, %2 ], [ %24, %91 ], !dbg !474
  %.04 = phi i16 [ 0, %2 ], [ %.15, %91 ], !dbg !474
  %.02 = phi i16 [ 0, %2 ], [ %.13, %91 ], !dbg !485
  %.01 = phi i16 [ 0, %2 ], [ %.2, %91 ], !dbg !474
  %.0 = phi i16 [ 0, %2 ], [ %92, %91 ], !dbg !486
  call void @llvm.dbg.value(metadata i16 %.0, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %.01, metadata !462, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %.02, metadata !463, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %.04, metadata !464, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06, metadata !465, metadata !DIExpression()), !dbg !474
  %11 = sext i16 %.0 to i32, !dbg !487
  %12 = sext i16 %7 to i32, !dbg !489
  %13 = icmp slt i32 %11, %12, !dbg !490
  br i1 %13, label %14, label %93, !dbg !491

14:                                               ; preds = %10
  %15 = sext i16 %.0 to i32, !dbg !492
  %16 = and i32 %15, 255, !dbg !494
  %17 = trunc i32 %16 to i16, !dbg !495
  %18 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %3, i32 0, i32 0, !dbg !496
  store i16 %17, i16* %18, align 2, !dbg !497, !tbaa !411
  %19 = load i32, i32* @__checkpoint_count, align 4, !dbg !498, !idemp_checkpoint_count !298
  %20 = add i32 %19, 1, !dbg !498, !idemp_checkpoint_count !298
  store volatile i32 %20, i32* @__checkpoint_count, align 4, !dbg !498, !idemp_checkpoint_count !298
  %21 = call arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s* %.06, %struct.list_data_s* %3), !dbg !498
  call void @llvm.dbg.value(metadata %struct.list_head_s* %21, metadata !469, metadata !DIExpression()), !dbg !474
  %22 = load i32, i32* @__checkpoint_count, align 4, !dbg !499, !idemp_checkpoint_count !298
  %23 = add i32 %22, 1, !dbg !499, !idemp_checkpoint_count !298
  store volatile i32 %23, i32* @__checkpoint_count, align 4, !dbg !499, !idemp_checkpoint_count !298
  %24 = call arm_aapcscc %struct.list_head_s* @core_list_reverse(%struct.list_head_s* %.06), !dbg !499
  call void @llvm.dbg.value(metadata %struct.list_head_s* %24, metadata !465, metadata !DIExpression()), !dbg !474
  %25 = icmp eq %struct.list_head_s* %21, null, !dbg !500
  br i1 %25, label %26, label %40, !dbg !502

26:                                               ; preds = %14
  %27 = add i16 %.04, 1, !dbg !503
  call void @llvm.dbg.value(metadata i16 %27, metadata !464, metadata !DIExpression()), !dbg !474
  %28 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 0, !dbg !505
  %29 = load %struct.list_head_s*, %struct.list_head_s** %28, align 4, !dbg !505, !tbaa !506
  %30 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %29, i32 0, i32 1, !dbg !508
  %31 = load %struct.list_data_s*, %struct.list_data_s** %30, align 4, !dbg !508, !tbaa !509
  %32 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %31, i32 0, i32 0, !dbg !510
  %33 = load i16, i16* %32, align 2, !dbg !510, !tbaa !411
  %34 = sext i16 %33 to i32, !dbg !511
  %35 = ashr i32 %34, 8, !dbg !512
  %36 = and i32 %35, 1, !dbg !513
  %37 = zext i16 %.01 to i32, !dbg !514
  %38 = add nsw i32 %37, %36, !dbg !514
  %39 = trunc i32 %38 to i16, !dbg !514
  call void @llvm.dbg.value(metadata i16 %39, metadata !462, metadata !DIExpression()), !dbg !474
  br label %79, !dbg !515

40:                                               ; preds = %14
  %41 = add i16 %.02, 1, !dbg !516
  call void @llvm.dbg.value(metadata i16 %41, metadata !463, metadata !DIExpression()), !dbg !474
  %42 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %21, i32 0, i32 1, !dbg !518
  %43 = load %struct.list_data_s*, %struct.list_data_s** %42, align 4, !dbg !518, !tbaa !509
  %44 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %43, i32 0, i32 0, !dbg !520
  %45 = load i16, i16* %44, align 2, !dbg !520, !tbaa !411
  %46 = sext i16 %45 to i32, !dbg !521
  %47 = and i32 %46, 1, !dbg !522
  %48 = icmp ne i32 %47, 0, !dbg !522
  br i1 %48, label %49, label %._crit_edge, !dbg !523

._crit_edge:                                      ; preds = %40
  br label %60, !dbg !523

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %21, i32 0, i32 1, !dbg !524
  %51 = load %struct.list_data_s*, %struct.list_data_s** %50, align 4, !dbg !524, !tbaa !509
  %52 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %51, i32 0, i32 0, !dbg !525
  %53 = load i16, i16* %52, align 2, !dbg !525, !tbaa !411
  %54 = sext i16 %53 to i32, !dbg !526
  %55 = ashr i32 %54, 9, !dbg !527
  %56 = and i32 %55, 1, !dbg !528
  %57 = zext i16 %.01 to i32, !dbg !529
  %58 = add nsw i32 %57, %56, !dbg !529
  %59 = trunc i32 %58 to i16, !dbg !529
  call void @llvm.dbg.value(metadata i16 %59, metadata !462, metadata !DIExpression()), !dbg !474
  br label %60, !dbg !530

60:                                               ; preds = %49, %._crit_edge
  %.1 = phi i16 [ %59, %49 ], [ %.01, %._crit_edge ], !dbg !474
  call void @llvm.dbg.value(metadata i16 %.1, metadata !462, metadata !DIExpression()), !dbg !474
  %61 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %21, i32 0, i32 0, !dbg !531
  %62 = load %struct.list_head_s*, %struct.list_head_s** %61, align 4, !dbg !531, !tbaa !506
  %63 = icmp ne %struct.list_head_s* %62, null, !dbg !533
  br i1 %63, label %64, label %._crit_edge11, !dbg !534

._crit_edge11:                                    ; preds = %60
  br label %78, !dbg !534

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %21, i32 0, i32 0, !dbg !535
  %66 = load %struct.list_head_s*, %struct.list_head_s** %65, align 4, !dbg !535, !tbaa !506, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_head_s* %66, metadata !470, metadata !DIExpression()), !dbg !474
  %67 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %66, i32 0, i32 0, !dbg !537
  %68 = load %struct.list_head_s*, %struct.list_head_s** %67, align 4, !dbg !537, !tbaa !506, !idemp_war_rd !298
  %69 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %21, i32 0, i32 0, !dbg !538
  %70 = load i32, i32* @__checkpoint_count, align 4, !dbg !539, !idemp_checkpoint_count !298
  %71 = add i32 %70, 1, !dbg !539, !idemp_checkpoint_count !298
  store volatile i32 %71, i32* @__checkpoint_count, align 4, !dbg !539, !idemp_checkpoint_count !298
  store %struct.list_head_s* %68, %struct.list_head_s** %69, align 4, !dbg !539, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  %72 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 0, !dbg !540
  %73 = load %struct.list_head_s*, %struct.list_head_s** %72, align 4, !dbg !540, !tbaa !506, !idemp_war_rd !298
  %74 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %66, i32 0, i32 0, !dbg !541
  %75 = load i32, i32* @__checkpoint_count, align 4, !dbg !542, !idemp_checkpoint_count !298
  %76 = add i32 %75, 1, !dbg !542, !idemp_checkpoint_count !298
  store volatile i32 %76, i32* @__checkpoint_count, align 4, !dbg !542, !idemp_checkpoint_count !298
  store %struct.list_head_s* %73, %struct.list_head_s** %74, align 4, !dbg !542, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  %77 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 0, !dbg !543
  store %struct.list_head_s* %66, %struct.list_head_s** %77, align 4, !dbg !544, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %78, !dbg !545

78:                                               ; preds = %64, %._crit_edge11
  br label %79

79:                                               ; preds = %78, %26
  %.15 = phi i16 [ %27, %26 ], [ %.04, %78 ], !dbg !474
  %.13 = phi i16 [ %.02, %26 ], [ %41, %78 ], !dbg !474
  %.2 = phi i16 [ %39, %26 ], [ %.1, %78 ], !dbg !546
  call void @llvm.dbg.value(metadata i16 %.2, metadata !462, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %.13, metadata !463, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %.15, metadata !464, metadata !DIExpression()), !dbg !474
  %80 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %3, i32 0, i32 1, !dbg !547
  %81 = load i16, i16* %80, align 2, !dbg !547, !tbaa !436
  %82 = sext i16 %81 to i32, !dbg !549
  %83 = icmp sge i32 %82, 0, !dbg !550
  br i1 %83, label %84, label %._crit_edge12, !dbg !551

._crit_edge12:                                    ; preds = %79
  br label %90, !dbg !551

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %3, i32 0, i32 1, !dbg !552
  %86 = load i16, i16* %85, align 2, !dbg !553, !tbaa !436, !idemp_war_rd !298
  %87 = add i16 %86, 1, !dbg !553
  %88 = load i32, i32* @__checkpoint_count, align 4, !dbg !553, !idemp_checkpoint_count !298
  %89 = add i32 %88, 1, !dbg !553, !idemp_checkpoint_count !298
  store volatile i32 %89, i32* @__checkpoint_count, align 4, !dbg !553, !idemp_checkpoint_count !298
  store i16 %87, i16* %85, align 2, !dbg !553, !tbaa !436, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %90, !dbg !554

90:                                               ; preds = %84, %._crit_edge12
  br label %91, !dbg !555

91:                                               ; preds = %90
  %92 = add i16 %.0, 1, !dbg !556
  call void @llvm.dbg.value(metadata i16 %92, metadata !473, metadata !DIExpression()), !dbg !474
  br label %10, !dbg !557, !llvm.loop !558

93:                                               ; preds = %10
  %.06.lcssa = phi %struct.list_head_s* [ %.06, %10 ], !dbg !474
  %.04.lcssa = phi i16 [ %.04, %10 ], !dbg !474
  %.02.lcssa = phi i16 [ %.02, %10 ], !dbg !485
  %.01.lcssa = phi i16 [ %.01, %10 ], !dbg !474
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06.lcssa, metadata !465, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %.04.lcssa, metadata !464, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %.02.lcssa, metadata !463, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !462, metadata !DIExpression()), !dbg !474
  %94 = zext i16 %.02.lcssa to i32, !dbg !560
  %95 = mul nsw i32 %94, 4, !dbg !561
  %96 = zext i16 %.04.lcssa to i32, !dbg !562
  %97 = sub nsw i32 %95, %96, !dbg !563
  %98 = zext i16 %.01.lcssa to i32, !dbg !564
  %99 = add nsw i32 %98, %97, !dbg !564
  %100 = trunc i32 %99 to i16, !dbg !564
  call void @llvm.dbg.value(metadata i16 %100, metadata !462, metadata !DIExpression()), !dbg !474
  %101 = sext i16 %1 to i32, !dbg !565
  %102 = icmp sgt i32 %101, 0, !dbg !567
  br i1 %102, label %103, label %._crit_edge13, !dbg !568

._crit_edge13:                                    ; preds = %93
  br label %107, !dbg !568

103:                                              ; preds = %93
  %104 = load i32, i32* @__checkpoint_count, align 4, !dbg !569, !idemp_checkpoint_count !298
  %105 = add i32 %104, 1, !dbg !569, !idemp_checkpoint_count !298
  store volatile i32 %105, i32* @__checkpoint_count, align 4, !dbg !569, !idemp_checkpoint_count !298
  %106 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %.06.lcssa, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_complex, %struct.RESULTS_S* %0), !dbg !569
  call void @llvm.dbg.value(metadata %struct.list_head_s* %106, metadata !465, metadata !DIExpression()), !dbg !474
  br label %107, !dbg !570

107:                                              ; preds = %103, %._crit_edge13
  %.17 = phi %struct.list_head_s* [ %106, %103 ], [ %.06.lcssa, %._crit_edge13 ], !dbg !474
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !465, metadata !DIExpression()), !dbg !474
  %108 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !571
  %109 = load %struct.list_head_s*, %struct.list_head_s** %108, align 4, !dbg !571, !tbaa !506
  %110 = load i32, i32* @__checkpoint_count, align 4, !dbg !572, !idemp_checkpoint_count !298
  %111 = add i32 %110, 1, !dbg !572, !idemp_checkpoint_count !298
  store volatile i32 %111, i32* @__checkpoint_count, align 4, !dbg !572, !idemp_checkpoint_count !298
  %112 = call arm_aapcscc %struct.list_head_s* @core_list_remove(%struct.list_head_s* %109), !dbg !572
  call void @llvm.dbg.value(metadata %struct.list_head_s* %112, metadata !471, metadata !DIExpression()), !dbg !474
  %113 = load i32, i32* @__checkpoint_count, align 4, !dbg !573, !idemp_checkpoint_count !298
  %114 = add i32 %113, 1, !dbg !573, !idemp_checkpoint_count !298
  store volatile i32 %114, i32* @__checkpoint_count, align 4, !dbg !573, !idemp_checkpoint_count !298
  %115 = call arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s* %.17, %struct.list_data_s* %3), !dbg !573
  call void @llvm.dbg.value(metadata %struct.list_head_s* %115, metadata !470, metadata !DIExpression()), !dbg !474
  %116 = icmp ne %struct.list_head_s* %115, null, !dbg !574
  br i1 %116, label %._crit_edge14, label %117, !dbg !576

._crit_edge14:                                    ; preds = %107
  br label %120, !dbg !576

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !577
  %119 = load %struct.list_head_s*, %struct.list_head_s** %118, align 4, !dbg !577, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %119, metadata !470, metadata !DIExpression()), !dbg !474
  br label %120, !dbg !578

120:                                              ; preds = %117, %._crit_edge14
  %.08 = phi %struct.list_head_s* [ %115, %._crit_edge14 ], [ %119, %117 ], !dbg !474
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.08, metadata !470, metadata !DIExpression()), !dbg !474
  br label %121, !dbg !579

121:                                              ; preds = %123, %120
  %.19 = phi %struct.list_head_s* [ %.08, %120 ], [ %132, %123 ], !dbg !474
  %.3 = phi i16 [ %100, %120 ], [ %130, %123 ], !dbg !474
  call void @llvm.dbg.value(metadata i16 %.3, metadata !462, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.19, metadata !470, metadata !DIExpression()), !dbg !474
  %122 = icmp ne %struct.list_head_s* %.19, null, !dbg !579
  br i1 %122, label %123, label %133, !dbg !579

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 1, !dbg !580
  %125 = load %struct.list_data_s*, %struct.list_data_s** %124, align 4, !dbg !580, !tbaa !509
  %126 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %125, i32 0, i32 0, !dbg !582
  %127 = load i16, i16* %126, align 2, !dbg !582, !tbaa !411
  %128 = load i32, i32* @__checkpoint_count, align 4, !dbg !583, !idemp_checkpoint_count !298
  %129 = add i32 %128, 1, !dbg !583, !idemp_checkpoint_count !298
  store volatile i32 %129, i32* @__checkpoint_count, align 4, !dbg !583, !idemp_checkpoint_count !298
  %130 = call arm_aapcscc zeroext i16 @crc16(i16 signext %127, i16 zeroext %.3), !dbg !583
  call void @llvm.dbg.value(metadata i16 %130, metadata !462, metadata !DIExpression()), !dbg !474
  %131 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.19, i32 0, i32 0, !dbg !584
  %132 = load %struct.list_head_s*, %struct.list_head_s** %131, align 4, !dbg !584, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %132, metadata !470, metadata !DIExpression()), !dbg !474
  br label %121, !dbg !579, !llvm.loop !585

133:                                              ; preds = %121
  %.3.lcssa = phi i16 [ %.3, %121 ], !dbg !474
  call void @llvm.dbg.value(metadata i16 %.3.lcssa, metadata !462, metadata !DIExpression()), !dbg !474
  %134 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !587
  %135 = load %struct.list_head_s*, %struct.list_head_s** %134, align 4, !dbg !587, !tbaa !506
  %136 = load i32, i32* @__checkpoint_count, align 4, !dbg !588, !idemp_checkpoint_count !298
  %137 = add i32 %136, 1, !dbg !588, !idemp_checkpoint_count !298
  store volatile i32 %137, i32* @__checkpoint_count, align 4, !dbg !588, !idemp_checkpoint_count !298
  %138 = call arm_aapcscc %struct.list_head_s* @core_list_undo_remove(%struct.list_head_s* %112, %struct.list_head_s* %135), !dbg !588
  call void @llvm.dbg.value(metadata %struct.list_head_s* %138, metadata !471, metadata !DIExpression()), !dbg !474
  %139 = load i32, i32* @__checkpoint_count, align 4, !dbg !589, !idemp_checkpoint_count !298
  %140 = add i32 %139, 1, !dbg !589, !idemp_checkpoint_count !298
  store volatile i32 %140, i32* @__checkpoint_count, align 4, !dbg !589, !idemp_checkpoint_count !298
  %141 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %.17, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_idx, %struct.RESULTS_S* null), !dbg !589
  call void @llvm.dbg.value(metadata %struct.list_head_s* %141, metadata !465, metadata !DIExpression()), !dbg !474
  %142 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %141, i32 0, i32 0, !dbg !590
  %143 = load %struct.list_head_s*, %struct.list_head_s** %142, align 4, !dbg !590, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %143, metadata !470, metadata !DIExpression()), !dbg !474
  br label %144, !dbg !591

144:                                              ; preds = %146, %133
  %.210 = phi %struct.list_head_s* [ %143, %133 ], [ %155, %146 ], !dbg !474
  %.4 = phi i16 [ %.3.lcssa, %133 ], [ %153, %146 ], !dbg !474
  call void @llvm.dbg.value(metadata i16 %.4, metadata !462, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.210, metadata !470, metadata !DIExpression()), !dbg !474
  %145 = icmp ne %struct.list_head_s* %.210, null, !dbg !591
  br i1 %145, label %146, label %156, !dbg !591

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %141, i32 0, i32 1, !dbg !592
  %148 = load %struct.list_data_s*, %struct.list_data_s** %147, align 4, !dbg !592, !tbaa !509
  %149 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %148, i32 0, i32 0, !dbg !594
  %150 = load i16, i16* %149, align 2, !dbg !594, !tbaa !411
  %151 = load i32, i32* @__checkpoint_count, align 4, !dbg !595, !idemp_checkpoint_count !298
  %152 = add i32 %151, 1, !dbg !595, !idemp_checkpoint_count !298
  store volatile i32 %152, i32* @__checkpoint_count, align 4, !dbg !595, !idemp_checkpoint_count !298
  %153 = call arm_aapcscc zeroext i16 @crc16(i16 signext %150, i16 zeroext %.4), !dbg !595
  call void @llvm.dbg.value(metadata i16 %153, metadata !462, metadata !DIExpression()), !dbg !474
  %154 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.210, i32 0, i32 0, !dbg !596
  %155 = load %struct.list_head_s*, %struct.list_head_s** %154, align 4, !dbg !596, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %155, metadata !470, metadata !DIExpression()), !dbg !474
  br label %144, !dbg !591, !llvm.loop !597

156:                                              ; preds = %144
  %.4.lcssa = phi i16 [ %.4, %144 ], !dbg !474
  call void @llvm.dbg.value(metadata i16 %.4.lcssa, metadata !462, metadata !DIExpression()), !dbg !474
  %157 = bitcast %struct.list_data_s* %3 to i8*, !dbg !599
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %157) #4, !dbg !599
  ret i16 %.4.lcssa, !dbg !600
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s*, %struct.list_data_s*) #0 !dbg !601 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !605, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !606, metadata !DIExpression()), !dbg !607
  %3 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 1, !dbg !608
  %4 = load i16, i16* %3, align 2, !dbg !608, !tbaa !436
  %5 = sext i16 %4 to i32, !dbg !610
  %6 = icmp sge i32 %5, 0, !dbg !611
  br i1 %6, label %7, label %26, !dbg !612

7:                                                ; preds = %2
  br label %8, !dbg !613

8:                                                ; preds = %22, %7
  %.01 = phi %struct.list_head_s* [ %0, %7 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01, metadata !605, metadata !DIExpression()), !dbg !607
  %9 = icmp ne %struct.list_head_s* %.01, null, !dbg !615
  br i1 %9, label %10, label %._crit_edge, !dbg !616

._crit_edge:                                      ; preds = %8
  br label %20, !dbg !616

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 1, !dbg !617
  %12 = load %struct.list_data_s*, %struct.list_data_s** %11, align 4, !dbg !617, !tbaa !509
  %13 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %12, i32 0, i32 1, !dbg !618
  %14 = load i16, i16* %13, align 2, !dbg !618, !tbaa !436
  %15 = sext i16 %14 to i32, !dbg !619
  %16 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 1, !dbg !620
  %17 = load i16, i16* %16, align 2, !dbg !620, !tbaa !436
  %18 = sext i16 %17 to i32, !dbg !621
  %19 = icmp ne i32 %15, %18, !dbg !622
  br label %20

20:                                               ; preds = %10, %._crit_edge
  %21 = phi i1 [ false, %._crit_edge ], [ %19, %10 ], !dbg !623
  br i1 %21, label %22, label %25, !dbg !613

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 0, !dbg !624
  %24 = load %struct.list_head_s*, %struct.list_head_s** %23, align 4, !dbg !624, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %24, metadata !605, metadata !DIExpression()), !dbg !607
  br label %8, !dbg !613, !llvm.loop !625

25:                                               ; preds = %20
  %.01.lcssa = phi %struct.list_head_s* [ %.01, %20 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01.lcssa, metadata !605, metadata !DIExpression()), !dbg !607
  br label %46, !dbg !626

26:                                               ; preds = %2
  br label %27, !dbg !627

27:                                               ; preds = %42, %26
  %.1 = phi %struct.list_head_s* [ %0, %26 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1, metadata !605, metadata !DIExpression()), !dbg !607
  %28 = icmp ne %struct.list_head_s* %.1, null, !dbg !629
  br i1 %28, label %29, label %._crit_edge2, !dbg !630

._crit_edge2:                                     ; preds = %27
  br label %40, !dbg !630

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.1, i32 0, i32 1, !dbg !631
  %31 = load %struct.list_data_s*, %struct.list_data_s** %30, align 4, !dbg !631, !tbaa !509
  %32 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %31, i32 0, i32 0, !dbg !632
  %33 = load i16, i16* %32, align 2, !dbg !632, !tbaa !411
  %34 = sext i16 %33 to i32, !dbg !633
  %35 = and i32 %34, 255, !dbg !634
  %36 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !635
  %37 = load i16, i16* %36, align 2, !dbg !635, !tbaa !411
  %38 = sext i16 %37 to i32, !dbg !636
  %39 = icmp ne i32 %35, %38, !dbg !637
  br label %40

40:                                               ; preds = %29, %._crit_edge2
  %41 = phi i1 [ false, %._crit_edge2 ], [ %39, %29 ], !dbg !638
  br i1 %41, label %42, label %45, !dbg !627

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.1, i32 0, i32 0, !dbg !639
  %44 = load %struct.list_head_s*, %struct.list_head_s** %43, align 4, !dbg !639, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %44, metadata !605, metadata !DIExpression()), !dbg !607
  br label %27, !dbg !627, !llvm.loop !640

45:                                               ; preds = %40
  %.1.lcssa = phi %struct.list_head_s* [ %.1, %40 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1.lcssa, metadata !605, metadata !DIExpression()), !dbg !607
  br label %46, !dbg !641

46:                                               ; preds = %45, %25
  %.0 = phi %struct.list_head_s* [ %.01.lcssa, %25 ], [ %.1.lcssa, %45 ], !dbg !642
  ret %struct.list_head_s* %.0, !dbg !643
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_reverse(%struct.list_head_s*) #0 !dbg !644 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !648, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.list_head_s* null, metadata !649, metadata !DIExpression()), !dbg !651
  br label %2, !dbg !652

2:                                                ; preds = %4, %1
  %.01 = phi %struct.list_head_s* [ null, %1 ], [ %.0, %4 ], !dbg !651
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !648, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01, metadata !649, metadata !DIExpression()), !dbg !651
  %3 = icmp ne %struct.list_head_s* %.0, null, !dbg !652
  br i1 %3, label %4, label %10, !dbg !652

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !653
  %6 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !dbg !653, !tbaa !506, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_head_s* %6, metadata !650, metadata !DIExpression()), !dbg !651
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !655
  %8 = load i32, i32* @__checkpoint_count, align 4, !dbg !656, !idemp_checkpoint_count !298
  %9 = add i32 %8, 1, !dbg !656, !idemp_checkpoint_count !298
  store volatile i32 %9, i32* @__checkpoint_count, align 4, !dbg !656, !idemp_checkpoint_count !298
  store %struct.list_head_s* %.01, %struct.list_head_s** %7, align 4, !dbg !656, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !649, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata %struct.list_head_s* %6, metadata !648, metadata !DIExpression()), !dbg !651
  br label %2, !dbg !652, !llvm.loop !657

10:                                               ; preds = %2
  %.01.lcssa = phi %struct.list_head_s* [ %.01, %2 ], !dbg !651
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01.lcssa, metadata !649, metadata !DIExpression()), !dbg !651
  ret %struct.list_head_s* %.01.lcssa, !dbg !659
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s*, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)*, %struct.RESULTS_S*) #0 !dbg !660 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !666, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* %1, metadata !667, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !668, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 1, metadata !673, metadata !DIExpression()), !dbg !678
  br label %4, !dbg !679

4:                                                ; preds = %79, %3
  %.020 = phi i32 [ 1, %3 ], [ %80, %79 ], !dbg !678
  %.0 = phi %struct.list_head_s* [ %0, %3 ], [ %.1.lcssa, %79 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !666, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.020, metadata !673, metadata !DIExpression()), !dbg !678
  br label %5, !dbg !679

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !669, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* null, metadata !666, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* null, metadata !672, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()), !dbg !678
  br label %6, !dbg !680

6:                                                ; preds = %72, %5
  %.021 = phi i32 [ 0, %5 ], [ %9, %72 ], !dbg !682
  %.018 = phi %struct.list_head_s* [ null, %5 ], [ %.119.lcssa, %72 ], !dbg !683
  %.06 = phi %struct.list_head_s* [ %.0, %5 ], [ %.212.lcssa, %72 ], !dbg !682
  %.1 = phi %struct.list_head_s* [ null, %5 ], [ %.2.lcssa, %72 ], !dbg !684
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1, metadata !666, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06, metadata !669, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.018, metadata !672, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.021, metadata !674, metadata !DIExpression()), !dbg !678
  %7 = icmp ne %struct.list_head_s* %.06, null, !dbg !680
  br i1 %7, label %8, label %73, !dbg !680

8:                                                ; preds = %6
  %9 = add nuw nsw i32 %.021, 1, !dbg !685
  call void @llvm.dbg.value(metadata i32 %9, metadata !674, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 0, metadata !677, metadata !DIExpression()), !dbg !678
  br label %10, !dbg !687

10:                                               ; preds = %19, %8
  %.022 = phi i32 [ 0, %8 ], [ %13, %19 ], !dbg !689
  %.010 = phi %struct.list_head_s* [ %.06, %8 ], [ %15, %19 ], !dbg !689
  call void @llvm.dbg.value(metadata i32 %.022, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.010, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.022, metadata !675, metadata !DIExpression()), !dbg !678
  %11 = icmp slt i32 %.022, %.020, !dbg !690
  br i1 %11, label %12, label %._crit_edge, !dbg !692

._crit_edge:                                      ; preds = %10
  %.022.lcssa = phi i32 [ %.022, %10 ], !dbg !689
  %.010.lcssa = phi %struct.list_head_s* [ %.010, %10 ], !dbg !689
  call void @llvm.dbg.value(metadata i32 %.022.lcssa, metadata !675, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.010.lcssa, metadata !670, metadata !DIExpression()), !dbg !678
  br label %20, !dbg !692

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %.022, 1, !dbg !693
  call void @llvm.dbg.value(metadata i32 %13, metadata !675, metadata !DIExpression()), !dbg !678
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.010, i32 0, i32 0, !dbg !695
  %15 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !695, !tbaa !506, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_head_s* %15, metadata !670, metadata !DIExpression()), !dbg !678
  %16 = icmp ne %struct.list_head_s* %15, null, !dbg !696
  br i1 %16, label %18, label %17, !dbg !698

17:                                               ; preds = %12
  %.lcssa34 = phi i32 [ %13, %12 ], !dbg !693
  %.lcssa = phi %struct.list_head_s* [ %15, %12 ], !dbg !695
  br label %20, !dbg !699

18:                                               ; preds = %12
  br label %19, !dbg !700

19:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %13, metadata !677, metadata !DIExpression()), !dbg !678
  br label %10, !dbg !701, !llvm.loop !702

20:                                               ; preds = %17, %._crit_edge
  %.123 = phi i32 [ %.lcssa34, %17 ], [ %.022.lcssa, %._crit_edge ], !dbg !689
  %.111 = phi %struct.list_head_s* [ %.lcssa, %17 ], [ %.010.lcssa, %._crit_edge ], !dbg !689
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.111, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.123, metadata !675, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.020, metadata !676, metadata !DIExpression()), !dbg !678
  br label %21, !dbg !704

21:                                               ; preds = %71, %20
  %.224 = phi i32 [ %.123, %20 ], [ %.527, %71 ], !dbg !693
  %.119 = phi %struct.list_head_s* [ %.018, %20 ], [ %.217, %71 ], !dbg !682
  %.212 = phi %struct.list_head_s* [ %.111, %20 ], [ %.5, %71 ], !dbg !689
  %.17 = phi %struct.list_head_s* [ %.06, %20 ], [ %.4, %71 ], !dbg !705
  %.02 = phi i32 [ %.020, %20 ], [ %.35, %71 ], !dbg !689
  %.2 = phi %struct.list_head_s* [ %.1, %20 ], [ %.3, %71 ], !dbg !684
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.2, metadata !666, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.02, metadata !676, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !669, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.119, metadata !672, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.224, metadata !675, metadata !DIExpression()), !dbg !678
  %22 = icmp sgt i32 %.224, 0, !dbg !706
  br i1 %22, label %._crit_edge28, label %23, !dbg !707

._crit_edge28:                                    ; preds = %21
  br label %29, !dbg !707

23:                                               ; preds = %21
  %24 = icmp sgt i32 %.02, 0, !dbg !708
  br i1 %24, label %25, label %._crit_edge29, !dbg !709

._crit_edge29:                                    ; preds = %23
  br label %27, !dbg !709

25:                                               ; preds = %23
  %26 = icmp ne %struct.list_head_s* %.212, null, !dbg !709
  br label %27

27:                                               ; preds = %25, %._crit_edge29
  %28 = phi i1 [ false, %._crit_edge29 ], [ %26, %25 ], !dbg !689
  br label %29, !dbg !707

29:                                               ; preds = %27, %._crit_edge28
  %30 = phi i1 [ true, %._crit_edge28 ], [ %28, %27 ]
  br i1 %30, label %31, label %72, !dbg !704

31:                                               ; preds = %29
  %32 = icmp eq i32 %.224, 0, !dbg !710
  br i1 %32, label %33, label %37, !dbg !713

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !671, metadata !DIExpression()), !dbg !678
  %34 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 0, !dbg !714
  %35 = load %struct.list_head_s*, %struct.list_head_s** %34, align 4, !dbg !714, !tbaa !506, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_head_s* %35, metadata !670, metadata !DIExpression()), !dbg !678
  %36 = add nsw i32 %.02, -1, !dbg !716
  call void @llvm.dbg.value(metadata i32 %36, metadata !676, metadata !DIExpression()), !dbg !678
  br label %64, !dbg !717

37:                                               ; preds = %31
  %38 = icmp eq i32 %.02, 0, !dbg !718
  br i1 %38, label %._crit_edge30, label %39, !dbg !720

._crit_edge30:                                    ; preds = %37
  br label %41, !dbg !720

39:                                               ; preds = %37
  %40 = icmp ne %struct.list_head_s* %.212, null, !dbg !721
  br i1 %40, label %45, label %._crit_edge31, !dbg !722

._crit_edge31:                                    ; preds = %39
  br label %41, !dbg !722

41:                                               ; preds = %._crit_edge31, %._crit_edge30
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !671, metadata !DIExpression()), !dbg !678
  %42 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !723
  %43 = load %struct.list_head_s*, %struct.list_head_s** %42, align 4, !dbg !723, !tbaa !506, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_head_s* %43, metadata !669, metadata !DIExpression()), !dbg !678
  %44 = add nsw i32 %.224, -1, !dbg !725
  call void @llvm.dbg.value(metadata i32 %44, metadata !675, metadata !DIExpression()), !dbg !678
  br label %63, !dbg !726

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 1, !dbg !727
  %47 = load %struct.list_data_s*, %struct.list_data_s** %46, align 4, !dbg !727, !tbaa !509
  %48 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 1, !dbg !729
  %49 = load %struct.list_data_s*, %struct.list_data_s** %48, align 4, !dbg !729, !tbaa !509
  %50 = load i32, i32* @__checkpoint_count, align 4, !dbg !730, !idemp_checkpoint_count !298
  %51 = add i32 %50, 1, !dbg !730, !idemp_checkpoint_count !298
  store volatile i32 %51, i32* @__checkpoint_count, align 4, !dbg !730, !idemp_checkpoint_count !298
  %52 = call arm_aapcscc i32 %1(%struct.list_data_s* %47, %struct.list_data_s* %49, %struct.RESULTS_S* %2), !dbg !730
  %53 = icmp sle i32 %52, 0, !dbg !731
  br i1 %53, label %54, label %58, !dbg !732

54:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !671, metadata !DIExpression()), !dbg !678
  %55 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !733
  %56 = load %struct.list_head_s*, %struct.list_head_s** %55, align 4, !dbg !733, !tbaa !506, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_head_s* %56, metadata !669, metadata !DIExpression()), !dbg !678
  %57 = add nsw i32 %.224, -1, !dbg !735
  call void @llvm.dbg.value(metadata i32 %57, metadata !675, metadata !DIExpression()), !dbg !678
  br label %62, !dbg !736

58:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !671, metadata !DIExpression()), !dbg !678
  %59 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 0, !dbg !737
  %60 = load %struct.list_head_s*, %struct.list_head_s** %59, align 4, !dbg !737, !tbaa !506, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_head_s* %60, metadata !670, metadata !DIExpression()), !dbg !678
  %61 = add nsw i32 %.02, -1, !dbg !739
  call void @llvm.dbg.value(metadata i32 %61, metadata !676, metadata !DIExpression()), !dbg !678
  br label %62

62:                                               ; preds = %58, %54
  %.325 = phi i32 [ %57, %54 ], [ %.224, %58 ], !dbg !689
  %.015 = phi %struct.list_head_s* [ %.17, %54 ], [ %.212, %58 ], !dbg !740
  %.313 = phi %struct.list_head_s* [ %.212, %54 ], [ %60, %58 ], !dbg !689
  %.28 = phi %struct.list_head_s* [ %56, %54 ], [ %.17, %58 ], !dbg !682
  %.13 = phi i32 [ %.02, %54 ], [ %61, %58 ], !dbg !689
  call void @llvm.dbg.value(metadata i32 %.13, metadata !676, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.28, metadata !669, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.313, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.015, metadata !671, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.325, metadata !675, metadata !DIExpression()), !dbg !678
  br label %63

63:                                               ; preds = %62, %41
  %.426 = phi i32 [ %44, %41 ], [ %.325, %62 ], !dbg !741
  %.116 = phi %struct.list_head_s* [ %.17, %41 ], [ %.015, %62 ], !dbg !741
  %.414 = phi %struct.list_head_s* [ %.212, %41 ], [ %.313, %62 ], !dbg !742
  %.39 = phi %struct.list_head_s* [ %43, %41 ], [ %.28, %62 ], !dbg !741
  %.24 = phi i32 [ %.02, %41 ], [ %.13, %62 ], !dbg !743
  call void @llvm.dbg.value(metadata i32 %.24, metadata !676, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.39, metadata !669, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.414, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.116, metadata !671, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.426, metadata !675, metadata !DIExpression()), !dbg !678
  br label %64

64:                                               ; preds = %63, %33
  %.527 = phi i32 [ %.224, %33 ], [ %.426, %63 ], !dbg !689
  %.217 = phi %struct.list_head_s* [ %.212, %33 ], [ %.116, %63 ], !dbg !744
  %.5 = phi %struct.list_head_s* [ %35, %33 ], [ %.414, %63 ], !dbg !689
  %.4 = phi %struct.list_head_s* [ %.17, %33 ], [ %.39, %63 ], !dbg !682
  %.35 = phi i32 [ %36, %33 ], [ %.24, %63 ], !dbg !689
  call void @llvm.dbg.value(metadata i32 %.35, metadata !676, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.4, metadata !669, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.5, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !671, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %.527, metadata !675, metadata !DIExpression()), !dbg !678
  %65 = icmp ne %struct.list_head_s* %.119, null, !dbg !745
  br i1 %65, label %66, label %70, !dbg !747

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.119, i32 0, i32 0, !dbg !748
  %68 = load i32, i32* @__checkpoint_count, align 4, !dbg !750, !idemp_checkpoint_count !298
  %69 = add i32 %68, 1, !dbg !750, !idemp_checkpoint_count !298
  store volatile i32 %69, i32* @__checkpoint_count, align 4, !dbg !750, !idemp_checkpoint_count !298
  store %struct.list_head_s* %.217, %struct.list_head_s** %67, align 4, !dbg !750, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %71, !dbg !751

70:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !666, metadata !DIExpression()), !dbg !678
  br label %71

71:                                               ; preds = %70, %66
  %.3 = phi %struct.list_head_s* [ %.2, %66 ], [ %.217, %70 ], !dbg !682
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.3, metadata !666, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !672, metadata !DIExpression()), !dbg !678
  br label %21, !dbg !704, !llvm.loop !752

72:                                               ; preds = %29
  %.119.lcssa = phi %struct.list_head_s* [ %.119, %29 ], !dbg !682
  %.212.lcssa = phi %struct.list_head_s* [ %.212, %29 ], !dbg !689
  %.2.lcssa = phi %struct.list_head_s* [ %.2, %29 ], !dbg !684
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.119.lcssa, metadata !672, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212.lcssa, metadata !670, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.2.lcssa, metadata !666, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212.lcssa, metadata !669, metadata !DIExpression()), !dbg !678
  br label %6, !dbg !680, !llvm.loop !754

73:                                               ; preds = %6
  %.021.lcssa = phi i32 [ %.021, %6 ], !dbg !682
  %.018.lcssa = phi %struct.list_head_s* [ %.018, %6 ], !dbg !683
  %.1.lcssa = phi %struct.list_head_s* [ %.1, %6 ], !dbg !684
  call void @llvm.dbg.value(metadata i32 %.021.lcssa, metadata !674, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.018.lcssa, metadata !672, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1.lcssa, metadata !666, metadata !DIExpression()), !dbg !678
  %74 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.018.lcssa, i32 0, i32 0, !dbg !756
  %75 = load i32, i32* @__checkpoint_count, align 4, !dbg !757, !idemp_checkpoint_count !298
  %76 = add i32 %75, 1, !dbg !757, !idemp_checkpoint_count !298
  store volatile i32 %76, i32* @__checkpoint_count, align 4, !dbg !757, !idemp_checkpoint_count !298
  store %struct.list_head_s* null, %struct.list_head_s** %74, align 4, !dbg !757, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  %77 = icmp sle i32 %.021.lcssa, 1, !dbg !758
  br i1 %77, label %78, label %79, !dbg !760

78:                                               ; preds = %73
  %.1.lcssa.lcssa = phi %struct.list_head_s* [ %.1.lcssa, %73 ], !dbg !684
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1.lcssa.lcssa, metadata !666, metadata !DIExpression()), !dbg !678
  ret %struct.list_head_s* %.1.lcssa.lcssa, !dbg !761

79:                                               ; preds = %73
  %80 = mul nuw nsw i32 %.020, 2, !dbg !762
  call void @llvm.dbg.value(metadata i32 %80, metadata !673, metadata !DIExpression()), !dbg !678
  br label %4, !dbg !679, !llvm.loop !763
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_remove(%struct.list_head_s*) #0 !dbg !765 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !767, metadata !DIExpression()), !dbg !770
  %2 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !771
  %3 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !771, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %3, metadata !769, metadata !DIExpression()), !dbg !770
  %4 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !772
  %5 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !772, !tbaa !509, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_data_s* %5, metadata !768, metadata !DIExpression()), !dbg !770
  %6 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 1, !dbg !773
  %7 = load %struct.list_data_s*, %struct.list_data_s** %6, align 4, !dbg !773, !tbaa !509, !idemp_war_rd !298
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !774
  %9 = load i32, i32* @__checkpoint_count, align 4, !dbg !775, !idemp_checkpoint_count !298
  %10 = add i32 %9, 1, !dbg !775, !idemp_checkpoint_count !298
  store volatile i32 %10, i32* @__checkpoint_count, align 4, !dbg !775, !idemp_checkpoint_count !298
  store %struct.list_data_s* %7, %struct.list_data_s** %8, align 4, !dbg !775, !tbaa !509, !idemp_war_wr !298, !idemp_uncut_war !298
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 1, !dbg !776
  store %struct.list_data_s* %5, %struct.list_data_s** %11, align 4, !dbg !777, !tbaa !509, !idemp_war_wr !298, !idemp_uncut_war !298
  %12 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !778
  %13 = load %struct.list_head_s*, %struct.list_head_s** %12, align 4, !dbg !778, !tbaa !506, !idemp_war_rd !298
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %13, i32 0, i32 0, !dbg !779
  %15 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !779, !tbaa !506
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !780
  %17 = load i32, i32* @__checkpoint_count, align 4, !dbg !781, !idemp_checkpoint_count !298
  %18 = add i32 %17, 1, !dbg !781, !idemp_checkpoint_count !298
  store volatile i32 %18, i32* @__checkpoint_count, align 4, !dbg !781, !idemp_checkpoint_count !298
  store %struct.list_head_s* %15, %struct.list_head_s** %16, align 4, !dbg !781, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 0, !dbg !782
  store %struct.list_head_s* null, %struct.list_head_s** %19, align 4, !dbg !783, !tbaa !506
  ret %struct.list_head_s* %3, !dbg !784
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_undo_remove(%struct.list_head_s*, %struct.list_head_s*) #0 !dbg !785 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !789, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata %struct.list_head_s* %1, metadata !790, metadata !DIExpression()), !dbg !792
  %3 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !793
  %4 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !793, !tbaa !509, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata %struct.list_data_s* %4, metadata !791, metadata !DIExpression()), !dbg !792
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 1, !dbg !794
  %6 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !794, !tbaa !509, !idemp_war_rd !298
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !795
  %8 = load i32, i32* @__checkpoint_count, align 4, !dbg !796, !idemp_checkpoint_count !298
  %9 = add i32 %8, 1, !dbg !796, !idemp_checkpoint_count !298
  store volatile i32 %9, i32* @__checkpoint_count, align 4, !dbg !796, !idemp_checkpoint_count !298
  store %struct.list_data_s* %6, %struct.list_data_s** %7, align 4, !dbg !796, !tbaa !509, !idemp_war_wr !298, !idemp_uncut_war !298
  %10 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 1, !dbg !797
  store %struct.list_data_s* %4, %struct.list_data_s** %10, align 4, !dbg !798, !tbaa !509, !idemp_war_wr !298, !idemp_uncut_war !298
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 0, !dbg !799
  %12 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !799, !tbaa !506, !idemp_war_rd !298
  %13 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !800
  store %struct.list_head_s* %12, %struct.list_head_s** %13, align 4, !dbg !801, !tbaa !506
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 0, !dbg !802
  %15 = load i32, i32* @__checkpoint_count, align 4, !dbg !803, !idemp_checkpoint_count !298
  %16 = add i32 %15, 1, !dbg !803, !idemp_checkpoint_count !298
  store volatile i32 %16, i32* @__checkpoint_count, align 4, !dbg !803, !idemp_checkpoint_count !298
  store %struct.list_head_s* %0, %struct.list_head_s** %14, align 4, !dbg !803, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  ret %struct.list_head_s* %0, !dbg !804
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_init(i32, %struct.list_head_s*, i16 signext) #0 !dbg !805 {
  %4 = alloca %struct.list_head_s*, align 4
  %5 = alloca %struct.list_data_s*, align 4
  %6 = alloca %struct.list_data_s, align 2
  call void @llvm.dbg.value(metadata i32 %0, metadata !809, metadata !DIExpression()), !dbg !830
  store %struct.list_head_s* %1, %struct.list_head_s** %4, align 4, !tbaa !335, !idemp_pot_pwrite !298
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %4, metadata !810, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i16 %2, metadata !811, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 20, metadata !812, metadata !DIExpression()), !dbg !830
  %7 = udiv i32 %0, 20, !dbg !832
  %8 = sub i32 %7, 2, !dbg !833
  call void @llvm.dbg.value(metadata i32 %8, metadata !813, metadata !DIExpression()), !dbg !830
  %9 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !834, !tbaa !335
  %10 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %9, i32 %8, !dbg !835
  call void @llvm.dbg.value(metadata %struct.list_head_s* %10, metadata !814, metadata !DIExpression()), !dbg !830
  %11 = bitcast %struct.list_data_s** %5 to i8*, !dbg !836
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !836
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %5, metadata !815, metadata !DIExpression()), !dbg !837
  %12 = bitcast %struct.list_head_s* %10 to %struct.list_data_s*, !dbg !838
  store %struct.list_data_s* %12, %struct.list_data_s** %5, align 4, !dbg !837, !tbaa !335, !idemp_pot_pwrite !298
  %13 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !839, !tbaa !335
  %14 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %13, i32 %8, !dbg !840
  call void @llvm.dbg.value(metadata %struct.list_data_s* %14, metadata !816, metadata !DIExpression()), !dbg !830
  %15 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !841, !tbaa !335
  call void @llvm.dbg.value(metadata %struct.list_head_s* %15, metadata !819, metadata !DIExpression()), !dbg !830
  %16 = bitcast %struct.list_data_s* %6 to i8*, !dbg !842
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !842
  call void @llvm.dbg.declare(metadata %struct.list_data_s* %6, metadata !820, metadata !DIExpression()), !dbg !843
  %17 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 0, !dbg !844
  store %struct.list_head_s* null, %struct.list_head_s** %17, align 4, !dbg !845, !tbaa !506
  %18 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !846, !tbaa !335
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !847
  store %struct.list_data_s* %18, %struct.list_data_s** %19, align 4, !dbg !848, !tbaa !509
  %20 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !849
  %21 = load %struct.list_data_s*, %struct.list_data_s** %20, align 4, !dbg !849, !tbaa !509
  %22 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %21, i32 0, i32 1, !dbg !850
  store i16 0, i16* %22, align 2, !dbg !851, !tbaa !436
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !852
  %24 = load %struct.list_data_s*, %struct.list_data_s** %23, align 4, !dbg !852, !tbaa !509
  %25 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %24, i32 0, i32 0, !dbg !853
  store i16 -32640, i16* %25, align 2, !dbg !854, !tbaa !411
  %26 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !855, !tbaa !335, !idemp_war_rd !298
  %27 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %26, i32 1, !dbg !855
  %28 = load i32, i32* @__checkpoint_count, align 4, !dbg !855, !idemp_checkpoint_count !298
  %29 = add i32 %28, 1, !dbg !855, !idemp_checkpoint_count !298
  store volatile i32 %29, i32* @__checkpoint_count, align 4, !dbg !855, !idemp_checkpoint_count !298
  store %struct.list_head_s* %27, %struct.list_head_s** %4, align 4, !dbg !855, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  %30 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !856, !tbaa !335, !idemp_war_rd !298
  %31 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %30, i32 1, !dbg !856
  %32 = load i32, i32* @__checkpoint_count, align 4, !dbg !856, !idemp_checkpoint_count !298
  %33 = add i32 %32, 1, !dbg !856, !idemp_checkpoint_count !298
  store volatile i32 %33, i32* @__checkpoint_count, align 4, !dbg !856, !idemp_checkpoint_count !298
  store %struct.list_data_s* %31, %struct.list_data_s** %5, align 4, !dbg !856, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  %34 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 1, !dbg !857
  store i16 32767, i16* %34, align 2, !dbg !858, !tbaa !436
  %35 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 0, !dbg !859
  store i16 -1, i16* %35, align 2, !dbg !860, !tbaa !411
  %36 = load i32, i32* @__checkpoint_count, align 4, !dbg !861, !idemp_checkpoint_count !298
  %37 = add i32 %36, 1, !dbg !861, !idemp_checkpoint_count !298
  store volatile i32 %37, i32* @__checkpoint_count, align 4, !dbg !861, !idemp_checkpoint_count !298
  %38 = call arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s* %15, %struct.list_data_s* %6, %struct.list_head_s** %4, %struct.list_data_s** %5, %struct.list_head_s* %10, %struct.list_data_s* %14), !dbg !861
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !830
  br label %39, !dbg !862

39:                                               ; preds = %62, %3
  %.01 = phi i32 [ 0, %3 ], [ %63, %62 ], !dbg !863
  call void @llvm.dbg.value(metadata i32 %.01, metadata !817, metadata !DIExpression()), !dbg !830
  %40 = icmp ult i32 %.01, %8, !dbg !864
  br i1 %40, label %41, label %64, !dbg !865

41:                                               ; preds = %39
  %42 = sext i16 %2 to i32, !dbg !866
  %43 = xor i32 %42, %.01, !dbg !867
  %44 = trunc i32 %43 to i16, !dbg !868
  %45 = zext i16 %44 to i32, !dbg !868
  %46 = and i32 %45, 15, !dbg !869
  %47 = trunc i32 %46 to i16, !dbg !870
  call void @llvm.dbg.value(metadata i16 %47, metadata !821, metadata !DIExpression()), !dbg !871
  %48 = zext i16 %47 to i32, !dbg !872
  %49 = shl i32 %48, 3, !dbg !873
  %50 = and i32 %.01, 7, !dbg !874
  %51 = or i32 %49, %50, !dbg !875
  %52 = trunc i32 %51 to i16, !dbg !876
  call void @llvm.dbg.value(metadata i16 %52, metadata !825, metadata !DIExpression()), !dbg !871
  %53 = zext i16 %52 to i32, !dbg !877
  %54 = shl i32 %53, 8, !dbg !878
  %55 = zext i16 %52 to i32, !dbg !879
  %56 = or i32 %54, %55, !dbg !880
  %57 = trunc i32 %56 to i16, !dbg !881
  %58 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 0, !dbg !882
  store i16 %57, i16* %58, align 2, !dbg !883, !tbaa !411
  %59 = load i32, i32* @__checkpoint_count, align 4, !dbg !884, !idemp_checkpoint_count !298
  %60 = add i32 %59, 1, !dbg !884, !idemp_checkpoint_count !298
  store volatile i32 %60, i32* @__checkpoint_count, align 4, !dbg !884, !idemp_checkpoint_count !298
  %61 = call arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s* %15, %struct.list_data_s* %6, %struct.list_head_s** %4, %struct.list_data_s** %5, %struct.list_head_s* %10, %struct.list_data_s* %14), !dbg !884
  br label %62, !dbg !885

62:                                               ; preds = %41
  %63 = add i32 %.01, 1, !dbg !886
  call void @llvm.dbg.value(metadata i32 %63, metadata !817, metadata !DIExpression()), !dbg !830
  br label %39, !dbg !887, !llvm.loop !888

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 0, !dbg !890
  %66 = load %struct.list_head_s*, %struct.list_head_s** %65, align 4, !dbg !890, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %66, metadata !818, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 1, metadata !817, metadata !DIExpression()), !dbg !830
  br label %67, !dbg !891

67:                                               ; preds = %94, %64
  %.1 = phi i32 [ 1, %64 ], [ %.2, %94 ], !dbg !830
  %.0 = phi %struct.list_head_s* [ %66, %64 ], [ %96, %94 ], !dbg !830
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !818, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i32 %.1, metadata !817, metadata !DIExpression()), !dbg !830
  %68 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !892
  %69 = load %struct.list_head_s*, %struct.list_head_s** %68, align 4, !dbg !892, !tbaa !506
  %70 = icmp ne %struct.list_head_s* %69, null, !dbg !893
  br i1 %70, label %71, label %97, !dbg !891

71:                                               ; preds = %67
  %72 = udiv i32 %8, 5, !dbg !894
  %73 = icmp ult i32 %.1, %72, !dbg !895
  br i1 %73, label %74, label %80, !dbg !896

74:                                               ; preds = %71
  %75 = add i32 %.1, 1, !dbg !897
  call void @llvm.dbg.value(metadata i32 %75, metadata !817, metadata !DIExpression()), !dbg !830
  %76 = trunc i32 %.1 to i16, !dbg !898
  %77 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1, !dbg !899
  %78 = load %struct.list_data_s*, %struct.list_data_s** %77, align 4, !dbg !899, !tbaa !509
  %79 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %78, i32 0, i32 1, !dbg !900
  store i16 %76, i16* %79, align 2, !dbg !901, !tbaa !436
  br label %94, !dbg !902

80:                                               ; preds = %71
  %81 = add i32 %.1, 1, !dbg !903
  call void @llvm.dbg.value(metadata i32 %81, metadata !817, metadata !DIExpression()), !dbg !830
  %82 = sext i16 %2 to i32, !dbg !904
  %83 = xor i32 %.1, %82, !dbg !905
  %84 = trunc i32 %83 to i16, !dbg !906
  call void @llvm.dbg.value(metadata i16 %84, metadata !826, metadata !DIExpression()), !dbg !907
  %85 = and i32 %81, 7, !dbg !908
  %86 = shl i32 %85, 8, !dbg !909
  %87 = zext i16 %84 to i32, !dbg !910
  %88 = or i32 %86, %87, !dbg !911
  %89 = and i32 16383, %88, !dbg !912
  %90 = trunc i32 %89 to i16, !dbg !913
  %91 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1, !dbg !914
  %92 = load %struct.list_data_s*, %struct.list_data_s** %91, align 4, !dbg !914, !tbaa !509
  %93 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %92, i32 0, i32 1, !dbg !915
  store i16 %90, i16* %93, align 2, !dbg !916, !tbaa !436
  br label %94

94:                                               ; preds = %80, %74
  %.2 = phi i32 [ %75, %74 ], [ %81, %80 ], !dbg !917
  call void @llvm.dbg.value(metadata i32 %.2, metadata !817, metadata !DIExpression()), !dbg !830
  %95 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !918
  %96 = load %struct.list_head_s*, %struct.list_head_s** %95, align 4, !dbg !918, !tbaa !506
  call void @llvm.dbg.value(metadata %struct.list_head_s* %96, metadata !818, metadata !DIExpression()), !dbg !830
  br label %67, !dbg !891, !llvm.loop !919

97:                                               ; preds = %67
  %98 = load i32, i32* @__checkpoint_count, align 4, !dbg !921, !idemp_checkpoint_count !298
  %99 = add i32 %98, 1, !dbg !921, !idemp_checkpoint_count !298
  store volatile i32 %99, i32* @__checkpoint_count, align 4, !dbg !921, !idemp_checkpoint_count !298
  %100 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %15, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_idx, %struct.RESULTS_S* null), !dbg !921
  call void @llvm.dbg.value(metadata %struct.list_head_s* %100, metadata !819, metadata !DIExpression()), !dbg !830
  %101 = bitcast %struct.list_data_s* %6 to i8*, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %101) #4, !dbg !922
  %102 = bitcast %struct.list_data_s** %5 to i8*, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %102) #4, !dbg !922
  ret %struct.list_head_s* %100, !dbg !923
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s*, %struct.list_data_s*, %struct.list_head_s**, %struct.list_data_s**, %struct.list_head_s*, %struct.list_data_s*) #0 !dbg !924 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !930, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !931, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata %struct.list_head_s** %2, metadata !932, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata %struct.list_data_s** %3, metadata !933, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata %struct.list_head_s* %4, metadata !934, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata %struct.list_data_s* %5, metadata !935, metadata !DIExpression()), !dbg !937
  %7 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !938, !tbaa !335
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %7, i32 1, !dbg !940
  %9 = icmp uge %struct.list_head_s* %8, %4, !dbg !941
  br i1 %9, label %10, label %11, !dbg !942

10:                                               ; preds = %6
  br label %38, !dbg !943

11:                                               ; preds = %6
  %12 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !944, !tbaa !335
  %13 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %12, i32 1, !dbg !946
  %14 = icmp uge %struct.list_data_s* %13, %5, !dbg !947
  br i1 %14, label %15, label %16, !dbg !948

15:                                               ; preds = %11
  br label %38, !dbg !949

16:                                               ; preds = %11
  %17 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !950, !tbaa !335
  call void @llvm.dbg.value(metadata %struct.list_head_s* %17, metadata !936, metadata !DIExpression()), !dbg !937
  %18 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !951, !tbaa !335, !idemp_war_rd !298
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %18, i32 1, !dbg !951
  %20 = load i32, i32* @__checkpoint_count, align 4, !dbg !951, !idemp_checkpoint_count !298
  %21 = add i32 %20, 1, !dbg !951, !idemp_checkpoint_count !298
  store volatile i32 %21, i32* @__checkpoint_count, align 4, !dbg !951, !idemp_checkpoint_count !298
  store %struct.list_head_s* %19, %struct.list_head_s** %2, align 4, !dbg !951, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  %22 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !952
  %23 = load %struct.list_head_s*, %struct.list_head_s** %22, align 4, !dbg !952, !tbaa !506, !idemp_war_rd !298
  %24 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 0, !dbg !953
  %25 = load i32, i32* @__checkpoint_count, align 4, !dbg !954, !idemp_checkpoint_count !298
  %26 = add i32 %25, 1, !dbg !954, !idemp_checkpoint_count !298
  store volatile i32 %26, i32* @__checkpoint_count, align 4, !dbg !954, !idemp_checkpoint_count !298
  store %struct.list_head_s* %23, %struct.list_head_s** %24, align 4, !dbg !954, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  %27 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !955
  store %struct.list_head_s* %17, %struct.list_head_s** %27, align 4, !dbg !956, !tbaa !506, !idemp_war_wr !298, !idemp_uncut_war !298
  %28 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !957, !tbaa !335
  %29 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 1, !dbg !958
  store %struct.list_data_s* %28, %struct.list_data_s** %29, align 4, !dbg !959, !tbaa !509, !idemp_war_wr !298, !idemp_uncut_war !298
  %30 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !960, !tbaa !335, !idemp_war_rd !298
  %31 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %30, i32 1, !dbg !960
  %32 = load i32, i32* @__checkpoint_count, align 4, !dbg !960, !idemp_checkpoint_count !298
  %33 = add i32 %32, 1, !dbg !960, !idemp_checkpoint_count !298
  store volatile i32 %33, i32* @__checkpoint_count, align 4, !dbg !960, !idemp_checkpoint_count !298
  store %struct.list_data_s* %31, %struct.list_data_s** %3, align 4, !dbg !960, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  %34 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 1, !dbg !961
  %35 = load %struct.list_data_s*, %struct.list_data_s** %34, align 4, !dbg !961, !tbaa !509
  %36 = load i32, i32* @__checkpoint_count, align 4, !dbg !962, !idemp_checkpoint_count !298
  %37 = add i32 %36, 1, !dbg !962, !idemp_checkpoint_count !298
  store volatile i32 %37, i32* @__checkpoint_count, align 4, !dbg !962, !idemp_checkpoint_count !298
  call arm_aapcscc void @copy_info(%struct.list_data_s* %35, %struct.list_data_s* %1), !dbg !962
  br label %38, !dbg !963

38:                                               ; preds = %16, %15, %10
  %.0 = phi %struct.list_head_s* [ null, %10 ], [ null, %15 ], [ %17, %16 ], !dbg !937
  ret %struct.list_head_s* %.0, !dbg !964
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i8* @iterate(i8*) #0 !dbg !965 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !969, metadata !DIExpression()), !dbg !974
  %2 = bitcast i8* %0 to %struct.RESULTS_S*, !dbg !975
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !972, metadata !DIExpression()), !dbg !974
  %3 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 5, !dbg !976
  %4 = load i32, i32* %3, align 4, !dbg !976, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %4, metadata !973, metadata !DIExpression()), !dbg !974
  %5 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !978
  store i16 0, i16* %5, align 4, !dbg !979, !tbaa !341
  %6 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 10, !dbg !980
  store i16 0, i16* %6, align 2, !dbg !981, !tbaa !982
  %7 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 11, !dbg !983
  store i16 0, i16* %7, align 4, !dbg !984, !tbaa !358
  %8 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 12, !dbg !985
  store i16 0, i16* %8, align 2, !dbg !986, !tbaa !345
  call void @llvm.dbg.value(metadata i32 0, metadata !970, metadata !DIExpression()), !dbg !974
  br label %9, !dbg !987

9:                                                ; preds = %35, %1
  %.0 = phi i32 [ 0, %1 ], [ %36, %35 ], !dbg !989
  call void @llvm.dbg.value(metadata i32 %.0, metadata !970, metadata !DIExpression()), !dbg !974
  %exitcond = icmp ne i32 %.0, %4, !dbg !990
  br i1 %exitcond, label %10, label %37, !dbg !992

10:                                               ; preds = %9
  %11 = load i32, i32* @__checkpoint_count, align 4, !dbg !993, !idemp_checkpoint_count !298
  %12 = add i32 %11, 1, !dbg !993, !idemp_checkpoint_count !298
  store volatile i32 %12, i32* @__checkpoint_count, align 4, !dbg !993, !idemp_checkpoint_count !298
  %13 = call arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S* %2, i16 signext 1), !dbg !993
  call void @llvm.dbg.value(metadata i16 %13, metadata !971, metadata !DIExpression()), !dbg !974
  %14 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !995
  %15 = load i16, i16* %14, align 4, !dbg !995, !tbaa !341, !idemp_war_rd !298
  %16 = load i32, i32* @__checkpoint_count, align 4, !dbg !996, !idemp_checkpoint_count !298
  %17 = add i32 %16, 1, !dbg !996, !idemp_checkpoint_count !298
  store volatile i32 %17, i32* @__checkpoint_count, align 4, !dbg !996, !idemp_checkpoint_count !298
  %18 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %13, i16 zeroext %15), !dbg !996
  %19 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !997
  store i16 %18, i16* %19, align 4, !dbg !998, !tbaa !341, !idemp_war_wr !298, !idemp_precut_war !298
  %20 = load i32, i32* @__checkpoint_count, align 4, !dbg !999, !idemp_checkpoint_count !298
  %21 = add i32 %20, 1, !dbg !999, !idemp_checkpoint_count !298
  store volatile i32 %21, i32* @__checkpoint_count, align 4, !dbg !999, !idemp_checkpoint_count !298
  %22 = call arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S* %2, i16 signext -1), !dbg !999
  call void @llvm.dbg.value(metadata i16 %22, metadata !971, metadata !DIExpression()), !dbg !974
  %23 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !1000
  %24 = load i16, i16* %23, align 4, !dbg !1000, !tbaa !341, !idemp_war_rd !298
  %25 = load i32, i32* @__checkpoint_count, align 4, !dbg !1001, !idemp_checkpoint_count !298
  %26 = add i32 %25, 1, !dbg !1001, !idemp_checkpoint_count !298
  store volatile i32 %26, i32* @__checkpoint_count, align 4, !dbg !1001, !idemp_checkpoint_count !298
  %27 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %22, i16 zeroext %24), !dbg !1001
  %28 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !1002
  store i16 %27, i16* %28, align 4, !dbg !1003, !tbaa !341, !idemp_war_wr !298, !idemp_precut_war !298
  %29 = icmp eq i32 %.0, 0, !dbg !1004
  br i1 %29, label %30, label %._crit_edge, !dbg !1006

._crit_edge:                                      ; preds = %10
  br label %34, !dbg !1006

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !1007
  %32 = load i16, i16* %31, align 4, !dbg !1007, !tbaa !341
  %33 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 10, !dbg !1008
  store i16 %32, i16* %33, align 2, !dbg !1009, !tbaa !982
  br label %34, !dbg !1010

34:                                               ; preds = %30, %._crit_edge
  br label %35, !dbg !1011

35:                                               ; preds = %34
  %36 = add i32 %.0, 1, !dbg !1012
  call void @llvm.dbg.value(metadata i32 %36, metadata !970, metadata !DIExpression()), !dbg !974
  br label %9, !dbg !1013, !llvm.loop !1014

37:                                               ; preds = %9
  ret i8* null, !dbg !1016
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @main(i32, i8**) #0 !dbg !1017 {
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.RESULTS_S], align 4
  %5 = alloca [2000 x i8], align 1
  store i32 %0, i32* %3, align 4, !tbaa !1047
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1022, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8** %1, metadata !1023, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 0, metadata !1025, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 0, metadata !1026, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 -1, metadata !1027, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 0, metadata !1028, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 0, metadata !1029, metadata !DIExpression()), !dbg !1049
  %6 = bitcast [1 x %struct.RESULTS_S]* %4 to i8*, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 68, i8* %6) #4, !dbg !1050
  call void @llvm.dbg.declare(metadata [1 x %struct.RESULTS_S]* %4, metadata !1031, metadata !DIExpression()), !dbg !1051
  %7 = bitcast [2000 x i8]* %5 to i8*, !dbg !1052
  call void @llvm.lifetime.start.p0i8(i64 2000, i8* %7) #4, !dbg !1052
  call void @llvm.dbg.declare(metadata [2000 x i8]* %5, metadata !1035, metadata !DIExpression()), !dbg !1053
  %8 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1054
  %9 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %8, i32 0, i32 14, !dbg !1055
  %10 = load i32, i32* @__checkpoint_count, align 4, !dbg !1056, !idemp_checkpoint_count !298
  %11 = add i32 %10, 1, !dbg !1056, !idemp_checkpoint_count !298
  store volatile i32 %11, i32* @__checkpoint_count, align 4, !dbg !1056, !idemp_checkpoint_count !298
  call arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S* %9, i32* %3, i8** %1), !dbg !1056
  %12 = load i32, i32* @__checkpoint_count, align 4, !dbg !1057, !idemp_checkpoint_count !298
  %13 = add i32 %12, 1, !dbg !1057, !idemp_checkpoint_count !298
  store volatile i32 %13, i32* @__checkpoint_count, align 4, !dbg !1057, !idemp_checkpoint_count !298
  %14 = call arm_aapcscc i32 @get_seed_32(i32 1), !dbg !1057
  %15 = trunc i32 %14 to i16, !dbg !1057
  %16 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1058
  %17 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %16, i32 0, i32 0, !dbg !1059
  store i16 %15, i16* %17, align 4, !dbg !1060, !tbaa !337
  %18 = load i32, i32* @__checkpoint_count, align 4, !dbg !1061, !idemp_checkpoint_count !298
  %19 = add i32 %18, 1, !dbg !1061, !idemp_checkpoint_count !298
  store volatile i32 %19, i32* @__checkpoint_count, align 4, !dbg !1061, !idemp_checkpoint_count !298
  %20 = call arm_aapcscc i32 @get_seed_32(i32 2), !dbg !1061
  %21 = trunc i32 %20 to i16, !dbg !1061
  %22 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1062
  %23 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %22, i32 0, i32 1, !dbg !1063
  store i16 %21, i16* %23, align 2, !dbg !1064, !tbaa !339
  %24 = load i32, i32* @__checkpoint_count, align 4, !dbg !1065, !idemp_checkpoint_count !298
  %25 = add i32 %24, 1, !dbg !1065, !idemp_checkpoint_count !298
  store volatile i32 %25, i32* @__checkpoint_count, align 4, !dbg !1065, !idemp_checkpoint_count !298
  %26 = call arm_aapcscc i32 @get_seed_32(i32 3), !dbg !1065
  %27 = trunc i32 %26 to i16, !dbg !1065
  %28 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1066
  %29 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %28, i32 0, i32 2, !dbg !1067
  store i16 %27, i16* %29, align 4, !dbg !1068, !tbaa !478
  %30 = load i32, i32* @__checkpoint_count, align 4, !dbg !1069, !idemp_checkpoint_count !298
  %31 = add i32 %30, 1, !dbg !1069, !idemp_checkpoint_count !298
  store volatile i32 %31, i32* @__checkpoint_count, align 4, !dbg !1069, !idemp_checkpoint_count !298
  %32 = call arm_aapcscc i32 @get_seed_32(i32 4), !dbg !1069
  %33 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1070
  %34 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %33, i32 0, i32 5, !dbg !1071
  store i32 %32, i32* %34, align 4, !dbg !1072, !tbaa !977
  %35 = load i32, i32* @__checkpoint_count, align 4, !dbg !1073, !idemp_checkpoint_count !298
  %36 = add i32 %35, 1, !dbg !1073, !idemp_checkpoint_count !298
  store volatile i32 %36, i32* @__checkpoint_count, align 4, !dbg !1073, !idemp_checkpoint_count !298
  %37 = call arm_aapcscc i32 @get_seed_32(i32 5), !dbg !1073
  %38 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1074
  %39 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %38, i32 0, i32 6, !dbg !1075
  store i32 %37, i32* %39, align 4, !dbg !1076, !tbaa !1077, !idemp_pot_pwrite !298
  %40 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1078
  %41 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %40, i32 0, i32 6, !dbg !1080
  %42 = load i32, i32* %41, align 4, !dbg !1080, !tbaa !1077, !idemp_war_rd !298
  %43 = icmp eq i32 %42, 0, !dbg !1081
  br i1 %43, label %44, label %._crit_edge, !dbg !1082

._crit_edge:                                      ; preds = %2
  br label %49, !dbg !1082

44:                                               ; preds = %2
  %45 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1083
  %46 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %45, i32 0, i32 6, !dbg !1085
  %47 = load i32, i32* @__checkpoint_count, align 4, !dbg !1086, !idemp_checkpoint_count !298
  %48 = add i32 %47, 1, !dbg !1086, !idemp_checkpoint_count !298
  store volatile i32 %48, i32* @__checkpoint_count, align 4, !dbg !1086, !idemp_checkpoint_count !298
  store i32 7, i32* %46, align 4, !dbg !1086, !tbaa !1077, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %49, !dbg !1087

49:                                               ; preds = %44, %._crit_edge
  %50 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1088
  %51 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %50, i32 0, i32 0, !dbg !1090
  %52 = load i16, i16* %51, align 4, !dbg !1090, !tbaa !337, !idemp_war_rd !298
  %53 = sext i16 %52 to i32, !dbg !1088
  %54 = icmp eq i32 %53, 0, !dbg !1091
  br i1 %54, label %55, label %._crit_edge27, !dbg !1092

._crit_edge27:                                    ; preds = %49
  br label %76, !dbg !1092

55:                                               ; preds = %49
  %56 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1093
  %57 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %56, i32 0, i32 1, !dbg !1094
  %58 = load i16, i16* %57, align 2, !dbg !1094, !tbaa !339, !idemp_war_rd !298
  %59 = sext i16 %58 to i32, !dbg !1093
  %60 = icmp eq i32 %59, 0, !dbg !1095
  br i1 %60, label %61, label %._crit_edge28, !dbg !1096

._crit_edge28:                                    ; preds = %55
  br label %76, !dbg !1096

61:                                               ; preds = %55
  %62 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1097
  %63 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %62, i32 0, i32 2, !dbg !1098
  %64 = load i16, i16* %63, align 4, !dbg !1098, !tbaa !478, !idemp_war_rd !298
  %65 = sext i16 %64 to i32, !dbg !1097
  %66 = icmp eq i32 %65, 0, !dbg !1099
  br i1 %66, label %67, label %._crit_edge29, !dbg !1100

._crit_edge29:                                    ; preds = %61
  br label %76, !dbg !1100

67:                                               ; preds = %61
  %68 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1101
  %69 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %68, i32 0, i32 0, !dbg !1103
  %70 = load i32, i32* @__checkpoint_count, align 4, !dbg !1104, !idemp_checkpoint_count !298
  %71 = add i32 %70, 1, !dbg !1104, !idemp_checkpoint_count !298
  store volatile i32 %71, i32* @__checkpoint_count, align 4, !dbg !1104, !idemp_checkpoint_count !298
  store i16 0, i16* %69, align 4, !dbg !1104, !tbaa !337, !idemp_war_wr !298, !idemp_uncut_war !298
  %72 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1105
  %73 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %72, i32 0, i32 1, !dbg !1106
  store i16 0, i16* %73, align 2, !dbg !1107, !tbaa !339, !idemp_war_wr !298, !idemp_uncut_war !298
  %74 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1108
  %75 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %74, i32 0, i32 2, !dbg !1109
  store i16 102, i16* %75, align 4, !dbg !1110, !tbaa !478, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %76, !dbg !1111

76:                                               ; preds = %67, %._crit_edge29, %._crit_edge28, %._crit_edge27
  %77 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1112
  %78 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %77, i32 0, i32 0, !dbg !1114
  %79 = load i16, i16* %78, align 4, !dbg !1114, !tbaa !337, !idemp_war_rd !298
  %80 = sext i16 %79 to i32, !dbg !1112
  %81 = icmp eq i32 %80, 1, !dbg !1115
  br i1 %81, label %82, label %._crit_edge30, !dbg !1116

._crit_edge30:                                    ; preds = %76
  br label %103, !dbg !1116

82:                                               ; preds = %76
  %83 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1117
  %84 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %83, i32 0, i32 1, !dbg !1118
  %85 = load i16, i16* %84, align 2, !dbg !1118, !tbaa !339, !idemp_war_rd !298
  %86 = sext i16 %85 to i32, !dbg !1117
  %87 = icmp eq i32 %86, 0, !dbg !1119
  br i1 %87, label %88, label %._crit_edge31, !dbg !1120

._crit_edge31:                                    ; preds = %82
  br label %103, !dbg !1120

88:                                               ; preds = %82
  %89 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1121
  %90 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %89, i32 0, i32 2, !dbg !1122
  %91 = load i16, i16* %90, align 4, !dbg !1122, !tbaa !478, !idemp_war_rd !298
  %92 = sext i16 %91 to i32, !dbg !1121
  %93 = icmp eq i32 %92, 0, !dbg !1123
  br i1 %93, label %94, label %._crit_edge32, !dbg !1124

._crit_edge32:                                    ; preds = %88
  br label %103, !dbg !1124

94:                                               ; preds = %88
  %95 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1125
  %96 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %95, i32 0, i32 0, !dbg !1127
  %97 = load i32, i32* @__checkpoint_count, align 4, !dbg !1128, !idemp_checkpoint_count !298
  %98 = add i32 %97, 1, !dbg !1128, !idemp_checkpoint_count !298
  store volatile i32 %98, i32* @__checkpoint_count, align 4, !dbg !1128, !idemp_checkpoint_count !298
  store i16 13333, i16* %96, align 4, !dbg !1128, !tbaa !337, !idemp_war_wr !298, !idemp_uncut_war !298
  %99 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1129
  %100 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %99, i32 0, i32 1, !dbg !1130
  store i16 13333, i16* %100, align 2, !dbg !1131, !tbaa !339, !idemp_war_wr !298, !idemp_uncut_war !298
  %101 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1132
  %102 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %101, i32 0, i32 2, !dbg !1133
  store i16 102, i16* %102, align 4, !dbg !1134, !tbaa !478, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %103, !dbg !1135

103:                                              ; preds = %94, %._crit_edge32, %._crit_edge31, %._crit_edge30
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %104, !dbg !1136

104:                                              ; preds = %155, %103
  %.02 = phi i16 [ 0, %103 ], [ %156, %155 ], !dbg !1138
  call void @llvm.dbg.value(metadata i16 %.02, metadata !1024, metadata !DIExpression()), !dbg !1049
  %105 = zext i16 %.02 to i32, !dbg !1139
  %106 = icmp slt i32 %105, 1, !dbg !1141
  br i1 %106, label %107, label %157, !dbg !1142

107:                                              ; preds = %104
  %108 = getelementptr inbounds [2000 x i8], [2000 x i8]* %5, i32 0, i32 0, !dbg !1143
  %109 = zext i16 %.02 to i32, !dbg !1145
  %110 = mul nsw i32 %109, 2, !dbg !1146
  %111 = mul nsw i32 %110, 1000, !dbg !1147
  %112 = getelementptr inbounds i8, i8* %108, i32 %111, !dbg !1148
  %113 = zext i16 %.02 to i32, !dbg !1149
  %114 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %113, !dbg !1149
  %115 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %114, i32 0, i32 3, !dbg !1150
  %116 = getelementptr inbounds [4 x i8*], [4 x i8*]* %115, i32 0, i32 0, !dbg !1149
  store i8* %112, i8** %116, align 4, !dbg !1151, !tbaa !335
  %117 = zext i16 %.02 to i32, !dbg !1152
  %118 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %117, !dbg !1152
  %119 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %118, i32 0, i32 4, !dbg !1153
  store i32 2000, i32* %119, align 4, !dbg !1154, !tbaa !327
  %120 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1155
  %121 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %120, i32 0, i32 0, !dbg !1156
  %122 = load i16, i16* %121, align 4, !dbg !1156, !tbaa !337, !idemp_war_rd !298
  %123 = zext i16 %.02 to i32, !dbg !1157
  %124 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %123, !dbg !1157
  %125 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %124, i32 0, i32 0, !dbg !1158
  %126 = load i32, i32* @__checkpoint_count, align 4, !dbg !1159, !idemp_checkpoint_count !298
  %127 = add i32 %126, 1, !dbg !1159, !idemp_checkpoint_count !298
  store volatile i32 %127, i32* @__checkpoint_count, align 4, !dbg !1159, !idemp_checkpoint_count !298
  store i16 %122, i16* %125, align 4, !dbg !1159, !tbaa !337, !idemp_war_wr !298, !idemp_uncut_war !298
  %128 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1160
  %129 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %128, i32 0, i32 1, !dbg !1161
  %130 = load i16, i16* %129, align 2, !dbg !1161, !tbaa !339, !idemp_war_rd !298
  %131 = zext i16 %.02 to i32, !dbg !1162
  %132 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %131, !dbg !1162
  %133 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %132, i32 0, i32 1, !dbg !1163
  %134 = load i32, i32* @__checkpoint_count, align 4, !dbg !1164, !idemp_checkpoint_count !298
  %135 = add i32 %134, 1, !dbg !1164, !idemp_checkpoint_count !298
  store volatile i32 %135, i32* @__checkpoint_count, align 4, !dbg !1164, !idemp_checkpoint_count !298
  store i16 %130, i16* %133, align 2, !dbg !1164, !tbaa !339, !idemp_war_wr !298, !idemp_uncut_war !298
  %136 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1165
  %137 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %136, i32 0, i32 2, !dbg !1166
  %138 = load i16, i16* %137, align 4, !dbg !1166, !tbaa !478, !idemp_war_rd !298
  %139 = zext i16 %.02 to i32, !dbg !1167
  %140 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %139, !dbg !1167
  %141 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %140, i32 0, i32 2, !dbg !1168
  %142 = load i32, i32* @__checkpoint_count, align 4, !dbg !1169, !idemp_checkpoint_count !298
  %143 = add i32 %142, 1, !dbg !1169, !idemp_checkpoint_count !298
  store volatile i32 %143, i32* @__checkpoint_count, align 4, !dbg !1169, !idemp_checkpoint_count !298
  store i16 %138, i16* %141, align 4, !dbg !1169, !tbaa !478, !idemp_war_wr !298, !idemp_uncut_war !298
  %144 = zext i16 %.02 to i32, !dbg !1170
  %145 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %144, !dbg !1170
  %146 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %145, i32 0, i32 13, !dbg !1171
  store i16 0, i16* %146, align 4, !dbg !1172, !tbaa !1173
  %147 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1174
  %148 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %147, i32 0, i32 6, !dbg !1175
  %149 = load i32, i32* %148, align 4, !dbg !1175, !tbaa !1077, !idemp_war_rd !298
  %150 = zext i16 %.02 to i32, !dbg !1176
  %151 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %150, !dbg !1176
  %152 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %151, i32 0, i32 6, !dbg !1177
  %153 = load i32, i32* @__checkpoint_count, align 4, !dbg !1178, !idemp_checkpoint_count !298
  %154 = add i32 %153, 1, !dbg !1178, !idemp_checkpoint_count !298
  store volatile i32 %154, i32* @__checkpoint_count, align 4, !dbg !1178, !idemp_checkpoint_count !298
  store i32 %149, i32* %152, align 4, !dbg !1178, !tbaa !1077, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %155, !dbg !1179

155:                                              ; preds = %107
  %156 = add nsw i16 %.02, 1, !dbg !1180
  call void @llvm.dbg.value(metadata i16 %156, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %104, !dbg !1181, !llvm.loop !1182

157:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %158, !dbg !1184

158:                                              ; preds = %172, %157
  %.05 = phi i16 [ 0, %157 ], [ %.16, %172 ], !dbg !1049
  %.1 = phi i16 [ 0, %157 ], [ %173, %172 ], !dbg !1186
  call void @llvm.dbg.value(metadata i16 %.1, metadata !1024, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.05, metadata !1026, metadata !DIExpression()), !dbg !1049
  %159 = zext i16 %.1 to i32, !dbg !1187
  %160 = icmp slt i32 %159, 3, !dbg !1189
  br i1 %160, label %161, label %174, !dbg !1190

161:                                              ; preds = %158
  %162 = zext i16 %.1 to i32, !dbg !1191
  %163 = shl i32 1, %162, !dbg !1194
  %164 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1195
  %165 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %164, i32 0, i32 6, !dbg !1196
  %166 = load i32, i32* %165, align 4, !dbg !1196, !tbaa !1077
  %167 = and i32 %163, %166, !dbg !1197
  %168 = icmp ne i32 %167, 0, !dbg !1197
  br i1 %168, label %169, label %._crit_edge33, !dbg !1198

._crit_edge33:                                    ; preds = %161
  br label %171, !dbg !1198

169:                                              ; preds = %161
  %170 = add i16 %.05, 1, !dbg !1199
  call void @llvm.dbg.value(metadata i16 %170, metadata !1026, metadata !DIExpression()), !dbg !1049
  br label %171, !dbg !1200

171:                                              ; preds = %169, %._crit_edge33
  %.16 = phi i16 [ %170, %169 ], [ %.05, %._crit_edge33 ], !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.16, metadata !1026, metadata !DIExpression()), !dbg !1049
  br label %172, !dbg !1201

172:                                              ; preds = %171
  %173 = add nsw i16 %.1, 1, !dbg !1202
  call void @llvm.dbg.value(metadata i16 %173, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %158, !dbg !1203, !llvm.loop !1204

174:                                              ; preds = %158
  %.05.lcssa = phi i16 [ %.05, %158 ], !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.05.lcssa, metadata !1026, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %175, !dbg !1206

175:                                              ; preds = %190, %174
  %.2 = phi i16 [ 0, %174 ], [ %191, %190 ], !dbg !1208
  call void @llvm.dbg.value(metadata i16 %.2, metadata !1024, metadata !DIExpression()), !dbg !1049
  %176 = zext i16 %.2 to i32, !dbg !1209
  %177 = icmp slt i32 %176, 1, !dbg !1211
  br i1 %177, label %178, label %192, !dbg !1212

178:                                              ; preds = %175
  %179 = zext i16 %.2 to i32, !dbg !1213
  %180 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %179, !dbg !1213
  %181 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %180, i32 0, i32 4, !dbg !1214
  %182 = load i32, i32* %181, align 4, !dbg !1214, !tbaa !327, !idemp_war_rd !298
  %183 = zext i16 %.05.lcssa to i32, !dbg !1215
  %184 = udiv i32 %182, %183, !dbg !1216
  %185 = zext i16 %.2 to i32, !dbg !1217
  %186 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %185, !dbg !1217
  %187 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %186, i32 0, i32 4, !dbg !1218
  %188 = load i32, i32* @__checkpoint_count, align 4, !dbg !1219, !idemp_checkpoint_count !298
  %189 = add i32 %188, 1, !dbg !1219, !idemp_checkpoint_count !298
  store volatile i32 %189, i32* @__checkpoint_count, align 4, !dbg !1219, !idemp_checkpoint_count !298
  store i32 %184, i32* %187, align 4, !dbg !1219, !tbaa !327, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %190, !dbg !1217

190:                                              ; preds = %178
  %191 = add nsw i16 %.2, 1, !dbg !1220
  call void @llvm.dbg.value(metadata i16 %191, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %175, !dbg !1221, !llvm.loop !1222

192:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %193, !dbg !1224

193:                                              ; preds = %229, %192
  %.03 = phi i16 [ 0, %192 ], [ %.14, %229 ], !dbg !1049
  %.3 = phi i16 [ 0, %192 ], [ %230, %229 ], !dbg !1225
  call void @llvm.dbg.value(metadata i16 %.3, metadata !1024, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.03, metadata !1025, metadata !DIExpression()), !dbg !1049
  %194 = zext i16 %.3 to i32, !dbg !1226
  %195 = icmp slt i32 %194, 3, !dbg !1227
  br i1 %195, label %196, label %231, !dbg !1228

196:                                              ; preds = %193
  %197 = zext i16 %.3 to i32, !dbg !1229
  %198 = shl i32 1, %197, !dbg !1231
  %199 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1232
  %200 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %199, i32 0, i32 6, !dbg !1233
  %201 = load i32, i32* %200, align 4, !dbg !1233, !tbaa !1077
  %202 = and i32 %198, %201, !dbg !1234
  %203 = icmp ne i32 %202, 0, !dbg !1234
  br i1 %203, label %204, label %._crit_edge34, !dbg !1235

._crit_edge34:                                    ; preds = %196
  br label %228, !dbg !1235

204:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i32 0, metadata !1039, metadata !DIExpression()), !dbg !1236
  br label %205, !dbg !1237

205:                                              ; preds = %224, %204
  %.012 = phi i32 [ 0, %204 ], [ %225, %224 ], !dbg !1240
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1039, metadata !DIExpression()), !dbg !1236
  %exitcond = icmp ne i32 %.012, 1, !dbg !1241
  br i1 %exitcond, label %206, label %226, !dbg !1243

206:                                              ; preds = %205
  %207 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1244
  %208 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %207, i32 0, i32 3, !dbg !1245
  %209 = getelementptr inbounds [4 x i8*], [4 x i8*]* %208, i32 0, i32 0, !dbg !1244
  %210 = load i8*, i8** %209, align 4, !dbg !1244, !tbaa !335, !idemp_war_rd !298
  %211 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1246
  %212 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %211, i32 0, i32 4, !dbg !1247
  %213 = load i32, i32* %212, align 4, !dbg !1247, !tbaa !327
  %214 = zext i16 %.03 to i32, !dbg !1248
  %215 = mul i32 %213, %214, !dbg !1249
  %216 = getelementptr inbounds i8, i8* %210, i32 %215, !dbg !1250
  %217 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1251
  %218 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %217, i32 0, i32 3, !dbg !1252
  %219 = zext i16 %.3 to i32, !dbg !1253
  %220 = add nsw i32 %219, 1, !dbg !1254
  %221 = getelementptr inbounds [4 x i8*], [4 x i8*]* %218, i32 0, i32 %220, !dbg !1251
  %222 = load i32, i32* @__checkpoint_count, align 4, !dbg !1255, !idemp_checkpoint_count !298
  %223 = add i32 %222, 1, !dbg !1255, !idemp_checkpoint_count !298
  store volatile i32 %223, i32* @__checkpoint_count, align 4, !dbg !1255, !idemp_checkpoint_count !298
  store i8* %216, i8** %221, align 4, !dbg !1255, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %224, !dbg !1251

224:                                              ; preds = %206
  %225 = add nuw nsw i32 %.012, 1, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %225, metadata !1039, metadata !DIExpression()), !dbg !1236
  br label %205, !dbg !1257, !llvm.loop !1258

226:                                              ; preds = %205
  %227 = add i16 %.03, 1, !dbg !1260
  call void @llvm.dbg.value(metadata i16 %227, metadata !1025, metadata !DIExpression()), !dbg !1049
  br label %228, !dbg !1261

228:                                              ; preds = %226, %._crit_edge34
  %.14 = phi i16 [ %227, %226 ], [ %.03, %._crit_edge34 ], !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.14, metadata !1025, metadata !DIExpression()), !dbg !1049
  br label %229, !dbg !1262

229:                                              ; preds = %228
  %230 = add nsw i16 %.3, 1, !dbg !1263
  call void @llvm.dbg.value(metadata i16 %230, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %193, !dbg !1264, !llvm.loop !1265

231:                                              ; preds = %193
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %232, !dbg !1267

232:                                              ; preds = %319, %231
  %.4 = phi i16 [ 0, %231 ], [ %320, %319 ], !dbg !1269
  call void @llvm.dbg.value(metadata i16 %.4, metadata !1024, metadata !DIExpression()), !dbg !1049
  %233 = zext i16 %.4 to i32, !dbg !1270
  %234 = icmp slt i32 %233, 1, !dbg !1272
  br i1 %234, label %235, label %321, !dbg !1273

235:                                              ; preds = %232
  %236 = zext i16 %.4 to i32, !dbg !1274
  %237 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %236, !dbg !1274
  %238 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %237, i32 0, i32 6, !dbg !1277
  %239 = load i32, i32* %238, align 4, !dbg !1277, !tbaa !1077
  %240 = and i32 %239, 1, !dbg !1278
  %241 = icmp ne i32 %240, 0, !dbg !1278
  br i1 %241, label %242, label %._crit_edge35, !dbg !1279

._crit_edge35:                                    ; preds = %235
  br label %262, !dbg !1279

242:                                              ; preds = %235
  %243 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1280
  %244 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %243, i32 0, i32 4, !dbg !1282
  %245 = load i32, i32* %244, align 4, !dbg !1282, !tbaa !327
  %246 = zext i16 %.4 to i32, !dbg !1283
  %247 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %246, !dbg !1283
  %248 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %247, i32 0, i32 3, !dbg !1284
  %249 = getelementptr inbounds [4 x i8*], [4 x i8*]* %248, i32 0, i32 1, !dbg !1283
  %250 = load i8*, i8** %249, align 4, !dbg !1283, !tbaa !335
  %251 = bitcast i8* %250 to %struct.list_head_s*, !dbg !1283
  %252 = zext i16 %.4 to i32, !dbg !1285
  %253 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %252, !dbg !1285
  %254 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %253, i32 0, i32 0, !dbg !1286
  %255 = load i16, i16* %254, align 4, !dbg !1286, !tbaa !337, !idemp_war_rd !298
  %256 = load i32, i32* @__checkpoint_count, align 4, !dbg !1287, !idemp_checkpoint_count !298
  %257 = add i32 %256, 1, !dbg !1287, !idemp_checkpoint_count !298
  store volatile i32 %257, i32* @__checkpoint_count, align 4, !dbg !1287, !idemp_checkpoint_count !298
  %258 = call arm_aapcscc %struct.list_head_s* @core_list_init(i32 %245, %struct.list_head_s* %251, i16 signext %255), !dbg !1287
  %259 = zext i16 %.4 to i32, !dbg !1288
  %260 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %259, !dbg !1288
  %261 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %260, i32 0, i32 7, !dbg !1289
  store %struct.list_head_s* %258, %struct.list_head_s** %261, align 4, !dbg !1290, !tbaa !476
  br label %262, !dbg !1291

262:                                              ; preds = %242, %._crit_edge35
  %263 = zext i16 %.4 to i32, !dbg !1292
  %264 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %263, !dbg !1292
  %265 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %264, i32 0, i32 6, !dbg !1294
  %266 = load i32, i32* %265, align 4, !dbg !1294, !tbaa !1077
  %267 = and i32 %266, 2, !dbg !1295
  %268 = icmp ne i32 %267, 0, !dbg !1295
  br i1 %268, label %269, label %._crit_edge36, !dbg !1296

._crit_edge36:                                    ; preds = %262
  br label %296, !dbg !1296

269:                                              ; preds = %262
  %270 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1297
  %271 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %270, i32 0, i32 4, !dbg !1299
  %272 = load i32, i32* %271, align 4, !dbg !1299, !tbaa !327
  %273 = zext i16 %.4 to i32, !dbg !1300
  %274 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %273, !dbg !1300
  %275 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %274, i32 0, i32 3, !dbg !1301
  %276 = getelementptr inbounds [4 x i8*], [4 x i8*]* %275, i32 0, i32 2, !dbg !1300
  %277 = load i8*, i8** %276, align 4, !dbg !1300, !tbaa !335
  %278 = zext i16 %.4 to i32, !dbg !1302
  %279 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %278, !dbg !1302
  %280 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %279, i32 0, i32 0, !dbg !1303
  %281 = load i16, i16* %280, align 4, !dbg !1303, !tbaa !337, !idemp_war_rd !298
  %282 = sext i16 %281 to i32, !dbg !1304
  %283 = zext i16 %.4 to i32, !dbg !1305
  %284 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %283, !dbg !1305
  %285 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %284, i32 0, i32 1, !dbg !1306
  %286 = load i16, i16* %285, align 2, !dbg !1306, !tbaa !339
  %287 = sext i16 %286 to i32, !dbg !1307
  %288 = shl i32 %287, 16, !dbg !1308
  %289 = or i32 %282, %288, !dbg !1309
  %290 = zext i16 %.4 to i32, !dbg !1310
  %291 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %290, !dbg !1310
  %292 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %291, i32 0, i32 8, !dbg !1311
  %293 = load i32, i32* @__checkpoint_count, align 4, !dbg !1312, !idemp_checkpoint_count !298
  %294 = add i32 %293, 1, !dbg !1312, !idemp_checkpoint_count !298
  store volatile i32 %294, i32* @__checkpoint_count, align 4, !dbg !1312, !idemp_checkpoint_count !298
  %295 = call arm_aapcscc i32 @core_init_matrix(i32 %272, i8* %277, i32 %289, %struct.MAT_PARAMS_S* %292), !dbg !1312
  br label %296, !dbg !1313

296:                                              ; preds = %269, %._crit_edge36
  %297 = zext i16 %.4 to i32, !dbg !1314
  %298 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %297, !dbg !1314
  %299 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %298, i32 0, i32 6, !dbg !1316
  %300 = load i32, i32* %299, align 4, !dbg !1316, !tbaa !1077
  %301 = and i32 %300, 4, !dbg !1317
  %302 = icmp ne i32 %301, 0, !dbg !1317
  br i1 %302, label %303, label %._crit_edge37, !dbg !1318

._crit_edge37:                                    ; preds = %296
  br label %318, !dbg !1318

303:                                              ; preds = %296
  %304 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1319
  %305 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %304, i32 0, i32 4, !dbg !1321
  %306 = load i32, i32* %305, align 4, !dbg !1321, !tbaa !327
  %307 = zext i16 %.4 to i32, !dbg !1322
  %308 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %307, !dbg !1322
  %309 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %308, i32 0, i32 0, !dbg !1323
  %310 = load i16, i16* %309, align 4, !dbg !1323, !tbaa !337, !idemp_war_rd !298
  %311 = zext i16 %.4 to i32, !dbg !1324
  %312 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %311, !dbg !1324
  %313 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %312, i32 0, i32 3, !dbg !1325
  %314 = getelementptr inbounds [4 x i8*], [4 x i8*]* %313, i32 0, i32 3, !dbg !1324
  %315 = load i8*, i8** %314, align 4, !dbg !1324, !tbaa !335
  %316 = load i32, i32* @__checkpoint_count, align 4, !dbg !1326, !idemp_checkpoint_count !298
  %317 = add i32 %316, 1, !dbg !1326, !idemp_checkpoint_count !298
  store volatile i32 %317, i32* @__checkpoint_count, align 4, !dbg !1326, !idemp_checkpoint_count !298
  call arm_aapcscc void @core_init_state(i32 %306, i16 signext %310, i8* %315), !dbg !1326
  br label %318, !dbg !1327

318:                                              ; preds = %303, %._crit_edge37
  br label %319, !dbg !1328

319:                                              ; preds = %318
  %320 = add nsw i16 %.4, 1, !dbg !1329
  call void @llvm.dbg.value(metadata i16 %320, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %232, !dbg !1330, !llvm.loop !1331

321:                                              ; preds = %232
  %322 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1333
  %323 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %322, i32 0, i32 5, !dbg !1334
  %324 = load i32, i32* %323, align 4, !dbg !1334, !tbaa !977, !idemp_war_rd !298
  %325 = icmp eq i32 %324, 0, !dbg !1335
  br i1 %325, label %326, label %._crit_edge38, !dbg !1336

._crit_edge38:                                    ; preds = %321
  br label %368, !dbg !1336

326:                                              ; preds = %321
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1043, metadata !DIExpression()), !dbg !1337
  %327 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1338
  %328 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %327, i32 0, i32 5, !dbg !1339
  %329 = load i32, i32* @__checkpoint_count, align 4, !dbg !1340, !idemp_checkpoint_count !298
  %330 = add i32 %329, 1, !dbg !1340, !idemp_checkpoint_count !298
  store volatile i32 %330, i32* @__checkpoint_count, align 4, !dbg !1340, !idemp_checkpoint_count !298
  store i32 1, i32* %328, align 4, !dbg !1340, !tbaa !977, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %331, !dbg !1341

331:                                              ; preds = %333, %326
  %.01 = phi double [ 0.000000e+00, %326 ], [ %354, %333 ], !dbg !1337
  call void @llvm.dbg.value(metadata double %.01, metadata !1043, metadata !DIExpression()), !dbg !1337
  %332 = fcmp olt double %.01, 1.000000e+00, !dbg !1342
  br i1 %332, label %333, label %355, !dbg !1341

333:                                              ; preds = %331
  %334 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1343
  %335 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %334, i32 0, i32 5, !dbg !1345
  %336 = load i32, i32* %335, align 4, !dbg !1346, !tbaa !977, !idemp_war_rd !298
  %337 = mul i32 %336, 10, !dbg !1346
  %338 = load i32, i32* @__checkpoint_count, align 4, !dbg !1346, !idemp_checkpoint_count !298
  %339 = add i32 %338, 1, !dbg !1346, !idemp_checkpoint_count !298
  store volatile i32 %339, i32* @__checkpoint_count, align 4, !dbg !1346, !idemp_checkpoint_count !298
  store i32 %337, i32* %335, align 4, !dbg !1346, !tbaa !977, !idemp_war_wr !298, !idemp_uncut_war !298
  %340 = load i32, i32* @__checkpoint_count, align 4, !dbg !1347, !idemp_checkpoint_count !298
  %341 = add i32 %340, 1, !dbg !1347, !idemp_checkpoint_count !298
  store volatile i32 %341, i32* @__checkpoint_count, align 4, !dbg !1347, !idemp_checkpoint_count !298
  call arm_aapcscc void @start_time(), !dbg !1347
  %342 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1348
  %343 = bitcast %struct.RESULTS_S* %342 to i8*, !dbg !1349
  %344 = load i32, i32* @__checkpoint_count, align 4, !dbg !1350, !idemp_checkpoint_count !298
  %345 = add i32 %344, 1, !dbg !1350, !idemp_checkpoint_count !298
  store volatile i32 %345, i32* @__checkpoint_count, align 4, !dbg !1350, !idemp_checkpoint_count !298
  %346 = call arm_aapcscc i8* @iterate(i8* %343), !dbg !1350
  %347 = load i32, i32* @__checkpoint_count, align 4, !dbg !1351, !idemp_checkpoint_count !298
  %348 = add i32 %347, 1, !dbg !1351, !idemp_checkpoint_count !298
  store volatile i32 %348, i32* @__checkpoint_count, align 4, !dbg !1351, !idemp_checkpoint_count !298
  call arm_aapcscc void @stop_time(), !dbg !1351
  %349 = load i32, i32* @__checkpoint_count, align 4, !dbg !1352, !idemp_checkpoint_count !298
  %350 = add i32 %349, 1, !dbg !1352, !idemp_checkpoint_count !298
  store volatile i32 %350, i32* @__checkpoint_count, align 4, !dbg !1352, !idemp_checkpoint_count !298
  %351 = call arm_aapcscc i32 @get_time(), !dbg !1352
  %352 = load i32, i32* @__checkpoint_count, align 4, !dbg !1353, !idemp_checkpoint_count !298
  %353 = add i32 %352, 1, !dbg !1353, !idemp_checkpoint_count !298
  store volatile i32 %353, i32* @__checkpoint_count, align 4, !dbg !1353, !idemp_checkpoint_count !298
  %354 = call arm_aapcscc double @time_in_secs(i32 %351), !dbg !1353
  call void @llvm.dbg.value(metadata double %354, metadata !1043, metadata !DIExpression()), !dbg !1337
  br label %331, !dbg !1341, !llvm.loop !1354

355:                                              ; preds = %331
  %.01.lcssa = phi double [ %.01, %331 ], !dbg !1337
  call void @llvm.dbg.value(metadata double %.01.lcssa, metadata !1043, metadata !DIExpression()), !dbg !1337
  %356 = fptoui double %.01.lcssa to i32, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %356, metadata !1046, metadata !DIExpression()), !dbg !1337
  %357 = icmp eq i32 %356, 0, !dbg !1357
  br i1 %357, label %358, label %._crit_edge39, !dbg !1359

._crit_edge39:                                    ; preds = %355
  br label %359, !dbg !1359

358:                                              ; preds = %355
  call void @llvm.dbg.value(metadata i32 1, metadata !1046, metadata !DIExpression()), !dbg !1337
  br label %359, !dbg !1360

359:                                              ; preds = %358, %._crit_edge39
  %.0 = phi i32 [ 1, %358 ], [ %356, %._crit_edge39 ], !dbg !1337
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1046, metadata !DIExpression()), !dbg !1337
  %360 = udiv i32 10, %.0, !dbg !1361
  %361 = add i32 1, %360, !dbg !1362
  %362 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1363
  %363 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %362, i32 0, i32 5, !dbg !1364
  %364 = load i32, i32* %363, align 4, !dbg !1365, !tbaa !977, !idemp_war_rd !298
  %365 = mul i32 %364, %361, !dbg !1365
  %366 = load i32, i32* @__checkpoint_count, align 4, !dbg !1365, !idemp_checkpoint_count !298
  %367 = add i32 %366, 1, !dbg !1365, !idemp_checkpoint_count !298
  store volatile i32 %367, i32* @__checkpoint_count, align 4, !dbg !1365, !idemp_checkpoint_count !298
  store i32 %365, i32* %363, align 4, !dbg !1365, !tbaa !977, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %368, !dbg !1366

368:                                              ; preds = %359, %._crit_edge38
  %369 = load i32, i32* @__checkpoint_count, align 4, !dbg !1367, !idemp_checkpoint_count !298
  %370 = add i32 %369, 1, !dbg !1367, !idemp_checkpoint_count !298
  store volatile i32 %370, i32* @__checkpoint_count, align 4, !dbg !1367, !idemp_checkpoint_count !298
  call arm_aapcscc void @start_time(), !dbg !1367
  %371 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1368
  %372 = bitcast %struct.RESULTS_S* %371 to i8*, !dbg !1369
  %373 = load i32, i32* @__checkpoint_count, align 4, !dbg !1370, !idemp_checkpoint_count !298
  %374 = add i32 %373, 1, !dbg !1370, !idemp_checkpoint_count !298
  store volatile i32 %374, i32* @__checkpoint_count, align 4, !dbg !1370, !idemp_checkpoint_count !298
  %375 = call arm_aapcscc i8* @iterate(i8* %372), !dbg !1370
  %376 = load i32, i32* @__checkpoint_count, align 4, !dbg !1371, !idemp_checkpoint_count !298
  %377 = add i32 %376, 1, !dbg !1371, !idemp_checkpoint_count !298
  store volatile i32 %377, i32* @__checkpoint_count, align 4, !dbg !1371, !idemp_checkpoint_count !298
  call arm_aapcscc void @stop_time(), !dbg !1371
  %378 = load i32, i32* @__checkpoint_count, align 4, !dbg !1372, !idemp_checkpoint_count !298
  %379 = add i32 %378, 1, !dbg !1372, !idemp_checkpoint_count !298
  store volatile i32 %379, i32* @__checkpoint_count, align 4, !dbg !1372, !idemp_checkpoint_count !298
  %380 = call arm_aapcscc i32 @get_time(), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %380, metadata !1030, metadata !DIExpression()), !dbg !1049
  %381 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1373
  %382 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %381, i32 0, i32 0, !dbg !1374
  %383 = load i16, i16* %382, align 4, !dbg !1374, !tbaa !337
  %384 = load i32, i32* @__checkpoint_count, align 4, !dbg !1375, !idemp_checkpoint_count !298
  %385 = add i32 %384, 1, !dbg !1375, !idemp_checkpoint_count !298
  store volatile i32 %385, i32* @__checkpoint_count, align 4, !dbg !1375, !idemp_checkpoint_count !298
  %386 = call arm_aapcscc zeroext i16 @crc16(i16 signext %383, i16 zeroext 0), !dbg !1375
  call void @llvm.dbg.value(metadata i16 %386, metadata !1029, metadata !DIExpression()), !dbg !1049
  %387 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1376
  %388 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %387, i32 0, i32 1, !dbg !1377
  %389 = load i16, i16* %388, align 2, !dbg !1377, !tbaa !339
  %390 = load i32, i32* @__checkpoint_count, align 4, !dbg !1378, !idemp_checkpoint_count !298
  %391 = add i32 %390, 1, !dbg !1378, !idemp_checkpoint_count !298
  store volatile i32 %391, i32* @__checkpoint_count, align 4, !dbg !1378, !idemp_checkpoint_count !298
  %392 = call arm_aapcscc zeroext i16 @crc16(i16 signext %389, i16 zeroext %386), !dbg !1378
  call void @llvm.dbg.value(metadata i16 %392, metadata !1029, metadata !DIExpression()), !dbg !1049
  %393 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1379
  %394 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %393, i32 0, i32 2, !dbg !1380
  %395 = load i16, i16* %394, align 4, !dbg !1380, !tbaa !478
  %396 = load i32, i32* @__checkpoint_count, align 4, !dbg !1381, !idemp_checkpoint_count !298
  %397 = add i32 %396, 1, !dbg !1381, !idemp_checkpoint_count !298
  store volatile i32 %397, i32* @__checkpoint_count, align 4, !dbg !1381, !idemp_checkpoint_count !298
  %398 = call arm_aapcscc zeroext i16 @crc16(i16 signext %395, i16 zeroext %392), !dbg !1381
  call void @llvm.dbg.value(metadata i16 %398, metadata !1029, metadata !DIExpression()), !dbg !1049
  %399 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1382
  %400 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %399, i32 0, i32 4, !dbg !1383
  %401 = load i32, i32* %400, align 4, !dbg !1383, !tbaa !327
  %402 = trunc i32 %401 to i16, !dbg !1382
  %403 = load i32, i32* @__checkpoint_count, align 4, !dbg !1384, !idemp_checkpoint_count !298
  %404 = add i32 %403, 1, !dbg !1384, !idemp_checkpoint_count !298
  store volatile i32 %404, i32* @__checkpoint_count, align 4, !dbg !1384, !idemp_checkpoint_count !298
  %405 = call arm_aapcscc zeroext i16 @crc16(i16 signext %402, i16 zeroext %398), !dbg !1384
  call void @llvm.dbg.value(metadata i16 %405, metadata !1029, metadata !DIExpression()), !dbg !1049
  %406 = zext i16 %405 to i32, !dbg !1385
  br label %NodeBlock25

NodeBlock25:                                      ; preds = %368
  %Pivot26 = icmp slt i32 %406, 31493
  br i1 %Pivot26, label %NodeBlock, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %Pivot24 = icmp slt i32 %406, 35330
  br i1 %Pivot24, label %LeafBlock15, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %Pivot22 = icmp slt i32 %406, 59893
  br i1 %Pivot22, label %LeafBlock17, label %LeafBlock19

LeafBlock19:                                      ; preds = %NodeBlock21
  %SwitchLeaf20 = icmp eq i32 %406, 59893
  br i1 %SwitchLeaf20, label %422, label %LeafBlock19.NewDefault_crit_edge

LeafBlock19.NewDefault_crit_edge:                 ; preds = %LeafBlock19
  br label %NewDefault

LeafBlock17:                                      ; preds = %NodeBlock21
  %SwitchLeaf18 = icmp eq i32 %406, 35330
  br i1 %SwitchLeaf18, label %407, label %LeafBlock17.NewDefault_crit_edge

LeafBlock17.NewDefault_crit_edge:                 ; preds = %LeafBlock17
  br label %NewDefault

LeafBlock15:                                      ; preds = %NodeBlock23
  %SwitchLeaf16 = icmp eq i32 %406, 31493
  br i1 %SwitchLeaf16, label %412, label %LeafBlock15.NewDefault_crit_edge

LeafBlock15.NewDefault_crit_edge:                 ; preds = %LeafBlock15
  br label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock25
  %Pivot = icmp slt i32 %406, 20143
  br i1 %Pivot, label %LeafBlock, label %LeafBlock13

LeafBlock13:                                      ; preds = %NodeBlock
  %SwitchLeaf14 = icmp eq i32 %406, 20143
  br i1 %SwitchLeaf14, label %417, label %LeafBlock13.NewDefault_crit_edge

LeafBlock13.NewDefault_crit_edge:                 ; preds = %LeafBlock13
  br label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %406, 6386
  br i1 %SwitchLeaf, label %427, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

407:                                              ; preds = %LeafBlock17
  call void @llvm.dbg.value(metadata i16 0, metadata !1027, metadata !DIExpression()), !dbg !1049
  %408 = getelementptr [45 x i8], [45 x i8]* @.str.3, i32 0, i32 0
  %409 = load i32, i32* @__checkpoint_count, align 4, !dbg !1386, !idemp_checkpoint_count !298
  %410 = add i32 %409, 1, !dbg !1386, !idemp_checkpoint_count !298
  store volatile i32 %410, i32* @__checkpoint_count, align 4, !dbg !1386, !idemp_checkpoint_count !298
  %411 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %408), !dbg !1386
  br label %433, !dbg !1388

412:                                              ; preds = %LeafBlock15
  call void @llvm.dbg.value(metadata i16 1, metadata !1027, metadata !DIExpression()), !dbg !1049
  %413 = getelementptr [44 x i8], [44 x i8]* @.str.4, i32 0, i32 0
  %414 = load i32, i32* @__checkpoint_count, align 4, !dbg !1389, !idemp_checkpoint_count !298
  %415 = add i32 %414, 1, !dbg !1389, !idemp_checkpoint_count !298
  store volatile i32 %415, i32* @__checkpoint_count, align 4, !dbg !1389, !idemp_checkpoint_count !298
  %416 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %413), !dbg !1389
  br label %433, !dbg !1390

417:                                              ; preds = %LeafBlock13
  call void @llvm.dbg.value(metadata i16 2, metadata !1027, metadata !DIExpression()), !dbg !1049
  %418 = getelementptr [49 x i8], [49 x i8]* @.str.5, i32 0, i32 0
  %419 = load i32, i32* @__checkpoint_count, align 4, !dbg !1391, !idemp_checkpoint_count !298
  %420 = add i32 %419, 1, !dbg !1391, !idemp_checkpoint_count !298
  store volatile i32 %420, i32* @__checkpoint_count, align 4, !dbg !1391, !idemp_checkpoint_count !298
  %421 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %418), !dbg !1391
  br label %433, !dbg !1392

422:                                              ; preds = %LeafBlock19
  call void @llvm.dbg.value(metadata i16 3, metadata !1027, metadata !DIExpression()), !dbg !1049
  %423 = getelementptr [45 x i8], [45 x i8]* @.str.6, i32 0, i32 0
  %424 = load i32, i32* @__checkpoint_count, align 4, !dbg !1393, !idemp_checkpoint_count !298
  %425 = add i32 %424, 1, !dbg !1393, !idemp_checkpoint_count !298
  store volatile i32 %425, i32* @__checkpoint_count, align 4, !dbg !1393, !idemp_checkpoint_count !298
  %426 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %423), !dbg !1393
  br label %433, !dbg !1394

427:                                              ; preds = %LeafBlock
  call void @llvm.dbg.value(metadata i16 4, metadata !1027, metadata !DIExpression()), !dbg !1049
  %428 = getelementptr [44 x i8], [44 x i8]* @.str.7, i32 0, i32 0
  %429 = load i32, i32* @__checkpoint_count, align 4, !dbg !1395, !idemp_checkpoint_count !298
  %430 = add i32 %429, 1, !dbg !1395, !idemp_checkpoint_count !298
  store volatile i32 %430, i32* @__checkpoint_count, align 4, !dbg !1395, !idemp_checkpoint_count !298
  %431 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %428), !dbg !1395
  br label %433, !dbg !1396

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock13.NewDefault_crit_edge, %LeafBlock15.NewDefault_crit_edge, %LeafBlock17.NewDefault_crit_edge, %LeafBlock19.NewDefault_crit_edge
  br label %432

432:                                              ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i16 -1, metadata !1028, metadata !DIExpression()), !dbg !1049
  br label %433, !dbg !1397

433:                                              ; preds = %432, %427, %422, %417, %412, %407
  %.08 = phi i16 [ -1, %432 ], [ 0, %427 ], [ 0, %422 ], [ 0, %417 ], [ 0, %412 ], [ 0, %407 ], !dbg !1049
  %.07 = phi i16 [ -1, %432 ], [ 4, %427 ], [ 3, %422 ], [ 2, %417 ], [ 1, %412 ], [ 0, %407 ], !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.07, metadata !1027, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.08, metadata !1028, metadata !DIExpression()), !dbg !1049
  %434 = sext i16 %.07 to i32, !dbg !1398
  %435 = icmp sge i32 %434, 0, !dbg !1400
  br i1 %435, label %436, label %._crit_edge40, !dbg !1401

._crit_edge40:                                    ; preds = %433
  br label %578, !dbg !1401

436:                                              ; preds = %433
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %437, !dbg !1402

437:                                              ; preds = %575, %436
  %.19 = phi i16 [ %.08, %436 ], [ %574, %575 ], !dbg !1049
  %.5 = phi i16 [ 0, %436 ], [ %576, %575 ], !dbg !1405
  call void @llvm.dbg.value(metadata i16 %.5, metadata !1024, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.19, metadata !1028, metadata !DIExpression()), !dbg !1049
  %438 = zext i16 %.5 to i32, !dbg !1406
  %439 = load i32, i32* @default_num_contexts, align 4, !dbg !1408, !tbaa !1047
  %440 = icmp ult i32 %438, %439, !dbg !1409
  br i1 %440, label %441, label %577, !dbg !1410

441:                                              ; preds = %437
  %442 = zext i16 %.5 to i32, !dbg !1411
  %443 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %442, !dbg !1411
  %444 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %443, i32 0, i32 13, !dbg !1413
  %445 = load i32, i32* @__checkpoint_count, align 4, !dbg !1414, !idemp_checkpoint_count !298
  %446 = add i32 %445, 1, !dbg !1414, !idemp_checkpoint_count !298
  store volatile i32 %446, i32* @__checkpoint_count, align 4, !dbg !1414, !idemp_checkpoint_count !298
  store i16 0, i16* %444, align 4, !dbg !1414, !tbaa !1173, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_precut_war !298
  %447 = zext i16 %.5 to i32, !dbg !1415
  %448 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %447, !dbg !1415
  %449 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %448, i32 0, i32 6, !dbg !1417
  %450 = load i32, i32* %449, align 4, !dbg !1417, !tbaa !1077
  %451 = and i32 %450, 1, !dbg !1418
  %452 = icmp ne i32 %451, 0, !dbg !1418
  br i1 %452, label %453, label %._crit_edge41, !dbg !1419

._crit_edge41:                                    ; preds = %441
  br label %486, !dbg !1419

453:                                              ; preds = %441
  %454 = zext i16 %.5 to i32, !dbg !1420
  %455 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %454, !dbg !1420
  %456 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %455, i32 0, i32 10, !dbg !1421
  %457 = load i16, i16* %456, align 2, !dbg !1421, !tbaa !982
  %458 = zext i16 %457 to i32, !dbg !1420
  %459 = sext i16 %.07 to i32, !dbg !1422
  %460 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %459, !dbg !1422
  %461 = load i16, i16* %460, align 2, !dbg !1422, !tbaa !294
  %462 = zext i16 %461 to i32, !dbg !1422
  %463 = icmp ne i32 %458, %462, !dbg !1423
  br i1 %463, label %464, label %._crit_edge42, !dbg !1424

._crit_edge42:                                    ; preds = %453
  br label %486, !dbg !1424

464:                                              ; preds = %453
  %465 = zext i16 %.5 to i32, !dbg !1425
  %466 = zext i16 %.5 to i32, !dbg !1427
  %467 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %466, !dbg !1427
  %468 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %467, i32 0, i32 10, !dbg !1428
  %469 = load i16, i16* %468, align 2, !dbg !1428, !tbaa !982
  %470 = zext i16 %469 to i32, !dbg !1427
  %471 = sext i16 %.07 to i32, !dbg !1429
  %472 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %471, !dbg !1429
  %473 = load i16, i16* %472, align 2, !dbg !1429, !tbaa !294
  %474 = zext i16 %473 to i32, !dbg !1429
  %475 = getelementptr [47 x i8], [47 x i8]* @.str.8, i32 0, i32 0
  %476 = load i32, i32* @__checkpoint_count, align 4, !dbg !1430, !idemp_checkpoint_count !298
  %477 = add i32 %476, 1, !dbg !1430, !idemp_checkpoint_count !298
  store volatile i32 %477, i32* @__checkpoint_count, align 4, !dbg !1430, !idemp_checkpoint_count !298
  %478 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %475, i32 %465, i32 %470, i32 %474), !dbg !1430
  %479 = zext i16 %.5 to i32, !dbg !1431
  %480 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %479, !dbg !1431
  %481 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %480, i32 0, i32 13, !dbg !1432
  %482 = load i16, i16* %481, align 4, !dbg !1433, !tbaa !1173, !idemp_war_rd !298
  %483 = add i16 %482, 1, !dbg !1433
  %484 = load i32, i32* @__checkpoint_count, align 4, !dbg !1433, !idemp_checkpoint_count !298
  %485 = add i32 %484, 1, !dbg !1433, !idemp_checkpoint_count !298
  store volatile i32 %485, i32* @__checkpoint_count, align 4, !dbg !1433, !idemp_checkpoint_count !298
  store i16 %483, i16* %481, align 4, !dbg !1433, !tbaa !1173, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %486, !dbg !1434

486:                                              ; preds = %464, %._crit_edge42, %._crit_edge41
  %487 = zext i16 %.5 to i32, !dbg !1435
  %488 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %487, !dbg !1435
  %489 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %488, i32 0, i32 6, !dbg !1437
  %490 = load i32, i32* %489, align 4, !dbg !1437, !tbaa !1077
  %491 = and i32 %490, 2, !dbg !1438
  %492 = icmp ne i32 %491, 0, !dbg !1438
  br i1 %492, label %493, label %._crit_edge43, !dbg !1439

._crit_edge43:                                    ; preds = %486
  br label %526, !dbg !1439

493:                                              ; preds = %486
  %494 = zext i16 %.5 to i32, !dbg !1440
  %495 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %494, !dbg !1440
  %496 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %495, i32 0, i32 11, !dbg !1441
  %497 = load i16, i16* %496, align 4, !dbg !1441, !tbaa !358
  %498 = zext i16 %497 to i32, !dbg !1440
  %499 = sext i16 %.07 to i32, !dbg !1442
  %500 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %499, !dbg !1442
  %501 = load i16, i16* %500, align 2, !dbg !1442, !tbaa !294
  %502 = zext i16 %501 to i32, !dbg !1442
  %503 = icmp ne i32 %498, %502, !dbg !1443
  br i1 %503, label %504, label %._crit_edge44, !dbg !1444

._crit_edge44:                                    ; preds = %493
  br label %526, !dbg !1444

504:                                              ; preds = %493
  %505 = zext i16 %.5 to i32, !dbg !1445
  %506 = zext i16 %.5 to i32, !dbg !1447
  %507 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %506, !dbg !1447
  %508 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %507, i32 0, i32 11, !dbg !1448
  %509 = load i16, i16* %508, align 4, !dbg !1448, !tbaa !358
  %510 = zext i16 %509 to i32, !dbg !1447
  %511 = sext i16 %.07 to i32, !dbg !1449
  %512 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %511, !dbg !1449
  %513 = load i16, i16* %512, align 2, !dbg !1449, !tbaa !294
  %514 = zext i16 %513 to i32, !dbg !1449
  %515 = getelementptr [49 x i8], [49 x i8]* @.str.9, i32 0, i32 0
  %516 = load i32, i32* @__checkpoint_count, align 4, !dbg !1450, !idemp_checkpoint_count !298
  %517 = add i32 %516, 1, !dbg !1450, !idemp_checkpoint_count !298
  store volatile i32 %517, i32* @__checkpoint_count, align 4, !dbg !1450, !idemp_checkpoint_count !298
  %518 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %515, i32 %505, i32 %510, i32 %514), !dbg !1450
  %519 = zext i16 %.5 to i32, !dbg !1451
  %520 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %519, !dbg !1451
  %521 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %520, i32 0, i32 13, !dbg !1452
  %522 = load i16, i16* %521, align 4, !dbg !1453, !tbaa !1173, !idemp_war_rd !298
  %523 = add i16 %522, 1, !dbg !1453
  %524 = load i32, i32* @__checkpoint_count, align 4, !dbg !1453, !idemp_checkpoint_count !298
  %525 = add i32 %524, 1, !dbg !1453, !idemp_checkpoint_count !298
  store volatile i32 %525, i32* @__checkpoint_count, align 4, !dbg !1453, !idemp_checkpoint_count !298
  store i16 %523, i16* %521, align 4, !dbg !1453, !tbaa !1173, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %526, !dbg !1454

526:                                              ; preds = %504, %._crit_edge44, %._crit_edge43
  %527 = zext i16 %.5 to i32, !dbg !1455
  %528 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %527, !dbg !1455
  %529 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %528, i32 0, i32 6, !dbg !1457
  %530 = load i32, i32* %529, align 4, !dbg !1457, !tbaa !1077
  %531 = and i32 %530, 4, !dbg !1458
  %532 = icmp ne i32 %531, 0, !dbg !1458
  br i1 %532, label %533, label %._crit_edge45, !dbg !1459

._crit_edge45:                                    ; preds = %526
  br label %566, !dbg !1459

533:                                              ; preds = %526
  %534 = zext i16 %.5 to i32, !dbg !1460
  %535 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %534, !dbg !1460
  %536 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %535, i32 0, i32 12, !dbg !1461
  %537 = load i16, i16* %536, align 2, !dbg !1461, !tbaa !345
  %538 = zext i16 %537 to i32, !dbg !1460
  %539 = sext i16 %.07 to i32, !dbg !1462
  %540 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %539, !dbg !1462
  %541 = load i16, i16* %540, align 2, !dbg !1462, !tbaa !294
  %542 = zext i16 %541 to i32, !dbg !1462
  %543 = icmp ne i32 %538, %542, !dbg !1463
  br i1 %543, label %544, label %._crit_edge46, !dbg !1464

._crit_edge46:                                    ; preds = %533
  br label %566, !dbg !1464

544:                                              ; preds = %533
  %545 = zext i16 %.5 to i32, !dbg !1465
  %546 = zext i16 %.5 to i32, !dbg !1467
  %547 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %546, !dbg !1467
  %548 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %547, i32 0, i32 12, !dbg !1468
  %549 = load i16, i16* %548, align 2, !dbg !1468, !tbaa !345
  %550 = zext i16 %549 to i32, !dbg !1467
  %551 = sext i16 %.07 to i32, !dbg !1469
  %552 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %551, !dbg !1469
  %553 = load i16, i16* %552, align 2, !dbg !1469, !tbaa !294
  %554 = zext i16 %553 to i32, !dbg !1469
  %555 = getelementptr [48 x i8], [48 x i8]* @.str.10, i32 0, i32 0
  %556 = load i32, i32* @__checkpoint_count, align 4, !dbg !1470, !idemp_checkpoint_count !298
  %557 = add i32 %556, 1, !dbg !1470, !idemp_checkpoint_count !298
  store volatile i32 %557, i32* @__checkpoint_count, align 4, !dbg !1470, !idemp_checkpoint_count !298
  %558 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %555, i32 %545, i32 %550, i32 %554), !dbg !1470
  %559 = zext i16 %.5 to i32, !dbg !1471
  %560 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %559, !dbg !1471
  %561 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %560, i32 0, i32 13, !dbg !1472
  %562 = load i16, i16* %561, align 4, !dbg !1473, !tbaa !1173, !idemp_war_rd !298
  %563 = add i16 %562, 1, !dbg !1473
  %564 = load i32, i32* @__checkpoint_count, align 4, !dbg !1473, !idemp_checkpoint_count !298
  %565 = add i32 %564, 1, !dbg !1473, !idemp_checkpoint_count !298
  store volatile i32 %565, i32* @__checkpoint_count, align 4, !dbg !1473, !idemp_checkpoint_count !298
  store i16 %563, i16* %561, align 4, !dbg !1473, !tbaa !1173, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %566, !dbg !1474

566:                                              ; preds = %544, %._crit_edge46, %._crit_edge45
  %567 = zext i16 %.5 to i32, !dbg !1475
  %568 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %567, !dbg !1475
  %569 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %568, i32 0, i32 13, !dbg !1476
  %570 = load i16, i16* %569, align 4, !dbg !1476, !tbaa !1173, !idemp_war_rd !298
  %571 = sext i16 %570 to i32, !dbg !1475
  %572 = sext i16 %.19 to i32, !dbg !1477
  %573 = add nsw i32 %572, %571, !dbg !1477
  %574 = trunc i32 %573 to i16, !dbg !1477
  call void @llvm.dbg.value(metadata i16 %574, metadata !1028, metadata !DIExpression()), !dbg !1049
  br label %575, !dbg !1478

575:                                              ; preds = %566
  %576 = add i16 %.5, 1, !dbg !1479
  call void @llvm.dbg.value(metadata i16 %576, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %437, !dbg !1480, !llvm.loop !1481

577:                                              ; preds = %437
  %.19.lcssa = phi i16 [ %.19, %437 ], !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.19.lcssa, metadata !1028, metadata !DIExpression()), !dbg !1049
  br label %578, !dbg !1483

578:                                              ; preds = %577, %._crit_edge40
  %.210 = phi i16 [ %.19.lcssa, %577 ], [ %.08, %._crit_edge40 ], !dbg !1484
  call void @llvm.dbg.value(metadata i16 %.210, metadata !1028, metadata !DIExpression()), !dbg !1049
  %579 = load i32, i32* @__checkpoint_count, align 4, !dbg !1485, !idemp_checkpoint_count !298
  %580 = add i32 %579, 1, !dbg !1485, !idemp_checkpoint_count !298
  store volatile i32 %580, i32* @__checkpoint_count, align 4, !dbg !1485, !idemp_checkpoint_count !298
  %581 = call arm_aapcscc zeroext i8 @check_data_types(), !dbg !1485
  %582 = zext i8 %581 to i32, !dbg !1485
  %583 = sext i16 %.210 to i32, !dbg !1486
  %584 = add nsw i32 %583, %582, !dbg !1486
  %585 = trunc i32 %584 to i16, !dbg !1486
  call void @llvm.dbg.value(metadata i16 %585, metadata !1028, metadata !DIExpression()), !dbg !1049
  %586 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1487
  %587 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %586, i32 0, i32 4, !dbg !1488
  %588 = load i32, i32* %587, align 4, !dbg !1488, !tbaa !327
  %589 = getelementptr [24 x i8], [24 x i8]* @.str.11, i32 0, i32 0
  %590 = load i32, i32* @__checkpoint_count, align 4, !dbg !1489, !idemp_checkpoint_count !298
  %591 = add i32 %590, 1, !dbg !1489, !idemp_checkpoint_count !298
  store volatile i32 %591, i32* @__checkpoint_count, align 4, !dbg !1489, !idemp_checkpoint_count !298
  %592 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %589, i32 %588), !dbg !1489
  %593 = getelementptr [24 x i8], [24 x i8]* @.str.12, i32 0, i32 0
  %594 = load i32, i32* @__checkpoint_count, align 4, !dbg !1490, !idemp_checkpoint_count !298
  %595 = add i32 %594, 1, !dbg !1490, !idemp_checkpoint_count !298
  store volatile i32 %595, i32* @__checkpoint_count, align 4, !dbg !1490, !idemp_checkpoint_count !298
  %596 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %593, i32 %380), !dbg !1490
  %597 = load i32, i32* @__checkpoint_count, align 4, !dbg !1491, !idemp_checkpoint_count !298
  %598 = add i32 %597, 1, !dbg !1491, !idemp_checkpoint_count !298
  store volatile i32 %598, i32* @__checkpoint_count, align 4, !dbg !1491, !idemp_checkpoint_count !298
  %599 = call arm_aapcscc double @time_in_secs(i32 %380), !dbg !1491
  %600 = getelementptr [23 x i8], [23 x i8]* @.str.13, i32 0, i32 0
  %601 = load i32, i32* @__checkpoint_count, align 4, !dbg !1492, !idemp_checkpoint_count !298
  %602 = add i32 %601, 1, !dbg !1492, !idemp_checkpoint_count !298
  store volatile i32 %602, i32* @__checkpoint_count, align 4, !dbg !1492, !idemp_checkpoint_count !298
  %603 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %600, double %599), !dbg !1492
  %604 = load i32, i32* @__checkpoint_count, align 4, !dbg !1493, !idemp_checkpoint_count !298
  %605 = add i32 %604, 1, !dbg !1493, !idemp_checkpoint_count !298
  store volatile i32 %605, i32* @__checkpoint_count, align 4, !dbg !1493, !idemp_checkpoint_count !298
  %606 = call arm_aapcscc double @time_in_secs(i32 %380), !dbg !1493
  %607 = fcmp ogt double %606, 0.000000e+00, !dbg !1495
  br i1 %607, label %608, label %._crit_edge47, !dbg !1496

._crit_edge47:                                    ; preds = %578
  br label %623, !dbg !1496

608:                                              ; preds = %578
  %609 = load i32, i32* @default_num_contexts, align 4, !dbg !1497, !tbaa !1047
  %610 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1498
  %611 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %610, i32 0, i32 5, !dbg !1499
  %612 = load i32, i32* %611, align 4, !dbg !1499, !tbaa !977
  %613 = mul i32 %609, %612, !dbg !1500
  %614 = uitofp i32 %613 to double, !dbg !1497
  %615 = load i32, i32* @__checkpoint_count, align 4, !dbg !1501, !idemp_checkpoint_count !298
  %616 = add i32 %615, 1, !dbg !1501, !idemp_checkpoint_count !298
  store volatile i32 %616, i32* @__checkpoint_count, align 4, !dbg !1501, !idemp_checkpoint_count !298
  %617 = call arm_aapcscc double @time_in_secs(i32 %380), !dbg !1501
  %618 = fdiv double %614, %617, !dbg !1502
  %619 = getelementptr [23 x i8], [23 x i8]* @.str.14, i32 0, i32 0
  %620 = load i32, i32* @__checkpoint_count, align 4, !dbg !1503, !idemp_checkpoint_count !298
  %621 = add i32 %620, 1, !dbg !1503, !idemp_checkpoint_count !298
  store volatile i32 %621, i32* @__checkpoint_count, align 4, !dbg !1503, !idemp_checkpoint_count !298
  %622 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %619, double %618), !dbg !1503
  br label %623, !dbg !1503

623:                                              ; preds = %608, %._crit_edge47
  %624 = load i32, i32* @__checkpoint_count, align 4, !dbg !1504, !idemp_checkpoint_count !298
  %625 = add i32 %624, 1, !dbg !1504, !idemp_checkpoint_count !298
  store volatile i32 %625, i32* @__checkpoint_count, align 4, !dbg !1504, !idemp_checkpoint_count !298
  %626 = call arm_aapcscc double @time_in_secs(i32 %380), !dbg !1504
  %627 = fcmp olt double %626, 1.000000e+01, !dbg !1506
  br i1 %627, label %628, label %._crit_edge48, !dbg !1507

._crit_edge48:                                    ; preds = %623
  br label %634, !dbg !1507

628:                                              ; preds = %623
  %629 = getelementptr [62 x i8], [62 x i8]* @.str.15, i32 0, i32 0
  %630 = load i32, i32* @__checkpoint_count, align 4, !dbg !1508, !idemp_checkpoint_count !298
  %631 = add i32 %630, 1, !dbg !1508, !idemp_checkpoint_count !298
  store volatile i32 %631, i32* @__checkpoint_count, align 4, !dbg !1508, !idemp_checkpoint_count !298
  %632 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %629), !dbg !1508
  %633 = add i16 %585, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i16 %633, metadata !1028, metadata !DIExpression()), !dbg !1049
  br label %634, !dbg !1511

634:                                              ; preds = %628, %._crit_edge48
  %.311 = phi i16 [ %633, %628 ], [ %585, %._crit_edge48 ], !dbg !1049
  call void @llvm.dbg.value(metadata i16 %.311, metadata !1028, metadata !DIExpression()), !dbg !1049
  %635 = load i32, i32* @default_num_contexts, align 4, !dbg !1512, !tbaa !1047
  %636 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1513
  %637 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %636, i32 0, i32 5, !dbg !1514
  %638 = load i32, i32* %637, align 4, !dbg !1514, !tbaa !977
  %639 = mul i32 %635, %638, !dbg !1515
  %640 = getelementptr [24 x i8], [24 x i8]* @.str.16, i32 0, i32 0
  %641 = load i32, i32* @__checkpoint_count, align 4, !dbg !1516, !idemp_checkpoint_count !298
  %642 = add i32 %641, 1, !dbg !1516, !idemp_checkpoint_count !298
  store volatile i32 %642, i32* @__checkpoint_count, align 4, !dbg !1516, !idemp_checkpoint_count !298
  %643 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %640, i32 %639), !dbg !1516
  %644 = getelementptr [23 x i8], [23 x i8]* @.str.17, i32 0, i32 0
  %645 = getelementptr [16 x i8], [16 x i8]* @.str.18, i32 0, i32 0
  %646 = load i32, i32* @__checkpoint_count, align 4, !dbg !1517, !idemp_checkpoint_count !298
  %647 = add i32 %646, 1, !dbg !1517, !idemp_checkpoint_count !298
  store volatile i32 %647, i32* @__checkpoint_count, align 4, !dbg !1517, !idemp_checkpoint_count !298
  %648 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %644, i8* %645), !dbg !1517
  %649 = getelementptr [23 x i8], [23 x i8]* @.str.19, i32 0, i32 0
  %650 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %651 = load i32, i32* @__checkpoint_count, align 4, !dbg !1518, !idemp_checkpoint_count !298
  %652 = add i32 %651, 1, !dbg !1518, !idemp_checkpoint_count !298
  store volatile i32 %652, i32* @__checkpoint_count, align 4, !dbg !1518, !idemp_checkpoint_count !298
  %653 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %649, i8* %650), !dbg !1518
  %654 = getelementptr [23 x i8], [23 x i8]* @.str.21, i32 0, i32 0
  %655 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %656 = load i32, i32* @__checkpoint_count, align 4, !dbg !1519, !idemp_checkpoint_count !298
  %657 = add i32 %656, 1, !dbg !1519, !idemp_checkpoint_count !298
  store volatile i32 %657, i32* @__checkpoint_count, align 4, !dbg !1519, !idemp_checkpoint_count !298
  %658 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %654, i8* %655), !dbg !1519
  %659 = zext i16 %405 to i32, !dbg !1520
  %660 = getelementptr [27 x i8], [27 x i8]* @.str.23, i32 0, i32 0
  %661 = load i32, i32* @__checkpoint_count, align 4, !dbg !1521, !idemp_checkpoint_count !298
  %662 = add i32 %661, 1, !dbg !1521, !idemp_checkpoint_count !298
  store volatile i32 %662, i32* @__checkpoint_count, align 4, !dbg !1521, !idemp_checkpoint_count !298
  %663 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %660, i32 %659), !dbg !1521
  %664 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1522
  %665 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %664, i32 0, i32 6, !dbg !1524
  %666 = load i32, i32* %665, align 4, !dbg !1524, !tbaa !1077
  %667 = and i32 %666, 1, !dbg !1525
  %668 = icmp ne i32 %667, 0, !dbg !1525
  br i1 %668, label %669, label %._crit_edge49, !dbg !1526

._crit_edge49:                                    ; preds = %634
  br label %688, !dbg !1526

669:                                              ; preds = %634
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %670, !dbg !1527

670:                                              ; preds = %685, %669
  %.6 = phi i16 [ 0, %669 ], [ %686, %685 ], !dbg !1529
  call void @llvm.dbg.value(metadata i16 %.6, metadata !1024, metadata !DIExpression()), !dbg !1049
  %671 = zext i16 %.6 to i32, !dbg !1530
  %672 = load i32, i32* @default_num_contexts, align 4, !dbg !1532, !tbaa !1047
  %673 = icmp ult i32 %671, %672, !dbg !1533
  br i1 %673, label %674, label %687, !dbg !1534

674:                                              ; preds = %670
  %675 = zext i16 %.6 to i32, !dbg !1535
  %676 = zext i16 %.6 to i32, !dbg !1536
  %677 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %676, !dbg !1536
  %678 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %677, i32 0, i32 10, !dbg !1537
  %679 = load i16, i16* %678, align 2, !dbg !1537, !tbaa !982
  %680 = zext i16 %679 to i32, !dbg !1536
  %681 = getelementptr [28 x i8], [28 x i8]* @.str.24, i32 0, i32 0
  %682 = load i32, i32* @__checkpoint_count, align 4, !dbg !1538, !idemp_checkpoint_count !298
  %683 = add i32 %682, 1, !dbg !1538, !idemp_checkpoint_count !298
  store volatile i32 %683, i32* @__checkpoint_count, align 4, !dbg !1538, !idemp_checkpoint_count !298
  %684 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %681, i32 %675, i32 %680), !dbg !1538
  br label %685, !dbg !1538

685:                                              ; preds = %674
  %686 = add i16 %.6, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i16 %686, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %670, !dbg !1540, !llvm.loop !1541

687:                                              ; preds = %670
  br label %688, !dbg !1542

688:                                              ; preds = %687, %._crit_edge49
  %689 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1543
  %690 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %689, i32 0, i32 6, !dbg !1545
  %691 = load i32, i32* %690, align 4, !dbg !1545, !tbaa !1077
  %692 = and i32 %691, 2, !dbg !1546
  %693 = icmp ne i32 %692, 0, !dbg !1546
  br i1 %693, label %694, label %._crit_edge50, !dbg !1547

._crit_edge50:                                    ; preds = %688
  br label %713, !dbg !1547

694:                                              ; preds = %688
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %695, !dbg !1548

695:                                              ; preds = %710, %694
  %.7 = phi i16 [ 0, %694 ], [ %711, %710 ], !dbg !1550
  call void @llvm.dbg.value(metadata i16 %.7, metadata !1024, metadata !DIExpression()), !dbg !1049
  %696 = zext i16 %.7 to i32, !dbg !1551
  %697 = load i32, i32* @default_num_contexts, align 4, !dbg !1553, !tbaa !1047
  %698 = icmp ult i32 %696, %697, !dbg !1554
  br i1 %698, label %699, label %712, !dbg !1555

699:                                              ; preds = %695
  %700 = zext i16 %.7 to i32, !dbg !1556
  %701 = zext i16 %.7 to i32, !dbg !1557
  %702 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %701, !dbg !1557
  %703 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %702, i32 0, i32 11, !dbg !1558
  %704 = load i16, i16* %703, align 4, !dbg !1558, !tbaa !358
  %705 = zext i16 %704 to i32, !dbg !1557
  %706 = getelementptr [28 x i8], [28 x i8]* @.str.25, i32 0, i32 0
  %707 = load i32, i32* @__checkpoint_count, align 4, !dbg !1559, !idemp_checkpoint_count !298
  %708 = add i32 %707, 1, !dbg !1559, !idemp_checkpoint_count !298
  store volatile i32 %708, i32* @__checkpoint_count, align 4, !dbg !1559, !idemp_checkpoint_count !298
  %709 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %706, i32 %700, i32 %705), !dbg !1559
  br label %710, !dbg !1559

710:                                              ; preds = %699
  %711 = add i16 %.7, 1, !dbg !1560
  call void @llvm.dbg.value(metadata i16 %711, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %695, !dbg !1561, !llvm.loop !1562

712:                                              ; preds = %695
  br label %713, !dbg !1563

713:                                              ; preds = %712, %._crit_edge50
  %714 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1564
  %715 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %714, i32 0, i32 6, !dbg !1566
  %716 = load i32, i32* %715, align 4, !dbg !1566, !tbaa !1077
  %717 = and i32 %716, 4, !dbg !1567
  %718 = icmp ne i32 %717, 0, !dbg !1567
  br i1 %718, label %719, label %._crit_edge51, !dbg !1568

._crit_edge51:                                    ; preds = %713
  br label %738, !dbg !1568

719:                                              ; preds = %713
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %720, !dbg !1569

720:                                              ; preds = %735, %719
  %.8 = phi i16 [ 0, %719 ], [ %736, %735 ], !dbg !1571
  call void @llvm.dbg.value(metadata i16 %.8, metadata !1024, metadata !DIExpression()), !dbg !1049
  %721 = zext i16 %.8 to i32, !dbg !1572
  %722 = load i32, i32* @default_num_contexts, align 4, !dbg !1574, !tbaa !1047
  %723 = icmp ult i32 %721, %722, !dbg !1575
  br i1 %723, label %724, label %737, !dbg !1576

724:                                              ; preds = %720
  %725 = zext i16 %.8 to i32, !dbg !1577
  %726 = zext i16 %.8 to i32, !dbg !1578
  %727 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %726, !dbg !1578
  %728 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %727, i32 0, i32 12, !dbg !1579
  %729 = load i16, i16* %728, align 2, !dbg !1579, !tbaa !345
  %730 = zext i16 %729 to i32, !dbg !1578
  %731 = getelementptr [28 x i8], [28 x i8]* @.str.26, i32 0, i32 0
  %732 = load i32, i32* @__checkpoint_count, align 4, !dbg !1580, !idemp_checkpoint_count !298
  %733 = add i32 %732, 1, !dbg !1580, !idemp_checkpoint_count !298
  store volatile i32 %733, i32* @__checkpoint_count, align 4, !dbg !1580, !idemp_checkpoint_count !298
  %734 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %731, i32 %725, i32 %730), !dbg !1580
  br label %735, !dbg !1580

735:                                              ; preds = %724
  %736 = add i16 %.8, 1, !dbg !1581
  call void @llvm.dbg.value(metadata i16 %736, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %720, !dbg !1582, !llvm.loop !1583

737:                                              ; preds = %720
  br label %738, !dbg !1584

738:                                              ; preds = %737, %._crit_edge51
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %739, !dbg !1585

739:                                              ; preds = %754, %738
  %.9 = phi i16 [ 0, %738 ], [ %755, %754 ], !dbg !1587
  call void @llvm.dbg.value(metadata i16 %.9, metadata !1024, metadata !DIExpression()), !dbg !1049
  %740 = zext i16 %.9 to i32, !dbg !1588
  %741 = load i32, i32* @default_num_contexts, align 4, !dbg !1590, !tbaa !1047
  %742 = icmp ult i32 %740, %741, !dbg !1591
  br i1 %742, label %743, label %756, !dbg !1592

743:                                              ; preds = %739
  %744 = zext i16 %.9 to i32, !dbg !1593
  %745 = zext i16 %.9 to i32, !dbg !1594
  %746 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %745, !dbg !1594
  %747 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %746, i32 0, i32 9, !dbg !1595
  %748 = load i16, i16* %747, align 4, !dbg !1595, !tbaa !341
  %749 = zext i16 %748 to i32, !dbg !1594
  %750 = getelementptr [28 x i8], [28 x i8]* @.str.27, i32 0, i32 0
  %751 = load i32, i32* @__checkpoint_count, align 4, !dbg !1596, !idemp_checkpoint_count !298
  %752 = add i32 %751, 1, !dbg !1596, !idemp_checkpoint_count !298
  store volatile i32 %752, i32* @__checkpoint_count, align 4, !dbg !1596, !idemp_checkpoint_count !298
  %753 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %750, i32 %744, i32 %749), !dbg !1596
  br label %754, !dbg !1596

754:                                              ; preds = %743
  %755 = add i16 %.9, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i16 %755, metadata !1024, metadata !DIExpression()), !dbg !1049
  br label %739, !dbg !1598, !llvm.loop !1599

756:                                              ; preds = %739
  %757 = sext i16 %.311 to i32, !dbg !1601
  %758 = icmp eq i32 %757, 0, !dbg !1603
  br i1 %758, label %759, label %._crit_edge52, !dbg !1604

._crit_edge52:                                    ; preds = %756
  br label %793, !dbg !1604

759:                                              ; preds = %756
  %760 = getelementptr [73 x i8], [73 x i8]* @.str.28, i32 0, i32 0
  %761 = load i32, i32* @__checkpoint_count, align 4, !dbg !1605, !idemp_checkpoint_count !298
  %762 = add i32 %761, 1, !dbg !1605, !idemp_checkpoint_count !298
  store volatile i32 %762, i32* @__checkpoint_count, align 4, !dbg !1605, !idemp_checkpoint_count !298
  %763 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %760), !dbg !1605
  %764 = sext i16 %.07 to i32, !dbg !1607
  %765 = icmp eq i32 %764, 3, !dbg !1609
  br i1 %765, label %766, label %._crit_edge53, !dbg !1610

._crit_edge53:                                    ; preds = %759
  br label %792, !dbg !1610

766:                                              ; preds = %759
  %767 = load i32, i32* @default_num_contexts, align 4, !dbg !1611, !tbaa !1047
  %768 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1613
  %769 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %768, i32 0, i32 5, !dbg !1614
  %770 = load i32, i32* %769, align 4, !dbg !1614, !tbaa !977
  %771 = mul i32 %767, %770, !dbg !1615
  %772 = uitofp i32 %771 to double, !dbg !1611
  %773 = load i32, i32* @__checkpoint_count, align 4, !dbg !1616, !idemp_checkpoint_count !298
  %774 = add i32 %773, 1, !dbg !1616, !idemp_checkpoint_count !298
  store volatile i32 %774, i32* @__checkpoint_count, align 4, !dbg !1616, !idemp_checkpoint_count !298
  %775 = call arm_aapcscc double @time_in_secs(i32 %380), !dbg !1616
  %776 = fdiv double %772, %775, !dbg !1617
  %777 = getelementptr [26 x i8], [26 x i8]* @.str.29, i32 0, i32 0
  %778 = getelementptr [16 x i8], [16 x i8]* @.str.18, i32 0, i32 0
  %779 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %780 = load i32, i32* @__checkpoint_count, align 4, !dbg !1618, !idemp_checkpoint_count !298
  %781 = add i32 %780, 1, !dbg !1618, !idemp_checkpoint_count !298
  store volatile i32 %781, i32* @__checkpoint_count, align 4, !dbg !1618, !idemp_checkpoint_count !298
  %782 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %777, double %776, i8* %778, i8* %779), !dbg !1618
  %783 = getelementptr [6 x i8], [6 x i8]* @.str.30, i32 0, i32 0
  %784 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %785 = load i32, i32* @__checkpoint_count, align 4, !dbg !1619, !idemp_checkpoint_count !298
  %786 = add i32 %785, 1, !dbg !1619, !idemp_checkpoint_count !298
  store volatile i32 %786, i32* @__checkpoint_count, align 4, !dbg !1619, !idemp_checkpoint_count !298
  %787 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %783, i8* %784), !dbg !1619
  %788 = getelementptr [2 x i8], [2 x i8]* @.str.31, i32 0, i32 0
  %789 = load i32, i32* @__checkpoint_count, align 4, !dbg !1620, !idemp_checkpoint_count !298
  %790 = add i32 %789, 1, !dbg !1620, !idemp_checkpoint_count !298
  store volatile i32 %790, i32* @__checkpoint_count, align 4, !dbg !1620, !idemp_checkpoint_count !298
  %791 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %788), !dbg !1620
  br label %792, !dbg !1621

792:                                              ; preds = %766, %._crit_edge53
  br label %793, !dbg !1622

793:                                              ; preds = %792, %._crit_edge52
  %794 = sext i16 %.311 to i32, !dbg !1623
  %795 = icmp sgt i32 %794, 0, !dbg !1625
  br i1 %795, label %796, label %._crit_edge54, !dbg !1626

._crit_edge54:                                    ; preds = %793
  br label %801, !dbg !1626

796:                                              ; preds = %793
  %797 = getelementptr [17 x i8], [17 x i8]* @.str.32, i32 0, i32 0
  %798 = load i32, i32* @__checkpoint_count, align 4, !dbg !1627, !idemp_checkpoint_count !298
  %799 = add i32 %798, 1, !dbg !1627, !idemp_checkpoint_count !298
  store volatile i32 %799, i32* @__checkpoint_count, align 4, !dbg !1627, !idemp_checkpoint_count !298
  %800 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %797), !dbg !1627
  br label %801, !dbg !1627

801:                                              ; preds = %796, %._crit_edge54
  %802 = sext i16 %.311 to i32, !dbg !1628
  %803 = icmp slt i32 %802, 0, !dbg !1630
  br i1 %803, label %804, label %._crit_edge55, !dbg !1631

._crit_edge55:                                    ; preds = %801
  br label %809, !dbg !1631

804:                                              ; preds = %801
  %805 = getelementptr [99 x i8], [99 x i8]* @.str.33, i32 0, i32 0
  %806 = load i32, i32* @__checkpoint_count, align 4, !dbg !1632, !idemp_checkpoint_count !298
  %807 = add i32 %806, 1, !dbg !1632, !idemp_checkpoint_count !298
  store volatile i32 %807, i32* @__checkpoint_count, align 4, !dbg !1632, !idemp_checkpoint_count !298
  %808 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %805), !dbg !1632
  br label %809, !dbg !1632

809:                                              ; preds = %804, %._crit_edge55
  %810 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1633
  %811 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %810, i32 0, i32 14, !dbg !1634
  %812 = load i32, i32* @__checkpoint_count, align 4, !dbg !1635, !idemp_checkpoint_count !298
  %813 = add i32 %812, 1, !dbg !1635, !idemp_checkpoint_count !298
  store volatile i32 %813, i32* @__checkpoint_count, align 4, !dbg !1635, !idemp_checkpoint_count !298
  call arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S* %811), !dbg !1635
  %814 = bitcast [2000 x i8]* %5 to i8*, !dbg !1636
  call void @llvm.lifetime.end.p0i8(i64 2000, i8* %814) #4, !dbg !1636
  %815 = bitcast [1 x %struct.RESULTS_S]* %4 to i8*, !dbg !1636
  call void @llvm.lifetime.end.p0i8(i64 68, i8* %815) #4, !dbg !1636
  ret i32 0, !dbg !1637
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S*, i16 signext, i16 zeroext) #0 !dbg !1638 {
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %0, metadata !1651, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i16 %1, metadata !1652, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i16 %2, metadata !1653, metadata !DIExpression()), !dbg !1659
  %4 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 0, !dbg !1660
  %5 = load i32, i32* %4, align 4, !dbg !1660, !tbaa !1661
  call void @llvm.dbg.value(metadata i32 %5, metadata !1654, metadata !DIExpression()), !dbg !1659
  %6 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 3, !dbg !1662
  %7 = load i32*, i32** %6, align 4, !dbg !1662, !tbaa !1663
  call void @llvm.dbg.value(metadata i32* %7, metadata !1655, metadata !DIExpression()), !dbg !1659
  %8 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 1, !dbg !1664
  %9 = load i16*, i16** %8, align 4, !dbg !1664, !tbaa !1665
  call void @llvm.dbg.value(metadata i16* %9, metadata !1656, metadata !DIExpression()), !dbg !1659
  %10 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 2, !dbg !1666
  %11 = load i16*, i16** %10, align 4, !dbg !1666, !tbaa !1667
  call void @llvm.dbg.value(metadata i16* %11, metadata !1657, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i16 %1, metadata !1658, metadata !DIExpression()), !dbg !1659
  %12 = load i32, i32* @__checkpoint_count, align 4, !dbg !1668, !idemp_checkpoint_count !298
  %13 = add i32 %12, 1, !dbg !1668, !idemp_checkpoint_count !298
  store volatile i32 %13, i32* @__checkpoint_count, align 4, !dbg !1668, !idemp_checkpoint_count !298
  %14 = call arm_aapcscc signext i16 @matrix_test(i32 %5, i32* %7, i16* %9, i16* %11, i16 signext %1), !dbg !1668
  %15 = load i32, i32* @__checkpoint_count, align 4, !dbg !1669, !idemp_checkpoint_count !298
  %16 = add i32 %15, 1, !dbg !1669, !idemp_checkpoint_count !298
  store volatile i32 %16, i32* @__checkpoint_count, align 4, !dbg !1669, !idemp_checkpoint_count !298
  %17 = call arm_aapcscc zeroext i16 @crc16(i16 signext %14, i16 zeroext %2), !dbg !1669
  call void @llvm.dbg.value(metadata i16 %17, metadata !1653, metadata !DIExpression()), !dbg !1659
  ret i16 %17, !dbg !1670
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_test(i32, i32*, i16*, i16*, i16 signext) #0 !dbg !1671 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1675, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32* %1, metadata !1676, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i16* %2, metadata !1677, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i16* %3, metadata !1678, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i16 %4, metadata !1679, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i16 0, metadata !1680, metadata !DIExpression()), !dbg !1682
  %6 = sext i16 %4 to i32, !dbg !1683
  %7 = or i32 61440, %6, !dbg !1683
  %8 = trunc i32 %7 to i16, !dbg !1683
  call void @llvm.dbg.value(metadata i16 %8, metadata !1681, metadata !DIExpression()), !dbg !1682
  %9 = load i32, i32* @__checkpoint_count, align 4, !dbg !1684, !idemp_checkpoint_count !298
  %10 = add i32 %9, 1, !dbg !1684, !idemp_checkpoint_count !298
  store volatile i32 %10, i32* @__checkpoint_count, align 4, !dbg !1684, !idemp_checkpoint_count !298
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %4), !dbg !1684
  %11 = load i32, i32* @__checkpoint_count, align 4, !dbg !1685, !idemp_checkpoint_count !298
  %12 = add i32 %11, 1, !dbg !1685, !idemp_checkpoint_count !298
  store volatile i32 %12, i32* @__checkpoint_count, align 4, !dbg !1685, !idemp_checkpoint_count !298
  call arm_aapcscc void @matrix_mul_const(i32 %0, i32* %1, i16* %2, i16 signext %4), !dbg !1685
  %13 = load i32, i32* @__checkpoint_count, align 4, !dbg !1686, !idemp_checkpoint_count !298
  %14 = add i32 %13, 1, !dbg !1686, !idemp_checkpoint_count !298
  store volatile i32 %14, i32* @__checkpoint_count, align 4, !dbg !1686, !idemp_checkpoint_count !298
  %15 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1686
  %16 = load i32, i32* @__checkpoint_count, align 4, !dbg !1687, !idemp_checkpoint_count !298
  %17 = add i32 %16, 1, !dbg !1687, !idemp_checkpoint_count !298
  store volatile i32 %17, i32* @__checkpoint_count, align 4, !dbg !1687, !idemp_checkpoint_count !298
  %18 = call arm_aapcscc zeroext i16 @crc16(i16 signext %15, i16 zeroext 0), !dbg !1687
  call void @llvm.dbg.value(metadata i16 %18, metadata !1680, metadata !DIExpression()), !dbg !1682
  %19 = load i32, i32* @__checkpoint_count, align 4, !dbg !1688, !idemp_checkpoint_count !298
  %20 = add i32 %19, 1, !dbg !1688, !idemp_checkpoint_count !298
  store volatile i32 %20, i32* @__checkpoint_count, align 4, !dbg !1688, !idemp_checkpoint_count !298
  call arm_aapcscc void @matrix_mul_vect(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1688
  %21 = load i32, i32* @__checkpoint_count, align 4, !dbg !1689, !idemp_checkpoint_count !298
  %22 = add i32 %21, 1, !dbg !1689, !idemp_checkpoint_count !298
  store volatile i32 %22, i32* @__checkpoint_count, align 4, !dbg !1689, !idemp_checkpoint_count !298
  %23 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1689
  %24 = load i32, i32* @__checkpoint_count, align 4, !dbg !1690, !idemp_checkpoint_count !298
  %25 = add i32 %24, 1, !dbg !1690, !idemp_checkpoint_count !298
  store volatile i32 %25, i32* @__checkpoint_count, align 4, !dbg !1690, !idemp_checkpoint_count !298
  %26 = call arm_aapcscc zeroext i16 @crc16(i16 signext %23, i16 zeroext %18), !dbg !1690
  call void @llvm.dbg.value(metadata i16 %26, metadata !1680, metadata !DIExpression()), !dbg !1682
  %27 = load i32, i32* @__checkpoint_count, align 4, !dbg !1691, !idemp_checkpoint_count !298
  %28 = add i32 %27, 1, !dbg !1691, !idemp_checkpoint_count !298
  store volatile i32 %28, i32* @__checkpoint_count, align 4, !dbg !1691, !idemp_checkpoint_count !298
  call arm_aapcscc void @matrix_mul_matrix(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1691
  %29 = load i32, i32* @__checkpoint_count, align 4, !dbg !1692, !idemp_checkpoint_count !298
  %30 = add i32 %29, 1, !dbg !1692, !idemp_checkpoint_count !298
  store volatile i32 %30, i32* @__checkpoint_count, align 4, !dbg !1692, !idemp_checkpoint_count !298
  %31 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1692
  %32 = load i32, i32* @__checkpoint_count, align 4, !dbg !1693, !idemp_checkpoint_count !298
  %33 = add i32 %32, 1, !dbg !1693, !idemp_checkpoint_count !298
  store volatile i32 %33, i32* @__checkpoint_count, align 4, !dbg !1693, !idemp_checkpoint_count !298
  %34 = call arm_aapcscc zeroext i16 @crc16(i16 signext %31, i16 zeroext %26), !dbg !1693
  call void @llvm.dbg.value(metadata i16 %34, metadata !1680, metadata !DIExpression()), !dbg !1682
  %35 = load i32, i32* @__checkpoint_count, align 4, !dbg !1694, !idemp_checkpoint_count !298
  %36 = add i32 %35, 1, !dbg !1694, !idemp_checkpoint_count !298
  store volatile i32 %36, i32* @__checkpoint_count, align 4, !dbg !1694, !idemp_checkpoint_count !298
  call arm_aapcscc void @matrix_mul_matrix_bitextract(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1694
  %37 = load i32, i32* @__checkpoint_count, align 4, !dbg !1695, !idemp_checkpoint_count !298
  %38 = add i32 %37, 1, !dbg !1695, !idemp_checkpoint_count !298
  store volatile i32 %38, i32* @__checkpoint_count, align 4, !dbg !1695, !idemp_checkpoint_count !298
  %39 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1695
  %40 = load i32, i32* @__checkpoint_count, align 4, !dbg !1696, !idemp_checkpoint_count !298
  %41 = add i32 %40, 1, !dbg !1696, !idemp_checkpoint_count !298
  store volatile i32 %41, i32* @__checkpoint_count, align 4, !dbg !1696, !idemp_checkpoint_count !298
  %42 = call arm_aapcscc zeroext i16 @crc16(i16 signext %39, i16 zeroext %34), !dbg !1696
  call void @llvm.dbg.value(metadata i16 %42, metadata !1680, metadata !DIExpression()), !dbg !1682
  %43 = sext i16 %4 to i32, !dbg !1697
  %44 = sub nsw i32 0, %43, !dbg !1698
  %45 = trunc i32 %44 to i16, !dbg !1698
  %46 = load i32, i32* @__checkpoint_count, align 4, !dbg !1699, !idemp_checkpoint_count !298
  %47 = add i32 %46, 1, !dbg !1699, !idemp_checkpoint_count !298
  store volatile i32 %47, i32* @__checkpoint_count, align 4, !dbg !1699, !idemp_checkpoint_count !298
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %45), !dbg !1699
  ret i16 %42, !dbg !1700
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_add_const(i32, i16*, i16 signext) #0 !dbg !1701 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1705, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i16* %1, metadata !1706, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i16 %2, metadata !1707, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 0, metadata !1708, metadata !DIExpression()), !dbg !1710
  br label %4, !dbg !1711

4:                                                ; preds = %21, %3
  %.01 = phi i32 [ 0, %3 ], [ %22, %21 ], !dbg !1713
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1708, metadata !DIExpression()), !dbg !1710
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1714
  br i1 %exitcond2, label %5, label %23, !dbg !1716

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1709, metadata !DIExpression()), !dbg !1710
  br label %6, !dbg !1717

6:                                                ; preds = %18, %5
  %.0 = phi i32 [ 0, %5 ], [ %19, %18 ], !dbg !1720
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1709, metadata !DIExpression()), !dbg !1710
  %exitcond = icmp ne i32 %.0, %0, !dbg !1721
  br i1 %exitcond, label %7, label %20, !dbg !1723

7:                                                ; preds = %6
  %8 = sext i16 %2 to i32, !dbg !1724
  %9 = mul i32 %.01, %0, !dbg !1726
  %10 = add i32 %9, %.0, !dbg !1727
  %11 = getelementptr inbounds i16, i16* %1, i32 %10, !dbg !1728
  %12 = load i16, i16* %11, align 2, !dbg !1729, !tbaa !294, !idemp_war_rd !298
  %13 = sext i16 %12 to i32, !dbg !1729
  %14 = add nsw i32 %13, %8, !dbg !1729
  %15 = trunc i32 %14 to i16, !dbg !1729
  %16 = load i32, i32* @__checkpoint_count, align 4, !dbg !1729, !idemp_checkpoint_count !298
  %17 = add i32 %16, 1, !dbg !1729, !idemp_checkpoint_count !298
  store volatile i32 %17, i32* @__checkpoint_count, align 4, !dbg !1729, !idemp_checkpoint_count !298
  store i16 %15, i16* %11, align 2, !dbg !1729, !tbaa !294, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %18, !dbg !1730

18:                                               ; preds = %7
  %19 = add i32 %.0, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %19, metadata !1709, metadata !DIExpression()), !dbg !1710
  br label %6, !dbg !1732, !llvm.loop !1733

20:                                               ; preds = %6
  br label %21, !dbg !1735

21:                                               ; preds = %20
  %22 = add i32 %.01, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %22, metadata !1708, metadata !DIExpression()), !dbg !1710
  br label %4, !dbg !1737, !llvm.loop !1738

23:                                               ; preds = %4
  ret void, !dbg !1740
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_const(i32, i32*, i16*, i16 signext) #0 !dbg !1741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1745, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i32* %1, metadata !1746, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i16* %2, metadata !1747, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i16 %3, metadata !1748, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i32 0, metadata !1749, metadata !DIExpression()), !dbg !1751
  br label %5, !dbg !1752

5:                                                ; preds = %22, %4
  %.01 = phi i32 [ 0, %4 ], [ %23, %22 ], !dbg !1754
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1749, metadata !DIExpression()), !dbg !1751
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1755
  br i1 %exitcond2, label %6, label %24, !dbg !1757

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1750, metadata !DIExpression()), !dbg !1751
  br label %7, !dbg !1758

7:                                                ; preds = %19, %6
  %.0 = phi i32 [ 0, %6 ], [ %20, %19 ], !dbg !1761
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1750, metadata !DIExpression()), !dbg !1751
  %exitcond = icmp ne i32 %.0, %0, !dbg !1762
  br i1 %exitcond, label %8, label %21, !dbg !1764

8:                                                ; preds = %7
  %9 = mul i32 %.01, %0, !dbg !1765
  %10 = add i32 %9, %.0, !dbg !1767
  %11 = getelementptr inbounds i16, i16* %2, i32 %10, !dbg !1768
  %12 = load i16, i16* %11, align 2, !dbg !1768, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1769
  %14 = sext i16 %3 to i32, !dbg !1770
  %15 = mul nsw i32 %13, %14, !dbg !1771
  %16 = mul i32 %.01, %0, !dbg !1772
  %17 = add i32 %16, %.0, !dbg !1773
  %18 = getelementptr inbounds i32, i32* %1, i32 %17, !dbg !1774
  store i32 %15, i32* %18, align 4, !dbg !1775, !tbaa !1047
  br label %19, !dbg !1776

19:                                               ; preds = %8
  %20 = add i32 %.0, 1, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %20, metadata !1750, metadata !DIExpression()), !dbg !1751
  br label %7, !dbg !1778, !llvm.loop !1779

21:                                               ; preds = %7
  br label %22, !dbg !1781

22:                                               ; preds = %21
  %23 = add i32 %.01, 1, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %23, metadata !1749, metadata !DIExpression()), !dbg !1751
  br label %5, !dbg !1783, !llvm.loop !1784

24:                                               ; preds = %5
  ret void, !dbg !1786
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_sum(i32, i32*, i16 signext) #0 !dbg !1787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1791, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32* %1, metadata !1792, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i16 %2, metadata !1793, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 0, metadata !1794, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 0, metadata !1795, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 0, metadata !1796, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i16 0, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1800
  br label %4, !dbg !1801

4:                                                ; preds = %30, %3
  %.06 = phi i32 [ 0, %3 ], [ %.17.lcssa, %30 ], !dbg !1803
  %.03 = phi i32 [ 0, %3 ], [ %.14.lcssa, %30 ], !dbg !1804
  %.02 = phi i16 [ 0, %3 ], [ %.1.lcssa, %30 ], !dbg !1805
  %.01 = phi i32 [ 0, %3 ], [ %31, %30 ], !dbg !1806
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1798, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i16 %.02, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1794, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1795, metadata !DIExpression()), !dbg !1800
  %exitcond8 = icmp ne i32 %.01, %0, !dbg !1807
  br i1 %exitcond8, label %5, label %32, !dbg !1809

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1799, metadata !DIExpression()), !dbg !1800
  br label %6, !dbg !1810

6:                                                ; preds = %27, %5
  %.17 = phi i32 [ %.06, %5 ], [ %11, %27 ], !dbg !1800
  %.14 = phi i32 [ %.03, %5 ], [ %.25, %27 ], !dbg !1800
  %.1 = phi i16 [ %.02, %5 ], [ %.2, %27 ], !dbg !1800
  %.0 = phi i32 [ 0, %5 ], [ %28, %27 ], !dbg !1813
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1799, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i16 %.1, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1794, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %.17, metadata !1795, metadata !DIExpression()), !dbg !1800
  %exitcond = icmp ne i32 %.0, %0, !dbg !1814
  br i1 %exitcond, label %7, label %29, !dbg !1816

7:                                                ; preds = %6
  %8 = mul i32 %.01, %0, !dbg !1817
  %9 = add i32 %8, %.0, !dbg !1819
  %10 = getelementptr inbounds i32, i32* %1, i32 %9, !dbg !1820
  %11 = load i32, i32* %10, align 4, !dbg !1820, !tbaa !1047
  call void @llvm.dbg.value(metadata i32 %11, metadata !1796, metadata !DIExpression()), !dbg !1800
  %12 = add nsw i32 %.14, %11, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %12, metadata !1794, metadata !DIExpression()), !dbg !1800
  %13 = sext i16 %2 to i32, !dbg !1822
  %14 = icmp sgt i32 %12, %13, !dbg !1824
  br i1 %14, label %15, label %19, !dbg !1825

15:                                               ; preds = %7
  %16 = sext i16 %.1 to i32, !dbg !1826
  %17 = add nsw i32 %16, 10, !dbg !1826
  %18 = trunc i32 %17 to i16, !dbg !1826
  call void @llvm.dbg.value(metadata i16 %18, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 0, metadata !1794, metadata !DIExpression()), !dbg !1800
  br label %26, !dbg !1828

19:                                               ; preds = %7
  %20 = icmp sgt i32 %11, %.17, !dbg !1829
  %21 = zext i1 %20 to i64, !dbg !1831
  %22 = select i1 %20, i32 1, i32 0, !dbg !1831
  %23 = sext i16 %.1 to i32, !dbg !1832
  %24 = add nsw i32 %23, %22, !dbg !1832
  %25 = trunc i32 %24 to i16, !dbg !1832
  call void @llvm.dbg.value(metadata i16 %25, metadata !1797, metadata !DIExpression()), !dbg !1800
  br label %26

26:                                               ; preds = %19, %15
  %.25 = phi i32 [ 0, %15 ], [ %12, %19 ], !dbg !1833
  %.2 = phi i16 [ %18, %15 ], [ %25, %19 ], !dbg !1834
  call void @llvm.dbg.value(metadata i16 %.2, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %.25, metadata !1794, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %11, metadata !1795, metadata !DIExpression()), !dbg !1800
  br label %27, !dbg !1835

27:                                               ; preds = %26
  %28 = add i32 %.0, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %28, metadata !1799, metadata !DIExpression()), !dbg !1800
  br label %6, !dbg !1837, !llvm.loop !1838

29:                                               ; preds = %6
  %.17.lcssa = phi i32 [ %.17, %6 ], !dbg !1800
  %.14.lcssa = phi i32 [ %.14, %6 ], !dbg !1800
  %.1.lcssa = phi i16 [ %.1, %6 ], !dbg !1800
  call void @llvm.dbg.value(metadata i32 %.17.lcssa, metadata !1795, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !1794, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i16 %.1.lcssa, metadata !1797, metadata !DIExpression()), !dbg !1800
  br label %30, !dbg !1840

30:                                               ; preds = %29
  %31 = add i32 %.01, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %31, metadata !1798, metadata !DIExpression()), !dbg !1800
  br label %4, !dbg !1842, !llvm.loop !1843

32:                                               ; preds = %4
  %.02.lcssa = phi i16 [ %.02, %4 ], !dbg !1805
  call void @llvm.dbg.value(metadata i16 %.02.lcssa, metadata !1797, metadata !DIExpression()), !dbg !1800
  ret i16 %.02.lcssa, !dbg !1845
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_vect(i32, i32*, i16*, i16*) #0 !dbg !1846 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1850, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i32* %1, metadata !1851, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i16* %2, metadata !1852, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i16* %3, metadata !1853, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i32 0, metadata !1854, metadata !DIExpression()), !dbg !1856
  br label %5, !dbg !1857

5:                                                ; preds = %29, %4
  %.01 = phi i32 [ 0, %4 ], [ %30, %29 ], !dbg !1859
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1854, metadata !DIExpression()), !dbg !1856
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1860
  br i1 %exitcond2, label %6, label %31, !dbg !1862

6:                                                ; preds = %5
  %7 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1863
  %8 = load i32, i32* @__checkpoint_count, align 4, !dbg !1865, !idemp_checkpoint_count !298
  %9 = add i32 %8, 1, !dbg !1865, !idemp_checkpoint_count !298
  store volatile i32 %9, i32* @__checkpoint_count, align 4, !dbg !1865, !idemp_checkpoint_count !298
  store i32 0, i32* %7, align 4, !dbg !1865, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  call void @llvm.dbg.value(metadata i32 0, metadata !1855, metadata !DIExpression()), !dbg !1856
  br label %10, !dbg !1866

10:                                               ; preds = %26, %6
  %.0 = phi i32 [ 0, %6 ], [ %27, %26 ], !dbg !1868
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1855, metadata !DIExpression()), !dbg !1856
  %exitcond = icmp ne i32 %.0, %0, !dbg !1869
  br i1 %exitcond, label %11, label %28, !dbg !1871

11:                                               ; preds = %10
  %12 = mul i32 %.01, %0, !dbg !1872
  %13 = add i32 %12, %.0, !dbg !1874
  %14 = getelementptr inbounds i16, i16* %2, i32 %13, !dbg !1875
  %15 = load i16, i16* %14, align 2, !dbg !1875, !tbaa !294
  %16 = sext i16 %15 to i32, !dbg !1876
  %17 = getelementptr inbounds i16, i16* %3, i32 %.0, !dbg !1877
  %18 = load i16, i16* %17, align 2, !dbg !1877, !tbaa !294
  %19 = sext i16 %18 to i32, !dbg !1878
  %20 = mul nsw i32 %16, %19, !dbg !1879
  %21 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1880
  %22 = load i32, i32* %21, align 4, !dbg !1881, !tbaa !1047, !idemp_war_rd !298
  %23 = add nsw i32 %22, %20, !dbg !1881
  %24 = load i32, i32* @__checkpoint_count, align 4, !dbg !1881, !idemp_checkpoint_count !298
  %25 = add i32 %24, 1, !dbg !1881, !idemp_checkpoint_count !298
  store volatile i32 %25, i32* @__checkpoint_count, align 4, !dbg !1881, !idemp_checkpoint_count !298
  store i32 %23, i32* %21, align 4, !dbg !1881, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %26, !dbg !1882

26:                                               ; preds = %11
  %27 = add i32 %.0, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %27, metadata !1855, metadata !DIExpression()), !dbg !1856
  br label %10, !dbg !1884, !llvm.loop !1885

28:                                               ; preds = %10
  br label %29, !dbg !1887

29:                                               ; preds = %28
  %30 = add i32 %.01, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i32 %30, metadata !1854, metadata !DIExpression()), !dbg !1856
  br label %5, !dbg !1889, !llvm.loop !1890

31:                                               ; preds = %5
  ret void, !dbg !1892
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix(i32, i32*, i16*, i16*) #0 !dbg !1893 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1895, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32* %1, metadata !1896, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i16* %2, metadata !1897, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i16* %3, metadata !1898, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 0, metadata !1899, metadata !DIExpression()), !dbg !1902
  br label %5, !dbg !1903

5:                                                ; preds = %38, %4
  %.02 = phi i32 [ 0, %4 ], [ %39, %38 ], !dbg !1905
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1899, metadata !DIExpression()), !dbg !1902
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1906
  br i1 %exitcond4, label %6, label %40, !dbg !1908

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1902
  br label %7, !dbg !1909

7:                                                ; preds = %35, %6
  %.01 = phi i32 [ 0, %6 ], [ %36, %35 ], !dbg !1912
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1900, metadata !DIExpression()), !dbg !1902
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1913
  br i1 %exitcond3, label %8, label %37, !dbg !1915

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1916
  %10 = add i32 %9, %.01, !dbg !1918
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1919
  store i32 0, i32* %11, align 4, !dbg !1920, !tbaa !1047
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()), !dbg !1902
  br label %12, !dbg !1921

12:                                               ; preds = %32, %8
  %.0 = phi i32 [ 0, %8 ], [ %33, %32 ], !dbg !1923
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1901, metadata !DIExpression()), !dbg !1902
  %exitcond = icmp ne i32 %.0, %0, !dbg !1924
  br i1 %exitcond, label %13, label %34, !dbg !1926

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1927
  %15 = add i32 %14, %.0, !dbg !1929
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1930
  %17 = load i16, i16* %16, align 2, !dbg !1930, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1931
  %19 = mul i32 %.0, %0, !dbg !1932
  %20 = add i32 %19, %.01, !dbg !1933
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1934
  %22 = load i16, i16* %21, align 2, !dbg !1934, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1935
  %24 = mul nsw i32 %18, %23, !dbg !1936
  %25 = mul i32 %.02, %0, !dbg !1937
  %26 = add i32 %25, %.01, !dbg !1938
  %27 = getelementptr inbounds i32, i32* %1, i32 %26, !dbg !1939
  %28 = load i32, i32* %27, align 4, !dbg !1940, !tbaa !1047, !idemp_war_rd !298
  %29 = add nsw i32 %28, %24, !dbg !1940
  %30 = load i32, i32* @__checkpoint_count, align 4, !dbg !1940, !idemp_checkpoint_count !298
  %31 = add i32 %30, 1, !dbg !1940, !idemp_checkpoint_count !298
  store volatile i32 %31, i32* @__checkpoint_count, align 4, !dbg !1940, !idemp_checkpoint_count !298
  store i32 %29, i32* %27, align 4, !dbg !1940, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %32, !dbg !1941

32:                                               ; preds = %13
  %33 = add i32 %.0, 1, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %33, metadata !1901, metadata !DIExpression()), !dbg !1902
  br label %12, !dbg !1943, !llvm.loop !1944

34:                                               ; preds = %12
  br label %35, !dbg !1946

35:                                               ; preds = %34
  %36 = add i32 %.01, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %36, metadata !1900, metadata !DIExpression()), !dbg !1902
  br label %7, !dbg !1948, !llvm.loop !1949

37:                                               ; preds = %7
  br label %38, !dbg !1951

38:                                               ; preds = %37
  %39 = add i32 %.02, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i32 %39, metadata !1899, metadata !DIExpression()), !dbg !1902
  br label %5, !dbg !1953, !llvm.loop !1954

40:                                               ; preds = %5
  ret void, !dbg !1956
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix_bitextract(i32, i32*, i16*, i16*) #0 !dbg !1957 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1959, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32* %1, metadata !1960, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i16* %2, metadata !1961, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i16* %3, metadata !1962, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 0, metadata !1963, metadata !DIExpression()), !dbg !1976
  br label %5, !dbg !1977

5:                                                ; preds = %43, %4
  %.02 = phi i32 [ 0, %4 ], [ %44, %43 ], !dbg !1978
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1963, metadata !DIExpression()), !dbg !1976
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1979
  br i1 %exitcond4, label %6, label %45, !dbg !1980

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()), !dbg !1976
  br label %7, !dbg !1981

7:                                                ; preds = %40, %6
  %.01 = phi i32 [ 0, %6 ], [ %41, %40 ], !dbg !1982
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1964, metadata !DIExpression()), !dbg !1976
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1983
  br i1 %exitcond3, label %8, label %42, !dbg !1984

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1985
  %10 = add i32 %9, %.01, !dbg !1986
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1987
  store i32 0, i32* %11, align 4, !dbg !1988, !tbaa !1047
  call void @llvm.dbg.value(metadata i32 0, metadata !1965, metadata !DIExpression()), !dbg !1976
  br label %12, !dbg !1989

12:                                               ; preds = %37, %8
  %.0 = phi i32 [ 0, %8 ], [ %38, %37 ], !dbg !1990
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1965, metadata !DIExpression()), !dbg !1976
  %exitcond = icmp ne i32 %.0, %0, !dbg !1991
  br i1 %exitcond, label %13, label %39, !dbg !1992

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1993
  %15 = add i32 %14, %.0, !dbg !1994
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1995
  %17 = load i16, i16* %16, align 2, !dbg !1995, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1996
  %19 = mul i32 %.0, %0, !dbg !1997
  %20 = add i32 %19, %.01, !dbg !1998
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1999
  %22 = load i16, i16* %21, align 2, !dbg !1999, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !2000
  %24 = mul nsw i32 %18, %23, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %24, metadata !1966, metadata !DIExpression()), !dbg !2002
  %25 = ashr i32 %24, 2, !dbg !2003
  %26 = and i32 %25, 15, !dbg !2003
  %27 = ashr i32 %24, 5, !dbg !2004
  %28 = and i32 %27, 127, !dbg !2004
  %29 = mul i32 %26, %28, !dbg !2005
  %30 = mul i32 %.02, %0, !dbg !2006
  %31 = add i32 %30, %.01, !dbg !2007
  %32 = getelementptr inbounds i32, i32* %1, i32 %31, !dbg !2008
  %33 = load i32, i32* %32, align 4, !dbg !2009, !tbaa !1047, !idemp_war_rd !298
  %34 = add i32 %33, %29, !dbg !2009
  %35 = load i32, i32* @__checkpoint_count, align 4, !dbg !2009, !idemp_checkpoint_count !298
  %36 = add i32 %35, 1, !dbg !2009, !idemp_checkpoint_count !298
  store volatile i32 %36, i32* @__checkpoint_count, align 4, !dbg !2009, !idemp_checkpoint_count !298
  store i32 %34, i32* %32, align 4, !dbg !2009, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %37, !dbg !2010

37:                                               ; preds = %13
  %38 = add i32 %.0, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %38, metadata !1965, metadata !DIExpression()), !dbg !1976
  br label %12, !dbg !2012, !llvm.loop !2013

39:                                               ; preds = %12
  br label %40, !dbg !2015

40:                                               ; preds = %39
  %41 = add i32 %.01, 1, !dbg !2016
  call void @llvm.dbg.value(metadata i32 %41, metadata !1964, metadata !DIExpression()), !dbg !1976
  br label %7, !dbg !2017, !llvm.loop !2018

42:                                               ; preds = %7
  br label %43, !dbg !2020

43:                                               ; preds = %42
  %44 = add i32 %.02, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %44, metadata !1963, metadata !DIExpression()), !dbg !1976
  br label %5, !dbg !2022, !llvm.loop !2023

45:                                               ; preds = %5
  ret void, !dbg !2025
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_init_matrix(i32, i8*, i32, %struct.MAT_PARAMS_S*) #0 !dbg !2026 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2030, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8* %1, metadata !2031, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %2, metadata !2032, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %3, metadata !2033, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 0, metadata !2034, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 1, metadata !2037, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 0, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 0, metadata !2040, metadata !DIExpression()), !dbg !2041
  %5 = icmp eq i32 %2, 0, !dbg !2042
  br i1 %5, label %6, label %._crit_edge, !dbg !2044

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2044

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !2032, metadata !DIExpression()), !dbg !2041
  br label %7, !dbg !2045

7:                                                ; preds = %6, %._crit_edge
  %.03 = phi i32 [ 1, %6 ], [ %2, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2032, metadata !DIExpression()), !dbg !2041
  br label %8, !dbg !2046

8:                                                ; preds = %10, %7
  %.01 = phi i32 [ 0, %7 ], [ %11, %10 ], !dbg !2041
  %.0 = phi i32 [ 0, %7 ], [ %14, %10 ], !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2040, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2039, metadata !DIExpression()), !dbg !2041
  %9 = icmp ult i32 %.0, %0, !dbg !2047
  br i1 %9, label %10, label %15, !dbg !2046

10:                                               ; preds = %8
  %11 = add i32 %.01, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %11, metadata !2039, metadata !DIExpression()), !dbg !2041
  %12 = mul i32 %11, %11, !dbg !2050
  %13 = mul i32 %12, 2, !dbg !2051
  %14 = mul i32 %13, 4, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %14, metadata !2040, metadata !DIExpression()), !dbg !2041
  br label %8, !dbg !2046, !llvm.loop !2053

15:                                               ; preds = %8
  %.01.lcssa = phi i32 [ %.01, %8 ], !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2039, metadata !DIExpression()), !dbg !2041
  %16 = sub i32 %.01.lcssa, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %16, metadata !2034, metadata !DIExpression()), !dbg !2041
  %17 = ptrtoint i8* %1 to i32, !dbg !2056
  %18 = sub i32 %17, 1, !dbg !2056
  %19 = and i32 %18, -4, !dbg !2056
  %20 = add i32 4, %19, !dbg !2056
  %21 = inttoptr i32 %20 to i8*, !dbg !2056
  %22 = bitcast i8* %21 to i16*, !dbg !2057
  call void @llvm.dbg.value(metadata i16* %22, metadata !2035, metadata !DIExpression()), !dbg !2041
  %23 = mul i32 %16, %16, !dbg !2058
  %24 = getelementptr inbounds i16, i16* %22, i32 %23, !dbg !2059
  call void @llvm.dbg.value(metadata i16* %24, metadata !2036, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 0, metadata !2039, metadata !DIExpression()), !dbg !2041
  br label %25, !dbg !2060

25:                                               ; preds = %52, %15
  %.05 = phi i32 [ 1, %15 ], [ %.16.lcssa, %52 ], !dbg !2062
  %.14 = phi i32 [ %.03, %15 ], [ %.2.lcssa, %52 ], !dbg !2063
  %.12 = phi i32 [ 0, %15 ], [ %53, %52 ], !dbg !2064
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2032, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2037, metadata !DIExpression()), !dbg !2041
  %exitcond7 = icmp ne i32 %.12, %16, !dbg !2065
  br i1 %exitcond7, label %26, label %54, !dbg !2067

26:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 0, metadata !2040, metadata !DIExpression()), !dbg !2041
  br label %27, !dbg !2068

27:                                               ; preds = %49, %26
  %.16 = phi i32 [ %.05, %26 ], [ %48, %49 ], !dbg !2041
  %.2 = phi i32 [ %.14, %26 ], [ %30, %49 ], !dbg !2041
  %.1 = phi i32 [ 0, %26 ], [ %50, %49 ], !dbg !2071
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2040, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2032, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2037, metadata !DIExpression()), !dbg !2041
  %exitcond = icmp ne i32 %.1, %16, !dbg !2072
  br i1 %exitcond, label %28, label %51, !dbg !2074

28:                                               ; preds = %27
  %29 = mul nsw i32 %.16, %.2, !dbg !2075
  %30 = srem i32 %29, 65536, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %30, metadata !2032, metadata !DIExpression()), !dbg !2041
  %31 = add nsw i32 %30, %.16, !dbg !2078
  %32 = trunc i32 %31 to i16, !dbg !2079
  call void @llvm.dbg.value(metadata i16 %32, metadata !2038, metadata !DIExpression()), !dbg !2041
  %33 = sext i16 %32 to i32, !dbg !2080
  %34 = and i32 %33, 65535, !dbg !2080
  %35 = trunc i32 %34 to i16, !dbg !2080
  call void @llvm.dbg.value(metadata i16 %35, metadata !2038, metadata !DIExpression()), !dbg !2041
  %36 = mul i32 %.12, %16, !dbg !2081
  %37 = add i32 %36, %.1, !dbg !2082
  %38 = getelementptr inbounds i16, i16* %24, i32 %37, !dbg !2083
  store i16 %35, i16* %38, align 2, !dbg !2084, !tbaa !294
  %39 = sext i16 %35 to i32, !dbg !2085
  %40 = add nsw i32 %39, %.16, !dbg !2086
  %41 = trunc i32 %40 to i16, !dbg !2087
  call void @llvm.dbg.value(metadata i16 %41, metadata !2038, metadata !DIExpression()), !dbg !2041
  %42 = sext i16 %41 to i32, !dbg !2088
  %43 = and i32 %42, 255, !dbg !2088
  %44 = trunc i32 %43 to i16, !dbg !2088
  call void @llvm.dbg.value(metadata i16 %44, metadata !2038, metadata !DIExpression()), !dbg !2041
  %45 = mul i32 %.12, %16, !dbg !2089
  %46 = add i32 %45, %.1, !dbg !2090
  %47 = getelementptr inbounds i16, i16* %22, i32 %46, !dbg !2091
  store i16 %44, i16* %47, align 2, !dbg !2092, !tbaa !294
  %48 = add nsw i32 %.16, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %48, metadata !2037, metadata !DIExpression()), !dbg !2041
  br label %49, !dbg !2094

49:                                               ; preds = %28
  %50 = add i32 %.1, 1, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %50, metadata !2040, metadata !DIExpression()), !dbg !2041
  br label %27, !dbg !2096, !llvm.loop !2097

51:                                               ; preds = %27
  %.16.lcssa = phi i32 [ %.16, %27 ], !dbg !2041
  %.2.lcssa = phi i32 [ %.2, %27 ], !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !2037, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2032, metadata !DIExpression()), !dbg !2041
  br label %52, !dbg !2099

52:                                               ; preds = %51
  %53 = add i32 %.12, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %53, metadata !2039, metadata !DIExpression()), !dbg !2041
  br label %25, !dbg !2101, !llvm.loop !2102

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 1, !dbg !2104
  store i16* %22, i16** %55, align 4, !dbg !2105, !tbaa !1665
  %56 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 2, !dbg !2106
  store i16* %24, i16** %56, align 4, !dbg !2107, !tbaa !1667
  %57 = mul i32 %16, %16, !dbg !2108
  %58 = getelementptr inbounds i16, i16* %24, i32 %57, !dbg !2108
  %59 = ptrtoint i16* %58 to i32, !dbg !2108
  %60 = sub i32 %59, 1, !dbg !2108
  %61 = and i32 %60, -4, !dbg !2108
  %62 = add i32 4, %61, !dbg !2108
  %63 = inttoptr i32 %62 to i8*, !dbg !2108
  %64 = bitcast i8* %63 to i32*, !dbg !2109
  %65 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 3, !dbg !2110
  store i32* %64, i32** %65, align 4, !dbg !2111, !tbaa !1663
  %66 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 0, !dbg !2112
  store i32 %16, i32* %66, align 4, !dbg !2113, !tbaa !1661
  ret i32 %16, !dbg !2114
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_state(i32, i8*, i16 signext, i16 signext, i16 signext, i16 zeroext) #0 !dbg !2115 {
  %7 = alloca [8 x i32], align 4
  %8 = alloca [8 x i32], align 4
  %9 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2119, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8* %1, metadata !2120, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i16 %2, metadata !2121, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i16 %3, metadata !2122, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i16 %4, metadata !2123, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i16 %5, metadata !2124, metadata !DIExpression()), !dbg !2136
  %10 = bitcast [8 x i32]* %7 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !2137
  call void @llvm.dbg.declare(metadata [8 x i32]* %7, metadata !2125, metadata !DIExpression()), !dbg !2138
  %11 = bitcast [8 x i32]* %8 to i8*, !dbg !2139
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %11) #4, !dbg !2139
  call void @llvm.dbg.declare(metadata [8 x i32]* %8, metadata !2129, metadata !DIExpression()), !dbg !2140
  %12 = bitcast i8** %9 to i8*, !dbg !2141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2141
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2130, metadata !DIExpression()), !dbg !2142
  store i8* %1, i8** %9, align 4, !dbg !2142, !tbaa !335
  call void @llvm.dbg.value(metadata i32 0, metadata !2131, metadata !DIExpression()), !dbg !2136
  br label %13, !dbg !2143

13:                                               ; preds = %17, %6
  %.0 = phi i32 [ 0, %6 ], [ %18, %17 ], !dbg !2145
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2131, metadata !DIExpression()), !dbg !2136
  %exitcond3 = icmp ne i32 %.0, 8, !dbg !2146
  br i1 %exitcond3, label %14, label %19, !dbg !2148

14:                                               ; preds = %13
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.0, !dbg !2149
  store i32 0, i32* %15, align 4, !dbg !2151, !tbaa !1047
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.0, !dbg !2152
  store i32 0, i32* %16, align 4, !dbg !2153, !tbaa !1047
  br label %17, !dbg !2154

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %.0, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %18, metadata !2131, metadata !DIExpression()), !dbg !2136
  br label %13, !dbg !2156, !llvm.loop !2157

19:                                               ; preds = %13
  br label %20, !dbg !2159

20:                                               ; preds = %25, %19
  %21 = load i8*, i8** %9, align 4, !dbg !2160, !tbaa !335, !idemp_war_rd !298
  %22 = load i8, i8* %21, align 1, !dbg !2161, !tbaa !2162
  %23 = zext i8 %22 to i32, !dbg !2161
  %24 = icmp ne i32 %23, 0, !dbg !2163
  br i1 %24, label %25, label %35, !dbg !2159

25:                                               ; preds = %20
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2164
  %27 = load i32, i32* @__checkpoint_count, align 4, !dbg !2165, !idemp_checkpoint_count !298
  %28 = add i32 %27, 1, !dbg !2165, !idemp_checkpoint_count !298
  store volatile i32 %28, i32* @__checkpoint_count, align 4, !dbg !2165, !idemp_checkpoint_count !298
  %29 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %26), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %29, metadata !2132, metadata !DIExpression()), !dbg !2166
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %29, !dbg !2167
  %31 = load i32, i32* %30, align 4, !dbg !2168, !tbaa !1047, !idemp_war_rd !298
  %32 = add i32 %31, 1, !dbg !2168
  %33 = load i32, i32* @__checkpoint_count, align 4, !dbg !2168, !idemp_checkpoint_count !298
  %34 = add i32 %33, 1, !dbg !2168, !idemp_checkpoint_count !298
  store volatile i32 %34, i32* @__checkpoint_count, align 4, !dbg !2168, !idemp_checkpoint_count !298
  store i32 %32, i32* %30, align 4, !dbg !2168, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %20, !dbg !2159, !llvm.loop !2169

35:                                               ; preds = %20
  %36 = load i32, i32* @__checkpoint_count, align 4, !dbg !2171, !idemp_checkpoint_count !298
  %37 = add i32 %36, 1, !dbg !2171, !idemp_checkpoint_count !298
  store volatile i32 %37, i32* @__checkpoint_count, align 4, !dbg !2171, !idemp_checkpoint_count !298
  store i8* %1, i8** %9, align 4, !dbg !2171, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  br label %38, !dbg !2172

38:                                               ; preds = %57, %35
  %39 = load i8*, i8** %9, align 4, !dbg !2173, !tbaa !335, !idemp_war_rd !298
  %40 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2174
  %41 = icmp ult i8* %39, %40, !dbg !2175
  br i1 %41, label %42, label %63, !dbg !2172

42:                                               ; preds = %38
  %43 = load i8*, i8** %9, align 4, !dbg !2176, !tbaa !335
  %44 = load i8, i8* %43, align 1, !dbg !2179, !tbaa !2162
  %45 = zext i8 %44 to i32, !dbg !2179
  %46 = icmp ne i32 %45, 44, !dbg !2180
  br i1 %46, label %47, label %._crit_edge, !dbg !2181

._crit_edge:                                      ; preds = %42
  br label %57, !dbg !2181

47:                                               ; preds = %42
  %48 = trunc i16 %2 to i8, !dbg !2182
  %49 = zext i8 %48 to i32, !dbg !2182
  %50 = load i8*, i8** %9, align 4, !dbg !2183, !tbaa !335
  %51 = load i8, i8* %50, align 1, !dbg !2184, !tbaa !2162, !idemp_war_rd !298
  %52 = zext i8 %51 to i32, !dbg !2184
  %53 = xor i32 %52, %49, !dbg !2184
  %54 = trunc i32 %53 to i8, !dbg !2184
  %55 = load i32, i32* @__checkpoint_count, align 4, !dbg !2184, !idemp_checkpoint_count !298
  %56 = add i32 %55, 1, !dbg !2184, !idemp_checkpoint_count !298
  store volatile i32 %56, i32* @__checkpoint_count, align 4, !dbg !2184, !idemp_checkpoint_count !298
  store i8 %54, i8* %50, align 1, !dbg !2184, !tbaa !2162, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %57, !dbg !2185

57:                                               ; preds = %47, %._crit_edge
  %58 = sext i16 %4 to i32, !dbg !2186
  %59 = load i8*, i8** %9, align 4, !dbg !2187, !tbaa !335, !idemp_war_rd !298
  %60 = getelementptr inbounds i8, i8* %59, i32 %58, !dbg !2187
  %61 = load i32, i32* @__checkpoint_count, align 4, !dbg !2187, !idemp_checkpoint_count !298
  %62 = add i32 %61, 1, !dbg !2187, !idemp_checkpoint_count !298
  store volatile i32 %62, i32* @__checkpoint_count, align 4, !dbg !2187, !idemp_checkpoint_count !298
  store i8* %60, i8** %9, align 4, !dbg !2187, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %38, !dbg !2172, !llvm.loop !2188

63:                                               ; preds = %38
  %64 = load i32, i32* @__checkpoint_count, align 4, !dbg !2190, !idemp_checkpoint_count !298
  %65 = add i32 %64, 1, !dbg !2190, !idemp_checkpoint_count !298
  store volatile i32 %65, i32* @__checkpoint_count, align 4, !dbg !2190, !idemp_checkpoint_count !298
  store i8* %1, i8** %9, align 4, !dbg !2190, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %66, !dbg !2191

66:                                               ; preds = %71, %63
  %67 = load i8*, i8** %9, align 4, !dbg !2192, !tbaa !335, !idemp_war_rd !298
  %68 = load i8, i8* %67, align 1, !dbg !2193, !tbaa !2162
  %69 = zext i8 %68 to i32, !dbg !2193
  %70 = icmp ne i32 %69, 0, !dbg !2194
  br i1 %70, label %71, label %81, !dbg !2191

71:                                               ; preds = %66
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2195
  %73 = load i32, i32* @__checkpoint_count, align 4, !dbg !2196, !idemp_checkpoint_count !298
  %74 = add i32 %73, 1, !dbg !2196, !idemp_checkpoint_count !298
  store volatile i32 %74, i32* @__checkpoint_count, align 4, !dbg !2196, !idemp_checkpoint_count !298
  %75 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %72), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %75, metadata !2134, metadata !DIExpression()), !dbg !2197
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %75, !dbg !2198
  %77 = load i32, i32* %76, align 4, !dbg !2199, !tbaa !1047, !idemp_war_rd !298
  %78 = add i32 %77, 1, !dbg !2199
  %79 = load i32, i32* @__checkpoint_count, align 4, !dbg !2199, !idemp_checkpoint_count !298
  %80 = add i32 %79, 1, !dbg !2199, !idemp_checkpoint_count !298
  store volatile i32 %80, i32* @__checkpoint_count, align 4, !dbg !2199, !idemp_checkpoint_count !298
  store i32 %78, i32* %76, align 4, !dbg !2199, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %66, !dbg !2191, !llvm.loop !2200

81:                                               ; preds = %66
  %82 = load i32, i32* @__checkpoint_count, align 4, !dbg !2202, !idemp_checkpoint_count !298
  %83 = add i32 %82, 1, !dbg !2202, !idemp_checkpoint_count !298
  store volatile i32 %83, i32* @__checkpoint_count, align 4, !dbg !2202, !idemp_checkpoint_count !298
  store i8* %1, i8** %9, align 4, !dbg !2202, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  br label %84, !dbg !2203

84:                                               ; preds = %103, %81
  %85 = load i8*, i8** %9, align 4, !dbg !2204, !tbaa !335
  %86 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2205
  %87 = icmp ult i8* %85, %86, !dbg !2206
  br i1 %87, label %88, label %109, !dbg !2203

88:                                               ; preds = %84
  %89 = load i8*, i8** %9, align 4, !dbg !2207, !tbaa !335
  %90 = load i8, i8* %89, align 1, !dbg !2210, !tbaa !2162
  %91 = zext i8 %90 to i32, !dbg !2210
  %92 = icmp ne i32 %91, 44, !dbg !2211
  br i1 %92, label %93, label %._crit_edge2, !dbg !2212

._crit_edge2:                                     ; preds = %88
  br label %103, !dbg !2212

93:                                               ; preds = %88
  %94 = trunc i16 %3 to i8, !dbg !2213
  %95 = zext i8 %94 to i32, !dbg !2213
  %96 = load i8*, i8** %9, align 4, !dbg !2214, !tbaa !335
  %97 = load i8, i8* %96, align 1, !dbg !2215, !tbaa !2162, !idemp_war_rd !298
  %98 = zext i8 %97 to i32, !dbg !2215
  %99 = xor i32 %98, %95, !dbg !2215
  %100 = trunc i32 %99 to i8, !dbg !2215
  %101 = load i32, i32* @__checkpoint_count, align 4, !dbg !2215, !idemp_checkpoint_count !298
  %102 = add i32 %101, 1, !dbg !2215, !idemp_checkpoint_count !298
  store volatile i32 %102, i32* @__checkpoint_count, align 4, !dbg !2215, !idemp_checkpoint_count !298
  store i8 %100, i8* %96, align 1, !dbg !2215, !tbaa !2162, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %103, !dbg !2216

103:                                              ; preds = %93, %._crit_edge2
  %104 = sext i16 %4 to i32, !dbg !2217
  %105 = load i8*, i8** %9, align 4, !dbg !2218, !tbaa !335, !idemp_war_rd !298
  %106 = getelementptr inbounds i8, i8* %105, i32 %104, !dbg !2218
  %107 = load i32, i32* @__checkpoint_count, align 4, !dbg !2218, !idemp_checkpoint_count !298
  %108 = add i32 %107, 1, !dbg !2218, !idemp_checkpoint_count !298
  store volatile i32 %108, i32* @__checkpoint_count, align 4, !dbg !2218, !idemp_checkpoint_count !298
  store i8* %106, i8** %9, align 4, !dbg !2218, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %84, !dbg !2203, !llvm.loop !2219

109:                                              ; preds = %84
  call void @llvm.dbg.value(metadata i32 0, metadata !2131, metadata !DIExpression()), !dbg !2136
  br label %110, !dbg !2221

110:                                              ; preds = %122, %109
  %.01 = phi i16 [ %5, %109 ], [ %121, %122 ]
  %.1 = phi i32 [ 0, %109 ], [ %123, %122 ], !dbg !2223
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2124, metadata !DIExpression()), !dbg !2136
  %exitcond = icmp ne i32 %.1, 8, !dbg !2224
  br i1 %exitcond, label %111, label %124, !dbg !2226

111:                                              ; preds = %110
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.1, !dbg !2227
  %113 = load i32, i32* %112, align 4, !dbg !2227, !tbaa !1047
  %114 = load i32, i32* @__checkpoint_count, align 4, !dbg !2229, !idemp_checkpoint_count !298
  %115 = add i32 %114, 1, !dbg !2229, !idemp_checkpoint_count !298
  store volatile i32 %115, i32* @__checkpoint_count, align 4, !dbg !2229, !idemp_checkpoint_count !298
  %116 = call arm_aapcscc zeroext i16 @crcu32(i32 %113, i16 zeroext %.01), !dbg !2229
  call void @llvm.dbg.value(metadata i16 %116, metadata !2124, metadata !DIExpression()), !dbg !2136
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.1, !dbg !2230
  %118 = load i32, i32* %117, align 4, !dbg !2230, !tbaa !1047
  %119 = load i32, i32* @__checkpoint_count, align 4, !dbg !2231, !idemp_checkpoint_count !298
  %120 = add i32 %119, 1, !dbg !2231, !idemp_checkpoint_count !298
  store volatile i32 %120, i32* @__checkpoint_count, align 4, !dbg !2231, !idemp_checkpoint_count !298
  %121 = call arm_aapcscc zeroext i16 @crcu32(i32 %118, i16 zeroext %116), !dbg !2231
  call void @llvm.dbg.value(metadata i16 %121, metadata !2124, metadata !DIExpression()), !dbg !2136
  br label %122, !dbg !2232

122:                                              ; preds = %111
  %123 = add nuw nsw i32 %.1, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i32 %123, metadata !2131, metadata !DIExpression()), !dbg !2136
  br label %110, !dbg !2234, !llvm.loop !2235

124:                                              ; preds = %110
  %.01.lcssa = phi i16 [ %.01, %110 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2124, metadata !DIExpression()), !dbg !2136
  %125 = bitcast i8** %9 to i8*, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %125) #4, !dbg !2237
  %126 = bitcast [8 x i32]* %8 to i8*, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %126) #4, !dbg !2237
  %127 = bitcast [8 x i32]* %7 to i8*, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %127) #4, !dbg !2237
  ret i16 %.01.lcssa, !dbg !2238
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_state_transition(i8**, i32*) #0 !dbg !2239 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2245, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32* %1, metadata !2246, metadata !DIExpression()), !dbg !2250
  %3 = load i8*, i8** %0, align 4, !dbg !2251, !tbaa !335, !idemp_war_rd !298
  call void @llvm.dbg.value(metadata i8* %3, metadata !2247, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 0, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %4, !dbg !2252

4:                                                ; preds = %176, %2
  %.01 = phi i8* [ %3, %2 ], [ %177, %176 ], !dbg !2250
  %.0 = phi i32 [ 0, %2 ], [ %.13, %176 ], !dbg !2253
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2249, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2247, metadata !DIExpression()), !dbg !2250
  %5 = load i8, i8* %.01, align 1, !dbg !2254, !tbaa !2162
  %6 = zext i8 %5 to i32, !dbg !2254
  %7 = icmp ne i32 %6, 0, !dbg !2254
  br i1 %7, label %8, label %._crit_edge, !dbg !2257

._crit_edge:                                      ; preds = %4
  br label %10, !dbg !2257

8:                                                ; preds = %4
  %9 = icmp ne i32 %.0, 1, !dbg !2258
  br label %10

10:                                               ; preds = %8, %._crit_edge
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %8 ], !dbg !2259
  br i1 %11, label %12, label %._crit_edge17, !dbg !2260

._crit_edge17:                                    ; preds = %10
  %.01.lcssa = phi i8* [ %.01, %10 ], !dbg !2250
  %.0.lcssa = phi i32 [ %.0, %10 ], !dbg !2253
  call void @llvm.dbg.value(metadata i8* %.01.lcssa, metadata !2247, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %178, !dbg !2260

12:                                               ; preds = %10
  %13 = load i8, i8* %.01, align 1, !dbg !2261, !tbaa !2162
  call void @llvm.dbg.value(metadata i8 %13, metadata !2248, metadata !DIExpression()), !dbg !2250
  %14 = zext i8 %13 to i32, !dbg !2263
  %15 = icmp eq i32 %14, 44, !dbg !2265
  br i1 %15, label %16, label %18, !dbg !2266

16:                                               ; preds = %12
  %.01.lcssa29 = phi i8* [ %.01, %12 ], !dbg !2250
  %.0.lcssa27 = phi i32 [ %.0, %12 ], !dbg !2253
  call void @llvm.dbg.value(metadata i8* %.01.lcssa29, metadata !2247, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %.0.lcssa27, metadata !2249, metadata !DIExpression()), !dbg !2250
  %17 = getelementptr inbounds i8, i8* %.01.lcssa29, i32 1, !dbg !2267
  call void @llvm.dbg.value(metadata i8* %17, metadata !2247, metadata !DIExpression()), !dbg !2250
  br label %178, !dbg !2269

18:                                               ; preds = %12
  br label %NodeBlock15

NodeBlock15:                                      ; preds = %18
  %Pivot16 = icmp slt i32 %.0, 4
  br i1 %Pivot16, label %NodeBlock5, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %Pivot14 = icmp slt i32 %.0, 6
  br i1 %Pivot14, label %NodeBlock7, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %Pivot12 = icmp slt i32 %.0, 7
  br i1 %Pivot12, label %144, label %LeafBlock9

LeafBlock9:                                       ; preds = %NodeBlock11
  %SwitchLeaf10 = icmp eq i32 %.0, 7
  br i1 %SwitchLeaf10, label %162, label %LeafBlock9.NewDefault_crit_edge

LeafBlock9.NewDefault_crit_edge:                  ; preds = %LeafBlock9
  br label %NewDefault

NodeBlock7:                                       ; preds = %NodeBlock13
  %Pivot8 = icmp slt i32 %.0, 5
  br i1 %Pivot8, label %78, label %100

NodeBlock5:                                       ; preds = %NodeBlock15
  %Pivot6 = icmp slt i32 %.0, 2
  br i1 %Pivot6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock5
  %Pivot = icmp slt i32 %.0, 3
  br i1 %Pivot, label %50, label %125

LeafBlock:                                        ; preds = %NodeBlock5
  %SwitchLeaf = icmp eq i32 %.0, 0
  br i1 %SwitchLeaf, label %19, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

19:                                               ; preds = %LeafBlock
  %20 = load i32, i32* @__checkpoint_count, align 4, !dbg !2270, !idemp_checkpoint_count !298
  %21 = add i32 %20, 1, !dbg !2270, !idemp_checkpoint_count !298
  store volatile i32 %21, i32* @__checkpoint_count, align 4, !dbg !2270, !idemp_checkpoint_count !298
  %22 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2270
  %23 = icmp ne i8 %22, 0, !dbg !2270
  br i1 %23, label %24, label %25, !dbg !2273

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 4, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %44, !dbg !2274

25:                                               ; preds = %19
  %26 = zext i8 %13 to i32, !dbg !2276
  %27 = icmp eq i32 %26, 43, !dbg !2278
  br i1 %27, label %._crit_edge18, label %28, !dbg !2279

._crit_edge18:                                    ; preds = %25
  br label %31, !dbg !2279

28:                                               ; preds = %25
  %29 = zext i8 %13 to i32, !dbg !2280
  %30 = icmp eq i32 %29, 45, !dbg !2281
  br i1 %30, label %._crit_edge19, label %32, !dbg !2282

._crit_edge19:                                    ; preds = %28
  br label %31, !dbg !2282

31:                                               ; preds = %._crit_edge19, %._crit_edge18
  call void @llvm.dbg.value(metadata i32 2, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %43, !dbg !2283

32:                                               ; preds = %28
  %33 = zext i8 %13 to i32, !dbg !2285
  %34 = icmp eq i32 %33, 46, !dbg !2287
  br i1 %34, label %35, label %36, !dbg !2288

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 5, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %42, !dbg !2289

36:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2250
  %37 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2291
  %38 = load i32, i32* %37, align 4, !dbg !2293, !tbaa !1047, !idemp_war_rd !298
  %39 = add i32 %38, 1, !dbg !2293
  %40 = load i32, i32* @__checkpoint_count, align 4, !dbg !2293, !idemp_checkpoint_count !298
  %41 = add i32 %40, 1, !dbg !2293, !idemp_checkpoint_count !298
  store volatile i32 %41, i32* @__checkpoint_count, align 4, !dbg !2293, !idemp_checkpoint_count !298
  store i32 %39, i32* %37, align 4, !dbg !2293, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %42

42:                                               ; preds = %36, %35
  %.1 = phi i32 [ 5, %35 ], [ 1, %36 ], !dbg !2294
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %43

43:                                               ; preds = %42, %31
  %.2 = phi i32 [ 2, %31 ], [ %.1, %42 ], !dbg !2295
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %44

44:                                               ; preds = %43, %24
  %.3 = phi i32 [ 4, %24 ], [ %.2, %43 ], !dbg !2296
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2249, metadata !DIExpression()), !dbg !2250
  %45 = getelementptr inbounds i32, i32* %1, i32 0, !dbg !2297
  %46 = load i32, i32* %45, align 4, !dbg !2298, !tbaa !1047, !idemp_war_rd !298
  %47 = add i32 %46, 1, !dbg !2298
  %48 = load i32, i32* @__checkpoint_count, align 4, !dbg !2298, !idemp_checkpoint_count !298
  %49 = add i32 %48, 1, !dbg !2298, !idemp_checkpoint_count !298
  store volatile i32 %49, i32* @__checkpoint_count, align 4, !dbg !2298, !idemp_checkpoint_count !298
  store i32 %47, i32* %45, align 4, !dbg !2298, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %175, !dbg !2299

50:                                               ; preds = %NodeBlock
  %51 = load i32, i32* @__checkpoint_count, align 4, !dbg !2300, !idemp_checkpoint_count !298
  %52 = add i32 %51, 1, !dbg !2300, !idemp_checkpoint_count !298
  store volatile i32 %52, i32* @__checkpoint_count, align 4, !dbg !2300, !idemp_checkpoint_count !298
  %53 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2300
  %54 = icmp ne i8 %53, 0, !dbg !2300
  br i1 %54, label %55, label %61, !dbg !2302

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 4, metadata !2249, metadata !DIExpression()), !dbg !2250
  %56 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2303
  %57 = load i32, i32* %56, align 4, !dbg !2305, !tbaa !1047, !idemp_war_rd !298
  %58 = add i32 %57, 1, !dbg !2305
  %59 = load i32, i32* @__checkpoint_count, align 4, !dbg !2305, !idemp_checkpoint_count !298
  %60 = add i32 %59, 1, !dbg !2305, !idemp_checkpoint_count !298
  store volatile i32 %60, i32* @__checkpoint_count, align 4, !dbg !2305, !idemp_checkpoint_count !298
  store i32 %58, i32* %56, align 4, !dbg !2305, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %77, !dbg !2306

61:                                               ; preds = %50
  %62 = zext i8 %13 to i32, !dbg !2307
  %63 = icmp eq i32 %62, 46, !dbg !2309
  br i1 %63, label %64, label %70, !dbg !2310

64:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 5, metadata !2249, metadata !DIExpression()), !dbg !2250
  %65 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2311
  %66 = load i32, i32* %65, align 4, !dbg !2313, !tbaa !1047, !idemp_war_rd !298
  %67 = add i32 %66, 1, !dbg !2313
  %68 = load i32, i32* @__checkpoint_count, align 4, !dbg !2313, !idemp_checkpoint_count !298
  %69 = add i32 %68, 1, !dbg !2313, !idemp_checkpoint_count !298
  store volatile i32 %69, i32* @__checkpoint_count, align 4, !dbg !2313, !idemp_checkpoint_count !298
  store i32 %67, i32* %65, align 4, !dbg !2313, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %76, !dbg !2314

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2250
  %71 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2315
  %72 = load i32, i32* %71, align 4, !dbg !2317, !tbaa !1047, !idemp_war_rd !298
  %73 = add i32 %72, 1, !dbg !2317
  %74 = load i32, i32* @__checkpoint_count, align 4, !dbg !2317, !idemp_checkpoint_count !298
  %75 = add i32 %74, 1, !dbg !2317, !idemp_checkpoint_count !298
  store volatile i32 %75, i32* @__checkpoint_count, align 4, !dbg !2317, !idemp_checkpoint_count !298
  store i32 %73, i32* %71, align 4, !dbg !2317, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %76

76:                                               ; preds = %70, %64
  %.4 = phi i32 [ 5, %64 ], [ 1, %70 ], !dbg !2318
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %77

77:                                               ; preds = %76, %55
  %.5 = phi i32 [ 4, %55 ], [ %.4, %76 ], !dbg !2319
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %175, !dbg !2320

78:                                               ; preds = %NodeBlock7
  %79 = zext i8 %13 to i32, !dbg !2321
  %80 = icmp eq i32 %79, 46, !dbg !2323
  br i1 %80, label %81, label %87, !dbg !2324

81:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i32 5, metadata !2249, metadata !DIExpression()), !dbg !2250
  %82 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2325
  %83 = load i32, i32* %82, align 4, !dbg !2327, !tbaa !1047, !idemp_war_rd !298
  %84 = add i32 %83, 1, !dbg !2327
  %85 = load i32, i32* @__checkpoint_count, align 4, !dbg !2327, !idemp_checkpoint_count !298
  %86 = add i32 %85, 1, !dbg !2327, !idemp_checkpoint_count !298
  store volatile i32 %86, i32* @__checkpoint_count, align 4, !dbg !2327, !idemp_checkpoint_count !298
  store i32 %84, i32* %82, align 4, !dbg !2327, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %99, !dbg !2328

87:                                               ; preds = %78
  %88 = load i32, i32* @__checkpoint_count, align 4, !dbg !2329, !idemp_checkpoint_count !298
  %89 = add i32 %88, 1, !dbg !2329, !idemp_checkpoint_count !298
  store volatile i32 %89, i32* @__checkpoint_count, align 4, !dbg !2329, !idemp_checkpoint_count !298
  %90 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2329
  %91 = icmp ne i8 %90, 0, !dbg !2329
  br i1 %91, label %._crit_edge20, label %92, !dbg !2331

._crit_edge20:                                    ; preds = %87
  br label %98, !dbg !2331

92:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2250
  %93 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2332
  %94 = load i32, i32* %93, align 4, !dbg !2334, !tbaa !1047, !idemp_war_rd !298
  %95 = add i32 %94, 1, !dbg !2334
  %96 = load i32, i32* @__checkpoint_count, align 4, !dbg !2334, !idemp_checkpoint_count !298
  %97 = add i32 %96, 1, !dbg !2334, !idemp_checkpoint_count !298
  store volatile i32 %97, i32* @__checkpoint_count, align 4, !dbg !2334, !idemp_checkpoint_count !298
  store i32 %95, i32* %93, align 4, !dbg !2334, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %98, !dbg !2335

98:                                               ; preds = %92, %._crit_edge20
  %.6 = phi i32 [ %.0, %._crit_edge20 ], [ 1, %92 ], !dbg !2250
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %99

99:                                               ; preds = %98, %81
  %.7 = phi i32 [ 5, %81 ], [ %.6, %98 ], !dbg !2250
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %175, !dbg !2336

100:                                              ; preds = %NodeBlock7
  %101 = zext i8 %13 to i32, !dbg !2337
  %102 = icmp eq i32 %101, 69, !dbg !2339
  br i1 %102, label %._crit_edge21, label %103, !dbg !2340

._crit_edge21:                                    ; preds = %100
  br label %106, !dbg !2340

103:                                              ; preds = %100
  %104 = zext i8 %13 to i32, !dbg !2341
  %105 = icmp eq i32 %104, 101, !dbg !2342
  br i1 %105, label %._crit_edge22, label %112, !dbg !2343

._crit_edge22:                                    ; preds = %103
  br label %106, !dbg !2343

106:                                              ; preds = %._crit_edge22, %._crit_edge21
  call void @llvm.dbg.value(metadata i32 3, metadata !2249, metadata !DIExpression()), !dbg !2250
  %107 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2344
  %108 = load i32, i32* %107, align 4, !dbg !2346, !tbaa !1047, !idemp_war_rd !298
  %109 = add i32 %108, 1, !dbg !2346
  %110 = load i32, i32* @__checkpoint_count, align 4, !dbg !2346, !idemp_checkpoint_count !298
  %111 = add i32 %110, 1, !dbg !2346, !idemp_checkpoint_count !298
  store volatile i32 %111, i32* @__checkpoint_count, align 4, !dbg !2346, !idemp_checkpoint_count !298
  store i32 %109, i32* %107, align 4, !dbg !2346, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %124, !dbg !2347

112:                                              ; preds = %103
  %113 = load i32, i32* @__checkpoint_count, align 4, !dbg !2348, !idemp_checkpoint_count !298
  %114 = add i32 %113, 1, !dbg !2348, !idemp_checkpoint_count !298
  store volatile i32 %114, i32* @__checkpoint_count, align 4, !dbg !2348, !idemp_checkpoint_count !298
  %115 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2348
  %116 = icmp ne i8 %115, 0, !dbg !2348
  br i1 %116, label %._crit_edge23, label %117, !dbg !2350

._crit_edge23:                                    ; preds = %112
  br label %123, !dbg !2350

117:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2250
  %118 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2351
  %119 = load i32, i32* %118, align 4, !dbg !2353, !tbaa !1047, !idemp_war_rd !298
  %120 = add i32 %119, 1, !dbg !2353
  %121 = load i32, i32* @__checkpoint_count, align 4, !dbg !2353, !idemp_checkpoint_count !298
  %122 = add i32 %121, 1, !dbg !2353, !idemp_checkpoint_count !298
  store volatile i32 %122, i32* @__checkpoint_count, align 4, !dbg !2353, !idemp_checkpoint_count !298
  store i32 %120, i32* %118, align 4, !dbg !2353, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %123, !dbg !2354

123:                                              ; preds = %117, %._crit_edge23
  %.8 = phi i32 [ %.0, %._crit_edge23 ], [ 1, %117 ], !dbg !2250
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %124

124:                                              ; preds = %123, %106
  %.9 = phi i32 [ 3, %106 ], [ %.8, %123 ], !dbg !2250
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %175, !dbg !2355

125:                                              ; preds = %NodeBlock
  %126 = zext i8 %13 to i32, !dbg !2356
  %127 = icmp eq i32 %126, 43, !dbg !2358
  br i1 %127, label %._crit_edge24, label %128, !dbg !2359

._crit_edge24:                                    ; preds = %125
  br label %131, !dbg !2359

128:                                              ; preds = %125
  %129 = zext i8 %13 to i32, !dbg !2360
  %130 = icmp eq i32 %129, 45, !dbg !2361
  br i1 %130, label %._crit_edge25, label %137, !dbg !2362

._crit_edge25:                                    ; preds = %128
  br label %131, !dbg !2362

131:                                              ; preds = %._crit_edge25, %._crit_edge24
  call void @llvm.dbg.value(metadata i32 6, metadata !2249, metadata !DIExpression()), !dbg !2250
  %132 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2363
  %133 = load i32, i32* %132, align 4, !dbg !2365, !tbaa !1047, !idemp_war_rd !298
  %134 = add i32 %133, 1, !dbg !2365
  %135 = load i32, i32* @__checkpoint_count, align 4, !dbg !2365, !idemp_checkpoint_count !298
  %136 = add i32 %135, 1, !dbg !2365, !idemp_checkpoint_count !298
  store volatile i32 %136, i32* @__checkpoint_count, align 4, !dbg !2365, !idemp_checkpoint_count !298
  store i32 %134, i32* %132, align 4, !dbg !2365, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %143, !dbg !2366

137:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2250
  %138 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2367
  %139 = load i32, i32* %138, align 4, !dbg !2369, !tbaa !1047, !idemp_war_rd !298
  %140 = add i32 %139, 1, !dbg !2369
  %141 = load i32, i32* @__checkpoint_count, align 4, !dbg !2369, !idemp_checkpoint_count !298
  %142 = add i32 %141, 1, !dbg !2369, !idemp_checkpoint_count !298
  store volatile i32 %142, i32* @__checkpoint_count, align 4, !dbg !2369, !idemp_checkpoint_count !298
  store i32 %140, i32* %138, align 4, !dbg !2369, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %143

143:                                              ; preds = %137, %131
  %.10 = phi i32 [ 6, %131 ], [ 1, %137 ], !dbg !2370
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %175, !dbg !2371

144:                                              ; preds = %NodeBlock11
  %145 = load i32, i32* @__checkpoint_count, align 4, !dbg !2372, !idemp_checkpoint_count !298
  %146 = add i32 %145, 1, !dbg !2372, !idemp_checkpoint_count !298
  store volatile i32 %146, i32* @__checkpoint_count, align 4, !dbg !2372, !idemp_checkpoint_count !298
  %147 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2372
  %148 = icmp ne i8 %147, 0, !dbg !2372
  br i1 %148, label %149, label %155, !dbg !2374

149:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i32 7, metadata !2249, metadata !DIExpression()), !dbg !2250
  %150 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2375
  %151 = load i32, i32* %150, align 4, !dbg !2377, !tbaa !1047, !idemp_war_rd !298
  %152 = add i32 %151, 1, !dbg !2377
  %153 = load i32, i32* @__checkpoint_count, align 4, !dbg !2377, !idemp_checkpoint_count !298
  %154 = add i32 %153, 1, !dbg !2377, !idemp_checkpoint_count !298
  store volatile i32 %154, i32* @__checkpoint_count, align 4, !dbg !2377, !idemp_checkpoint_count !298
  store i32 %152, i32* %150, align 4, !dbg !2377, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %161, !dbg !2378

155:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2250
  %156 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2379
  %157 = load i32, i32* %156, align 4, !dbg !2381, !tbaa !1047, !idemp_war_rd !298
  %158 = add i32 %157, 1, !dbg !2381
  %159 = load i32, i32* @__checkpoint_count, align 4, !dbg !2381, !idemp_checkpoint_count !298
  %160 = add i32 %159, 1, !dbg !2381, !idemp_checkpoint_count !298
  store volatile i32 %160, i32* @__checkpoint_count, align 4, !dbg !2381, !idemp_checkpoint_count !298
  store i32 %158, i32* %156, align 4, !dbg !2381, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %161

161:                                              ; preds = %155, %149
  %.11 = phi i32 [ 7, %149 ], [ 1, %155 ], !dbg !2382
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %175, !dbg !2383

162:                                              ; preds = %LeafBlock9
  %163 = load i32, i32* @__checkpoint_count, align 4, !dbg !2384, !idemp_checkpoint_count !298
  %164 = add i32 %163, 1, !dbg !2384, !idemp_checkpoint_count !298
  store volatile i32 %164, i32* @__checkpoint_count, align 4, !dbg !2384, !idemp_checkpoint_count !298
  %165 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2384
  %166 = icmp ne i8 %165, 0, !dbg !2384
  br i1 %166, label %._crit_edge26, label %167, !dbg !2386

._crit_edge26:                                    ; preds = %162
  br label %173, !dbg !2386

167:                                              ; preds = %162
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2250
  %168 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2387
  %169 = load i32, i32* %168, align 4, !dbg !2389, !tbaa !1047, !idemp_war_rd !298
  %170 = add i32 %169, 1, !dbg !2389
  %171 = load i32, i32* @__checkpoint_count, align 4, !dbg !2389, !idemp_checkpoint_count !298
  %172 = add i32 %171, 1, !dbg !2389, !idemp_checkpoint_count !298
  store volatile i32 %172, i32* @__checkpoint_count, align 4, !dbg !2389, !idemp_checkpoint_count !298
  store i32 %170, i32* %168, align 4, !dbg !2389, !tbaa !1047, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %173, !dbg !2390

173:                                              ; preds = %167, %._crit_edge26
  %.12 = phi i32 [ %.0, %._crit_edge26 ], [ 1, %167 ], !dbg !2250
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %175, !dbg !2391

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock9.NewDefault_crit_edge
  br label %174

174:                                              ; preds = %NewDefault
  br label %175, !dbg !2392

175:                                              ; preds = %174, %173, %161, %143, %124, %99, %77, %44
  %.13 = phi i32 [ %.0, %174 ], [ %.12, %173 ], [ %.11, %161 ], [ %.10, %143 ], [ %.9, %124 ], [ %.7, %99 ], [ %.5, %77 ], [ %.3, %44 ], !dbg !2250
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2249, metadata !DIExpression()), !dbg !2250
  br label %176, !dbg !2393

176:                                              ; preds = %175
  %177 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !2394
  call void @llvm.dbg.value(metadata i8* %177, metadata !2247, metadata !DIExpression()), !dbg !2250
  br label %4, !dbg !2395, !llvm.loop !2396

178:                                              ; preds = %16, %._crit_edge17
  %.028 = phi i32 [ %.0.lcssa27, %16 ], [ %.0.lcssa, %._crit_edge17 ]
  %.14 = phi i8* [ %17, %16 ], [ %.01.lcssa, %._crit_edge17 ], !dbg !2250
  call void @llvm.dbg.value(metadata i8* %.14, metadata !2247, metadata !DIExpression()), !dbg !2250
  %179 = load i32, i32* @__checkpoint_count, align 4, !dbg !2398, !idemp_checkpoint_count !298
  %180 = add i32 %179, 1, !dbg !2398, !idemp_checkpoint_count !298
  store volatile i32 %180, i32* @__checkpoint_count, align 4, !dbg !2398, !idemp_checkpoint_count !298
  store i8* %.14, i8** %0, align 4, !dbg !2398, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  ret i32 %.028, !dbg !2399
}

; Function Attrs: nounwind
define internal arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext) #0 !dbg !2400 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2404, metadata !DIExpression()), !dbg !2406
  %2 = zext i8 %0 to i32, !dbg !2407
  %3 = icmp sge i32 %2, 48, !dbg !2408
  %4 = zext i1 %3 to i32, !dbg !2408
  %5 = zext i8 %0 to i32, !dbg !2409
  %6 = icmp sle i32 %5, 57, !dbg !2410
  %7 = zext i1 %6 to i32, !dbg !2410
  %8 = and i32 %4, %7, !dbg !2411
  %9 = icmp ne i32 %8, 0, !dbg !2412
  %10 = zext i1 %9 to i64, !dbg !2412
  %11 = select i1 %9, i32 1, i32 0, !dbg !2412
  %12 = trunc i32 %11 to i8, !dbg !2412
  call void @llvm.dbg.value(metadata i8 %12, metadata !2405, metadata !DIExpression()), !dbg !2406
  ret i8 %12, !dbg !2413
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @core_init_state(i32, i16 signext, i8*) #0 !dbg !2414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i16 %1, metadata !2419, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %2, metadata !2420, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !2421, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* null, metadata !2424, metadata !DIExpression()), !dbg !2425
  %4 = add i32 %0, -1, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %4, metadata !2418, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()), !dbg !2425
  br label %5, !dbg !2427

5:                                                ; preds = %53, %3
  %.04 = phi i32 [ 0, %3 ], [ %.15, %53 ], !dbg !2428
  %.02 = phi i32 [ 0, %3 ], [ %.13, %53 ], !dbg !2425
  %.01 = phi i8* [ null, %3 ], [ %.1, %53 ], !dbg !2429
  %.0 = phi i16 [ %1, %3 ], [ %26, %53 ]
  call void @llvm.dbg.value(metadata i16 %.0, metadata !2419, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2421, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2422, metadata !DIExpression()), !dbg !2425
  %6 = add i32 %.02, %.04, !dbg !2430
  %7 = add i32 %6, 1, !dbg !2431
  %8 = icmp ult i32 %7, %4, !dbg !2432
  br i1 %8, label %9, label %54, !dbg !2427

9:                                                ; preds = %5
  %10 = icmp ugt i32 %.04, 0, !dbg !2433
  br i1 %10, label %11, label %._crit_edge, !dbg !2436

._crit_edge:                                      ; preds = %9
  br label %25, !dbg !2436

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()), !dbg !2425
  br label %12, !dbg !2437

12:                                               ; preds = %18, %11
  %.06 = phi i32 [ 0, %11 ], [ %19, %18 ], !dbg !2440
  call void @llvm.dbg.value(metadata i32 %.06, metadata !2423, metadata !DIExpression()), !dbg !2425
  %exitcond = icmp ne i32 %.06, %.04, !dbg !2441
  br i1 %exitcond, label %13, label %20, !dbg !2443

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.01, i32 %.06, !dbg !2444
  %15 = load i8, i8* %14, align 1, !dbg !2444, !tbaa !2162
  %16 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2445
  %17 = getelementptr inbounds i8, i8* %16, i32 %.06, !dbg !2446
  store i8 %15, i8* %17, align 1, !dbg !2447, !tbaa !2162
  br label %18, !dbg !2448

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %.06, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %19, metadata !2423, metadata !DIExpression()), !dbg !2425
  br label %12, !dbg !2450, !llvm.loop !2451

20:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2423, metadata !DIExpression()), !dbg !2425
  %21 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2453
  %22 = getelementptr inbounds i8, i8* %21, i32 %.04, !dbg !2454
  store i8 44, i8* %22, align 1, !dbg !2455, !tbaa !2162
  %23 = add nuw nsw i32 %.04, 1, !dbg !2456
  %24 = add i32 %.02, %23, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %24, metadata !2421, metadata !DIExpression()), !dbg !2425
  br label %25, !dbg !2458

25:                                               ; preds = %20, %._crit_edge
  %.13 = phi i32 [ %24, %20 ], [ %.02, %._crit_edge ], !dbg !2425
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2421, metadata !DIExpression()), !dbg !2425
  %26 = add i16 %.0, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i16 %26, metadata !2419, metadata !DIExpression()), !dbg !2425
  %27 = sext i16 %26 to i32, !dbg !2460
  %28 = and i32 %27, 7, !dbg !2461
  br label %NodeBlock7

NodeBlock7:                                       ; preds = %25
  %Pivot8 = icmp slt i32 %28, 5
  br i1 %Pivot8, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock7
  %Pivot = icmp slt i32 %28, 7
  br i1 %Pivot, label %41, label %47

LeafBlock:                                        ; preds = %NodeBlock7
  %SwitchLeaf = icmp sge i32 %28, 3
  br i1 %SwitchLeaf, label %35, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %29

29:                                               ; preds = %NewDefault
  %30 = sext i16 %26 to i32, !dbg !2462
  %31 = ashr i32 %30, 3, !dbg !2464
  %32 = and i32 %31, 3, !dbg !2465
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* @intpat, i32 0, i32 %32, !dbg !2466
  %34 = load i8*, i8** %33, align 4, !dbg !2466, !tbaa !335
  call void @llvm.dbg.value(metadata i8* %34, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 4, metadata !2422, metadata !DIExpression()), !dbg !2425
  br label %53, !dbg !2467

35:                                               ; preds = %LeafBlock
  %36 = sext i16 %26 to i32, !dbg !2468
  %37 = ashr i32 %36, 3, !dbg !2469
  %38 = and i32 %37, 3, !dbg !2470
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* @floatpat, i32 0, i32 %38, !dbg !2471
  %40 = load i8*, i8** %39, align 4, !dbg !2471, !tbaa !335
  call void @llvm.dbg.value(metadata i8* %40, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 8, metadata !2422, metadata !DIExpression()), !dbg !2425
  br label %53, !dbg !2472

41:                                               ; preds = %NodeBlock
  %42 = sext i16 %26 to i32, !dbg !2473
  %43 = ashr i32 %42, 3, !dbg !2474
  %44 = and i32 %43, 3, !dbg !2475
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* @scipat, i32 0, i32 %44, !dbg !2476
  %46 = load i8*, i8** %45, align 4, !dbg !2476, !tbaa !335
  call void @llvm.dbg.value(metadata i8* %46, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 8, metadata !2422, metadata !DIExpression()), !dbg !2425
  br label %53, !dbg !2477

47:                                               ; preds = %NodeBlock
  %48 = sext i16 %26 to i32, !dbg !2478
  %49 = ashr i32 %48, 3, !dbg !2479
  %50 = and i32 %49, 3, !dbg !2480
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* @errpat, i32 0, i32 %50, !dbg !2481
  %52 = load i8*, i8** %51, align 4, !dbg !2481, !tbaa !335
  call void @llvm.dbg.value(metadata i8* %52, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 8, metadata !2422, metadata !DIExpression()), !dbg !2425
  br label %53, !dbg !2482

53:                                               ; preds = %47, %41, %35, %29
  %.15 = phi i32 [ 8, %47 ], [ 8, %41 ], [ 8, %35 ], [ 4, %29 ], !dbg !2425
  %.1 = phi i8* [ %52, %47 ], [ %46, %41 ], [ %40, %35 ], [ %34, %29 ], !dbg !2425
  call void @llvm.dbg.value(metadata i8* %.1, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2422, metadata !DIExpression()), !dbg !2425
  br label %5, !dbg !2427, !llvm.loop !2483

54:                                               ; preds = %5
  %.02.lcssa = phi i32 [ %.02, %5 ], !dbg !2425
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !2421, metadata !DIExpression()), !dbg !2425
  %55 = add i32 %4, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %55, metadata !2418, metadata !DIExpression()), !dbg !2425
  br label %56, !dbg !2486

56:                                               ; preds = %58, %54
  %.2 = phi i32 [ %.02.lcssa, %54 ], [ %60, %58 ], !dbg !2425
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2421, metadata !DIExpression()), !dbg !2425
  %57 = icmp ult i32 %.2, %55, !dbg !2487
  br i1 %57, label %58, label %61, !dbg !2486

58:                                               ; preds = %56
  %59 = getelementptr inbounds i8, i8* %2, i32 %.2, !dbg !2488
  store i8 0, i8* %59, align 1, !dbg !2490, !tbaa !2162
  %60 = add i32 %.2, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %60, metadata !2421, metadata !DIExpression()), !dbg !2425
  br label %56, !dbg !2486, !llvm.loop !2492

61:                                               ; preds = %56
  ret void, !dbg !2494
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_seed_32(i32) #0 !dbg !2495 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2500, metadata !DIExpression()), !dbg !2502
  br label %NodeBlock7

NodeBlock7:                                       ; preds = %1
  %Pivot8 = icmp slt i32 %0, 3
  br i1 %Pivot8, label %NodeBlock, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %Pivot6 = icmp slt i32 %0, 4
  br i1 %Pivot6, label %10, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %Pivot4 = icmp slt i32 %0, 5
  br i1 %Pivot4, label %14, label %LeafBlock1

LeafBlock1:                                       ; preds = %NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %0, 5
  br i1 %SwitchLeaf2, label %18, label %LeafBlock1.NewDefault_crit_edge

LeafBlock1.NewDefault_crit_edge:                  ; preds = %LeafBlock1
  br label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock7
  %Pivot = icmp slt i32 %0, 2
  br i1 %Pivot, label %LeafBlock, label %6

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 1
  br i1 %SwitchLeaf, label %2, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

2:                                                ; preds = %LeafBlock
  %3 = load i32, i32* @__checkpoint_count, align 4, !dbg !2503, !idemp_checkpoint_count !298
  %4 = add i32 %3, 1, !dbg !2503, !idemp_checkpoint_count !298
  store volatile i32 %4, i32* @__checkpoint_count, align 4, !dbg !2503, !idemp_checkpoint_count !298
  %5 = load volatile i32, i32* @seed1_volatile, align 4, !dbg !2503, !tbaa !1047
  call void @llvm.dbg.value(metadata i32 %5, metadata !2501, metadata !DIExpression()), !dbg !2502
  br label %23, !dbg !2505

6:                                                ; preds = %NodeBlock
  %7 = load i32, i32* @__checkpoint_count, align 4, !dbg !2506, !idemp_checkpoint_count !298
  %8 = add i32 %7, 1, !dbg !2506, !idemp_checkpoint_count !298
  store volatile i32 %8, i32* @__checkpoint_count, align 4, !dbg !2506, !idemp_checkpoint_count !298
  %9 = load volatile i32, i32* @seed2_volatile, align 4, !dbg !2506, !tbaa !1047
  call void @llvm.dbg.value(metadata i32 %9, metadata !2501, metadata !DIExpression()), !dbg !2502
  br label %23, !dbg !2507

10:                                               ; preds = %NodeBlock5
  %11 = load i32, i32* @__checkpoint_count, align 4, !dbg !2508, !idemp_checkpoint_count !298
  %12 = add i32 %11, 1, !dbg !2508, !idemp_checkpoint_count !298
  store volatile i32 %12, i32* @__checkpoint_count, align 4, !dbg !2508, !idemp_checkpoint_count !298
  %13 = load volatile i32, i32* @seed3_volatile, align 4, !dbg !2508, !tbaa !1047
  call void @llvm.dbg.value(metadata i32 %13, metadata !2501, metadata !DIExpression()), !dbg !2502
  br label %23, !dbg !2509

14:                                               ; preds = %NodeBlock3
  %15 = load i32, i32* @__checkpoint_count, align 4, !dbg !2510, !idemp_checkpoint_count !298
  %16 = add i32 %15, 1, !dbg !2510, !idemp_checkpoint_count !298
  store volatile i32 %16, i32* @__checkpoint_count, align 4, !dbg !2510, !idemp_checkpoint_count !298
  %17 = load volatile i32, i32* @seed4_volatile, align 4, !dbg !2510, !tbaa !1047
  call void @llvm.dbg.value(metadata i32 %17, metadata !2501, metadata !DIExpression()), !dbg !2502
  br label %23, !dbg !2511

18:                                               ; preds = %LeafBlock1
  %19 = load i32, i32* @__checkpoint_count, align 4, !dbg !2512, !idemp_checkpoint_count !298
  %20 = add i32 %19, 1, !dbg !2512, !idemp_checkpoint_count !298
  store volatile i32 %20, i32* @__checkpoint_count, align 4, !dbg !2512, !idemp_checkpoint_count !298
  %21 = load volatile i32, i32* @seed5_volatile, align 4, !dbg !2512, !tbaa !1047
  call void @llvm.dbg.value(metadata i32 %21, metadata !2501, metadata !DIExpression()), !dbg !2502
  br label %23, !dbg !2513

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock1.NewDefault_crit_edge
  br label %22

22:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2501, metadata !DIExpression()), !dbg !2502
  br label %23, !dbg !2514

23:                                               ; preds = %22, %18, %14, %10, %6, %2
  %.0 = phi i32 [ 0, %22 ], [ %21, %18 ], [ %17, %14 ], [ %13, %10 ], [ %9, %6 ], [ %5, %2 ], !dbg !2515
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2501, metadata !DIExpression()), !dbg !2502
  ret i32 %.0, !dbg !2516
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu8(i8 zeroext, i16 zeroext) #0 !dbg !2517 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2521, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i16 %1, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2526
  br label %3, !dbg !2527

3:                                                ; preds = %38, %2
  %.02 = phi i8 [ 0, %2 ], [ %39, %38 ], !dbg !2529
  %.01 = phi i16 [ %1, %2 ], [ %.2, %38 ]
  %.0 = phi i8 [ %0, %2 ], [ %16, %38 ]
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2521, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %.02, metadata !2523, metadata !DIExpression()), !dbg !2526
  %4 = zext i8 %.02 to i32, !dbg !2530
  %5 = icmp slt i32 %4, 8, !dbg !2532
  br i1 %5, label %6, label %40, !dbg !2533

6:                                                ; preds = %3
  %7 = zext i8 %.0 to i32, !dbg !2534
  %8 = and i32 %7, 1, !dbg !2536
  %9 = trunc i16 %.01 to i8, !dbg !2537
  %10 = zext i8 %9 to i32, !dbg !2537
  %11 = and i32 %10, 1, !dbg !2538
  %12 = xor i32 %8, %11, !dbg !2539
  %13 = trunc i32 %12 to i8, !dbg !2540
  call void @llvm.dbg.value(metadata i8 %13, metadata !2524, metadata !DIExpression()), !dbg !2526
  %14 = zext i8 %.0 to i32, !dbg !2541
  %15 = ashr i32 %14, 1, !dbg !2541
  %16 = trunc i32 %15 to i8, !dbg !2541
  call void @llvm.dbg.value(metadata i8 %16, metadata !2521, metadata !DIExpression()), !dbg !2526
  %17 = zext i8 %13 to i32, !dbg !2542
  %18 = icmp eq i32 %17, 1, !dbg !2544
  br i1 %18, label %19, label %23, !dbg !2545

19:                                               ; preds = %6
  %20 = zext i16 %.01 to i32, !dbg !2546
  %21 = xor i32 %20, 16386, !dbg !2546
  %22 = trunc i32 %21 to i16, !dbg !2546
  call void @llvm.dbg.value(metadata i16 %22, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 1, metadata !2525, metadata !DIExpression()), !dbg !2526
  br label %24, !dbg !2548

23:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 0, metadata !2525, metadata !DIExpression()), !dbg !2526
  br label %24

24:                                               ; preds = %23, %19
  %.03 = phi i8 [ 1, %19 ], [ 0, %23 ], !dbg !2549
  %.1 = phi i16 [ %22, %19 ], [ %.01, %23 ]
  call void @llvm.dbg.value(metadata i16 %.1, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %.03, metadata !2525, metadata !DIExpression()), !dbg !2526
  %25 = zext i16 %.1 to i32, !dbg !2550
  %26 = ashr i32 %25, 1, !dbg !2550
  %27 = trunc i32 %26 to i16, !dbg !2550
  call void @llvm.dbg.value(metadata i16 %27, metadata !2522, metadata !DIExpression()), !dbg !2526
  %28 = icmp ne i8 %.03, 0, !dbg !2551
  br i1 %28, label %29, label %33, !dbg !2553

29:                                               ; preds = %24
  %30 = zext i16 %27 to i32, !dbg !2554
  %31 = or i32 %30, 32768, !dbg !2554
  %32 = trunc i32 %31 to i16, !dbg !2554
  call void @llvm.dbg.value(metadata i16 %32, metadata !2522, metadata !DIExpression()), !dbg !2526
  br label %37, !dbg !2555

33:                                               ; preds = %24
  %34 = zext i16 %27 to i32, !dbg !2556
  %35 = and i32 %34, 32767, !dbg !2556
  %36 = trunc i32 %35 to i16, !dbg !2556
  call void @llvm.dbg.value(metadata i16 %36, metadata !2522, metadata !DIExpression()), !dbg !2526
  br label %37

37:                                               ; preds = %33, %29
  %.2 = phi i16 [ %32, %29 ], [ %36, %33 ], !dbg !2557
  call void @llvm.dbg.value(metadata i16 %.2, metadata !2522, metadata !DIExpression()), !dbg !2526
  br label %38, !dbg !2558

38:                                               ; preds = %37
  %39 = add nuw nsw i8 %.02, 1, !dbg !2559
  call void @llvm.dbg.value(metadata i8 %39, metadata !2523, metadata !DIExpression()), !dbg !2526
  br label %3, !dbg !2560, !llvm.loop !2561

40:                                               ; preds = %3
  %.01.lcssa = phi i16 [ %.01, %3 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2526
  ret i16 %.01.lcssa, !dbg !2563
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu16(i16 zeroext, i16 zeroext) #0 !dbg !2564 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i16 %1, metadata !2569, metadata !DIExpression()), !dbg !2570
  %3 = trunc i16 %0 to i8, !dbg !2571
  %4 = load i32, i32* @__checkpoint_count, align 4, !dbg !2572, !idemp_checkpoint_count !298
  %5 = add i32 %4, 1, !dbg !2572, !idemp_checkpoint_count !298
  store volatile i32 %5, i32* @__checkpoint_count, align 4, !dbg !2572, !idemp_checkpoint_count !298
  %6 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %3, i16 zeroext %1), !dbg !2572
  call void @llvm.dbg.value(metadata i16 %6, metadata !2569, metadata !DIExpression()), !dbg !2570
  %7 = zext i16 %0 to i32, !dbg !2573
  %8 = ashr i32 %7, 8, !dbg !2574
  %9 = trunc i32 %8 to i8, !dbg !2575
  %10 = load i32, i32* @__checkpoint_count, align 4, !dbg !2576, !idemp_checkpoint_count !298
  %11 = add i32 %10, 1, !dbg !2576, !idemp_checkpoint_count !298
  store volatile i32 %11, i32* @__checkpoint_count, align 4, !dbg !2576, !idemp_checkpoint_count !298
  %12 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %9, i16 zeroext %6), !dbg !2576
  call void @llvm.dbg.value(metadata i16 %12, metadata !2569, metadata !DIExpression()), !dbg !2570
  ret i16 %12, !dbg !2577
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu32(i32, i16 zeroext) #0 !dbg !2578 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i16 %1, metadata !2583, metadata !DIExpression()), !dbg !2584
  %3 = trunc i32 %0 to i16, !dbg !2585
  %4 = load i32, i32* @__checkpoint_count, align 4, !dbg !2586, !idemp_checkpoint_count !298
  %5 = add i32 %4, 1, !dbg !2586, !idemp_checkpoint_count !298
  store volatile i32 %5, i32* @__checkpoint_count, align 4, !dbg !2586, !idemp_checkpoint_count !298
  %6 = call arm_aapcscc zeroext i16 @crc16(i16 signext %3, i16 zeroext %1), !dbg !2586
  call void @llvm.dbg.value(metadata i16 %6, metadata !2583, metadata !DIExpression()), !dbg !2584
  %7 = lshr i32 %0, 16, !dbg !2587
  %8 = trunc i32 %7 to i16, !dbg !2588
  %9 = load i32, i32* @__checkpoint_count, align 4, !dbg !2589, !idemp_checkpoint_count !298
  %10 = add i32 %9, 1, !dbg !2589, !idemp_checkpoint_count !298
  store volatile i32 %10, i32* @__checkpoint_count, align 4, !dbg !2589, !idemp_checkpoint_count !298
  %11 = call arm_aapcscc zeroext i16 @crc16(i16 signext %8, i16 zeroext %6), !dbg !2589
  call void @llvm.dbg.value(metadata i16 %11, metadata !2583, metadata !DIExpression()), !dbg !2584
  ret i16 %11, !dbg !2590
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crc16(i16 signext, i16 zeroext) #0 !dbg !2591 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2595, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i16 %1, metadata !2596, metadata !DIExpression()), !dbg !2597
  %3 = load i32, i32* @__checkpoint_count, align 4, !dbg !2598, !idemp_checkpoint_count !298
  %4 = add i32 %3, 1, !dbg !2598, !idemp_checkpoint_count !298
  store volatile i32 %4, i32* @__checkpoint_count, align 4, !dbg !2598, !idemp_checkpoint_count !298
  %5 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %0, i16 zeroext %1), !dbg !2598
  ret i16 %5, !dbg !2599
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i8 @check_data_types() #0 !dbg !2600 {
  call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2604
  %1 = zext i8 0 to i32, !dbg !2605
  %2 = icmp sgt i32 %1, 0, !dbg !2607
  br i1 %2, label %3, label %._crit_edge, !dbg !2608

._crit_edge:                                      ; preds = %0
  br label %8, !dbg !2608

3:                                                ; preds = %0
  %4 = getelementptr [54 x i8], [54 x i8]* @.str.48, i32 0, i32 0
  %5 = load i32, i32* @__checkpoint_count, align 4, !dbg !2609, !idemp_checkpoint_count !298
  %6 = add i32 %5, 1, !dbg !2609, !idemp_checkpoint_count !298
  store volatile i32 %6, i32* @__checkpoint_count, align 4, !dbg !2609, !idemp_checkpoint_count !298
  %7 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %4), !dbg !2609
  br label %8, !dbg !2611

8:                                                ; preds = %3, %._crit_edge
  ret i8 0, !dbg !2612
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i64 @clock() #3 !dbg !2613 {
  %1 = load i32, i32* @__checkpoint_count, align 4, !dbg !2616, !idemp_checkpoint_count !298
  %2 = add i32 %1, 1, !dbg !2616, !idemp_checkpoint_count !298
  store volatile i32 %2, i32* @__checkpoint_count, align 4, !dbg !2616, !idemp_checkpoint_count !298
  %3 = load volatile i64, i64* @dummy, align 8, !dbg !2616, !tbaa !2617
  ret i64 %3, !dbg !2619
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @start_time() #0 !dbg !2620 {
  %1 = load i32, i32* @__checkpoint_count, align 4, !dbg !2621, !idemp_checkpoint_count !298
  %2 = add i32 %1, 1, !dbg !2621, !idemp_checkpoint_count !298
  store volatile i32 %2, i32* @__checkpoint_count, align 4, !dbg !2621, !idemp_checkpoint_count !298
  %3 = call arm_aapcscc i64 @clock(), !dbg !2621
  %4 = load i32, i32* @__checkpoint_count, align 4, !dbg !2621, !idemp_checkpoint_count !298
  %5 = add i32 %4, 1, !dbg !2621, !idemp_checkpoint_count !298
  store volatile i32 %5, i32* @__checkpoint_count, align 4, !dbg !2621, !idemp_checkpoint_count !298
  store volatile i64 %3, i64* @start_time_val, align 8, !dbg !2621, !tbaa !2617
  ret void, !dbg !2622
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @stop_time() #0 !dbg !2623 {
  %1 = load i32, i32* @__checkpoint_count, align 4, !dbg !2624, !idemp_checkpoint_count !298
  %2 = add i32 %1, 1, !dbg !2624, !idemp_checkpoint_count !298
  store volatile i32 %2, i32* @__checkpoint_count, align 4, !dbg !2624, !idemp_checkpoint_count !298
  %3 = call arm_aapcscc i64 @clock(), !dbg !2624
  %4 = load i32, i32* @__checkpoint_count, align 4, !dbg !2624, !idemp_checkpoint_count !298
  %5 = add i32 %4, 1, !dbg !2624, !idemp_checkpoint_count !298
  store volatile i32 %5, i32* @__checkpoint_count, align 4, !dbg !2624, !idemp_checkpoint_count !298
  store volatile i64 %3, i64* @stop_time_val, align 8, !dbg !2624, !tbaa !2617
  ret void, !dbg !2625
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_time() #0 !dbg !2626 {
  %1 = load i32, i32* @__checkpoint_count, align 4, !dbg !2631, !idemp_checkpoint_count !298
  %2 = add i32 %1, 1, !dbg !2631, !idemp_checkpoint_count !298
  store volatile i32 %2, i32* @__checkpoint_count, align 4, !dbg !2631, !idemp_checkpoint_count !298
  %3 = load volatile i64, i64* @stop_time_val, align 8, !dbg !2631, !tbaa !2617
  %4 = load i32, i32* @__checkpoint_count, align 4, !dbg !2631, !idemp_checkpoint_count !298
  %5 = add i32 %4, 1, !dbg !2631, !idemp_checkpoint_count !298
  store volatile i32 %5, i32* @__checkpoint_count, align 4, !dbg !2631, !idemp_checkpoint_count !298
  %6 = load volatile i64, i64* @start_time_val, align 8, !dbg !2631, !tbaa !2617
  %7 = sub i64 %3, %6, !dbg !2631
  %8 = trunc i64 %7 to i32, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %8, metadata !2630, metadata !DIExpression()), !dbg !2633
  ret i32 %8, !dbg !2634
}

; Function Attrs: nounwind
define dso_local arm_aapcscc double @time_in_secs(i32) #0 !dbg !2635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2639, metadata !DIExpression()), !dbg !2641
  %2 = uitofp i32 %0 to double, !dbg !2642
  %3 = fdiv double %2, 1.000000e+07, !dbg !2643
  call void @llvm.dbg.value(metadata double %3, metadata !2640, metadata !DIExpression()), !dbg !2641
  ret double %3, !dbg !2644
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S*, i32*, i8**) #0 !dbg !2645 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2655, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32* %1, metadata !2656, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8** %2, metadata !2657, metadata !DIExpression()), !dbg !2658
  %4 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2659
  store i8 1, i8* %4, align 1, !dbg !2660, !tbaa !2661
  ret void, !dbg !2662
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S*) #0 !dbg !2663 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2667, metadata !DIExpression()), !dbg !2668
  %2 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2669
  store i8 0, i8* %2, align 1, !dbg !2670, !tbaa !2661
  ret void, !dbg !2671
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @printf_(i8*, ...) #0 !dbg !2672 {
  %2 = alloca %struct.__va_list, align 4
  %3 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()), !dbg !2690
  %4 = bitcast %struct.__va_list* %2 to i8*, !dbg !2691
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !2691
  call void @llvm.dbg.declare(metadata %struct.__va_list* %2, metadata !2679, metadata !DIExpression()), !dbg !2692
  %5 = bitcast %struct.__va_list* %2 to i8*, !dbg !2693
  call void @llvm.va_start(i8* %5), !dbg !2693
  %6 = bitcast [1 x i8]* %3 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #4, !dbg !2694
  call void @llvm.dbg.declare(metadata [1 x i8]* %3, metadata !2686, metadata !DIExpression()), !dbg !2695
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i32 0, i32 0, !dbg !2696
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %2, i32 0, i32 0, !dbg !2697
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !2697
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !2697
  %11 = load i32, i32* @__checkpoint_count, align 4, !dbg !2697, !idemp_checkpoint_count !298
  %12 = add i32 %11, 1, !dbg !2697, !idemp_checkpoint_count !298
  store volatile i32 %12, i32* @__checkpoint_count, align 4, !dbg !2697, !idemp_checkpoint_count !298
  %13 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %7, i32 -1, i8* %0, [1 x i32] %10), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %13, metadata !2688, metadata !DIExpression()), !dbg !2690
  %14 = bitcast %struct.__va_list* %2 to i8*, !dbg !2698
  call void @llvm.va_end(i8* %14), !dbg !2698
  %15 = bitcast [1 x i8]* %3 to i8*, !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %15) #4, !dbg !2699
  %16 = bitcast %struct.__va_list* %2 to i8*, !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !2699
  ret i32 %13, !dbg !2700
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_char(i8 zeroext, i8*, i32, i32) #5 !dbg !2701 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2703, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 %2, metadata !2705, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 %3, metadata !2706, metadata !DIExpression()), !dbg !2707
  %5 = icmp ne i8 %0, 0, !dbg !2708
  br i1 %5, label %6, label %._crit_edge, !dbg !2710

._crit_edge:                                      ; preds = %4
  br label %9, !dbg !2710

6:                                                ; preds = %4
  %7 = load i32, i32* @__checkpoint_count, align 4, !dbg !2711, !idemp_checkpoint_count !298
  %8 = add i32 %7, 1, !dbg !2711, !idemp_checkpoint_count !298
  store volatile i32 %8, i32* @__checkpoint_count, align 4, !dbg !2711, !idemp_checkpoint_count !298
  call arm_aapcscc void @_putchar(i8 zeroext %0), !dbg !2711
  br label %9, !dbg !2713

9:                                                ; preds = %6, %._crit_edge
  ret void, !dbg !2714
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32]) #0 !dbg !2715 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca i8*, align 4
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %6, i32 0, i32 0
  %9 = bitcast i8** %8 to [1 x i32]*
  store [1 x i32] %4, [1 x i32]* %9, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !2720, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %1, metadata !2721, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %2, metadata !2722, metadata !DIExpression()), !dbg !2772
  store i8* %3, i8** %7, align 4, !tbaa !335
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2723, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.declare(metadata %struct.__va_list* %6, metadata !2724, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 0, metadata !2729, metadata !DIExpression()), !dbg !2772
  %10 = icmp ne i8* %1, null, !dbg !2775
  br i1 %10, label %._crit_edge, label %11, !dbg !2777

._crit_edge:                                      ; preds = %5
  br label %12, !dbg !2777

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* @_out_null, metadata !2720, metadata !DIExpression()), !dbg !2772
  br label %12, !dbg !2778

12:                                               ; preds = %11, %._crit_edge
  %.0 = phi void (i8, i8*, i32, i32)* [ %0, %._crit_edge ], [ @_out_null, %11 ]
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %.0, metadata !2720, metadata !DIExpression()), !dbg !2772
  br label %13, !dbg !2780

13:                                               ; preds = %.backedge, %12
  %.018 = phi i32 [ 0, %12 ], [ %.018.be, %.backedge ], !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.018, metadata !2729, metadata !DIExpression()), !dbg !2772
  %14 = load i8*, i8** %7, align 4, !dbg !2781, !tbaa !335
  %15 = load i8, i8* %14, align 1, !dbg !2782, !tbaa !2162
  %16 = icmp ne i8 %15, 0, !dbg !2780
  br i1 %16, label %17, label %673, !dbg !2780

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 4, !dbg !2783, !tbaa !335
  %19 = load i8, i8* %18, align 1, !dbg !2785, !tbaa !2162
  %20 = zext i8 %19 to i32, !dbg !2785
  %21 = icmp ne i32 %20, 37, !dbg !2786
  br i1 %21, label %22, label %32, !dbg !2787

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 4, !dbg !2788, !tbaa !335
  %24 = load i8, i8* %23, align 1, !dbg !2790, !tbaa !2162
  %25 = add i32 %.018, 1, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %25, metadata !2729, metadata !DIExpression()), !dbg !2772
  %26 = load i32, i32* @__checkpoint_count, align 4, !dbg !2792, !idemp_checkpoint_count !298
  %27 = add i32 %26, 1, !dbg !2792, !idemp_checkpoint_count !298
  store volatile i32 %27, i32* @__checkpoint_count, align 4, !dbg !2792, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext %24, i8* %1, i32 %.018, i32 %2), !dbg !2792
  %28 = load i8*, i8** %7, align 4, !dbg !2793, !tbaa !335, !idemp_war_rd !298
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !2793
  %30 = load i32, i32* @__checkpoint_count, align 4, !dbg !2793, !idemp_checkpoint_count !298
  %31 = add i32 %30, 1, !dbg !2793, !idemp_checkpoint_count !298
  store volatile i32 %31, i32* @__checkpoint_count, align 4, !dbg !2793, !idemp_checkpoint_count !298
  store i8* %29, i8** %7, align 4, !dbg !2793, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %.backedge, !dbg !2794

.backedge:                                        ; preds = %672, %22
  %.018.be = phi i32 [ %25, %22 ], [ %.1533, %672 ]
  br label %13, !dbg !2772, !llvm.loop !2795

32:                                               ; preds = %17
  %33 = load i8*, i8** %7, align 4, !dbg !2797, !tbaa !335, !idemp_war_rd !298
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !2797
  %35 = load i32, i32* @__checkpoint_count, align 4, !dbg !2797, !idemp_checkpoint_count !298
  %36 = add i32 %35, 1, !dbg !2797, !idemp_checkpoint_count !298
  store volatile i32 %36, i32* @__checkpoint_count, align 4, !dbg !2797, !idemp_checkpoint_count !298
  store i8* %34, i8** %7, align 4, !dbg !2797, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  br label %37

37:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %38, !dbg !2799

38:                                               ; preds = %._crit_edge124, %37
  %.03 = phi i32 [ 0, %37 ], [ %.14, %._crit_edge124 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2725, metadata !DIExpression()), !dbg !2772
  %39 = load i8*, i8** %7, align 4, !dbg !2801, !tbaa !335
  %40 = load i8, i8* %39, align 1, !dbg !2803, !tbaa !2162
  %41 = zext i8 %40 to i32, !dbg !2803
  br label %NodeBlock52

NodeBlock52:                                      ; preds = %38
  %Pivot53 = icmp slt i32 %41, 43
  br i1 %Pivot53, label %NodeBlock, label %NodeBlock50

NodeBlock50:                                      ; preds = %NodeBlock52
  %Pivot51 = icmp slt i32 %41, 45
  br i1 %Pivot51, label %LeafBlock42, label %NodeBlock48

NodeBlock48:                                      ; preds = %NodeBlock50
  %Pivot49 = icmp slt i32 %41, 48
  br i1 %Pivot49, label %LeafBlock44, label %LeafBlock46

LeafBlock46:                                      ; preds = %NodeBlock48
  %SwitchLeaf47 = icmp eq i32 %41, 48
  br i1 %SwitchLeaf47, label %42, label %LeafBlock46.NewDefault_crit_edge

LeafBlock46.NewDefault_crit_edge:                 ; preds = %LeafBlock46
  br label %NewDefault

LeafBlock44:                                      ; preds = %NodeBlock48
  %SwitchLeaf45 = icmp eq i32 %41, 45
  br i1 %SwitchLeaf45, label %48, label %LeafBlock44.NewDefault_crit_edge

LeafBlock44.NewDefault_crit_edge:                 ; preds = %LeafBlock44
  br label %NewDefault

LeafBlock42:                                      ; preds = %NodeBlock50
  %SwitchLeaf43 = icmp eq i32 %41, 43
  br i1 %SwitchLeaf43, label %54, label %LeafBlock42.NewDefault_crit_edge

LeafBlock42.NewDefault_crit_edge:                 ; preds = %LeafBlock42
  br label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock52
  %Pivot = icmp slt i32 %41, 35
  br i1 %Pivot, label %LeafBlock, label %LeafBlock40

LeafBlock40:                                      ; preds = %NodeBlock
  %SwitchLeaf41 = icmp eq i32 %41, 35
  br i1 %SwitchLeaf41, label %66, label %LeafBlock40.NewDefault_crit_edge

LeafBlock40.NewDefault_crit_edge:                 ; preds = %LeafBlock40
  br label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %41, 32
  br i1 %SwitchLeaf, label %60, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

42:                                               ; preds = %LeafBlock46
  %43 = or i32 %.03, 1, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %43, metadata !2725, metadata !DIExpression()), !dbg !2772
  %44 = load i8*, i8** %7, align 4, !dbg !2806, !tbaa !335, !idemp_war_rd !298
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !2806
  %46 = load i32, i32* @__checkpoint_count, align 4, !dbg !2806, !idemp_checkpoint_count !298
  %47 = add i32 %46, 1, !dbg !2806, !idemp_checkpoint_count !298
  store volatile i32 %47, i32* @__checkpoint_count, align 4, !dbg !2806, !idemp_checkpoint_count !298
  store i8* %45, i8** %7, align 4, !dbg !2806, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  call void @llvm.dbg.value(metadata i32 1, metadata !2728, metadata !DIExpression()), !dbg !2772
  br label %73, !dbg !2807

48:                                               ; preds = %LeafBlock44
  %49 = or i32 %.03, 2, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %49, metadata !2725, metadata !DIExpression()), !dbg !2772
  %50 = load i8*, i8** %7, align 4, !dbg !2809, !tbaa !335, !idemp_war_rd !298
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !2809
  %52 = load i32, i32* @__checkpoint_count, align 4, !dbg !2809, !idemp_checkpoint_count !298
  %53 = add i32 %52, 1, !dbg !2809, !idemp_checkpoint_count !298
  store volatile i32 %53, i32* @__checkpoint_count, align 4, !dbg !2809, !idemp_checkpoint_count !298
  store i8* %51, i8** %7, align 4, !dbg !2809, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  call void @llvm.dbg.value(metadata i32 1, metadata !2728, metadata !DIExpression()), !dbg !2772
  br label %73, !dbg !2810

54:                                               ; preds = %LeafBlock42
  %55 = or i32 %.03, 4, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %55, metadata !2725, metadata !DIExpression()), !dbg !2772
  %56 = load i8*, i8** %7, align 4, !dbg !2812, !tbaa !335, !idemp_war_rd !298
  %57 = getelementptr inbounds i8, i8* %56, i32 1, !dbg !2812
  %58 = load i32, i32* @__checkpoint_count, align 4, !dbg !2812, !idemp_checkpoint_count !298
  %59 = add i32 %58, 1, !dbg !2812, !idemp_checkpoint_count !298
  store volatile i32 %59, i32* @__checkpoint_count, align 4, !dbg !2812, !idemp_checkpoint_count !298
  store i8* %57, i8** %7, align 4, !dbg !2812, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  call void @llvm.dbg.value(metadata i32 1, metadata !2728, metadata !DIExpression()), !dbg !2772
  br label %73, !dbg !2813

60:                                               ; preds = %LeafBlock
  %61 = or i32 %.03, 8, !dbg !2814
  call void @llvm.dbg.value(metadata i32 %61, metadata !2725, metadata !DIExpression()), !dbg !2772
  %62 = load i8*, i8** %7, align 4, !dbg !2815, !tbaa !335, !idemp_war_rd !298
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !2815
  %64 = load i32, i32* @__checkpoint_count, align 4, !dbg !2815, !idemp_checkpoint_count !298
  %65 = add i32 %64, 1, !dbg !2815, !idemp_checkpoint_count !298
  store volatile i32 %65, i32* @__checkpoint_count, align 4, !dbg !2815, !idemp_checkpoint_count !298
  store i8* %63, i8** %7, align 4, !dbg !2815, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  call void @llvm.dbg.value(metadata i32 1, metadata !2728, metadata !DIExpression()), !dbg !2772
  br label %73, !dbg !2816

66:                                               ; preds = %LeafBlock40
  %67 = or i32 %.03, 16, !dbg !2817
  call void @llvm.dbg.value(metadata i32 %67, metadata !2725, metadata !DIExpression()), !dbg !2772
  %68 = load i8*, i8** %7, align 4, !dbg !2818, !tbaa !335, !idemp_war_rd !298
  %69 = getelementptr inbounds i8, i8* %68, i32 1, !dbg !2818
  %70 = load i32, i32* @__checkpoint_count, align 4, !dbg !2818, !idemp_checkpoint_count !298
  %71 = add i32 %70, 1, !dbg !2818, !idemp_checkpoint_count !298
  store volatile i32 %71, i32* @__checkpoint_count, align 4, !dbg !2818, !idemp_checkpoint_count !298
  store i8* %69, i8** %7, align 4, !dbg !2818, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  call void @llvm.dbg.value(metadata i32 1, metadata !2728, metadata !DIExpression()), !dbg !2772
  br label %73, !dbg !2819

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock40.NewDefault_crit_edge, %LeafBlock42.NewDefault_crit_edge, %LeafBlock44.NewDefault_crit_edge, %LeafBlock46.NewDefault_crit_edge
  br label %72

72:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2728, metadata !DIExpression()), !dbg !2772
  br label %73, !dbg !2820

73:                                               ; preds = %72, %66, %60, %54, %48, %42
  %.017 = phi i32 [ 0, %72 ], [ 1, %66 ], [ 1, %60 ], [ 1, %54 ], [ 1, %48 ], [ 1, %42 ], !dbg !2821
  %.14 = phi i32 [ %.03, %72 ], [ %67, %66 ], [ %61, %60 ], [ %55, %54 ], [ %49, %48 ], [ %43, %42 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.017, metadata !2728, metadata !DIExpression()), !dbg !2772
  br label %74, !dbg !2823

74:                                               ; preds = %73
  %75 = icmp ne i32 %.017, 0, !dbg !2823
  br i1 %75, label %._crit_edge124, label %76, !dbg !2823, !llvm.loop !2824

._crit_edge124:                                   ; preds = %74
  br label %38, !dbg !2823

76:                                               ; preds = %74
  %.14.lcssa = phi i32 [ %.14, %74 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !2772
  %77 = load i8*, i8** %7, align 4, !dbg !2826, !tbaa !335
  %78 = load i8, i8* %77, align 1, !dbg !2827, !tbaa !2162
  %79 = load i32, i32* @__checkpoint_count, align 4, !dbg !2828, !idemp_checkpoint_count !298
  %80 = add i32 %79, 1, !dbg !2828, !idemp_checkpoint_count !298
  store volatile i32 %80, i32* @__checkpoint_count, align 4, !dbg !2828, !idemp_checkpoint_count !298
  %81 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %78), !dbg !2828
  br i1 %81, label %82, label %86, !dbg !2829

82:                                               ; preds = %76
  %83 = load i32, i32* @__checkpoint_count, align 4, !dbg !2830, !idemp_checkpoint_count !298
  %84 = add i32 %83, 1, !dbg !2830, !idemp_checkpoint_count !298
  store volatile i32 %84, i32* @__checkpoint_count, align 4, !dbg !2830, !idemp_checkpoint_count !298
  %85 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2830
  call void @llvm.dbg.value(metadata i32 %85, metadata !2726, metadata !DIExpression()), !dbg !2772
  br label %110, !dbg !2832

86:                                               ; preds = %76
  %87 = load i8*, i8** %7, align 4, !dbg !2833, !tbaa !335
  %88 = load i8, i8* %87, align 1, !dbg !2834, !tbaa !2162
  %89 = zext i8 %88 to i32, !dbg !2834
  %90 = icmp eq i32 %89, 42, !dbg !2835
  br i1 %90, label %91, label %._crit_edge125, !dbg !2836

._crit_edge125:                                   ; preds = %86
  br label %109, !dbg !2836

91:                                               ; preds = %86
  %92 = bitcast %struct.__va_list* %6 to i8**, !dbg !2837
  %93 = load i8*, i8** %92, align 4, !dbg !2837, !idemp_war_rd !298
  %94 = getelementptr inbounds i8, i8* %93, i32 4, !dbg !2837
  %95 = load i32, i32* @__checkpoint_count, align 4, !dbg !2837, !idemp_checkpoint_count !298
  %96 = add i32 %95, 1, !dbg !2837, !idemp_checkpoint_count !298
  store volatile i32 %96, i32* @__checkpoint_count, align 4, !dbg !2837, !idemp_checkpoint_count !298
  store i8* %94, i8** %92, align 4, !dbg !2837, !idemp_war_wr !298, !idemp_uncut_war !298
  %97 = bitcast i8* %93 to i32*, !dbg !2837
  %98 = load i32, i32* %97, align 4, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %98, metadata !2730, metadata !DIExpression()), !dbg !2838
  %99 = icmp slt i32 %98, 0, !dbg !2839
  br i1 %99, label %100, label %103, !dbg !2841

100:                                              ; preds = %91
  %101 = or i32 %.14.lcssa, 2, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %101, metadata !2725, metadata !DIExpression()), !dbg !2772
  %102 = sub nsw i32 0, %98, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %102, metadata !2726, metadata !DIExpression()), !dbg !2772
  br label %104, !dbg !2845

103:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 %98, metadata !2726, metadata !DIExpression()), !dbg !2772
  br label %104

104:                                              ; preds = %103, %100
  %.08 = phi i32 [ %102, %100 ], [ %98, %103 ], !dbg !2846
  %.25 = phi i32 [ %101, %100 ], [ %.14.lcssa, %103 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.25, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.08, metadata !2726, metadata !DIExpression()), !dbg !2772
  %105 = load i8*, i8** %7, align 4, !dbg !2847, !tbaa !335, !idemp_war_rd !298
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2847
  %107 = load i32, i32* @__checkpoint_count, align 4, !dbg !2847, !idemp_checkpoint_count !298
  %108 = add i32 %107, 1, !dbg !2847, !idemp_checkpoint_count !298
  store volatile i32 %108, i32* @__checkpoint_count, align 4, !dbg !2847, !idemp_checkpoint_count !298
  store i8* %106, i8** %7, align 4, !dbg !2847, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %109, !dbg !2848

109:                                              ; preds = %104, %._crit_edge125
  %.19 = phi i32 [ %.08, %104 ], [ 0, %._crit_edge125 ], !dbg !2822
  %.36 = phi i32 [ %.25, %104 ], [ %.14.lcssa, %._crit_edge125 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.36, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2726, metadata !DIExpression()), !dbg !2772
  br label %110

110:                                              ; preds = %109, %82
  %.210 = phi i32 [ %85, %82 ], [ %.19, %109 ], !dbg !2849
  %.4 = phi i32 [ %.14.lcssa, %82 ], [ %.36, %109 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.210, metadata !2726, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 0, metadata !2727, metadata !DIExpression()), !dbg !2772
  %111 = load i8*, i8** %7, align 4, !dbg !2850, !tbaa !335
  %112 = load i8, i8* %111, align 1, !dbg !2851, !tbaa !2162
  %113 = zext i8 %112 to i32, !dbg !2851
  %114 = icmp eq i32 %113, 46, !dbg !2852
  br i1 %114, label %115, label %._crit_edge126, !dbg !2853

._crit_edge126:                                   ; preds = %110
  br label %154, !dbg !2853

115:                                              ; preds = %110
  %116 = or i32 %.4, 1024, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %116, metadata !2725, metadata !DIExpression()), !dbg !2772
  %117 = load i8*, i8** %7, align 4, !dbg !2855, !tbaa !335, !idemp_war_rd !298
  %118 = getelementptr inbounds i8, i8* %117, i32 1, !dbg !2855
  %119 = load i32, i32* @__checkpoint_count, align 4, !dbg !2855, !idemp_checkpoint_count !298
  %120 = add i32 %119, 1, !dbg !2855, !idemp_checkpoint_count !298
  store volatile i32 %120, i32* @__checkpoint_count, align 4, !dbg !2855, !idemp_checkpoint_count !298
  store i8* %118, i8** %7, align 4, !dbg !2855, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  %121 = load i8*, i8** %7, align 4, !dbg !2856, !tbaa !335
  %122 = load i8, i8* %121, align 1, !dbg !2857, !tbaa !2162
  %123 = load i32, i32* @__checkpoint_count, align 4, !dbg !2858, !idemp_checkpoint_count !298
  %124 = add i32 %123, 1, !dbg !2858, !idemp_checkpoint_count !298
  store volatile i32 %124, i32* @__checkpoint_count, align 4, !dbg !2858, !idemp_checkpoint_count !298
  %125 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %122), !dbg !2858
  br i1 %125, label %126, label %130, !dbg !2859

126:                                              ; preds = %115
  %127 = load i32, i32* @__checkpoint_count, align 4, !dbg !2860, !idemp_checkpoint_count !298
  %128 = add i32 %127, 1, !dbg !2860, !idemp_checkpoint_count !298
  store volatile i32 %128, i32* @__checkpoint_count, align 4, !dbg !2860, !idemp_checkpoint_count !298
  %129 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2860
  call void @llvm.dbg.value(metadata i32 %129, metadata !2727, metadata !DIExpression()), !dbg !2772
  br label %153, !dbg !2862

130:                                              ; preds = %115
  %131 = load i8*, i8** %7, align 4, !dbg !2863, !tbaa !335
  %132 = load i8, i8* %131, align 1, !dbg !2864, !tbaa !2162
  %133 = zext i8 %132 to i32, !dbg !2864
  %134 = icmp eq i32 %133, 42, !dbg !2865
  br i1 %134, label %135, label %._crit_edge127, !dbg !2866

._crit_edge127:                                   ; preds = %130
  br label %152, !dbg !2866

135:                                              ; preds = %130
  %136 = bitcast %struct.__va_list* %6 to i8**, !dbg !2867
  %137 = load i8*, i8** %136, align 4, !dbg !2867, !idemp_war_rd !298
  %138 = getelementptr inbounds i8, i8* %137, i32 4, !dbg !2867
  %139 = load i32, i32* @__checkpoint_count, align 4, !dbg !2867, !idemp_checkpoint_count !298
  %140 = add i32 %139, 1, !dbg !2867, !idemp_checkpoint_count !298
  store volatile i32 %140, i32* @__checkpoint_count, align 4, !dbg !2867, !idemp_checkpoint_count !298
  store i8* %138, i8** %136, align 4, !dbg !2867, !idemp_war_wr !298, !idemp_uncut_war !298
  %141 = bitcast i8* %137 to i32*, !dbg !2867
  %142 = load i32, i32* %141, align 4, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %142, metadata !2735, metadata !DIExpression()), !dbg !2868
  %143 = icmp sgt i32 %142, 0, !dbg !2869
  br i1 %143, label %144, label %145, !dbg !2870

144:                                              ; preds = %135
  br label %146, !dbg !2870

145:                                              ; preds = %135
  br label %146, !dbg !2870

146:                                              ; preds = %145, %144
  %147 = phi i32 [ %142, %144 ], [ 0, %145 ], !dbg !2870
  call void @llvm.dbg.value(metadata i32 %147, metadata !2727, metadata !DIExpression()), !dbg !2772
  %148 = load i8*, i8** %7, align 4, !dbg !2871, !tbaa !335, !idemp_war_rd !298
  %149 = getelementptr inbounds i8, i8* %148, i32 1, !dbg !2871
  %150 = load i32, i32* @__checkpoint_count, align 4, !dbg !2871, !idemp_checkpoint_count !298
  %151 = add i32 %150, 1, !dbg !2871, !idemp_checkpoint_count !298
  store volatile i32 %151, i32* @__checkpoint_count, align 4, !dbg !2871, !idemp_checkpoint_count !298
  store i8* %149, i8** %7, align 4, !dbg !2871, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %152, !dbg !2872

152:                                              ; preds = %146, %._crit_edge127
  %.011 = phi i32 [ %147, %146 ], [ 0, %._crit_edge127 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.011, metadata !2727, metadata !DIExpression()), !dbg !2772
  br label %153

153:                                              ; preds = %152, %126
  %.112 = phi i32 [ %129, %126 ], [ %.011, %152 ], !dbg !2873
  call void @llvm.dbg.value(metadata i32 %.112, metadata !2727, metadata !DIExpression()), !dbg !2772
  br label %154, !dbg !2874

154:                                              ; preds = %153, %._crit_edge126
  %.213 = phi i32 [ %.112, %153 ], [ 0, %._crit_edge126 ], !dbg !2822
  %.5 = phi i32 [ %116, %153 ], [ %.4, %._crit_edge126 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.213, metadata !2727, metadata !DIExpression()), !dbg !2772
  %155 = load i8*, i8** %7, align 4, !dbg !2875, !tbaa !335
  %156 = load i8, i8* %155, align 1, !dbg !2876, !tbaa !2162
  %157 = zext i8 %156 to i32, !dbg !2876
  br label %NodeBlock71

NodeBlock71:                                      ; preds = %154
  %Pivot72 = icmp slt i32 %157, 108
  br i1 %Pivot72, label %NodeBlock59, label %NodeBlock69

NodeBlock69:                                      ; preds = %NodeBlock71
  %Pivot70 = icmp slt i32 %157, 116
  br i1 %Pivot70, label %LeafBlock61, label %NodeBlock67

NodeBlock67:                                      ; preds = %NodeBlock69
  %Pivot68 = icmp slt i32 %157, 122
  br i1 %Pivot68, label %LeafBlock63, label %LeafBlock65

LeafBlock65:                                      ; preds = %NodeBlock67
  %SwitchLeaf66 = icmp eq i32 %157, 122
  br i1 %SwitchLeaf66, label %204, label %LeafBlock65.NewDefault54_crit_edge

LeafBlock65.NewDefault54_crit_edge:               ; preds = %LeafBlock65
  br label %NewDefault54

LeafBlock63:                                      ; preds = %NodeBlock67
  %SwitchLeaf64 = icmp eq i32 %157, 116
  br i1 %SwitchLeaf64, label %192, label %LeafBlock63.NewDefault54_crit_edge

LeafBlock63.NewDefault54_crit_edge:               ; preds = %LeafBlock63
  br label %NewDefault54

LeafBlock61:                                      ; preds = %NodeBlock69
  %SwitchLeaf62 = icmp eq i32 %157, 108
  br i1 %SwitchLeaf62, label %158, label %LeafBlock61.NewDefault54_crit_edge

LeafBlock61.NewDefault54_crit_edge:               ; preds = %LeafBlock61
  br label %NewDefault54

NodeBlock59:                                      ; preds = %NodeBlock71
  %Pivot60 = icmp slt i32 %157, 106
  br i1 %Pivot60, label %LeafBlock55, label %LeafBlock57

LeafBlock57:                                      ; preds = %NodeBlock59
  %SwitchLeaf58 = icmp eq i32 %157, 106
  br i1 %SwitchLeaf58, label %198, label %LeafBlock57.NewDefault54_crit_edge

LeafBlock57.NewDefault54_crit_edge:               ; preds = %LeafBlock57
  br label %NewDefault54

LeafBlock55:                                      ; preds = %NodeBlock59
  %SwitchLeaf56 = icmp eq i32 %157, 104
  br i1 %SwitchLeaf56, label %175, label %LeafBlock55.NewDefault54_crit_edge

LeafBlock55.NewDefault54_crit_edge:               ; preds = %LeafBlock55
  br label %NewDefault54

158:                                              ; preds = %LeafBlock61
  %159 = or i32 %.5, 256, !dbg !2877
  call void @llvm.dbg.value(metadata i32 %159, metadata !2725, metadata !DIExpression()), !dbg !2772
  %160 = load i8*, i8** %7, align 4, !dbg !2879, !tbaa !335, !idemp_war_rd !298
  %161 = getelementptr inbounds i8, i8* %160, i32 1, !dbg !2879
  %162 = load i32, i32* @__checkpoint_count, align 4, !dbg !2879, !idemp_checkpoint_count !298
  %163 = add i32 %162, 1, !dbg !2879, !idemp_checkpoint_count !298
  store volatile i32 %163, i32* @__checkpoint_count, align 4, !dbg !2879, !idemp_checkpoint_count !298
  store i8* %161, i8** %7, align 4, !dbg !2879, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  %164 = load i8*, i8** %7, align 4, !dbg !2880, !tbaa !335
  %165 = load i8, i8* %164, align 1, !dbg !2882, !tbaa !2162
  %166 = zext i8 %165 to i32, !dbg !2882
  %167 = icmp eq i32 %166, 108, !dbg !2883
  br i1 %167, label %168, label %._crit_edge128, !dbg !2884

._crit_edge128:                                   ; preds = %158
  br label %174, !dbg !2884

168:                                              ; preds = %158
  %169 = or i32 %159, 512, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %169, metadata !2725, metadata !DIExpression()), !dbg !2772
  %170 = load i8*, i8** %7, align 4, !dbg !2887, !tbaa !335, !idemp_war_rd !298
  %171 = getelementptr inbounds i8, i8* %170, i32 1, !dbg !2887
  %172 = load i32, i32* @__checkpoint_count, align 4, !dbg !2887, !idemp_checkpoint_count !298
  %173 = add i32 %172, 1, !dbg !2887, !idemp_checkpoint_count !298
  store volatile i32 %173, i32* @__checkpoint_count, align 4, !dbg !2887, !idemp_checkpoint_count !298
  store i8* %171, i8** %7, align 4, !dbg !2887, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %174, !dbg !2888

174:                                              ; preds = %168, %._crit_edge128
  %.6 = phi i32 [ %169, %168 ], [ %159, %._crit_edge128 ], !dbg !2889
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %211, !dbg !2890

175:                                              ; preds = %LeafBlock55
  %176 = or i32 %.5, 128, !dbg !2891
  call void @llvm.dbg.value(metadata i32 %176, metadata !2725, metadata !DIExpression()), !dbg !2772
  %177 = load i8*, i8** %7, align 4, !dbg !2892, !tbaa !335, !idemp_war_rd !298
  %178 = getelementptr inbounds i8, i8* %177, i32 1, !dbg !2892
  %179 = load i32, i32* @__checkpoint_count, align 4, !dbg !2892, !idemp_checkpoint_count !298
  %180 = add i32 %179, 1, !dbg !2892, !idemp_checkpoint_count !298
  store volatile i32 %180, i32* @__checkpoint_count, align 4, !dbg !2892, !idemp_checkpoint_count !298
  store i8* %178, i8** %7, align 4, !dbg !2892, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  %181 = load i8*, i8** %7, align 4, !dbg !2893, !tbaa !335
  %182 = load i8, i8* %181, align 1, !dbg !2895, !tbaa !2162
  %183 = zext i8 %182 to i32, !dbg !2895
  %184 = icmp eq i32 %183, 104, !dbg !2896
  br i1 %184, label %185, label %._crit_edge129, !dbg !2897

._crit_edge129:                                   ; preds = %175
  br label %191, !dbg !2897

185:                                              ; preds = %175
  %186 = or i32 %176, 64, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %186, metadata !2725, metadata !DIExpression()), !dbg !2772
  %187 = load i8*, i8** %7, align 4, !dbg !2900, !tbaa !335, !idemp_war_rd !298
  %188 = getelementptr inbounds i8, i8* %187, i32 1, !dbg !2900
  %189 = load i32, i32* @__checkpoint_count, align 4, !dbg !2900, !idemp_checkpoint_count !298
  %190 = add i32 %189, 1, !dbg !2900, !idemp_checkpoint_count !298
  store volatile i32 %190, i32* @__checkpoint_count, align 4, !dbg !2900, !idemp_checkpoint_count !298
  store i8* %188, i8** %7, align 4, !dbg !2900, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %191, !dbg !2901

191:                                              ; preds = %185, %._crit_edge129
  %.7 = phi i32 [ %186, %185 ], [ %176, %._crit_edge129 ], !dbg !2889
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %211, !dbg !2902

192:                                              ; preds = %LeafBlock63
  %193 = or i32 %.5, 256, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %193, metadata !2725, metadata !DIExpression()), !dbg !2772
  %194 = load i8*, i8** %7, align 4, !dbg !2904, !tbaa !335, !idemp_war_rd !298
  %195 = getelementptr inbounds i8, i8* %194, i32 1, !dbg !2904
  %196 = load i32, i32* @__checkpoint_count, align 4, !dbg !2904, !idemp_checkpoint_count !298
  %197 = add i32 %196, 1, !dbg !2904, !idemp_checkpoint_count !298
  store volatile i32 %197, i32* @__checkpoint_count, align 4, !dbg !2904, !idemp_checkpoint_count !298
  store i8* %195, i8** %7, align 4, !dbg !2904, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %211, !dbg !2905

198:                                              ; preds = %LeafBlock57
  %199 = or i32 %.5, 512, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %199, metadata !2725, metadata !DIExpression()), !dbg !2772
  %200 = load i8*, i8** %7, align 4, !dbg !2907, !tbaa !335, !idemp_war_rd !298
  %201 = getelementptr inbounds i8, i8* %200, i32 1, !dbg !2907
  %202 = load i32, i32* @__checkpoint_count, align 4, !dbg !2907, !idemp_checkpoint_count !298
  %203 = add i32 %202, 1, !dbg !2907, !idemp_checkpoint_count !298
  store volatile i32 %203, i32* @__checkpoint_count, align 4, !dbg !2907, !idemp_checkpoint_count !298
  store i8* %201, i8** %7, align 4, !dbg !2907, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %211, !dbg !2908

204:                                              ; preds = %LeafBlock65
  %205 = or i32 %.5, 256, !dbg !2909
  call void @llvm.dbg.value(metadata i32 %205, metadata !2725, metadata !DIExpression()), !dbg !2772
  %206 = load i8*, i8** %7, align 4, !dbg !2910, !tbaa !335, !idemp_war_rd !298
  %207 = getelementptr inbounds i8, i8* %206, i32 1, !dbg !2910
  %208 = load i32, i32* @__checkpoint_count, align 4, !dbg !2910, !idemp_checkpoint_count !298
  %209 = add i32 %208, 1, !dbg !2910, !idemp_checkpoint_count !298
  store volatile i32 %209, i32* @__checkpoint_count, align 4, !dbg !2910, !idemp_checkpoint_count !298
  store i8* %207, i8** %7, align 4, !dbg !2910, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %211, !dbg !2911

NewDefault54:                                     ; preds = %LeafBlock55.NewDefault54_crit_edge, %LeafBlock57.NewDefault54_crit_edge, %LeafBlock61.NewDefault54_crit_edge, %LeafBlock63.NewDefault54_crit_edge, %LeafBlock65.NewDefault54_crit_edge
  br label %210

210:                                              ; preds = %NewDefault54
  br label %211, !dbg !2912

211:                                              ; preds = %210, %204, %198, %192, %191, %174
  %.8 = phi i32 [ %.5, %210 ], [ %205, %204 ], [ %199, %198 ], [ %193, %192 ], [ %.7, %191 ], [ %.6, %174 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2725, metadata !DIExpression()), !dbg !2772
  %212 = load i8*, i8** %7, align 4, !dbg !2913, !tbaa !335
  %213 = load i8, i8* %212, align 1, !dbg !2914, !tbaa !2162
  %214 = zext i8 %213 to i32, !dbg !2914
  br label %NodeBlock122

NodeBlock122:                                     ; preds = %211
  %Pivot123 = icmp slt i32 %214, 101
  br i1 %Pivot123, label %NodeBlock92, label %NodeBlock120

NodeBlock120:                                     ; preds = %NodeBlock122
  %Pivot121 = icmp slt i32 %214, 111
  br i1 %Pivot121, label %NodeBlock102, label %NodeBlock118

NodeBlock118:                                     ; preds = %NodeBlock120
  %Pivot119 = icmp slt i32 %214, 115
  br i1 %Pivot119, label %NodeBlock106, label %NodeBlock116

NodeBlock116:                                     ; preds = %NodeBlock118
  %Pivot117 = icmp slt i32 %214, 117
  br i1 %Pivot117, label %LeafBlock108, label %NodeBlock114

NodeBlock114:                                     ; preds = %NodeBlock116
  %Pivot115 = icmp slt i32 %214, 120
  br i1 %Pivot115, label %LeafBlock110, label %LeafBlock112

LeafBlock112:                                     ; preds = %NodeBlock114
  %SwitchLeaf113 = icmp eq i32 %214, 120
  br i1 %SwitchLeaf113, label %LeafBlock112._crit_edge, label %LeafBlock112.NewDefault73_crit_edge

LeafBlock112.NewDefault73_crit_edge:              ; preds = %LeafBlock112
  br label %NewDefault73

LeafBlock112._crit_edge:                          ; preds = %LeafBlock112
  br label %215

LeafBlock110:                                     ; preds = %NodeBlock114
  %SwitchLeaf111 = icmp eq i32 %214, 117
  br i1 %SwitchLeaf111, label %LeafBlock110._crit_edge, label %LeafBlock110.NewDefault73_crit_edge

LeafBlock110.NewDefault73_crit_edge:              ; preds = %LeafBlock110
  br label %NewDefault73

LeafBlock110._crit_edge:                          ; preds = %LeafBlock110
  br label %215

LeafBlock108:                                     ; preds = %NodeBlock116
  %SwitchLeaf109 = icmp eq i32 %214, 115
  br i1 %SwitchLeaf109, label %563, label %LeafBlock108.NewDefault73_crit_edge

LeafBlock108.NewDefault73_crit_edge:              ; preds = %LeafBlock108
  br label %NewDefault73

NodeBlock106:                                     ; preds = %NodeBlock118
  %Pivot107 = icmp slt i32 %214, 112
  br i1 %Pivot107, label %NodeBlock106._crit_edge, label %LeafBlock104

NodeBlock106._crit_edge:                          ; preds = %NodeBlock106
  br label %215

LeafBlock104:                                     ; preds = %NodeBlock106
  %SwitchLeaf105 = icmp eq i32 %214, 112
  br i1 %SwitchLeaf105, label %637, label %LeafBlock104.NewDefault73_crit_edge

LeafBlock104.NewDefault73_crit_edge:              ; preds = %LeafBlock104
  br label %NewDefault73

NodeBlock102:                                     ; preds = %NodeBlock120
  %Pivot103 = icmp slt i32 %214, 103
  br i1 %Pivot103, label %NodeBlock94, label %NodeBlock100

NodeBlock100:                                     ; preds = %NodeBlock102
  %Pivot101 = icmp slt i32 %214, 105
  br i1 %Pivot101, label %LeafBlock96, label %LeafBlock98

LeafBlock98:                                      ; preds = %NodeBlock100
  %SwitchLeaf99 = icmp eq i32 %214, 105
  br i1 %SwitchLeaf99, label %LeafBlock98._crit_edge, label %LeafBlock98.NewDefault73_crit_edge

LeafBlock98.NewDefault73_crit_edge:               ; preds = %LeafBlock98
  br label %NewDefault73

LeafBlock98._crit_edge:                           ; preds = %LeafBlock98
  br label %215

LeafBlock96:                                      ; preds = %NodeBlock100
  %SwitchLeaf97 = icmp eq i32 %214, 103
  br i1 %SwitchLeaf97, label %LeafBlock96._crit_edge, label %LeafBlock96.NewDefault73_crit_edge

LeafBlock96.NewDefault73_crit_edge:               ; preds = %LeafBlock96
  br label %NewDefault73

LeafBlock96._crit_edge:                           ; preds = %LeafBlock96
  br label %480

NodeBlock94:                                      ; preds = %NodeBlock102
  %Pivot95 = icmp slt i32 %214, 102
  br i1 %Pivot95, label %NodeBlock94._crit_edge, label %NodeBlock94._crit_edge130

NodeBlock94._crit_edge130:                        ; preds = %NodeBlock94
  br label %454

NodeBlock94._crit_edge:                           ; preds = %NodeBlock94
  br label %480

NodeBlock92:                                      ; preds = %NodeBlock122
  %Pivot93 = icmp slt i32 %214, 88
  br i1 %Pivot93, label %NodeBlock82, label %NodeBlock90

NodeBlock90:                                      ; preds = %NodeBlock92
  %Pivot91 = icmp slt i32 %214, 99
  br i1 %Pivot91, label %NodeBlock86, label %NodeBlock88

NodeBlock88:                                      ; preds = %NodeBlock90
  %Pivot89 = icmp slt i32 %214, 100
  br i1 %Pivot89, label %523, label %NodeBlock88._crit_edge

NodeBlock88._crit_edge:                           ; preds = %NodeBlock88
  br label %215

NodeBlock86:                                      ; preds = %NodeBlock90
  %Pivot87 = icmp slt i32 %214, 98
  br i1 %Pivot87, label %LeafBlock84, label %NodeBlock86._crit_edge

NodeBlock86._crit_edge:                           ; preds = %NodeBlock86
  br label %215

LeafBlock84:                                      ; preds = %NodeBlock86
  %SwitchLeaf85 = icmp eq i32 %214, 88
  br i1 %SwitchLeaf85, label %LeafBlock84._crit_edge, label %LeafBlock84.NewDefault73_crit_edge

LeafBlock84.NewDefault73_crit_edge:               ; preds = %LeafBlock84
  br label %NewDefault73

LeafBlock84._crit_edge:                           ; preds = %LeafBlock84
  br label %215

NodeBlock82:                                      ; preds = %NodeBlock92
  %Pivot83 = icmp slt i32 %214, 70
  br i1 %Pivot83, label %NodeBlock76, label %NodeBlock80

NodeBlock80:                                      ; preds = %NodeBlock82
  %Pivot81 = icmp slt i32 %214, 71
  br i1 %Pivot81, label %NodeBlock80._crit_edge, label %LeafBlock78

NodeBlock80._crit_edge:                           ; preds = %NodeBlock80
  br label %454

LeafBlock78:                                      ; preds = %NodeBlock80
  %SwitchLeaf79 = icmp eq i32 %214, 71
  br i1 %SwitchLeaf79, label %LeafBlock78._crit_edge, label %LeafBlock78.NewDefault73_crit_edge

LeafBlock78.NewDefault73_crit_edge:               ; preds = %LeafBlock78
  br label %NewDefault73

LeafBlock78._crit_edge:                           ; preds = %LeafBlock78
  br label %480

NodeBlock76:                                      ; preds = %NodeBlock82
  %Pivot77 = icmp slt i32 %214, 69
  br i1 %Pivot77, label %LeafBlock74, label %NodeBlock76._crit_edge

NodeBlock76._crit_edge:                           ; preds = %NodeBlock76
  br label %480

LeafBlock74:                                      ; preds = %NodeBlock76
  %SwitchLeaf75 = icmp eq i32 %214, 37
  br i1 %SwitchLeaf75, label %654, label %LeafBlock74.NewDefault73_crit_edge

LeafBlock74.NewDefault73_crit_edge:               ; preds = %LeafBlock74
  br label %NewDefault73

215:                                              ; preds = %LeafBlock84._crit_edge, %NodeBlock86._crit_edge, %NodeBlock88._crit_edge, %LeafBlock98._crit_edge, %NodeBlock106._crit_edge, %LeafBlock110._crit_edge, %LeafBlock112._crit_edge
  %216 = load i8*, i8** %7, align 4, !dbg !2915, !tbaa !335
  %217 = load i8, i8* %216, align 1, !dbg !2917, !tbaa !2162
  %218 = zext i8 %217 to i32, !dbg !2917
  %219 = icmp eq i32 %218, 120, !dbg !2918
  br i1 %219, label %._crit_edge131, label %220, !dbg !2919

._crit_edge131:                                   ; preds = %215
  br label %225, !dbg !2919

220:                                              ; preds = %215
  %221 = load i8*, i8** %7, align 4, !dbg !2920, !tbaa !335
  %222 = load i8, i8* %221, align 1, !dbg !2921, !tbaa !2162
  %223 = zext i8 %222 to i32, !dbg !2921
  %224 = icmp eq i32 %223, 88, !dbg !2922
  br i1 %224, label %._crit_edge132, label %226, !dbg !2923

._crit_edge132:                                   ; preds = %220
  br label %225, !dbg !2923

225:                                              ; preds = %._crit_edge132, %._crit_edge131
  call void @llvm.dbg.value(metadata i32 16, metadata !2741, metadata !DIExpression()), !dbg !2924
  br label %242, !dbg !2925

226:                                              ; preds = %220
  %227 = load i8*, i8** %7, align 4, !dbg !2927, !tbaa !335
  %228 = load i8, i8* %227, align 1, !dbg !2929, !tbaa !2162
  %229 = zext i8 %228 to i32, !dbg !2929
  %230 = icmp eq i32 %229, 111, !dbg !2930
  br i1 %230, label %231, label %232, !dbg !2931

231:                                              ; preds = %226
  call void @llvm.dbg.value(metadata i32 8, metadata !2741, metadata !DIExpression()), !dbg !2924
  br label %241, !dbg !2932

232:                                              ; preds = %226
  %233 = load i8*, i8** %7, align 4, !dbg !2934, !tbaa !335
  %234 = load i8, i8* %233, align 1, !dbg !2936, !tbaa !2162
  %235 = zext i8 %234 to i32, !dbg !2936
  %236 = icmp eq i32 %235, 98, !dbg !2937
  br i1 %236, label %237, label %238, !dbg !2938

237:                                              ; preds = %232
  call void @llvm.dbg.value(metadata i32 2, metadata !2741, metadata !DIExpression()), !dbg !2924
  br label %240, !dbg !2939

238:                                              ; preds = %232
  call void @llvm.dbg.value(metadata i32 10, metadata !2741, metadata !DIExpression()), !dbg !2924
  %239 = and i32 %.8, -17, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %239, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %240

240:                                              ; preds = %238, %237
  %.037 = phi i32 [ 2, %237 ], [ 10, %238 ], !dbg !2943
  %.9 = phi i32 [ %.8, %237 ], [ %239, %238 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.037, metadata !2741, metadata !DIExpression()), !dbg !2924
  br label %241

241:                                              ; preds = %240, %231
  %.138 = phi i32 [ 8, %231 ], [ %.037, %240 ], !dbg !2944
  %.10 = phi i32 [ %.8, %231 ], [ %.9, %240 ], !dbg !2854
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.138, metadata !2741, metadata !DIExpression()), !dbg !2924
  br label %242

242:                                              ; preds = %241, %225
  %.239 = phi i32 [ 16, %225 ], [ %.138, %241 ], !dbg !2945
  %.11 = phi i32 [ %.8, %225 ], [ %.10, %241 ], !dbg !2854
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.239, metadata !2741, metadata !DIExpression()), !dbg !2924
  %243 = load i8*, i8** %7, align 4, !dbg !2946, !tbaa !335
  %244 = load i8, i8* %243, align 1, !dbg !2948, !tbaa !2162
  %245 = zext i8 %244 to i32, !dbg !2948
  %246 = icmp eq i32 %245, 88, !dbg !2949
  br i1 %246, label %247, label %._crit_edge133, !dbg !2950

._crit_edge133:                                   ; preds = %242
  br label %249, !dbg !2950

247:                                              ; preds = %242
  %248 = or i32 %.11, 32, !dbg !2951
  call void @llvm.dbg.value(metadata i32 %248, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %249, !dbg !2953

249:                                              ; preds = %247, %._crit_edge133
  %.12 = phi i32 [ %248, %247 ], [ %.11, %._crit_edge133 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2725, metadata !DIExpression()), !dbg !2772
  %250 = load i8*, i8** %7, align 4, !dbg !2954, !tbaa !335
  %251 = load i8, i8* %250, align 1, !dbg !2956, !tbaa !2162
  %252 = zext i8 %251 to i32, !dbg !2956
  %253 = icmp ne i32 %252, 105, !dbg !2957
  br i1 %253, label %254, label %._crit_edge134, !dbg !2958

._crit_edge134:                                   ; preds = %249
  br label %261, !dbg !2958

254:                                              ; preds = %249
  %255 = load i8*, i8** %7, align 4, !dbg !2959, !tbaa !335
  %256 = load i8, i8* %255, align 1, !dbg !2960, !tbaa !2162
  %257 = zext i8 %256 to i32, !dbg !2960
  %258 = icmp ne i32 %257, 100, !dbg !2961
  br i1 %258, label %259, label %._crit_edge135, !dbg !2962

._crit_edge135:                                   ; preds = %254
  br label %261, !dbg !2962

259:                                              ; preds = %254
  %260 = and i32 %.12, -13, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %260, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %261, !dbg !2965

261:                                              ; preds = %259, %._crit_edge135, %._crit_edge134
  %.13 = phi i32 [ %260, %259 ], [ %.12, %._crit_edge135 ], [ %.12, %._crit_edge134 ], !dbg !2924
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2725, metadata !DIExpression()), !dbg !2772
  %262 = and i32 %.13, 1024, !dbg !2966
  %263 = icmp ne i32 %262, 0, !dbg !2966
  br i1 %263, label %264, label %._crit_edge136, !dbg !2968

._crit_edge136:                                   ; preds = %261
  br label %266, !dbg !2968

264:                                              ; preds = %261
  %265 = and i32 %.13, -2, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %265, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %266, !dbg !2971

266:                                              ; preds = %264, %._crit_edge136
  %.147 = phi i32 [ %265, %264 ], [ %.13, %._crit_edge136 ], !dbg !2924
  call void @llvm.dbg.value(metadata i32 %.147, metadata !2725, metadata !DIExpression()), !dbg !2772
  %267 = load i8*, i8** %7, align 4, !dbg !2972, !tbaa !335
  %268 = load i8, i8* %267, align 1, !dbg !2973, !tbaa !2162
  %269 = zext i8 %268 to i32, !dbg !2973
  %270 = icmp eq i32 %269, 105, !dbg !2974
  br i1 %270, label %._crit_edge137, label %271, !dbg !2975

._crit_edge137:                                   ; preds = %266
  br label %276, !dbg !2975

271:                                              ; preds = %266
  %272 = load i8*, i8** %7, align 4, !dbg !2976, !tbaa !335
  %273 = load i8, i8* %272, align 1, !dbg !2977, !tbaa !2162
  %274 = zext i8 %273 to i32, !dbg !2977
  %275 = icmp eq i32 %274, 100, !dbg !2978
  br i1 %275, label %._crit_edge138, label %373, !dbg !2979

._crit_edge138:                                   ; preds = %271
  br label %276, !dbg !2979

276:                                              ; preds = %._crit_edge138, %._crit_edge137
  %277 = and i32 %.147, 512, !dbg !2980
  %278 = icmp ne i32 %277, 0, !dbg !2980
  br i1 %278, label %279, label %302, !dbg !2981

279:                                              ; preds = %276
  %280 = bitcast %struct.__va_list* %6 to i8**, !dbg !2982
  %281 = load i8*, i8** %280, align 4, !dbg !2982, !idemp_war_rd !298
  %282 = ptrtoint i8* %281 to i32, !dbg !2982
  %283 = add i32 %282, 7, !dbg !2982
  %284 = and i32 %283, -8, !dbg !2982
  %285 = inttoptr i32 %284 to i8*, !dbg !2982
  %286 = getelementptr inbounds i8, i8* %285, i32 8, !dbg !2982
  %287 = load i32, i32* @__checkpoint_count, align 4, !dbg !2982, !idemp_checkpoint_count !298
  %288 = add i32 %287, 1, !dbg !2982, !idemp_checkpoint_count !298
  store volatile i32 %288, i32* @__checkpoint_count, align 4, !dbg !2982, !idemp_checkpoint_count !298
  store i8* %286, i8** %280, align 4, !dbg !2982, !idemp_war_wr !298, !idemp_uncut_war !298
  %289 = bitcast i8* %285 to i64*, !dbg !2982
  %290 = load i64, i64* %289, align 8, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %290, metadata !2744, metadata !DIExpression()), !dbg !2983
  %291 = icmp sgt i64 %290, 0, !dbg !2984
  br i1 %291, label %292, label %293, !dbg !2985

292:                                              ; preds = %279
  br label %295, !dbg !2985

293:                                              ; preds = %279
  %294 = sub nsw i64 0, %290, !dbg !2986
  br label %295, !dbg !2985

295:                                              ; preds = %293, %292
  %296 = phi i64 [ %290, %292 ], [ %294, %293 ], !dbg !2985
  %297 = icmp slt i64 %290, 0, !dbg !2987
  %298 = zext i32 %.239 to i64, !dbg !2988
  %299 = load i32, i32* @__checkpoint_count, align 4, !dbg !2989, !idemp_checkpoint_count !298
  %300 = add i32 %299, 1, !dbg !2989, !idemp_checkpoint_count !298
  store volatile i32 %300, i32* @__checkpoint_count, align 4, !dbg !2989, !idemp_checkpoint_count !298
  %301 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %296, i1 zeroext %297, i64 %298, i32 %.213, i32 %.210, i32 %.147), !dbg !2989
  call void @llvm.dbg.value(metadata i32 %301, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %372, !dbg !2990

302:                                              ; preds = %276
  %303 = and i32 %.147, 256, !dbg !2991
  %304 = icmp ne i32 %303, 0, !dbg !2991
  br i1 %304, label %305, label %323, !dbg !2992

305:                                              ; preds = %302
  %306 = bitcast %struct.__va_list* %6 to i8**, !dbg !2993
  %307 = load i8*, i8** %306, align 4, !dbg !2993, !idemp_war_rd !298
  %308 = getelementptr inbounds i8, i8* %307, i32 4, !dbg !2993
  %309 = load i32, i32* @__checkpoint_count, align 4, !dbg !2993, !idemp_checkpoint_count !298
  %310 = add i32 %309, 1, !dbg !2993, !idemp_checkpoint_count !298
  store volatile i32 %310, i32* @__checkpoint_count, align 4, !dbg !2993, !idemp_checkpoint_count !298
  store i8* %308, i8** %306, align 4, !dbg !2993, !idemp_war_wr !298, !idemp_uncut_war !298
  %311 = bitcast i8* %307 to i32*, !dbg !2993
  %312 = load i32, i32* %311, align 4, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %312, metadata !2751, metadata !DIExpression()), !dbg !2994
  %313 = icmp sgt i32 %312, 0, !dbg !2995
  br i1 %313, label %314, label %315, !dbg !2996

314:                                              ; preds = %305
  br label %317, !dbg !2996

315:                                              ; preds = %305
  %316 = sub nsw i32 0, %312, !dbg !2997
  br label %317, !dbg !2996

317:                                              ; preds = %315, %314
  %318 = phi i32 [ %312, %314 ], [ %316, %315 ], !dbg !2996
  %319 = icmp slt i32 %312, 0, !dbg !2998
  %320 = load i32, i32* @__checkpoint_count, align 4, !dbg !2999, !idemp_checkpoint_count !298
  %321 = add i32 %320, 1, !dbg !2999, !idemp_checkpoint_count !298
  store volatile i32 %321, i32* @__checkpoint_count, align 4, !dbg !2999, !idemp_checkpoint_count !298
  %322 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %318, i1 zeroext %319, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !2999
  call void @llvm.dbg.value(metadata i32 %322, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %371, !dbg !3000

323:                                              ; preds = %302
  %324 = and i32 %.147, 64, !dbg !3001
  %325 = icmp ne i32 %324, 0, !dbg !3001
  br i1 %325, label %326, label %336, !dbg !3002

326:                                              ; preds = %323
  %327 = bitcast %struct.__va_list* %6 to i8**, !dbg !3003
  %328 = load i8*, i8** %327, align 4, !dbg !3003, !idemp_war_rd !298
  %329 = getelementptr inbounds i8, i8* %328, i32 4, !dbg !3003
  %330 = load i32, i32* @__checkpoint_count, align 4, !dbg !3003, !idemp_checkpoint_count !298
  %331 = add i32 %330, 1, !dbg !3003, !idemp_checkpoint_count !298
  store volatile i32 %331, i32* @__checkpoint_count, align 4, !dbg !3003, !idemp_checkpoint_count !298
  store i8* %329, i8** %327, align 4, !dbg !3003, !idemp_war_wr !298, !idemp_uncut_war !298
  %332 = bitcast i8* %328 to i32*, !dbg !3003
  %333 = load i32, i32* %332, align 4, !dbg !3003
  %334 = trunc i32 %333 to i8, !dbg !3004
  %335 = zext i8 %334 to i32, !dbg !3004
  br label %359, !dbg !3002

336:                                              ; preds = %323
  %337 = and i32 %.147, 128, !dbg !3005
  %338 = icmp ne i32 %337, 0, !dbg !3005
  br i1 %338, label %339, label %349, !dbg !3006

339:                                              ; preds = %336
  %340 = bitcast %struct.__va_list* %6 to i8**, !dbg !3007
  %341 = load i8*, i8** %340, align 4, !dbg !3007, !idemp_war_rd !298
  %342 = getelementptr inbounds i8, i8* %341, i32 4, !dbg !3007
  %343 = load i32, i32* @__checkpoint_count, align 4, !dbg !3007, !idemp_checkpoint_count !298
  %344 = add i32 %343, 1, !dbg !3007, !idemp_checkpoint_count !298
  store volatile i32 %344, i32* @__checkpoint_count, align 4, !dbg !3007, !idemp_checkpoint_count !298
  store i8* %342, i8** %340, align 4, !dbg !3007, !idemp_war_wr !298, !idemp_uncut_war !298
  %345 = bitcast i8* %341 to i32*, !dbg !3007
  %346 = load i32, i32* %345, align 4, !dbg !3007
  %347 = trunc i32 %346 to i16, !dbg !3008
  %348 = sext i16 %347 to i32, !dbg !3008
  br label %357, !dbg !3006

349:                                              ; preds = %336
  %350 = bitcast %struct.__va_list* %6 to i8**, !dbg !3009
  %351 = load i8*, i8** %350, align 4, !dbg !3009, !idemp_war_rd !298
  %352 = getelementptr inbounds i8, i8* %351, i32 4, !dbg !3009
  %353 = load i32, i32* @__checkpoint_count, align 4, !dbg !3009, !idemp_checkpoint_count !298
  %354 = add i32 %353, 1, !dbg !3009, !idemp_checkpoint_count !298
  store volatile i32 %354, i32* @__checkpoint_count, align 4, !dbg !3009, !idemp_checkpoint_count !298
  store i8* %352, i8** %350, align 4, !dbg !3009, !idemp_war_wr !298, !idemp_uncut_war !298
  %355 = bitcast i8* %351 to i32*, !dbg !3009
  %356 = load i32, i32* %355, align 4, !dbg !3009
  br label %357, !dbg !3006

357:                                              ; preds = %349, %339
  %358 = phi i32 [ %348, %339 ], [ %356, %349 ], !dbg !3006
  br label %359, !dbg !3002

359:                                              ; preds = %357, %326
  %360 = phi i32 [ %335, %326 ], [ %358, %357 ], !dbg !3002
  call void @llvm.dbg.value(metadata i32 %360, metadata !2756, metadata !DIExpression()), !dbg !3010
  %361 = icmp sgt i32 %360, 0, !dbg !3011
  br i1 %361, label %362, label %363, !dbg !3012

362:                                              ; preds = %359
  br label %365, !dbg !3012

363:                                              ; preds = %359
  %364 = sub nsw i32 0, %360, !dbg !3013
  br label %365, !dbg !3012

365:                                              ; preds = %363, %362
  %366 = phi i32 [ %360, %362 ], [ %364, %363 ], !dbg !3012
  %367 = icmp slt i32 %360, 0, !dbg !3014
  %368 = load i32, i32* @__checkpoint_count, align 4, !dbg !3015, !idemp_checkpoint_count !298
  %369 = add i32 %368, 1, !dbg !3015, !idemp_checkpoint_count !298
  store volatile i32 %369, i32* @__checkpoint_count, align 4, !dbg !3015, !idemp_checkpoint_count !298
  %370 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %366, i1 zeroext %367, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3015
  call void @llvm.dbg.value(metadata i32 %370, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %371

371:                                              ; preds = %365, %317
  %.119 = phi i32 [ %322, %317 ], [ %370, %365 ], !dbg !3016
  call void @llvm.dbg.value(metadata i32 %.119, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %372

372:                                              ; preds = %371, %295
  %.220 = phi i32 [ %301, %295 ], [ %.119, %371 ], !dbg !3017
  call void @llvm.dbg.value(metadata i32 %.220, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %449, !dbg !3018

373:                                              ; preds = %271
  %374 = and i32 %.147, 512, !dbg !3019
  %375 = icmp ne i32 %374, 0, !dbg !3019
  br i1 %375, label %376, label %392, !dbg !3020

376:                                              ; preds = %373
  %377 = bitcast %struct.__va_list* %6 to i8**, !dbg !3021
  %378 = load i8*, i8** %377, align 4, !dbg !3021, !idemp_war_rd !298
  %379 = ptrtoint i8* %378 to i32, !dbg !3021
  %380 = add i32 %379, 7, !dbg !3021
  %381 = and i32 %380, -8, !dbg !3021
  %382 = inttoptr i32 %381 to i8*, !dbg !3021
  %383 = getelementptr inbounds i8, i8* %382, i32 8, !dbg !3021
  %384 = load i32, i32* @__checkpoint_count, align 4, !dbg !3021, !idemp_checkpoint_count !298
  %385 = add i32 %384, 1, !dbg !3021, !idemp_checkpoint_count !298
  store volatile i32 %385, i32* @__checkpoint_count, align 4, !dbg !3021, !idemp_checkpoint_count !298
  store i8* %383, i8** %377, align 4, !dbg !3021, !idemp_war_wr !298, !idemp_uncut_war !298
  %386 = bitcast i8* %382 to i64*, !dbg !3021
  %387 = load i64, i64* %386, align 8, !dbg !3021
  %388 = zext i32 %.239 to i64, !dbg !3023
  %389 = load i32, i32* @__checkpoint_count, align 4, !dbg !3024, !idemp_checkpoint_count !298
  %390 = add i32 %389, 1, !dbg !3024, !idemp_checkpoint_count !298
  store volatile i32 %390, i32* @__checkpoint_count, align 4, !dbg !3024, !idemp_checkpoint_count !298
  %391 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %387, i1 zeroext false, i64 %388, i32 %.213, i32 %.210, i32 %.147), !dbg !3024
  call void @llvm.dbg.value(metadata i32 %391, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %448, !dbg !3025

392:                                              ; preds = %373
  %393 = and i32 %.147, 256, !dbg !3026
  %394 = icmp ne i32 %393, 0, !dbg !3026
  br i1 %394, label %395, label %406, !dbg !3027

395:                                              ; preds = %392
  %396 = bitcast %struct.__va_list* %6 to i8**, !dbg !3028
  %397 = load i8*, i8** %396, align 4, !dbg !3028, !idemp_war_rd !298
  %398 = getelementptr inbounds i8, i8* %397, i32 4, !dbg !3028
  %399 = load i32, i32* @__checkpoint_count, align 4, !dbg !3028, !idemp_checkpoint_count !298
  %400 = add i32 %399, 1, !dbg !3028, !idemp_checkpoint_count !298
  store volatile i32 %400, i32* @__checkpoint_count, align 4, !dbg !3028, !idemp_checkpoint_count !298
  store i8* %398, i8** %396, align 4, !dbg !3028, !idemp_war_wr !298, !idemp_uncut_war !298
  %401 = bitcast i8* %397 to i32*, !dbg !3028
  %402 = load i32, i32* %401, align 4, !dbg !3028
  %403 = load i32, i32* @__checkpoint_count, align 4, !dbg !3030, !idemp_checkpoint_count !298
  %404 = add i32 %403, 1, !dbg !3030, !idemp_checkpoint_count !298
  store volatile i32 %404, i32* @__checkpoint_count, align 4, !dbg !3030, !idemp_checkpoint_count !298
  %405 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %402, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3030
  call void @llvm.dbg.value(metadata i32 %405, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %447, !dbg !3031

406:                                              ; preds = %392
  %407 = and i32 %.147, 64, !dbg !3032
  %408 = icmp ne i32 %407, 0, !dbg !3032
  br i1 %408, label %409, label %419, !dbg !3033

409:                                              ; preds = %406
  %410 = bitcast %struct.__va_list* %6 to i8**, !dbg !3034
  %411 = load i8*, i8** %410, align 4, !dbg !3034, !idemp_war_rd !298
  %412 = getelementptr inbounds i8, i8* %411, i32 4, !dbg !3034
  %413 = load i32, i32* @__checkpoint_count, align 4, !dbg !3034, !idemp_checkpoint_count !298
  %414 = add i32 %413, 1, !dbg !3034, !idemp_checkpoint_count !298
  store volatile i32 %414, i32* @__checkpoint_count, align 4, !dbg !3034, !idemp_checkpoint_count !298
  store i8* %412, i8** %410, align 4, !dbg !3034, !idemp_war_wr !298, !idemp_uncut_war !298
  %415 = bitcast i8* %411 to i32*, !dbg !3034
  %416 = load i32, i32* %415, align 4, !dbg !3034
  %417 = trunc i32 %416 to i8, !dbg !3035
  %418 = zext i8 %417 to i32, !dbg !3035
  br label %442, !dbg !3033

419:                                              ; preds = %406
  %420 = and i32 %.147, 128, !dbg !3036
  %421 = icmp ne i32 %420, 0, !dbg !3036
  br i1 %421, label %422, label %432, !dbg !3037

422:                                              ; preds = %419
  %423 = bitcast %struct.__va_list* %6 to i8**, !dbg !3038
  %424 = load i8*, i8** %423, align 4, !dbg !3038, !idemp_war_rd !298
  %425 = getelementptr inbounds i8, i8* %424, i32 4, !dbg !3038
  %426 = load i32, i32* @__checkpoint_count, align 4, !dbg !3038, !idemp_checkpoint_count !298
  %427 = add i32 %426, 1, !dbg !3038, !idemp_checkpoint_count !298
  store volatile i32 %427, i32* @__checkpoint_count, align 4, !dbg !3038, !idemp_checkpoint_count !298
  store i8* %425, i8** %423, align 4, !dbg !3038, !idemp_war_wr !298, !idemp_uncut_war !298
  %428 = bitcast i8* %424 to i32*, !dbg !3038
  %429 = load i32, i32* %428, align 4, !dbg !3038
  %430 = trunc i32 %429 to i16, !dbg !3039
  %431 = zext i16 %430 to i32, !dbg !3039
  br label %440, !dbg !3037

432:                                              ; preds = %419
  %433 = bitcast %struct.__va_list* %6 to i8**, !dbg !3040
  %434 = load i8*, i8** %433, align 4, !dbg !3040, !idemp_war_rd !298
  %435 = getelementptr inbounds i8, i8* %434, i32 4, !dbg !3040
  %436 = load i32, i32* @__checkpoint_count, align 4, !dbg !3040, !idemp_checkpoint_count !298
  %437 = add i32 %436, 1, !dbg !3040, !idemp_checkpoint_count !298
  store volatile i32 %437, i32* @__checkpoint_count, align 4, !dbg !3040, !idemp_checkpoint_count !298
  store i8* %435, i8** %433, align 4, !dbg !3040, !idemp_war_wr !298, !idemp_uncut_war !298
  %438 = bitcast i8* %434 to i32*, !dbg !3040
  %439 = load i32, i32* %438, align 4, !dbg !3040
  br label %440, !dbg !3037

440:                                              ; preds = %432, %422
  %441 = phi i32 [ %431, %422 ], [ %439, %432 ], !dbg !3037
  br label %442, !dbg !3033

442:                                              ; preds = %440, %409
  %443 = phi i32 [ %418, %409 ], [ %441, %440 ], !dbg !3033
  call void @llvm.dbg.value(metadata i32 %443, metadata !2758, metadata !DIExpression()), !dbg !3041
  %444 = load i32, i32* @__checkpoint_count, align 4, !dbg !3042, !idemp_checkpoint_count !298
  %445 = add i32 %444, 1, !dbg !3042, !idemp_checkpoint_count !298
  store volatile i32 %445, i32* @__checkpoint_count, align 4, !dbg !3042, !idemp_checkpoint_count !298
  %446 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %443, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %446, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %447

447:                                              ; preds = %442, %395
  %.321 = phi i32 [ %405, %395 ], [ %446, %442 ], !dbg !3043
  call void @llvm.dbg.value(metadata i32 %.321, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %448

448:                                              ; preds = %447, %376
  %.422 = phi i32 [ %391, %376 ], [ %.321, %447 ], !dbg !3044
  call void @llvm.dbg.value(metadata i32 %.422, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %449

449:                                              ; preds = %448, %372
  %.523 = phi i32 [ %.220, %372 ], [ %.422, %448 ], !dbg !3045
  call void @llvm.dbg.value(metadata i32 %.523, metadata !2729, metadata !DIExpression()), !dbg !2772
  %450 = load i8*, i8** %7, align 4, !dbg !3046, !tbaa !335, !idemp_war_rd !298
  %451 = getelementptr inbounds i8, i8* %450, i32 1, !dbg !3046
  %452 = load i32, i32* @__checkpoint_count, align 4, !dbg !3046, !idemp_checkpoint_count !298
  %453 = add i32 %452, 1, !dbg !3046, !idemp_checkpoint_count !298
  store volatile i32 %453, i32* @__checkpoint_count, align 4, !dbg !3046, !idemp_checkpoint_count !298
  store i8* %451, i8** %7, align 4, !dbg !3046, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %672

454:                                              ; preds = %NodeBlock80._crit_edge, %NodeBlock94._crit_edge130
  %455 = load i8*, i8** %7, align 4, !dbg !3047, !tbaa !335
  %456 = load i8, i8* %455, align 1, !dbg !3049, !tbaa !2162
  %457 = zext i8 %456 to i32, !dbg !3049
  %458 = icmp eq i32 %457, 70, !dbg !3050
  br i1 %458, label %459, label %._crit_edge139, !dbg !3051

._crit_edge139:                                   ; preds = %454
  br label %461, !dbg !3051

459:                                              ; preds = %454
  %460 = or i32 %.8, 32, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %460, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %461, !dbg !3053

461:                                              ; preds = %459, %._crit_edge139
  %.15 = phi i32 [ %460, %459 ], [ %.8, %._crit_edge139 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2725, metadata !DIExpression()), !dbg !2772
  %462 = bitcast %struct.__va_list* %6 to i8**, !dbg !3054
  %463 = load i8*, i8** %462, align 4, !dbg !3054, !idemp_war_rd !298
  %464 = ptrtoint i8* %463 to i32, !dbg !3054
  %465 = add i32 %464, 7, !dbg !3054
  %466 = and i32 %465, -8, !dbg !3054
  %467 = inttoptr i32 %466 to i8*, !dbg !3054
  %468 = getelementptr inbounds i8, i8* %467, i32 8, !dbg !3054
  %469 = load i32, i32* @__checkpoint_count, align 4, !dbg !3054, !idemp_checkpoint_count !298
  %470 = add i32 %469, 1, !dbg !3054, !idemp_checkpoint_count !298
  store volatile i32 %470, i32* @__checkpoint_count, align 4, !dbg !3054, !idemp_checkpoint_count !298
  store i8* %468, i8** %462, align 4, !dbg !3054, !idemp_war_wr !298, !idemp_uncut_war !298
  %471 = bitcast i8* %467 to double*, !dbg !3054
  %472 = load double, double* %471, align 8, !dbg !3054
  %473 = load i32, i32* @__checkpoint_count, align 4, !dbg !3055, !idemp_checkpoint_count !298
  %474 = add i32 %473, 1, !dbg !3055, !idemp_checkpoint_count !298
  store volatile i32 %474, i32* @__checkpoint_count, align 4, !dbg !3055, !idemp_checkpoint_count !298
  %475 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %472, i32 %.213, i32 %.210, i32 %.15), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %475, metadata !2729, metadata !DIExpression()), !dbg !2772
  %476 = load i8*, i8** %7, align 4, !dbg !3056, !tbaa !335, !idemp_war_rd !298
  %477 = getelementptr inbounds i8, i8* %476, i32 1, !dbg !3056
  %478 = load i32, i32* @__checkpoint_count, align 4, !dbg !3056, !idemp_checkpoint_count !298
  %479 = add i32 %478, 1, !dbg !3056, !idemp_checkpoint_count !298
  store volatile i32 %479, i32* @__checkpoint_count, align 4, !dbg !3056, !idemp_checkpoint_count !298
  store i8* %477, i8** %7, align 4, !dbg !3056, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %672, !dbg !3057

480:                                              ; preds = %NodeBlock76._crit_edge, %LeafBlock78._crit_edge, %NodeBlock94._crit_edge, %LeafBlock96._crit_edge
  %481 = load i8*, i8** %7, align 4, !dbg !3058, !tbaa !335
  %482 = load i8, i8* %481, align 1, !dbg !3060, !tbaa !2162
  %483 = zext i8 %482 to i32, !dbg !3060
  %484 = icmp eq i32 %483, 103, !dbg !3061
  br i1 %484, label %._crit_edge140, label %485, !dbg !3062

._crit_edge140:                                   ; preds = %480
  br label %490, !dbg !3062

485:                                              ; preds = %480
  %486 = load i8*, i8** %7, align 4, !dbg !3063, !tbaa !335
  %487 = load i8, i8* %486, align 1, !dbg !3064, !tbaa !2162
  %488 = zext i8 %487 to i32, !dbg !3064
  %489 = icmp eq i32 %488, 71, !dbg !3065
  br i1 %489, label %._crit_edge141, label %._crit_edge142, !dbg !3066

._crit_edge142:                                   ; preds = %485
  br label %492, !dbg !3066

._crit_edge141:                                   ; preds = %485
  br label %490, !dbg !3066

490:                                              ; preds = %._crit_edge141, %._crit_edge140
  %491 = or i32 %.8, 2048, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %491, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %492, !dbg !3068

492:                                              ; preds = %490, %._crit_edge142
  %.16 = phi i32 [ %491, %490 ], [ %.8, %._crit_edge142 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2725, metadata !DIExpression()), !dbg !2772
  %493 = load i8*, i8** %7, align 4, !dbg !3069, !tbaa !335
  %494 = load i8, i8* %493, align 1, !dbg !3071, !tbaa !2162
  %495 = zext i8 %494 to i32, !dbg !3071
  %496 = icmp eq i32 %495, 69, !dbg !3072
  br i1 %496, label %._crit_edge143, label %497, !dbg !3073

._crit_edge143:                                   ; preds = %492
  br label %502, !dbg !3073

497:                                              ; preds = %492
  %498 = load i8*, i8** %7, align 4, !dbg !3074, !tbaa !335
  %499 = load i8, i8* %498, align 1, !dbg !3075, !tbaa !2162
  %500 = zext i8 %499 to i32, !dbg !3075
  %501 = icmp eq i32 %500, 71, !dbg !3076
  br i1 %501, label %._crit_edge144, label %._crit_edge145, !dbg !3077

._crit_edge145:                                   ; preds = %497
  br label %504, !dbg !3077

._crit_edge144:                                   ; preds = %497
  br label %502, !dbg !3077

502:                                              ; preds = %._crit_edge144, %._crit_edge143
  %503 = or i32 %.16, 32, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %503, metadata !2725, metadata !DIExpression()), !dbg !2772
  br label %504, !dbg !3079

504:                                              ; preds = %502, %._crit_edge145
  %.17 = phi i32 [ %503, %502 ], [ %.16, %._crit_edge145 ], !dbg !3080
  call void @llvm.dbg.value(metadata i32 %.17, metadata !2725, metadata !DIExpression()), !dbg !2772
  %505 = bitcast %struct.__va_list* %6 to i8**, !dbg !3081
  %506 = load i8*, i8** %505, align 4, !dbg !3081, !idemp_war_rd !298
  %507 = ptrtoint i8* %506 to i32, !dbg !3081
  %508 = add i32 %507, 7, !dbg !3081
  %509 = and i32 %508, -8, !dbg !3081
  %510 = inttoptr i32 %509 to i8*, !dbg !3081
  %511 = getelementptr inbounds i8, i8* %510, i32 8, !dbg !3081
  %512 = load i32, i32* @__checkpoint_count, align 4, !dbg !3081, !idemp_checkpoint_count !298
  %513 = add i32 %512, 1, !dbg !3081, !idemp_checkpoint_count !298
  store volatile i32 %513, i32* @__checkpoint_count, align 4, !dbg !3081, !idemp_checkpoint_count !298
  store i8* %511, i8** %505, align 4, !dbg !3081, !idemp_war_wr !298, !idemp_uncut_war !298
  %514 = bitcast i8* %510 to double*, !dbg !3081
  %515 = load double, double* %514, align 8, !dbg !3081
  %516 = load i32, i32* @__checkpoint_count, align 4, !dbg !3082, !idemp_checkpoint_count !298
  %517 = add i32 %516, 1, !dbg !3082, !idemp_checkpoint_count !298
  store volatile i32 %517, i32* @__checkpoint_count, align 4, !dbg !3082, !idemp_checkpoint_count !298
  %518 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %515, i32 %.213, i32 %.210, i32 %.17), !dbg !3082
  call void @llvm.dbg.value(metadata i32 %518, metadata !2729, metadata !DIExpression()), !dbg !2772
  %519 = load i8*, i8** %7, align 4, !dbg !3083, !tbaa !335, !idemp_war_rd !298
  %520 = getelementptr inbounds i8, i8* %519, i32 1, !dbg !3083
  %521 = load i32, i32* @__checkpoint_count, align 4, !dbg !3083, !idemp_checkpoint_count !298
  %522 = add i32 %521, 1, !dbg !3083, !idemp_checkpoint_count !298
  store volatile i32 %522, i32* @__checkpoint_count, align 4, !dbg !3083, !idemp_checkpoint_count !298
  store i8* %520, i8** %7, align 4, !dbg !3083, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %672, !dbg !3084

523:                                              ; preds = %NodeBlock88
  call void @llvm.dbg.value(metadata i32 1, metadata !2764, metadata !DIExpression()), !dbg !3085
  %524 = and i32 %.8, 2, !dbg !3086
  %525 = icmp ne i32 %524, 0, !dbg !3086
  br i1 %525, label %._crit_edge146, label %526, !dbg !3088

._crit_edge146:                                   ; preds = %523
  br label %535, !dbg !3088

526:                                              ; preds = %523
  br label %527, !dbg !3089

527:                                              ; preds = %530, %526
  %.034 = phi i32 [ 1, %526 ], [ %528, %530 ], !dbg !3085
  %.624 = phi i32 [ %.018, %526 ], [ %531, %530 ], !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.624, metadata !2729, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.034, metadata !2764, metadata !DIExpression()), !dbg !3085
  %528 = add i32 %.034, 1, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %528, metadata !2764, metadata !DIExpression()), !dbg !3085
  %529 = icmp ult i32 %.034, %.210, !dbg !3092
  br i1 %529, label %530, label %534, !dbg !3089

530:                                              ; preds = %527
  %531 = add i32 %.624, 1, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %531, metadata !2729, metadata !DIExpression()), !dbg !2772
  %532 = load i32, i32* @__checkpoint_count, align 4, !dbg !3095, !idemp_checkpoint_count !298
  %533 = add i32 %532, 1, !dbg !3095, !idemp_checkpoint_count !298
  store volatile i32 %533, i32* @__checkpoint_count, align 4, !dbg !3095, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.624, i32 %2), !dbg !3095
  br label %527, !dbg !3089, !llvm.loop !3096

534:                                              ; preds = %527
  %.624.lcssa = phi i32 [ %.624, %527 ], !dbg !2772
  %.lcssa153 = phi i32 [ %528, %527 ], !dbg !3091
  call void @llvm.dbg.value(metadata i32 %.624.lcssa, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %535, !dbg !3098

535:                                              ; preds = %534, %._crit_edge146
  %.135 = phi i32 [ 1, %._crit_edge146 ], [ %.lcssa153, %534 ], !dbg !3085
  %.725 = phi i32 [ %.018, %._crit_edge146 ], [ %.624.lcssa, %534 ], !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.725, metadata !2729, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.135, metadata !2764, metadata !DIExpression()), !dbg !3085
  %536 = bitcast %struct.__va_list* %6 to i8**, !dbg !3100
  %537 = load i8*, i8** %536, align 4, !dbg !3100, !idemp_war_rd !298
  %538 = getelementptr inbounds i8, i8* %537, i32 4, !dbg !3100
  %539 = load i32, i32* @__checkpoint_count, align 4, !dbg !3100, !idemp_checkpoint_count !298
  %540 = add i32 %539, 1, !dbg !3100, !idemp_checkpoint_count !298
  store volatile i32 %540, i32* @__checkpoint_count, align 4, !dbg !3100, !idemp_checkpoint_count !298
  store i8* %538, i8** %536, align 4, !dbg !3100, !idemp_war_wr !298, !idemp_uncut_war !298
  %541 = bitcast i8* %537 to i32*, !dbg !3100
  %542 = load i32, i32* %541, align 4, !dbg !3100
  %543 = trunc i32 %542 to i8, !dbg !3101
  %544 = add i32 %.725, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i32 %544, metadata !2729, metadata !DIExpression()), !dbg !2772
  %545 = load i32, i32* @__checkpoint_count, align 4, !dbg !3103, !idemp_checkpoint_count !298
  %546 = add i32 %545, 1, !dbg !3103, !idemp_checkpoint_count !298
  store volatile i32 %546, i32* @__checkpoint_count, align 4, !dbg !3103, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext %543, i8* %1, i32 %.725, i32 %2), !dbg !3103
  %547 = and i32 %.8, 2, !dbg !3104
  %548 = icmp ne i32 %547, 0, !dbg !3104
  br i1 %548, label %549, label %._crit_edge147, !dbg !3106

._crit_edge147:                                   ; preds = %535
  br label %558, !dbg !3106

549:                                              ; preds = %535
  br label %550, !dbg !3107

550:                                              ; preds = %553, %549
  %.236 = phi i32 [ %.135, %549 ], [ %551, %553 ], !dbg !3085
  %.826 = phi i32 [ %544, %549 ], [ %554, %553 ], !dbg !3085
  call void @llvm.dbg.value(metadata i32 %.826, metadata !2729, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.236, metadata !2764, metadata !DIExpression()), !dbg !3085
  %551 = add i32 %.236, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %551, metadata !2764, metadata !DIExpression()), !dbg !3085
  %552 = icmp ult i32 %.236, %.210, !dbg !3110
  br i1 %552, label %553, label %557, !dbg !3107

553:                                              ; preds = %550
  %554 = add i32 %.826, 1, !dbg !3111
  call void @llvm.dbg.value(metadata i32 %554, metadata !2729, metadata !DIExpression()), !dbg !2772
  %555 = load i32, i32* @__checkpoint_count, align 4, !dbg !3113, !idemp_checkpoint_count !298
  %556 = add i32 %555, 1, !dbg !3113, !idemp_checkpoint_count !298
  store volatile i32 %556, i32* @__checkpoint_count, align 4, !dbg !3113, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.826, i32 %2), !dbg !3113
  br label %550, !dbg !3107, !llvm.loop !3114

557:                                              ; preds = %550
  %.826.lcssa = phi i32 [ %.826, %550 ], !dbg !3085
  call void @llvm.dbg.value(metadata i32 %.826.lcssa, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %558, !dbg !3116

558:                                              ; preds = %557, %._crit_edge147
  %.927 = phi i32 [ %.826.lcssa, %557 ], [ %544, %._crit_edge147 ], !dbg !3102
  call void @llvm.dbg.value(metadata i32 %.927, metadata !2729, metadata !DIExpression()), !dbg !2772
  %559 = load i8*, i8** %7, align 4, !dbg !3117, !tbaa !335, !idemp_war_rd !298
  %560 = getelementptr inbounds i8, i8* %559, i32 1, !dbg !3117
  %561 = load i32, i32* @__checkpoint_count, align 4, !dbg !3117, !idemp_checkpoint_count !298
  %562 = add i32 %561, 1, !dbg !3117, !idemp_checkpoint_count !298
  store volatile i32 %562, i32* @__checkpoint_count, align 4, !dbg !3117, !idemp_checkpoint_count !298
  store i8* %560, i8** %7, align 4, !dbg !3117, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %672

563:                                              ; preds = %LeafBlock108
  %564 = bitcast %struct.__va_list* %6 to i8**, !dbg !3118
  %565 = load i8*, i8** %564, align 4, !dbg !3118, !idemp_war_rd !298
  %566 = getelementptr inbounds i8, i8* %565, i32 4, !dbg !3118
  %567 = load i32, i32* @__checkpoint_count, align 4, !dbg !3118, !idemp_checkpoint_count !298
  %568 = add i32 %567, 1, !dbg !3118, !idemp_checkpoint_count !298
  store volatile i32 %568, i32* @__checkpoint_count, align 4, !dbg !3118, !idemp_checkpoint_count !298
  store i8* %566, i8** %564, align 4, !dbg !3118, !idemp_war_wr !298, !idemp_uncut_war !298
  %569 = bitcast i8* %565 to i8**, !dbg !3118
  %570 = load i8*, i8** %569, align 4, !dbg !3118
  call void @llvm.dbg.value(metadata i8* %570, metadata !2766, metadata !DIExpression()), !dbg !3119
  %571 = icmp ne i32 %.213, 0, !dbg !3120
  br i1 %571, label %572, label %573, !dbg !3120

572:                                              ; preds = %563
  br label %574, !dbg !3120

573:                                              ; preds = %563
  br label %574, !dbg !3120

574:                                              ; preds = %573, %572
  %575 = phi i32 [ %.213, %572 ], [ -1, %573 ], !dbg !3120
  %576 = load i32, i32* @__checkpoint_count, align 4, !dbg !3121, !idemp_checkpoint_count !298
  %577 = add i32 %576, 1, !dbg !3121, !idemp_checkpoint_count !298
  store volatile i32 %577, i32* @__checkpoint_count, align 4, !dbg !3121, !idemp_checkpoint_count !298
  %578 = call arm_aapcscc i32 @_strnlen_s(i8* %570, i32 %575), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %578, metadata !2768, metadata !DIExpression()), !dbg !3119
  %579 = and i32 %.8, 1024, !dbg !3122
  %580 = icmp ne i32 %579, 0, !dbg !3122
  br i1 %580, label %581, label %._crit_edge148, !dbg !3124

._crit_edge148:                                   ; preds = %574
  br label %587, !dbg !3124

581:                                              ; preds = %574
  %582 = icmp ult i32 %578, %.213, !dbg !3125
  br i1 %582, label %583, label %584, !dbg !3127

583:                                              ; preds = %581
  br label %585, !dbg !3127

584:                                              ; preds = %581
  br label %585, !dbg !3127

585:                                              ; preds = %584, %583
  %586 = phi i32 [ %578, %583 ], [ %.213, %584 ], !dbg !3127
  call void @llvm.dbg.value(metadata i32 %586, metadata !2768, metadata !DIExpression()), !dbg !3119
  br label %587, !dbg !3128

587:                                              ; preds = %585, %._crit_edge148
  %.01 = phi i32 [ %586, %585 ], [ %578, %._crit_edge148 ], !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2768, metadata !DIExpression()), !dbg !3119
  %588 = and i32 %.8, 2, !dbg !3129
  %589 = icmp ne i32 %588, 0, !dbg !3129
  br i1 %589, label %._crit_edge149, label %590, !dbg !3131

._crit_edge149:                                   ; preds = %587
  br label %599, !dbg !3131

590:                                              ; preds = %587
  br label %591, !dbg !3132

591:                                              ; preds = %594, %590
  %.1028 = phi i32 [ %.018, %590 ], [ %595, %594 ], !dbg !2772
  %.1 = phi i32 [ %.01, %590 ], [ %592, %594 ], !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2768, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.1028, metadata !2729, metadata !DIExpression()), !dbg !2772
  %592 = add i32 %.1, 1, !dbg !3134
  call void @llvm.dbg.value(metadata i32 %592, metadata !2768, metadata !DIExpression()), !dbg !3119
  %593 = icmp ult i32 %.1, %.210, !dbg !3135
  br i1 %593, label %594, label %598, !dbg !3132

594:                                              ; preds = %591
  %595 = add i32 %.1028, 1, !dbg !3136
  call void @llvm.dbg.value(metadata i32 %595, metadata !2729, metadata !DIExpression()), !dbg !2772
  %596 = load i32, i32* @__checkpoint_count, align 4, !dbg !3138, !idemp_checkpoint_count !298
  %597 = add i32 %596, 1, !dbg !3138, !idemp_checkpoint_count !298
  store volatile i32 %597, i32* @__checkpoint_count, align 4, !dbg !3138, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1028, i32 %2), !dbg !3138
  br label %591, !dbg !3132, !llvm.loop !3139

598:                                              ; preds = %591
  %.1028.lcssa = phi i32 [ %.1028, %591 ], !dbg !2772
  %.lcssa = phi i32 [ %592, %591 ], !dbg !3134
  call void @llvm.dbg.value(metadata i32 %.1028.lcssa, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %599, !dbg !3141

599:                                              ; preds = %598, %._crit_edge149
  %.1129 = phi i32 [ %.018, %._crit_edge149 ], [ %.1028.lcssa, %598 ], !dbg !3099
  %.2 = phi i32 [ %.01, %._crit_edge149 ], [ %.lcssa, %598 ], !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2768, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.1129, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %600, !dbg !3142

600:                                              ; preds = %614, %599
  %.1230 = phi i32 [ %.1129, %599 ], [ %617, %614 ], !dbg !2772
  %.314 = phi i32 [ %.213, %599 ], [ %.516, %614 ], !dbg !2822
  %.02 = phi i8* [ %570, %599 ], [ %615, %614 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8* %.02, metadata !2766, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.314, metadata !2727, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.1230, metadata !2729, metadata !DIExpression()), !dbg !2772
  %601 = load i8, i8* %.02, align 1, !dbg !3143, !tbaa !2162
  %602 = zext i8 %601 to i32, !dbg !3143
  %603 = icmp ne i32 %602, 0, !dbg !3144
  br i1 %603, label %604, label %._crit_edge150, !dbg !3145

._crit_edge150:                                   ; preds = %600
  br label %612, !dbg !3145

604:                                              ; preds = %600
  %605 = and i32 %.8, 1024, !dbg !3146
  %606 = icmp ne i32 %605, 0, !dbg !3146
  br i1 %606, label %607, label %._crit_edge151, !dbg !3147

._crit_edge151:                                   ; preds = %604
  br label %610, !dbg !3147

607:                                              ; preds = %604
  %608 = add i32 %.314, -1, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %608, metadata !2727, metadata !DIExpression()), !dbg !2772
  %609 = icmp ne i32 %.314, 0, !dbg !3147
  br label %610, !dbg !3147

610:                                              ; preds = %607, %._crit_edge151
  %.415 = phi i32 [ %608, %607 ], [ %.314, %._crit_edge151 ], !dbg !2822
  %611 = phi i1 [ true, %._crit_edge151 ], [ %609, %607 ]
  call void @llvm.dbg.value(metadata i32 %.415, metadata !2727, metadata !DIExpression()), !dbg !2772
  br label %612

612:                                              ; preds = %610, %._crit_edge150
  %.516 = phi i32 [ %.415, %610 ], [ %.314, %._crit_edge150 ], !dbg !2822
  %613 = phi i1 [ false, %._crit_edge150 ], [ %611, %610 ], !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.516, metadata !2727, metadata !DIExpression()), !dbg !2772
  br i1 %613, label %614, label %620, !dbg !3142

614:                                              ; preds = %612
  %615 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !3149
  call void @llvm.dbg.value(metadata i8* %615, metadata !2766, metadata !DIExpression()), !dbg !3119
  %616 = load i8, i8* %.02, align 1, !dbg !3151, !tbaa !2162
  %617 = add i32 %.1230, 1, !dbg !3152
  call void @llvm.dbg.value(metadata i32 %617, metadata !2729, metadata !DIExpression()), !dbg !2772
  %618 = load i32, i32* @__checkpoint_count, align 4, !dbg !3153, !idemp_checkpoint_count !298
  %619 = add i32 %618, 1, !dbg !3153, !idemp_checkpoint_count !298
  store volatile i32 %619, i32* @__checkpoint_count, align 4, !dbg !3153, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext %616, i8* %1, i32 %.1230, i32 %2), !dbg !3153
  br label %600, !dbg !3142, !llvm.loop !3154

620:                                              ; preds = %612
  %.1230.lcssa = phi i32 [ %.1230, %612 ], !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.1230.lcssa, metadata !2729, metadata !DIExpression()), !dbg !2772
  %621 = and i32 %.8, 2, !dbg !3156
  %622 = icmp ne i32 %621, 0, !dbg !3156
  br i1 %622, label %623, label %._crit_edge152, !dbg !3158

._crit_edge152:                                   ; preds = %620
  br label %632, !dbg !3158

623:                                              ; preds = %620
  br label %624, !dbg !3159

624:                                              ; preds = %627, %623
  %.1331 = phi i32 [ %.1230.lcssa, %623 ], [ %628, %627 ], !dbg !2772
  %.3 = phi i32 [ %.2, %623 ], [ %625, %627 ], !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2768, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %.1331, metadata !2729, metadata !DIExpression()), !dbg !2772
  %625 = add i32 %.3, 1, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %625, metadata !2768, metadata !DIExpression()), !dbg !3119
  %626 = icmp ult i32 %.3, %.210, !dbg !3162
  br i1 %626, label %627, label %631, !dbg !3159

627:                                              ; preds = %624
  %628 = add i32 %.1331, 1, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %628, metadata !2729, metadata !DIExpression()), !dbg !2772
  %629 = load i32, i32* @__checkpoint_count, align 4, !dbg !3165, !idemp_checkpoint_count !298
  %630 = add i32 %629, 1, !dbg !3165, !idemp_checkpoint_count !298
  store volatile i32 %630, i32* @__checkpoint_count, align 4, !dbg !3165, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1331, i32 %2), !dbg !3165
  br label %624, !dbg !3159, !llvm.loop !3166

631:                                              ; preds = %624
  %.1331.lcssa = phi i32 [ %.1331, %624 ], !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.1331.lcssa, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %632, !dbg !3168

632:                                              ; preds = %631, %._crit_edge152
  %.1432 = phi i32 [ %.1331.lcssa, %631 ], [ %.1230.lcssa, %._crit_edge152 ], !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.1432, metadata !2729, metadata !DIExpression()), !dbg !2772
  %633 = load i8*, i8** %7, align 4, !dbg !3169, !tbaa !335, !idemp_war_rd !298
  %634 = getelementptr inbounds i8, i8* %633, i32 1, !dbg !3169
  %635 = load i32, i32* @__checkpoint_count, align 4, !dbg !3169, !idemp_checkpoint_count !298
  %636 = add i32 %635, 1, !dbg !3169, !idemp_checkpoint_count !298
  store volatile i32 %636, i32* @__checkpoint_count, align 4, !dbg !3169, !idemp_checkpoint_count !298
  store i8* %634, i8** %7, align 4, !dbg !3169, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %672

637:                                              ; preds = %LeafBlock104
  call void @llvm.dbg.value(metadata i32 8, metadata !2726, metadata !DIExpression()), !dbg !2772
  %638 = or i32 %.8, 33, !dbg !3170
  call void @llvm.dbg.value(metadata i32 %638, metadata !2725, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8 0, metadata !2769, metadata !DIExpression()), !dbg !3171
  %639 = bitcast %struct.__va_list* %6 to i8**, !dbg !3172
  %640 = load i8*, i8** %639, align 4, !dbg !3172, !idemp_war_rd !298
  %641 = getelementptr inbounds i8, i8* %640, i32 4, !dbg !3172
  %642 = load i32, i32* @__checkpoint_count, align 4, !dbg !3172, !idemp_checkpoint_count !298
  %643 = add i32 %642, 1, !dbg !3172, !idemp_checkpoint_count !298
  store volatile i32 %643, i32* @__checkpoint_count, align 4, !dbg !3172, !idemp_checkpoint_count !298
  store i8* %641, i8** %639, align 4, !dbg !3172, !idemp_war_wr !298, !idemp_uncut_war !298
  %644 = bitcast i8* %640 to i8**, !dbg !3172
  %645 = load i8*, i8** %644, align 4, !dbg !3172
  %646 = ptrtoint i8* %645 to i32, !dbg !3175
  %647 = load i32, i32* @__checkpoint_count, align 4, !dbg !3176, !idemp_checkpoint_count !298
  %648 = add i32 %647, 1, !dbg !3176, !idemp_checkpoint_count !298
  store volatile i32 %648, i32* @__checkpoint_count, align 4, !dbg !3176, !idemp_checkpoint_count !298
  %649 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %646, i1 zeroext false, i32 16, i32 %.213, i32 8, i32 %638), !dbg !3176
  call void @llvm.dbg.value(metadata i32 %649, metadata !2729, metadata !DIExpression()), !dbg !2772
  %650 = load i8*, i8** %7, align 4, !dbg !3177, !tbaa !335, !idemp_war_rd !298
  %651 = getelementptr inbounds i8, i8* %650, i32 1, !dbg !3177
  %652 = load i32, i32* @__checkpoint_count, align 4, !dbg !3177, !idemp_checkpoint_count !298
  %653 = add i32 %652, 1, !dbg !3177, !idemp_checkpoint_count !298
  store volatile i32 %653, i32* @__checkpoint_count, align 4, !dbg !3177, !idemp_checkpoint_count !298
  store i8* %651, i8** %7, align 4, !dbg !3177, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %672

654:                                              ; preds = %LeafBlock74
  %655 = add i32 %.018, 1, !dbg !3178
  call void @llvm.dbg.value(metadata i32 %655, metadata !2729, metadata !DIExpression()), !dbg !2772
  %656 = load i32, i32* @__checkpoint_count, align 4, !dbg !3179, !idemp_checkpoint_count !298
  %657 = add i32 %656, 1, !dbg !3179, !idemp_checkpoint_count !298
  store volatile i32 %657, i32* @__checkpoint_count, align 4, !dbg !3179, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext 37, i8* %1, i32 %.018, i32 %2), !dbg !3179
  %658 = load i8*, i8** %7, align 4, !dbg !3180, !tbaa !335, !idemp_war_rd !298
  %659 = getelementptr inbounds i8, i8* %658, i32 1, !dbg !3180
  %660 = load i32, i32* @__checkpoint_count, align 4, !dbg !3180, !idemp_checkpoint_count !298
  %661 = add i32 %660, 1, !dbg !3180, !idemp_checkpoint_count !298
  store volatile i32 %661, i32* @__checkpoint_count, align 4, !dbg !3180, !idemp_checkpoint_count !298
  store i8* %659, i8** %7, align 4, !dbg !3180, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %672, !dbg !3181

NewDefault73:                                     ; preds = %LeafBlock74.NewDefault73_crit_edge, %LeafBlock78.NewDefault73_crit_edge, %LeafBlock84.NewDefault73_crit_edge, %LeafBlock96.NewDefault73_crit_edge, %LeafBlock98.NewDefault73_crit_edge, %LeafBlock104.NewDefault73_crit_edge, %LeafBlock108.NewDefault73_crit_edge, %LeafBlock110.NewDefault73_crit_edge, %LeafBlock112.NewDefault73_crit_edge
  br label %662

662:                                              ; preds = %NewDefault73
  %663 = load i8*, i8** %7, align 4, !dbg !3182, !tbaa !335
  %664 = load i8, i8* %663, align 1, !dbg !3183, !tbaa !2162
  %665 = add i32 %.018, 1, !dbg !3184
  call void @llvm.dbg.value(metadata i32 %665, metadata !2729, metadata !DIExpression()), !dbg !2772
  %666 = load i32, i32* @__checkpoint_count, align 4, !dbg !3185, !idemp_checkpoint_count !298
  %667 = add i32 %666, 1, !dbg !3185, !idemp_checkpoint_count !298
  store volatile i32 %667, i32* @__checkpoint_count, align 4, !dbg !3185, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext %664, i8* %1, i32 %.018, i32 %2), !dbg !3185
  %668 = load i8*, i8** %7, align 4, !dbg !3186, !tbaa !335, !idemp_war_rd !298
  %669 = getelementptr inbounds i8, i8* %668, i32 1, !dbg !3186
  %670 = load i32, i32* @__checkpoint_count, align 4, !dbg !3186, !idemp_checkpoint_count !298
  %671 = add i32 %670, 1, !dbg !3186, !idemp_checkpoint_count !298
  store volatile i32 %671, i32* @__checkpoint_count, align 4, !dbg !3186, !idemp_checkpoint_count !298
  store i8* %669, i8** %7, align 4, !dbg !3186, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %672, !dbg !3187

672:                                              ; preds = %662, %654, %637, %632, %558, %504, %461, %449
  %.1533 = phi i32 [ %665, %662 ], [ %655, %654 ], [ %649, %637 ], [ %.1432, %632 ], [ %.927, %558 ], [ %518, %504 ], [ %475, %461 ], [ %.523, %449 ], !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.1533, metadata !2729, metadata !DIExpression()), !dbg !2772
  br label %.backedge, !dbg !2780

673:                                              ; preds = %13
  %.018.lcssa = phi i32 [ %.018, %13 ], !dbg !2772
  call void @llvm.dbg.value(metadata i32 %.018.lcssa, metadata !2729, metadata !DIExpression()), !dbg !2772
  %674 = icmp ult i32 %.018.lcssa, %2, !dbg !3188
  br i1 %674, label %675, label %676, !dbg !3189

675:                                              ; preds = %673
  br label %678, !dbg !3189

676:                                              ; preds = %673
  %677 = sub i32 %2, 1, !dbg !3190
  br label %678, !dbg !3189

678:                                              ; preds = %676, %675
  %679 = phi i32 [ %.018.lcssa, %675 ], [ %677, %676 ], !dbg !3189
  %680 = load i32, i32* @__checkpoint_count, align 4, !dbg !3191, !idemp_checkpoint_count !298
  %681 = add i32 %680, 1, !dbg !3191, !idemp_checkpoint_count !298
  store volatile i32 %681, i32* @__checkpoint_count, align 4, !dbg !3191, !idemp_checkpoint_count !298
  call arm_aapcscc void %.0(i8 zeroext 0, i8* %1, i32 %679, i32 %2), !dbg !3191
  ret i32 %.018.lcssa, !dbg !3192
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_null(i8 zeroext, i8*, i32, i32) #5 !dbg !3193 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3195, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 %2, metadata !3197, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 %3, metadata !3198, metadata !DIExpression()), !dbg !3199
  ret void, !dbg !3200
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc zeroext i1 @_is_digit(i8 zeroext) #5 !dbg !3201 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3205, metadata !DIExpression()), !dbg !3206
  %2 = zext i8 %0 to i32, !dbg !3207
  %3 = icmp sge i32 %2, 48, !dbg !3208
  br i1 %3, label %4, label %._crit_edge, !dbg !3209

._crit_edge:                                      ; preds = %1
  br label %7, !dbg !3209

4:                                                ; preds = %1
  %5 = zext i8 %0 to i32, !dbg !3210
  %6 = icmp sle i32 %5, 57, !dbg !3211
  br label %7

7:                                                ; preds = %4, %._crit_edge
  %8 = phi i1 [ false, %._crit_edge ], [ %6, %4 ], !dbg !3206
  ret i1 %8, !dbg !3212
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_atoi(i8**) #0 !dbg !3213 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 0, metadata !3219, metadata !DIExpression()), !dbg !3220
  br label %2, !dbg !3221

2:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %17, %8 ], !dbg !3220
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3219, metadata !DIExpression()), !dbg !3220
  %3 = load i8*, i8** %0, align 4, !dbg !3222, !tbaa !335
  %4 = load i8, i8* %3, align 1, !dbg !3223, !tbaa !2162
  %5 = load i32, i32* @__checkpoint_count, align 4, !dbg !3224, !idemp_checkpoint_count !298
  %6 = add i32 %5, 1, !dbg !3224, !idemp_checkpoint_count !298
  store volatile i32 %6, i32* @__checkpoint_count, align 4, !dbg !3224, !idemp_checkpoint_count !298
  %7 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %4), !dbg !3224
  br i1 %7, label %8, label %18, !dbg !3221

8:                                                ; preds = %2
  %9 = mul i32 %.0, 10, !dbg !3225
  %10 = load i8*, i8** %0, align 4, !dbg !3227, !tbaa !335, !idemp_war_rd !298
  %11 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !3227
  %12 = load i32, i32* @__checkpoint_count, align 4, !dbg !3227, !idemp_checkpoint_count !298
  %13 = add i32 %12, 1, !dbg !3227, !idemp_checkpoint_count !298
  store volatile i32 %13, i32* @__checkpoint_count, align 4, !dbg !3227, !idemp_checkpoint_count !298
  store i8* %11, i8** %0, align 4, !dbg !3227, !tbaa !335, !idemp_war_wr !298, !idemp_uncut_war !298
  %14 = load i8, i8* %10, align 1, !dbg !3228, !tbaa !2162
  %15 = zext i8 %14 to i32, !dbg !3228
  %16 = sub nsw i32 %15, 48, !dbg !3229
  %17 = add i32 %9, %16, !dbg !3230
  call void @llvm.dbg.value(metadata i32 %17, metadata !3219, metadata !DIExpression()), !dbg !3220
  br label %2, !dbg !3221, !llvm.loop !3231

18:                                               ; preds = %2
  %.0.lcssa = phi i32 [ %.0, %2 ], !dbg !3220
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !3219, metadata !DIExpression()), !dbg !3220
  ret i32 %.0.lcssa, !dbg !3233
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i64, i1 zeroext, i64, i32, i32, i32) #0 !dbg !3234 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3238, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %1, metadata !3239, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %2, metadata !3240, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %3, metadata !3241, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %4, metadata !3242, metadata !DIExpression()), !dbg !3254
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3243, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %6, metadata !3244, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %7, metadata !3245, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %8, metadata !3246, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %9, metadata !3247, metadata !DIExpression()), !dbg !3254
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3255
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3248, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3249, metadata !DIExpression()), !dbg !3254
  %14 = icmp ne i64 %4, 0, !dbg !3257
  br i1 %14, label %._crit_edge, label %15, !dbg !3259

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3259

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3260
  call void @llvm.dbg.value(metadata i32 %16, metadata !3247, metadata !DIExpression()), !dbg !3254
  br label %17, !dbg !3262

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3247, metadata !DIExpression()), !dbg !3254
  %18 = and i32 %.01, 1024, !dbg !3263
  %19 = icmp ne i32 %18, 0, !dbg !3263
  br i1 %19, label %20, label %._crit_edge3, !dbg !3264

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3264

20:                                               ; preds = %17
  %21 = icmp ne i64 %4, 0, !dbg !3265
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3266

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3266

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3266

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3267

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i64 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3254
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3249, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %.02, metadata !3242, metadata !DIExpression()), !dbg !3254
  %24 = urem i64 %.02, %6, !dbg !3268
  %25 = trunc i64 %24 to i8, !dbg !3269
  call void @llvm.dbg.value(metadata i8 %25, metadata !3250, metadata !DIExpression()), !dbg !3270
  %26 = zext i8 %25 to i32, !dbg !3271
  %27 = icmp slt i32 %26, 10, !dbg !3272
  br i1 %27, label %28, label %31, !dbg !3271

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3273
  %30 = add nsw i32 48, %29, !dbg !3274
  br label %39, !dbg !3271

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3275
  %33 = icmp ne i32 %32, 0, !dbg !3276
  %34 = zext i1 %33 to i64, !dbg !3276
  %35 = select i1 %33, i32 65, i32 97, !dbg !3276
  %36 = zext i8 %25 to i32, !dbg !3277
  %37 = add nsw i32 %35, %36, !dbg !3278
  %38 = sub nsw i32 %37, 10, !dbg !3279
  br label %39, !dbg !3271

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3271
  %41 = trunc i32 %40 to i8, !dbg !3271
  %42 = add i32 %.0, 1, !dbg !3280
  call void @llvm.dbg.value(metadata i32 %42, metadata !3249, metadata !DIExpression()), !dbg !3254
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3281
  store i8 %41, i8* %43, align 1, !dbg !3282, !tbaa !2162
  %44 = udiv i64 %.02, %6, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %44, metadata !3242, metadata !DIExpression()), !dbg !3254
  br label %45, !dbg !3284

45:                                               ; preds = %39
  %46 = icmp ne i64 %44, 0, !dbg !3285
  br i1 %46, label %47, label %._crit_edge6, !dbg !3286

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3286

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3287
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3288
  br i1 %50, label %._crit_edge7, label %51, !dbg !3284, !llvm.loop !3289

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3284

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3280
  br label %52, !dbg !3291

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3254
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3249, metadata !DIExpression()), !dbg !3254
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3292
  %54 = trunc i8 %12 to i1, !dbg !3293
  %55 = trunc i64 %6 to i32, !dbg !3294
  %56 = load i32, i32* @__checkpoint_count, align 4, !dbg !3295, !idemp_checkpoint_count !298
  %57 = add i32 %56, 1, !dbg !3295, !idemp_checkpoint_count !298
  store volatile i32 %57, i32* @__checkpoint_count, align 4, !dbg !3295, !idemp_checkpoint_count !298
  %58 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %55, i32 %7, i32 %8, i32 %.01), !dbg !3295
  %59 = bitcast [32 x i8]* %11 to i8*, !dbg !3296
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %59) #4, !dbg !3296
  ret i32 %58, !dbg !3297
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3298 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3302, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i8* %1, metadata !3303, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %2, metadata !3304, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %3, metadata !3305, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %4, metadata !3306, metadata !DIExpression()), !dbg !3318
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3307, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %6, metadata !3308, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %7, metadata !3309, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %8, metadata !3310, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %9, metadata !3311, metadata !DIExpression()), !dbg !3318
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3319
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3319
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3312, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 0, metadata !3313, metadata !DIExpression()), !dbg !3318
  %14 = icmp ne i32 %4, 0, !dbg !3321
  br i1 %14, label %._crit_edge, label %15, !dbg !3323

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3323

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %16, metadata !3311, metadata !DIExpression()), !dbg !3318
  br label %17, !dbg !3326

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3311, metadata !DIExpression()), !dbg !3318
  %18 = and i32 %.01, 1024, !dbg !3327
  %19 = icmp ne i32 %18, 0, !dbg !3327
  br i1 %19, label %20, label %._crit_edge3, !dbg !3328

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3328

20:                                               ; preds = %17
  %21 = icmp ne i32 %4, 0, !dbg !3329
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3330

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3330

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3330

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3331

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i32 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3318
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3313, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3306, metadata !DIExpression()), !dbg !3318
  %24 = urem i32 %.02, %6, !dbg !3332
  %25 = trunc i32 %24 to i8, !dbg !3333
  call void @llvm.dbg.value(metadata i8 %25, metadata !3314, metadata !DIExpression()), !dbg !3334
  %26 = zext i8 %25 to i32, !dbg !3335
  %27 = icmp slt i32 %26, 10, !dbg !3336
  br i1 %27, label %28, label %31, !dbg !3335

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3337
  %30 = add nsw i32 48, %29, !dbg !3338
  br label %39, !dbg !3335

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3339
  %33 = icmp ne i32 %32, 0, !dbg !3340
  %34 = zext i1 %33 to i64, !dbg !3340
  %35 = select i1 %33, i32 65, i32 97, !dbg !3340
  %36 = zext i8 %25 to i32, !dbg !3341
  %37 = add nsw i32 %35, %36, !dbg !3342
  %38 = sub nsw i32 %37, 10, !dbg !3343
  br label %39, !dbg !3335

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3335
  %41 = trunc i32 %40 to i8, !dbg !3335
  %42 = add i32 %.0, 1, !dbg !3344
  call void @llvm.dbg.value(metadata i32 %42, metadata !3313, metadata !DIExpression()), !dbg !3318
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3345
  store i8 %41, i8* %43, align 1, !dbg !3346, !tbaa !2162
  %44 = udiv i32 %.02, %6, !dbg !3347
  call void @llvm.dbg.value(metadata i32 %44, metadata !3306, metadata !DIExpression()), !dbg !3318
  br label %45, !dbg !3348

45:                                               ; preds = %39
  %46 = icmp ne i32 %44, 0, !dbg !3349
  br i1 %46, label %47, label %._crit_edge6, !dbg !3350

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3350

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3351
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3352
  br i1 %50, label %._crit_edge7, label %51, !dbg !3348, !llvm.loop !3353

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3348

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3344
  br label %52, !dbg !3355

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3318
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3313, metadata !DIExpression()), !dbg !3318
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3356
  %54 = trunc i8 %12 to i1, !dbg !3357
  %55 = load i32, i32* @__checkpoint_count, align 4, !dbg !3358, !idemp_checkpoint_count !298
  %56 = add i32 %55, 1, !dbg !3358, !idemp_checkpoint_count !298
  store volatile i32 %56, i32* @__checkpoint_count, align 4, !dbg !3358, !idemp_checkpoint_count !298
  %57 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %6, i32 %7, i32 %8, i32 %.01), !dbg !3358
  %58 = bitcast [32 x i8]* %11 to i8*, !dbg !3359
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %58) #4, !dbg !3359
  ret i32 %57, !dbg !3360
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !147 {
  %9 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !173, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i8* %1, metadata !174, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %2, metadata !175, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %3, metadata !176, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata double %4, metadata !177, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %5, metadata !178, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %7, metadata !180, metadata !DIExpression()), !dbg !3361
  %10 = bitcast [32 x i8]* %9 to i8*, !dbg !3362
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !3362
  call void @llvm.dbg.declare(metadata [32 x i8]* %9, metadata !181, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !186, metadata !DIExpression()), !dbg !3361
  %11 = fcmp une double %4, %4, !dbg !3364
  br i1 %11, label %12, label %17, !dbg !3366

12:                                               ; preds = %8
  %13 = getelementptr [4 x i8], [4 x i8]* @.str.75, i32 0, i32 0
  %14 = load i32, i32* @__checkpoint_count, align 4, !dbg !3367, !idemp_checkpoint_count !298
  %15 = add i32 %14, 1, !dbg !3367, !idemp_checkpoint_count !298
  store volatile i32 %15, i32* @__checkpoint_count, align 4, !dbg !3367, !idemp_checkpoint_count !298
  %16 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %13, i32 3, i32 %6, i32 %7), !dbg !3367
  br label %210, !dbg !3368

17:                                               ; preds = %8
  %18 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3369
  br i1 %18, label %19, label %24, !dbg !3371

19:                                               ; preds = %17
  %20 = getelementptr [5 x i8], [5 x i8]* @.str.1.76, i32 0, i32 0
  %21 = load i32, i32* @__checkpoint_count, align 4, !dbg !3372, !idemp_checkpoint_count !298
  %22 = add i32 %21, 1, !dbg !3372, !idemp_checkpoint_count !298
  store volatile i32 %22, i32* @__checkpoint_count, align 4, !dbg !3372, !idemp_checkpoint_count !298
  %23 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %20, i32 4, i32 %6, i32 %7), !dbg !3372
  br label %210, !dbg !3373

24:                                               ; preds = %17
  %25 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3374
  br i1 %25, label %26, label %40, !dbg !3376

26:                                               ; preds = %24
  %27 = and i32 %7, 4, !dbg !3377
  %28 = icmp ne i32 %27, 0, !dbg !3378
  %29 = zext i1 %28 to i64, !dbg !3378
  %30 = getelementptr [5 x i8], [5 x i8]* @.str.2.77, i32 0, i32 0
  %31 = getelementptr [4 x i8], [4 x i8]* @.str.3.78, i32 0, i32 0
  %32 = select i1 %28, i8* %30, i8* %31, !dbg !3378
  %33 = and i32 %7, 4, !dbg !3379
  %34 = icmp ne i32 %33, 0, !dbg !3380
  %35 = zext i1 %34 to i64, !dbg !3380
  %36 = select i1 %34, i32 4, i32 3, !dbg !3380
  %37 = load i32, i32* @__checkpoint_count, align 4, !dbg !3381, !idemp_checkpoint_count !298
  %38 = add i32 %37, 1, !dbg !3381, !idemp_checkpoint_count !298
  store volatile i32 %38, i32* @__checkpoint_count, align 4, !dbg !3381, !idemp_checkpoint_count !298
  %39 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %32, i32 %36, i32 %6, i32 %7), !dbg !3381
  br label %210, !dbg !3382

40:                                               ; preds = %24
  %41 = fcmp ogt double %4, 1.000000e+09, !dbg !3383
  br i1 %41, label %._crit_edge, label %42, !dbg !3385

._crit_edge:                                      ; preds = %40
  br label %44, !dbg !3385

42:                                               ; preds = %40
  %43 = fcmp olt double %4, -1.000000e+09, !dbg !3386
  br i1 %43, label %._crit_edge23, label %48, !dbg !3387

._crit_edge23:                                    ; preds = %42
  br label %44, !dbg !3387

44:                                               ; preds = %._crit_edge23, %._crit_edge
  %45 = load i32, i32* @__checkpoint_count, align 4, !dbg !3388, !idemp_checkpoint_count !298
  %46 = add i32 %45, 1, !dbg !3388, !idemp_checkpoint_count !298
  store volatile i32 %46, i32* @__checkpoint_count, align 4, !dbg !3388, !idemp_checkpoint_count !298
  %47 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3388
  br label %210, !dbg !3390

48:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !3361
  %49 = fcmp olt double %4, 0.000000e+00, !dbg !3391
  br i1 %49, label %50, label %._crit_edge24, !dbg !3393

._crit_edge24:                                    ; preds = %48
  br label %52, !dbg !3393

50:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8 1, metadata !187, metadata !DIExpression()), !dbg !3361
  %51 = fsub double 0.000000e+00, %4, !dbg !3394
  call void @llvm.dbg.value(metadata double %51, metadata !177, metadata !DIExpression()), !dbg !3361
  br label %52, !dbg !3396

52:                                               ; preds = %50, %._crit_edge24
  %.012 = phi double [ %51, %50 ], [ %4, %._crit_edge24 ]
  %.011 = phi i8 [ 1, %50 ], [ 0, %._crit_edge24 ], !dbg !3361
  call void @llvm.dbg.value(metadata i8 %.011, metadata !187, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata double %.012, metadata !177, metadata !DIExpression()), !dbg !3361
  %53 = and i32 %7, 1024, !dbg !3397
  %54 = icmp ne i32 %53, 0, !dbg !3397
  br i1 %54, label %._crit_edge25, label %55, !dbg !3399

._crit_edge25:                                    ; preds = %52
  br label %56, !dbg !3399

55:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i32 6, metadata !178, metadata !DIExpression()), !dbg !3361
  br label %56, !dbg !3400

56:                                               ; preds = %55, %._crit_edge25
  %.013 = phi i32 [ %5, %._crit_edge25 ], [ 6, %55 ]
  call void @llvm.dbg.value(metadata i32 %.013, metadata !178, metadata !DIExpression()), !dbg !3361
  br label %57, !dbg !3402

57:                                               ; preds = %63, %56
  %.017 = phi i32 [ 0, %56 ], [ %64, %63 ], !dbg !3361
  %.114 = phi i32 [ %.013, %56 ], [ %66, %63 ]
  call void @llvm.dbg.value(metadata i32 %.114, metadata !178, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.017, metadata !185, metadata !DIExpression()), !dbg !3361
  %58 = icmp ult i32 %.017, 32, !dbg !3403
  br i1 %58, label %59, label %._crit_edge26, !dbg !3404

._crit_edge26:                                    ; preds = %57
  br label %61, !dbg !3404

59:                                               ; preds = %57
  %60 = icmp ugt i32 %.114, 9, !dbg !3405
  br label %61

61:                                               ; preds = %59, %._crit_edge26
  %62 = phi i1 [ false, %._crit_edge26 ], [ %60, %59 ], !dbg !3361
  br i1 %62, label %63, label %67, !dbg !3402

63:                                               ; preds = %61
  %64 = add i32 %.017, 1, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %64, metadata !185, metadata !DIExpression()), !dbg !3361
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.017, !dbg !3408
  store i8 48, i8* %65, align 1, !dbg !3409, !tbaa !2162
  %66 = add i32 %.114, -1, !dbg !3410
  call void @llvm.dbg.value(metadata i32 %66, metadata !178, metadata !DIExpression()), !dbg !3361
  br label %57, !dbg !3402, !llvm.loop !3411

67:                                               ; preds = %61
  %.017.lcssa = phi i32 [ %.017, %61 ], !dbg !3361
  %.114.lcssa = phi i32 [ %.114, %61 ]
  call void @llvm.dbg.value(metadata i32 %.017.lcssa, metadata !185, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !178, metadata !DIExpression()), !dbg !3361
  %68 = fptosi double %.012 to i32, !dbg !3413
  call void @llvm.dbg.value(metadata i32 %68, metadata !189, metadata !DIExpression()), !dbg !3361
  %69 = sitofp i32 %68 to double, !dbg !3414
  %70 = fsub double %.012, %69, !dbg !3415
  %71 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3416
  %72 = load double, double* %71, align 8, !dbg !3416, !tbaa !3417
  %73 = fmul double %70, %72, !dbg !3419
  call void @llvm.dbg.value(metadata double %73, metadata !190, metadata !DIExpression()), !dbg !3361
  %74 = fptoui double %73 to i32, !dbg !3420
  call void @llvm.dbg.value(metadata i32 %74, metadata !191, metadata !DIExpression()), !dbg !3361
  %75 = uitofp i32 %74 to double, !dbg !3421
  %76 = fsub double %73, %75, !dbg !3422
  call void @llvm.dbg.value(metadata double %76, metadata !186, metadata !DIExpression()), !dbg !3361
  %77 = fcmp ogt double %76, 5.000000e-01, !dbg !3423
  br i1 %77, label %78, label %87, !dbg !3425

78:                                               ; preds = %67
  %79 = add i32 %74, 1, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %79, metadata !191, metadata !DIExpression()), !dbg !3361
  %80 = uitofp i32 %79 to double, !dbg !3428
  %81 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3430
  %82 = load double, double* %81, align 8, !dbg !3430, !tbaa !3417
  %83 = fcmp oge double %80, %82, !dbg !3431
  br i1 %83, label %84, label %._crit_edge27, !dbg !3432

._crit_edge27:                                    ; preds = %78
  br label %86, !dbg !3432

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !3361
  %85 = add nsw i32 %68, 1, !dbg !3433
  call void @llvm.dbg.value(metadata i32 %85, metadata !189, metadata !DIExpression()), !dbg !3361
  br label %86, !dbg !3435

86:                                               ; preds = %84, %._crit_edge27
  %.06 = phi i32 [ %85, %84 ], [ %68, %._crit_edge27 ], !dbg !3361
  %.02 = phi i32 [ 0, %84 ], [ %79, %._crit_edge27 ], !dbg !3436
  call void @llvm.dbg.value(metadata i32 %.02, metadata !191, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.06, metadata !189, metadata !DIExpression()), !dbg !3361
  br label %99, !dbg !3437

87:                                               ; preds = %67
  %88 = fcmp olt double %76, 5.000000e-01, !dbg !3438
  br i1 %88, label %89, label %90, !dbg !3440

89:                                               ; preds = %87
  br label %98, !dbg !3441

90:                                               ; preds = %87
  %91 = icmp eq i32 %74, 0, !dbg !3443
  br i1 %91, label %._crit_edge28, label %92, !dbg !3445

._crit_edge28:                                    ; preds = %90
  br label %95, !dbg !3445

92:                                               ; preds = %90
  %93 = and i32 %74, 1, !dbg !3446
  %94 = icmp ne i32 %93, 0, !dbg !3446
  br i1 %94, label %._crit_edge29, label %._crit_edge30, !dbg !3447

._crit_edge30:                                    ; preds = %92
  br label %97, !dbg !3447

._crit_edge29:                                    ; preds = %92
  br label %95, !dbg !3447

95:                                               ; preds = %._crit_edge29, %._crit_edge28
  %96 = add i32 %74, 1, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %96, metadata !191, metadata !DIExpression()), !dbg !3361
  br label %97, !dbg !3450

97:                                               ; preds = %95, %._crit_edge30
  %.13 = phi i32 [ %96, %95 ], [ %74, %._crit_edge30 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.13, metadata !191, metadata !DIExpression()), !dbg !3361
  br label %98

98:                                               ; preds = %97, %89
  %.24 = phi i32 [ %74, %89 ], [ %.13, %97 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.24, metadata !191, metadata !DIExpression()), !dbg !3361
  br label %99

99:                                               ; preds = %98, %86
  %.17 = phi i32 [ %.06, %86 ], [ %68, %98 ], !dbg !3361
  %.35 = phi i32 [ %.02, %86 ], [ %.24, %98 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.35, metadata !191, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.17, metadata !189, metadata !DIExpression()), !dbg !3361
  %100 = icmp eq i32 %.114.lcssa, 0, !dbg !3451
  br i1 %100, label %101, label %113, !dbg !3452

101:                                              ; preds = %99
  %102 = sitofp i32 %.17 to double, !dbg !3453
  %103 = fsub double %.012, %102, !dbg !3455
  call void @llvm.dbg.value(metadata double %103, metadata !186, metadata !DIExpression()), !dbg !3361
  %104 = fcmp olt double %103, 5.000000e-01, !dbg !3456
  br i1 %104, label %105, label %._crit_edge31, !dbg !3458

._crit_edge31:                                    ; preds = %101
  br label %107, !dbg !3458

105:                                              ; preds = %101
  %106 = fcmp ogt double %103, 5.000000e-01, !dbg !3459
  br i1 %106, label %._crit_edge32, label %._crit_edge33, !dbg !3460

._crit_edge33:                                    ; preds = %105
  br label %112, !dbg !3460

._crit_edge32:                                    ; preds = %105
  br label %107, !dbg !3460

107:                                              ; preds = %._crit_edge32, %._crit_edge31
  %108 = and i32 %.17, 1, !dbg !3461
  %109 = icmp ne i32 %108, 0, !dbg !3461
  br i1 %109, label %110, label %._crit_edge34, !dbg !3462

._crit_edge34:                                    ; preds = %107
  br label %112, !dbg !3462

110:                                              ; preds = %107
  %111 = add nsw i32 %.17, 1, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %111, metadata !189, metadata !DIExpression()), !dbg !3361
  br label %112, !dbg !3465

112:                                              ; preds = %110, %._crit_edge34, %._crit_edge33
  %.28 = phi i32 [ %111, %110 ], [ %.17, %._crit_edge34 ], [ %.17, %._crit_edge33 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.28, metadata !189, metadata !DIExpression()), !dbg !3361
  br label %144, !dbg !3466

113:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !192, metadata !DIExpression()), !dbg !3467
  br label %114, !dbg !3468

114:                                              ; preds = %126, %113
  %.118 = phi i32 [ %.017.lcssa, %113 ], [ %121, %126 ], !dbg !3361
  %.4 = phi i32 [ %.35, %113 ], [ %123, %126 ], !dbg !3361
  %.01 = phi i32 [ %.114.lcssa, %113 ], [ %117, %126 ], !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.01, metadata !192, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.4, metadata !191, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.118, metadata !185, metadata !DIExpression()), !dbg !3361
  %115 = icmp ult i32 %.118, 32, !dbg !3469
  br i1 %115, label %116, label %._crit_edge35, !dbg !3468

._crit_edge35:                                    ; preds = %114
  %.118.lcssa = phi i32 [ %.118, %114 ], !dbg !3361
  %.01.lcssa = phi i32 [ %.01, %114 ], !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.118.lcssa, metadata !185, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !192, metadata !DIExpression()), !dbg !3467
  br label %127, !dbg !3468

116:                                              ; preds = %114
  %117 = add i32 %.01, -1, !dbg !3470
  call void @llvm.dbg.value(metadata i32 %117, metadata !192, metadata !DIExpression()), !dbg !3467
  %118 = urem i32 %.4, 10, !dbg !3472
  %119 = add i32 48, %118, !dbg !3473
  %120 = trunc i32 %119 to i8, !dbg !3474
  %121 = add i32 %.118, 1, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %121, metadata !185, metadata !DIExpression()), !dbg !3361
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.118, !dbg !3476
  store i8 %120, i8* %122, align 1, !dbg !3477, !tbaa !2162
  %123 = udiv i32 %.4, 10, !dbg !3478
  call void @llvm.dbg.value(metadata i32 %123, metadata !191, metadata !DIExpression()), !dbg !3361
  %124 = icmp ne i32 %123, 0, !dbg !3478
  br i1 %124, label %126, label %125, !dbg !3480

125:                                              ; preds = %116
  %.lcssa52 = phi i32 [ %117, %116 ], !dbg !3470
  %.lcssa51 = phi i32 [ %121, %116 ], !dbg !3475
  br label %127, !dbg !3481

126:                                              ; preds = %116
  br label %114, !dbg !3468, !llvm.loop !3483

127:                                              ; preds = %125, %._crit_edge35
  %.219 = phi i32 [ %.lcssa51, %125 ], [ %.118.lcssa, %._crit_edge35 ], !dbg !3361
  %.1 = phi i32 [ %.lcssa52, %125 ], [ %.01.lcssa, %._crit_edge35 ], !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.1, metadata !192, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.219, metadata !185, metadata !DIExpression()), !dbg !3361
  br label %128, !dbg !3485

128:                                              ; preds = %135, %127
  %.320 = phi i32 [ %.219, %127 ], [ %136, %135 ], !dbg !3467
  %.2 = phi i32 [ %.1, %127 ], [ %.3, %135 ], !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.2, metadata !192, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.320, metadata !185, metadata !DIExpression()), !dbg !3361
  %129 = icmp ult i32 %.320, 32, !dbg !3486
  br i1 %129, label %130, label %._crit_edge36, !dbg !3487

._crit_edge36:                                    ; preds = %128
  br label %133, !dbg !3487

130:                                              ; preds = %128
  %131 = add i32 %.2, -1, !dbg !3488
  call void @llvm.dbg.value(metadata i32 %131, metadata !192, metadata !DIExpression()), !dbg !3467
  %132 = icmp ugt i32 %.2, 0, !dbg !3489
  br label %133

133:                                              ; preds = %130, %._crit_edge36
  %.3 = phi i32 [ %131, %130 ], [ %.2, %._crit_edge36 ], !dbg !3467
  %134 = phi i1 [ false, %._crit_edge36 ], [ %132, %130 ], !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.3, metadata !192, metadata !DIExpression()), !dbg !3467
  br i1 %134, label %135, label %138, !dbg !3485

135:                                              ; preds = %133
  %136 = add i32 %.320, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %136, metadata !185, metadata !DIExpression()), !dbg !3361
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320, !dbg !3492
  store i8 48, i8* %137, align 1, !dbg !3493, !tbaa !2162
  br label %128, !dbg !3485, !llvm.loop !3494

138:                                              ; preds = %133
  %.320.lcssa = phi i32 [ %.320, %133 ], !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.320.lcssa, metadata !185, metadata !DIExpression()), !dbg !3361
  %139 = icmp ult i32 %.320.lcssa, 32, !dbg !3496
  br i1 %139, label %140, label %._crit_edge37, !dbg !3498

._crit_edge37:                                    ; preds = %138
  br label %143, !dbg !3498

140:                                              ; preds = %138
  %141 = add i32 %.320.lcssa, 1, !dbg !3499
  call void @llvm.dbg.value(metadata i32 %141, metadata !185, metadata !DIExpression()), !dbg !3361
  %142 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320.lcssa, !dbg !3501
  store i8 46, i8* %142, align 1, !dbg !3502, !tbaa !2162
  br label %143, !dbg !3503

143:                                              ; preds = %140, %._crit_edge37
  %.421 = phi i32 [ %141, %140 ], [ %.320.lcssa, %._crit_edge37 ], !dbg !3467
  call void @llvm.dbg.value(metadata i32 %.421, metadata !185, metadata !DIExpression()), !dbg !3361
  br label %144

144:                                              ; preds = %143, %112
  %.5 = phi i32 [ %.017.lcssa, %112 ], [ %.421, %143 ], !dbg !3361
  %.39 = phi i32 [ %.28, %112 ], [ %.17, %143 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.39, metadata !189, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.5, metadata !185, metadata !DIExpression()), !dbg !3361
  br label %145, !dbg !3504

145:                                              ; preds = %156, %144
  %.6 = phi i32 [ %.5, %144 ], [ %151, %156 ], !dbg !3361
  %.410 = phi i32 [ %.39, %144 ], [ %153, %156 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.410, metadata !189, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.6, metadata !185, metadata !DIExpression()), !dbg !3361
  %146 = icmp ult i32 %.6, 32, !dbg !3505
  br i1 %146, label %147, label %._crit_edge38, !dbg !3504

._crit_edge38:                                    ; preds = %145
  %.6.lcssa = phi i32 [ %.6, %145 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.6.lcssa, metadata !185, metadata !DIExpression()), !dbg !3361
  br label %157, !dbg !3504

147:                                              ; preds = %145
  %148 = srem i32 %.410, 10, !dbg !3506
  %149 = add nsw i32 48, %148, !dbg !3508
  %150 = trunc i32 %149 to i8, !dbg !3509
  %151 = add i32 %.6, 1, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %151, metadata !185, metadata !DIExpression()), !dbg !3361
  %152 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.6, !dbg !3511
  store i8 %150, i8* %152, align 1, !dbg !3512, !tbaa !2162
  %153 = sdiv i32 %.410, 10, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %153, metadata !189, metadata !DIExpression()), !dbg !3361
  %154 = icmp ne i32 %153, 0, !dbg !3513
  br i1 %154, label %156, label %155, !dbg !3515

155:                                              ; preds = %147
  %.lcssa = phi i32 [ %151, %147 ], !dbg !3510
  br label %157, !dbg !3516

156:                                              ; preds = %147
  br label %145, !dbg !3504, !llvm.loop !3518

157:                                              ; preds = %155, %._crit_edge38
  %.7 = phi i32 [ %.lcssa, %155 ], [ %.6.lcssa, %._crit_edge38 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.7, metadata !185, metadata !DIExpression()), !dbg !3361
  %158 = and i32 %7, 2, !dbg !3520
  %159 = icmp ne i32 %158, 0, !dbg !3520
  br i1 %159, label %._crit_edge39, label %160, !dbg !3522

._crit_edge39:                                    ; preds = %157
  br label %183, !dbg !3522

160:                                              ; preds = %157
  %161 = and i32 %7, 1, !dbg !3523
  %162 = icmp ne i32 %161, 0, !dbg !3523
  br i1 %162, label %163, label %._crit_edge40, !dbg !3524

._crit_edge40:                                    ; preds = %160
  br label %183, !dbg !3524

163:                                              ; preds = %160
  %164 = icmp ne i32 %6, 0, !dbg !3525
  br i1 %164, label %165, label %._crit_edge41, !dbg !3528

._crit_edge41:                                    ; preds = %163
  br label %172, !dbg !3528

165:                                              ; preds = %163
  %166 = trunc i8 %.011 to i1, !dbg !3529
  br i1 %166, label %._crit_edge42, label %167, !dbg !3530

._crit_edge42:                                    ; preds = %165
  br label %170, !dbg !3530

167:                                              ; preds = %165
  %168 = and i32 %7, 12, !dbg !3531
  %169 = icmp ne i32 %168, 0, !dbg !3531
  br i1 %169, label %._crit_edge43, label %._crit_edge44, !dbg !3532

._crit_edge44:                                    ; preds = %167
  br label %172, !dbg !3532

._crit_edge43:                                    ; preds = %167
  br label %170, !dbg !3532

170:                                              ; preds = %._crit_edge43, %._crit_edge42
  %171 = add i32 %6, -1, !dbg !3533
  call void @llvm.dbg.value(metadata i32 %171, metadata !179, metadata !DIExpression()), !dbg !3361
  br label %172, !dbg !3535

172:                                              ; preds = %170, %._crit_edge44, %._crit_edge41
  %.015 = phi i32 [ %171, %170 ], [ %6, %._crit_edge44 ], [ %6, %._crit_edge41 ]
  call void @llvm.dbg.value(metadata i32 %.015, metadata !179, metadata !DIExpression()), !dbg !3361
  br label %173, !dbg !3536

173:                                              ; preds = %179, %172
  %.8 = phi i32 [ %.7, %172 ], [ %180, %179 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.8, metadata !185, metadata !DIExpression()), !dbg !3361
  %174 = icmp ult i32 %.8, %.015, !dbg !3537
  br i1 %174, label %175, label %._crit_edge45, !dbg !3538

._crit_edge45:                                    ; preds = %173
  br label %177, !dbg !3538

175:                                              ; preds = %173
  %176 = icmp ult i32 %.8, 32, !dbg !3539
  br label %177

177:                                              ; preds = %175, %._crit_edge45
  %178 = phi i1 [ false, %._crit_edge45 ], [ %176, %175 ], !dbg !3540
  br i1 %178, label %179, label %182, !dbg !3536

179:                                              ; preds = %177
  %180 = add i32 %.8, 1, !dbg !3541
  call void @llvm.dbg.value(metadata i32 %180, metadata !185, metadata !DIExpression()), !dbg !3361
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.8, !dbg !3543
  store i8 48, i8* %181, align 1, !dbg !3544, !tbaa !2162
  br label %173, !dbg !3536, !llvm.loop !3545

182:                                              ; preds = %177
  %.8.lcssa = phi i32 [ %.8, %177 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.8.lcssa, metadata !185, metadata !DIExpression()), !dbg !3361
  br label %183, !dbg !3547

183:                                              ; preds = %182, %._crit_edge40, %._crit_edge39
  %.9 = phi i32 [ %.7, %._crit_edge39 ], [ %.8.lcssa, %182 ], [ %.7, %._crit_edge40 ], !dbg !3510
  %.116 = phi i32 [ %6, %._crit_edge39 ], [ %.015, %182 ], [ %6, %._crit_edge40 ]
  call void @llvm.dbg.value(metadata i32 %.116, metadata !179, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.9, metadata !185, metadata !DIExpression()), !dbg !3361
  %184 = icmp ult i32 %.9, 32, !dbg !3548
  br i1 %184, label %185, label %._crit_edge46, !dbg !3550

._crit_edge46:                                    ; preds = %183
  br label %205, !dbg !3550

185:                                              ; preds = %183
  %186 = trunc i8 %.011 to i1, !dbg !3551
  br i1 %186, label %187, label %190, !dbg !3554

187:                                              ; preds = %185
  %188 = add i32 %.9, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %188, metadata !185, metadata !DIExpression()), !dbg !3361
  %189 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3557
  store i8 45, i8* %189, align 1, !dbg !3558, !tbaa !2162
  br label %204, !dbg !3559

190:                                              ; preds = %185
  %191 = and i32 %7, 4, !dbg !3560
  %192 = icmp ne i32 %191, 0, !dbg !3560
  br i1 %192, label %193, label %196, !dbg !3562

193:                                              ; preds = %190
  %194 = add i32 %.9, 1, !dbg !3563
  call void @llvm.dbg.value(metadata i32 %194, metadata !185, metadata !DIExpression()), !dbg !3361
  %195 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3565
  store i8 43, i8* %195, align 1, !dbg !3566, !tbaa !2162
  br label %203, !dbg !3567

196:                                              ; preds = %190
  %197 = and i32 %7, 8, !dbg !3568
  %198 = icmp ne i32 %197, 0, !dbg !3568
  br i1 %198, label %199, label %._crit_edge47, !dbg !3570

._crit_edge47:                                    ; preds = %196
  br label %202, !dbg !3570

199:                                              ; preds = %196
  %200 = add i32 %.9, 1, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %200, metadata !185, metadata !DIExpression()), !dbg !3361
  %201 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3573
  store i8 32, i8* %201, align 1, !dbg !3574, !tbaa !2162
  br label %202, !dbg !3575

202:                                              ; preds = %199, %._crit_edge47
  %.10 = phi i32 [ %200, %199 ], [ %.9, %._crit_edge47 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.10, metadata !185, metadata !DIExpression()), !dbg !3361
  br label %203

203:                                              ; preds = %202, %193
  %.11 = phi i32 [ %194, %193 ], [ %.10, %202 ], !dbg !3576
  call void @llvm.dbg.value(metadata i32 %.11, metadata !185, metadata !DIExpression()), !dbg !3361
  br label %204

204:                                              ; preds = %203, %187
  %.12 = phi i32 [ %188, %187 ], [ %.11, %203 ], !dbg !3577
  call void @llvm.dbg.value(metadata i32 %.12, metadata !185, metadata !DIExpression()), !dbg !3361
  br label %205, !dbg !3578

205:                                              ; preds = %204, %._crit_edge46
  %.1322 = phi i32 [ %.12, %204 ], [ %.9, %._crit_edge46 ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %.1322, metadata !185, metadata !DIExpression()), !dbg !3361
  %206 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0, !dbg !3579
  %207 = load i32, i32* @__checkpoint_count, align 4, !dbg !3580, !idemp_checkpoint_count !298
  %208 = add i32 %207, 1, !dbg !3580, !idemp_checkpoint_count !298
  store volatile i32 %208, i32* @__checkpoint_count, align 4, !dbg !3580, !idemp_checkpoint_count !298
  %209 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %206, i32 %.1322, i32 %.116, i32 %7), !dbg !3580
  br label %210

210:                                              ; preds = %205, %44, %26, %19, %12
  %.0 = phi i32 [ %16, %12 ], [ %23, %19 ], [ %39, %26 ], [ %47, %44 ], [ %209, %205 ], !dbg !3361
  %211 = bitcast [32 x i8]* %9 to i8*, !dbg !3581
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %211) #4, !dbg !3581
  ret i32 %.0, !dbg !3581
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !3582 {
  %9 = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3584, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %1, metadata !3585, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %2, metadata !3586, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %3, metadata !3587, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata double %4, metadata !3588, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %5, metadata !3589, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %6, metadata !3590, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %7, metadata !3591, metadata !DIExpression()), !dbg !3605
  %10 = fcmp une double %4, %4, !dbg !3606
  br i1 %10, label %._crit_edge, label %11, !dbg !3608

._crit_edge:                                      ; preds = %8
  br label %15, !dbg !3608

11:                                               ; preds = %8
  %12 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3609
  br i1 %12, label %._crit_edge16, label %13, !dbg !3610

._crit_edge16:                                    ; preds = %11
  br label %15, !dbg !3610

13:                                               ; preds = %11
  %14 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3611
  br i1 %14, label %._crit_edge17, label %19, !dbg !3612

._crit_edge17:                                    ; preds = %13
  br label %15, !dbg !3612

15:                                               ; preds = %._crit_edge17, %._crit_edge16, %._crit_edge
  %16 = load i32, i32* @__checkpoint_count, align 4, !dbg !3613, !idemp_checkpoint_count !298
  %17 = add i32 %16, 1, !dbg !3613, !idemp_checkpoint_count !298
  store volatile i32 %17, i32* @__checkpoint_count, align 4, !dbg !3613, !idemp_checkpoint_count !298
  %18 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3613
  br label %189, !dbg !3615

19:                                               ; preds = %13
  %20 = fcmp olt double %4, 0.000000e+00, !dbg !3616
  %21 = zext i1 %20 to i8, !dbg !3617
  call void @llvm.dbg.value(metadata i8 %21, metadata !3592, metadata !DIExpression()), !dbg !3605
  %22 = trunc i8 %21 to i1, !dbg !3618
  br i1 %22, label %23, label %._crit_edge18, !dbg !3620

._crit_edge18:                                    ; preds = %19
  br label %25, !dbg !3620

23:                                               ; preds = %19
  %24 = fsub double -0.000000e+00, %4, !dbg !3621
  call void @llvm.dbg.value(metadata double %24, metadata !3588, metadata !DIExpression()), !dbg !3605
  br label %25, !dbg !3623

25:                                               ; preds = %23, %._crit_edge18
  %.09 = phi double [ %24, %23 ], [ %4, %._crit_edge18 ]
  call void @llvm.dbg.value(metadata double %.09, metadata !3588, metadata !DIExpression()), !dbg !3605
  %26 = and i32 %7, 1024, !dbg !3624
  %27 = icmp ne i32 %26, 0, !dbg !3624
  br i1 %27, label %._crit_edge19, label %28, !dbg !3626

._crit_edge19:                                    ; preds = %25
  br label %29, !dbg !3626

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 6, metadata !3589, metadata !DIExpression()), !dbg !3605
  br label %29, !dbg !3627

29:                                               ; preds = %28, %._crit_edge19
  %.011 = phi i32 [ %5, %._crit_edge19 ], [ 6, %28 ]
  call void @llvm.dbg.value(metadata i32 %.011, metadata !3589, metadata !DIExpression()), !dbg !3605
  %30 = bitcast %union.anon* %9 to i8*, !dbg !3629
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #4, !dbg !3629
  call void @llvm.dbg.declare(metadata %union.anon* %9, metadata !3593, metadata !DIExpression()), !dbg !3630
  %31 = bitcast %union.anon* %9 to double*, !dbg !3631
  store double %.09, double* %31, align 8, !dbg !3632, !tbaa !2162, !idemp_pot_pwrite !298
  %32 = bitcast %union.anon* %9 to i64*, !dbg !3633
  %33 = load i64, i64* %32, align 8, !dbg !3633, !tbaa !2162
  %34 = lshr i64 %33, 52, !dbg !3634
  %35 = and i64 %34, 2047, !dbg !3635
  %36 = trunc i64 %35 to i32, !dbg !3636
  %37 = sub nsw i32 %36, 1023, !dbg !3637
  call void @llvm.dbg.value(metadata i32 %37, metadata !3598, metadata !DIExpression()), !dbg !3605
  %38 = bitcast %union.anon* %9 to i64*, !dbg !3638
  %39 = load i64, i64* %38, align 8, !dbg !3638, !tbaa !2162, !idemp_war_rd !298
  %40 = and i64 %39, 4503599627370495, !dbg !3639
  %41 = or i64 %40, 4607182418800017408, !dbg !3640
  %42 = bitcast %union.anon* %9 to i64*, !dbg !3641
  %43 = load i32, i32* @__checkpoint_count, align 4, !dbg !3642, !idemp_checkpoint_count !298
  %44 = add i32 %43, 1, !dbg !3642, !idemp_checkpoint_count !298
  store volatile i32 %44, i32* @__checkpoint_count, align 4, !dbg !3642, !idemp_checkpoint_count !298
  store i64 %41, i64* %42, align 8, !dbg !3642, !tbaa !2162, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  %45 = sitofp i32 %37 to double, !dbg !3643
  %46 = fmul double %45, 0x3FD34413509F79FB, !dbg !3644
  %47 = fadd double 0x3FC68A288B60C8B3, %46, !dbg !3645
  %48 = bitcast %union.anon* %9 to double*, !dbg !3646
  %49 = load double, double* %48, align 8, !dbg !3646, !tbaa !2162, !idemp_war_rd !298
  %50 = fsub double %49, 1.500000e+00, !dbg !3647
  %51 = fmul double %50, 0x3FD287A7636F4361, !dbg !3648
  %52 = fadd double %47, %51, !dbg !3649
  %53 = fptosi double %52 to i32, !dbg !3650
  call void @llvm.dbg.value(metadata i32 %53, metadata !3599, metadata !DIExpression()), !dbg !3605
  %54 = sitofp i32 %53 to double, !dbg !3651
  %55 = fmul double %54, 0x400A934F0979A371, !dbg !3652
  %56 = fadd double %55, 5.000000e-01, !dbg !3653
  %57 = fptosi double %56 to i32, !dbg !3654
  call void @llvm.dbg.value(metadata i32 %57, metadata !3598, metadata !DIExpression()), !dbg !3605
  %58 = sitofp i32 %53 to double, !dbg !3655
  %59 = fmul double %58, 0x40026BB1BBB55516, !dbg !3656
  %60 = sitofp i32 %57 to double, !dbg !3657
  %61 = fmul double %60, 0x3FE62E42FEFA39EF, !dbg !3658
  %62 = fsub double %59, %61, !dbg !3659
  call void @llvm.dbg.value(metadata double %62, metadata !3600, metadata !DIExpression()), !dbg !3605
  %63 = fmul double %62, %62, !dbg !3660
  call void @llvm.dbg.value(metadata double %63, metadata !3601, metadata !DIExpression()), !dbg !3605
  %64 = add nsw i32 %57, 1023, !dbg !3661
  %65 = sext i32 %64 to i64, !dbg !3662
  %66 = shl i64 %65, 52, !dbg !3663
  %67 = bitcast %union.anon* %9 to i64*, !dbg !3664
  %68 = load i32, i32* @__checkpoint_count, align 4, !dbg !3665, !idemp_checkpoint_count !298
  %69 = add i32 %68, 1, !dbg !3665, !idemp_checkpoint_count !298
  store volatile i32 %69, i32* @__checkpoint_count, align 4, !dbg !3665, !idemp_checkpoint_count !298
  store i64 %66, i64* %67, align 8, !dbg !3665, !tbaa !2162, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  %70 = fmul double 2.000000e+00, %62, !dbg !3666
  %71 = fsub double 2.000000e+00, %62, !dbg !3667
  %72 = fdiv double %63, 1.400000e+01, !dbg !3668
  %73 = fadd double 1.000000e+01, %72, !dbg !3669
  %74 = fdiv double %63, %73, !dbg !3670
  %75 = fadd double 6.000000e+00, %74, !dbg !3671
  %76 = fdiv double %63, %75, !dbg !3672
  %77 = fadd double %71, %76, !dbg !3673
  %78 = fdiv double %70, %77, !dbg !3674
  %79 = fadd double 1.000000e+00, %78, !dbg !3675
  %80 = bitcast %union.anon* %9 to double*, !dbg !3676
  %81 = load double, double* %80, align 8, !dbg !3677, !tbaa !2162, !idemp_war_rd !298
  %82 = fmul double %81, %79, !dbg !3677
  %83 = load i32, i32* @__checkpoint_count, align 4, !dbg !3677, !idemp_checkpoint_count !298
  %84 = add i32 %83, 1, !dbg !3677, !idemp_checkpoint_count !298
  store volatile i32 %84, i32* @__checkpoint_count, align 4, !dbg !3677, !idemp_checkpoint_count !298
  store double %82, double* %80, align 8, !dbg !3677, !tbaa !2162, !idemp_war_wr !298, !idemp_uncut_war !298, !idemp_pot_pwrite !298
  %85 = bitcast %union.anon* %9 to double*, !dbg !3678
  %86 = load double, double* %85, align 8, !dbg !3678, !tbaa !2162
  %87 = fcmp olt double %.09, %86, !dbg !3680
  br i1 %87, label %88, label %._crit_edge20, !dbg !3681

._crit_edge20:                                    ; preds = %29
  br label %95, !dbg !3681

88:                                               ; preds = %29
  %89 = add nsw i32 %53, -1, !dbg !3682
  call void @llvm.dbg.value(metadata i32 %89, metadata !3599, metadata !DIExpression()), !dbg !3605
  %90 = bitcast %union.anon* %9 to double*, !dbg !3684
  %91 = load double, double* %90, align 8, !dbg !3685, !tbaa !2162, !idemp_war_rd !298
  %92 = fdiv double %91, 1.000000e+01, !dbg !3685
  %93 = load i32, i32* @__checkpoint_count, align 4, !dbg !3685, !idemp_checkpoint_count !298
  %94 = add i32 %93, 1, !dbg !3685, !idemp_checkpoint_count !298
  store volatile i32 %94, i32* @__checkpoint_count, align 4, !dbg !3685, !idemp_checkpoint_count !298
  store double %92, double* %90, align 8, !dbg !3685, !tbaa !2162, !idemp_war_wr !298, !idemp_uncut_war !298
  br label %95, !dbg !3686

95:                                               ; preds = %88, %._crit_edge20
  %.06 = phi i32 [ %89, %88 ], [ %53, %._crit_edge20 ], !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3599, metadata !DIExpression()), !dbg !3605
  %96 = icmp slt i32 %.06, 100, !dbg !3687
  br i1 %96, label %97, label %._crit_edge21, !dbg !3688

._crit_edge21:                                    ; preds = %95
  br label %99, !dbg !3688

97:                                               ; preds = %95
  %98 = icmp sgt i32 %.06, -100, !dbg !3689
  br label %99

99:                                               ; preds = %97, %._crit_edge21
  %100 = phi i1 [ false, %._crit_edge21 ], [ %98, %97 ], !dbg !3605
  %101 = zext i1 %100 to i64, !dbg !3690
  %102 = select i1 %100, i32 4, i32 5, !dbg !3690
  call void @llvm.dbg.value(metadata i32 %102, metadata !3602, metadata !DIExpression()), !dbg !3605
  %103 = and i32 %7, 2048, !dbg !3691
  %104 = icmp ne i32 %103, 0, !dbg !3691
  br i1 %104, label %105, label %._crit_edge22, !dbg !3693

._crit_edge22:                                    ; preds = %99
  br label %126, !dbg !3693

105:                                              ; preds = %99
  %106 = fcmp oge double %.09, 1.000000e-04, !dbg !3694
  br i1 %106, label %107, label %._crit_edge23, !dbg !3697

._crit_edge23:                                    ; preds = %105
  br label %117, !dbg !3697

107:                                              ; preds = %105
  %108 = fcmp olt double %.09, 1.000000e+06, !dbg !3698
  br i1 %108, label %109, label %._crit_edge24, !dbg !3699

._crit_edge24:                                    ; preds = %107
  br label %117, !dbg !3699

109:                                              ; preds = %107
  %110 = icmp sgt i32 %.011, %.06, !dbg !3700
  br i1 %110, label %111, label %114, !dbg !3703

111:                                              ; preds = %109
  %112 = sub nsw i32 %.011, %.06, !dbg !3704
  %113 = sub nsw i32 %112, 1, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %113, metadata !3589, metadata !DIExpression()), !dbg !3605
  br label %115, !dbg !3707

114:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()), !dbg !3605
  br label %115

115:                                              ; preds = %114, %111
  %.112 = phi i32 [ %113, %111 ], [ 0, %114 ], !dbg !3708
  call void @llvm.dbg.value(metadata i32 %.112, metadata !3589, metadata !DIExpression()), !dbg !3605
  %116 = or i32 %7, 1024, !dbg !3709
  call void @llvm.dbg.value(metadata i32 %116, metadata !3591, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3605
  br label %125, !dbg !3710

117:                                              ; preds = %._crit_edge24, %._crit_edge23
  %118 = icmp ugt i32 %.011, 0, !dbg !3711
  br i1 %118, label %119, label %._crit_edge25, !dbg !3714

._crit_edge25:                                    ; preds = %117
  br label %124, !dbg !3714

119:                                              ; preds = %117
  %120 = and i32 %7, 1024, !dbg !3715
  %121 = icmp ne i32 %120, 0, !dbg !3715
  br i1 %121, label %122, label %._crit_edge26, !dbg !3716

._crit_edge26:                                    ; preds = %119
  br label %124, !dbg !3716

122:                                              ; preds = %119
  %123 = add i32 %.011, -1, !dbg !3717
  call void @llvm.dbg.value(metadata i32 %123, metadata !3589, metadata !DIExpression()), !dbg !3605
  br label %124, !dbg !3719

124:                                              ; preds = %122, %._crit_edge26, %._crit_edge25
  %.213 = phi i32 [ %123, %122 ], [ %.011, %._crit_edge26 ], [ %.011, %._crit_edge25 ]
  call void @llvm.dbg.value(metadata i32 %.213, metadata !3589, metadata !DIExpression()), !dbg !3605
  br label %125

125:                                              ; preds = %124, %115
  %.014 = phi i32 [ %116, %115 ], [ %7, %124 ]
  %.3 = phi i32 [ %.112, %115 ], [ %.213, %124 ], !dbg !3720
  %.17 = phi i32 [ 0, %115 ], [ %.06, %124 ], !dbg !3605
  %.02 = phi i32 [ 0, %115 ], [ %102, %124 ], !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3602, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.17, metadata !3599, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3589, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.014, metadata !3591, metadata !DIExpression()), !dbg !3605
  br label %126, !dbg !3721

126:                                              ; preds = %125, %._crit_edge22
  %.115 = phi i32 [ %.014, %125 ], [ %7, %._crit_edge22 ]
  %.4 = phi i32 [ %.3, %125 ], [ %.011, %._crit_edge22 ]
  %.28 = phi i32 [ %.17, %125 ], [ %.06, %._crit_edge22 ], !dbg !3605
  %.13 = phi i32 [ %.02, %125 ], [ %102, %._crit_edge22 ], !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3602, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.28, metadata !3599, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3589, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.115, metadata !3591, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %6, metadata !3603, metadata !DIExpression()), !dbg !3605
  %127 = icmp ugt i32 %6, %.13, !dbg !3722
  br i1 %127, label %128, label %130, !dbg !3724

128:                                              ; preds = %126
  %129 = sub i32 %6, %.13, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %129, metadata !3603, metadata !DIExpression()), !dbg !3605
  br label %131, !dbg !3727

130:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i32 0, metadata !3603, metadata !DIExpression()), !dbg !3605
  br label %131

131:                                              ; preds = %130, %128
  %.01 = phi i32 [ %129, %128 ], [ 0, %130 ], !dbg !3728
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3603, metadata !DIExpression()), !dbg !3605
  %132 = and i32 %.115, 2, !dbg !3729
  %133 = icmp ne i32 %132, 0, !dbg !3729
  br i1 %133, label %134, label %._crit_edge27, !dbg !3731

._crit_edge27:                                    ; preds = %131
  br label %137, !dbg !3731

134:                                              ; preds = %131
  %135 = icmp ne i32 %.13, 0, !dbg !3732
  br i1 %135, label %136, label %._crit_edge28, !dbg !3733

._crit_edge28:                                    ; preds = %134
  br label %137, !dbg !3733

136:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i32 0, metadata !3603, metadata !DIExpression()), !dbg !3605
  br label %137, !dbg !3734

137:                                              ; preds = %136, %._crit_edge28, %._crit_edge27
  %.1 = phi i32 [ 0, %136 ], [ %.01, %._crit_edge28 ], [ %.01, %._crit_edge27 ], !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3603, metadata !DIExpression()), !dbg !3605
  %138 = icmp ne i32 %.28, 0, !dbg !3736
  br i1 %138, label %139, label %._crit_edge29, !dbg !3738

._crit_edge29:                                    ; preds = %137
  br label %143, !dbg !3738

139:                                              ; preds = %137
  %140 = bitcast %union.anon* %9 to double*, !dbg !3739
  %141 = load double, double* %140, align 8, !dbg !3739, !tbaa !2162
  %142 = fdiv double %.09, %141, !dbg !3741
  call void @llvm.dbg.value(metadata double %142, metadata !3588, metadata !DIExpression()), !dbg !3605
  br label %143, !dbg !3742

143:                                              ; preds = %139, %._crit_edge29
  %.110 = phi double [ %142, %139 ], [ %.09, %._crit_edge29 ], !dbg !3605
  call void @llvm.dbg.value(metadata double %.110, metadata !3588, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %2, metadata !3604, metadata !DIExpression()), !dbg !3605
  %144 = trunc i8 %21 to i1, !dbg !3743
  br i1 %144, label %145, label %147, !dbg !3743

145:                                              ; preds = %143
  %146 = fsub double -0.000000e+00, %.110, !dbg !3744
  br label %148, !dbg !3743

147:                                              ; preds = %143
  br label %148, !dbg !3743

148:                                              ; preds = %147, %145
  %149 = phi double [ %146, %145 ], [ %.110, %147 ], !dbg !3743
  %150 = and i32 %.115, -2049, !dbg !3745
  %151 = load i32, i32* @__checkpoint_count, align 4, !dbg !3746, !idemp_checkpoint_count !298
  %152 = add i32 %151, 1, !dbg !3746, !idemp_checkpoint_count !298
  store volatile i32 %152, i32* @__checkpoint_count, align 4, !dbg !3746, !idemp_checkpoint_count !298
  %153 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %149, i32 %.4, i32 %.1, i32 %150), !dbg !3746
  call void @llvm.dbg.value(metadata i32 %153, metadata !3586, metadata !DIExpression()), !dbg !3605
  %154 = icmp ne i32 %.13, 0, !dbg !3747
  br i1 %154, label %155, label %._crit_edge30, !dbg !3749

._crit_edge30:                                    ; preds = %148
  br label %187, !dbg !3749

155:                                              ; preds = %148
  %156 = and i32 %.115, 32, !dbg !3750
  %157 = icmp ne i32 %156, 0, !dbg !3752
  %158 = zext i1 %157 to i64, !dbg !3752
  %159 = select i1 %157, i32 69, i32 101, !dbg !3752
  %160 = trunc i32 %159 to i8, !dbg !3752
  %161 = add i32 %153, 1, !dbg !3753
  call void @llvm.dbg.value(metadata i32 %161, metadata !3586, metadata !DIExpression()), !dbg !3605
  %162 = load i32, i32* @__checkpoint_count, align 4, !dbg !3754, !idemp_checkpoint_count !298
  %163 = add i32 %162, 1, !dbg !3754, !idemp_checkpoint_count !298
  store volatile i32 %163, i32* @__checkpoint_count, align 4, !dbg !3754, !idemp_checkpoint_count !298
  call arm_aapcscc void %0(i8 zeroext %160, i8* %1, i32 %153, i32 %3), !dbg !3754
  %164 = icmp slt i32 %.28, 0, !dbg !3755
  br i1 %164, label %165, label %167, !dbg !3756

165:                                              ; preds = %155
  %166 = sub nsw i32 0, %.28, !dbg !3757
  br label %168, !dbg !3756

167:                                              ; preds = %155
  br label %168, !dbg !3756

168:                                              ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ %.28, %167 ], !dbg !3756
  %170 = icmp slt i32 %.28, 0, !dbg !3758
  %171 = sub i32 %.13, 1, !dbg !3759
  %172 = load i32, i32* @__checkpoint_count, align 4, !dbg !3760, !idemp_checkpoint_count !298
  %173 = add i32 %172, 1, !dbg !3760, !idemp_checkpoint_count !298
  store volatile i32 %173, i32* @__checkpoint_count, align 4, !dbg !3760, !idemp_checkpoint_count !298
  %174 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %161, i32 %3, i32 %169, i1 zeroext %170, i32 10, i32 0, i32 %171, i32 5), !dbg !3760
  call void @llvm.dbg.value(metadata i32 %174, metadata !3586, metadata !DIExpression()), !dbg !3605
  %175 = and i32 %.115, 2, !dbg !3761
  %176 = icmp ne i32 %175, 0, !dbg !3761
  br i1 %176, label %177, label %._crit_edge31, !dbg !3763

._crit_edge31:                                    ; preds = %168
  br label %186, !dbg !3763

177:                                              ; preds = %168
  br label %178, !dbg !3764

178:                                              ; preds = %181, %177
  %.04 = phi i32 [ %174, %177 ], [ %182, %181 ], !dbg !3766
  call void @llvm.dbg.value(metadata i32 %.04, metadata !3586, metadata !DIExpression()), !dbg !3605
  %179 = sub i32 %.04, %2, !dbg !3767
  %180 = icmp ult i32 %179, %6, !dbg !3768
  br i1 %180, label %181, label %185, !dbg !3764

181:                                              ; preds = %178
  %182 = add i32 %.04, 1, !dbg !3769
  call void @llvm.dbg.value(metadata i32 %182, metadata !3586, metadata !DIExpression()), !dbg !3605
  %183 = load i32, i32* @__checkpoint_count, align 4, !dbg !3770, !idemp_checkpoint_count !298
  %184 = add i32 %183, 1, !dbg !3770, !idemp_checkpoint_count !298
  store volatile i32 %184, i32* @__checkpoint_count, align 4, !dbg !3770, !idemp_checkpoint_count !298
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.04, i32 %3), !dbg !3770
  br label %178, !dbg !3764, !llvm.loop !3771

185:                                              ; preds = %178
  %.04.lcssa = phi i32 [ %.04, %178 ], !dbg !3766
  call void @llvm.dbg.value(metadata i32 %.04.lcssa, metadata !3586, metadata !DIExpression()), !dbg !3605
  br label %186, !dbg !3773

186:                                              ; preds = %185, %._crit_edge31
  %.15 = phi i32 [ %.04.lcssa, %185 ], [ %174, %._crit_edge31 ], !dbg !3774
  call void @llvm.dbg.value(metadata i32 %.15, metadata !3586, metadata !DIExpression()), !dbg !3605
  br label %187, !dbg !3775

187:                                              ; preds = %186, %._crit_edge30
  %.2 = phi i32 [ %.15, %186 ], [ %153, %._crit_edge30 ], !dbg !3605
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3586, metadata !DIExpression()), !dbg !3605
  %188 = bitcast %union.anon* %9 to i8*, !dbg !3776
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %188) #4, !dbg !3776
  br label %189

189:                                              ; preds = %187, %15
  %.0 = phi i32 [ %18, %15 ], [ %.2, %187 ], !dbg !3605
  ret i32 %.0, !dbg !3776
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @_strnlen_s(i8*, i32) #5 !dbg !3777 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 %1, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %0, metadata !3783, metadata !DIExpression()), !dbg !3784
  br label %3, !dbg !3785

3:                                                ; preds = %13, %2
  %.01 = phi i32 [ %1, %2 ], [ %.1, %13 ]
  %.0 = phi i8* [ %0, %2 ], [ %14, %13 ], !dbg !3787
  call void @llvm.dbg.value(metadata i8* %.0, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3782, metadata !DIExpression()), !dbg !3784
  %4 = load i8, i8* %.0, align 1, !dbg !3788, !tbaa !2162
  %5 = zext i8 %4 to i32, !dbg !3788
  %6 = icmp ne i32 %5, 0, !dbg !3788
  br i1 %6, label %7, label %._crit_edge, !dbg !3790

._crit_edge:                                      ; preds = %3
  br label %10, !dbg !3790

7:                                                ; preds = %3
  %8 = add i32 %.01, -1, !dbg !3791
  call void @llvm.dbg.value(metadata i32 %8, metadata !3782, metadata !DIExpression()), !dbg !3784
  %9 = icmp ne i32 %.01, 0, !dbg !3790
  br label %10

10:                                               ; preds = %7, %._crit_edge
  %.1 = phi i32 [ %8, %7 ], [ %.01, %._crit_edge ]
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %7 ], !dbg !3792
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3782, metadata !DIExpression()), !dbg !3784
  br i1 %11, label %12, label %15, !dbg !3793

12:                                               ; preds = %10
  br label %13, !dbg !3793

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %14, metadata !3783, metadata !DIExpression()), !dbg !3784
  br label %3, !dbg !3795, !llvm.loop !3796

15:                                               ; preds = %10
  %.0.lcssa = phi i8* [ %.0, %10 ], !dbg !3787
  call void @llvm.dbg.value(metadata i8* %.0.lcssa, metadata !3783, metadata !DIExpression()), !dbg !3784
  %16 = ptrtoint i8* %.0.lcssa to i32, !dbg !3798
  %17 = ptrtoint i8* %0 to i32, !dbg !3798
  %18 = sub i32 %16, %17, !dbg !3798
  ret i32 %18, !dbg !3799
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i32, i32) #0 !dbg !3800 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3804, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %1, metadata !3805, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %2, metadata !3806, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %3, metadata !3807, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %4, metadata !3808, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %5, metadata !3809, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %6, metadata !3810, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %7, metadata !3811, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %2, metadata !3812, metadata !DIExpression()), !dbg !3817
  %9 = and i32 %7, 2, !dbg !3818
  %10 = icmp ne i32 %9, 0, !dbg !3818
  br i1 %10, label %._crit_edge, label %11, !dbg !3819

._crit_edge:                                      ; preds = %8
  br label %25, !dbg !3819

11:                                               ; preds = %8
  %12 = and i32 %7, 1, !dbg !3820
  %13 = icmp ne i32 %12, 0, !dbg !3820
  br i1 %13, label %._crit_edge3, label %14, !dbg !3821

._crit_edge3:                                     ; preds = %11
  br label %25, !dbg !3821

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %5, metadata !3813, metadata !DIExpression()), !dbg !3822
  br label %15, !dbg !3823

15:                                               ; preds = %22, %14
  %.02 = phi i32 [ %2, %14 ], [ %19, %22 ]
  %.0 = phi i32 [ %5, %14 ], [ %23, %22 ], !dbg !3822
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3813, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3806, metadata !DIExpression()), !dbg !3817
  %16 = icmp ult i32 %.0, %6, !dbg !3824
  br i1 %16, label %18, label %17, !dbg !3826

17:                                               ; preds = %15
  %.02.lcssa = phi i32 [ %.02, %15 ]
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !3806, metadata !DIExpression()), !dbg !3817
  br label %24

18:                                               ; preds = %15
  %19 = add i32 %.02, 1, !dbg !3827
  call void @llvm.dbg.value(metadata i32 %19, metadata !3806, metadata !DIExpression()), !dbg !3817
  %20 = load i32, i32* @__checkpoint_count, align 4, !dbg !3829, !idemp_checkpoint_count !298
  %21 = add i32 %20, 1, !dbg !3829, !idemp_checkpoint_count !298
  store volatile i32 %21, i32* @__checkpoint_count, align 4, !dbg !3829, !idemp_checkpoint_count !298
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.02, i32 %3), !dbg !3829
  br label %22, !dbg !3830

22:                                               ; preds = %18
  %23 = add i32 %.0, 1, !dbg !3831
  call void @llvm.dbg.value(metadata i32 %23, metadata !3813, metadata !DIExpression()), !dbg !3822
  br label %15, !dbg !3832, !llvm.loop !3833

24:                                               ; preds = %17
  br label %25, !dbg !3835

25:                                               ; preds = %24, %._crit_edge3, %._crit_edge
  %.1 = phi i32 [ %2, %._crit_edge ], [ %2, %._crit_edge3 ], [ %.02.lcssa, %24 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3806, metadata !DIExpression()), !dbg !3817
  br label %26, !dbg !3836

26:                                               ; preds = %28, %25
  %.2 = phi i32 [ %.1, %25 ], [ %32, %28 ]
  %.01 = phi i32 [ %5, %25 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3809, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3806, metadata !DIExpression()), !dbg !3817
  %27 = icmp ne i32 %.01, 0, !dbg !3836
  br i1 %27, label %28, label %35, !dbg !3836

28:                                               ; preds = %26
  %29 = add i32 %.01, -1, !dbg !3837
  call void @llvm.dbg.value(metadata i32 %29, metadata !3809, metadata !DIExpression()), !dbg !3817
  %30 = getelementptr inbounds i8, i8* %4, i32 %29, !dbg !3839
  %31 = load i8, i8* %30, align 1, !dbg !3839, !tbaa !2162
  %32 = add i32 %.2, 1, !dbg !3840
  call void @llvm.dbg.value(metadata i32 %32, metadata !3806, metadata !DIExpression()), !dbg !3817
  %33 = load i32, i32* @__checkpoint_count, align 4, !dbg !3841, !idemp_checkpoint_count !298
  %34 = add i32 %33, 1, !dbg !3841, !idemp_checkpoint_count !298
  store volatile i32 %34, i32* @__checkpoint_count, align 4, !dbg !3841, !idemp_checkpoint_count !298
  call arm_aapcscc void %0(i8 zeroext %31, i8* %1, i32 %.2, i32 %3), !dbg !3841
  br label %26, !dbg !3836, !llvm.loop !3842

35:                                               ; preds = %26
  %.2.lcssa = phi i32 [ %.2, %26 ]
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !3806, metadata !DIExpression()), !dbg !3817
  %36 = and i32 %7, 2, !dbg !3844
  %37 = icmp ne i32 %36, 0, !dbg !3844
  br i1 %37, label %38, label %._crit_edge4, !dbg !3846

._crit_edge4:                                     ; preds = %35
  br label %47, !dbg !3846

38:                                               ; preds = %35
  br label %39, !dbg !3847

39:                                               ; preds = %42, %38
  %.3 = phi i32 [ %.2.lcssa, %38 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3806, metadata !DIExpression()), !dbg !3817
  %40 = sub i32 %.3, %2, !dbg !3849
  %41 = icmp ult i32 %40, %6, !dbg !3850
  br i1 %41, label %42, label %46, !dbg !3847

42:                                               ; preds = %39
  %43 = add i32 %.3, 1, !dbg !3851
  call void @llvm.dbg.value(metadata i32 %43, metadata !3806, metadata !DIExpression()), !dbg !3817
  %44 = load i32, i32* @__checkpoint_count, align 4, !dbg !3853, !idemp_checkpoint_count !298
  %45 = add i32 %44, 1, !dbg !3853, !idemp_checkpoint_count !298
  store volatile i32 %45, i32* @__checkpoint_count, align 4, !dbg !3853, !idemp_checkpoint_count !298
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.3, i32 %3), !dbg !3853
  br label %39, !dbg !3847, !llvm.loop !3854

46:                                               ; preds = %39
  %.3.lcssa = phi i32 [ %.3, %39 ]
  call void @llvm.dbg.value(metadata i32 %.3.lcssa, metadata !3806, metadata !DIExpression()), !dbg !3817
  br label %47, !dbg !3856

47:                                               ; preds = %46, %._crit_edge4
  %.4 = phi i32 [ %.3.lcssa, %46 ], [ %.2.lcssa, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3806, metadata !DIExpression()), !dbg !3817
  ret i32 %.4, !dbg !3857
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3858 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3862, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i8* %1, metadata !3863, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %2, metadata !3864, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %3, metadata !3865, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i8* %4, metadata !3866, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %5, metadata !3867, metadata !DIExpression()), !dbg !3873
  %12 = zext i1 %6 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3868, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %7, metadata !3869, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %8, metadata !3870, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %9, metadata !3871, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %10, metadata !3872, metadata !DIExpression()), !dbg !3873
  %13 = and i32 %10, 2, !dbg !3874
  %14 = icmp ne i32 %13, 0, !dbg !3874
  br i1 %14, label %._crit_edge, label %15, !dbg !3876

._crit_edge:                                      ; preds = %11
  br label %51, !dbg !3876

15:                                               ; preds = %11
  %16 = icmp ne i32 %9, 0, !dbg !3877
  br i1 %16, label %17, label %._crit_edge4, !dbg !3880

._crit_edge4:                                     ; preds = %15
  br label %27, !dbg !3880

17:                                               ; preds = %15
  %18 = and i32 %10, 1, !dbg !3881
  %19 = icmp ne i32 %18, 0, !dbg !3881
  br i1 %19, label %20, label %._crit_edge5, !dbg !3882

._crit_edge5:                                     ; preds = %17
  br label %27, !dbg !3882

20:                                               ; preds = %17
  %21 = trunc i8 %12 to i1, !dbg !3883
  br i1 %21, label %._crit_edge6, label %22, !dbg !3884

._crit_edge6:                                     ; preds = %20
  br label %25, !dbg !3884

22:                                               ; preds = %20
  %23 = and i32 %10, 12, !dbg !3885
  %24 = icmp ne i32 %23, 0, !dbg !3885
  br i1 %24, label %._crit_edge7, label %._crit_edge8, !dbg !3886

._crit_edge8:                                     ; preds = %22
  br label %27, !dbg !3886

._crit_edge7:                                     ; preds = %22
  br label %25, !dbg !3886

25:                                               ; preds = %._crit_edge7, %._crit_edge6
  %26 = add i32 %9, -1, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %26, metadata !3871, metadata !DIExpression()), !dbg !3873
  br label %27, !dbg !3889

27:                                               ; preds = %25, %._crit_edge8, %._crit_edge5, %._crit_edge4
  %.0 = phi i32 [ %26, %25 ], [ %9, %._crit_edge8 ], [ %9, %._crit_edge5 ], [ %9, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3871, metadata !DIExpression()), !dbg !3873
  br label %28, !dbg !3890

28:                                               ; preds = %34, %27
  %.01 = phi i32 [ %5, %27 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3867, metadata !DIExpression()), !dbg !3873
  %29 = icmp ult i32 %.01, %8, !dbg !3891
  br i1 %29, label %30, label %._crit_edge9, !dbg !3892

._crit_edge9:                                     ; preds = %28
  br label %32, !dbg !3892

30:                                               ; preds = %28
  %31 = icmp ult i32 %.01, 32, !dbg !3893
  br label %32

32:                                               ; preds = %30, %._crit_edge9
  %33 = phi i1 [ false, %._crit_edge9 ], [ %31, %30 ], !dbg !3894
  br i1 %33, label %34, label %37, !dbg !3890

34:                                               ; preds = %32
  %35 = add i32 %.01, 1, !dbg !3895
  call void @llvm.dbg.value(metadata i32 %35, metadata !3867, metadata !DIExpression()), !dbg !3873
  %36 = getelementptr inbounds i8, i8* %4, i32 %.01, !dbg !3897
  store i8 48, i8* %36, align 1, !dbg !3898, !tbaa !2162
  br label %28, !dbg !3890, !llvm.loop !3899

37:                                               ; preds = %32
  %.01.lcssa = phi i32 [ %.01, %32 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %38, !dbg !3901

38:                                               ; preds = %47, %37
  %.12 = phi i32 [ %.01.lcssa, %37 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3867, metadata !DIExpression()), !dbg !3873
  %39 = and i32 %10, 1, !dbg !3902
  %40 = icmp ne i32 %39, 0, !dbg !3902
  br i1 %40, label %41, label %._crit_edge10, !dbg !3903

._crit_edge10:                                    ; preds = %38
  br label %45, !dbg !3903

41:                                               ; preds = %38
  %42 = icmp ult i32 %.12, %.0, !dbg !3904
  br i1 %42, label %43, label %._crit_edge11, !dbg !3905

._crit_edge11:                                    ; preds = %41
  br label %45, !dbg !3905

43:                                               ; preds = %41
  %44 = icmp ult i32 %.12, 32, !dbg !3906
  br label %45

45:                                               ; preds = %43, %._crit_edge11, %._crit_edge10
  %46 = phi i1 [ false, %._crit_edge11 ], [ false, %._crit_edge10 ], [ %44, %43 ], !dbg !3894
  br i1 %46, label %47, label %50, !dbg !3901

47:                                               ; preds = %45
  %48 = add i32 %.12, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i32 %48, metadata !3867, metadata !DIExpression()), !dbg !3873
  %49 = getelementptr inbounds i8, i8* %4, i32 %.12, !dbg !3909
  store i8 48, i8* %49, align 1, !dbg !3910, !tbaa !2162
  br label %38, !dbg !3901, !llvm.loop !3911

50:                                               ; preds = %45
  %.12.lcssa = phi i32 [ %.12, %45 ]
  call void @llvm.dbg.value(metadata i32 %.12.lcssa, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %51, !dbg !3913

51:                                               ; preds = %50, %._crit_edge
  %.2 = phi i32 [ %5, %._crit_edge ], [ %.12.lcssa, %50 ]
  %.1 = phi i32 [ %9, %._crit_edge ], [ %.0, %50 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3871, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3867, metadata !DIExpression()), !dbg !3873
  %52 = and i32 %10, 16, !dbg !3914
  %53 = icmp ne i32 %52, 0, !dbg !3914
  br i1 %53, label %54, label %._crit_edge12, !dbg !3916

._crit_edge12:                                    ; preds = %51
  br label %106, !dbg !3916

54:                                               ; preds = %51
  %55 = and i32 %10, 1024, !dbg !3917
  %56 = icmp ne i32 %55, 0, !dbg !3917
  br i1 %56, label %._crit_edge13, label %57, !dbg !3920

._crit_edge13:                                    ; preds = %54
  br label %71, !dbg !3920

57:                                               ; preds = %54
  %58 = icmp ne i32 %.2, 0, !dbg !3921
  br i1 %58, label %59, label %._crit_edge14, !dbg !3922

._crit_edge14:                                    ; preds = %57
  br label %71, !dbg !3922

59:                                               ; preds = %57
  %60 = icmp eq i32 %.2, %8, !dbg !3923
  br i1 %60, label %._crit_edge15, label %61, !dbg !3924

._crit_edge15:                                    ; preds = %59
  br label %63, !dbg !3924

61:                                               ; preds = %59
  %62 = icmp eq i32 %.2, %.1, !dbg !3925
  br i1 %62, label %._crit_edge16, label %._crit_edge17, !dbg !3926

._crit_edge17:                                    ; preds = %61
  br label %71, !dbg !3926

._crit_edge16:                                    ; preds = %61
  br label %63, !dbg !3926

63:                                               ; preds = %._crit_edge16, %._crit_edge15
  %64 = add i32 %.2, -1, !dbg !3927
  call void @llvm.dbg.value(metadata i32 %64, metadata !3867, metadata !DIExpression()), !dbg !3873
  %65 = icmp ne i32 %64, 0, !dbg !3929
  br i1 %65, label %66, label %._crit_edge18, !dbg !3931

._crit_edge18:                                    ; preds = %63
  br label %70, !dbg !3931

66:                                               ; preds = %63
  %67 = icmp eq i32 %7, 16, !dbg !3932
  br i1 %67, label %68, label %._crit_edge19, !dbg !3933

._crit_edge19:                                    ; preds = %66
  br label %70, !dbg !3933

68:                                               ; preds = %66
  %69 = add i32 %64, -1, !dbg !3934
  call void @llvm.dbg.value(metadata i32 %69, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %70, !dbg !3936

70:                                               ; preds = %68, %._crit_edge19, %._crit_edge18
  %.3 = phi i32 [ %69, %68 ], [ %64, %._crit_edge19 ], [ %64, %._crit_edge18 ], !dbg !3937
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %71, !dbg !3938

71:                                               ; preds = %70, %._crit_edge17, %._crit_edge14, %._crit_edge13
  %.4 = phi i32 [ %.2, %._crit_edge13 ], [ %.3, %70 ], [ %.2, %._crit_edge17 ], [ %.2, %._crit_edge14 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3867, metadata !DIExpression()), !dbg !3873
  %72 = icmp eq i32 %7, 16, !dbg !3939
  br i1 %72, label %73, label %._crit_edge20, !dbg !3941

._crit_edge20:                                    ; preds = %71
  br label %81, !dbg !3941

73:                                               ; preds = %71
  %74 = and i32 %10, 32, !dbg !3942
  %75 = icmp ne i32 %74, 0, !dbg !3942
  br i1 %75, label %._crit_edge21, label %76, !dbg !3943

._crit_edge21:                                    ; preds = %73
  br label %81, !dbg !3943

76:                                               ; preds = %73
  %77 = icmp ult i32 %.4, 32, !dbg !3944
  br i1 %77, label %78, label %._crit_edge22, !dbg !3945

._crit_edge22:                                    ; preds = %76
  br label %81, !dbg !3945

78:                                               ; preds = %76
  %79 = add i32 %.4, 1, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %79, metadata !3867, metadata !DIExpression()), !dbg !3873
  %80 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3948
  store i8 120, i8* %80, align 1, !dbg !3949, !tbaa !2162
  br label %100, !dbg !3950

81:                                               ; preds = %._crit_edge22, %._crit_edge21, %._crit_edge20
  %82 = icmp eq i32 %7, 16, !dbg !3951
  br i1 %82, label %83, label %._crit_edge23, !dbg !3953

._crit_edge23:                                    ; preds = %81
  br label %91, !dbg !3953

83:                                               ; preds = %81
  %84 = and i32 %10, 32, !dbg !3954
  %85 = icmp ne i32 %84, 0, !dbg !3954
  br i1 %85, label %86, label %._crit_edge24, !dbg !3955

._crit_edge24:                                    ; preds = %83
  br label %91, !dbg !3955

86:                                               ; preds = %83
  %87 = icmp ult i32 %.4, 32, !dbg !3956
  br i1 %87, label %88, label %._crit_edge25, !dbg !3957

._crit_edge25:                                    ; preds = %86
  br label %91, !dbg !3957

88:                                               ; preds = %86
  %89 = add i32 %.4, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i32 %89, metadata !3867, metadata !DIExpression()), !dbg !3873
  %90 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3960
  store i8 88, i8* %90, align 1, !dbg !3961, !tbaa !2162
  br label %99, !dbg !3962

91:                                               ; preds = %._crit_edge25, %._crit_edge24, %._crit_edge23
  %92 = icmp eq i32 %7, 2, !dbg !3963
  br i1 %92, label %93, label %._crit_edge26, !dbg !3965

._crit_edge26:                                    ; preds = %91
  br label %98, !dbg !3965

93:                                               ; preds = %91
  %94 = icmp ult i32 %.4, 32, !dbg !3966
  br i1 %94, label %95, label %._crit_edge27, !dbg !3967

._crit_edge27:                                    ; preds = %93
  br label %98, !dbg !3967

95:                                               ; preds = %93
  %96 = add i32 %.4, 1, !dbg !3968
  call void @llvm.dbg.value(metadata i32 %96, metadata !3867, metadata !DIExpression()), !dbg !3873
  %97 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3970
  store i8 98, i8* %97, align 1, !dbg !3971, !tbaa !2162
  br label %98, !dbg !3972

98:                                               ; preds = %95, %._crit_edge27, %._crit_edge26
  %.5 = phi i32 [ %96, %95 ], [ %.4, %._crit_edge27 ], [ %.4, %._crit_edge26 ]
  call void @llvm.dbg.value(metadata i32 %.5, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %99

99:                                               ; preds = %98, %88
  %.6 = phi i32 [ %89, %88 ], [ %.5, %98 ], !dbg !3973
  call void @llvm.dbg.value(metadata i32 %.6, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %100

100:                                              ; preds = %99, %78
  %.7 = phi i32 [ %.6, %99 ], [ %79, %78 ], !dbg !3974
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3867, metadata !DIExpression()), !dbg !3873
  %101 = icmp ult i32 %.7, 32, !dbg !3975
  br i1 %101, label %102, label %._crit_edge28, !dbg !3977

._crit_edge28:                                    ; preds = %100
  br label %105, !dbg !3977

102:                                              ; preds = %100
  %103 = add i32 %.7, 1, !dbg !3978
  call void @llvm.dbg.value(metadata i32 %103, metadata !3867, metadata !DIExpression()), !dbg !3873
  %104 = getelementptr inbounds i8, i8* %4, i32 %.7, !dbg !3980
  store i8 48, i8* %104, align 1, !dbg !3981, !tbaa !2162
  br label %105, !dbg !3982

105:                                              ; preds = %102, %._crit_edge28
  %.8 = phi i32 [ %103, %102 ], [ %.7, %._crit_edge28 ], !dbg !3983
  call void @llvm.dbg.value(metadata i32 %.8, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %106, !dbg !3984

106:                                              ; preds = %105, %._crit_edge12
  %.9 = phi i32 [ %.8, %105 ], [ %.2, %._crit_edge12 ]
  call void @llvm.dbg.value(metadata i32 %.9, metadata !3867, metadata !DIExpression()), !dbg !3873
  %107 = icmp ult i32 %.9, 32, !dbg !3985
  br i1 %107, label %108, label %._crit_edge29, !dbg !3987

._crit_edge29:                                    ; preds = %106
  br label %128, !dbg !3987

108:                                              ; preds = %106
  %109 = trunc i8 %12 to i1, !dbg !3988
  br i1 %109, label %110, label %113, !dbg !3991

110:                                              ; preds = %108
  %111 = add i32 %.9, 1, !dbg !3992
  call void @llvm.dbg.value(metadata i32 %111, metadata !3867, metadata !DIExpression()), !dbg !3873
  %112 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3994
  store i8 45, i8* %112, align 1, !dbg !3995, !tbaa !2162
  br label %127, !dbg !3996

113:                                              ; preds = %108
  %114 = and i32 %10, 4, !dbg !3997
  %115 = icmp ne i32 %114, 0, !dbg !3997
  br i1 %115, label %116, label %119, !dbg !3999

116:                                              ; preds = %113
  %117 = add i32 %.9, 1, !dbg !4000
  call void @llvm.dbg.value(metadata i32 %117, metadata !3867, metadata !DIExpression()), !dbg !3873
  %118 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !4002
  store i8 43, i8* %118, align 1, !dbg !4003, !tbaa !2162
  br label %126, !dbg !4004

119:                                              ; preds = %113
  %120 = and i32 %10, 8, !dbg !4005
  %121 = icmp ne i32 %120, 0, !dbg !4005
  br i1 %121, label %122, label %._crit_edge30, !dbg !4007

._crit_edge30:                                    ; preds = %119
  br label %125, !dbg !4007

122:                                              ; preds = %119
  %123 = add i32 %.9, 1, !dbg !4008
  call void @llvm.dbg.value(metadata i32 %123, metadata !3867, metadata !DIExpression()), !dbg !3873
  %124 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !4010
  store i8 32, i8* %124, align 1, !dbg !4011, !tbaa !2162
  br label %125, !dbg !4012

125:                                              ; preds = %122, %._crit_edge30
  %.10 = phi i32 [ %123, %122 ], [ %.9, %._crit_edge30 ], !dbg !3873
  call void @llvm.dbg.value(metadata i32 %.10, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %126

126:                                              ; preds = %125, %116
  %.11 = phi i32 [ %117, %116 ], [ %.10, %125 ], !dbg !4013
  call void @llvm.dbg.value(metadata i32 %.11, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %127

127:                                              ; preds = %126, %110
  %.123 = phi i32 [ %111, %110 ], [ %.11, %126 ], !dbg !4014
  call void @llvm.dbg.value(metadata i32 %.123, metadata !3867, metadata !DIExpression()), !dbg !3873
  br label %128, !dbg !4015

128:                                              ; preds = %127, %._crit_edge29
  %.13 = phi i32 [ %.123, %127 ], [ %.9, %._crit_edge29 ], !dbg !3873
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3867, metadata !DIExpression()), !dbg !3873
  %129 = load i32, i32* @__checkpoint_count, align 4, !dbg !4016, !idemp_checkpoint_count !298
  %130 = add i32 %129, 1, !dbg !4016, !idemp_checkpoint_count !298
  store volatile i32 %130, i32* @__checkpoint_count, align 4, !dbg !4016, !idemp_checkpoint_count !298
  %131 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %.13, i32 %.1, i32 %10), !dbg !4016
  ret i32 %131, !dbg !4017
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @sprintf_(i8*, i8*, ...) #0 !dbg !4018 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4022, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8* %1, metadata !4023, metadata !DIExpression()), !dbg !4026
  %4 = bitcast %struct.__va_list* %3 to i8*, !dbg !4027
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !4027
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4024, metadata !DIExpression()), !dbg !4028
  %5 = bitcast %struct.__va_list* %3 to i8*, !dbg !4029
  call void @llvm.va_start(i8* %5), !dbg !4029
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4030
  %7 = bitcast i8** %6 to [1 x i32]*, !dbg !4030
  %8 = load [1 x i32], [1 x i32]* %7, align 4, !dbg !4030
  %9 = load i32, i32* @__checkpoint_count, align 4, !dbg !4030, !idemp_checkpoint_count !298
  %10 = add i32 %9, 1, !dbg !4030, !idemp_checkpoint_count !298
  store volatile i32 %10, i32* @__checkpoint_count, align 4, !dbg !4030, !idemp_checkpoint_count !298
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 -1, i8* %1, [1 x i32] %8), !dbg !4030
  call void @llvm.dbg.value(metadata i32 %11, metadata !4025, metadata !DIExpression()), !dbg !4026
  %12 = bitcast %struct.__va_list* %3 to i8*, !dbg !4031
  call void @llvm.va_end(i8* %12), !dbg !4031
  %13 = bitcast %struct.__va_list* %3 to i8*, !dbg !4032
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !4032
  ret i32 %11, !dbg !4033
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_buffer(i8 zeroext, i8*, i32, i32) #5 !dbg !4034 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4036, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i8* %1, metadata !4037, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %2, metadata !4038, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %3, metadata !4039, metadata !DIExpression()), !dbg !4040
  %5 = icmp ult i32 %2, %3, !dbg !4041
  br i1 %5, label %6, label %._crit_edge, !dbg !4043

._crit_edge:                                      ; preds = %4
  br label %8, !dbg !4043

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %1, i32 %2, !dbg !4044
  store i8 %0, i8* %7, align 1, !dbg !4046, !tbaa !2162
  br label %8, !dbg !4047

8:                                                ; preds = %6, %._crit_edge
  ret void, !dbg !4048
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @snprintf_(i8*, i32, i8*, ...) #0 !dbg !4049 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4053, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 %1, metadata !4054, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i8* %2, metadata !4055, metadata !DIExpression()), !dbg !4058
  %5 = bitcast %struct.__va_list* %4 to i8*, !dbg !4059
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !4059
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4056, metadata !DIExpression()), !dbg !4060
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4061
  call void @llvm.va_start(i8* %6), !dbg !4061
  %7 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4062
  %8 = bitcast i8** %7 to [1 x i32]*, !dbg !4062
  %9 = load [1 x i32], [1 x i32]* %8, align 4, !dbg !4062
  %10 = load i32, i32* @__checkpoint_count, align 4, !dbg !4062, !idemp_checkpoint_count !298
  %11 = add i32 %10, 1, !dbg !4062, !idemp_checkpoint_count !298
  store volatile i32 %11, i32* @__checkpoint_count, align 4, !dbg !4062, !idemp_checkpoint_count !298
  %12 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %9), !dbg !4062
  call void @llvm.dbg.value(metadata i32 %12, metadata !4057, metadata !DIExpression()), !dbg !4058
  %13 = bitcast %struct.__va_list* %4 to i8*, !dbg !4063
  call void @llvm.va_end(i8* %13), !dbg !4063
  %14 = bitcast %struct.__va_list* %4 to i8*, !dbg !4064
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !4064
  ret i32 %12, !dbg !4065
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vprintf_(i8*, [1 x i32]) #0 !dbg !4066 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %6 = bitcast i8** %5 to [1 x i32]*
  store [1 x i32] %1, [1 x i32]* %6, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4070, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4071, metadata !DIExpression()), !dbg !4074
  %7 = bitcast [1 x i8]* %4 to i8*, !dbg !4075
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #4, !dbg !4075
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !4072, metadata !DIExpression()), !dbg !4076
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !4077
  %9 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4078
  %10 = bitcast i8** %9 to [1 x i32]*, !dbg !4078
  %11 = load [1 x i32], [1 x i32]* %10, align 4, !dbg !4078
  %12 = load i32, i32* @__checkpoint_count, align 4, !dbg !4078, !idemp_checkpoint_count !298
  %13 = add i32 %12, 1, !dbg !4078, !idemp_checkpoint_count !298
  store volatile i32 %13, i32* @__checkpoint_count, align 4, !dbg !4078, !idemp_checkpoint_count !298
  %14 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %8, i32 -1, i8* %0, [1 x i32] %11), !dbg !4078
  %15 = bitcast [1 x i8]* %4 to i8*, !dbg !4079
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %15) #4, !dbg !4079
  ret i32 %14, !dbg !4080
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vsnprintf_(i8*, i32, i8*, [1 x i32]) #0 !dbg !4081 {
  %5 = alloca %struct.__va_list, align 4
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0
  %7 = bitcast i8** %6 to [1 x i32]*
  store [1 x i32] %3, [1 x i32]* %7, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4085, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 %1, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i8* %2, metadata !4087, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.declare(metadata %struct.__va_list* %5, metadata !4088, metadata !DIExpression()), !dbg !4090
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0, !dbg !4091
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !4091
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !4091
  %11 = load i32, i32* @__checkpoint_count, align 4, !dbg !4091, !idemp_checkpoint_count !298
  %12 = add i32 %11, 1, !dbg !4091, !idemp_checkpoint_count !298
  store volatile i32 %12, i32* @__checkpoint_count, align 4, !dbg !4091, !idemp_checkpoint_count !298
  %13 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %10), !dbg !4091
  ret i32 %13, !dbg !4092
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @fctprintf(void (i8, i8*)*, i8*, i8*, ...) #0 !dbg !4093 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.out_fct_wrap_type, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*)* %0, metadata !4097, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i8* %1, metadata !4098, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i8* %2, metadata !4099, metadata !DIExpression()), !dbg !4104
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4105
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !4105
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4100, metadata !DIExpression()), !dbg !4106
  %7 = bitcast %struct.__va_list* %4 to i8*, !dbg !4107
  call void @llvm.va_start(i8* %7), !dbg !4107
  %8 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4108
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !4108
  call void @llvm.dbg.declare(metadata %struct.out_fct_wrap_type* %5, metadata !4101, metadata !DIExpression()), !dbg !4109
  %9 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 0, !dbg !4110
  store void (i8, i8*)* %0, void (i8, i8*)** %9, align 4, !dbg !4110, !tbaa !4111
  %10 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 1, !dbg !4110
  store i8* %1, i8** %10, align 4, !dbg !4110, !tbaa !4113
  %11 = ptrtoint %struct.out_fct_wrap_type* %5 to i32, !dbg !4114
  %12 = inttoptr i32 %11 to i8*, !dbg !4115
  %13 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4116
  %14 = bitcast i8** %13 to [1 x i32]*, !dbg !4116
  %15 = load [1 x i32], [1 x i32]* %14, align 4, !dbg !4116
  %16 = load i32, i32* @__checkpoint_count, align 4, !dbg !4116, !idemp_checkpoint_count !298
  %17 = add i32 %16, 1, !dbg !4116, !idemp_checkpoint_count !298
  store volatile i32 %17, i32* @__checkpoint_count, align 4, !dbg !4116, !idemp_checkpoint_count !298
  %18 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_fct, i8* %12, i32 -1, i8* %2, [1 x i32] %15), !dbg !4116
  call void @llvm.dbg.value(metadata i32 %18, metadata !4103, metadata !DIExpression()), !dbg !4104
  %19 = bitcast %struct.__va_list* %4 to i8*, !dbg !4117
  call void @llvm.va_end(i8* %19), !dbg !4117
  %20 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #4, !dbg !4118
  %21 = bitcast %struct.__va_list* %4 to i8*, !dbg !4118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !4118
  ret i32 %18, !dbg !4119
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_fct(i8 zeroext, i8*, i32, i32) #5 !dbg !4120 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4122, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8* %1, metadata !4123, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i32 %2, metadata !4124, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i32 %3, metadata !4125, metadata !DIExpression()), !dbg !4126
  %5 = icmp ne i8 %0, 0, !dbg !4127
  br i1 %5, label %6, label %._crit_edge, !dbg !4129

._crit_edge:                                      ; preds = %4
  br label %15, !dbg !4129

6:                                                ; preds = %4
  %7 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4130
  %8 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %7, i32 0, i32 0, !dbg !4132
  %9 = load void (i8, i8*)*, void (i8, i8*)** %8, align 4, !dbg !4132, !tbaa !4111
  %10 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4133
  %11 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %10, i32 0, i32 1, !dbg !4134
  %12 = load i8*, i8** %11, align 4, !dbg !4134, !tbaa !4113
  %13 = load i32, i32* @__checkpoint_count, align 4, !dbg !4135, !idemp_checkpoint_count !298
  %14 = add i32 %13, 1, !dbg !4135, !idemp_checkpoint_count !298
  store volatile i32 %14, i32* @__checkpoint_count, align 4, !dbg !4135, !idemp_checkpoint_count !298
  call arm_aapcscc void %9(i8 zeroext %0, i8* %12), !dbg !4135
  br label %15, !dbg !4136

15:                                               ; preds = %6, %._crit_edge
  ret void, !dbg !4137
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @putc(i32, i8*) #3 !dbg !4138 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4, !tbaa !1047
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4143, metadata !DIExpression()), !dbg !4145
  store i8* %1, i8** %4, align 4, !tbaa !335
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4144, metadata !DIExpression()), !dbg !4146
  %5 = load i8*, i8** %4, align 4, !dbg !4147, !tbaa !335
  %6 = load i32, i32* %3, align 4, !dbg !4148, !tbaa !1047
  ret i32 %6, !dbg !4149
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_putchar(i8 zeroext) #3 !dbg !4150 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !2162
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4154, metadata !DIExpression()), !dbg !4155
  %3 = load i8, i8* %2, align 1, !dbg !4156, !tbaa !2162
  %4 = zext i8 %3 to i32, !dbg !4156
  %5 = load i32, i32* @__checkpoint_count, align 4, !dbg !4157, !idemp_checkpoint_count !298
  %6 = add i32 %5, 1, !dbg !4157, !idemp_checkpoint_count !298
  store volatile i32 %6, i32* @__checkpoint_count, align 4, !dbg !4157, !idemp_checkpoint_count !298
  %7 = call arm_aapcscc i32 @putc(i32 %4, i8* %2), !dbg !4157
  ret void, !dbg !4158
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #6 !dbg !4159 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #4, !dbg !4160, !srcloc !4161
  call void asm sideeffect "    ldr    sp, [r1]", ""() #4, !dbg !4162, !srcloc !4163
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #4, !dbg !4164, !srcloc !4165
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #4, !dbg !4166, !srcloc !4167
  call void asm sideeffect "    bl   main\0A", ""() #4, !dbg !4168, !srcloc !4169
  call void asm sideeffect "    bkpt     ", ""() #4, !dbg !4170, !srcloc !4171
  unreachable, !dbg !4172
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @NMI_Handler() #0 !dbg !4173 {
  br label %1, !dbg !4174

1:                                                ; preds = %1, %0
  br label %1, !dbg !4174, !llvm.loop !4175
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @HardFault_Handler() #0 !dbg !4177 {
  br label %1, !dbg !4178

1:                                                ; preds = %1, %0
  br label %1, !dbg !4178, !llvm.loop !4179
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 !dbg !4181 {
  br label %1, !dbg !4182

1:                                                ; preds = %1, %0
  br label %1, !dbg !4182, !llvm.loop !4183
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #6 = { naked noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.dbg.cu = !{!218, !2, !227, !87, !231, !114, !157, !234, !201}
!llvm.ident = !{!236, !236, !236, !236, !236, !236, !236, !236, !236}
!llvm.module.flags = !{!237, !238, !239, !240}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mem_name", scope: !2, file: !74, line: 87, type: !82, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !71, nameTableKind: None)
!3 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/src/./coremark/core_main.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!4 = !{}
!5 = !{!6, !19, !12, !23, !66, !51, !68, !70}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_results", file: !8, line: 157, baseType: !9)
!8 = !DIFile(filename: "src/./coremark/coremark.h", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RESULTS_S", file: !8, line: 137, size: 544, elements: !10)
!10 = !{!11, !15, !16, !17, !22, !25, !26, !27, !38, !52, !55, !56, !57, !58, !59}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "seed1", scope: !9, file: !8, line: 140, baseType: !12, size: 16)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ee_s16", file: !13, line: 98, baseType: !14)
!13 = !DIFile(filename: "src/./icemu/core_portme.h", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!14 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "seed2", scope: !9, file: !8, line: 141, baseType: !12, size: 16, offset: 16)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "seed3", scope: !9, file: !8, line: 142, baseType: !12, size: 16, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "memblock", scope: !9, file: !8, line: 143, baseType: !18, size: 128, offset: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !20)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !9, file: !8, line: 144, baseType: !23, size: 32, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ee_u32", file: !13, line: 103, baseType: !24)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !9, file: !8, line: 145, baseType: !23, size: 32, offset: 224)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "execs", scope: !9, file: !8, line: 146, baseType: !23, size: 32, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !9, file: !8, line: 147, baseType: !28, size: 32, offset: 288)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head_s", file: !8, line: 97, size: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !8, line: 99, baseType: !28, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !29, file: !8, line: 100, baseType: !33, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_data_s", file: !8, line: 91, size: 32, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "data16", scope: !34, file: !8, line: 93, baseType: !12, size: 16)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !34, file: !8, line: 94, baseType: !12, size: 16, offset: 16)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !9, file: !8, line: 148, baseType: !39, size: 128, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_params", file: !8, line: 119, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MAT_PARAMS_S", file: !8, line: 113, size: 128, elements: !41)
!41 = !{!42, !44, !47, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !40, file: !8, line: 115, baseType: !43, size: 32)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !40, file: !8, line: 116, baseType: !45, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATDAT", file: !8, line: 106, baseType: !12)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !40, file: !8, line: 117, baseType: !45, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !40, file: !8, line: 118, baseType: !49, size: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRES", file: !8, line: 107, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ee_s32", file: !13, line: 100, baseType: !43)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !9, file: !8, line: 150, baseType: !53, size: 16, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "ee_u16", file: !13, line: 99, baseType: !54)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "crclist", scope: !9, file: !8, line: 151, baseType: !53, size: 16, offset: 464)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "crcmatrix", scope: !9, file: !8, line: 152, baseType: !53, size: 16, offset: 480)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "crcstate", scope: !9, file: !8, line: 153, baseType: !53, size: 16, offset: 496)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !9, file: !8, line: 154, baseType: !12, size: 16, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !9, file: !8, line: 156, baseType: !60, size: 8, offset: 528)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_portable", file: !13, line: 195, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CORE_PORTABLE_S", file: !13, line: 192, size: 8, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "portable_id", scope: !61, file: !13, line: 194, baseType: !64, size: 8)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "ee_u8", file: !13, line: 102, baseType: !65)
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "secs_ret", file: !8, line: 55, baseType: !69)
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !{!0, !72, !78, !80}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "list_known_crc", scope: !2, file: !74, line: 36, type: !75, isLocal: true, isDefinition: true)
!74 = !DIFile(filename: "src/coremark/core_main.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 80, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 5)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "matrix_known_crc", scope: !2, file: !74, line: 41, type: !75, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "state_known_crc", scope: !2, file: !74, line: 46, type: !75, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 96, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 3)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "intpat", scope: !87, file: !105, line: 114, type: !106, isLocal: true, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !101, globals: !102, nameTableKind: None)
!88 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/src/./coremark/core_state.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!89 = !{!90}
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CORE_STATE", file: !8, line: 123, baseType: !24, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100}
!92 = !DIEnumerator(name: "CORE_START", value: 0, isUnsigned: true)
!93 = !DIEnumerator(name: "CORE_INVALID", value: 1, isUnsigned: true)
!94 = !DIEnumerator(name: "CORE_S1", value: 2, isUnsigned: true)
!95 = !DIEnumerator(name: "CORE_S2", value: 3, isUnsigned: true)
!96 = !DIEnumerator(name: "CORE_INT", value: 4, isUnsigned: true)
!97 = !DIEnumerator(name: "CORE_FLOAT", value: 5, isUnsigned: true)
!98 = !DIEnumerator(name: "CORE_EXPONENT", value: 6, isUnsigned: true)
!99 = !DIEnumerator(name: "CORE_SCIENTIFIC", value: 7, isUnsigned: true)
!100 = !DIEnumerator(name: "NUM_CORE_STATES", value: 8, isUnsigned: true)
!101 = !{!64}
!102 = !{!85, !103, !108, !110}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "floatpat", scope: !87, file: !105, line: 116, type: !106, isLocal: true, isDefinition: true)
!105 = !DIFile(filename: "src/coremark/core_state.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !20)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "scipat", scope: !87, file: !105, line: 120, type: !106, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "errpat", scope: !87, file: !105, line: 124, type: !106, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "seed1_volatile", scope: !114, file: !125, line: 29, type: !126, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !122, nameTableKind: None)
!115 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/src/./icemu/core_portme.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!116 = !{!117, !68}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "CORE_TICKS", file: !13, line: 69, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !119, line: 48, baseType: !120)
!119 = !DIFile(filename: "/usr/arm-none-eabi/include/sys/_stdint.h", directory: "")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !121, line: 79, baseType: !24)
!121 = !DIFile(filename: "/usr/arm-none-eabi/include/machine/_default_types.h", directory: "")
!122 = !{!112, !123, !127, !129, !131, !133, !135, !141, !143}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "seed2_volatile", scope: !114, file: !125, line: 30, type: !126, isLocal: false, isDefinition: true)
!125 = !DIFile(filename: "src/icemu/core_portme.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!126 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "seed3_volatile", scope: !114, file: !125, line: 31, type: !126, isLocal: false, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "seed4_volatile", scope: !114, file: !125, line: 38, type: !126, isLocal: false, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "seed5_volatile", scope: !114, file: !125, line: 39, type: !126, isLocal: false, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "default_num_contexts", scope: !114, file: !125, line: 137, type: !23, isLocal: false, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "dummy", scope: !114, file: !125, line: 71, type: !137, isLocal: false, isDefinition: true)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !119, line: 60, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !121, line: 105, baseType: !140)
!140 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "start_time_val", scope: !114, file: !125, line: 79, type: !137, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "stop_time_val", scope: !114, file: !125, line: 79, type: !137, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "pow10", scope: !147, file: !148, line: 346, type: !195, isLocal: true, isDefinition: true)
!147 = distinct !DISubprogram(name: "_ftoa", scope: !148, file: !148, line: 339, type: !149, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !172)
!148 = !DIFile(filename: "src/icemu/printf.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !153, !66, !151, !151, !69, !24, !24, !24}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !24)
!152 = !DIFile(filename: "noelle/code/llvm-9.0.1-install/lib/clang/9.0.1/include/stddef.h", directory: "/home/vkortbeek/devel")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "out_fct_type", file: !148, line: 122, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !67, !19, !151, !151}
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !159, globals: !171, nameTableKind: None)
!158 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/src/./icemu/printf.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!159 = !{!151, !66, !160, !24, !43, !140, !70, !67, !14, !65, !54, !69, !138, !162}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !119, line: 82, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !121, line: 232, baseType: !24)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "out_fct_wrap_type", file: !148, line: 129, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 126, size: 64, elements: !165)
!165 = !{!166, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "fct", scope: !164, file: !148, line: 127, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !67, !19}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !164, file: !148, line: 128, baseType: !19, size: 32, offset: 32)
!171 = !{!145}
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !185, !186, !187, !189, !190, !191, !192}
!173 = !DILocalVariable(name: "out", arg: 1, scope: !147, file: !148, line: 339, type: !153)
!174 = !DILocalVariable(name: "buffer", arg: 2, scope: !147, file: !148, line: 339, type: !66)
!175 = !DILocalVariable(name: "idx", arg: 3, scope: !147, file: !148, line: 339, type: !151)
!176 = !DILocalVariable(name: "maxlen", arg: 4, scope: !147, file: !148, line: 339, type: !151)
!177 = !DILocalVariable(name: "value", arg: 5, scope: !147, file: !148, line: 339, type: !69)
!178 = !DILocalVariable(name: "prec", arg: 6, scope: !147, file: !148, line: 339, type: !24)
!179 = !DILocalVariable(name: "width", arg: 7, scope: !147, file: !148, line: 339, type: !24)
!180 = !DILocalVariable(name: "flags", arg: 8, scope: !147, file: !148, line: 339, type: !24)
!181 = !DILocalVariable(name: "buf", scope: !147, file: !148, line: 341, type: !182)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 32)
!185 = !DILocalVariable(name: "len", scope: !147, file: !148, line: 342, type: !151)
!186 = !DILocalVariable(name: "diff", scope: !147, file: !148, line: 343, type: !69)
!187 = !DILocalVariable(name: "negative", scope: !147, file: !148, line: 367, type: !188)
!188 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!189 = !DILocalVariable(name: "whole", scope: !147, file: !148, line: 383, type: !43)
!190 = !DILocalVariable(name: "tmp", scope: !147, file: !148, line: 384, type: !69)
!191 = !DILocalVariable(name: "frac", scope: !147, file: !148, line: 385, type: !70)
!192 = !DILocalVariable(name: "count", scope: !193, file: !148, line: 412, type: !24)
!193 = distinct !DILexicalBlock(scope: !194, file: !148, line: 411, column: 8)
!194 = distinct !DILexicalBlock(scope: !147, file: !148, line: 403, column: 7)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 640, elements: !197)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!197 = !{!198}
!198 = !DISubrange(count: 10)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "g_am_pfnVectors", scope: !201, file: !206, line: 128, type: !211, isLocal: false, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !203, nameTableKind: None)
!202 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/config-m4/startup.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!203 = !{!199, !204}
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "__Patchable", scope: !201, file: !206, line: 199, type: !207, isLocal: false, isDefinition: true)
!206 = !DIFile(filename: "config-m4/startup.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 512, elements: !209)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!209 = !{!210}
!210 = !DISubrange(count: 16)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1536, elements: !216)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DISubroutineType(types: !215)
!215 = !{null}
!216 = !{!217}
!217 = !DISubrange(count: 48)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !220, nameTableKind: None)
!219 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/src/./coremark/core_list_join.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!220 = !{!19, !221, !12, !53}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_data", file: !8, line: 95, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_data_s", file: !8, line: 91, size: 32, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "data16", scope: !223, file: !8, line: 93, baseType: !12, size: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !223, file: !8, line: 94, baseType: !12, size: 16, offset: 16)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !229, nameTableKind: None)
!228 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/src/./coremark/core_matrix.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!229 = !{!46, !45, !19, !230, !49, !50}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ee_ptr_int", file: !13, line: 104, baseType: !23)
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !233, nameTableKind: None)
!232 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/src/./coremark/core_util.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!233 = !{!64, !12, !53}
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 9.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, nameTableKind: None)
!235 = !DIFile(filename: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/src/./icemu/printfmap.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src")
!236 = !{!"clang version 9.0.1 "}
!237 = !{i32 2, !"Dwarf Version", i32 4}
!238 = !{i32 2, !"Debug Info Version", i32 3}
!239 = !{i32 1, !"wchar_size", i32 4}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = distinct !DISubprogram(name: "calc_func", scope: !242, file: !242, line: 70, type: !243, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !282)
!242 = !DIFile(filename: "src/coremark/core_list_join.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!243 = !DISubroutineType(types: !244)
!244 = !{!12, !245, !246}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_results", file: !8, line: 157, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RESULTS_S", file: !8, line: 137, size: 544, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !264, !272, !273, !274, !275, !276, !277}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "seed1", scope: !248, file: !8, line: 140, baseType: !12, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "seed2", scope: !248, file: !8, line: 141, baseType: !12, size: 16, offset: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "seed3", scope: !248, file: !8, line: 142, baseType: !12, size: 16, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "memblock", scope: !248, file: !8, line: 143, baseType: !18, size: 128, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !248, file: !8, line: 144, baseType: !23, size: 32, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !248, file: !8, line: 145, baseType: !23, size: 32, offset: 224)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "execs", scope: !248, file: !8, line: 146, baseType: !23, size: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !248, file: !8, line: 147, baseType: !258, size: 32, offset: 288)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 32)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head_s", file: !8, line: 97, size: 64, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !8, line: 99, baseType: !258, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !259, file: !8, line: 100, baseType: !263, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !248, file: !8, line: 148, baseType: !265, size: 128, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_params", file: !8, line: 119, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MAT_PARAMS_S", file: !8, line: 113, size: 128, elements: !267)
!267 = !{!268, !269, !270, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !266, file: !8, line: 115, baseType: !43, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !266, file: !8, line: 116, baseType: !45, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !266, file: !8, line: 117, baseType: !45, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !266, file: !8, line: 118, baseType: !49, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !248, file: !8, line: 150, baseType: !53, size: 16, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "crclist", scope: !248, file: !8, line: 151, baseType: !53, size: 16, offset: 464)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "crcmatrix", scope: !248, file: !8, line: 152, baseType: !53, size: 16, offset: 480)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "crcstate", scope: !248, file: !8, line: 153, baseType: !53, size: 16, offset: 496)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !248, file: !8, line: 154, baseType: !12, size: 16, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !248, file: !8, line: 156, baseType: !278, size: 8, offset: 528)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_portable", file: !13, line: 195, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CORE_PORTABLE_S", file: !13, line: 192, size: 8, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "portable_id", scope: !279, file: !13, line: 194, baseType: !64, size: 8)
!282 = !{!283, !284, !285, !286, !287, !288, !291}
!283 = !DILocalVariable(name: "pdata", arg: 1, scope: !241, file: !242, line: 70, type: !245)
!284 = !DILocalVariable(name: "res", arg: 2, scope: !241, file: !242, line: 70, type: !246)
!285 = !DILocalVariable(name: "data", scope: !241, file: !242, line: 72, type: !12)
!286 = !DILocalVariable(name: "retval", scope: !241, file: !242, line: 73, type: !12)
!287 = !DILocalVariable(name: "optype", scope: !241, file: !242, line: 74, type: !64)
!288 = !DILocalVariable(name: "flag", scope: !289, file: !242, line: 81, type: !12)
!289 = distinct !DILexicalBlock(scope: !290, file: !242, line: 80, column: 5)
!290 = distinct !DILexicalBlock(scope: !241, file: !242, line: 77, column: 9)
!291 = !DILocalVariable(name: "dtype", scope: !289, file: !242, line: 82, type: !12)
!292 = !DILocation(line: 0, scope: !241)
!293 = !DILocation(line: 72, column: 19, scope: !241)
!294 = !{!295, !295, i64 0}
!295 = !{!"short", !296, i64 0}
!296 = !{!"omnipotent char", !297, i64 0}
!297 = !{!"Simple C/C++ TBAA"}
!298 = !{!"idemp"}
!299 = !DILocation(line: 75, column: 12, scope: !241)
!300 = !DILocation(line: 75, column: 17, scope: !241)
!301 = !DILocation(line: 76, column: 11, scope: !241)
!302 = !DILocation(line: 75, column: 11, scope: !241)
!303 = !DILocation(line: 77, column: 9, scope: !290)
!304 = !DILocation(line: 77, column: 9, scope: !241)
!305 = !DILocation(line: 78, column: 17, scope: !290)
!306 = !DILocation(line: 78, column: 22, scope: !290)
!307 = !DILocation(line: 78, column: 16, scope: !290)
!308 = !DILocation(line: 78, column: 9, scope: !290)
!309 = !DILocation(line: 81, column: 23, scope: !289)
!310 = !DILocation(line: 81, column: 28, scope: !289)
!311 = !DILocation(line: 0, scope: !289)
!312 = !DILocation(line: 83, column: 17, scope: !289)
!313 = !DILocation(line: 83, column: 22, scope: !289)
!314 = !DILocation(line: 84, column: 16, scope: !289)
!315 = !DILocation(line: 83, column: 15, scope: !289)
!316 = !DILocation(line: 85, column: 18, scope: !289)
!317 = !DILocation(line: 85, column: 24, scope: !289)
!318 = !DILocation(line: 85, column: 15, scope: !289)
!319 = !DILocation(line: 86, column: 17, scope: !289)
!320 = !DILocation(line: 89, column: 21, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !242, line: 89, column: 21)
!322 = distinct !DILexicalBlock(scope: !289, file: !242, line: 87, column: 9)
!323 = !DILocation(line: 89, column: 27, scope: !321)
!324 = !DILocation(line: 89, column: 21, scope: !322)
!325 = !DILocation(line: 90, column: 21, scope: !321)
!326 = !DILocation(line: 91, column: 48, scope: !322)
!327 = !{!328, !329, i64 24}
!328 = !{!"RESULTS_S", !295, i64 0, !295, i64 2, !295, i64 4, !296, i64 8, !329, i64 24, !329, i64 28, !329, i64 32, !330, i64 36, !331, i64 40, !295, i64 56, !295, i64 58, !295, i64 60, !295, i64 62, !295, i64 64, !332, i64 66}
!329 = !{!"int", !296, i64 0}
!330 = !{!"any pointer", !296, i64 0}
!331 = !{!"MAT_PARAMS_S", !329, i64 0, !330, i64 4, !330, i64 8, !330, i64 12}
!332 = !{!"CORE_PORTABLE_S", !296, i64 0}
!333 = !DILocation(line: 92, column: 48, scope: !322)
!334 = !DILocation(line: 92, column: 43, scope: !322)
!335 = !{!330, !330, i64 0}
!336 = !DILocation(line: 93, column: 48, scope: !322)
!337 = !{!328, !295, i64 0}
!338 = !DILocation(line: 94, column: 48, scope: !322)
!339 = !{!328, !295, i64 2}
!340 = !DILocation(line: 96, column: 48, scope: !322)
!341 = !{!328, !295, i64 56}
!342 = !DILocation(line: 91, column: 26, scope: !322)
!343 = !DILocation(line: 97, column: 26, scope: !344)
!344 = distinct !DILexicalBlock(scope: !322, file: !242, line: 97, column: 21)
!345 = !{!328, !295, i64 62}
!346 = !DILocation(line: 97, column: 21, scope: !344)
!347 = !DILocation(line: 97, column: 35, scope: !344)
!348 = !DILocation(line: 97, column: 21, scope: !322)
!349 = !DILocation(line: 98, column: 26, scope: !344)
!350 = !DILocation(line: 98, column: 35, scope: !344)
!351 = !DILocation(line: 98, column: 21, scope: !344)
!352 = !DILocation(line: 99, column: 17, scope: !322)
!353 = !DILocation(line: 101, column: 51, scope: !322)
!354 = !DILocation(line: 101, column: 69, scope: !322)
!355 = !DILocation(line: 101, column: 26, scope: !322)
!356 = !DILocation(line: 102, column: 26, scope: !357)
!357 = distinct !DILexicalBlock(scope: !322, file: !242, line: 102, column: 21)
!358 = !{!328, !295, i64 60}
!359 = !DILocation(line: 102, column: 21, scope: !357)
!360 = !DILocation(line: 102, column: 36, scope: !357)
!361 = !DILocation(line: 102, column: 21, scope: !322)
!362 = !DILocation(line: 103, column: 26, scope: !357)
!363 = !DILocation(line: 103, column: 36, scope: !357)
!364 = !DILocation(line: 103, column: 21, scope: !357)
!365 = !DILocation(line: 104, column: 17, scope: !322)
!366 = !DILocation(line: 107, column: 17, scope: !322)
!367 = !DILocation(line: 0, scope: !322)
!368 = !DILocation(line: 109, column: 40, scope: !289)
!369 = !DILocation(line: 109, column: 20, scope: !289)
!370 = !DILocation(line: 109, column: 14, scope: !289)
!371 = !DILocation(line: 109, column: 18, scope: !289)
!372 = !DILocation(line: 110, column: 16, scope: !289)
!373 = !DILocation(line: 111, column: 19, scope: !289)
!374 = !DILocation(line: 111, column: 24, scope: !289)
!375 = !DILocation(line: 111, column: 34, scope: !289)
!376 = !DILocation(line: 111, column: 45, scope: !289)
!377 = !DILocation(line: 111, column: 43, scope: !289)
!378 = !DILocation(line: 111, column: 18, scope: !289)
!379 = !DILocation(line: 111, column: 16, scope: !289)
!380 = !DILocation(line: 0, scope: !290)
!381 = !DILocation(line: 114, column: 1, scope: !241)
!382 = distinct !DISubprogram(name: "cmp_complex", scope: !242, file: !242, line: 121, type: !383, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!51, !221, !221, !246}
!385 = !{!386, !387, !388, !389, !390}
!386 = !DILocalVariable(name: "a", arg: 1, scope: !382, file: !242, line: 121, type: !221)
!387 = !DILocalVariable(name: "b", arg: 2, scope: !382, file: !242, line: 121, type: !221)
!388 = !DILocalVariable(name: "res", arg: 3, scope: !382, file: !242, line: 121, type: !246)
!389 = !DILocalVariable(name: "val1", scope: !382, file: !242, line: 123, type: !12)
!390 = !DILocalVariable(name: "val2", scope: !382, file: !242, line: 124, type: !12)
!391 = !DILocation(line: 0, scope: !382)
!392 = !DILocation(line: 123, column: 34, scope: !382)
!393 = !DILocation(line: 123, column: 19, scope: !382)
!394 = !DILocation(line: 124, column: 34, scope: !382)
!395 = !DILocation(line: 124, column: 19, scope: !382)
!396 = !DILocation(line: 125, column: 12, scope: !382)
!397 = !DILocation(line: 125, column: 19, scope: !382)
!398 = !DILocation(line: 125, column: 17, scope: !382)
!399 = !DILocation(line: 125, column: 5, scope: !382)
!400 = distinct !DISubprogram(name: "cmp_idx", scope: !242, file: !242, line: 134, type: !383, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !401)
!401 = !{!402, !403, !404}
!402 = !DILocalVariable(name: "a", arg: 1, scope: !400, file: !242, line: 134, type: !221)
!403 = !DILocalVariable(name: "b", arg: 2, scope: !400, file: !242, line: 134, type: !221)
!404 = !DILocalVariable(name: "res", arg: 3, scope: !400, file: !242, line: 134, type: !246)
!405 = !DILocation(line: 0, scope: !400)
!406 = !DILocation(line: 136, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !400, file: !242, line: 136, column: 9)
!408 = !DILocation(line: 136, column: 9, scope: !400)
!409 = !DILocation(line: 138, column: 25, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !242, line: 137, column: 5)
!411 = !{!412, !295, i64 0}
!412 = !{!"list_data_s", !295, i64 0, !295, i64 2}
!413 = !DILocation(line: 138, column: 22, scope: !410)
!414 = !DILocation(line: 138, column: 32, scope: !410)
!415 = !DILocation(line: 138, column: 58, scope: !410)
!416 = !DILocation(line: 138, column: 55, scope: !410)
!417 = !DILocation(line: 138, column: 65, scope: !410)
!418 = !DILocation(line: 138, column: 52, scope: !410)
!419 = !DILocation(line: 138, column: 42, scope: !410)
!420 = !DILocation(line: 138, column: 21, scope: !410)
!421 = !DILocation(line: 138, column: 12, scope: !410)
!422 = !DILocation(line: 138, column: 19, scope: !410)
!423 = !DILocation(line: 139, column: 25, scope: !410)
!424 = !DILocation(line: 139, column: 22, scope: !410)
!425 = !DILocation(line: 139, column: 32, scope: !410)
!426 = !DILocation(line: 139, column: 58, scope: !410)
!427 = !DILocation(line: 139, column: 55, scope: !410)
!428 = !DILocation(line: 139, column: 65, scope: !410)
!429 = !DILocation(line: 139, column: 52, scope: !410)
!430 = !DILocation(line: 139, column: 42, scope: !410)
!431 = !DILocation(line: 139, column: 21, scope: !410)
!432 = !DILocation(line: 139, column: 12, scope: !410)
!433 = !DILocation(line: 139, column: 19, scope: !410)
!434 = !DILocation(line: 140, column: 5, scope: !410)
!435 = !DILocation(line: 141, column: 15, scope: !400)
!436 = !{!412, !295, i64 2}
!437 = !DILocation(line: 141, column: 12, scope: !400)
!438 = !DILocation(line: 141, column: 24, scope: !400)
!439 = !DILocation(line: 141, column: 21, scope: !400)
!440 = !DILocation(line: 141, column: 19, scope: !400)
!441 = !DILocation(line: 141, column: 5, scope: !400)
!442 = distinct !DISubprogram(name: "copy_info", scope: !242, file: !242, line: 145, type: !443, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !221, !221}
!445 = !{!446, !447}
!446 = !DILocalVariable(name: "to", arg: 1, scope: !442, file: !242, line: 145, type: !221)
!447 = !DILocalVariable(name: "from", arg: 2, scope: !442, file: !242, line: 145, type: !221)
!448 = !DILocation(line: 0, scope: !442)
!449 = !DILocation(line: 147, column: 24, scope: !442)
!450 = !DILocation(line: 147, column: 9, scope: !442)
!451 = !DILocation(line: 147, column: 16, scope: !442)
!452 = !DILocation(line: 148, column: 24, scope: !442)
!453 = !DILocation(line: 148, column: 9, scope: !442)
!454 = !DILocation(line: 148, column: 16, scope: !442)
!455 = !DILocation(line: 149, column: 1, scope: !442)
!456 = distinct !DISubprogram(name: "core_bench_list", scope: !242, file: !242, line: 159, type: !457, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!53, !246, !12}
!459 = !{!460, !461, !462, !463, !464, !465, !468, !469, !470, !471, !472, !473}
!460 = !DILocalVariable(name: "res", arg: 1, scope: !456, file: !242, line: 159, type: !246)
!461 = !DILocalVariable(name: "finder_idx", arg: 2, scope: !456, file: !242, line: 159, type: !12)
!462 = !DILocalVariable(name: "retval", scope: !456, file: !242, line: 161, type: !53)
!463 = !DILocalVariable(name: "found", scope: !456, file: !242, line: 162, type: !53)
!464 = !DILocalVariable(name: "missed", scope: !456, file: !242, line: 162, type: !53)
!465 = !DILocalVariable(name: "list", scope: !456, file: !242, line: 163, type: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head", file: !8, line: 101, baseType: !259)
!468 = !DILocalVariable(name: "find_num", scope: !456, file: !242, line: 164, type: !12)
!469 = !DILocalVariable(name: "this_find", scope: !456, file: !242, line: 165, type: !466)
!470 = !DILocalVariable(name: "finder", scope: !456, file: !242, line: 166, type: !466)
!471 = !DILocalVariable(name: "remover", scope: !456, file: !242, line: 166, type: !466)
!472 = !DILocalVariable(name: "info", scope: !456, file: !242, line: 167, type: !222)
!473 = !DILocalVariable(name: "i", scope: !456, file: !242, line: 168, type: !12)
!474 = !DILocation(line: 0, scope: !456)
!475 = !DILocation(line: 163, column: 32, scope: !456)
!476 = !{!328, !330, i64 36}
!477 = !DILocation(line: 164, column: 32, scope: !456)
!478 = !{!328, !295, i64 4}
!479 = !DILocation(line: 167, column: 5, scope: !456)
!480 = !DILocation(line: 167, column: 16, scope: !456)
!481 = !DILocation(line: 170, column: 10, scope: !456)
!482 = !DILocation(line: 170, column: 14, scope: !456)
!483 = !DILocation(line: 173, column: 10, scope: !484)
!484 = distinct !DILexicalBlock(scope: !456, file: !242, line: 173, column: 5)
!485 = !DILocation(line: 162, column: 16, scope: !456)
!486 = !DILocation(line: 0, scope: !484)
!487 = !DILocation(line: 173, column: 17, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !242, line: 173, column: 5)
!489 = !DILocation(line: 173, column: 21, scope: !488)
!490 = !DILocation(line: 173, column: 19, scope: !488)
!491 = !DILocation(line: 173, column: 5, scope: !484)
!492 = !DILocation(line: 175, column: 24, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !242, line: 174, column: 5)
!494 = !DILocation(line: 175, column: 26, scope: !493)
!495 = !DILocation(line: 175, column: 23, scope: !493)
!496 = !DILocation(line: 175, column: 14, scope: !493)
!497 = !DILocation(line: 175, column: 21, scope: !493)
!498 = !DILocation(line: 176, column: 23, scope: !493)
!499 = !DILocation(line: 177, column: 23, scope: !493)
!500 = !DILocation(line: 178, column: 23, scope: !501)
!501 = distinct !DILexicalBlock(scope: !493, file: !242, line: 178, column: 13)
!502 = !DILocation(line: 178, column: 13, scope: !493)
!503 = !DILocation(line: 180, column: 19, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !242, line: 179, column: 9)
!505 = !DILocation(line: 181, column: 30, scope: !504)
!506 = !{!507, !330, i64 0}
!507 = !{!"list_head_s", !330, i64 0, !330, i64 4}
!508 = !DILocation(line: 181, column: 36, scope: !504)
!509 = !{!507, !330, i64 4}
!510 = !DILocation(line: 181, column: 42, scope: !504)
!511 = !DILocation(line: 181, column: 24, scope: !504)
!512 = !DILocation(line: 181, column: 49, scope: !504)
!513 = !DILocation(line: 181, column: 55, scope: !504)
!514 = !DILocation(line: 181, column: 20, scope: !504)
!515 = !DILocation(line: 182, column: 9, scope: !504)
!516 = !DILocation(line: 185, column: 18, scope: !517)
!517 = distinct !DILexicalBlock(scope: !501, file: !242, line: 184, column: 9)
!518 = !DILocation(line: 186, column: 28, scope: !519)
!519 = distinct !DILexicalBlock(scope: !517, file: !242, line: 186, column: 17)
!520 = !DILocation(line: 186, column: 34, scope: !519)
!521 = !DILocation(line: 186, column: 17, scope: !519)
!522 = !DILocation(line: 186, column: 41, scope: !519)
!523 = !DILocation(line: 186, column: 17, scope: !517)
!524 = !DILocation(line: 187, column: 39, scope: !519)
!525 = !DILocation(line: 187, column: 45, scope: !519)
!526 = !DILocation(line: 187, column: 28, scope: !519)
!527 = !DILocation(line: 187, column: 52, scope: !519)
!528 = !DILocation(line: 187, column: 58, scope: !519)
!529 = !DILocation(line: 187, column: 24, scope: !519)
!530 = !DILocation(line: 187, column: 17, scope: !519)
!531 = !DILocation(line: 189, column: 28, scope: !532)
!532 = distinct !DILexicalBlock(scope: !517, file: !242, line: 189, column: 17)
!533 = !DILocation(line: 189, column: 33, scope: !532)
!534 = !DILocation(line: 189, column: 17, scope: !517)
!535 = !DILocation(line: 191, column: 46, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !242, line: 190, column: 13)
!537 = !DILocation(line: 192, column: 43, scope: !536)
!538 = !DILocation(line: 192, column: 28, scope: !536)
!539 = !DILocation(line: 192, column: 33, scope: !536)
!540 = !DILocation(line: 193, column: 41, scope: !536)
!541 = !DILocation(line: 193, column: 25, scope: !536)
!542 = !DILocation(line: 193, column: 33, scope: !536)
!543 = !DILocation(line: 194, column: 23, scope: !536)
!544 = !DILocation(line: 194, column: 33, scope: !536)
!545 = !DILocation(line: 195, column: 13, scope: !536)
!546 = !DILocation(line: 0, scope: !501)
!547 = !DILocation(line: 197, column: 18, scope: !548)
!548 = distinct !DILexicalBlock(scope: !493, file: !242, line: 197, column: 13)
!549 = !DILocation(line: 197, column: 13, scope: !548)
!550 = !DILocation(line: 197, column: 22, scope: !548)
!551 = !DILocation(line: 197, column: 13, scope: !493)
!552 = !DILocation(line: 198, column: 18, scope: !548)
!553 = !DILocation(line: 198, column: 21, scope: !548)
!554 = !DILocation(line: 198, column: 13, scope: !548)
!555 = !DILocation(line: 202, column: 5, scope: !493)
!556 = !DILocation(line: 173, column: 32, scope: !488)
!557 = !DILocation(line: 173, column: 5, scope: !488)
!558 = distinct !{!558, !491, !559}
!559 = !DILocation(line: 202, column: 5, scope: !484)
!560 = !DILocation(line: 203, column: 15, scope: !456)
!561 = !DILocation(line: 203, column: 21, scope: !456)
!562 = !DILocation(line: 203, column: 27, scope: !456)
!563 = !DILocation(line: 203, column: 25, scope: !456)
!564 = !DILocation(line: 203, column: 12, scope: !456)
!565 = !DILocation(line: 205, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !456, file: !242, line: 205, column: 9)
!567 = !DILocation(line: 205, column: 20, scope: !566)
!568 = !DILocation(line: 205, column: 9, scope: !456)
!569 = !DILocation(line: 206, column: 16, scope: !566)
!570 = !DILocation(line: 206, column: 9, scope: !566)
!571 = !DILocation(line: 207, column: 38, scope: !456)
!572 = !DILocation(line: 207, column: 15, scope: !456)
!573 = !DILocation(line: 210, column: 14, scope: !456)
!574 = !DILocation(line: 211, column: 10, scope: !575)
!575 = distinct !DILexicalBlock(scope: !456, file: !242, line: 211, column: 9)
!576 = !DILocation(line: 211, column: 9, scope: !456)
!577 = !DILocation(line: 212, column: 24, scope: !575)
!578 = !DILocation(line: 212, column: 9, scope: !575)
!579 = !DILocation(line: 213, column: 5, scope: !456)
!580 = !DILocation(line: 215, column: 30, scope: !581)
!581 = distinct !DILexicalBlock(scope: !456, file: !242, line: 214, column: 5)
!582 = !DILocation(line: 215, column: 36, scope: !581)
!583 = !DILocation(line: 215, column: 18, scope: !581)
!584 = !DILocation(line: 216, column: 26, scope: !581)
!585 = distinct !{!585, !579, !586}
!586 = !DILocation(line: 217, column: 5, scope: !456)
!587 = !DILocation(line: 221, column: 52, scope: !456)
!588 = !DILocation(line: 221, column: 15, scope: !456)
!589 = !DILocation(line: 223, column: 12, scope: !456)
!590 = !DILocation(line: 225, column: 20, scope: !456)
!591 = !DILocation(line: 226, column: 5, scope: !456)
!592 = !DILocation(line: 228, column: 30, scope: !593)
!593 = distinct !DILexicalBlock(scope: !456, file: !242, line: 227, column: 5)
!594 = !DILocation(line: 228, column: 36, scope: !593)
!595 = !DILocation(line: 228, column: 18, scope: !593)
!596 = !DILocation(line: 229, column: 26, scope: !593)
!597 = distinct !{!597, !591, !598}
!598 = !DILocation(line: 230, column: 5, scope: !456)
!599 = !DILocation(line: 235, column: 1, scope: !456)
!600 = !DILocation(line: 234, column: 5, scope: !456)
!601 = distinct !DISubprogram(name: "core_list_find", scope: !242, file: !242, line: 435, type: !602, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!466, !466, !221}
!604 = !{!605, !606}
!605 = !DILocalVariable(name: "list", arg: 1, scope: !601, file: !242, line: 435, type: !466)
!606 = !DILocalVariable(name: "info", arg: 2, scope: !601, file: !242, line: 435, type: !221)
!607 = !DILocation(line: 0, scope: !601)
!608 = !DILocation(line: 437, column: 15, scope: !609)
!609 = distinct !DILexicalBlock(scope: !601, file: !242, line: 437, column: 9)
!610 = !DILocation(line: 437, column: 9, scope: !609)
!611 = !DILocation(line: 437, column: 19, scope: !609)
!612 = !DILocation(line: 437, column: 9, scope: !601)
!613 = !DILocation(line: 439, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !609, file: !242, line: 438, column: 5)
!615 = !DILocation(line: 439, column: 16, scope: !614)
!616 = !DILocation(line: 439, column: 21, scope: !614)
!617 = !DILocation(line: 439, column: 31, scope: !614)
!618 = !DILocation(line: 439, column: 37, scope: !614)
!619 = !DILocation(line: 439, column: 25, scope: !614)
!620 = !DILocation(line: 439, column: 50, scope: !614)
!621 = !DILocation(line: 439, column: 44, scope: !614)
!622 = !DILocation(line: 439, column: 41, scope: !614)
!623 = !DILocation(line: 0, scope: !614)
!624 = !DILocation(line: 440, column: 26, scope: !614)
!625 = distinct !{!625, !613, !624}
!626 = !DILocation(line: 441, column: 9, scope: !614)
!627 = !DILocation(line: 445, column: 9, scope: !628)
!628 = distinct !DILexicalBlock(scope: !609, file: !242, line: 444, column: 5)
!629 = !DILocation(line: 445, column: 16, scope: !628)
!630 = !DILocation(line: 445, column: 21, scope: !628)
!631 = !DILocation(line: 445, column: 32, scope: !628)
!632 = !DILocation(line: 445, column: 38, scope: !628)
!633 = !DILocation(line: 445, column: 26, scope: !628)
!634 = !DILocation(line: 445, column: 45, scope: !628)
!635 = !DILocation(line: 445, column: 62, scope: !628)
!636 = !DILocation(line: 445, column: 56, scope: !628)
!637 = !DILocation(line: 445, column: 53, scope: !628)
!638 = !DILocation(line: 0, scope: !628)
!639 = !DILocation(line: 446, column: 26, scope: !628)
!640 = distinct !{!640, !627, !639}
!641 = !DILocation(line: 447, column: 9, scope: !628)
!642 = !DILocation(line: 0, scope: !609)
!643 = !DILocation(line: 449, column: 1, scope: !601)
!644 = distinct !DISubprogram(name: "core_list_reverse", scope: !242, file: !242, line: 465, type: !645, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{!466, !466}
!647 = !{!648, !649, !650}
!648 = !DILocalVariable(name: "list", arg: 1, scope: !644, file: !242, line: 465, type: !466)
!649 = !DILocalVariable(name: "next", scope: !644, file: !242, line: 467, type: !466)
!650 = !DILocalVariable(name: "tmp", scope: !644, file: !242, line: 467, type: !466)
!651 = !DILocation(line: 0, scope: !644)
!652 = !DILocation(line: 468, column: 5, scope: !644)
!653 = !DILocation(line: 470, column: 28, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !242, line: 469, column: 5)
!655 = !DILocation(line: 471, column: 15, scope: !654)
!656 = !DILocation(line: 471, column: 20, scope: !654)
!657 = distinct !{!657, !652, !658}
!658 = !DILocation(line: 474, column: 5, scope: !644)
!659 = !DILocation(line: 475, column: 5, scope: !644)
!660 = distinct !DISubprogram(name: "core_list_mergesort", scope: !242, file: !242, line: 500, type: !661, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !665)
!661 = !DISubroutineType(types: !662)
!662 = !{!466, !466, !663, !246}
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_cmp", file: !242, line: 64, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!666 = !DILocalVariable(name: "list", arg: 1, scope: !660, file: !242, line: 500, type: !466)
!667 = !DILocalVariable(name: "cmp", arg: 2, scope: !660, file: !242, line: 500, type: !663)
!668 = !DILocalVariable(name: "res", arg: 3, scope: !660, file: !242, line: 500, type: !246)
!669 = !DILocalVariable(name: "p", scope: !660, file: !242, line: 502, type: !466)
!670 = !DILocalVariable(name: "q", scope: !660, file: !242, line: 502, type: !466)
!671 = !DILocalVariable(name: "e", scope: !660, file: !242, line: 502, type: !466)
!672 = !DILocalVariable(name: "tail", scope: !660, file: !242, line: 502, type: !466)
!673 = !DILocalVariable(name: "insize", scope: !660, file: !242, line: 503, type: !51)
!674 = !DILocalVariable(name: "nmerges", scope: !660, file: !242, line: 503, type: !51)
!675 = !DILocalVariable(name: "psize", scope: !660, file: !242, line: 503, type: !51)
!676 = !DILocalVariable(name: "qsize", scope: !660, file: !242, line: 503, type: !51)
!677 = !DILocalVariable(name: "i", scope: !660, file: !242, line: 503, type: !51)
!678 = !DILocation(line: 0, scope: !660)
!679 = !DILocation(line: 507, column: 5, scope: !660)
!680 = !DILocation(line: 515, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !660, file: !242, line: 508, column: 5)
!682 = !DILocation(line: 0, scope: !681)
!683 = !DILocation(line: 511, column: 14, scope: !681)
!684 = !DILocation(line: 510, column: 14, scope: !681)
!685 = !DILocation(line: 517, column: 20, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !242, line: 516, column: 9)
!687 = !DILocation(line: 521, column: 18, scope: !688)
!688 = distinct !DILexicalBlock(scope: !686, file: !242, line: 521, column: 13)
!689 = !DILocation(line: 0, scope: !686)
!690 = !DILocation(line: 521, column: 27, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !242, line: 521, column: 13)
!692 = !DILocation(line: 521, column: 13, scope: !688)
!693 = !DILocation(line: 523, column: 22, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !242, line: 522, column: 13)
!695 = !DILocation(line: 524, column: 24, scope: !694)
!696 = !DILocation(line: 525, column: 22, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !242, line: 525, column: 21)
!698 = !DILocation(line: 525, column: 21, scope: !694)
!699 = !DILocation(line: 526, column: 21, scope: !697)
!700 = !DILocation(line: 527, column: 13, scope: !694)
!701 = !DILocation(line: 521, column: 13, scope: !691)
!702 = distinct !{!702, !692, !703}
!703 = !DILocation(line: 527, column: 13, scope: !688)
!704 = !DILocation(line: 533, column: 13, scope: !686)
!705 = !DILocation(line: 509, column: 14, scope: !681)
!706 = !DILocation(line: 533, column: 26, scope: !686)
!707 = !DILocation(line: 533, column: 30, scope: !686)
!708 = !DILocation(line: 533, column: 40, scope: !686)
!709 = !DILocation(line: 533, column: 44, scope: !686)
!710 = !DILocation(line: 537, column: 27, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !242, line: 537, column: 21)
!712 = distinct !DILexicalBlock(scope: !686, file: !242, line: 534, column: 13)
!713 = !DILocation(line: 537, column: 21, scope: !712)
!714 = !DILocation(line: 541, column: 28, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !242, line: 538, column: 17)
!716 = !DILocation(line: 542, column: 26, scope: !715)
!717 = !DILocation(line: 543, column: 17, scope: !715)
!718 = !DILocation(line: 544, column: 32, scope: !719)
!719 = distinct !DILexicalBlock(scope: !711, file: !242, line: 544, column: 26)
!720 = !DILocation(line: 544, column: 37, scope: !719)
!721 = !DILocation(line: 544, column: 41, scope: !719)
!722 = !DILocation(line: 544, column: 26, scope: !711)
!723 = !DILocation(line: 548, column: 28, scope: !724)
!724 = distinct !DILexicalBlock(scope: !719, file: !242, line: 545, column: 17)
!725 = !DILocation(line: 549, column: 26, scope: !724)
!726 = !DILocation(line: 550, column: 17, scope: !724)
!727 = !DILocation(line: 551, column: 33, scope: !728)
!728 = distinct !DILexicalBlock(scope: !719, file: !242, line: 551, column: 26)
!729 = !DILocation(line: 551, column: 42, scope: !728)
!730 = !DILocation(line: 551, column: 26, scope: !728)
!731 = !DILocation(line: 551, column: 53, scope: !728)
!732 = !DILocation(line: 551, column: 26, scope: !719)
!733 = !DILocation(line: 556, column: 28, scope: !734)
!734 = distinct !DILexicalBlock(scope: !728, file: !242, line: 552, column: 17)
!735 = !DILocation(line: 557, column: 26, scope: !734)
!736 = !DILocation(line: 558, column: 17, scope: !734)
!737 = !DILocation(line: 563, column: 28, scope: !738)
!738 = distinct !DILexicalBlock(scope: !728, file: !242, line: 560, column: 17)
!739 = !DILocation(line: 564, column: 26, scope: !738)
!740 = !DILocation(line: 0, scope: !728)
!741 = !DILocation(line: 0, scope: !719)
!742 = !DILocation(line: 524, column: 19, scope: !694)
!743 = !DILocation(line: 530, column: 19, scope: !686)
!744 = !DILocation(line: 0, scope: !711)
!745 = !DILocation(line: 568, column: 21, scope: !746)
!746 = distinct !DILexicalBlock(scope: !712, file: !242, line: 568, column: 21)
!747 = !DILocation(line: 568, column: 21, scope: !712)
!748 = !DILocation(line: 570, column: 27, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !242, line: 569, column: 17)
!750 = !DILocation(line: 570, column: 32, scope: !749)
!751 = !DILocation(line: 571, column: 17, scope: !749)
!752 = distinct !{!752, !704, !753}
!753 = !DILocation(line: 577, column: 13, scope: !686)
!754 = distinct !{!754, !680, !755}
!755 = !DILocation(line: 581, column: 9, scope: !681)
!756 = !DILocation(line: 583, column: 15, scope: !681)
!757 = !DILocation(line: 583, column: 20, scope: !681)
!758 = !DILocation(line: 586, column: 21, scope: !759)
!759 = distinct !DILexicalBlock(scope: !681, file: !242, line: 586, column: 13)
!760 = !DILocation(line: 586, column: 13, scope: !681)
!761 = !DILocation(line: 587, column: 13, scope: !759)
!762 = !DILocation(line: 590, column: 16, scope: !681)
!763 = distinct !{!763, !679, !764}
!764 = !DILocation(line: 591, column: 5, scope: !660)
!765 = distinct !DISubprogram(name: "core_list_remove", scope: !242, file: !242, line: 377, type: !645, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !766)
!766 = !{!767, !768, !769}
!767 = !DILocalVariable(name: "item", arg: 1, scope: !765, file: !242, line: 377, type: !466)
!768 = !DILocalVariable(name: "tmp", scope: !765, file: !242, line: 379, type: !221)
!769 = !DILocalVariable(name: "ret", scope: !765, file: !242, line: 380, type: !466)
!770 = !DILocation(line: 0, scope: !765)
!771 = !DILocation(line: 380, column: 28, scope: !765)
!772 = !DILocation(line: 382, column: 24, scope: !765)
!773 = !DILocation(line: 383, column: 23, scope: !765)
!774 = !DILocation(line: 383, column: 11, scope: !765)
!775 = !DILocation(line: 383, column: 16, scope: !765)
!776 = !DILocation(line: 384, column: 10, scope: !765)
!777 = !DILocation(line: 384, column: 16, scope: !765)
!778 = !DILocation(line: 386, column: 24, scope: !765)
!779 = !DILocation(line: 386, column: 30, scope: !765)
!780 = !DILocation(line: 386, column: 11, scope: !765)
!781 = !DILocation(line: 386, column: 16, scope: !765)
!782 = !DILocation(line: 387, column: 10, scope: !765)
!783 = !DILocation(line: 387, column: 16, scope: !765)
!784 = !DILocation(line: 388, column: 5, scope: !765)
!785 = distinct !DISubprogram(name: "core_list_undo_remove", scope: !242, file: !242, line: 408, type: !786, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{!466, !466, !466}
!788 = !{!789, !790, !791}
!789 = !DILocalVariable(name: "item_removed", arg: 1, scope: !785, file: !242, line: 408, type: !466)
!790 = !DILocalVariable(name: "item_modified", arg: 2, scope: !785, file: !242, line: 408, type: !466)
!791 = !DILocalVariable(name: "tmp", scope: !785, file: !242, line: 410, type: !221)
!792 = !DILocation(line: 0, scope: !785)
!793 = !DILocation(line: 412, column: 41, scope: !785)
!794 = !DILocation(line: 413, column: 42, scope: !785)
!795 = !DILocation(line: 413, column: 19, scope: !785)
!796 = !DILocation(line: 413, column: 25, scope: !785)
!797 = !DILocation(line: 414, column: 20, scope: !785)
!798 = !DILocation(line: 414, column: 25, scope: !785)
!799 = !DILocation(line: 416, column: 42, scope: !785)
!800 = !DILocation(line: 416, column: 19, scope: !785)
!801 = !DILocation(line: 416, column: 25, scope: !785)
!802 = !DILocation(line: 417, column: 20, scope: !785)
!803 = !DILocation(line: 417, column: 25, scope: !785)
!804 = !DILocation(line: 418, column: 5, scope: !785)
!805 = distinct !DISubprogram(name: "core_list_init", scope: !242, file: !242, line: 251, type: !806, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{!466, !23, !466, !12}
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !825, !826}
!809 = !DILocalVariable(name: "blksize", arg: 1, scope: !805, file: !242, line: 251, type: !23)
!810 = !DILocalVariable(name: "memblock", arg: 2, scope: !805, file: !242, line: 251, type: !466)
!811 = !DILocalVariable(name: "seed", arg: 3, scope: !805, file: !242, line: 251, type: !12)
!812 = !DILocalVariable(name: "per_item", scope: !805, file: !242, line: 254, type: !23)
!813 = !DILocalVariable(name: "size", scope: !805, file: !242, line: 255, type: !23)
!814 = !DILocalVariable(name: "memblock_end", scope: !805, file: !242, line: 258, type: !466)
!815 = !DILocalVariable(name: "datablock", scope: !805, file: !242, line: 259, type: !221)
!816 = !DILocalVariable(name: "datablock_end", scope: !805, file: !242, line: 260, type: !221)
!817 = !DILocalVariable(name: "i", scope: !805, file: !242, line: 262, type: !23)
!818 = !DILocalVariable(name: "finder", scope: !805, file: !242, line: 263, type: !466)
!819 = !DILocalVariable(name: "list", scope: !805, file: !242, line: 263, type: !466)
!820 = !DILocalVariable(name: "info", scope: !805, file: !242, line: 264, type: !222)
!821 = !DILocalVariable(name: "datpat", scope: !822, file: !242, line: 281, type: !53)
!822 = distinct !DILexicalBlock(scope: !823, file: !242, line: 280, column: 5)
!823 = distinct !DILexicalBlock(scope: !824, file: !242, line: 279, column: 5)
!824 = distinct !DILexicalBlock(scope: !805, file: !242, line: 279, column: 5)
!825 = !DILocalVariable(name: "dat", scope: !822, file: !242, line: 282, type: !53)
!826 = !DILocalVariable(name: "pat", scope: !827, file: !242, line: 298, type: !53)
!827 = distinct !DILexicalBlock(scope: !828, file: !242, line: 297, column: 9)
!828 = distinct !DILexicalBlock(scope: !829, file: !242, line: 294, column: 13)
!829 = distinct !DILexicalBlock(scope: !805, file: !242, line: 293, column: 5)
!830 = !DILocation(line: 0, scope: !805)
!831 = !DILocation(line: 251, column: 43, scope: !805)
!832 = !DILocation(line: 255, column: 32, scope: !805)
!833 = !DILocation(line: 256, column: 19, scope: !805)
!834 = !DILocation(line: 258, column: 32, scope: !805)
!835 = !DILocation(line: 258, column: 41, scope: !805)
!836 = !DILocation(line: 259, column: 5, scope: !805)
!837 = !DILocation(line: 259, column: 16, scope: !805)
!838 = !DILocation(line: 259, column: 32, scope: !805)
!839 = !DILocation(line: 260, column: 32, scope: !805)
!840 = !DILocation(line: 260, column: 42, scope: !805)
!841 = !DILocation(line: 263, column: 32, scope: !805)
!842 = !DILocation(line: 264, column: 5, scope: !805)
!843 = !DILocation(line: 264, column: 16, scope: !805)
!844 = !DILocation(line: 267, column: 11, scope: !805)
!845 = !DILocation(line: 267, column: 24, scope: !805)
!846 = !DILocation(line: 268, column: 26, scope: !805)
!847 = !DILocation(line: 268, column: 11, scope: !805)
!848 = !DILocation(line: 268, column: 24, scope: !805)
!849 = !DILocation(line: 269, column: 11, scope: !805)
!850 = !DILocation(line: 269, column: 17, scope: !805)
!851 = !DILocation(line: 269, column: 24, scope: !805)
!852 = !DILocation(line: 270, column: 11, scope: !805)
!853 = !DILocation(line: 270, column: 17, scope: !805)
!854 = !DILocation(line: 270, column: 24, scope: !805)
!855 = !DILocation(line: 271, column: 13, scope: !805)
!856 = !DILocation(line: 272, column: 14, scope: !805)
!857 = !DILocation(line: 273, column: 10, scope: !805)
!858 = !DILocation(line: 273, column: 17, scope: !805)
!859 = !DILocation(line: 274, column: 10, scope: !805)
!860 = !DILocation(line: 274, column: 17, scope: !805)
!861 = !DILocation(line: 275, column: 5, scope: !805)
!862 = !DILocation(line: 279, column: 10, scope: !824)
!863 = !DILocation(line: 0, scope: !824)
!864 = !DILocation(line: 279, column: 19, scope: !823)
!865 = !DILocation(line: 279, column: 5, scope: !824)
!866 = !DILocation(line: 281, column: 35, scope: !822)
!867 = !DILocation(line: 281, column: 40, scope: !822)
!868 = !DILocation(line: 281, column: 26, scope: !822)
!869 = !DILocation(line: 281, column: 45, scope: !822)
!870 = !DILocation(line: 281, column: 25, scope: !822)
!871 = !DILocation(line: 0, scope: !822)
!872 = !DILocation(line: 283, column: 16, scope: !822)
!873 = !DILocation(line: 283, column: 23, scope: !822)
!874 = !DILocation(line: 283, column: 34, scope: !822)
!875 = !DILocation(line: 283, column: 29, scope: !822)
!876 = !DILocation(line: 283, column: 15, scope: !822)
!877 = !DILocation(line: 284, column: 24, scope: !822)
!878 = !DILocation(line: 284, column: 28, scope: !822)
!879 = !DILocation(line: 284, column: 36, scope: !822)
!880 = !DILocation(line: 284, column: 34, scope: !822)
!881 = !DILocation(line: 284, column: 23, scope: !822)
!882 = !DILocation(line: 284, column: 14, scope: !822)
!883 = !DILocation(line: 284, column: 21, scope: !822)
!884 = !DILocation(line: 286, column: 9, scope: !822)
!885 = !DILocation(line: 288, column: 5, scope: !822)
!886 = !DILocation(line: 279, column: 28, scope: !823)
!887 = !DILocation(line: 279, column: 5, scope: !823)
!888 = distinct !{!888, !865, !889}
!889 = !DILocation(line: 288, column: 5, scope: !824)
!890 = !DILocation(line: 290, column: 20, scope: !805)
!891 = !DILocation(line: 292, column: 5, scope: !805)
!892 = !DILocation(line: 292, column: 20, scope: !805)
!893 = !DILocation(line: 292, column: 25, scope: !805)
!894 = !DILocation(line: 294, column: 22, scope: !828)
!895 = !DILocation(line: 294, column: 15, scope: !828)
!896 = !DILocation(line: 294, column: 13, scope: !829)
!897 = !DILocation(line: 295, column: 34, scope: !828)
!898 = !DILocation(line: 295, column: 33, scope: !828)
!899 = !DILocation(line: 295, column: 21, scope: !828)
!900 = !DILocation(line: 295, column: 27, scope: !828)
!901 = !DILocation(line: 295, column: 31, scope: !828)
!902 = !DILocation(line: 295, column: 13, scope: !828)
!903 = !DILocation(line: 298, column: 36, scope: !827)
!904 = !DILocation(line: 298, column: 41, scope: !827)
!905 = !DILocation(line: 298, column: 39, scope: !827)
!906 = !DILocation(line: 298, column: 26, scope: !827)
!907 = !DILocation(line: 0, scope: !827)
!908 = !DILocation(line: 300, column: 40, scope: !827)
!909 = !DILocation(line: 300, column: 48, scope: !827)
!910 = !DILocation(line: 301, column: 38, scope: !827)
!911 = !DILocation(line: 301, column: 36, scope: !827)
!912 = !DILocation(line: 300, column: 33, scope: !827)
!913 = !DILocation(line: 299, column: 33, scope: !827)
!914 = !DILocation(line: 299, column: 21, scope: !827)
!915 = !DILocation(line: 299, column: 27, scope: !827)
!916 = !DILocation(line: 299, column: 31, scope: !827)
!917 = !DILocation(line: 0, scope: !828)
!918 = !DILocation(line: 304, column: 26, scope: !829)
!919 = distinct !{!919, !891, !920}
!920 = !DILocation(line: 305, column: 5, scope: !805)
!921 = !DILocation(line: 306, column: 12, scope: !805)
!922 = !DILocation(line: 319, column: 1, scope: !805)
!923 = !DILocation(line: 318, column: 5, scope: !805)
!924 = distinct !DISubprogram(name: "core_list_insert_new", scope: !242, file: !242, line: 336, type: !925, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !929)
!925 = !DISubroutineType(types: !926)
!926 = !{!466, !466, !221, !927, !928, !466, !221}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!929 = !{!930, !931, !932, !933, !934, !935, !936}
!930 = !DILocalVariable(name: "insert_point", arg: 1, scope: !924, file: !242, line: 336, type: !466)
!931 = !DILocalVariable(name: "info", arg: 2, scope: !924, file: !242, line: 337, type: !221)
!932 = !DILocalVariable(name: "memblock", arg: 3, scope: !924, file: !242, line: 338, type: !927)
!933 = !DILocalVariable(name: "datablock", arg: 4, scope: !924, file: !242, line: 339, type: !928)
!934 = !DILocalVariable(name: "memblock_end", arg: 5, scope: !924, file: !242, line: 340, type: !466)
!935 = !DILocalVariable(name: "datablock_end", arg: 6, scope: !924, file: !242, line: 341, type: !221)
!936 = !DILocalVariable(name: "newitem", scope: !924, file: !242, line: 343, type: !466)
!937 = !DILocation(line: 0, scope: !924)
!938 = !DILocation(line: 345, column: 10, scope: !939)
!939 = distinct !DILexicalBlock(scope: !924, file: !242, line: 345, column: 9)
!940 = !DILocation(line: 345, column: 20, scope: !939)
!941 = !DILocation(line: 345, column: 25, scope: !939)
!942 = !DILocation(line: 345, column: 9, scope: !924)
!943 = !DILocation(line: 346, column: 9, scope: !939)
!944 = !DILocation(line: 347, column: 10, scope: !945)
!945 = distinct !DILexicalBlock(scope: !924, file: !242, line: 347, column: 9)
!946 = !DILocation(line: 347, column: 21, scope: !945)
!947 = !DILocation(line: 347, column: 26, scope: !945)
!948 = !DILocation(line: 347, column: 9, scope: !924)
!949 = !DILocation(line: 348, column: 9, scope: !945)
!950 = !DILocation(line: 350, column: 15, scope: !924)
!951 = !DILocation(line: 351, column: 16, scope: !924)
!952 = !DILocation(line: 352, column: 40, scope: !924)
!953 = !DILocation(line: 352, column: 14, scope: !924)
!954 = !DILocation(line: 352, column: 24, scope: !924)
!955 = !DILocation(line: 353, column: 19, scope: !924)
!956 = !DILocation(line: 353, column: 24, scope: !924)
!957 = !DILocation(line: 355, column: 21, scope: !924)
!958 = !DILocation(line: 355, column: 14, scope: !924)
!959 = !DILocation(line: 355, column: 19, scope: !924)
!960 = !DILocation(line: 356, column: 17, scope: !924)
!961 = !DILocation(line: 357, column: 24, scope: !924)
!962 = !DILocation(line: 357, column: 5, scope: !924)
!963 = !DILocation(line: 359, column: 5, scope: !924)
!964 = !DILocation(line: 360, column: 1, scope: !924)
!965 = distinct !DISubprogram(name: "iterate", scope: !74, file: !74, line: 52, type: !966, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!19, !19}
!968 = !{!969, !970, !971, !972, !973}
!969 = !DILocalVariable(name: "pres", arg: 1, scope: !965, file: !74, line: 52, type: !19)
!970 = !DILocalVariable(name: "i", scope: !965, file: !74, line: 54, type: !23)
!971 = !DILocalVariable(name: "crc", scope: !965, file: !74, line: 55, type: !53)
!972 = !DILocalVariable(name: "res", scope: !965, file: !74, line: 56, type: !6)
!973 = !DILocalVariable(name: "iterations", scope: !965, file: !74, line: 57, type: !23)
!974 = !DILocation(line: 0, scope: !965)
!975 = !DILocation(line: 56, column: 32, scope: !965)
!976 = !DILocation(line: 57, column: 37, scope: !965)
!977 = !{!328, !329, i64 28}
!978 = !DILocation(line: 58, column: 10, scope: !965)
!979 = !DILocation(line: 58, column: 30, scope: !965)
!980 = !DILocation(line: 59, column: 10, scope: !965)
!981 = !DILocation(line: 59, column: 30, scope: !965)
!982 = !{!328, !295, i64 58}
!983 = !DILocation(line: 60, column: 10, scope: !965)
!984 = !DILocation(line: 60, column: 30, scope: !965)
!985 = !DILocation(line: 61, column: 10, scope: !965)
!986 = !DILocation(line: 61, column: 30, scope: !965)
!987 = !DILocation(line: 63, column: 10, scope: !988)
!988 = distinct !DILexicalBlock(scope: !965, file: !74, line: 63, column: 5)
!989 = !DILocation(line: 0, scope: !988)
!990 = !DILocation(line: 63, column: 19, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !74, line: 63, column: 5)
!992 = !DILocation(line: 63, column: 5, scope: !988)
!993 = !DILocation(line: 65, column: 20, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !74, line: 64, column: 5)
!995 = !DILocation(line: 66, column: 37, scope: !994)
!996 = !DILocation(line: 66, column: 20, scope: !994)
!997 = !DILocation(line: 66, column: 14, scope: !994)
!998 = !DILocation(line: 66, column: 18, scope: !994)
!999 = !DILocation(line: 67, column: 20, scope: !994)
!1000 = !DILocation(line: 68, column: 37, scope: !994)
!1001 = !DILocation(line: 68, column: 20, scope: !994)
!1002 = !DILocation(line: 68, column: 14, scope: !994)
!1003 = !DILocation(line: 68, column: 18, scope: !994)
!1004 = !DILocation(line: 69, column: 15, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !994, file: !74, line: 69, column: 13)
!1006 = !DILocation(line: 69, column: 13, scope: !994)
!1007 = !DILocation(line: 70, column: 33, scope: !1005)
!1008 = !DILocation(line: 70, column: 18, scope: !1005)
!1009 = !DILocation(line: 70, column: 26, scope: !1005)
!1010 = !DILocation(line: 70, column: 13, scope: !1005)
!1011 = !DILocation(line: 71, column: 5, scope: !994)
!1012 = !DILocation(line: 63, column: 34, scope: !991)
!1013 = !DILocation(line: 63, column: 5, scope: !991)
!1014 = distinct !{!1014, !992, !1015}
!1015 = !DILocation(line: 71, column: 5, scope: !988)
!1016 = !DILocation(line: 72, column: 5, scope: !965)
!1017 = distinct !DISubprogram(name: "main", scope: !74, file: !74, line: 115, type: !1018, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1021)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!43, !43, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1035, !1039, !1043, !1046}
!1022 = !DILocalVariable(name: "argc", arg: 1, scope: !1017, file: !74, line: 115, type: !43)
!1023 = !DILocalVariable(name: "argv", arg: 2, scope: !1017, file: !74, line: 115, type: !1020)
!1024 = !DILocalVariable(name: "i", scope: !1017, file: !74, line: 118, type: !53)
!1025 = !DILocalVariable(name: "j", scope: !1017, file: !74, line: 118, type: !53)
!1026 = !DILocalVariable(name: "num_algorithms", scope: !1017, file: !74, line: 118, type: !53)
!1027 = !DILocalVariable(name: "known_id", scope: !1017, file: !74, line: 119, type: !12)
!1028 = !DILocalVariable(name: "total_errors", scope: !1017, file: !74, line: 119, type: !12)
!1029 = !DILocalVariable(name: "seedcrc", scope: !1017, file: !74, line: 120, type: !53)
!1030 = !DILocalVariable(name: "total_time", scope: !1017, file: !74, line: 121, type: !117)
!1031 = !DILocalVariable(name: "results", scope: !1017, file: !74, line: 122, type: !1032)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 1)
!1035 = !DILocalVariable(name: "stack_memblock", scope: !1017, file: !74, line: 124, type: !1036)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16000, elements: !1037)
!1037 = !{!1038}
!1038 = !DISubrange(count: 2000)
!1039 = !DILocalVariable(name: "ctx", scope: !1040, file: !74, line: 209, type: !23)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !74, line: 208, column: 5)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !74, line: 207, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 207, column: 5)
!1043 = !DILocalVariable(name: "secs_passed", scope: !1044, file: !74, line: 244, type: !68)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !74, line: 243, column: 5)
!1045 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 242, column: 9)
!1046 = !DILocalVariable(name: "divisor", scope: !1044, file: !74, line: 245, type: !23)
!1047 = !{!329, !329, i64 0}
!1048 = !DILocation(line: 115, column: 10, scope: !1017)
!1049 = !DILocation(line: 0, scope: !1017)
!1050 = !DILocation(line: 122, column: 5, scope: !1017)
!1051 = !DILocation(line: 122, column: 18, scope: !1017)
!1052 = !DILocation(line: 124, column: 5, scope: !1017)
!1053 = !DILocation(line: 124, column: 11, scope: !1017)
!1054 = !DILocation(line: 127, column: 21, scope: !1017)
!1055 = !DILocation(line: 127, column: 32, scope: !1017)
!1056 = !DILocation(line: 127, column: 5, scope: !1017)
!1057 = !DILocation(line: 134, column: 29, scope: !1017)
!1058 = !DILocation(line: 134, column: 5, scope: !1017)
!1059 = !DILocation(line: 134, column: 16, scope: !1017)
!1060 = !DILocation(line: 134, column: 27, scope: !1017)
!1061 = !DILocation(line: 135, column: 29, scope: !1017)
!1062 = !DILocation(line: 135, column: 5, scope: !1017)
!1063 = !DILocation(line: 135, column: 16, scope: !1017)
!1064 = !DILocation(line: 135, column: 27, scope: !1017)
!1065 = !DILocation(line: 136, column: 29, scope: !1017)
!1066 = !DILocation(line: 136, column: 5, scope: !1017)
!1067 = !DILocation(line: 136, column: 16, scope: !1017)
!1068 = !DILocation(line: 136, column: 27, scope: !1017)
!1069 = !DILocation(line: 137, column: 29, scope: !1017)
!1070 = !DILocation(line: 137, column: 5, scope: !1017)
!1071 = !DILocation(line: 137, column: 16, scope: !1017)
!1072 = !DILocation(line: 137, column: 27, scope: !1017)
!1073 = !DILocation(line: 141, column: 24, scope: !1017)
!1074 = !DILocation(line: 141, column: 5, scope: !1017)
!1075 = !DILocation(line: 141, column: 16, scope: !1017)
!1076 = !DILocation(line: 141, column: 22, scope: !1017)
!1077 = !{!328, !329, i64 32}
!1078 = !DILocation(line: 142, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 142, column: 9)
!1080 = !DILocation(line: 142, column: 20, scope: !1079)
!1081 = !DILocation(line: 142, column: 26, scope: !1079)
!1082 = !DILocation(line: 142, column: 9, scope: !1017)
!1083 = !DILocation(line: 144, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !74, line: 143, column: 5)
!1085 = !DILocation(line: 144, column: 20, scope: !1084)
!1086 = !DILocation(line: 144, column: 26, scope: !1084)
!1087 = !DILocation(line: 145, column: 5, scope: !1084)
!1088 = !DILocation(line: 147, column: 10, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 147, column: 9)
!1090 = !DILocation(line: 147, column: 21, scope: !1089)
!1091 = !DILocation(line: 147, column: 27, scope: !1089)
!1092 = !DILocation(line: 147, column: 33, scope: !1089)
!1093 = !DILocation(line: 147, column: 37, scope: !1089)
!1094 = !DILocation(line: 147, column: 48, scope: !1089)
!1095 = !DILocation(line: 147, column: 54, scope: !1089)
!1096 = !DILocation(line: 148, column: 9, scope: !1089)
!1097 = !DILocation(line: 148, column: 13, scope: !1089)
!1098 = !DILocation(line: 148, column: 24, scope: !1089)
!1099 = !DILocation(line: 148, column: 30, scope: !1089)
!1100 = !DILocation(line: 147, column: 9, scope: !1017)
!1101 = !DILocation(line: 150, column: 9, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1089, file: !74, line: 149, column: 5)
!1103 = !DILocation(line: 150, column: 20, scope: !1102)
!1104 = !DILocation(line: 150, column: 26, scope: !1102)
!1105 = !DILocation(line: 151, column: 9, scope: !1102)
!1106 = !DILocation(line: 151, column: 20, scope: !1102)
!1107 = !DILocation(line: 151, column: 26, scope: !1102)
!1108 = !DILocation(line: 152, column: 9, scope: !1102)
!1109 = !DILocation(line: 152, column: 20, scope: !1102)
!1110 = !DILocation(line: 152, column: 26, scope: !1102)
!1111 = !DILocation(line: 153, column: 5, scope: !1102)
!1112 = !DILocation(line: 154, column: 10, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 154, column: 9)
!1114 = !DILocation(line: 154, column: 21, scope: !1113)
!1115 = !DILocation(line: 154, column: 27, scope: !1113)
!1116 = !DILocation(line: 154, column: 33, scope: !1113)
!1117 = !DILocation(line: 154, column: 37, scope: !1113)
!1118 = !DILocation(line: 154, column: 48, scope: !1113)
!1119 = !DILocation(line: 154, column: 54, scope: !1113)
!1120 = !DILocation(line: 155, column: 9, scope: !1113)
!1121 = !DILocation(line: 155, column: 13, scope: !1113)
!1122 = !DILocation(line: 155, column: 24, scope: !1113)
!1123 = !DILocation(line: 155, column: 30, scope: !1113)
!1124 = !DILocation(line: 154, column: 9, scope: !1017)
!1125 = !DILocation(line: 157, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1113, file: !74, line: 156, column: 5)
!1127 = !DILocation(line: 157, column: 20, scope: !1126)
!1128 = !DILocation(line: 157, column: 26, scope: !1126)
!1129 = !DILocation(line: 158, column: 9, scope: !1126)
!1130 = !DILocation(line: 158, column: 20, scope: !1126)
!1131 = !DILocation(line: 158, column: 26, scope: !1126)
!1132 = !DILocation(line: 159, column: 9, scope: !1126)
!1133 = !DILocation(line: 159, column: 20, scope: !1126)
!1134 = !DILocation(line: 159, column: 26, scope: !1126)
!1135 = !DILocation(line: 160, column: 5, scope: !1126)
!1136 = !DILocation(line: 184, column: 6, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 184, column: 1)
!1138 = !DILocation(line: 0, scope: !1137)
!1139 = !DILocation(line: 184, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !74, line: 184, column: 1)
!1141 = !DILocation(line: 184, column: 15, scope: !1140)
!1142 = !DILocation(line: 184, column: 1, scope: !1137)
!1143 = !DILocation(line: 186, column: 30, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !74, line: 185, column: 1)
!1145 = !DILocation(line: 186, column: 47, scope: !1144)
!1146 = !DILocation(line: 186, column: 49, scope: !1144)
!1147 = !DILocation(line: 186, column: 51, scope: !1144)
!1148 = !DILocation(line: 186, column: 45, scope: !1144)
!1149 = !DILocation(line: 186, column: 5, scope: !1144)
!1150 = !DILocation(line: 186, column: 16, scope: !1144)
!1151 = !DILocation(line: 186, column: 28, scope: !1144)
!1152 = !DILocation(line: 187, column: 5, scope: !1144)
!1153 = !DILocation(line: 187, column: 16, scope: !1144)
!1154 = !DILocation(line: 187, column: 28, scope: !1144)
!1155 = !DILocation(line: 188, column: 30, scope: !1144)
!1156 = !DILocation(line: 188, column: 41, scope: !1144)
!1157 = !DILocation(line: 188, column: 5, scope: !1144)
!1158 = !DILocation(line: 188, column: 16, scope: !1144)
!1159 = !DILocation(line: 188, column: 28, scope: !1144)
!1160 = !DILocation(line: 189, column: 30, scope: !1144)
!1161 = !DILocation(line: 189, column: 41, scope: !1144)
!1162 = !DILocation(line: 189, column: 5, scope: !1144)
!1163 = !DILocation(line: 189, column: 16, scope: !1144)
!1164 = !DILocation(line: 189, column: 28, scope: !1144)
!1165 = !DILocation(line: 190, column: 30, scope: !1144)
!1166 = !DILocation(line: 190, column: 41, scope: !1144)
!1167 = !DILocation(line: 190, column: 5, scope: !1144)
!1168 = !DILocation(line: 190, column: 16, scope: !1144)
!1169 = !DILocation(line: 190, column: 28, scope: !1144)
!1170 = !DILocation(line: 191, column: 5, scope: !1144)
!1171 = !DILocation(line: 191, column: 16, scope: !1144)
!1172 = !DILocation(line: 191, column: 28, scope: !1144)
!1173 = !{!328, !295, i64 64}
!1174 = !DILocation(line: 192, column: 30, scope: !1144)
!1175 = !DILocation(line: 192, column: 41, scope: !1144)
!1176 = !DILocation(line: 192, column: 5, scope: !1144)
!1177 = !DILocation(line: 192, column: 16, scope: !1144)
!1178 = !DILocation(line: 192, column: 28, scope: !1144)
!1179 = !DILocation(line: 193, column: 1, scope: !1144)
!1180 = !DILocation(line: 184, column: 31, scope: !1140)
!1181 = !DILocation(line: 184, column: 1, scope: !1140)
!1182 = distinct !{!1182, !1142, !1183}
!1183 = !DILocation(line: 193, column: 1, scope: !1137)
!1184 = !DILocation(line: 199, column: 10, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 199, column: 5)
!1186 = !DILocation(line: 0, scope: !1185)
!1187 = !DILocation(line: 199, column: 17, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !74, line: 199, column: 5)
!1189 = !DILocation(line: 199, column: 19, scope: !1188)
!1190 = !DILocation(line: 199, column: 5, scope: !1185)
!1191 = !DILocation(line: 201, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !74, line: 201, column: 13)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !74, line: 200, column: 5)
!1194 = !DILocation(line: 201, column: 16, scope: !1192)
!1195 = !DILocation(line: 201, column: 32, scope: !1192)
!1196 = !DILocation(line: 201, column: 43, scope: !1192)
!1197 = !DILocation(line: 201, column: 30, scope: !1192)
!1198 = !DILocation(line: 201, column: 13, scope: !1193)
!1199 = !DILocation(line: 202, column: 27, scope: !1192)
!1200 = !DILocation(line: 202, column: 13, scope: !1192)
!1201 = !DILocation(line: 203, column: 5, scope: !1193)
!1202 = !DILocation(line: 199, column: 38, scope: !1188)
!1203 = !DILocation(line: 199, column: 5, scope: !1188)
!1204 = distinct !{!1204, !1190, !1205}
!1205 = !DILocation(line: 203, column: 5, scope: !1185)
!1206 = !DILocation(line: 204, column: 10, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 204, column: 5)
!1208 = !DILocation(line: 0, scope: !1207)
!1209 = !DILocation(line: 204, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !74, line: 204, column: 5)
!1211 = !DILocation(line: 204, column: 19, scope: !1210)
!1212 = !DILocation(line: 204, column: 5, scope: !1207)
!1213 = !DILocation(line: 205, column: 27, scope: !1210)
!1214 = !DILocation(line: 205, column: 38, scope: !1210)
!1215 = !DILocation(line: 205, column: 45, scope: !1210)
!1216 = !DILocation(line: 205, column: 43, scope: !1210)
!1217 = !DILocation(line: 205, column: 9, scope: !1210)
!1218 = !DILocation(line: 205, column: 20, scope: !1210)
!1219 = !DILocation(line: 205, column: 25, scope: !1210)
!1220 = !DILocation(line: 204, column: 35, scope: !1210)
!1221 = !DILocation(line: 204, column: 5, scope: !1210)
!1222 = distinct !{!1222, !1212, !1223}
!1223 = !DILocation(line: 205, column: 45, scope: !1207)
!1224 = !DILocation(line: 207, column: 10, scope: !1042)
!1225 = !DILocation(line: 0, scope: !1042)
!1226 = !DILocation(line: 207, column: 17, scope: !1041)
!1227 = !DILocation(line: 207, column: 19, scope: !1041)
!1228 = !DILocation(line: 207, column: 5, scope: !1042)
!1229 = !DILocation(line: 210, column: 19, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1040, file: !74, line: 210, column: 13)
!1231 = !DILocation(line: 210, column: 16, scope: !1230)
!1232 = !DILocation(line: 210, column: 32, scope: !1230)
!1233 = !DILocation(line: 210, column: 43, scope: !1230)
!1234 = !DILocation(line: 210, column: 30, scope: !1230)
!1235 = !DILocation(line: 210, column: 13, scope: !1040)
!1236 = !DILocation(line: 0, scope: !1040)
!1237 = !DILocation(line: 212, column: 18, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !74, line: 212, column: 13)
!1239 = distinct !DILexicalBlock(scope: !1230, file: !74, line: 211, column: 9)
!1240 = !DILocation(line: 0, scope: !1238)
!1241 = !DILocation(line: 212, column: 31, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !74, line: 212, column: 13)
!1243 = !DILocation(line: 212, column: 13, scope: !1238)
!1244 = !DILocation(line: 214, column: 32, scope: !1242)
!1245 = !DILocation(line: 214, column: 45, scope: !1242)
!1246 = !DILocation(line: 214, column: 60, scope: !1242)
!1247 = !DILocation(line: 214, column: 71, scope: !1242)
!1248 = !DILocation(line: 214, column: 78, scope: !1242)
!1249 = !DILocation(line: 214, column: 76, scope: !1242)
!1250 = !DILocation(line: 214, column: 58, scope: !1242)
!1251 = !DILocation(line: 213, column: 17, scope: !1242)
!1252 = !DILocation(line: 213, column: 30, scope: !1242)
!1253 = !DILocation(line: 213, column: 39, scope: !1242)
!1254 = !DILocation(line: 213, column: 41, scope: !1242)
!1255 = !DILocation(line: 214, column: 21, scope: !1242)
!1256 = !DILocation(line: 212, column: 49, scope: !1242)
!1257 = !DILocation(line: 212, column: 13, scope: !1242)
!1258 = distinct !{!1258, !1243, !1259}
!1259 = !DILocation(line: 214, column: 78, scope: !1238)
!1260 = !DILocation(line: 215, column: 14, scope: !1239)
!1261 = !DILocation(line: 216, column: 9, scope: !1239)
!1262 = !DILocation(line: 217, column: 5, scope: !1040)
!1263 = !DILocation(line: 207, column: 38, scope: !1041)
!1264 = !DILocation(line: 207, column: 5, scope: !1041)
!1265 = distinct !{!1265, !1228, !1266}
!1266 = !DILocation(line: 217, column: 5, scope: !1042)
!1267 = !DILocation(line: 219, column: 10, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 219, column: 5)
!1269 = !DILocation(line: 0, scope: !1268)
!1270 = !DILocation(line: 219, column: 17, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !74, line: 219, column: 5)
!1272 = !DILocation(line: 219, column: 19, scope: !1271)
!1273 = !DILocation(line: 219, column: 5, scope: !1268)
!1274 = !DILocation(line: 221, column: 13, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !74, line: 221, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !74, line: 220, column: 5)
!1277 = !DILocation(line: 221, column: 24, scope: !1275)
!1278 = !DILocation(line: 221, column: 30, scope: !1275)
!1279 = !DILocation(line: 221, column: 13, scope: !1276)
!1280 = !DILocation(line: 224, column: 17, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1275, file: !74, line: 222, column: 9)
!1282 = !DILocation(line: 224, column: 28, scope: !1281)
!1283 = !DILocation(line: 224, column: 34, scope: !1281)
!1284 = !DILocation(line: 224, column: 45, scope: !1281)
!1285 = !DILocation(line: 224, column: 58, scope: !1281)
!1286 = !DILocation(line: 224, column: 69, scope: !1281)
!1287 = !DILocation(line: 223, column: 31, scope: !1281)
!1288 = !DILocation(line: 223, column: 13, scope: !1281)
!1289 = !DILocation(line: 223, column: 24, scope: !1281)
!1290 = !DILocation(line: 223, column: 29, scope: !1281)
!1291 = !DILocation(line: 225, column: 9, scope: !1281)
!1292 = !DILocation(line: 226, column: 13, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1276, file: !74, line: 226, column: 13)
!1294 = !DILocation(line: 226, column: 24, scope: !1293)
!1295 = !DILocation(line: 226, column: 30, scope: !1293)
!1296 = !DILocation(line: 226, column: 13, scope: !1276)
!1297 = !DILocation(line: 228, column: 30, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !74, line: 227, column: 9)
!1299 = !DILocation(line: 228, column: 41, scope: !1298)
!1300 = !DILocation(line: 229, column: 30, scope: !1298)
!1301 = !DILocation(line: 229, column: 41, scope: !1298)
!1302 = !DILocation(line: 230, column: 38, scope: !1298)
!1303 = !DILocation(line: 230, column: 49, scope: !1298)
!1304 = !DILocation(line: 230, column: 30, scope: !1298)
!1305 = !DILocation(line: 231, column: 46, scope: !1298)
!1306 = !DILocation(line: 231, column: 57, scope: !1298)
!1307 = !DILocation(line: 231, column: 38, scope: !1298)
!1308 = !DILocation(line: 231, column: 64, scope: !1298)
!1309 = !DILocation(line: 231, column: 34, scope: !1298)
!1310 = !DILocation(line: 232, column: 32, scope: !1298)
!1311 = !DILocation(line: 232, column: 43, scope: !1298)
!1312 = !DILocation(line: 228, column: 13, scope: !1298)
!1313 = !DILocation(line: 233, column: 9, scope: !1298)
!1314 = !DILocation(line: 234, column: 13, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1276, file: !74, line: 234, column: 13)
!1316 = !DILocation(line: 234, column: 24, scope: !1315)
!1317 = !DILocation(line: 234, column: 30, scope: !1315)
!1318 = !DILocation(line: 234, column: 13, scope: !1276)
!1319 = !DILocation(line: 237, column: 17, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !74, line: 235, column: 9)
!1321 = !DILocation(line: 237, column: 28, scope: !1320)
!1322 = !DILocation(line: 237, column: 34, scope: !1320)
!1323 = !DILocation(line: 237, column: 45, scope: !1320)
!1324 = !DILocation(line: 237, column: 52, scope: !1320)
!1325 = !DILocation(line: 237, column: 63, scope: !1320)
!1326 = !DILocation(line: 236, column: 13, scope: !1320)
!1327 = !DILocation(line: 238, column: 9, scope: !1320)
!1328 = !DILocation(line: 239, column: 5, scope: !1276)
!1329 = !DILocation(line: 219, column: 35, scope: !1271)
!1330 = !DILocation(line: 219, column: 5, scope: !1271)
!1331 = distinct !{!1331, !1273, !1332}
!1332 = !DILocation(line: 239, column: 5, scope: !1268)
!1333 = !DILocation(line: 242, column: 9, scope: !1045)
!1334 = !DILocation(line: 242, column: 20, scope: !1045)
!1335 = !DILocation(line: 242, column: 31, scope: !1045)
!1336 = !DILocation(line: 242, column: 9, scope: !1017)
!1337 = !DILocation(line: 0, scope: !1044)
!1338 = !DILocation(line: 246, column: 9, scope: !1044)
!1339 = !DILocation(line: 246, column: 20, scope: !1044)
!1340 = !DILocation(line: 246, column: 31, scope: !1044)
!1341 = !DILocation(line: 247, column: 9, scope: !1044)
!1342 = !DILocation(line: 247, column: 28, scope: !1044)
!1343 = !DILocation(line: 249, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1044, file: !74, line: 248, column: 9)
!1345 = !DILocation(line: 249, column: 24, scope: !1344)
!1346 = !DILocation(line: 249, column: 35, scope: !1344)
!1347 = !DILocation(line: 250, column: 13, scope: !1344)
!1348 = !DILocation(line: 251, column: 22, scope: !1344)
!1349 = !DILocation(line: 251, column: 21, scope: !1344)
!1350 = !DILocation(line: 251, column: 13, scope: !1344)
!1351 = !DILocation(line: 252, column: 13, scope: !1344)
!1352 = !DILocation(line: 253, column: 40, scope: !1344)
!1353 = !DILocation(line: 253, column: 27, scope: !1344)
!1354 = distinct !{!1354, !1341, !1355}
!1355 = !DILocation(line: 254, column: 9, scope: !1044)
!1356 = !DILocation(line: 257, column: 19, scope: !1044)
!1357 = !DILocation(line: 258, column: 21, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1044, file: !74, line: 258, column: 13)
!1359 = !DILocation(line: 258, column: 13, scope: !1044)
!1360 = !DILocation(line: 261, column: 13, scope: !1358)
!1361 = !DILocation(line: 262, column: 41, scope: !1044)
!1362 = !DILocation(line: 262, column: 36, scope: !1044)
!1363 = !DILocation(line: 262, column: 9, scope: !1044)
!1364 = !DILocation(line: 262, column: 20, scope: !1044)
!1365 = !DILocation(line: 262, column: 31, scope: !1044)
!1366 = !DILocation(line: 263, column: 5, scope: !1044)
!1367 = !DILocation(line: 265, column: 5, scope: !1017)
!1368 = !DILocation(line: 282, column: 14, scope: !1017)
!1369 = !DILocation(line: 282, column: 13, scope: !1017)
!1370 = !DILocation(line: 282, column: 5, scope: !1017)
!1371 = !DILocation(line: 284, column: 5, scope: !1017)
!1372 = !DILocation(line: 285, column: 18, scope: !1017)
!1373 = !DILocation(line: 287, column: 21, scope: !1017)
!1374 = !DILocation(line: 287, column: 32, scope: !1017)
!1375 = !DILocation(line: 287, column: 15, scope: !1017)
!1376 = !DILocation(line: 288, column: 21, scope: !1017)
!1377 = !DILocation(line: 288, column: 32, scope: !1017)
!1378 = !DILocation(line: 288, column: 15, scope: !1017)
!1379 = !DILocation(line: 289, column: 21, scope: !1017)
!1380 = !DILocation(line: 289, column: 32, scope: !1017)
!1381 = !DILocation(line: 289, column: 15, scope: !1017)
!1382 = !DILocation(line: 290, column: 21, scope: !1017)
!1383 = !DILocation(line: 290, column: 32, scope: !1017)
!1384 = !DILocation(line: 290, column: 15, scope: !1017)
!1385 = !DILocation(line: 292, column: 13, scope: !1017)
!1386 = !DILocation(line: 296, column: 13, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 293, column: 5)
!1388 = !DILocation(line: 297, column: 13, scope: !1387)
!1389 = !DILocation(line: 301, column: 13, scope: !1387)
!1390 = !DILocation(line: 302, column: 13, scope: !1387)
!1391 = !DILocation(line: 306, column: 13, scope: !1387)
!1392 = !DILocation(line: 307, column: 13, scope: !1387)
!1393 = !DILocation(line: 310, column: 13, scope: !1387)
!1394 = !DILocation(line: 311, column: 13, scope: !1387)
!1395 = !DILocation(line: 315, column: 13, scope: !1387)
!1396 = !DILocation(line: 316, column: 13, scope: !1387)
!1397 = !DILocation(line: 319, column: 13, scope: !1387)
!1398 = !DILocation(line: 321, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 321, column: 9)
!1400 = !DILocation(line: 321, column: 18, scope: !1399)
!1401 = !DILocation(line: 321, column: 9, scope: !1017)
!1402 = !DILocation(line: 323, column: 14, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !74, line: 323, column: 9)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !74, line: 322, column: 5)
!1405 = !DILocation(line: 0, scope: !1403)
!1406 = !DILocation(line: 323, column: 21, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !74, line: 323, column: 9)
!1408 = !DILocation(line: 323, column: 25, scope: !1407)
!1409 = !DILocation(line: 323, column: 23, scope: !1407)
!1410 = !DILocation(line: 323, column: 9, scope: !1403)
!1411 = !DILocation(line: 325, column: 13, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !74, line: 324, column: 9)
!1413 = !DILocation(line: 325, column: 24, scope: !1412)
!1414 = !DILocation(line: 325, column: 28, scope: !1412)
!1415 = !DILocation(line: 326, column: 18, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !74, line: 326, column: 17)
!1417 = !DILocation(line: 326, column: 29, scope: !1416)
!1418 = !DILocation(line: 326, column: 35, scope: !1416)
!1419 = !DILocation(line: 327, column: 17, scope: !1416)
!1420 = !DILocation(line: 327, column: 21, scope: !1416)
!1421 = !DILocation(line: 327, column: 32, scope: !1416)
!1422 = !DILocation(line: 327, column: 43, scope: !1416)
!1423 = !DILocation(line: 327, column: 40, scope: !1416)
!1424 = !DILocation(line: 326, column: 17, scope: !1412)
!1425 = !DILocation(line: 330, column: 27, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1416, file: !74, line: 328, column: 13)
!1427 = !DILocation(line: 331, column: 27, scope: !1426)
!1428 = !DILocation(line: 331, column: 38, scope: !1426)
!1429 = !DILocation(line: 332, column: 27, scope: !1426)
!1430 = !DILocation(line: 329, column: 17, scope: !1426)
!1431 = !DILocation(line: 333, column: 17, scope: !1426)
!1432 = !DILocation(line: 333, column: 28, scope: !1426)
!1433 = !DILocation(line: 333, column: 31, scope: !1426)
!1434 = !DILocation(line: 334, column: 13, scope: !1426)
!1435 = !DILocation(line: 335, column: 18, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1412, file: !74, line: 335, column: 17)
!1437 = !DILocation(line: 335, column: 29, scope: !1436)
!1438 = !DILocation(line: 335, column: 35, scope: !1436)
!1439 = !DILocation(line: 336, column: 17, scope: !1436)
!1440 = !DILocation(line: 336, column: 21, scope: !1436)
!1441 = !DILocation(line: 336, column: 32, scope: !1436)
!1442 = !DILocation(line: 336, column: 45, scope: !1436)
!1443 = !DILocation(line: 336, column: 42, scope: !1436)
!1444 = !DILocation(line: 335, column: 17, scope: !1412)
!1445 = !DILocation(line: 339, column: 27, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1436, file: !74, line: 337, column: 13)
!1447 = !DILocation(line: 340, column: 27, scope: !1446)
!1448 = !DILocation(line: 340, column: 38, scope: !1446)
!1449 = !DILocation(line: 341, column: 27, scope: !1446)
!1450 = !DILocation(line: 338, column: 17, scope: !1446)
!1451 = !DILocation(line: 342, column: 17, scope: !1446)
!1452 = !DILocation(line: 342, column: 28, scope: !1446)
!1453 = !DILocation(line: 342, column: 31, scope: !1446)
!1454 = !DILocation(line: 343, column: 13, scope: !1446)
!1455 = !DILocation(line: 344, column: 18, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1412, file: !74, line: 344, column: 17)
!1457 = !DILocation(line: 344, column: 29, scope: !1456)
!1458 = !DILocation(line: 344, column: 35, scope: !1456)
!1459 = !DILocation(line: 345, column: 17, scope: !1456)
!1460 = !DILocation(line: 345, column: 21, scope: !1456)
!1461 = !DILocation(line: 345, column: 32, scope: !1456)
!1462 = !DILocation(line: 345, column: 44, scope: !1456)
!1463 = !DILocation(line: 345, column: 41, scope: !1456)
!1464 = !DILocation(line: 344, column: 17, scope: !1412)
!1465 = !DILocation(line: 348, column: 27, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1456, file: !74, line: 346, column: 13)
!1467 = !DILocation(line: 349, column: 27, scope: !1466)
!1468 = !DILocation(line: 349, column: 38, scope: !1466)
!1469 = !DILocation(line: 350, column: 27, scope: !1466)
!1470 = !DILocation(line: 347, column: 17, scope: !1466)
!1471 = !DILocation(line: 351, column: 17, scope: !1466)
!1472 = !DILocation(line: 351, column: 28, scope: !1466)
!1473 = !DILocation(line: 351, column: 31, scope: !1466)
!1474 = !DILocation(line: 352, column: 13, scope: !1466)
!1475 = !DILocation(line: 353, column: 29, scope: !1412)
!1476 = !DILocation(line: 353, column: 40, scope: !1412)
!1477 = !DILocation(line: 353, column: 26, scope: !1412)
!1478 = !DILocation(line: 354, column: 9, scope: !1412)
!1479 = !DILocation(line: 323, column: 48, scope: !1407)
!1480 = !DILocation(line: 323, column: 9, scope: !1407)
!1481 = distinct !{!1481, !1410, !1482}
!1482 = !DILocation(line: 354, column: 9, scope: !1403)
!1483 = !DILocation(line: 355, column: 5, scope: !1404)
!1484 = !DILocation(line: 318, column: 26, scope: !1387)
!1485 = !DILocation(line: 356, column: 21, scope: !1017)
!1486 = !DILocation(line: 356, column: 18, scope: !1017)
!1487 = !DILocation(line: 358, column: 58, scope: !1017)
!1488 = !DILocation(line: 358, column: 69, scope: !1017)
!1489 = !DILocation(line: 358, column: 5, scope: !1017)
!1490 = !DILocation(line: 359, column: 5, scope: !1017)
!1491 = !DILocation(line: 361, column: 42, scope: !1017)
!1492 = !DILocation(line: 361, column: 5, scope: !1017)
!1493 = !DILocation(line: 362, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 362, column: 9)
!1495 = !DILocation(line: 362, column: 34, scope: !1494)
!1496 = !DILocation(line: 362, column: 9, scope: !1017)
!1497 = !DILocation(line: 364, column: 19, scope: !1494)
!1498 = !DILocation(line: 364, column: 42, scope: !1494)
!1499 = !DILocation(line: 364, column: 53, scope: !1494)
!1500 = !DILocation(line: 364, column: 40, scope: !1494)
!1501 = !DILocation(line: 365, column: 25, scope: !1494)
!1502 = !DILocation(line: 365, column: 23, scope: !1494)
!1503 = !DILocation(line: 363, column: 9, scope: !1494)
!1504 = !DILocation(line: 373, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 373, column: 9)
!1506 = !DILocation(line: 373, column: 34, scope: !1505)
!1507 = !DILocation(line: 373, column: 9, scope: !1017)
!1508 = !DILocation(line: 375, column: 9, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !74, line: 374, column: 5)
!1510 = !DILocation(line: 377, column: 21, scope: !1509)
!1511 = !DILocation(line: 378, column: 5, scope: !1509)
!1512 = !DILocation(line: 381, column: 30, scope: !1017)
!1513 = !DILocation(line: 381, column: 53, scope: !1017)
!1514 = !DILocation(line: 381, column: 64, scope: !1017)
!1515 = !DILocation(line: 381, column: 51, scope: !1017)
!1516 = !DILocation(line: 380, column: 5, scope: !1017)
!1517 = !DILocation(line: 382, column: 5, scope: !1017)
!1518 = !DILocation(line: 383, column: 5, scope: !1017)
!1519 = !DILocation(line: 387, column: 5, scope: !1017)
!1520 = !DILocation(line: 389, column: 46, scope: !1017)
!1521 = !DILocation(line: 389, column: 5, scope: !1017)
!1522 = !DILocation(line: 390, column: 9, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 390, column: 9)
!1524 = !DILocation(line: 390, column: 20, scope: !1523)
!1525 = !DILocation(line: 390, column: 26, scope: !1523)
!1526 = !DILocation(line: 390, column: 9, scope: !1017)
!1527 = !DILocation(line: 391, column: 14, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !74, line: 391, column: 9)
!1529 = !DILocation(line: 0, scope: !1528)
!1530 = !DILocation(line: 391, column: 21, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !74, line: 391, column: 9)
!1532 = !DILocation(line: 391, column: 25, scope: !1531)
!1533 = !DILocation(line: 391, column: 23, scope: !1531)
!1534 = !DILocation(line: 391, column: 9, scope: !1528)
!1535 = !DILocation(line: 392, column: 55, scope: !1531)
!1536 = !DILocation(line: 392, column: 58, scope: !1531)
!1537 = !DILocation(line: 392, column: 69, scope: !1531)
!1538 = !DILocation(line: 392, column: 13, scope: !1531)
!1539 = !DILocation(line: 391, column: 48, scope: !1531)
!1540 = !DILocation(line: 391, column: 9, scope: !1531)
!1541 = distinct !{!1541, !1534, !1542}
!1542 = !DILocation(line: 392, column: 76, scope: !1528)
!1543 = !DILocation(line: 393, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 393, column: 9)
!1545 = !DILocation(line: 393, column: 20, scope: !1544)
!1546 = !DILocation(line: 393, column: 26, scope: !1544)
!1547 = !DILocation(line: 393, column: 9, scope: !1017)
!1548 = !DILocation(line: 394, column: 14, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !74, line: 394, column: 9)
!1550 = !DILocation(line: 0, scope: !1549)
!1551 = !DILocation(line: 394, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !74, line: 394, column: 9)
!1553 = !DILocation(line: 394, column: 25, scope: !1552)
!1554 = !DILocation(line: 394, column: 23, scope: !1552)
!1555 = !DILocation(line: 394, column: 9, scope: !1549)
!1556 = !DILocation(line: 395, column: 55, scope: !1552)
!1557 = !DILocation(line: 395, column: 58, scope: !1552)
!1558 = !DILocation(line: 395, column: 69, scope: !1552)
!1559 = !DILocation(line: 395, column: 13, scope: !1552)
!1560 = !DILocation(line: 394, column: 48, scope: !1552)
!1561 = !DILocation(line: 394, column: 9, scope: !1552)
!1562 = distinct !{!1562, !1555, !1563}
!1563 = !DILocation(line: 395, column: 78, scope: !1549)
!1564 = !DILocation(line: 396, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 396, column: 9)
!1566 = !DILocation(line: 396, column: 20, scope: !1565)
!1567 = !DILocation(line: 396, column: 26, scope: !1565)
!1568 = !DILocation(line: 396, column: 9, scope: !1017)
!1569 = !DILocation(line: 397, column: 14, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !74, line: 397, column: 9)
!1571 = !DILocation(line: 0, scope: !1570)
!1572 = !DILocation(line: 397, column: 21, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !74, line: 397, column: 9)
!1574 = !DILocation(line: 397, column: 25, scope: !1573)
!1575 = !DILocation(line: 397, column: 23, scope: !1573)
!1576 = !DILocation(line: 397, column: 9, scope: !1570)
!1577 = !DILocation(line: 398, column: 55, scope: !1573)
!1578 = !DILocation(line: 398, column: 58, scope: !1573)
!1579 = !DILocation(line: 398, column: 69, scope: !1573)
!1580 = !DILocation(line: 398, column: 13, scope: !1573)
!1581 = !DILocation(line: 397, column: 48, scope: !1573)
!1582 = !DILocation(line: 397, column: 9, scope: !1573)
!1583 = distinct !{!1583, !1576, !1584}
!1584 = !DILocation(line: 398, column: 77, scope: !1570)
!1585 = !DILocation(line: 399, column: 10, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 399, column: 5)
!1587 = !DILocation(line: 0, scope: !1586)
!1588 = !DILocation(line: 399, column: 17, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !74, line: 399, column: 5)
!1590 = !DILocation(line: 399, column: 21, scope: !1589)
!1591 = !DILocation(line: 399, column: 19, scope: !1589)
!1592 = !DILocation(line: 399, column: 5, scope: !1586)
!1593 = !DILocation(line: 400, column: 51, scope: !1589)
!1594 = !DILocation(line: 400, column: 54, scope: !1589)
!1595 = !DILocation(line: 400, column: 65, scope: !1589)
!1596 = !DILocation(line: 400, column: 9, scope: !1589)
!1597 = !DILocation(line: 399, column: 44, scope: !1589)
!1598 = !DILocation(line: 399, column: 5, scope: !1589)
!1599 = distinct !{!1599, !1592, !1600}
!1600 = !DILocation(line: 400, column: 68, scope: !1586)
!1601 = !DILocation(line: 401, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 401, column: 9)
!1603 = !DILocation(line: 401, column: 22, scope: !1602)
!1604 = !DILocation(line: 401, column: 9, scope: !1017)
!1605 = !DILocation(line: 403, column: 9, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !74, line: 402, column: 5)
!1607 = !DILocation(line: 407, column: 13, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1606, file: !74, line: 407, column: 13)
!1609 = !DILocation(line: 407, column: 22, scope: !1608)
!1610 = !DILocation(line: 407, column: 13, scope: !1606)
!1611 = !DILocation(line: 410, column: 23, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !74, line: 408, column: 9)
!1613 = !DILocation(line: 410, column: 46, scope: !1612)
!1614 = !DILocation(line: 410, column: 57, scope: !1612)
!1615 = !DILocation(line: 410, column: 44, scope: !1612)
!1616 = !DILocation(line: 411, column: 29, scope: !1612)
!1617 = !DILocation(line: 411, column: 27, scope: !1612)
!1618 = !DILocation(line: 409, column: 13, scope: !1612)
!1619 = !DILocation(line: 415, column: 13, scope: !1612)
!1620 = !DILocation(line: 423, column: 13, scope: !1612)
!1621 = !DILocation(line: 424, column: 9, scope: !1612)
!1622 = !DILocation(line: 426, column: 5, scope: !1606)
!1623 = !DILocation(line: 427, column: 9, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 427, column: 9)
!1625 = !DILocation(line: 427, column: 22, scope: !1624)
!1626 = !DILocation(line: 427, column: 9, scope: !1017)
!1627 = !DILocation(line: 428, column: 9, scope: !1624)
!1628 = !DILocation(line: 429, column: 9, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1017, file: !74, line: 429, column: 9)
!1630 = !DILocation(line: 429, column: 22, scope: !1629)
!1631 = !DILocation(line: 429, column: 9, scope: !1017)
!1632 = !DILocation(line: 430, column: 9, scope: !1629)
!1633 = !DILocation(line: 439, column: 21, scope: !1017)
!1634 = !DILocation(line: 439, column: 32, scope: !1017)
!1635 = !DILocation(line: 439, column: 5, scope: !1017)
!1636 = !DILocation(line: 442, column: 1, scope: !1017)
!1637 = !DILocation(line: 441, column: 5, scope: !1017)
!1638 = distinct !DISubprogram(name: "core_bench_matrix", scope: !1639, file: !1639, line: 92, type: !1640, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1650)
!1639 = !DIFile(filename: "src/coremark/core_matrix.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!53, !1642, !12, !53}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_params", file: !8, line: 119, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MAT_PARAMS_S", file: !8, line: 113, size: 128, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1644, file: !8, line: 115, baseType: !43, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1644, file: !8, line: 116, baseType: !45, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1644, file: !8, line: 117, baseType: !45, size: 32, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1644, file: !8, line: 118, baseType: !49, size: 32, offset: 96)
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658}
!1651 = !DILocalVariable(name: "p", arg: 1, scope: !1638, file: !1639, line: 92, type: !1642)
!1652 = !DILocalVariable(name: "seed", arg: 2, scope: !1638, file: !1639, line: 92, type: !12)
!1653 = !DILocalVariable(name: "crc", arg: 3, scope: !1638, file: !1639, line: 92, type: !53)
!1654 = !DILocalVariable(name: "N", scope: !1638, file: !1639, line: 94, type: !23)
!1655 = !DILocalVariable(name: "C", scope: !1638, file: !1639, line: 95, type: !49)
!1656 = !DILocalVariable(name: "A", scope: !1638, file: !1639, line: 96, type: !45)
!1657 = !DILocalVariable(name: "B", scope: !1638, file: !1639, line: 97, type: !45)
!1658 = !DILocalVariable(name: "val", scope: !1638, file: !1639, line: 98, type: !46)
!1659 = !DILocation(line: 0, scope: !1638)
!1660 = !DILocation(line: 94, column: 22, scope: !1638)
!1661 = !{!331, !329, i64 0}
!1662 = !DILocation(line: 95, column: 22, scope: !1638)
!1663 = !{!331, !330, i64 12}
!1664 = !DILocation(line: 96, column: 22, scope: !1638)
!1665 = !{!331, !330, i64 4}
!1666 = !DILocation(line: 97, column: 22, scope: !1638)
!1667 = !{!331, !330, i64 8}
!1668 = !DILocation(line: 100, column: 17, scope: !1638)
!1669 = !DILocation(line: 100, column: 11, scope: !1638)
!1670 = !DILocation(line: 102, column: 5, scope: !1638)
!1671 = distinct !DISubprogram(name: "matrix_test", scope: !1639, file: !1639, line: 130, type: !1672, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!12, !23, !49, !45, !45, !46}
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1675 = !DILocalVariable(name: "N", arg: 1, scope: !1671, file: !1639, line: 130, type: !23)
!1676 = !DILocalVariable(name: "C", arg: 2, scope: !1671, file: !1639, line: 130, type: !49)
!1677 = !DILocalVariable(name: "A", arg: 3, scope: !1671, file: !1639, line: 130, type: !45)
!1678 = !DILocalVariable(name: "B", arg: 4, scope: !1671, file: !1639, line: 130, type: !45)
!1679 = !DILocalVariable(name: "val", arg: 5, scope: !1671, file: !1639, line: 130, type: !46)
!1680 = !DILocalVariable(name: "crc", scope: !1671, file: !1639, line: 132, type: !53)
!1681 = !DILocalVariable(name: "clipval", scope: !1671, file: !1639, line: 133, type: !46)
!1682 = !DILocation(line: 0, scope: !1671)
!1683 = !DILocation(line: 133, column: 22, scope: !1671)
!1684 = !DILocation(line: 135, column: 5, scope: !1671)
!1685 = !DILocation(line: 139, column: 5, scope: !1671)
!1686 = !DILocation(line: 140, column: 17, scope: !1671)
!1687 = !DILocation(line: 140, column: 11, scope: !1671)
!1688 = !DILocation(line: 144, column: 5, scope: !1671)
!1689 = !DILocation(line: 145, column: 17, scope: !1671)
!1690 = !DILocation(line: 145, column: 11, scope: !1671)
!1691 = !DILocation(line: 149, column: 5, scope: !1671)
!1692 = !DILocation(line: 150, column: 17, scope: !1671)
!1693 = !DILocation(line: 150, column: 11, scope: !1671)
!1694 = !DILocation(line: 154, column: 5, scope: !1671)
!1695 = !DILocation(line: 155, column: 17, scope: !1671)
!1696 = !DILocation(line: 155, column: 11, scope: !1671)
!1697 = !DILocation(line: 160, column: 29, scope: !1671)
!1698 = !DILocation(line: 160, column: 28, scope: !1671)
!1699 = !DILocation(line: 160, column: 5, scope: !1671)
!1700 = !DILocation(line: 161, column: 5, scope: !1671)
!1701 = distinct !DISubprogram(name: "matrix_add_const", scope: !1639, file: !1639, line: 285, type: !1702, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !23, !45, !46}
!1704 = !{!1705, !1706, !1707, !1708, !1709}
!1705 = !DILocalVariable(name: "N", arg: 1, scope: !1701, file: !1639, line: 285, type: !23)
!1706 = !DILocalVariable(name: "A", arg: 2, scope: !1701, file: !1639, line: 285, type: !45)
!1707 = !DILocalVariable(name: "val", arg: 3, scope: !1701, file: !1639, line: 285, type: !46)
!1708 = !DILocalVariable(name: "i", scope: !1701, file: !1639, line: 287, type: !23)
!1709 = !DILocalVariable(name: "j", scope: !1701, file: !1639, line: 287, type: !23)
!1710 = !DILocation(line: 0, scope: !1701)
!1711 = !DILocation(line: 288, column: 10, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1701, file: !1639, line: 288, column: 5)
!1713 = !DILocation(line: 0, scope: !1712)
!1714 = !DILocation(line: 288, column: 19, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !1639, line: 288, column: 5)
!1716 = !DILocation(line: 288, column: 5, scope: !1712)
!1717 = !DILocation(line: 290, column: 14, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !1639, line: 290, column: 9)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !1639, line: 289, column: 5)
!1720 = !DILocation(line: 0, scope: !1718)
!1721 = !DILocation(line: 290, column: 23, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !1639, line: 290, column: 9)
!1723 = !DILocation(line: 290, column: 9, scope: !1718)
!1724 = !DILocation(line: 292, column: 29, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !1639, line: 291, column: 9)
!1726 = !DILocation(line: 292, column: 17, scope: !1725)
!1727 = !DILocation(line: 292, column: 21, scope: !1725)
!1728 = !DILocation(line: 292, column: 13, scope: !1725)
!1729 = !DILocation(line: 292, column: 26, scope: !1725)
!1730 = !DILocation(line: 293, column: 9, scope: !1725)
!1731 = !DILocation(line: 290, column: 29, scope: !1722)
!1732 = !DILocation(line: 290, column: 9, scope: !1722)
!1733 = distinct !{!1733, !1723, !1734}
!1734 = !DILocation(line: 293, column: 9, scope: !1718)
!1735 = !DILocation(line: 294, column: 5, scope: !1719)
!1736 = !DILocation(line: 288, column: 25, scope: !1715)
!1737 = !DILocation(line: 288, column: 5, scope: !1715)
!1738 = distinct !{!1738, !1716, !1739}
!1739 = !DILocation(line: 294, column: 5, scope: !1712)
!1740 = !DILocation(line: 295, column: 1, scope: !1701)
!1741 = distinct !DISubprogram(name: "matrix_mul_const", scope: !1639, file: !1639, line: 269, type: !1742, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !23, !49, !45, !46}
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750}
!1745 = !DILocalVariable(name: "N", arg: 1, scope: !1741, file: !1639, line: 269, type: !23)
!1746 = !DILocalVariable(name: "C", arg: 2, scope: !1741, file: !1639, line: 269, type: !49)
!1747 = !DILocalVariable(name: "A", arg: 3, scope: !1741, file: !1639, line: 269, type: !45)
!1748 = !DILocalVariable(name: "val", arg: 4, scope: !1741, file: !1639, line: 269, type: !46)
!1749 = !DILocalVariable(name: "i", scope: !1741, file: !1639, line: 271, type: !23)
!1750 = !DILocalVariable(name: "j", scope: !1741, file: !1639, line: 271, type: !23)
!1751 = !DILocation(line: 0, scope: !1741)
!1752 = !DILocation(line: 272, column: 10, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1741, file: !1639, line: 272, column: 5)
!1754 = !DILocation(line: 0, scope: !1753)
!1755 = !DILocation(line: 272, column: 19, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !1639, line: 272, column: 5)
!1757 = !DILocation(line: 272, column: 5, scope: !1753)
!1758 = !DILocation(line: 274, column: 14, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !1639, line: 274, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !1639, line: 273, column: 5)
!1761 = !DILocation(line: 0, scope: !1759)
!1762 = !DILocation(line: 274, column: 23, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !1639, line: 274, column: 9)
!1764 = !DILocation(line: 274, column: 9, scope: !1759)
!1765 = !DILocation(line: 276, column: 40, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !1639, line: 275, column: 9)
!1767 = !DILocation(line: 276, column: 44, scope: !1766)
!1768 = !DILocation(line: 276, column: 36, scope: !1766)
!1769 = !DILocation(line: 276, column: 28, scope: !1766)
!1770 = !DILocation(line: 276, column: 51, scope: !1766)
!1771 = !DILocation(line: 276, column: 49, scope: !1766)
!1772 = !DILocation(line: 276, column: 17, scope: !1766)
!1773 = !DILocation(line: 276, column: 21, scope: !1766)
!1774 = !DILocation(line: 276, column: 13, scope: !1766)
!1775 = !DILocation(line: 276, column: 26, scope: !1766)
!1776 = !DILocation(line: 277, column: 9, scope: !1766)
!1777 = !DILocation(line: 274, column: 29, scope: !1763)
!1778 = !DILocation(line: 274, column: 9, scope: !1763)
!1779 = distinct !{!1779, !1764, !1780}
!1780 = !DILocation(line: 277, column: 9, scope: !1759)
!1781 = !DILocation(line: 278, column: 5, scope: !1760)
!1782 = !DILocation(line: 272, column: 25, scope: !1756)
!1783 = !DILocation(line: 272, column: 5, scope: !1756)
!1784 = distinct !{!1784, !1757, !1785}
!1785 = !DILocation(line: 278, column: 5, scope: !1753)
!1786 = !DILocation(line: 279, column: 1, scope: !1741)
!1787 = distinct !DISubprogram(name: "matrix_sum", scope: !1639, file: !1639, line: 238, type: !1788, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!12, !23, !49, !46}
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799}
!1791 = !DILocalVariable(name: "N", arg: 1, scope: !1787, file: !1639, line: 238, type: !23)
!1792 = !DILocalVariable(name: "C", arg: 2, scope: !1787, file: !1639, line: 238, type: !49)
!1793 = !DILocalVariable(name: "clipval", arg: 3, scope: !1787, file: !1639, line: 238, type: !46)
!1794 = !DILocalVariable(name: "tmp", scope: !1787, file: !1639, line: 240, type: !50)
!1795 = !DILocalVariable(name: "prev", scope: !1787, file: !1639, line: 240, type: !50)
!1796 = !DILocalVariable(name: "cur", scope: !1787, file: !1639, line: 240, type: !50)
!1797 = !DILocalVariable(name: "ret", scope: !1787, file: !1639, line: 241, type: !12)
!1798 = !DILocalVariable(name: "i", scope: !1787, file: !1639, line: 242, type: !23)
!1799 = !DILocalVariable(name: "j", scope: !1787, file: !1639, line: 242, type: !23)
!1800 = !DILocation(line: 0, scope: !1787)
!1801 = !DILocation(line: 243, column: 10, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1787, file: !1639, line: 243, column: 5)
!1803 = !DILocation(line: 240, column: 21, scope: !1787)
!1804 = !DILocation(line: 240, column: 12, scope: !1787)
!1805 = !DILocation(line: 241, column: 12, scope: !1787)
!1806 = !DILocation(line: 0, scope: !1802)
!1807 = !DILocation(line: 243, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1802, file: !1639, line: 243, column: 5)
!1809 = !DILocation(line: 243, column: 5, scope: !1802)
!1810 = !DILocation(line: 245, column: 14, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !1639, line: 245, column: 9)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !1639, line: 244, column: 5)
!1813 = !DILocation(line: 0, scope: !1811)
!1814 = !DILocation(line: 245, column: 23, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !1639, line: 245, column: 9)
!1816 = !DILocation(line: 245, column: 9, scope: !1811)
!1817 = !DILocation(line: 247, column: 23, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !1639, line: 246, column: 9)
!1819 = !DILocation(line: 247, column: 27, scope: !1818)
!1820 = !DILocation(line: 247, column: 19, scope: !1818)
!1821 = !DILocation(line: 248, column: 17, scope: !1818)
!1822 = !DILocation(line: 249, column: 23, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1818, file: !1639, line: 249, column: 17)
!1824 = !DILocation(line: 249, column: 21, scope: !1823)
!1825 = !DILocation(line: 249, column: 17, scope: !1818)
!1826 = !DILocation(line: 251, column: 21, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !1639, line: 250, column: 13)
!1828 = !DILocation(line: 253, column: 13, scope: !1827)
!1829 = !DILocation(line: 256, column: 29, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1823, file: !1639, line: 255, column: 13)
!1831 = !DILocation(line: 256, column: 24, scope: !1830)
!1832 = !DILocation(line: 256, column: 21, scope: !1830)
!1833 = !DILocation(line: 0, scope: !1818)
!1834 = !DILocation(line: 0, scope: !1823)
!1835 = !DILocation(line: 259, column: 9, scope: !1818)
!1836 = !DILocation(line: 245, column: 29, scope: !1815)
!1837 = !DILocation(line: 245, column: 9, scope: !1815)
!1838 = distinct !{!1838, !1816, !1839}
!1839 = !DILocation(line: 259, column: 9, scope: !1811)
!1840 = !DILocation(line: 260, column: 5, scope: !1812)
!1841 = !DILocation(line: 243, column: 25, scope: !1808)
!1842 = !DILocation(line: 243, column: 5, scope: !1808)
!1843 = distinct !{!1843, !1809, !1844}
!1844 = !DILocation(line: 260, column: 5, scope: !1802)
!1845 = !DILocation(line: 261, column: 5, scope: !1787)
!1846 = distinct !DISubprogram(name: "matrix_mul_vect", scope: !1639, file: !1639, line: 303, type: !1847, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !23, !49, !45, !45}
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855}
!1850 = !DILocalVariable(name: "N", arg: 1, scope: !1846, file: !1639, line: 303, type: !23)
!1851 = !DILocalVariable(name: "C", arg: 2, scope: !1846, file: !1639, line: 303, type: !49)
!1852 = !DILocalVariable(name: "A", arg: 3, scope: !1846, file: !1639, line: 303, type: !45)
!1853 = !DILocalVariable(name: "B", arg: 4, scope: !1846, file: !1639, line: 303, type: !45)
!1854 = !DILocalVariable(name: "i", scope: !1846, file: !1639, line: 305, type: !23)
!1855 = !DILocalVariable(name: "j", scope: !1846, file: !1639, line: 305, type: !23)
!1856 = !DILocation(line: 0, scope: !1846)
!1857 = !DILocation(line: 306, column: 10, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1846, file: !1639, line: 306, column: 5)
!1859 = !DILocation(line: 0, scope: !1858)
!1860 = !DILocation(line: 306, column: 19, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !1639, line: 306, column: 5)
!1862 = !DILocation(line: 306, column: 5, scope: !1858)
!1863 = !DILocation(line: 308, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !1639, line: 307, column: 5)
!1865 = !DILocation(line: 308, column: 14, scope: !1864)
!1866 = !DILocation(line: 309, column: 14, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !1639, line: 309, column: 9)
!1868 = !DILocation(line: 0, scope: !1867)
!1869 = !DILocation(line: 309, column: 23, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !1639, line: 309, column: 9)
!1871 = !DILocation(line: 309, column: 9, scope: !1867)
!1872 = !DILocation(line: 311, column: 33, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1870, file: !1639, line: 310, column: 9)
!1874 = !DILocation(line: 311, column: 37, scope: !1873)
!1875 = !DILocation(line: 311, column: 29, scope: !1873)
!1876 = !DILocation(line: 311, column: 21, scope: !1873)
!1877 = !DILocation(line: 311, column: 52, scope: !1873)
!1878 = !DILocation(line: 311, column: 44, scope: !1873)
!1879 = !DILocation(line: 311, column: 42, scope: !1873)
!1880 = !DILocation(line: 311, column: 13, scope: !1873)
!1881 = !DILocation(line: 311, column: 18, scope: !1873)
!1882 = !DILocation(line: 312, column: 9, scope: !1873)
!1883 = !DILocation(line: 309, column: 29, scope: !1870)
!1884 = !DILocation(line: 309, column: 9, scope: !1870)
!1885 = distinct !{!1885, !1871, !1886}
!1886 = !DILocation(line: 312, column: 9, scope: !1867)
!1887 = !DILocation(line: 313, column: 5, scope: !1864)
!1888 = !DILocation(line: 306, column: 25, scope: !1861)
!1889 = !DILocation(line: 306, column: 5, scope: !1861)
!1890 = distinct !{!1890, !1862, !1891}
!1891 = !DILocation(line: 313, column: 5, scope: !1858)
!1892 = !DILocation(line: 314, column: 1, scope: !1846)
!1893 = distinct !DISubprogram(name: "matrix_mul_matrix", scope: !1639, file: !1639, line: 322, type: !1847, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1895 = !DILocalVariable(name: "N", arg: 1, scope: !1893, file: !1639, line: 322, type: !23)
!1896 = !DILocalVariable(name: "C", arg: 2, scope: !1893, file: !1639, line: 322, type: !49)
!1897 = !DILocalVariable(name: "A", arg: 3, scope: !1893, file: !1639, line: 322, type: !45)
!1898 = !DILocalVariable(name: "B", arg: 4, scope: !1893, file: !1639, line: 322, type: !45)
!1899 = !DILocalVariable(name: "i", scope: !1893, file: !1639, line: 324, type: !23)
!1900 = !DILocalVariable(name: "j", scope: !1893, file: !1639, line: 324, type: !23)
!1901 = !DILocalVariable(name: "k", scope: !1893, file: !1639, line: 324, type: !23)
!1902 = !DILocation(line: 0, scope: !1893)
!1903 = !DILocation(line: 325, column: 10, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1893, file: !1639, line: 325, column: 5)
!1905 = !DILocation(line: 0, scope: !1904)
!1906 = !DILocation(line: 325, column: 19, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !1639, line: 325, column: 5)
!1908 = !DILocation(line: 325, column: 5, scope: !1904)
!1909 = !DILocation(line: 327, column: 14, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !1639, line: 327, column: 9)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !1639, line: 326, column: 5)
!1912 = !DILocation(line: 0, scope: !1910)
!1913 = !DILocation(line: 327, column: 23, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !1639, line: 327, column: 9)
!1915 = !DILocation(line: 327, column: 9, scope: !1910)
!1916 = !DILocation(line: 329, column: 17, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !1639, line: 328, column: 9)
!1918 = !DILocation(line: 329, column: 21, scope: !1917)
!1919 = !DILocation(line: 329, column: 13, scope: !1917)
!1920 = !DILocation(line: 329, column: 26, scope: !1917)
!1921 = !DILocation(line: 330, column: 18, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !1639, line: 330, column: 13)
!1923 = !DILocation(line: 0, scope: !1922)
!1924 = !DILocation(line: 330, column: 27, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1922, file: !1639, line: 330, column: 13)
!1926 = !DILocation(line: 330, column: 13, scope: !1922)
!1927 = !DILocation(line: 332, column: 45, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1925, file: !1639, line: 331, column: 13)
!1929 = !DILocation(line: 332, column: 49, scope: !1928)
!1930 = !DILocation(line: 332, column: 41, scope: !1928)
!1931 = !DILocation(line: 332, column: 33, scope: !1928)
!1932 = !DILocation(line: 332, column: 68, scope: !1928)
!1933 = !DILocation(line: 332, column: 72, scope: !1928)
!1934 = !DILocation(line: 332, column: 64, scope: !1928)
!1935 = !DILocation(line: 332, column: 56, scope: !1928)
!1936 = !DILocation(line: 332, column: 54, scope: !1928)
!1937 = !DILocation(line: 332, column: 21, scope: !1928)
!1938 = !DILocation(line: 332, column: 25, scope: !1928)
!1939 = !DILocation(line: 332, column: 17, scope: !1928)
!1940 = !DILocation(line: 332, column: 30, scope: !1928)
!1941 = !DILocation(line: 333, column: 13, scope: !1928)
!1942 = !DILocation(line: 330, column: 33, scope: !1925)
!1943 = !DILocation(line: 330, column: 13, scope: !1925)
!1944 = distinct !{!1944, !1926, !1945}
!1945 = !DILocation(line: 333, column: 13, scope: !1922)
!1946 = !DILocation(line: 334, column: 9, scope: !1917)
!1947 = !DILocation(line: 327, column: 29, scope: !1914)
!1948 = !DILocation(line: 327, column: 9, scope: !1914)
!1949 = distinct !{!1949, !1915, !1950}
!1950 = !DILocation(line: 334, column: 9, scope: !1910)
!1951 = !DILocation(line: 335, column: 5, scope: !1911)
!1952 = !DILocation(line: 325, column: 25, scope: !1907)
!1953 = !DILocation(line: 325, column: 5, scope: !1907)
!1954 = distinct !{!1954, !1908, !1955}
!1955 = !DILocation(line: 335, column: 5, scope: !1904)
!1956 = !DILocation(line: 336, column: 1, scope: !1893)
!1957 = distinct !DISubprogram(name: "matrix_mul_matrix_bitextract", scope: !1639, file: !1639, line: 344, type: !1847, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966}
!1959 = !DILocalVariable(name: "N", arg: 1, scope: !1957, file: !1639, line: 344, type: !23)
!1960 = !DILocalVariable(name: "C", arg: 2, scope: !1957, file: !1639, line: 344, type: !49)
!1961 = !DILocalVariable(name: "A", arg: 3, scope: !1957, file: !1639, line: 344, type: !45)
!1962 = !DILocalVariable(name: "B", arg: 4, scope: !1957, file: !1639, line: 344, type: !45)
!1963 = !DILocalVariable(name: "i", scope: !1957, file: !1639, line: 346, type: !23)
!1964 = !DILocalVariable(name: "j", scope: !1957, file: !1639, line: 346, type: !23)
!1965 = !DILocalVariable(name: "k", scope: !1957, file: !1639, line: 346, type: !23)
!1966 = !DILocalVariable(name: "tmp", scope: !1967, file: !1639, line: 354, type: !50)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1639, line: 353, column: 13)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1639, line: 352, column: 13)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1639, line: 352, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !1639, line: 350, column: 9)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !1639, line: 349, column: 9)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !1639, line: 349, column: 9)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !1639, line: 348, column: 5)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !1639, line: 347, column: 5)
!1975 = distinct !DILexicalBlock(scope: !1957, file: !1639, line: 347, column: 5)
!1976 = !DILocation(line: 0, scope: !1957)
!1977 = !DILocation(line: 347, column: 10, scope: !1975)
!1978 = !DILocation(line: 0, scope: !1975)
!1979 = !DILocation(line: 347, column: 19, scope: !1974)
!1980 = !DILocation(line: 347, column: 5, scope: !1975)
!1981 = !DILocation(line: 349, column: 14, scope: !1972)
!1982 = !DILocation(line: 0, scope: !1972)
!1983 = !DILocation(line: 349, column: 23, scope: !1971)
!1984 = !DILocation(line: 349, column: 9, scope: !1972)
!1985 = !DILocation(line: 351, column: 17, scope: !1970)
!1986 = !DILocation(line: 351, column: 21, scope: !1970)
!1987 = !DILocation(line: 351, column: 13, scope: !1970)
!1988 = !DILocation(line: 351, column: 26, scope: !1970)
!1989 = !DILocation(line: 352, column: 18, scope: !1969)
!1990 = !DILocation(line: 0, scope: !1969)
!1991 = !DILocation(line: 352, column: 27, scope: !1968)
!1992 = !DILocation(line: 352, column: 13, scope: !1969)
!1993 = !DILocation(line: 354, column: 42, scope: !1967)
!1994 = !DILocation(line: 354, column: 46, scope: !1967)
!1995 = !DILocation(line: 354, column: 38, scope: !1967)
!1996 = !DILocation(line: 354, column: 30, scope: !1967)
!1997 = !DILocation(line: 354, column: 65, scope: !1967)
!1998 = !DILocation(line: 354, column: 69, scope: !1967)
!1999 = !DILocation(line: 354, column: 61, scope: !1967)
!2000 = !DILocation(line: 354, column: 53, scope: !1967)
!2001 = !DILocation(line: 354, column: 51, scope: !1967)
!2002 = !DILocation(line: 0, scope: !1967)
!2003 = !DILocation(line: 355, column: 33, scope: !1967)
!2004 = !DILocation(line: 355, column: 58, scope: !1967)
!2005 = !DILocation(line: 355, column: 56, scope: !1967)
!2006 = !DILocation(line: 355, column: 21, scope: !1967)
!2007 = !DILocation(line: 355, column: 25, scope: !1967)
!2008 = !DILocation(line: 355, column: 17, scope: !1967)
!2009 = !DILocation(line: 355, column: 30, scope: !1967)
!2010 = !DILocation(line: 356, column: 13, scope: !1967)
!2011 = !DILocation(line: 352, column: 33, scope: !1968)
!2012 = !DILocation(line: 352, column: 13, scope: !1968)
!2013 = distinct !{!2013, !1992, !2014}
!2014 = !DILocation(line: 356, column: 13, scope: !1969)
!2015 = !DILocation(line: 357, column: 9, scope: !1970)
!2016 = !DILocation(line: 349, column: 29, scope: !1971)
!2017 = !DILocation(line: 349, column: 9, scope: !1971)
!2018 = distinct !{!2018, !1984, !2019}
!2019 = !DILocation(line: 357, column: 9, scope: !1972)
!2020 = !DILocation(line: 358, column: 5, scope: !1973)
!2021 = !DILocation(line: 347, column: 25, scope: !1974)
!2022 = !DILocation(line: 347, column: 5, scope: !1974)
!2023 = distinct !{!2023, !1980, !2024}
!2024 = !DILocation(line: 358, column: 5, scope: !1975)
!2025 = !DILocation(line: 359, column: 1, scope: !1957)
!2026 = distinct !DISubprogram(name: "core_init_matrix", scope: !1639, file: !1639, line: 181, type: !2027, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!23, !23, !19, !51, !1642}
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040}
!2030 = !DILocalVariable(name: "blksize", arg: 1, scope: !2026, file: !1639, line: 181, type: !23)
!2031 = !DILocalVariable(name: "memblk", arg: 2, scope: !2026, file: !1639, line: 181, type: !19)
!2032 = !DILocalVariable(name: "seed", arg: 3, scope: !2026, file: !1639, line: 181, type: !51)
!2033 = !DILocalVariable(name: "p", arg: 4, scope: !2026, file: !1639, line: 181, type: !1642)
!2034 = !DILocalVariable(name: "N", scope: !2026, file: !1639, line: 183, type: !23)
!2035 = !DILocalVariable(name: "A", scope: !2026, file: !1639, line: 184, type: !45)
!2036 = !DILocalVariable(name: "B", scope: !2026, file: !1639, line: 185, type: !45)
!2037 = !DILocalVariable(name: "order", scope: !2026, file: !1639, line: 186, type: !51)
!2038 = !DILocalVariable(name: "val", scope: !2026, file: !1639, line: 187, type: !46)
!2039 = !DILocalVariable(name: "i", scope: !2026, file: !1639, line: 188, type: !23)
!2040 = !DILocalVariable(name: "j", scope: !2026, file: !1639, line: 188, type: !23)
!2041 = !DILocation(line: 0, scope: !2026)
!2042 = !DILocation(line: 189, column: 14, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2026, file: !1639, line: 189, column: 9)
!2044 = !DILocation(line: 189, column: 9, scope: !2026)
!2045 = !DILocation(line: 190, column: 9, scope: !2043)
!2046 = !DILocation(line: 191, column: 5, scope: !2026)
!2047 = !DILocation(line: 191, column: 14, scope: !2026)
!2048 = !DILocation(line: 193, column: 10, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2026, file: !1639, line: 192, column: 5)
!2050 = !DILocation(line: 194, column: 15, scope: !2049)
!2051 = !DILocation(line: 194, column: 19, scope: !2049)
!2052 = !DILocation(line: 194, column: 23, scope: !2049)
!2053 = distinct !{!2053, !2046, !2054}
!2054 = !DILocation(line: 195, column: 5, scope: !2026)
!2055 = !DILocation(line: 196, column: 11, scope: !2026)
!2056 = !DILocation(line: 197, column: 19, scope: !2026)
!2057 = !DILocation(line: 197, column: 9, scope: !2026)
!2058 = !DILocation(line: 198, column: 15, scope: !2026)
!2059 = !DILocation(line: 198, column: 11, scope: !2026)
!2060 = !DILocation(line: 200, column: 10, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2026, file: !1639, line: 200, column: 5)
!2062 = !DILocation(line: 186, column: 13, scope: !2026)
!2063 = !DILocation(line: 190, column: 14, scope: !2043)
!2064 = !DILocation(line: 0, scope: !2061)
!2065 = !DILocation(line: 200, column: 19, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !1639, line: 200, column: 5)
!2067 = !DILocation(line: 200, column: 5, scope: !2061)
!2068 = !DILocation(line: 202, column: 14, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !1639, line: 202, column: 9)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !1639, line: 201, column: 5)
!2071 = !DILocation(line: 0, scope: !2069)
!2072 = !DILocation(line: 202, column: 23, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !1639, line: 202, column: 9)
!2074 = !DILocation(line: 202, column: 9, scope: !2069)
!2075 = !DILocation(line: 204, column: 36, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !1639, line: 203, column: 9)
!2077 = !DILocation(line: 204, column: 44, scope: !2076)
!2078 = !DILocation(line: 205, column: 34, scope: !2076)
!2079 = !DILocation(line: 205, column: 28, scope: !2076)
!2080 = !DILocation(line: 206, column: 28, scope: !2076)
!2081 = !DILocation(line: 207, column: 17, scope: !2076)
!2082 = !DILocation(line: 207, column: 21, scope: !2076)
!2083 = !DILocation(line: 207, column: 13, scope: !2076)
!2084 = !DILocation(line: 207, column: 26, scope: !2076)
!2085 = !DILocation(line: 208, column: 29, scope: !2076)
!2086 = !DILocation(line: 208, column: 33, scope: !2076)
!2087 = !DILocation(line: 208, column: 28, scope: !2076)
!2088 = !DILocation(line: 209, column: 28, scope: !2076)
!2089 = !DILocation(line: 210, column: 17, scope: !2076)
!2090 = !DILocation(line: 210, column: 21, scope: !2076)
!2091 = !DILocation(line: 210, column: 13, scope: !2076)
!2092 = !DILocation(line: 210, column: 26, scope: !2076)
!2093 = !DILocation(line: 211, column: 18, scope: !2076)
!2094 = !DILocation(line: 212, column: 9, scope: !2076)
!2095 = !DILocation(line: 202, column: 29, scope: !2073)
!2096 = !DILocation(line: 202, column: 9, scope: !2073)
!2097 = distinct !{!2097, !2074, !2098}
!2098 = !DILocation(line: 212, column: 9, scope: !2069)
!2099 = !DILocation(line: 213, column: 5, scope: !2070)
!2100 = !DILocation(line: 200, column: 25, scope: !2066)
!2101 = !DILocation(line: 200, column: 5, scope: !2066)
!2102 = distinct !{!2102, !2067, !2103}
!2103 = !DILocation(line: 213, column: 5, scope: !2061)
!2104 = !DILocation(line: 215, column: 8, scope: !2026)
!2105 = !DILocation(line: 215, column: 10, scope: !2026)
!2106 = !DILocation(line: 216, column: 8, scope: !2026)
!2107 = !DILocation(line: 216, column: 10, scope: !2026)
!2108 = !DILocation(line: 217, column: 22, scope: !2026)
!2109 = !DILocation(line: 217, column: 12, scope: !2026)
!2110 = !DILocation(line: 217, column: 8, scope: !2026)
!2111 = !DILocation(line: 217, column: 10, scope: !2026)
!2112 = !DILocation(line: 218, column: 8, scope: !2026)
!2113 = !DILocation(line: 218, column: 10, scope: !2026)
!2114 = !DILocation(line: 223, column: 5, scope: !2026)
!2115 = distinct !DISubprogram(name: "core_bench_state", scope: !105, file: !105, line: 46, type: !2116, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!53, !23, !107, !12, !12, !12, !53}
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2129, !2130, !2131, !2132, !2134}
!2119 = !DILocalVariable(name: "blksize", arg: 1, scope: !2115, file: !105, line: 46, type: !23)
!2120 = !DILocalVariable(name: "memblock", arg: 2, scope: !2115, file: !105, line: 47, type: !107)
!2121 = !DILocalVariable(name: "seed1", arg: 3, scope: !2115, file: !105, line: 48, type: !12)
!2122 = !DILocalVariable(name: "seed2", arg: 4, scope: !2115, file: !105, line: 49, type: !12)
!2123 = !DILocalVariable(name: "step", arg: 5, scope: !2115, file: !105, line: 50, type: !12)
!2124 = !DILocalVariable(name: "crc", arg: 6, scope: !2115, file: !105, line: 51, type: !53)
!2125 = !DILocalVariable(name: "final_counts", scope: !2115, file: !105, line: 53, type: !2126)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !2127)
!2127 = !{!2128}
!2128 = !DISubrange(count: 8)
!2129 = !DILocalVariable(name: "track_counts", scope: !2115, file: !105, line: 54, type: !2126)
!2130 = !DILocalVariable(name: "p", scope: !2115, file: !105, line: 55, type: !107)
!2131 = !DILocalVariable(name: "i", scope: !2115, file: !105, line: 56, type: !23)
!2132 = !DILocalVariable(name: "fstate", scope: !2133, file: !105, line: 68, type: !90)
!2133 = distinct !DILexicalBlock(scope: !2115, file: !105, line: 67, column: 5)
!2134 = !DILocalVariable(name: "fstate", scope: !2135, file: !105, line: 88, type: !90)
!2135 = distinct !DILexicalBlock(scope: !2115, file: !105, line: 87, column: 5)
!2136 = !DILocation(line: 0, scope: !2115)
!2137 = !DILocation(line: 53, column: 5, scope: !2115)
!2138 = !DILocation(line: 53, column: 12, scope: !2115)
!2139 = !DILocation(line: 54, column: 5, scope: !2115)
!2140 = !DILocation(line: 54, column: 12, scope: !2115)
!2141 = !DILocation(line: 55, column: 5, scope: !2115)
!2142 = !DILocation(line: 55, column: 12, scope: !2115)
!2143 = !DILocation(line: 61, column: 10, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2115, file: !105, line: 61, column: 5)
!2145 = !DILocation(line: 0, scope: !2144)
!2146 = !DILocation(line: 61, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !105, line: 61, column: 5)
!2148 = !DILocation(line: 61, column: 5, scope: !2144)
!2149 = !DILocation(line: 63, column: 27, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !105, line: 62, column: 5)
!2151 = !DILocation(line: 63, column: 43, scope: !2150)
!2152 = !DILocation(line: 63, column: 9, scope: !2150)
!2153 = !DILocation(line: 63, column: 25, scope: !2150)
!2154 = !DILocation(line: 64, column: 5, scope: !2150)
!2155 = !DILocation(line: 61, column: 39, scope: !2147)
!2156 = !DILocation(line: 61, column: 5, scope: !2147)
!2157 = distinct !{!2157, !2148, !2158}
!2158 = !DILocation(line: 64, column: 5, scope: !2144)
!2159 = !DILocation(line: 66, column: 5, scope: !2115)
!2160 = !DILocation(line: 66, column: 13, scope: !2115)
!2161 = !DILocation(line: 66, column: 12, scope: !2115)
!2162 = !{!296, !296, i64 0}
!2163 = !DILocation(line: 66, column: 15, scope: !2115)
!2164 = !DILocation(line: 68, column: 60, scope: !2133)
!2165 = !DILocation(line: 68, column: 34, scope: !2133)
!2166 = !DILocation(line: 0, scope: !2133)
!2167 = !DILocation(line: 69, column: 9, scope: !2133)
!2168 = !DILocation(line: 69, column: 29, scope: !2133)
!2169 = distinct !{!2169, !2159, !2170}
!2170 = !DILocation(line: 75, column: 5, scope: !2115)
!2171 = !DILocation(line: 77, column: 7, scope: !2115)
!2172 = !DILocation(line: 78, column: 5, scope: !2115)
!2173 = !DILocation(line: 78, column: 12, scope: !2115)
!2174 = !DILocation(line: 78, column: 26, scope: !2115)
!2175 = !DILocation(line: 78, column: 14, scope: !2115)
!2176 = !DILocation(line: 80, column: 14, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !105, line: 80, column: 13)
!2178 = distinct !DILexicalBlock(scope: !2115, file: !105, line: 79, column: 5)
!2179 = !DILocation(line: 80, column: 13, scope: !2177)
!2180 = !DILocation(line: 80, column: 16, scope: !2177)
!2181 = !DILocation(line: 80, column: 13, scope: !2178)
!2182 = !DILocation(line: 81, column: 19, scope: !2177)
!2183 = !DILocation(line: 81, column: 14, scope: !2177)
!2184 = !DILocation(line: 81, column: 16, scope: !2177)
!2185 = !DILocation(line: 81, column: 13, scope: !2177)
!2186 = !DILocation(line: 82, column: 14, scope: !2178)
!2187 = !DILocation(line: 82, column: 11, scope: !2178)
!2188 = distinct !{!2188, !2172, !2189}
!2189 = !DILocation(line: 83, column: 5, scope: !2115)
!2190 = !DILocation(line: 84, column: 7, scope: !2115)
!2191 = !DILocation(line: 86, column: 5, scope: !2115)
!2192 = !DILocation(line: 86, column: 13, scope: !2115)
!2193 = !DILocation(line: 86, column: 12, scope: !2115)
!2194 = !DILocation(line: 86, column: 15, scope: !2115)
!2195 = !DILocation(line: 88, column: 60, scope: !2135)
!2196 = !DILocation(line: 88, column: 34, scope: !2135)
!2197 = !DILocation(line: 0, scope: !2135)
!2198 = !DILocation(line: 89, column: 9, scope: !2135)
!2199 = !DILocation(line: 89, column: 29, scope: !2135)
!2200 = distinct !{!2200, !2191, !2201}
!2201 = !DILocation(line: 95, column: 5, scope: !2115)
!2202 = !DILocation(line: 97, column: 7, scope: !2115)
!2203 = !DILocation(line: 98, column: 5, scope: !2115)
!2204 = !DILocation(line: 98, column: 12, scope: !2115)
!2205 = !DILocation(line: 98, column: 26, scope: !2115)
!2206 = !DILocation(line: 98, column: 14, scope: !2115)
!2207 = !DILocation(line: 100, column: 14, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !105, line: 100, column: 13)
!2209 = distinct !DILexicalBlock(scope: !2115, file: !105, line: 99, column: 5)
!2210 = !DILocation(line: 100, column: 13, scope: !2208)
!2211 = !DILocation(line: 100, column: 16, scope: !2208)
!2212 = !DILocation(line: 100, column: 13, scope: !2209)
!2213 = !DILocation(line: 101, column: 19, scope: !2208)
!2214 = !DILocation(line: 101, column: 14, scope: !2208)
!2215 = !DILocation(line: 101, column: 16, scope: !2208)
!2216 = !DILocation(line: 101, column: 13, scope: !2208)
!2217 = !DILocation(line: 102, column: 14, scope: !2209)
!2218 = !DILocation(line: 102, column: 11, scope: !2209)
!2219 = distinct !{!2219, !2203, !2220}
!2220 = !DILocation(line: 103, column: 5, scope: !2115)
!2221 = !DILocation(line: 105, column: 10, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2115, file: !105, line: 105, column: 5)
!2223 = !DILocation(line: 0, scope: !2222)
!2224 = !DILocation(line: 105, column: 19, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !105, line: 105, column: 5)
!2226 = !DILocation(line: 105, column: 5, scope: !2222)
!2227 = !DILocation(line: 107, column: 22, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !105, line: 106, column: 5)
!2229 = !DILocation(line: 107, column: 15, scope: !2228)
!2230 = !DILocation(line: 108, column: 22, scope: !2228)
!2231 = !DILocation(line: 108, column: 15, scope: !2228)
!2232 = !DILocation(line: 109, column: 5, scope: !2228)
!2233 = !DILocation(line: 105, column: 39, scope: !2225)
!2234 = !DILocation(line: 105, column: 5, scope: !2225)
!2235 = distinct !{!2235, !2226, !2236}
!2236 = !DILocation(line: 109, column: 5, scope: !2222)
!2237 = !DILocation(line: 111, column: 1, scope: !2115)
!2238 = !DILocation(line: 110, column: 5, scope: !2115)
!2239 = distinct !DISubprogram(name: "core_state_transition", scope: !105, file: !105, line: 217, type: !2240, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2244)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!90, !2242, !2243}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!2244 = !{!2245, !2246, !2247, !2248, !2249}
!2245 = !DILocalVariable(name: "instr", arg: 1, scope: !2239, file: !105, line: 217, type: !2242)
!2246 = !DILocalVariable(name: "transition_count", arg: 2, scope: !2239, file: !105, line: 217, type: !2243)
!2247 = !DILocalVariable(name: "str", scope: !2239, file: !105, line: 219, type: !107)
!2248 = !DILocalVariable(name: "NEXT_SYMBOL", scope: !2239, file: !105, line: 220, type: !64)
!2249 = !DILocalVariable(name: "state", scope: !2239, file: !105, line: 221, type: !90)
!2250 = !DILocation(line: 0, scope: !2239)
!2251 = !DILocation(line: 219, column: 27, scope: !2239)
!2252 = !DILocation(line: 222, column: 5, scope: !2239)
!2253 = !DILocation(line: 221, column: 21, scope: !2239)
!2254 = !DILocation(line: 222, column: 12, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !105, line: 222, column: 5)
!2256 = distinct !DILexicalBlock(scope: !2239, file: !105, line: 222, column: 5)
!2257 = !DILocation(line: 222, column: 17, scope: !2255)
!2258 = !DILocation(line: 222, column: 26, scope: !2255)
!2259 = !DILocation(line: 0, scope: !2255)
!2260 = !DILocation(line: 222, column: 5, scope: !2256)
!2261 = !DILocation(line: 224, column: 23, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !105, line: 223, column: 5)
!2263 = !DILocation(line: 225, column: 13, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2262, file: !105, line: 225, column: 13)
!2265 = !DILocation(line: 225, column: 25, scope: !2264)
!2266 = !DILocation(line: 225, column: 13, scope: !2262)
!2267 = !DILocation(line: 227, column: 16, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !105, line: 226, column: 9)
!2269 = !DILocation(line: 228, column: 13, scope: !2268)
!2270 = !DILocation(line: 233, column: 21, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !105, line: 233, column: 21)
!2272 = distinct !DILexicalBlock(scope: !2262, file: !105, line: 231, column: 9)
!2273 = !DILocation(line: 233, column: 21, scope: !2272)
!2274 = !DILocation(line: 236, column: 17, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 234, column: 17)
!2276 = !DILocation(line: 237, column: 26, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 237, column: 26)
!2278 = !DILocation(line: 237, column: 38, scope: !2277)
!2279 = !DILocation(line: 237, column: 45, scope: !2277)
!2280 = !DILocation(line: 237, column: 48, scope: !2277)
!2281 = !DILocation(line: 237, column: 60, scope: !2277)
!2282 = !DILocation(line: 237, column: 26, scope: !2271)
!2283 = !DILocation(line: 240, column: 17, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2277, file: !105, line: 238, column: 17)
!2285 = !DILocation(line: 241, column: 26, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2277, file: !105, line: 241, column: 26)
!2287 = !DILocation(line: 241, column: 38, scope: !2286)
!2288 = !DILocation(line: 241, column: 26, scope: !2277)
!2289 = !DILocation(line: 244, column: 17, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2286, file: !105, line: 242, column: 17)
!2291 = !DILocation(line: 248, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !105, line: 246, column: 17)
!2293 = !DILocation(line: 248, column: 51, scope: !2292)
!2294 = !DILocation(line: 0, scope: !2286)
!2295 = !DILocation(line: 0, scope: !2277)
!2296 = !DILocation(line: 0, scope: !2271)
!2297 = !DILocation(line: 250, column: 17, scope: !2272)
!2298 = !DILocation(line: 250, column: 45, scope: !2272)
!2299 = !DILocation(line: 251, column: 17, scope: !2272)
!2300 = !DILocation(line: 253, column: 21, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2272, file: !105, line: 253, column: 21)
!2302 = !DILocation(line: 253, column: 21, scope: !2272)
!2303 = !DILocation(line: 256, column: 21, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !105, line: 254, column: 17)
!2305 = !DILocation(line: 256, column: 46, scope: !2304)
!2306 = !DILocation(line: 257, column: 17, scope: !2304)
!2307 = !DILocation(line: 258, column: 26, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2301, file: !105, line: 258, column: 26)
!2309 = !DILocation(line: 258, column: 38, scope: !2308)
!2310 = !DILocation(line: 258, column: 26, scope: !2301)
!2311 = !DILocation(line: 261, column: 21, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !105, line: 259, column: 17)
!2313 = !DILocation(line: 261, column: 46, scope: !2312)
!2314 = !DILocation(line: 262, column: 17, scope: !2312)
!2315 = !DILocation(line: 266, column: 21, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2308, file: !105, line: 264, column: 17)
!2317 = !DILocation(line: 266, column: 46, scope: !2316)
!2318 = !DILocation(line: 0, scope: !2308)
!2319 = !DILocation(line: 0, scope: !2301)
!2320 = !DILocation(line: 268, column: 17, scope: !2272)
!2321 = !DILocation(line: 270, column: 21, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2272, file: !105, line: 270, column: 21)
!2323 = !DILocation(line: 270, column: 33, scope: !2322)
!2324 = !DILocation(line: 270, column: 21, scope: !2272)
!2325 = !DILocation(line: 273, column: 21, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !105, line: 271, column: 17)
!2327 = !DILocation(line: 273, column: 47, scope: !2326)
!2328 = !DILocation(line: 274, column: 17, scope: !2326)
!2329 = !DILocation(line: 275, column: 27, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2322, file: !105, line: 275, column: 26)
!2331 = !DILocation(line: 275, column: 26, scope: !2322)
!2332 = !DILocation(line: 278, column: 21, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !105, line: 276, column: 17)
!2334 = !DILocation(line: 278, column: 47, scope: !2333)
!2335 = !DILocation(line: 279, column: 17, scope: !2333)
!2336 = !DILocation(line: 280, column: 17, scope: !2272)
!2337 = !DILocation(line: 282, column: 21, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2272, file: !105, line: 282, column: 21)
!2339 = !DILocation(line: 282, column: 33, scope: !2338)
!2340 = !DILocation(line: 282, column: 40, scope: !2338)
!2341 = !DILocation(line: 282, column: 43, scope: !2338)
!2342 = !DILocation(line: 282, column: 55, scope: !2338)
!2343 = !DILocation(line: 282, column: 21, scope: !2272)
!2344 = !DILocation(line: 285, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2338, file: !105, line: 283, column: 17)
!2346 = !DILocation(line: 285, column: 49, scope: !2345)
!2347 = !DILocation(line: 286, column: 17, scope: !2345)
!2348 = !DILocation(line: 287, column: 27, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2338, file: !105, line: 287, column: 26)
!2350 = !DILocation(line: 287, column: 26, scope: !2338)
!2351 = !DILocation(line: 290, column: 21, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !105, line: 288, column: 17)
!2353 = !DILocation(line: 290, column: 49, scope: !2352)
!2354 = !DILocation(line: 291, column: 17, scope: !2352)
!2355 = !DILocation(line: 292, column: 17, scope: !2272)
!2356 = !DILocation(line: 294, column: 21, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2272, file: !105, line: 294, column: 21)
!2358 = !DILocation(line: 294, column: 33, scope: !2357)
!2359 = !DILocation(line: 294, column: 40, scope: !2357)
!2360 = !DILocation(line: 294, column: 43, scope: !2357)
!2361 = !DILocation(line: 294, column: 55, scope: !2357)
!2362 = !DILocation(line: 294, column: 21, scope: !2272)
!2363 = !DILocation(line: 297, column: 21, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2357, file: !105, line: 295, column: 17)
!2365 = !DILocation(line: 297, column: 46, scope: !2364)
!2366 = !DILocation(line: 298, column: 17, scope: !2364)
!2367 = !DILocation(line: 302, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2357, file: !105, line: 300, column: 17)
!2369 = !DILocation(line: 302, column: 46, scope: !2368)
!2370 = !DILocation(line: 0, scope: !2357)
!2371 = !DILocation(line: 304, column: 17, scope: !2272)
!2372 = !DILocation(line: 306, column: 21, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2272, file: !105, line: 306, column: 21)
!2374 = !DILocation(line: 306, column: 21, scope: !2272)
!2375 = !DILocation(line: 309, column: 21, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !105, line: 307, column: 17)
!2377 = !DILocation(line: 309, column: 52, scope: !2376)
!2378 = !DILocation(line: 310, column: 17, scope: !2376)
!2379 = !DILocation(line: 314, column: 21, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2373, file: !105, line: 312, column: 17)
!2381 = !DILocation(line: 314, column: 52, scope: !2380)
!2382 = !DILocation(line: 0, scope: !2373)
!2383 = !DILocation(line: 316, column: 17, scope: !2272)
!2384 = !DILocation(line: 318, column: 22, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2272, file: !105, line: 318, column: 21)
!2386 = !DILocation(line: 318, column: 21, scope: !2272)
!2387 = !DILocation(line: 321, column: 21, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !105, line: 319, column: 17)
!2389 = !DILocation(line: 321, column: 51, scope: !2388)
!2390 = !DILocation(line: 322, column: 17, scope: !2388)
!2391 = !DILocation(line: 323, column: 17, scope: !2272)
!2392 = !DILocation(line: 325, column: 17, scope: !2272)
!2393 = !DILocation(line: 327, column: 5, scope: !2262)
!2394 = !DILocation(line: 222, column: 46, scope: !2255)
!2395 = !DILocation(line: 222, column: 5, scope: !2255)
!2396 = distinct !{!2396, !2260, !2397}
!2397 = !DILocation(line: 327, column: 5, scope: !2256)
!2398 = !DILocation(line: 328, column: 12, scope: !2239)
!2399 = !DILocation(line: 329, column: 5, scope: !2239)
!2400 = distinct !DISubprogram(name: "ee_isdigit", scope: !105, file: !105, line: 198, type: !2401, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!64, !64}
!2403 = !{!2404, !2405}
!2404 = !DILocalVariable(name: "c", arg: 1, scope: !2400, file: !105, line: 198, type: !64)
!2405 = !DILocalVariable(name: "retval", scope: !2400, file: !105, line: 200, type: !64)
!2406 = !DILocation(line: 0, scope: !2400)
!2407 = !DILocation(line: 201, column: 16, scope: !2400)
!2408 = !DILocation(line: 201, column: 18, scope: !2400)
!2409 = !DILocation(line: 201, column: 29, scope: !2400)
!2410 = !DILocation(line: 201, column: 31, scope: !2400)
!2411 = !DILocation(line: 201, column: 26, scope: !2400)
!2412 = !DILocation(line: 201, column: 14, scope: !2400)
!2413 = !DILocation(line: 202, column: 5, scope: !2400)
!2414 = distinct !DISubprogram(name: "core_init_state", scope: !105, file: !105, line: 140, type: !2415, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !23, !12, !107}
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423, !2424}
!2418 = !DILocalVariable(name: "size", arg: 1, scope: !2414, file: !105, line: 140, type: !23)
!2419 = !DILocalVariable(name: "seed", arg: 2, scope: !2414, file: !105, line: 140, type: !12)
!2420 = !DILocalVariable(name: "p", arg: 3, scope: !2414, file: !105, line: 140, type: !107)
!2421 = !DILocalVariable(name: "total", scope: !2414, file: !105, line: 142, type: !23)
!2422 = !DILocalVariable(name: "next", scope: !2414, file: !105, line: 142, type: !23)
!2423 = !DILocalVariable(name: "i", scope: !2414, file: !105, line: 142, type: !23)
!2424 = !DILocalVariable(name: "buf", scope: !2414, file: !105, line: 143, type: !107)
!2425 = !DILocation(line: 0, scope: !2414)
!2426 = !DILocation(line: 148, column: 9, scope: !2414)
!2427 = !DILocation(line: 150, column: 5, scope: !2414)
!2428 = !DILocation(line: 149, column: 10, scope: !2414)
!2429 = !DILocation(line: 143, column: 12, scope: !2414)
!2430 = !DILocation(line: 150, column: 19, scope: !2414)
!2431 = !DILocation(line: 150, column: 26, scope: !2414)
!2432 = !DILocation(line: 150, column: 31, scope: !2414)
!2433 = !DILocation(line: 152, column: 18, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !105, line: 152, column: 13)
!2435 = distinct !DILexicalBlock(scope: !2414, file: !105, line: 151, column: 5)
!2436 = !DILocation(line: 152, column: 13, scope: !2435)
!2437 = !DILocation(line: 154, column: 18, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !105, line: 154, column: 13)
!2439 = distinct !DILexicalBlock(scope: !2434, file: !105, line: 153, column: 9)
!2440 = !DILocation(line: 0, scope: !2438)
!2441 = !DILocation(line: 154, column: 27, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !105, line: 154, column: 13)
!2443 = !DILocation(line: 154, column: 13, scope: !2438)
!2444 = !DILocation(line: 155, column: 36, scope: !2442)
!2445 = !DILocation(line: 155, column: 21, scope: !2442)
!2446 = !DILocation(line: 155, column: 29, scope: !2442)
!2447 = !DILocation(line: 155, column: 34, scope: !2442)
!2448 = !DILocation(line: 155, column: 17, scope: !2442)
!2449 = !DILocation(line: 154, column: 36, scope: !2442)
!2450 = !DILocation(line: 154, column: 13, scope: !2442)
!2451 = distinct !{!2451, !2443, !2452}
!2452 = !DILocation(line: 155, column: 41, scope: !2438)
!2453 = !DILocation(line: 156, column: 17, scope: !2439)
!2454 = !DILocation(line: 156, column: 25, scope: !2439)
!2455 = !DILocation(line: 156, column: 30, scope: !2439)
!2456 = !DILocation(line: 157, column: 27, scope: !2439)
!2457 = !DILocation(line: 157, column: 19, scope: !2439)
!2458 = !DILocation(line: 158, column: 9, scope: !2439)
!2459 = !DILocation(line: 159, column: 13, scope: !2435)
!2460 = !DILocation(line: 160, column: 17, scope: !2435)
!2461 = !DILocation(line: 160, column: 22, scope: !2435)
!2462 = !DILocation(line: 165, column: 32, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2435, file: !105, line: 161, column: 9)
!2464 = !DILocation(line: 165, column: 37, scope: !2463)
!2465 = !DILocation(line: 165, column: 43, scope: !2463)
!2466 = !DILocation(line: 165, column: 24, scope: !2463)
!2467 = !DILocation(line: 167, column: 17, scope: !2463)
!2468 = !DILocation(line: 170, column: 34, scope: !2463)
!2469 = !DILocation(line: 170, column: 39, scope: !2463)
!2470 = !DILocation(line: 170, column: 45, scope: !2463)
!2471 = !DILocation(line: 170, column: 24, scope: !2463)
!2472 = !DILocation(line: 172, column: 17, scope: !2463)
!2473 = !DILocation(line: 175, column: 32, scope: !2463)
!2474 = !DILocation(line: 175, column: 37, scope: !2463)
!2475 = !DILocation(line: 175, column: 43, scope: !2463)
!2476 = !DILocation(line: 175, column: 24, scope: !2463)
!2477 = !DILocation(line: 177, column: 17, scope: !2463)
!2478 = !DILocation(line: 179, column: 32, scope: !2463)
!2479 = !DILocation(line: 179, column: 37, scope: !2463)
!2480 = !DILocation(line: 179, column: 43, scope: !2463)
!2481 = !DILocation(line: 179, column: 24, scope: !2463)
!2482 = !DILocation(line: 181, column: 17, scope: !2463)
!2483 = distinct !{!2483, !2427, !2484}
!2484 = !DILocation(line: 185, column: 5, scope: !2414)
!2485 = !DILocation(line: 186, column: 9, scope: !2414)
!2486 = !DILocation(line: 187, column: 5, scope: !2414)
!2487 = !DILocation(line: 187, column: 18, scope: !2414)
!2488 = !DILocation(line: 189, column: 13, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2414, file: !105, line: 188, column: 5)
!2490 = !DILocation(line: 189, column: 22, scope: !2489)
!2491 = !DILocation(line: 190, column: 14, scope: !2489)
!2492 = distinct !{!2492, !2486, !2493}
!2493 = !DILocation(line: 191, column: 5, scope: !2414)
!2494 = !DILocation(line: 195, column: 1, scope: !2414)
!2495 = distinct !DISubprogram(name: "get_seed_32", scope: !2496, file: !2496, line: 43, type: !2497, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2499)
!2496 = !DIFile(filename: "src/coremark/core_util.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!51, !43}
!2499 = !{!2500, !2501}
!2500 = !DILocalVariable(name: "i", arg: 1, scope: !2495, file: !2496, line: 43, type: !43)
!2501 = !DILocalVariable(name: "retval", scope: !2495, file: !2496, line: 45, type: !51)
!2502 = !DILocation(line: 0, scope: !2495)
!2503 = !DILocation(line: 49, column: 22, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2495, file: !2496, line: 47, column: 5)
!2505 = !DILocation(line: 50, column: 13, scope: !2504)
!2506 = !DILocation(line: 52, column: 22, scope: !2504)
!2507 = !DILocation(line: 53, column: 13, scope: !2504)
!2508 = !DILocation(line: 55, column: 22, scope: !2504)
!2509 = !DILocation(line: 56, column: 13, scope: !2504)
!2510 = !DILocation(line: 58, column: 22, scope: !2504)
!2511 = !DILocation(line: 59, column: 13, scope: !2504)
!2512 = !DILocation(line: 61, column: 22, scope: !2504)
!2513 = !DILocation(line: 62, column: 13, scope: !2504)
!2514 = !DILocation(line: 65, column: 13, scope: !2504)
!2515 = !DILocation(line: 0, scope: !2504)
!2516 = !DILocation(line: 67, column: 5, scope: !2495)
!2517 = distinct !DISubprogram(name: "crcu8", scope: !2496, file: !2496, line: 165, type: !2518, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!53, !64, !53}
!2520 = !{!2521, !2522, !2523, !2524, !2525}
!2521 = !DILocalVariable(name: "data", arg: 1, scope: !2517, file: !2496, line: 165, type: !64)
!2522 = !DILocalVariable(name: "crc", arg: 2, scope: !2517, file: !2496, line: 165, type: !53)
!2523 = !DILocalVariable(name: "i", scope: !2517, file: !2496, line: 167, type: !64)
!2524 = !DILocalVariable(name: "x16", scope: !2517, file: !2496, line: 167, type: !64)
!2525 = !DILocalVariable(name: "carry", scope: !2517, file: !2496, line: 167, type: !64)
!2526 = !DILocation(line: 0, scope: !2517)
!2527 = !DILocation(line: 169, column: 10, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2517, file: !2496, line: 169, column: 5)
!2529 = !DILocation(line: 0, scope: !2528)
!2530 = !DILocation(line: 169, column: 17, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !2496, line: 169, column: 5)
!2532 = !DILocation(line: 169, column: 19, scope: !2531)
!2533 = !DILocation(line: 169, column: 5, scope: !2528)
!2534 = !DILocation(line: 171, column: 24, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !2496, line: 170, column: 5)
!2536 = !DILocation(line: 171, column: 29, scope: !2535)
!2537 = !DILocation(line: 171, column: 37, scope: !2535)
!2538 = !DILocation(line: 171, column: 48, scope: !2535)
!2539 = !DILocation(line: 171, column: 34, scope: !2535)
!2540 = !DILocation(line: 171, column: 15, scope: !2535)
!2541 = !DILocation(line: 172, column: 14, scope: !2535)
!2542 = !DILocation(line: 174, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2535, file: !2496, line: 174, column: 13)
!2544 = !DILocation(line: 174, column: 17, scope: !2543)
!2545 = !DILocation(line: 174, column: 13, scope: !2535)
!2546 = !DILocation(line: 176, column: 17, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !2496, line: 175, column: 9)
!2548 = !DILocation(line: 178, column: 9, scope: !2547)
!2549 = !DILocation(line: 0, scope: !2543)
!2550 = !DILocation(line: 181, column: 13, scope: !2535)
!2551 = !DILocation(line: 182, column: 13, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2535, file: !2496, line: 182, column: 13)
!2553 = !DILocation(line: 182, column: 13, scope: !2535)
!2554 = !DILocation(line: 183, column: 17, scope: !2552)
!2555 = !DILocation(line: 183, column: 13, scope: !2552)
!2556 = !DILocation(line: 185, column: 17, scope: !2552)
!2557 = !DILocation(line: 0, scope: !2552)
!2558 = !DILocation(line: 186, column: 5, scope: !2535)
!2559 = !DILocation(line: 169, column: 25, scope: !2531)
!2560 = !DILocation(line: 169, column: 5, scope: !2531)
!2561 = distinct !{!2561, !2533, !2562}
!2562 = !DILocation(line: 186, column: 5, scope: !2528)
!2563 = !DILocation(line: 187, column: 5, scope: !2517)
!2564 = distinct !DISubprogram(name: "crcu16", scope: !2496, file: !2496, line: 190, type: !2565, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!53, !53, !53}
!2567 = !{!2568, !2569}
!2568 = !DILocalVariable(name: "newval", arg: 1, scope: !2564, file: !2496, line: 190, type: !53)
!2569 = !DILocalVariable(name: "crc", arg: 2, scope: !2564, file: !2496, line: 190, type: !53)
!2570 = !DILocation(line: 0, scope: !2564)
!2571 = !DILocation(line: 192, column: 17, scope: !2564)
!2572 = !DILocation(line: 192, column: 11, scope: !2564)
!2573 = !DILocation(line: 193, column: 25, scope: !2564)
!2574 = !DILocation(line: 193, column: 34, scope: !2564)
!2575 = !DILocation(line: 193, column: 17, scope: !2564)
!2576 = !DILocation(line: 193, column: 11, scope: !2564)
!2577 = !DILocation(line: 194, column: 5, scope: !2564)
!2578 = distinct !DISubprogram(name: "crcu32", scope: !2496, file: !2496, line: 197, type: !2579, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!53, !23, !53}
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "newval", arg: 1, scope: !2578, file: !2496, line: 197, type: !23)
!2583 = !DILocalVariable(name: "crc", arg: 2, scope: !2578, file: !2496, line: 197, type: !53)
!2584 = !DILocation(line: 0, scope: !2578)
!2585 = !DILocation(line: 199, column: 17, scope: !2578)
!2586 = !DILocation(line: 199, column: 11, scope: !2578)
!2587 = !DILocation(line: 200, column: 33, scope: !2578)
!2588 = !DILocation(line: 200, column: 17, scope: !2578)
!2589 = !DILocation(line: 200, column: 11, scope: !2578)
!2590 = !DILocation(line: 201, column: 5, scope: !2578)
!2591 = distinct !DISubprogram(name: "crc16", scope: !2496, file: !2496, line: 204, type: !2592, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!53, !12, !53}
!2594 = !{!2595, !2596}
!2595 = !DILocalVariable(name: "newval", arg: 1, scope: !2591, file: !2496, line: 204, type: !12)
!2596 = !DILocalVariable(name: "crc", arg: 2, scope: !2591, file: !2496, line: 204, type: !53)
!2597 = !DILocation(line: 0, scope: !2591)
!2598 = !DILocation(line: 206, column: 12, scope: !2591)
!2599 = !DILocation(line: 206, column: 5, scope: !2591)
!2600 = distinct !DISubprogram(name: "check_data_types", scope: !2496, file: !2496, line: 210, type: !2601, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2602)
!2601 = !DISubroutineType(types: !101)
!2602 = !{!2603}
!2603 = !DILocalVariable(name: "retval", scope: !2600, file: !2496, line: 212, type: !64)
!2604 = !DILocation(line: 0, scope: !2600)
!2605 = !DILocation(line: 244, column: 9, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2600, file: !2496, line: 244, column: 9)
!2607 = !DILocation(line: 244, column: 16, scope: !2606)
!2608 = !DILocation(line: 244, column: 9, scope: !2600)
!2609 = !DILocation(line: 246, column: 9, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !2496, line: 245, column: 5)
!2611 = !DILocation(line: 247, column: 5, scope: !2610)
!2612 = !DILocation(line: 248, column: 5, scope: !2600)
!2613 = distinct !DISubprogram(name: "clock", scope: !125, file: !125, line: 73, type: !2614, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!137}
!2616 = !DILocation(line: 74, column: 10, scope: !2613)
!2617 = !{!2618, !2618, i64 0}
!2618 = !{!"long long", !296, i64 0}
!2619 = !DILocation(line: 74, column: 3, scope: !2613)
!2620 = distinct !DISubprogram(name: "start_time", scope: !125, file: !125, line: 90, type: !214, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2621 = !DILocation(line: 92, column: 5, scope: !2620)
!2622 = !DILocation(line: 93, column: 1, scope: !2620)
!2623 = distinct !DISubprogram(name: "stop_time", scope: !125, file: !125, line: 103, type: !214, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2624 = !DILocation(line: 105, column: 5, scope: !2623)
!2625 = !DILocation(line: 106, column: 1, scope: !2623)
!2626 = distinct !DISubprogram(name: "get_time", scope: !125, file: !125, line: 117, type: !2627, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!117}
!2629 = !{!2630}
!2630 = !DILocalVariable(name: "elapsed", scope: !2626, file: !125, line: 119, type: !117)
!2631 = !DILocation(line: 120, column: 24, scope: !2626)
!2632 = !DILocation(line: 120, column: 11, scope: !2626)
!2633 = !DILocation(line: 0, scope: !2626)
!2634 = !DILocation(line: 121, column: 5, scope: !2626)
!2635 = distinct !DISubprogram(name: "time_in_secs", scope: !125, file: !125, line: 131, type: !2636, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!68, !117}
!2638 = !{!2639, !2640}
!2639 = !DILocalVariable(name: "ticks", arg: 1, scope: !2635, file: !125, line: 131, type: !117)
!2640 = !DILocalVariable(name: "retval", scope: !2635, file: !125, line: 133, type: !68)
!2641 = !DILocation(line: 0, scope: !2635)
!2642 = !DILocation(line: 133, column: 24, scope: !2635)
!2643 = !DILocation(line: 133, column: 41, scope: !2635)
!2644 = !DILocation(line: 134, column: 5, scope: !2635)
!2645 = distinct !DISubprogram(name: "portable_init", scope: !125, file: !125, line: 144, type: !2646, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2654)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2648, !2653, !1020}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_portable", file: !13, line: 195, baseType: !2650)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CORE_PORTABLE_S", file: !13, line: 192, size: 8, elements: !2651)
!2651 = !{!2652}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "portable_id", scope: !2650, file: !13, line: 194, baseType: !64, size: 8)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!2654 = !{!2655, !2656, !2657}
!2655 = !DILocalVariable(name: "p", arg: 1, scope: !2645, file: !125, line: 144, type: !2648)
!2656 = !DILocalVariable(name: "argc", arg: 2, scope: !2645, file: !125, line: 144, type: !2653)
!2657 = !DILocalVariable(name: "argv", arg: 3, scope: !2645, file: !125, line: 144, type: !1020)
!2658 = !DILocation(line: 0, scope: !2645)
!2659 = !DILocation(line: 156, column: 8, scope: !2645)
!2660 = !DILocation(line: 156, column: 20, scope: !2645)
!2661 = !{!332, !296, i64 0}
!2662 = !DILocation(line: 157, column: 1, scope: !2645)
!2663 = distinct !DISubprogram(name: "portable_fini", scope: !125, file: !125, line: 162, type: !2664, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !2648}
!2666 = !{!2667}
!2667 = !DILocalVariable(name: "p", arg: 1, scope: !2663, file: !125, line: 162, type: !2648)
!2668 = !DILocation(line: 0, scope: !2663)
!2669 = !DILocation(line: 164, column: 8, scope: !2663)
!2670 = !DILocation(line: 164, column: 20, scope: !2663)
!2671 = !DILocation(line: 165, column: 1, scope: !2663)
!2672 = distinct !DISubprogram(name: "printf_", scope: !148, file: !148, line: 862, type: !2673, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2677)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!43, !2675, null}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2677 = !{!2678, !2679, !2686, !2688}
!2678 = !DILocalVariable(name: "format", arg: 1, scope: !2672, file: !148, line: 862, type: !2675)
!2679 = !DILocalVariable(name: "va", scope: !2672, file: !148, line: 864, type: !2680)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2681, line: 14, baseType: !2682)
!2681 = !DIFile(filename: "noelle/code/llvm-9.0.1-install/lib/clang/9.0.1/include/stdarg.h", directory: "/home/vkortbeek/devel")
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, line: 864, baseType: !2683)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", file: !158, line: 864, size: 32, elements: !2684)
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2683, file: !158, line: 864, baseType: !19, size: 32)
!2686 = !DILocalVariable(name: "buffer", scope: !2672, file: !148, line: 866, type: !2687)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !1033)
!2688 = !DILocalVariable(name: "ret", scope: !2672, file: !148, line: 867, type: !2689)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2690 = !DILocation(line: 0, scope: !2672)
!2691 = !DILocation(line: 864, column: 3, scope: !2672)
!2692 = !DILocation(line: 864, column: 11, scope: !2672)
!2693 = !DILocation(line: 865, column: 3, scope: !2672)
!2694 = !DILocation(line: 866, column: 3, scope: !2672)
!2695 = !DILocation(line: 866, column: 8, scope: !2672)
!2696 = !DILocation(line: 867, column: 41, scope: !2672)
!2697 = !DILocation(line: 867, column: 19, scope: !2672)
!2698 = !DILocation(line: 868, column: 3, scope: !2672)
!2699 = !DILocation(line: 870, column: 1, scope: !2672)
!2700 = !DILocation(line: 869, column: 3, scope: !2672)
!2701 = distinct !DISubprogram(name: "_out_char", scope: !148, file: !148, line: 149, type: !155, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2702)
!2702 = !{!2703, !2704, !2705, !2706}
!2703 = !DILocalVariable(name: "character", arg: 1, scope: !2701, file: !148, line: 149, type: !67)
!2704 = !DILocalVariable(name: "buffer", arg: 2, scope: !2701, file: !148, line: 149, type: !19)
!2705 = !DILocalVariable(name: "idx", arg: 3, scope: !2701, file: !148, line: 149, type: !151)
!2706 = !DILocalVariable(name: "maxlen", arg: 4, scope: !2701, file: !148, line: 149, type: !151)
!2707 = !DILocation(line: 0, scope: !2701)
!2708 = !DILocation(line: 152, column: 7, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2701, file: !148, line: 152, column: 7)
!2710 = !DILocation(line: 152, column: 7, scope: !2701)
!2711 = !DILocation(line: 153, column: 5, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !148, line: 152, column: 18)
!2713 = !DILocation(line: 154, column: 3, scope: !2712)
!2714 = !DILocation(line: 155, column: 1, scope: !2701)
!2715 = distinct !DISubprogram(name: "_vsnprintf", scope: !148, file: !148, line: 577, type: !2716, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2719)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!43, !153, !66, !2718, !2675, !2680}
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2735, !2741, !2744, !2751, !2756, !2758, !2764, !2766, !2768, !2769}
!2720 = !DILocalVariable(name: "out", arg: 1, scope: !2715, file: !148, line: 577, type: !153)
!2721 = !DILocalVariable(name: "buffer", arg: 2, scope: !2715, file: !148, line: 577, type: !66)
!2722 = !DILocalVariable(name: "maxlen", arg: 3, scope: !2715, file: !148, line: 577, type: !2718)
!2723 = !DILocalVariable(name: "format", arg: 4, scope: !2715, file: !148, line: 577, type: !2675)
!2724 = !DILocalVariable(name: "va", arg: 5, scope: !2715, file: !148, line: 577, type: !2680)
!2725 = !DILocalVariable(name: "flags", scope: !2715, file: !148, line: 579, type: !24)
!2726 = !DILocalVariable(name: "width", scope: !2715, file: !148, line: 579, type: !24)
!2727 = !DILocalVariable(name: "precision", scope: !2715, file: !148, line: 579, type: !24)
!2728 = !DILocalVariable(name: "n", scope: !2715, file: !148, line: 579, type: !24)
!2729 = !DILocalVariable(name: "idx", scope: !2715, file: !148, line: 580, type: !151)
!2730 = !DILocalVariable(name: "w", scope: !2731, file: !148, line: 620, type: !2689)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !148, line: 619, column: 30)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 619, column: 14)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !148, line: 616, column: 9)
!2734 = distinct !DILexicalBlock(scope: !2715, file: !148, line: 588, column: 3)
!2735 = !DILocalVariable(name: "prec", scope: !2736, file: !148, line: 640, type: !2689)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !148, line: 639, column: 32)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !148, line: 639, column: 16)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !148, line: 636, column: 11)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !148, line: 633, column: 25)
!2740 = distinct !DILexicalBlock(scope: !2734, file: !148, line: 633, column: 9)
!2741 = !DILocalVariable(name: "base", scope: !2742, file: !148, line: 692, type: !24)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 690, column: 18)
!2743 = distinct !DILexicalBlock(scope: !2734, file: !148, line: 683, column: 22)
!2744 = !DILocalVariable(name: "value", scope: !2745, file: !148, line: 726, type: !2749)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !148, line: 724, column: 40)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 724, column: 15)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !148, line: 722, column: 51)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 722, column: 13)
!2749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2750)
!2750 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2751 = !DILocalVariable(name: "value", scope: !2752, file: !148, line: 731, type: !2754)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !148, line: 730, column: 40)
!2753 = distinct !DILexicalBlock(scope: !2746, file: !148, line: 730, column: 20)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2755)
!2755 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!2756 = !DILocalVariable(name: "value", scope: !2757, file: !148, line: 735, type: !2689)
!2757 = distinct !DILexicalBlock(scope: !2753, file: !148, line: 734, column: 16)
!2758 = !DILocalVariable(name: "value", scope: !2759, file: !148, line: 750, type: !2763)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !148, line: 749, column: 16)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !148, line: 746, column: 20)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !148, line: 741, column: 15)
!2762 = distinct !DILexicalBlock(scope: !2748, file: !148, line: 739, column: 14)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!2764 = !DILocalVariable(name: "l", scope: !2765, file: !148, line: 777, type: !24)
!2765 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 776, column: 18)
!2766 = !DILocalVariable(name: "p", scope: !2767, file: !148, line: 797, type: !2675)
!2767 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 796, column: 18)
!2768 = !DILocalVariable(name: "l", scope: !2767, file: !148, line: 798, type: !24)
!2769 = !DILocalVariable(name: "is_ll", scope: !2770, file: !148, line: 826, type: !2771)
!2770 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 822, column: 18)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2772 = !DILocation(line: 0, scope: !2715)
!2773 = !DILocation(line: 577, column: 88, scope: !2715)
!2774 = !DILocation(line: 577, column: 104, scope: !2715)
!2775 = !DILocation(line: 582, column: 8, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2715, file: !148, line: 582, column: 7)
!2777 = !DILocation(line: 582, column: 7, scope: !2715)
!2778 = !DILocation(line: 585, column: 3, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !148, line: 582, column: 16)
!2780 = !DILocation(line: 587, column: 3, scope: !2715)
!2781 = !DILocation(line: 587, column: 11, scope: !2715)
!2782 = !DILocation(line: 587, column: 10, scope: !2715)
!2783 = !DILocation(line: 590, column: 10, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2734, file: !148, line: 590, column: 9)
!2785 = !DILocation(line: 590, column: 9, scope: !2784)
!2786 = !DILocation(line: 590, column: 17, scope: !2784)
!2787 = !DILocation(line: 590, column: 9, scope: !2734)
!2788 = !DILocation(line: 592, column: 12, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2784, file: !148, line: 590, column: 25)
!2790 = !DILocation(line: 592, column: 11, scope: !2789)
!2791 = !DILocation(line: 592, column: 31, scope: !2789)
!2792 = !DILocation(line: 592, column: 7, scope: !2789)
!2793 = !DILocation(line: 593, column: 13, scope: !2789)
!2794 = !DILocation(line: 594, column: 7, scope: !2789)
!2795 = distinct !{!2795, !2780, !2796}
!2796 = !DILocation(line: 850, column: 3, scope: !2715)
!2797 = !DILocation(line: 598, column: 13, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2784, file: !148, line: 596, column: 10)
!2799 = !DILocation(line: 603, column: 5, scope: !2734)
!2800 = !DILocation(line: 602, column: 11, scope: !2734)
!2801 = !DILocation(line: 604, column: 16, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2734, file: !148, line: 603, column: 8)
!2803 = !DILocation(line: 604, column: 15, scope: !2802)
!2804 = !DILocation(line: 605, column: 25, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !148, line: 604, column: 24)
!2806 = !DILocation(line: 605, column: 49, scope: !2805)
!2807 = !DILocation(line: 605, column: 61, scope: !2805)
!2808 = !DILocation(line: 606, column: 25, scope: !2805)
!2809 = !DILocation(line: 606, column: 49, scope: !2805)
!2810 = !DILocation(line: 606, column: 61, scope: !2805)
!2811 = !DILocation(line: 607, column: 25, scope: !2805)
!2812 = !DILocation(line: 607, column: 49, scope: !2805)
!2813 = !DILocation(line: 607, column: 61, scope: !2805)
!2814 = !DILocation(line: 608, column: 25, scope: !2805)
!2815 = !DILocation(line: 608, column: 49, scope: !2805)
!2816 = !DILocation(line: 608, column: 61, scope: !2805)
!2817 = !DILocation(line: 609, column: 25, scope: !2805)
!2818 = !DILocation(line: 609, column: 49, scope: !2805)
!2819 = !DILocation(line: 609, column: 61, scope: !2805)
!2820 = !DILocation(line: 610, column: 61, scope: !2805)
!2821 = !DILocation(line: 0, scope: !2805)
!2822 = !DILocation(line: 0, scope: !2734)
!2823 = !DILocation(line: 612, column: 5, scope: !2802)
!2824 = distinct !{!2824, !2799, !2825}
!2825 = !DILocation(line: 612, column: 15, scope: !2734)
!2826 = !DILocation(line: 616, column: 20, scope: !2733)
!2827 = !DILocation(line: 616, column: 19, scope: !2733)
!2828 = !DILocation(line: 616, column: 9, scope: !2733)
!2829 = !DILocation(line: 616, column: 9, scope: !2734)
!2830 = !DILocation(line: 617, column: 15, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 616, column: 29)
!2832 = !DILocation(line: 618, column: 5, scope: !2831)
!2833 = !DILocation(line: 619, column: 15, scope: !2732)
!2834 = !DILocation(line: 619, column: 14, scope: !2732)
!2835 = !DILocation(line: 619, column: 22, scope: !2732)
!2836 = !DILocation(line: 619, column: 14, scope: !2733)
!2837 = !DILocation(line: 620, column: 21, scope: !2731)
!2838 = !DILocation(line: 0, scope: !2731)
!2839 = !DILocation(line: 621, column: 13, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2731, file: !148, line: 621, column: 11)
!2841 = !DILocation(line: 621, column: 11, scope: !2731)
!2842 = !DILocation(line: 622, column: 15, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2840, file: !148, line: 621, column: 18)
!2844 = !DILocation(line: 623, column: 31, scope: !2843)
!2845 = !DILocation(line: 624, column: 7, scope: !2843)
!2846 = !DILocation(line: 0, scope: !2840)
!2847 = !DILocation(line: 628, column: 13, scope: !2731)
!2848 = !DILocation(line: 629, column: 5, scope: !2731)
!2849 = !DILocation(line: 0, scope: !2733)
!2850 = !DILocation(line: 633, column: 10, scope: !2740)
!2851 = !DILocation(line: 633, column: 9, scope: !2740)
!2852 = !DILocation(line: 633, column: 17, scope: !2740)
!2853 = !DILocation(line: 633, column: 9, scope: !2734)
!2854 = !DILocation(line: 634, column: 13, scope: !2739)
!2855 = !DILocation(line: 635, column: 13, scope: !2739)
!2856 = !DILocation(line: 636, column: 22, scope: !2738)
!2857 = !DILocation(line: 636, column: 21, scope: !2738)
!2858 = !DILocation(line: 636, column: 11, scope: !2738)
!2859 = !DILocation(line: 636, column: 11, scope: !2739)
!2860 = !DILocation(line: 637, column: 21, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2738, file: !148, line: 636, column: 31)
!2862 = !DILocation(line: 638, column: 7, scope: !2861)
!2863 = !DILocation(line: 639, column: 17, scope: !2737)
!2864 = !DILocation(line: 639, column: 16, scope: !2737)
!2865 = !DILocation(line: 639, column: 24, scope: !2737)
!2866 = !DILocation(line: 639, column: 16, scope: !2738)
!2867 = !DILocation(line: 640, column: 31, scope: !2736)
!2868 = !DILocation(line: 0, scope: !2736)
!2869 = !DILocation(line: 641, column: 26, scope: !2736)
!2870 = !DILocation(line: 641, column: 21, scope: !2736)
!2871 = !DILocation(line: 642, column: 15, scope: !2736)
!2872 = !DILocation(line: 643, column: 7, scope: !2736)
!2873 = !DILocation(line: 0, scope: !2738)
!2874 = !DILocation(line: 644, column: 5, scope: !2739)
!2875 = !DILocation(line: 647, column: 14, scope: !2734)
!2876 = !DILocation(line: 647, column: 13, scope: !2734)
!2877 = !DILocation(line: 649, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2734, file: !148, line: 647, column: 22)
!2879 = !DILocation(line: 650, column: 15, scope: !2878)
!2880 = !DILocation(line: 651, column: 14, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !148, line: 651, column: 13)
!2882 = !DILocation(line: 651, column: 13, scope: !2881)
!2883 = !DILocation(line: 651, column: 21, scope: !2881)
!2884 = !DILocation(line: 651, column: 13, scope: !2878)
!2885 = !DILocation(line: 652, column: 17, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2881, file: !148, line: 651, column: 29)
!2887 = !DILocation(line: 653, column: 17, scope: !2886)
!2888 = !DILocation(line: 654, column: 9, scope: !2886)
!2889 = !DILocation(line: 0, scope: !2878)
!2890 = !DILocation(line: 655, column: 9, scope: !2878)
!2891 = !DILocation(line: 657, column: 15, scope: !2878)
!2892 = !DILocation(line: 658, column: 15, scope: !2878)
!2893 = !DILocation(line: 659, column: 14, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2878, file: !148, line: 659, column: 13)
!2895 = !DILocation(line: 659, column: 13, scope: !2894)
!2896 = !DILocation(line: 659, column: 21, scope: !2894)
!2897 = !DILocation(line: 659, column: 13, scope: !2878)
!2898 = !DILocation(line: 660, column: 17, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2894, file: !148, line: 659, column: 29)
!2900 = !DILocation(line: 661, column: 17, scope: !2899)
!2901 = !DILocation(line: 662, column: 9, scope: !2899)
!2902 = !DILocation(line: 663, column: 9, scope: !2878)
!2903 = !DILocation(line: 666, column: 15, scope: !2878)
!2904 = !DILocation(line: 667, column: 15, scope: !2878)
!2905 = !DILocation(line: 668, column: 9, scope: !2878)
!2906 = !DILocation(line: 671, column: 15, scope: !2878)
!2907 = !DILocation(line: 672, column: 15, scope: !2878)
!2908 = !DILocation(line: 673, column: 9, scope: !2878)
!2909 = !DILocation(line: 675, column: 15, scope: !2878)
!2910 = !DILocation(line: 676, column: 15, scope: !2878)
!2911 = !DILocation(line: 677, column: 9, scope: !2878)
!2912 = !DILocation(line: 679, column: 9, scope: !2878)
!2913 = !DILocation(line: 683, column: 14, scope: !2734)
!2914 = !DILocation(line: 683, column: 13, scope: !2734)
!2915 = !DILocation(line: 693, column: 14, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 693, column: 13)
!2917 = !DILocation(line: 693, column: 13, scope: !2916)
!2918 = !DILocation(line: 693, column: 21, scope: !2916)
!2919 = !DILocation(line: 693, column: 28, scope: !2916)
!2920 = !DILocation(line: 693, column: 32, scope: !2916)
!2921 = !DILocation(line: 693, column: 31, scope: !2916)
!2922 = !DILocation(line: 693, column: 39, scope: !2916)
!2923 = !DILocation(line: 693, column: 13, scope: !2742)
!2924 = !DILocation(line: 0, scope: !2742)
!2925 = !DILocation(line: 695, column: 9, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2916, file: !148, line: 693, column: 47)
!2927 = !DILocation(line: 696, column: 19, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2916, file: !148, line: 696, column: 18)
!2929 = !DILocation(line: 696, column: 18, scope: !2928)
!2930 = !DILocation(line: 696, column: 26, scope: !2928)
!2931 = !DILocation(line: 696, column: 18, scope: !2916)
!2932 = !DILocation(line: 698, column: 9, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2928, file: !148, line: 696, column: 34)
!2934 = !DILocation(line: 699, column: 19, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2928, file: !148, line: 699, column: 18)
!2936 = !DILocation(line: 699, column: 18, scope: !2935)
!2937 = !DILocation(line: 699, column: 26, scope: !2935)
!2938 = !DILocation(line: 699, column: 18, scope: !2928)
!2939 = !DILocation(line: 701, column: 9, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2935, file: !148, line: 699, column: 34)
!2941 = !DILocation(line: 704, column: 17, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2935, file: !148, line: 702, column: 14)
!2943 = !DILocation(line: 0, scope: !2935)
!2944 = !DILocation(line: 0, scope: !2928)
!2945 = !DILocation(line: 0, scope: !2916)
!2946 = !DILocation(line: 707, column: 14, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 707, column: 13)
!2948 = !DILocation(line: 707, column: 13, scope: !2947)
!2949 = !DILocation(line: 707, column: 21, scope: !2947)
!2950 = !DILocation(line: 707, column: 13, scope: !2742)
!2951 = !DILocation(line: 708, column: 17, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2947, file: !148, line: 707, column: 29)
!2953 = !DILocation(line: 709, column: 9, scope: !2952)
!2954 = !DILocation(line: 712, column: 15, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 712, column: 13)
!2956 = !DILocation(line: 712, column: 14, scope: !2955)
!2957 = !DILocation(line: 712, column: 22, scope: !2955)
!2958 = !DILocation(line: 712, column: 30, scope: !2955)
!2959 = !DILocation(line: 712, column: 35, scope: !2955)
!2960 = !DILocation(line: 712, column: 34, scope: !2955)
!2961 = !DILocation(line: 712, column: 42, scope: !2955)
!2962 = !DILocation(line: 712, column: 13, scope: !2742)
!2963 = !DILocation(line: 713, column: 17, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2955, file: !148, line: 712, column: 51)
!2965 = !DILocation(line: 714, column: 9, scope: !2964)
!2966 = !DILocation(line: 717, column: 19, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 717, column: 13)
!2968 = !DILocation(line: 717, column: 13, scope: !2742)
!2969 = !DILocation(line: 718, column: 17, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !148, line: 717, column: 38)
!2971 = !DILocation(line: 719, column: 9, scope: !2970)
!2972 = !DILocation(line: 722, column: 15, scope: !2748)
!2973 = !DILocation(line: 722, column: 14, scope: !2748)
!2974 = !DILocation(line: 722, column: 22, scope: !2748)
!2975 = !DILocation(line: 722, column: 30, scope: !2748)
!2976 = !DILocation(line: 722, column: 35, scope: !2748)
!2977 = !DILocation(line: 722, column: 34, scope: !2748)
!2978 = !DILocation(line: 722, column: 42, scope: !2748)
!2979 = !DILocation(line: 722, column: 13, scope: !2742)
!2980 = !DILocation(line: 724, column: 21, scope: !2746)
!2981 = !DILocation(line: 724, column: 15, scope: !2747)
!2982 = !DILocation(line: 726, column: 37, scope: !2745)
!2983 = !DILocation(line: 0, scope: !2745)
!2984 = !DILocation(line: 727, column: 88, scope: !2745)
!2985 = !DILocation(line: 727, column: 82, scope: !2745)
!2986 = !DILocation(line: 727, column: 104, scope: !2745)
!2987 = !DILocation(line: 727, column: 120, scope: !2745)
!2988 = !DILocation(line: 727, column: 125, scope: !2745)
!2989 = !DILocation(line: 727, column: 19, scope: !2745)
!2990 = !DILocation(line: 729, column: 11, scope: !2745)
!2991 = !DILocation(line: 730, column: 26, scope: !2753)
!2992 = !DILocation(line: 730, column: 20, scope: !2746)
!2993 = !DILocation(line: 731, column: 32, scope: !2752)
!2994 = !DILocation(line: 0, scope: !2752)
!2995 = !DILocation(line: 732, column: 78, scope: !2752)
!2996 = !DILocation(line: 732, column: 72, scope: !2752)
!2997 = !DILocation(line: 732, column: 94, scope: !2752)
!2998 = !DILocation(line: 732, column: 110, scope: !2752)
!2999 = !DILocation(line: 732, column: 19, scope: !2752)
!3000 = !DILocation(line: 733, column: 11, scope: !2752)
!3001 = !DILocation(line: 735, column: 38, scope: !2757)
!3002 = !DILocation(line: 735, column: 31, scope: !2757)
!3003 = !DILocation(line: 735, column: 60, scope: !2757)
!3004 = !DILocation(line: 735, column: 54, scope: !2757)
!3005 = !DILocation(line: 735, column: 85, scope: !2757)
!3006 = !DILocation(line: 735, column: 78, scope: !2757)
!3007 = !DILocation(line: 735, column: 113, scope: !2757)
!3008 = !DILocation(line: 735, column: 102, scope: !2757)
!3009 = !DILocation(line: 735, column: 131, scope: !2757)
!3010 = !DILocation(line: 0, scope: !2757)
!3011 = !DILocation(line: 736, column: 77, scope: !2757)
!3012 = !DILocation(line: 736, column: 71, scope: !2757)
!3013 = !DILocation(line: 736, column: 93, scope: !2757)
!3014 = !DILocation(line: 736, column: 109, scope: !2757)
!3015 = !DILocation(line: 736, column: 19, scope: !2757)
!3016 = !DILocation(line: 0, scope: !2753)
!3017 = !DILocation(line: 0, scope: !2746)
!3018 = !DILocation(line: 738, column: 9, scope: !2747)
!3019 = !DILocation(line: 741, column: 21, scope: !2761)
!3020 = !DILocation(line: 741, column: 15, scope: !2762)
!3021 = !DILocation(line: 743, column: 61, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2761, file: !148, line: 741, column: 40)
!3023 = !DILocation(line: 743, column: 100, scope: !3022)
!3024 = !DILocation(line: 743, column: 19, scope: !3022)
!3025 = !DILocation(line: 745, column: 11, scope: !3022)
!3026 = !DILocation(line: 746, column: 26, scope: !2760)
!3027 = !DILocation(line: 746, column: 20, scope: !2761)
!3028 = !DILocation(line: 747, column: 56, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2760, file: !148, line: 746, column: 40)
!3030 = !DILocation(line: 747, column: 19, scope: !3029)
!3031 = !DILocation(line: 748, column: 11, scope: !3029)
!3032 = !DILocation(line: 750, column: 47, scope: !2759)
!3033 = !DILocation(line: 750, column: 40, scope: !2759)
!3034 = !DILocation(line: 750, column: 78, scope: !2759)
!3035 = !DILocation(line: 750, column: 63, scope: !2759)
!3036 = !DILocation(line: 750, column: 112, scope: !2759)
!3037 = !DILocation(line: 750, column: 105, scope: !2759)
!3038 = !DILocation(line: 750, column: 149, scope: !2759)
!3039 = !DILocation(line: 750, column: 129, scope: !2759)
!3040 = !DILocation(line: 750, column: 176, scope: !2759)
!3041 = !DILocation(line: 0, scope: !2759)
!3042 = !DILocation(line: 751, column: 19, scope: !2759)
!3043 = !DILocation(line: 0, scope: !2760)
!3044 = !DILocation(line: 0, scope: !2761)
!3045 = !DILocation(line: 0, scope: !2748)
!3046 = !DILocation(line: 754, column: 15, scope: !2742)
!3047 = !DILocation(line: 760, column: 14, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 760, column: 13)
!3049 = !DILocation(line: 760, column: 13, scope: !3048)
!3050 = !DILocation(line: 760, column: 21, scope: !3048)
!3051 = !DILocation(line: 760, column: 13, scope: !2743)
!3052 = !DILocation(line: 760, column: 35, scope: !3048)
!3053 = !DILocation(line: 760, column: 29, scope: !3048)
!3054 = !DILocation(line: 761, column: 47, scope: !2743)
!3055 = !DILocation(line: 761, column: 15, scope: !2743)
!3056 = !DILocation(line: 762, column: 15, scope: !2743)
!3057 = !DILocation(line: 763, column: 9, scope: !2743)
!3058 = !DILocation(line: 769, column: 15, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 769, column: 13)
!3060 = !DILocation(line: 769, column: 14, scope: !3059)
!3061 = !DILocation(line: 769, column: 22, scope: !3059)
!3062 = !DILocation(line: 769, column: 29, scope: !3059)
!3063 = !DILocation(line: 769, column: 33, scope: !3059)
!3064 = !DILocation(line: 769, column: 32, scope: !3059)
!3065 = !DILocation(line: 769, column: 40, scope: !3059)
!3066 = !DILocation(line: 769, column: 13, scope: !2743)
!3067 = !DILocation(line: 769, column: 55, scope: !3059)
!3068 = !DILocation(line: 769, column: 49, scope: !3059)
!3069 = !DILocation(line: 770, column: 15, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 770, column: 13)
!3071 = !DILocation(line: 770, column: 14, scope: !3070)
!3072 = !DILocation(line: 770, column: 22, scope: !3070)
!3073 = !DILocation(line: 770, column: 29, scope: !3070)
!3074 = !DILocation(line: 770, column: 33, scope: !3070)
!3075 = !DILocation(line: 770, column: 32, scope: !3070)
!3076 = !DILocation(line: 770, column: 40, scope: !3070)
!3077 = !DILocation(line: 770, column: 13, scope: !2743)
!3078 = !DILocation(line: 770, column: 55, scope: !3070)
!3079 = !DILocation(line: 770, column: 49, scope: !3070)
!3080 = !DILocation(line: 0, scope: !2743)
!3081 = !DILocation(line: 771, column: 47, scope: !2743)
!3082 = !DILocation(line: 771, column: 15, scope: !2743)
!3083 = !DILocation(line: 772, column: 15, scope: !2743)
!3084 = !DILocation(line: 773, column: 9, scope: !2743)
!3085 = !DILocation(line: 0, scope: !2765)
!3086 = !DILocation(line: 779, column: 21, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !2765, file: !148, line: 779, column: 13)
!3088 = !DILocation(line: 779, column: 13, scope: !2765)
!3089 = !DILocation(line: 780, column: 11, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !148, line: 779, column: 36)
!3091 = !DILocation(line: 780, column: 19, scope: !3090)
!3092 = !DILocation(line: 780, column: 22, scope: !3090)
!3093 = !DILocation(line: 781, column: 33, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3090, file: !148, line: 780, column: 31)
!3095 = !DILocation(line: 781, column: 13, scope: !3094)
!3096 = distinct !{!3096, !3089, !3097}
!3097 = !DILocation(line: 782, column: 11, scope: !3090)
!3098 = !DILocation(line: 783, column: 9, scope: !3090)
!3099 = !DILocation(line: 580, column: 10, scope: !2715)
!3100 = !DILocation(line: 785, column: 19, scope: !2765)
!3101 = !DILocation(line: 785, column: 13, scope: !2765)
!3102 = !DILocation(line: 785, column: 47, scope: !2765)
!3103 = !DILocation(line: 785, column: 9, scope: !2765)
!3104 = !DILocation(line: 787, column: 19, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2765, file: !148, line: 787, column: 13)
!3106 = !DILocation(line: 787, column: 13, scope: !2765)
!3107 = !DILocation(line: 788, column: 11, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3105, file: !148, line: 787, column: 33)
!3109 = !DILocation(line: 788, column: 19, scope: !3108)
!3110 = !DILocation(line: 788, column: 22, scope: !3108)
!3111 = !DILocation(line: 789, column: 33, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3108, file: !148, line: 788, column: 31)
!3113 = !DILocation(line: 789, column: 13, scope: !3112)
!3114 = distinct !{!3114, !3107, !3115}
!3115 = !DILocation(line: 790, column: 11, scope: !3108)
!3116 = !DILocation(line: 791, column: 9, scope: !3108)
!3117 = !DILocation(line: 792, column: 15, scope: !2765)
!3118 = !DILocation(line: 797, column: 25, scope: !2767)
!3119 = !DILocation(line: 0, scope: !2767)
!3120 = !DILocation(line: 798, column: 40, scope: !2767)
!3121 = !DILocation(line: 798, column: 26, scope: !2767)
!3122 = !DILocation(line: 800, column: 19, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !2767, file: !148, line: 800, column: 13)
!3124 = !DILocation(line: 800, column: 13, scope: !2767)
!3125 = !DILocation(line: 801, column: 18, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !148, line: 800, column: 38)
!3127 = !DILocation(line: 801, column: 16, scope: !3126)
!3128 = !DILocation(line: 802, column: 9, scope: !3126)
!3129 = !DILocation(line: 803, column: 21, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !2767, file: !148, line: 803, column: 13)
!3131 = !DILocation(line: 803, column: 13, scope: !2767)
!3132 = !DILocation(line: 804, column: 11, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3130, file: !148, line: 803, column: 36)
!3134 = !DILocation(line: 804, column: 19, scope: !3133)
!3135 = !DILocation(line: 804, column: 22, scope: !3133)
!3136 = !DILocation(line: 805, column: 33, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3133, file: !148, line: 804, column: 31)
!3138 = !DILocation(line: 805, column: 13, scope: !3137)
!3139 = distinct !{!3139, !3132, !3140}
!3140 = !DILocation(line: 806, column: 11, scope: !3133)
!3141 = !DILocation(line: 807, column: 9, scope: !3133)
!3142 = !DILocation(line: 809, column: 9, scope: !2767)
!3143 = !DILocation(line: 809, column: 17, scope: !2767)
!3144 = !DILocation(line: 809, column: 20, scope: !2767)
!3145 = !DILocation(line: 809, column: 26, scope: !2767)
!3146 = !DILocation(line: 809, column: 38, scope: !2767)
!3147 = !DILocation(line: 809, column: 57, scope: !2767)
!3148 = !DILocation(line: 809, column: 69, scope: !2767)
!3149 = !DILocation(line: 810, column: 18, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !2767, file: !148, line: 809, column: 74)
!3151 = !DILocation(line: 810, column: 15, scope: !3150)
!3152 = !DILocation(line: 810, column: 34, scope: !3150)
!3153 = !DILocation(line: 810, column: 11, scope: !3150)
!3154 = distinct !{!3154, !3142, !3155}
!3155 = !DILocation(line: 811, column: 9, scope: !2767)
!3156 = !DILocation(line: 813, column: 19, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !2767, file: !148, line: 813, column: 13)
!3158 = !DILocation(line: 813, column: 13, scope: !2767)
!3159 = !DILocation(line: 814, column: 11, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3157, file: !148, line: 813, column: 33)
!3161 = !DILocation(line: 814, column: 19, scope: !3160)
!3162 = !DILocation(line: 814, column: 22, scope: !3160)
!3163 = !DILocation(line: 815, column: 33, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3160, file: !148, line: 814, column: 31)
!3165 = !DILocation(line: 815, column: 13, scope: !3164)
!3166 = distinct !{!3166, !3159, !3167}
!3167 = !DILocation(line: 816, column: 11, scope: !3160)
!3168 = !DILocation(line: 817, column: 9, scope: !3160)
!3169 = !DILocation(line: 818, column: 15, scope: !2767)
!3170 = !DILocation(line: 824, column: 15, scope: !2770)
!3171 = !DILocation(line: 0, scope: !2770)
!3172 = !DILocation(line: 832, column: 81, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !148, line: 830, column: 14)
!3174 = distinct !DILexicalBlock(scope: !2770, file: !148, line: 827, column: 13)
!3175 = !DILocation(line: 832, column: 70, scope: !3173)
!3176 = !DILocation(line: 832, column: 17, scope: !3173)
!3177 = !DILocation(line: 836, column: 15, scope: !2770)
!3178 = !DILocation(line: 841, column: 29, scope: !2743)
!3179 = !DILocation(line: 841, column: 9, scope: !2743)
!3180 = !DILocation(line: 842, column: 15, scope: !2743)
!3181 = !DILocation(line: 843, column: 9, scope: !2743)
!3182 = !DILocation(line: 846, column: 14, scope: !2743)
!3183 = !DILocation(line: 846, column: 13, scope: !2743)
!3184 = !DILocation(line: 846, column: 33, scope: !2743)
!3185 = !DILocation(line: 846, column: 9, scope: !2743)
!3186 = !DILocation(line: 847, column: 15, scope: !2743)
!3187 = !DILocation(line: 848, column: 9, scope: !2743)
!3188 = !DILocation(line: 853, column: 28, scope: !2715)
!3189 = !DILocation(line: 853, column: 24, scope: !2715)
!3190 = !DILocation(line: 853, column: 52, scope: !2715)
!3191 = !DILocation(line: 853, column: 3, scope: !2715)
!3192 = !DILocation(line: 856, column: 3, scope: !2715)
!3193 = distinct !DISubprogram(name: "_out_null", scope: !148, file: !148, line: 142, type: !155, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3194)
!3194 = !{!3195, !3196, !3197, !3198}
!3195 = !DILocalVariable(name: "character", arg: 1, scope: !3193, file: !148, line: 142, type: !67)
!3196 = !DILocalVariable(name: "buffer", arg: 2, scope: !3193, file: !148, line: 142, type: !19)
!3197 = !DILocalVariable(name: "idx", arg: 3, scope: !3193, file: !148, line: 142, type: !151)
!3198 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3193, file: !148, line: 142, type: !151)
!3199 = !DILocation(line: 0, scope: !3193)
!3200 = !DILocation(line: 145, column: 1, scope: !3193)
!3201 = distinct !DISubprogram(name: "_is_digit", scope: !148, file: !148, line: 181, type: !3202, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!188, !67}
!3204 = !{!3205}
!3205 = !DILocalVariable(name: "ch", arg: 1, scope: !3201, file: !148, line: 181, type: !67)
!3206 = !DILocation(line: 0, scope: !3201)
!3207 = !DILocation(line: 183, column: 11, scope: !3201)
!3208 = !DILocation(line: 183, column: 14, scope: !3201)
!3209 = !DILocation(line: 183, column: 22, scope: !3201)
!3210 = !DILocation(line: 183, column: 26, scope: !3201)
!3211 = !DILocation(line: 183, column: 29, scope: !3201)
!3212 = !DILocation(line: 183, column: 3, scope: !3201)
!3213 = distinct !DISubprogram(name: "_atoi", scope: !148, file: !148, line: 188, type: !3214, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3217)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!24, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 32)
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "str", arg: 1, scope: !3213, file: !148, line: 188, type: !3216)
!3219 = !DILocalVariable(name: "i", scope: !3213, file: !148, line: 190, type: !24)
!3220 = !DILocation(line: 0, scope: !3213)
!3221 = !DILocation(line: 191, column: 3, scope: !3213)
!3222 = !DILocation(line: 191, column: 21, scope: !3213)
!3223 = !DILocation(line: 191, column: 20, scope: !3213)
!3224 = !DILocation(line: 191, column: 10, scope: !3213)
!3225 = !DILocation(line: 192, column: 11, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3213, file: !148, line: 191, column: 28)
!3227 = !DILocation(line: 192, column: 42, scope: !3226)
!3228 = !DILocation(line: 192, column: 34, scope: !3226)
!3229 = !DILocation(line: 192, column: 46, scope: !3226)
!3230 = !DILocation(line: 192, column: 17, scope: !3226)
!3231 = distinct !{!3231, !3221, !3232}
!3232 = !DILocation(line: 193, column: 3, scope: !3213)
!3233 = !DILocation(line: 194, column: 3, scope: !3213)
!3234 = distinct !DISubprogram(name: "_ntoa_long_long", scope: !148, file: !148, line: 306, type: !3235, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!151, !153, !66, !151, !151, !140, !188, !140, !24, !24, !24}
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3238 = !DILocalVariable(name: "out", arg: 1, scope: !3234, file: !148, line: 306, type: !153)
!3239 = !DILocalVariable(name: "buffer", arg: 2, scope: !3234, file: !148, line: 306, type: !66)
!3240 = !DILocalVariable(name: "idx", arg: 3, scope: !3234, file: !148, line: 306, type: !151)
!3241 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3234, file: !148, line: 306, type: !151)
!3242 = !DILocalVariable(name: "value", arg: 5, scope: !3234, file: !148, line: 306, type: !140)
!3243 = !DILocalVariable(name: "negative", arg: 6, scope: !3234, file: !148, line: 306, type: !188)
!3244 = !DILocalVariable(name: "base", arg: 7, scope: !3234, file: !148, line: 306, type: !140)
!3245 = !DILocalVariable(name: "prec", arg: 8, scope: !3234, file: !148, line: 306, type: !24)
!3246 = !DILocalVariable(name: "width", arg: 9, scope: !3234, file: !148, line: 306, type: !24)
!3247 = !DILocalVariable(name: "flags", arg: 10, scope: !3234, file: !148, line: 306, type: !24)
!3248 = !DILocalVariable(name: "buf", scope: !3234, file: !148, line: 308, type: !182)
!3249 = !DILocalVariable(name: "len", scope: !3234, file: !148, line: 309, type: !151)
!3250 = !DILocalVariable(name: "digit", scope: !3251, file: !148, line: 319, type: !2676)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !148, line: 318, column: 8)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !148, line: 317, column: 44)
!3253 = distinct !DILexicalBlock(scope: !3234, file: !148, line: 317, column: 7)
!3254 = !DILocation(line: 0, scope: !3234)
!3255 = !DILocation(line: 308, column: 3, scope: !3234)
!3256 = !DILocation(line: 308, column: 8, scope: !3234)
!3257 = !DILocation(line: 312, column: 8, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3234, file: !148, line: 312, column: 7)
!3259 = !DILocation(line: 312, column: 7, scope: !3234)
!3260 = !DILocation(line: 313, column: 11, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !148, line: 312, column: 15)
!3262 = !DILocation(line: 314, column: 3, scope: !3261)
!3263 = !DILocation(line: 317, column: 15, scope: !3253)
!3264 = !DILocation(line: 317, column: 34, scope: !3253)
!3265 = !DILocation(line: 317, column: 37, scope: !3253)
!3266 = !DILocation(line: 317, column: 7, scope: !3234)
!3267 = !DILocation(line: 318, column: 5, scope: !3252)
!3268 = !DILocation(line: 319, column: 39, scope: !3251)
!3269 = !DILocation(line: 319, column: 26, scope: !3251)
!3270 = !DILocation(line: 0, scope: !3251)
!3271 = !DILocation(line: 320, column: 20, scope: !3251)
!3272 = !DILocation(line: 320, column: 26, scope: !3251)
!3273 = !DILocation(line: 320, column: 39, scope: !3251)
!3274 = !DILocation(line: 320, column: 37, scope: !3251)
!3275 = !DILocation(line: 320, column: 54, scope: !3251)
!3276 = !DILocation(line: 320, column: 48, scope: !3251)
!3277 = !DILocation(line: 320, column: 87, scope: !3251)
!3278 = !DILocation(line: 320, column: 85, scope: !3251)
!3279 = !DILocation(line: 320, column: 93, scope: !3251)
!3280 = !DILocation(line: 320, column: 14, scope: !3251)
!3281 = !DILocation(line: 320, column: 7, scope: !3251)
!3282 = !DILocation(line: 320, column: 18, scope: !3251)
!3283 = !DILocation(line: 321, column: 13, scope: !3251)
!3284 = !DILocation(line: 322, column: 5, scope: !3251)
!3285 = !DILocation(line: 322, column: 14, scope: !3252)
!3286 = !DILocation(line: 322, column: 20, scope: !3252)
!3287 = !DILocation(line: 322, column: 28, scope: !3252)
!3288 = !DILocation(line: 0, scope: !3252)
!3289 = distinct !{!3289, !3267, !3290}
!3290 = !DILocation(line: 322, column: 54, scope: !3252)
!3291 = !DILocation(line: 323, column: 3, scope: !3252)
!3292 = !DILocation(line: 325, column: 49, scope: !3234)
!3293 = !DILocation(line: 325, column: 59, scope: !3234)
!3294 = !DILocation(line: 325, column: 69, scope: !3234)
!3295 = !DILocation(line: 325, column: 10, scope: !3234)
!3296 = !DILocation(line: 326, column: 1, scope: !3234)
!3297 = !DILocation(line: 325, column: 3, scope: !3234)
!3298 = distinct !DISubprogram(name: "_ntoa_long", scope: !148, file: !148, line: 281, type: !3299, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!151, !153, !66, !151, !151, !70, !188, !70, !24, !24, !24}
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3302 = !DILocalVariable(name: "out", arg: 1, scope: !3298, file: !148, line: 281, type: !153)
!3303 = !DILocalVariable(name: "buffer", arg: 2, scope: !3298, file: !148, line: 281, type: !66)
!3304 = !DILocalVariable(name: "idx", arg: 3, scope: !3298, file: !148, line: 281, type: !151)
!3305 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3298, file: !148, line: 281, type: !151)
!3306 = !DILocalVariable(name: "value", arg: 5, scope: !3298, file: !148, line: 281, type: !70)
!3307 = !DILocalVariable(name: "negative", arg: 6, scope: !3298, file: !148, line: 281, type: !188)
!3308 = !DILocalVariable(name: "base", arg: 7, scope: !3298, file: !148, line: 281, type: !70)
!3309 = !DILocalVariable(name: "prec", arg: 8, scope: !3298, file: !148, line: 281, type: !24)
!3310 = !DILocalVariable(name: "width", arg: 9, scope: !3298, file: !148, line: 281, type: !24)
!3311 = !DILocalVariable(name: "flags", arg: 10, scope: !3298, file: !148, line: 281, type: !24)
!3312 = !DILocalVariable(name: "buf", scope: !3298, file: !148, line: 283, type: !182)
!3313 = !DILocalVariable(name: "len", scope: !3298, file: !148, line: 284, type: !151)
!3314 = !DILocalVariable(name: "digit", scope: !3315, file: !148, line: 294, type: !2676)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !148, line: 293, column: 8)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !148, line: 292, column: 44)
!3317 = distinct !DILexicalBlock(scope: !3298, file: !148, line: 292, column: 7)
!3318 = !DILocation(line: 0, scope: !3298)
!3319 = !DILocation(line: 283, column: 3, scope: !3298)
!3320 = !DILocation(line: 283, column: 8, scope: !3298)
!3321 = !DILocation(line: 287, column: 8, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3298, file: !148, line: 287, column: 7)
!3323 = !DILocation(line: 287, column: 7, scope: !3298)
!3324 = !DILocation(line: 288, column: 11, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3322, file: !148, line: 287, column: 15)
!3326 = !DILocation(line: 289, column: 3, scope: !3325)
!3327 = !DILocation(line: 292, column: 15, scope: !3317)
!3328 = !DILocation(line: 292, column: 34, scope: !3317)
!3329 = !DILocation(line: 292, column: 37, scope: !3317)
!3330 = !DILocation(line: 292, column: 7, scope: !3298)
!3331 = !DILocation(line: 293, column: 5, scope: !3316)
!3332 = !DILocation(line: 294, column: 39, scope: !3315)
!3333 = !DILocation(line: 294, column: 26, scope: !3315)
!3334 = !DILocation(line: 0, scope: !3315)
!3335 = !DILocation(line: 295, column: 20, scope: !3315)
!3336 = !DILocation(line: 295, column: 26, scope: !3315)
!3337 = !DILocation(line: 295, column: 39, scope: !3315)
!3338 = !DILocation(line: 295, column: 37, scope: !3315)
!3339 = !DILocation(line: 295, column: 54, scope: !3315)
!3340 = !DILocation(line: 295, column: 48, scope: !3315)
!3341 = !DILocation(line: 295, column: 87, scope: !3315)
!3342 = !DILocation(line: 295, column: 85, scope: !3315)
!3343 = !DILocation(line: 295, column: 93, scope: !3315)
!3344 = !DILocation(line: 295, column: 14, scope: !3315)
!3345 = !DILocation(line: 295, column: 7, scope: !3315)
!3346 = !DILocation(line: 295, column: 18, scope: !3315)
!3347 = !DILocation(line: 296, column: 13, scope: !3315)
!3348 = !DILocation(line: 297, column: 5, scope: !3315)
!3349 = !DILocation(line: 297, column: 14, scope: !3316)
!3350 = !DILocation(line: 297, column: 20, scope: !3316)
!3351 = !DILocation(line: 297, column: 28, scope: !3316)
!3352 = !DILocation(line: 0, scope: !3316)
!3353 = distinct !{!3353, !3331, !3354}
!3354 = !DILocation(line: 297, column: 54, scope: !3316)
!3355 = !DILocation(line: 298, column: 3, scope: !3316)
!3356 = !DILocation(line: 300, column: 49, scope: !3298)
!3357 = !DILocation(line: 300, column: 59, scope: !3298)
!3358 = !DILocation(line: 300, column: 10, scope: !3298)
!3359 = !DILocation(line: 301, column: 1, scope: !3298)
!3360 = !DILocation(line: 300, column: 3, scope: !3298)
!3361 = !DILocation(line: 0, scope: !147)
!3362 = !DILocation(line: 341, column: 3, scope: !147)
!3363 = !DILocation(line: 341, column: 8, scope: !147)
!3364 = !DILocation(line: 349, column: 13, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !147, file: !148, line: 349, column: 7)
!3366 = !DILocation(line: 349, column: 7, scope: !147)
!3367 = !DILocation(line: 350, column: 12, scope: !3365)
!3368 = !DILocation(line: 350, column: 5, scope: !3365)
!3369 = !DILocation(line: 351, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !147, file: !148, line: 351, column: 7)
!3371 = !DILocation(line: 351, column: 7, scope: !147)
!3372 = !DILocation(line: 352, column: 12, scope: !3370)
!3373 = !DILocation(line: 352, column: 5, scope: !3370)
!3374 = !DILocation(line: 353, column: 13, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !147, file: !148, line: 353, column: 7)
!3376 = !DILocation(line: 353, column: 7, scope: !147)
!3377 = !DILocation(line: 354, column: 54, scope: !3375)
!3378 = !DILocation(line: 354, column: 47, scope: !3375)
!3379 = !DILocation(line: 354, column: 93, scope: !3375)
!3380 = !DILocation(line: 354, column: 86, scope: !3375)
!3381 = !DILocation(line: 354, column: 12, scope: !3375)
!3382 = !DILocation(line: 354, column: 5, scope: !3375)
!3383 = !DILocation(line: 358, column: 14, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !147, file: !148, line: 358, column: 7)
!3385 = !DILocation(line: 358, column: 34, scope: !3384)
!3386 = !DILocation(line: 358, column: 44, scope: !3384)
!3387 = !DILocation(line: 358, column: 7, scope: !147)
!3388 = !DILocation(line: 360, column: 12, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3384, file: !148, line: 358, column: 66)
!3390 = !DILocation(line: 360, column: 5, scope: !3389)
!3391 = !DILocation(line: 368, column: 13, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !147, file: !148, line: 368, column: 7)
!3393 = !DILocation(line: 368, column: 7, scope: !147)
!3394 = !DILocation(line: 370, column: 15, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !148, line: 368, column: 18)
!3396 = !DILocation(line: 371, column: 3, scope: !3395)
!3397 = !DILocation(line: 374, column: 15, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !147, file: !148, line: 374, column: 7)
!3399 = !DILocation(line: 374, column: 7, scope: !147)
!3400 = !DILocation(line: 376, column: 3, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !148, line: 374, column: 35)
!3402 = !DILocation(line: 378, column: 3, scope: !147)
!3403 = !DILocation(line: 378, column: 15, scope: !147)
!3404 = !DILocation(line: 378, column: 42, scope: !147)
!3405 = !DILocation(line: 378, column: 51, scope: !147)
!3406 = !DILocation(line: 379, column: 12, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !147, file: !148, line: 378, column: 58)
!3408 = !DILocation(line: 379, column: 5, scope: !3407)
!3409 = !DILocation(line: 379, column: 16, scope: !3407)
!3410 = !DILocation(line: 380, column: 9, scope: !3407)
!3411 = distinct !{!3411, !3402, !3412}
!3412 = !DILocation(line: 381, column: 3, scope: !147)
!3413 = !DILocation(line: 383, column: 15, scope: !147)
!3414 = !DILocation(line: 384, column: 25, scope: !147)
!3415 = !DILocation(line: 384, column: 23, scope: !147)
!3416 = !DILocation(line: 384, column: 34, scope: !147)
!3417 = !{!3418, !3418, i64 0}
!3418 = !{!"double", !296, i64 0}
!3419 = !DILocation(line: 384, column: 32, scope: !147)
!3420 = !DILocation(line: 385, column: 24, scope: !147)
!3421 = !DILocation(line: 386, column: 16, scope: !147)
!3422 = !DILocation(line: 386, column: 14, scope: !147)
!3423 = !DILocation(line: 388, column: 12, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !147, file: !148, line: 388, column: 7)
!3425 = !DILocation(line: 388, column: 7, scope: !147)
!3426 = !DILocation(line: 389, column: 5, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3424, file: !148, line: 388, column: 19)
!3428 = !DILocation(line: 391, column: 9, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3427, file: !148, line: 391, column: 9)
!3430 = !DILocation(line: 391, column: 17, scope: !3429)
!3431 = !DILocation(line: 391, column: 14, scope: !3429)
!3432 = !DILocation(line: 391, column: 9, scope: !3427)
!3433 = !DILocation(line: 393, column: 7, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3429, file: !148, line: 391, column: 30)
!3435 = !DILocation(line: 394, column: 5, scope: !3434)
!3436 = !DILocation(line: 0, scope: !3427)
!3437 = !DILocation(line: 395, column: 3, scope: !3427)
!3438 = !DILocation(line: 396, column: 17, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3424, file: !148, line: 396, column: 12)
!3440 = !DILocation(line: 396, column: 12, scope: !3424)
!3441 = !DILocation(line: 397, column: 3, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3439, file: !148, line: 396, column: 24)
!3443 = !DILocation(line: 398, column: 18, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3439, file: !148, line: 398, column: 12)
!3445 = !DILocation(line: 398, column: 25, scope: !3444)
!3446 = !DILocation(line: 398, column: 34, scope: !3444)
!3447 = !DILocation(line: 398, column: 12, scope: !3439)
!3448 = !DILocation(line: 400, column: 5, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3444, file: !148, line: 398, column: 41)
!3450 = !DILocation(line: 401, column: 3, scope: !3449)
!3451 = !DILocation(line: 403, column: 12, scope: !194)
!3452 = !DILocation(line: 403, column: 7, scope: !147)
!3453 = !DILocation(line: 404, column: 20, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !194, file: !148, line: 403, column: 19)
!3455 = !DILocation(line: 404, column: 18, scope: !3454)
!3456 = !DILocation(line: 405, column: 17, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !148, line: 405, column: 9)
!3458 = !DILocation(line: 405, column: 24, scope: !3457)
!3459 = !DILocation(line: 405, column: 33, scope: !3457)
!3460 = !DILocation(line: 405, column: 41, scope: !3457)
!3461 = !DILocation(line: 405, column: 51, scope: !3457)
!3462 = !DILocation(line: 405, column: 9, scope: !3454)
!3463 = !DILocation(line: 408, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !148, line: 405, column: 57)
!3465 = !DILocation(line: 409, column: 5, scope: !3464)
!3466 = !DILocation(line: 410, column: 3, scope: !3454)
!3467 = !DILocation(line: 0, scope: !193)
!3468 = !DILocation(line: 414, column: 5, scope: !193)
!3469 = !DILocation(line: 414, column: 16, scope: !193)
!3470 = !DILocation(line: 415, column: 7, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !193, file: !148, line: 414, column: 43)
!3472 = !DILocation(line: 416, column: 39, scope: !3471)
!3473 = !DILocation(line: 416, column: 31, scope: !3471)
!3474 = !DILocation(line: 416, column: 20, scope: !3471)
!3475 = !DILocation(line: 416, column: 14, scope: !3471)
!3476 = !DILocation(line: 416, column: 7, scope: !3471)
!3477 = !DILocation(line: 416, column: 18, scope: !3471)
!3478 = !DILocation(line: 417, column: 18, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3471, file: !148, line: 417, column: 11)
!3480 = !DILocation(line: 417, column: 11, scope: !3471)
!3481 = !DILocation(line: 418, column: 9, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3479, file: !148, line: 417, column: 27)
!3483 = distinct !{!3483, !3468, !3484}
!3484 = !DILocation(line: 420, column: 5, scope: !193)
!3485 = !DILocation(line: 422, column: 5, scope: !193)
!3486 = !DILocation(line: 422, column: 17, scope: !193)
!3487 = !DILocation(line: 422, column: 44, scope: !193)
!3488 = !DILocation(line: 422, column: 53, scope: !193)
!3489 = !DILocation(line: 422, column: 56, scope: !193)
!3490 = !DILocation(line: 423, column: 14, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !193, file: !148, line: 422, column: 63)
!3492 = !DILocation(line: 423, column: 7, scope: !3491)
!3493 = !DILocation(line: 423, column: 18, scope: !3491)
!3494 = distinct !{!3494, !3485, !3495}
!3495 = !DILocation(line: 424, column: 5, scope: !193)
!3496 = !DILocation(line: 425, column: 13, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !193, file: !148, line: 425, column: 9)
!3498 = !DILocation(line: 425, column: 9, scope: !193)
!3499 = !DILocation(line: 427, column: 14, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3497, file: !148, line: 425, column: 40)
!3501 = !DILocation(line: 427, column: 7, scope: !3500)
!3502 = !DILocation(line: 427, column: 18, scope: !3500)
!3503 = !DILocation(line: 428, column: 5, scope: !3500)
!3504 = !DILocation(line: 432, column: 3, scope: !147)
!3505 = !DILocation(line: 432, column: 14, scope: !147)
!3506 = !DILocation(line: 433, column: 37, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !147, file: !148, line: 432, column: 41)
!3508 = !DILocation(line: 433, column: 28, scope: !3507)
!3509 = !DILocation(line: 433, column: 18, scope: !3507)
!3510 = !DILocation(line: 433, column: 12, scope: !3507)
!3511 = !DILocation(line: 433, column: 5, scope: !3507)
!3512 = !DILocation(line: 433, column: 16, scope: !3507)
!3513 = !DILocation(line: 434, column: 17, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3507, file: !148, line: 434, column: 9)
!3515 = !DILocation(line: 434, column: 9, scope: !3507)
!3516 = !DILocation(line: 435, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !148, line: 434, column: 25)
!3518 = distinct !{!3518, !3504, !3519}
!3519 = !DILocation(line: 437, column: 3, scope: !147)
!3520 = !DILocation(line: 440, column: 15, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !147, file: !148, line: 440, column: 7)
!3522 = !DILocation(line: 440, column: 29, scope: !3521)
!3523 = !DILocation(line: 440, column: 39, scope: !3521)
!3524 = !DILocation(line: 440, column: 7, scope: !147)
!3525 = !DILocation(line: 441, column: 9, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !148, line: 441, column: 9)
!3527 = distinct !DILexicalBlock(scope: !3521, file: !148, line: 440, column: 57)
!3528 = !DILocation(line: 441, column: 15, scope: !3526)
!3529 = !DILocation(line: 441, column: 19, scope: !3526)
!3530 = !DILocation(line: 441, column: 28, scope: !3526)
!3531 = !DILocation(line: 441, column: 38, scope: !3526)
!3532 = !DILocation(line: 441, column: 9, scope: !3527)
!3533 = !DILocation(line: 442, column: 12, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3526, file: !148, line: 441, column: 70)
!3535 = !DILocation(line: 443, column: 5, scope: !3534)
!3536 = !DILocation(line: 444, column: 5, scope: !3527)
!3537 = !DILocation(line: 444, column: 17, scope: !3527)
!3538 = !DILocation(line: 444, column: 26, scope: !3527)
!3539 = !DILocation(line: 444, column: 34, scope: !3527)
!3540 = !DILocation(line: 0, scope: !3527)
!3541 = !DILocation(line: 445, column: 14, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3527, file: !148, line: 444, column: 62)
!3543 = !DILocation(line: 445, column: 7, scope: !3542)
!3544 = !DILocation(line: 445, column: 18, scope: !3542)
!3545 = distinct !{!3545, !3536, !3546}
!3546 = !DILocation(line: 446, column: 5, scope: !3527)
!3547 = !DILocation(line: 447, column: 3, scope: !3527)
!3548 = !DILocation(line: 449, column: 11, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !147, file: !148, line: 449, column: 7)
!3550 = !DILocation(line: 449, column: 7, scope: !147)
!3551 = !DILocation(line: 450, column: 9, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !148, line: 450, column: 9)
!3553 = distinct !DILexicalBlock(scope: !3549, file: !148, line: 449, column: 38)
!3554 = !DILocation(line: 450, column: 9, scope: !3553)
!3555 = !DILocation(line: 451, column: 14, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3552, file: !148, line: 450, column: 19)
!3557 = !DILocation(line: 451, column: 7, scope: !3556)
!3558 = !DILocation(line: 451, column: 18, scope: !3556)
!3559 = !DILocation(line: 452, column: 5, scope: !3556)
!3560 = !DILocation(line: 453, column: 20, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3552, file: !148, line: 453, column: 14)
!3562 = !DILocation(line: 453, column: 14, scope: !3552)
!3563 = !DILocation(line: 454, column: 14, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !148, line: 453, column: 34)
!3565 = !DILocation(line: 454, column: 7, scope: !3564)
!3566 = !DILocation(line: 454, column: 18, scope: !3564)
!3567 = !DILocation(line: 455, column: 5, scope: !3564)
!3568 = !DILocation(line: 456, column: 20, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3561, file: !148, line: 456, column: 14)
!3570 = !DILocation(line: 456, column: 14, scope: !3561)
!3571 = !DILocation(line: 457, column: 14, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 456, column: 35)
!3573 = !DILocation(line: 457, column: 7, scope: !3572)
!3574 = !DILocation(line: 457, column: 18, scope: !3572)
!3575 = !DILocation(line: 458, column: 5, scope: !3572)
!3576 = !DILocation(line: 0, scope: !3561)
!3577 = !DILocation(line: 0, scope: !3552)
!3578 = !DILocation(line: 459, column: 3, scope: !3553)
!3579 = !DILocation(line: 461, column: 45, scope: !147)
!3580 = !DILocation(line: 461, column: 10, scope: !147)
!3581 = !DILocation(line: 462, column: 1, scope: !147)
!3582 = distinct !DISubprogram(name: "_etoa", scope: !148, file: !148, line: 467, type: !149, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3598, !3599, !3600, !3601, !3602, !3603, !3604}
!3584 = !DILocalVariable(name: "out", arg: 1, scope: !3582, file: !148, line: 467, type: !153)
!3585 = !DILocalVariable(name: "buffer", arg: 2, scope: !3582, file: !148, line: 467, type: !66)
!3586 = !DILocalVariable(name: "idx", arg: 3, scope: !3582, file: !148, line: 467, type: !151)
!3587 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3582, file: !148, line: 467, type: !151)
!3588 = !DILocalVariable(name: "value", arg: 5, scope: !3582, file: !148, line: 467, type: !69)
!3589 = !DILocalVariable(name: "prec", arg: 6, scope: !3582, file: !148, line: 467, type: !24)
!3590 = !DILocalVariable(name: "width", arg: 7, scope: !3582, file: !148, line: 467, type: !24)
!3591 = !DILocalVariable(name: "flags", arg: 8, scope: !3582, file: !148, line: 467, type: !24)
!3592 = !DILocalVariable(name: "negative", scope: !3582, file: !148, line: 475, type: !2771)
!3593 = !DILocalVariable(name: "conv", scope: !3582, file: !148, line: 490, type: !3594)
!3594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3582, file: !148, line: 487, size: 64, elements: !3595)
!3595 = !{!3596, !3597}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "U", scope: !3594, file: !148, line: 488, baseType: !138, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !3594, file: !148, line: 489, baseType: !69, size: 64)
!3598 = !DILocalVariable(name: "exp2", scope: !3582, file: !148, line: 493, type: !43)
!3599 = !DILocalVariable(name: "expval", scope: !3582, file: !148, line: 496, type: !43)
!3600 = !DILocalVariable(name: "z", scope: !3582, file: !148, line: 499, type: !196)
!3601 = !DILocalVariable(name: "z2", scope: !3582, file: !148, line: 500, type: !196)
!3602 = !DILocalVariable(name: "minwidth", scope: !3582, file: !148, line: 511, type: !24)
!3603 = !DILocalVariable(name: "fwidth", scope: !3582, file: !148, line: 537, type: !24)
!3604 = !DILocalVariable(name: "start_idx", scope: !3582, file: !148, line: 556, type: !2718)
!3605 = !DILocation(line: 0, scope: !3582)
!3606 = !DILocation(line: 470, column: 14, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 470, column: 7)
!3608 = !DILocation(line: 470, column: 24, scope: !3607)
!3609 = !DILocation(line: 470, column: 34, scope: !3607)
!3610 = !DILocation(line: 470, column: 45, scope: !3607)
!3611 = !DILocation(line: 470, column: 55, scope: !3607)
!3612 = !DILocation(line: 470, column: 7, scope: !3582)
!3613 = !DILocation(line: 471, column: 12, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3607, file: !148, line: 470, column: 68)
!3615 = !DILocation(line: 471, column: 5, scope: !3614)
!3616 = !DILocation(line: 475, column: 31, scope: !3582)
!3617 = !DILocation(line: 475, column: 14, scope: !3582)
!3618 = !DILocation(line: 476, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 476, column: 7)
!3620 = !DILocation(line: 476, column: 7, scope: !3582)
!3621 = !DILocation(line: 477, column: 13, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !148, line: 476, column: 17)
!3623 = !DILocation(line: 478, column: 3, scope: !3622)
!3624 = !DILocation(line: 481, column: 15, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 481, column: 7)
!3626 = !DILocation(line: 481, column: 7, scope: !3582)
!3627 = !DILocation(line: 483, column: 3, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !148, line: 481, column: 35)
!3629 = !DILocation(line: 487, column: 3, scope: !3582)
!3630 = !DILocation(line: 490, column: 5, scope: !3582)
!3631 = !DILocation(line: 492, column: 8, scope: !3582)
!3632 = !DILocation(line: 492, column: 10, scope: !3582)
!3633 = !DILocation(line: 493, column: 26, scope: !3582)
!3634 = !DILocation(line: 493, column: 28, scope: !3582)
!3635 = !DILocation(line: 493, column: 36, scope: !3582)
!3636 = !DILocation(line: 493, column: 14, scope: !3582)
!3637 = !DILocation(line: 493, column: 47, scope: !3582)
!3638 = !DILocation(line: 494, column: 18, scope: !3582)
!3639 = !DILocation(line: 494, column: 20, scope: !3582)
!3640 = !DILocation(line: 494, column: 44, scope: !3582)
!3641 = !DILocation(line: 494, column: 8, scope: !3582)
!3642 = !DILocation(line: 494, column: 10, scope: !3582)
!3643 = !DILocation(line: 496, column: 40, scope: !3582)
!3644 = !DILocation(line: 496, column: 45, scope: !3582)
!3645 = !DILocation(line: 496, column: 38, scope: !3582)
!3646 = !DILocation(line: 496, column: 73, scope: !3582)
!3647 = !DILocation(line: 496, column: 75, scope: !3582)
!3648 = !DILocation(line: 496, column: 82, scope: !3582)
!3649 = !DILocation(line: 496, column: 65, scope: !3582)
!3650 = !DILocation(line: 496, column: 16, scope: !3582)
!3651 = !DILocation(line: 498, column: 16, scope: !3582)
!3652 = !DILocation(line: 498, column: 23, scope: !3582)
!3653 = !DILocation(line: 498, column: 43, scope: !3582)
!3654 = !DILocation(line: 498, column: 10, scope: !3582)
!3655 = !DILocation(line: 499, column: 21, scope: !3582)
!3656 = !DILocation(line: 499, column: 28, scope: !3582)
!3657 = !DILocation(line: 499, column: 50, scope: !3582)
!3658 = !DILocation(line: 499, column: 55, scope: !3582)
!3659 = !DILocation(line: 499, column: 48, scope: !3582)
!3660 = !DILocation(line: 500, column: 23, scope: !3582)
!3661 = !DILocation(line: 501, column: 28, scope: !3582)
!3662 = !DILocation(line: 501, column: 12, scope: !3582)
!3663 = !DILocation(line: 501, column: 36, scope: !3582)
!3664 = !DILocation(line: 501, column: 8, scope: !3582)
!3665 = !DILocation(line: 501, column: 10, scope: !3582)
!3666 = !DILocation(line: 503, column: 19, scope: !3582)
!3667 = !DILocation(line: 503, column: 28, scope: !3582)
!3668 = !DILocation(line: 503, column: 60, scope: !3582)
!3669 = !DILocation(line: 503, column: 55, scope: !3582)
!3670 = !DILocation(line: 503, column: 49, scope: !3582)
!3671 = !DILocation(line: 503, column: 43, scope: !3582)
!3672 = !DILocation(line: 503, column: 38, scope: !3582)
!3673 = !DILocation(line: 503, column: 32, scope: !3582)
!3674 = !DILocation(line: 503, column: 23, scope: !3582)
!3675 = !DILocation(line: 503, column: 15, scope: !3582)
!3676 = !DILocation(line: 503, column: 8, scope: !3582)
!3677 = !DILocation(line: 503, column: 10, scope: !3582)
!3678 = !DILocation(line: 505, column: 20, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 505, column: 7)
!3680 = !DILocation(line: 505, column: 13, scope: !3679)
!3681 = !DILocation(line: 505, column: 7, scope: !3582)
!3682 = !DILocation(line: 506, column: 11, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !148, line: 505, column: 23)
!3684 = !DILocation(line: 507, column: 10, scope: !3683)
!3685 = !DILocation(line: 507, column: 12, scope: !3683)
!3686 = !DILocation(line: 508, column: 3, scope: !3683)
!3687 = !DILocation(line: 511, column: 36, scope: !3582)
!3688 = !DILocation(line: 511, column: 43, scope: !3582)
!3689 = !DILocation(line: 511, column: 54, scope: !3582)
!3690 = !DILocation(line: 511, column: 27, scope: !3582)
!3691 = !DILocation(line: 514, column: 13, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 514, column: 7)
!3693 = !DILocation(line: 514, column: 7, scope: !3582)
!3694 = !DILocation(line: 516, column: 16, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !148, line: 516, column: 9)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !148, line: 514, column: 32)
!3697 = !DILocation(line: 516, column: 25, scope: !3695)
!3698 = !DILocation(line: 516, column: 35, scope: !3695)
!3699 = !DILocation(line: 516, column: 9, scope: !3696)
!3700 = !DILocation(line: 517, column: 21, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !148, line: 517, column: 11)
!3702 = distinct !DILexicalBlock(scope: !3695, file: !148, line: 516, column: 43)
!3703 = !DILocation(line: 517, column: 11, scope: !3702)
!3704 = !DILocation(line: 518, column: 37, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3701, file: !148, line: 517, column: 31)
!3706 = !DILocation(line: 518, column: 46, scope: !3705)
!3707 = !DILocation(line: 519, column: 7, scope: !3705)
!3708 = !DILocation(line: 0, scope: !3701)
!3709 = !DILocation(line: 523, column: 13, scope: !3702)
!3710 = !DILocation(line: 527, column: 5, scope: !3702)
!3711 = !DILocation(line: 530, column: 17, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !148, line: 530, column: 11)
!3713 = distinct !DILexicalBlock(scope: !3695, file: !148, line: 528, column: 10)
!3714 = !DILocation(line: 530, column: 22, scope: !3712)
!3715 = !DILocation(line: 530, column: 32, scope: !3712)
!3716 = !DILocation(line: 530, column: 11, scope: !3713)
!3717 = !DILocation(line: 531, column: 9, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3712, file: !148, line: 530, column: 52)
!3719 = !DILocation(line: 532, column: 7, scope: !3718)
!3720 = !DILocation(line: 0, scope: !3695)
!3721 = !DILocation(line: 534, column: 3, scope: !3696)
!3722 = !DILocation(line: 538, column: 13, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 538, column: 7)
!3724 = !DILocation(line: 538, column: 7, scope: !3582)
!3725 = !DILocation(line: 540, column: 12, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3723, file: !148, line: 538, column: 25)
!3727 = !DILocation(line: 541, column: 3, scope: !3726)
!3728 = !DILocation(line: 0, scope: !3723)
!3729 = !DILocation(line: 545, column: 14, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 545, column: 7)
!3731 = !DILocation(line: 545, column: 28, scope: !3730)
!3732 = !DILocation(line: 545, column: 31, scope: !3730)
!3733 = !DILocation(line: 545, column: 7, scope: !3582)
!3734 = !DILocation(line: 548, column: 3, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3730, file: !148, line: 545, column: 41)
!3736 = !DILocation(line: 551, column: 7, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 551, column: 7)
!3738 = !DILocation(line: 551, column: 7, scope: !3582)
!3739 = !DILocation(line: 552, column: 19, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3737, file: !148, line: 551, column: 15)
!3741 = !DILocation(line: 552, column: 11, scope: !3740)
!3742 = !DILocation(line: 553, column: 3, scope: !3740)
!3743 = !DILocation(line: 557, column: 41, scope: !3582)
!3744 = !DILocation(line: 557, column: 52, scope: !3582)
!3745 = !DILocation(line: 557, column: 88, scope: !3582)
!3746 = !DILocation(line: 557, column: 9, scope: !3582)
!3747 = !DILocation(line: 560, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 560, column: 7)
!3749 = !DILocation(line: 560, column: 7, scope: !3582)
!3750 = !DILocation(line: 562, column: 16, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3748, file: !148, line: 560, column: 17)
!3752 = !DILocation(line: 562, column: 9, scope: !3751)
!3753 = !DILocation(line: 562, column: 59, scope: !3751)
!3754 = !DILocation(line: 562, column: 5, scope: !3751)
!3755 = !DILocation(line: 564, column: 56, scope: !3751)
!3756 = !DILocation(line: 564, column: 48, scope: !3751)
!3757 = !DILocation(line: 564, column: 63, scope: !3751)
!3758 = !DILocation(line: 564, column: 88, scope: !3751)
!3759 = !DILocation(line: 564, column: 108, scope: !3751)
!3760 = !DILocation(line: 564, column: 11, scope: !3751)
!3761 = !DILocation(line: 566, column: 15, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3751, file: !148, line: 566, column: 9)
!3763 = !DILocation(line: 566, column: 9, scope: !3751)
!3764 = !DILocation(line: 567, column: 7, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !148, line: 566, column: 29)
!3766 = !DILocation(line: 0, scope: !3751)
!3767 = !DILocation(line: 567, column: 18, scope: !3765)
!3768 = !DILocation(line: 567, column: 30, scope: !3765)
!3769 = !DILocation(line: 567, column: 59, scope: !3765)
!3770 = !DILocation(line: 567, column: 39, scope: !3765)
!3771 = distinct !{!3771, !3764, !3772}
!3772 = !DILocation(line: 567, column: 69, scope: !3765)
!3773 = !DILocation(line: 568, column: 5, scope: !3765)
!3774 = !DILocation(line: 564, column: 9, scope: !3751)
!3775 = !DILocation(line: 569, column: 3, scope: !3751)
!3776 = !DILocation(line: 571, column: 1, scope: !3582)
!3777 = distinct !DISubprogram(name: "_strnlen_s", scope: !148, file: !148, line: 171, type: !3778, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!24, !2675, !151}
!3780 = !{!3781, !3782, !3783}
!3781 = !DILocalVariable(name: "str", arg: 1, scope: !3777, file: !148, line: 171, type: !2675)
!3782 = !DILocalVariable(name: "maxsize", arg: 2, scope: !3777, file: !148, line: 171, type: !151)
!3783 = !DILocalVariable(name: "s", scope: !3777, file: !148, line: 173, type: !2675)
!3784 = !DILocation(line: 0, scope: !3777)
!3785 = !DILocation(line: 174, column: 8, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3777, file: !148, line: 174, column: 3)
!3787 = !DILocation(line: 0, scope: !3786)
!3788 = !DILocation(line: 174, column: 17, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3786, file: !148, line: 174, column: 3)
!3790 = !DILocation(line: 174, column: 20, scope: !3789)
!3791 = !DILocation(line: 174, column: 30, scope: !3789)
!3792 = !DILocation(line: 0, scope: !3789)
!3793 = !DILocation(line: 174, column: 3, scope: !3786)
!3794 = !DILocation(line: 174, column: 34, scope: !3789)
!3795 = !DILocation(line: 174, column: 3, scope: !3789)
!3796 = distinct !{!3796, !3793, !3797}
!3797 = !DILocation(line: 174, column: 38, scope: !3786)
!3798 = !DILocation(line: 175, column: 27, scope: !3777)
!3799 = !DILocation(line: 175, column: 3, scope: !3777)
!3800 = distinct !DISubprogram(name: "_out_rev", scope: !148, file: !148, line: 199, type: !3801, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3803)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!151, !153, !66, !151, !151, !2675, !151, !24, !24}
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3804 = !DILocalVariable(name: "out", arg: 1, scope: !3800, file: !148, line: 199, type: !153)
!3805 = !DILocalVariable(name: "buffer", arg: 2, scope: !3800, file: !148, line: 199, type: !66)
!3806 = !DILocalVariable(name: "idx", arg: 3, scope: !3800, file: !148, line: 199, type: !151)
!3807 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3800, file: !148, line: 199, type: !151)
!3808 = !DILocalVariable(name: "buf", arg: 5, scope: !3800, file: !148, line: 199, type: !2675)
!3809 = !DILocalVariable(name: "len", arg: 6, scope: !3800, file: !148, line: 199, type: !151)
!3810 = !DILocalVariable(name: "width", arg: 7, scope: !3800, file: !148, line: 199, type: !24)
!3811 = !DILocalVariable(name: "flags", arg: 8, scope: !3800, file: !148, line: 199, type: !24)
!3812 = !DILocalVariable(name: "start_idx", scope: !3800, file: !148, line: 201, type: !2718)
!3813 = !DILocalVariable(name: "i", scope: !3814, file: !148, line: 205, type: !151)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !148, line: 205, column: 5)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !148, line: 204, column: 58)
!3816 = distinct !DILexicalBlock(scope: !3800, file: !148, line: 204, column: 7)
!3817 = !DILocation(line: 0, scope: !3800)
!3818 = !DILocation(line: 204, column: 15, scope: !3816)
!3819 = !DILocation(line: 204, column: 29, scope: !3816)
!3820 = !DILocation(line: 204, column: 40, scope: !3816)
!3821 = !DILocation(line: 204, column: 7, scope: !3800)
!3822 = !DILocation(line: 0, scope: !3814)
!3823 = !DILocation(line: 205, column: 10, scope: !3814)
!3824 = !DILocation(line: 205, column: 28, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3814, file: !148, line: 205, column: 5)
!3826 = !DILocation(line: 205, column: 5, scope: !3814)
!3827 = !DILocation(line: 206, column: 27, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !148, line: 205, column: 42)
!3829 = !DILocation(line: 206, column: 7, scope: !3828)
!3830 = !DILocation(line: 207, column: 5, scope: !3828)
!3831 = !DILocation(line: 205, column: 38, scope: !3825)
!3832 = !DILocation(line: 205, column: 5, scope: !3825)
!3833 = distinct !{!3833, !3826, !3834}
!3834 = !DILocation(line: 207, column: 5, scope: !3814)
!3835 = !DILocation(line: 208, column: 3, scope: !3815)
!3836 = !DILocation(line: 211, column: 3, scope: !3800)
!3837 = !DILocation(line: 212, column: 13, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3800, file: !148, line: 211, column: 15)
!3839 = !DILocation(line: 212, column: 9, scope: !3838)
!3840 = !DILocation(line: 212, column: 32, scope: !3838)
!3841 = !DILocation(line: 212, column: 5, scope: !3838)
!3842 = distinct !{!3842, !3836, !3843}
!3843 = !DILocation(line: 213, column: 3, scope: !3800)
!3844 = !DILocation(line: 216, column: 13, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3800, file: !148, line: 216, column: 7)
!3846 = !DILocation(line: 216, column: 7, scope: !3800)
!3847 = !DILocation(line: 217, column: 5, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3845, file: !148, line: 216, column: 27)
!3849 = !DILocation(line: 217, column: 16, scope: !3848)
!3850 = !DILocation(line: 217, column: 28, scope: !3848)
!3851 = !DILocation(line: 218, column: 27, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3848, file: !148, line: 217, column: 37)
!3853 = !DILocation(line: 218, column: 7, scope: !3852)
!3854 = distinct !{!3854, !3847, !3855}
!3855 = !DILocation(line: 219, column: 5, scope: !3848)
!3856 = !DILocation(line: 220, column: 3, scope: !3848)
!3857 = !DILocation(line: 222, column: 3, scope: !3800)
!3858 = distinct !DISubprogram(name: "_ntoa_format", scope: !148, file: !148, line: 227, type: !3859, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!151, !153, !66, !151, !151, !66, !151, !188, !24, !24, !24, !24}
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872}
!3862 = !DILocalVariable(name: "out", arg: 1, scope: !3858, file: !148, line: 227, type: !153)
!3863 = !DILocalVariable(name: "buffer", arg: 2, scope: !3858, file: !148, line: 227, type: !66)
!3864 = !DILocalVariable(name: "idx", arg: 3, scope: !3858, file: !148, line: 227, type: !151)
!3865 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3858, file: !148, line: 227, type: !151)
!3866 = !DILocalVariable(name: "buf", arg: 5, scope: !3858, file: !148, line: 227, type: !66)
!3867 = !DILocalVariable(name: "len", arg: 6, scope: !3858, file: !148, line: 227, type: !151)
!3868 = !DILocalVariable(name: "negative", arg: 7, scope: !3858, file: !148, line: 227, type: !188)
!3869 = !DILocalVariable(name: "base", arg: 8, scope: !3858, file: !148, line: 227, type: !24)
!3870 = !DILocalVariable(name: "prec", arg: 9, scope: !3858, file: !148, line: 227, type: !24)
!3871 = !DILocalVariable(name: "width", arg: 10, scope: !3858, file: !148, line: 227, type: !24)
!3872 = !DILocalVariable(name: "flags", arg: 11, scope: !3858, file: !148, line: 227, type: !24)
!3873 = !DILocation(line: 0, scope: !3858)
!3874 = !DILocation(line: 230, column: 15, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3858, file: !148, line: 230, column: 7)
!3876 = !DILocation(line: 230, column: 7, scope: !3858)
!3877 = !DILocation(line: 231, column: 9, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !148, line: 231, column: 9)
!3879 = distinct !DILexicalBlock(scope: !3875, file: !148, line: 230, column: 30)
!3880 = !DILocation(line: 231, column: 15, scope: !3878)
!3881 = !DILocation(line: 231, column: 25, scope: !3878)
!3882 = !DILocation(line: 231, column: 42, scope: !3878)
!3883 = !DILocation(line: 231, column: 46, scope: !3878)
!3884 = !DILocation(line: 231, column: 55, scope: !3878)
!3885 = !DILocation(line: 231, column: 65, scope: !3878)
!3886 = !DILocation(line: 231, column: 9, scope: !3879)
!3887 = !DILocation(line: 232, column: 12, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3878, file: !148, line: 231, column: 97)
!3889 = !DILocation(line: 233, column: 5, scope: !3888)
!3890 = !DILocation(line: 234, column: 5, scope: !3879)
!3891 = !DILocation(line: 234, column: 17, scope: !3879)
!3892 = !DILocation(line: 234, column: 25, scope: !3879)
!3893 = !DILocation(line: 234, column: 33, scope: !3879)
!3894 = !DILocation(line: 0, scope: !3879)
!3895 = !DILocation(line: 235, column: 14, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3879, file: !148, line: 234, column: 61)
!3897 = !DILocation(line: 235, column: 7, scope: !3896)
!3898 = !DILocation(line: 235, column: 18, scope: !3896)
!3899 = distinct !{!3899, !3890, !3900}
!3900 = !DILocation(line: 236, column: 5, scope: !3879)
!3901 = !DILocation(line: 237, column: 5, scope: !3879)
!3902 = !DILocation(line: 237, column: 19, scope: !3879)
!3903 = !DILocation(line: 237, column: 36, scope: !3879)
!3904 = !DILocation(line: 237, column: 44, scope: !3879)
!3905 = !DILocation(line: 237, column: 53, scope: !3879)
!3906 = !DILocation(line: 237, column: 61, scope: !3879)
!3907 = !DILocation(line: 238, column: 14, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3879, file: !148, line: 237, column: 89)
!3909 = !DILocation(line: 238, column: 7, scope: !3908)
!3910 = !DILocation(line: 238, column: 18, scope: !3908)
!3911 = distinct !{!3911, !3901, !3912}
!3912 = !DILocation(line: 239, column: 5, scope: !3879)
!3913 = !DILocation(line: 240, column: 3, scope: !3879)
!3914 = !DILocation(line: 243, column: 13, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3858, file: !148, line: 243, column: 7)
!3916 = !DILocation(line: 243, column: 7, scope: !3858)
!3917 = !DILocation(line: 244, column: 17, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3919, file: !148, line: 244, column: 9)
!3919 = distinct !DILexicalBlock(scope: !3915, file: !148, line: 243, column: 27)
!3920 = !DILocation(line: 244, column: 36, scope: !3918)
!3921 = !DILocation(line: 244, column: 39, scope: !3918)
!3922 = !DILocation(line: 244, column: 43, scope: !3918)
!3923 = !DILocation(line: 244, column: 52, scope: !3918)
!3924 = !DILocation(line: 244, column: 61, scope: !3918)
!3925 = !DILocation(line: 244, column: 69, scope: !3918)
!3926 = !DILocation(line: 244, column: 9, scope: !3919)
!3927 = !DILocation(line: 245, column: 10, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3918, file: !148, line: 244, column: 81)
!3929 = !DILocation(line: 246, column: 11, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3928, file: !148, line: 246, column: 11)
!3931 = !DILocation(line: 246, column: 15, scope: !3930)
!3932 = !DILocation(line: 246, column: 24, scope: !3930)
!3933 = !DILocation(line: 246, column: 11, scope: !3928)
!3934 = !DILocation(line: 247, column: 12, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3930, file: !148, line: 246, column: 33)
!3936 = !DILocation(line: 248, column: 7, scope: !3935)
!3937 = !DILocation(line: 0, scope: !3928)
!3938 = !DILocation(line: 249, column: 5, scope: !3928)
!3939 = !DILocation(line: 250, column: 15, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3919, file: !148, line: 250, column: 9)
!3941 = !DILocation(line: 250, column: 23, scope: !3940)
!3942 = !DILocation(line: 250, column: 34, scope: !3940)
!3943 = !DILocation(line: 250, column: 53, scope: !3940)
!3944 = !DILocation(line: 250, column: 61, scope: !3940)
!3945 = !DILocation(line: 250, column: 9, scope: !3919)
!3946 = !DILocation(line: 251, column: 14, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3940, file: !148, line: 250, column: 89)
!3948 = !DILocation(line: 251, column: 7, scope: !3947)
!3949 = !DILocation(line: 251, column: 18, scope: !3947)
!3950 = !DILocation(line: 252, column: 5, scope: !3947)
!3951 = !DILocation(line: 253, column: 20, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3940, file: !148, line: 253, column: 14)
!3953 = !DILocation(line: 253, column: 28, scope: !3952)
!3954 = !DILocation(line: 253, column: 38, scope: !3952)
!3955 = !DILocation(line: 253, column: 57, scope: !3952)
!3956 = !DILocation(line: 253, column: 65, scope: !3952)
!3957 = !DILocation(line: 253, column: 14, scope: !3940)
!3958 = !DILocation(line: 254, column: 14, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3952, file: !148, line: 253, column: 93)
!3960 = !DILocation(line: 254, column: 7, scope: !3959)
!3961 = !DILocation(line: 254, column: 18, scope: !3959)
!3962 = !DILocation(line: 255, column: 5, scope: !3959)
!3963 = !DILocation(line: 256, column: 20, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3952, file: !148, line: 256, column: 14)
!3965 = !DILocation(line: 256, column: 27, scope: !3964)
!3966 = !DILocation(line: 256, column: 35, scope: !3964)
!3967 = !DILocation(line: 256, column: 14, scope: !3952)
!3968 = !DILocation(line: 257, column: 14, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3964, file: !148, line: 256, column: 63)
!3970 = !DILocation(line: 257, column: 7, scope: !3969)
!3971 = !DILocation(line: 257, column: 18, scope: !3969)
!3972 = !DILocation(line: 258, column: 5, scope: !3969)
!3973 = !DILocation(line: 0, scope: !3952)
!3974 = !DILocation(line: 0, scope: !3940)
!3975 = !DILocation(line: 259, column: 13, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3919, file: !148, line: 259, column: 9)
!3977 = !DILocation(line: 259, column: 9, scope: !3919)
!3978 = !DILocation(line: 260, column: 14, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3976, file: !148, line: 259, column: 40)
!3980 = !DILocation(line: 260, column: 7, scope: !3979)
!3981 = !DILocation(line: 260, column: 18, scope: !3979)
!3982 = !DILocation(line: 261, column: 5, scope: !3979)
!3983 = !DILocation(line: 0, scope: !3919)
!3984 = !DILocation(line: 262, column: 3, scope: !3919)
!3985 = !DILocation(line: 264, column: 11, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3858, file: !148, line: 264, column: 7)
!3987 = !DILocation(line: 264, column: 7, scope: !3858)
!3988 = !DILocation(line: 265, column: 9, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !148, line: 265, column: 9)
!3990 = distinct !DILexicalBlock(scope: !3986, file: !148, line: 264, column: 38)
!3991 = !DILocation(line: 265, column: 9, scope: !3990)
!3992 = !DILocation(line: 266, column: 14, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !148, line: 265, column: 19)
!3994 = !DILocation(line: 266, column: 7, scope: !3993)
!3995 = !DILocation(line: 266, column: 18, scope: !3993)
!3996 = !DILocation(line: 267, column: 5, scope: !3993)
!3997 = !DILocation(line: 268, column: 20, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3989, file: !148, line: 268, column: 14)
!3999 = !DILocation(line: 268, column: 14, scope: !3989)
!4000 = !DILocation(line: 269, column: 14, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3998, file: !148, line: 268, column: 34)
!4002 = !DILocation(line: 269, column: 7, scope: !4001)
!4003 = !DILocation(line: 269, column: 18, scope: !4001)
!4004 = !DILocation(line: 270, column: 5, scope: !4001)
!4005 = !DILocation(line: 271, column: 20, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3998, file: !148, line: 271, column: 14)
!4007 = !DILocation(line: 271, column: 14, scope: !3998)
!4008 = !DILocation(line: 272, column: 14, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4006, file: !148, line: 271, column: 35)
!4010 = !DILocation(line: 272, column: 7, scope: !4009)
!4011 = !DILocation(line: 272, column: 18, scope: !4009)
!4012 = !DILocation(line: 273, column: 5, scope: !4009)
!4013 = !DILocation(line: 0, scope: !3998)
!4014 = !DILocation(line: 0, scope: !3989)
!4015 = !DILocation(line: 274, column: 3, scope: !3990)
!4016 = !DILocation(line: 276, column: 10, scope: !3858)
!4017 = !DILocation(line: 276, column: 3, scope: !3858)
!4018 = distinct !DISubprogram(name: "sprintf_", scope: !148, file: !148, line: 873, type: !4019, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!43, !66, !2675, null}
!4021 = !{!4022, !4023, !4024, !4025}
!4022 = !DILocalVariable(name: "buffer", arg: 1, scope: !4018, file: !148, line: 873, type: !66)
!4023 = !DILocalVariable(name: "format", arg: 2, scope: !4018, file: !148, line: 873, type: !2675)
!4024 = !DILocalVariable(name: "va", scope: !4018, file: !148, line: 875, type: !2680)
!4025 = !DILocalVariable(name: "ret", scope: !4018, file: !148, line: 877, type: !2689)
!4026 = !DILocation(line: 0, scope: !4018)
!4027 = !DILocation(line: 875, column: 3, scope: !4018)
!4028 = !DILocation(line: 875, column: 11, scope: !4018)
!4029 = !DILocation(line: 876, column: 3, scope: !4018)
!4030 = !DILocation(line: 877, column: 19, scope: !4018)
!4031 = !DILocation(line: 878, column: 3, scope: !4018)
!4032 = !DILocation(line: 880, column: 1, scope: !4018)
!4033 = !DILocation(line: 879, column: 3, scope: !4018)
!4034 = distinct !DISubprogram(name: "_out_buffer", scope: !148, file: !148, line: 133, type: !155, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4035)
!4035 = !{!4036, !4037, !4038, !4039}
!4036 = !DILocalVariable(name: "character", arg: 1, scope: !4034, file: !148, line: 133, type: !67)
!4037 = !DILocalVariable(name: "buffer", arg: 2, scope: !4034, file: !148, line: 133, type: !19)
!4038 = !DILocalVariable(name: "idx", arg: 3, scope: !4034, file: !148, line: 133, type: !151)
!4039 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4034, file: !148, line: 133, type: !151)
!4040 = !DILocation(line: 0, scope: !4034)
!4041 = !DILocation(line: 135, column: 11, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4034, file: !148, line: 135, column: 7)
!4043 = !DILocation(line: 135, column: 7, scope: !4034)
!4044 = !DILocation(line: 136, column: 5, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4042, file: !148, line: 135, column: 21)
!4046 = !DILocation(line: 136, column: 26, scope: !4045)
!4047 = !DILocation(line: 137, column: 3, scope: !4045)
!4048 = !DILocation(line: 138, column: 1, scope: !4034)
!4049 = distinct !DISubprogram(name: "snprintf_", scope: !148, file: !148, line: 883, type: !4050, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!43, !66, !151, !2675, null}
!4052 = !{!4053, !4054, !4055, !4056, !4057}
!4053 = !DILocalVariable(name: "buffer", arg: 1, scope: !4049, file: !148, line: 883, type: !66)
!4054 = !DILocalVariable(name: "count", arg: 2, scope: !4049, file: !148, line: 883, type: !151)
!4055 = !DILocalVariable(name: "format", arg: 3, scope: !4049, file: !148, line: 883, type: !2675)
!4056 = !DILocalVariable(name: "va", scope: !4049, file: !148, line: 885, type: !2680)
!4057 = !DILocalVariable(name: "ret", scope: !4049, file: !148, line: 887, type: !2689)
!4058 = !DILocation(line: 0, scope: !4049)
!4059 = !DILocation(line: 885, column: 3, scope: !4049)
!4060 = !DILocation(line: 885, column: 11, scope: !4049)
!4061 = !DILocation(line: 886, column: 3, scope: !4049)
!4062 = !DILocation(line: 887, column: 19, scope: !4049)
!4063 = !DILocation(line: 888, column: 3, scope: !4049)
!4064 = !DILocation(line: 890, column: 1, scope: !4049)
!4065 = !DILocation(line: 889, column: 3, scope: !4049)
!4066 = distinct !DISubprogram(name: "vprintf_", scope: !148, file: !148, line: 893, type: !4067, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!43, !2675, !2680}
!4069 = !{!4070, !4071, !4072}
!4070 = !DILocalVariable(name: "format", arg: 1, scope: !4066, file: !148, line: 893, type: !2675)
!4071 = !DILocalVariable(name: "va", arg: 2, scope: !4066, file: !148, line: 893, type: !2680)
!4072 = !DILocalVariable(name: "buffer", scope: !4066, file: !148, line: 895, type: !2687)
!4073 = !DILocation(line: 0, scope: !4066)
!4074 = !DILocation(line: 893, column: 42, scope: !4066)
!4075 = !DILocation(line: 895, column: 3, scope: !4066)
!4076 = !DILocation(line: 895, column: 8, scope: !4066)
!4077 = !DILocation(line: 896, column: 32, scope: !4066)
!4078 = !DILocation(line: 896, column: 10, scope: !4066)
!4079 = !DILocation(line: 897, column: 1, scope: !4066)
!4080 = !DILocation(line: 896, column: 3, scope: !4066)
!4081 = distinct !DISubprogram(name: "vsnprintf_", scope: !148, file: !148, line: 900, type: !4082, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!43, !66, !151, !2675, !2680}
!4084 = !{!4085, !4086, !4087, !4088}
!4085 = !DILocalVariable(name: "buffer", arg: 1, scope: !4081, file: !148, line: 900, type: !66)
!4086 = !DILocalVariable(name: "count", arg: 2, scope: !4081, file: !148, line: 900, type: !151)
!4087 = !DILocalVariable(name: "format", arg: 3, scope: !4081, file: !148, line: 900, type: !2675)
!4088 = !DILocalVariable(name: "va", arg: 4, scope: !4081, file: !148, line: 900, type: !2680)
!4089 = !DILocation(line: 0, scope: !4081)
!4090 = !DILocation(line: 900, column: 72, scope: !4081)
!4091 = !DILocation(line: 902, column: 10, scope: !4081)
!4092 = !DILocation(line: 902, column: 3, scope: !4081)
!4093 = distinct !DISubprogram(name: "fctprintf", scope: !148, file: !148, line: 906, type: !4094, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4096)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!43, !167, !19, !2675, null}
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4103}
!4097 = !DILocalVariable(name: "out", arg: 1, scope: !4093, file: !148, line: 906, type: !167)
!4098 = !DILocalVariable(name: "arg", arg: 2, scope: !4093, file: !148, line: 906, type: !19)
!4099 = !DILocalVariable(name: "format", arg: 3, scope: !4093, file: !148, line: 906, type: !2675)
!4100 = !DILocalVariable(name: "va", scope: !4093, file: !148, line: 908, type: !2680)
!4101 = !DILocalVariable(name: "out_fct_wrap", scope: !4093, file: !148, line: 910, type: !4102)
!4102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!4103 = !DILocalVariable(name: "ret", scope: !4093, file: !148, line: 911, type: !2689)
!4104 = !DILocation(line: 0, scope: !4093)
!4105 = !DILocation(line: 908, column: 3, scope: !4093)
!4106 = !DILocation(line: 908, column: 11, scope: !4093)
!4107 = !DILocation(line: 909, column: 3, scope: !4093)
!4108 = !DILocation(line: 910, column: 3, scope: !4093)
!4109 = !DILocation(line: 910, column: 27, scope: !4093)
!4110 = !DILocation(line: 910, column: 42, scope: !4093)
!4111 = !{!4112, !330, i64 0}
!4112 = !{!"", !330, i64 0, !330, i64 4}
!4113 = !{!4112, !330, i64 4}
!4114 = !DILocation(line: 911, column: 47, scope: !4093)
!4115 = !DILocation(line: 911, column: 40, scope: !4093)
!4116 = !DILocation(line: 911, column: 19, scope: !4093)
!4117 = !DILocation(line: 912, column: 3, scope: !4093)
!4118 = !DILocation(line: 914, column: 1, scope: !4093)
!4119 = !DILocation(line: 913, column: 3, scope: !4093)
!4120 = distinct !DISubprogram(name: "_out_fct", scope: !148, file: !148, line: 159, type: !155, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4121)
!4121 = !{!4122, !4123, !4124, !4125}
!4122 = !DILocalVariable(name: "character", arg: 1, scope: !4120, file: !148, line: 159, type: !67)
!4123 = !DILocalVariable(name: "buffer", arg: 2, scope: !4120, file: !148, line: 159, type: !19)
!4124 = !DILocalVariable(name: "idx", arg: 3, scope: !4120, file: !148, line: 159, type: !151)
!4125 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4120, file: !148, line: 159, type: !151)
!4126 = !DILocation(line: 0, scope: !4120)
!4127 = !DILocation(line: 162, column: 7, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4120, file: !148, line: 162, column: 7)
!4129 = !DILocation(line: 162, column: 7, scope: !4120)
!4130 = !DILocation(line: 164, column: 6, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4128, file: !148, line: 162, column: 18)
!4132 = !DILocation(line: 164, column: 35, scope: !4131)
!4133 = !DILocation(line: 164, column: 51, scope: !4131)
!4134 = !DILocation(line: 164, column: 80, scope: !4131)
!4135 = !DILocation(line: 164, column: 5, scope: !4131)
!4136 = !DILocation(line: 165, column: 3, scope: !4131)
!4137 = !DILocation(line: 166, column: 1, scope: !4120)
!4138 = distinct !DISubprogram(name: "putc", scope: !4139, file: !4139, line: 10, type: !4140, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4142)
!4139 = !DIFile(filename: "src/icemu/printfmap.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!43, !43, !19}
!4142 = !{!4143, !4144}
!4143 = !DILocalVariable(name: "character", arg: 1, scope: !4138, file: !4139, line: 10, type: !43)
!4144 = !DILocalVariable(name: "stream", arg: 2, scope: !4138, file: !4139, line: 10, type: !19)
!4145 = !DILocation(line: 10, column: 14, scope: !4138)
!4146 = !DILocation(line: 10, column: 31, scope: !4138)
!4147 = !DILocation(line: 12, column: 11, scope: !4138)
!4148 = !DILocation(line: 13, column: 12, scope: !4138)
!4149 = !DILocation(line: 13, column: 5, scope: !4138)
!4150 = distinct !DISubprogram(name: "_putchar", scope: !4139, file: !4139, line: 17, type: !4151, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !67}
!4153 = !{!4154}
!4154 = !DILocalVariable(name: "character", arg: 1, scope: !4150, file: !4139, line: 17, type: !67)
!4155 = !DILocation(line: 17, column: 20, scope: !4150)
!4156 = !DILocation(line: 18, column: 10, scope: !4150)
!4157 = !DILocation(line: 18, column: 5, scope: !4150)
!4158 = !DILocation(line: 19, column: 1, scope: !4150)
!4159 = distinct !DISubprogram(name: "Reset_Handler", scope: !206, file: !206, line: 241, type: !214, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4160 = !DILocation(line: 246, column: 5, scope: !4159)
!4161 = !{i32 12955, i32 12997, i32 13043}
!4162 = !DILocation(line: 253, column: 5, scope: !4159)
!4163 = !{i32 13121}
!4164 = !DILocation(line: 269, column: 5, scope: !4159)
!4165 = !{i32 13474, i32 13517, i32 13555, i32 13593, i32 13618, i32 13659, i32 13700, i32 13737}
!4166 = !DILocation(line: 280, column: 5, scope: !4159)
!4167 = !{i32 13826, i32 13864, i32 13901, i32 13934, i32 13959, i32 13996, i32 14029, i32 14072}
!4168 = !DILocation(line: 293, column: 5, scope: !4159)
!4169 = !{i32 14183}
!4170 = !DILocation(line: 298, column: 5, scope: !4159)
!4171 = !{i32 14290}
!4172 = !DILocation(line: 299, column: 1, scope: !4159)
!4173 = distinct !DISubprogram(name: "NMI_Handler", scope: !206, file: !206, line: 312, type: !214, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4174 = !DILocation(line: 317, column: 5, scope: !4173)
!4175 = distinct !{!4175, !4174, !4176}
!4176 = !DILocation(line: 319, column: 5, scope: !4173)
!4177 = distinct !DISubprogram(name: "HardFault_Handler", scope: !206, file: !206, line: 330, type: !214, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4178 = !DILocation(line: 335, column: 5, scope: !4177)
!4179 = distinct !{!4179, !4178, !4180}
!4180 = !DILocation(line: 337, column: 5, scope: !4177)
!4181 = distinct !DISubprogram(name: "am_default_isr", scope: !206, file: !206, line: 348, type: !214, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4182 = !DILocation(line: 353, column: 5, scope: !4181)
!4183 = distinct !{!4183, !4182, !4184}
!4184 = !DILocation(line: 355, column: 5, scope: !4181)
