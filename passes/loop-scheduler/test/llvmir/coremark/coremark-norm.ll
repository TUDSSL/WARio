; ModuleID = '/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/coremark-loop-cluster.ll'
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
@.str.18 = private unnamed_addr constant [116 x i8] c"GCCClang 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)\00", align 1
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
  %3 = load i16, i16* %0, align 2, !dbg !293, !tbaa !294
  call void @llvm.dbg.value(metadata i16 %3, metadata !285, metadata !DIExpression()), !dbg !292
  %4 = sext i16 %3 to i32, !dbg !298
  %5 = ashr i32 %4, 7, !dbg !299
  %6 = and i32 %5, 1, !dbg !300
  %7 = trunc i32 %6 to i8, !dbg !301
  call void @llvm.dbg.value(metadata i8 %7, metadata !287, metadata !DIExpression()), !dbg !292
  %8 = icmp ne i8 %7, 0, !dbg !302
  br i1 %8, label %9, label %13, !dbg !303

9:                                                ; preds = %2
  %10 = sext i16 %3 to i32, !dbg !304
  %11 = and i32 %10, 127, !dbg !305
  %12 = trunc i32 %11 to i16, !dbg !306
  br label %78, !dbg !307

13:                                               ; preds = %2
  %14 = sext i16 %3 to i32, !dbg !308
  %15 = and i32 %14, 7, !dbg !309
  %16 = trunc i32 %15 to i16, !dbg !308
  call void @llvm.dbg.value(metadata i16 %16, metadata !288, metadata !DIExpression()), !dbg !310
  %17 = sext i16 %3 to i32, !dbg !311
  %18 = ashr i32 %17, 3, !dbg !312
  %19 = and i32 %18, 15, !dbg !313
  %20 = trunc i32 %19 to i16, !dbg !314
  call void @llvm.dbg.value(metadata i16 %20, metadata !291, metadata !DIExpression()), !dbg !310
  %21 = sext i16 %20 to i32, !dbg !315
  %22 = shl i32 %21, 4, !dbg !316
  %23 = sext i16 %20 to i32, !dbg !317
  %24 = or i32 %23, %22, !dbg !317
  %25 = trunc i32 %24 to i16, !dbg !317
  call void @llvm.dbg.value(metadata i16 %25, metadata !291, metadata !DIExpression()), !dbg !310
  %26 = sext i16 %16 to i32, !dbg !318
  br label %NodeBlock

NodeBlock:                                        ; preds = %13
  %Pivot = icmp slt i32 %26, 1
  br i1 %Pivot, label %27, label %LeafBlock

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %26, 1
  br i1 %SwitchLeaf, label %51, label %NewDefault

27:                                               ; preds = %NodeBlock
  %28 = sext i16 %25 to i32, !dbg !319
  %29 = icmp slt i32 %28, 34, !dbg !322
  br i1 %29, label %30, label %._crit_edge, !dbg !323

._crit_edge:                                      ; preds = %27
  br label %31, !dbg !323

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i16 34, metadata !291, metadata !DIExpression()), !dbg !310
  br label %31, !dbg !324

31:                                               ; preds = %30, %._crit_edge
  %.01 = phi i16 [ 34, %30 ], [ %25, %._crit_edge ], !dbg !310
  call void @llvm.dbg.value(metadata i16 %.01, metadata !291, metadata !DIExpression()), !dbg !310
  %32 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 4, !dbg !325
  %33 = load i32, i32* %32, align 4, !dbg !325, !tbaa !326
  %34 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 3, !dbg !332
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %34, i32 0, i32 3, !dbg !333
  %36 = load i8*, i8** %35, align 4, !dbg !333, !tbaa !334
  %37 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 0, !dbg !335
  %38 = load i16, i16* %37, align 4, !dbg !335, !tbaa !336
  %39 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 1, !dbg !337
  %40 = load i16, i16* %39, align 2, !dbg !337, !tbaa !338
  %41 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 9, !dbg !339
  %42 = load i16, i16* %41, align 4, !dbg !339, !tbaa !340
  %43 = call arm_aapcscc zeroext i16 @core_bench_state(i32 %33, i8* %36, i16 signext %38, i16 signext %40, i16 signext %.01, i16 zeroext %42), !dbg !341
  call void @llvm.dbg.value(metadata i16 %43, metadata !286, metadata !DIExpression()), !dbg !292
  %44 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 12, !dbg !342
  %45 = load i16, i16* %44, align 2, !dbg !342, !tbaa !344
  %46 = zext i16 %45 to i32, !dbg !345
  %47 = icmp eq i32 %46, 0, !dbg !346
  br i1 %47, label %48, label %._crit_edge3, !dbg !347

._crit_edge3:                                     ; preds = %31
  br label %50, !dbg !347

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 12, !dbg !348
  store i16 %43, i16* %49, align 2, !dbg !349, !tbaa !344
  br label %50, !dbg !350

50:                                               ; preds = %48, %._crit_edge3
  br label %64, !dbg !351

51:                                               ; preds = %LeafBlock
  %52 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 8, !dbg !352
  %53 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 9, !dbg !353
  %54 = load i16, i16* %53, align 4, !dbg !353, !tbaa !340
  %55 = call arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S* %52, i16 signext %25, i16 zeroext %54), !dbg !354
  call void @llvm.dbg.value(metadata i16 %55, metadata !286, metadata !DIExpression()), !dbg !292
  %56 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 11, !dbg !355
  %57 = load i16, i16* %56, align 4, !dbg !355, !tbaa !357
  %58 = zext i16 %57 to i32, !dbg !358
  %59 = icmp eq i32 %58, 0, !dbg !359
  br i1 %59, label %60, label %._crit_edge4, !dbg !360

._crit_edge4:                                     ; preds = %51
  br label %62, !dbg !360

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 11, !dbg !361
  store i16 %55, i16* %61, align 4, !dbg !362, !tbaa !357
  br label %62, !dbg !363

62:                                               ; preds = %60, %._crit_edge4
  br label %64, !dbg !364

NewDefault:                                       ; preds = %LeafBlock
  br label %63

63:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i16 %3, metadata !286, metadata !DIExpression()), !dbg !292
  br label %64, !dbg !365

64:                                               ; preds = %63, %62, %50
  %.02 = phi i16 [ %3, %63 ], [ %55, %62 ], [ %43, %50 ], !dbg !366
  call void @llvm.dbg.value(metadata i16 %.02, metadata !286, metadata !DIExpression()), !dbg !292
  %65 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 9, !dbg !367
  %66 = load i16, i16* %65, align 4, !dbg !367, !tbaa !340
  %67 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %.02, i16 zeroext %66), !dbg !368
  %68 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %1, i32 0, i32 9, !dbg !369
  store i16 %67, i16* %68, align 4, !dbg !370, !tbaa !340
  %69 = sext i16 %.02 to i32, !dbg !371
  %70 = and i32 %69, 127, !dbg !371
  %71 = trunc i32 %70 to i16, !dbg !371
  call void @llvm.dbg.value(metadata i16 %71, metadata !286, metadata !DIExpression()), !dbg !292
  %72 = sext i16 %3 to i32, !dbg !372
  %73 = and i32 %72, 65280, !dbg !373
  %74 = or i32 %73, 128, !dbg !374
  %75 = sext i16 %71 to i32, !dbg !375
  %76 = or i32 %74, %75, !dbg !376
  %77 = trunc i32 %76 to i16, !dbg !377
  store i16 %77, i16* %0, align 2, !dbg !378, !tbaa !294
  br label %78

78:                                               ; preds = %64, %9
  %.0 = phi i16 [ %12, %9 ], [ %71, %64 ], !dbg !379
  ret i16 %.0, !dbg !380
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @cmp_complex(%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*) #0 !dbg !381 {
  call void @llvm.dbg.value(metadata %struct.list_data_s* %0, metadata !385, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !386, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !387, metadata !DIExpression()), !dbg !390
  %4 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !391
  %5 = call arm_aapcscc signext i16 @calc_func(i16* %4, %struct.RESULTS_S* %2), !dbg !392
  call void @llvm.dbg.value(metadata i16 %5, metadata !388, metadata !DIExpression()), !dbg !390
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !393
  %7 = call arm_aapcscc signext i16 @calc_func(i16* %6, %struct.RESULTS_S* %2), !dbg !394
  call void @llvm.dbg.value(metadata i16 %7, metadata !389, metadata !DIExpression()), !dbg !390
  %8 = sext i16 %5 to i32, !dbg !395
  %9 = sext i16 %7 to i32, !dbg !396
  %10 = sub nsw i32 %8, %9, !dbg !397
  ret i32 %10, !dbg !398
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @cmp_idx(%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*) #0 !dbg !399 {
  call void @llvm.dbg.value(metadata %struct.list_data_s* %0, metadata !401, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !402, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !403, metadata !DIExpression()), !dbg !404
  %4 = icmp eq %struct.RESULTS_S* %2, null, !dbg !405
  br i1 %4, label %5, label %._crit_edge, !dbg !407

._crit_edge:                                      ; preds = %3
  br label %30, !dbg !407

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !408
  %7 = load i16, i16* %6, align 2, !dbg !408, !tbaa !410
  %8 = sext i16 %7 to i32, !dbg !412
  %9 = and i32 %8, 65280, !dbg !413
  %10 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !414
  %11 = load i16, i16* %10, align 2, !dbg !414, !tbaa !410
  %12 = sext i16 %11 to i32, !dbg !415
  %13 = ashr i32 %12, 8, !dbg !416
  %14 = and i32 255, %13, !dbg !417
  %15 = or i32 %9, %14, !dbg !418
  %16 = trunc i32 %15 to i16, !dbg !419
  %17 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !420
  store i16 %16, i16* %17, align 2, !dbg !421, !tbaa !410
  %18 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !422
  %19 = load i16, i16* %18, align 2, !dbg !422, !tbaa !410
  %20 = sext i16 %19 to i32, !dbg !423
  %21 = and i32 %20, 65280, !dbg !424
  %22 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !425
  %23 = load i16, i16* %22, align 2, !dbg !425, !tbaa !410
  %24 = sext i16 %23 to i32, !dbg !426
  %25 = ashr i32 %24, 8, !dbg !427
  %26 = and i32 255, %25, !dbg !428
  %27 = or i32 %21, %26, !dbg !429
  %28 = trunc i32 %27 to i16, !dbg !430
  %29 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !431
  store i16 %28, i16* %29, align 2, !dbg !432, !tbaa !410
  br label %30, !dbg !433

30:                                               ; preds = %5, %._crit_edge
  %31 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 1, !dbg !434
  %32 = load i16, i16* %31, align 2, !dbg !434, !tbaa !435
  %33 = sext i16 %32 to i32, !dbg !436
  %34 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 1, !dbg !437
  %35 = load i16, i16* %34, align 2, !dbg !437, !tbaa !435
  %36 = sext i16 %35 to i32, !dbg !438
  %37 = sub nsw i32 %33, %36, !dbg !439
  ret i32 %37, !dbg !440
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @copy_info(%struct.list_data_s*, %struct.list_data_s*) #0 !dbg !441 {
  call void @llvm.dbg.value(metadata %struct.list_data_s* %0, metadata !445, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !446, metadata !DIExpression()), !dbg !447
  %3 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !448
  %4 = load i16, i16* %3, align 2, !dbg !448, !tbaa !410
  %5 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 0, !dbg !449
  store i16 %4, i16* %5, align 2, !dbg !450, !tbaa !410
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 1, !dbg !451
  %7 = load i16, i16* %6, align 2, !dbg !451, !tbaa !435
  %8 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %0, i32 0, i32 1, !dbg !452
  store i16 %7, i16* %8, align 2, !dbg !453, !tbaa !435
  ret void, !dbg !454
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S*, i16 signext) #0 !dbg !455 {
  %3 = alloca %struct.list_data_s, align 2
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %0, metadata !459, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %1, metadata !460, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 0, metadata !461, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 0, metadata !462, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 0, metadata !463, metadata !DIExpression()), !dbg !473
  %4 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %0, i32 0, i32 7, !dbg !474
  %5 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !474, !tbaa !475
  call void @llvm.dbg.value(metadata %struct.list_head_s* %5, metadata !464, metadata !DIExpression()), !dbg !473
  %6 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %0, i32 0, i32 2, !dbg !476
  %7 = load i16, i16* %6, align 4, !dbg !476, !tbaa !477
  call void @llvm.dbg.value(metadata i16 %7, metadata !467, metadata !DIExpression()), !dbg !473
  %8 = bitcast %struct.list_data_s* %3 to i8*, !dbg !478
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !478
  call void @llvm.dbg.declare(metadata %struct.list_data_s* %3, metadata !471, metadata !DIExpression()), !dbg !479
  %9 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %3, i32 0, i32 1, !dbg !480
  store i16 %1, i16* %9, align 2, !dbg !481, !tbaa !435
  call void @llvm.dbg.value(metadata i16 0, metadata !472, metadata !DIExpression()), !dbg !473
  br label %10, !dbg !482

10:                                               ; preds = %81, %2
  %.06 = phi %struct.list_head_s* [ %5, %2 ], [ %20, %81 ], !dbg !473
  %.04 = phi i16 [ 0, %2 ], [ %.15, %81 ], !dbg !473
  %.02 = phi i16 [ 0, %2 ], [ %.13, %81 ], !dbg !484
  %.01 = phi i16 [ 0, %2 ], [ %.2, %81 ], !dbg !473
  %.0 = phi i16 [ 0, %2 ], [ %82, %81 ], !dbg !485
  call void @llvm.dbg.value(metadata i16 %.0, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %.01, metadata !461, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %.02, metadata !462, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %.04, metadata !463, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06, metadata !464, metadata !DIExpression()), !dbg !473
  %11 = sext i16 %.0 to i32, !dbg !486
  %12 = sext i16 %7 to i32, !dbg !488
  %13 = icmp slt i32 %11, %12, !dbg !489
  br i1 %13, label %14, label %83, !dbg !490

14:                                               ; preds = %10
  %15 = sext i16 %.0 to i32, !dbg !491
  %16 = and i32 %15, 255, !dbg !493
  %17 = trunc i32 %16 to i16, !dbg !494
  %18 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %3, i32 0, i32 0, !dbg !495
  store i16 %17, i16* %18, align 2, !dbg !496, !tbaa !410
  %19 = call arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s* %.06, %struct.list_data_s* %3), !dbg !497
  call void @llvm.dbg.value(metadata %struct.list_head_s* %19, metadata !468, metadata !DIExpression()), !dbg !473
  %20 = call arm_aapcscc %struct.list_head_s* @core_list_reverse(%struct.list_head_s* %.06), !dbg !498
  call void @llvm.dbg.value(metadata %struct.list_head_s* %20, metadata !464, metadata !DIExpression()), !dbg !473
  %21 = icmp eq %struct.list_head_s* %19, null, !dbg !499
  br i1 %21, label %22, label %36, !dbg !501

22:                                               ; preds = %14
  %23 = add i16 %.04, 1, !dbg !502
  call void @llvm.dbg.value(metadata i16 %23, metadata !463, metadata !DIExpression()), !dbg !473
  %24 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %20, i32 0, i32 0, !dbg !504
  %25 = load %struct.list_head_s*, %struct.list_head_s** %24, align 4, !dbg !504, !tbaa !505
  %26 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %25, i32 0, i32 1, !dbg !507
  %27 = load %struct.list_data_s*, %struct.list_data_s** %26, align 4, !dbg !507, !tbaa !508
  %28 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %27, i32 0, i32 0, !dbg !509
  %29 = load i16, i16* %28, align 2, !dbg !509, !tbaa !410
  %30 = sext i16 %29 to i32, !dbg !510
  %31 = ashr i32 %30, 8, !dbg !511
  %32 = and i32 %31, 1, !dbg !512
  %33 = zext i16 %.01 to i32, !dbg !513
  %34 = add nsw i32 %33, %32, !dbg !513
  %35 = trunc i32 %34 to i16, !dbg !513
  call void @llvm.dbg.value(metadata i16 %35, metadata !461, metadata !DIExpression()), !dbg !473
  br label %71, !dbg !514

36:                                               ; preds = %14
  %37 = add i16 %.02, 1, !dbg !515
  call void @llvm.dbg.value(metadata i16 %37, metadata !462, metadata !DIExpression()), !dbg !473
  %38 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %19, i32 0, i32 1, !dbg !517
  %39 = load %struct.list_data_s*, %struct.list_data_s** %38, align 4, !dbg !517, !tbaa !508
  %40 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %39, i32 0, i32 0, !dbg !519
  %41 = load i16, i16* %40, align 2, !dbg !519, !tbaa !410
  %42 = sext i16 %41 to i32, !dbg !520
  %43 = and i32 %42, 1, !dbg !521
  %44 = icmp ne i32 %43, 0, !dbg !521
  br i1 %44, label %45, label %._crit_edge, !dbg !522

._crit_edge:                                      ; preds = %36
  br label %56, !dbg !522

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %19, i32 0, i32 1, !dbg !523
  %47 = load %struct.list_data_s*, %struct.list_data_s** %46, align 4, !dbg !523, !tbaa !508
  %48 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %47, i32 0, i32 0, !dbg !524
  %49 = load i16, i16* %48, align 2, !dbg !524, !tbaa !410
  %50 = sext i16 %49 to i32, !dbg !525
  %51 = ashr i32 %50, 9, !dbg !526
  %52 = and i32 %51, 1, !dbg !527
  %53 = zext i16 %.01 to i32, !dbg !528
  %54 = add nsw i32 %53, %52, !dbg !528
  %55 = trunc i32 %54 to i16, !dbg !528
  call void @llvm.dbg.value(metadata i16 %55, metadata !461, metadata !DIExpression()), !dbg !473
  br label %56, !dbg !529

56:                                               ; preds = %45, %._crit_edge
  %.1 = phi i16 [ %55, %45 ], [ %.01, %._crit_edge ], !dbg !473
  call void @llvm.dbg.value(metadata i16 %.1, metadata !461, metadata !DIExpression()), !dbg !473
  %57 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %19, i32 0, i32 0, !dbg !530
  %58 = load %struct.list_head_s*, %struct.list_head_s** %57, align 4, !dbg !530, !tbaa !505
  %59 = icmp ne %struct.list_head_s* %58, null, !dbg !532
  br i1 %59, label %60, label %._crit_edge11, !dbg !533

._crit_edge11:                                    ; preds = %56
  br label %70, !dbg !533

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %19, i32 0, i32 0, !dbg !534
  %62 = load %struct.list_head_s*, %struct.list_head_s** %61, align 4, !dbg !534, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %62, metadata !469, metadata !DIExpression()), !dbg !473
  %63 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %62, i32 0, i32 0, !dbg !536
  %64 = load %struct.list_head_s*, %struct.list_head_s** %63, align 4, !dbg !536, !tbaa !505
  %65 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %19, i32 0, i32 0, !dbg !537
  store %struct.list_head_s* %64, %struct.list_head_s** %65, align 4, !dbg !538, !tbaa !505
  %66 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %20, i32 0, i32 0, !dbg !539
  %67 = load %struct.list_head_s*, %struct.list_head_s** %66, align 4, !dbg !539, !tbaa !505
  %68 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %62, i32 0, i32 0, !dbg !540
  store %struct.list_head_s* %67, %struct.list_head_s** %68, align 4, !dbg !541, !tbaa !505
  %69 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %20, i32 0, i32 0, !dbg !542
  store %struct.list_head_s* %62, %struct.list_head_s** %69, align 4, !dbg !543, !tbaa !505
  br label %70, !dbg !544

70:                                               ; preds = %60, %._crit_edge11
  br label %71

71:                                               ; preds = %70, %22
  %.15 = phi i16 [ %23, %22 ], [ %.04, %70 ], !dbg !473
  %.13 = phi i16 [ %.02, %22 ], [ %37, %70 ], !dbg !473
  %.2 = phi i16 [ %35, %22 ], [ %.1, %70 ], !dbg !545
  call void @llvm.dbg.value(metadata i16 %.2, metadata !461, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %.13, metadata !462, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %.15, metadata !463, metadata !DIExpression()), !dbg !473
  %72 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %3, i32 0, i32 1, !dbg !546
  %73 = load i16, i16* %72, align 2, !dbg !546, !tbaa !435
  %74 = sext i16 %73 to i32, !dbg !548
  %75 = icmp sge i32 %74, 0, !dbg !549
  br i1 %75, label %76, label %._crit_edge12, !dbg !550

._crit_edge12:                                    ; preds = %71
  br label %80, !dbg !550

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %3, i32 0, i32 1, !dbg !551
  %78 = load i16, i16* %77, align 2, !dbg !552, !tbaa !435
  %79 = add i16 %78, 1, !dbg !552
  store i16 %79, i16* %77, align 2, !dbg !552, !tbaa !435
  br label %80, !dbg !553

80:                                               ; preds = %76, %._crit_edge12
  br label %81, !dbg !554

81:                                               ; preds = %80
  %82 = add i16 %.0, 1, !dbg !555
  call void @llvm.dbg.value(metadata i16 %82, metadata !472, metadata !DIExpression()), !dbg !473
  br label %10, !dbg !556, !llvm.loop !557

83:                                               ; preds = %10
  %.06.lcssa = phi %struct.list_head_s* [ %.06, %10 ], !dbg !473
  %.04.lcssa = phi i16 [ %.04, %10 ], !dbg !473
  %.02.lcssa = phi i16 [ %.02, %10 ], !dbg !484
  %.01.lcssa = phi i16 [ %.01, %10 ], !dbg !473
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06.lcssa, metadata !464, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %.04.lcssa, metadata !463, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %.02.lcssa, metadata !462, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !461, metadata !DIExpression()), !dbg !473
  %84 = zext i16 %.02.lcssa to i32, !dbg !559
  %85 = mul nsw i32 %84, 4, !dbg !560
  %86 = zext i16 %.04.lcssa to i32, !dbg !561
  %87 = sub nsw i32 %85, %86, !dbg !562
  %88 = zext i16 %.01.lcssa to i32, !dbg !563
  %89 = add nsw i32 %88, %87, !dbg !563
  %90 = trunc i32 %89 to i16, !dbg !563
  call void @llvm.dbg.value(metadata i16 %90, metadata !461, metadata !DIExpression()), !dbg !473
  %91 = sext i16 %1 to i32, !dbg !564
  %92 = icmp sgt i32 %91, 0, !dbg !566
  br i1 %92, label %93, label %._crit_edge13, !dbg !567

._crit_edge13:                                    ; preds = %83
  br label %95, !dbg !567

93:                                               ; preds = %83
  %94 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %.06.lcssa, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_complex, %struct.RESULTS_S* %0), !dbg !568
  call void @llvm.dbg.value(metadata %struct.list_head_s* %94, metadata !464, metadata !DIExpression()), !dbg !473
  br label %95, !dbg !569

95:                                               ; preds = %93, %._crit_edge13
  %.17 = phi %struct.list_head_s* [ %94, %93 ], [ %.06.lcssa, %._crit_edge13 ], !dbg !473
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !464, metadata !DIExpression()), !dbg !473
  %96 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !570
  %97 = load %struct.list_head_s*, %struct.list_head_s** %96, align 4, !dbg !570, !tbaa !505
  %98 = call arm_aapcscc %struct.list_head_s* @core_list_remove(%struct.list_head_s* %97), !dbg !571
  call void @llvm.dbg.value(metadata %struct.list_head_s* %98, metadata !470, metadata !DIExpression()), !dbg !473
  %99 = call arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s* %.17, %struct.list_data_s* %3), !dbg !572
  call void @llvm.dbg.value(metadata %struct.list_head_s* %99, metadata !469, metadata !DIExpression()), !dbg !473
  %100 = icmp ne %struct.list_head_s* %99, null, !dbg !573
  br i1 %100, label %._crit_edge14, label %101, !dbg !575

._crit_edge14:                                    ; preds = %95
  br label %104, !dbg !575

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !576
  %103 = load %struct.list_head_s*, %struct.list_head_s** %102, align 4, !dbg !576, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %103, metadata !469, metadata !DIExpression()), !dbg !473
  br label %104, !dbg !577

104:                                              ; preds = %101, %._crit_edge14
  %.08 = phi %struct.list_head_s* [ %99, %._crit_edge14 ], [ %103, %101 ], !dbg !473
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.08, metadata !469, metadata !DIExpression()), !dbg !473
  br label %105, !dbg !578

105:                                              ; preds = %107, %104
  %.19 = phi %struct.list_head_s* [ %.08, %104 ], [ %114, %107 ], !dbg !473
  %.3 = phi i16 [ %90, %104 ], [ %112, %107 ], !dbg !473
  call void @llvm.dbg.value(metadata i16 %.3, metadata !461, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.19, metadata !469, metadata !DIExpression()), !dbg !473
  %106 = icmp ne %struct.list_head_s* %.19, null, !dbg !578
  br i1 %106, label %107, label %115, !dbg !578

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 1, !dbg !579
  %109 = load %struct.list_data_s*, %struct.list_data_s** %108, align 4, !dbg !579, !tbaa !508
  %110 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %109, i32 0, i32 0, !dbg !581
  %111 = load i16, i16* %110, align 2, !dbg !581, !tbaa !410
  %112 = call arm_aapcscc zeroext i16 @crc16(i16 signext %111, i16 zeroext %.3), !dbg !582
  call void @llvm.dbg.value(metadata i16 %112, metadata !461, metadata !DIExpression()), !dbg !473
  %113 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.19, i32 0, i32 0, !dbg !583
  %114 = load %struct.list_head_s*, %struct.list_head_s** %113, align 4, !dbg !583, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %114, metadata !469, metadata !DIExpression()), !dbg !473
  br label %105, !dbg !578, !llvm.loop !584

115:                                              ; preds = %105
  %.3.lcssa = phi i16 [ %.3, %105 ], !dbg !473
  call void @llvm.dbg.value(metadata i16 %.3.lcssa, metadata !461, metadata !DIExpression()), !dbg !473
  %116 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !586
  %117 = load %struct.list_head_s*, %struct.list_head_s** %116, align 4, !dbg !586, !tbaa !505
  %118 = call arm_aapcscc %struct.list_head_s* @core_list_undo_remove(%struct.list_head_s* %98, %struct.list_head_s* %117), !dbg !587
  call void @llvm.dbg.value(metadata %struct.list_head_s* %118, metadata !470, metadata !DIExpression()), !dbg !473
  %119 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %.17, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_idx, %struct.RESULTS_S* null), !dbg !588
  call void @llvm.dbg.value(metadata %struct.list_head_s* %119, metadata !464, metadata !DIExpression()), !dbg !473
  %120 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %119, i32 0, i32 0, !dbg !589
  %121 = load %struct.list_head_s*, %struct.list_head_s** %120, align 4, !dbg !589, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %121, metadata !469, metadata !DIExpression()), !dbg !473
  br label %122, !dbg !590

122:                                              ; preds = %124, %115
  %.210 = phi %struct.list_head_s* [ %121, %115 ], [ %131, %124 ], !dbg !473
  %.4 = phi i16 [ %.3.lcssa, %115 ], [ %129, %124 ], !dbg !473
  call void @llvm.dbg.value(metadata i16 %.4, metadata !461, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.210, metadata !469, metadata !DIExpression()), !dbg !473
  %123 = icmp ne %struct.list_head_s* %.210, null, !dbg !590
  br i1 %123, label %124, label %132, !dbg !590

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %119, i32 0, i32 1, !dbg !591
  %126 = load %struct.list_data_s*, %struct.list_data_s** %125, align 4, !dbg !591, !tbaa !508
  %127 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %126, i32 0, i32 0, !dbg !593
  %128 = load i16, i16* %127, align 2, !dbg !593, !tbaa !410
  %129 = call arm_aapcscc zeroext i16 @crc16(i16 signext %128, i16 zeroext %.4), !dbg !594
  call void @llvm.dbg.value(metadata i16 %129, metadata !461, metadata !DIExpression()), !dbg !473
  %130 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.210, i32 0, i32 0, !dbg !595
  %131 = load %struct.list_head_s*, %struct.list_head_s** %130, align 4, !dbg !595, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %131, metadata !469, metadata !DIExpression()), !dbg !473
  br label %122, !dbg !590, !llvm.loop !596

132:                                              ; preds = %122
  %.4.lcssa = phi i16 [ %.4, %122 ], !dbg !473
  call void @llvm.dbg.value(metadata i16 %.4.lcssa, metadata !461, metadata !DIExpression()), !dbg !473
  %133 = bitcast %struct.list_data_s* %3 to i8*, !dbg !598
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %133) #4, !dbg !598
  ret i16 %.4.lcssa, !dbg !599
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s*, %struct.list_data_s*) #0 !dbg !600 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !605, metadata !DIExpression()), !dbg !606
  %3 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 1, !dbg !607
  %4 = load i16, i16* %3, align 2, !dbg !607, !tbaa !435
  %5 = sext i16 %4 to i32, !dbg !609
  %6 = icmp sge i32 %5, 0, !dbg !610
  br i1 %6, label %7, label %26, !dbg !611

7:                                                ; preds = %2
  br label %8, !dbg !612

8:                                                ; preds = %22, %7
  %.01 = phi %struct.list_head_s* [ %0, %7 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01, metadata !604, metadata !DIExpression()), !dbg !606
  %9 = icmp ne %struct.list_head_s* %.01, null, !dbg !614
  br i1 %9, label %10, label %._crit_edge, !dbg !615

._crit_edge:                                      ; preds = %8
  br label %20, !dbg !615

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 1, !dbg !616
  %12 = load %struct.list_data_s*, %struct.list_data_s** %11, align 4, !dbg !616, !tbaa !508
  %13 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %12, i32 0, i32 1, !dbg !617
  %14 = load i16, i16* %13, align 2, !dbg !617, !tbaa !435
  %15 = sext i16 %14 to i32, !dbg !618
  %16 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 1, !dbg !619
  %17 = load i16, i16* %16, align 2, !dbg !619, !tbaa !435
  %18 = sext i16 %17 to i32, !dbg !620
  %19 = icmp ne i32 %15, %18, !dbg !621
  br label %20

20:                                               ; preds = %10, %._crit_edge
  %21 = phi i1 [ false, %._crit_edge ], [ %19, %10 ], !dbg !622
  br i1 %21, label %22, label %25, !dbg !612

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 0, !dbg !623
  %24 = load %struct.list_head_s*, %struct.list_head_s** %23, align 4, !dbg !623, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %24, metadata !604, metadata !DIExpression()), !dbg !606
  br label %8, !dbg !612, !llvm.loop !624

25:                                               ; preds = %20
  %.01.lcssa = phi %struct.list_head_s* [ %.01, %20 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01.lcssa, metadata !604, metadata !DIExpression()), !dbg !606
  br label %46, !dbg !625

26:                                               ; preds = %2
  br label %27, !dbg !626

27:                                               ; preds = %42, %26
  %.1 = phi %struct.list_head_s* [ %0, %26 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1, metadata !604, metadata !DIExpression()), !dbg !606
  %28 = icmp ne %struct.list_head_s* %.1, null, !dbg !628
  br i1 %28, label %29, label %._crit_edge2, !dbg !629

._crit_edge2:                                     ; preds = %27
  br label %40, !dbg !629

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.1, i32 0, i32 1, !dbg !630
  %31 = load %struct.list_data_s*, %struct.list_data_s** %30, align 4, !dbg !630, !tbaa !508
  %32 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %31, i32 0, i32 0, !dbg !631
  %33 = load i16, i16* %32, align 2, !dbg !631, !tbaa !410
  %34 = sext i16 %33 to i32, !dbg !632
  %35 = and i32 %34, 255, !dbg !633
  %36 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %1, i32 0, i32 0, !dbg !634
  %37 = load i16, i16* %36, align 2, !dbg !634, !tbaa !410
  %38 = sext i16 %37 to i32, !dbg !635
  %39 = icmp ne i32 %35, %38, !dbg !636
  br label %40

40:                                               ; preds = %29, %._crit_edge2
  %41 = phi i1 [ false, %._crit_edge2 ], [ %39, %29 ], !dbg !637
  br i1 %41, label %42, label %45, !dbg !626

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.1, i32 0, i32 0, !dbg !638
  %44 = load %struct.list_head_s*, %struct.list_head_s** %43, align 4, !dbg !638, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %44, metadata !604, metadata !DIExpression()), !dbg !606
  br label %27, !dbg !626, !llvm.loop !639

45:                                               ; preds = %40
  %.1.lcssa = phi %struct.list_head_s* [ %.1, %40 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1.lcssa, metadata !604, metadata !DIExpression()), !dbg !606
  br label %46, !dbg !640

46:                                               ; preds = %45, %25
  %.0 = phi %struct.list_head_s* [ %.01.lcssa, %25 ], [ %.1.lcssa, %45 ], !dbg !641
  ret %struct.list_head_s* %.0, !dbg !642
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_reverse(%struct.list_head_s*) #0 !dbg !643 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !647, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* null, metadata !648, metadata !DIExpression()), !dbg !650
  br label %2, !dbg !651

2:                                                ; preds = %4, %1
  %.01 = phi %struct.list_head_s* [ null, %1 ], [ %.0, %4 ], !dbg !650
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !647, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01, metadata !648, metadata !DIExpression()), !dbg !650
  %3 = icmp ne %struct.list_head_s* %.0, null, !dbg !651
  br i1 %3, label %4, label %8, !dbg !651

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !652
  %6 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !dbg !652, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %6, metadata !649, metadata !DIExpression()), !dbg !650
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !654
  store %struct.list_head_s* %.01, %struct.list_head_s** %7, align 4, !dbg !655, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !648, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %6, metadata !647, metadata !DIExpression()), !dbg !650
  br label %2, !dbg !651, !llvm.loop !656

8:                                                ; preds = %2
  %.01.lcssa = phi %struct.list_head_s* [ %.01, %2 ], !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01.lcssa, metadata !648, metadata !DIExpression()), !dbg !650
  ret %struct.list_head_s* %.01.lcssa, !dbg !658
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s*, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)*, %struct.RESULTS_S*) #0 !dbg !659 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !665, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* %1, metadata !666, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !667, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 1, metadata !672, metadata !DIExpression()), !dbg !677
  br label %4, !dbg !678

4:                                                ; preds = %73, %3
  %.020 = phi i32 [ 1, %3 ], [ %74, %73 ], !dbg !677
  %.0 = phi %struct.list_head_s* [ %0, %3 ], [ %.1.lcssa, %73 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !665, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.020, metadata !672, metadata !DIExpression()), !dbg !677
  br label %5, !dbg !678

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !668, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* null, metadata !665, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* null, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 0, metadata !673, metadata !DIExpression()), !dbg !677
  br label %6, !dbg !679

6:                                                ; preds = %68, %5
  %.021 = phi i32 [ 0, %5 ], [ %9, %68 ], !dbg !681
  %.018 = phi %struct.list_head_s* [ null, %5 ], [ %.119.lcssa, %68 ], !dbg !682
  %.06 = phi %struct.list_head_s* [ %.0, %5 ], [ %.212.lcssa, %68 ], !dbg !681
  %.1 = phi %struct.list_head_s* [ null, %5 ], [ %.2.lcssa, %68 ], !dbg !683
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1, metadata !665, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06, metadata !668, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.018, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.021, metadata !673, metadata !DIExpression()), !dbg !677
  %7 = icmp ne %struct.list_head_s* %.06, null, !dbg !679
  br i1 %7, label %8, label %69, !dbg !679

8:                                                ; preds = %6
  %9 = add nuw nsw i32 %.021, 1, !dbg !684
  call void @llvm.dbg.value(metadata i32 %9, metadata !673, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 0, metadata !676, metadata !DIExpression()), !dbg !677
  br label %10, !dbg !686

10:                                               ; preds = %19, %8
  %.022 = phi i32 [ 0, %8 ], [ %13, %19 ], !dbg !688
  %.010 = phi %struct.list_head_s* [ %.06, %8 ], [ %15, %19 ], !dbg !688
  call void @llvm.dbg.value(metadata i32 %.022, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.010, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.022, metadata !674, metadata !DIExpression()), !dbg !677
  %11 = icmp slt i32 %.022, %.020, !dbg !689
  br i1 %11, label %12, label %._crit_edge, !dbg !691

._crit_edge:                                      ; preds = %10
  %.022.lcssa = phi i32 [ %.022, %10 ], !dbg !688
  %.010.lcssa = phi %struct.list_head_s* [ %.010, %10 ], !dbg !688
  call void @llvm.dbg.value(metadata i32 %.022.lcssa, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.010.lcssa, metadata !669, metadata !DIExpression()), !dbg !677
  br label %20, !dbg !691

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %.022, 1, !dbg !692
  call void @llvm.dbg.value(metadata i32 %13, metadata !674, metadata !DIExpression()), !dbg !677
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.010, i32 0, i32 0, !dbg !694
  %15 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !694, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %15, metadata !669, metadata !DIExpression()), !dbg !677
  %16 = icmp ne %struct.list_head_s* %15, null, !dbg !695
  br i1 %16, label %18, label %17, !dbg !697

17:                                               ; preds = %12
  %.lcssa34 = phi i32 [ %13, %12 ], !dbg !692
  %.lcssa = phi %struct.list_head_s* [ %15, %12 ], !dbg !694
  br label %20, !dbg !698

18:                                               ; preds = %12
  br label %19, !dbg !699

19:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %13, metadata !676, metadata !DIExpression()), !dbg !677
  br label %10, !dbg !700, !llvm.loop !701

20:                                               ; preds = %17, %._crit_edge
  %.123 = phi i32 [ %.lcssa34, %17 ], [ %.022.lcssa, %._crit_edge ], !dbg !688
  %.111 = phi %struct.list_head_s* [ %.lcssa, %17 ], [ %.010.lcssa, %._crit_edge ], !dbg !688
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.111, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.123, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.020, metadata !675, metadata !DIExpression()), !dbg !677
  br label %21, !dbg !703

21:                                               ; preds = %67, %20
  %.224 = phi i32 [ %.123, %20 ], [ %.527, %67 ], !dbg !692
  %.119 = phi %struct.list_head_s* [ %.018, %20 ], [ %.217, %67 ], !dbg !681
  %.212 = phi %struct.list_head_s* [ %.111, %20 ], [ %.5, %67 ], !dbg !688
  %.17 = phi %struct.list_head_s* [ %.06, %20 ], [ %.4, %67 ], !dbg !704
  %.02 = phi i32 [ %.020, %20 ], [ %.35, %67 ], !dbg !688
  %.2 = phi %struct.list_head_s* [ %.1, %20 ], [ %.3, %67 ], !dbg !683
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.2, metadata !665, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.02, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !668, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.119, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.224, metadata !674, metadata !DIExpression()), !dbg !677
  %22 = icmp sgt i32 %.224, 0, !dbg !705
  br i1 %22, label %._crit_edge28, label %23, !dbg !706

._crit_edge28:                                    ; preds = %21
  br label %29, !dbg !706

23:                                               ; preds = %21
  %24 = icmp sgt i32 %.02, 0, !dbg !707
  br i1 %24, label %25, label %._crit_edge29, !dbg !708

._crit_edge29:                                    ; preds = %23
  br label %27, !dbg !708

25:                                               ; preds = %23
  %26 = icmp ne %struct.list_head_s* %.212, null, !dbg !708
  br label %27

27:                                               ; preds = %25, %._crit_edge29
  %28 = phi i1 [ false, %._crit_edge29 ], [ %26, %25 ], !dbg !688
  br label %29, !dbg !706

29:                                               ; preds = %27, %._crit_edge28
  %30 = phi i1 [ true, %._crit_edge28 ], [ %28, %27 ]
  br i1 %30, label %31, label %68, !dbg !703

31:                                               ; preds = %29
  %32 = icmp eq i32 %.224, 0, !dbg !709
  br i1 %32, label %33, label %37, !dbg !712

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !670, metadata !DIExpression()), !dbg !677
  %34 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 0, !dbg !713
  %35 = load %struct.list_head_s*, %struct.list_head_s** %34, align 4, !dbg !713, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %35, metadata !669, metadata !DIExpression()), !dbg !677
  %36 = add nsw i32 %.02, -1, !dbg !715
  call void @llvm.dbg.value(metadata i32 %36, metadata !675, metadata !DIExpression()), !dbg !677
  br label %62, !dbg !716

37:                                               ; preds = %31
  %38 = icmp eq i32 %.02, 0, !dbg !717
  br i1 %38, label %._crit_edge30, label %39, !dbg !719

._crit_edge30:                                    ; preds = %37
  br label %41, !dbg !719

39:                                               ; preds = %37
  %40 = icmp ne %struct.list_head_s* %.212, null, !dbg !720
  br i1 %40, label %45, label %._crit_edge31, !dbg !721

._crit_edge31:                                    ; preds = %39
  br label %41, !dbg !721

41:                                               ; preds = %._crit_edge31, %._crit_edge30
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !670, metadata !DIExpression()), !dbg !677
  %42 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !722
  %43 = load %struct.list_head_s*, %struct.list_head_s** %42, align 4, !dbg !722, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %43, metadata !668, metadata !DIExpression()), !dbg !677
  %44 = add nsw i32 %.224, -1, !dbg !724
  call void @llvm.dbg.value(metadata i32 %44, metadata !674, metadata !DIExpression()), !dbg !677
  br label %61, !dbg !725

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 1, !dbg !726
  %47 = load %struct.list_data_s*, %struct.list_data_s** %46, align 4, !dbg !726, !tbaa !508
  %48 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 1, !dbg !728
  %49 = load %struct.list_data_s*, %struct.list_data_s** %48, align 4, !dbg !728, !tbaa !508
  %50 = call arm_aapcscc i32 %1(%struct.list_data_s* %47, %struct.list_data_s* %49, %struct.RESULTS_S* %2), !dbg !729
  %51 = icmp sle i32 %50, 0, !dbg !730
  br i1 %51, label %52, label %56, !dbg !731

52:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !670, metadata !DIExpression()), !dbg !677
  %53 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !732
  %54 = load %struct.list_head_s*, %struct.list_head_s** %53, align 4, !dbg !732, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %54, metadata !668, metadata !DIExpression()), !dbg !677
  %55 = add nsw i32 %.224, -1, !dbg !734
  call void @llvm.dbg.value(metadata i32 %55, metadata !674, metadata !DIExpression()), !dbg !677
  br label %60, !dbg !735

56:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !670, metadata !DIExpression()), !dbg !677
  %57 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 0, !dbg !736
  %58 = load %struct.list_head_s*, %struct.list_head_s** %57, align 4, !dbg !736, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %58, metadata !669, metadata !DIExpression()), !dbg !677
  %59 = add nsw i32 %.02, -1, !dbg !738
  call void @llvm.dbg.value(metadata i32 %59, metadata !675, metadata !DIExpression()), !dbg !677
  br label %60

60:                                               ; preds = %56, %52
  %.325 = phi i32 [ %55, %52 ], [ %.224, %56 ], !dbg !688
  %.015 = phi %struct.list_head_s* [ %.17, %52 ], [ %.212, %56 ], !dbg !739
  %.313 = phi %struct.list_head_s* [ %.212, %52 ], [ %58, %56 ], !dbg !688
  %.28 = phi %struct.list_head_s* [ %54, %52 ], [ %.17, %56 ], !dbg !681
  %.13 = phi i32 [ %.02, %52 ], [ %59, %56 ], !dbg !688
  call void @llvm.dbg.value(metadata i32 %.13, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.28, metadata !668, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.313, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.015, metadata !670, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.325, metadata !674, metadata !DIExpression()), !dbg !677
  br label %61

61:                                               ; preds = %60, %41
  %.426 = phi i32 [ %44, %41 ], [ %.325, %60 ], !dbg !740
  %.116 = phi %struct.list_head_s* [ %.17, %41 ], [ %.015, %60 ], !dbg !740
  %.414 = phi %struct.list_head_s* [ %.212, %41 ], [ %.313, %60 ], !dbg !741
  %.39 = phi %struct.list_head_s* [ %43, %41 ], [ %.28, %60 ], !dbg !740
  %.24 = phi i32 [ %.02, %41 ], [ %.13, %60 ], !dbg !742
  call void @llvm.dbg.value(metadata i32 %.24, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.39, metadata !668, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.414, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.116, metadata !670, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.426, metadata !674, metadata !DIExpression()), !dbg !677
  br label %62

62:                                               ; preds = %61, %33
  %.527 = phi i32 [ %.224, %33 ], [ %.426, %61 ], !dbg !688
  %.217 = phi %struct.list_head_s* [ %.212, %33 ], [ %.116, %61 ], !dbg !743
  %.5 = phi %struct.list_head_s* [ %35, %33 ], [ %.414, %61 ], !dbg !688
  %.4 = phi %struct.list_head_s* [ %.17, %33 ], [ %.39, %61 ], !dbg !681
  %.35 = phi i32 [ %36, %33 ], [ %.24, %61 ], !dbg !688
  call void @llvm.dbg.value(metadata i32 %.35, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.4, metadata !668, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.5, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !670, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32 %.527, metadata !674, metadata !DIExpression()), !dbg !677
  %63 = icmp ne %struct.list_head_s* %.119, null, !dbg !744
  br i1 %63, label %64, label %66, !dbg !746

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.119, i32 0, i32 0, !dbg !747
  store %struct.list_head_s* %.217, %struct.list_head_s** %65, align 4, !dbg !749, !tbaa !505
  br label %67, !dbg !750

66:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !665, metadata !DIExpression()), !dbg !677
  br label %67

67:                                               ; preds = %66, %64
  %.3 = phi %struct.list_head_s* [ %.2, %64 ], [ %.217, %66 ], !dbg !681
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.3, metadata !665, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !671, metadata !DIExpression()), !dbg !677
  br label %21, !dbg !703, !llvm.loop !751

68:                                               ; preds = %29
  %.119.lcssa = phi %struct.list_head_s* [ %.119, %29 ], !dbg !681
  %.212.lcssa = phi %struct.list_head_s* [ %.212, %29 ], !dbg !688
  %.2.lcssa = phi %struct.list_head_s* [ %.2, %29 ], !dbg !683
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.119.lcssa, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212.lcssa, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.2.lcssa, metadata !665, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212.lcssa, metadata !668, metadata !DIExpression()), !dbg !677
  br label %6, !dbg !679, !llvm.loop !753

69:                                               ; preds = %6
  %.021.lcssa = phi i32 [ %.021, %6 ], !dbg !681
  %.018.lcssa = phi %struct.list_head_s* [ %.018, %6 ], !dbg !682
  %.1.lcssa = phi %struct.list_head_s* [ %.1, %6 ], !dbg !683
  call void @llvm.dbg.value(metadata i32 %.021.lcssa, metadata !673, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.018.lcssa, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1.lcssa, metadata !665, metadata !DIExpression()), !dbg !677
  %70 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.018.lcssa, i32 0, i32 0, !dbg !755
  store %struct.list_head_s* null, %struct.list_head_s** %70, align 4, !dbg !756, !tbaa !505
  %71 = icmp sle i32 %.021.lcssa, 1, !dbg !757
  br i1 %71, label %72, label %73, !dbg !759

72:                                               ; preds = %69
  %.1.lcssa.lcssa = phi %struct.list_head_s* [ %.1.lcssa, %69 ], !dbg !683
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1.lcssa.lcssa, metadata !665, metadata !DIExpression()), !dbg !677
  ret %struct.list_head_s* %.1.lcssa.lcssa, !dbg !760

73:                                               ; preds = %69
  %74 = mul nuw nsw i32 %.020, 2, !dbg !761
  call void @llvm.dbg.value(metadata i32 %74, metadata !672, metadata !DIExpression()), !dbg !677
  br label %4, !dbg !678, !llvm.loop !762
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_remove(%struct.list_head_s*) #0 !dbg !764 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !766, metadata !DIExpression()), !dbg !769
  %2 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !770
  %3 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !770, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %3, metadata !768, metadata !DIExpression()), !dbg !769
  %4 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !771
  %5 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !771, !tbaa !508
  call void @llvm.dbg.value(metadata %struct.list_data_s* %5, metadata !767, metadata !DIExpression()), !dbg !769
  %6 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 1, !dbg !772
  %7 = load %struct.list_data_s*, %struct.list_data_s** %6, align 4, !dbg !772, !tbaa !508
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !773
  store %struct.list_data_s* %7, %struct.list_data_s** %8, align 4, !dbg !774, !tbaa !508
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 1, !dbg !775
  store %struct.list_data_s* %5, %struct.list_data_s** %9, align 4, !dbg !776, !tbaa !508
  %10 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !777
  %11 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !777, !tbaa !505
  %12 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %11, i32 0, i32 0, !dbg !778
  %13 = load %struct.list_head_s*, %struct.list_head_s** %12, align 4, !dbg !778, !tbaa !505
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !779
  store %struct.list_head_s* %13, %struct.list_head_s** %14, align 4, !dbg !780, !tbaa !505
  %15 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 0, !dbg !781
  store %struct.list_head_s* null, %struct.list_head_s** %15, align 4, !dbg !782, !tbaa !505
  ret %struct.list_head_s* %3, !dbg !783
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_undo_remove(%struct.list_head_s*, %struct.list_head_s*) #0 !dbg !784 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !788, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.value(metadata %struct.list_head_s* %1, metadata !789, metadata !DIExpression()), !dbg !791
  %3 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !792
  %4 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !792, !tbaa !508
  call void @llvm.dbg.value(metadata %struct.list_data_s* %4, metadata !790, metadata !DIExpression()), !dbg !791
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 1, !dbg !793
  %6 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !793, !tbaa !508
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !794
  store %struct.list_data_s* %6, %struct.list_data_s** %7, align 4, !dbg !795, !tbaa !508
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 1, !dbg !796
  store %struct.list_data_s* %4, %struct.list_data_s** %8, align 4, !dbg !797, !tbaa !508
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 0, !dbg !798
  %10 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !dbg !798, !tbaa !505
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !799
  store %struct.list_head_s* %10, %struct.list_head_s** %11, align 4, !dbg !800, !tbaa !505
  %12 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 0, !dbg !801
  store %struct.list_head_s* %0, %struct.list_head_s** %12, align 4, !dbg !802, !tbaa !505
  ret %struct.list_head_s* %0, !dbg !803
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_init(i32, %struct.list_head_s*, i16 signext) #0 !dbg !804 {
  %4 = alloca %struct.list_head_s*, align 4
  %5 = alloca %struct.list_data_s*, align 4
  %6 = alloca %struct.list_data_s, align 2
  call void @llvm.dbg.value(metadata i32 %0, metadata !808, metadata !DIExpression()), !dbg !829
  store %struct.list_head_s* %1, %struct.list_head_s** %4, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %4, metadata !809, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i16 %2, metadata !810, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 20, metadata !811, metadata !DIExpression()), !dbg !829
  %7 = udiv i32 %0, 20, !dbg !831
  %8 = sub i32 %7, 2, !dbg !832
  call void @llvm.dbg.value(metadata i32 %8, metadata !812, metadata !DIExpression()), !dbg !829
  %9 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !833, !tbaa !334
  %10 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %9, i32 %8, !dbg !834
  call void @llvm.dbg.value(metadata %struct.list_head_s* %10, metadata !813, metadata !DIExpression()), !dbg !829
  %11 = bitcast %struct.list_data_s** %5 to i8*, !dbg !835
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !835
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %5, metadata !814, metadata !DIExpression()), !dbg !836
  %12 = bitcast %struct.list_head_s* %10 to %struct.list_data_s*, !dbg !837
  store %struct.list_data_s* %12, %struct.list_data_s** %5, align 4, !dbg !836, !tbaa !334
  %13 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !838, !tbaa !334
  %14 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %13, i32 %8, !dbg !839
  call void @llvm.dbg.value(metadata %struct.list_data_s* %14, metadata !815, metadata !DIExpression()), !dbg !829
  %15 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !840, !tbaa !334
  call void @llvm.dbg.value(metadata %struct.list_head_s* %15, metadata !818, metadata !DIExpression()), !dbg !829
  %16 = bitcast %struct.list_data_s* %6 to i8*, !dbg !841
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !841
  call void @llvm.dbg.declare(metadata %struct.list_data_s* %6, metadata !819, metadata !DIExpression()), !dbg !842
  %17 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 0, !dbg !843
  store %struct.list_head_s* null, %struct.list_head_s** %17, align 4, !dbg !844, !tbaa !505
  %18 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !845, !tbaa !334
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !846
  store %struct.list_data_s* %18, %struct.list_data_s** %19, align 4, !dbg !847, !tbaa !508
  %20 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !848
  %21 = load %struct.list_data_s*, %struct.list_data_s** %20, align 4, !dbg !848, !tbaa !508
  %22 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %21, i32 0, i32 1, !dbg !849
  store i16 0, i16* %22, align 2, !dbg !850, !tbaa !435
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !851
  %24 = load %struct.list_data_s*, %struct.list_data_s** %23, align 4, !dbg !851, !tbaa !508
  %25 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %24, i32 0, i32 0, !dbg !852
  store i16 -32640, i16* %25, align 2, !dbg !853, !tbaa !410
  %26 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !854, !tbaa !334
  %27 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %26, i32 1, !dbg !854
  store %struct.list_head_s* %27, %struct.list_head_s** %4, align 4, !dbg !854, !tbaa !334
  %28 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !855, !tbaa !334
  %29 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %28, i32 1, !dbg !855
  store %struct.list_data_s* %29, %struct.list_data_s** %5, align 4, !dbg !855, !tbaa !334
  %30 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 1, !dbg !856
  store i16 32767, i16* %30, align 2, !dbg !857, !tbaa !435
  %31 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 0, !dbg !858
  store i16 -1, i16* %31, align 2, !dbg !859, !tbaa !410
  %32 = call arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s* %15, %struct.list_data_s* %6, %struct.list_head_s** %4, %struct.list_data_s** %5, %struct.list_head_s* %10, %struct.list_data_s* %14), !dbg !860
  call void @llvm.dbg.value(metadata i32 0, metadata !816, metadata !DIExpression()), !dbg !829
  br label %33, !dbg !861

33:                                               ; preds = %54, %3
  %.01 = phi i32 [ 0, %3 ], [ %55, %54 ], !dbg !862
  call void @llvm.dbg.value(metadata i32 %.01, metadata !816, metadata !DIExpression()), !dbg !829
  %34 = icmp ult i32 %.01, %8, !dbg !863
  br i1 %34, label %35, label %56, !dbg !864

35:                                               ; preds = %33
  %36 = sext i16 %2 to i32, !dbg !865
  %37 = xor i32 %36, %.01, !dbg !866
  %38 = trunc i32 %37 to i16, !dbg !867
  %39 = zext i16 %38 to i32, !dbg !867
  %40 = and i32 %39, 15, !dbg !868
  %41 = trunc i32 %40 to i16, !dbg !869
  call void @llvm.dbg.value(metadata i16 %41, metadata !820, metadata !DIExpression()), !dbg !870
  %42 = zext i16 %41 to i32, !dbg !871
  %43 = shl i32 %42, 3, !dbg !872
  %44 = and i32 %.01, 7, !dbg !873
  %45 = or i32 %43, %44, !dbg !874
  %46 = trunc i32 %45 to i16, !dbg !875
  call void @llvm.dbg.value(metadata i16 %46, metadata !824, metadata !DIExpression()), !dbg !870
  %47 = zext i16 %46 to i32, !dbg !876
  %48 = shl i32 %47, 8, !dbg !877
  %49 = zext i16 %46 to i32, !dbg !878
  %50 = or i32 %48, %49, !dbg !879
  %51 = trunc i32 %50 to i16, !dbg !880
  %52 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 0, !dbg !881
  store i16 %51, i16* %52, align 2, !dbg !882, !tbaa !410
  %53 = call arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s* %15, %struct.list_data_s* %6, %struct.list_head_s** %4, %struct.list_data_s** %5, %struct.list_head_s* %10, %struct.list_data_s* %14), !dbg !883
  br label %54, !dbg !884

54:                                               ; preds = %35
  %55 = add i32 %.01, 1, !dbg !885
  call void @llvm.dbg.value(metadata i32 %55, metadata !816, metadata !DIExpression()), !dbg !829
  br label %33, !dbg !886, !llvm.loop !887

56:                                               ; preds = %33
  %57 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 0, !dbg !889
  %58 = load %struct.list_head_s*, %struct.list_head_s** %57, align 4, !dbg !889, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %58, metadata !817, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 1, metadata !816, metadata !DIExpression()), !dbg !829
  br label %59, !dbg !890

59:                                               ; preds = %86, %56
  %.1 = phi i32 [ 1, %56 ], [ %.2, %86 ], !dbg !829
  %.0 = phi %struct.list_head_s* [ %58, %56 ], [ %88, %86 ], !dbg !829
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !817, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i32 %.1, metadata !816, metadata !DIExpression()), !dbg !829
  %60 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !891
  %61 = load %struct.list_head_s*, %struct.list_head_s** %60, align 4, !dbg !891, !tbaa !505
  %62 = icmp ne %struct.list_head_s* %61, null, !dbg !892
  br i1 %62, label %63, label %89, !dbg !890

63:                                               ; preds = %59
  %64 = udiv i32 %8, 5, !dbg !893
  %65 = icmp ult i32 %.1, %64, !dbg !894
  br i1 %65, label %66, label %72, !dbg !895

66:                                               ; preds = %63
  %67 = add i32 %.1, 1, !dbg !896
  call void @llvm.dbg.value(metadata i32 %67, metadata !816, metadata !DIExpression()), !dbg !829
  %68 = trunc i32 %.1 to i16, !dbg !897
  %69 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1, !dbg !898
  %70 = load %struct.list_data_s*, %struct.list_data_s** %69, align 4, !dbg !898, !tbaa !508
  %71 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %70, i32 0, i32 1, !dbg !899
  store i16 %68, i16* %71, align 2, !dbg !900, !tbaa !435
  br label %86, !dbg !901

72:                                               ; preds = %63
  %73 = add i32 %.1, 1, !dbg !902
  call void @llvm.dbg.value(metadata i32 %73, metadata !816, metadata !DIExpression()), !dbg !829
  %74 = sext i16 %2 to i32, !dbg !903
  %75 = xor i32 %.1, %74, !dbg !904
  %76 = trunc i32 %75 to i16, !dbg !905
  call void @llvm.dbg.value(metadata i16 %76, metadata !825, metadata !DIExpression()), !dbg !906
  %77 = and i32 %73, 7, !dbg !907
  %78 = shl i32 %77, 8, !dbg !908
  %79 = zext i16 %76 to i32, !dbg !909
  %80 = or i32 %78, %79, !dbg !910
  %81 = and i32 16383, %80, !dbg !911
  %82 = trunc i32 %81 to i16, !dbg !912
  %83 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1, !dbg !913
  %84 = load %struct.list_data_s*, %struct.list_data_s** %83, align 4, !dbg !913, !tbaa !508
  %85 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %84, i32 0, i32 1, !dbg !914
  store i16 %82, i16* %85, align 2, !dbg !915, !tbaa !435
  br label %86

86:                                               ; preds = %72, %66
  %.2 = phi i32 [ %67, %66 ], [ %73, %72 ], !dbg !916
  call void @llvm.dbg.value(metadata i32 %.2, metadata !816, metadata !DIExpression()), !dbg !829
  %87 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !917
  %88 = load %struct.list_head_s*, %struct.list_head_s** %87, align 4, !dbg !917, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %88, metadata !817, metadata !DIExpression()), !dbg !829
  br label %59, !dbg !890, !llvm.loop !918

89:                                               ; preds = %59
  %90 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %15, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_idx, %struct.RESULTS_S* null), !dbg !920
  call void @llvm.dbg.value(metadata %struct.list_head_s* %90, metadata !818, metadata !DIExpression()), !dbg !829
  %91 = bitcast %struct.list_data_s* %6 to i8*, !dbg !921
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4, !dbg !921
  %92 = bitcast %struct.list_data_s** %5 to i8*, !dbg !921
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4, !dbg !921
  ret %struct.list_head_s* %90, !dbg !922
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s*, %struct.list_data_s*, %struct.list_head_s**, %struct.list_data_s**, %struct.list_head_s*, %struct.list_data_s*) #0 !dbg !923 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !929, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !930, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata %struct.list_head_s** %2, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata %struct.list_data_s** %3, metadata !932, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata %struct.list_head_s* %4, metadata !933, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata %struct.list_data_s* %5, metadata !934, metadata !DIExpression()), !dbg !936
  %7 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !937, !tbaa !334
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %7, i32 1, !dbg !939
  %9 = icmp uge %struct.list_head_s* %8, %4, !dbg !940
  br i1 %9, label %10, label %11, !dbg !941

10:                                               ; preds = %6
  br label %30, !dbg !942

11:                                               ; preds = %6
  %12 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !943, !tbaa !334
  %13 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %12, i32 1, !dbg !945
  %14 = icmp uge %struct.list_data_s* %13, %5, !dbg !946
  br i1 %14, label %15, label %16, !dbg !947

15:                                               ; preds = %11
  br label %30, !dbg !948

16:                                               ; preds = %11
  %17 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !949, !tbaa !334
  call void @llvm.dbg.value(metadata %struct.list_head_s* %17, metadata !935, metadata !DIExpression()), !dbg !936
  %18 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !950, !tbaa !334
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %18, i32 1, !dbg !950
  store %struct.list_head_s* %19, %struct.list_head_s** %2, align 4, !dbg !950, !tbaa !334
  %20 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !951
  %21 = load %struct.list_head_s*, %struct.list_head_s** %20, align 4, !dbg !951, !tbaa !505
  %22 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 0, !dbg !952
  store %struct.list_head_s* %21, %struct.list_head_s** %22, align 4, !dbg !953, !tbaa !505
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !954
  store %struct.list_head_s* %17, %struct.list_head_s** %23, align 4, !dbg !955, !tbaa !505
  %24 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !956, !tbaa !334
  %25 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 1, !dbg !957
  store %struct.list_data_s* %24, %struct.list_data_s** %25, align 4, !dbg !958, !tbaa !508
  %26 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !959, !tbaa !334
  %27 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %26, i32 1, !dbg !959
  store %struct.list_data_s* %27, %struct.list_data_s** %3, align 4, !dbg !959, !tbaa !334
  %28 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 1, !dbg !960
  %29 = load %struct.list_data_s*, %struct.list_data_s** %28, align 4, !dbg !960, !tbaa !508
  call arm_aapcscc void @copy_info(%struct.list_data_s* %29, %struct.list_data_s* %1), !dbg !961
  br label %30, !dbg !962

30:                                               ; preds = %16, %15, %10
  %.0 = phi %struct.list_head_s* [ null, %10 ], [ null, %15 ], [ %17, %16 ], !dbg !936
  ret %struct.list_head_s* %.0, !dbg !963
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i8* @iterate(i8*) #0 !dbg !964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !968, metadata !DIExpression()), !dbg !973
  %2 = bitcast i8* %0 to %struct.RESULTS_S*, !dbg !974
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !971, metadata !DIExpression()), !dbg !973
  %3 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 5, !dbg !975
  %4 = load i32, i32* %3, align 4, !dbg !975, !tbaa !976
  call void @llvm.dbg.value(metadata i32 %4, metadata !972, metadata !DIExpression()), !dbg !973
  %5 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !977
  store i16 0, i16* %5, align 4, !dbg !978, !tbaa !340
  %6 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 10, !dbg !979
  store i16 0, i16* %6, align 2, !dbg !980, !tbaa !981
  %7 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 11, !dbg !982
  store i16 0, i16* %7, align 4, !dbg !983, !tbaa !357
  %8 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 12, !dbg !984
  store i16 0, i16* %8, align 2, !dbg !985, !tbaa !344
  call void @llvm.dbg.value(metadata i32 0, metadata !969, metadata !DIExpression()), !dbg !973
  br label %9, !dbg !986

9:                                                ; preds = %27, %1
  %.0 = phi i32 [ 0, %1 ], [ %28, %27 ], !dbg !988
  call void @llvm.dbg.value(metadata i32 %.0, metadata !969, metadata !DIExpression()), !dbg !973
  %exitcond = icmp ne i32 %.0, %4, !dbg !989
  br i1 %exitcond, label %10, label %29, !dbg !991

10:                                               ; preds = %9
  %11 = call arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S* %2, i16 signext 1), !dbg !992
  call void @llvm.dbg.value(metadata i16 %11, metadata !970, metadata !DIExpression()), !dbg !973
  %12 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !994
  %13 = load i16, i16* %12, align 4, !dbg !994, !tbaa !340
  %14 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %11, i16 zeroext %13), !dbg !995
  %15 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !996
  store i16 %14, i16* %15, align 4, !dbg !997, !tbaa !340
  %16 = call arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S* %2, i16 signext -1), !dbg !998
  call void @llvm.dbg.value(metadata i16 %16, metadata !970, metadata !DIExpression()), !dbg !973
  %17 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !999
  %18 = load i16, i16* %17, align 4, !dbg !999, !tbaa !340
  %19 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %16, i16 zeroext %18), !dbg !1000
  %20 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !1001
  store i16 %19, i16* %20, align 4, !dbg !1002, !tbaa !340
  %21 = icmp eq i32 %.0, 0, !dbg !1003
  br i1 %21, label %22, label %._crit_edge, !dbg !1005

._crit_edge:                                      ; preds = %10
  br label %26, !dbg !1005

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !1006
  %24 = load i16, i16* %23, align 4, !dbg !1006, !tbaa !340
  %25 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 10, !dbg !1007
  store i16 %24, i16* %25, align 2, !dbg !1008, !tbaa !981
  br label %26, !dbg !1009

26:                                               ; preds = %22, %._crit_edge
  br label %27, !dbg !1010

27:                                               ; preds = %26
  %28 = add i32 %.0, 1, !dbg !1011
  call void @llvm.dbg.value(metadata i32 %28, metadata !969, metadata !DIExpression()), !dbg !973
  br label %9, !dbg !1012, !llvm.loop !1013

29:                                               ; preds = %9
  ret i8* null, !dbg !1015
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @main(i32, i8**) #0 !dbg !1016 {
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.RESULTS_S], align 4
  %5 = alloca [2000 x i8], align 1
  store i32 %0, i32* %3, align 4, !tbaa !1046
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1021, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8** %1, metadata !1022, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 0, metadata !1025, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 -1, metadata !1026, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 0, metadata !1027, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 0, metadata !1028, metadata !DIExpression()), !dbg !1048
  %6 = bitcast [1 x %struct.RESULTS_S]* %4 to i8*, !dbg !1049
  call void @llvm.lifetime.start.p0i8(i64 68, i8* %6) #4, !dbg !1049
  call void @llvm.dbg.declare(metadata [1 x %struct.RESULTS_S]* %4, metadata !1030, metadata !DIExpression()), !dbg !1050
  %7 = bitcast [2000 x i8]* %5 to i8*, !dbg !1051
  call void @llvm.lifetime.start.p0i8(i64 2000, i8* %7) #4, !dbg !1051
  call void @llvm.dbg.declare(metadata [2000 x i8]* %5, metadata !1034, metadata !DIExpression()), !dbg !1052
  %8 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1053
  %9 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %8, i32 0, i32 14, !dbg !1054
  call arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S* %9, i32* %3, i8** %1), !dbg !1055
  %10 = call arm_aapcscc i32 @get_seed_32(i32 1), !dbg !1056
  %11 = trunc i32 %10 to i16, !dbg !1056
  %12 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1057
  %13 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %12, i32 0, i32 0, !dbg !1058
  store i16 %11, i16* %13, align 4, !dbg !1059, !tbaa !336
  %14 = call arm_aapcscc i32 @get_seed_32(i32 2), !dbg !1060
  %15 = trunc i32 %14 to i16, !dbg !1060
  %16 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1061
  %17 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %16, i32 0, i32 1, !dbg !1062
  store i16 %15, i16* %17, align 2, !dbg !1063, !tbaa !338
  %18 = call arm_aapcscc i32 @get_seed_32(i32 3), !dbg !1064
  %19 = trunc i32 %18 to i16, !dbg !1064
  %20 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1065
  %21 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %20, i32 0, i32 2, !dbg !1066
  store i16 %19, i16* %21, align 4, !dbg !1067, !tbaa !477
  %22 = call arm_aapcscc i32 @get_seed_32(i32 4), !dbg !1068
  %23 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1069
  %24 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %23, i32 0, i32 5, !dbg !1070
  store i32 %22, i32* %24, align 4, !dbg !1071, !tbaa !976
  %25 = call arm_aapcscc i32 @get_seed_32(i32 5), !dbg !1072
  %26 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1073
  %27 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %26, i32 0, i32 6, !dbg !1074
  store i32 %25, i32* %27, align 4, !dbg !1075, !tbaa !1076
  %28 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1077
  %29 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %28, i32 0, i32 6, !dbg !1079
  %30 = load i32, i32* %29, align 4, !dbg !1079, !tbaa !1076
  %31 = icmp eq i32 %30, 0, !dbg !1080
  br i1 %31, label %32, label %._crit_edge, !dbg !1081

._crit_edge:                                      ; preds = %2
  br label %35, !dbg !1081

32:                                               ; preds = %2
  %33 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1082
  %34 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %33, i32 0, i32 6, !dbg !1084
  store i32 7, i32* %34, align 4, !dbg !1085, !tbaa !1076
  br label %35, !dbg !1086

35:                                               ; preds = %32, %._crit_edge
  %36 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1087
  %37 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %36, i32 0, i32 0, !dbg !1089
  %38 = load i16, i16* %37, align 4, !dbg !1089, !tbaa !336
  %39 = sext i16 %38 to i32, !dbg !1087
  %40 = icmp eq i32 %39, 0, !dbg !1090
  br i1 %40, label %41, label %._crit_edge27, !dbg !1091

._crit_edge27:                                    ; preds = %35
  br label %60, !dbg !1091

41:                                               ; preds = %35
  %42 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1092
  %43 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %42, i32 0, i32 1, !dbg !1093
  %44 = load i16, i16* %43, align 2, !dbg !1093, !tbaa !338
  %45 = sext i16 %44 to i32, !dbg !1092
  %46 = icmp eq i32 %45, 0, !dbg !1094
  br i1 %46, label %47, label %._crit_edge28, !dbg !1095

._crit_edge28:                                    ; preds = %41
  br label %60, !dbg !1095

47:                                               ; preds = %41
  %48 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1096
  %49 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %48, i32 0, i32 2, !dbg !1097
  %50 = load i16, i16* %49, align 4, !dbg !1097, !tbaa !477
  %51 = sext i16 %50 to i32, !dbg !1096
  %52 = icmp eq i32 %51, 0, !dbg !1098
  br i1 %52, label %53, label %._crit_edge29, !dbg !1099

._crit_edge29:                                    ; preds = %47
  br label %60, !dbg !1099

53:                                               ; preds = %47
  %54 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1100
  %55 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %54, i32 0, i32 0, !dbg !1102
  store i16 0, i16* %55, align 4, !dbg !1103, !tbaa !336
  %56 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1104
  %57 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %56, i32 0, i32 1, !dbg !1105
  store i16 0, i16* %57, align 2, !dbg !1106, !tbaa !338
  %58 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1107
  %59 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %58, i32 0, i32 2, !dbg !1108
  store i16 102, i16* %59, align 4, !dbg !1109, !tbaa !477
  br label %60, !dbg !1110

60:                                               ; preds = %53, %._crit_edge29, %._crit_edge28, %._crit_edge27
  %61 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1111
  %62 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %61, i32 0, i32 0, !dbg !1113
  %63 = load i16, i16* %62, align 4, !dbg !1113, !tbaa !336
  %64 = sext i16 %63 to i32, !dbg !1111
  %65 = icmp eq i32 %64, 1, !dbg !1114
  br i1 %65, label %66, label %._crit_edge30, !dbg !1115

._crit_edge30:                                    ; preds = %60
  br label %85, !dbg !1115

66:                                               ; preds = %60
  %67 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1116
  %68 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %67, i32 0, i32 1, !dbg !1117
  %69 = load i16, i16* %68, align 2, !dbg !1117, !tbaa !338
  %70 = sext i16 %69 to i32, !dbg !1116
  %71 = icmp eq i32 %70, 0, !dbg !1118
  br i1 %71, label %72, label %._crit_edge31, !dbg !1119

._crit_edge31:                                    ; preds = %66
  br label %85, !dbg !1119

72:                                               ; preds = %66
  %73 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1120
  %74 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %73, i32 0, i32 2, !dbg !1121
  %75 = load i16, i16* %74, align 4, !dbg !1121, !tbaa !477
  %76 = sext i16 %75 to i32, !dbg !1120
  %77 = icmp eq i32 %76, 0, !dbg !1122
  br i1 %77, label %78, label %._crit_edge32, !dbg !1123

._crit_edge32:                                    ; preds = %72
  br label %85, !dbg !1123

78:                                               ; preds = %72
  %79 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1124
  %80 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %79, i32 0, i32 0, !dbg !1126
  store i16 13333, i16* %80, align 4, !dbg !1127, !tbaa !336
  %81 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1128
  %82 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %81, i32 0, i32 1, !dbg !1129
  store i16 13333, i16* %82, align 2, !dbg !1130, !tbaa !338
  %83 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1131
  %84 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %83, i32 0, i32 2, !dbg !1132
  store i16 102, i16* %84, align 4, !dbg !1133, !tbaa !477
  br label %85, !dbg !1134

85:                                               ; preds = %78, %._crit_edge32, %._crit_edge31, %._crit_edge30
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %86, !dbg !1135

86:                                               ; preds = %119, %85
  %indvars.iv11 = phi i32 [ %indvars.iv.next12, %119 ], [ 0, %85 ], !dbg !1137
  call void @llvm.dbg.value(metadata i32 %indvars.iv11, metadata !1023, metadata !DIExpression()), !dbg !1048
  %exitcond13 = icmp ne i32 %indvars.iv11, 1, !dbg !1138
  br i1 %exitcond13, label %87, label %120, !dbg !1140

87:                                               ; preds = %86
  %88 = getelementptr inbounds [2000 x i8], [2000 x i8]* %5, i32 0, i32 0, !dbg !1141
  %89 = mul nuw nsw i32 %indvars.iv11, 2, !dbg !1143
  %90 = mul nuw nsw i32 %89, 1000, !dbg !1144
  %91 = getelementptr inbounds i8, i8* %88, i32 %90, !dbg !1145
  %92 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1146
  %93 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %92, i32 0, i32 3, !dbg !1147
  %94 = getelementptr inbounds [4 x i8*], [4 x i8*]* %93, i32 0, i32 0, !dbg !1146
  store i8* %91, i8** %94, align 4, !dbg !1148, !tbaa !334
  %95 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1149
  %96 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %95, i32 0, i32 4, !dbg !1150
  store i32 2000, i32* %96, align 4, !dbg !1151, !tbaa !326
  %97 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1152
  %98 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %97, i32 0, i32 0, !dbg !1153
  %99 = load i16, i16* %98, align 4, !dbg !1153, !tbaa !336
  %100 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1154
  %101 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %100, i32 0, i32 0, !dbg !1155
  store i16 %99, i16* %101, align 4, !dbg !1156, !tbaa !336
  %102 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1157
  %103 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %102, i32 0, i32 1, !dbg !1158
  %104 = load i16, i16* %103, align 2, !dbg !1158, !tbaa !338
  %105 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1159
  %106 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %105, i32 0, i32 1, !dbg !1160
  store i16 %104, i16* %106, align 2, !dbg !1161, !tbaa !338
  %107 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1162
  %108 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %107, i32 0, i32 2, !dbg !1163
  %109 = load i16, i16* %108, align 4, !dbg !1163, !tbaa !477
  %110 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1164
  %111 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %110, i32 0, i32 2, !dbg !1165
  store i16 %109, i16* %111, align 4, !dbg !1166, !tbaa !477
  %112 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1167
  %113 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %112, i32 0, i32 13, !dbg !1168
  store i16 0, i16* %113, align 4, !dbg !1169, !tbaa !1170
  %114 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1171
  %115 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %114, i32 0, i32 6, !dbg !1172
  %116 = load i32, i32* %115, align 4, !dbg !1172, !tbaa !1076
  %117 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1173
  %118 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %117, i32 0, i32 6, !dbg !1174
  store i32 %116, i32* %118, align 4, !dbg !1175, !tbaa !1076
  br label %119, !dbg !1176

119:                                              ; preds = %87
  %indvars.iv.next12 = add nuw nsw i32 %indvars.iv11, 1, !dbg !1177
  call void @llvm.dbg.value(metadata i16 undef, metadata !1023, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1048
  br label %86, !dbg !1178, !llvm.loop !1179

120:                                              ; preds = %86
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %121, !dbg !1181

121:                                              ; preds = %132, %120
  %indvars.iv8 = phi i32 [ %indvars.iv.next9, %132 ], [ 0, %120 ], !dbg !1048
  %.05 = phi i16 [ 0, %120 ], [ %.16, %132 ], !dbg !1048
  call void @llvm.dbg.value(metadata i32 %indvars.iv8, metadata !1023, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.05, metadata !1025, metadata !DIExpression()), !dbg !1048
  %exitcond10 = icmp ne i32 %indvars.iv8, 3, !dbg !1183
  br i1 %exitcond10, label %122, label %133, !dbg !1185

122:                                              ; preds = %121
  %123 = shl i32 1, %indvars.iv8, !dbg !1186
  %124 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1189
  %125 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %124, i32 0, i32 6, !dbg !1190
  %126 = load i32, i32* %125, align 4, !dbg !1190, !tbaa !1076
  %127 = and i32 %123, %126, !dbg !1191
  %128 = icmp ne i32 %127, 0, !dbg !1191
  br i1 %128, label %129, label %._crit_edge33, !dbg !1192

._crit_edge33:                                    ; preds = %122
  br label %131, !dbg !1192

129:                                              ; preds = %122
  %130 = add i16 %.05, 1, !dbg !1193
  call void @llvm.dbg.value(metadata i16 %130, metadata !1025, metadata !DIExpression()), !dbg !1048
  br label %131, !dbg !1194

131:                                              ; preds = %129, %._crit_edge33
  %.16 = phi i16 [ %130, %129 ], [ %.05, %._crit_edge33 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.16, metadata !1025, metadata !DIExpression()), !dbg !1048
  br label %132, !dbg !1195

132:                                              ; preds = %131
  %indvars.iv.next9 = add nuw nsw i32 %indvars.iv8, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i16 undef, metadata !1023, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1048
  br label %121, !dbg !1197, !llvm.loop !1198

133:                                              ; preds = %121
  %.05.lcssa = phi i16 [ %.05, %121 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.05.lcssa, metadata !1025, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %134, !dbg !1200

134:                                              ; preds = %143, %133
  %indvars.iv5 = phi i32 [ %indvars.iv.next6, %143 ], [ 0, %133 ], !dbg !1202
  call void @llvm.dbg.value(metadata i32 %indvars.iv5, metadata !1023, metadata !DIExpression()), !dbg !1048
  %exitcond7 = icmp ne i32 %indvars.iv5, 1, !dbg !1203
  br i1 %exitcond7, label %135, label %144, !dbg !1205

135:                                              ; preds = %134
  %136 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv5, !dbg !1206
  %137 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %136, i32 0, i32 4, !dbg !1207
  %138 = load i32, i32* %137, align 4, !dbg !1207, !tbaa !326
  %139 = zext i16 %.05.lcssa to i32, !dbg !1208
  %140 = udiv i32 %138, %139, !dbg !1209
  %141 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv5, !dbg !1210
  %142 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %141, i32 0, i32 4, !dbg !1211
  store i32 %140, i32* %142, align 4, !dbg !1212, !tbaa !326
  br label %143, !dbg !1210

143:                                              ; preds = %135
  %indvars.iv.next6 = add nuw nsw i32 %indvars.iv5, 1, !dbg !1213
  call void @llvm.dbg.value(metadata i16 undef, metadata !1023, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1048
  br label %134, !dbg !1214, !llvm.loop !1215

144:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %145, !dbg !1217

145:                                              ; preds = %175, %144
  %indvars.iv2 = phi i32 [ %indvars.iv.next3, %175 ], [ 0, %144 ], !dbg !1048
  %.03 = phi i16 [ 0, %144 ], [ %.14, %175 ], !dbg !1048
  call void @llvm.dbg.value(metadata i32 %indvars.iv2, metadata !1023, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.03, metadata !1024, metadata !DIExpression()), !dbg !1048
  %exitcond4 = icmp ne i32 %indvars.iv2, 3, !dbg !1218
  br i1 %exitcond4, label %146, label %176, !dbg !1219

146:                                              ; preds = %145
  %147 = shl i32 1, %indvars.iv2, !dbg !1220
  %148 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1222
  %149 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %148, i32 0, i32 6, !dbg !1223
  %150 = load i32, i32* %149, align 4, !dbg !1223, !tbaa !1076
  %151 = and i32 %147, %150, !dbg !1224
  %152 = icmp ne i32 %151, 0, !dbg !1224
  br i1 %152, label %153, label %._crit_edge34, !dbg !1225

._crit_edge34:                                    ; preds = %146
  br label %174, !dbg !1225

153:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i32 0, metadata !1038, metadata !DIExpression()), !dbg !1226
  br label %154, !dbg !1227

154:                                              ; preds = %170, %153
  %.012 = phi i32 [ 0, %153 ], [ %171, %170 ], !dbg !1230
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1038, metadata !DIExpression()), !dbg !1226
  %exitcond = icmp ne i32 %.012, 1, !dbg !1231
  br i1 %exitcond, label %155, label %172, !dbg !1233

155:                                              ; preds = %154
  %156 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1234
  %157 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %156, i32 0, i32 3, !dbg !1235
  %158 = getelementptr inbounds [4 x i8*], [4 x i8*]* %157, i32 0, i32 0, !dbg !1234
  %159 = load i8*, i8** %158, align 4, !dbg !1234, !tbaa !334
  %160 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1236
  %161 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %160, i32 0, i32 4, !dbg !1237
  %162 = load i32, i32* %161, align 4, !dbg !1237, !tbaa !326
  %163 = zext i16 %.03 to i32, !dbg !1238
  %164 = mul i32 %162, %163, !dbg !1239
  %165 = getelementptr inbounds i8, i8* %159, i32 %164, !dbg !1240
  %166 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1241
  %167 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %166, i32 0, i32 3, !dbg !1242
  %168 = add nuw nsw i32 %indvars.iv2, 1, !dbg !1243
  %169 = getelementptr inbounds [4 x i8*], [4 x i8*]* %167, i32 0, i32 %168, !dbg !1241
  store i8* %165, i8** %169, align 4, !dbg !1244, !tbaa !334
  br label %170, !dbg !1241

170:                                              ; preds = %155
  %171 = add nuw nsw i32 %.012, 1, !dbg !1245
  call void @llvm.dbg.value(metadata i32 %171, metadata !1038, metadata !DIExpression()), !dbg !1226
  br label %154, !dbg !1246, !llvm.loop !1247

172:                                              ; preds = %154
  %173 = add i16 %.03, 1, !dbg !1249
  call void @llvm.dbg.value(metadata i16 %173, metadata !1024, metadata !DIExpression()), !dbg !1048
  br label %174, !dbg !1250

174:                                              ; preds = %172, %._crit_edge34
  %.14 = phi i16 [ %173, %172 ], [ %.03, %._crit_edge34 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.14, metadata !1024, metadata !DIExpression()), !dbg !1048
  br label %175, !dbg !1251

175:                                              ; preds = %174
  %indvars.iv.next3 = add nuw nsw i32 %indvars.iv2, 1, !dbg !1252
  call void @llvm.dbg.value(metadata i16 undef, metadata !1023, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1048
  br label %145, !dbg !1253, !llvm.loop !1254

176:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %177, !dbg !1256

177:                                              ; preds = %244, %176
  %indvars.iv = phi i32 [ %indvars.iv.next, %244 ], [ 0, %176 ], !dbg !1258
  call void @llvm.dbg.value(metadata i32 %indvars.iv, metadata !1023, metadata !DIExpression()), !dbg !1048
  %exitcond1 = icmp ne i32 %indvars.iv, 1, !dbg !1259
  br i1 %exitcond1, label %178, label %245, !dbg !1261

178:                                              ; preds = %177
  %179 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1262
  %180 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %179, i32 0, i32 6, !dbg !1265
  %181 = load i32, i32* %180, align 4, !dbg !1265, !tbaa !1076
  %182 = and i32 %181, 1, !dbg !1266
  %183 = icmp ne i32 %182, 0, !dbg !1266
  br i1 %183, label %184, label %._crit_edge35, !dbg !1267

._crit_edge35:                                    ; preds = %178
  br label %199, !dbg !1267

184:                                              ; preds = %178
  %185 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1268
  %186 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %185, i32 0, i32 4, !dbg !1270
  %187 = load i32, i32* %186, align 4, !dbg !1270, !tbaa !326
  %188 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1271
  %189 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %188, i32 0, i32 3, !dbg !1272
  %190 = getelementptr inbounds [4 x i8*], [4 x i8*]* %189, i32 0, i32 1, !dbg !1271
  %191 = load i8*, i8** %190, align 4, !dbg !1271, !tbaa !334
  %192 = bitcast i8* %191 to %struct.list_head_s*, !dbg !1271
  %193 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1273
  %194 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %193, i32 0, i32 0, !dbg !1274
  %195 = load i16, i16* %194, align 4, !dbg !1274, !tbaa !336
  %196 = call arm_aapcscc %struct.list_head_s* @core_list_init(i32 %187, %struct.list_head_s* %192, i16 signext %195), !dbg !1275
  %197 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1276
  %198 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %197, i32 0, i32 7, !dbg !1277
  store %struct.list_head_s* %196, %struct.list_head_s** %198, align 4, !dbg !1278, !tbaa !475
  br label %199, !dbg !1279

199:                                              ; preds = %184, %._crit_edge35
  %200 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1280
  %201 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %200, i32 0, i32 6, !dbg !1282
  %202 = load i32, i32* %201, align 4, !dbg !1282, !tbaa !1076
  %203 = and i32 %202, 2, !dbg !1283
  %204 = icmp ne i32 %203, 0, !dbg !1283
  br i1 %204, label %205, label %._crit_edge36, !dbg !1284

._crit_edge36:                                    ; preds = %199
  br label %226, !dbg !1284

205:                                              ; preds = %199
  %206 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1285
  %207 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %206, i32 0, i32 4, !dbg !1287
  %208 = load i32, i32* %207, align 4, !dbg !1287, !tbaa !326
  %209 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1288
  %210 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %209, i32 0, i32 3, !dbg !1289
  %211 = getelementptr inbounds [4 x i8*], [4 x i8*]* %210, i32 0, i32 2, !dbg !1288
  %212 = load i8*, i8** %211, align 4, !dbg !1288, !tbaa !334
  %213 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1290
  %214 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %213, i32 0, i32 0, !dbg !1291
  %215 = load i16, i16* %214, align 4, !dbg !1291, !tbaa !336
  %216 = sext i16 %215 to i32, !dbg !1292
  %217 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1293
  %218 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %217, i32 0, i32 1, !dbg !1294
  %219 = load i16, i16* %218, align 2, !dbg !1294, !tbaa !338
  %220 = sext i16 %219 to i32, !dbg !1295
  %221 = shl i32 %220, 16, !dbg !1296
  %222 = or i32 %216, %221, !dbg !1297
  %223 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1298
  %224 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %223, i32 0, i32 8, !dbg !1299
  %225 = call arm_aapcscc i32 @core_init_matrix(i32 %208, i8* %212, i32 %222, %struct.MAT_PARAMS_S* %224), !dbg !1300
  br label %226, !dbg !1301

226:                                              ; preds = %205, %._crit_edge36
  %227 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1302
  %228 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %227, i32 0, i32 6, !dbg !1304
  %229 = load i32, i32* %228, align 4, !dbg !1304, !tbaa !1076
  %230 = and i32 %229, 4, !dbg !1305
  %231 = icmp ne i32 %230, 0, !dbg !1305
  br i1 %231, label %232, label %._crit_edge37, !dbg !1306

._crit_edge37:                                    ; preds = %226
  br label %243, !dbg !1306

232:                                              ; preds = %226
  %233 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1307
  %234 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %233, i32 0, i32 4, !dbg !1309
  %235 = load i32, i32* %234, align 4, !dbg !1309, !tbaa !326
  %236 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1310
  %237 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %236, i32 0, i32 0, !dbg !1311
  %238 = load i16, i16* %237, align 4, !dbg !1311, !tbaa !336
  %239 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1312
  %240 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %239, i32 0, i32 3, !dbg !1313
  %241 = getelementptr inbounds [4 x i8*], [4 x i8*]* %240, i32 0, i32 3, !dbg !1312
  %242 = load i8*, i8** %241, align 4, !dbg !1312, !tbaa !334
  call arm_aapcscc void @core_init_state(i32 %235, i16 signext %238, i8* %242), !dbg !1314
  br label %243, !dbg !1315

243:                                              ; preds = %232, %._crit_edge37
  br label %244, !dbg !1316

244:                                              ; preds = %243
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i16 undef, metadata !1023, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1048
  br label %177, !dbg !1318, !llvm.loop !1319

245:                                              ; preds = %177
  %246 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1321
  %247 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %246, i32 0, i32 5, !dbg !1322
  %248 = load i32, i32* %247, align 4, !dbg !1322, !tbaa !976
  %249 = icmp eq i32 %248, 0, !dbg !1323
  br i1 %249, label %250, label %._crit_edge38, !dbg !1324

._crit_edge38:                                    ; preds = %245
  br label %276, !dbg !1324

250:                                              ; preds = %245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1042, metadata !DIExpression()), !dbg !1325
  %251 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1326
  %252 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %251, i32 0, i32 5, !dbg !1327
  store i32 1, i32* %252, align 4, !dbg !1328, !tbaa !976
  br label %253, !dbg !1329

253:                                              ; preds = %255, %250
  %.01 = phi double [ 0.000000e+00, %250 ], [ %264, %255 ], !dbg !1325
  call void @llvm.dbg.value(metadata double %.01, metadata !1042, metadata !DIExpression()), !dbg !1325
  %254 = fcmp olt double %.01, 1.000000e+00, !dbg !1330
  br i1 %254, label %255, label %265, !dbg !1329

255:                                              ; preds = %253
  %256 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1331
  %257 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %256, i32 0, i32 5, !dbg !1333
  %258 = load i32, i32* %257, align 4, !dbg !1334, !tbaa !976
  %259 = mul i32 %258, 10, !dbg !1334
  store i32 %259, i32* %257, align 4, !dbg !1334, !tbaa !976
  call arm_aapcscc void @start_time(), !dbg !1335
  %260 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1336
  %261 = bitcast %struct.RESULTS_S* %260 to i8*, !dbg !1337
  %262 = call arm_aapcscc i8* @iterate(i8* %261), !dbg !1338
  call arm_aapcscc void @stop_time(), !dbg !1339
  %263 = call arm_aapcscc i32 @get_time(), !dbg !1340
  %264 = call arm_aapcscc double @time_in_secs(i32 %263), !dbg !1341
  call void @llvm.dbg.value(metadata double %264, metadata !1042, metadata !DIExpression()), !dbg !1325
  br label %253, !dbg !1329, !llvm.loop !1342

265:                                              ; preds = %253
  %.01.lcssa = phi double [ %.01, %253 ], !dbg !1325
  call void @llvm.dbg.value(metadata double %.01.lcssa, metadata !1042, metadata !DIExpression()), !dbg !1325
  %266 = fptoui double %.01.lcssa to i32, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %266, metadata !1045, metadata !DIExpression()), !dbg !1325
  %267 = icmp eq i32 %266, 0, !dbg !1345
  br i1 %267, label %268, label %._crit_edge39, !dbg !1347

._crit_edge39:                                    ; preds = %265
  br label %269, !dbg !1347

268:                                              ; preds = %265
  call void @llvm.dbg.value(metadata i32 1, metadata !1045, metadata !DIExpression()), !dbg !1325
  br label %269, !dbg !1348

269:                                              ; preds = %268, %._crit_edge39
  %.0 = phi i32 [ 1, %268 ], [ %266, %._crit_edge39 ], !dbg !1325
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1045, metadata !DIExpression()), !dbg !1325
  %270 = udiv i32 10, %.0, !dbg !1349
  %271 = add i32 1, %270, !dbg !1350
  %272 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1351
  %273 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %272, i32 0, i32 5, !dbg !1352
  %274 = load i32, i32* %273, align 4, !dbg !1353, !tbaa !976
  %275 = mul i32 %274, %271, !dbg !1353
  store i32 %275, i32* %273, align 4, !dbg !1353, !tbaa !976
  br label %276, !dbg !1354

276:                                              ; preds = %269, %._crit_edge38
  call arm_aapcscc void @start_time(), !dbg !1355
  %277 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1356
  %278 = bitcast %struct.RESULTS_S* %277 to i8*, !dbg !1357
  %279 = call arm_aapcscc i8* @iterate(i8* %278), !dbg !1358
  call arm_aapcscc void @stop_time(), !dbg !1359
  %280 = call arm_aapcscc i32 @get_time(), !dbg !1360
  call void @llvm.dbg.value(metadata i32 %280, metadata !1029, metadata !DIExpression()), !dbg !1048
  %281 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1361
  %282 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %281, i32 0, i32 0, !dbg !1362
  %283 = load i16, i16* %282, align 4, !dbg !1362, !tbaa !336
  %284 = call arm_aapcscc zeroext i16 @crc16(i16 signext %283, i16 zeroext 0), !dbg !1363
  call void @llvm.dbg.value(metadata i16 %284, metadata !1028, metadata !DIExpression()), !dbg !1048
  %285 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1364
  %286 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %285, i32 0, i32 1, !dbg !1365
  %287 = load i16, i16* %286, align 2, !dbg !1365, !tbaa !338
  %288 = call arm_aapcscc zeroext i16 @crc16(i16 signext %287, i16 zeroext %284), !dbg !1366
  call void @llvm.dbg.value(metadata i16 %288, metadata !1028, metadata !DIExpression()), !dbg !1048
  %289 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1367
  %290 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %289, i32 0, i32 2, !dbg !1368
  %291 = load i16, i16* %290, align 4, !dbg !1368, !tbaa !477
  %292 = call arm_aapcscc zeroext i16 @crc16(i16 signext %291, i16 zeroext %288), !dbg !1369
  call void @llvm.dbg.value(metadata i16 %292, metadata !1028, metadata !DIExpression()), !dbg !1048
  %293 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1370
  %294 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %293, i32 0, i32 4, !dbg !1371
  %295 = load i32, i32* %294, align 4, !dbg !1371, !tbaa !326
  %296 = trunc i32 %295 to i16, !dbg !1370
  %297 = call arm_aapcscc zeroext i16 @crc16(i16 signext %296, i16 zeroext %292), !dbg !1372
  call void @llvm.dbg.value(metadata i16 %297, metadata !1028, metadata !DIExpression()), !dbg !1048
  %298 = zext i16 %297 to i32, !dbg !1373
  br label %NodeBlock25

NodeBlock25:                                      ; preds = %276
  %Pivot26 = icmp slt i32 %298, 31493
  br i1 %Pivot26, label %NodeBlock, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %Pivot24 = icmp slt i32 %298, 35330
  br i1 %Pivot24, label %LeafBlock15, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %Pivot22 = icmp slt i32 %298, 59893
  br i1 %Pivot22, label %LeafBlock17, label %LeafBlock19

LeafBlock19:                                      ; preds = %NodeBlock21
  %SwitchLeaf20 = icmp eq i32 %298, 59893
  br i1 %SwitchLeaf20, label %308, label %LeafBlock19.NewDefault_crit_edge

LeafBlock19.NewDefault_crit_edge:                 ; preds = %LeafBlock19
  br label %NewDefault

LeafBlock17:                                      ; preds = %NodeBlock21
  %SwitchLeaf18 = icmp eq i32 %298, 35330
  br i1 %SwitchLeaf18, label %299, label %LeafBlock17.NewDefault_crit_edge

LeafBlock17.NewDefault_crit_edge:                 ; preds = %LeafBlock17
  br label %NewDefault

LeafBlock15:                                      ; preds = %NodeBlock23
  %SwitchLeaf16 = icmp eq i32 %298, 31493
  br i1 %SwitchLeaf16, label %302, label %LeafBlock15.NewDefault_crit_edge

LeafBlock15.NewDefault_crit_edge:                 ; preds = %LeafBlock15
  br label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock25
  %Pivot = icmp slt i32 %298, 20143
  br i1 %Pivot, label %LeafBlock, label %LeafBlock13

LeafBlock13:                                      ; preds = %NodeBlock
  %SwitchLeaf14 = icmp eq i32 %298, 20143
  br i1 %SwitchLeaf14, label %305, label %LeafBlock13.NewDefault_crit_edge

LeafBlock13.NewDefault_crit_edge:                 ; preds = %LeafBlock13
  br label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %298, 6386
  br i1 %SwitchLeaf, label %311, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

299:                                              ; preds = %LeafBlock17
  call void @llvm.dbg.value(metadata i16 0, metadata !1026, metadata !DIExpression()), !dbg !1048
  %300 = getelementptr [45 x i8], [45 x i8]* @.str.3, i32 0, i32 0
  %301 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %300), !dbg !1374
  br label %315, !dbg !1376

302:                                              ; preds = %LeafBlock15
  call void @llvm.dbg.value(metadata i16 1, metadata !1026, metadata !DIExpression()), !dbg !1048
  %303 = getelementptr [44 x i8], [44 x i8]* @.str.4, i32 0, i32 0
  %304 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %303), !dbg !1377
  br label %315, !dbg !1378

305:                                              ; preds = %LeafBlock13
  call void @llvm.dbg.value(metadata i16 2, metadata !1026, metadata !DIExpression()), !dbg !1048
  %306 = getelementptr [49 x i8], [49 x i8]* @.str.5, i32 0, i32 0
  %307 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %306), !dbg !1379
  br label %315, !dbg !1380

308:                                              ; preds = %LeafBlock19
  call void @llvm.dbg.value(metadata i16 3, metadata !1026, metadata !DIExpression()), !dbg !1048
  %309 = getelementptr [45 x i8], [45 x i8]* @.str.6, i32 0, i32 0
  %310 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %309), !dbg !1381
  br label %315, !dbg !1382

311:                                              ; preds = %LeafBlock
  call void @llvm.dbg.value(metadata i16 4, metadata !1026, metadata !DIExpression()), !dbg !1048
  %312 = getelementptr [44 x i8], [44 x i8]* @.str.7, i32 0, i32 0
  %313 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %312), !dbg !1383
  br label %315, !dbg !1384

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock13.NewDefault_crit_edge, %LeafBlock15.NewDefault_crit_edge, %LeafBlock17.NewDefault_crit_edge, %LeafBlock19.NewDefault_crit_edge
  br label %314

314:                                              ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i16 -1, metadata !1027, metadata !DIExpression()), !dbg !1048
  br label %315, !dbg !1385

315:                                              ; preds = %314, %311, %308, %305, %302, %299
  %.08 = phi i16 [ -1, %314 ], [ 0, %311 ], [ 0, %308 ], [ 0, %305 ], [ 0, %302 ], [ 0, %299 ], !dbg !1048
  %.07 = phi i16 [ -1, %314 ], [ 4, %311 ], [ 3, %308 ], [ 2, %305 ], [ 1, %302 ], [ 0, %299 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.07, metadata !1026, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.08, metadata !1027, metadata !DIExpression()), !dbg !1048
  %316 = sext i16 %.07 to i32, !dbg !1386
  %317 = icmp sge i32 %316, 0, !dbg !1388
  br i1 %317, label %318, label %._crit_edge40, !dbg !1389

._crit_edge40:                                    ; preds = %315
  br label %446, !dbg !1389

318:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %319, !dbg !1390

319:                                              ; preds = %443, %318
  %.19 = phi i16 [ %.08, %318 ], [ %442, %443 ], !dbg !1048
  %.5 = phi i16 [ 0, %318 ], [ %444, %443 ], !dbg !1393
  call void @llvm.dbg.value(metadata i16 %.5, metadata !1023, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.19, metadata !1027, metadata !DIExpression()), !dbg !1048
  %320 = zext i16 %.5 to i32, !dbg !1394
  %321 = load i32, i32* @default_num_contexts, align 4, !dbg !1396, !tbaa !1046
  %322 = icmp ult i32 %320, %321, !dbg !1397
  br i1 %322, label %323, label %445, !dbg !1398

323:                                              ; preds = %319
  %324 = zext i16 %.5 to i32, !dbg !1399
  %325 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %324, !dbg !1399
  %326 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %325, i32 0, i32 13, !dbg !1401
  store i16 0, i16* %326, align 4, !dbg !1402, !tbaa !1170
  %327 = zext i16 %.5 to i32, !dbg !1403
  %328 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %327, !dbg !1403
  %329 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %328, i32 0, i32 6, !dbg !1405
  %330 = load i32, i32* %329, align 4, !dbg !1405, !tbaa !1076
  %331 = and i32 %330, 1, !dbg !1406
  %332 = icmp ne i32 %331, 0, !dbg !1406
  br i1 %332, label %333, label %._crit_edge41, !dbg !1407

._crit_edge41:                                    ; preds = %323
  br label %362, !dbg !1407

333:                                              ; preds = %323
  %334 = zext i16 %.5 to i32, !dbg !1408
  %335 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %334, !dbg !1408
  %336 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %335, i32 0, i32 10, !dbg !1409
  %337 = load i16, i16* %336, align 2, !dbg !1409, !tbaa !981
  %338 = zext i16 %337 to i32, !dbg !1408
  %339 = sext i16 %.07 to i32, !dbg !1410
  %340 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %339, !dbg !1410
  %341 = load i16, i16* %340, align 2, !dbg !1410, !tbaa !294
  %342 = zext i16 %341 to i32, !dbg !1410
  %343 = icmp ne i32 %338, %342, !dbg !1411
  br i1 %343, label %344, label %._crit_edge42, !dbg !1412

._crit_edge42:                                    ; preds = %333
  br label %362, !dbg !1412

344:                                              ; preds = %333
  %345 = zext i16 %.5 to i32, !dbg !1413
  %346 = zext i16 %.5 to i32, !dbg !1415
  %347 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %346, !dbg !1415
  %348 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %347, i32 0, i32 10, !dbg !1416
  %349 = load i16, i16* %348, align 2, !dbg !1416, !tbaa !981
  %350 = zext i16 %349 to i32, !dbg !1415
  %351 = sext i16 %.07 to i32, !dbg !1417
  %352 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %351, !dbg !1417
  %353 = load i16, i16* %352, align 2, !dbg !1417, !tbaa !294
  %354 = zext i16 %353 to i32, !dbg !1417
  %355 = getelementptr [47 x i8], [47 x i8]* @.str.8, i32 0, i32 0
  %356 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %355, i32 %345, i32 %350, i32 %354), !dbg !1418
  %357 = zext i16 %.5 to i32, !dbg !1419
  %358 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %357, !dbg !1419
  %359 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %358, i32 0, i32 13, !dbg !1420
  %360 = load i16, i16* %359, align 4, !dbg !1421, !tbaa !1170
  %361 = add i16 %360, 1, !dbg !1421
  store i16 %361, i16* %359, align 4, !dbg !1421, !tbaa !1170
  br label %362, !dbg !1422

362:                                              ; preds = %344, %._crit_edge42, %._crit_edge41
  %363 = zext i16 %.5 to i32, !dbg !1423
  %364 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %363, !dbg !1423
  %365 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %364, i32 0, i32 6, !dbg !1425
  %366 = load i32, i32* %365, align 4, !dbg !1425, !tbaa !1076
  %367 = and i32 %366, 2, !dbg !1426
  %368 = icmp ne i32 %367, 0, !dbg !1426
  br i1 %368, label %369, label %._crit_edge43, !dbg !1427

._crit_edge43:                                    ; preds = %362
  br label %398, !dbg !1427

369:                                              ; preds = %362
  %370 = zext i16 %.5 to i32, !dbg !1428
  %371 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %370, !dbg !1428
  %372 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %371, i32 0, i32 11, !dbg !1429
  %373 = load i16, i16* %372, align 4, !dbg !1429, !tbaa !357
  %374 = zext i16 %373 to i32, !dbg !1428
  %375 = sext i16 %.07 to i32, !dbg !1430
  %376 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %375, !dbg !1430
  %377 = load i16, i16* %376, align 2, !dbg !1430, !tbaa !294
  %378 = zext i16 %377 to i32, !dbg !1430
  %379 = icmp ne i32 %374, %378, !dbg !1431
  br i1 %379, label %380, label %._crit_edge44, !dbg !1432

._crit_edge44:                                    ; preds = %369
  br label %398, !dbg !1432

380:                                              ; preds = %369
  %381 = zext i16 %.5 to i32, !dbg !1433
  %382 = zext i16 %.5 to i32, !dbg !1435
  %383 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %382, !dbg !1435
  %384 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %383, i32 0, i32 11, !dbg !1436
  %385 = load i16, i16* %384, align 4, !dbg !1436, !tbaa !357
  %386 = zext i16 %385 to i32, !dbg !1435
  %387 = sext i16 %.07 to i32, !dbg !1437
  %388 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %387, !dbg !1437
  %389 = load i16, i16* %388, align 2, !dbg !1437, !tbaa !294
  %390 = zext i16 %389 to i32, !dbg !1437
  %391 = getelementptr [49 x i8], [49 x i8]* @.str.9, i32 0, i32 0
  %392 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %391, i32 %381, i32 %386, i32 %390), !dbg !1438
  %393 = zext i16 %.5 to i32, !dbg !1439
  %394 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %393, !dbg !1439
  %395 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %394, i32 0, i32 13, !dbg !1440
  %396 = load i16, i16* %395, align 4, !dbg !1441, !tbaa !1170
  %397 = add i16 %396, 1, !dbg !1441
  store i16 %397, i16* %395, align 4, !dbg !1441, !tbaa !1170
  br label %398, !dbg !1442

398:                                              ; preds = %380, %._crit_edge44, %._crit_edge43
  %399 = zext i16 %.5 to i32, !dbg !1443
  %400 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %399, !dbg !1443
  %401 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %400, i32 0, i32 6, !dbg !1445
  %402 = load i32, i32* %401, align 4, !dbg !1445, !tbaa !1076
  %403 = and i32 %402, 4, !dbg !1446
  %404 = icmp ne i32 %403, 0, !dbg !1446
  br i1 %404, label %405, label %._crit_edge45, !dbg !1447

._crit_edge45:                                    ; preds = %398
  br label %434, !dbg !1447

405:                                              ; preds = %398
  %406 = zext i16 %.5 to i32, !dbg !1448
  %407 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %406, !dbg !1448
  %408 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %407, i32 0, i32 12, !dbg !1449
  %409 = load i16, i16* %408, align 2, !dbg !1449, !tbaa !344
  %410 = zext i16 %409 to i32, !dbg !1448
  %411 = sext i16 %.07 to i32, !dbg !1450
  %412 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %411, !dbg !1450
  %413 = load i16, i16* %412, align 2, !dbg !1450, !tbaa !294
  %414 = zext i16 %413 to i32, !dbg !1450
  %415 = icmp ne i32 %410, %414, !dbg !1451
  br i1 %415, label %416, label %._crit_edge46, !dbg !1452

._crit_edge46:                                    ; preds = %405
  br label %434, !dbg !1452

416:                                              ; preds = %405
  %417 = zext i16 %.5 to i32, !dbg !1453
  %418 = zext i16 %.5 to i32, !dbg !1455
  %419 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %418, !dbg !1455
  %420 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %419, i32 0, i32 12, !dbg !1456
  %421 = load i16, i16* %420, align 2, !dbg !1456, !tbaa !344
  %422 = zext i16 %421 to i32, !dbg !1455
  %423 = sext i16 %.07 to i32, !dbg !1457
  %424 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %423, !dbg !1457
  %425 = load i16, i16* %424, align 2, !dbg !1457, !tbaa !294
  %426 = zext i16 %425 to i32, !dbg !1457
  %427 = getelementptr [48 x i8], [48 x i8]* @.str.10, i32 0, i32 0
  %428 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %427, i32 %417, i32 %422, i32 %426), !dbg !1458
  %429 = zext i16 %.5 to i32, !dbg !1459
  %430 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %429, !dbg !1459
  %431 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %430, i32 0, i32 13, !dbg !1460
  %432 = load i16, i16* %431, align 4, !dbg !1461, !tbaa !1170
  %433 = add i16 %432, 1, !dbg !1461
  store i16 %433, i16* %431, align 4, !dbg !1461, !tbaa !1170
  br label %434, !dbg !1462

434:                                              ; preds = %416, %._crit_edge46, %._crit_edge45
  %435 = zext i16 %.5 to i32, !dbg !1463
  %436 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %435, !dbg !1463
  %437 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %436, i32 0, i32 13, !dbg !1464
  %438 = load i16, i16* %437, align 4, !dbg !1464, !tbaa !1170
  %439 = sext i16 %438 to i32, !dbg !1463
  %440 = sext i16 %.19 to i32, !dbg !1465
  %441 = add nsw i32 %440, %439, !dbg !1465
  %442 = trunc i32 %441 to i16, !dbg !1465
  call void @llvm.dbg.value(metadata i16 %442, metadata !1027, metadata !DIExpression()), !dbg !1048
  br label %443, !dbg !1466

443:                                              ; preds = %434
  %444 = add i16 %.5, 1, !dbg !1467
  call void @llvm.dbg.value(metadata i16 %444, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %319, !dbg !1468, !llvm.loop !1469

445:                                              ; preds = %319
  %.19.lcssa = phi i16 [ %.19, %319 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.19.lcssa, metadata !1027, metadata !DIExpression()), !dbg !1048
  br label %446, !dbg !1471

446:                                              ; preds = %445, %._crit_edge40
  %.210 = phi i16 [ %.19.lcssa, %445 ], [ %.08, %._crit_edge40 ], !dbg !1472
  call void @llvm.dbg.value(metadata i16 %.210, metadata !1027, metadata !DIExpression()), !dbg !1048
  %447 = call arm_aapcscc zeroext i8 @check_data_types(), !dbg !1473
  %448 = zext i8 %447 to i32, !dbg !1473
  %449 = sext i16 %.210 to i32, !dbg !1474
  %450 = add nsw i32 %449, %448, !dbg !1474
  %451 = trunc i32 %450 to i16, !dbg !1474
  call void @llvm.dbg.value(metadata i16 %451, metadata !1027, metadata !DIExpression()), !dbg !1048
  %452 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1475
  %453 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %452, i32 0, i32 4, !dbg !1476
  %454 = load i32, i32* %453, align 4, !dbg !1476, !tbaa !326
  %455 = getelementptr [24 x i8], [24 x i8]* @.str.11, i32 0, i32 0
  %456 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %455, i32 %454), !dbg !1477
  %457 = getelementptr [24 x i8], [24 x i8]* @.str.12, i32 0, i32 0
  %458 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %457, i32 %280), !dbg !1478
  %459 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1479
  %460 = getelementptr [23 x i8], [23 x i8]* @.str.13, i32 0, i32 0
  %461 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %460, double %459), !dbg !1480
  %462 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1481
  %463 = fcmp ogt double %462, 0.000000e+00, !dbg !1483
  br i1 %463, label %464, label %._crit_edge47, !dbg !1484

._crit_edge47:                                    ; preds = %446
  br label %475, !dbg !1484

464:                                              ; preds = %446
  %465 = load i32, i32* @default_num_contexts, align 4, !dbg !1485, !tbaa !1046
  %466 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1486
  %467 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %466, i32 0, i32 5, !dbg !1487
  %468 = load i32, i32* %467, align 4, !dbg !1487, !tbaa !976
  %469 = mul i32 %465, %468, !dbg !1488
  %470 = uitofp i32 %469 to double, !dbg !1485
  %471 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1489
  %472 = fdiv double %470, %471, !dbg !1490
  %473 = getelementptr [23 x i8], [23 x i8]* @.str.14, i32 0, i32 0
  %474 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %473, double %472), !dbg !1491
  br label %475, !dbg !1491

475:                                              ; preds = %464, %._crit_edge47
  %476 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1492
  %477 = fcmp olt double %476, 1.000000e+01, !dbg !1494
  br i1 %477, label %478, label %._crit_edge48, !dbg !1495

._crit_edge48:                                    ; preds = %475
  br label %482, !dbg !1495

478:                                              ; preds = %475
  %479 = getelementptr [62 x i8], [62 x i8]* @.str.15, i32 0, i32 0
  %480 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %479), !dbg !1496
  %481 = add i16 %451, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i16 %481, metadata !1027, metadata !DIExpression()), !dbg !1048
  br label %482, !dbg !1499

482:                                              ; preds = %478, %._crit_edge48
  %.311 = phi i16 [ %481, %478 ], [ %451, %._crit_edge48 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.311, metadata !1027, metadata !DIExpression()), !dbg !1048
  %483 = load i32, i32* @default_num_contexts, align 4, !dbg !1500, !tbaa !1046
  %484 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1501
  %485 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %484, i32 0, i32 5, !dbg !1502
  %486 = load i32, i32* %485, align 4, !dbg !1502, !tbaa !976
  %487 = mul i32 %483, %486, !dbg !1503
  %488 = getelementptr [24 x i8], [24 x i8]* @.str.16, i32 0, i32 0
  %489 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %488, i32 %487), !dbg !1504
  %490 = getelementptr [23 x i8], [23 x i8]* @.str.17, i32 0, i32 0
  %491 = getelementptr [116 x i8], [116 x i8]* @.str.18, i32 0, i32 0
  %492 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %490, i8* %491), !dbg !1505
  %493 = getelementptr [23 x i8], [23 x i8]* @.str.19, i32 0, i32 0
  %494 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %495 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %493, i8* %494), !dbg !1506
  %496 = getelementptr [23 x i8], [23 x i8]* @.str.21, i32 0, i32 0
  %497 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %498 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %496, i8* %497), !dbg !1507
  %499 = zext i16 %297 to i32, !dbg !1508
  %500 = getelementptr [27 x i8], [27 x i8]* @.str.23, i32 0, i32 0
  %501 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %500, i32 %499), !dbg !1509
  %502 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1510
  %503 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %502, i32 0, i32 6, !dbg !1512
  %504 = load i32, i32* %503, align 4, !dbg !1512, !tbaa !1076
  %505 = and i32 %504, 1, !dbg !1513
  %506 = icmp ne i32 %505, 0, !dbg !1513
  br i1 %506, label %507, label %._crit_edge49, !dbg !1514

._crit_edge49:                                    ; preds = %482
  br label %524, !dbg !1514

507:                                              ; preds = %482
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %508, !dbg !1515

508:                                              ; preds = %521, %507
  %.6 = phi i16 [ 0, %507 ], [ %522, %521 ], !dbg !1517
  call void @llvm.dbg.value(metadata i16 %.6, metadata !1023, metadata !DIExpression()), !dbg !1048
  %509 = zext i16 %.6 to i32, !dbg !1518
  %510 = load i32, i32* @default_num_contexts, align 4, !dbg !1520, !tbaa !1046
  %511 = icmp ult i32 %509, %510, !dbg !1521
  br i1 %511, label %512, label %523, !dbg !1522

512:                                              ; preds = %508
  %513 = zext i16 %.6 to i32, !dbg !1523
  %514 = zext i16 %.6 to i32, !dbg !1524
  %515 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %514, !dbg !1524
  %516 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %515, i32 0, i32 10, !dbg !1525
  %517 = load i16, i16* %516, align 2, !dbg !1525, !tbaa !981
  %518 = zext i16 %517 to i32, !dbg !1524
  %519 = getelementptr [28 x i8], [28 x i8]* @.str.24, i32 0, i32 0
  %520 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %519, i32 %513, i32 %518), !dbg !1526
  br label %521, !dbg !1526

521:                                              ; preds = %512
  %522 = add i16 %.6, 1, !dbg !1527
  call void @llvm.dbg.value(metadata i16 %522, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %508, !dbg !1528, !llvm.loop !1529

523:                                              ; preds = %508
  br label %524, !dbg !1530

524:                                              ; preds = %523, %._crit_edge49
  %525 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1531
  %526 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %525, i32 0, i32 6, !dbg !1533
  %527 = load i32, i32* %526, align 4, !dbg !1533, !tbaa !1076
  %528 = and i32 %527, 2, !dbg !1534
  %529 = icmp ne i32 %528, 0, !dbg !1534
  br i1 %529, label %530, label %._crit_edge50, !dbg !1535

._crit_edge50:                                    ; preds = %524
  br label %547, !dbg !1535

530:                                              ; preds = %524
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %531, !dbg !1536

531:                                              ; preds = %544, %530
  %.7 = phi i16 [ 0, %530 ], [ %545, %544 ], !dbg !1538
  call void @llvm.dbg.value(metadata i16 %.7, metadata !1023, metadata !DIExpression()), !dbg !1048
  %532 = zext i16 %.7 to i32, !dbg !1539
  %533 = load i32, i32* @default_num_contexts, align 4, !dbg !1541, !tbaa !1046
  %534 = icmp ult i32 %532, %533, !dbg !1542
  br i1 %534, label %535, label %546, !dbg !1543

535:                                              ; preds = %531
  %536 = zext i16 %.7 to i32, !dbg !1544
  %537 = zext i16 %.7 to i32, !dbg !1545
  %538 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %537, !dbg !1545
  %539 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %538, i32 0, i32 11, !dbg !1546
  %540 = load i16, i16* %539, align 4, !dbg !1546, !tbaa !357
  %541 = zext i16 %540 to i32, !dbg !1545
  %542 = getelementptr [28 x i8], [28 x i8]* @.str.25, i32 0, i32 0
  %543 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %542, i32 %536, i32 %541), !dbg !1547
  br label %544, !dbg !1547

544:                                              ; preds = %535
  %545 = add i16 %.7, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i16 %545, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %531, !dbg !1549, !llvm.loop !1550

546:                                              ; preds = %531
  br label %547, !dbg !1551

547:                                              ; preds = %546, %._crit_edge50
  %548 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1552
  %549 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %548, i32 0, i32 6, !dbg !1554
  %550 = load i32, i32* %549, align 4, !dbg !1554, !tbaa !1076
  %551 = and i32 %550, 4, !dbg !1555
  %552 = icmp ne i32 %551, 0, !dbg !1555
  br i1 %552, label %553, label %._crit_edge51, !dbg !1556

._crit_edge51:                                    ; preds = %547
  br label %570, !dbg !1556

553:                                              ; preds = %547
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %554, !dbg !1557

554:                                              ; preds = %567, %553
  %.8 = phi i16 [ 0, %553 ], [ %568, %567 ], !dbg !1559
  call void @llvm.dbg.value(metadata i16 %.8, metadata !1023, metadata !DIExpression()), !dbg !1048
  %555 = zext i16 %.8 to i32, !dbg !1560
  %556 = load i32, i32* @default_num_contexts, align 4, !dbg !1562, !tbaa !1046
  %557 = icmp ult i32 %555, %556, !dbg !1563
  br i1 %557, label %558, label %569, !dbg !1564

558:                                              ; preds = %554
  %559 = zext i16 %.8 to i32, !dbg !1565
  %560 = zext i16 %.8 to i32, !dbg !1566
  %561 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %560, !dbg !1566
  %562 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %561, i32 0, i32 12, !dbg !1567
  %563 = load i16, i16* %562, align 2, !dbg !1567, !tbaa !344
  %564 = zext i16 %563 to i32, !dbg !1566
  %565 = getelementptr [28 x i8], [28 x i8]* @.str.26, i32 0, i32 0
  %566 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %565, i32 %559, i32 %564), !dbg !1568
  br label %567, !dbg !1568

567:                                              ; preds = %558
  %568 = add i16 %.8, 1, !dbg !1569
  call void @llvm.dbg.value(metadata i16 %568, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %554, !dbg !1570, !llvm.loop !1571

569:                                              ; preds = %554
  br label %570, !dbg !1572

570:                                              ; preds = %569, %._crit_edge51
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %571, !dbg !1573

571:                                              ; preds = %584, %570
  %.9 = phi i16 [ 0, %570 ], [ %585, %584 ], !dbg !1575
  call void @llvm.dbg.value(metadata i16 %.9, metadata !1023, metadata !DIExpression()), !dbg !1048
  %572 = zext i16 %.9 to i32, !dbg !1576
  %573 = load i32, i32* @default_num_contexts, align 4, !dbg !1578, !tbaa !1046
  %574 = icmp ult i32 %572, %573, !dbg !1579
  br i1 %574, label %575, label %586, !dbg !1580

575:                                              ; preds = %571
  %576 = zext i16 %.9 to i32, !dbg !1581
  %577 = zext i16 %.9 to i32, !dbg !1582
  %578 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %577, !dbg !1582
  %579 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %578, i32 0, i32 9, !dbg !1583
  %580 = load i16, i16* %579, align 4, !dbg !1583, !tbaa !340
  %581 = zext i16 %580 to i32, !dbg !1582
  %582 = getelementptr [28 x i8], [28 x i8]* @.str.27, i32 0, i32 0
  %583 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %582, i32 %576, i32 %581), !dbg !1584
  br label %584, !dbg !1584

584:                                              ; preds = %575
  %585 = add i16 %.9, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i16 %585, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %571, !dbg !1586, !llvm.loop !1587

586:                                              ; preds = %571
  %587 = sext i16 %.311 to i32, !dbg !1589
  %588 = icmp eq i32 %587, 0, !dbg !1591
  br i1 %588, label %589, label %._crit_edge52, !dbg !1592

._crit_edge52:                                    ; preds = %586
  br label %613, !dbg !1592

589:                                              ; preds = %586
  %590 = getelementptr [73 x i8], [73 x i8]* @.str.28, i32 0, i32 0
  %591 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %590), !dbg !1593
  %592 = sext i16 %.07 to i32, !dbg !1595
  %593 = icmp eq i32 %592, 3, !dbg !1597
  br i1 %593, label %594, label %._crit_edge53, !dbg !1598

._crit_edge53:                                    ; preds = %589
  br label %612, !dbg !1598

594:                                              ; preds = %589
  %595 = load i32, i32* @default_num_contexts, align 4, !dbg !1599, !tbaa !1046
  %596 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1601
  %597 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %596, i32 0, i32 5, !dbg !1602
  %598 = load i32, i32* %597, align 4, !dbg !1602, !tbaa !976
  %599 = mul i32 %595, %598, !dbg !1603
  %600 = uitofp i32 %599 to double, !dbg !1599
  %601 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1604
  %602 = fdiv double %600, %601, !dbg !1605
  %603 = getelementptr [26 x i8], [26 x i8]* @.str.29, i32 0, i32 0
  %604 = getelementptr [116 x i8], [116 x i8]* @.str.18, i32 0, i32 0
  %605 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %606 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %603, double %602, i8* %604, i8* %605), !dbg !1606
  %607 = getelementptr [6 x i8], [6 x i8]* @.str.30, i32 0, i32 0
  %608 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %609 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %607, i8* %608), !dbg !1607
  %610 = getelementptr [2 x i8], [2 x i8]* @.str.31, i32 0, i32 0
  %611 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %610), !dbg !1608
  br label %612, !dbg !1609

612:                                              ; preds = %594, %._crit_edge53
  br label %613, !dbg !1610

613:                                              ; preds = %612, %._crit_edge52
  %614 = sext i16 %.311 to i32, !dbg !1611
  %615 = icmp sgt i32 %614, 0, !dbg !1613
  br i1 %615, label %616, label %._crit_edge54, !dbg !1614

._crit_edge54:                                    ; preds = %613
  br label %619, !dbg !1614

616:                                              ; preds = %613
  %617 = getelementptr [17 x i8], [17 x i8]* @.str.32, i32 0, i32 0
  %618 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %617), !dbg !1615
  br label %619, !dbg !1615

619:                                              ; preds = %616, %._crit_edge54
  %620 = sext i16 %.311 to i32, !dbg !1616
  %621 = icmp slt i32 %620, 0, !dbg !1618
  br i1 %621, label %622, label %._crit_edge55, !dbg !1619

._crit_edge55:                                    ; preds = %619
  br label %625, !dbg !1619

622:                                              ; preds = %619
  %623 = getelementptr [99 x i8], [99 x i8]* @.str.33, i32 0, i32 0
  %624 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %623), !dbg !1620
  br label %625, !dbg !1620

625:                                              ; preds = %622, %._crit_edge55
  %626 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1621
  %627 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %626, i32 0, i32 14, !dbg !1622
  call arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S* %627), !dbg !1623
  %628 = bitcast [2000 x i8]* %5 to i8*, !dbg !1624
  call void @llvm.lifetime.end.p0i8(i64 2000, i8* %628) #4, !dbg !1624
  %629 = bitcast [1 x %struct.RESULTS_S]* %4 to i8*, !dbg !1624
  call void @llvm.lifetime.end.p0i8(i64 68, i8* %629) #4, !dbg !1624
  ret i32 0, !dbg !1625
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S*, i16 signext, i16 zeroext) #0 !dbg !1626 {
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %0, metadata !1639, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i16 %1, metadata !1640, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i16 %2, metadata !1641, metadata !DIExpression()), !dbg !1647
  %4 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 0, !dbg !1648
  %5 = load i32, i32* %4, align 4, !dbg !1648, !tbaa !1649
  call void @llvm.dbg.value(metadata i32 %5, metadata !1642, metadata !DIExpression()), !dbg !1647
  %6 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 3, !dbg !1650
  %7 = load i32*, i32** %6, align 4, !dbg !1650, !tbaa !1651
  call void @llvm.dbg.value(metadata i32* %7, metadata !1643, metadata !DIExpression()), !dbg !1647
  %8 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 1, !dbg !1652
  %9 = load i16*, i16** %8, align 4, !dbg !1652, !tbaa !1653
  call void @llvm.dbg.value(metadata i16* %9, metadata !1644, metadata !DIExpression()), !dbg !1647
  %10 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 2, !dbg !1654
  %11 = load i16*, i16** %10, align 4, !dbg !1654, !tbaa !1655
  call void @llvm.dbg.value(metadata i16* %11, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i16 %1, metadata !1646, metadata !DIExpression()), !dbg !1647
  %12 = call arm_aapcscc signext i16 @matrix_test(i32 %5, i32* %7, i16* %9, i16* %11, i16 signext %1), !dbg !1656
  %13 = call arm_aapcscc zeroext i16 @crc16(i16 signext %12, i16 zeroext %2), !dbg !1657
  call void @llvm.dbg.value(metadata i16 %13, metadata !1641, metadata !DIExpression()), !dbg !1647
  ret i16 %13, !dbg !1658
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_test(i32, i32*, i16*, i16*, i16 signext) #0 !dbg !1659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1663, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32* %1, metadata !1664, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i16* %2, metadata !1665, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i16* %3, metadata !1666, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i16 %4, metadata !1667, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i16 0, metadata !1668, metadata !DIExpression()), !dbg !1670
  %6 = sext i16 %4 to i32, !dbg !1671
  %7 = or i32 61440, %6, !dbg !1671
  %8 = trunc i32 %7 to i16, !dbg !1671
  call void @llvm.dbg.value(metadata i16 %8, metadata !1669, metadata !DIExpression()), !dbg !1670
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %4), !dbg !1672
  call arm_aapcscc void @matrix_mul_const(i32 %0, i32* %1, i16* %2, i16 signext %4), !dbg !1673
  %9 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1674
  %10 = call arm_aapcscc zeroext i16 @crc16(i16 signext %9, i16 zeroext 0), !dbg !1675
  call void @llvm.dbg.value(metadata i16 %10, metadata !1668, metadata !DIExpression()), !dbg !1670
  call arm_aapcscc void @matrix_mul_vect(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1676
  %11 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1677
  %12 = call arm_aapcscc zeroext i16 @crc16(i16 signext %11, i16 zeroext %10), !dbg !1678
  call void @llvm.dbg.value(metadata i16 %12, metadata !1668, metadata !DIExpression()), !dbg !1670
  call arm_aapcscc void @matrix_mul_matrix(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1679
  %13 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1680
  %14 = call arm_aapcscc zeroext i16 @crc16(i16 signext %13, i16 zeroext %12), !dbg !1681
  call void @llvm.dbg.value(metadata i16 %14, metadata !1668, metadata !DIExpression()), !dbg !1670
  call arm_aapcscc void @matrix_mul_matrix_bitextract(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1682
  %15 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1683
  %16 = call arm_aapcscc zeroext i16 @crc16(i16 signext %15, i16 zeroext %14), !dbg !1684
  call void @llvm.dbg.value(metadata i16 %16, metadata !1668, metadata !DIExpression()), !dbg !1670
  %17 = sext i16 %4 to i32, !dbg !1685
  %18 = sub nsw i32 0, %17, !dbg !1686
  %19 = trunc i32 %18 to i16, !dbg !1686
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %19), !dbg !1687
  ret i16 %16, !dbg !1688
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_add_const(i32, i16*, i16 signext) #0 !dbg !1689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1693, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i16* %1, metadata !1694, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i16 %2, metadata !1695, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 0, metadata !1696, metadata !DIExpression()), !dbg !1698
  br label %4, !dbg !1699

4:                                                ; preds = %19, %3
  %.01 = phi i32 [ 0, %3 ], [ %20, %19 ], !dbg !1701
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1696, metadata !DIExpression()), !dbg !1698
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1702
  br i1 %exitcond2, label %5, label %21, !dbg !1704

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !1698
  br label %6, !dbg !1705

6:                                                ; preds = %16, %5
  %.0 = phi i32 [ 0, %5 ], [ %17, %16 ], !dbg !1708
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1697, metadata !DIExpression()), !dbg !1698
  %exitcond = icmp ne i32 %.0, %0, !dbg !1709
  br i1 %exitcond, label %7, label %18, !dbg !1711

7:                                                ; preds = %6
  %8 = sext i16 %2 to i32, !dbg !1712
  %9 = mul i32 %.01, %0, !dbg !1714
  %10 = add i32 %9, %.0, !dbg !1715
  %11 = getelementptr inbounds i16, i16* %1, i32 %10, !dbg !1716
  %12 = load i16, i16* %11, align 2, !dbg !1717, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1717
  %14 = add nsw i32 %13, %8, !dbg !1717
  %15 = trunc i32 %14 to i16, !dbg !1717
  store i16 %15, i16* %11, align 2, !dbg !1717, !tbaa !294
  br label %16, !dbg !1718

16:                                               ; preds = %7
  %17 = add i32 %.0, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %17, metadata !1697, metadata !DIExpression()), !dbg !1698
  br label %6, !dbg !1720, !llvm.loop !1721

18:                                               ; preds = %6
  br label %19, !dbg !1723

19:                                               ; preds = %18
  %20 = add i32 %.01, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %20, metadata !1696, metadata !DIExpression()), !dbg !1698
  br label %4, !dbg !1725, !llvm.loop !1726

21:                                               ; preds = %4
  ret void, !dbg !1728
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_const(i32, i32*, i16*, i16 signext) #0 !dbg !1729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1733, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i32* %1, metadata !1734, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i16* %2, metadata !1735, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i16 %3, metadata !1736, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i32 0, metadata !1737, metadata !DIExpression()), !dbg !1739
  br label %5, !dbg !1740

5:                                                ; preds = %22, %4
  %.01 = phi i32 [ 0, %4 ], [ %23, %22 ], !dbg !1742
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1737, metadata !DIExpression()), !dbg !1739
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1743
  br i1 %exitcond2, label %6, label %24, !dbg !1745

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1738, metadata !DIExpression()), !dbg !1739
  br label %7, !dbg !1746

7:                                                ; preds = %19, %6
  %.0 = phi i32 [ 0, %6 ], [ %20, %19 ], !dbg !1749
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1738, metadata !DIExpression()), !dbg !1739
  %exitcond = icmp ne i32 %.0, %0, !dbg !1750
  br i1 %exitcond, label %8, label %21, !dbg !1752

8:                                                ; preds = %7
  %9 = mul i32 %.01, %0, !dbg !1753
  %10 = add i32 %9, %.0, !dbg !1755
  %11 = getelementptr inbounds i16, i16* %2, i32 %10, !dbg !1756
  %12 = load i16, i16* %11, align 2, !dbg !1756, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1757
  %14 = sext i16 %3 to i32, !dbg !1758
  %15 = mul nsw i32 %13, %14, !dbg !1759
  %16 = mul i32 %.01, %0, !dbg !1760
  %17 = add i32 %16, %.0, !dbg !1761
  %18 = getelementptr inbounds i32, i32* %1, i32 %17, !dbg !1762
  store i32 %15, i32* %18, align 4, !dbg !1763, !tbaa !1046
  br label %19, !dbg !1764

19:                                               ; preds = %8
  %20 = add i32 %.0, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %20, metadata !1738, metadata !DIExpression()), !dbg !1739
  br label %7, !dbg !1766, !llvm.loop !1767

21:                                               ; preds = %7
  br label %22, !dbg !1769

22:                                               ; preds = %21
  %23 = add i32 %.01, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %23, metadata !1737, metadata !DIExpression()), !dbg !1739
  br label %5, !dbg !1771, !llvm.loop !1772

24:                                               ; preds = %5
  ret void, !dbg !1774
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_sum(i32, i32*, i16 signext) #0 !dbg !1775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1779, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32* %1, metadata !1780, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i16 %2, metadata !1781, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 0, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 0, metadata !1783, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 0, metadata !1784, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i16 0, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 0, metadata !1786, metadata !DIExpression()), !dbg !1788
  br label %4, !dbg !1789

4:                                                ; preds = %30, %3
  %.06 = phi i32 [ 0, %3 ], [ %.17.lcssa, %30 ], !dbg !1791
  %.03 = phi i32 [ 0, %3 ], [ %.14.lcssa, %30 ], !dbg !1792
  %.02 = phi i16 [ 0, %3 ], [ %.1.lcssa, %30 ], !dbg !1793
  %.01 = phi i32 [ 0, %3 ], [ %31, %30 ], !dbg !1794
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1786, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i16 %.02, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1783, metadata !DIExpression()), !dbg !1788
  %exitcond8 = icmp ne i32 %.01, %0, !dbg !1795
  br i1 %exitcond8, label %5, label %32, !dbg !1797

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1787, metadata !DIExpression()), !dbg !1788
  br label %6, !dbg !1798

6:                                                ; preds = %27, %5
  %.17 = phi i32 [ %.06, %5 ], [ %11, %27 ], !dbg !1788
  %.14 = phi i32 [ %.03, %5 ], [ %.25, %27 ], !dbg !1788
  %.1 = phi i16 [ %.02, %5 ], [ %.2, %27 ], !dbg !1788
  %.0 = phi i32 [ 0, %5 ], [ %28, %27 ], !dbg !1801
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1787, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i16 %.1, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %.17, metadata !1783, metadata !DIExpression()), !dbg !1788
  %exitcond = icmp ne i32 %.0, %0, !dbg !1802
  br i1 %exitcond, label %7, label %29, !dbg !1804

7:                                                ; preds = %6
  %8 = mul i32 %.01, %0, !dbg !1805
  %9 = add i32 %8, %.0, !dbg !1807
  %10 = getelementptr inbounds i32, i32* %1, i32 %9, !dbg !1808
  %11 = load i32, i32* %10, align 4, !dbg !1808, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %11, metadata !1784, metadata !DIExpression()), !dbg !1788
  %12 = add nsw i32 %.14, %11, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %12, metadata !1782, metadata !DIExpression()), !dbg !1788
  %13 = sext i16 %2 to i32, !dbg !1810
  %14 = icmp sgt i32 %12, %13, !dbg !1812
  br i1 %14, label %15, label %19, !dbg !1813

15:                                               ; preds = %7
  %16 = sext i16 %.1 to i32, !dbg !1814
  %17 = add nsw i32 %16, 10, !dbg !1814
  %18 = trunc i32 %17 to i16, !dbg !1814
  call void @llvm.dbg.value(metadata i16 %18, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 0, metadata !1782, metadata !DIExpression()), !dbg !1788
  br label %26, !dbg !1816

19:                                               ; preds = %7
  %20 = icmp sgt i32 %11, %.17, !dbg !1817
  %21 = zext i1 %20 to i64, !dbg !1819
  %22 = select i1 %20, i32 1, i32 0, !dbg !1819
  %23 = sext i16 %.1 to i32, !dbg !1820
  %24 = add nsw i32 %23, %22, !dbg !1820
  %25 = trunc i32 %24 to i16, !dbg !1820
  call void @llvm.dbg.value(metadata i16 %25, metadata !1785, metadata !DIExpression()), !dbg !1788
  br label %26

26:                                               ; preds = %19, %15
  %.25 = phi i32 [ 0, %15 ], [ %12, %19 ], !dbg !1821
  %.2 = phi i16 [ %18, %15 ], [ %25, %19 ], !dbg !1822
  call void @llvm.dbg.value(metadata i16 %.2, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %.25, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %11, metadata !1783, metadata !DIExpression()), !dbg !1788
  br label %27, !dbg !1823

27:                                               ; preds = %26
  %28 = add i32 %.0, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %28, metadata !1787, metadata !DIExpression()), !dbg !1788
  br label %6, !dbg !1825, !llvm.loop !1826

29:                                               ; preds = %6
  %.17.lcssa = phi i32 [ %.17, %6 ], !dbg !1788
  %.14.lcssa = phi i32 [ %.14, %6 ], !dbg !1788
  %.1.lcssa = phi i16 [ %.1, %6 ], !dbg !1788
  call void @llvm.dbg.value(metadata i32 %.17.lcssa, metadata !1783, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !1782, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i16 %.1.lcssa, metadata !1785, metadata !DIExpression()), !dbg !1788
  br label %30, !dbg !1828

30:                                               ; preds = %29
  %31 = add i32 %.01, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i32 %31, metadata !1786, metadata !DIExpression()), !dbg !1788
  br label %4, !dbg !1830, !llvm.loop !1831

32:                                               ; preds = %4
  %.02.lcssa = phi i16 [ %.02, %4 ], !dbg !1793
  call void @llvm.dbg.value(metadata i16 %.02.lcssa, metadata !1785, metadata !DIExpression()), !dbg !1788
  ret i16 %.02.lcssa, !dbg !1833
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_vect(i32, i32*, i16*, i16*) #0 !dbg !1834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1838, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32* %1, metadata !1839, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i16* %2, metadata !1840, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i16* %3, metadata !1841, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 0, metadata !1842, metadata !DIExpression()), !dbg !1844
  br label %5, !dbg !1845

5:                                                ; preds = %25, %4
  %.01 = phi i32 [ 0, %4 ], [ %26, %25 ], !dbg !1847
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1842, metadata !DIExpression()), !dbg !1844
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1848
  br i1 %exitcond2, label %6, label %27, !dbg !1850

6:                                                ; preds = %5
  %7 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1851
  store i32 0, i32* %7, align 4, !dbg !1853, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1843, metadata !DIExpression()), !dbg !1844
  br label %8, !dbg !1854

8:                                                ; preds = %22, %6
  %.0 = phi i32 [ 0, %6 ], [ %23, %22 ], !dbg !1856
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1843, metadata !DIExpression()), !dbg !1844
  %exitcond = icmp ne i32 %.0, %0, !dbg !1857
  br i1 %exitcond, label %9, label %24, !dbg !1859

9:                                                ; preds = %8
  %10 = mul i32 %.01, %0, !dbg !1860
  %11 = add i32 %10, %.0, !dbg !1862
  %12 = getelementptr inbounds i16, i16* %2, i32 %11, !dbg !1863
  %13 = load i16, i16* %12, align 2, !dbg !1863, !tbaa !294
  %14 = sext i16 %13 to i32, !dbg !1864
  %15 = getelementptr inbounds i16, i16* %3, i32 %.0, !dbg !1865
  %16 = load i16, i16* %15, align 2, !dbg !1865, !tbaa !294
  %17 = sext i16 %16 to i32, !dbg !1866
  %18 = mul nsw i32 %14, %17, !dbg !1867
  %19 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1868
  %20 = load i32, i32* %19, align 4, !dbg !1869, !tbaa !1046
  %21 = add nsw i32 %20, %18, !dbg !1869
  store i32 %21, i32* %19, align 4, !dbg !1869, !tbaa !1046
  br label %22, !dbg !1870

22:                                               ; preds = %9
  %23 = add i32 %.0, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %23, metadata !1843, metadata !DIExpression()), !dbg !1844
  br label %8, !dbg !1872, !llvm.loop !1873

24:                                               ; preds = %8
  br label %25, !dbg !1875

25:                                               ; preds = %24
  %26 = add i32 %.01, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %26, metadata !1842, metadata !DIExpression()), !dbg !1844
  br label %5, !dbg !1877, !llvm.loop !1878

27:                                               ; preds = %5
  ret void, !dbg !1880
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix(i32, i32*, i16*, i16*) #0 !dbg !1881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1883, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32* %1, metadata !1884, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i16* %2, metadata !1885, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i16* %3, metadata !1886, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 0, metadata !1887, metadata !DIExpression()), !dbg !1890
  br label %5, !dbg !1891

5:                                                ; preds = %36, %4
  %.02 = phi i32 [ 0, %4 ], [ %37, %36 ], !dbg !1893
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1887, metadata !DIExpression()), !dbg !1890
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1894
  br i1 %exitcond4, label %6, label %38, !dbg !1896

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1888, metadata !DIExpression()), !dbg !1890
  br label %7, !dbg !1897

7:                                                ; preds = %33, %6
  %.01 = phi i32 [ 0, %6 ], [ %34, %33 ], !dbg !1900
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1888, metadata !DIExpression()), !dbg !1890
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1901
  br i1 %exitcond3, label %8, label %35, !dbg !1903

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1904
  %10 = add i32 %9, %.01, !dbg !1906
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1907
  store i32 0, i32* %11, align 4, !dbg !1908, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !1890
  br label %12, !dbg !1909

12:                                               ; preds = %30, %8
  %.0 = phi i32 [ 0, %8 ], [ %31, %30 ], !dbg !1911
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1889, metadata !DIExpression()), !dbg !1890
  %exitcond = icmp ne i32 %.0, %0, !dbg !1912
  br i1 %exitcond, label %13, label %32, !dbg !1914

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1915
  %15 = add i32 %14, %.0, !dbg !1917
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1918
  %17 = load i16, i16* %16, align 2, !dbg !1918, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1919
  %19 = mul i32 %.0, %0, !dbg !1920
  %20 = add i32 %19, %.01, !dbg !1921
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1922
  %22 = load i16, i16* %21, align 2, !dbg !1922, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1923
  %24 = mul nsw i32 %18, %23, !dbg !1924
  %25 = mul i32 %.02, %0, !dbg !1925
  %26 = add i32 %25, %.01, !dbg !1926
  %27 = getelementptr inbounds i32, i32* %1, i32 %26, !dbg !1927
  %28 = load i32, i32* %27, align 4, !dbg !1928, !tbaa !1046
  %29 = add nsw i32 %28, %24, !dbg !1928
  store i32 %29, i32* %27, align 4, !dbg !1928, !tbaa !1046
  br label %30, !dbg !1929

30:                                               ; preds = %13
  %31 = add i32 %.0, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %31, metadata !1889, metadata !DIExpression()), !dbg !1890
  br label %12, !dbg !1931, !llvm.loop !1932

32:                                               ; preds = %12
  br label %33, !dbg !1934

33:                                               ; preds = %32
  %34 = add i32 %.01, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %34, metadata !1888, metadata !DIExpression()), !dbg !1890
  br label %7, !dbg !1936, !llvm.loop !1937

35:                                               ; preds = %7
  br label %36, !dbg !1939

36:                                               ; preds = %35
  %37 = add i32 %.02, 1, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %37, metadata !1887, metadata !DIExpression()), !dbg !1890
  br label %5, !dbg !1941, !llvm.loop !1942

38:                                               ; preds = %5
  ret void, !dbg !1944
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix_bitextract(i32, i32*, i16*, i16*) #0 !dbg !1945 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1947, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32* %1, metadata !1948, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i16* %2, metadata !1949, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i16* %3, metadata !1950, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 0, metadata !1951, metadata !DIExpression()), !dbg !1964
  br label %5, !dbg !1965

5:                                                ; preds = %41, %4
  %.02 = phi i32 [ 0, %4 ], [ %42, %41 ], !dbg !1966
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1951, metadata !DIExpression()), !dbg !1964
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1967
  br i1 %exitcond4, label %6, label %43, !dbg !1968

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1952, metadata !DIExpression()), !dbg !1964
  br label %7, !dbg !1969

7:                                                ; preds = %38, %6
  %.01 = phi i32 [ 0, %6 ], [ %39, %38 ], !dbg !1970
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1952, metadata !DIExpression()), !dbg !1964
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1971
  br i1 %exitcond3, label %8, label %40, !dbg !1972

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1973
  %10 = add i32 %9, %.01, !dbg !1974
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1975
  store i32 0, i32* %11, align 4, !dbg !1976, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !1964
  br label %12, !dbg !1977

12:                                               ; preds = %35, %8
  %.0 = phi i32 [ 0, %8 ], [ %36, %35 ], !dbg !1978
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1953, metadata !DIExpression()), !dbg !1964
  %exitcond = icmp ne i32 %.0, %0, !dbg !1979
  br i1 %exitcond, label %13, label %37, !dbg !1980

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1981
  %15 = add i32 %14, %.0, !dbg !1982
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1983
  %17 = load i16, i16* %16, align 2, !dbg !1983, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1984
  %19 = mul i32 %.0, %0, !dbg !1985
  %20 = add i32 %19, %.01, !dbg !1986
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1987
  %22 = load i16, i16* %21, align 2, !dbg !1987, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1988
  %24 = mul nsw i32 %18, %23, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %24, metadata !1954, metadata !DIExpression()), !dbg !1990
  %25 = ashr i32 %24, 2, !dbg !1991
  %26 = and i32 %25, 15, !dbg !1991
  %27 = ashr i32 %24, 5, !dbg !1992
  %28 = and i32 %27, 127, !dbg !1992
  %29 = mul i32 %26, %28, !dbg !1993
  %30 = mul i32 %.02, %0, !dbg !1994
  %31 = add i32 %30, %.01, !dbg !1995
  %32 = getelementptr inbounds i32, i32* %1, i32 %31, !dbg !1996
  %33 = load i32, i32* %32, align 4, !dbg !1997, !tbaa !1046
  %34 = add i32 %33, %29, !dbg !1997
  store i32 %34, i32* %32, align 4, !dbg !1997, !tbaa !1046
  br label %35, !dbg !1998

35:                                               ; preds = %13
  %36 = add i32 %.0, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %36, metadata !1953, metadata !DIExpression()), !dbg !1964
  br label %12, !dbg !2000, !llvm.loop !2001

37:                                               ; preds = %12
  br label %38, !dbg !2003

38:                                               ; preds = %37
  %39 = add i32 %.01, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %39, metadata !1952, metadata !DIExpression()), !dbg !1964
  br label %7, !dbg !2005, !llvm.loop !2006

40:                                               ; preds = %7
  br label %41, !dbg !2008

41:                                               ; preds = %40
  %42 = add i32 %.02, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %42, metadata !1951, metadata !DIExpression()), !dbg !1964
  br label %5, !dbg !2010, !llvm.loop !2011

43:                                               ; preds = %5
  ret void, !dbg !2013
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_init_matrix(i32, i8*, i32, %struct.MAT_PARAMS_S*) #0 !dbg !2014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2018, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %1, metadata !2019, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %2, metadata !2020, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %3, metadata !2021, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 0, metadata !2022, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 1, metadata !2025, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 0, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()), !dbg !2029
  %5 = icmp eq i32 %2, 0, !dbg !2030
  br i1 %5, label %6, label %._crit_edge, !dbg !2032

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2032

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !2020, metadata !DIExpression()), !dbg !2029
  br label %7, !dbg !2033

7:                                                ; preds = %6, %._crit_edge
  %.03 = phi i32 [ 1, %6 ], [ %2, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2020, metadata !DIExpression()), !dbg !2029
  br label %8, !dbg !2034

8:                                                ; preds = %10, %7
  %.01 = phi i32 [ 0, %7 ], [ %11, %10 ], !dbg !2029
  %.0 = phi i32 [ 0, %7 ], [ %14, %10 ], !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2028, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2027, metadata !DIExpression()), !dbg !2029
  %9 = icmp ult i32 %.0, %0, !dbg !2035
  br i1 %9, label %10, label %15, !dbg !2034

10:                                               ; preds = %8
  %11 = add i32 %.01, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %11, metadata !2027, metadata !DIExpression()), !dbg !2029
  %12 = mul i32 %11, %11, !dbg !2038
  %13 = mul i32 %12, 2, !dbg !2039
  %14 = mul i32 %13, 4, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %14, metadata !2028, metadata !DIExpression()), !dbg !2029
  br label %8, !dbg !2034, !llvm.loop !2041

15:                                               ; preds = %8
  %.01.lcssa = phi i32 [ %.01, %8 ], !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2027, metadata !DIExpression()), !dbg !2029
  %16 = sub i32 %.01.lcssa, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %16, metadata !2022, metadata !DIExpression()), !dbg !2029
  %17 = ptrtoint i8* %1 to i32, !dbg !2044
  %18 = sub i32 %17, 1, !dbg !2044
  %19 = and i32 %18, -4, !dbg !2044
  %20 = add i32 4, %19, !dbg !2044
  %21 = inttoptr i32 %20 to i8*, !dbg !2044
  %22 = bitcast i8* %21 to i16*, !dbg !2045
  call void @llvm.dbg.value(metadata i16* %22, metadata !2023, metadata !DIExpression()), !dbg !2029
  %23 = mul i32 %16, %16, !dbg !2046
  %24 = getelementptr inbounds i16, i16* %22, i32 %23, !dbg !2047
  call void @llvm.dbg.value(metadata i16* %24, metadata !2024, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 0, metadata !2027, metadata !DIExpression()), !dbg !2029
  br label %25, !dbg !2048

25:                                               ; preds = %52, %15
  %.05 = phi i32 [ 1, %15 ], [ %.16.lcssa, %52 ], !dbg !2050
  %.14 = phi i32 [ %.03, %15 ], [ %.2.lcssa, %52 ], !dbg !2051
  %.12 = phi i32 [ 0, %15 ], [ %53, %52 ], !dbg !2052
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2020, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2025, metadata !DIExpression()), !dbg !2029
  %exitcond7 = icmp ne i32 %.12, %16, !dbg !2053
  br i1 %exitcond7, label %26, label %54, !dbg !2055

26:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()), !dbg !2029
  br label %27, !dbg !2056

27:                                               ; preds = %49, %26
  %.16 = phi i32 [ %.05, %26 ], [ %48, %49 ], !dbg !2029
  %.2 = phi i32 [ %.14, %26 ], [ %30, %49 ], !dbg !2029
  %.1 = phi i32 [ 0, %26 ], [ %50, %49 ], !dbg !2059
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2028, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2020, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2025, metadata !DIExpression()), !dbg !2029
  %exitcond = icmp ne i32 %.1, %16, !dbg !2060
  br i1 %exitcond, label %28, label %51, !dbg !2062

28:                                               ; preds = %27
  %29 = mul nsw i32 %.16, %.2, !dbg !2063
  %30 = srem i32 %29, 65536, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %30, metadata !2020, metadata !DIExpression()), !dbg !2029
  %31 = add nsw i32 %30, %.16, !dbg !2066
  %32 = trunc i32 %31 to i16, !dbg !2067
  call void @llvm.dbg.value(metadata i16 %32, metadata !2026, metadata !DIExpression()), !dbg !2029
  %33 = sext i16 %32 to i32, !dbg !2068
  %34 = and i32 %33, 65535, !dbg !2068
  %35 = trunc i32 %34 to i16, !dbg !2068
  call void @llvm.dbg.value(metadata i16 %35, metadata !2026, metadata !DIExpression()), !dbg !2029
  %36 = mul i32 %.12, %16, !dbg !2069
  %37 = add i32 %36, %.1, !dbg !2070
  %38 = getelementptr inbounds i16, i16* %24, i32 %37, !dbg !2071
  store i16 %35, i16* %38, align 2, !dbg !2072, !tbaa !294
  %39 = sext i16 %35 to i32, !dbg !2073
  %40 = add nsw i32 %39, %.16, !dbg !2074
  %41 = trunc i32 %40 to i16, !dbg !2075
  call void @llvm.dbg.value(metadata i16 %41, metadata !2026, metadata !DIExpression()), !dbg !2029
  %42 = sext i16 %41 to i32, !dbg !2076
  %43 = and i32 %42, 255, !dbg !2076
  %44 = trunc i32 %43 to i16, !dbg !2076
  call void @llvm.dbg.value(metadata i16 %44, metadata !2026, metadata !DIExpression()), !dbg !2029
  %45 = mul i32 %.12, %16, !dbg !2077
  %46 = add i32 %45, %.1, !dbg !2078
  %47 = getelementptr inbounds i16, i16* %22, i32 %46, !dbg !2079
  store i16 %44, i16* %47, align 2, !dbg !2080, !tbaa !294
  %48 = add nsw i32 %.16, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %48, metadata !2025, metadata !DIExpression()), !dbg !2029
  br label %49, !dbg !2082

49:                                               ; preds = %28
  %50 = add i32 %.1, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i32 %50, metadata !2028, metadata !DIExpression()), !dbg !2029
  br label %27, !dbg !2084, !llvm.loop !2085

51:                                               ; preds = %27
  %.16.lcssa = phi i32 [ %.16, %27 ], !dbg !2029
  %.2.lcssa = phi i32 [ %.2, %27 ], !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !2025, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2020, metadata !DIExpression()), !dbg !2029
  br label %52, !dbg !2087

52:                                               ; preds = %51
  %53 = add i32 %.12, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %53, metadata !2027, metadata !DIExpression()), !dbg !2029
  br label %25, !dbg !2089, !llvm.loop !2090

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 1, !dbg !2092
  store i16* %22, i16** %55, align 4, !dbg !2093, !tbaa !1653
  %56 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 2, !dbg !2094
  store i16* %24, i16** %56, align 4, !dbg !2095, !tbaa !1655
  %57 = mul i32 %16, %16, !dbg !2096
  %58 = getelementptr inbounds i16, i16* %24, i32 %57, !dbg !2096
  %59 = ptrtoint i16* %58 to i32, !dbg !2096
  %60 = sub i32 %59, 1, !dbg !2096
  %61 = and i32 %60, -4, !dbg !2096
  %62 = add i32 4, %61, !dbg !2096
  %63 = inttoptr i32 %62 to i8*, !dbg !2096
  %64 = bitcast i8* %63 to i32*, !dbg !2097
  %65 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 3, !dbg !2098
  store i32* %64, i32** %65, align 4, !dbg !2099, !tbaa !1651
  %66 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 0, !dbg !2100
  store i32 %16, i32* %66, align 4, !dbg !2101, !tbaa !1649
  ret i32 %16, !dbg !2102
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_state(i32, i8*, i16 signext, i16 signext, i16 signext, i16 zeroext) #0 !dbg !2103 {
  %7 = alloca [8 x i32], align 4
  %8 = alloca [8 x i32], align 4
  %9 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2107, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* %1, metadata !2108, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i16 %2, metadata !2109, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i16 %3, metadata !2110, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i16 %4, metadata !2111, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i16 %5, metadata !2112, metadata !DIExpression()), !dbg !2124
  %10 = bitcast [8 x i32]* %7 to i8*, !dbg !2125
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !2125
  call void @llvm.dbg.declare(metadata [8 x i32]* %7, metadata !2113, metadata !DIExpression()), !dbg !2126
  %11 = bitcast [8 x i32]* %8 to i8*, !dbg !2127
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %11) #4, !dbg !2127
  call void @llvm.dbg.declare(metadata [8 x i32]* %8, metadata !2117, metadata !DIExpression()), !dbg !2128
  %12 = bitcast i8** %9 to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2129
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2118, metadata !DIExpression()), !dbg !2130
  store i8* %1, i8** %9, align 4, !dbg !2130, !tbaa !334
  call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2124
  br label %13, !dbg !2131

13:                                               ; preds = %17, %6
  %.0 = phi i32 [ 0, %6 ], [ %18, %17 ], !dbg !2133
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2119, metadata !DIExpression()), !dbg !2124
  %exitcond3 = icmp ne i32 %.0, 8, !dbg !2134
  br i1 %exitcond3, label %14, label %19, !dbg !2136

14:                                               ; preds = %13
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.0, !dbg !2137
  store i32 0, i32* %15, align 4, !dbg !2139, !tbaa !1046
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.0, !dbg !2140
  store i32 0, i32* %16, align 4, !dbg !2141, !tbaa !1046
  br label %17, !dbg !2142

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %.0, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %18, metadata !2119, metadata !DIExpression()), !dbg !2124
  br label %13, !dbg !2144, !llvm.loop !2145

19:                                               ; preds = %13
  br label %20, !dbg !2147

20:                                               ; preds = %25, %19
  %21 = load i8*, i8** %9, align 4, !dbg !2148, !tbaa !334
  %22 = load i8, i8* %21, align 1, !dbg !2149, !tbaa !2150
  %23 = zext i8 %22 to i32, !dbg !2149
  %24 = icmp ne i32 %23, 0, !dbg !2151
  br i1 %24, label %25, label %31, !dbg !2147

25:                                               ; preds = %20
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2152
  %27 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %26), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %27, metadata !2120, metadata !DIExpression()), !dbg !2154
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %27, !dbg !2155
  %29 = load i32, i32* %28, align 4, !dbg !2156, !tbaa !1046
  %30 = add i32 %29, 1, !dbg !2156
  store i32 %30, i32* %28, align 4, !dbg !2156, !tbaa !1046
  br label %20, !dbg !2147, !llvm.loop !2157

31:                                               ; preds = %20
  store i8* %1, i8** %9, align 4, !dbg !2159, !tbaa !334
  br label %32, !dbg !2160

32:                                               ; preds = %49, %31
  %33 = load i8*, i8** %9, align 4, !dbg !2161, !tbaa !334
  %34 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2162
  %35 = icmp ult i8* %33, %34, !dbg !2163
  br i1 %35, label %36, label %53, !dbg !2160

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 4, !dbg !2164, !tbaa !334
  %38 = load i8, i8* %37, align 1, !dbg !2167, !tbaa !2150
  %39 = zext i8 %38 to i32, !dbg !2167
  %40 = icmp ne i32 %39, 44, !dbg !2168
  br i1 %40, label %41, label %._crit_edge, !dbg !2169

._crit_edge:                                      ; preds = %36
  br label %49, !dbg !2169

41:                                               ; preds = %36
  %42 = trunc i16 %2 to i8, !dbg !2170
  %43 = zext i8 %42 to i32, !dbg !2170
  %44 = load i8*, i8** %9, align 4, !dbg !2171, !tbaa !334
  %45 = load i8, i8* %44, align 1, !dbg !2172, !tbaa !2150
  %46 = zext i8 %45 to i32, !dbg !2172
  %47 = xor i32 %46, %43, !dbg !2172
  %48 = trunc i32 %47 to i8, !dbg !2172
  store i8 %48, i8* %44, align 1, !dbg !2172, !tbaa !2150
  br label %49, !dbg !2173

49:                                               ; preds = %41, %._crit_edge
  %50 = sext i16 %4 to i32, !dbg !2174
  %51 = load i8*, i8** %9, align 4, !dbg !2175, !tbaa !334
  %52 = getelementptr inbounds i8, i8* %51, i32 %50, !dbg !2175
  store i8* %52, i8** %9, align 4, !dbg !2175, !tbaa !334
  br label %32, !dbg !2160, !llvm.loop !2176

53:                                               ; preds = %32
  store i8* %1, i8** %9, align 4, !dbg !2178, !tbaa !334
  br label %54, !dbg !2179

54:                                               ; preds = %59, %53
  %55 = load i8*, i8** %9, align 4, !dbg !2180, !tbaa !334
  %56 = load i8, i8* %55, align 1, !dbg !2181, !tbaa !2150
  %57 = zext i8 %56 to i32, !dbg !2181
  %58 = icmp ne i32 %57, 0, !dbg !2182
  br i1 %58, label %59, label %65, !dbg !2179

59:                                               ; preds = %54
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2183
  %61 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %60), !dbg !2184
  call void @llvm.dbg.value(metadata i32 %61, metadata !2122, metadata !DIExpression()), !dbg !2185
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %61, !dbg !2186
  %63 = load i32, i32* %62, align 4, !dbg !2187, !tbaa !1046
  %64 = add i32 %63, 1, !dbg !2187
  store i32 %64, i32* %62, align 4, !dbg !2187, !tbaa !1046
  br label %54, !dbg !2179, !llvm.loop !2188

65:                                               ; preds = %54
  store i8* %1, i8** %9, align 4, !dbg !2190, !tbaa !334
  br label %66, !dbg !2191

66:                                               ; preds = %83, %65
  %67 = load i8*, i8** %9, align 4, !dbg !2192, !tbaa !334
  %68 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2193
  %69 = icmp ult i8* %67, %68, !dbg !2194
  br i1 %69, label %70, label %87, !dbg !2191

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 4, !dbg !2195, !tbaa !334
  %72 = load i8, i8* %71, align 1, !dbg !2198, !tbaa !2150
  %73 = zext i8 %72 to i32, !dbg !2198
  %74 = icmp ne i32 %73, 44, !dbg !2199
  br i1 %74, label %75, label %._crit_edge2, !dbg !2200

._crit_edge2:                                     ; preds = %70
  br label %83, !dbg !2200

75:                                               ; preds = %70
  %76 = trunc i16 %3 to i8, !dbg !2201
  %77 = zext i8 %76 to i32, !dbg !2201
  %78 = load i8*, i8** %9, align 4, !dbg !2202, !tbaa !334
  %79 = load i8, i8* %78, align 1, !dbg !2203, !tbaa !2150
  %80 = zext i8 %79 to i32, !dbg !2203
  %81 = xor i32 %80, %77, !dbg !2203
  %82 = trunc i32 %81 to i8, !dbg !2203
  store i8 %82, i8* %78, align 1, !dbg !2203, !tbaa !2150
  br label %83, !dbg !2204

83:                                               ; preds = %75, %._crit_edge2
  %84 = sext i16 %4 to i32, !dbg !2205
  %85 = load i8*, i8** %9, align 4, !dbg !2206, !tbaa !334
  %86 = getelementptr inbounds i8, i8* %85, i32 %84, !dbg !2206
  store i8* %86, i8** %9, align 4, !dbg !2206, !tbaa !334
  br label %66, !dbg !2191, !llvm.loop !2207

87:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2124
  br label %88, !dbg !2209

88:                                               ; preds = %96, %87
  %.01 = phi i16 [ %5, %87 ], [ %95, %96 ]
  %.1 = phi i32 [ 0, %87 ], [ %97, %96 ], !dbg !2211
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2119, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2112, metadata !DIExpression()), !dbg !2124
  %exitcond = icmp ne i32 %.1, 8, !dbg !2212
  br i1 %exitcond, label %89, label %98, !dbg !2214

89:                                               ; preds = %88
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.1, !dbg !2215
  %91 = load i32, i32* %90, align 4, !dbg !2215, !tbaa !1046
  %92 = call arm_aapcscc zeroext i16 @crcu32(i32 %91, i16 zeroext %.01), !dbg !2217
  call void @llvm.dbg.value(metadata i16 %92, metadata !2112, metadata !DIExpression()), !dbg !2124
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.1, !dbg !2218
  %94 = load i32, i32* %93, align 4, !dbg !2218, !tbaa !1046
  %95 = call arm_aapcscc zeroext i16 @crcu32(i32 %94, i16 zeroext %92), !dbg !2219
  call void @llvm.dbg.value(metadata i16 %95, metadata !2112, metadata !DIExpression()), !dbg !2124
  br label %96, !dbg !2220

96:                                               ; preds = %89
  %97 = add nuw nsw i32 %.1, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i32 %97, metadata !2119, metadata !DIExpression()), !dbg !2124
  br label %88, !dbg !2222, !llvm.loop !2223

98:                                               ; preds = %88
  %.01.lcssa = phi i16 [ %.01, %88 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2112, metadata !DIExpression()), !dbg !2124
  %99 = bitcast i8** %9 to i8*, !dbg !2225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #4, !dbg !2225
  %100 = bitcast [8 x i32]* %8 to i8*, !dbg !2225
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %100) #4, !dbg !2225
  %101 = bitcast [8 x i32]* %7 to i8*, !dbg !2225
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %101) #4, !dbg !2225
  ret i16 %.01.lcssa, !dbg !2226
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_state_transition(i8**, i32*) #0 !dbg !2227 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2233, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32* %1, metadata !2234, metadata !DIExpression()), !dbg !2238
  %3 = load i8*, i8** %0, align 4, !dbg !2239, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %3, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 0, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %4, !dbg !2240

4:                                                ; preds = %136, %2
  %.01 = phi i8* [ %3, %2 ], [ %137, %136 ], !dbg !2238
  %.0 = phi i32 [ 0, %2 ], [ %.13, %136 ], !dbg !2241
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2237, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2235, metadata !DIExpression()), !dbg !2238
  %5 = load i8, i8* %.01, align 1, !dbg !2242, !tbaa !2150
  %6 = zext i8 %5 to i32, !dbg !2242
  %7 = icmp ne i32 %6, 0, !dbg !2242
  br i1 %7, label %8, label %._crit_edge, !dbg !2245

._crit_edge:                                      ; preds = %4
  br label %10, !dbg !2245

8:                                                ; preds = %4
  %9 = icmp ne i32 %.0, 1, !dbg !2246
  br label %10

10:                                               ; preds = %8, %._crit_edge
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %8 ], !dbg !2247
  br i1 %11, label %12, label %._crit_edge17, !dbg !2248

._crit_edge17:                                    ; preds = %10
  %.01.lcssa = phi i8* [ %.01, %10 ], !dbg !2238
  %.0.lcssa = phi i32 [ %.0, %10 ], !dbg !2241
  call void @llvm.dbg.value(metadata i8* %.01.lcssa, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %138, !dbg !2248

12:                                               ; preds = %10
  %13 = load i8, i8* %.01, align 1, !dbg !2249, !tbaa !2150
  call void @llvm.dbg.value(metadata i8 %13, metadata !2236, metadata !DIExpression()), !dbg !2238
  %14 = zext i8 %13 to i32, !dbg !2251
  %15 = icmp eq i32 %14, 44, !dbg !2253
  br i1 %15, label %16, label %18, !dbg !2254

16:                                               ; preds = %12
  %.01.lcssa29 = phi i8* [ %.01, %12 ], !dbg !2238
  %.0.lcssa27 = phi i32 [ %.0, %12 ], !dbg !2241
  call void @llvm.dbg.value(metadata i8* %.01.lcssa29, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 %.0.lcssa27, metadata !2237, metadata !DIExpression()), !dbg !2238
  %17 = getelementptr inbounds i8, i8* %.01.lcssa29, i32 1, !dbg !2255
  call void @llvm.dbg.value(metadata i8* %17, metadata !2235, metadata !DIExpression()), !dbg !2238
  br label %138, !dbg !2257

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
  br i1 %Pivot12, label %114, label %LeafBlock9

LeafBlock9:                                       ; preds = %NodeBlock11
  %SwitchLeaf10 = icmp eq i32 %.0, 7
  br i1 %SwitchLeaf10, label %126, label %LeafBlock9.NewDefault_crit_edge

LeafBlock9.NewDefault_crit_edge:                  ; preds = %LeafBlock9
  br label %NewDefault

NodeBlock7:                                       ; preds = %NodeBlock13
  %Pivot8 = icmp slt i32 %.0, 5
  br i1 %Pivot8, label %64, label %80

NodeBlock5:                                       ; preds = %NodeBlock15
  %Pivot6 = icmp slt i32 %.0, 2
  br i1 %Pivot6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock5
  %Pivot = icmp slt i32 %.0, 3
  br i1 %Pivot, label %44, label %99

LeafBlock:                                        ; preds = %NodeBlock5
  %SwitchLeaf = icmp eq i32 %.0, 0
  br i1 %SwitchLeaf, label %19, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

19:                                               ; preds = %LeafBlock
  %20 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2258
  %21 = icmp ne i8 %20, 0, !dbg !2258
  br i1 %21, label %22, label %23, !dbg !2261

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 4, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %40, !dbg !2262

23:                                               ; preds = %19
  %24 = zext i8 %13 to i32, !dbg !2264
  %25 = icmp eq i32 %24, 43, !dbg !2266
  br i1 %25, label %._crit_edge18, label %26, !dbg !2267

._crit_edge18:                                    ; preds = %23
  br label %29, !dbg !2267

26:                                               ; preds = %23
  %27 = zext i8 %13 to i32, !dbg !2268
  %28 = icmp eq i32 %27, 45, !dbg !2269
  br i1 %28, label %._crit_edge19, label %30, !dbg !2270

._crit_edge19:                                    ; preds = %26
  br label %29, !dbg !2270

29:                                               ; preds = %._crit_edge19, %._crit_edge18
  call void @llvm.dbg.value(metadata i32 2, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %39, !dbg !2271

30:                                               ; preds = %26
  %31 = zext i8 %13 to i32, !dbg !2273
  %32 = icmp eq i32 %31, 46, !dbg !2275
  br i1 %32, label %33, label %34, !dbg !2276

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 5, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %38, !dbg !2277

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %35 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2279
  %36 = load i32, i32* %35, align 4, !dbg !2281, !tbaa !1046
  %37 = add i32 %36, 1, !dbg !2281
  store i32 %37, i32* %35, align 4, !dbg !2281, !tbaa !1046
  br label %38

38:                                               ; preds = %34, %33
  %.1 = phi i32 [ 5, %33 ], [ 1, %34 ], !dbg !2282
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %39

39:                                               ; preds = %38, %29
  %.2 = phi i32 [ 2, %29 ], [ %.1, %38 ], !dbg !2283
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %40

40:                                               ; preds = %39, %22
  %.3 = phi i32 [ 4, %22 ], [ %.2, %39 ], !dbg !2284
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2237, metadata !DIExpression()), !dbg !2238
  %41 = getelementptr inbounds i32, i32* %1, i32 0, !dbg !2285
  %42 = load i32, i32* %41, align 4, !dbg !2286, !tbaa !1046
  %43 = add i32 %42, 1, !dbg !2286
  store i32 %43, i32* %41, align 4, !dbg !2286, !tbaa !1046
  br label %135, !dbg !2287

44:                                               ; preds = %NodeBlock
  %45 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2288
  %46 = icmp ne i8 %45, 0, !dbg !2288
  br i1 %46, label %47, label %51, !dbg !2290

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 4, metadata !2237, metadata !DIExpression()), !dbg !2238
  %48 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2291
  %49 = load i32, i32* %48, align 4, !dbg !2293, !tbaa !1046
  %50 = add i32 %49, 1, !dbg !2293
  store i32 %50, i32* %48, align 4, !dbg !2293, !tbaa !1046
  br label %63, !dbg !2294

51:                                               ; preds = %44
  %52 = zext i8 %13 to i32, !dbg !2295
  %53 = icmp eq i32 %52, 46, !dbg !2297
  br i1 %53, label %54, label %58, !dbg !2298

54:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 5, metadata !2237, metadata !DIExpression()), !dbg !2238
  %55 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2299
  %56 = load i32, i32* %55, align 4, !dbg !2301, !tbaa !1046
  %57 = add i32 %56, 1, !dbg !2301
  store i32 %57, i32* %55, align 4, !dbg !2301, !tbaa !1046
  br label %62, !dbg !2302

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %59 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2303
  %60 = load i32, i32* %59, align 4, !dbg !2305, !tbaa !1046
  %61 = add i32 %60, 1, !dbg !2305
  store i32 %61, i32* %59, align 4, !dbg !2305, !tbaa !1046
  br label %62

62:                                               ; preds = %58, %54
  %.4 = phi i32 [ 5, %54 ], [ 1, %58 ], !dbg !2306
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %63

63:                                               ; preds = %62, %47
  %.5 = phi i32 [ 4, %47 ], [ %.4, %62 ], !dbg !2307
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %135, !dbg !2308

64:                                               ; preds = %NodeBlock7
  %65 = zext i8 %13 to i32, !dbg !2309
  %66 = icmp eq i32 %65, 46, !dbg !2311
  br i1 %66, label %67, label %71, !dbg !2312

67:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 5, metadata !2237, metadata !DIExpression()), !dbg !2238
  %68 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2313
  %69 = load i32, i32* %68, align 4, !dbg !2315, !tbaa !1046
  %70 = add i32 %69, 1, !dbg !2315
  store i32 %70, i32* %68, align 4, !dbg !2315, !tbaa !1046
  br label %79, !dbg !2316

71:                                               ; preds = %64
  %72 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2317
  %73 = icmp ne i8 %72, 0, !dbg !2317
  br i1 %73, label %._crit_edge20, label %74, !dbg !2319

._crit_edge20:                                    ; preds = %71
  br label %78, !dbg !2319

74:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %75 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2320
  %76 = load i32, i32* %75, align 4, !dbg !2322, !tbaa !1046
  %77 = add i32 %76, 1, !dbg !2322
  store i32 %77, i32* %75, align 4, !dbg !2322, !tbaa !1046
  br label %78, !dbg !2323

78:                                               ; preds = %74, %._crit_edge20
  %.6 = phi i32 [ %.0, %._crit_edge20 ], [ 1, %74 ], !dbg !2238
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %79

79:                                               ; preds = %78, %67
  %.7 = phi i32 [ 5, %67 ], [ %.6, %78 ], !dbg !2238
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %135, !dbg !2324

80:                                               ; preds = %NodeBlock7
  %81 = zext i8 %13 to i32, !dbg !2325
  %82 = icmp eq i32 %81, 69, !dbg !2327
  br i1 %82, label %._crit_edge21, label %83, !dbg !2328

._crit_edge21:                                    ; preds = %80
  br label %86, !dbg !2328

83:                                               ; preds = %80
  %84 = zext i8 %13 to i32, !dbg !2329
  %85 = icmp eq i32 %84, 101, !dbg !2330
  br i1 %85, label %._crit_edge22, label %90, !dbg !2331

._crit_edge22:                                    ; preds = %83
  br label %86, !dbg !2331

86:                                               ; preds = %._crit_edge22, %._crit_edge21
  call void @llvm.dbg.value(metadata i32 3, metadata !2237, metadata !DIExpression()), !dbg !2238
  %87 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2332
  %88 = load i32, i32* %87, align 4, !dbg !2334, !tbaa !1046
  %89 = add i32 %88, 1, !dbg !2334
  store i32 %89, i32* %87, align 4, !dbg !2334, !tbaa !1046
  br label %98, !dbg !2335

90:                                               ; preds = %83
  %91 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2336
  %92 = icmp ne i8 %91, 0, !dbg !2336
  br i1 %92, label %._crit_edge23, label %93, !dbg !2338

._crit_edge23:                                    ; preds = %90
  br label %97, !dbg !2338

93:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %94 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2339
  %95 = load i32, i32* %94, align 4, !dbg !2341, !tbaa !1046
  %96 = add i32 %95, 1, !dbg !2341
  store i32 %96, i32* %94, align 4, !dbg !2341, !tbaa !1046
  br label %97, !dbg !2342

97:                                               ; preds = %93, %._crit_edge23
  %.8 = phi i32 [ %.0, %._crit_edge23 ], [ 1, %93 ], !dbg !2238
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %98

98:                                               ; preds = %97, %86
  %.9 = phi i32 [ 3, %86 ], [ %.8, %97 ], !dbg !2238
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %135, !dbg !2343

99:                                               ; preds = %NodeBlock
  %100 = zext i8 %13 to i32, !dbg !2344
  %101 = icmp eq i32 %100, 43, !dbg !2346
  br i1 %101, label %._crit_edge24, label %102, !dbg !2347

._crit_edge24:                                    ; preds = %99
  br label %105, !dbg !2347

102:                                              ; preds = %99
  %103 = zext i8 %13 to i32, !dbg !2348
  %104 = icmp eq i32 %103, 45, !dbg !2349
  br i1 %104, label %._crit_edge25, label %109, !dbg !2350

._crit_edge25:                                    ; preds = %102
  br label %105, !dbg !2350

105:                                              ; preds = %._crit_edge25, %._crit_edge24
  call void @llvm.dbg.value(metadata i32 6, metadata !2237, metadata !DIExpression()), !dbg !2238
  %106 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2351
  %107 = load i32, i32* %106, align 4, !dbg !2353, !tbaa !1046
  %108 = add i32 %107, 1, !dbg !2353
  store i32 %108, i32* %106, align 4, !dbg !2353, !tbaa !1046
  br label %113, !dbg !2354

109:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %110 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2355
  %111 = load i32, i32* %110, align 4, !dbg !2357, !tbaa !1046
  %112 = add i32 %111, 1, !dbg !2357
  store i32 %112, i32* %110, align 4, !dbg !2357, !tbaa !1046
  br label %113

113:                                              ; preds = %109, %105
  %.10 = phi i32 [ 6, %105 ], [ 1, %109 ], !dbg !2358
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %135, !dbg !2359

114:                                              ; preds = %NodeBlock11
  %115 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2360
  %116 = icmp ne i8 %115, 0, !dbg !2360
  br i1 %116, label %117, label %121, !dbg !2362

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 7, metadata !2237, metadata !DIExpression()), !dbg !2238
  %118 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2363
  %119 = load i32, i32* %118, align 4, !dbg !2365, !tbaa !1046
  %120 = add i32 %119, 1, !dbg !2365
  store i32 %120, i32* %118, align 4, !dbg !2365, !tbaa !1046
  br label %125, !dbg !2366

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %122 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2367
  %123 = load i32, i32* %122, align 4, !dbg !2369, !tbaa !1046
  %124 = add i32 %123, 1, !dbg !2369
  store i32 %124, i32* %122, align 4, !dbg !2369, !tbaa !1046
  br label %125

125:                                              ; preds = %121, %117
  %.11 = phi i32 [ 7, %117 ], [ 1, %121 ], !dbg !2370
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %135, !dbg !2371

126:                                              ; preds = %LeafBlock9
  %127 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2372
  %128 = icmp ne i8 %127, 0, !dbg !2372
  br i1 %128, label %._crit_edge26, label %129, !dbg !2374

._crit_edge26:                                    ; preds = %126
  br label %133, !dbg !2374

129:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %130 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2375
  %131 = load i32, i32* %130, align 4, !dbg !2377, !tbaa !1046
  %132 = add i32 %131, 1, !dbg !2377
  store i32 %132, i32* %130, align 4, !dbg !2377, !tbaa !1046
  br label %133, !dbg !2378

133:                                              ; preds = %129, %._crit_edge26
  %.12 = phi i32 [ %.0, %._crit_edge26 ], [ 1, %129 ], !dbg !2238
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %135, !dbg !2379

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock9.NewDefault_crit_edge
  br label %134

134:                                              ; preds = %NewDefault
  br label %135, !dbg !2380

135:                                              ; preds = %134, %133, %125, %113, %98, %79, %63, %40
  %.13 = phi i32 [ %.0, %134 ], [ %.12, %133 ], [ %.11, %125 ], [ %.10, %113 ], [ %.9, %98 ], [ %.7, %79 ], [ %.5, %63 ], [ %.3, %40 ], !dbg !2238
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2237, metadata !DIExpression()), !dbg !2238
  br label %136, !dbg !2381

136:                                              ; preds = %135
  %137 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !2382
  call void @llvm.dbg.value(metadata i8* %137, metadata !2235, metadata !DIExpression()), !dbg !2238
  br label %4, !dbg !2383, !llvm.loop !2384

138:                                              ; preds = %16, %._crit_edge17
  %.028 = phi i32 [ %.0.lcssa27, %16 ], [ %.0.lcssa, %._crit_edge17 ]
  %.14 = phi i8* [ %17, %16 ], [ %.01.lcssa, %._crit_edge17 ], !dbg !2238
  call void @llvm.dbg.value(metadata i8* %.14, metadata !2235, metadata !DIExpression()), !dbg !2238
  store i8* %.14, i8** %0, align 4, !dbg !2386, !tbaa !334
  ret i32 %.028, !dbg !2387
}

; Function Attrs: nounwind
define internal arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext) #0 !dbg !2388 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2392, metadata !DIExpression()), !dbg !2394
  %2 = zext i8 %0 to i32, !dbg !2395
  %3 = icmp sge i32 %2, 48, !dbg !2396
  %4 = zext i1 %3 to i32, !dbg !2396
  %5 = zext i8 %0 to i32, !dbg !2397
  %6 = icmp sle i32 %5, 57, !dbg !2398
  %7 = zext i1 %6 to i32, !dbg !2398
  %8 = and i32 %4, %7, !dbg !2399
  %9 = icmp ne i32 %8, 0, !dbg !2400
  %10 = zext i1 %9 to i64, !dbg !2400
  %11 = select i1 %9, i32 1, i32 0, !dbg !2400
  %12 = trunc i32 %11 to i8, !dbg !2400
  call void @llvm.dbg.value(metadata i8 %12, metadata !2393, metadata !DIExpression()), !dbg !2394
  ret i8 %12, !dbg !2401
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @core_init_state(i32, i16 signext, i8*) #0 !dbg !2402 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2406, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i16 %1, metadata !2407, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %2, metadata !2408, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* null, metadata !2412, metadata !DIExpression()), !dbg !2413
  %4 = add i32 %0, -1, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %4, metadata !2406, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()), !dbg !2413
  br label %5, !dbg !2415

5:                                                ; preds = %53, %3
  %.04 = phi i32 [ 0, %3 ], [ %.15, %53 ], !dbg !2416
  %.02 = phi i32 [ 0, %3 ], [ %.13, %53 ], !dbg !2413
  %.01 = phi i8* [ null, %3 ], [ %.1, %53 ], !dbg !2417
  %.0 = phi i16 [ %1, %3 ], [ %26, %53 ]
  call void @llvm.dbg.value(metadata i16 %.0, metadata !2407, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2410, metadata !DIExpression()), !dbg !2413
  %6 = add i32 %.02, %.04, !dbg !2418
  %7 = add i32 %6, 1, !dbg !2419
  %8 = icmp ult i32 %7, %4, !dbg !2420
  br i1 %8, label %9, label %54, !dbg !2415

9:                                                ; preds = %5
  %10 = icmp ugt i32 %.04, 0, !dbg !2421
  br i1 %10, label %11, label %._crit_edge, !dbg !2424

._crit_edge:                                      ; preds = %9
  br label %25, !dbg !2424

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()), !dbg !2413
  br label %12, !dbg !2425

12:                                               ; preds = %18, %11
  %.06 = phi i32 [ 0, %11 ], [ %19, %18 ], !dbg !2428
  call void @llvm.dbg.value(metadata i32 %.06, metadata !2411, metadata !DIExpression()), !dbg !2413
  %exitcond = icmp ne i32 %.06, %.04, !dbg !2429
  br i1 %exitcond, label %13, label %20, !dbg !2431

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.01, i32 %.06, !dbg !2432
  %15 = load i8, i8* %14, align 1, !dbg !2432, !tbaa !2150
  %16 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2433
  %17 = getelementptr inbounds i8, i8* %16, i32 %.06, !dbg !2434
  store i8 %15, i8* %17, align 1, !dbg !2435, !tbaa !2150
  br label %18, !dbg !2436

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %.06, 1, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %19, metadata !2411, metadata !DIExpression()), !dbg !2413
  br label %12, !dbg !2438, !llvm.loop !2439

20:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2411, metadata !DIExpression()), !dbg !2413
  %21 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2441
  %22 = getelementptr inbounds i8, i8* %21, i32 %.04, !dbg !2442
  store i8 44, i8* %22, align 1, !dbg !2443, !tbaa !2150
  %23 = add nuw nsw i32 %.04, 1, !dbg !2444
  %24 = add i32 %.02, %23, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %24, metadata !2409, metadata !DIExpression()), !dbg !2413
  br label %25, !dbg !2446

25:                                               ; preds = %20, %._crit_edge
  %.13 = phi i32 [ %24, %20 ], [ %.02, %._crit_edge ], !dbg !2413
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2409, metadata !DIExpression()), !dbg !2413
  %26 = add i16 %.0, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i16 %26, metadata !2407, metadata !DIExpression()), !dbg !2413
  %27 = sext i16 %26 to i32, !dbg !2448
  %28 = and i32 %27, 7, !dbg !2449
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
  %30 = sext i16 %26 to i32, !dbg !2450
  %31 = ashr i32 %30, 3, !dbg !2452
  %32 = and i32 %31, 3, !dbg !2453
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* @intpat, i32 0, i32 %32, !dbg !2454
  %34 = load i8*, i8** %33, align 4, !dbg !2454, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %34, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 4, metadata !2410, metadata !DIExpression()), !dbg !2413
  br label %53, !dbg !2455

35:                                               ; preds = %LeafBlock
  %36 = sext i16 %26 to i32, !dbg !2456
  %37 = ashr i32 %36, 3, !dbg !2457
  %38 = and i32 %37, 3, !dbg !2458
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* @floatpat, i32 0, i32 %38, !dbg !2459
  %40 = load i8*, i8** %39, align 4, !dbg !2459, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %40, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 8, metadata !2410, metadata !DIExpression()), !dbg !2413
  br label %53, !dbg !2460

41:                                               ; preds = %NodeBlock
  %42 = sext i16 %26 to i32, !dbg !2461
  %43 = ashr i32 %42, 3, !dbg !2462
  %44 = and i32 %43, 3, !dbg !2463
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* @scipat, i32 0, i32 %44, !dbg !2464
  %46 = load i8*, i8** %45, align 4, !dbg !2464, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %46, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 8, metadata !2410, metadata !DIExpression()), !dbg !2413
  br label %53, !dbg !2465

47:                                               ; preds = %NodeBlock
  %48 = sext i16 %26 to i32, !dbg !2466
  %49 = ashr i32 %48, 3, !dbg !2467
  %50 = and i32 %49, 3, !dbg !2468
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* @errpat, i32 0, i32 %50, !dbg !2469
  %52 = load i8*, i8** %51, align 4, !dbg !2469, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %52, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 8, metadata !2410, metadata !DIExpression()), !dbg !2413
  br label %53, !dbg !2470

53:                                               ; preds = %47, %41, %35, %29
  %.15 = phi i32 [ 8, %47 ], [ 8, %41 ], [ 8, %35 ], [ 4, %29 ], !dbg !2413
  %.1 = phi i8* [ %52, %47 ], [ %46, %41 ], [ %40, %35 ], [ %34, %29 ], !dbg !2413
  call void @llvm.dbg.value(metadata i8* %.1, metadata !2412, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2410, metadata !DIExpression()), !dbg !2413
  br label %5, !dbg !2415, !llvm.loop !2471

54:                                               ; preds = %5
  %.02.lcssa = phi i32 [ %.02, %5 ], !dbg !2413
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !2409, metadata !DIExpression()), !dbg !2413
  %55 = add i32 %4, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %55, metadata !2406, metadata !DIExpression()), !dbg !2413
  br label %56, !dbg !2474

56:                                               ; preds = %58, %54
  %.2 = phi i32 [ %.02.lcssa, %54 ], [ %60, %58 ], !dbg !2413
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2409, metadata !DIExpression()), !dbg !2413
  %57 = icmp ult i32 %.2, %55, !dbg !2475
  br i1 %57, label %58, label %61, !dbg !2474

58:                                               ; preds = %56
  %59 = getelementptr inbounds i8, i8* %2, i32 %.2, !dbg !2476
  store i8 0, i8* %59, align 1, !dbg !2478, !tbaa !2150
  %60 = add i32 %.2, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %60, metadata !2409, metadata !DIExpression()), !dbg !2413
  br label %56, !dbg !2474, !llvm.loop !2480

61:                                               ; preds = %56
  ret void, !dbg !2482
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_seed_32(i32) #0 !dbg !2483 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2488, metadata !DIExpression()), !dbg !2490
  br label %NodeBlock7

NodeBlock7:                                       ; preds = %1
  %Pivot8 = icmp slt i32 %0, 3
  br i1 %Pivot8, label %NodeBlock, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %Pivot6 = icmp slt i32 %0, 4
  br i1 %Pivot6, label %6, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %Pivot4 = icmp slt i32 %0, 5
  br i1 %Pivot4, label %8, label %LeafBlock1

LeafBlock1:                                       ; preds = %NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %0, 5
  br i1 %SwitchLeaf2, label %10, label %LeafBlock1.NewDefault_crit_edge

LeafBlock1.NewDefault_crit_edge:                  ; preds = %LeafBlock1
  br label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock7
  %Pivot = icmp slt i32 %0, 2
  br i1 %Pivot, label %LeafBlock, label %4

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %0, 1
  br i1 %SwitchLeaf, label %2, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

2:                                                ; preds = %LeafBlock
  %3 = load volatile i32, i32* @seed1_volatile, align 4, !dbg !2491, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %3, metadata !2489, metadata !DIExpression()), !dbg !2490
  br label %13, !dbg !2493

4:                                                ; preds = %NodeBlock
  %5 = load volatile i32, i32* @seed2_volatile, align 4, !dbg !2494, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %5, metadata !2489, metadata !DIExpression()), !dbg !2490
  br label %13, !dbg !2495

6:                                                ; preds = %NodeBlock5
  %7 = load volatile i32, i32* @seed3_volatile, align 4, !dbg !2496, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %7, metadata !2489, metadata !DIExpression()), !dbg !2490
  br label %13, !dbg !2497

8:                                                ; preds = %NodeBlock3
  %9 = load volatile i32, i32* @seed4_volatile, align 4, !dbg !2498, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %9, metadata !2489, metadata !DIExpression()), !dbg !2490
  br label %13, !dbg !2499

10:                                               ; preds = %LeafBlock1
  %11 = load volatile i32, i32* @seed5_volatile, align 4, !dbg !2500, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %11, metadata !2489, metadata !DIExpression()), !dbg !2490
  br label %13, !dbg !2501

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock1.NewDefault_crit_edge
  br label %12

12:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2489, metadata !DIExpression()), !dbg !2490
  br label %13, !dbg !2502

13:                                               ; preds = %12, %10, %8, %6, %4, %2
  %.0 = phi i32 [ 0, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], !dbg !2503
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2489, metadata !DIExpression()), !dbg !2490
  ret i32 %.0, !dbg !2504
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu8(i8 zeroext, i16 zeroext) #0 !dbg !2505 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2509, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i16 %1, metadata !2510, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2513, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2514
  br label %3, !dbg !2515

3:                                                ; preds = %36, %2
  %indvars.iv = phi i32 [ %indvars.iv.next, %36 ], [ 0, %2 ], !dbg !2517
  %.01 = phi i16 [ %1, %2 ], [ %.2, %36 ]
  %.0 = phi i8 [ %0, %2 ], [ %14, %36 ]
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2509, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2510, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %indvars.iv, metadata !2511, metadata !DIExpression()), !dbg !2514
  %exitcond = icmp ne i32 %indvars.iv, 8, !dbg !2518
  br i1 %exitcond, label %4, label %37, !dbg !2520

4:                                                ; preds = %3
  %5 = zext i8 %.0 to i32, !dbg !2521
  %6 = and i32 %5, 1, !dbg !2523
  %7 = trunc i16 %.01 to i8, !dbg !2524
  %8 = zext i8 %7 to i32, !dbg !2524
  %9 = and i32 %8, 1, !dbg !2525
  %10 = xor i32 %6, %9, !dbg !2526
  %11 = trunc i32 %10 to i8, !dbg !2527
  call void @llvm.dbg.value(metadata i8 %11, metadata !2512, metadata !DIExpression()), !dbg !2514
  %12 = zext i8 %.0 to i32, !dbg !2528
  %13 = ashr i32 %12, 1, !dbg !2528
  %14 = trunc i32 %13 to i8, !dbg !2528
  call void @llvm.dbg.value(metadata i8 %14, metadata !2509, metadata !DIExpression()), !dbg !2514
  %15 = zext i8 %11 to i32, !dbg !2529
  %16 = icmp eq i32 %15, 1, !dbg !2531
  br i1 %16, label %17, label %21, !dbg !2532

17:                                               ; preds = %4
  %18 = zext i16 %.01 to i32, !dbg !2533
  %19 = xor i32 %18, 16386, !dbg !2533
  %20 = trunc i32 %19 to i16, !dbg !2533
  call void @llvm.dbg.value(metadata i16 %20, metadata !2510, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 1, metadata !2513, metadata !DIExpression()), !dbg !2514
  br label %22, !dbg !2535

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8 0, metadata !2513, metadata !DIExpression()), !dbg !2514
  br label %22

22:                                               ; preds = %21, %17
  %.03 = phi i8 [ 1, %17 ], [ 0, %21 ], !dbg !2536
  %.1 = phi i16 [ %20, %17 ], [ %.01, %21 ]
  call void @llvm.dbg.value(metadata i16 %.1, metadata !2510, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %.03, metadata !2513, metadata !DIExpression()), !dbg !2514
  %23 = zext i16 %.1 to i32, !dbg !2537
  %24 = ashr i32 %23, 1, !dbg !2537
  %25 = trunc i32 %24 to i16, !dbg !2537
  call void @llvm.dbg.value(metadata i16 %25, metadata !2510, metadata !DIExpression()), !dbg !2514
  %26 = icmp ne i8 %.03, 0, !dbg !2538
  br i1 %26, label %27, label %31, !dbg !2540

27:                                               ; preds = %22
  %28 = zext i16 %25 to i32, !dbg !2541
  %29 = or i32 %28, 32768, !dbg !2541
  %30 = trunc i32 %29 to i16, !dbg !2541
  call void @llvm.dbg.value(metadata i16 %30, metadata !2510, metadata !DIExpression()), !dbg !2514
  br label %35, !dbg !2542

31:                                               ; preds = %22
  %32 = zext i16 %25 to i32, !dbg !2543
  %33 = and i32 %32, 32767, !dbg !2543
  %34 = trunc i32 %33 to i16, !dbg !2543
  call void @llvm.dbg.value(metadata i16 %34, metadata !2510, metadata !DIExpression()), !dbg !2514
  br label %35

35:                                               ; preds = %31, %27
  %.2 = phi i16 [ %30, %27 ], [ %34, %31 ], !dbg !2544
  call void @llvm.dbg.value(metadata i16 %.2, metadata !2510, metadata !DIExpression()), !dbg !2514
  br label %36, !dbg !2545

36:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i8 undef, metadata !2511, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2514
  br label %3, !dbg !2547, !llvm.loop !2548

37:                                               ; preds = %3
  %.01.lcssa = phi i16 [ %.01, %3 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2510, metadata !DIExpression()), !dbg !2514
  ret i16 %.01.lcssa, !dbg !2550
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu16(i16 zeroext, i16 zeroext) #0 !dbg !2551 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2555, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i16 %1, metadata !2556, metadata !DIExpression()), !dbg !2557
  %3 = trunc i16 %0 to i8, !dbg !2558
  %4 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %3, i16 zeroext %1), !dbg !2559
  call void @llvm.dbg.value(metadata i16 %4, metadata !2556, metadata !DIExpression()), !dbg !2557
  %5 = zext i16 %0 to i32, !dbg !2560
  %6 = ashr i32 %5, 8, !dbg !2561
  %7 = trunc i32 %6 to i8, !dbg !2562
  %8 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %7, i16 zeroext %4), !dbg !2563
  call void @llvm.dbg.value(metadata i16 %8, metadata !2556, metadata !DIExpression()), !dbg !2557
  ret i16 %8, !dbg !2564
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu32(i32, i16 zeroext) #0 !dbg !2565 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2569, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i16 %1, metadata !2570, metadata !DIExpression()), !dbg !2571
  %3 = trunc i32 %0 to i16, !dbg !2572
  %4 = call arm_aapcscc zeroext i16 @crc16(i16 signext %3, i16 zeroext %1), !dbg !2573
  call void @llvm.dbg.value(metadata i16 %4, metadata !2570, metadata !DIExpression()), !dbg !2571
  %5 = lshr i32 %0, 16, !dbg !2574
  %6 = trunc i32 %5 to i16, !dbg !2575
  %7 = call arm_aapcscc zeroext i16 @crc16(i16 signext %6, i16 zeroext %4), !dbg !2576
  call void @llvm.dbg.value(metadata i16 %7, metadata !2570, metadata !DIExpression()), !dbg !2571
  ret i16 %7, !dbg !2577
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crc16(i16 signext, i16 zeroext) #0 !dbg !2578 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i16 %1, metadata !2583, metadata !DIExpression()), !dbg !2584
  %3 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %0, i16 zeroext %1), !dbg !2585
  ret i16 %3, !dbg !2586
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i8 @check_data_types() #0 !dbg !2587 {
  call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2591
  %1 = zext i8 0 to i32, !dbg !2592
  %2 = icmp sgt i32 %1, 0, !dbg !2594
  br i1 %2, label %3, label %._crit_edge, !dbg !2595

._crit_edge:                                      ; preds = %0
  br label %6, !dbg !2595

3:                                                ; preds = %0
  %4 = getelementptr [54 x i8], [54 x i8]* @.str.48, i32 0, i32 0
  %5 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %4), !dbg !2596
  br label %6, !dbg !2598

6:                                                ; preds = %3, %._crit_edge
  ret i8 0, !dbg !2599
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i64 @clock() #3 !dbg !2600 {
  %1 = load volatile i64, i64* @dummy, align 8, !dbg !2603, !tbaa !2604
  ret i64 %1, !dbg !2606
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @start_time() #0 !dbg !2607 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !2608
  store volatile i64 %1, i64* @start_time_val, align 8, !dbg !2608, !tbaa !2604
  ret void, !dbg !2609
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @stop_time() #0 !dbg !2610 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !2611
  store volatile i64 %1, i64* @stop_time_val, align 8, !dbg !2611, !tbaa !2604
  ret void, !dbg !2612
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_time() #0 !dbg !2613 {
  %1 = load volatile i64, i64* @stop_time_val, align 8, !dbg !2618, !tbaa !2604
  %2 = load volatile i64, i64* @start_time_val, align 8, !dbg !2618, !tbaa !2604
  %3 = sub i64 %1, %2, !dbg !2618
  %4 = trunc i64 %3 to i32, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %4, metadata !2617, metadata !DIExpression()), !dbg !2620
  ret i32 %4, !dbg !2621
}

; Function Attrs: nounwind
define dso_local arm_aapcscc double @time_in_secs(i32) #0 !dbg !2622 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2628
  %2 = uitofp i32 %0 to double, !dbg !2629
  %3 = fdiv double %2, 1.000000e+07, !dbg !2630
  call void @llvm.dbg.value(metadata double %3, metadata !2627, metadata !DIExpression()), !dbg !2628
  ret double %3, !dbg !2631
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S*, i32*, i8**) #0 !dbg !2632 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32* %1, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8** %2, metadata !2644, metadata !DIExpression()), !dbg !2645
  %4 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2646
  store i8 1, i8* %4, align 1, !dbg !2647, !tbaa !2648
  ret void, !dbg !2649
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S*) #0 !dbg !2650 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2654, metadata !DIExpression()), !dbg !2655
  %2 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2656
  store i8 0, i8* %2, align 1, !dbg !2657, !tbaa !2648
  ret void, !dbg !2658
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @printf_(i8*, ...) #0 !dbg !2659 {
  %2 = alloca %struct.__va_list, align 4
  %3 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2665, metadata !DIExpression()), !dbg !2677
  %4 = bitcast %struct.__va_list* %2 to i8*, !dbg !2678
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !2678
  call void @llvm.dbg.declare(metadata %struct.__va_list* %2, metadata !2666, metadata !DIExpression()), !dbg !2679
  %5 = bitcast %struct.__va_list* %2 to i8*, !dbg !2680
  call void @llvm.va_start(i8* %5), !dbg !2680
  %6 = bitcast [1 x i8]* %3 to i8*, !dbg !2681
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #4, !dbg !2681
  call void @llvm.dbg.declare(metadata [1 x i8]* %3, metadata !2673, metadata !DIExpression()), !dbg !2682
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i32 0, i32 0, !dbg !2683
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %2, i32 0, i32 0, !dbg !2684
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !2684
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !2684
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %7, i32 -1, i8* %0, [1 x i32] %10), !dbg !2684
  call void @llvm.dbg.value(metadata i32 %11, metadata !2675, metadata !DIExpression()), !dbg !2677
  %12 = bitcast %struct.__va_list* %2 to i8*, !dbg !2685
  call void @llvm.va_end(i8* %12), !dbg !2685
  %13 = bitcast [1 x i8]* %3 to i8*, !dbg !2686
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4, !dbg !2686
  %14 = bitcast %struct.__va_list* %2 to i8*, !dbg !2686
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !2686
  ret i32 %11, !dbg !2687
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_char(i8 zeroext, i8*, i32, i32) #5 !dbg !2688 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2690, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8* %1, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %2, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %3, metadata !2693, metadata !DIExpression()), !dbg !2694
  %5 = icmp ne i8 %0, 0, !dbg !2695
  br i1 %5, label %6, label %._crit_edge, !dbg !2697

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2697

6:                                                ; preds = %4
  call arm_aapcscc void @_putchar(i8 zeroext %0), !dbg !2698
  br label %7, !dbg !2700

7:                                                ; preds = %6, %._crit_edge
  ret void, !dbg !2701
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32]) #0 !dbg !2702 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca i8*, align 4
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %6, i32 0, i32 0
  %9 = bitcast i8** %8 to [1 x i32]*
  store [1 x i32] %4, [1 x i32]* %9, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !2707, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !2708, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %2, metadata !2709, metadata !DIExpression()), !dbg !2759
  store i8* %3, i8** %7, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2710, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.declare(metadata %struct.__va_list* %6, metadata !2711, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 0, metadata !2716, metadata !DIExpression()), !dbg !2759
  %10 = icmp ne i8* %1, null, !dbg !2762
  br i1 %10, label %._crit_edge, label %11, !dbg !2764

._crit_edge:                                      ; preds = %5
  br label %12, !dbg !2764

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* @_out_null, metadata !2707, metadata !DIExpression()), !dbg !2759
  br label %12, !dbg !2765

12:                                               ; preds = %11, %._crit_edge
  %.0 = phi void (i8, i8*, i32, i32)* [ %0, %._crit_edge ], [ @_out_null, %11 ]
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %.0, metadata !2707, metadata !DIExpression()), !dbg !2759
  br label %13, !dbg !2767

13:                                               ; preds = %.backedge, %12
  %.018 = phi i32 [ 0, %12 ], [ %.018.be, %.backedge ], !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.018, metadata !2716, metadata !DIExpression()), !dbg !2759
  %14 = load i8*, i8** %7, align 4, !dbg !2768, !tbaa !334
  %15 = load i8, i8* %14, align 1, !dbg !2769, !tbaa !2150
  %16 = icmp ne i8 %15, 0, !dbg !2767
  br i1 %16, label %17, label %543, !dbg !2767

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 4, !dbg !2770, !tbaa !334
  %19 = load i8, i8* %18, align 1, !dbg !2772, !tbaa !2150
  %20 = zext i8 %19 to i32, !dbg !2772
  %21 = icmp ne i32 %20, 37, !dbg !2773
  br i1 %21, label %22, label %28, !dbg !2774

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 4, !dbg !2775, !tbaa !334
  %24 = load i8, i8* %23, align 1, !dbg !2777, !tbaa !2150
  %25 = add i32 %.018, 1, !dbg !2778
  call void @llvm.dbg.value(metadata i32 %25, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext %24, i8* %1, i32 %.018, i32 %2), !dbg !2779
  %26 = load i8*, i8** %7, align 4, !dbg !2780, !tbaa !334
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2780
  store i8* %27, i8** %7, align 4, !dbg !2780, !tbaa !334
  br label %.backedge, !dbg !2781

.backedge:                                        ; preds = %542, %22
  %.018.be = phi i32 [ %25, %22 ], [ %.1533, %542 ]
  br label %13, !dbg !2759, !llvm.loop !2782

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 4, !dbg !2784, !tbaa !334
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !2784
  store i8* %30, i8** %7, align 4, !dbg !2784, !tbaa !334
  br label %31

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %32, !dbg !2786

32:                                               ; preds = %._crit_edge124, %31
  %.03 = phi i32 [ 0, %31 ], [ %.14, %._crit_edge124 ], !dbg !2787
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2712, metadata !DIExpression()), !dbg !2759
  %33 = load i8*, i8** %7, align 4, !dbg !2788, !tbaa !334
  %34 = load i8, i8* %33, align 1, !dbg !2790, !tbaa !2150
  %35 = zext i8 %34 to i32, !dbg !2790
  br label %NodeBlock52

NodeBlock52:                                      ; preds = %32
  %Pivot53 = icmp slt i32 %35, 43
  br i1 %Pivot53, label %NodeBlock, label %NodeBlock50

NodeBlock50:                                      ; preds = %NodeBlock52
  %Pivot51 = icmp slt i32 %35, 45
  br i1 %Pivot51, label %LeafBlock42, label %NodeBlock48

NodeBlock48:                                      ; preds = %NodeBlock50
  %Pivot49 = icmp slt i32 %35, 48
  br i1 %Pivot49, label %LeafBlock44, label %LeafBlock46

LeafBlock46:                                      ; preds = %NodeBlock48
  %SwitchLeaf47 = icmp eq i32 %35, 48
  br i1 %SwitchLeaf47, label %36, label %LeafBlock46.NewDefault_crit_edge

LeafBlock46.NewDefault_crit_edge:                 ; preds = %LeafBlock46
  br label %NewDefault

LeafBlock44:                                      ; preds = %NodeBlock48
  %SwitchLeaf45 = icmp eq i32 %35, 45
  br i1 %SwitchLeaf45, label %40, label %LeafBlock44.NewDefault_crit_edge

LeafBlock44.NewDefault_crit_edge:                 ; preds = %LeafBlock44
  br label %NewDefault

LeafBlock42:                                      ; preds = %NodeBlock50
  %SwitchLeaf43 = icmp eq i32 %35, 43
  br i1 %SwitchLeaf43, label %44, label %LeafBlock42.NewDefault_crit_edge

LeafBlock42.NewDefault_crit_edge:                 ; preds = %LeafBlock42
  br label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock52
  %Pivot = icmp slt i32 %35, 35
  br i1 %Pivot, label %LeafBlock, label %LeafBlock40

LeafBlock40:                                      ; preds = %NodeBlock
  %SwitchLeaf41 = icmp eq i32 %35, 35
  br i1 %SwitchLeaf41, label %52, label %LeafBlock40.NewDefault_crit_edge

LeafBlock40.NewDefault_crit_edge:                 ; preds = %LeafBlock40
  br label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %35, 32
  br i1 %SwitchLeaf, label %48, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

36:                                               ; preds = %LeafBlock46
  %37 = or i32 %.03, 1, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %37, metadata !2712, metadata !DIExpression()), !dbg !2759
  %38 = load i8*, i8** %7, align 4, !dbg !2793, !tbaa !334
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2793
  store i8* %39, i8** %7, align 4, !dbg !2793, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2715, metadata !DIExpression()), !dbg !2759
  br label %57, !dbg !2794

40:                                               ; preds = %LeafBlock44
  %41 = or i32 %.03, 2, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %41, metadata !2712, metadata !DIExpression()), !dbg !2759
  %42 = load i8*, i8** %7, align 4, !dbg !2796, !tbaa !334
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !2796
  store i8* %43, i8** %7, align 4, !dbg !2796, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2715, metadata !DIExpression()), !dbg !2759
  br label %57, !dbg !2797

44:                                               ; preds = %LeafBlock42
  %45 = or i32 %.03, 4, !dbg !2798
  call void @llvm.dbg.value(metadata i32 %45, metadata !2712, metadata !DIExpression()), !dbg !2759
  %46 = load i8*, i8** %7, align 4, !dbg !2799, !tbaa !334
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !2799
  store i8* %47, i8** %7, align 4, !dbg !2799, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2715, metadata !DIExpression()), !dbg !2759
  br label %57, !dbg !2800

48:                                               ; preds = %LeafBlock
  %49 = or i32 %.03, 8, !dbg !2801
  call void @llvm.dbg.value(metadata i32 %49, metadata !2712, metadata !DIExpression()), !dbg !2759
  %50 = load i8*, i8** %7, align 4, !dbg !2802, !tbaa !334
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !2802
  store i8* %51, i8** %7, align 4, !dbg !2802, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2715, metadata !DIExpression()), !dbg !2759
  br label %57, !dbg !2803

52:                                               ; preds = %LeafBlock40
  %53 = or i32 %.03, 16, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %53, metadata !2712, metadata !DIExpression()), !dbg !2759
  %54 = load i8*, i8** %7, align 4, !dbg !2805, !tbaa !334
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !2805
  store i8* %55, i8** %7, align 4, !dbg !2805, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2715, metadata !DIExpression()), !dbg !2759
  br label %57, !dbg !2806

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock40.NewDefault_crit_edge, %LeafBlock42.NewDefault_crit_edge, %LeafBlock44.NewDefault_crit_edge, %LeafBlock46.NewDefault_crit_edge
  br label %56

56:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2715, metadata !DIExpression()), !dbg !2759
  br label %57, !dbg !2807

57:                                               ; preds = %56, %52, %48, %44, %40, %36
  %.017 = phi i32 [ 0, %56 ], [ 1, %52 ], [ 1, %48 ], [ 1, %44 ], [ 1, %40 ], [ 1, %36 ], !dbg !2808
  %.14 = phi i32 [ %.03, %56 ], [ %53, %52 ], [ %49, %48 ], [ %45, %44 ], [ %41, %40 ], [ %37, %36 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.017, metadata !2715, metadata !DIExpression()), !dbg !2759
  br label %58, !dbg !2810

58:                                               ; preds = %57
  %59 = icmp ne i32 %.017, 0, !dbg !2810
  br i1 %59, label %._crit_edge124, label %60, !dbg !2810, !llvm.loop !2811

._crit_edge124:                                   ; preds = %58
  br label %32, !dbg !2810

60:                                               ; preds = %58
  %.14.lcssa = phi i32 [ %.14, %58 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 0, metadata !2713, metadata !DIExpression()), !dbg !2759
  %61 = load i8*, i8** %7, align 4, !dbg !2813, !tbaa !334
  %62 = load i8, i8* %61, align 1, !dbg !2814, !tbaa !2150
  %63 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %62), !dbg !2815
  br i1 %63, label %64, label %66, !dbg !2816

64:                                               ; preds = %60
  %65 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2817
  call void @llvm.dbg.value(metadata i32 %65, metadata !2713, metadata !DIExpression()), !dbg !2759
  br label %86, !dbg !2819

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 4, !dbg !2820, !tbaa !334
  %68 = load i8, i8* %67, align 1, !dbg !2821, !tbaa !2150
  %69 = zext i8 %68 to i32, !dbg !2821
  %70 = icmp eq i32 %69, 42, !dbg !2822
  br i1 %70, label %71, label %._crit_edge125, !dbg !2823

._crit_edge125:                                   ; preds = %66
  br label %85, !dbg !2823

71:                                               ; preds = %66
  %72 = bitcast %struct.__va_list* %6 to i8**, !dbg !2824
  %73 = load i8*, i8** %72, align 4, !dbg !2824
  %74 = getelementptr inbounds i8, i8* %73, i32 4, !dbg !2824
  store i8* %74, i8** %72, align 4, !dbg !2824
  %75 = bitcast i8* %73 to i32*, !dbg !2824
  %76 = load i32, i32* %75, align 4, !dbg !2824
  call void @llvm.dbg.value(metadata i32 %76, metadata !2717, metadata !DIExpression()), !dbg !2825
  %77 = icmp slt i32 %76, 0, !dbg !2826
  br i1 %77, label %78, label %81, !dbg !2828

78:                                               ; preds = %71
  %79 = or i32 %.14.lcssa, 2, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %79, metadata !2712, metadata !DIExpression()), !dbg !2759
  %80 = sub nsw i32 0, %76, !dbg !2831
  call void @llvm.dbg.value(metadata i32 %80, metadata !2713, metadata !DIExpression()), !dbg !2759
  br label %82, !dbg !2832

81:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 %76, metadata !2713, metadata !DIExpression()), !dbg !2759
  br label %82

82:                                               ; preds = %81, %78
  %.08 = phi i32 [ %80, %78 ], [ %76, %81 ], !dbg !2833
  %.25 = phi i32 [ %79, %78 ], [ %.14.lcssa, %81 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.25, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.08, metadata !2713, metadata !DIExpression()), !dbg !2759
  %83 = load i8*, i8** %7, align 4, !dbg !2834, !tbaa !334
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !2834
  store i8* %84, i8** %7, align 4, !dbg !2834, !tbaa !334
  br label %85, !dbg !2835

85:                                               ; preds = %82, %._crit_edge125
  %.19 = phi i32 [ %.08, %82 ], [ 0, %._crit_edge125 ], !dbg !2809
  %.36 = phi i32 [ %.25, %82 ], [ %.14.lcssa, %._crit_edge125 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.36, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2713, metadata !DIExpression()), !dbg !2759
  br label %86

86:                                               ; preds = %85, %64
  %.210 = phi i32 [ %65, %64 ], [ %.19, %85 ], !dbg !2836
  %.4 = phi i32 [ %.14.lcssa, %64 ], [ %.36, %85 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.210, metadata !2713, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()), !dbg !2759
  %87 = load i8*, i8** %7, align 4, !dbg !2837, !tbaa !334
  %88 = load i8, i8* %87, align 1, !dbg !2838, !tbaa !2150
  %89 = zext i8 %88 to i32, !dbg !2838
  %90 = icmp eq i32 %89, 46, !dbg !2839
  br i1 %90, label %91, label %._crit_edge126, !dbg !2840

._crit_edge126:                                   ; preds = %86
  br label %120, !dbg !2840

91:                                               ; preds = %86
  %92 = or i32 %.4, 1024, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %92, metadata !2712, metadata !DIExpression()), !dbg !2759
  %93 = load i8*, i8** %7, align 4, !dbg !2842, !tbaa !334
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !2842
  store i8* %94, i8** %7, align 4, !dbg !2842, !tbaa !334
  %95 = load i8*, i8** %7, align 4, !dbg !2843, !tbaa !334
  %96 = load i8, i8* %95, align 1, !dbg !2844, !tbaa !2150
  %97 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %96), !dbg !2845
  br i1 %97, label %98, label %100, !dbg !2846

98:                                               ; preds = %91
  %99 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2847
  call void @llvm.dbg.value(metadata i32 %99, metadata !2714, metadata !DIExpression()), !dbg !2759
  br label %119, !dbg !2849

100:                                              ; preds = %91
  %101 = load i8*, i8** %7, align 4, !dbg !2850, !tbaa !334
  %102 = load i8, i8* %101, align 1, !dbg !2851, !tbaa !2150
  %103 = zext i8 %102 to i32, !dbg !2851
  %104 = icmp eq i32 %103, 42, !dbg !2852
  br i1 %104, label %105, label %._crit_edge127, !dbg !2853

._crit_edge127:                                   ; preds = %100
  br label %118, !dbg !2853

105:                                              ; preds = %100
  %106 = bitcast %struct.__va_list* %6 to i8**, !dbg !2854
  %107 = load i8*, i8** %106, align 4, !dbg !2854
  %108 = getelementptr inbounds i8, i8* %107, i32 4, !dbg !2854
  store i8* %108, i8** %106, align 4, !dbg !2854
  %109 = bitcast i8* %107 to i32*, !dbg !2854
  %110 = load i32, i32* %109, align 4, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %110, metadata !2722, metadata !DIExpression()), !dbg !2855
  %111 = icmp sgt i32 %110, 0, !dbg !2856
  br i1 %111, label %112, label %113, !dbg !2857

112:                                              ; preds = %105
  br label %114, !dbg !2857

113:                                              ; preds = %105
  br label %114, !dbg !2857

114:                                              ; preds = %113, %112
  %115 = phi i32 [ %110, %112 ], [ 0, %113 ], !dbg !2857
  call void @llvm.dbg.value(metadata i32 %115, metadata !2714, metadata !DIExpression()), !dbg !2759
  %116 = load i8*, i8** %7, align 4, !dbg !2858, !tbaa !334
  %117 = getelementptr inbounds i8, i8* %116, i32 1, !dbg !2858
  store i8* %117, i8** %7, align 4, !dbg !2858, !tbaa !334
  br label %118, !dbg !2859

118:                                              ; preds = %114, %._crit_edge127
  %.011 = phi i32 [ %115, %114 ], [ 0, %._crit_edge127 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.011, metadata !2714, metadata !DIExpression()), !dbg !2759
  br label %119

119:                                              ; preds = %118, %98
  %.112 = phi i32 [ %99, %98 ], [ %.011, %118 ], !dbg !2860
  call void @llvm.dbg.value(metadata i32 %.112, metadata !2714, metadata !DIExpression()), !dbg !2759
  br label %120, !dbg !2861

120:                                              ; preds = %119, %._crit_edge126
  %.213 = phi i32 [ %.112, %119 ], [ 0, %._crit_edge126 ], !dbg !2809
  %.5 = phi i32 [ %92, %119 ], [ %.4, %._crit_edge126 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.213, metadata !2714, metadata !DIExpression()), !dbg !2759
  %121 = load i8*, i8** %7, align 4, !dbg !2862, !tbaa !334
  %122 = load i8, i8* %121, align 1, !dbg !2863, !tbaa !2150
  %123 = zext i8 %122 to i32, !dbg !2863
  br label %NodeBlock71

NodeBlock71:                                      ; preds = %120
  %Pivot72 = icmp slt i32 %123, 108
  br i1 %Pivot72, label %NodeBlock59, label %NodeBlock69

NodeBlock69:                                      ; preds = %NodeBlock71
  %Pivot70 = icmp slt i32 %123, 116
  br i1 %Pivot70, label %LeafBlock61, label %NodeBlock67

NodeBlock67:                                      ; preds = %NodeBlock69
  %Pivot68 = icmp slt i32 %123, 122
  br i1 %Pivot68, label %LeafBlock63, label %LeafBlock65

LeafBlock65:                                      ; preds = %NodeBlock67
  %SwitchLeaf66 = icmp eq i32 %123, 122
  br i1 %SwitchLeaf66, label %158, label %LeafBlock65.NewDefault54_crit_edge

LeafBlock65.NewDefault54_crit_edge:               ; preds = %LeafBlock65
  br label %NewDefault54

LeafBlock63:                                      ; preds = %NodeBlock67
  %SwitchLeaf64 = icmp eq i32 %123, 116
  br i1 %SwitchLeaf64, label %150, label %LeafBlock63.NewDefault54_crit_edge

LeafBlock63.NewDefault54_crit_edge:               ; preds = %LeafBlock63
  br label %NewDefault54

LeafBlock61:                                      ; preds = %NodeBlock69
  %SwitchLeaf62 = icmp eq i32 %123, 108
  br i1 %SwitchLeaf62, label %124, label %LeafBlock61.NewDefault54_crit_edge

LeafBlock61.NewDefault54_crit_edge:               ; preds = %LeafBlock61
  br label %NewDefault54

NodeBlock59:                                      ; preds = %NodeBlock71
  %Pivot60 = icmp slt i32 %123, 106
  br i1 %Pivot60, label %LeafBlock55, label %LeafBlock57

LeafBlock57:                                      ; preds = %NodeBlock59
  %SwitchLeaf58 = icmp eq i32 %123, 106
  br i1 %SwitchLeaf58, label %154, label %LeafBlock57.NewDefault54_crit_edge

LeafBlock57.NewDefault54_crit_edge:               ; preds = %LeafBlock57
  br label %NewDefault54

LeafBlock55:                                      ; preds = %NodeBlock59
  %SwitchLeaf56 = icmp eq i32 %123, 104
  br i1 %SwitchLeaf56, label %137, label %LeafBlock55.NewDefault54_crit_edge

LeafBlock55.NewDefault54_crit_edge:               ; preds = %LeafBlock55
  br label %NewDefault54

124:                                              ; preds = %LeafBlock61
  %125 = or i32 %.5, 256, !dbg !2864
  call void @llvm.dbg.value(metadata i32 %125, metadata !2712, metadata !DIExpression()), !dbg !2759
  %126 = load i8*, i8** %7, align 4, !dbg !2866, !tbaa !334
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !2866
  store i8* %127, i8** %7, align 4, !dbg !2866, !tbaa !334
  %128 = load i8*, i8** %7, align 4, !dbg !2867, !tbaa !334
  %129 = load i8, i8* %128, align 1, !dbg !2869, !tbaa !2150
  %130 = zext i8 %129 to i32, !dbg !2869
  %131 = icmp eq i32 %130, 108, !dbg !2870
  br i1 %131, label %132, label %._crit_edge128, !dbg !2871

._crit_edge128:                                   ; preds = %124
  br label %136, !dbg !2871

132:                                              ; preds = %124
  %133 = or i32 %125, 512, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %133, metadata !2712, metadata !DIExpression()), !dbg !2759
  %134 = load i8*, i8** %7, align 4, !dbg !2874, !tbaa !334
  %135 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !2874
  store i8* %135, i8** %7, align 4, !dbg !2874, !tbaa !334
  br label %136, !dbg !2875

136:                                              ; preds = %132, %._crit_edge128
  %.6 = phi i32 [ %133, %132 ], [ %125, %._crit_edge128 ], !dbg !2876
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %163, !dbg !2877

137:                                              ; preds = %LeafBlock55
  %138 = or i32 %.5, 128, !dbg !2878
  call void @llvm.dbg.value(metadata i32 %138, metadata !2712, metadata !DIExpression()), !dbg !2759
  %139 = load i8*, i8** %7, align 4, !dbg !2879, !tbaa !334
  %140 = getelementptr inbounds i8, i8* %139, i32 1, !dbg !2879
  store i8* %140, i8** %7, align 4, !dbg !2879, !tbaa !334
  %141 = load i8*, i8** %7, align 4, !dbg !2880, !tbaa !334
  %142 = load i8, i8* %141, align 1, !dbg !2882, !tbaa !2150
  %143 = zext i8 %142 to i32, !dbg !2882
  %144 = icmp eq i32 %143, 104, !dbg !2883
  br i1 %144, label %145, label %._crit_edge129, !dbg !2884

._crit_edge129:                                   ; preds = %137
  br label %149, !dbg !2884

145:                                              ; preds = %137
  %146 = or i32 %138, 64, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %146, metadata !2712, metadata !DIExpression()), !dbg !2759
  %147 = load i8*, i8** %7, align 4, !dbg !2887, !tbaa !334
  %148 = getelementptr inbounds i8, i8* %147, i32 1, !dbg !2887
  store i8* %148, i8** %7, align 4, !dbg !2887, !tbaa !334
  br label %149, !dbg !2888

149:                                              ; preds = %145, %._crit_edge129
  %.7 = phi i32 [ %146, %145 ], [ %138, %._crit_edge129 ], !dbg !2876
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %163, !dbg !2889

150:                                              ; preds = %LeafBlock63
  %151 = or i32 %.5, 256, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %151, metadata !2712, metadata !DIExpression()), !dbg !2759
  %152 = load i8*, i8** %7, align 4, !dbg !2891, !tbaa !334
  %153 = getelementptr inbounds i8, i8* %152, i32 1, !dbg !2891
  store i8* %153, i8** %7, align 4, !dbg !2891, !tbaa !334
  br label %163, !dbg !2892

154:                                              ; preds = %LeafBlock57
  %155 = or i32 %.5, 512, !dbg !2893
  call void @llvm.dbg.value(metadata i32 %155, metadata !2712, metadata !DIExpression()), !dbg !2759
  %156 = load i8*, i8** %7, align 4, !dbg !2894, !tbaa !334
  %157 = getelementptr inbounds i8, i8* %156, i32 1, !dbg !2894
  store i8* %157, i8** %7, align 4, !dbg !2894, !tbaa !334
  br label %163, !dbg !2895

158:                                              ; preds = %LeafBlock65
  %159 = or i32 %.5, 256, !dbg !2896
  call void @llvm.dbg.value(metadata i32 %159, metadata !2712, metadata !DIExpression()), !dbg !2759
  %160 = load i8*, i8** %7, align 4, !dbg !2897, !tbaa !334
  %161 = getelementptr inbounds i8, i8* %160, i32 1, !dbg !2897
  store i8* %161, i8** %7, align 4, !dbg !2897, !tbaa !334
  br label %163, !dbg !2898

NewDefault54:                                     ; preds = %LeafBlock55.NewDefault54_crit_edge, %LeafBlock57.NewDefault54_crit_edge, %LeafBlock61.NewDefault54_crit_edge, %LeafBlock63.NewDefault54_crit_edge, %LeafBlock65.NewDefault54_crit_edge
  br label %162

162:                                              ; preds = %NewDefault54
  br label %163, !dbg !2899

163:                                              ; preds = %162, %158, %154, %150, %149, %136
  %.8 = phi i32 [ %.5, %162 ], [ %159, %158 ], [ %155, %154 ], [ %151, %150 ], [ %.7, %149 ], [ %.6, %136 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2712, metadata !DIExpression()), !dbg !2759
  %164 = load i8*, i8** %7, align 4, !dbg !2900, !tbaa !334
  %165 = load i8, i8* %164, align 1, !dbg !2901, !tbaa !2150
  %166 = zext i8 %165 to i32, !dbg !2901
  br label %NodeBlock122

NodeBlock122:                                     ; preds = %163
  %Pivot123 = icmp slt i32 %166, 101
  br i1 %Pivot123, label %NodeBlock92, label %NodeBlock120

NodeBlock120:                                     ; preds = %NodeBlock122
  %Pivot121 = icmp slt i32 %166, 111
  br i1 %Pivot121, label %NodeBlock102, label %NodeBlock118

NodeBlock118:                                     ; preds = %NodeBlock120
  %Pivot119 = icmp slt i32 %166, 115
  br i1 %Pivot119, label %NodeBlock106, label %NodeBlock116

NodeBlock116:                                     ; preds = %NodeBlock118
  %Pivot117 = icmp slt i32 %166, 117
  br i1 %Pivot117, label %LeafBlock108, label %NodeBlock114

NodeBlock114:                                     ; preds = %NodeBlock116
  %Pivot115 = icmp slt i32 %166, 120
  br i1 %Pivot115, label %LeafBlock110, label %LeafBlock112

LeafBlock112:                                     ; preds = %NodeBlock114
  %SwitchLeaf113 = icmp eq i32 %166, 120
  br i1 %SwitchLeaf113, label %LeafBlock112._crit_edge, label %LeafBlock112.NewDefault73_crit_edge

LeafBlock112.NewDefault73_crit_edge:              ; preds = %LeafBlock112
  br label %NewDefault73

LeafBlock112._crit_edge:                          ; preds = %LeafBlock112
  br label %167

LeafBlock110:                                     ; preds = %NodeBlock114
  %SwitchLeaf111 = icmp eq i32 %166, 117
  br i1 %SwitchLeaf111, label %LeafBlock110._crit_edge, label %LeafBlock110.NewDefault73_crit_edge

LeafBlock110.NewDefault73_crit_edge:              ; preds = %LeafBlock110
  br label %NewDefault73

LeafBlock110._crit_edge:                          ; preds = %LeafBlock110
  br label %167

LeafBlock108:                                     ; preds = %NodeBlock116
  %SwitchLeaf109 = icmp eq i32 %166, 115
  br i1 %SwitchLeaf109, label %459, label %LeafBlock108.NewDefault73_crit_edge

LeafBlock108.NewDefault73_crit_edge:              ; preds = %LeafBlock108
  br label %NewDefault73

NodeBlock106:                                     ; preds = %NodeBlock118
  %Pivot107 = icmp slt i32 %166, 112
  br i1 %Pivot107, label %NodeBlock106._crit_edge, label %LeafBlock104

NodeBlock106._crit_edge:                          ; preds = %NodeBlock106
  br label %167

LeafBlock104:                                     ; preds = %NodeBlock106
  %SwitchLeaf105 = icmp eq i32 %166, 112
  br i1 %SwitchLeaf105, label %521, label %LeafBlock104.NewDefault73_crit_edge

LeafBlock104.NewDefault73_crit_edge:              ; preds = %LeafBlock104
  br label %NewDefault73

NodeBlock102:                                     ; preds = %NodeBlock120
  %Pivot103 = icmp slt i32 %166, 103
  br i1 %Pivot103, label %NodeBlock94, label %NodeBlock100

NodeBlock100:                                     ; preds = %NodeBlock102
  %Pivot101 = icmp slt i32 %166, 105
  br i1 %Pivot101, label %LeafBlock96, label %LeafBlock98

LeafBlock98:                                      ; preds = %NodeBlock100
  %SwitchLeaf99 = icmp eq i32 %166, 105
  br i1 %SwitchLeaf99, label %LeafBlock98._crit_edge, label %LeafBlock98.NewDefault73_crit_edge

LeafBlock98.NewDefault73_crit_edge:               ; preds = %LeafBlock98
  br label %NewDefault73

LeafBlock98._crit_edge:                           ; preds = %LeafBlock98
  br label %167

LeafBlock96:                                      ; preds = %NodeBlock100
  %SwitchLeaf97 = icmp eq i32 %166, 103
  br i1 %SwitchLeaf97, label %LeafBlock96._crit_edge, label %LeafBlock96.NewDefault73_crit_edge

LeafBlock96.NewDefault73_crit_edge:               ; preds = %LeafBlock96
  br label %NewDefault73

LeafBlock96._crit_edge:                           ; preds = %LeafBlock96
  br label %392

NodeBlock94:                                      ; preds = %NodeBlock102
  %Pivot95 = icmp slt i32 %166, 102
  br i1 %Pivot95, label %NodeBlock94._crit_edge, label %NodeBlock94._crit_edge130

NodeBlock94._crit_edge130:                        ; preds = %NodeBlock94
  br label %372

NodeBlock94._crit_edge:                           ; preds = %NodeBlock94
  br label %392

NodeBlock92:                                      ; preds = %NodeBlock122
  %Pivot93 = icmp slt i32 %166, 88
  br i1 %Pivot93, label %NodeBlock82, label %NodeBlock90

NodeBlock90:                                      ; preds = %NodeBlock92
  %Pivot91 = icmp slt i32 %166, 99
  br i1 %Pivot91, label %NodeBlock86, label %NodeBlock88

NodeBlock88:                                      ; preds = %NodeBlock90
  %Pivot89 = icmp slt i32 %166, 100
  br i1 %Pivot89, label %429, label %NodeBlock88._crit_edge

NodeBlock88._crit_edge:                           ; preds = %NodeBlock88
  br label %167

NodeBlock86:                                      ; preds = %NodeBlock90
  %Pivot87 = icmp slt i32 %166, 98
  br i1 %Pivot87, label %LeafBlock84, label %NodeBlock86._crit_edge

NodeBlock86._crit_edge:                           ; preds = %NodeBlock86
  br label %167

LeafBlock84:                                      ; preds = %NodeBlock86
  %SwitchLeaf85 = icmp eq i32 %166, 88
  br i1 %SwitchLeaf85, label %LeafBlock84._crit_edge, label %LeafBlock84.NewDefault73_crit_edge

LeafBlock84.NewDefault73_crit_edge:               ; preds = %LeafBlock84
  br label %NewDefault73

LeafBlock84._crit_edge:                           ; preds = %LeafBlock84
  br label %167

NodeBlock82:                                      ; preds = %NodeBlock92
  %Pivot83 = icmp slt i32 %166, 70
  br i1 %Pivot83, label %NodeBlock76, label %NodeBlock80

NodeBlock80:                                      ; preds = %NodeBlock82
  %Pivot81 = icmp slt i32 %166, 71
  br i1 %Pivot81, label %NodeBlock80._crit_edge, label %LeafBlock78

NodeBlock80._crit_edge:                           ; preds = %NodeBlock80
  br label %372

LeafBlock78:                                      ; preds = %NodeBlock80
  %SwitchLeaf79 = icmp eq i32 %166, 71
  br i1 %SwitchLeaf79, label %LeafBlock78._crit_edge, label %LeafBlock78.NewDefault73_crit_edge

LeafBlock78.NewDefault73_crit_edge:               ; preds = %LeafBlock78
  br label %NewDefault73

LeafBlock78._crit_edge:                           ; preds = %LeafBlock78
  br label %392

NodeBlock76:                                      ; preds = %NodeBlock82
  %Pivot77 = icmp slt i32 %166, 69
  br i1 %Pivot77, label %LeafBlock74, label %NodeBlock76._crit_edge

NodeBlock76._crit_edge:                           ; preds = %NodeBlock76
  br label %392

LeafBlock74:                                      ; preds = %NodeBlock76
  %SwitchLeaf75 = icmp eq i32 %166, 37
  br i1 %SwitchLeaf75, label %532, label %LeafBlock74.NewDefault73_crit_edge

LeafBlock74.NewDefault73_crit_edge:               ; preds = %LeafBlock74
  br label %NewDefault73

167:                                              ; preds = %LeafBlock84._crit_edge, %NodeBlock86._crit_edge, %NodeBlock88._crit_edge, %LeafBlock98._crit_edge, %NodeBlock106._crit_edge, %LeafBlock110._crit_edge, %LeafBlock112._crit_edge
  %168 = load i8*, i8** %7, align 4, !dbg !2902, !tbaa !334
  %169 = load i8, i8* %168, align 1, !dbg !2904, !tbaa !2150
  %170 = zext i8 %169 to i32, !dbg !2904
  %171 = icmp eq i32 %170, 120, !dbg !2905
  br i1 %171, label %._crit_edge131, label %172, !dbg !2906

._crit_edge131:                                   ; preds = %167
  br label %177, !dbg !2906

172:                                              ; preds = %167
  %173 = load i8*, i8** %7, align 4, !dbg !2907, !tbaa !334
  %174 = load i8, i8* %173, align 1, !dbg !2908, !tbaa !2150
  %175 = zext i8 %174 to i32, !dbg !2908
  %176 = icmp eq i32 %175, 88, !dbg !2909
  br i1 %176, label %._crit_edge132, label %178, !dbg !2910

._crit_edge132:                                   ; preds = %172
  br label %177, !dbg !2910

177:                                              ; preds = %._crit_edge132, %._crit_edge131
  call void @llvm.dbg.value(metadata i32 16, metadata !2728, metadata !DIExpression()), !dbg !2911
  br label %194, !dbg !2912

178:                                              ; preds = %172
  %179 = load i8*, i8** %7, align 4, !dbg !2914, !tbaa !334
  %180 = load i8, i8* %179, align 1, !dbg !2916, !tbaa !2150
  %181 = zext i8 %180 to i32, !dbg !2916
  %182 = icmp eq i32 %181, 111, !dbg !2917
  br i1 %182, label %183, label %184, !dbg !2918

183:                                              ; preds = %178
  call void @llvm.dbg.value(metadata i32 8, metadata !2728, metadata !DIExpression()), !dbg !2911
  br label %193, !dbg !2919

184:                                              ; preds = %178
  %185 = load i8*, i8** %7, align 4, !dbg !2921, !tbaa !334
  %186 = load i8, i8* %185, align 1, !dbg !2923, !tbaa !2150
  %187 = zext i8 %186 to i32, !dbg !2923
  %188 = icmp eq i32 %187, 98, !dbg !2924
  br i1 %188, label %189, label %190, !dbg !2925

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 2, metadata !2728, metadata !DIExpression()), !dbg !2911
  br label %192, !dbg !2926

190:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 10, metadata !2728, metadata !DIExpression()), !dbg !2911
  %191 = and i32 %.8, -17, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %191, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %192

192:                                              ; preds = %190, %189
  %.037 = phi i32 [ 2, %189 ], [ 10, %190 ], !dbg !2930
  %.9 = phi i32 [ %.8, %189 ], [ %191, %190 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.037, metadata !2728, metadata !DIExpression()), !dbg !2911
  br label %193

193:                                              ; preds = %192, %183
  %.138 = phi i32 [ 8, %183 ], [ %.037, %192 ], !dbg !2931
  %.10 = phi i32 [ %.8, %183 ], [ %.9, %192 ], !dbg !2841
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.138, metadata !2728, metadata !DIExpression()), !dbg !2911
  br label %194

194:                                              ; preds = %193, %177
  %.239 = phi i32 [ 16, %177 ], [ %.138, %193 ], !dbg !2932
  %.11 = phi i32 [ %.8, %177 ], [ %.10, %193 ], !dbg !2841
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.239, metadata !2728, metadata !DIExpression()), !dbg !2911
  %195 = load i8*, i8** %7, align 4, !dbg !2933, !tbaa !334
  %196 = load i8, i8* %195, align 1, !dbg !2935, !tbaa !2150
  %197 = zext i8 %196 to i32, !dbg !2935
  %198 = icmp eq i32 %197, 88, !dbg !2936
  br i1 %198, label %199, label %._crit_edge133, !dbg !2937

._crit_edge133:                                   ; preds = %194
  br label %201, !dbg !2937

199:                                              ; preds = %194
  %200 = or i32 %.11, 32, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %200, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %201, !dbg !2940

201:                                              ; preds = %199, %._crit_edge133
  %.12 = phi i32 [ %200, %199 ], [ %.11, %._crit_edge133 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2712, metadata !DIExpression()), !dbg !2759
  %202 = load i8*, i8** %7, align 4, !dbg !2941, !tbaa !334
  %203 = load i8, i8* %202, align 1, !dbg !2943, !tbaa !2150
  %204 = zext i8 %203 to i32, !dbg !2943
  %205 = icmp ne i32 %204, 105, !dbg !2944
  br i1 %205, label %206, label %._crit_edge134, !dbg !2945

._crit_edge134:                                   ; preds = %201
  br label %213, !dbg !2945

206:                                              ; preds = %201
  %207 = load i8*, i8** %7, align 4, !dbg !2946, !tbaa !334
  %208 = load i8, i8* %207, align 1, !dbg !2947, !tbaa !2150
  %209 = zext i8 %208 to i32, !dbg !2947
  %210 = icmp ne i32 %209, 100, !dbg !2948
  br i1 %210, label %211, label %._crit_edge135, !dbg !2949

._crit_edge135:                                   ; preds = %206
  br label %213, !dbg !2949

211:                                              ; preds = %206
  %212 = and i32 %.12, -13, !dbg !2950
  call void @llvm.dbg.value(metadata i32 %212, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %213, !dbg !2952

213:                                              ; preds = %211, %._crit_edge135, %._crit_edge134
  %.13 = phi i32 [ %212, %211 ], [ %.12, %._crit_edge135 ], [ %.12, %._crit_edge134 ], !dbg !2911
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2712, metadata !DIExpression()), !dbg !2759
  %214 = and i32 %.13, 1024, !dbg !2953
  %215 = icmp ne i32 %214, 0, !dbg !2953
  br i1 %215, label %216, label %._crit_edge136, !dbg !2955

._crit_edge136:                                   ; preds = %213
  br label %218, !dbg !2955

216:                                              ; preds = %213
  %217 = and i32 %.13, -2, !dbg !2956
  call void @llvm.dbg.value(metadata i32 %217, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %218, !dbg !2958

218:                                              ; preds = %216, %._crit_edge136
  %.147 = phi i32 [ %217, %216 ], [ %.13, %._crit_edge136 ], !dbg !2911
  call void @llvm.dbg.value(metadata i32 %.147, metadata !2712, metadata !DIExpression()), !dbg !2759
  %219 = load i8*, i8** %7, align 4, !dbg !2959, !tbaa !334
  %220 = load i8, i8* %219, align 1, !dbg !2960, !tbaa !2150
  %221 = zext i8 %220 to i32, !dbg !2960
  %222 = icmp eq i32 %221, 105, !dbg !2961
  br i1 %222, label %._crit_edge137, label %223, !dbg !2962

._crit_edge137:                                   ; preds = %218
  br label %228, !dbg !2962

223:                                              ; preds = %218
  %224 = load i8*, i8** %7, align 4, !dbg !2963, !tbaa !334
  %225 = load i8, i8* %224, align 1, !dbg !2964, !tbaa !2150
  %226 = zext i8 %225 to i32, !dbg !2964
  %227 = icmp eq i32 %226, 100, !dbg !2965
  br i1 %227, label %._crit_edge138, label %309, !dbg !2966

._crit_edge138:                                   ; preds = %223
  br label %228, !dbg !2966

228:                                              ; preds = %._crit_edge138, %._crit_edge137
  %229 = and i32 %.147, 512, !dbg !2967
  %230 = icmp ne i32 %229, 0, !dbg !2967
  br i1 %230, label %231, label %250, !dbg !2968

231:                                              ; preds = %228
  %232 = bitcast %struct.__va_list* %6 to i8**, !dbg !2969
  %233 = load i8*, i8** %232, align 4, !dbg !2969
  %234 = ptrtoint i8* %233 to i32, !dbg !2969
  %235 = add i32 %234, 7, !dbg !2969
  %236 = and i32 %235, -8, !dbg !2969
  %237 = inttoptr i32 %236 to i8*, !dbg !2969
  %238 = getelementptr inbounds i8, i8* %237, i32 8, !dbg !2969
  store i8* %238, i8** %232, align 4, !dbg !2969
  %239 = bitcast i8* %237 to i64*, !dbg !2969
  %240 = load i64, i64* %239, align 8, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %240, metadata !2731, metadata !DIExpression()), !dbg !2970
  %241 = icmp sgt i64 %240, 0, !dbg !2971
  br i1 %241, label %242, label %243, !dbg !2972

242:                                              ; preds = %231
  br label %245, !dbg !2972

243:                                              ; preds = %231
  %244 = sub nsw i64 0, %240, !dbg !2973
  br label %245, !dbg !2972

245:                                              ; preds = %243, %242
  %246 = phi i64 [ %240, %242 ], [ %244, %243 ], !dbg !2972
  %247 = icmp slt i64 %240, 0, !dbg !2974
  %248 = zext i32 %.239 to i64, !dbg !2975
  %249 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %246, i1 zeroext %247, i64 %248, i32 %.213, i32 %.210, i32 %.147), !dbg !2976
  call void @llvm.dbg.value(metadata i32 %249, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %308, !dbg !2977

250:                                              ; preds = %228
  %251 = and i32 %.147, 256, !dbg !2978
  %252 = icmp ne i32 %251, 0, !dbg !2978
  br i1 %252, label %253, label %267, !dbg !2979

253:                                              ; preds = %250
  %254 = bitcast %struct.__va_list* %6 to i8**, !dbg !2980
  %255 = load i8*, i8** %254, align 4, !dbg !2980
  %256 = getelementptr inbounds i8, i8* %255, i32 4, !dbg !2980
  store i8* %256, i8** %254, align 4, !dbg !2980
  %257 = bitcast i8* %255 to i32*, !dbg !2980
  %258 = load i32, i32* %257, align 4, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %258, metadata !2738, metadata !DIExpression()), !dbg !2981
  %259 = icmp sgt i32 %258, 0, !dbg !2982
  br i1 %259, label %260, label %261, !dbg !2983

260:                                              ; preds = %253
  br label %263, !dbg !2983

261:                                              ; preds = %253
  %262 = sub nsw i32 0, %258, !dbg !2984
  br label %263, !dbg !2983

263:                                              ; preds = %261, %260
  %264 = phi i32 [ %258, %260 ], [ %262, %261 ], !dbg !2983
  %265 = icmp slt i32 %258, 0, !dbg !2985
  %266 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %264, i1 zeroext %265, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !2986
  call void @llvm.dbg.value(metadata i32 %266, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %307, !dbg !2987

267:                                              ; preds = %250
  %268 = and i32 %.147, 64, !dbg !2988
  %269 = icmp ne i32 %268, 0, !dbg !2988
  br i1 %269, label %270, label %278, !dbg !2989

270:                                              ; preds = %267
  %271 = bitcast %struct.__va_list* %6 to i8**, !dbg !2990
  %272 = load i8*, i8** %271, align 4, !dbg !2990
  %273 = getelementptr inbounds i8, i8* %272, i32 4, !dbg !2990
  store i8* %273, i8** %271, align 4, !dbg !2990
  %274 = bitcast i8* %272 to i32*, !dbg !2990
  %275 = load i32, i32* %274, align 4, !dbg !2990
  %276 = trunc i32 %275 to i8, !dbg !2991
  %277 = zext i8 %276 to i32, !dbg !2991
  br label %297, !dbg !2989

278:                                              ; preds = %267
  %279 = and i32 %.147, 128, !dbg !2992
  %280 = icmp ne i32 %279, 0, !dbg !2992
  br i1 %280, label %281, label %289, !dbg !2993

281:                                              ; preds = %278
  %282 = bitcast %struct.__va_list* %6 to i8**, !dbg !2994
  %283 = load i8*, i8** %282, align 4, !dbg !2994
  %284 = getelementptr inbounds i8, i8* %283, i32 4, !dbg !2994
  store i8* %284, i8** %282, align 4, !dbg !2994
  %285 = bitcast i8* %283 to i32*, !dbg !2994
  %286 = load i32, i32* %285, align 4, !dbg !2994
  %287 = trunc i32 %286 to i16, !dbg !2995
  %288 = sext i16 %287 to i32, !dbg !2995
  br label %295, !dbg !2993

289:                                              ; preds = %278
  %290 = bitcast %struct.__va_list* %6 to i8**, !dbg !2996
  %291 = load i8*, i8** %290, align 4, !dbg !2996
  %292 = getelementptr inbounds i8, i8* %291, i32 4, !dbg !2996
  store i8* %292, i8** %290, align 4, !dbg !2996
  %293 = bitcast i8* %291 to i32*, !dbg !2996
  %294 = load i32, i32* %293, align 4, !dbg !2996
  br label %295, !dbg !2993

295:                                              ; preds = %289, %281
  %296 = phi i32 [ %288, %281 ], [ %294, %289 ], !dbg !2993
  br label %297, !dbg !2989

297:                                              ; preds = %295, %270
  %298 = phi i32 [ %277, %270 ], [ %296, %295 ], !dbg !2989
  call void @llvm.dbg.value(metadata i32 %298, metadata !2743, metadata !DIExpression()), !dbg !2997
  %299 = icmp sgt i32 %298, 0, !dbg !2998
  br i1 %299, label %300, label %301, !dbg !2999

300:                                              ; preds = %297
  br label %303, !dbg !2999

301:                                              ; preds = %297
  %302 = sub nsw i32 0, %298, !dbg !3000
  br label %303, !dbg !2999

303:                                              ; preds = %301, %300
  %304 = phi i32 [ %298, %300 ], [ %302, %301 ], !dbg !2999
  %305 = icmp slt i32 %298, 0, !dbg !3001
  %306 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %304, i1 zeroext %305, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %306, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %307

307:                                              ; preds = %303, %263
  %.119 = phi i32 [ %266, %263 ], [ %306, %303 ], !dbg !3003
  call void @llvm.dbg.value(metadata i32 %.119, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %308

308:                                              ; preds = %307, %245
  %.220 = phi i32 [ %249, %245 ], [ %.119, %307 ], !dbg !3004
  call void @llvm.dbg.value(metadata i32 %.220, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %369, !dbg !3005

309:                                              ; preds = %223
  %310 = and i32 %.147, 512, !dbg !3006
  %311 = icmp ne i32 %310, 0, !dbg !3006
  br i1 %311, label %312, label %324, !dbg !3007

312:                                              ; preds = %309
  %313 = bitcast %struct.__va_list* %6 to i8**, !dbg !3008
  %314 = load i8*, i8** %313, align 4, !dbg !3008
  %315 = ptrtoint i8* %314 to i32, !dbg !3008
  %316 = add i32 %315, 7, !dbg !3008
  %317 = and i32 %316, -8, !dbg !3008
  %318 = inttoptr i32 %317 to i8*, !dbg !3008
  %319 = getelementptr inbounds i8, i8* %318, i32 8, !dbg !3008
  store i8* %319, i8** %313, align 4, !dbg !3008
  %320 = bitcast i8* %318 to i64*, !dbg !3008
  %321 = load i64, i64* %320, align 8, !dbg !3008
  %322 = zext i32 %.239 to i64, !dbg !3010
  %323 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %321, i1 zeroext false, i64 %322, i32 %.213, i32 %.210, i32 %.147), !dbg !3011
  call void @llvm.dbg.value(metadata i32 %323, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %368, !dbg !3012

324:                                              ; preds = %309
  %325 = and i32 %.147, 256, !dbg !3013
  %326 = icmp ne i32 %325, 0, !dbg !3013
  br i1 %326, label %327, label %334, !dbg !3014

327:                                              ; preds = %324
  %328 = bitcast %struct.__va_list* %6 to i8**, !dbg !3015
  %329 = load i8*, i8** %328, align 4, !dbg !3015
  %330 = getelementptr inbounds i8, i8* %329, i32 4, !dbg !3015
  store i8* %330, i8** %328, align 4, !dbg !3015
  %331 = bitcast i8* %329 to i32*, !dbg !3015
  %332 = load i32, i32* %331, align 4, !dbg !3015
  %333 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %332, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %333, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %367, !dbg !3018

334:                                              ; preds = %324
  %335 = and i32 %.147, 64, !dbg !3019
  %336 = icmp ne i32 %335, 0, !dbg !3019
  br i1 %336, label %337, label %345, !dbg !3020

337:                                              ; preds = %334
  %338 = bitcast %struct.__va_list* %6 to i8**, !dbg !3021
  %339 = load i8*, i8** %338, align 4, !dbg !3021
  %340 = getelementptr inbounds i8, i8* %339, i32 4, !dbg !3021
  store i8* %340, i8** %338, align 4, !dbg !3021
  %341 = bitcast i8* %339 to i32*, !dbg !3021
  %342 = load i32, i32* %341, align 4, !dbg !3021
  %343 = trunc i32 %342 to i8, !dbg !3022
  %344 = zext i8 %343 to i32, !dbg !3022
  br label %364, !dbg !3020

345:                                              ; preds = %334
  %346 = and i32 %.147, 128, !dbg !3023
  %347 = icmp ne i32 %346, 0, !dbg !3023
  br i1 %347, label %348, label %356, !dbg !3024

348:                                              ; preds = %345
  %349 = bitcast %struct.__va_list* %6 to i8**, !dbg !3025
  %350 = load i8*, i8** %349, align 4, !dbg !3025
  %351 = getelementptr inbounds i8, i8* %350, i32 4, !dbg !3025
  store i8* %351, i8** %349, align 4, !dbg !3025
  %352 = bitcast i8* %350 to i32*, !dbg !3025
  %353 = load i32, i32* %352, align 4, !dbg !3025
  %354 = trunc i32 %353 to i16, !dbg !3026
  %355 = zext i16 %354 to i32, !dbg !3026
  br label %362, !dbg !3024

356:                                              ; preds = %345
  %357 = bitcast %struct.__va_list* %6 to i8**, !dbg !3027
  %358 = load i8*, i8** %357, align 4, !dbg !3027
  %359 = getelementptr inbounds i8, i8* %358, i32 4, !dbg !3027
  store i8* %359, i8** %357, align 4, !dbg !3027
  %360 = bitcast i8* %358 to i32*, !dbg !3027
  %361 = load i32, i32* %360, align 4, !dbg !3027
  br label %362, !dbg !3024

362:                                              ; preds = %356, %348
  %363 = phi i32 [ %355, %348 ], [ %361, %356 ], !dbg !3024
  br label %364, !dbg !3020

364:                                              ; preds = %362, %337
  %365 = phi i32 [ %344, %337 ], [ %363, %362 ], !dbg !3020
  call void @llvm.dbg.value(metadata i32 %365, metadata !2745, metadata !DIExpression()), !dbg !3028
  %366 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %365, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %366, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %367

367:                                              ; preds = %364, %327
  %.321 = phi i32 [ %333, %327 ], [ %366, %364 ], !dbg !3030
  call void @llvm.dbg.value(metadata i32 %.321, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %368

368:                                              ; preds = %367, %312
  %.422 = phi i32 [ %323, %312 ], [ %.321, %367 ], !dbg !3031
  call void @llvm.dbg.value(metadata i32 %.422, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %369

369:                                              ; preds = %368, %308
  %.523 = phi i32 [ %.220, %308 ], [ %.422, %368 ], !dbg !3032
  call void @llvm.dbg.value(metadata i32 %.523, metadata !2716, metadata !DIExpression()), !dbg !2759
  %370 = load i8*, i8** %7, align 4, !dbg !3033, !tbaa !334
  %371 = getelementptr inbounds i8, i8* %370, i32 1, !dbg !3033
  store i8* %371, i8** %7, align 4, !dbg !3033, !tbaa !334
  br label %542

372:                                              ; preds = %NodeBlock80._crit_edge, %NodeBlock94._crit_edge130
  %373 = load i8*, i8** %7, align 4, !dbg !3034, !tbaa !334
  %374 = load i8, i8* %373, align 1, !dbg !3036, !tbaa !2150
  %375 = zext i8 %374 to i32, !dbg !3036
  %376 = icmp eq i32 %375, 70, !dbg !3037
  br i1 %376, label %377, label %._crit_edge139, !dbg !3038

._crit_edge139:                                   ; preds = %372
  br label %379, !dbg !3038

377:                                              ; preds = %372
  %378 = or i32 %.8, 32, !dbg !3039
  call void @llvm.dbg.value(metadata i32 %378, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %379, !dbg !3040

379:                                              ; preds = %377, %._crit_edge139
  %.15 = phi i32 [ %378, %377 ], [ %.8, %._crit_edge139 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2712, metadata !DIExpression()), !dbg !2759
  %380 = bitcast %struct.__va_list* %6 to i8**, !dbg !3041
  %381 = load i8*, i8** %380, align 4, !dbg !3041
  %382 = ptrtoint i8* %381 to i32, !dbg !3041
  %383 = add i32 %382, 7, !dbg !3041
  %384 = and i32 %383, -8, !dbg !3041
  %385 = inttoptr i32 %384 to i8*, !dbg !3041
  %386 = getelementptr inbounds i8, i8* %385, i32 8, !dbg !3041
  store i8* %386, i8** %380, align 4, !dbg !3041
  %387 = bitcast i8* %385 to double*, !dbg !3041
  %388 = load double, double* %387, align 8, !dbg !3041
  %389 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %388, i32 %.213, i32 %.210, i32 %.15), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %389, metadata !2716, metadata !DIExpression()), !dbg !2759
  %390 = load i8*, i8** %7, align 4, !dbg !3043, !tbaa !334
  %391 = getelementptr inbounds i8, i8* %390, i32 1, !dbg !3043
  store i8* %391, i8** %7, align 4, !dbg !3043, !tbaa !334
  br label %542, !dbg !3044

392:                                              ; preds = %NodeBlock76._crit_edge, %LeafBlock78._crit_edge, %NodeBlock94._crit_edge, %LeafBlock96._crit_edge
  %393 = load i8*, i8** %7, align 4, !dbg !3045, !tbaa !334
  %394 = load i8, i8* %393, align 1, !dbg !3047, !tbaa !2150
  %395 = zext i8 %394 to i32, !dbg !3047
  %396 = icmp eq i32 %395, 103, !dbg !3048
  br i1 %396, label %._crit_edge140, label %397, !dbg !3049

._crit_edge140:                                   ; preds = %392
  br label %402, !dbg !3049

397:                                              ; preds = %392
  %398 = load i8*, i8** %7, align 4, !dbg !3050, !tbaa !334
  %399 = load i8, i8* %398, align 1, !dbg !3051, !tbaa !2150
  %400 = zext i8 %399 to i32, !dbg !3051
  %401 = icmp eq i32 %400, 71, !dbg !3052
  br i1 %401, label %._crit_edge141, label %._crit_edge142, !dbg !3053

._crit_edge142:                                   ; preds = %397
  br label %404, !dbg !3053

._crit_edge141:                                   ; preds = %397
  br label %402, !dbg !3053

402:                                              ; preds = %._crit_edge141, %._crit_edge140
  %403 = or i32 %.8, 2048, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %403, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %404, !dbg !3055

404:                                              ; preds = %402, %._crit_edge142
  %.16 = phi i32 [ %403, %402 ], [ %.8, %._crit_edge142 ], !dbg !2809
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2712, metadata !DIExpression()), !dbg !2759
  %405 = load i8*, i8** %7, align 4, !dbg !3056, !tbaa !334
  %406 = load i8, i8* %405, align 1, !dbg !3058, !tbaa !2150
  %407 = zext i8 %406 to i32, !dbg !3058
  %408 = icmp eq i32 %407, 69, !dbg !3059
  br i1 %408, label %._crit_edge143, label %409, !dbg !3060

._crit_edge143:                                   ; preds = %404
  br label %414, !dbg !3060

409:                                              ; preds = %404
  %410 = load i8*, i8** %7, align 4, !dbg !3061, !tbaa !334
  %411 = load i8, i8* %410, align 1, !dbg !3062, !tbaa !2150
  %412 = zext i8 %411 to i32, !dbg !3062
  %413 = icmp eq i32 %412, 71, !dbg !3063
  br i1 %413, label %._crit_edge144, label %._crit_edge145, !dbg !3064

._crit_edge145:                                   ; preds = %409
  br label %416, !dbg !3064

._crit_edge144:                                   ; preds = %409
  br label %414, !dbg !3064

414:                                              ; preds = %._crit_edge144, %._crit_edge143
  %415 = or i32 %.16, 32, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %415, metadata !2712, metadata !DIExpression()), !dbg !2759
  br label %416, !dbg !3066

416:                                              ; preds = %414, %._crit_edge145
  %.17 = phi i32 [ %415, %414 ], [ %.16, %._crit_edge145 ], !dbg !3067
  call void @llvm.dbg.value(metadata i32 %.17, metadata !2712, metadata !DIExpression()), !dbg !2759
  %417 = bitcast %struct.__va_list* %6 to i8**, !dbg !3068
  %418 = load i8*, i8** %417, align 4, !dbg !3068
  %419 = ptrtoint i8* %418 to i32, !dbg !3068
  %420 = add i32 %419, 7, !dbg !3068
  %421 = and i32 %420, -8, !dbg !3068
  %422 = inttoptr i32 %421 to i8*, !dbg !3068
  %423 = getelementptr inbounds i8, i8* %422, i32 8, !dbg !3068
  store i8* %423, i8** %417, align 4, !dbg !3068
  %424 = bitcast i8* %422 to double*, !dbg !3068
  %425 = load double, double* %424, align 8, !dbg !3068
  %426 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %425, i32 %.213, i32 %.210, i32 %.17), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %426, metadata !2716, metadata !DIExpression()), !dbg !2759
  %427 = load i8*, i8** %7, align 4, !dbg !3070, !tbaa !334
  %428 = getelementptr inbounds i8, i8* %427, i32 1, !dbg !3070
  store i8* %428, i8** %7, align 4, !dbg !3070, !tbaa !334
  br label %542, !dbg !3071

429:                                              ; preds = %NodeBlock88
  call void @llvm.dbg.value(metadata i32 1, metadata !2751, metadata !DIExpression()), !dbg !3072
  %430 = and i32 %.8, 2, !dbg !3073
  %431 = icmp ne i32 %430, 0, !dbg !3073
  br i1 %431, label %._crit_edge146, label %432, !dbg !3075

._crit_edge146:                                   ; preds = %429
  br label %439, !dbg !3075

432:                                              ; preds = %429
  br label %433, !dbg !3076

433:                                              ; preds = %436, %432
  %.034 = phi i32 [ 1, %432 ], [ %434, %436 ], !dbg !3072
  %.624 = phi i32 [ %.018, %432 ], [ %437, %436 ], !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.624, metadata !2716, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.034, metadata !2751, metadata !DIExpression()), !dbg !3072
  %434 = add i32 %.034, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %434, metadata !2751, metadata !DIExpression()), !dbg !3072
  %435 = icmp ult i32 %.034, %.210, !dbg !3079
  br i1 %435, label %436, label %438, !dbg !3076

436:                                              ; preds = %433
  %437 = add i32 %.624, 1, !dbg !3080
  call void @llvm.dbg.value(metadata i32 %437, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.624, i32 %2), !dbg !3082
  br label %433, !dbg !3076, !llvm.loop !3083

438:                                              ; preds = %433
  %.624.lcssa = phi i32 [ %.624, %433 ], !dbg !2759
  %.lcssa153 = phi i32 [ %434, %433 ], !dbg !3078
  call void @llvm.dbg.value(metadata i32 %.624.lcssa, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %439, !dbg !3085

439:                                              ; preds = %438, %._crit_edge146
  %.135 = phi i32 [ 1, %._crit_edge146 ], [ %.lcssa153, %438 ], !dbg !3072
  %.725 = phi i32 [ %.018, %._crit_edge146 ], [ %.624.lcssa, %438 ], !dbg !3086
  call void @llvm.dbg.value(metadata i32 %.725, metadata !2716, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.135, metadata !2751, metadata !DIExpression()), !dbg !3072
  %440 = bitcast %struct.__va_list* %6 to i8**, !dbg !3087
  %441 = load i8*, i8** %440, align 4, !dbg !3087
  %442 = getelementptr inbounds i8, i8* %441, i32 4, !dbg !3087
  store i8* %442, i8** %440, align 4, !dbg !3087
  %443 = bitcast i8* %441 to i32*, !dbg !3087
  %444 = load i32, i32* %443, align 4, !dbg !3087
  %445 = trunc i32 %444 to i8, !dbg !3088
  %446 = add i32 %.725, 1, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %446, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext %445, i8* %1, i32 %.725, i32 %2), !dbg !3090
  %447 = and i32 %.8, 2, !dbg !3091
  %448 = icmp ne i32 %447, 0, !dbg !3091
  br i1 %448, label %449, label %._crit_edge147, !dbg !3093

._crit_edge147:                                   ; preds = %439
  br label %456, !dbg !3093

449:                                              ; preds = %439
  br label %450, !dbg !3094

450:                                              ; preds = %453, %449
  %.236 = phi i32 [ %.135, %449 ], [ %451, %453 ], !dbg !3072
  %.826 = phi i32 [ %446, %449 ], [ %454, %453 ], !dbg !3072
  call void @llvm.dbg.value(metadata i32 %.826, metadata !2716, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.236, metadata !2751, metadata !DIExpression()), !dbg !3072
  %451 = add i32 %.236, 1, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %451, metadata !2751, metadata !DIExpression()), !dbg !3072
  %452 = icmp ult i32 %.236, %.210, !dbg !3097
  br i1 %452, label %453, label %455, !dbg !3094

453:                                              ; preds = %450
  %454 = add i32 %.826, 1, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %454, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.826, i32 %2), !dbg !3100
  br label %450, !dbg !3094, !llvm.loop !3101

455:                                              ; preds = %450
  %.826.lcssa = phi i32 [ %.826, %450 ], !dbg !3072
  call void @llvm.dbg.value(metadata i32 %.826.lcssa, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %456, !dbg !3103

456:                                              ; preds = %455, %._crit_edge147
  %.927 = phi i32 [ %.826.lcssa, %455 ], [ %446, %._crit_edge147 ], !dbg !3089
  call void @llvm.dbg.value(metadata i32 %.927, metadata !2716, metadata !DIExpression()), !dbg !2759
  %457 = load i8*, i8** %7, align 4, !dbg !3104, !tbaa !334
  %458 = getelementptr inbounds i8, i8* %457, i32 1, !dbg !3104
  store i8* %458, i8** %7, align 4, !dbg !3104, !tbaa !334
  br label %542

459:                                              ; preds = %LeafBlock108
  %460 = bitcast %struct.__va_list* %6 to i8**, !dbg !3105
  %461 = load i8*, i8** %460, align 4, !dbg !3105
  %462 = getelementptr inbounds i8, i8* %461, i32 4, !dbg !3105
  store i8* %462, i8** %460, align 4, !dbg !3105
  %463 = bitcast i8* %461 to i8**, !dbg !3105
  %464 = load i8*, i8** %463, align 4, !dbg !3105
  call void @llvm.dbg.value(metadata i8* %464, metadata !2753, metadata !DIExpression()), !dbg !3106
  %465 = icmp ne i32 %.213, 0, !dbg !3107
  br i1 %465, label %466, label %467, !dbg !3107

466:                                              ; preds = %459
  br label %468, !dbg !3107

467:                                              ; preds = %459
  br label %468, !dbg !3107

468:                                              ; preds = %467, %466
  %469 = phi i32 [ %.213, %466 ], [ -1, %467 ], !dbg !3107
  %470 = call arm_aapcscc i32 @_strnlen_s(i8* %464, i32 %469), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %470, metadata !2755, metadata !DIExpression()), !dbg !3106
  %471 = and i32 %.8, 1024, !dbg !3109
  %472 = icmp ne i32 %471, 0, !dbg !3109
  br i1 %472, label %473, label %._crit_edge148, !dbg !3111

._crit_edge148:                                   ; preds = %468
  br label %479, !dbg !3111

473:                                              ; preds = %468
  %474 = icmp ult i32 %470, %.213, !dbg !3112
  br i1 %474, label %475, label %476, !dbg !3114

475:                                              ; preds = %473
  br label %477, !dbg !3114

476:                                              ; preds = %473
  br label %477, !dbg !3114

477:                                              ; preds = %476, %475
  %478 = phi i32 [ %470, %475 ], [ %.213, %476 ], !dbg !3114
  call void @llvm.dbg.value(metadata i32 %478, metadata !2755, metadata !DIExpression()), !dbg !3106
  br label %479, !dbg !3115

479:                                              ; preds = %477, %._crit_edge148
  %.01 = phi i32 [ %478, %477 ], [ %470, %._crit_edge148 ], !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2755, metadata !DIExpression()), !dbg !3106
  %480 = and i32 %.8, 2, !dbg !3116
  %481 = icmp ne i32 %480, 0, !dbg !3116
  br i1 %481, label %._crit_edge149, label %482, !dbg !3118

._crit_edge149:                                   ; preds = %479
  br label %489, !dbg !3118

482:                                              ; preds = %479
  br label %483, !dbg !3119

483:                                              ; preds = %486, %482
  %.1028 = phi i32 [ %.018, %482 ], [ %487, %486 ], !dbg !2759
  %.1 = phi i32 [ %.01, %482 ], [ %484, %486 ], !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2755, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.1028, metadata !2716, metadata !DIExpression()), !dbg !2759
  %484 = add i32 %.1, 1, !dbg !3121
  call void @llvm.dbg.value(metadata i32 %484, metadata !2755, metadata !DIExpression()), !dbg !3106
  %485 = icmp ult i32 %.1, %.210, !dbg !3122
  br i1 %485, label %486, label %488, !dbg !3119

486:                                              ; preds = %483
  %487 = add i32 %.1028, 1, !dbg !3123
  call void @llvm.dbg.value(metadata i32 %487, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1028, i32 %2), !dbg !3125
  br label %483, !dbg !3119, !llvm.loop !3126

488:                                              ; preds = %483
  %.1028.lcssa = phi i32 [ %.1028, %483 ], !dbg !2759
  %.lcssa = phi i32 [ %484, %483 ], !dbg !3121
  call void @llvm.dbg.value(metadata i32 %.1028.lcssa, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %489, !dbg !3128

489:                                              ; preds = %488, %._crit_edge149
  %.1129 = phi i32 [ %.018, %._crit_edge149 ], [ %.1028.lcssa, %488 ], !dbg !3086
  %.2 = phi i32 [ %.01, %._crit_edge149 ], [ %.lcssa, %488 ], !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2755, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.1129, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %490, !dbg !3129

490:                                              ; preds = %504, %489
  %.1230 = phi i32 [ %.1129, %489 ], [ %507, %504 ], !dbg !2759
  %.314 = phi i32 [ %.213, %489 ], [ %.516, %504 ], !dbg !2809
  %.02 = phi i8* [ %464, %489 ], [ %505, %504 ], !dbg !3106
  call void @llvm.dbg.value(metadata i8* %.02, metadata !2753, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.314, metadata !2714, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.1230, metadata !2716, metadata !DIExpression()), !dbg !2759
  %491 = load i8, i8* %.02, align 1, !dbg !3130, !tbaa !2150
  %492 = zext i8 %491 to i32, !dbg !3130
  %493 = icmp ne i32 %492, 0, !dbg !3131
  br i1 %493, label %494, label %._crit_edge150, !dbg !3132

._crit_edge150:                                   ; preds = %490
  br label %502, !dbg !3132

494:                                              ; preds = %490
  %495 = and i32 %.8, 1024, !dbg !3133
  %496 = icmp ne i32 %495, 0, !dbg !3133
  br i1 %496, label %497, label %._crit_edge151, !dbg !3134

._crit_edge151:                                   ; preds = %494
  br label %500, !dbg !3134

497:                                              ; preds = %494
  %498 = add i32 %.314, -1, !dbg !3135
  call void @llvm.dbg.value(metadata i32 %498, metadata !2714, metadata !DIExpression()), !dbg !2759
  %499 = icmp ne i32 %.314, 0, !dbg !3134
  br label %500, !dbg !3134

500:                                              ; preds = %497, %._crit_edge151
  %.415 = phi i32 [ %498, %497 ], [ %.314, %._crit_edge151 ], !dbg !2809
  %501 = phi i1 [ true, %._crit_edge151 ], [ %499, %497 ]
  call void @llvm.dbg.value(metadata i32 %.415, metadata !2714, metadata !DIExpression()), !dbg !2759
  br label %502

502:                                              ; preds = %500, %._crit_edge150
  %.516 = phi i32 [ %.415, %500 ], [ %.314, %._crit_edge150 ], !dbg !2809
  %503 = phi i1 [ false, %._crit_edge150 ], [ %501, %500 ], !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.516, metadata !2714, metadata !DIExpression()), !dbg !2759
  br i1 %503, label %504, label %508, !dbg !3129

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %505, metadata !2753, metadata !DIExpression()), !dbg !3106
  %506 = load i8, i8* %.02, align 1, !dbg !3138, !tbaa !2150
  %507 = add i32 %.1230, 1, !dbg !3139
  call void @llvm.dbg.value(metadata i32 %507, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext %506, i8* %1, i32 %.1230, i32 %2), !dbg !3140
  br label %490, !dbg !3129, !llvm.loop !3141

508:                                              ; preds = %502
  %.1230.lcssa = phi i32 [ %.1230, %502 ], !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.1230.lcssa, metadata !2716, metadata !DIExpression()), !dbg !2759
  %509 = and i32 %.8, 2, !dbg !3143
  %510 = icmp ne i32 %509, 0, !dbg !3143
  br i1 %510, label %511, label %._crit_edge152, !dbg !3145

._crit_edge152:                                   ; preds = %508
  br label %518, !dbg !3145

511:                                              ; preds = %508
  br label %512, !dbg !3146

512:                                              ; preds = %515, %511
  %.1331 = phi i32 [ %.1230.lcssa, %511 ], [ %516, %515 ], !dbg !2759
  %.3 = phi i32 [ %.2, %511 ], [ %513, %515 ], !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2755, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 %.1331, metadata !2716, metadata !DIExpression()), !dbg !2759
  %513 = add i32 %.3, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %513, metadata !2755, metadata !DIExpression()), !dbg !3106
  %514 = icmp ult i32 %.3, %.210, !dbg !3149
  br i1 %514, label %515, label %517, !dbg !3146

515:                                              ; preds = %512
  %516 = add i32 %.1331, 1, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %516, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1331, i32 %2), !dbg !3152
  br label %512, !dbg !3146, !llvm.loop !3153

517:                                              ; preds = %512
  %.1331.lcssa = phi i32 [ %.1331, %512 ], !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.1331.lcssa, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %518, !dbg !3155

518:                                              ; preds = %517, %._crit_edge152
  %.1432 = phi i32 [ %.1331.lcssa, %517 ], [ %.1230.lcssa, %._crit_edge152 ], !dbg !3086
  call void @llvm.dbg.value(metadata i32 %.1432, metadata !2716, metadata !DIExpression()), !dbg !2759
  %519 = load i8*, i8** %7, align 4, !dbg !3156, !tbaa !334
  %520 = getelementptr inbounds i8, i8* %519, i32 1, !dbg !3156
  store i8* %520, i8** %7, align 4, !dbg !3156, !tbaa !334
  br label %542

521:                                              ; preds = %LeafBlock104
  call void @llvm.dbg.value(metadata i32 8, metadata !2713, metadata !DIExpression()), !dbg !2759
  %522 = or i32 %.8, 33, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %522, metadata !2712, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 0, metadata !2756, metadata !DIExpression()), !dbg !3158
  %523 = bitcast %struct.__va_list* %6 to i8**, !dbg !3159
  %524 = load i8*, i8** %523, align 4, !dbg !3159
  %525 = getelementptr inbounds i8, i8* %524, i32 4, !dbg !3159
  store i8* %525, i8** %523, align 4, !dbg !3159
  %526 = bitcast i8* %524 to i8**, !dbg !3159
  %527 = load i8*, i8** %526, align 4, !dbg !3159
  %528 = ptrtoint i8* %527 to i32, !dbg !3162
  %529 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %528, i1 zeroext false, i32 16, i32 %.213, i32 8, i32 %522), !dbg !3163
  call void @llvm.dbg.value(metadata i32 %529, metadata !2716, metadata !DIExpression()), !dbg !2759
  %530 = load i8*, i8** %7, align 4, !dbg !3164, !tbaa !334
  %531 = getelementptr inbounds i8, i8* %530, i32 1, !dbg !3164
  store i8* %531, i8** %7, align 4, !dbg !3164, !tbaa !334
  br label %542

532:                                              ; preds = %LeafBlock74
  %533 = add i32 %.018, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %533, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext 37, i8* %1, i32 %.018, i32 %2), !dbg !3166
  %534 = load i8*, i8** %7, align 4, !dbg !3167, !tbaa !334
  %535 = getelementptr inbounds i8, i8* %534, i32 1, !dbg !3167
  store i8* %535, i8** %7, align 4, !dbg !3167, !tbaa !334
  br label %542, !dbg !3168

NewDefault73:                                     ; preds = %LeafBlock74.NewDefault73_crit_edge, %LeafBlock78.NewDefault73_crit_edge, %LeafBlock84.NewDefault73_crit_edge, %LeafBlock96.NewDefault73_crit_edge, %LeafBlock98.NewDefault73_crit_edge, %LeafBlock104.NewDefault73_crit_edge, %LeafBlock108.NewDefault73_crit_edge, %LeafBlock110.NewDefault73_crit_edge, %LeafBlock112.NewDefault73_crit_edge
  br label %536

536:                                              ; preds = %NewDefault73
  %537 = load i8*, i8** %7, align 4, !dbg !3169, !tbaa !334
  %538 = load i8, i8* %537, align 1, !dbg !3170, !tbaa !2150
  %539 = add i32 %.018, 1, !dbg !3171
  call void @llvm.dbg.value(metadata i32 %539, metadata !2716, metadata !DIExpression()), !dbg !2759
  call arm_aapcscc void %.0(i8 zeroext %538, i8* %1, i32 %.018, i32 %2), !dbg !3172
  %540 = load i8*, i8** %7, align 4, !dbg !3173, !tbaa !334
  %541 = getelementptr inbounds i8, i8* %540, i32 1, !dbg !3173
  store i8* %541, i8** %7, align 4, !dbg !3173, !tbaa !334
  br label %542, !dbg !3174

542:                                              ; preds = %536, %532, %521, %518, %456, %416, %379, %369
  %.1533 = phi i32 [ %539, %536 ], [ %533, %532 ], [ %529, %521 ], [ %.1432, %518 ], [ %.927, %456 ], [ %426, %416 ], [ %389, %379 ], [ %.523, %369 ], !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.1533, metadata !2716, metadata !DIExpression()), !dbg !2759
  br label %.backedge, !dbg !2767

543:                                              ; preds = %13
  %.018.lcssa = phi i32 [ %.018, %13 ], !dbg !2759
  call void @llvm.dbg.value(metadata i32 %.018.lcssa, metadata !2716, metadata !DIExpression()), !dbg !2759
  %544 = icmp ult i32 %.018.lcssa, %2, !dbg !3175
  br i1 %544, label %545, label %546, !dbg !3176

545:                                              ; preds = %543
  br label %548, !dbg !3176

546:                                              ; preds = %543
  %547 = sub i32 %2, 1, !dbg !3177
  br label %548, !dbg !3176

548:                                              ; preds = %546, %545
  %549 = phi i32 [ %.018.lcssa, %545 ], [ %547, %546 ], !dbg !3176
  call arm_aapcscc void %.0(i8 zeroext 0, i8* %1, i32 %549, i32 %2), !dbg !3178
  ret i32 %.018.lcssa, !dbg !3179
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_null(i8 zeroext, i8*, i32, i32) #5 !dbg !3180 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3182, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3183, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 %2, metadata !3184, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 %3, metadata !3185, metadata !DIExpression()), !dbg !3186
  ret void, !dbg !3187
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc zeroext i1 @_is_digit(i8 zeroext) #5 !dbg !3188 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3192, metadata !DIExpression()), !dbg !3193
  %2 = zext i8 %0 to i32, !dbg !3194
  %3 = icmp sge i32 %2, 48, !dbg !3195
  br i1 %3, label %4, label %._crit_edge, !dbg !3196

._crit_edge:                                      ; preds = %1
  br label %7, !dbg !3196

4:                                                ; preds = %1
  %5 = zext i8 %0 to i32, !dbg !3197
  %6 = icmp sle i32 %5, 57, !dbg !3198
  br label %7

7:                                                ; preds = %4, %._crit_edge
  %8 = phi i1 [ false, %._crit_edge ], [ %6, %4 ], !dbg !3193
  ret i1 %8, !dbg !3199
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_atoi(i8**) #0 !dbg !3200 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 0, metadata !3206, metadata !DIExpression()), !dbg !3207
  br label %2, !dbg !3208

2:                                                ; preds = %6, %1
  %.0 = phi i32 [ 0, %1 ], [ %13, %6 ], !dbg !3207
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3206, metadata !DIExpression()), !dbg !3207
  %3 = load i8*, i8** %0, align 4, !dbg !3209, !tbaa !334
  %4 = load i8, i8* %3, align 1, !dbg !3210, !tbaa !2150
  %5 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %4), !dbg !3211
  br i1 %5, label %6, label %14, !dbg !3208

6:                                                ; preds = %2
  %7 = mul i32 %.0, 10, !dbg !3212
  %8 = load i8*, i8** %0, align 4, !dbg !3214, !tbaa !334
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !3214
  store i8* %9, i8** %0, align 4, !dbg !3214, !tbaa !334
  %10 = load i8, i8* %8, align 1, !dbg !3215, !tbaa !2150
  %11 = zext i8 %10 to i32, !dbg !3215
  %12 = sub nsw i32 %11, 48, !dbg !3216
  %13 = add i32 %7, %12, !dbg !3217
  call void @llvm.dbg.value(metadata i32 %13, metadata !3206, metadata !DIExpression()), !dbg !3207
  br label %2, !dbg !3208, !llvm.loop !3218

14:                                               ; preds = %2
  %.0.lcssa = phi i32 [ %.0, %2 ], !dbg !3207
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !3206, metadata !DIExpression()), !dbg !3207
  ret i32 %.0.lcssa, !dbg !3220
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i64, i1 zeroext, i64, i32, i32, i32) #0 !dbg !3221 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3225, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8* %1, metadata !3226, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %2, metadata !3227, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %3, metadata !3228, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %4, metadata !3229, metadata !DIExpression()), !dbg !3241
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3230, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %6, metadata !3231, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %7, metadata !3232, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %8, metadata !3233, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 %9, metadata !3234, metadata !DIExpression()), !dbg !3241
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3242
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3242
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3235, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 0, metadata !3236, metadata !DIExpression()), !dbg !3241
  %14 = icmp ne i64 %4, 0, !dbg !3244
  br i1 %14, label %._crit_edge, label %15, !dbg !3246

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3246

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %16, metadata !3234, metadata !DIExpression()), !dbg !3241
  br label %17, !dbg !3249

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3234, metadata !DIExpression()), !dbg !3241
  %18 = and i32 %.01, 1024, !dbg !3250
  %19 = icmp ne i32 %18, 0, !dbg !3250
  br i1 %19, label %20, label %._crit_edge3, !dbg !3251

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3251

20:                                               ; preds = %17
  %21 = icmp ne i64 %4, 0, !dbg !3252
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3253

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3253

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3253

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3254

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i64 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3241
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3236, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %.02, metadata !3229, metadata !DIExpression()), !dbg !3241
  %24 = urem i64 %.02, %6, !dbg !3255
  %25 = trunc i64 %24 to i8, !dbg !3256
  call void @llvm.dbg.value(metadata i8 %25, metadata !3237, metadata !DIExpression()), !dbg !3257
  %26 = zext i8 %25 to i32, !dbg !3258
  %27 = icmp slt i32 %26, 10, !dbg !3259
  br i1 %27, label %28, label %31, !dbg !3258

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3260
  %30 = add nsw i32 48, %29, !dbg !3261
  br label %39, !dbg !3258

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3262
  %33 = icmp ne i32 %32, 0, !dbg !3263
  %34 = zext i1 %33 to i64, !dbg !3263
  %35 = select i1 %33, i32 65, i32 97, !dbg !3263
  %36 = zext i8 %25 to i32, !dbg !3264
  %37 = add nsw i32 %35, %36, !dbg !3265
  %38 = sub nsw i32 %37, 10, !dbg !3266
  br label %39, !dbg !3258

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3258
  %41 = trunc i32 %40 to i8, !dbg !3258
  %42 = add i32 %.0, 1, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %42, metadata !3236, metadata !DIExpression()), !dbg !3241
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3268
  store i8 %41, i8* %43, align 1, !dbg !3269, !tbaa !2150
  %44 = udiv i64 %.02, %6, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %44, metadata !3229, metadata !DIExpression()), !dbg !3241
  br label %45, !dbg !3271

45:                                               ; preds = %39
  %46 = icmp ne i64 %44, 0, !dbg !3272
  br i1 %46, label %47, label %._crit_edge6, !dbg !3273

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3273

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3274
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3275
  br i1 %50, label %._crit_edge7, label %51, !dbg !3271, !llvm.loop !3276

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3271

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3267
  br label %52, !dbg !3278

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3241
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3236, metadata !DIExpression()), !dbg !3241
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3279
  %54 = trunc i8 %12 to i1, !dbg !3280
  %55 = trunc i64 %6 to i32, !dbg !3281
  %56 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %55, i32 %7, i32 %8, i32 %.01), !dbg !3282
  %57 = bitcast [32 x i8]* %11 to i8*, !dbg !3283
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %57) #4, !dbg !3283
  ret i32 %56, !dbg !3284
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3285 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3289, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8* %1, metadata !3290, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %2, metadata !3291, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %3, metadata !3292, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %4, metadata !3293, metadata !DIExpression()), !dbg !3305
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3294, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %6, metadata !3295, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %7, metadata !3296, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %8, metadata !3297, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %9, metadata !3298, metadata !DIExpression()), !dbg !3305
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3306
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3306
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3299, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i32 0, metadata !3300, metadata !DIExpression()), !dbg !3305
  %14 = icmp ne i32 %4, 0, !dbg !3308
  br i1 %14, label %._crit_edge, label %15, !dbg !3310

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3310

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3311
  call void @llvm.dbg.value(metadata i32 %16, metadata !3298, metadata !DIExpression()), !dbg !3305
  br label %17, !dbg !3313

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3298, metadata !DIExpression()), !dbg !3305
  %18 = and i32 %.01, 1024, !dbg !3314
  %19 = icmp ne i32 %18, 0, !dbg !3314
  br i1 %19, label %20, label %._crit_edge3, !dbg !3315

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3315

20:                                               ; preds = %17
  %21 = icmp ne i32 %4, 0, !dbg !3316
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3317

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3317

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3317

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3318

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i32 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3305
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3300, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3293, metadata !DIExpression()), !dbg !3305
  %24 = urem i32 %.02, %6, !dbg !3319
  %25 = trunc i32 %24 to i8, !dbg !3320
  call void @llvm.dbg.value(metadata i8 %25, metadata !3301, metadata !DIExpression()), !dbg !3321
  %26 = zext i8 %25 to i32, !dbg !3322
  %27 = icmp slt i32 %26, 10, !dbg !3323
  br i1 %27, label %28, label %31, !dbg !3322

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3324
  %30 = add nsw i32 48, %29, !dbg !3325
  br label %39, !dbg !3322

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3326
  %33 = icmp ne i32 %32, 0, !dbg !3327
  %34 = zext i1 %33 to i64, !dbg !3327
  %35 = select i1 %33, i32 65, i32 97, !dbg !3327
  %36 = zext i8 %25 to i32, !dbg !3328
  %37 = add nsw i32 %35, %36, !dbg !3329
  %38 = sub nsw i32 %37, 10, !dbg !3330
  br label %39, !dbg !3322

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3322
  %41 = trunc i32 %40 to i8, !dbg !3322
  %42 = add i32 %.0, 1, !dbg !3331
  call void @llvm.dbg.value(metadata i32 %42, metadata !3300, metadata !DIExpression()), !dbg !3305
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3332
  store i8 %41, i8* %43, align 1, !dbg !3333, !tbaa !2150
  %44 = udiv i32 %.02, %6, !dbg !3334
  call void @llvm.dbg.value(metadata i32 %44, metadata !3293, metadata !DIExpression()), !dbg !3305
  br label %45, !dbg !3335

45:                                               ; preds = %39
  %46 = icmp ne i32 %44, 0, !dbg !3336
  br i1 %46, label %47, label %._crit_edge6, !dbg !3337

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3337

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3338
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3339
  br i1 %50, label %._crit_edge7, label %51, !dbg !3335, !llvm.loop !3340

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3335

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3331
  br label %52, !dbg !3342

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3305
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3300, metadata !DIExpression()), !dbg !3305
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3343
  %54 = trunc i8 %12 to i1, !dbg !3344
  %55 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %6, i32 %7, i32 %8, i32 %.01), !dbg !3345
  %56 = bitcast [32 x i8]* %11 to i8*, !dbg !3346
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %56) #4, !dbg !3346
  ret i32 %55, !dbg !3347
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !147 {
  %9 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !173, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %1, metadata !174, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %2, metadata !175, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %3, metadata !176, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata double %4, metadata !177, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %5, metadata !178, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %7, metadata !180, metadata !DIExpression()), !dbg !3348
  %10 = bitcast [32 x i8]* %9 to i8*, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !3349
  call void @llvm.dbg.declare(metadata [32 x i8]* %9, metadata !181, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !186, metadata !DIExpression()), !dbg !3348
  %11 = fcmp une double %4, %4, !dbg !3351
  br i1 %11, label %12, label %15, !dbg !3353

12:                                               ; preds = %8
  %13 = getelementptr [4 x i8], [4 x i8]* @.str.75, i32 0, i32 0
  %14 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %13, i32 3, i32 %6, i32 %7), !dbg !3354
  br label %200, !dbg !3355

15:                                               ; preds = %8
  %16 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3356
  br i1 %16, label %17, label %20, !dbg !3358

17:                                               ; preds = %15
  %18 = getelementptr [5 x i8], [5 x i8]* @.str.1.76, i32 0, i32 0
  %19 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %18, i32 4, i32 %6, i32 %7), !dbg !3359
  br label %200, !dbg !3360

20:                                               ; preds = %15
  %21 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3361
  br i1 %21, label %22, label %34, !dbg !3363

22:                                               ; preds = %20
  %23 = and i32 %7, 4, !dbg !3364
  %24 = icmp ne i32 %23, 0, !dbg !3365
  %25 = zext i1 %24 to i64, !dbg !3365
  %26 = getelementptr [5 x i8], [5 x i8]* @.str.2.77, i32 0, i32 0
  %27 = getelementptr [4 x i8], [4 x i8]* @.str.3.78, i32 0, i32 0
  %28 = select i1 %24, i8* %26, i8* %27, !dbg !3365
  %29 = and i32 %7, 4, !dbg !3366
  %30 = icmp ne i32 %29, 0, !dbg !3367
  %31 = zext i1 %30 to i64, !dbg !3367
  %32 = select i1 %30, i32 4, i32 3, !dbg !3367
  %33 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %28, i32 %32, i32 %6, i32 %7), !dbg !3368
  br label %200, !dbg !3369

34:                                               ; preds = %20
  %35 = fcmp ogt double %4, 1.000000e+09, !dbg !3370
  br i1 %35, label %._crit_edge, label %36, !dbg !3372

._crit_edge:                                      ; preds = %34
  br label %38, !dbg !3372

36:                                               ; preds = %34
  %37 = fcmp olt double %4, -1.000000e+09, !dbg !3373
  br i1 %37, label %._crit_edge23, label %40, !dbg !3374

._crit_edge23:                                    ; preds = %36
  br label %38, !dbg !3374

38:                                               ; preds = %._crit_edge23, %._crit_edge
  %39 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3375
  br label %200, !dbg !3377

40:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !3348
  %41 = fcmp olt double %4, 0.000000e+00, !dbg !3378
  br i1 %41, label %42, label %._crit_edge24, !dbg !3380

._crit_edge24:                                    ; preds = %40
  br label %44, !dbg !3380

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8 1, metadata !187, metadata !DIExpression()), !dbg !3348
  %43 = fsub double 0.000000e+00, %4, !dbg !3381
  call void @llvm.dbg.value(metadata double %43, metadata !177, metadata !DIExpression()), !dbg !3348
  br label %44, !dbg !3383

44:                                               ; preds = %42, %._crit_edge24
  %.012 = phi double [ %43, %42 ], [ %4, %._crit_edge24 ]
  %.011 = phi i8 [ 1, %42 ], [ 0, %._crit_edge24 ], !dbg !3348
  call void @llvm.dbg.value(metadata i8 %.011, metadata !187, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata double %.012, metadata !177, metadata !DIExpression()), !dbg !3348
  %45 = and i32 %7, 1024, !dbg !3384
  %46 = icmp ne i32 %45, 0, !dbg !3384
  br i1 %46, label %._crit_edge25, label %47, !dbg !3386

._crit_edge25:                                    ; preds = %44
  br label %48, !dbg !3386

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 6, metadata !178, metadata !DIExpression()), !dbg !3348
  br label %48, !dbg !3387

48:                                               ; preds = %47, %._crit_edge25
  %.013 = phi i32 [ %5, %._crit_edge25 ], [ 6, %47 ]
  call void @llvm.dbg.value(metadata i32 %.013, metadata !178, metadata !DIExpression()), !dbg !3348
  br label %49, !dbg !3389

49:                                               ; preds = %55, %48
  %.017 = phi i32 [ 0, %48 ], [ %56, %55 ], !dbg !3348
  %.114 = phi i32 [ %.013, %48 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i32 %.114, metadata !178, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.017, metadata !185, metadata !DIExpression()), !dbg !3348
  %50 = icmp ult i32 %.017, 32, !dbg !3390
  br i1 %50, label %51, label %._crit_edge26, !dbg !3391

._crit_edge26:                                    ; preds = %49
  br label %53, !dbg !3391

51:                                               ; preds = %49
  %52 = icmp ugt i32 %.114, 9, !dbg !3392
  br label %53

53:                                               ; preds = %51, %._crit_edge26
  %54 = phi i1 [ false, %._crit_edge26 ], [ %52, %51 ], !dbg !3348
  br i1 %54, label %55, label %59, !dbg !3389

55:                                               ; preds = %53
  %56 = add i32 %.017, 1, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %56, metadata !185, metadata !DIExpression()), !dbg !3348
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.017, !dbg !3395
  store i8 48, i8* %57, align 1, !dbg !3396, !tbaa !2150
  %58 = add i32 %.114, -1, !dbg !3397
  call void @llvm.dbg.value(metadata i32 %58, metadata !178, metadata !DIExpression()), !dbg !3348
  br label %49, !dbg !3389, !llvm.loop !3398

59:                                               ; preds = %53
  %.017.lcssa = phi i32 [ %.017, %53 ], !dbg !3348
  %.114.lcssa = phi i32 [ %.114, %53 ]
  call void @llvm.dbg.value(metadata i32 %.017.lcssa, metadata !185, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !178, metadata !DIExpression()), !dbg !3348
  %60 = fptosi double %.012 to i32, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %60, metadata !189, metadata !DIExpression()), !dbg !3348
  %61 = sitofp i32 %60 to double, !dbg !3401
  %62 = fsub double %.012, %61, !dbg !3402
  %63 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3403
  %64 = load double, double* %63, align 8, !dbg !3403, !tbaa !3404
  %65 = fmul double %62, %64, !dbg !3406
  call void @llvm.dbg.value(metadata double %65, metadata !190, metadata !DIExpression()), !dbg !3348
  %66 = fptoui double %65 to i32, !dbg !3407
  call void @llvm.dbg.value(metadata i32 %66, metadata !191, metadata !DIExpression()), !dbg !3348
  %67 = uitofp i32 %66 to double, !dbg !3408
  %68 = fsub double %65, %67, !dbg !3409
  call void @llvm.dbg.value(metadata double %68, metadata !186, metadata !DIExpression()), !dbg !3348
  %69 = fcmp ogt double %68, 5.000000e-01, !dbg !3410
  br i1 %69, label %70, label %79, !dbg !3412

70:                                               ; preds = %59
  %71 = add i32 %66, 1, !dbg !3413
  call void @llvm.dbg.value(metadata i32 %71, metadata !191, metadata !DIExpression()), !dbg !3348
  %72 = uitofp i32 %71 to double, !dbg !3415
  %73 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3417
  %74 = load double, double* %73, align 8, !dbg !3417, !tbaa !3404
  %75 = fcmp oge double %72, %74, !dbg !3418
  br i1 %75, label %76, label %._crit_edge27, !dbg !3419

._crit_edge27:                                    ; preds = %70
  br label %78, !dbg !3419

76:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !3348
  %77 = add nsw i32 %60, 1, !dbg !3420
  call void @llvm.dbg.value(metadata i32 %77, metadata !189, metadata !DIExpression()), !dbg !3348
  br label %78, !dbg !3422

78:                                               ; preds = %76, %._crit_edge27
  %.06 = phi i32 [ %77, %76 ], [ %60, %._crit_edge27 ], !dbg !3348
  %.02 = phi i32 [ 0, %76 ], [ %71, %._crit_edge27 ], !dbg !3423
  call void @llvm.dbg.value(metadata i32 %.02, metadata !191, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.06, metadata !189, metadata !DIExpression()), !dbg !3348
  br label %91, !dbg !3424

79:                                               ; preds = %59
  %80 = fcmp olt double %68, 5.000000e-01, !dbg !3425
  br i1 %80, label %81, label %82, !dbg !3427

81:                                               ; preds = %79
  br label %90, !dbg !3428

82:                                               ; preds = %79
  %83 = icmp eq i32 %66, 0, !dbg !3430
  br i1 %83, label %._crit_edge28, label %84, !dbg !3432

._crit_edge28:                                    ; preds = %82
  br label %87, !dbg !3432

84:                                               ; preds = %82
  %85 = and i32 %66, 1, !dbg !3433
  %86 = icmp ne i32 %85, 0, !dbg !3433
  br i1 %86, label %._crit_edge29, label %._crit_edge30, !dbg !3434

._crit_edge30:                                    ; preds = %84
  br label %89, !dbg !3434

._crit_edge29:                                    ; preds = %84
  br label %87, !dbg !3434

87:                                               ; preds = %._crit_edge29, %._crit_edge28
  %88 = add i32 %66, 1, !dbg !3435
  call void @llvm.dbg.value(metadata i32 %88, metadata !191, metadata !DIExpression()), !dbg !3348
  br label %89, !dbg !3437

89:                                               ; preds = %87, %._crit_edge30
  %.13 = phi i32 [ %88, %87 ], [ %66, %._crit_edge30 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.13, metadata !191, metadata !DIExpression()), !dbg !3348
  br label %90

90:                                               ; preds = %89, %81
  %.24 = phi i32 [ %66, %81 ], [ %.13, %89 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.24, metadata !191, metadata !DIExpression()), !dbg !3348
  br label %91

91:                                               ; preds = %90, %78
  %.17 = phi i32 [ %.06, %78 ], [ %60, %90 ], !dbg !3348
  %.35 = phi i32 [ %.02, %78 ], [ %.24, %90 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.35, metadata !191, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.17, metadata !189, metadata !DIExpression()), !dbg !3348
  %92 = icmp eq i32 %.114.lcssa, 0, !dbg !3438
  br i1 %92, label %93, label %105, !dbg !3439

93:                                               ; preds = %91
  %94 = sitofp i32 %.17 to double, !dbg !3440
  %95 = fsub double %.012, %94, !dbg !3442
  call void @llvm.dbg.value(metadata double %95, metadata !186, metadata !DIExpression()), !dbg !3348
  %96 = fcmp olt double %95, 5.000000e-01, !dbg !3443
  br i1 %96, label %97, label %._crit_edge31, !dbg !3445

._crit_edge31:                                    ; preds = %93
  br label %99, !dbg !3445

97:                                               ; preds = %93
  %98 = fcmp ogt double %95, 5.000000e-01, !dbg !3446
  br i1 %98, label %._crit_edge32, label %._crit_edge33, !dbg !3447

._crit_edge33:                                    ; preds = %97
  br label %104, !dbg !3447

._crit_edge32:                                    ; preds = %97
  br label %99, !dbg !3447

99:                                               ; preds = %._crit_edge32, %._crit_edge31
  %100 = and i32 %.17, 1, !dbg !3448
  %101 = icmp ne i32 %100, 0, !dbg !3448
  br i1 %101, label %102, label %._crit_edge34, !dbg !3449

._crit_edge34:                                    ; preds = %99
  br label %104, !dbg !3449

102:                                              ; preds = %99
  %103 = add nsw i32 %.17, 1, !dbg !3450
  call void @llvm.dbg.value(metadata i32 %103, metadata !189, metadata !DIExpression()), !dbg !3348
  br label %104, !dbg !3452

104:                                              ; preds = %102, %._crit_edge34, %._crit_edge33
  %.28 = phi i32 [ %103, %102 ], [ %.17, %._crit_edge34 ], [ %.17, %._crit_edge33 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.28, metadata !189, metadata !DIExpression()), !dbg !3348
  br label %136, !dbg !3453

105:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !192, metadata !DIExpression()), !dbg !3454
  br label %106, !dbg !3455

106:                                              ; preds = %118, %105
  %.118 = phi i32 [ %.017.lcssa, %105 ], [ %113, %118 ], !dbg !3348
  %.4 = phi i32 [ %.35, %105 ], [ %115, %118 ], !dbg !3348
  %.01 = phi i32 [ %.114.lcssa, %105 ], [ %109, %118 ], !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.01, metadata !192, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.4, metadata !191, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.118, metadata !185, metadata !DIExpression()), !dbg !3348
  %107 = icmp ult i32 %.118, 32, !dbg !3456
  br i1 %107, label %108, label %._crit_edge35, !dbg !3455

._crit_edge35:                                    ; preds = %106
  %.118.lcssa = phi i32 [ %.118, %106 ], !dbg !3348
  %.01.lcssa = phi i32 [ %.01, %106 ], !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.118.lcssa, metadata !185, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !192, metadata !DIExpression()), !dbg !3454
  br label %119, !dbg !3455

108:                                              ; preds = %106
  %109 = add i32 %.01, -1, !dbg !3457
  call void @llvm.dbg.value(metadata i32 %109, metadata !192, metadata !DIExpression()), !dbg !3454
  %110 = urem i32 %.4, 10, !dbg !3459
  %111 = add i32 48, %110, !dbg !3460
  %112 = trunc i32 %111 to i8, !dbg !3461
  %113 = add i32 %.118, 1, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %113, metadata !185, metadata !DIExpression()), !dbg !3348
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.118, !dbg !3463
  store i8 %112, i8* %114, align 1, !dbg !3464, !tbaa !2150
  %115 = udiv i32 %.4, 10, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %115, metadata !191, metadata !DIExpression()), !dbg !3348
  %116 = icmp ne i32 %115, 0, !dbg !3465
  br i1 %116, label %118, label %117, !dbg !3467

117:                                              ; preds = %108
  %.lcssa52 = phi i32 [ %109, %108 ], !dbg !3457
  %.lcssa51 = phi i32 [ %113, %108 ], !dbg !3462
  br label %119, !dbg !3468

118:                                              ; preds = %108
  br label %106, !dbg !3455, !llvm.loop !3470

119:                                              ; preds = %117, %._crit_edge35
  %.219 = phi i32 [ %.lcssa51, %117 ], [ %.118.lcssa, %._crit_edge35 ], !dbg !3348
  %.1 = phi i32 [ %.lcssa52, %117 ], [ %.01.lcssa, %._crit_edge35 ], !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.1, metadata !192, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.219, metadata !185, metadata !DIExpression()), !dbg !3348
  br label %120, !dbg !3472

120:                                              ; preds = %127, %119
  %.320 = phi i32 [ %.219, %119 ], [ %128, %127 ], !dbg !3454
  %.2 = phi i32 [ %.1, %119 ], [ %.3, %127 ], !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.2, metadata !192, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.320, metadata !185, metadata !DIExpression()), !dbg !3348
  %121 = icmp ult i32 %.320, 32, !dbg !3473
  br i1 %121, label %122, label %._crit_edge36, !dbg !3474

._crit_edge36:                                    ; preds = %120
  br label %125, !dbg !3474

122:                                              ; preds = %120
  %123 = add i32 %.2, -1, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %123, metadata !192, metadata !DIExpression()), !dbg !3454
  %124 = icmp ugt i32 %.2, 0, !dbg !3476
  br label %125

125:                                              ; preds = %122, %._crit_edge36
  %.3 = phi i32 [ %123, %122 ], [ %.2, %._crit_edge36 ], !dbg !3454
  %126 = phi i1 [ false, %._crit_edge36 ], [ %124, %122 ], !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.3, metadata !192, metadata !DIExpression()), !dbg !3454
  br i1 %126, label %127, label %130, !dbg !3472

127:                                              ; preds = %125
  %128 = add i32 %.320, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %128, metadata !185, metadata !DIExpression()), !dbg !3348
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320, !dbg !3479
  store i8 48, i8* %129, align 1, !dbg !3480, !tbaa !2150
  br label %120, !dbg !3472, !llvm.loop !3481

130:                                              ; preds = %125
  %.320.lcssa = phi i32 [ %.320, %125 ], !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.320.lcssa, metadata !185, metadata !DIExpression()), !dbg !3348
  %131 = icmp ult i32 %.320.lcssa, 32, !dbg !3483
  br i1 %131, label %132, label %._crit_edge37, !dbg !3485

._crit_edge37:                                    ; preds = %130
  br label %135, !dbg !3485

132:                                              ; preds = %130
  %133 = add i32 %.320.lcssa, 1, !dbg !3486
  call void @llvm.dbg.value(metadata i32 %133, metadata !185, metadata !DIExpression()), !dbg !3348
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320.lcssa, !dbg !3488
  store i8 46, i8* %134, align 1, !dbg !3489, !tbaa !2150
  br label %135, !dbg !3490

135:                                              ; preds = %132, %._crit_edge37
  %.421 = phi i32 [ %133, %132 ], [ %.320.lcssa, %._crit_edge37 ], !dbg !3454
  call void @llvm.dbg.value(metadata i32 %.421, metadata !185, metadata !DIExpression()), !dbg !3348
  br label %136

136:                                              ; preds = %135, %104
  %.5 = phi i32 [ %.017.lcssa, %104 ], [ %.421, %135 ], !dbg !3348
  %.39 = phi i32 [ %.28, %104 ], [ %.17, %135 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.39, metadata !189, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.5, metadata !185, metadata !DIExpression()), !dbg !3348
  br label %137, !dbg !3491

137:                                              ; preds = %148, %136
  %.6 = phi i32 [ %.5, %136 ], [ %143, %148 ], !dbg !3348
  %.410 = phi i32 [ %.39, %136 ], [ %145, %148 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.410, metadata !189, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.6, metadata !185, metadata !DIExpression()), !dbg !3348
  %138 = icmp ult i32 %.6, 32, !dbg !3492
  br i1 %138, label %139, label %._crit_edge38, !dbg !3491

._crit_edge38:                                    ; preds = %137
  %.6.lcssa = phi i32 [ %.6, %137 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.6.lcssa, metadata !185, metadata !DIExpression()), !dbg !3348
  br label %149, !dbg !3491

139:                                              ; preds = %137
  %140 = srem i32 %.410, 10, !dbg !3493
  %141 = add nsw i32 48, %140, !dbg !3495
  %142 = trunc i32 %141 to i8, !dbg !3496
  %143 = add i32 %.6, 1, !dbg !3497
  call void @llvm.dbg.value(metadata i32 %143, metadata !185, metadata !DIExpression()), !dbg !3348
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.6, !dbg !3498
  store i8 %142, i8* %144, align 1, !dbg !3499, !tbaa !2150
  %145 = sdiv i32 %.410, 10, !dbg !3500
  call void @llvm.dbg.value(metadata i32 %145, metadata !189, metadata !DIExpression()), !dbg !3348
  %146 = icmp ne i32 %145, 0, !dbg !3500
  br i1 %146, label %148, label %147, !dbg !3502

147:                                              ; preds = %139
  %.lcssa = phi i32 [ %143, %139 ], !dbg !3497
  br label %149, !dbg !3503

148:                                              ; preds = %139
  br label %137, !dbg !3491, !llvm.loop !3505

149:                                              ; preds = %147, %._crit_edge38
  %.7 = phi i32 [ %.lcssa, %147 ], [ %.6.lcssa, %._crit_edge38 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.7, metadata !185, metadata !DIExpression()), !dbg !3348
  %150 = and i32 %7, 2, !dbg !3507
  %151 = icmp ne i32 %150, 0, !dbg !3507
  br i1 %151, label %._crit_edge39, label %152, !dbg !3509

._crit_edge39:                                    ; preds = %149
  br label %175, !dbg !3509

152:                                              ; preds = %149
  %153 = and i32 %7, 1, !dbg !3510
  %154 = icmp ne i32 %153, 0, !dbg !3510
  br i1 %154, label %155, label %._crit_edge40, !dbg !3511

._crit_edge40:                                    ; preds = %152
  br label %175, !dbg !3511

155:                                              ; preds = %152
  %156 = icmp ne i32 %6, 0, !dbg !3512
  br i1 %156, label %157, label %._crit_edge41, !dbg !3515

._crit_edge41:                                    ; preds = %155
  br label %164, !dbg !3515

157:                                              ; preds = %155
  %158 = trunc i8 %.011 to i1, !dbg !3516
  br i1 %158, label %._crit_edge42, label %159, !dbg !3517

._crit_edge42:                                    ; preds = %157
  br label %162, !dbg !3517

159:                                              ; preds = %157
  %160 = and i32 %7, 12, !dbg !3518
  %161 = icmp ne i32 %160, 0, !dbg !3518
  br i1 %161, label %._crit_edge43, label %._crit_edge44, !dbg !3519

._crit_edge44:                                    ; preds = %159
  br label %164, !dbg !3519

._crit_edge43:                                    ; preds = %159
  br label %162, !dbg !3519

162:                                              ; preds = %._crit_edge43, %._crit_edge42
  %163 = add i32 %6, -1, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %163, metadata !179, metadata !DIExpression()), !dbg !3348
  br label %164, !dbg !3522

164:                                              ; preds = %162, %._crit_edge44, %._crit_edge41
  %.015 = phi i32 [ %163, %162 ], [ %6, %._crit_edge44 ], [ %6, %._crit_edge41 ]
  call void @llvm.dbg.value(metadata i32 %.015, metadata !179, metadata !DIExpression()), !dbg !3348
  br label %165, !dbg !3523

165:                                              ; preds = %171, %164
  %.8 = phi i32 [ %.7, %164 ], [ %172, %171 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.8, metadata !185, metadata !DIExpression()), !dbg !3348
  %166 = icmp ult i32 %.8, %.015, !dbg !3524
  br i1 %166, label %167, label %._crit_edge45, !dbg !3525

._crit_edge45:                                    ; preds = %165
  br label %169, !dbg !3525

167:                                              ; preds = %165
  %168 = icmp ult i32 %.8, 32, !dbg !3526
  br label %169

169:                                              ; preds = %167, %._crit_edge45
  %170 = phi i1 [ false, %._crit_edge45 ], [ %168, %167 ], !dbg !3527
  br i1 %170, label %171, label %174, !dbg !3523

171:                                              ; preds = %169
  %172 = add i32 %.8, 1, !dbg !3528
  call void @llvm.dbg.value(metadata i32 %172, metadata !185, metadata !DIExpression()), !dbg !3348
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.8, !dbg !3530
  store i8 48, i8* %173, align 1, !dbg !3531, !tbaa !2150
  br label %165, !dbg !3523, !llvm.loop !3532

174:                                              ; preds = %169
  %.8.lcssa = phi i32 [ %.8, %169 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.8.lcssa, metadata !185, metadata !DIExpression()), !dbg !3348
  br label %175, !dbg !3534

175:                                              ; preds = %174, %._crit_edge40, %._crit_edge39
  %.9 = phi i32 [ %.7, %._crit_edge39 ], [ %.8.lcssa, %174 ], [ %.7, %._crit_edge40 ], !dbg !3497
  %.116 = phi i32 [ %6, %._crit_edge39 ], [ %.015, %174 ], [ %6, %._crit_edge40 ]
  call void @llvm.dbg.value(metadata i32 %.116, metadata !179, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.9, metadata !185, metadata !DIExpression()), !dbg !3348
  %176 = icmp ult i32 %.9, 32, !dbg !3535
  br i1 %176, label %177, label %._crit_edge46, !dbg !3537

._crit_edge46:                                    ; preds = %175
  br label %197, !dbg !3537

177:                                              ; preds = %175
  %178 = trunc i8 %.011 to i1, !dbg !3538
  br i1 %178, label %179, label %182, !dbg !3541

179:                                              ; preds = %177
  %180 = add i32 %.9, 1, !dbg !3542
  call void @llvm.dbg.value(metadata i32 %180, metadata !185, metadata !DIExpression()), !dbg !3348
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3544
  store i8 45, i8* %181, align 1, !dbg !3545, !tbaa !2150
  br label %196, !dbg !3546

182:                                              ; preds = %177
  %183 = and i32 %7, 4, !dbg !3547
  %184 = icmp ne i32 %183, 0, !dbg !3547
  br i1 %184, label %185, label %188, !dbg !3549

185:                                              ; preds = %182
  %186 = add i32 %.9, 1, !dbg !3550
  call void @llvm.dbg.value(metadata i32 %186, metadata !185, metadata !DIExpression()), !dbg !3348
  %187 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3552
  store i8 43, i8* %187, align 1, !dbg !3553, !tbaa !2150
  br label %195, !dbg !3554

188:                                              ; preds = %182
  %189 = and i32 %7, 8, !dbg !3555
  %190 = icmp ne i32 %189, 0, !dbg !3555
  br i1 %190, label %191, label %._crit_edge47, !dbg !3557

._crit_edge47:                                    ; preds = %188
  br label %194, !dbg !3557

191:                                              ; preds = %188
  %192 = add i32 %.9, 1, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %192, metadata !185, metadata !DIExpression()), !dbg !3348
  %193 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3560
  store i8 32, i8* %193, align 1, !dbg !3561, !tbaa !2150
  br label %194, !dbg !3562

194:                                              ; preds = %191, %._crit_edge47
  %.10 = phi i32 [ %192, %191 ], [ %.9, %._crit_edge47 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.10, metadata !185, metadata !DIExpression()), !dbg !3348
  br label %195

195:                                              ; preds = %194, %185
  %.11 = phi i32 [ %186, %185 ], [ %.10, %194 ], !dbg !3563
  call void @llvm.dbg.value(metadata i32 %.11, metadata !185, metadata !DIExpression()), !dbg !3348
  br label %196

196:                                              ; preds = %195, %179
  %.12 = phi i32 [ %180, %179 ], [ %.11, %195 ], !dbg !3564
  call void @llvm.dbg.value(metadata i32 %.12, metadata !185, metadata !DIExpression()), !dbg !3348
  br label %197, !dbg !3565

197:                                              ; preds = %196, %._crit_edge46
  %.1322 = phi i32 [ %.12, %196 ], [ %.9, %._crit_edge46 ], !dbg !3348
  call void @llvm.dbg.value(metadata i32 %.1322, metadata !185, metadata !DIExpression()), !dbg !3348
  %198 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0, !dbg !3566
  %199 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %198, i32 %.1322, i32 %.116, i32 %7), !dbg !3567
  br label %200

200:                                              ; preds = %197, %38, %22, %17, %12
  %.0 = phi i32 [ %14, %12 ], [ %19, %17 ], [ %33, %22 ], [ %39, %38 ], [ %199, %197 ], !dbg !3348
  %201 = bitcast [32 x i8]* %9 to i8*, !dbg !3568
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %201) #4, !dbg !3568
  ret i32 %.0, !dbg !3568
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !3569 {
  %9 = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3571, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8* %1, metadata !3572, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %2, metadata !3573, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %3, metadata !3574, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata double %4, metadata !3575, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %5, metadata !3576, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %6, metadata !3577, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %7, metadata !3578, metadata !DIExpression()), !dbg !3592
  %10 = fcmp une double %4, %4, !dbg !3593
  br i1 %10, label %._crit_edge, label %11, !dbg !3595

._crit_edge:                                      ; preds = %8
  br label %15, !dbg !3595

11:                                               ; preds = %8
  %12 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3596
  br i1 %12, label %._crit_edge16, label %13, !dbg !3597

._crit_edge16:                                    ; preds = %11
  br label %15, !dbg !3597

13:                                               ; preds = %11
  %14 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3598
  br i1 %14, label %._crit_edge17, label %17, !dbg !3599

._crit_edge17:                                    ; preds = %13
  br label %15, !dbg !3599

15:                                               ; preds = %._crit_edge17, %._crit_edge16, %._crit_edge
  %16 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3600
  br label %171, !dbg !3602

17:                                               ; preds = %13
  %18 = fcmp olt double %4, 0.000000e+00, !dbg !3603
  %19 = zext i1 %18 to i8, !dbg !3604
  call void @llvm.dbg.value(metadata i8 %19, metadata !3579, metadata !DIExpression()), !dbg !3592
  %20 = trunc i8 %19 to i1, !dbg !3605
  br i1 %20, label %21, label %._crit_edge18, !dbg !3607

._crit_edge18:                                    ; preds = %17
  br label %23, !dbg !3607

21:                                               ; preds = %17
  %22 = fsub double -0.000000e+00, %4, !dbg !3608
  call void @llvm.dbg.value(metadata double %22, metadata !3575, metadata !DIExpression()), !dbg !3592
  br label %23, !dbg !3610

23:                                               ; preds = %21, %._crit_edge18
  %.09 = phi double [ %22, %21 ], [ %4, %._crit_edge18 ]
  call void @llvm.dbg.value(metadata double %.09, metadata !3575, metadata !DIExpression()), !dbg !3592
  %24 = and i32 %7, 1024, !dbg !3611
  %25 = icmp ne i32 %24, 0, !dbg !3611
  br i1 %25, label %._crit_edge19, label %26, !dbg !3613

._crit_edge19:                                    ; preds = %23
  br label %27, !dbg !3613

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 6, metadata !3576, metadata !DIExpression()), !dbg !3592
  br label %27, !dbg !3614

27:                                               ; preds = %26, %._crit_edge19
  %.011 = phi i32 [ %5, %._crit_edge19 ], [ 6, %26 ]
  call void @llvm.dbg.value(metadata i32 %.011, metadata !3576, metadata !DIExpression()), !dbg !3592
  %28 = bitcast %union.anon* %9 to i8*, !dbg !3616
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #4, !dbg !3616
  call void @llvm.dbg.declare(metadata %union.anon* %9, metadata !3580, metadata !DIExpression()), !dbg !3617
  %29 = bitcast %union.anon* %9 to double*, !dbg !3618
  store double %.09, double* %29, align 8, !dbg !3619, !tbaa !2150
  %30 = bitcast %union.anon* %9 to i64*, !dbg !3620
  %31 = load i64, i64* %30, align 8, !dbg !3620, !tbaa !2150
  %32 = lshr i64 %31, 52, !dbg !3621
  %33 = and i64 %32, 2047, !dbg !3622
  %34 = trunc i64 %33 to i32, !dbg !3623
  %35 = sub nsw i32 %34, 1023, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %35, metadata !3585, metadata !DIExpression()), !dbg !3592
  %36 = bitcast %union.anon* %9 to i64*, !dbg !3625
  %37 = load i64, i64* %36, align 8, !dbg !3625, !tbaa !2150
  %38 = and i64 %37, 4503599627370495, !dbg !3626
  %39 = or i64 %38, 4607182418800017408, !dbg !3627
  %40 = bitcast %union.anon* %9 to i64*, !dbg !3628
  store i64 %39, i64* %40, align 8, !dbg !3629, !tbaa !2150
  %41 = sitofp i32 %35 to double, !dbg !3630
  %42 = fmul double %41, 0x3FD34413509F79FB, !dbg !3631
  %43 = fadd double 0x3FC68A288B60C8B3, %42, !dbg !3632
  %44 = bitcast %union.anon* %9 to double*, !dbg !3633
  %45 = load double, double* %44, align 8, !dbg !3633, !tbaa !2150
  %46 = fsub double %45, 1.500000e+00, !dbg !3634
  %47 = fmul double %46, 0x3FD287A7636F4361, !dbg !3635
  %48 = fadd double %43, %47, !dbg !3636
  %49 = fptosi double %48 to i32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 %49, metadata !3586, metadata !DIExpression()), !dbg !3592
  %50 = sitofp i32 %49 to double, !dbg !3638
  %51 = fmul double %50, 0x400A934F0979A371, !dbg !3639
  %52 = fadd double %51, 5.000000e-01, !dbg !3640
  %53 = fptosi double %52 to i32, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %53, metadata !3585, metadata !DIExpression()), !dbg !3592
  %54 = sitofp i32 %49 to double, !dbg !3642
  %55 = fmul double %54, 0x40026BB1BBB55516, !dbg !3643
  %56 = sitofp i32 %53 to double, !dbg !3644
  %57 = fmul double %56, 0x3FE62E42FEFA39EF, !dbg !3645
  %58 = fsub double %55, %57, !dbg !3646
  call void @llvm.dbg.value(metadata double %58, metadata !3587, metadata !DIExpression()), !dbg !3592
  %59 = fmul double %58, %58, !dbg !3647
  call void @llvm.dbg.value(metadata double %59, metadata !3588, metadata !DIExpression()), !dbg !3592
  %60 = add nsw i32 %53, 1023, !dbg !3648
  %61 = sext i32 %60 to i64, !dbg !3649
  %62 = shl i64 %61, 52, !dbg !3650
  %63 = bitcast %union.anon* %9 to i64*, !dbg !3651
  store i64 %62, i64* %63, align 8, !dbg !3652, !tbaa !2150
  %64 = fmul double 2.000000e+00, %58, !dbg !3653
  %65 = fsub double 2.000000e+00, %58, !dbg !3654
  %66 = fdiv double %59, 1.400000e+01, !dbg !3655
  %67 = fadd double 1.000000e+01, %66, !dbg !3656
  %68 = fdiv double %59, %67, !dbg !3657
  %69 = fadd double 6.000000e+00, %68, !dbg !3658
  %70 = fdiv double %59, %69, !dbg !3659
  %71 = fadd double %65, %70, !dbg !3660
  %72 = fdiv double %64, %71, !dbg !3661
  %73 = fadd double 1.000000e+00, %72, !dbg !3662
  %74 = bitcast %union.anon* %9 to double*, !dbg !3663
  %75 = load double, double* %74, align 8, !dbg !3664, !tbaa !2150
  %76 = fmul double %75, %73, !dbg !3664
  store double %76, double* %74, align 8, !dbg !3664, !tbaa !2150
  %77 = bitcast %union.anon* %9 to double*, !dbg !3665
  %78 = load double, double* %77, align 8, !dbg !3665, !tbaa !2150
  %79 = fcmp olt double %.09, %78, !dbg !3667
  br i1 %79, label %80, label %._crit_edge20, !dbg !3668

._crit_edge20:                                    ; preds = %27
  br label %85, !dbg !3668

80:                                               ; preds = %27
  %81 = add nsw i32 %49, -1, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %81, metadata !3586, metadata !DIExpression()), !dbg !3592
  %82 = bitcast %union.anon* %9 to double*, !dbg !3671
  %83 = load double, double* %82, align 8, !dbg !3672, !tbaa !2150
  %84 = fdiv double %83, 1.000000e+01, !dbg !3672
  store double %84, double* %82, align 8, !dbg !3672, !tbaa !2150
  br label %85, !dbg !3673

85:                                               ; preds = %80, %._crit_edge20
  %.06 = phi i32 [ %81, %80 ], [ %49, %._crit_edge20 ], !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3586, metadata !DIExpression()), !dbg !3592
  %86 = icmp slt i32 %.06, 100, !dbg !3674
  br i1 %86, label %87, label %._crit_edge21, !dbg !3675

._crit_edge21:                                    ; preds = %85
  br label %89, !dbg !3675

87:                                               ; preds = %85
  %88 = icmp sgt i32 %.06, -100, !dbg !3676
  br label %89

89:                                               ; preds = %87, %._crit_edge21
  %90 = phi i1 [ false, %._crit_edge21 ], [ %88, %87 ], !dbg !3592
  %91 = zext i1 %90 to i64, !dbg !3677
  %92 = select i1 %90, i32 4, i32 5, !dbg !3677
  call void @llvm.dbg.value(metadata i32 %92, metadata !3589, metadata !DIExpression()), !dbg !3592
  %93 = and i32 %7, 2048, !dbg !3678
  %94 = icmp ne i32 %93, 0, !dbg !3678
  br i1 %94, label %95, label %._crit_edge22, !dbg !3680

._crit_edge22:                                    ; preds = %89
  br label %116, !dbg !3680

95:                                               ; preds = %89
  %96 = fcmp oge double %.09, 1.000000e-04, !dbg !3681
  br i1 %96, label %97, label %._crit_edge23, !dbg !3684

._crit_edge23:                                    ; preds = %95
  br label %107, !dbg !3684

97:                                               ; preds = %95
  %98 = fcmp olt double %.09, 1.000000e+06, !dbg !3685
  br i1 %98, label %99, label %._crit_edge24, !dbg !3686

._crit_edge24:                                    ; preds = %97
  br label %107, !dbg !3686

99:                                               ; preds = %97
  %100 = icmp sgt i32 %.011, %.06, !dbg !3687
  br i1 %100, label %101, label %104, !dbg !3690

101:                                              ; preds = %99
  %102 = sub nsw i32 %.011, %.06, !dbg !3691
  %103 = sub nsw i32 %102, 1, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %103, metadata !3576, metadata !DIExpression()), !dbg !3592
  br label %105, !dbg !3694

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 0, metadata !3576, metadata !DIExpression()), !dbg !3592
  br label %105

105:                                              ; preds = %104, %101
  %.112 = phi i32 [ %103, %101 ], [ 0, %104 ], !dbg !3695
  call void @llvm.dbg.value(metadata i32 %.112, metadata !3576, metadata !DIExpression()), !dbg !3592
  %106 = or i32 %7, 1024, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %106, metadata !3578, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3586, metadata !DIExpression()), !dbg !3592
  br label %115, !dbg !3697

107:                                              ; preds = %._crit_edge24, %._crit_edge23
  %108 = icmp ugt i32 %.011, 0, !dbg !3698
  br i1 %108, label %109, label %._crit_edge25, !dbg !3701

._crit_edge25:                                    ; preds = %107
  br label %114, !dbg !3701

109:                                              ; preds = %107
  %110 = and i32 %7, 1024, !dbg !3702
  %111 = icmp ne i32 %110, 0, !dbg !3702
  br i1 %111, label %112, label %._crit_edge26, !dbg !3703

._crit_edge26:                                    ; preds = %109
  br label %114, !dbg !3703

112:                                              ; preds = %109
  %113 = add i32 %.011, -1, !dbg !3704
  call void @llvm.dbg.value(metadata i32 %113, metadata !3576, metadata !DIExpression()), !dbg !3592
  br label %114, !dbg !3706

114:                                              ; preds = %112, %._crit_edge26, %._crit_edge25
  %.213 = phi i32 [ %113, %112 ], [ %.011, %._crit_edge26 ], [ %.011, %._crit_edge25 ]
  call void @llvm.dbg.value(metadata i32 %.213, metadata !3576, metadata !DIExpression()), !dbg !3592
  br label %115

115:                                              ; preds = %114, %105
  %.014 = phi i32 [ %106, %105 ], [ %7, %114 ]
  %.3 = phi i32 [ %.112, %105 ], [ %.213, %114 ], !dbg !3707
  %.17 = phi i32 [ 0, %105 ], [ %.06, %114 ], !dbg !3592
  %.02 = phi i32 [ 0, %105 ], [ %92, %114 ], !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3589, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.17, metadata !3586, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3576, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.014, metadata !3578, metadata !DIExpression()), !dbg !3592
  br label %116, !dbg !3708

116:                                              ; preds = %115, %._crit_edge22
  %.115 = phi i32 [ %.014, %115 ], [ %7, %._crit_edge22 ]
  %.4 = phi i32 [ %.3, %115 ], [ %.011, %._crit_edge22 ]
  %.28 = phi i32 [ %.17, %115 ], [ %.06, %._crit_edge22 ], !dbg !3592
  %.13 = phi i32 [ %.02, %115 ], [ %92, %._crit_edge22 ], !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3589, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.28, metadata !3586, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3576, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.115, metadata !3578, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %6, metadata !3590, metadata !DIExpression()), !dbg !3592
  %117 = icmp ugt i32 %6, %.13, !dbg !3709
  br i1 %117, label %118, label %120, !dbg !3711

118:                                              ; preds = %116
  %119 = sub i32 %6, %.13, !dbg !3712
  call void @llvm.dbg.value(metadata i32 %119, metadata !3590, metadata !DIExpression()), !dbg !3592
  br label %121, !dbg !3714

120:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3592
  br label %121

121:                                              ; preds = %120, %118
  %.01 = phi i32 [ %119, %118 ], [ 0, %120 ], !dbg !3715
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3590, metadata !DIExpression()), !dbg !3592
  %122 = and i32 %.115, 2, !dbg !3716
  %123 = icmp ne i32 %122, 0, !dbg !3716
  br i1 %123, label %124, label %._crit_edge27, !dbg !3718

._crit_edge27:                                    ; preds = %121
  br label %127, !dbg !3718

124:                                              ; preds = %121
  %125 = icmp ne i32 %.13, 0, !dbg !3719
  br i1 %125, label %126, label %._crit_edge28, !dbg !3720

._crit_edge28:                                    ; preds = %124
  br label %127, !dbg !3720

126:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3592
  br label %127, !dbg !3721

127:                                              ; preds = %126, %._crit_edge28, %._crit_edge27
  %.1 = phi i32 [ 0, %126 ], [ %.01, %._crit_edge28 ], [ %.01, %._crit_edge27 ], !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3590, metadata !DIExpression()), !dbg !3592
  %128 = icmp ne i32 %.28, 0, !dbg !3723
  br i1 %128, label %129, label %._crit_edge29, !dbg !3725

._crit_edge29:                                    ; preds = %127
  br label %133, !dbg !3725

129:                                              ; preds = %127
  %130 = bitcast %union.anon* %9 to double*, !dbg !3726
  %131 = load double, double* %130, align 8, !dbg !3726, !tbaa !2150
  %132 = fdiv double %.09, %131, !dbg !3728
  call void @llvm.dbg.value(metadata double %132, metadata !3575, metadata !DIExpression()), !dbg !3592
  br label %133, !dbg !3729

133:                                              ; preds = %129, %._crit_edge29
  %.110 = phi double [ %132, %129 ], [ %.09, %._crit_edge29 ], !dbg !3592
  call void @llvm.dbg.value(metadata double %.110, metadata !3575, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i32 %2, metadata !3591, metadata !DIExpression()), !dbg !3592
  %134 = trunc i8 %19 to i1, !dbg !3730
  br i1 %134, label %135, label %137, !dbg !3730

135:                                              ; preds = %133
  %136 = fsub double -0.000000e+00, %.110, !dbg !3731
  br label %138, !dbg !3730

137:                                              ; preds = %133
  br label %138, !dbg !3730

138:                                              ; preds = %137, %135
  %139 = phi double [ %136, %135 ], [ %.110, %137 ], !dbg !3730
  %140 = and i32 %.115, -2049, !dbg !3732
  %141 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %139, i32 %.4, i32 %.1, i32 %140), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %141, metadata !3573, metadata !DIExpression()), !dbg !3592
  %142 = icmp ne i32 %.13, 0, !dbg !3734
  br i1 %142, label %143, label %._crit_edge30, !dbg !3736

._crit_edge30:                                    ; preds = %138
  br label %169, !dbg !3736

143:                                              ; preds = %138
  %144 = and i32 %.115, 32, !dbg !3737
  %145 = icmp ne i32 %144, 0, !dbg !3739
  %146 = zext i1 %145 to i64, !dbg !3739
  %147 = select i1 %145, i32 69, i32 101, !dbg !3739
  %148 = trunc i32 %147 to i8, !dbg !3739
  %149 = add i32 %141, 1, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %149, metadata !3573, metadata !DIExpression()), !dbg !3592
  call arm_aapcscc void %0(i8 zeroext %148, i8* %1, i32 %141, i32 %3), !dbg !3741
  %150 = icmp slt i32 %.28, 0, !dbg !3742
  br i1 %150, label %151, label %153, !dbg !3743

151:                                              ; preds = %143
  %152 = sub nsw i32 0, %.28, !dbg !3744
  br label %154, !dbg !3743

153:                                              ; preds = %143
  br label %154, !dbg !3743

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ %.28, %153 ], !dbg !3743
  %156 = icmp slt i32 %.28, 0, !dbg !3745
  %157 = sub i32 %.13, 1, !dbg !3746
  %158 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %149, i32 %3, i32 %155, i1 zeroext %156, i32 10, i32 0, i32 %157, i32 5), !dbg !3747
  call void @llvm.dbg.value(metadata i32 %158, metadata !3573, metadata !DIExpression()), !dbg !3592
  %159 = and i32 %.115, 2, !dbg !3748
  %160 = icmp ne i32 %159, 0, !dbg !3748
  br i1 %160, label %161, label %._crit_edge31, !dbg !3750

._crit_edge31:                                    ; preds = %154
  br label %168, !dbg !3750

161:                                              ; preds = %154
  br label %162, !dbg !3751

162:                                              ; preds = %165, %161
  %.04 = phi i32 [ %158, %161 ], [ %166, %165 ], !dbg !3753
  call void @llvm.dbg.value(metadata i32 %.04, metadata !3573, metadata !DIExpression()), !dbg !3592
  %163 = sub i32 %.04, %2, !dbg !3754
  %164 = icmp ult i32 %163, %6, !dbg !3755
  br i1 %164, label %165, label %167, !dbg !3751

165:                                              ; preds = %162
  %166 = add i32 %.04, 1, !dbg !3756
  call void @llvm.dbg.value(metadata i32 %166, metadata !3573, metadata !DIExpression()), !dbg !3592
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.04, i32 %3), !dbg !3757
  br label %162, !dbg !3751, !llvm.loop !3758

167:                                              ; preds = %162
  %.04.lcssa = phi i32 [ %.04, %162 ], !dbg !3753
  call void @llvm.dbg.value(metadata i32 %.04.lcssa, metadata !3573, metadata !DIExpression()), !dbg !3592
  br label %168, !dbg !3760

168:                                              ; preds = %167, %._crit_edge31
  %.15 = phi i32 [ %.04.lcssa, %167 ], [ %158, %._crit_edge31 ], !dbg !3761
  call void @llvm.dbg.value(metadata i32 %.15, metadata !3573, metadata !DIExpression()), !dbg !3592
  br label %169, !dbg !3762

169:                                              ; preds = %168, %._crit_edge30
  %.2 = phi i32 [ %.15, %168 ], [ %141, %._crit_edge30 ], !dbg !3592
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3573, metadata !DIExpression()), !dbg !3592
  %170 = bitcast %union.anon* %9 to i8*, !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170) #4, !dbg !3763
  br label %171

171:                                              ; preds = %169, %15
  %.0 = phi i32 [ %16, %15 ], [ %.2, %169 ], !dbg !3592
  ret i32 %.0, !dbg !3763
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @_strnlen_s(i8*, i32) #5 !dbg !3764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3768, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 %1, metadata !3769, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()), !dbg !3771
  br label %3, !dbg !3772

3:                                                ; preds = %13, %2
  %.01 = phi i32 [ %1, %2 ], [ %.1, %13 ]
  %.0 = phi i8* [ %0, %2 ], [ %14, %13 ], !dbg !3774
  call void @llvm.dbg.value(metadata i8* %.0, metadata !3770, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3769, metadata !DIExpression()), !dbg !3771
  %4 = load i8, i8* %.0, align 1, !dbg !3775, !tbaa !2150
  %5 = zext i8 %4 to i32, !dbg !3775
  %6 = icmp ne i32 %5, 0, !dbg !3775
  br i1 %6, label %7, label %._crit_edge, !dbg !3777

._crit_edge:                                      ; preds = %3
  br label %10, !dbg !3777

7:                                                ; preds = %3
  %8 = add i32 %.01, -1, !dbg !3778
  call void @llvm.dbg.value(metadata i32 %8, metadata !3769, metadata !DIExpression()), !dbg !3771
  %9 = icmp ne i32 %.01, 0, !dbg !3777
  br label %10

10:                                               ; preds = %7, %._crit_edge
  %.1 = phi i32 [ %8, %7 ], [ %.01, %._crit_edge ]
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %7 ], !dbg !3779
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3769, metadata !DIExpression()), !dbg !3771
  br i1 %11, label %12, label %15, !dbg !3780

12:                                               ; preds = %10
  br label %13, !dbg !3780

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !3781
  call void @llvm.dbg.value(metadata i8* %14, metadata !3770, metadata !DIExpression()), !dbg !3771
  br label %3, !dbg !3782, !llvm.loop !3783

15:                                               ; preds = %10
  %.0.lcssa = phi i8* [ %.0, %10 ], !dbg !3774
  call void @llvm.dbg.value(metadata i8* %.0.lcssa, metadata !3770, metadata !DIExpression()), !dbg !3771
  %16 = ptrtoint i8* %.0.lcssa to i32, !dbg !3785
  %17 = ptrtoint i8* %0 to i32, !dbg !3785
  %18 = sub i32 %16, %17, !dbg !3785
  ret i32 %18, !dbg !3786
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i32, i32) #0 !dbg !3787 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3791, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8* %1, metadata !3792, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 %2, metadata !3793, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 %3, metadata !3794, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i8* %4, metadata !3795, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 %5, metadata !3796, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 %6, metadata !3797, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 %7, metadata !3798, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 %2, metadata !3799, metadata !DIExpression()), !dbg !3804
  %9 = and i32 %7, 2, !dbg !3805
  %10 = icmp ne i32 %9, 0, !dbg !3805
  br i1 %10, label %._crit_edge, label %11, !dbg !3806

._crit_edge:                                      ; preds = %8
  br label %23, !dbg !3806

11:                                               ; preds = %8
  %12 = and i32 %7, 1, !dbg !3807
  %13 = icmp ne i32 %12, 0, !dbg !3807
  br i1 %13, label %._crit_edge3, label %14, !dbg !3808

._crit_edge3:                                     ; preds = %11
  br label %23, !dbg !3808

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %5, metadata !3800, metadata !DIExpression()), !dbg !3809
  br label %15, !dbg !3810

15:                                               ; preds = %20, %14
  %.02 = phi i32 [ %2, %14 ], [ %19, %20 ]
  %.0 = phi i32 [ %5, %14 ], [ %21, %20 ], !dbg !3809
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3800, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3793, metadata !DIExpression()), !dbg !3804
  %16 = icmp ult i32 %.0, %6, !dbg !3811
  br i1 %16, label %18, label %17, !dbg !3813

17:                                               ; preds = %15
  %.02.lcssa = phi i32 [ %.02, %15 ]
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !3793, metadata !DIExpression()), !dbg !3804
  br label %22

18:                                               ; preds = %15
  %19 = add i32 %.02, 1, !dbg !3814
  call void @llvm.dbg.value(metadata i32 %19, metadata !3793, metadata !DIExpression()), !dbg !3804
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.02, i32 %3), !dbg !3816
  br label %20, !dbg !3817

20:                                               ; preds = %18
  %21 = add i32 %.0, 1, !dbg !3818
  call void @llvm.dbg.value(metadata i32 %21, metadata !3800, metadata !DIExpression()), !dbg !3809
  br label %15, !dbg !3819, !llvm.loop !3820

22:                                               ; preds = %17
  br label %23, !dbg !3822

23:                                               ; preds = %22, %._crit_edge3, %._crit_edge
  %.1 = phi i32 [ %2, %._crit_edge ], [ %2, %._crit_edge3 ], [ %.02.lcssa, %22 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3793, metadata !DIExpression()), !dbg !3804
  br label %24, !dbg !3823

24:                                               ; preds = %26, %23
  %.2 = phi i32 [ %.1, %23 ], [ %30, %26 ]
  %.01 = phi i32 [ %5, %23 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3796, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3793, metadata !DIExpression()), !dbg !3804
  %25 = icmp ne i32 %.01, 0, !dbg !3823
  br i1 %25, label %26, label %31, !dbg !3823

26:                                               ; preds = %24
  %27 = add i32 %.01, -1, !dbg !3824
  call void @llvm.dbg.value(metadata i32 %27, metadata !3796, metadata !DIExpression()), !dbg !3804
  %28 = getelementptr inbounds i8, i8* %4, i32 %27, !dbg !3826
  %29 = load i8, i8* %28, align 1, !dbg !3826, !tbaa !2150
  %30 = add i32 %.2, 1, !dbg !3827
  call void @llvm.dbg.value(metadata i32 %30, metadata !3793, metadata !DIExpression()), !dbg !3804
  call arm_aapcscc void %0(i8 zeroext %29, i8* %1, i32 %.2, i32 %3), !dbg !3828
  br label %24, !dbg !3823, !llvm.loop !3829

31:                                               ; preds = %24
  %.2.lcssa = phi i32 [ %.2, %24 ]
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !3793, metadata !DIExpression()), !dbg !3804
  %32 = and i32 %7, 2, !dbg !3831
  %33 = icmp ne i32 %32, 0, !dbg !3831
  br i1 %33, label %34, label %._crit_edge4, !dbg !3833

._crit_edge4:                                     ; preds = %31
  br label %41, !dbg !3833

34:                                               ; preds = %31
  br label %35, !dbg !3834

35:                                               ; preds = %38, %34
  %.3 = phi i32 [ %.2.lcssa, %34 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3793, metadata !DIExpression()), !dbg !3804
  %36 = sub i32 %.3, %2, !dbg !3836
  %37 = icmp ult i32 %36, %6, !dbg !3837
  br i1 %37, label %38, label %40, !dbg !3834

38:                                               ; preds = %35
  %39 = add i32 %.3, 1, !dbg !3838
  call void @llvm.dbg.value(metadata i32 %39, metadata !3793, metadata !DIExpression()), !dbg !3804
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.3, i32 %3), !dbg !3840
  br label %35, !dbg !3834, !llvm.loop !3841

40:                                               ; preds = %35
  %.3.lcssa = phi i32 [ %.3, %35 ]
  call void @llvm.dbg.value(metadata i32 %.3.lcssa, metadata !3793, metadata !DIExpression()), !dbg !3804
  br label %41, !dbg !3843

41:                                               ; preds = %40, %._crit_edge4
  %.4 = phi i32 [ %.3.lcssa, %40 ], [ %.2.lcssa, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3793, metadata !DIExpression()), !dbg !3804
  ret i32 %.4, !dbg !3844
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3845 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3849, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i8* %1, metadata !3850, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %2, metadata !3851, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %3, metadata !3852, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i8* %4, metadata !3853, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %5, metadata !3854, metadata !DIExpression()), !dbg !3860
  %12 = zext i1 %6 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3855, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %7, metadata !3856, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %8, metadata !3857, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %9, metadata !3858, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %10, metadata !3859, metadata !DIExpression()), !dbg !3860
  %13 = and i32 %10, 2, !dbg !3861
  %14 = icmp ne i32 %13, 0, !dbg !3861
  br i1 %14, label %._crit_edge, label %15, !dbg !3863

._crit_edge:                                      ; preds = %11
  br label %51, !dbg !3863

15:                                               ; preds = %11
  %16 = icmp ne i32 %9, 0, !dbg !3864
  br i1 %16, label %17, label %._crit_edge4, !dbg !3867

._crit_edge4:                                     ; preds = %15
  br label %27, !dbg !3867

17:                                               ; preds = %15
  %18 = and i32 %10, 1, !dbg !3868
  %19 = icmp ne i32 %18, 0, !dbg !3868
  br i1 %19, label %20, label %._crit_edge5, !dbg !3869

._crit_edge5:                                     ; preds = %17
  br label %27, !dbg !3869

20:                                               ; preds = %17
  %21 = trunc i8 %12 to i1, !dbg !3870
  br i1 %21, label %._crit_edge6, label %22, !dbg !3871

._crit_edge6:                                     ; preds = %20
  br label %25, !dbg !3871

22:                                               ; preds = %20
  %23 = and i32 %10, 12, !dbg !3872
  %24 = icmp ne i32 %23, 0, !dbg !3872
  br i1 %24, label %._crit_edge7, label %._crit_edge8, !dbg !3873

._crit_edge8:                                     ; preds = %22
  br label %27, !dbg !3873

._crit_edge7:                                     ; preds = %22
  br label %25, !dbg !3873

25:                                               ; preds = %._crit_edge7, %._crit_edge6
  %26 = add i32 %9, -1, !dbg !3874
  call void @llvm.dbg.value(metadata i32 %26, metadata !3858, metadata !DIExpression()), !dbg !3860
  br label %27, !dbg !3876

27:                                               ; preds = %25, %._crit_edge8, %._crit_edge5, %._crit_edge4
  %.0 = phi i32 [ %26, %25 ], [ %9, %._crit_edge8 ], [ %9, %._crit_edge5 ], [ %9, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3858, metadata !DIExpression()), !dbg !3860
  br label %28, !dbg !3877

28:                                               ; preds = %34, %27
  %.01 = phi i32 [ %5, %27 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3854, metadata !DIExpression()), !dbg !3860
  %29 = icmp ult i32 %.01, %8, !dbg !3878
  br i1 %29, label %30, label %._crit_edge9, !dbg !3879

._crit_edge9:                                     ; preds = %28
  br label %32, !dbg !3879

30:                                               ; preds = %28
  %31 = icmp ult i32 %.01, 32, !dbg !3880
  br label %32

32:                                               ; preds = %30, %._crit_edge9
  %33 = phi i1 [ false, %._crit_edge9 ], [ %31, %30 ], !dbg !3881
  br i1 %33, label %34, label %37, !dbg !3877

34:                                               ; preds = %32
  %35 = add i32 %.01, 1, !dbg !3882
  call void @llvm.dbg.value(metadata i32 %35, metadata !3854, metadata !DIExpression()), !dbg !3860
  %36 = getelementptr inbounds i8, i8* %4, i32 %.01, !dbg !3884
  store i8 48, i8* %36, align 1, !dbg !3885, !tbaa !2150
  br label %28, !dbg !3877, !llvm.loop !3886

37:                                               ; preds = %32
  %.01.lcssa = phi i32 [ %.01, %32 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %38, !dbg !3888

38:                                               ; preds = %47, %37
  %.12 = phi i32 [ %.01.lcssa, %37 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3854, metadata !DIExpression()), !dbg !3860
  %39 = and i32 %10, 1, !dbg !3889
  %40 = icmp ne i32 %39, 0, !dbg !3889
  br i1 %40, label %41, label %._crit_edge10, !dbg !3890

._crit_edge10:                                    ; preds = %38
  br label %45, !dbg !3890

41:                                               ; preds = %38
  %42 = icmp ult i32 %.12, %.0, !dbg !3891
  br i1 %42, label %43, label %._crit_edge11, !dbg !3892

._crit_edge11:                                    ; preds = %41
  br label %45, !dbg !3892

43:                                               ; preds = %41
  %44 = icmp ult i32 %.12, 32, !dbg !3893
  br label %45

45:                                               ; preds = %43, %._crit_edge11, %._crit_edge10
  %46 = phi i1 [ false, %._crit_edge11 ], [ false, %._crit_edge10 ], [ %44, %43 ], !dbg !3881
  br i1 %46, label %47, label %50, !dbg !3888

47:                                               ; preds = %45
  %48 = add i32 %.12, 1, !dbg !3894
  call void @llvm.dbg.value(metadata i32 %48, metadata !3854, metadata !DIExpression()), !dbg !3860
  %49 = getelementptr inbounds i8, i8* %4, i32 %.12, !dbg !3896
  store i8 48, i8* %49, align 1, !dbg !3897, !tbaa !2150
  br label %38, !dbg !3888, !llvm.loop !3898

50:                                               ; preds = %45
  %.12.lcssa = phi i32 [ %.12, %45 ]
  call void @llvm.dbg.value(metadata i32 %.12.lcssa, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %51, !dbg !3900

51:                                               ; preds = %50, %._crit_edge
  %.2 = phi i32 [ %5, %._crit_edge ], [ %.12.lcssa, %50 ]
  %.1 = phi i32 [ %9, %._crit_edge ], [ %.0, %50 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3858, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3854, metadata !DIExpression()), !dbg !3860
  %52 = and i32 %10, 16, !dbg !3901
  %53 = icmp ne i32 %52, 0, !dbg !3901
  br i1 %53, label %54, label %._crit_edge12, !dbg !3903

._crit_edge12:                                    ; preds = %51
  br label %106, !dbg !3903

54:                                               ; preds = %51
  %55 = and i32 %10, 1024, !dbg !3904
  %56 = icmp ne i32 %55, 0, !dbg !3904
  br i1 %56, label %._crit_edge13, label %57, !dbg !3907

._crit_edge13:                                    ; preds = %54
  br label %71, !dbg !3907

57:                                               ; preds = %54
  %58 = icmp ne i32 %.2, 0, !dbg !3908
  br i1 %58, label %59, label %._crit_edge14, !dbg !3909

._crit_edge14:                                    ; preds = %57
  br label %71, !dbg !3909

59:                                               ; preds = %57
  %60 = icmp eq i32 %.2, %8, !dbg !3910
  br i1 %60, label %._crit_edge15, label %61, !dbg !3911

._crit_edge15:                                    ; preds = %59
  br label %63, !dbg !3911

61:                                               ; preds = %59
  %62 = icmp eq i32 %.2, %.1, !dbg !3912
  br i1 %62, label %._crit_edge16, label %._crit_edge17, !dbg !3913

._crit_edge17:                                    ; preds = %61
  br label %71, !dbg !3913

._crit_edge16:                                    ; preds = %61
  br label %63, !dbg !3913

63:                                               ; preds = %._crit_edge16, %._crit_edge15
  %64 = add i32 %.2, -1, !dbg !3914
  call void @llvm.dbg.value(metadata i32 %64, metadata !3854, metadata !DIExpression()), !dbg !3860
  %65 = icmp ne i32 %64, 0, !dbg !3916
  br i1 %65, label %66, label %._crit_edge18, !dbg !3918

._crit_edge18:                                    ; preds = %63
  br label %70, !dbg !3918

66:                                               ; preds = %63
  %67 = icmp eq i32 %7, 16, !dbg !3919
  br i1 %67, label %68, label %._crit_edge19, !dbg !3920

._crit_edge19:                                    ; preds = %66
  br label %70, !dbg !3920

68:                                               ; preds = %66
  %69 = add i32 %64, -1, !dbg !3921
  call void @llvm.dbg.value(metadata i32 %69, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %70, !dbg !3923

70:                                               ; preds = %68, %._crit_edge19, %._crit_edge18
  %.3 = phi i32 [ %69, %68 ], [ %64, %._crit_edge19 ], [ %64, %._crit_edge18 ], !dbg !3924
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %71, !dbg !3925

71:                                               ; preds = %70, %._crit_edge17, %._crit_edge14, %._crit_edge13
  %.4 = phi i32 [ %.2, %._crit_edge13 ], [ %.3, %70 ], [ %.2, %._crit_edge17 ], [ %.2, %._crit_edge14 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3854, metadata !DIExpression()), !dbg !3860
  %72 = icmp eq i32 %7, 16, !dbg !3926
  br i1 %72, label %73, label %._crit_edge20, !dbg !3928

._crit_edge20:                                    ; preds = %71
  br label %81, !dbg !3928

73:                                               ; preds = %71
  %74 = and i32 %10, 32, !dbg !3929
  %75 = icmp ne i32 %74, 0, !dbg !3929
  br i1 %75, label %._crit_edge21, label %76, !dbg !3930

._crit_edge21:                                    ; preds = %73
  br label %81, !dbg !3930

76:                                               ; preds = %73
  %77 = icmp ult i32 %.4, 32, !dbg !3931
  br i1 %77, label %78, label %._crit_edge22, !dbg !3932

._crit_edge22:                                    ; preds = %76
  br label %81, !dbg !3932

78:                                               ; preds = %76
  %79 = add i32 %.4, 1, !dbg !3933
  call void @llvm.dbg.value(metadata i32 %79, metadata !3854, metadata !DIExpression()), !dbg !3860
  %80 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3935
  store i8 120, i8* %80, align 1, !dbg !3936, !tbaa !2150
  br label %100, !dbg !3937

81:                                               ; preds = %._crit_edge22, %._crit_edge21, %._crit_edge20
  %82 = icmp eq i32 %7, 16, !dbg !3938
  br i1 %82, label %83, label %._crit_edge23, !dbg !3940

._crit_edge23:                                    ; preds = %81
  br label %91, !dbg !3940

83:                                               ; preds = %81
  %84 = and i32 %10, 32, !dbg !3941
  %85 = icmp ne i32 %84, 0, !dbg !3941
  br i1 %85, label %86, label %._crit_edge24, !dbg !3942

._crit_edge24:                                    ; preds = %83
  br label %91, !dbg !3942

86:                                               ; preds = %83
  %87 = icmp ult i32 %.4, 32, !dbg !3943
  br i1 %87, label %88, label %._crit_edge25, !dbg !3944

._crit_edge25:                                    ; preds = %86
  br label %91, !dbg !3944

88:                                               ; preds = %86
  %89 = add i32 %.4, 1, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %89, metadata !3854, metadata !DIExpression()), !dbg !3860
  %90 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3947
  store i8 88, i8* %90, align 1, !dbg !3948, !tbaa !2150
  br label %99, !dbg !3949

91:                                               ; preds = %._crit_edge25, %._crit_edge24, %._crit_edge23
  %92 = icmp eq i32 %7, 2, !dbg !3950
  br i1 %92, label %93, label %._crit_edge26, !dbg !3952

._crit_edge26:                                    ; preds = %91
  br label %98, !dbg !3952

93:                                               ; preds = %91
  %94 = icmp ult i32 %.4, 32, !dbg !3953
  br i1 %94, label %95, label %._crit_edge27, !dbg !3954

._crit_edge27:                                    ; preds = %93
  br label %98, !dbg !3954

95:                                               ; preds = %93
  %96 = add i32 %.4, 1, !dbg !3955
  call void @llvm.dbg.value(metadata i32 %96, metadata !3854, metadata !DIExpression()), !dbg !3860
  %97 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3957
  store i8 98, i8* %97, align 1, !dbg !3958, !tbaa !2150
  br label %98, !dbg !3959

98:                                               ; preds = %95, %._crit_edge27, %._crit_edge26
  %.5 = phi i32 [ %96, %95 ], [ %.4, %._crit_edge27 ], [ %.4, %._crit_edge26 ]
  call void @llvm.dbg.value(metadata i32 %.5, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %99

99:                                               ; preds = %98, %88
  %.6 = phi i32 [ %89, %88 ], [ %.5, %98 ], !dbg !3960
  call void @llvm.dbg.value(metadata i32 %.6, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %100

100:                                              ; preds = %99, %78
  %.7 = phi i32 [ %.6, %99 ], [ %79, %78 ], !dbg !3961
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3854, metadata !DIExpression()), !dbg !3860
  %101 = icmp ult i32 %.7, 32, !dbg !3962
  br i1 %101, label %102, label %._crit_edge28, !dbg !3964

._crit_edge28:                                    ; preds = %100
  br label %105, !dbg !3964

102:                                              ; preds = %100
  %103 = add i32 %.7, 1, !dbg !3965
  call void @llvm.dbg.value(metadata i32 %103, metadata !3854, metadata !DIExpression()), !dbg !3860
  %104 = getelementptr inbounds i8, i8* %4, i32 %.7, !dbg !3967
  store i8 48, i8* %104, align 1, !dbg !3968, !tbaa !2150
  br label %105, !dbg !3969

105:                                              ; preds = %102, %._crit_edge28
  %.8 = phi i32 [ %103, %102 ], [ %.7, %._crit_edge28 ], !dbg !3970
  call void @llvm.dbg.value(metadata i32 %.8, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %106, !dbg !3971

106:                                              ; preds = %105, %._crit_edge12
  %.9 = phi i32 [ %.8, %105 ], [ %.2, %._crit_edge12 ]
  call void @llvm.dbg.value(metadata i32 %.9, metadata !3854, metadata !DIExpression()), !dbg !3860
  %107 = icmp ult i32 %.9, 32, !dbg !3972
  br i1 %107, label %108, label %._crit_edge29, !dbg !3974

._crit_edge29:                                    ; preds = %106
  br label %128, !dbg !3974

108:                                              ; preds = %106
  %109 = trunc i8 %12 to i1, !dbg !3975
  br i1 %109, label %110, label %113, !dbg !3978

110:                                              ; preds = %108
  %111 = add i32 %.9, 1, !dbg !3979
  call void @llvm.dbg.value(metadata i32 %111, metadata !3854, metadata !DIExpression()), !dbg !3860
  %112 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3981
  store i8 45, i8* %112, align 1, !dbg !3982, !tbaa !2150
  br label %127, !dbg !3983

113:                                              ; preds = %108
  %114 = and i32 %10, 4, !dbg !3984
  %115 = icmp ne i32 %114, 0, !dbg !3984
  br i1 %115, label %116, label %119, !dbg !3986

116:                                              ; preds = %113
  %117 = add i32 %.9, 1, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %117, metadata !3854, metadata !DIExpression()), !dbg !3860
  %118 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3989
  store i8 43, i8* %118, align 1, !dbg !3990, !tbaa !2150
  br label %126, !dbg !3991

119:                                              ; preds = %113
  %120 = and i32 %10, 8, !dbg !3992
  %121 = icmp ne i32 %120, 0, !dbg !3992
  br i1 %121, label %122, label %._crit_edge30, !dbg !3994

._crit_edge30:                                    ; preds = %119
  br label %125, !dbg !3994

122:                                              ; preds = %119
  %123 = add i32 %.9, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i32 %123, metadata !3854, metadata !DIExpression()), !dbg !3860
  %124 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3997
  store i8 32, i8* %124, align 1, !dbg !3998, !tbaa !2150
  br label %125, !dbg !3999

125:                                              ; preds = %122, %._crit_edge30
  %.10 = phi i32 [ %123, %122 ], [ %.9, %._crit_edge30 ], !dbg !3860
  call void @llvm.dbg.value(metadata i32 %.10, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %126

126:                                              ; preds = %125, %116
  %.11 = phi i32 [ %117, %116 ], [ %.10, %125 ], !dbg !4000
  call void @llvm.dbg.value(metadata i32 %.11, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %127

127:                                              ; preds = %126, %110
  %.123 = phi i32 [ %111, %110 ], [ %.11, %126 ], !dbg !4001
  call void @llvm.dbg.value(metadata i32 %.123, metadata !3854, metadata !DIExpression()), !dbg !3860
  br label %128, !dbg !4002

128:                                              ; preds = %127, %._crit_edge29
  %.13 = phi i32 [ %.123, %127 ], [ %.9, %._crit_edge29 ], !dbg !3860
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3854, metadata !DIExpression()), !dbg !3860
  %129 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %.13, i32 %.1, i32 %10), !dbg !4003
  ret i32 %129, !dbg !4004
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @sprintf_(i8*, i8*, ...) #0 !dbg !4005 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8* %1, metadata !4010, metadata !DIExpression()), !dbg !4013
  %4 = bitcast %struct.__va_list* %3 to i8*, !dbg !4014
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !4014
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4011, metadata !DIExpression()), !dbg !4015
  %5 = bitcast %struct.__va_list* %3 to i8*, !dbg !4016
  call void @llvm.va_start(i8* %5), !dbg !4016
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4017
  %7 = bitcast i8** %6 to [1 x i32]*, !dbg !4017
  %8 = load [1 x i32], [1 x i32]* %7, align 4, !dbg !4017
  %9 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 -1, i8* %1, [1 x i32] %8), !dbg !4017
  call void @llvm.dbg.value(metadata i32 %9, metadata !4012, metadata !DIExpression()), !dbg !4013
  %10 = bitcast %struct.__va_list* %3 to i8*, !dbg !4018
  call void @llvm.va_end(i8* %10), !dbg !4018
  %11 = bitcast %struct.__va_list* %3 to i8*, !dbg !4019
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !4019
  ret i32 %9, !dbg !4020
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_buffer(i8 zeroext, i8*, i32, i32) #5 !dbg !4021 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4023, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8* %1, metadata !4024, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 %2, metadata !4025, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 %3, metadata !4026, metadata !DIExpression()), !dbg !4027
  %5 = icmp ult i32 %2, %3, !dbg !4028
  br i1 %5, label %6, label %._crit_edge, !dbg !4030

._crit_edge:                                      ; preds = %4
  br label %8, !dbg !4030

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %1, i32 %2, !dbg !4031
  store i8 %0, i8* %7, align 1, !dbg !4033, !tbaa !2150
  br label %8, !dbg !4034

8:                                                ; preds = %6, %._crit_edge
  ret void, !dbg !4035
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @snprintf_(i8*, i32, i8*, ...) #0 !dbg !4036 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4040, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %1, metadata !4041, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i8* %2, metadata !4042, metadata !DIExpression()), !dbg !4045
  %5 = bitcast %struct.__va_list* %4 to i8*, !dbg !4046
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !4046
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4043, metadata !DIExpression()), !dbg !4047
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4048
  call void @llvm.va_start(i8* %6), !dbg !4048
  %7 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4049
  %8 = bitcast i8** %7 to [1 x i32]*, !dbg !4049
  %9 = load [1 x i32], [1 x i32]* %8, align 4, !dbg !4049
  %10 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %9), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %10, metadata !4044, metadata !DIExpression()), !dbg !4045
  %11 = bitcast %struct.__va_list* %4 to i8*, !dbg !4050
  call void @llvm.va_end(i8* %11), !dbg !4050
  %12 = bitcast %struct.__va_list* %4 to i8*, !dbg !4051
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !4051
  ret i32 %10, !dbg !4052
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vprintf_(i8*, [1 x i32]) #0 !dbg !4053 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %6 = bitcast i8** %5 to [1 x i32]*
  store [1 x i32] %1, [1 x i32]* %6, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4057, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4058, metadata !DIExpression()), !dbg !4061
  %7 = bitcast [1 x i8]* %4 to i8*, !dbg !4062
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #4, !dbg !4062
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !4059, metadata !DIExpression()), !dbg !4063
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !4064
  %9 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4065
  %10 = bitcast i8** %9 to [1 x i32]*, !dbg !4065
  %11 = load [1 x i32], [1 x i32]* %10, align 4, !dbg !4065
  %12 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %8, i32 -1, i8* %0, [1 x i32] %11), !dbg !4065
  %13 = bitcast [1 x i8]* %4 to i8*, !dbg !4066
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4, !dbg !4066
  ret i32 %12, !dbg !4067
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vsnprintf_(i8*, i32, i8*, [1 x i32]) #0 !dbg !4068 {
  %5 = alloca %struct.__va_list, align 4
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0
  %7 = bitcast i8** %6 to [1 x i32]*
  store [1 x i32] %3, [1 x i32]* %7, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4072, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i32 %1, metadata !4073, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i8* %2, metadata !4074, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.declare(metadata %struct.__va_list* %5, metadata !4075, metadata !DIExpression()), !dbg !4077
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0, !dbg !4078
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !4078
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !4078
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %10), !dbg !4078
  ret i32 %11, !dbg !4079
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @fctprintf(void (i8, i8*)*, i8*, i8*, ...) #0 !dbg !4080 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.out_fct_wrap_type, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*)* %0, metadata !4084, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i8* %1, metadata !4085, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i8* %2, metadata !4086, metadata !DIExpression()), !dbg !4091
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4092
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !4092
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4087, metadata !DIExpression()), !dbg !4093
  %7 = bitcast %struct.__va_list* %4 to i8*, !dbg !4094
  call void @llvm.va_start(i8* %7), !dbg !4094
  %8 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4095
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !4095
  call void @llvm.dbg.declare(metadata %struct.out_fct_wrap_type* %5, metadata !4088, metadata !DIExpression()), !dbg !4096
  %9 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 0, !dbg !4097
  store void (i8, i8*)* %0, void (i8, i8*)** %9, align 4, !dbg !4097, !tbaa !4098
  %10 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 1, !dbg !4097
  store i8* %1, i8** %10, align 4, !dbg !4097, !tbaa !4100
  %11 = ptrtoint %struct.out_fct_wrap_type* %5 to i32, !dbg !4101
  %12 = inttoptr i32 %11 to i8*, !dbg !4102
  %13 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4103
  %14 = bitcast i8** %13 to [1 x i32]*, !dbg !4103
  %15 = load [1 x i32], [1 x i32]* %14, align 4, !dbg !4103
  %16 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_fct, i8* %12, i32 -1, i8* %2, [1 x i32] %15), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %16, metadata !4090, metadata !DIExpression()), !dbg !4091
  %17 = bitcast %struct.__va_list* %4 to i8*, !dbg !4104
  call void @llvm.va_end(i8* %17), !dbg !4104
  %18 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4105
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #4, !dbg !4105
  %19 = bitcast %struct.__va_list* %4 to i8*, !dbg !4105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !4105
  ret i32 %16, !dbg !4106
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_fct(i8 zeroext, i8*, i32, i32) #5 !dbg !4107 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4109, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i8* %1, metadata !4110, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i32 %2, metadata !4111, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i32 %3, metadata !4112, metadata !DIExpression()), !dbg !4113
  %5 = icmp ne i8 %0, 0, !dbg !4114
  br i1 %5, label %6, label %._crit_edge, !dbg !4116

._crit_edge:                                      ; preds = %4
  br label %13, !dbg !4116

6:                                                ; preds = %4
  %7 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4117
  %8 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %7, i32 0, i32 0, !dbg !4119
  %9 = load void (i8, i8*)*, void (i8, i8*)** %8, align 4, !dbg !4119, !tbaa !4098
  %10 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4120
  %11 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %10, i32 0, i32 1, !dbg !4121
  %12 = load i8*, i8** %11, align 4, !dbg !4121, !tbaa !4100
  call arm_aapcscc void %9(i8 zeroext %0, i8* %12), !dbg !4122
  br label %13, !dbg !4123

13:                                               ; preds = %6, %._crit_edge
  ret void, !dbg !4124
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @putc(i32, i8*) #3 !dbg !4125 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4, !tbaa !1046
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4130, metadata !DIExpression()), !dbg !4132
  store i8* %1, i8** %4, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4131, metadata !DIExpression()), !dbg !4133
  %5 = load i8*, i8** %4, align 4, !dbg !4134, !tbaa !334
  %6 = load i32, i32* %3, align 4, !dbg !4135, !tbaa !1046
  ret i32 %6, !dbg !4136
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_putchar(i8 zeroext) #3 !dbg !4137 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !2150
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4141, metadata !DIExpression()), !dbg !4142
  %3 = load i8, i8* %2, align 1, !dbg !4143, !tbaa !2150
  %4 = zext i8 %3 to i32, !dbg !4143
  %5 = call arm_aapcscc i32 @putc(i32 %4, i8* %2), !dbg !4144
  ret void, !dbg !4145
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #6 !dbg !4146 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #4, !dbg !4147, !srcloc !4148
  call void asm sideeffect "    ldr    sp, [r1]", ""() #4, !dbg !4149, !srcloc !4150
  call void asm sideeffect "bl __checkpoint_startup_restore", ""() #4, !dbg !4151, !srcloc !4152
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #4, !dbg !4153, !srcloc !4154
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #4, !dbg !4155, !srcloc !4156
  call void asm sideeffect "bl __checkpoint_startup_checkpoint", ""() #4, !dbg !4157, !srcloc !4158
  call void asm sideeffect "    bl   main\0A", ""() #4, !dbg !4159, !srcloc !4160
  call void asm sideeffect "    bkpt     ", ""() #4, !dbg !4161, !srcloc !4162
  unreachable, !dbg !4163
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @NMI_Handler() #0 !dbg !4164 {
  br label %1, !dbg !4165

1:                                                ; preds = %1, %0
  br label %1, !dbg !4165, !llvm.loop !4166
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @HardFault_Handler() #0 !dbg !4168 {
  br label %1, !dbg !4169

1:                                                ; preds = %1, %0
  br label %1, !dbg !4169, !llvm.loop !4170
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 !dbg !4172 {
  br label %1, !dbg !4173

1:                                                ; preds = %1, %0
  br label %1, !dbg !4173, !llvm.loop !4174
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @__checkpoint_startup_checkpoint() #0 !dbg !4176 {
  ret void, !dbg !4177
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @__checkpoint_startup_restore() #0 !dbg !4178 {
  ret void, !dbg !4179
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
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !71, nameTableKind: None)
!3 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/src/./coremark/core_main.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
!4 = !{}
!5 = !{!6, !19, !12, !23, !66, !51, !68, !70}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_results", file: !8, line: 157, baseType: !9)
!8 = !DIFile(filename: "src/./coremark/coremark.h", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RESULTS_S", file: !8, line: 137, size: 544, elements: !10)
!10 = !{!11, !15, !16, !17, !22, !25, !26, !27, !38, !52, !55, !56, !57, !58, !59}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "seed1", scope: !9, file: !8, line: 140, baseType: !12, size: 16)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ee_s16", file: !13, line: 98, baseType: !14)
!13 = !DIFile(filename: "src/./icemu/core_portme.h", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
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
!74 = !DIFile(filename: "src/coremark/core_main.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
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
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !101, globals: !102, nameTableKind: None)
!88 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/src/./coremark/core_state.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
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
!105 = !DIFile(filename: "src/coremark/core_state.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !20)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "scipat", scope: !87, file: !105, line: 120, type: !106, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "errpat", scope: !87, file: !105, line: 124, type: !106, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "seed1_volatile", scope: !114, file: !125, line: 29, type: !126, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !122, nameTableKind: None)
!115 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/src/./icemu/core_portme.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
!116 = !{!117, !68}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "CORE_TICKS", file: !13, line: 69, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !119, line: 48, baseType: !120)
!119 = !DIFile(filename: "toolchain-arm/lib/include/sys/_stdint.h", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !121, line: 79, baseType: !24)
!121 = !DIFile(filename: "toolchain-arm/lib/include/machine/_default_types.h", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection")
!122 = !{!112, !123, !127, !129, !131, !133, !135, !141, !143}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "seed2_volatile", scope: !114, file: !125, line: 30, type: !126, isLocal: false, isDefinition: true)
!125 = !DIFile(filename: "src/icemu/core_portme.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
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
!148 = !DIFile(filename: "src/icemu/printf.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !153, !66, !151, !151, !69, !24, !24, !24}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !24)
!152 = !DIFile(filename: "llvm/llvm-9.0.1/install/lib/clang/9.0.1/include/stddef.h", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "out_fct_type", file: !148, line: 122, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !67, !19, !151, !151}
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !159, globals: !171, nameTableKind: None)
!158 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/src/./icemu/printf.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
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
!200 = distinct !DIGlobalVariable(name: "g_am_pfnVectors", scope: !201, file: !206, line: 138, type: !211, isLocal: false, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !203, nameTableKind: None)
!202 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/toolchain-arm/startup.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
!203 = !{!199, !204}
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "__Patchable", scope: !201, file: !206, line: 209, type: !207, isLocal: false, isDefinition: true)
!206 = !DIFile(filename: "toolchain-arm/startup.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection")
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
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !220, nameTableKind: None)
!219 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/src/./coremark/core_list_join.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
!220 = !{!19, !221, !12, !53}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_data", file: !8, line: 95, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_data_s", file: !8, line: 91, size: 32, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "data16", scope: !223, file: !8, line: 93, baseType: !12, size: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !223, file: !8, line: 94, baseType: !12, size: 16, offset: 16)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !229, nameTableKind: None)
!228 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/src/./coremark/core_matrix.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
!229 = !{!46, !45, !19, !230, !49, !50}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ee_ptr_int", file: !13, line: 104, baseType: !23)
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !233, nameTableKind: None)
!232 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/src/./coremark/core_util.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
!233 = !{!64, !12, !53}
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, nameTableKind: None)
!235 = !DIFile(filename: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/src/./icemu/printfmap.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark/build-opt-all/src")
!236 = !{!"clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git ed0c60b2d23f6833d144ca5c81545490db4aa5bc)"}
!237 = !{i32 2, !"Dwarf Version", i32 4}
!238 = !{i32 2, !"Debug Info Version", i32 3}
!239 = !{i32 1, !"wchar_size", i32 4}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = distinct !DISubprogram(name: "calc_func", scope: !242, file: !242, line: 70, type: !243, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !282)
!242 = !DIFile(filename: "src/coremark/core_list_join.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
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
!298 = !DILocation(line: 75, column: 12, scope: !241)
!299 = !DILocation(line: 75, column: 17, scope: !241)
!300 = !DILocation(line: 76, column: 11, scope: !241)
!301 = !DILocation(line: 75, column: 11, scope: !241)
!302 = !DILocation(line: 77, column: 9, scope: !290)
!303 = !DILocation(line: 77, column: 9, scope: !241)
!304 = !DILocation(line: 78, column: 17, scope: !290)
!305 = !DILocation(line: 78, column: 22, scope: !290)
!306 = !DILocation(line: 78, column: 16, scope: !290)
!307 = !DILocation(line: 78, column: 9, scope: !290)
!308 = !DILocation(line: 81, column: 23, scope: !289)
!309 = !DILocation(line: 81, column: 28, scope: !289)
!310 = !DILocation(line: 0, scope: !289)
!311 = !DILocation(line: 83, column: 17, scope: !289)
!312 = !DILocation(line: 83, column: 22, scope: !289)
!313 = !DILocation(line: 84, column: 16, scope: !289)
!314 = !DILocation(line: 83, column: 15, scope: !289)
!315 = !DILocation(line: 85, column: 18, scope: !289)
!316 = !DILocation(line: 85, column: 24, scope: !289)
!317 = !DILocation(line: 85, column: 15, scope: !289)
!318 = !DILocation(line: 86, column: 17, scope: !289)
!319 = !DILocation(line: 89, column: 21, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !242, line: 89, column: 21)
!321 = distinct !DILexicalBlock(scope: !289, file: !242, line: 87, column: 9)
!322 = !DILocation(line: 89, column: 27, scope: !320)
!323 = !DILocation(line: 89, column: 21, scope: !321)
!324 = !DILocation(line: 90, column: 21, scope: !320)
!325 = !DILocation(line: 91, column: 48, scope: !321)
!326 = !{!327, !328, i64 24}
!327 = !{!"RESULTS_S", !295, i64 0, !295, i64 2, !295, i64 4, !296, i64 8, !328, i64 24, !328, i64 28, !328, i64 32, !329, i64 36, !330, i64 40, !295, i64 56, !295, i64 58, !295, i64 60, !295, i64 62, !295, i64 64, !331, i64 66}
!328 = !{!"int", !296, i64 0}
!329 = !{!"any pointer", !296, i64 0}
!330 = !{!"MAT_PARAMS_S", !328, i64 0, !329, i64 4, !329, i64 8, !329, i64 12}
!331 = !{!"CORE_PORTABLE_S", !296, i64 0}
!332 = !DILocation(line: 92, column: 48, scope: !321)
!333 = !DILocation(line: 92, column: 43, scope: !321)
!334 = !{!329, !329, i64 0}
!335 = !DILocation(line: 93, column: 48, scope: !321)
!336 = !{!327, !295, i64 0}
!337 = !DILocation(line: 94, column: 48, scope: !321)
!338 = !{!327, !295, i64 2}
!339 = !DILocation(line: 96, column: 48, scope: !321)
!340 = !{!327, !295, i64 56}
!341 = !DILocation(line: 91, column: 26, scope: !321)
!342 = !DILocation(line: 97, column: 26, scope: !343)
!343 = distinct !DILexicalBlock(scope: !321, file: !242, line: 97, column: 21)
!344 = !{!327, !295, i64 62}
!345 = !DILocation(line: 97, column: 21, scope: !343)
!346 = !DILocation(line: 97, column: 35, scope: !343)
!347 = !DILocation(line: 97, column: 21, scope: !321)
!348 = !DILocation(line: 98, column: 26, scope: !343)
!349 = !DILocation(line: 98, column: 35, scope: !343)
!350 = !DILocation(line: 98, column: 21, scope: !343)
!351 = !DILocation(line: 99, column: 17, scope: !321)
!352 = !DILocation(line: 101, column: 51, scope: !321)
!353 = !DILocation(line: 101, column: 69, scope: !321)
!354 = !DILocation(line: 101, column: 26, scope: !321)
!355 = !DILocation(line: 102, column: 26, scope: !356)
!356 = distinct !DILexicalBlock(scope: !321, file: !242, line: 102, column: 21)
!357 = !{!327, !295, i64 60}
!358 = !DILocation(line: 102, column: 21, scope: !356)
!359 = !DILocation(line: 102, column: 36, scope: !356)
!360 = !DILocation(line: 102, column: 21, scope: !321)
!361 = !DILocation(line: 103, column: 26, scope: !356)
!362 = !DILocation(line: 103, column: 36, scope: !356)
!363 = !DILocation(line: 103, column: 21, scope: !356)
!364 = !DILocation(line: 104, column: 17, scope: !321)
!365 = !DILocation(line: 107, column: 17, scope: !321)
!366 = !DILocation(line: 0, scope: !321)
!367 = !DILocation(line: 109, column: 40, scope: !289)
!368 = !DILocation(line: 109, column: 20, scope: !289)
!369 = !DILocation(line: 109, column: 14, scope: !289)
!370 = !DILocation(line: 109, column: 18, scope: !289)
!371 = !DILocation(line: 110, column: 16, scope: !289)
!372 = !DILocation(line: 111, column: 19, scope: !289)
!373 = !DILocation(line: 111, column: 24, scope: !289)
!374 = !DILocation(line: 111, column: 34, scope: !289)
!375 = !DILocation(line: 111, column: 45, scope: !289)
!376 = !DILocation(line: 111, column: 43, scope: !289)
!377 = !DILocation(line: 111, column: 18, scope: !289)
!378 = !DILocation(line: 111, column: 16, scope: !289)
!379 = !DILocation(line: 0, scope: !290)
!380 = !DILocation(line: 114, column: 1, scope: !241)
!381 = distinct !DISubprogram(name: "cmp_complex", scope: !242, file: !242, line: 121, type: !382, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!51, !221, !221, !246}
!384 = !{!385, !386, !387, !388, !389}
!385 = !DILocalVariable(name: "a", arg: 1, scope: !381, file: !242, line: 121, type: !221)
!386 = !DILocalVariable(name: "b", arg: 2, scope: !381, file: !242, line: 121, type: !221)
!387 = !DILocalVariable(name: "res", arg: 3, scope: !381, file: !242, line: 121, type: !246)
!388 = !DILocalVariable(name: "val1", scope: !381, file: !242, line: 123, type: !12)
!389 = !DILocalVariable(name: "val2", scope: !381, file: !242, line: 124, type: !12)
!390 = !DILocation(line: 0, scope: !381)
!391 = !DILocation(line: 123, column: 34, scope: !381)
!392 = !DILocation(line: 123, column: 19, scope: !381)
!393 = !DILocation(line: 124, column: 34, scope: !381)
!394 = !DILocation(line: 124, column: 19, scope: !381)
!395 = !DILocation(line: 125, column: 12, scope: !381)
!396 = !DILocation(line: 125, column: 19, scope: !381)
!397 = !DILocation(line: 125, column: 17, scope: !381)
!398 = !DILocation(line: 125, column: 5, scope: !381)
!399 = distinct !DISubprogram(name: "cmp_idx", scope: !242, file: !242, line: 134, type: !382, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !400)
!400 = !{!401, !402, !403}
!401 = !DILocalVariable(name: "a", arg: 1, scope: !399, file: !242, line: 134, type: !221)
!402 = !DILocalVariable(name: "b", arg: 2, scope: !399, file: !242, line: 134, type: !221)
!403 = !DILocalVariable(name: "res", arg: 3, scope: !399, file: !242, line: 134, type: !246)
!404 = !DILocation(line: 0, scope: !399)
!405 = !DILocation(line: 136, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !399, file: !242, line: 136, column: 9)
!407 = !DILocation(line: 136, column: 9, scope: !399)
!408 = !DILocation(line: 138, column: 25, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !242, line: 137, column: 5)
!410 = !{!411, !295, i64 0}
!411 = !{!"list_data_s", !295, i64 0, !295, i64 2}
!412 = !DILocation(line: 138, column: 22, scope: !409)
!413 = !DILocation(line: 138, column: 32, scope: !409)
!414 = !DILocation(line: 138, column: 58, scope: !409)
!415 = !DILocation(line: 138, column: 55, scope: !409)
!416 = !DILocation(line: 138, column: 65, scope: !409)
!417 = !DILocation(line: 138, column: 52, scope: !409)
!418 = !DILocation(line: 138, column: 42, scope: !409)
!419 = !DILocation(line: 138, column: 21, scope: !409)
!420 = !DILocation(line: 138, column: 12, scope: !409)
!421 = !DILocation(line: 138, column: 19, scope: !409)
!422 = !DILocation(line: 139, column: 25, scope: !409)
!423 = !DILocation(line: 139, column: 22, scope: !409)
!424 = !DILocation(line: 139, column: 32, scope: !409)
!425 = !DILocation(line: 139, column: 58, scope: !409)
!426 = !DILocation(line: 139, column: 55, scope: !409)
!427 = !DILocation(line: 139, column: 65, scope: !409)
!428 = !DILocation(line: 139, column: 52, scope: !409)
!429 = !DILocation(line: 139, column: 42, scope: !409)
!430 = !DILocation(line: 139, column: 21, scope: !409)
!431 = !DILocation(line: 139, column: 12, scope: !409)
!432 = !DILocation(line: 139, column: 19, scope: !409)
!433 = !DILocation(line: 140, column: 5, scope: !409)
!434 = !DILocation(line: 141, column: 15, scope: !399)
!435 = !{!411, !295, i64 2}
!436 = !DILocation(line: 141, column: 12, scope: !399)
!437 = !DILocation(line: 141, column: 24, scope: !399)
!438 = !DILocation(line: 141, column: 21, scope: !399)
!439 = !DILocation(line: 141, column: 19, scope: !399)
!440 = !DILocation(line: 141, column: 5, scope: !399)
!441 = distinct !DISubprogram(name: "copy_info", scope: !242, file: !242, line: 145, type: !442, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !221, !221}
!444 = !{!445, !446}
!445 = !DILocalVariable(name: "to", arg: 1, scope: !441, file: !242, line: 145, type: !221)
!446 = !DILocalVariable(name: "from", arg: 2, scope: !441, file: !242, line: 145, type: !221)
!447 = !DILocation(line: 0, scope: !441)
!448 = !DILocation(line: 147, column: 24, scope: !441)
!449 = !DILocation(line: 147, column: 9, scope: !441)
!450 = !DILocation(line: 147, column: 16, scope: !441)
!451 = !DILocation(line: 148, column: 24, scope: !441)
!452 = !DILocation(line: 148, column: 9, scope: !441)
!453 = !DILocation(line: 148, column: 16, scope: !441)
!454 = !DILocation(line: 149, column: 1, scope: !441)
!455 = distinct !DISubprogram(name: "core_bench_list", scope: !242, file: !242, line: 159, type: !456, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{!53, !246, !12}
!458 = !{!459, !460, !461, !462, !463, !464, !467, !468, !469, !470, !471, !472}
!459 = !DILocalVariable(name: "res", arg: 1, scope: !455, file: !242, line: 159, type: !246)
!460 = !DILocalVariable(name: "finder_idx", arg: 2, scope: !455, file: !242, line: 159, type: !12)
!461 = !DILocalVariable(name: "retval", scope: !455, file: !242, line: 161, type: !53)
!462 = !DILocalVariable(name: "found", scope: !455, file: !242, line: 162, type: !53)
!463 = !DILocalVariable(name: "missed", scope: !455, file: !242, line: 162, type: !53)
!464 = !DILocalVariable(name: "list", scope: !455, file: !242, line: 163, type: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head", file: !8, line: 101, baseType: !259)
!467 = !DILocalVariable(name: "find_num", scope: !455, file: !242, line: 164, type: !12)
!468 = !DILocalVariable(name: "this_find", scope: !455, file: !242, line: 165, type: !465)
!469 = !DILocalVariable(name: "finder", scope: !455, file: !242, line: 166, type: !465)
!470 = !DILocalVariable(name: "remover", scope: !455, file: !242, line: 166, type: !465)
!471 = !DILocalVariable(name: "info", scope: !455, file: !242, line: 167, type: !222)
!472 = !DILocalVariable(name: "i", scope: !455, file: !242, line: 168, type: !12)
!473 = !DILocation(line: 0, scope: !455)
!474 = !DILocation(line: 163, column: 32, scope: !455)
!475 = !{!327, !329, i64 36}
!476 = !DILocation(line: 164, column: 32, scope: !455)
!477 = !{!327, !295, i64 4}
!478 = !DILocation(line: 167, column: 5, scope: !455)
!479 = !DILocation(line: 167, column: 16, scope: !455)
!480 = !DILocation(line: 170, column: 10, scope: !455)
!481 = !DILocation(line: 170, column: 14, scope: !455)
!482 = !DILocation(line: 173, column: 10, scope: !483)
!483 = distinct !DILexicalBlock(scope: !455, file: !242, line: 173, column: 5)
!484 = !DILocation(line: 162, column: 16, scope: !455)
!485 = !DILocation(line: 0, scope: !483)
!486 = !DILocation(line: 173, column: 17, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !242, line: 173, column: 5)
!488 = !DILocation(line: 173, column: 21, scope: !487)
!489 = !DILocation(line: 173, column: 19, scope: !487)
!490 = !DILocation(line: 173, column: 5, scope: !483)
!491 = !DILocation(line: 175, column: 24, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !242, line: 174, column: 5)
!493 = !DILocation(line: 175, column: 26, scope: !492)
!494 = !DILocation(line: 175, column: 23, scope: !492)
!495 = !DILocation(line: 175, column: 14, scope: !492)
!496 = !DILocation(line: 175, column: 21, scope: !492)
!497 = !DILocation(line: 176, column: 23, scope: !492)
!498 = !DILocation(line: 177, column: 23, scope: !492)
!499 = !DILocation(line: 178, column: 23, scope: !500)
!500 = distinct !DILexicalBlock(scope: !492, file: !242, line: 178, column: 13)
!501 = !DILocation(line: 178, column: 13, scope: !492)
!502 = !DILocation(line: 180, column: 19, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !242, line: 179, column: 9)
!504 = !DILocation(line: 181, column: 30, scope: !503)
!505 = !{!506, !329, i64 0}
!506 = !{!"list_head_s", !329, i64 0, !329, i64 4}
!507 = !DILocation(line: 181, column: 36, scope: !503)
!508 = !{!506, !329, i64 4}
!509 = !DILocation(line: 181, column: 42, scope: !503)
!510 = !DILocation(line: 181, column: 24, scope: !503)
!511 = !DILocation(line: 181, column: 49, scope: !503)
!512 = !DILocation(line: 181, column: 55, scope: !503)
!513 = !DILocation(line: 181, column: 20, scope: !503)
!514 = !DILocation(line: 182, column: 9, scope: !503)
!515 = !DILocation(line: 185, column: 18, scope: !516)
!516 = distinct !DILexicalBlock(scope: !500, file: !242, line: 184, column: 9)
!517 = !DILocation(line: 186, column: 28, scope: !518)
!518 = distinct !DILexicalBlock(scope: !516, file: !242, line: 186, column: 17)
!519 = !DILocation(line: 186, column: 34, scope: !518)
!520 = !DILocation(line: 186, column: 17, scope: !518)
!521 = !DILocation(line: 186, column: 41, scope: !518)
!522 = !DILocation(line: 186, column: 17, scope: !516)
!523 = !DILocation(line: 187, column: 39, scope: !518)
!524 = !DILocation(line: 187, column: 45, scope: !518)
!525 = !DILocation(line: 187, column: 28, scope: !518)
!526 = !DILocation(line: 187, column: 52, scope: !518)
!527 = !DILocation(line: 187, column: 58, scope: !518)
!528 = !DILocation(line: 187, column: 24, scope: !518)
!529 = !DILocation(line: 187, column: 17, scope: !518)
!530 = !DILocation(line: 189, column: 28, scope: !531)
!531 = distinct !DILexicalBlock(scope: !516, file: !242, line: 189, column: 17)
!532 = !DILocation(line: 189, column: 33, scope: !531)
!533 = !DILocation(line: 189, column: 17, scope: !516)
!534 = !DILocation(line: 191, column: 46, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !242, line: 190, column: 13)
!536 = !DILocation(line: 192, column: 43, scope: !535)
!537 = !DILocation(line: 192, column: 28, scope: !535)
!538 = !DILocation(line: 192, column: 33, scope: !535)
!539 = !DILocation(line: 193, column: 41, scope: !535)
!540 = !DILocation(line: 193, column: 25, scope: !535)
!541 = !DILocation(line: 193, column: 33, scope: !535)
!542 = !DILocation(line: 194, column: 23, scope: !535)
!543 = !DILocation(line: 194, column: 33, scope: !535)
!544 = !DILocation(line: 195, column: 13, scope: !535)
!545 = !DILocation(line: 0, scope: !500)
!546 = !DILocation(line: 197, column: 18, scope: !547)
!547 = distinct !DILexicalBlock(scope: !492, file: !242, line: 197, column: 13)
!548 = !DILocation(line: 197, column: 13, scope: !547)
!549 = !DILocation(line: 197, column: 22, scope: !547)
!550 = !DILocation(line: 197, column: 13, scope: !492)
!551 = !DILocation(line: 198, column: 18, scope: !547)
!552 = !DILocation(line: 198, column: 21, scope: !547)
!553 = !DILocation(line: 198, column: 13, scope: !547)
!554 = !DILocation(line: 202, column: 5, scope: !492)
!555 = !DILocation(line: 173, column: 32, scope: !487)
!556 = !DILocation(line: 173, column: 5, scope: !487)
!557 = distinct !{!557, !490, !558}
!558 = !DILocation(line: 202, column: 5, scope: !483)
!559 = !DILocation(line: 203, column: 15, scope: !455)
!560 = !DILocation(line: 203, column: 21, scope: !455)
!561 = !DILocation(line: 203, column: 27, scope: !455)
!562 = !DILocation(line: 203, column: 25, scope: !455)
!563 = !DILocation(line: 203, column: 12, scope: !455)
!564 = !DILocation(line: 205, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !455, file: !242, line: 205, column: 9)
!566 = !DILocation(line: 205, column: 20, scope: !565)
!567 = !DILocation(line: 205, column: 9, scope: !455)
!568 = !DILocation(line: 206, column: 16, scope: !565)
!569 = !DILocation(line: 206, column: 9, scope: !565)
!570 = !DILocation(line: 207, column: 38, scope: !455)
!571 = !DILocation(line: 207, column: 15, scope: !455)
!572 = !DILocation(line: 210, column: 14, scope: !455)
!573 = !DILocation(line: 211, column: 10, scope: !574)
!574 = distinct !DILexicalBlock(scope: !455, file: !242, line: 211, column: 9)
!575 = !DILocation(line: 211, column: 9, scope: !455)
!576 = !DILocation(line: 212, column: 24, scope: !574)
!577 = !DILocation(line: 212, column: 9, scope: !574)
!578 = !DILocation(line: 213, column: 5, scope: !455)
!579 = !DILocation(line: 215, column: 30, scope: !580)
!580 = distinct !DILexicalBlock(scope: !455, file: !242, line: 214, column: 5)
!581 = !DILocation(line: 215, column: 36, scope: !580)
!582 = !DILocation(line: 215, column: 18, scope: !580)
!583 = !DILocation(line: 216, column: 26, scope: !580)
!584 = distinct !{!584, !578, !585}
!585 = !DILocation(line: 217, column: 5, scope: !455)
!586 = !DILocation(line: 221, column: 52, scope: !455)
!587 = !DILocation(line: 221, column: 15, scope: !455)
!588 = !DILocation(line: 223, column: 12, scope: !455)
!589 = !DILocation(line: 225, column: 20, scope: !455)
!590 = !DILocation(line: 226, column: 5, scope: !455)
!591 = !DILocation(line: 228, column: 30, scope: !592)
!592 = distinct !DILexicalBlock(scope: !455, file: !242, line: 227, column: 5)
!593 = !DILocation(line: 228, column: 36, scope: !592)
!594 = !DILocation(line: 228, column: 18, scope: !592)
!595 = !DILocation(line: 229, column: 26, scope: !592)
!596 = distinct !{!596, !590, !597}
!597 = !DILocation(line: 230, column: 5, scope: !455)
!598 = !DILocation(line: 235, column: 1, scope: !455)
!599 = !DILocation(line: 234, column: 5, scope: !455)
!600 = distinct !DISubprogram(name: "core_list_find", scope: !242, file: !242, line: 435, type: !601, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!465, !465, !221}
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "list", arg: 1, scope: !600, file: !242, line: 435, type: !465)
!605 = !DILocalVariable(name: "info", arg: 2, scope: !600, file: !242, line: 435, type: !221)
!606 = !DILocation(line: 0, scope: !600)
!607 = !DILocation(line: 437, column: 15, scope: !608)
!608 = distinct !DILexicalBlock(scope: !600, file: !242, line: 437, column: 9)
!609 = !DILocation(line: 437, column: 9, scope: !608)
!610 = !DILocation(line: 437, column: 19, scope: !608)
!611 = !DILocation(line: 437, column: 9, scope: !600)
!612 = !DILocation(line: 439, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !608, file: !242, line: 438, column: 5)
!614 = !DILocation(line: 439, column: 16, scope: !613)
!615 = !DILocation(line: 439, column: 21, scope: !613)
!616 = !DILocation(line: 439, column: 31, scope: !613)
!617 = !DILocation(line: 439, column: 37, scope: !613)
!618 = !DILocation(line: 439, column: 25, scope: !613)
!619 = !DILocation(line: 439, column: 50, scope: !613)
!620 = !DILocation(line: 439, column: 44, scope: !613)
!621 = !DILocation(line: 439, column: 41, scope: !613)
!622 = !DILocation(line: 0, scope: !613)
!623 = !DILocation(line: 440, column: 26, scope: !613)
!624 = distinct !{!624, !612, !623}
!625 = !DILocation(line: 441, column: 9, scope: !613)
!626 = !DILocation(line: 445, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !608, file: !242, line: 444, column: 5)
!628 = !DILocation(line: 445, column: 16, scope: !627)
!629 = !DILocation(line: 445, column: 21, scope: !627)
!630 = !DILocation(line: 445, column: 32, scope: !627)
!631 = !DILocation(line: 445, column: 38, scope: !627)
!632 = !DILocation(line: 445, column: 26, scope: !627)
!633 = !DILocation(line: 445, column: 45, scope: !627)
!634 = !DILocation(line: 445, column: 62, scope: !627)
!635 = !DILocation(line: 445, column: 56, scope: !627)
!636 = !DILocation(line: 445, column: 53, scope: !627)
!637 = !DILocation(line: 0, scope: !627)
!638 = !DILocation(line: 446, column: 26, scope: !627)
!639 = distinct !{!639, !626, !638}
!640 = !DILocation(line: 447, column: 9, scope: !627)
!641 = !DILocation(line: 0, scope: !608)
!642 = !DILocation(line: 449, column: 1, scope: !600)
!643 = distinct !DISubprogram(name: "core_list_reverse", scope: !242, file: !242, line: 465, type: !644, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{!465, !465}
!646 = !{!647, !648, !649}
!647 = !DILocalVariable(name: "list", arg: 1, scope: !643, file: !242, line: 465, type: !465)
!648 = !DILocalVariable(name: "next", scope: !643, file: !242, line: 467, type: !465)
!649 = !DILocalVariable(name: "tmp", scope: !643, file: !242, line: 467, type: !465)
!650 = !DILocation(line: 0, scope: !643)
!651 = !DILocation(line: 468, column: 5, scope: !643)
!652 = !DILocation(line: 470, column: 28, scope: !653)
!653 = distinct !DILexicalBlock(scope: !643, file: !242, line: 469, column: 5)
!654 = !DILocation(line: 471, column: 15, scope: !653)
!655 = !DILocation(line: 471, column: 20, scope: !653)
!656 = distinct !{!656, !651, !657}
!657 = !DILocation(line: 474, column: 5, scope: !643)
!658 = !DILocation(line: 475, column: 5, scope: !643)
!659 = distinct !DISubprogram(name: "core_list_mergesort", scope: !242, file: !242, line: 500, type: !660, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !664)
!660 = !DISubroutineType(types: !661)
!661 = !{!465, !465, !662, !246}
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_cmp", file: !242, line: 64, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!665 = !DILocalVariable(name: "list", arg: 1, scope: !659, file: !242, line: 500, type: !465)
!666 = !DILocalVariable(name: "cmp", arg: 2, scope: !659, file: !242, line: 500, type: !662)
!667 = !DILocalVariable(name: "res", arg: 3, scope: !659, file: !242, line: 500, type: !246)
!668 = !DILocalVariable(name: "p", scope: !659, file: !242, line: 502, type: !465)
!669 = !DILocalVariable(name: "q", scope: !659, file: !242, line: 502, type: !465)
!670 = !DILocalVariable(name: "e", scope: !659, file: !242, line: 502, type: !465)
!671 = !DILocalVariable(name: "tail", scope: !659, file: !242, line: 502, type: !465)
!672 = !DILocalVariable(name: "insize", scope: !659, file: !242, line: 503, type: !51)
!673 = !DILocalVariable(name: "nmerges", scope: !659, file: !242, line: 503, type: !51)
!674 = !DILocalVariable(name: "psize", scope: !659, file: !242, line: 503, type: !51)
!675 = !DILocalVariable(name: "qsize", scope: !659, file: !242, line: 503, type: !51)
!676 = !DILocalVariable(name: "i", scope: !659, file: !242, line: 503, type: !51)
!677 = !DILocation(line: 0, scope: !659)
!678 = !DILocation(line: 507, column: 5, scope: !659)
!679 = !DILocation(line: 515, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !659, file: !242, line: 508, column: 5)
!681 = !DILocation(line: 0, scope: !680)
!682 = !DILocation(line: 511, column: 14, scope: !680)
!683 = !DILocation(line: 510, column: 14, scope: !680)
!684 = !DILocation(line: 517, column: 20, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !242, line: 516, column: 9)
!686 = !DILocation(line: 521, column: 18, scope: !687)
!687 = distinct !DILexicalBlock(scope: !685, file: !242, line: 521, column: 13)
!688 = !DILocation(line: 0, scope: !685)
!689 = !DILocation(line: 521, column: 27, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !242, line: 521, column: 13)
!691 = !DILocation(line: 521, column: 13, scope: !687)
!692 = !DILocation(line: 523, column: 22, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !242, line: 522, column: 13)
!694 = !DILocation(line: 524, column: 24, scope: !693)
!695 = !DILocation(line: 525, column: 22, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !242, line: 525, column: 21)
!697 = !DILocation(line: 525, column: 21, scope: !693)
!698 = !DILocation(line: 526, column: 21, scope: !696)
!699 = !DILocation(line: 527, column: 13, scope: !693)
!700 = !DILocation(line: 521, column: 13, scope: !690)
!701 = distinct !{!701, !691, !702}
!702 = !DILocation(line: 527, column: 13, scope: !687)
!703 = !DILocation(line: 533, column: 13, scope: !685)
!704 = !DILocation(line: 509, column: 14, scope: !680)
!705 = !DILocation(line: 533, column: 26, scope: !685)
!706 = !DILocation(line: 533, column: 30, scope: !685)
!707 = !DILocation(line: 533, column: 40, scope: !685)
!708 = !DILocation(line: 533, column: 44, scope: !685)
!709 = !DILocation(line: 537, column: 27, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !242, line: 537, column: 21)
!711 = distinct !DILexicalBlock(scope: !685, file: !242, line: 534, column: 13)
!712 = !DILocation(line: 537, column: 21, scope: !711)
!713 = !DILocation(line: 541, column: 28, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !242, line: 538, column: 17)
!715 = !DILocation(line: 542, column: 26, scope: !714)
!716 = !DILocation(line: 543, column: 17, scope: !714)
!717 = !DILocation(line: 544, column: 32, scope: !718)
!718 = distinct !DILexicalBlock(scope: !710, file: !242, line: 544, column: 26)
!719 = !DILocation(line: 544, column: 37, scope: !718)
!720 = !DILocation(line: 544, column: 41, scope: !718)
!721 = !DILocation(line: 544, column: 26, scope: !710)
!722 = !DILocation(line: 548, column: 28, scope: !723)
!723 = distinct !DILexicalBlock(scope: !718, file: !242, line: 545, column: 17)
!724 = !DILocation(line: 549, column: 26, scope: !723)
!725 = !DILocation(line: 550, column: 17, scope: !723)
!726 = !DILocation(line: 551, column: 33, scope: !727)
!727 = distinct !DILexicalBlock(scope: !718, file: !242, line: 551, column: 26)
!728 = !DILocation(line: 551, column: 42, scope: !727)
!729 = !DILocation(line: 551, column: 26, scope: !727)
!730 = !DILocation(line: 551, column: 53, scope: !727)
!731 = !DILocation(line: 551, column: 26, scope: !718)
!732 = !DILocation(line: 556, column: 28, scope: !733)
!733 = distinct !DILexicalBlock(scope: !727, file: !242, line: 552, column: 17)
!734 = !DILocation(line: 557, column: 26, scope: !733)
!735 = !DILocation(line: 558, column: 17, scope: !733)
!736 = !DILocation(line: 563, column: 28, scope: !737)
!737 = distinct !DILexicalBlock(scope: !727, file: !242, line: 560, column: 17)
!738 = !DILocation(line: 564, column: 26, scope: !737)
!739 = !DILocation(line: 0, scope: !727)
!740 = !DILocation(line: 0, scope: !718)
!741 = !DILocation(line: 524, column: 19, scope: !693)
!742 = !DILocation(line: 530, column: 19, scope: !685)
!743 = !DILocation(line: 0, scope: !710)
!744 = !DILocation(line: 568, column: 21, scope: !745)
!745 = distinct !DILexicalBlock(scope: !711, file: !242, line: 568, column: 21)
!746 = !DILocation(line: 568, column: 21, scope: !711)
!747 = !DILocation(line: 570, column: 27, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !242, line: 569, column: 17)
!749 = !DILocation(line: 570, column: 32, scope: !748)
!750 = !DILocation(line: 571, column: 17, scope: !748)
!751 = distinct !{!751, !703, !752}
!752 = !DILocation(line: 577, column: 13, scope: !685)
!753 = distinct !{!753, !679, !754}
!754 = !DILocation(line: 581, column: 9, scope: !680)
!755 = !DILocation(line: 583, column: 15, scope: !680)
!756 = !DILocation(line: 583, column: 20, scope: !680)
!757 = !DILocation(line: 586, column: 21, scope: !758)
!758 = distinct !DILexicalBlock(scope: !680, file: !242, line: 586, column: 13)
!759 = !DILocation(line: 586, column: 13, scope: !680)
!760 = !DILocation(line: 587, column: 13, scope: !758)
!761 = !DILocation(line: 590, column: 16, scope: !680)
!762 = distinct !{!762, !678, !763}
!763 = !DILocation(line: 591, column: 5, scope: !659)
!764 = distinct !DISubprogram(name: "core_list_remove", scope: !242, file: !242, line: 377, type: !644, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !765)
!765 = !{!766, !767, !768}
!766 = !DILocalVariable(name: "item", arg: 1, scope: !764, file: !242, line: 377, type: !465)
!767 = !DILocalVariable(name: "tmp", scope: !764, file: !242, line: 379, type: !221)
!768 = !DILocalVariable(name: "ret", scope: !764, file: !242, line: 380, type: !465)
!769 = !DILocation(line: 0, scope: !764)
!770 = !DILocation(line: 380, column: 28, scope: !764)
!771 = !DILocation(line: 382, column: 24, scope: !764)
!772 = !DILocation(line: 383, column: 23, scope: !764)
!773 = !DILocation(line: 383, column: 11, scope: !764)
!774 = !DILocation(line: 383, column: 16, scope: !764)
!775 = !DILocation(line: 384, column: 10, scope: !764)
!776 = !DILocation(line: 384, column: 16, scope: !764)
!777 = !DILocation(line: 386, column: 24, scope: !764)
!778 = !DILocation(line: 386, column: 30, scope: !764)
!779 = !DILocation(line: 386, column: 11, scope: !764)
!780 = !DILocation(line: 386, column: 16, scope: !764)
!781 = !DILocation(line: 387, column: 10, scope: !764)
!782 = !DILocation(line: 387, column: 16, scope: !764)
!783 = !DILocation(line: 388, column: 5, scope: !764)
!784 = distinct !DISubprogram(name: "core_list_undo_remove", scope: !242, file: !242, line: 408, type: !785, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!465, !465, !465}
!787 = !{!788, !789, !790}
!788 = !DILocalVariable(name: "item_removed", arg: 1, scope: !784, file: !242, line: 408, type: !465)
!789 = !DILocalVariable(name: "item_modified", arg: 2, scope: !784, file: !242, line: 408, type: !465)
!790 = !DILocalVariable(name: "tmp", scope: !784, file: !242, line: 410, type: !221)
!791 = !DILocation(line: 0, scope: !784)
!792 = !DILocation(line: 412, column: 41, scope: !784)
!793 = !DILocation(line: 413, column: 42, scope: !784)
!794 = !DILocation(line: 413, column: 19, scope: !784)
!795 = !DILocation(line: 413, column: 25, scope: !784)
!796 = !DILocation(line: 414, column: 20, scope: !784)
!797 = !DILocation(line: 414, column: 25, scope: !784)
!798 = !DILocation(line: 416, column: 42, scope: !784)
!799 = !DILocation(line: 416, column: 19, scope: !784)
!800 = !DILocation(line: 416, column: 25, scope: !784)
!801 = !DILocation(line: 417, column: 20, scope: !784)
!802 = !DILocation(line: 417, column: 25, scope: !784)
!803 = !DILocation(line: 418, column: 5, scope: !784)
!804 = distinct !DISubprogram(name: "core_list_init", scope: !242, file: !242, line: 251, type: !805, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{!465, !23, !465, !12}
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !824, !825}
!808 = !DILocalVariable(name: "blksize", arg: 1, scope: !804, file: !242, line: 251, type: !23)
!809 = !DILocalVariable(name: "memblock", arg: 2, scope: !804, file: !242, line: 251, type: !465)
!810 = !DILocalVariable(name: "seed", arg: 3, scope: !804, file: !242, line: 251, type: !12)
!811 = !DILocalVariable(name: "per_item", scope: !804, file: !242, line: 254, type: !23)
!812 = !DILocalVariable(name: "size", scope: !804, file: !242, line: 255, type: !23)
!813 = !DILocalVariable(name: "memblock_end", scope: !804, file: !242, line: 258, type: !465)
!814 = !DILocalVariable(name: "datablock", scope: !804, file: !242, line: 259, type: !221)
!815 = !DILocalVariable(name: "datablock_end", scope: !804, file: !242, line: 260, type: !221)
!816 = !DILocalVariable(name: "i", scope: !804, file: !242, line: 262, type: !23)
!817 = !DILocalVariable(name: "finder", scope: !804, file: !242, line: 263, type: !465)
!818 = !DILocalVariable(name: "list", scope: !804, file: !242, line: 263, type: !465)
!819 = !DILocalVariable(name: "info", scope: !804, file: !242, line: 264, type: !222)
!820 = !DILocalVariable(name: "datpat", scope: !821, file: !242, line: 281, type: !53)
!821 = distinct !DILexicalBlock(scope: !822, file: !242, line: 280, column: 5)
!822 = distinct !DILexicalBlock(scope: !823, file: !242, line: 279, column: 5)
!823 = distinct !DILexicalBlock(scope: !804, file: !242, line: 279, column: 5)
!824 = !DILocalVariable(name: "dat", scope: !821, file: !242, line: 282, type: !53)
!825 = !DILocalVariable(name: "pat", scope: !826, file: !242, line: 298, type: !53)
!826 = distinct !DILexicalBlock(scope: !827, file: !242, line: 297, column: 9)
!827 = distinct !DILexicalBlock(scope: !828, file: !242, line: 294, column: 13)
!828 = distinct !DILexicalBlock(scope: !804, file: !242, line: 293, column: 5)
!829 = !DILocation(line: 0, scope: !804)
!830 = !DILocation(line: 251, column: 43, scope: !804)
!831 = !DILocation(line: 255, column: 32, scope: !804)
!832 = !DILocation(line: 256, column: 19, scope: !804)
!833 = !DILocation(line: 258, column: 32, scope: !804)
!834 = !DILocation(line: 258, column: 41, scope: !804)
!835 = !DILocation(line: 259, column: 5, scope: !804)
!836 = !DILocation(line: 259, column: 16, scope: !804)
!837 = !DILocation(line: 259, column: 32, scope: !804)
!838 = !DILocation(line: 260, column: 32, scope: !804)
!839 = !DILocation(line: 260, column: 42, scope: !804)
!840 = !DILocation(line: 263, column: 32, scope: !804)
!841 = !DILocation(line: 264, column: 5, scope: !804)
!842 = !DILocation(line: 264, column: 16, scope: !804)
!843 = !DILocation(line: 267, column: 11, scope: !804)
!844 = !DILocation(line: 267, column: 24, scope: !804)
!845 = !DILocation(line: 268, column: 26, scope: !804)
!846 = !DILocation(line: 268, column: 11, scope: !804)
!847 = !DILocation(line: 268, column: 24, scope: !804)
!848 = !DILocation(line: 269, column: 11, scope: !804)
!849 = !DILocation(line: 269, column: 17, scope: !804)
!850 = !DILocation(line: 269, column: 24, scope: !804)
!851 = !DILocation(line: 270, column: 11, scope: !804)
!852 = !DILocation(line: 270, column: 17, scope: !804)
!853 = !DILocation(line: 270, column: 24, scope: !804)
!854 = !DILocation(line: 271, column: 13, scope: !804)
!855 = !DILocation(line: 272, column: 14, scope: !804)
!856 = !DILocation(line: 273, column: 10, scope: !804)
!857 = !DILocation(line: 273, column: 17, scope: !804)
!858 = !DILocation(line: 274, column: 10, scope: !804)
!859 = !DILocation(line: 274, column: 17, scope: !804)
!860 = !DILocation(line: 275, column: 5, scope: !804)
!861 = !DILocation(line: 279, column: 10, scope: !823)
!862 = !DILocation(line: 0, scope: !823)
!863 = !DILocation(line: 279, column: 19, scope: !822)
!864 = !DILocation(line: 279, column: 5, scope: !823)
!865 = !DILocation(line: 281, column: 35, scope: !821)
!866 = !DILocation(line: 281, column: 40, scope: !821)
!867 = !DILocation(line: 281, column: 26, scope: !821)
!868 = !DILocation(line: 281, column: 45, scope: !821)
!869 = !DILocation(line: 281, column: 25, scope: !821)
!870 = !DILocation(line: 0, scope: !821)
!871 = !DILocation(line: 283, column: 16, scope: !821)
!872 = !DILocation(line: 283, column: 23, scope: !821)
!873 = !DILocation(line: 283, column: 34, scope: !821)
!874 = !DILocation(line: 283, column: 29, scope: !821)
!875 = !DILocation(line: 283, column: 15, scope: !821)
!876 = !DILocation(line: 284, column: 24, scope: !821)
!877 = !DILocation(line: 284, column: 28, scope: !821)
!878 = !DILocation(line: 284, column: 36, scope: !821)
!879 = !DILocation(line: 284, column: 34, scope: !821)
!880 = !DILocation(line: 284, column: 23, scope: !821)
!881 = !DILocation(line: 284, column: 14, scope: !821)
!882 = !DILocation(line: 284, column: 21, scope: !821)
!883 = !DILocation(line: 286, column: 9, scope: !821)
!884 = !DILocation(line: 288, column: 5, scope: !821)
!885 = !DILocation(line: 279, column: 28, scope: !822)
!886 = !DILocation(line: 279, column: 5, scope: !822)
!887 = distinct !{!887, !864, !888}
!888 = !DILocation(line: 288, column: 5, scope: !823)
!889 = !DILocation(line: 290, column: 20, scope: !804)
!890 = !DILocation(line: 292, column: 5, scope: !804)
!891 = !DILocation(line: 292, column: 20, scope: !804)
!892 = !DILocation(line: 292, column: 25, scope: !804)
!893 = !DILocation(line: 294, column: 22, scope: !827)
!894 = !DILocation(line: 294, column: 15, scope: !827)
!895 = !DILocation(line: 294, column: 13, scope: !828)
!896 = !DILocation(line: 295, column: 34, scope: !827)
!897 = !DILocation(line: 295, column: 33, scope: !827)
!898 = !DILocation(line: 295, column: 21, scope: !827)
!899 = !DILocation(line: 295, column: 27, scope: !827)
!900 = !DILocation(line: 295, column: 31, scope: !827)
!901 = !DILocation(line: 295, column: 13, scope: !827)
!902 = !DILocation(line: 298, column: 36, scope: !826)
!903 = !DILocation(line: 298, column: 41, scope: !826)
!904 = !DILocation(line: 298, column: 39, scope: !826)
!905 = !DILocation(line: 298, column: 26, scope: !826)
!906 = !DILocation(line: 0, scope: !826)
!907 = !DILocation(line: 300, column: 40, scope: !826)
!908 = !DILocation(line: 300, column: 48, scope: !826)
!909 = !DILocation(line: 301, column: 38, scope: !826)
!910 = !DILocation(line: 301, column: 36, scope: !826)
!911 = !DILocation(line: 300, column: 33, scope: !826)
!912 = !DILocation(line: 299, column: 33, scope: !826)
!913 = !DILocation(line: 299, column: 21, scope: !826)
!914 = !DILocation(line: 299, column: 27, scope: !826)
!915 = !DILocation(line: 299, column: 31, scope: !826)
!916 = !DILocation(line: 0, scope: !827)
!917 = !DILocation(line: 304, column: 26, scope: !828)
!918 = distinct !{!918, !890, !919}
!919 = !DILocation(line: 305, column: 5, scope: !804)
!920 = !DILocation(line: 306, column: 12, scope: !804)
!921 = !DILocation(line: 319, column: 1, scope: !804)
!922 = !DILocation(line: 318, column: 5, scope: !804)
!923 = distinct !DISubprogram(name: "core_list_insert_new", scope: !242, file: !242, line: 336, type: !924, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !928)
!924 = !DISubroutineType(types: !925)
!925 = !{!465, !465, !221, !926, !927, !465, !221}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!928 = !{!929, !930, !931, !932, !933, !934, !935}
!929 = !DILocalVariable(name: "insert_point", arg: 1, scope: !923, file: !242, line: 336, type: !465)
!930 = !DILocalVariable(name: "info", arg: 2, scope: !923, file: !242, line: 337, type: !221)
!931 = !DILocalVariable(name: "memblock", arg: 3, scope: !923, file: !242, line: 338, type: !926)
!932 = !DILocalVariable(name: "datablock", arg: 4, scope: !923, file: !242, line: 339, type: !927)
!933 = !DILocalVariable(name: "memblock_end", arg: 5, scope: !923, file: !242, line: 340, type: !465)
!934 = !DILocalVariable(name: "datablock_end", arg: 6, scope: !923, file: !242, line: 341, type: !221)
!935 = !DILocalVariable(name: "newitem", scope: !923, file: !242, line: 343, type: !465)
!936 = !DILocation(line: 0, scope: !923)
!937 = !DILocation(line: 345, column: 10, scope: !938)
!938 = distinct !DILexicalBlock(scope: !923, file: !242, line: 345, column: 9)
!939 = !DILocation(line: 345, column: 20, scope: !938)
!940 = !DILocation(line: 345, column: 25, scope: !938)
!941 = !DILocation(line: 345, column: 9, scope: !923)
!942 = !DILocation(line: 346, column: 9, scope: !938)
!943 = !DILocation(line: 347, column: 10, scope: !944)
!944 = distinct !DILexicalBlock(scope: !923, file: !242, line: 347, column: 9)
!945 = !DILocation(line: 347, column: 21, scope: !944)
!946 = !DILocation(line: 347, column: 26, scope: !944)
!947 = !DILocation(line: 347, column: 9, scope: !923)
!948 = !DILocation(line: 348, column: 9, scope: !944)
!949 = !DILocation(line: 350, column: 15, scope: !923)
!950 = !DILocation(line: 351, column: 16, scope: !923)
!951 = !DILocation(line: 352, column: 40, scope: !923)
!952 = !DILocation(line: 352, column: 14, scope: !923)
!953 = !DILocation(line: 352, column: 24, scope: !923)
!954 = !DILocation(line: 353, column: 19, scope: !923)
!955 = !DILocation(line: 353, column: 24, scope: !923)
!956 = !DILocation(line: 355, column: 21, scope: !923)
!957 = !DILocation(line: 355, column: 14, scope: !923)
!958 = !DILocation(line: 355, column: 19, scope: !923)
!959 = !DILocation(line: 356, column: 17, scope: !923)
!960 = !DILocation(line: 357, column: 24, scope: !923)
!961 = !DILocation(line: 357, column: 5, scope: !923)
!962 = !DILocation(line: 359, column: 5, scope: !923)
!963 = !DILocation(line: 360, column: 1, scope: !923)
!964 = distinct !DISubprogram(name: "iterate", scope: !74, file: !74, line: 52, type: !965, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{!19, !19}
!967 = !{!968, !969, !970, !971, !972}
!968 = !DILocalVariable(name: "pres", arg: 1, scope: !964, file: !74, line: 52, type: !19)
!969 = !DILocalVariable(name: "i", scope: !964, file: !74, line: 54, type: !23)
!970 = !DILocalVariable(name: "crc", scope: !964, file: !74, line: 55, type: !53)
!971 = !DILocalVariable(name: "res", scope: !964, file: !74, line: 56, type: !6)
!972 = !DILocalVariable(name: "iterations", scope: !964, file: !74, line: 57, type: !23)
!973 = !DILocation(line: 0, scope: !964)
!974 = !DILocation(line: 56, column: 32, scope: !964)
!975 = !DILocation(line: 57, column: 37, scope: !964)
!976 = !{!327, !328, i64 28}
!977 = !DILocation(line: 58, column: 10, scope: !964)
!978 = !DILocation(line: 58, column: 30, scope: !964)
!979 = !DILocation(line: 59, column: 10, scope: !964)
!980 = !DILocation(line: 59, column: 30, scope: !964)
!981 = !{!327, !295, i64 58}
!982 = !DILocation(line: 60, column: 10, scope: !964)
!983 = !DILocation(line: 60, column: 30, scope: !964)
!984 = !DILocation(line: 61, column: 10, scope: !964)
!985 = !DILocation(line: 61, column: 30, scope: !964)
!986 = !DILocation(line: 63, column: 10, scope: !987)
!987 = distinct !DILexicalBlock(scope: !964, file: !74, line: 63, column: 5)
!988 = !DILocation(line: 0, scope: !987)
!989 = !DILocation(line: 63, column: 19, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !74, line: 63, column: 5)
!991 = !DILocation(line: 63, column: 5, scope: !987)
!992 = !DILocation(line: 65, column: 20, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !74, line: 64, column: 5)
!994 = !DILocation(line: 66, column: 37, scope: !993)
!995 = !DILocation(line: 66, column: 20, scope: !993)
!996 = !DILocation(line: 66, column: 14, scope: !993)
!997 = !DILocation(line: 66, column: 18, scope: !993)
!998 = !DILocation(line: 67, column: 20, scope: !993)
!999 = !DILocation(line: 68, column: 37, scope: !993)
!1000 = !DILocation(line: 68, column: 20, scope: !993)
!1001 = !DILocation(line: 68, column: 14, scope: !993)
!1002 = !DILocation(line: 68, column: 18, scope: !993)
!1003 = !DILocation(line: 69, column: 15, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !993, file: !74, line: 69, column: 13)
!1005 = !DILocation(line: 69, column: 13, scope: !993)
!1006 = !DILocation(line: 70, column: 33, scope: !1004)
!1007 = !DILocation(line: 70, column: 18, scope: !1004)
!1008 = !DILocation(line: 70, column: 26, scope: !1004)
!1009 = !DILocation(line: 70, column: 13, scope: !1004)
!1010 = !DILocation(line: 71, column: 5, scope: !993)
!1011 = !DILocation(line: 63, column: 34, scope: !990)
!1012 = !DILocation(line: 63, column: 5, scope: !990)
!1013 = distinct !{!1013, !991, !1014}
!1014 = !DILocation(line: 71, column: 5, scope: !987)
!1015 = !DILocation(line: 72, column: 5, scope: !964)
!1016 = distinct !DISubprogram(name: "main", scope: !74, file: !74, line: 115, type: !1017, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1020)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!43, !43, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1034, !1038, !1042, !1045}
!1021 = !DILocalVariable(name: "argc", arg: 1, scope: !1016, file: !74, line: 115, type: !43)
!1022 = !DILocalVariable(name: "argv", arg: 2, scope: !1016, file: !74, line: 115, type: !1019)
!1023 = !DILocalVariable(name: "i", scope: !1016, file: !74, line: 118, type: !53)
!1024 = !DILocalVariable(name: "j", scope: !1016, file: !74, line: 118, type: !53)
!1025 = !DILocalVariable(name: "num_algorithms", scope: !1016, file: !74, line: 118, type: !53)
!1026 = !DILocalVariable(name: "known_id", scope: !1016, file: !74, line: 119, type: !12)
!1027 = !DILocalVariable(name: "total_errors", scope: !1016, file: !74, line: 119, type: !12)
!1028 = !DILocalVariable(name: "seedcrc", scope: !1016, file: !74, line: 120, type: !53)
!1029 = !DILocalVariable(name: "total_time", scope: !1016, file: !74, line: 121, type: !117)
!1030 = !DILocalVariable(name: "results", scope: !1016, file: !74, line: 122, type: !1031)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 1)
!1034 = !DILocalVariable(name: "stack_memblock", scope: !1016, file: !74, line: 124, type: !1035)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16000, elements: !1036)
!1036 = !{!1037}
!1037 = !DISubrange(count: 2000)
!1038 = !DILocalVariable(name: "ctx", scope: !1039, file: !74, line: 209, type: !23)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !74, line: 208, column: 5)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !74, line: 207, column: 5)
!1041 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 207, column: 5)
!1042 = !DILocalVariable(name: "secs_passed", scope: !1043, file: !74, line: 244, type: !68)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !74, line: 243, column: 5)
!1044 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 242, column: 9)
!1045 = !DILocalVariable(name: "divisor", scope: !1043, file: !74, line: 245, type: !23)
!1046 = !{!328, !328, i64 0}
!1047 = !DILocation(line: 115, column: 10, scope: !1016)
!1048 = !DILocation(line: 0, scope: !1016)
!1049 = !DILocation(line: 122, column: 5, scope: !1016)
!1050 = !DILocation(line: 122, column: 18, scope: !1016)
!1051 = !DILocation(line: 124, column: 5, scope: !1016)
!1052 = !DILocation(line: 124, column: 11, scope: !1016)
!1053 = !DILocation(line: 127, column: 21, scope: !1016)
!1054 = !DILocation(line: 127, column: 32, scope: !1016)
!1055 = !DILocation(line: 127, column: 5, scope: !1016)
!1056 = !DILocation(line: 134, column: 29, scope: !1016)
!1057 = !DILocation(line: 134, column: 5, scope: !1016)
!1058 = !DILocation(line: 134, column: 16, scope: !1016)
!1059 = !DILocation(line: 134, column: 27, scope: !1016)
!1060 = !DILocation(line: 135, column: 29, scope: !1016)
!1061 = !DILocation(line: 135, column: 5, scope: !1016)
!1062 = !DILocation(line: 135, column: 16, scope: !1016)
!1063 = !DILocation(line: 135, column: 27, scope: !1016)
!1064 = !DILocation(line: 136, column: 29, scope: !1016)
!1065 = !DILocation(line: 136, column: 5, scope: !1016)
!1066 = !DILocation(line: 136, column: 16, scope: !1016)
!1067 = !DILocation(line: 136, column: 27, scope: !1016)
!1068 = !DILocation(line: 137, column: 29, scope: !1016)
!1069 = !DILocation(line: 137, column: 5, scope: !1016)
!1070 = !DILocation(line: 137, column: 16, scope: !1016)
!1071 = !DILocation(line: 137, column: 27, scope: !1016)
!1072 = !DILocation(line: 141, column: 24, scope: !1016)
!1073 = !DILocation(line: 141, column: 5, scope: !1016)
!1074 = !DILocation(line: 141, column: 16, scope: !1016)
!1075 = !DILocation(line: 141, column: 22, scope: !1016)
!1076 = !{!327, !328, i64 32}
!1077 = !DILocation(line: 142, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 142, column: 9)
!1079 = !DILocation(line: 142, column: 20, scope: !1078)
!1080 = !DILocation(line: 142, column: 26, scope: !1078)
!1081 = !DILocation(line: 142, column: 9, scope: !1016)
!1082 = !DILocation(line: 144, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !74, line: 143, column: 5)
!1084 = !DILocation(line: 144, column: 20, scope: !1083)
!1085 = !DILocation(line: 144, column: 26, scope: !1083)
!1086 = !DILocation(line: 145, column: 5, scope: !1083)
!1087 = !DILocation(line: 147, column: 10, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 147, column: 9)
!1089 = !DILocation(line: 147, column: 21, scope: !1088)
!1090 = !DILocation(line: 147, column: 27, scope: !1088)
!1091 = !DILocation(line: 147, column: 33, scope: !1088)
!1092 = !DILocation(line: 147, column: 37, scope: !1088)
!1093 = !DILocation(line: 147, column: 48, scope: !1088)
!1094 = !DILocation(line: 147, column: 54, scope: !1088)
!1095 = !DILocation(line: 148, column: 9, scope: !1088)
!1096 = !DILocation(line: 148, column: 13, scope: !1088)
!1097 = !DILocation(line: 148, column: 24, scope: !1088)
!1098 = !DILocation(line: 148, column: 30, scope: !1088)
!1099 = !DILocation(line: 147, column: 9, scope: !1016)
!1100 = !DILocation(line: 150, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1088, file: !74, line: 149, column: 5)
!1102 = !DILocation(line: 150, column: 20, scope: !1101)
!1103 = !DILocation(line: 150, column: 26, scope: !1101)
!1104 = !DILocation(line: 151, column: 9, scope: !1101)
!1105 = !DILocation(line: 151, column: 20, scope: !1101)
!1106 = !DILocation(line: 151, column: 26, scope: !1101)
!1107 = !DILocation(line: 152, column: 9, scope: !1101)
!1108 = !DILocation(line: 152, column: 20, scope: !1101)
!1109 = !DILocation(line: 152, column: 26, scope: !1101)
!1110 = !DILocation(line: 153, column: 5, scope: !1101)
!1111 = !DILocation(line: 154, column: 10, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 154, column: 9)
!1113 = !DILocation(line: 154, column: 21, scope: !1112)
!1114 = !DILocation(line: 154, column: 27, scope: !1112)
!1115 = !DILocation(line: 154, column: 33, scope: !1112)
!1116 = !DILocation(line: 154, column: 37, scope: !1112)
!1117 = !DILocation(line: 154, column: 48, scope: !1112)
!1118 = !DILocation(line: 154, column: 54, scope: !1112)
!1119 = !DILocation(line: 155, column: 9, scope: !1112)
!1120 = !DILocation(line: 155, column: 13, scope: !1112)
!1121 = !DILocation(line: 155, column: 24, scope: !1112)
!1122 = !DILocation(line: 155, column: 30, scope: !1112)
!1123 = !DILocation(line: 154, column: 9, scope: !1016)
!1124 = !DILocation(line: 157, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1112, file: !74, line: 156, column: 5)
!1126 = !DILocation(line: 157, column: 20, scope: !1125)
!1127 = !DILocation(line: 157, column: 26, scope: !1125)
!1128 = !DILocation(line: 158, column: 9, scope: !1125)
!1129 = !DILocation(line: 158, column: 20, scope: !1125)
!1130 = !DILocation(line: 158, column: 26, scope: !1125)
!1131 = !DILocation(line: 159, column: 9, scope: !1125)
!1132 = !DILocation(line: 159, column: 20, scope: !1125)
!1133 = !DILocation(line: 159, column: 26, scope: !1125)
!1134 = !DILocation(line: 160, column: 5, scope: !1125)
!1135 = !DILocation(line: 184, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 184, column: 1)
!1137 = !DILocation(line: 0, scope: !1136)
!1138 = !DILocation(line: 184, column: 15, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !74, line: 184, column: 1)
!1140 = !DILocation(line: 184, column: 1, scope: !1136)
!1141 = !DILocation(line: 186, column: 30, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !74, line: 185, column: 1)
!1143 = !DILocation(line: 186, column: 49, scope: !1142)
!1144 = !DILocation(line: 186, column: 51, scope: !1142)
!1145 = !DILocation(line: 186, column: 45, scope: !1142)
!1146 = !DILocation(line: 186, column: 5, scope: !1142)
!1147 = !DILocation(line: 186, column: 16, scope: !1142)
!1148 = !DILocation(line: 186, column: 28, scope: !1142)
!1149 = !DILocation(line: 187, column: 5, scope: !1142)
!1150 = !DILocation(line: 187, column: 16, scope: !1142)
!1151 = !DILocation(line: 187, column: 28, scope: !1142)
!1152 = !DILocation(line: 188, column: 30, scope: !1142)
!1153 = !DILocation(line: 188, column: 41, scope: !1142)
!1154 = !DILocation(line: 188, column: 5, scope: !1142)
!1155 = !DILocation(line: 188, column: 16, scope: !1142)
!1156 = !DILocation(line: 188, column: 28, scope: !1142)
!1157 = !DILocation(line: 189, column: 30, scope: !1142)
!1158 = !DILocation(line: 189, column: 41, scope: !1142)
!1159 = !DILocation(line: 189, column: 5, scope: !1142)
!1160 = !DILocation(line: 189, column: 16, scope: !1142)
!1161 = !DILocation(line: 189, column: 28, scope: !1142)
!1162 = !DILocation(line: 190, column: 30, scope: !1142)
!1163 = !DILocation(line: 190, column: 41, scope: !1142)
!1164 = !DILocation(line: 190, column: 5, scope: !1142)
!1165 = !DILocation(line: 190, column: 16, scope: !1142)
!1166 = !DILocation(line: 190, column: 28, scope: !1142)
!1167 = !DILocation(line: 191, column: 5, scope: !1142)
!1168 = !DILocation(line: 191, column: 16, scope: !1142)
!1169 = !DILocation(line: 191, column: 28, scope: !1142)
!1170 = !{!327, !295, i64 64}
!1171 = !DILocation(line: 192, column: 30, scope: !1142)
!1172 = !DILocation(line: 192, column: 41, scope: !1142)
!1173 = !DILocation(line: 192, column: 5, scope: !1142)
!1174 = !DILocation(line: 192, column: 16, scope: !1142)
!1175 = !DILocation(line: 192, column: 28, scope: !1142)
!1176 = !DILocation(line: 193, column: 1, scope: !1142)
!1177 = !DILocation(line: 184, column: 31, scope: !1139)
!1178 = !DILocation(line: 184, column: 1, scope: !1139)
!1179 = distinct !{!1179, !1140, !1180}
!1180 = !DILocation(line: 193, column: 1, scope: !1136)
!1181 = !DILocation(line: 199, column: 10, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 199, column: 5)
!1183 = !DILocation(line: 199, column: 19, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1182, file: !74, line: 199, column: 5)
!1185 = !DILocation(line: 199, column: 5, scope: !1182)
!1186 = !DILocation(line: 201, column: 16, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !74, line: 201, column: 13)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !74, line: 200, column: 5)
!1189 = !DILocation(line: 201, column: 32, scope: !1187)
!1190 = !DILocation(line: 201, column: 43, scope: !1187)
!1191 = !DILocation(line: 201, column: 30, scope: !1187)
!1192 = !DILocation(line: 201, column: 13, scope: !1188)
!1193 = !DILocation(line: 202, column: 27, scope: !1187)
!1194 = !DILocation(line: 202, column: 13, scope: !1187)
!1195 = !DILocation(line: 203, column: 5, scope: !1188)
!1196 = !DILocation(line: 199, column: 38, scope: !1184)
!1197 = !DILocation(line: 199, column: 5, scope: !1184)
!1198 = distinct !{!1198, !1185, !1199}
!1199 = !DILocation(line: 203, column: 5, scope: !1182)
!1200 = !DILocation(line: 204, column: 10, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 204, column: 5)
!1202 = !DILocation(line: 0, scope: !1201)
!1203 = !DILocation(line: 204, column: 19, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !74, line: 204, column: 5)
!1205 = !DILocation(line: 204, column: 5, scope: !1201)
!1206 = !DILocation(line: 205, column: 27, scope: !1204)
!1207 = !DILocation(line: 205, column: 38, scope: !1204)
!1208 = !DILocation(line: 205, column: 45, scope: !1204)
!1209 = !DILocation(line: 205, column: 43, scope: !1204)
!1210 = !DILocation(line: 205, column: 9, scope: !1204)
!1211 = !DILocation(line: 205, column: 20, scope: !1204)
!1212 = !DILocation(line: 205, column: 25, scope: !1204)
!1213 = !DILocation(line: 204, column: 35, scope: !1204)
!1214 = !DILocation(line: 204, column: 5, scope: !1204)
!1215 = distinct !{!1215, !1205, !1216}
!1216 = !DILocation(line: 205, column: 45, scope: !1201)
!1217 = !DILocation(line: 207, column: 10, scope: !1041)
!1218 = !DILocation(line: 207, column: 19, scope: !1040)
!1219 = !DILocation(line: 207, column: 5, scope: !1041)
!1220 = !DILocation(line: 210, column: 16, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1039, file: !74, line: 210, column: 13)
!1222 = !DILocation(line: 210, column: 32, scope: !1221)
!1223 = !DILocation(line: 210, column: 43, scope: !1221)
!1224 = !DILocation(line: 210, column: 30, scope: !1221)
!1225 = !DILocation(line: 210, column: 13, scope: !1039)
!1226 = !DILocation(line: 0, scope: !1039)
!1227 = !DILocation(line: 212, column: 18, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !74, line: 212, column: 13)
!1229 = distinct !DILexicalBlock(scope: !1221, file: !74, line: 211, column: 9)
!1230 = !DILocation(line: 0, scope: !1228)
!1231 = !DILocation(line: 212, column: 31, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !74, line: 212, column: 13)
!1233 = !DILocation(line: 212, column: 13, scope: !1228)
!1234 = !DILocation(line: 214, column: 32, scope: !1232)
!1235 = !DILocation(line: 214, column: 45, scope: !1232)
!1236 = !DILocation(line: 214, column: 60, scope: !1232)
!1237 = !DILocation(line: 214, column: 71, scope: !1232)
!1238 = !DILocation(line: 214, column: 78, scope: !1232)
!1239 = !DILocation(line: 214, column: 76, scope: !1232)
!1240 = !DILocation(line: 214, column: 58, scope: !1232)
!1241 = !DILocation(line: 213, column: 17, scope: !1232)
!1242 = !DILocation(line: 213, column: 30, scope: !1232)
!1243 = !DILocation(line: 213, column: 41, scope: !1232)
!1244 = !DILocation(line: 214, column: 21, scope: !1232)
!1245 = !DILocation(line: 212, column: 49, scope: !1232)
!1246 = !DILocation(line: 212, column: 13, scope: !1232)
!1247 = distinct !{!1247, !1233, !1248}
!1248 = !DILocation(line: 214, column: 78, scope: !1228)
!1249 = !DILocation(line: 215, column: 14, scope: !1229)
!1250 = !DILocation(line: 216, column: 9, scope: !1229)
!1251 = !DILocation(line: 217, column: 5, scope: !1039)
!1252 = !DILocation(line: 207, column: 38, scope: !1040)
!1253 = !DILocation(line: 207, column: 5, scope: !1040)
!1254 = distinct !{!1254, !1219, !1255}
!1255 = !DILocation(line: 217, column: 5, scope: !1041)
!1256 = !DILocation(line: 219, column: 10, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 219, column: 5)
!1258 = !DILocation(line: 0, scope: !1257)
!1259 = !DILocation(line: 219, column: 19, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !74, line: 219, column: 5)
!1261 = !DILocation(line: 219, column: 5, scope: !1257)
!1262 = !DILocation(line: 221, column: 13, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !74, line: 221, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !74, line: 220, column: 5)
!1265 = !DILocation(line: 221, column: 24, scope: !1263)
!1266 = !DILocation(line: 221, column: 30, scope: !1263)
!1267 = !DILocation(line: 221, column: 13, scope: !1264)
!1268 = !DILocation(line: 224, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !74, line: 222, column: 9)
!1270 = !DILocation(line: 224, column: 28, scope: !1269)
!1271 = !DILocation(line: 224, column: 34, scope: !1269)
!1272 = !DILocation(line: 224, column: 45, scope: !1269)
!1273 = !DILocation(line: 224, column: 58, scope: !1269)
!1274 = !DILocation(line: 224, column: 69, scope: !1269)
!1275 = !DILocation(line: 223, column: 31, scope: !1269)
!1276 = !DILocation(line: 223, column: 13, scope: !1269)
!1277 = !DILocation(line: 223, column: 24, scope: !1269)
!1278 = !DILocation(line: 223, column: 29, scope: !1269)
!1279 = !DILocation(line: 225, column: 9, scope: !1269)
!1280 = !DILocation(line: 226, column: 13, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1264, file: !74, line: 226, column: 13)
!1282 = !DILocation(line: 226, column: 24, scope: !1281)
!1283 = !DILocation(line: 226, column: 30, scope: !1281)
!1284 = !DILocation(line: 226, column: 13, scope: !1264)
!1285 = !DILocation(line: 228, column: 30, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !74, line: 227, column: 9)
!1287 = !DILocation(line: 228, column: 41, scope: !1286)
!1288 = !DILocation(line: 229, column: 30, scope: !1286)
!1289 = !DILocation(line: 229, column: 41, scope: !1286)
!1290 = !DILocation(line: 230, column: 38, scope: !1286)
!1291 = !DILocation(line: 230, column: 49, scope: !1286)
!1292 = !DILocation(line: 230, column: 30, scope: !1286)
!1293 = !DILocation(line: 231, column: 46, scope: !1286)
!1294 = !DILocation(line: 231, column: 57, scope: !1286)
!1295 = !DILocation(line: 231, column: 38, scope: !1286)
!1296 = !DILocation(line: 231, column: 64, scope: !1286)
!1297 = !DILocation(line: 231, column: 34, scope: !1286)
!1298 = !DILocation(line: 232, column: 32, scope: !1286)
!1299 = !DILocation(line: 232, column: 43, scope: !1286)
!1300 = !DILocation(line: 228, column: 13, scope: !1286)
!1301 = !DILocation(line: 233, column: 9, scope: !1286)
!1302 = !DILocation(line: 234, column: 13, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1264, file: !74, line: 234, column: 13)
!1304 = !DILocation(line: 234, column: 24, scope: !1303)
!1305 = !DILocation(line: 234, column: 30, scope: !1303)
!1306 = !DILocation(line: 234, column: 13, scope: !1264)
!1307 = !DILocation(line: 237, column: 17, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !74, line: 235, column: 9)
!1309 = !DILocation(line: 237, column: 28, scope: !1308)
!1310 = !DILocation(line: 237, column: 34, scope: !1308)
!1311 = !DILocation(line: 237, column: 45, scope: !1308)
!1312 = !DILocation(line: 237, column: 52, scope: !1308)
!1313 = !DILocation(line: 237, column: 63, scope: !1308)
!1314 = !DILocation(line: 236, column: 13, scope: !1308)
!1315 = !DILocation(line: 238, column: 9, scope: !1308)
!1316 = !DILocation(line: 239, column: 5, scope: !1264)
!1317 = !DILocation(line: 219, column: 35, scope: !1260)
!1318 = !DILocation(line: 219, column: 5, scope: !1260)
!1319 = distinct !{!1319, !1261, !1320}
!1320 = !DILocation(line: 239, column: 5, scope: !1257)
!1321 = !DILocation(line: 242, column: 9, scope: !1044)
!1322 = !DILocation(line: 242, column: 20, scope: !1044)
!1323 = !DILocation(line: 242, column: 31, scope: !1044)
!1324 = !DILocation(line: 242, column: 9, scope: !1016)
!1325 = !DILocation(line: 0, scope: !1043)
!1326 = !DILocation(line: 246, column: 9, scope: !1043)
!1327 = !DILocation(line: 246, column: 20, scope: !1043)
!1328 = !DILocation(line: 246, column: 31, scope: !1043)
!1329 = !DILocation(line: 247, column: 9, scope: !1043)
!1330 = !DILocation(line: 247, column: 28, scope: !1043)
!1331 = !DILocation(line: 249, column: 13, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1043, file: !74, line: 248, column: 9)
!1333 = !DILocation(line: 249, column: 24, scope: !1332)
!1334 = !DILocation(line: 249, column: 35, scope: !1332)
!1335 = !DILocation(line: 250, column: 13, scope: !1332)
!1336 = !DILocation(line: 251, column: 22, scope: !1332)
!1337 = !DILocation(line: 251, column: 21, scope: !1332)
!1338 = !DILocation(line: 251, column: 13, scope: !1332)
!1339 = !DILocation(line: 252, column: 13, scope: !1332)
!1340 = !DILocation(line: 253, column: 40, scope: !1332)
!1341 = !DILocation(line: 253, column: 27, scope: !1332)
!1342 = distinct !{!1342, !1329, !1343}
!1343 = !DILocation(line: 254, column: 9, scope: !1043)
!1344 = !DILocation(line: 257, column: 19, scope: !1043)
!1345 = !DILocation(line: 258, column: 21, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1043, file: !74, line: 258, column: 13)
!1347 = !DILocation(line: 258, column: 13, scope: !1043)
!1348 = !DILocation(line: 261, column: 13, scope: !1346)
!1349 = !DILocation(line: 262, column: 41, scope: !1043)
!1350 = !DILocation(line: 262, column: 36, scope: !1043)
!1351 = !DILocation(line: 262, column: 9, scope: !1043)
!1352 = !DILocation(line: 262, column: 20, scope: !1043)
!1353 = !DILocation(line: 262, column: 31, scope: !1043)
!1354 = !DILocation(line: 263, column: 5, scope: !1043)
!1355 = !DILocation(line: 265, column: 5, scope: !1016)
!1356 = !DILocation(line: 282, column: 14, scope: !1016)
!1357 = !DILocation(line: 282, column: 13, scope: !1016)
!1358 = !DILocation(line: 282, column: 5, scope: !1016)
!1359 = !DILocation(line: 284, column: 5, scope: !1016)
!1360 = !DILocation(line: 285, column: 18, scope: !1016)
!1361 = !DILocation(line: 287, column: 21, scope: !1016)
!1362 = !DILocation(line: 287, column: 32, scope: !1016)
!1363 = !DILocation(line: 287, column: 15, scope: !1016)
!1364 = !DILocation(line: 288, column: 21, scope: !1016)
!1365 = !DILocation(line: 288, column: 32, scope: !1016)
!1366 = !DILocation(line: 288, column: 15, scope: !1016)
!1367 = !DILocation(line: 289, column: 21, scope: !1016)
!1368 = !DILocation(line: 289, column: 32, scope: !1016)
!1369 = !DILocation(line: 289, column: 15, scope: !1016)
!1370 = !DILocation(line: 290, column: 21, scope: !1016)
!1371 = !DILocation(line: 290, column: 32, scope: !1016)
!1372 = !DILocation(line: 290, column: 15, scope: !1016)
!1373 = !DILocation(line: 292, column: 13, scope: !1016)
!1374 = !DILocation(line: 296, column: 13, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 293, column: 5)
!1376 = !DILocation(line: 297, column: 13, scope: !1375)
!1377 = !DILocation(line: 301, column: 13, scope: !1375)
!1378 = !DILocation(line: 302, column: 13, scope: !1375)
!1379 = !DILocation(line: 306, column: 13, scope: !1375)
!1380 = !DILocation(line: 307, column: 13, scope: !1375)
!1381 = !DILocation(line: 310, column: 13, scope: !1375)
!1382 = !DILocation(line: 311, column: 13, scope: !1375)
!1383 = !DILocation(line: 315, column: 13, scope: !1375)
!1384 = !DILocation(line: 316, column: 13, scope: !1375)
!1385 = !DILocation(line: 319, column: 13, scope: !1375)
!1386 = !DILocation(line: 321, column: 9, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 321, column: 9)
!1388 = !DILocation(line: 321, column: 18, scope: !1387)
!1389 = !DILocation(line: 321, column: 9, scope: !1016)
!1390 = !DILocation(line: 323, column: 14, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !74, line: 323, column: 9)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !74, line: 322, column: 5)
!1393 = !DILocation(line: 0, scope: !1391)
!1394 = !DILocation(line: 323, column: 21, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !74, line: 323, column: 9)
!1396 = !DILocation(line: 323, column: 25, scope: !1395)
!1397 = !DILocation(line: 323, column: 23, scope: !1395)
!1398 = !DILocation(line: 323, column: 9, scope: !1391)
!1399 = !DILocation(line: 325, column: 13, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !74, line: 324, column: 9)
!1401 = !DILocation(line: 325, column: 24, scope: !1400)
!1402 = !DILocation(line: 325, column: 28, scope: !1400)
!1403 = !DILocation(line: 326, column: 18, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !74, line: 326, column: 17)
!1405 = !DILocation(line: 326, column: 29, scope: !1404)
!1406 = !DILocation(line: 326, column: 35, scope: !1404)
!1407 = !DILocation(line: 327, column: 17, scope: !1404)
!1408 = !DILocation(line: 327, column: 21, scope: !1404)
!1409 = !DILocation(line: 327, column: 32, scope: !1404)
!1410 = !DILocation(line: 327, column: 43, scope: !1404)
!1411 = !DILocation(line: 327, column: 40, scope: !1404)
!1412 = !DILocation(line: 326, column: 17, scope: !1400)
!1413 = !DILocation(line: 330, column: 27, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1404, file: !74, line: 328, column: 13)
!1415 = !DILocation(line: 331, column: 27, scope: !1414)
!1416 = !DILocation(line: 331, column: 38, scope: !1414)
!1417 = !DILocation(line: 332, column: 27, scope: !1414)
!1418 = !DILocation(line: 329, column: 17, scope: !1414)
!1419 = !DILocation(line: 333, column: 17, scope: !1414)
!1420 = !DILocation(line: 333, column: 28, scope: !1414)
!1421 = !DILocation(line: 333, column: 31, scope: !1414)
!1422 = !DILocation(line: 334, column: 13, scope: !1414)
!1423 = !DILocation(line: 335, column: 18, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1400, file: !74, line: 335, column: 17)
!1425 = !DILocation(line: 335, column: 29, scope: !1424)
!1426 = !DILocation(line: 335, column: 35, scope: !1424)
!1427 = !DILocation(line: 336, column: 17, scope: !1424)
!1428 = !DILocation(line: 336, column: 21, scope: !1424)
!1429 = !DILocation(line: 336, column: 32, scope: !1424)
!1430 = !DILocation(line: 336, column: 45, scope: !1424)
!1431 = !DILocation(line: 336, column: 42, scope: !1424)
!1432 = !DILocation(line: 335, column: 17, scope: !1400)
!1433 = !DILocation(line: 339, column: 27, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1424, file: !74, line: 337, column: 13)
!1435 = !DILocation(line: 340, column: 27, scope: !1434)
!1436 = !DILocation(line: 340, column: 38, scope: !1434)
!1437 = !DILocation(line: 341, column: 27, scope: !1434)
!1438 = !DILocation(line: 338, column: 17, scope: !1434)
!1439 = !DILocation(line: 342, column: 17, scope: !1434)
!1440 = !DILocation(line: 342, column: 28, scope: !1434)
!1441 = !DILocation(line: 342, column: 31, scope: !1434)
!1442 = !DILocation(line: 343, column: 13, scope: !1434)
!1443 = !DILocation(line: 344, column: 18, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1400, file: !74, line: 344, column: 17)
!1445 = !DILocation(line: 344, column: 29, scope: !1444)
!1446 = !DILocation(line: 344, column: 35, scope: !1444)
!1447 = !DILocation(line: 345, column: 17, scope: !1444)
!1448 = !DILocation(line: 345, column: 21, scope: !1444)
!1449 = !DILocation(line: 345, column: 32, scope: !1444)
!1450 = !DILocation(line: 345, column: 44, scope: !1444)
!1451 = !DILocation(line: 345, column: 41, scope: !1444)
!1452 = !DILocation(line: 344, column: 17, scope: !1400)
!1453 = !DILocation(line: 348, column: 27, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1444, file: !74, line: 346, column: 13)
!1455 = !DILocation(line: 349, column: 27, scope: !1454)
!1456 = !DILocation(line: 349, column: 38, scope: !1454)
!1457 = !DILocation(line: 350, column: 27, scope: !1454)
!1458 = !DILocation(line: 347, column: 17, scope: !1454)
!1459 = !DILocation(line: 351, column: 17, scope: !1454)
!1460 = !DILocation(line: 351, column: 28, scope: !1454)
!1461 = !DILocation(line: 351, column: 31, scope: !1454)
!1462 = !DILocation(line: 352, column: 13, scope: !1454)
!1463 = !DILocation(line: 353, column: 29, scope: !1400)
!1464 = !DILocation(line: 353, column: 40, scope: !1400)
!1465 = !DILocation(line: 353, column: 26, scope: !1400)
!1466 = !DILocation(line: 354, column: 9, scope: !1400)
!1467 = !DILocation(line: 323, column: 48, scope: !1395)
!1468 = !DILocation(line: 323, column: 9, scope: !1395)
!1469 = distinct !{!1469, !1398, !1470}
!1470 = !DILocation(line: 354, column: 9, scope: !1391)
!1471 = !DILocation(line: 355, column: 5, scope: !1392)
!1472 = !DILocation(line: 318, column: 26, scope: !1375)
!1473 = !DILocation(line: 356, column: 21, scope: !1016)
!1474 = !DILocation(line: 356, column: 18, scope: !1016)
!1475 = !DILocation(line: 358, column: 58, scope: !1016)
!1476 = !DILocation(line: 358, column: 69, scope: !1016)
!1477 = !DILocation(line: 358, column: 5, scope: !1016)
!1478 = !DILocation(line: 359, column: 5, scope: !1016)
!1479 = !DILocation(line: 361, column: 42, scope: !1016)
!1480 = !DILocation(line: 361, column: 5, scope: !1016)
!1481 = !DILocation(line: 362, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 362, column: 9)
!1483 = !DILocation(line: 362, column: 34, scope: !1482)
!1484 = !DILocation(line: 362, column: 9, scope: !1016)
!1485 = !DILocation(line: 364, column: 19, scope: !1482)
!1486 = !DILocation(line: 364, column: 42, scope: !1482)
!1487 = !DILocation(line: 364, column: 53, scope: !1482)
!1488 = !DILocation(line: 364, column: 40, scope: !1482)
!1489 = !DILocation(line: 365, column: 25, scope: !1482)
!1490 = !DILocation(line: 365, column: 23, scope: !1482)
!1491 = !DILocation(line: 363, column: 9, scope: !1482)
!1492 = !DILocation(line: 373, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 373, column: 9)
!1494 = !DILocation(line: 373, column: 34, scope: !1493)
!1495 = !DILocation(line: 373, column: 9, scope: !1016)
!1496 = !DILocation(line: 375, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !74, line: 374, column: 5)
!1498 = !DILocation(line: 377, column: 21, scope: !1497)
!1499 = !DILocation(line: 378, column: 5, scope: !1497)
!1500 = !DILocation(line: 381, column: 30, scope: !1016)
!1501 = !DILocation(line: 381, column: 53, scope: !1016)
!1502 = !DILocation(line: 381, column: 64, scope: !1016)
!1503 = !DILocation(line: 381, column: 51, scope: !1016)
!1504 = !DILocation(line: 380, column: 5, scope: !1016)
!1505 = !DILocation(line: 382, column: 5, scope: !1016)
!1506 = !DILocation(line: 383, column: 5, scope: !1016)
!1507 = !DILocation(line: 387, column: 5, scope: !1016)
!1508 = !DILocation(line: 389, column: 46, scope: !1016)
!1509 = !DILocation(line: 389, column: 5, scope: !1016)
!1510 = !DILocation(line: 390, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 390, column: 9)
!1512 = !DILocation(line: 390, column: 20, scope: !1511)
!1513 = !DILocation(line: 390, column: 26, scope: !1511)
!1514 = !DILocation(line: 390, column: 9, scope: !1016)
!1515 = !DILocation(line: 391, column: 14, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !74, line: 391, column: 9)
!1517 = !DILocation(line: 0, scope: !1516)
!1518 = !DILocation(line: 391, column: 21, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !74, line: 391, column: 9)
!1520 = !DILocation(line: 391, column: 25, scope: !1519)
!1521 = !DILocation(line: 391, column: 23, scope: !1519)
!1522 = !DILocation(line: 391, column: 9, scope: !1516)
!1523 = !DILocation(line: 392, column: 55, scope: !1519)
!1524 = !DILocation(line: 392, column: 58, scope: !1519)
!1525 = !DILocation(line: 392, column: 69, scope: !1519)
!1526 = !DILocation(line: 392, column: 13, scope: !1519)
!1527 = !DILocation(line: 391, column: 48, scope: !1519)
!1528 = !DILocation(line: 391, column: 9, scope: !1519)
!1529 = distinct !{!1529, !1522, !1530}
!1530 = !DILocation(line: 392, column: 76, scope: !1516)
!1531 = !DILocation(line: 393, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 393, column: 9)
!1533 = !DILocation(line: 393, column: 20, scope: !1532)
!1534 = !DILocation(line: 393, column: 26, scope: !1532)
!1535 = !DILocation(line: 393, column: 9, scope: !1016)
!1536 = !DILocation(line: 394, column: 14, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !74, line: 394, column: 9)
!1538 = !DILocation(line: 0, scope: !1537)
!1539 = !DILocation(line: 394, column: 21, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !74, line: 394, column: 9)
!1541 = !DILocation(line: 394, column: 25, scope: !1540)
!1542 = !DILocation(line: 394, column: 23, scope: !1540)
!1543 = !DILocation(line: 394, column: 9, scope: !1537)
!1544 = !DILocation(line: 395, column: 55, scope: !1540)
!1545 = !DILocation(line: 395, column: 58, scope: !1540)
!1546 = !DILocation(line: 395, column: 69, scope: !1540)
!1547 = !DILocation(line: 395, column: 13, scope: !1540)
!1548 = !DILocation(line: 394, column: 48, scope: !1540)
!1549 = !DILocation(line: 394, column: 9, scope: !1540)
!1550 = distinct !{!1550, !1543, !1551}
!1551 = !DILocation(line: 395, column: 78, scope: !1537)
!1552 = !DILocation(line: 396, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 396, column: 9)
!1554 = !DILocation(line: 396, column: 20, scope: !1553)
!1555 = !DILocation(line: 396, column: 26, scope: !1553)
!1556 = !DILocation(line: 396, column: 9, scope: !1016)
!1557 = !DILocation(line: 397, column: 14, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !74, line: 397, column: 9)
!1559 = !DILocation(line: 0, scope: !1558)
!1560 = !DILocation(line: 397, column: 21, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !74, line: 397, column: 9)
!1562 = !DILocation(line: 397, column: 25, scope: !1561)
!1563 = !DILocation(line: 397, column: 23, scope: !1561)
!1564 = !DILocation(line: 397, column: 9, scope: !1558)
!1565 = !DILocation(line: 398, column: 55, scope: !1561)
!1566 = !DILocation(line: 398, column: 58, scope: !1561)
!1567 = !DILocation(line: 398, column: 69, scope: !1561)
!1568 = !DILocation(line: 398, column: 13, scope: !1561)
!1569 = !DILocation(line: 397, column: 48, scope: !1561)
!1570 = !DILocation(line: 397, column: 9, scope: !1561)
!1571 = distinct !{!1571, !1564, !1572}
!1572 = !DILocation(line: 398, column: 77, scope: !1558)
!1573 = !DILocation(line: 399, column: 10, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 399, column: 5)
!1575 = !DILocation(line: 0, scope: !1574)
!1576 = !DILocation(line: 399, column: 17, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !74, line: 399, column: 5)
!1578 = !DILocation(line: 399, column: 21, scope: !1577)
!1579 = !DILocation(line: 399, column: 19, scope: !1577)
!1580 = !DILocation(line: 399, column: 5, scope: !1574)
!1581 = !DILocation(line: 400, column: 51, scope: !1577)
!1582 = !DILocation(line: 400, column: 54, scope: !1577)
!1583 = !DILocation(line: 400, column: 65, scope: !1577)
!1584 = !DILocation(line: 400, column: 9, scope: !1577)
!1585 = !DILocation(line: 399, column: 44, scope: !1577)
!1586 = !DILocation(line: 399, column: 5, scope: !1577)
!1587 = distinct !{!1587, !1580, !1588}
!1588 = !DILocation(line: 400, column: 68, scope: !1574)
!1589 = !DILocation(line: 401, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 401, column: 9)
!1591 = !DILocation(line: 401, column: 22, scope: !1590)
!1592 = !DILocation(line: 401, column: 9, scope: !1016)
!1593 = !DILocation(line: 403, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !74, line: 402, column: 5)
!1595 = !DILocation(line: 407, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1594, file: !74, line: 407, column: 13)
!1597 = !DILocation(line: 407, column: 22, scope: !1596)
!1598 = !DILocation(line: 407, column: 13, scope: !1594)
!1599 = !DILocation(line: 410, column: 23, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !74, line: 408, column: 9)
!1601 = !DILocation(line: 410, column: 46, scope: !1600)
!1602 = !DILocation(line: 410, column: 57, scope: !1600)
!1603 = !DILocation(line: 410, column: 44, scope: !1600)
!1604 = !DILocation(line: 411, column: 29, scope: !1600)
!1605 = !DILocation(line: 411, column: 27, scope: !1600)
!1606 = !DILocation(line: 409, column: 13, scope: !1600)
!1607 = !DILocation(line: 415, column: 13, scope: !1600)
!1608 = !DILocation(line: 423, column: 13, scope: !1600)
!1609 = !DILocation(line: 424, column: 9, scope: !1600)
!1610 = !DILocation(line: 426, column: 5, scope: !1594)
!1611 = !DILocation(line: 427, column: 9, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 427, column: 9)
!1613 = !DILocation(line: 427, column: 22, scope: !1612)
!1614 = !DILocation(line: 427, column: 9, scope: !1016)
!1615 = !DILocation(line: 428, column: 9, scope: !1612)
!1616 = !DILocation(line: 429, column: 9, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 429, column: 9)
!1618 = !DILocation(line: 429, column: 22, scope: !1617)
!1619 = !DILocation(line: 429, column: 9, scope: !1016)
!1620 = !DILocation(line: 430, column: 9, scope: !1617)
!1621 = !DILocation(line: 439, column: 21, scope: !1016)
!1622 = !DILocation(line: 439, column: 32, scope: !1016)
!1623 = !DILocation(line: 439, column: 5, scope: !1016)
!1624 = !DILocation(line: 442, column: 1, scope: !1016)
!1625 = !DILocation(line: 441, column: 5, scope: !1016)
!1626 = distinct !DISubprogram(name: "core_bench_matrix", scope: !1627, file: !1627, line: 92, type: !1628, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1638)
!1627 = !DIFile(filename: "src/coremark/core_matrix.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!53, !1630, !12, !53}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_params", file: !8, line: 119, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MAT_PARAMS_S", file: !8, line: 113, size: 128, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1632, file: !8, line: 115, baseType: !43, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1632, file: !8, line: 116, baseType: !45, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1632, file: !8, line: 117, baseType: !45, size: 32, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1632, file: !8, line: 118, baseType: !49, size: 32, offset: 96)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646}
!1639 = !DILocalVariable(name: "p", arg: 1, scope: !1626, file: !1627, line: 92, type: !1630)
!1640 = !DILocalVariable(name: "seed", arg: 2, scope: !1626, file: !1627, line: 92, type: !12)
!1641 = !DILocalVariable(name: "crc", arg: 3, scope: !1626, file: !1627, line: 92, type: !53)
!1642 = !DILocalVariable(name: "N", scope: !1626, file: !1627, line: 94, type: !23)
!1643 = !DILocalVariable(name: "C", scope: !1626, file: !1627, line: 95, type: !49)
!1644 = !DILocalVariable(name: "A", scope: !1626, file: !1627, line: 96, type: !45)
!1645 = !DILocalVariable(name: "B", scope: !1626, file: !1627, line: 97, type: !45)
!1646 = !DILocalVariable(name: "val", scope: !1626, file: !1627, line: 98, type: !46)
!1647 = !DILocation(line: 0, scope: !1626)
!1648 = !DILocation(line: 94, column: 22, scope: !1626)
!1649 = !{!330, !328, i64 0}
!1650 = !DILocation(line: 95, column: 22, scope: !1626)
!1651 = !{!330, !329, i64 12}
!1652 = !DILocation(line: 96, column: 22, scope: !1626)
!1653 = !{!330, !329, i64 4}
!1654 = !DILocation(line: 97, column: 22, scope: !1626)
!1655 = !{!330, !329, i64 8}
!1656 = !DILocation(line: 100, column: 17, scope: !1626)
!1657 = !DILocation(line: 100, column: 11, scope: !1626)
!1658 = !DILocation(line: 102, column: 5, scope: !1626)
!1659 = distinct !DISubprogram(name: "matrix_test", scope: !1627, file: !1627, line: 130, type: !1660, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!12, !23, !49, !45, !45, !46}
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1663 = !DILocalVariable(name: "N", arg: 1, scope: !1659, file: !1627, line: 130, type: !23)
!1664 = !DILocalVariable(name: "C", arg: 2, scope: !1659, file: !1627, line: 130, type: !49)
!1665 = !DILocalVariable(name: "A", arg: 3, scope: !1659, file: !1627, line: 130, type: !45)
!1666 = !DILocalVariable(name: "B", arg: 4, scope: !1659, file: !1627, line: 130, type: !45)
!1667 = !DILocalVariable(name: "val", arg: 5, scope: !1659, file: !1627, line: 130, type: !46)
!1668 = !DILocalVariable(name: "crc", scope: !1659, file: !1627, line: 132, type: !53)
!1669 = !DILocalVariable(name: "clipval", scope: !1659, file: !1627, line: 133, type: !46)
!1670 = !DILocation(line: 0, scope: !1659)
!1671 = !DILocation(line: 133, column: 22, scope: !1659)
!1672 = !DILocation(line: 135, column: 5, scope: !1659)
!1673 = !DILocation(line: 139, column: 5, scope: !1659)
!1674 = !DILocation(line: 140, column: 17, scope: !1659)
!1675 = !DILocation(line: 140, column: 11, scope: !1659)
!1676 = !DILocation(line: 144, column: 5, scope: !1659)
!1677 = !DILocation(line: 145, column: 17, scope: !1659)
!1678 = !DILocation(line: 145, column: 11, scope: !1659)
!1679 = !DILocation(line: 149, column: 5, scope: !1659)
!1680 = !DILocation(line: 150, column: 17, scope: !1659)
!1681 = !DILocation(line: 150, column: 11, scope: !1659)
!1682 = !DILocation(line: 154, column: 5, scope: !1659)
!1683 = !DILocation(line: 155, column: 17, scope: !1659)
!1684 = !DILocation(line: 155, column: 11, scope: !1659)
!1685 = !DILocation(line: 160, column: 29, scope: !1659)
!1686 = !DILocation(line: 160, column: 28, scope: !1659)
!1687 = !DILocation(line: 160, column: 5, scope: !1659)
!1688 = !DILocation(line: 161, column: 5, scope: !1659)
!1689 = distinct !DISubprogram(name: "matrix_add_const", scope: !1627, file: !1627, line: 285, type: !1690, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !23, !45, !46}
!1692 = !{!1693, !1694, !1695, !1696, !1697}
!1693 = !DILocalVariable(name: "N", arg: 1, scope: !1689, file: !1627, line: 285, type: !23)
!1694 = !DILocalVariable(name: "A", arg: 2, scope: !1689, file: !1627, line: 285, type: !45)
!1695 = !DILocalVariable(name: "val", arg: 3, scope: !1689, file: !1627, line: 285, type: !46)
!1696 = !DILocalVariable(name: "i", scope: !1689, file: !1627, line: 287, type: !23)
!1697 = !DILocalVariable(name: "j", scope: !1689, file: !1627, line: 287, type: !23)
!1698 = !DILocation(line: 0, scope: !1689)
!1699 = !DILocation(line: 288, column: 10, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1689, file: !1627, line: 288, column: 5)
!1701 = !DILocation(line: 0, scope: !1700)
!1702 = !DILocation(line: 288, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !1627, line: 288, column: 5)
!1704 = !DILocation(line: 288, column: 5, scope: !1700)
!1705 = !DILocation(line: 290, column: 14, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !1627, line: 290, column: 9)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !1627, line: 289, column: 5)
!1708 = !DILocation(line: 0, scope: !1706)
!1709 = !DILocation(line: 290, column: 23, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !1627, line: 290, column: 9)
!1711 = !DILocation(line: 290, column: 9, scope: !1706)
!1712 = !DILocation(line: 292, column: 29, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !1627, line: 291, column: 9)
!1714 = !DILocation(line: 292, column: 17, scope: !1713)
!1715 = !DILocation(line: 292, column: 21, scope: !1713)
!1716 = !DILocation(line: 292, column: 13, scope: !1713)
!1717 = !DILocation(line: 292, column: 26, scope: !1713)
!1718 = !DILocation(line: 293, column: 9, scope: !1713)
!1719 = !DILocation(line: 290, column: 29, scope: !1710)
!1720 = !DILocation(line: 290, column: 9, scope: !1710)
!1721 = distinct !{!1721, !1711, !1722}
!1722 = !DILocation(line: 293, column: 9, scope: !1706)
!1723 = !DILocation(line: 294, column: 5, scope: !1707)
!1724 = !DILocation(line: 288, column: 25, scope: !1703)
!1725 = !DILocation(line: 288, column: 5, scope: !1703)
!1726 = distinct !{!1726, !1704, !1727}
!1727 = !DILocation(line: 294, column: 5, scope: !1700)
!1728 = !DILocation(line: 295, column: 1, scope: !1689)
!1729 = distinct !DISubprogram(name: "matrix_mul_const", scope: !1627, file: !1627, line: 269, type: !1730, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !23, !49, !45, !46}
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738}
!1733 = !DILocalVariable(name: "N", arg: 1, scope: !1729, file: !1627, line: 269, type: !23)
!1734 = !DILocalVariable(name: "C", arg: 2, scope: !1729, file: !1627, line: 269, type: !49)
!1735 = !DILocalVariable(name: "A", arg: 3, scope: !1729, file: !1627, line: 269, type: !45)
!1736 = !DILocalVariable(name: "val", arg: 4, scope: !1729, file: !1627, line: 269, type: !46)
!1737 = !DILocalVariable(name: "i", scope: !1729, file: !1627, line: 271, type: !23)
!1738 = !DILocalVariable(name: "j", scope: !1729, file: !1627, line: 271, type: !23)
!1739 = !DILocation(line: 0, scope: !1729)
!1740 = !DILocation(line: 272, column: 10, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1729, file: !1627, line: 272, column: 5)
!1742 = !DILocation(line: 0, scope: !1741)
!1743 = !DILocation(line: 272, column: 19, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1741, file: !1627, line: 272, column: 5)
!1745 = !DILocation(line: 272, column: 5, scope: !1741)
!1746 = !DILocation(line: 274, column: 14, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !1627, line: 274, column: 9)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !1627, line: 273, column: 5)
!1749 = !DILocation(line: 0, scope: !1747)
!1750 = !DILocation(line: 274, column: 23, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !1627, line: 274, column: 9)
!1752 = !DILocation(line: 274, column: 9, scope: !1747)
!1753 = !DILocation(line: 276, column: 40, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !1627, line: 275, column: 9)
!1755 = !DILocation(line: 276, column: 44, scope: !1754)
!1756 = !DILocation(line: 276, column: 36, scope: !1754)
!1757 = !DILocation(line: 276, column: 28, scope: !1754)
!1758 = !DILocation(line: 276, column: 51, scope: !1754)
!1759 = !DILocation(line: 276, column: 49, scope: !1754)
!1760 = !DILocation(line: 276, column: 17, scope: !1754)
!1761 = !DILocation(line: 276, column: 21, scope: !1754)
!1762 = !DILocation(line: 276, column: 13, scope: !1754)
!1763 = !DILocation(line: 276, column: 26, scope: !1754)
!1764 = !DILocation(line: 277, column: 9, scope: !1754)
!1765 = !DILocation(line: 274, column: 29, scope: !1751)
!1766 = !DILocation(line: 274, column: 9, scope: !1751)
!1767 = distinct !{!1767, !1752, !1768}
!1768 = !DILocation(line: 277, column: 9, scope: !1747)
!1769 = !DILocation(line: 278, column: 5, scope: !1748)
!1770 = !DILocation(line: 272, column: 25, scope: !1744)
!1771 = !DILocation(line: 272, column: 5, scope: !1744)
!1772 = distinct !{!1772, !1745, !1773}
!1773 = !DILocation(line: 278, column: 5, scope: !1741)
!1774 = !DILocation(line: 279, column: 1, scope: !1729)
!1775 = distinct !DISubprogram(name: "matrix_sum", scope: !1627, file: !1627, line: 238, type: !1776, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!12, !23, !49, !46}
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1779 = !DILocalVariable(name: "N", arg: 1, scope: !1775, file: !1627, line: 238, type: !23)
!1780 = !DILocalVariable(name: "C", arg: 2, scope: !1775, file: !1627, line: 238, type: !49)
!1781 = !DILocalVariable(name: "clipval", arg: 3, scope: !1775, file: !1627, line: 238, type: !46)
!1782 = !DILocalVariable(name: "tmp", scope: !1775, file: !1627, line: 240, type: !50)
!1783 = !DILocalVariable(name: "prev", scope: !1775, file: !1627, line: 240, type: !50)
!1784 = !DILocalVariable(name: "cur", scope: !1775, file: !1627, line: 240, type: !50)
!1785 = !DILocalVariable(name: "ret", scope: !1775, file: !1627, line: 241, type: !12)
!1786 = !DILocalVariable(name: "i", scope: !1775, file: !1627, line: 242, type: !23)
!1787 = !DILocalVariable(name: "j", scope: !1775, file: !1627, line: 242, type: !23)
!1788 = !DILocation(line: 0, scope: !1775)
!1789 = !DILocation(line: 243, column: 10, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1775, file: !1627, line: 243, column: 5)
!1791 = !DILocation(line: 240, column: 21, scope: !1775)
!1792 = !DILocation(line: 240, column: 12, scope: !1775)
!1793 = !DILocation(line: 241, column: 12, scope: !1775)
!1794 = !DILocation(line: 0, scope: !1790)
!1795 = !DILocation(line: 243, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1790, file: !1627, line: 243, column: 5)
!1797 = !DILocation(line: 243, column: 5, scope: !1790)
!1798 = !DILocation(line: 245, column: 14, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !1627, line: 245, column: 9)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !1627, line: 244, column: 5)
!1801 = !DILocation(line: 0, scope: !1799)
!1802 = !DILocation(line: 245, column: 23, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !1627, line: 245, column: 9)
!1804 = !DILocation(line: 245, column: 9, scope: !1799)
!1805 = !DILocation(line: 247, column: 23, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !1627, line: 246, column: 9)
!1807 = !DILocation(line: 247, column: 27, scope: !1806)
!1808 = !DILocation(line: 247, column: 19, scope: !1806)
!1809 = !DILocation(line: 248, column: 17, scope: !1806)
!1810 = !DILocation(line: 249, column: 23, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !1627, line: 249, column: 17)
!1812 = !DILocation(line: 249, column: 21, scope: !1811)
!1813 = !DILocation(line: 249, column: 17, scope: !1806)
!1814 = !DILocation(line: 251, column: 21, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !1627, line: 250, column: 13)
!1816 = !DILocation(line: 253, column: 13, scope: !1815)
!1817 = !DILocation(line: 256, column: 29, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1811, file: !1627, line: 255, column: 13)
!1819 = !DILocation(line: 256, column: 24, scope: !1818)
!1820 = !DILocation(line: 256, column: 21, scope: !1818)
!1821 = !DILocation(line: 0, scope: !1806)
!1822 = !DILocation(line: 0, scope: !1811)
!1823 = !DILocation(line: 259, column: 9, scope: !1806)
!1824 = !DILocation(line: 245, column: 29, scope: !1803)
!1825 = !DILocation(line: 245, column: 9, scope: !1803)
!1826 = distinct !{!1826, !1804, !1827}
!1827 = !DILocation(line: 259, column: 9, scope: !1799)
!1828 = !DILocation(line: 260, column: 5, scope: !1800)
!1829 = !DILocation(line: 243, column: 25, scope: !1796)
!1830 = !DILocation(line: 243, column: 5, scope: !1796)
!1831 = distinct !{!1831, !1797, !1832}
!1832 = !DILocation(line: 260, column: 5, scope: !1790)
!1833 = !DILocation(line: 261, column: 5, scope: !1775)
!1834 = distinct !DISubprogram(name: "matrix_mul_vect", scope: !1627, file: !1627, line: 303, type: !1835, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !23, !49, !45, !45}
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843}
!1838 = !DILocalVariable(name: "N", arg: 1, scope: !1834, file: !1627, line: 303, type: !23)
!1839 = !DILocalVariable(name: "C", arg: 2, scope: !1834, file: !1627, line: 303, type: !49)
!1840 = !DILocalVariable(name: "A", arg: 3, scope: !1834, file: !1627, line: 303, type: !45)
!1841 = !DILocalVariable(name: "B", arg: 4, scope: !1834, file: !1627, line: 303, type: !45)
!1842 = !DILocalVariable(name: "i", scope: !1834, file: !1627, line: 305, type: !23)
!1843 = !DILocalVariable(name: "j", scope: !1834, file: !1627, line: 305, type: !23)
!1844 = !DILocation(line: 0, scope: !1834)
!1845 = !DILocation(line: 306, column: 10, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1834, file: !1627, line: 306, column: 5)
!1847 = !DILocation(line: 0, scope: !1846)
!1848 = !DILocation(line: 306, column: 19, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !1627, line: 306, column: 5)
!1850 = !DILocation(line: 306, column: 5, scope: !1846)
!1851 = !DILocation(line: 308, column: 9, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !1627, line: 307, column: 5)
!1853 = !DILocation(line: 308, column: 14, scope: !1852)
!1854 = !DILocation(line: 309, column: 14, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !1627, line: 309, column: 9)
!1856 = !DILocation(line: 0, scope: !1855)
!1857 = !DILocation(line: 309, column: 23, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !1627, line: 309, column: 9)
!1859 = !DILocation(line: 309, column: 9, scope: !1855)
!1860 = !DILocation(line: 311, column: 33, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !1627, line: 310, column: 9)
!1862 = !DILocation(line: 311, column: 37, scope: !1861)
!1863 = !DILocation(line: 311, column: 29, scope: !1861)
!1864 = !DILocation(line: 311, column: 21, scope: !1861)
!1865 = !DILocation(line: 311, column: 52, scope: !1861)
!1866 = !DILocation(line: 311, column: 44, scope: !1861)
!1867 = !DILocation(line: 311, column: 42, scope: !1861)
!1868 = !DILocation(line: 311, column: 13, scope: !1861)
!1869 = !DILocation(line: 311, column: 18, scope: !1861)
!1870 = !DILocation(line: 312, column: 9, scope: !1861)
!1871 = !DILocation(line: 309, column: 29, scope: !1858)
!1872 = !DILocation(line: 309, column: 9, scope: !1858)
!1873 = distinct !{!1873, !1859, !1874}
!1874 = !DILocation(line: 312, column: 9, scope: !1855)
!1875 = !DILocation(line: 313, column: 5, scope: !1852)
!1876 = !DILocation(line: 306, column: 25, scope: !1849)
!1877 = !DILocation(line: 306, column: 5, scope: !1849)
!1878 = distinct !{!1878, !1850, !1879}
!1879 = !DILocation(line: 313, column: 5, scope: !1846)
!1880 = !DILocation(line: 314, column: 1, scope: !1834)
!1881 = distinct !DISubprogram(name: "matrix_mul_matrix", scope: !1627, file: !1627, line: 322, type: !1835, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889}
!1883 = !DILocalVariable(name: "N", arg: 1, scope: !1881, file: !1627, line: 322, type: !23)
!1884 = !DILocalVariable(name: "C", arg: 2, scope: !1881, file: !1627, line: 322, type: !49)
!1885 = !DILocalVariable(name: "A", arg: 3, scope: !1881, file: !1627, line: 322, type: !45)
!1886 = !DILocalVariable(name: "B", arg: 4, scope: !1881, file: !1627, line: 322, type: !45)
!1887 = !DILocalVariable(name: "i", scope: !1881, file: !1627, line: 324, type: !23)
!1888 = !DILocalVariable(name: "j", scope: !1881, file: !1627, line: 324, type: !23)
!1889 = !DILocalVariable(name: "k", scope: !1881, file: !1627, line: 324, type: !23)
!1890 = !DILocation(line: 0, scope: !1881)
!1891 = !DILocation(line: 325, column: 10, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1881, file: !1627, line: 325, column: 5)
!1893 = !DILocation(line: 0, scope: !1892)
!1894 = !DILocation(line: 325, column: 19, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !1627, line: 325, column: 5)
!1896 = !DILocation(line: 325, column: 5, scope: !1892)
!1897 = !DILocation(line: 327, column: 14, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !1627, line: 327, column: 9)
!1899 = distinct !DILexicalBlock(scope: !1895, file: !1627, line: 326, column: 5)
!1900 = !DILocation(line: 0, scope: !1898)
!1901 = !DILocation(line: 327, column: 23, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !1627, line: 327, column: 9)
!1903 = !DILocation(line: 327, column: 9, scope: !1898)
!1904 = !DILocation(line: 329, column: 17, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !1627, line: 328, column: 9)
!1906 = !DILocation(line: 329, column: 21, scope: !1905)
!1907 = !DILocation(line: 329, column: 13, scope: !1905)
!1908 = !DILocation(line: 329, column: 26, scope: !1905)
!1909 = !DILocation(line: 330, column: 18, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !1627, line: 330, column: 13)
!1911 = !DILocation(line: 0, scope: !1910)
!1912 = !DILocation(line: 330, column: 27, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !1627, line: 330, column: 13)
!1914 = !DILocation(line: 330, column: 13, scope: !1910)
!1915 = !DILocation(line: 332, column: 45, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !1627, line: 331, column: 13)
!1917 = !DILocation(line: 332, column: 49, scope: !1916)
!1918 = !DILocation(line: 332, column: 41, scope: !1916)
!1919 = !DILocation(line: 332, column: 33, scope: !1916)
!1920 = !DILocation(line: 332, column: 68, scope: !1916)
!1921 = !DILocation(line: 332, column: 72, scope: !1916)
!1922 = !DILocation(line: 332, column: 64, scope: !1916)
!1923 = !DILocation(line: 332, column: 56, scope: !1916)
!1924 = !DILocation(line: 332, column: 54, scope: !1916)
!1925 = !DILocation(line: 332, column: 21, scope: !1916)
!1926 = !DILocation(line: 332, column: 25, scope: !1916)
!1927 = !DILocation(line: 332, column: 17, scope: !1916)
!1928 = !DILocation(line: 332, column: 30, scope: !1916)
!1929 = !DILocation(line: 333, column: 13, scope: !1916)
!1930 = !DILocation(line: 330, column: 33, scope: !1913)
!1931 = !DILocation(line: 330, column: 13, scope: !1913)
!1932 = distinct !{!1932, !1914, !1933}
!1933 = !DILocation(line: 333, column: 13, scope: !1910)
!1934 = !DILocation(line: 334, column: 9, scope: !1905)
!1935 = !DILocation(line: 327, column: 29, scope: !1902)
!1936 = !DILocation(line: 327, column: 9, scope: !1902)
!1937 = distinct !{!1937, !1903, !1938}
!1938 = !DILocation(line: 334, column: 9, scope: !1898)
!1939 = !DILocation(line: 335, column: 5, scope: !1899)
!1940 = !DILocation(line: 325, column: 25, scope: !1895)
!1941 = !DILocation(line: 325, column: 5, scope: !1895)
!1942 = distinct !{!1942, !1896, !1943}
!1943 = !DILocation(line: 335, column: 5, scope: !1892)
!1944 = !DILocation(line: 336, column: 1, scope: !1881)
!1945 = distinct !DISubprogram(name: "matrix_mul_matrix_bitextract", scope: !1627, file: !1627, line: 344, type: !1835, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1946)
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954}
!1947 = !DILocalVariable(name: "N", arg: 1, scope: !1945, file: !1627, line: 344, type: !23)
!1948 = !DILocalVariable(name: "C", arg: 2, scope: !1945, file: !1627, line: 344, type: !49)
!1949 = !DILocalVariable(name: "A", arg: 3, scope: !1945, file: !1627, line: 344, type: !45)
!1950 = !DILocalVariable(name: "B", arg: 4, scope: !1945, file: !1627, line: 344, type: !45)
!1951 = !DILocalVariable(name: "i", scope: !1945, file: !1627, line: 346, type: !23)
!1952 = !DILocalVariable(name: "j", scope: !1945, file: !1627, line: 346, type: !23)
!1953 = !DILocalVariable(name: "k", scope: !1945, file: !1627, line: 346, type: !23)
!1954 = !DILocalVariable(name: "tmp", scope: !1955, file: !1627, line: 354, type: !50)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !1627, line: 353, column: 13)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !1627, line: 352, column: 13)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !1627, line: 352, column: 13)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1627, line: 350, column: 9)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !1627, line: 349, column: 9)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !1627, line: 349, column: 9)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !1627, line: 348, column: 5)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1627, line: 347, column: 5)
!1963 = distinct !DILexicalBlock(scope: !1945, file: !1627, line: 347, column: 5)
!1964 = !DILocation(line: 0, scope: !1945)
!1965 = !DILocation(line: 347, column: 10, scope: !1963)
!1966 = !DILocation(line: 0, scope: !1963)
!1967 = !DILocation(line: 347, column: 19, scope: !1962)
!1968 = !DILocation(line: 347, column: 5, scope: !1963)
!1969 = !DILocation(line: 349, column: 14, scope: !1960)
!1970 = !DILocation(line: 0, scope: !1960)
!1971 = !DILocation(line: 349, column: 23, scope: !1959)
!1972 = !DILocation(line: 349, column: 9, scope: !1960)
!1973 = !DILocation(line: 351, column: 17, scope: !1958)
!1974 = !DILocation(line: 351, column: 21, scope: !1958)
!1975 = !DILocation(line: 351, column: 13, scope: !1958)
!1976 = !DILocation(line: 351, column: 26, scope: !1958)
!1977 = !DILocation(line: 352, column: 18, scope: !1957)
!1978 = !DILocation(line: 0, scope: !1957)
!1979 = !DILocation(line: 352, column: 27, scope: !1956)
!1980 = !DILocation(line: 352, column: 13, scope: !1957)
!1981 = !DILocation(line: 354, column: 42, scope: !1955)
!1982 = !DILocation(line: 354, column: 46, scope: !1955)
!1983 = !DILocation(line: 354, column: 38, scope: !1955)
!1984 = !DILocation(line: 354, column: 30, scope: !1955)
!1985 = !DILocation(line: 354, column: 65, scope: !1955)
!1986 = !DILocation(line: 354, column: 69, scope: !1955)
!1987 = !DILocation(line: 354, column: 61, scope: !1955)
!1988 = !DILocation(line: 354, column: 53, scope: !1955)
!1989 = !DILocation(line: 354, column: 51, scope: !1955)
!1990 = !DILocation(line: 0, scope: !1955)
!1991 = !DILocation(line: 355, column: 33, scope: !1955)
!1992 = !DILocation(line: 355, column: 58, scope: !1955)
!1993 = !DILocation(line: 355, column: 56, scope: !1955)
!1994 = !DILocation(line: 355, column: 21, scope: !1955)
!1995 = !DILocation(line: 355, column: 25, scope: !1955)
!1996 = !DILocation(line: 355, column: 17, scope: !1955)
!1997 = !DILocation(line: 355, column: 30, scope: !1955)
!1998 = !DILocation(line: 356, column: 13, scope: !1955)
!1999 = !DILocation(line: 352, column: 33, scope: !1956)
!2000 = !DILocation(line: 352, column: 13, scope: !1956)
!2001 = distinct !{!2001, !1980, !2002}
!2002 = !DILocation(line: 356, column: 13, scope: !1957)
!2003 = !DILocation(line: 357, column: 9, scope: !1958)
!2004 = !DILocation(line: 349, column: 29, scope: !1959)
!2005 = !DILocation(line: 349, column: 9, scope: !1959)
!2006 = distinct !{!2006, !1972, !2007}
!2007 = !DILocation(line: 357, column: 9, scope: !1960)
!2008 = !DILocation(line: 358, column: 5, scope: !1961)
!2009 = !DILocation(line: 347, column: 25, scope: !1962)
!2010 = !DILocation(line: 347, column: 5, scope: !1962)
!2011 = distinct !{!2011, !1968, !2012}
!2012 = !DILocation(line: 358, column: 5, scope: !1963)
!2013 = !DILocation(line: 359, column: 1, scope: !1945)
!2014 = distinct !DISubprogram(name: "core_init_matrix", scope: !1627, file: !1627, line: 181, type: !2015, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!23, !23, !19, !51, !1630}
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2018 = !DILocalVariable(name: "blksize", arg: 1, scope: !2014, file: !1627, line: 181, type: !23)
!2019 = !DILocalVariable(name: "memblk", arg: 2, scope: !2014, file: !1627, line: 181, type: !19)
!2020 = !DILocalVariable(name: "seed", arg: 3, scope: !2014, file: !1627, line: 181, type: !51)
!2021 = !DILocalVariable(name: "p", arg: 4, scope: !2014, file: !1627, line: 181, type: !1630)
!2022 = !DILocalVariable(name: "N", scope: !2014, file: !1627, line: 183, type: !23)
!2023 = !DILocalVariable(name: "A", scope: !2014, file: !1627, line: 184, type: !45)
!2024 = !DILocalVariable(name: "B", scope: !2014, file: !1627, line: 185, type: !45)
!2025 = !DILocalVariable(name: "order", scope: !2014, file: !1627, line: 186, type: !51)
!2026 = !DILocalVariable(name: "val", scope: !2014, file: !1627, line: 187, type: !46)
!2027 = !DILocalVariable(name: "i", scope: !2014, file: !1627, line: 188, type: !23)
!2028 = !DILocalVariable(name: "j", scope: !2014, file: !1627, line: 188, type: !23)
!2029 = !DILocation(line: 0, scope: !2014)
!2030 = !DILocation(line: 189, column: 14, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2014, file: !1627, line: 189, column: 9)
!2032 = !DILocation(line: 189, column: 9, scope: !2014)
!2033 = !DILocation(line: 190, column: 9, scope: !2031)
!2034 = !DILocation(line: 191, column: 5, scope: !2014)
!2035 = !DILocation(line: 191, column: 14, scope: !2014)
!2036 = !DILocation(line: 193, column: 10, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2014, file: !1627, line: 192, column: 5)
!2038 = !DILocation(line: 194, column: 15, scope: !2037)
!2039 = !DILocation(line: 194, column: 19, scope: !2037)
!2040 = !DILocation(line: 194, column: 23, scope: !2037)
!2041 = distinct !{!2041, !2034, !2042}
!2042 = !DILocation(line: 195, column: 5, scope: !2014)
!2043 = !DILocation(line: 196, column: 11, scope: !2014)
!2044 = !DILocation(line: 197, column: 19, scope: !2014)
!2045 = !DILocation(line: 197, column: 9, scope: !2014)
!2046 = !DILocation(line: 198, column: 15, scope: !2014)
!2047 = !DILocation(line: 198, column: 11, scope: !2014)
!2048 = !DILocation(line: 200, column: 10, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2014, file: !1627, line: 200, column: 5)
!2050 = !DILocation(line: 186, column: 13, scope: !2014)
!2051 = !DILocation(line: 190, column: 14, scope: !2031)
!2052 = !DILocation(line: 0, scope: !2049)
!2053 = !DILocation(line: 200, column: 19, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !1627, line: 200, column: 5)
!2055 = !DILocation(line: 200, column: 5, scope: !2049)
!2056 = !DILocation(line: 202, column: 14, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !1627, line: 202, column: 9)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !1627, line: 201, column: 5)
!2059 = !DILocation(line: 0, scope: !2057)
!2060 = !DILocation(line: 202, column: 23, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !1627, line: 202, column: 9)
!2062 = !DILocation(line: 202, column: 9, scope: !2057)
!2063 = !DILocation(line: 204, column: 36, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2061, file: !1627, line: 203, column: 9)
!2065 = !DILocation(line: 204, column: 44, scope: !2064)
!2066 = !DILocation(line: 205, column: 34, scope: !2064)
!2067 = !DILocation(line: 205, column: 28, scope: !2064)
!2068 = !DILocation(line: 206, column: 28, scope: !2064)
!2069 = !DILocation(line: 207, column: 17, scope: !2064)
!2070 = !DILocation(line: 207, column: 21, scope: !2064)
!2071 = !DILocation(line: 207, column: 13, scope: !2064)
!2072 = !DILocation(line: 207, column: 26, scope: !2064)
!2073 = !DILocation(line: 208, column: 29, scope: !2064)
!2074 = !DILocation(line: 208, column: 33, scope: !2064)
!2075 = !DILocation(line: 208, column: 28, scope: !2064)
!2076 = !DILocation(line: 209, column: 28, scope: !2064)
!2077 = !DILocation(line: 210, column: 17, scope: !2064)
!2078 = !DILocation(line: 210, column: 21, scope: !2064)
!2079 = !DILocation(line: 210, column: 13, scope: !2064)
!2080 = !DILocation(line: 210, column: 26, scope: !2064)
!2081 = !DILocation(line: 211, column: 18, scope: !2064)
!2082 = !DILocation(line: 212, column: 9, scope: !2064)
!2083 = !DILocation(line: 202, column: 29, scope: !2061)
!2084 = !DILocation(line: 202, column: 9, scope: !2061)
!2085 = distinct !{!2085, !2062, !2086}
!2086 = !DILocation(line: 212, column: 9, scope: !2057)
!2087 = !DILocation(line: 213, column: 5, scope: !2058)
!2088 = !DILocation(line: 200, column: 25, scope: !2054)
!2089 = !DILocation(line: 200, column: 5, scope: !2054)
!2090 = distinct !{!2090, !2055, !2091}
!2091 = !DILocation(line: 213, column: 5, scope: !2049)
!2092 = !DILocation(line: 215, column: 8, scope: !2014)
!2093 = !DILocation(line: 215, column: 10, scope: !2014)
!2094 = !DILocation(line: 216, column: 8, scope: !2014)
!2095 = !DILocation(line: 216, column: 10, scope: !2014)
!2096 = !DILocation(line: 217, column: 22, scope: !2014)
!2097 = !DILocation(line: 217, column: 12, scope: !2014)
!2098 = !DILocation(line: 217, column: 8, scope: !2014)
!2099 = !DILocation(line: 217, column: 10, scope: !2014)
!2100 = !DILocation(line: 218, column: 8, scope: !2014)
!2101 = !DILocation(line: 218, column: 10, scope: !2014)
!2102 = !DILocation(line: 223, column: 5, scope: !2014)
!2103 = distinct !DISubprogram(name: "core_bench_state", scope: !105, file: !105, line: 46, type: !2104, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!53, !23, !107, !12, !12, !12, !53}
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2117, !2118, !2119, !2120, !2122}
!2107 = !DILocalVariable(name: "blksize", arg: 1, scope: !2103, file: !105, line: 46, type: !23)
!2108 = !DILocalVariable(name: "memblock", arg: 2, scope: !2103, file: !105, line: 47, type: !107)
!2109 = !DILocalVariable(name: "seed1", arg: 3, scope: !2103, file: !105, line: 48, type: !12)
!2110 = !DILocalVariable(name: "seed2", arg: 4, scope: !2103, file: !105, line: 49, type: !12)
!2111 = !DILocalVariable(name: "step", arg: 5, scope: !2103, file: !105, line: 50, type: !12)
!2112 = !DILocalVariable(name: "crc", arg: 6, scope: !2103, file: !105, line: 51, type: !53)
!2113 = !DILocalVariable(name: "final_counts", scope: !2103, file: !105, line: 53, type: !2114)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 8)
!2117 = !DILocalVariable(name: "track_counts", scope: !2103, file: !105, line: 54, type: !2114)
!2118 = !DILocalVariable(name: "p", scope: !2103, file: !105, line: 55, type: !107)
!2119 = !DILocalVariable(name: "i", scope: !2103, file: !105, line: 56, type: !23)
!2120 = !DILocalVariable(name: "fstate", scope: !2121, file: !105, line: 68, type: !90)
!2121 = distinct !DILexicalBlock(scope: !2103, file: !105, line: 67, column: 5)
!2122 = !DILocalVariable(name: "fstate", scope: !2123, file: !105, line: 88, type: !90)
!2123 = distinct !DILexicalBlock(scope: !2103, file: !105, line: 87, column: 5)
!2124 = !DILocation(line: 0, scope: !2103)
!2125 = !DILocation(line: 53, column: 5, scope: !2103)
!2126 = !DILocation(line: 53, column: 12, scope: !2103)
!2127 = !DILocation(line: 54, column: 5, scope: !2103)
!2128 = !DILocation(line: 54, column: 12, scope: !2103)
!2129 = !DILocation(line: 55, column: 5, scope: !2103)
!2130 = !DILocation(line: 55, column: 12, scope: !2103)
!2131 = !DILocation(line: 61, column: 10, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2103, file: !105, line: 61, column: 5)
!2133 = !DILocation(line: 0, scope: !2132)
!2134 = !DILocation(line: 61, column: 19, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !105, line: 61, column: 5)
!2136 = !DILocation(line: 61, column: 5, scope: !2132)
!2137 = !DILocation(line: 63, column: 27, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !105, line: 62, column: 5)
!2139 = !DILocation(line: 63, column: 43, scope: !2138)
!2140 = !DILocation(line: 63, column: 9, scope: !2138)
!2141 = !DILocation(line: 63, column: 25, scope: !2138)
!2142 = !DILocation(line: 64, column: 5, scope: !2138)
!2143 = !DILocation(line: 61, column: 39, scope: !2135)
!2144 = !DILocation(line: 61, column: 5, scope: !2135)
!2145 = distinct !{!2145, !2136, !2146}
!2146 = !DILocation(line: 64, column: 5, scope: !2132)
!2147 = !DILocation(line: 66, column: 5, scope: !2103)
!2148 = !DILocation(line: 66, column: 13, scope: !2103)
!2149 = !DILocation(line: 66, column: 12, scope: !2103)
!2150 = !{!296, !296, i64 0}
!2151 = !DILocation(line: 66, column: 15, scope: !2103)
!2152 = !DILocation(line: 68, column: 60, scope: !2121)
!2153 = !DILocation(line: 68, column: 34, scope: !2121)
!2154 = !DILocation(line: 0, scope: !2121)
!2155 = !DILocation(line: 69, column: 9, scope: !2121)
!2156 = !DILocation(line: 69, column: 29, scope: !2121)
!2157 = distinct !{!2157, !2147, !2158}
!2158 = !DILocation(line: 75, column: 5, scope: !2103)
!2159 = !DILocation(line: 77, column: 7, scope: !2103)
!2160 = !DILocation(line: 78, column: 5, scope: !2103)
!2161 = !DILocation(line: 78, column: 12, scope: !2103)
!2162 = !DILocation(line: 78, column: 26, scope: !2103)
!2163 = !DILocation(line: 78, column: 14, scope: !2103)
!2164 = !DILocation(line: 80, column: 14, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !105, line: 80, column: 13)
!2166 = distinct !DILexicalBlock(scope: !2103, file: !105, line: 79, column: 5)
!2167 = !DILocation(line: 80, column: 13, scope: !2165)
!2168 = !DILocation(line: 80, column: 16, scope: !2165)
!2169 = !DILocation(line: 80, column: 13, scope: !2166)
!2170 = !DILocation(line: 81, column: 19, scope: !2165)
!2171 = !DILocation(line: 81, column: 14, scope: !2165)
!2172 = !DILocation(line: 81, column: 16, scope: !2165)
!2173 = !DILocation(line: 81, column: 13, scope: !2165)
!2174 = !DILocation(line: 82, column: 14, scope: !2166)
!2175 = !DILocation(line: 82, column: 11, scope: !2166)
!2176 = distinct !{!2176, !2160, !2177}
!2177 = !DILocation(line: 83, column: 5, scope: !2103)
!2178 = !DILocation(line: 84, column: 7, scope: !2103)
!2179 = !DILocation(line: 86, column: 5, scope: !2103)
!2180 = !DILocation(line: 86, column: 13, scope: !2103)
!2181 = !DILocation(line: 86, column: 12, scope: !2103)
!2182 = !DILocation(line: 86, column: 15, scope: !2103)
!2183 = !DILocation(line: 88, column: 60, scope: !2123)
!2184 = !DILocation(line: 88, column: 34, scope: !2123)
!2185 = !DILocation(line: 0, scope: !2123)
!2186 = !DILocation(line: 89, column: 9, scope: !2123)
!2187 = !DILocation(line: 89, column: 29, scope: !2123)
!2188 = distinct !{!2188, !2179, !2189}
!2189 = !DILocation(line: 95, column: 5, scope: !2103)
!2190 = !DILocation(line: 97, column: 7, scope: !2103)
!2191 = !DILocation(line: 98, column: 5, scope: !2103)
!2192 = !DILocation(line: 98, column: 12, scope: !2103)
!2193 = !DILocation(line: 98, column: 26, scope: !2103)
!2194 = !DILocation(line: 98, column: 14, scope: !2103)
!2195 = !DILocation(line: 100, column: 14, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !105, line: 100, column: 13)
!2197 = distinct !DILexicalBlock(scope: !2103, file: !105, line: 99, column: 5)
!2198 = !DILocation(line: 100, column: 13, scope: !2196)
!2199 = !DILocation(line: 100, column: 16, scope: !2196)
!2200 = !DILocation(line: 100, column: 13, scope: !2197)
!2201 = !DILocation(line: 101, column: 19, scope: !2196)
!2202 = !DILocation(line: 101, column: 14, scope: !2196)
!2203 = !DILocation(line: 101, column: 16, scope: !2196)
!2204 = !DILocation(line: 101, column: 13, scope: !2196)
!2205 = !DILocation(line: 102, column: 14, scope: !2197)
!2206 = !DILocation(line: 102, column: 11, scope: !2197)
!2207 = distinct !{!2207, !2191, !2208}
!2208 = !DILocation(line: 103, column: 5, scope: !2103)
!2209 = !DILocation(line: 105, column: 10, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2103, file: !105, line: 105, column: 5)
!2211 = !DILocation(line: 0, scope: !2210)
!2212 = !DILocation(line: 105, column: 19, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !105, line: 105, column: 5)
!2214 = !DILocation(line: 105, column: 5, scope: !2210)
!2215 = !DILocation(line: 107, column: 22, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !105, line: 106, column: 5)
!2217 = !DILocation(line: 107, column: 15, scope: !2216)
!2218 = !DILocation(line: 108, column: 22, scope: !2216)
!2219 = !DILocation(line: 108, column: 15, scope: !2216)
!2220 = !DILocation(line: 109, column: 5, scope: !2216)
!2221 = !DILocation(line: 105, column: 39, scope: !2213)
!2222 = !DILocation(line: 105, column: 5, scope: !2213)
!2223 = distinct !{!2223, !2214, !2224}
!2224 = !DILocation(line: 109, column: 5, scope: !2210)
!2225 = !DILocation(line: 111, column: 1, scope: !2103)
!2226 = !DILocation(line: 110, column: 5, scope: !2103)
!2227 = distinct !DISubprogram(name: "core_state_transition", scope: !105, file: !105, line: 217, type: !2228, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2232)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!90, !2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!2232 = !{!2233, !2234, !2235, !2236, !2237}
!2233 = !DILocalVariable(name: "instr", arg: 1, scope: !2227, file: !105, line: 217, type: !2230)
!2234 = !DILocalVariable(name: "transition_count", arg: 2, scope: !2227, file: !105, line: 217, type: !2231)
!2235 = !DILocalVariable(name: "str", scope: !2227, file: !105, line: 219, type: !107)
!2236 = !DILocalVariable(name: "NEXT_SYMBOL", scope: !2227, file: !105, line: 220, type: !64)
!2237 = !DILocalVariable(name: "state", scope: !2227, file: !105, line: 221, type: !90)
!2238 = !DILocation(line: 0, scope: !2227)
!2239 = !DILocation(line: 219, column: 27, scope: !2227)
!2240 = !DILocation(line: 222, column: 5, scope: !2227)
!2241 = !DILocation(line: 221, column: 21, scope: !2227)
!2242 = !DILocation(line: 222, column: 12, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !105, line: 222, column: 5)
!2244 = distinct !DILexicalBlock(scope: !2227, file: !105, line: 222, column: 5)
!2245 = !DILocation(line: 222, column: 17, scope: !2243)
!2246 = !DILocation(line: 222, column: 26, scope: !2243)
!2247 = !DILocation(line: 0, scope: !2243)
!2248 = !DILocation(line: 222, column: 5, scope: !2244)
!2249 = !DILocation(line: 224, column: 23, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2243, file: !105, line: 223, column: 5)
!2251 = !DILocation(line: 225, column: 13, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2250, file: !105, line: 225, column: 13)
!2253 = !DILocation(line: 225, column: 25, scope: !2252)
!2254 = !DILocation(line: 225, column: 13, scope: !2250)
!2255 = !DILocation(line: 227, column: 16, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !105, line: 226, column: 9)
!2257 = !DILocation(line: 228, column: 13, scope: !2256)
!2258 = !DILocation(line: 233, column: 21, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !105, line: 233, column: 21)
!2260 = distinct !DILexicalBlock(scope: !2250, file: !105, line: 231, column: 9)
!2261 = !DILocation(line: 233, column: 21, scope: !2260)
!2262 = !DILocation(line: 236, column: 17, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !105, line: 234, column: 17)
!2264 = !DILocation(line: 237, column: 26, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2259, file: !105, line: 237, column: 26)
!2266 = !DILocation(line: 237, column: 38, scope: !2265)
!2267 = !DILocation(line: 237, column: 45, scope: !2265)
!2268 = !DILocation(line: 237, column: 48, scope: !2265)
!2269 = !DILocation(line: 237, column: 60, scope: !2265)
!2270 = !DILocation(line: 237, column: 26, scope: !2259)
!2271 = !DILocation(line: 240, column: 17, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !105, line: 238, column: 17)
!2273 = !DILocation(line: 241, column: 26, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2265, file: !105, line: 241, column: 26)
!2275 = !DILocation(line: 241, column: 38, scope: !2274)
!2276 = !DILocation(line: 241, column: 26, scope: !2265)
!2277 = !DILocation(line: 244, column: 17, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !105, line: 242, column: 17)
!2279 = !DILocation(line: 248, column: 21, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2274, file: !105, line: 246, column: 17)
!2281 = !DILocation(line: 248, column: 51, scope: !2280)
!2282 = !DILocation(line: 0, scope: !2274)
!2283 = !DILocation(line: 0, scope: !2265)
!2284 = !DILocation(line: 0, scope: !2259)
!2285 = !DILocation(line: 250, column: 17, scope: !2260)
!2286 = !DILocation(line: 250, column: 45, scope: !2260)
!2287 = !DILocation(line: 251, column: 17, scope: !2260)
!2288 = !DILocation(line: 253, column: 21, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2260, file: !105, line: 253, column: 21)
!2290 = !DILocation(line: 253, column: 21, scope: !2260)
!2291 = !DILocation(line: 256, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !105, line: 254, column: 17)
!2293 = !DILocation(line: 256, column: 46, scope: !2292)
!2294 = !DILocation(line: 257, column: 17, scope: !2292)
!2295 = !DILocation(line: 258, column: 26, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2289, file: !105, line: 258, column: 26)
!2297 = !DILocation(line: 258, column: 38, scope: !2296)
!2298 = !DILocation(line: 258, column: 26, scope: !2289)
!2299 = !DILocation(line: 261, column: 21, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !105, line: 259, column: 17)
!2301 = !DILocation(line: 261, column: 46, scope: !2300)
!2302 = !DILocation(line: 262, column: 17, scope: !2300)
!2303 = !DILocation(line: 266, column: 21, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2296, file: !105, line: 264, column: 17)
!2305 = !DILocation(line: 266, column: 46, scope: !2304)
!2306 = !DILocation(line: 0, scope: !2296)
!2307 = !DILocation(line: 0, scope: !2289)
!2308 = !DILocation(line: 268, column: 17, scope: !2260)
!2309 = !DILocation(line: 270, column: 21, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2260, file: !105, line: 270, column: 21)
!2311 = !DILocation(line: 270, column: 33, scope: !2310)
!2312 = !DILocation(line: 270, column: 21, scope: !2260)
!2313 = !DILocation(line: 273, column: 21, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !105, line: 271, column: 17)
!2315 = !DILocation(line: 273, column: 47, scope: !2314)
!2316 = !DILocation(line: 274, column: 17, scope: !2314)
!2317 = !DILocation(line: 275, column: 27, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2310, file: !105, line: 275, column: 26)
!2319 = !DILocation(line: 275, column: 26, scope: !2310)
!2320 = !DILocation(line: 278, column: 21, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !105, line: 276, column: 17)
!2322 = !DILocation(line: 278, column: 47, scope: !2321)
!2323 = !DILocation(line: 279, column: 17, scope: !2321)
!2324 = !DILocation(line: 280, column: 17, scope: !2260)
!2325 = !DILocation(line: 282, column: 21, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2260, file: !105, line: 282, column: 21)
!2327 = !DILocation(line: 282, column: 33, scope: !2326)
!2328 = !DILocation(line: 282, column: 40, scope: !2326)
!2329 = !DILocation(line: 282, column: 43, scope: !2326)
!2330 = !DILocation(line: 282, column: 55, scope: !2326)
!2331 = !DILocation(line: 282, column: 21, scope: !2260)
!2332 = !DILocation(line: 285, column: 21, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2326, file: !105, line: 283, column: 17)
!2334 = !DILocation(line: 285, column: 49, scope: !2333)
!2335 = !DILocation(line: 286, column: 17, scope: !2333)
!2336 = !DILocation(line: 287, column: 27, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2326, file: !105, line: 287, column: 26)
!2338 = !DILocation(line: 287, column: 26, scope: !2326)
!2339 = !DILocation(line: 290, column: 21, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2337, file: !105, line: 288, column: 17)
!2341 = !DILocation(line: 290, column: 49, scope: !2340)
!2342 = !DILocation(line: 291, column: 17, scope: !2340)
!2343 = !DILocation(line: 292, column: 17, scope: !2260)
!2344 = !DILocation(line: 294, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2260, file: !105, line: 294, column: 21)
!2346 = !DILocation(line: 294, column: 33, scope: !2345)
!2347 = !DILocation(line: 294, column: 40, scope: !2345)
!2348 = !DILocation(line: 294, column: 43, scope: !2345)
!2349 = !DILocation(line: 294, column: 55, scope: !2345)
!2350 = !DILocation(line: 294, column: 21, scope: !2260)
!2351 = !DILocation(line: 297, column: 21, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2345, file: !105, line: 295, column: 17)
!2353 = !DILocation(line: 297, column: 46, scope: !2352)
!2354 = !DILocation(line: 298, column: 17, scope: !2352)
!2355 = !DILocation(line: 302, column: 21, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2345, file: !105, line: 300, column: 17)
!2357 = !DILocation(line: 302, column: 46, scope: !2356)
!2358 = !DILocation(line: 0, scope: !2345)
!2359 = !DILocation(line: 304, column: 17, scope: !2260)
!2360 = !DILocation(line: 306, column: 21, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2260, file: !105, line: 306, column: 21)
!2362 = !DILocation(line: 306, column: 21, scope: !2260)
!2363 = !DILocation(line: 309, column: 21, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !105, line: 307, column: 17)
!2365 = !DILocation(line: 309, column: 52, scope: !2364)
!2366 = !DILocation(line: 310, column: 17, scope: !2364)
!2367 = !DILocation(line: 314, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !105, line: 312, column: 17)
!2369 = !DILocation(line: 314, column: 52, scope: !2368)
!2370 = !DILocation(line: 0, scope: !2361)
!2371 = !DILocation(line: 316, column: 17, scope: !2260)
!2372 = !DILocation(line: 318, column: 22, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2260, file: !105, line: 318, column: 21)
!2374 = !DILocation(line: 318, column: 21, scope: !2260)
!2375 = !DILocation(line: 321, column: 21, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !105, line: 319, column: 17)
!2377 = !DILocation(line: 321, column: 51, scope: !2376)
!2378 = !DILocation(line: 322, column: 17, scope: !2376)
!2379 = !DILocation(line: 323, column: 17, scope: !2260)
!2380 = !DILocation(line: 325, column: 17, scope: !2260)
!2381 = !DILocation(line: 327, column: 5, scope: !2250)
!2382 = !DILocation(line: 222, column: 46, scope: !2243)
!2383 = !DILocation(line: 222, column: 5, scope: !2243)
!2384 = distinct !{!2384, !2248, !2385}
!2385 = !DILocation(line: 327, column: 5, scope: !2244)
!2386 = !DILocation(line: 328, column: 12, scope: !2227)
!2387 = !DILocation(line: 329, column: 5, scope: !2227)
!2388 = distinct !DISubprogram(name: "ee_isdigit", scope: !105, file: !105, line: 198, type: !2389, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!64, !64}
!2391 = !{!2392, !2393}
!2392 = !DILocalVariable(name: "c", arg: 1, scope: !2388, file: !105, line: 198, type: !64)
!2393 = !DILocalVariable(name: "retval", scope: !2388, file: !105, line: 200, type: !64)
!2394 = !DILocation(line: 0, scope: !2388)
!2395 = !DILocation(line: 201, column: 16, scope: !2388)
!2396 = !DILocation(line: 201, column: 18, scope: !2388)
!2397 = !DILocation(line: 201, column: 29, scope: !2388)
!2398 = !DILocation(line: 201, column: 31, scope: !2388)
!2399 = !DILocation(line: 201, column: 26, scope: !2388)
!2400 = !DILocation(line: 201, column: 14, scope: !2388)
!2401 = !DILocation(line: 202, column: 5, scope: !2388)
!2402 = distinct !DISubprogram(name: "core_init_state", scope: !105, file: !105, line: 140, type: !2403, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !23, !12, !107}
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2406 = !DILocalVariable(name: "size", arg: 1, scope: !2402, file: !105, line: 140, type: !23)
!2407 = !DILocalVariable(name: "seed", arg: 2, scope: !2402, file: !105, line: 140, type: !12)
!2408 = !DILocalVariable(name: "p", arg: 3, scope: !2402, file: !105, line: 140, type: !107)
!2409 = !DILocalVariable(name: "total", scope: !2402, file: !105, line: 142, type: !23)
!2410 = !DILocalVariable(name: "next", scope: !2402, file: !105, line: 142, type: !23)
!2411 = !DILocalVariable(name: "i", scope: !2402, file: !105, line: 142, type: !23)
!2412 = !DILocalVariable(name: "buf", scope: !2402, file: !105, line: 143, type: !107)
!2413 = !DILocation(line: 0, scope: !2402)
!2414 = !DILocation(line: 148, column: 9, scope: !2402)
!2415 = !DILocation(line: 150, column: 5, scope: !2402)
!2416 = !DILocation(line: 149, column: 10, scope: !2402)
!2417 = !DILocation(line: 143, column: 12, scope: !2402)
!2418 = !DILocation(line: 150, column: 19, scope: !2402)
!2419 = !DILocation(line: 150, column: 26, scope: !2402)
!2420 = !DILocation(line: 150, column: 31, scope: !2402)
!2421 = !DILocation(line: 152, column: 18, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !105, line: 152, column: 13)
!2423 = distinct !DILexicalBlock(scope: !2402, file: !105, line: 151, column: 5)
!2424 = !DILocation(line: 152, column: 13, scope: !2423)
!2425 = !DILocation(line: 154, column: 18, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !105, line: 154, column: 13)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !105, line: 153, column: 9)
!2428 = !DILocation(line: 0, scope: !2426)
!2429 = !DILocation(line: 154, column: 27, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !105, line: 154, column: 13)
!2431 = !DILocation(line: 154, column: 13, scope: !2426)
!2432 = !DILocation(line: 155, column: 36, scope: !2430)
!2433 = !DILocation(line: 155, column: 21, scope: !2430)
!2434 = !DILocation(line: 155, column: 29, scope: !2430)
!2435 = !DILocation(line: 155, column: 34, scope: !2430)
!2436 = !DILocation(line: 155, column: 17, scope: !2430)
!2437 = !DILocation(line: 154, column: 36, scope: !2430)
!2438 = !DILocation(line: 154, column: 13, scope: !2430)
!2439 = distinct !{!2439, !2431, !2440}
!2440 = !DILocation(line: 155, column: 41, scope: !2426)
!2441 = !DILocation(line: 156, column: 17, scope: !2427)
!2442 = !DILocation(line: 156, column: 25, scope: !2427)
!2443 = !DILocation(line: 156, column: 30, scope: !2427)
!2444 = !DILocation(line: 157, column: 27, scope: !2427)
!2445 = !DILocation(line: 157, column: 19, scope: !2427)
!2446 = !DILocation(line: 158, column: 9, scope: !2427)
!2447 = !DILocation(line: 159, column: 13, scope: !2423)
!2448 = !DILocation(line: 160, column: 17, scope: !2423)
!2449 = !DILocation(line: 160, column: 22, scope: !2423)
!2450 = !DILocation(line: 165, column: 32, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2423, file: !105, line: 161, column: 9)
!2452 = !DILocation(line: 165, column: 37, scope: !2451)
!2453 = !DILocation(line: 165, column: 43, scope: !2451)
!2454 = !DILocation(line: 165, column: 24, scope: !2451)
!2455 = !DILocation(line: 167, column: 17, scope: !2451)
!2456 = !DILocation(line: 170, column: 34, scope: !2451)
!2457 = !DILocation(line: 170, column: 39, scope: !2451)
!2458 = !DILocation(line: 170, column: 45, scope: !2451)
!2459 = !DILocation(line: 170, column: 24, scope: !2451)
!2460 = !DILocation(line: 172, column: 17, scope: !2451)
!2461 = !DILocation(line: 175, column: 32, scope: !2451)
!2462 = !DILocation(line: 175, column: 37, scope: !2451)
!2463 = !DILocation(line: 175, column: 43, scope: !2451)
!2464 = !DILocation(line: 175, column: 24, scope: !2451)
!2465 = !DILocation(line: 177, column: 17, scope: !2451)
!2466 = !DILocation(line: 179, column: 32, scope: !2451)
!2467 = !DILocation(line: 179, column: 37, scope: !2451)
!2468 = !DILocation(line: 179, column: 43, scope: !2451)
!2469 = !DILocation(line: 179, column: 24, scope: !2451)
!2470 = !DILocation(line: 181, column: 17, scope: !2451)
!2471 = distinct !{!2471, !2415, !2472}
!2472 = !DILocation(line: 185, column: 5, scope: !2402)
!2473 = !DILocation(line: 186, column: 9, scope: !2402)
!2474 = !DILocation(line: 187, column: 5, scope: !2402)
!2475 = !DILocation(line: 187, column: 18, scope: !2402)
!2476 = !DILocation(line: 189, column: 13, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2402, file: !105, line: 188, column: 5)
!2478 = !DILocation(line: 189, column: 22, scope: !2477)
!2479 = !DILocation(line: 190, column: 14, scope: !2477)
!2480 = distinct !{!2480, !2474, !2481}
!2481 = !DILocation(line: 191, column: 5, scope: !2402)
!2482 = !DILocation(line: 195, column: 1, scope: !2402)
!2483 = distinct !DISubprogram(name: "get_seed_32", scope: !2484, file: !2484, line: 43, type: !2485, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2487)
!2484 = !DIFile(filename: "src/coremark/core_util.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!51, !43}
!2487 = !{!2488, !2489}
!2488 = !DILocalVariable(name: "i", arg: 1, scope: !2483, file: !2484, line: 43, type: !43)
!2489 = !DILocalVariable(name: "retval", scope: !2483, file: !2484, line: 45, type: !51)
!2490 = !DILocation(line: 0, scope: !2483)
!2491 = !DILocation(line: 49, column: 22, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2483, file: !2484, line: 47, column: 5)
!2493 = !DILocation(line: 50, column: 13, scope: !2492)
!2494 = !DILocation(line: 52, column: 22, scope: !2492)
!2495 = !DILocation(line: 53, column: 13, scope: !2492)
!2496 = !DILocation(line: 55, column: 22, scope: !2492)
!2497 = !DILocation(line: 56, column: 13, scope: !2492)
!2498 = !DILocation(line: 58, column: 22, scope: !2492)
!2499 = !DILocation(line: 59, column: 13, scope: !2492)
!2500 = !DILocation(line: 61, column: 22, scope: !2492)
!2501 = !DILocation(line: 62, column: 13, scope: !2492)
!2502 = !DILocation(line: 65, column: 13, scope: !2492)
!2503 = !DILocation(line: 0, scope: !2492)
!2504 = !DILocation(line: 67, column: 5, scope: !2483)
!2505 = distinct !DISubprogram(name: "crcu8", scope: !2484, file: !2484, line: 165, type: !2506, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!53, !64, !53}
!2508 = !{!2509, !2510, !2511, !2512, !2513}
!2509 = !DILocalVariable(name: "data", arg: 1, scope: !2505, file: !2484, line: 165, type: !64)
!2510 = !DILocalVariable(name: "crc", arg: 2, scope: !2505, file: !2484, line: 165, type: !53)
!2511 = !DILocalVariable(name: "i", scope: !2505, file: !2484, line: 167, type: !64)
!2512 = !DILocalVariable(name: "x16", scope: !2505, file: !2484, line: 167, type: !64)
!2513 = !DILocalVariable(name: "carry", scope: !2505, file: !2484, line: 167, type: !64)
!2514 = !DILocation(line: 0, scope: !2505)
!2515 = !DILocation(line: 169, column: 10, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2505, file: !2484, line: 169, column: 5)
!2517 = !DILocation(line: 0, scope: !2516)
!2518 = !DILocation(line: 169, column: 19, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !2484, line: 169, column: 5)
!2520 = !DILocation(line: 169, column: 5, scope: !2516)
!2521 = !DILocation(line: 171, column: 24, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2519, file: !2484, line: 170, column: 5)
!2523 = !DILocation(line: 171, column: 29, scope: !2522)
!2524 = !DILocation(line: 171, column: 37, scope: !2522)
!2525 = !DILocation(line: 171, column: 48, scope: !2522)
!2526 = !DILocation(line: 171, column: 34, scope: !2522)
!2527 = !DILocation(line: 171, column: 15, scope: !2522)
!2528 = !DILocation(line: 172, column: 14, scope: !2522)
!2529 = !DILocation(line: 174, column: 13, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2522, file: !2484, line: 174, column: 13)
!2531 = !DILocation(line: 174, column: 17, scope: !2530)
!2532 = !DILocation(line: 174, column: 13, scope: !2522)
!2533 = !DILocation(line: 176, column: 17, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !2484, line: 175, column: 9)
!2535 = !DILocation(line: 178, column: 9, scope: !2534)
!2536 = !DILocation(line: 0, scope: !2530)
!2537 = !DILocation(line: 181, column: 13, scope: !2522)
!2538 = !DILocation(line: 182, column: 13, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2522, file: !2484, line: 182, column: 13)
!2540 = !DILocation(line: 182, column: 13, scope: !2522)
!2541 = !DILocation(line: 183, column: 17, scope: !2539)
!2542 = !DILocation(line: 183, column: 13, scope: !2539)
!2543 = !DILocation(line: 185, column: 17, scope: !2539)
!2544 = !DILocation(line: 0, scope: !2539)
!2545 = !DILocation(line: 186, column: 5, scope: !2522)
!2546 = !DILocation(line: 169, column: 25, scope: !2519)
!2547 = !DILocation(line: 169, column: 5, scope: !2519)
!2548 = distinct !{!2548, !2520, !2549}
!2549 = !DILocation(line: 186, column: 5, scope: !2516)
!2550 = !DILocation(line: 187, column: 5, scope: !2505)
!2551 = distinct !DISubprogram(name: "crcu16", scope: !2484, file: !2484, line: 190, type: !2552, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!53, !53, !53}
!2554 = !{!2555, !2556}
!2555 = !DILocalVariable(name: "newval", arg: 1, scope: !2551, file: !2484, line: 190, type: !53)
!2556 = !DILocalVariable(name: "crc", arg: 2, scope: !2551, file: !2484, line: 190, type: !53)
!2557 = !DILocation(line: 0, scope: !2551)
!2558 = !DILocation(line: 192, column: 17, scope: !2551)
!2559 = !DILocation(line: 192, column: 11, scope: !2551)
!2560 = !DILocation(line: 193, column: 25, scope: !2551)
!2561 = !DILocation(line: 193, column: 34, scope: !2551)
!2562 = !DILocation(line: 193, column: 17, scope: !2551)
!2563 = !DILocation(line: 193, column: 11, scope: !2551)
!2564 = !DILocation(line: 194, column: 5, scope: !2551)
!2565 = distinct !DISubprogram(name: "crcu32", scope: !2484, file: !2484, line: 197, type: !2566, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!53, !23, !53}
!2568 = !{!2569, !2570}
!2569 = !DILocalVariable(name: "newval", arg: 1, scope: !2565, file: !2484, line: 197, type: !23)
!2570 = !DILocalVariable(name: "crc", arg: 2, scope: !2565, file: !2484, line: 197, type: !53)
!2571 = !DILocation(line: 0, scope: !2565)
!2572 = !DILocation(line: 199, column: 17, scope: !2565)
!2573 = !DILocation(line: 199, column: 11, scope: !2565)
!2574 = !DILocation(line: 200, column: 33, scope: !2565)
!2575 = !DILocation(line: 200, column: 17, scope: !2565)
!2576 = !DILocation(line: 200, column: 11, scope: !2565)
!2577 = !DILocation(line: 201, column: 5, scope: !2565)
!2578 = distinct !DISubprogram(name: "crc16", scope: !2484, file: !2484, line: 204, type: !2579, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!53, !12, !53}
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "newval", arg: 1, scope: !2578, file: !2484, line: 204, type: !12)
!2583 = !DILocalVariable(name: "crc", arg: 2, scope: !2578, file: !2484, line: 204, type: !53)
!2584 = !DILocation(line: 0, scope: !2578)
!2585 = !DILocation(line: 206, column: 12, scope: !2578)
!2586 = !DILocation(line: 206, column: 5, scope: !2578)
!2587 = distinct !DISubprogram(name: "check_data_types", scope: !2484, file: !2484, line: 210, type: !2588, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2589)
!2588 = !DISubroutineType(types: !101)
!2589 = !{!2590}
!2590 = !DILocalVariable(name: "retval", scope: !2587, file: !2484, line: 212, type: !64)
!2591 = !DILocation(line: 0, scope: !2587)
!2592 = !DILocation(line: 244, column: 9, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2587, file: !2484, line: 244, column: 9)
!2594 = !DILocation(line: 244, column: 16, scope: !2593)
!2595 = !DILocation(line: 244, column: 9, scope: !2587)
!2596 = !DILocation(line: 246, column: 9, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2593, file: !2484, line: 245, column: 5)
!2598 = !DILocation(line: 247, column: 5, scope: !2597)
!2599 = !DILocation(line: 248, column: 5, scope: !2587)
!2600 = distinct !DISubprogram(name: "clock", scope: !125, file: !125, line: 73, type: !2601, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!137}
!2603 = !DILocation(line: 74, column: 10, scope: !2600)
!2604 = !{!2605, !2605, i64 0}
!2605 = !{!"long long", !296, i64 0}
!2606 = !DILocation(line: 74, column: 3, scope: !2600)
!2607 = distinct !DISubprogram(name: "start_time", scope: !125, file: !125, line: 90, type: !214, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2608 = !DILocation(line: 92, column: 5, scope: !2607)
!2609 = !DILocation(line: 93, column: 1, scope: !2607)
!2610 = distinct !DISubprogram(name: "stop_time", scope: !125, file: !125, line: 103, type: !214, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2611 = !DILocation(line: 105, column: 5, scope: !2610)
!2612 = !DILocation(line: 106, column: 1, scope: !2610)
!2613 = distinct !DISubprogram(name: "get_time", scope: !125, file: !125, line: 117, type: !2614, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!117}
!2616 = !{!2617}
!2617 = !DILocalVariable(name: "elapsed", scope: !2613, file: !125, line: 119, type: !117)
!2618 = !DILocation(line: 120, column: 24, scope: !2613)
!2619 = !DILocation(line: 120, column: 11, scope: !2613)
!2620 = !DILocation(line: 0, scope: !2613)
!2621 = !DILocation(line: 121, column: 5, scope: !2613)
!2622 = distinct !DISubprogram(name: "time_in_secs", scope: !125, file: !125, line: 131, type: !2623, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!68, !117}
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "ticks", arg: 1, scope: !2622, file: !125, line: 131, type: !117)
!2627 = !DILocalVariable(name: "retval", scope: !2622, file: !125, line: 133, type: !68)
!2628 = !DILocation(line: 0, scope: !2622)
!2629 = !DILocation(line: 133, column: 24, scope: !2622)
!2630 = !DILocation(line: 133, column: 41, scope: !2622)
!2631 = !DILocation(line: 134, column: 5, scope: !2622)
!2632 = distinct !DISubprogram(name: "portable_init", scope: !125, file: !125, line: 144, type: !2633, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2641)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !2635, !2640, !1019}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_portable", file: !13, line: 195, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CORE_PORTABLE_S", file: !13, line: 192, size: 8, elements: !2638)
!2638 = !{!2639}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "portable_id", scope: !2637, file: !13, line: 194, baseType: !64, size: 8)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "p", arg: 1, scope: !2632, file: !125, line: 144, type: !2635)
!2643 = !DILocalVariable(name: "argc", arg: 2, scope: !2632, file: !125, line: 144, type: !2640)
!2644 = !DILocalVariable(name: "argv", arg: 3, scope: !2632, file: !125, line: 144, type: !1019)
!2645 = !DILocation(line: 0, scope: !2632)
!2646 = !DILocation(line: 156, column: 8, scope: !2632)
!2647 = !DILocation(line: 156, column: 20, scope: !2632)
!2648 = !{!331, !296, i64 0}
!2649 = !DILocation(line: 157, column: 1, scope: !2632)
!2650 = distinct !DISubprogram(name: "portable_fini", scope: !125, file: !125, line: 162, type: !2651, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !2635}
!2653 = !{!2654}
!2654 = !DILocalVariable(name: "p", arg: 1, scope: !2650, file: !125, line: 162, type: !2635)
!2655 = !DILocation(line: 0, scope: !2650)
!2656 = !DILocation(line: 164, column: 8, scope: !2650)
!2657 = !DILocation(line: 164, column: 20, scope: !2650)
!2658 = !DILocation(line: 165, column: 1, scope: !2650)
!2659 = distinct !DISubprogram(name: "printf_", scope: !148, file: !148, line: 862, type: !2660, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2664)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!43, !2662, null}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2664 = !{!2665, !2666, !2673, !2675}
!2665 = !DILocalVariable(name: "format", arg: 1, scope: !2659, file: !148, line: 862, type: !2662)
!2666 = !DILocalVariable(name: "va", scope: !2659, file: !148, line: 864, type: !2667)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2668, line: 14, baseType: !2669)
!2668 = !DIFile(filename: "llvm/llvm-9.0.1/install/lib/clang/9.0.1/include/stdarg.h", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection")
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, line: 864, baseType: !2670)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", file: !158, line: 864, size: 32, elements: !2671)
!2671 = !{!2672}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2670, file: !158, line: 864, baseType: !19, size: 32)
!2673 = !DILocalVariable(name: "buffer", scope: !2659, file: !148, line: 866, type: !2674)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !1032)
!2675 = !DILocalVariable(name: "ret", scope: !2659, file: !148, line: 867, type: !2676)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2677 = !DILocation(line: 0, scope: !2659)
!2678 = !DILocation(line: 864, column: 3, scope: !2659)
!2679 = !DILocation(line: 864, column: 11, scope: !2659)
!2680 = !DILocation(line: 865, column: 3, scope: !2659)
!2681 = !DILocation(line: 866, column: 3, scope: !2659)
!2682 = !DILocation(line: 866, column: 8, scope: !2659)
!2683 = !DILocation(line: 867, column: 41, scope: !2659)
!2684 = !DILocation(line: 867, column: 19, scope: !2659)
!2685 = !DILocation(line: 868, column: 3, scope: !2659)
!2686 = !DILocation(line: 870, column: 1, scope: !2659)
!2687 = !DILocation(line: 869, column: 3, scope: !2659)
!2688 = distinct !DISubprogram(name: "_out_char", scope: !148, file: !148, line: 149, type: !155, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2689)
!2689 = !{!2690, !2691, !2692, !2693}
!2690 = !DILocalVariable(name: "character", arg: 1, scope: !2688, file: !148, line: 149, type: !67)
!2691 = !DILocalVariable(name: "buffer", arg: 2, scope: !2688, file: !148, line: 149, type: !19)
!2692 = !DILocalVariable(name: "idx", arg: 3, scope: !2688, file: !148, line: 149, type: !151)
!2693 = !DILocalVariable(name: "maxlen", arg: 4, scope: !2688, file: !148, line: 149, type: !151)
!2694 = !DILocation(line: 0, scope: !2688)
!2695 = !DILocation(line: 152, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2688, file: !148, line: 152, column: 7)
!2697 = !DILocation(line: 152, column: 7, scope: !2688)
!2698 = !DILocation(line: 153, column: 5, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !148, line: 152, column: 18)
!2700 = !DILocation(line: 154, column: 3, scope: !2699)
!2701 = !DILocation(line: 155, column: 1, scope: !2688)
!2702 = distinct !DISubprogram(name: "_vsnprintf", scope: !148, file: !148, line: 577, type: !2703, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2706)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!43, !153, !66, !2705, !2662, !2667}
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2722, !2728, !2731, !2738, !2743, !2745, !2751, !2753, !2755, !2756}
!2707 = !DILocalVariable(name: "out", arg: 1, scope: !2702, file: !148, line: 577, type: !153)
!2708 = !DILocalVariable(name: "buffer", arg: 2, scope: !2702, file: !148, line: 577, type: !66)
!2709 = !DILocalVariable(name: "maxlen", arg: 3, scope: !2702, file: !148, line: 577, type: !2705)
!2710 = !DILocalVariable(name: "format", arg: 4, scope: !2702, file: !148, line: 577, type: !2662)
!2711 = !DILocalVariable(name: "va", arg: 5, scope: !2702, file: !148, line: 577, type: !2667)
!2712 = !DILocalVariable(name: "flags", scope: !2702, file: !148, line: 579, type: !24)
!2713 = !DILocalVariable(name: "width", scope: !2702, file: !148, line: 579, type: !24)
!2714 = !DILocalVariable(name: "precision", scope: !2702, file: !148, line: 579, type: !24)
!2715 = !DILocalVariable(name: "n", scope: !2702, file: !148, line: 579, type: !24)
!2716 = !DILocalVariable(name: "idx", scope: !2702, file: !148, line: 580, type: !151)
!2717 = !DILocalVariable(name: "w", scope: !2718, file: !148, line: 620, type: !2676)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !148, line: 619, column: 30)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !148, line: 619, column: 14)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 616, column: 9)
!2721 = distinct !DILexicalBlock(scope: !2702, file: !148, line: 588, column: 3)
!2722 = !DILocalVariable(name: "prec", scope: !2723, file: !148, line: 640, type: !2676)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !148, line: 639, column: 32)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !148, line: 639, column: 16)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !148, line: 636, column: 11)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !148, line: 633, column: 25)
!2727 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 633, column: 9)
!2728 = !DILocalVariable(name: "base", scope: !2729, file: !148, line: 692, type: !24)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !148, line: 690, column: 18)
!2730 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 683, column: 22)
!2731 = !DILocalVariable(name: "value", scope: !2732, file: !148, line: 726, type: !2736)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 724, column: 40)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !148, line: 724, column: 15)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !148, line: 722, column: 51)
!2735 = distinct !DILexicalBlock(scope: !2729, file: !148, line: 722, column: 13)
!2736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2737)
!2737 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2738 = !DILocalVariable(name: "value", scope: !2739, file: !148, line: 731, type: !2741)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !148, line: 730, column: 40)
!2740 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 730, column: 20)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!2743 = !DILocalVariable(name: "value", scope: !2744, file: !148, line: 735, type: !2676)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !148, line: 734, column: 16)
!2745 = !DILocalVariable(name: "value", scope: !2746, file: !148, line: 750, type: !2750)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 749, column: 16)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !148, line: 746, column: 20)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !148, line: 741, column: 15)
!2749 = distinct !DILexicalBlock(scope: !2735, file: !148, line: 739, column: 14)
!2750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!2751 = !DILocalVariable(name: "l", scope: !2752, file: !148, line: 777, type: !24)
!2752 = distinct !DILexicalBlock(scope: !2730, file: !148, line: 776, column: 18)
!2753 = !DILocalVariable(name: "p", scope: !2754, file: !148, line: 797, type: !2662)
!2754 = distinct !DILexicalBlock(scope: !2730, file: !148, line: 796, column: 18)
!2755 = !DILocalVariable(name: "l", scope: !2754, file: !148, line: 798, type: !24)
!2756 = !DILocalVariable(name: "is_ll", scope: !2757, file: !148, line: 826, type: !2758)
!2757 = distinct !DILexicalBlock(scope: !2730, file: !148, line: 822, column: 18)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2759 = !DILocation(line: 0, scope: !2702)
!2760 = !DILocation(line: 577, column: 88, scope: !2702)
!2761 = !DILocation(line: 577, column: 104, scope: !2702)
!2762 = !DILocation(line: 582, column: 8, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2702, file: !148, line: 582, column: 7)
!2764 = !DILocation(line: 582, column: 7, scope: !2702)
!2765 = !DILocation(line: 585, column: 3, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !148, line: 582, column: 16)
!2767 = !DILocation(line: 587, column: 3, scope: !2702)
!2768 = !DILocation(line: 587, column: 11, scope: !2702)
!2769 = !DILocation(line: 587, column: 10, scope: !2702)
!2770 = !DILocation(line: 590, column: 10, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 590, column: 9)
!2772 = !DILocation(line: 590, column: 9, scope: !2771)
!2773 = !DILocation(line: 590, column: 17, scope: !2771)
!2774 = !DILocation(line: 590, column: 9, scope: !2721)
!2775 = !DILocation(line: 592, column: 12, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !148, line: 590, column: 25)
!2777 = !DILocation(line: 592, column: 11, scope: !2776)
!2778 = !DILocation(line: 592, column: 31, scope: !2776)
!2779 = !DILocation(line: 592, column: 7, scope: !2776)
!2780 = !DILocation(line: 593, column: 13, scope: !2776)
!2781 = !DILocation(line: 594, column: 7, scope: !2776)
!2782 = distinct !{!2782, !2767, !2783}
!2783 = !DILocation(line: 850, column: 3, scope: !2702)
!2784 = !DILocation(line: 598, column: 13, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2771, file: !148, line: 596, column: 10)
!2786 = !DILocation(line: 603, column: 5, scope: !2721)
!2787 = !DILocation(line: 602, column: 11, scope: !2721)
!2788 = !DILocation(line: 604, column: 16, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 603, column: 8)
!2790 = !DILocation(line: 604, column: 15, scope: !2789)
!2791 = !DILocation(line: 605, column: 25, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !148, line: 604, column: 24)
!2793 = !DILocation(line: 605, column: 49, scope: !2792)
!2794 = !DILocation(line: 605, column: 61, scope: !2792)
!2795 = !DILocation(line: 606, column: 25, scope: !2792)
!2796 = !DILocation(line: 606, column: 49, scope: !2792)
!2797 = !DILocation(line: 606, column: 61, scope: !2792)
!2798 = !DILocation(line: 607, column: 25, scope: !2792)
!2799 = !DILocation(line: 607, column: 49, scope: !2792)
!2800 = !DILocation(line: 607, column: 61, scope: !2792)
!2801 = !DILocation(line: 608, column: 25, scope: !2792)
!2802 = !DILocation(line: 608, column: 49, scope: !2792)
!2803 = !DILocation(line: 608, column: 61, scope: !2792)
!2804 = !DILocation(line: 609, column: 25, scope: !2792)
!2805 = !DILocation(line: 609, column: 49, scope: !2792)
!2806 = !DILocation(line: 609, column: 61, scope: !2792)
!2807 = !DILocation(line: 610, column: 61, scope: !2792)
!2808 = !DILocation(line: 0, scope: !2792)
!2809 = !DILocation(line: 0, scope: !2721)
!2810 = !DILocation(line: 612, column: 5, scope: !2789)
!2811 = distinct !{!2811, !2786, !2812}
!2812 = !DILocation(line: 612, column: 15, scope: !2721)
!2813 = !DILocation(line: 616, column: 20, scope: !2720)
!2814 = !DILocation(line: 616, column: 19, scope: !2720)
!2815 = !DILocation(line: 616, column: 9, scope: !2720)
!2816 = !DILocation(line: 616, column: 9, scope: !2721)
!2817 = !DILocation(line: 617, column: 15, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2720, file: !148, line: 616, column: 29)
!2819 = !DILocation(line: 618, column: 5, scope: !2818)
!2820 = !DILocation(line: 619, column: 15, scope: !2719)
!2821 = !DILocation(line: 619, column: 14, scope: !2719)
!2822 = !DILocation(line: 619, column: 22, scope: !2719)
!2823 = !DILocation(line: 619, column: 14, scope: !2720)
!2824 = !DILocation(line: 620, column: 21, scope: !2718)
!2825 = !DILocation(line: 0, scope: !2718)
!2826 = !DILocation(line: 621, column: 13, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2718, file: !148, line: 621, column: 11)
!2828 = !DILocation(line: 621, column: 11, scope: !2718)
!2829 = !DILocation(line: 622, column: 15, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2827, file: !148, line: 621, column: 18)
!2831 = !DILocation(line: 623, column: 31, scope: !2830)
!2832 = !DILocation(line: 624, column: 7, scope: !2830)
!2833 = !DILocation(line: 0, scope: !2827)
!2834 = !DILocation(line: 628, column: 13, scope: !2718)
!2835 = !DILocation(line: 629, column: 5, scope: !2718)
!2836 = !DILocation(line: 0, scope: !2720)
!2837 = !DILocation(line: 633, column: 10, scope: !2727)
!2838 = !DILocation(line: 633, column: 9, scope: !2727)
!2839 = !DILocation(line: 633, column: 17, scope: !2727)
!2840 = !DILocation(line: 633, column: 9, scope: !2721)
!2841 = !DILocation(line: 634, column: 13, scope: !2726)
!2842 = !DILocation(line: 635, column: 13, scope: !2726)
!2843 = !DILocation(line: 636, column: 22, scope: !2725)
!2844 = !DILocation(line: 636, column: 21, scope: !2725)
!2845 = !DILocation(line: 636, column: 11, scope: !2725)
!2846 = !DILocation(line: 636, column: 11, scope: !2726)
!2847 = !DILocation(line: 637, column: 21, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2725, file: !148, line: 636, column: 31)
!2849 = !DILocation(line: 638, column: 7, scope: !2848)
!2850 = !DILocation(line: 639, column: 17, scope: !2724)
!2851 = !DILocation(line: 639, column: 16, scope: !2724)
!2852 = !DILocation(line: 639, column: 24, scope: !2724)
!2853 = !DILocation(line: 639, column: 16, scope: !2725)
!2854 = !DILocation(line: 640, column: 31, scope: !2723)
!2855 = !DILocation(line: 0, scope: !2723)
!2856 = !DILocation(line: 641, column: 26, scope: !2723)
!2857 = !DILocation(line: 641, column: 21, scope: !2723)
!2858 = !DILocation(line: 642, column: 15, scope: !2723)
!2859 = !DILocation(line: 643, column: 7, scope: !2723)
!2860 = !DILocation(line: 0, scope: !2725)
!2861 = !DILocation(line: 644, column: 5, scope: !2726)
!2862 = !DILocation(line: 647, column: 14, scope: !2721)
!2863 = !DILocation(line: 647, column: 13, scope: !2721)
!2864 = !DILocation(line: 649, column: 15, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 647, column: 22)
!2866 = !DILocation(line: 650, column: 15, scope: !2865)
!2867 = !DILocation(line: 651, column: 14, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !148, line: 651, column: 13)
!2869 = !DILocation(line: 651, column: 13, scope: !2868)
!2870 = !DILocation(line: 651, column: 21, scope: !2868)
!2871 = !DILocation(line: 651, column: 13, scope: !2865)
!2872 = !DILocation(line: 652, column: 17, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2868, file: !148, line: 651, column: 29)
!2874 = !DILocation(line: 653, column: 17, scope: !2873)
!2875 = !DILocation(line: 654, column: 9, scope: !2873)
!2876 = !DILocation(line: 0, scope: !2865)
!2877 = !DILocation(line: 655, column: 9, scope: !2865)
!2878 = !DILocation(line: 657, column: 15, scope: !2865)
!2879 = !DILocation(line: 658, column: 15, scope: !2865)
!2880 = !DILocation(line: 659, column: 14, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2865, file: !148, line: 659, column: 13)
!2882 = !DILocation(line: 659, column: 13, scope: !2881)
!2883 = !DILocation(line: 659, column: 21, scope: !2881)
!2884 = !DILocation(line: 659, column: 13, scope: !2865)
!2885 = !DILocation(line: 660, column: 17, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2881, file: !148, line: 659, column: 29)
!2887 = !DILocation(line: 661, column: 17, scope: !2886)
!2888 = !DILocation(line: 662, column: 9, scope: !2886)
!2889 = !DILocation(line: 663, column: 9, scope: !2865)
!2890 = !DILocation(line: 666, column: 15, scope: !2865)
!2891 = !DILocation(line: 667, column: 15, scope: !2865)
!2892 = !DILocation(line: 668, column: 9, scope: !2865)
!2893 = !DILocation(line: 671, column: 15, scope: !2865)
!2894 = !DILocation(line: 672, column: 15, scope: !2865)
!2895 = !DILocation(line: 673, column: 9, scope: !2865)
!2896 = !DILocation(line: 675, column: 15, scope: !2865)
!2897 = !DILocation(line: 676, column: 15, scope: !2865)
!2898 = !DILocation(line: 677, column: 9, scope: !2865)
!2899 = !DILocation(line: 679, column: 9, scope: !2865)
!2900 = !DILocation(line: 683, column: 14, scope: !2721)
!2901 = !DILocation(line: 683, column: 13, scope: !2721)
!2902 = !DILocation(line: 693, column: 14, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2729, file: !148, line: 693, column: 13)
!2904 = !DILocation(line: 693, column: 13, scope: !2903)
!2905 = !DILocation(line: 693, column: 21, scope: !2903)
!2906 = !DILocation(line: 693, column: 28, scope: !2903)
!2907 = !DILocation(line: 693, column: 32, scope: !2903)
!2908 = !DILocation(line: 693, column: 31, scope: !2903)
!2909 = !DILocation(line: 693, column: 39, scope: !2903)
!2910 = !DILocation(line: 693, column: 13, scope: !2729)
!2911 = !DILocation(line: 0, scope: !2729)
!2912 = !DILocation(line: 695, column: 9, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2903, file: !148, line: 693, column: 47)
!2914 = !DILocation(line: 696, column: 19, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2903, file: !148, line: 696, column: 18)
!2916 = !DILocation(line: 696, column: 18, scope: !2915)
!2917 = !DILocation(line: 696, column: 26, scope: !2915)
!2918 = !DILocation(line: 696, column: 18, scope: !2903)
!2919 = !DILocation(line: 698, column: 9, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !148, line: 696, column: 34)
!2921 = !DILocation(line: 699, column: 19, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2915, file: !148, line: 699, column: 18)
!2923 = !DILocation(line: 699, column: 18, scope: !2922)
!2924 = !DILocation(line: 699, column: 26, scope: !2922)
!2925 = !DILocation(line: 699, column: 18, scope: !2915)
!2926 = !DILocation(line: 701, column: 9, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2922, file: !148, line: 699, column: 34)
!2928 = !DILocation(line: 704, column: 17, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2922, file: !148, line: 702, column: 14)
!2930 = !DILocation(line: 0, scope: !2922)
!2931 = !DILocation(line: 0, scope: !2915)
!2932 = !DILocation(line: 0, scope: !2903)
!2933 = !DILocation(line: 707, column: 14, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2729, file: !148, line: 707, column: 13)
!2935 = !DILocation(line: 707, column: 13, scope: !2934)
!2936 = !DILocation(line: 707, column: 21, scope: !2934)
!2937 = !DILocation(line: 707, column: 13, scope: !2729)
!2938 = !DILocation(line: 708, column: 17, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !148, line: 707, column: 29)
!2940 = !DILocation(line: 709, column: 9, scope: !2939)
!2941 = !DILocation(line: 712, column: 15, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2729, file: !148, line: 712, column: 13)
!2943 = !DILocation(line: 712, column: 14, scope: !2942)
!2944 = !DILocation(line: 712, column: 22, scope: !2942)
!2945 = !DILocation(line: 712, column: 30, scope: !2942)
!2946 = !DILocation(line: 712, column: 35, scope: !2942)
!2947 = !DILocation(line: 712, column: 34, scope: !2942)
!2948 = !DILocation(line: 712, column: 42, scope: !2942)
!2949 = !DILocation(line: 712, column: 13, scope: !2729)
!2950 = !DILocation(line: 713, column: 17, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2942, file: !148, line: 712, column: 51)
!2952 = !DILocation(line: 714, column: 9, scope: !2951)
!2953 = !DILocation(line: 717, column: 19, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2729, file: !148, line: 717, column: 13)
!2955 = !DILocation(line: 717, column: 13, scope: !2729)
!2956 = !DILocation(line: 718, column: 17, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2954, file: !148, line: 717, column: 38)
!2958 = !DILocation(line: 719, column: 9, scope: !2957)
!2959 = !DILocation(line: 722, column: 15, scope: !2735)
!2960 = !DILocation(line: 722, column: 14, scope: !2735)
!2961 = !DILocation(line: 722, column: 22, scope: !2735)
!2962 = !DILocation(line: 722, column: 30, scope: !2735)
!2963 = !DILocation(line: 722, column: 35, scope: !2735)
!2964 = !DILocation(line: 722, column: 34, scope: !2735)
!2965 = !DILocation(line: 722, column: 42, scope: !2735)
!2966 = !DILocation(line: 722, column: 13, scope: !2729)
!2967 = !DILocation(line: 724, column: 21, scope: !2733)
!2968 = !DILocation(line: 724, column: 15, scope: !2734)
!2969 = !DILocation(line: 726, column: 37, scope: !2732)
!2970 = !DILocation(line: 0, scope: !2732)
!2971 = !DILocation(line: 727, column: 88, scope: !2732)
!2972 = !DILocation(line: 727, column: 82, scope: !2732)
!2973 = !DILocation(line: 727, column: 104, scope: !2732)
!2974 = !DILocation(line: 727, column: 120, scope: !2732)
!2975 = !DILocation(line: 727, column: 125, scope: !2732)
!2976 = !DILocation(line: 727, column: 19, scope: !2732)
!2977 = !DILocation(line: 729, column: 11, scope: !2732)
!2978 = !DILocation(line: 730, column: 26, scope: !2740)
!2979 = !DILocation(line: 730, column: 20, scope: !2733)
!2980 = !DILocation(line: 731, column: 32, scope: !2739)
!2981 = !DILocation(line: 0, scope: !2739)
!2982 = !DILocation(line: 732, column: 78, scope: !2739)
!2983 = !DILocation(line: 732, column: 72, scope: !2739)
!2984 = !DILocation(line: 732, column: 94, scope: !2739)
!2985 = !DILocation(line: 732, column: 110, scope: !2739)
!2986 = !DILocation(line: 732, column: 19, scope: !2739)
!2987 = !DILocation(line: 733, column: 11, scope: !2739)
!2988 = !DILocation(line: 735, column: 38, scope: !2744)
!2989 = !DILocation(line: 735, column: 31, scope: !2744)
!2990 = !DILocation(line: 735, column: 60, scope: !2744)
!2991 = !DILocation(line: 735, column: 54, scope: !2744)
!2992 = !DILocation(line: 735, column: 85, scope: !2744)
!2993 = !DILocation(line: 735, column: 78, scope: !2744)
!2994 = !DILocation(line: 735, column: 113, scope: !2744)
!2995 = !DILocation(line: 735, column: 102, scope: !2744)
!2996 = !DILocation(line: 735, column: 131, scope: !2744)
!2997 = !DILocation(line: 0, scope: !2744)
!2998 = !DILocation(line: 736, column: 77, scope: !2744)
!2999 = !DILocation(line: 736, column: 71, scope: !2744)
!3000 = !DILocation(line: 736, column: 93, scope: !2744)
!3001 = !DILocation(line: 736, column: 109, scope: !2744)
!3002 = !DILocation(line: 736, column: 19, scope: !2744)
!3003 = !DILocation(line: 0, scope: !2740)
!3004 = !DILocation(line: 0, scope: !2733)
!3005 = !DILocation(line: 738, column: 9, scope: !2734)
!3006 = !DILocation(line: 741, column: 21, scope: !2748)
!3007 = !DILocation(line: 741, column: 15, scope: !2749)
!3008 = !DILocation(line: 743, column: 61, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2748, file: !148, line: 741, column: 40)
!3010 = !DILocation(line: 743, column: 100, scope: !3009)
!3011 = !DILocation(line: 743, column: 19, scope: !3009)
!3012 = !DILocation(line: 745, column: 11, scope: !3009)
!3013 = !DILocation(line: 746, column: 26, scope: !2747)
!3014 = !DILocation(line: 746, column: 20, scope: !2748)
!3015 = !DILocation(line: 747, column: 56, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 746, column: 40)
!3017 = !DILocation(line: 747, column: 19, scope: !3016)
!3018 = !DILocation(line: 748, column: 11, scope: !3016)
!3019 = !DILocation(line: 750, column: 47, scope: !2746)
!3020 = !DILocation(line: 750, column: 40, scope: !2746)
!3021 = !DILocation(line: 750, column: 78, scope: !2746)
!3022 = !DILocation(line: 750, column: 63, scope: !2746)
!3023 = !DILocation(line: 750, column: 112, scope: !2746)
!3024 = !DILocation(line: 750, column: 105, scope: !2746)
!3025 = !DILocation(line: 750, column: 149, scope: !2746)
!3026 = !DILocation(line: 750, column: 129, scope: !2746)
!3027 = !DILocation(line: 750, column: 176, scope: !2746)
!3028 = !DILocation(line: 0, scope: !2746)
!3029 = !DILocation(line: 751, column: 19, scope: !2746)
!3030 = !DILocation(line: 0, scope: !2747)
!3031 = !DILocation(line: 0, scope: !2748)
!3032 = !DILocation(line: 0, scope: !2735)
!3033 = !DILocation(line: 754, column: 15, scope: !2729)
!3034 = !DILocation(line: 760, column: 14, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2730, file: !148, line: 760, column: 13)
!3036 = !DILocation(line: 760, column: 13, scope: !3035)
!3037 = !DILocation(line: 760, column: 21, scope: !3035)
!3038 = !DILocation(line: 760, column: 13, scope: !2730)
!3039 = !DILocation(line: 760, column: 35, scope: !3035)
!3040 = !DILocation(line: 760, column: 29, scope: !3035)
!3041 = !DILocation(line: 761, column: 47, scope: !2730)
!3042 = !DILocation(line: 761, column: 15, scope: !2730)
!3043 = !DILocation(line: 762, column: 15, scope: !2730)
!3044 = !DILocation(line: 763, column: 9, scope: !2730)
!3045 = !DILocation(line: 769, column: 15, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2730, file: !148, line: 769, column: 13)
!3047 = !DILocation(line: 769, column: 14, scope: !3046)
!3048 = !DILocation(line: 769, column: 22, scope: !3046)
!3049 = !DILocation(line: 769, column: 29, scope: !3046)
!3050 = !DILocation(line: 769, column: 33, scope: !3046)
!3051 = !DILocation(line: 769, column: 32, scope: !3046)
!3052 = !DILocation(line: 769, column: 40, scope: !3046)
!3053 = !DILocation(line: 769, column: 13, scope: !2730)
!3054 = !DILocation(line: 769, column: 55, scope: !3046)
!3055 = !DILocation(line: 769, column: 49, scope: !3046)
!3056 = !DILocation(line: 770, column: 15, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2730, file: !148, line: 770, column: 13)
!3058 = !DILocation(line: 770, column: 14, scope: !3057)
!3059 = !DILocation(line: 770, column: 22, scope: !3057)
!3060 = !DILocation(line: 770, column: 29, scope: !3057)
!3061 = !DILocation(line: 770, column: 33, scope: !3057)
!3062 = !DILocation(line: 770, column: 32, scope: !3057)
!3063 = !DILocation(line: 770, column: 40, scope: !3057)
!3064 = !DILocation(line: 770, column: 13, scope: !2730)
!3065 = !DILocation(line: 770, column: 55, scope: !3057)
!3066 = !DILocation(line: 770, column: 49, scope: !3057)
!3067 = !DILocation(line: 0, scope: !2730)
!3068 = !DILocation(line: 771, column: 47, scope: !2730)
!3069 = !DILocation(line: 771, column: 15, scope: !2730)
!3070 = !DILocation(line: 772, column: 15, scope: !2730)
!3071 = !DILocation(line: 773, column: 9, scope: !2730)
!3072 = !DILocation(line: 0, scope: !2752)
!3073 = !DILocation(line: 779, column: 21, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2752, file: !148, line: 779, column: 13)
!3075 = !DILocation(line: 779, column: 13, scope: !2752)
!3076 = !DILocation(line: 780, column: 11, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3074, file: !148, line: 779, column: 36)
!3078 = !DILocation(line: 780, column: 19, scope: !3077)
!3079 = !DILocation(line: 780, column: 22, scope: !3077)
!3080 = !DILocation(line: 781, column: 33, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3077, file: !148, line: 780, column: 31)
!3082 = !DILocation(line: 781, column: 13, scope: !3081)
!3083 = distinct !{!3083, !3076, !3084}
!3084 = !DILocation(line: 782, column: 11, scope: !3077)
!3085 = !DILocation(line: 783, column: 9, scope: !3077)
!3086 = !DILocation(line: 580, column: 10, scope: !2702)
!3087 = !DILocation(line: 785, column: 19, scope: !2752)
!3088 = !DILocation(line: 785, column: 13, scope: !2752)
!3089 = !DILocation(line: 785, column: 47, scope: !2752)
!3090 = !DILocation(line: 785, column: 9, scope: !2752)
!3091 = !DILocation(line: 787, column: 19, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2752, file: !148, line: 787, column: 13)
!3093 = !DILocation(line: 787, column: 13, scope: !2752)
!3094 = !DILocation(line: 788, column: 11, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3092, file: !148, line: 787, column: 33)
!3096 = !DILocation(line: 788, column: 19, scope: !3095)
!3097 = !DILocation(line: 788, column: 22, scope: !3095)
!3098 = !DILocation(line: 789, column: 33, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !148, line: 788, column: 31)
!3100 = !DILocation(line: 789, column: 13, scope: !3099)
!3101 = distinct !{!3101, !3094, !3102}
!3102 = !DILocation(line: 790, column: 11, scope: !3095)
!3103 = !DILocation(line: 791, column: 9, scope: !3095)
!3104 = !DILocation(line: 792, column: 15, scope: !2752)
!3105 = !DILocation(line: 797, column: 25, scope: !2754)
!3106 = !DILocation(line: 0, scope: !2754)
!3107 = !DILocation(line: 798, column: 40, scope: !2754)
!3108 = !DILocation(line: 798, column: 26, scope: !2754)
!3109 = !DILocation(line: 800, column: 19, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2754, file: !148, line: 800, column: 13)
!3111 = !DILocation(line: 800, column: 13, scope: !2754)
!3112 = !DILocation(line: 801, column: 18, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !148, line: 800, column: 38)
!3114 = !DILocation(line: 801, column: 16, scope: !3113)
!3115 = !DILocation(line: 802, column: 9, scope: !3113)
!3116 = !DILocation(line: 803, column: 21, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !2754, file: !148, line: 803, column: 13)
!3118 = !DILocation(line: 803, column: 13, scope: !2754)
!3119 = !DILocation(line: 804, column: 11, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !148, line: 803, column: 36)
!3121 = !DILocation(line: 804, column: 19, scope: !3120)
!3122 = !DILocation(line: 804, column: 22, scope: !3120)
!3123 = !DILocation(line: 805, column: 33, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3120, file: !148, line: 804, column: 31)
!3125 = !DILocation(line: 805, column: 13, scope: !3124)
!3126 = distinct !{!3126, !3119, !3127}
!3127 = !DILocation(line: 806, column: 11, scope: !3120)
!3128 = !DILocation(line: 807, column: 9, scope: !3120)
!3129 = !DILocation(line: 809, column: 9, scope: !2754)
!3130 = !DILocation(line: 809, column: 17, scope: !2754)
!3131 = !DILocation(line: 809, column: 20, scope: !2754)
!3132 = !DILocation(line: 809, column: 26, scope: !2754)
!3133 = !DILocation(line: 809, column: 38, scope: !2754)
!3134 = !DILocation(line: 809, column: 57, scope: !2754)
!3135 = !DILocation(line: 809, column: 69, scope: !2754)
!3136 = !DILocation(line: 810, column: 18, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2754, file: !148, line: 809, column: 74)
!3138 = !DILocation(line: 810, column: 15, scope: !3137)
!3139 = !DILocation(line: 810, column: 34, scope: !3137)
!3140 = !DILocation(line: 810, column: 11, scope: !3137)
!3141 = distinct !{!3141, !3129, !3142}
!3142 = !DILocation(line: 811, column: 9, scope: !2754)
!3143 = !DILocation(line: 813, column: 19, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !2754, file: !148, line: 813, column: 13)
!3145 = !DILocation(line: 813, column: 13, scope: !2754)
!3146 = !DILocation(line: 814, column: 11, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3144, file: !148, line: 813, column: 33)
!3148 = !DILocation(line: 814, column: 19, scope: !3147)
!3149 = !DILocation(line: 814, column: 22, scope: !3147)
!3150 = !DILocation(line: 815, column: 33, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !148, line: 814, column: 31)
!3152 = !DILocation(line: 815, column: 13, scope: !3151)
!3153 = distinct !{!3153, !3146, !3154}
!3154 = !DILocation(line: 816, column: 11, scope: !3147)
!3155 = !DILocation(line: 817, column: 9, scope: !3147)
!3156 = !DILocation(line: 818, column: 15, scope: !2754)
!3157 = !DILocation(line: 824, column: 15, scope: !2757)
!3158 = !DILocation(line: 0, scope: !2757)
!3159 = !DILocation(line: 832, column: 81, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !148, line: 830, column: 14)
!3161 = distinct !DILexicalBlock(scope: !2757, file: !148, line: 827, column: 13)
!3162 = !DILocation(line: 832, column: 70, scope: !3160)
!3163 = !DILocation(line: 832, column: 17, scope: !3160)
!3164 = !DILocation(line: 836, column: 15, scope: !2757)
!3165 = !DILocation(line: 841, column: 29, scope: !2730)
!3166 = !DILocation(line: 841, column: 9, scope: !2730)
!3167 = !DILocation(line: 842, column: 15, scope: !2730)
!3168 = !DILocation(line: 843, column: 9, scope: !2730)
!3169 = !DILocation(line: 846, column: 14, scope: !2730)
!3170 = !DILocation(line: 846, column: 13, scope: !2730)
!3171 = !DILocation(line: 846, column: 33, scope: !2730)
!3172 = !DILocation(line: 846, column: 9, scope: !2730)
!3173 = !DILocation(line: 847, column: 15, scope: !2730)
!3174 = !DILocation(line: 848, column: 9, scope: !2730)
!3175 = !DILocation(line: 853, column: 28, scope: !2702)
!3176 = !DILocation(line: 853, column: 24, scope: !2702)
!3177 = !DILocation(line: 853, column: 52, scope: !2702)
!3178 = !DILocation(line: 853, column: 3, scope: !2702)
!3179 = !DILocation(line: 856, column: 3, scope: !2702)
!3180 = distinct !DISubprogram(name: "_out_null", scope: !148, file: !148, line: 142, type: !155, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3181)
!3181 = !{!3182, !3183, !3184, !3185}
!3182 = !DILocalVariable(name: "character", arg: 1, scope: !3180, file: !148, line: 142, type: !67)
!3183 = !DILocalVariable(name: "buffer", arg: 2, scope: !3180, file: !148, line: 142, type: !19)
!3184 = !DILocalVariable(name: "idx", arg: 3, scope: !3180, file: !148, line: 142, type: !151)
!3185 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3180, file: !148, line: 142, type: !151)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 145, column: 1, scope: !3180)
!3188 = distinct !DISubprogram(name: "_is_digit", scope: !148, file: !148, line: 181, type: !3189, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!188, !67}
!3191 = !{!3192}
!3192 = !DILocalVariable(name: "ch", arg: 1, scope: !3188, file: !148, line: 181, type: !67)
!3193 = !DILocation(line: 0, scope: !3188)
!3194 = !DILocation(line: 183, column: 11, scope: !3188)
!3195 = !DILocation(line: 183, column: 14, scope: !3188)
!3196 = !DILocation(line: 183, column: 22, scope: !3188)
!3197 = !DILocation(line: 183, column: 26, scope: !3188)
!3198 = !DILocation(line: 183, column: 29, scope: !3188)
!3199 = !DILocation(line: 183, column: 3, scope: !3188)
!3200 = distinct !DISubprogram(name: "_atoi", scope: !148, file: !148, line: 188, type: !3201, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3204)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!24, !3203}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 32)
!3204 = !{!3205, !3206}
!3205 = !DILocalVariable(name: "str", arg: 1, scope: !3200, file: !148, line: 188, type: !3203)
!3206 = !DILocalVariable(name: "i", scope: !3200, file: !148, line: 190, type: !24)
!3207 = !DILocation(line: 0, scope: !3200)
!3208 = !DILocation(line: 191, column: 3, scope: !3200)
!3209 = !DILocation(line: 191, column: 21, scope: !3200)
!3210 = !DILocation(line: 191, column: 20, scope: !3200)
!3211 = !DILocation(line: 191, column: 10, scope: !3200)
!3212 = !DILocation(line: 192, column: 11, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3200, file: !148, line: 191, column: 28)
!3214 = !DILocation(line: 192, column: 42, scope: !3213)
!3215 = !DILocation(line: 192, column: 34, scope: !3213)
!3216 = !DILocation(line: 192, column: 46, scope: !3213)
!3217 = !DILocation(line: 192, column: 17, scope: !3213)
!3218 = distinct !{!3218, !3208, !3219}
!3219 = !DILocation(line: 193, column: 3, scope: !3200)
!3220 = !DILocation(line: 194, column: 3, scope: !3200)
!3221 = distinct !DISubprogram(name: "_ntoa_long_long", scope: !148, file: !148, line: 306, type: !3222, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!151, !153, !66, !151, !151, !140, !188, !140, !24, !24, !24}
!3224 = !{!3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237}
!3225 = !DILocalVariable(name: "out", arg: 1, scope: !3221, file: !148, line: 306, type: !153)
!3226 = !DILocalVariable(name: "buffer", arg: 2, scope: !3221, file: !148, line: 306, type: !66)
!3227 = !DILocalVariable(name: "idx", arg: 3, scope: !3221, file: !148, line: 306, type: !151)
!3228 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3221, file: !148, line: 306, type: !151)
!3229 = !DILocalVariable(name: "value", arg: 5, scope: !3221, file: !148, line: 306, type: !140)
!3230 = !DILocalVariable(name: "negative", arg: 6, scope: !3221, file: !148, line: 306, type: !188)
!3231 = !DILocalVariable(name: "base", arg: 7, scope: !3221, file: !148, line: 306, type: !140)
!3232 = !DILocalVariable(name: "prec", arg: 8, scope: !3221, file: !148, line: 306, type: !24)
!3233 = !DILocalVariable(name: "width", arg: 9, scope: !3221, file: !148, line: 306, type: !24)
!3234 = !DILocalVariable(name: "flags", arg: 10, scope: !3221, file: !148, line: 306, type: !24)
!3235 = !DILocalVariable(name: "buf", scope: !3221, file: !148, line: 308, type: !182)
!3236 = !DILocalVariable(name: "len", scope: !3221, file: !148, line: 309, type: !151)
!3237 = !DILocalVariable(name: "digit", scope: !3238, file: !148, line: 319, type: !2663)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !148, line: 318, column: 8)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !148, line: 317, column: 44)
!3240 = distinct !DILexicalBlock(scope: !3221, file: !148, line: 317, column: 7)
!3241 = !DILocation(line: 0, scope: !3221)
!3242 = !DILocation(line: 308, column: 3, scope: !3221)
!3243 = !DILocation(line: 308, column: 8, scope: !3221)
!3244 = !DILocation(line: 312, column: 8, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3221, file: !148, line: 312, column: 7)
!3246 = !DILocation(line: 312, column: 7, scope: !3221)
!3247 = !DILocation(line: 313, column: 11, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !148, line: 312, column: 15)
!3249 = !DILocation(line: 314, column: 3, scope: !3248)
!3250 = !DILocation(line: 317, column: 15, scope: !3240)
!3251 = !DILocation(line: 317, column: 34, scope: !3240)
!3252 = !DILocation(line: 317, column: 37, scope: !3240)
!3253 = !DILocation(line: 317, column: 7, scope: !3221)
!3254 = !DILocation(line: 318, column: 5, scope: !3239)
!3255 = !DILocation(line: 319, column: 39, scope: !3238)
!3256 = !DILocation(line: 319, column: 26, scope: !3238)
!3257 = !DILocation(line: 0, scope: !3238)
!3258 = !DILocation(line: 320, column: 20, scope: !3238)
!3259 = !DILocation(line: 320, column: 26, scope: !3238)
!3260 = !DILocation(line: 320, column: 39, scope: !3238)
!3261 = !DILocation(line: 320, column: 37, scope: !3238)
!3262 = !DILocation(line: 320, column: 54, scope: !3238)
!3263 = !DILocation(line: 320, column: 48, scope: !3238)
!3264 = !DILocation(line: 320, column: 87, scope: !3238)
!3265 = !DILocation(line: 320, column: 85, scope: !3238)
!3266 = !DILocation(line: 320, column: 93, scope: !3238)
!3267 = !DILocation(line: 320, column: 14, scope: !3238)
!3268 = !DILocation(line: 320, column: 7, scope: !3238)
!3269 = !DILocation(line: 320, column: 18, scope: !3238)
!3270 = !DILocation(line: 321, column: 13, scope: !3238)
!3271 = !DILocation(line: 322, column: 5, scope: !3238)
!3272 = !DILocation(line: 322, column: 14, scope: !3239)
!3273 = !DILocation(line: 322, column: 20, scope: !3239)
!3274 = !DILocation(line: 322, column: 28, scope: !3239)
!3275 = !DILocation(line: 0, scope: !3239)
!3276 = distinct !{!3276, !3254, !3277}
!3277 = !DILocation(line: 322, column: 54, scope: !3239)
!3278 = !DILocation(line: 323, column: 3, scope: !3239)
!3279 = !DILocation(line: 325, column: 49, scope: !3221)
!3280 = !DILocation(line: 325, column: 59, scope: !3221)
!3281 = !DILocation(line: 325, column: 69, scope: !3221)
!3282 = !DILocation(line: 325, column: 10, scope: !3221)
!3283 = !DILocation(line: 326, column: 1, scope: !3221)
!3284 = !DILocation(line: 325, column: 3, scope: !3221)
!3285 = distinct !DISubprogram(name: "_ntoa_long", scope: !148, file: !148, line: 281, type: !3286, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!151, !153, !66, !151, !151, !70, !188, !70, !24, !24, !24}
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3289 = !DILocalVariable(name: "out", arg: 1, scope: !3285, file: !148, line: 281, type: !153)
!3290 = !DILocalVariable(name: "buffer", arg: 2, scope: !3285, file: !148, line: 281, type: !66)
!3291 = !DILocalVariable(name: "idx", arg: 3, scope: !3285, file: !148, line: 281, type: !151)
!3292 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3285, file: !148, line: 281, type: !151)
!3293 = !DILocalVariable(name: "value", arg: 5, scope: !3285, file: !148, line: 281, type: !70)
!3294 = !DILocalVariable(name: "negative", arg: 6, scope: !3285, file: !148, line: 281, type: !188)
!3295 = !DILocalVariable(name: "base", arg: 7, scope: !3285, file: !148, line: 281, type: !70)
!3296 = !DILocalVariable(name: "prec", arg: 8, scope: !3285, file: !148, line: 281, type: !24)
!3297 = !DILocalVariable(name: "width", arg: 9, scope: !3285, file: !148, line: 281, type: !24)
!3298 = !DILocalVariable(name: "flags", arg: 10, scope: !3285, file: !148, line: 281, type: !24)
!3299 = !DILocalVariable(name: "buf", scope: !3285, file: !148, line: 283, type: !182)
!3300 = !DILocalVariable(name: "len", scope: !3285, file: !148, line: 284, type: !151)
!3301 = !DILocalVariable(name: "digit", scope: !3302, file: !148, line: 294, type: !2663)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !148, line: 293, column: 8)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !148, line: 292, column: 44)
!3304 = distinct !DILexicalBlock(scope: !3285, file: !148, line: 292, column: 7)
!3305 = !DILocation(line: 0, scope: !3285)
!3306 = !DILocation(line: 283, column: 3, scope: !3285)
!3307 = !DILocation(line: 283, column: 8, scope: !3285)
!3308 = !DILocation(line: 287, column: 8, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3285, file: !148, line: 287, column: 7)
!3310 = !DILocation(line: 287, column: 7, scope: !3285)
!3311 = !DILocation(line: 288, column: 11, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3309, file: !148, line: 287, column: 15)
!3313 = !DILocation(line: 289, column: 3, scope: !3312)
!3314 = !DILocation(line: 292, column: 15, scope: !3304)
!3315 = !DILocation(line: 292, column: 34, scope: !3304)
!3316 = !DILocation(line: 292, column: 37, scope: !3304)
!3317 = !DILocation(line: 292, column: 7, scope: !3285)
!3318 = !DILocation(line: 293, column: 5, scope: !3303)
!3319 = !DILocation(line: 294, column: 39, scope: !3302)
!3320 = !DILocation(line: 294, column: 26, scope: !3302)
!3321 = !DILocation(line: 0, scope: !3302)
!3322 = !DILocation(line: 295, column: 20, scope: !3302)
!3323 = !DILocation(line: 295, column: 26, scope: !3302)
!3324 = !DILocation(line: 295, column: 39, scope: !3302)
!3325 = !DILocation(line: 295, column: 37, scope: !3302)
!3326 = !DILocation(line: 295, column: 54, scope: !3302)
!3327 = !DILocation(line: 295, column: 48, scope: !3302)
!3328 = !DILocation(line: 295, column: 87, scope: !3302)
!3329 = !DILocation(line: 295, column: 85, scope: !3302)
!3330 = !DILocation(line: 295, column: 93, scope: !3302)
!3331 = !DILocation(line: 295, column: 14, scope: !3302)
!3332 = !DILocation(line: 295, column: 7, scope: !3302)
!3333 = !DILocation(line: 295, column: 18, scope: !3302)
!3334 = !DILocation(line: 296, column: 13, scope: !3302)
!3335 = !DILocation(line: 297, column: 5, scope: !3302)
!3336 = !DILocation(line: 297, column: 14, scope: !3303)
!3337 = !DILocation(line: 297, column: 20, scope: !3303)
!3338 = !DILocation(line: 297, column: 28, scope: !3303)
!3339 = !DILocation(line: 0, scope: !3303)
!3340 = distinct !{!3340, !3318, !3341}
!3341 = !DILocation(line: 297, column: 54, scope: !3303)
!3342 = !DILocation(line: 298, column: 3, scope: !3303)
!3343 = !DILocation(line: 300, column: 49, scope: !3285)
!3344 = !DILocation(line: 300, column: 59, scope: !3285)
!3345 = !DILocation(line: 300, column: 10, scope: !3285)
!3346 = !DILocation(line: 301, column: 1, scope: !3285)
!3347 = !DILocation(line: 300, column: 3, scope: !3285)
!3348 = !DILocation(line: 0, scope: !147)
!3349 = !DILocation(line: 341, column: 3, scope: !147)
!3350 = !DILocation(line: 341, column: 8, scope: !147)
!3351 = !DILocation(line: 349, column: 13, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !147, file: !148, line: 349, column: 7)
!3353 = !DILocation(line: 349, column: 7, scope: !147)
!3354 = !DILocation(line: 350, column: 12, scope: !3352)
!3355 = !DILocation(line: 350, column: 5, scope: !3352)
!3356 = !DILocation(line: 351, column: 13, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !147, file: !148, line: 351, column: 7)
!3358 = !DILocation(line: 351, column: 7, scope: !147)
!3359 = !DILocation(line: 352, column: 12, scope: !3357)
!3360 = !DILocation(line: 352, column: 5, scope: !3357)
!3361 = !DILocation(line: 353, column: 13, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !147, file: !148, line: 353, column: 7)
!3363 = !DILocation(line: 353, column: 7, scope: !147)
!3364 = !DILocation(line: 354, column: 54, scope: !3362)
!3365 = !DILocation(line: 354, column: 47, scope: !3362)
!3366 = !DILocation(line: 354, column: 93, scope: !3362)
!3367 = !DILocation(line: 354, column: 86, scope: !3362)
!3368 = !DILocation(line: 354, column: 12, scope: !3362)
!3369 = !DILocation(line: 354, column: 5, scope: !3362)
!3370 = !DILocation(line: 358, column: 14, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !147, file: !148, line: 358, column: 7)
!3372 = !DILocation(line: 358, column: 34, scope: !3371)
!3373 = !DILocation(line: 358, column: 44, scope: !3371)
!3374 = !DILocation(line: 358, column: 7, scope: !147)
!3375 = !DILocation(line: 360, column: 12, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3371, file: !148, line: 358, column: 66)
!3377 = !DILocation(line: 360, column: 5, scope: !3376)
!3378 = !DILocation(line: 368, column: 13, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !147, file: !148, line: 368, column: 7)
!3380 = !DILocation(line: 368, column: 7, scope: !147)
!3381 = !DILocation(line: 370, column: 15, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3379, file: !148, line: 368, column: 18)
!3383 = !DILocation(line: 371, column: 3, scope: !3382)
!3384 = !DILocation(line: 374, column: 15, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !147, file: !148, line: 374, column: 7)
!3386 = !DILocation(line: 374, column: 7, scope: !147)
!3387 = !DILocation(line: 376, column: 3, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3385, file: !148, line: 374, column: 35)
!3389 = !DILocation(line: 378, column: 3, scope: !147)
!3390 = !DILocation(line: 378, column: 15, scope: !147)
!3391 = !DILocation(line: 378, column: 42, scope: !147)
!3392 = !DILocation(line: 378, column: 51, scope: !147)
!3393 = !DILocation(line: 379, column: 12, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !147, file: !148, line: 378, column: 58)
!3395 = !DILocation(line: 379, column: 5, scope: !3394)
!3396 = !DILocation(line: 379, column: 16, scope: !3394)
!3397 = !DILocation(line: 380, column: 9, scope: !3394)
!3398 = distinct !{!3398, !3389, !3399}
!3399 = !DILocation(line: 381, column: 3, scope: !147)
!3400 = !DILocation(line: 383, column: 15, scope: !147)
!3401 = !DILocation(line: 384, column: 25, scope: !147)
!3402 = !DILocation(line: 384, column: 23, scope: !147)
!3403 = !DILocation(line: 384, column: 34, scope: !147)
!3404 = !{!3405, !3405, i64 0}
!3405 = !{!"double", !296, i64 0}
!3406 = !DILocation(line: 384, column: 32, scope: !147)
!3407 = !DILocation(line: 385, column: 24, scope: !147)
!3408 = !DILocation(line: 386, column: 16, scope: !147)
!3409 = !DILocation(line: 386, column: 14, scope: !147)
!3410 = !DILocation(line: 388, column: 12, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !147, file: !148, line: 388, column: 7)
!3412 = !DILocation(line: 388, column: 7, scope: !147)
!3413 = !DILocation(line: 389, column: 5, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3411, file: !148, line: 388, column: 19)
!3415 = !DILocation(line: 391, column: 9, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3414, file: !148, line: 391, column: 9)
!3417 = !DILocation(line: 391, column: 17, scope: !3416)
!3418 = !DILocation(line: 391, column: 14, scope: !3416)
!3419 = !DILocation(line: 391, column: 9, scope: !3414)
!3420 = !DILocation(line: 393, column: 7, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3416, file: !148, line: 391, column: 30)
!3422 = !DILocation(line: 394, column: 5, scope: !3421)
!3423 = !DILocation(line: 0, scope: !3414)
!3424 = !DILocation(line: 395, column: 3, scope: !3414)
!3425 = !DILocation(line: 396, column: 17, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3411, file: !148, line: 396, column: 12)
!3427 = !DILocation(line: 396, column: 12, scope: !3411)
!3428 = !DILocation(line: 397, column: 3, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !148, line: 396, column: 24)
!3430 = !DILocation(line: 398, column: 18, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3426, file: !148, line: 398, column: 12)
!3432 = !DILocation(line: 398, column: 25, scope: !3431)
!3433 = !DILocation(line: 398, column: 34, scope: !3431)
!3434 = !DILocation(line: 398, column: 12, scope: !3426)
!3435 = !DILocation(line: 400, column: 5, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3431, file: !148, line: 398, column: 41)
!3437 = !DILocation(line: 401, column: 3, scope: !3436)
!3438 = !DILocation(line: 403, column: 12, scope: !194)
!3439 = !DILocation(line: 403, column: 7, scope: !147)
!3440 = !DILocation(line: 404, column: 20, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !194, file: !148, line: 403, column: 19)
!3442 = !DILocation(line: 404, column: 18, scope: !3441)
!3443 = !DILocation(line: 405, column: 17, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3441, file: !148, line: 405, column: 9)
!3445 = !DILocation(line: 405, column: 24, scope: !3444)
!3446 = !DILocation(line: 405, column: 33, scope: !3444)
!3447 = !DILocation(line: 405, column: 41, scope: !3444)
!3448 = !DILocation(line: 405, column: 51, scope: !3444)
!3449 = !DILocation(line: 405, column: 9, scope: !3441)
!3450 = !DILocation(line: 408, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3444, file: !148, line: 405, column: 57)
!3452 = !DILocation(line: 409, column: 5, scope: !3451)
!3453 = !DILocation(line: 410, column: 3, scope: !3441)
!3454 = !DILocation(line: 0, scope: !193)
!3455 = !DILocation(line: 414, column: 5, scope: !193)
!3456 = !DILocation(line: 414, column: 16, scope: !193)
!3457 = !DILocation(line: 415, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !193, file: !148, line: 414, column: 43)
!3459 = !DILocation(line: 416, column: 39, scope: !3458)
!3460 = !DILocation(line: 416, column: 31, scope: !3458)
!3461 = !DILocation(line: 416, column: 20, scope: !3458)
!3462 = !DILocation(line: 416, column: 14, scope: !3458)
!3463 = !DILocation(line: 416, column: 7, scope: !3458)
!3464 = !DILocation(line: 416, column: 18, scope: !3458)
!3465 = !DILocation(line: 417, column: 18, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3458, file: !148, line: 417, column: 11)
!3467 = !DILocation(line: 417, column: 11, scope: !3458)
!3468 = !DILocation(line: 418, column: 9, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3466, file: !148, line: 417, column: 27)
!3470 = distinct !{!3470, !3455, !3471}
!3471 = !DILocation(line: 420, column: 5, scope: !193)
!3472 = !DILocation(line: 422, column: 5, scope: !193)
!3473 = !DILocation(line: 422, column: 17, scope: !193)
!3474 = !DILocation(line: 422, column: 44, scope: !193)
!3475 = !DILocation(line: 422, column: 53, scope: !193)
!3476 = !DILocation(line: 422, column: 56, scope: !193)
!3477 = !DILocation(line: 423, column: 14, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !193, file: !148, line: 422, column: 63)
!3479 = !DILocation(line: 423, column: 7, scope: !3478)
!3480 = !DILocation(line: 423, column: 18, scope: !3478)
!3481 = distinct !{!3481, !3472, !3482}
!3482 = !DILocation(line: 424, column: 5, scope: !193)
!3483 = !DILocation(line: 425, column: 13, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !193, file: !148, line: 425, column: 9)
!3485 = !DILocation(line: 425, column: 9, scope: !193)
!3486 = !DILocation(line: 427, column: 14, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !148, line: 425, column: 40)
!3488 = !DILocation(line: 427, column: 7, scope: !3487)
!3489 = !DILocation(line: 427, column: 18, scope: !3487)
!3490 = !DILocation(line: 428, column: 5, scope: !3487)
!3491 = !DILocation(line: 432, column: 3, scope: !147)
!3492 = !DILocation(line: 432, column: 14, scope: !147)
!3493 = !DILocation(line: 433, column: 37, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !147, file: !148, line: 432, column: 41)
!3495 = !DILocation(line: 433, column: 28, scope: !3494)
!3496 = !DILocation(line: 433, column: 18, scope: !3494)
!3497 = !DILocation(line: 433, column: 12, scope: !3494)
!3498 = !DILocation(line: 433, column: 5, scope: !3494)
!3499 = !DILocation(line: 433, column: 16, scope: !3494)
!3500 = !DILocation(line: 434, column: 17, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3494, file: !148, line: 434, column: 9)
!3502 = !DILocation(line: 434, column: 9, scope: !3494)
!3503 = !DILocation(line: 435, column: 7, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3501, file: !148, line: 434, column: 25)
!3505 = distinct !{!3505, !3491, !3506}
!3506 = !DILocation(line: 437, column: 3, scope: !147)
!3507 = !DILocation(line: 440, column: 15, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !147, file: !148, line: 440, column: 7)
!3509 = !DILocation(line: 440, column: 29, scope: !3508)
!3510 = !DILocation(line: 440, column: 39, scope: !3508)
!3511 = !DILocation(line: 440, column: 7, scope: !147)
!3512 = !DILocation(line: 441, column: 9, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !148, line: 441, column: 9)
!3514 = distinct !DILexicalBlock(scope: !3508, file: !148, line: 440, column: 57)
!3515 = !DILocation(line: 441, column: 15, scope: !3513)
!3516 = !DILocation(line: 441, column: 19, scope: !3513)
!3517 = !DILocation(line: 441, column: 28, scope: !3513)
!3518 = !DILocation(line: 441, column: 38, scope: !3513)
!3519 = !DILocation(line: 441, column: 9, scope: !3514)
!3520 = !DILocation(line: 442, column: 12, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3513, file: !148, line: 441, column: 70)
!3522 = !DILocation(line: 443, column: 5, scope: !3521)
!3523 = !DILocation(line: 444, column: 5, scope: !3514)
!3524 = !DILocation(line: 444, column: 17, scope: !3514)
!3525 = !DILocation(line: 444, column: 26, scope: !3514)
!3526 = !DILocation(line: 444, column: 34, scope: !3514)
!3527 = !DILocation(line: 0, scope: !3514)
!3528 = !DILocation(line: 445, column: 14, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3514, file: !148, line: 444, column: 62)
!3530 = !DILocation(line: 445, column: 7, scope: !3529)
!3531 = !DILocation(line: 445, column: 18, scope: !3529)
!3532 = distinct !{!3532, !3523, !3533}
!3533 = !DILocation(line: 446, column: 5, scope: !3514)
!3534 = !DILocation(line: 447, column: 3, scope: !3514)
!3535 = !DILocation(line: 449, column: 11, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !147, file: !148, line: 449, column: 7)
!3537 = !DILocation(line: 449, column: 7, scope: !147)
!3538 = !DILocation(line: 450, column: 9, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !148, line: 450, column: 9)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !148, line: 449, column: 38)
!3541 = !DILocation(line: 450, column: 9, scope: !3540)
!3542 = !DILocation(line: 451, column: 14, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3539, file: !148, line: 450, column: 19)
!3544 = !DILocation(line: 451, column: 7, scope: !3543)
!3545 = !DILocation(line: 451, column: 18, scope: !3543)
!3546 = !DILocation(line: 452, column: 5, scope: !3543)
!3547 = !DILocation(line: 453, column: 20, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3539, file: !148, line: 453, column: 14)
!3549 = !DILocation(line: 453, column: 14, scope: !3539)
!3550 = !DILocation(line: 454, column: 14, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3548, file: !148, line: 453, column: 34)
!3552 = !DILocation(line: 454, column: 7, scope: !3551)
!3553 = !DILocation(line: 454, column: 18, scope: !3551)
!3554 = !DILocation(line: 455, column: 5, scope: !3551)
!3555 = !DILocation(line: 456, column: 20, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3548, file: !148, line: 456, column: 14)
!3557 = !DILocation(line: 456, column: 14, scope: !3548)
!3558 = !DILocation(line: 457, column: 14, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !148, line: 456, column: 35)
!3560 = !DILocation(line: 457, column: 7, scope: !3559)
!3561 = !DILocation(line: 457, column: 18, scope: !3559)
!3562 = !DILocation(line: 458, column: 5, scope: !3559)
!3563 = !DILocation(line: 0, scope: !3548)
!3564 = !DILocation(line: 0, scope: !3539)
!3565 = !DILocation(line: 459, column: 3, scope: !3540)
!3566 = !DILocation(line: 461, column: 45, scope: !147)
!3567 = !DILocation(line: 461, column: 10, scope: !147)
!3568 = !DILocation(line: 462, column: 1, scope: !147)
!3569 = distinct !DISubprogram(name: "_etoa", scope: !148, file: !148, line: 467, type: !149, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3585, !3586, !3587, !3588, !3589, !3590, !3591}
!3571 = !DILocalVariable(name: "out", arg: 1, scope: !3569, file: !148, line: 467, type: !153)
!3572 = !DILocalVariable(name: "buffer", arg: 2, scope: !3569, file: !148, line: 467, type: !66)
!3573 = !DILocalVariable(name: "idx", arg: 3, scope: !3569, file: !148, line: 467, type: !151)
!3574 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3569, file: !148, line: 467, type: !151)
!3575 = !DILocalVariable(name: "value", arg: 5, scope: !3569, file: !148, line: 467, type: !69)
!3576 = !DILocalVariable(name: "prec", arg: 6, scope: !3569, file: !148, line: 467, type: !24)
!3577 = !DILocalVariable(name: "width", arg: 7, scope: !3569, file: !148, line: 467, type: !24)
!3578 = !DILocalVariable(name: "flags", arg: 8, scope: !3569, file: !148, line: 467, type: !24)
!3579 = !DILocalVariable(name: "negative", scope: !3569, file: !148, line: 475, type: !2758)
!3580 = !DILocalVariable(name: "conv", scope: !3569, file: !148, line: 490, type: !3581)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3569, file: !148, line: 487, size: 64, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "U", scope: !3581, file: !148, line: 488, baseType: !138, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !3581, file: !148, line: 489, baseType: !69, size: 64)
!3585 = !DILocalVariable(name: "exp2", scope: !3569, file: !148, line: 493, type: !43)
!3586 = !DILocalVariable(name: "expval", scope: !3569, file: !148, line: 496, type: !43)
!3587 = !DILocalVariable(name: "z", scope: !3569, file: !148, line: 499, type: !196)
!3588 = !DILocalVariable(name: "z2", scope: !3569, file: !148, line: 500, type: !196)
!3589 = !DILocalVariable(name: "minwidth", scope: !3569, file: !148, line: 511, type: !24)
!3590 = !DILocalVariable(name: "fwidth", scope: !3569, file: !148, line: 537, type: !24)
!3591 = !DILocalVariable(name: "start_idx", scope: !3569, file: !148, line: 556, type: !2705)
!3592 = !DILocation(line: 0, scope: !3569)
!3593 = !DILocation(line: 470, column: 14, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 470, column: 7)
!3595 = !DILocation(line: 470, column: 24, scope: !3594)
!3596 = !DILocation(line: 470, column: 34, scope: !3594)
!3597 = !DILocation(line: 470, column: 45, scope: !3594)
!3598 = !DILocation(line: 470, column: 55, scope: !3594)
!3599 = !DILocation(line: 470, column: 7, scope: !3569)
!3600 = !DILocation(line: 471, column: 12, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3594, file: !148, line: 470, column: 68)
!3602 = !DILocation(line: 471, column: 5, scope: !3601)
!3603 = !DILocation(line: 475, column: 31, scope: !3569)
!3604 = !DILocation(line: 475, column: 14, scope: !3569)
!3605 = !DILocation(line: 476, column: 7, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 476, column: 7)
!3607 = !DILocation(line: 476, column: 7, scope: !3569)
!3608 = !DILocation(line: 477, column: 13, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !148, line: 476, column: 17)
!3610 = !DILocation(line: 478, column: 3, scope: !3609)
!3611 = !DILocation(line: 481, column: 15, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 481, column: 7)
!3613 = !DILocation(line: 481, column: 7, scope: !3569)
!3614 = !DILocation(line: 483, column: 3, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3612, file: !148, line: 481, column: 35)
!3616 = !DILocation(line: 487, column: 3, scope: !3569)
!3617 = !DILocation(line: 490, column: 5, scope: !3569)
!3618 = !DILocation(line: 492, column: 8, scope: !3569)
!3619 = !DILocation(line: 492, column: 10, scope: !3569)
!3620 = !DILocation(line: 493, column: 26, scope: !3569)
!3621 = !DILocation(line: 493, column: 28, scope: !3569)
!3622 = !DILocation(line: 493, column: 36, scope: !3569)
!3623 = !DILocation(line: 493, column: 14, scope: !3569)
!3624 = !DILocation(line: 493, column: 47, scope: !3569)
!3625 = !DILocation(line: 494, column: 18, scope: !3569)
!3626 = !DILocation(line: 494, column: 20, scope: !3569)
!3627 = !DILocation(line: 494, column: 44, scope: !3569)
!3628 = !DILocation(line: 494, column: 8, scope: !3569)
!3629 = !DILocation(line: 494, column: 10, scope: !3569)
!3630 = !DILocation(line: 496, column: 40, scope: !3569)
!3631 = !DILocation(line: 496, column: 45, scope: !3569)
!3632 = !DILocation(line: 496, column: 38, scope: !3569)
!3633 = !DILocation(line: 496, column: 73, scope: !3569)
!3634 = !DILocation(line: 496, column: 75, scope: !3569)
!3635 = !DILocation(line: 496, column: 82, scope: !3569)
!3636 = !DILocation(line: 496, column: 65, scope: !3569)
!3637 = !DILocation(line: 496, column: 16, scope: !3569)
!3638 = !DILocation(line: 498, column: 16, scope: !3569)
!3639 = !DILocation(line: 498, column: 23, scope: !3569)
!3640 = !DILocation(line: 498, column: 43, scope: !3569)
!3641 = !DILocation(line: 498, column: 10, scope: !3569)
!3642 = !DILocation(line: 499, column: 21, scope: !3569)
!3643 = !DILocation(line: 499, column: 28, scope: !3569)
!3644 = !DILocation(line: 499, column: 50, scope: !3569)
!3645 = !DILocation(line: 499, column: 55, scope: !3569)
!3646 = !DILocation(line: 499, column: 48, scope: !3569)
!3647 = !DILocation(line: 500, column: 23, scope: !3569)
!3648 = !DILocation(line: 501, column: 28, scope: !3569)
!3649 = !DILocation(line: 501, column: 12, scope: !3569)
!3650 = !DILocation(line: 501, column: 36, scope: !3569)
!3651 = !DILocation(line: 501, column: 8, scope: !3569)
!3652 = !DILocation(line: 501, column: 10, scope: !3569)
!3653 = !DILocation(line: 503, column: 19, scope: !3569)
!3654 = !DILocation(line: 503, column: 28, scope: !3569)
!3655 = !DILocation(line: 503, column: 60, scope: !3569)
!3656 = !DILocation(line: 503, column: 55, scope: !3569)
!3657 = !DILocation(line: 503, column: 49, scope: !3569)
!3658 = !DILocation(line: 503, column: 43, scope: !3569)
!3659 = !DILocation(line: 503, column: 38, scope: !3569)
!3660 = !DILocation(line: 503, column: 32, scope: !3569)
!3661 = !DILocation(line: 503, column: 23, scope: !3569)
!3662 = !DILocation(line: 503, column: 15, scope: !3569)
!3663 = !DILocation(line: 503, column: 8, scope: !3569)
!3664 = !DILocation(line: 503, column: 10, scope: !3569)
!3665 = !DILocation(line: 505, column: 20, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 505, column: 7)
!3667 = !DILocation(line: 505, column: 13, scope: !3666)
!3668 = !DILocation(line: 505, column: 7, scope: !3569)
!3669 = !DILocation(line: 506, column: 11, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3666, file: !148, line: 505, column: 23)
!3671 = !DILocation(line: 507, column: 10, scope: !3670)
!3672 = !DILocation(line: 507, column: 12, scope: !3670)
!3673 = !DILocation(line: 508, column: 3, scope: !3670)
!3674 = !DILocation(line: 511, column: 36, scope: !3569)
!3675 = !DILocation(line: 511, column: 43, scope: !3569)
!3676 = !DILocation(line: 511, column: 54, scope: !3569)
!3677 = !DILocation(line: 511, column: 27, scope: !3569)
!3678 = !DILocation(line: 514, column: 13, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 514, column: 7)
!3680 = !DILocation(line: 514, column: 7, scope: !3569)
!3681 = !DILocation(line: 516, column: 16, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !148, line: 516, column: 9)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !148, line: 514, column: 32)
!3684 = !DILocation(line: 516, column: 25, scope: !3682)
!3685 = !DILocation(line: 516, column: 35, scope: !3682)
!3686 = !DILocation(line: 516, column: 9, scope: !3683)
!3687 = !DILocation(line: 517, column: 21, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !148, line: 517, column: 11)
!3689 = distinct !DILexicalBlock(scope: !3682, file: !148, line: 516, column: 43)
!3690 = !DILocation(line: 517, column: 11, scope: !3689)
!3691 = !DILocation(line: 518, column: 37, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3688, file: !148, line: 517, column: 31)
!3693 = !DILocation(line: 518, column: 46, scope: !3692)
!3694 = !DILocation(line: 519, column: 7, scope: !3692)
!3695 = !DILocation(line: 0, scope: !3688)
!3696 = !DILocation(line: 523, column: 13, scope: !3689)
!3697 = !DILocation(line: 527, column: 5, scope: !3689)
!3698 = !DILocation(line: 530, column: 17, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !148, line: 530, column: 11)
!3700 = distinct !DILexicalBlock(scope: !3682, file: !148, line: 528, column: 10)
!3701 = !DILocation(line: 530, column: 22, scope: !3699)
!3702 = !DILocation(line: 530, column: 32, scope: !3699)
!3703 = !DILocation(line: 530, column: 11, scope: !3700)
!3704 = !DILocation(line: 531, column: 9, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3699, file: !148, line: 530, column: 52)
!3706 = !DILocation(line: 532, column: 7, scope: !3705)
!3707 = !DILocation(line: 0, scope: !3682)
!3708 = !DILocation(line: 534, column: 3, scope: !3683)
!3709 = !DILocation(line: 538, column: 13, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 538, column: 7)
!3711 = !DILocation(line: 538, column: 7, scope: !3569)
!3712 = !DILocation(line: 540, column: 12, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !148, line: 538, column: 25)
!3714 = !DILocation(line: 541, column: 3, scope: !3713)
!3715 = !DILocation(line: 0, scope: !3710)
!3716 = !DILocation(line: 545, column: 14, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 545, column: 7)
!3718 = !DILocation(line: 545, column: 28, scope: !3717)
!3719 = !DILocation(line: 545, column: 31, scope: !3717)
!3720 = !DILocation(line: 545, column: 7, scope: !3569)
!3721 = !DILocation(line: 548, column: 3, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3717, file: !148, line: 545, column: 41)
!3723 = !DILocation(line: 551, column: 7, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 551, column: 7)
!3725 = !DILocation(line: 551, column: 7, scope: !3569)
!3726 = !DILocation(line: 552, column: 19, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !148, line: 551, column: 15)
!3728 = !DILocation(line: 552, column: 11, scope: !3727)
!3729 = !DILocation(line: 553, column: 3, scope: !3727)
!3730 = !DILocation(line: 557, column: 41, scope: !3569)
!3731 = !DILocation(line: 557, column: 52, scope: !3569)
!3732 = !DILocation(line: 557, column: 88, scope: !3569)
!3733 = !DILocation(line: 557, column: 9, scope: !3569)
!3734 = !DILocation(line: 560, column: 7, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3569, file: !148, line: 560, column: 7)
!3736 = !DILocation(line: 560, column: 7, scope: !3569)
!3737 = !DILocation(line: 562, column: 16, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !148, line: 560, column: 17)
!3739 = !DILocation(line: 562, column: 9, scope: !3738)
!3740 = !DILocation(line: 562, column: 59, scope: !3738)
!3741 = !DILocation(line: 562, column: 5, scope: !3738)
!3742 = !DILocation(line: 564, column: 56, scope: !3738)
!3743 = !DILocation(line: 564, column: 48, scope: !3738)
!3744 = !DILocation(line: 564, column: 63, scope: !3738)
!3745 = !DILocation(line: 564, column: 88, scope: !3738)
!3746 = !DILocation(line: 564, column: 108, scope: !3738)
!3747 = !DILocation(line: 564, column: 11, scope: !3738)
!3748 = !DILocation(line: 566, column: 15, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3738, file: !148, line: 566, column: 9)
!3750 = !DILocation(line: 566, column: 9, scope: !3738)
!3751 = !DILocation(line: 567, column: 7, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3749, file: !148, line: 566, column: 29)
!3753 = !DILocation(line: 0, scope: !3738)
!3754 = !DILocation(line: 567, column: 18, scope: !3752)
!3755 = !DILocation(line: 567, column: 30, scope: !3752)
!3756 = !DILocation(line: 567, column: 59, scope: !3752)
!3757 = !DILocation(line: 567, column: 39, scope: !3752)
!3758 = distinct !{!3758, !3751, !3759}
!3759 = !DILocation(line: 567, column: 69, scope: !3752)
!3760 = !DILocation(line: 568, column: 5, scope: !3752)
!3761 = !DILocation(line: 564, column: 9, scope: !3738)
!3762 = !DILocation(line: 569, column: 3, scope: !3738)
!3763 = !DILocation(line: 571, column: 1, scope: !3569)
!3764 = distinct !DISubprogram(name: "_strnlen_s", scope: !148, file: !148, line: 171, type: !3765, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!24, !2662, !151}
!3767 = !{!3768, !3769, !3770}
!3768 = !DILocalVariable(name: "str", arg: 1, scope: !3764, file: !148, line: 171, type: !2662)
!3769 = !DILocalVariable(name: "maxsize", arg: 2, scope: !3764, file: !148, line: 171, type: !151)
!3770 = !DILocalVariable(name: "s", scope: !3764, file: !148, line: 173, type: !2662)
!3771 = !DILocation(line: 0, scope: !3764)
!3772 = !DILocation(line: 174, column: 8, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3764, file: !148, line: 174, column: 3)
!3774 = !DILocation(line: 0, scope: !3773)
!3775 = !DILocation(line: 174, column: 17, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !148, line: 174, column: 3)
!3777 = !DILocation(line: 174, column: 20, scope: !3776)
!3778 = !DILocation(line: 174, column: 30, scope: !3776)
!3779 = !DILocation(line: 0, scope: !3776)
!3780 = !DILocation(line: 174, column: 3, scope: !3773)
!3781 = !DILocation(line: 174, column: 34, scope: !3776)
!3782 = !DILocation(line: 174, column: 3, scope: !3776)
!3783 = distinct !{!3783, !3780, !3784}
!3784 = !DILocation(line: 174, column: 38, scope: !3773)
!3785 = !DILocation(line: 175, column: 27, scope: !3764)
!3786 = !DILocation(line: 175, column: 3, scope: !3764)
!3787 = distinct !DISubprogram(name: "_out_rev", scope: !148, file: !148, line: 199, type: !3788, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!151, !153, !66, !151, !151, !2662, !151, !24, !24}
!3790 = !{!3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800}
!3791 = !DILocalVariable(name: "out", arg: 1, scope: !3787, file: !148, line: 199, type: !153)
!3792 = !DILocalVariable(name: "buffer", arg: 2, scope: !3787, file: !148, line: 199, type: !66)
!3793 = !DILocalVariable(name: "idx", arg: 3, scope: !3787, file: !148, line: 199, type: !151)
!3794 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3787, file: !148, line: 199, type: !151)
!3795 = !DILocalVariable(name: "buf", arg: 5, scope: !3787, file: !148, line: 199, type: !2662)
!3796 = !DILocalVariable(name: "len", arg: 6, scope: !3787, file: !148, line: 199, type: !151)
!3797 = !DILocalVariable(name: "width", arg: 7, scope: !3787, file: !148, line: 199, type: !24)
!3798 = !DILocalVariable(name: "flags", arg: 8, scope: !3787, file: !148, line: 199, type: !24)
!3799 = !DILocalVariable(name: "start_idx", scope: !3787, file: !148, line: 201, type: !2705)
!3800 = !DILocalVariable(name: "i", scope: !3801, file: !148, line: 205, type: !151)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !148, line: 205, column: 5)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !148, line: 204, column: 58)
!3803 = distinct !DILexicalBlock(scope: !3787, file: !148, line: 204, column: 7)
!3804 = !DILocation(line: 0, scope: !3787)
!3805 = !DILocation(line: 204, column: 15, scope: !3803)
!3806 = !DILocation(line: 204, column: 29, scope: !3803)
!3807 = !DILocation(line: 204, column: 40, scope: !3803)
!3808 = !DILocation(line: 204, column: 7, scope: !3787)
!3809 = !DILocation(line: 0, scope: !3801)
!3810 = !DILocation(line: 205, column: 10, scope: !3801)
!3811 = !DILocation(line: 205, column: 28, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3801, file: !148, line: 205, column: 5)
!3813 = !DILocation(line: 205, column: 5, scope: !3801)
!3814 = !DILocation(line: 206, column: 27, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !148, line: 205, column: 42)
!3816 = !DILocation(line: 206, column: 7, scope: !3815)
!3817 = !DILocation(line: 207, column: 5, scope: !3815)
!3818 = !DILocation(line: 205, column: 38, scope: !3812)
!3819 = !DILocation(line: 205, column: 5, scope: !3812)
!3820 = distinct !{!3820, !3813, !3821}
!3821 = !DILocation(line: 207, column: 5, scope: !3801)
!3822 = !DILocation(line: 208, column: 3, scope: !3802)
!3823 = !DILocation(line: 211, column: 3, scope: !3787)
!3824 = !DILocation(line: 212, column: 13, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3787, file: !148, line: 211, column: 15)
!3826 = !DILocation(line: 212, column: 9, scope: !3825)
!3827 = !DILocation(line: 212, column: 32, scope: !3825)
!3828 = !DILocation(line: 212, column: 5, scope: !3825)
!3829 = distinct !{!3829, !3823, !3830}
!3830 = !DILocation(line: 213, column: 3, scope: !3787)
!3831 = !DILocation(line: 216, column: 13, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3787, file: !148, line: 216, column: 7)
!3833 = !DILocation(line: 216, column: 7, scope: !3787)
!3834 = !DILocation(line: 217, column: 5, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3832, file: !148, line: 216, column: 27)
!3836 = !DILocation(line: 217, column: 16, scope: !3835)
!3837 = !DILocation(line: 217, column: 28, scope: !3835)
!3838 = !DILocation(line: 218, column: 27, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3835, file: !148, line: 217, column: 37)
!3840 = !DILocation(line: 218, column: 7, scope: !3839)
!3841 = distinct !{!3841, !3834, !3842}
!3842 = !DILocation(line: 219, column: 5, scope: !3835)
!3843 = !DILocation(line: 220, column: 3, scope: !3835)
!3844 = !DILocation(line: 222, column: 3, scope: !3787)
!3845 = distinct !DISubprogram(name: "_ntoa_format", scope: !148, file: !148, line: 227, type: !3846, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3848)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!151, !153, !66, !151, !151, !66, !151, !188, !24, !24, !24, !24}
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3849 = !DILocalVariable(name: "out", arg: 1, scope: !3845, file: !148, line: 227, type: !153)
!3850 = !DILocalVariable(name: "buffer", arg: 2, scope: !3845, file: !148, line: 227, type: !66)
!3851 = !DILocalVariable(name: "idx", arg: 3, scope: !3845, file: !148, line: 227, type: !151)
!3852 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3845, file: !148, line: 227, type: !151)
!3853 = !DILocalVariable(name: "buf", arg: 5, scope: !3845, file: !148, line: 227, type: !66)
!3854 = !DILocalVariable(name: "len", arg: 6, scope: !3845, file: !148, line: 227, type: !151)
!3855 = !DILocalVariable(name: "negative", arg: 7, scope: !3845, file: !148, line: 227, type: !188)
!3856 = !DILocalVariable(name: "base", arg: 8, scope: !3845, file: !148, line: 227, type: !24)
!3857 = !DILocalVariable(name: "prec", arg: 9, scope: !3845, file: !148, line: 227, type: !24)
!3858 = !DILocalVariable(name: "width", arg: 10, scope: !3845, file: !148, line: 227, type: !24)
!3859 = !DILocalVariable(name: "flags", arg: 11, scope: !3845, file: !148, line: 227, type: !24)
!3860 = !DILocation(line: 0, scope: !3845)
!3861 = !DILocation(line: 230, column: 15, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3845, file: !148, line: 230, column: 7)
!3863 = !DILocation(line: 230, column: 7, scope: !3845)
!3864 = !DILocation(line: 231, column: 9, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !148, line: 231, column: 9)
!3866 = distinct !DILexicalBlock(scope: !3862, file: !148, line: 230, column: 30)
!3867 = !DILocation(line: 231, column: 15, scope: !3865)
!3868 = !DILocation(line: 231, column: 25, scope: !3865)
!3869 = !DILocation(line: 231, column: 42, scope: !3865)
!3870 = !DILocation(line: 231, column: 46, scope: !3865)
!3871 = !DILocation(line: 231, column: 55, scope: !3865)
!3872 = !DILocation(line: 231, column: 65, scope: !3865)
!3873 = !DILocation(line: 231, column: 9, scope: !3866)
!3874 = !DILocation(line: 232, column: 12, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3865, file: !148, line: 231, column: 97)
!3876 = !DILocation(line: 233, column: 5, scope: !3875)
!3877 = !DILocation(line: 234, column: 5, scope: !3866)
!3878 = !DILocation(line: 234, column: 17, scope: !3866)
!3879 = !DILocation(line: 234, column: 25, scope: !3866)
!3880 = !DILocation(line: 234, column: 33, scope: !3866)
!3881 = !DILocation(line: 0, scope: !3866)
!3882 = !DILocation(line: 235, column: 14, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3866, file: !148, line: 234, column: 61)
!3884 = !DILocation(line: 235, column: 7, scope: !3883)
!3885 = !DILocation(line: 235, column: 18, scope: !3883)
!3886 = distinct !{!3886, !3877, !3887}
!3887 = !DILocation(line: 236, column: 5, scope: !3866)
!3888 = !DILocation(line: 237, column: 5, scope: !3866)
!3889 = !DILocation(line: 237, column: 19, scope: !3866)
!3890 = !DILocation(line: 237, column: 36, scope: !3866)
!3891 = !DILocation(line: 237, column: 44, scope: !3866)
!3892 = !DILocation(line: 237, column: 53, scope: !3866)
!3893 = !DILocation(line: 237, column: 61, scope: !3866)
!3894 = !DILocation(line: 238, column: 14, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3866, file: !148, line: 237, column: 89)
!3896 = !DILocation(line: 238, column: 7, scope: !3895)
!3897 = !DILocation(line: 238, column: 18, scope: !3895)
!3898 = distinct !{!3898, !3888, !3899}
!3899 = !DILocation(line: 239, column: 5, scope: !3866)
!3900 = !DILocation(line: 240, column: 3, scope: !3866)
!3901 = !DILocation(line: 243, column: 13, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3845, file: !148, line: 243, column: 7)
!3903 = !DILocation(line: 243, column: 7, scope: !3845)
!3904 = !DILocation(line: 244, column: 17, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !148, line: 244, column: 9)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !148, line: 243, column: 27)
!3907 = !DILocation(line: 244, column: 36, scope: !3905)
!3908 = !DILocation(line: 244, column: 39, scope: !3905)
!3909 = !DILocation(line: 244, column: 43, scope: !3905)
!3910 = !DILocation(line: 244, column: 52, scope: !3905)
!3911 = !DILocation(line: 244, column: 61, scope: !3905)
!3912 = !DILocation(line: 244, column: 69, scope: !3905)
!3913 = !DILocation(line: 244, column: 9, scope: !3906)
!3914 = !DILocation(line: 245, column: 10, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3905, file: !148, line: 244, column: 81)
!3916 = !DILocation(line: 246, column: 11, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3915, file: !148, line: 246, column: 11)
!3918 = !DILocation(line: 246, column: 15, scope: !3917)
!3919 = !DILocation(line: 246, column: 24, scope: !3917)
!3920 = !DILocation(line: 246, column: 11, scope: !3915)
!3921 = !DILocation(line: 247, column: 12, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3917, file: !148, line: 246, column: 33)
!3923 = !DILocation(line: 248, column: 7, scope: !3922)
!3924 = !DILocation(line: 0, scope: !3915)
!3925 = !DILocation(line: 249, column: 5, scope: !3915)
!3926 = !DILocation(line: 250, column: 15, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3906, file: !148, line: 250, column: 9)
!3928 = !DILocation(line: 250, column: 23, scope: !3927)
!3929 = !DILocation(line: 250, column: 34, scope: !3927)
!3930 = !DILocation(line: 250, column: 53, scope: !3927)
!3931 = !DILocation(line: 250, column: 61, scope: !3927)
!3932 = !DILocation(line: 250, column: 9, scope: !3906)
!3933 = !DILocation(line: 251, column: 14, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3927, file: !148, line: 250, column: 89)
!3935 = !DILocation(line: 251, column: 7, scope: !3934)
!3936 = !DILocation(line: 251, column: 18, scope: !3934)
!3937 = !DILocation(line: 252, column: 5, scope: !3934)
!3938 = !DILocation(line: 253, column: 20, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3927, file: !148, line: 253, column: 14)
!3940 = !DILocation(line: 253, column: 28, scope: !3939)
!3941 = !DILocation(line: 253, column: 38, scope: !3939)
!3942 = !DILocation(line: 253, column: 57, scope: !3939)
!3943 = !DILocation(line: 253, column: 65, scope: !3939)
!3944 = !DILocation(line: 253, column: 14, scope: !3927)
!3945 = !DILocation(line: 254, column: 14, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3939, file: !148, line: 253, column: 93)
!3947 = !DILocation(line: 254, column: 7, scope: !3946)
!3948 = !DILocation(line: 254, column: 18, scope: !3946)
!3949 = !DILocation(line: 255, column: 5, scope: !3946)
!3950 = !DILocation(line: 256, column: 20, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3939, file: !148, line: 256, column: 14)
!3952 = !DILocation(line: 256, column: 27, scope: !3951)
!3953 = !DILocation(line: 256, column: 35, scope: !3951)
!3954 = !DILocation(line: 256, column: 14, scope: !3939)
!3955 = !DILocation(line: 257, column: 14, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3951, file: !148, line: 256, column: 63)
!3957 = !DILocation(line: 257, column: 7, scope: !3956)
!3958 = !DILocation(line: 257, column: 18, scope: !3956)
!3959 = !DILocation(line: 258, column: 5, scope: !3956)
!3960 = !DILocation(line: 0, scope: !3939)
!3961 = !DILocation(line: 0, scope: !3927)
!3962 = !DILocation(line: 259, column: 13, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3906, file: !148, line: 259, column: 9)
!3964 = !DILocation(line: 259, column: 9, scope: !3906)
!3965 = !DILocation(line: 260, column: 14, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !148, line: 259, column: 40)
!3967 = !DILocation(line: 260, column: 7, scope: !3966)
!3968 = !DILocation(line: 260, column: 18, scope: !3966)
!3969 = !DILocation(line: 261, column: 5, scope: !3966)
!3970 = !DILocation(line: 0, scope: !3906)
!3971 = !DILocation(line: 262, column: 3, scope: !3906)
!3972 = !DILocation(line: 264, column: 11, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3845, file: !148, line: 264, column: 7)
!3974 = !DILocation(line: 264, column: 7, scope: !3845)
!3975 = !DILocation(line: 265, column: 9, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !148, line: 265, column: 9)
!3977 = distinct !DILexicalBlock(scope: !3973, file: !148, line: 264, column: 38)
!3978 = !DILocation(line: 265, column: 9, scope: !3977)
!3979 = !DILocation(line: 266, column: 14, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3976, file: !148, line: 265, column: 19)
!3981 = !DILocation(line: 266, column: 7, scope: !3980)
!3982 = !DILocation(line: 266, column: 18, scope: !3980)
!3983 = !DILocation(line: 267, column: 5, scope: !3980)
!3984 = !DILocation(line: 268, column: 20, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3976, file: !148, line: 268, column: 14)
!3986 = !DILocation(line: 268, column: 14, scope: !3976)
!3987 = !DILocation(line: 269, column: 14, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3985, file: !148, line: 268, column: 34)
!3989 = !DILocation(line: 269, column: 7, scope: !3988)
!3990 = !DILocation(line: 269, column: 18, scope: !3988)
!3991 = !DILocation(line: 270, column: 5, scope: !3988)
!3992 = !DILocation(line: 271, column: 20, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3985, file: !148, line: 271, column: 14)
!3994 = !DILocation(line: 271, column: 14, scope: !3985)
!3995 = !DILocation(line: 272, column: 14, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !148, line: 271, column: 35)
!3997 = !DILocation(line: 272, column: 7, scope: !3996)
!3998 = !DILocation(line: 272, column: 18, scope: !3996)
!3999 = !DILocation(line: 273, column: 5, scope: !3996)
!4000 = !DILocation(line: 0, scope: !3985)
!4001 = !DILocation(line: 0, scope: !3976)
!4002 = !DILocation(line: 274, column: 3, scope: !3977)
!4003 = !DILocation(line: 276, column: 10, scope: !3845)
!4004 = !DILocation(line: 276, column: 3, scope: !3845)
!4005 = distinct !DISubprogram(name: "sprintf_", scope: !148, file: !148, line: 873, type: !4006, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!43, !66, !2662, null}
!4008 = !{!4009, !4010, !4011, !4012}
!4009 = !DILocalVariable(name: "buffer", arg: 1, scope: !4005, file: !148, line: 873, type: !66)
!4010 = !DILocalVariable(name: "format", arg: 2, scope: !4005, file: !148, line: 873, type: !2662)
!4011 = !DILocalVariable(name: "va", scope: !4005, file: !148, line: 875, type: !2667)
!4012 = !DILocalVariable(name: "ret", scope: !4005, file: !148, line: 877, type: !2676)
!4013 = !DILocation(line: 0, scope: !4005)
!4014 = !DILocation(line: 875, column: 3, scope: !4005)
!4015 = !DILocation(line: 875, column: 11, scope: !4005)
!4016 = !DILocation(line: 876, column: 3, scope: !4005)
!4017 = !DILocation(line: 877, column: 19, scope: !4005)
!4018 = !DILocation(line: 878, column: 3, scope: !4005)
!4019 = !DILocation(line: 880, column: 1, scope: !4005)
!4020 = !DILocation(line: 879, column: 3, scope: !4005)
!4021 = distinct !DISubprogram(name: "_out_buffer", scope: !148, file: !148, line: 133, type: !155, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4022)
!4022 = !{!4023, !4024, !4025, !4026}
!4023 = !DILocalVariable(name: "character", arg: 1, scope: !4021, file: !148, line: 133, type: !67)
!4024 = !DILocalVariable(name: "buffer", arg: 2, scope: !4021, file: !148, line: 133, type: !19)
!4025 = !DILocalVariable(name: "idx", arg: 3, scope: !4021, file: !148, line: 133, type: !151)
!4026 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4021, file: !148, line: 133, type: !151)
!4027 = !DILocation(line: 0, scope: !4021)
!4028 = !DILocation(line: 135, column: 11, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4021, file: !148, line: 135, column: 7)
!4030 = !DILocation(line: 135, column: 7, scope: !4021)
!4031 = !DILocation(line: 136, column: 5, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4029, file: !148, line: 135, column: 21)
!4033 = !DILocation(line: 136, column: 26, scope: !4032)
!4034 = !DILocation(line: 137, column: 3, scope: !4032)
!4035 = !DILocation(line: 138, column: 1, scope: !4021)
!4036 = distinct !DISubprogram(name: "snprintf_", scope: !148, file: !148, line: 883, type: !4037, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!43, !66, !151, !2662, null}
!4039 = !{!4040, !4041, !4042, !4043, !4044}
!4040 = !DILocalVariable(name: "buffer", arg: 1, scope: !4036, file: !148, line: 883, type: !66)
!4041 = !DILocalVariable(name: "count", arg: 2, scope: !4036, file: !148, line: 883, type: !151)
!4042 = !DILocalVariable(name: "format", arg: 3, scope: !4036, file: !148, line: 883, type: !2662)
!4043 = !DILocalVariable(name: "va", scope: !4036, file: !148, line: 885, type: !2667)
!4044 = !DILocalVariable(name: "ret", scope: !4036, file: !148, line: 887, type: !2676)
!4045 = !DILocation(line: 0, scope: !4036)
!4046 = !DILocation(line: 885, column: 3, scope: !4036)
!4047 = !DILocation(line: 885, column: 11, scope: !4036)
!4048 = !DILocation(line: 886, column: 3, scope: !4036)
!4049 = !DILocation(line: 887, column: 19, scope: !4036)
!4050 = !DILocation(line: 888, column: 3, scope: !4036)
!4051 = !DILocation(line: 890, column: 1, scope: !4036)
!4052 = !DILocation(line: 889, column: 3, scope: !4036)
!4053 = distinct !DISubprogram(name: "vprintf_", scope: !148, file: !148, line: 893, type: !4054, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4056)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!43, !2662, !2667}
!4056 = !{!4057, !4058, !4059}
!4057 = !DILocalVariable(name: "format", arg: 1, scope: !4053, file: !148, line: 893, type: !2662)
!4058 = !DILocalVariable(name: "va", arg: 2, scope: !4053, file: !148, line: 893, type: !2667)
!4059 = !DILocalVariable(name: "buffer", scope: !4053, file: !148, line: 895, type: !2674)
!4060 = !DILocation(line: 0, scope: !4053)
!4061 = !DILocation(line: 893, column: 42, scope: !4053)
!4062 = !DILocation(line: 895, column: 3, scope: !4053)
!4063 = !DILocation(line: 895, column: 8, scope: !4053)
!4064 = !DILocation(line: 896, column: 32, scope: !4053)
!4065 = !DILocation(line: 896, column: 10, scope: !4053)
!4066 = !DILocation(line: 897, column: 1, scope: !4053)
!4067 = !DILocation(line: 896, column: 3, scope: !4053)
!4068 = distinct !DISubprogram(name: "vsnprintf_", scope: !148, file: !148, line: 900, type: !4069, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!43, !66, !151, !2662, !2667}
!4071 = !{!4072, !4073, !4074, !4075}
!4072 = !DILocalVariable(name: "buffer", arg: 1, scope: !4068, file: !148, line: 900, type: !66)
!4073 = !DILocalVariable(name: "count", arg: 2, scope: !4068, file: !148, line: 900, type: !151)
!4074 = !DILocalVariable(name: "format", arg: 3, scope: !4068, file: !148, line: 900, type: !2662)
!4075 = !DILocalVariable(name: "va", arg: 4, scope: !4068, file: !148, line: 900, type: !2667)
!4076 = !DILocation(line: 0, scope: !4068)
!4077 = !DILocation(line: 900, column: 72, scope: !4068)
!4078 = !DILocation(line: 902, column: 10, scope: !4068)
!4079 = !DILocation(line: 902, column: 3, scope: !4068)
!4080 = distinct !DISubprogram(name: "fctprintf", scope: !148, file: !148, line: 906, type: !4081, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!43, !167, !19, !2662, null}
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4090}
!4084 = !DILocalVariable(name: "out", arg: 1, scope: !4080, file: !148, line: 906, type: !167)
!4085 = !DILocalVariable(name: "arg", arg: 2, scope: !4080, file: !148, line: 906, type: !19)
!4086 = !DILocalVariable(name: "format", arg: 3, scope: !4080, file: !148, line: 906, type: !2662)
!4087 = !DILocalVariable(name: "va", scope: !4080, file: !148, line: 908, type: !2667)
!4088 = !DILocalVariable(name: "out_fct_wrap", scope: !4080, file: !148, line: 910, type: !4089)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!4090 = !DILocalVariable(name: "ret", scope: !4080, file: !148, line: 911, type: !2676)
!4091 = !DILocation(line: 0, scope: !4080)
!4092 = !DILocation(line: 908, column: 3, scope: !4080)
!4093 = !DILocation(line: 908, column: 11, scope: !4080)
!4094 = !DILocation(line: 909, column: 3, scope: !4080)
!4095 = !DILocation(line: 910, column: 3, scope: !4080)
!4096 = !DILocation(line: 910, column: 27, scope: !4080)
!4097 = !DILocation(line: 910, column: 42, scope: !4080)
!4098 = !{!4099, !329, i64 0}
!4099 = !{!"", !329, i64 0, !329, i64 4}
!4100 = !{!4099, !329, i64 4}
!4101 = !DILocation(line: 911, column: 47, scope: !4080)
!4102 = !DILocation(line: 911, column: 40, scope: !4080)
!4103 = !DILocation(line: 911, column: 19, scope: !4080)
!4104 = !DILocation(line: 912, column: 3, scope: !4080)
!4105 = !DILocation(line: 914, column: 1, scope: !4080)
!4106 = !DILocation(line: 913, column: 3, scope: !4080)
!4107 = distinct !DISubprogram(name: "_out_fct", scope: !148, file: !148, line: 159, type: !155, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4108)
!4108 = !{!4109, !4110, !4111, !4112}
!4109 = !DILocalVariable(name: "character", arg: 1, scope: !4107, file: !148, line: 159, type: !67)
!4110 = !DILocalVariable(name: "buffer", arg: 2, scope: !4107, file: !148, line: 159, type: !19)
!4111 = !DILocalVariable(name: "idx", arg: 3, scope: !4107, file: !148, line: 159, type: !151)
!4112 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4107, file: !148, line: 159, type: !151)
!4113 = !DILocation(line: 0, scope: !4107)
!4114 = !DILocation(line: 162, column: 7, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4107, file: !148, line: 162, column: 7)
!4116 = !DILocation(line: 162, column: 7, scope: !4107)
!4117 = !DILocation(line: 164, column: 6, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4115, file: !148, line: 162, column: 18)
!4119 = !DILocation(line: 164, column: 35, scope: !4118)
!4120 = !DILocation(line: 164, column: 51, scope: !4118)
!4121 = !DILocation(line: 164, column: 80, scope: !4118)
!4122 = !DILocation(line: 164, column: 5, scope: !4118)
!4123 = !DILocation(line: 165, column: 3, scope: !4118)
!4124 = !DILocation(line: 166, column: 1, scope: !4107)
!4125 = distinct !DISubprogram(name: "putc", scope: !4126, file: !4126, line: 10, type: !4127, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4129)
!4126 = !DIFile(filename: "src/icemu/printfmap.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!43, !43, !19}
!4129 = !{!4130, !4131}
!4130 = !DILocalVariable(name: "character", arg: 1, scope: !4125, file: !4126, line: 10, type: !43)
!4131 = !DILocalVariable(name: "stream", arg: 2, scope: !4125, file: !4126, line: 10, type: !19)
!4132 = !DILocation(line: 10, column: 14, scope: !4125)
!4133 = !DILocation(line: 10, column: 31, scope: !4125)
!4134 = !DILocation(line: 12, column: 11, scope: !4125)
!4135 = !DILocation(line: 13, column: 12, scope: !4125)
!4136 = !DILocation(line: 13, column: 5, scope: !4125)
!4137 = distinct !DISubprogram(name: "_putchar", scope: !4126, file: !4126, line: 17, type: !4138, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !67}
!4140 = !{!4141}
!4141 = !DILocalVariable(name: "character", arg: 1, scope: !4137, file: !4126, line: 17, type: !67)
!4142 = !DILocation(line: 17, column: 20, scope: !4137)
!4143 = !DILocation(line: 18, column: 10, scope: !4137)
!4144 = !DILocation(line: 18, column: 5, scope: !4137)
!4145 = !DILocation(line: 19, column: 1, scope: !4137)
!4146 = distinct !DISubprogram(name: "Reset_Handler", scope: !206, file: !206, line: 251, type: !214, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4147 = !DILocation(line: 256, column: 5, scope: !4146)
!4148 = !{i32 13155, i32 13197, i32 13243}
!4149 = !DILocation(line: 263, column: 5, scope: !4146)
!4150 = !{i32 13321}
!4151 = !DILocation(line: 282, column: 5, scope: !4146)
!4152 = !{i32 13764}
!4153 = !DILocation(line: 288, column: 5, scope: !4146)
!4154 = !{i32 13922, i32 13965, i32 14003, i32 14041, i32 14066, i32 14107, i32 14148, i32 14185}
!4155 = !DILocation(line: 299, column: 5, scope: !4146)
!4156 = !{i32 14274, i32 14312, i32 14349, i32 14382, i32 14407, i32 14444, i32 14477, i32 14520}
!4157 = !DILocation(line: 313, column: 5, scope: !4146)
!4158 = !{i32 14731}
!4159 = !DILocation(line: 319, column: 5, scope: !4146)
!4160 = !{i32 14873}
!4161 = !DILocation(line: 324, column: 5, scope: !4146)
!4162 = !{i32 14980}
!4163 = !DILocation(line: 325, column: 1, scope: !4146)
!4164 = distinct !DISubprogram(name: "NMI_Handler", scope: !206, file: !206, line: 338, type: !214, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4165 = !DILocation(line: 343, column: 5, scope: !4164)
!4166 = distinct !{!4166, !4165, !4167}
!4167 = !DILocation(line: 345, column: 5, scope: !4164)
!4168 = distinct !DISubprogram(name: "HardFault_Handler", scope: !206, file: !206, line: 356, type: !214, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4169 = !DILocation(line: 361, column: 5, scope: !4168)
!4170 = distinct !{!4170, !4169, !4171}
!4171 = !DILocation(line: 363, column: 5, scope: !4168)
!4172 = distinct !DISubprogram(name: "am_default_isr", scope: !206, file: !206, line: 374, type: !214, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4173 = !DILocation(line: 379, column: 5, scope: !4172)
!4174 = distinct !{!4174, !4173, !4175}
!4175 = !DILocation(line: 381, column: 5, scope: !4172)
!4176 = distinct !DISubprogram(name: "__checkpoint_startup_checkpoint", scope: !206, file: !206, line: 51, type: !214, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4177 = !DILocation(line: 52, column: 1, scope: !4176)
!4178 = distinct !DISubprogram(name: "__checkpoint_startup_restore", scope: !206, file: !206, line: 55, type: !214, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4179 = !DILocation(line: 56, column: 1, scope: !4178)
