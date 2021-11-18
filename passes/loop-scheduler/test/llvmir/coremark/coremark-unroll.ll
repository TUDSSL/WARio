; ModuleID = 'coremark-norm.ll'
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

2:                                                ; preds = %10, %1
  %.01 = phi %struct.list_head_s* [ null, %1 ], [ %6, %10 ], !dbg !650, !lws_unroll_2 !652, !lws_unrolled_loop !652
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %12, %10 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !647, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01, metadata !648, metadata !DIExpression()), !dbg !650
  %3 = icmp ne %struct.list_head_s* %.0, null, !dbg !651
  br i1 %3, label %4, label %9, !dbg !651

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !653
  %6 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !dbg !653, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %6, metadata !649, metadata !DIExpression()), !dbg !650
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !655
  store %struct.list_head_s* %.01, %struct.list_head_s** %7, align 4, !dbg !656, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !648, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %6, metadata !647, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %6, metadata !647, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !648, metadata !DIExpression()), !dbg !650
  %8 = icmp ne %struct.list_head_s* %6, null, !dbg !651
  br i1 %8, label %10, label %9, !dbg !651

9:                                                ; preds = %4, %2
  %.01.lcssa = phi %struct.list_head_s* [ %.01, %2 ], [ %.0, %4 ], !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01.lcssa, metadata !648, metadata !DIExpression()), !dbg !650
  ret %struct.list_head_s* %.01.lcssa, !dbg !657

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %6, i32 0, i32 0, !dbg !653
  %12 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !653, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %12, metadata !649, metadata !DIExpression()), !dbg !650
  %13 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %6, i32 0, i32 0, !dbg !655
  store %struct.list_head_s* %.0, %struct.list_head_s** %13, align 4, !dbg !656, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %6, metadata !648, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %12, metadata !647, metadata !DIExpression()), !dbg !650
  br label %2
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s*, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)*, %struct.RESULTS_S*) #0 !dbg !658 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !664, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* %1, metadata !665, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !666, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 1, metadata !671, metadata !DIExpression()), !dbg !676
  br label %4, !dbg !677

4:                                                ; preds = %73, %3
  %.020 = phi i32 [ 1, %3 ], [ %74, %73 ], !dbg !676
  %.0 = phi %struct.list_head_s* [ %0, %3 ], [ %.1.lcssa, %73 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !664, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.020, metadata !671, metadata !DIExpression()), !dbg !676
  br label %5, !dbg !677

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !667, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* null, metadata !664, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* null, metadata !670, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 0, metadata !672, metadata !DIExpression()), !dbg !676
  br label %6, !dbg !678

6:                                                ; preds = %68, %5
  %.021 = phi i32 [ 0, %5 ], [ %9, %68 ], !dbg !680
  %.018 = phi %struct.list_head_s* [ null, %5 ], [ %.119.lcssa, %68 ], !dbg !681
  %.06 = phi %struct.list_head_s* [ %.0, %5 ], [ %.212.lcssa, %68 ], !dbg !680
  %.1 = phi %struct.list_head_s* [ null, %5 ], [ %.2.lcssa, %68 ], !dbg !682
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1, metadata !664, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06, metadata !667, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.018, metadata !670, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.021, metadata !672, metadata !DIExpression()), !dbg !676
  %7 = icmp ne %struct.list_head_s* %.06, null, !dbg !678
  br i1 %7, label %8, label %69, !dbg !678

8:                                                ; preds = %6
  %9 = add nuw nsw i32 %.021, 1, !dbg !683
  call void @llvm.dbg.value(metadata i32 %9, metadata !672, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.06, metadata !668, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 0, metadata !673, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()), !dbg !676
  br label %10, !dbg !685

10:                                               ; preds = %19, %8
  %.022 = phi i32 [ 0, %8 ], [ %13, %19 ], !dbg !687
  %.010 = phi %struct.list_head_s* [ %.06, %8 ], [ %15, %19 ], !dbg !687
  call void @llvm.dbg.value(metadata i32 %.022, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.010, metadata !668, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.022, metadata !673, metadata !DIExpression()), !dbg !676
  %11 = icmp slt i32 %.022, %.020, !dbg !688
  br i1 %11, label %12, label %._crit_edge, !dbg !690

._crit_edge:                                      ; preds = %10
  %.022.lcssa = phi i32 [ %.022, %10 ], !dbg !687
  %.010.lcssa = phi %struct.list_head_s* [ %.010, %10 ], !dbg !687
  call void @llvm.dbg.value(metadata i32 %.022.lcssa, metadata !673, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.010.lcssa, metadata !668, metadata !DIExpression()), !dbg !676
  br label %20, !dbg !690

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %.022, 1, !dbg !691
  call void @llvm.dbg.value(metadata i32 %13, metadata !673, metadata !DIExpression()), !dbg !676
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.010, i32 0, i32 0, !dbg !693
  %15 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !693, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %15, metadata !668, metadata !DIExpression()), !dbg !676
  %16 = icmp ne %struct.list_head_s* %15, null, !dbg !694
  br i1 %16, label %18, label %17, !dbg !696

17:                                               ; preds = %12
  %.lcssa34 = phi i32 [ %13, %12 ], !dbg !691
  %.lcssa = phi %struct.list_head_s* [ %15, %12 ], !dbg !693
  br label %20, !dbg !697

18:                                               ; preds = %12
  br label %19, !dbg !698

19:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %13, metadata !675, metadata !DIExpression()), !dbg !676
  br label %10, !dbg !699, !llvm.loop !700

20:                                               ; preds = %17, %._crit_edge
  %.123 = phi i32 [ %.lcssa34, %17 ], [ %.022.lcssa, %._crit_edge ], !dbg !687
  %.111 = phi %struct.list_head_s* [ %.lcssa, %17 ], [ %.010.lcssa, %._crit_edge ], !dbg !687
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.111, metadata !668, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.123, metadata !673, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.020, metadata !674, metadata !DIExpression()), !dbg !676
  br label %21, !dbg !702

21:                                               ; preds = %67, %20
  %.224 = phi i32 [ %.123, %20 ], [ %.527, %67 ], !dbg !691
  %.119 = phi %struct.list_head_s* [ %.018, %20 ], [ %.217, %67 ], !dbg !680
  %.212 = phi %struct.list_head_s* [ %.111, %20 ], [ %.5, %67 ], !dbg !687
  %.17 = phi %struct.list_head_s* [ %.06, %20 ], [ %.4, %67 ], !dbg !703
  %.02 = phi i32 [ %.020, %20 ], [ %.35, %67 ], !dbg !687
  %.2 = phi %struct.list_head_s* [ %.1, %20 ], [ %.3, %67 ], !dbg !682
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.2, metadata !664, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.02, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !667, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !668, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.119, metadata !670, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.224, metadata !673, metadata !DIExpression()), !dbg !676
  %22 = icmp sgt i32 %.224, 0, !dbg !704
  br i1 %22, label %._crit_edge28, label %23, !dbg !705

._crit_edge28:                                    ; preds = %21
  br label %29, !dbg !705

23:                                               ; preds = %21
  %24 = icmp sgt i32 %.02, 0, !dbg !706
  br i1 %24, label %25, label %._crit_edge29, !dbg !707

._crit_edge29:                                    ; preds = %23
  br label %27, !dbg !707

25:                                               ; preds = %23
  %26 = icmp ne %struct.list_head_s* %.212, null, !dbg !707
  br label %27

27:                                               ; preds = %25, %._crit_edge29
  %28 = phi i1 [ false, %._crit_edge29 ], [ %26, %25 ], !dbg !687
  br label %29, !dbg !705

29:                                               ; preds = %27, %._crit_edge28
  %30 = phi i1 [ true, %._crit_edge28 ], [ %28, %27 ]
  br i1 %30, label %31, label %68, !dbg !702

31:                                               ; preds = %29
  %32 = icmp eq i32 %.224, 0, !dbg !708
  br i1 %32, label %33, label %37, !dbg !711

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !669, metadata !DIExpression()), !dbg !676
  %34 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 0, !dbg !712
  %35 = load %struct.list_head_s*, %struct.list_head_s** %34, align 4, !dbg !712, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %35, metadata !668, metadata !DIExpression()), !dbg !676
  %36 = add nsw i32 %.02, -1, !dbg !714
  call void @llvm.dbg.value(metadata i32 %36, metadata !674, metadata !DIExpression()), !dbg !676
  br label %62, !dbg !715

37:                                               ; preds = %31
  %38 = icmp eq i32 %.02, 0, !dbg !716
  br i1 %38, label %._crit_edge30, label %39, !dbg !718

._crit_edge30:                                    ; preds = %37
  br label %41, !dbg !718

39:                                               ; preds = %37
  %40 = icmp ne %struct.list_head_s* %.212, null, !dbg !719
  br i1 %40, label %45, label %._crit_edge31, !dbg !720

._crit_edge31:                                    ; preds = %39
  br label %41, !dbg !720

41:                                               ; preds = %._crit_edge31, %._crit_edge30
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !669, metadata !DIExpression()), !dbg !676
  %42 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !721
  %43 = load %struct.list_head_s*, %struct.list_head_s** %42, align 4, !dbg !721, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %43, metadata !667, metadata !DIExpression()), !dbg !676
  %44 = add nsw i32 %.224, -1, !dbg !723
  call void @llvm.dbg.value(metadata i32 %44, metadata !673, metadata !DIExpression()), !dbg !676
  br label %61, !dbg !724

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 1, !dbg !725
  %47 = load %struct.list_data_s*, %struct.list_data_s** %46, align 4, !dbg !725, !tbaa !508
  %48 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 1, !dbg !727
  %49 = load %struct.list_data_s*, %struct.list_data_s** %48, align 4, !dbg !727, !tbaa !508
  %50 = call arm_aapcscc i32 %1(%struct.list_data_s* %47, %struct.list_data_s* %49, %struct.RESULTS_S* %2), !dbg !728
  %51 = icmp sle i32 %50, 0, !dbg !729
  br i1 %51, label %52, label %56, !dbg !730

52:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.17, metadata !669, metadata !DIExpression()), !dbg !676
  %53 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.17, i32 0, i32 0, !dbg !731
  %54 = load %struct.list_head_s*, %struct.list_head_s** %53, align 4, !dbg !731, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %54, metadata !667, metadata !DIExpression()), !dbg !676
  %55 = add nsw i32 %.224, -1, !dbg !733
  call void @llvm.dbg.value(metadata i32 %55, metadata !673, metadata !DIExpression()), !dbg !676
  br label %60, !dbg !734

56:                                               ; preds = %45
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212, metadata !669, metadata !DIExpression()), !dbg !676
  %57 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.212, i32 0, i32 0, !dbg !735
  %58 = load %struct.list_head_s*, %struct.list_head_s** %57, align 4, !dbg !735, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %58, metadata !668, metadata !DIExpression()), !dbg !676
  %59 = add nsw i32 %.02, -1, !dbg !737
  call void @llvm.dbg.value(metadata i32 %59, metadata !674, metadata !DIExpression()), !dbg !676
  br label %60

60:                                               ; preds = %56, %52
  %.325 = phi i32 [ %55, %52 ], [ %.224, %56 ], !dbg !687
  %.015 = phi %struct.list_head_s* [ %.17, %52 ], [ %.212, %56 ], !dbg !738
  %.313 = phi %struct.list_head_s* [ %.212, %52 ], [ %58, %56 ], !dbg !687
  %.28 = phi %struct.list_head_s* [ %54, %52 ], [ %.17, %56 ], !dbg !680
  %.13 = phi i32 [ %.02, %52 ], [ %59, %56 ], !dbg !687
  call void @llvm.dbg.value(metadata i32 %.13, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.28, metadata !667, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.313, metadata !668, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.015, metadata !669, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.325, metadata !673, metadata !DIExpression()), !dbg !676
  br label %61

61:                                               ; preds = %60, %41
  %.426 = phi i32 [ %44, %41 ], [ %.325, %60 ], !dbg !739
  %.116 = phi %struct.list_head_s* [ %.17, %41 ], [ %.015, %60 ], !dbg !739
  %.414 = phi %struct.list_head_s* [ %.212, %41 ], [ %.313, %60 ], !dbg !740
  %.39 = phi %struct.list_head_s* [ %43, %41 ], [ %.28, %60 ], !dbg !739
  %.24 = phi i32 [ %.02, %41 ], [ %.13, %60 ], !dbg !741
  call void @llvm.dbg.value(metadata i32 %.24, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.39, metadata !667, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.414, metadata !668, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.116, metadata !669, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.426, metadata !673, metadata !DIExpression()), !dbg !676
  br label %62

62:                                               ; preds = %61, %33
  %.527 = phi i32 [ %.224, %33 ], [ %.426, %61 ], !dbg !687
  %.217 = phi %struct.list_head_s* [ %.212, %33 ], [ %.116, %61 ], !dbg !742
  %.5 = phi %struct.list_head_s* [ %35, %33 ], [ %.414, %61 ], !dbg !687
  %.4 = phi %struct.list_head_s* [ %.17, %33 ], [ %.39, %61 ], !dbg !680
  %.35 = phi i32 [ %36, %33 ], [ %.24, %61 ], !dbg !687
  call void @llvm.dbg.value(metadata i32 %.35, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.4, metadata !667, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.5, metadata !668, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !669, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %.527, metadata !673, metadata !DIExpression()), !dbg !676
  %63 = icmp ne %struct.list_head_s* %.119, null, !dbg !743
  br i1 %63, label %64, label %66, !dbg !745

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.119, i32 0, i32 0, !dbg !746
  store %struct.list_head_s* %.217, %struct.list_head_s** %65, align 4, !dbg !748, !tbaa !505
  br label %67, !dbg !749

66:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !664, metadata !DIExpression()), !dbg !676
  br label %67

67:                                               ; preds = %66, %64
  %.3 = phi %struct.list_head_s* [ %.2, %64 ], [ %.217, %66 ], !dbg !680
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.3, metadata !664, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.217, metadata !670, metadata !DIExpression()), !dbg !676
  br label %21, !dbg !702, !llvm.loop !750

68:                                               ; preds = %29
  %.119.lcssa = phi %struct.list_head_s* [ %.119, %29 ], !dbg !680
  %.212.lcssa = phi %struct.list_head_s* [ %.212, %29 ], !dbg !687
  %.2.lcssa = phi %struct.list_head_s* [ %.2, %29 ], !dbg !682
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.119.lcssa, metadata !670, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212.lcssa, metadata !668, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.2.lcssa, metadata !664, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.212.lcssa, metadata !667, metadata !DIExpression()), !dbg !676
  br label %6, !dbg !678, !llvm.loop !752

69:                                               ; preds = %6
  %.021.lcssa = phi i32 [ %.021, %6 ], !dbg !680
  %.018.lcssa = phi %struct.list_head_s* [ %.018, %6 ], !dbg !681
  %.1.lcssa = phi %struct.list_head_s* [ %.1, %6 ], !dbg !682
  call void @llvm.dbg.value(metadata i32 %.021.lcssa, metadata !672, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.018.lcssa, metadata !670, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1.lcssa, metadata !664, metadata !DIExpression()), !dbg !676
  %70 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.018.lcssa, i32 0, i32 0, !dbg !754
  store %struct.list_head_s* null, %struct.list_head_s** %70, align 4, !dbg !755, !tbaa !505
  %71 = icmp sle i32 %.021.lcssa, 1, !dbg !756
  br i1 %71, label %72, label %73, !dbg !758

72:                                               ; preds = %69
  %.1.lcssa.lcssa = phi %struct.list_head_s* [ %.1.lcssa, %69 ], !dbg !682
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.1.lcssa.lcssa, metadata !664, metadata !DIExpression()), !dbg !676
  ret %struct.list_head_s* %.1.lcssa.lcssa, !dbg !759

73:                                               ; preds = %69
  %74 = mul nuw nsw i32 %.020, 2, !dbg !760
  call void @llvm.dbg.value(metadata i32 %74, metadata !671, metadata !DIExpression()), !dbg !676
  br label %4, !dbg !677, !llvm.loop !761
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_remove(%struct.list_head_s*) #0 !dbg !763 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !765, metadata !DIExpression()), !dbg !768
  %2 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !769
  %3 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !769, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %3, metadata !767, metadata !DIExpression()), !dbg !768
  %4 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !770
  %5 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !770, !tbaa !508
  call void @llvm.dbg.value(metadata %struct.list_data_s* %5, metadata !766, metadata !DIExpression()), !dbg !768
  %6 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 1, !dbg !771
  %7 = load %struct.list_data_s*, %struct.list_data_s** %6, align 4, !dbg !771, !tbaa !508
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !772
  store %struct.list_data_s* %7, %struct.list_data_s** %8, align 4, !dbg !773, !tbaa !508
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 1, !dbg !774
  store %struct.list_data_s* %5, %struct.list_data_s** %9, align 4, !dbg !775, !tbaa !508
  %10 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !776
  %11 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !776, !tbaa !505
  %12 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %11, i32 0, i32 0, !dbg !777
  %13 = load %struct.list_head_s*, %struct.list_head_s** %12, align 4, !dbg !777, !tbaa !505
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !778
  store %struct.list_head_s* %13, %struct.list_head_s** %14, align 4, !dbg !779, !tbaa !505
  %15 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %3, i32 0, i32 0, !dbg !780
  store %struct.list_head_s* null, %struct.list_head_s** %15, align 4, !dbg !781, !tbaa !505
  ret %struct.list_head_s* %3, !dbg !782
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_undo_remove(%struct.list_head_s*, %struct.list_head_s*) #0 !dbg !783 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !787, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata %struct.list_head_s* %1, metadata !788, metadata !DIExpression()), !dbg !790
  %3 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !791
  %4 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !791, !tbaa !508
  call void @llvm.dbg.value(metadata %struct.list_data_s* %4, metadata !789, metadata !DIExpression()), !dbg !790
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 1, !dbg !792
  %6 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !792, !tbaa !508
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 1, !dbg !793
  store %struct.list_data_s* %6, %struct.list_data_s** %7, align 4, !dbg !794, !tbaa !508
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 1, !dbg !795
  store %struct.list_data_s* %4, %struct.list_data_s** %8, align 4, !dbg !796, !tbaa !508
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 0, !dbg !797
  %10 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !dbg !797, !tbaa !505
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !798
  store %struct.list_head_s* %10, %struct.list_head_s** %11, align 4, !dbg !799, !tbaa !505
  %12 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %1, i32 0, i32 0, !dbg !800
  store %struct.list_head_s* %0, %struct.list_head_s** %12, align 4, !dbg !801, !tbaa !505
  ret %struct.list_head_s* %0, !dbg !802
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_init(i32, %struct.list_head_s*, i16 signext) #0 !dbg !803 {
  %4 = alloca %struct.list_head_s*, align 4
  %5 = alloca %struct.list_data_s*, align 4
  %6 = alloca %struct.list_data_s, align 2
  call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !828
  store %struct.list_head_s* %1, %struct.list_head_s** %4, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %4, metadata !808, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i16 %2, metadata !809, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 20, metadata !810, metadata !DIExpression()), !dbg !828
  %7 = udiv i32 %0, 20, !dbg !830
  %8 = sub i32 %7, 2, !dbg !831
  call void @llvm.dbg.value(metadata i32 %8, metadata !811, metadata !DIExpression()), !dbg !828
  %9 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !832, !tbaa !334
  %10 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %9, i32 %8, !dbg !833
  call void @llvm.dbg.value(metadata %struct.list_head_s* %10, metadata !812, metadata !DIExpression()), !dbg !828
  %11 = bitcast %struct.list_data_s** %5 to i8*, !dbg !834
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !834
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %5, metadata !813, metadata !DIExpression()), !dbg !835
  %12 = bitcast %struct.list_head_s* %10 to %struct.list_data_s*, !dbg !836
  store %struct.list_data_s* %12, %struct.list_data_s** %5, align 4, !dbg !835, !tbaa !334
  %13 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !837, !tbaa !334
  %14 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %13, i32 %8, !dbg !838
  call void @llvm.dbg.value(metadata %struct.list_data_s* %14, metadata !814, metadata !DIExpression()), !dbg !828
  %15 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !839, !tbaa !334
  call void @llvm.dbg.value(metadata %struct.list_head_s* %15, metadata !817, metadata !DIExpression()), !dbg !828
  %16 = bitcast %struct.list_data_s* %6 to i8*, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !840
  call void @llvm.dbg.declare(metadata %struct.list_data_s* %6, metadata !818, metadata !DIExpression()), !dbg !841
  %17 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 0, !dbg !842
  store %struct.list_head_s* null, %struct.list_head_s** %17, align 4, !dbg !843, !tbaa !505
  %18 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !844, !tbaa !334
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !845
  store %struct.list_data_s* %18, %struct.list_data_s** %19, align 4, !dbg !846, !tbaa !508
  %20 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !847
  %21 = load %struct.list_data_s*, %struct.list_data_s** %20, align 4, !dbg !847, !tbaa !508
  %22 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %21, i32 0, i32 1, !dbg !848
  store i16 0, i16* %22, align 2, !dbg !849, !tbaa !435
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 1, !dbg !850
  %24 = load %struct.list_data_s*, %struct.list_data_s** %23, align 4, !dbg !850, !tbaa !508
  %25 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %24, i32 0, i32 0, !dbg !851
  store i16 -32640, i16* %25, align 2, !dbg !852, !tbaa !410
  %26 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !853, !tbaa !334
  %27 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %26, i32 1, !dbg !853
  store %struct.list_head_s* %27, %struct.list_head_s** %4, align 4, !dbg !853, !tbaa !334
  %28 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !854, !tbaa !334
  %29 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %28, i32 1, !dbg !854
  store %struct.list_data_s* %29, %struct.list_data_s** %5, align 4, !dbg !854, !tbaa !334
  %30 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 1, !dbg !855
  store i16 32767, i16* %30, align 2, !dbg !856, !tbaa !435
  %31 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 0, !dbg !857
  store i16 -1, i16* %31, align 2, !dbg !858, !tbaa !410
  %32 = call arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s* %15, %struct.list_data_s* %6, %struct.list_head_s** %4, %struct.list_data_s** %5, %struct.list_head_s* %10, %struct.list_data_s* %14), !dbg !859
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()), !dbg !828
  br label %33, !dbg !860

33:                                               ; preds = %54, %3
  %.01 = phi i32 [ 0, %3 ], [ %55, %54 ], !dbg !861
  call void @llvm.dbg.value(metadata i32 %.01, metadata !815, metadata !DIExpression()), !dbg !828
  %34 = icmp ult i32 %.01, %8, !dbg !862
  br i1 %34, label %35, label %56, !dbg !863

35:                                               ; preds = %33
  %36 = sext i16 %2 to i32, !dbg !864
  %37 = xor i32 %36, %.01, !dbg !865
  %38 = trunc i32 %37 to i16, !dbg !866
  %39 = zext i16 %38 to i32, !dbg !866
  %40 = and i32 %39, 15, !dbg !867
  %41 = trunc i32 %40 to i16, !dbg !868
  call void @llvm.dbg.value(metadata i16 %41, metadata !819, metadata !DIExpression()), !dbg !869
  %42 = zext i16 %41 to i32, !dbg !870
  %43 = shl i32 %42, 3, !dbg !871
  %44 = and i32 %.01, 7, !dbg !872
  %45 = or i32 %43, %44, !dbg !873
  %46 = trunc i32 %45 to i16, !dbg !874
  call void @llvm.dbg.value(metadata i16 %46, metadata !823, metadata !DIExpression()), !dbg !869
  %47 = zext i16 %46 to i32, !dbg !875
  %48 = shl i32 %47, 8, !dbg !876
  %49 = zext i16 %46 to i32, !dbg !877
  %50 = or i32 %48, %49, !dbg !878
  %51 = trunc i32 %50 to i16, !dbg !879
  %52 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 0, !dbg !880
  store i16 %51, i16* %52, align 2, !dbg !881, !tbaa !410
  %53 = call arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s* %15, %struct.list_data_s* %6, %struct.list_head_s** %4, %struct.list_data_s** %5, %struct.list_head_s* %10, %struct.list_data_s* %14), !dbg !882
  br label %54, !dbg !883

54:                                               ; preds = %35
  %55 = add i32 %.01, 1, !dbg !884
  call void @llvm.dbg.value(metadata i32 %55, metadata !815, metadata !DIExpression()), !dbg !828
  br label %33, !dbg !885, !llvm.loop !886

56:                                               ; preds = %33
  %57 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 0, !dbg !888
  %58 = load %struct.list_head_s*, %struct.list_head_s** %57, align 4, !dbg !888, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %58, metadata !816, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 1, metadata !815, metadata !DIExpression()), !dbg !828
  br label %59, !dbg !889

59:                                               ; preds = %86, %56
  %.1 = phi i32 [ 1, %56 ], [ %.2, %86 ], !dbg !828
  %.0 = phi %struct.list_head_s* [ %58, %56 ], [ %88, %86 ], !dbg !828
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0, metadata !816, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 %.1, metadata !815, metadata !DIExpression()), !dbg !828
  %60 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !890
  %61 = load %struct.list_head_s*, %struct.list_head_s** %60, align 4, !dbg !890, !tbaa !505
  %62 = icmp ne %struct.list_head_s* %61, null, !dbg !891
  br i1 %62, label %63, label %89, !dbg !889

63:                                               ; preds = %59
  %64 = udiv i32 %8, 5, !dbg !892
  %65 = icmp ult i32 %.1, %64, !dbg !893
  br i1 %65, label %66, label %72, !dbg !894

66:                                               ; preds = %63
  %67 = add i32 %.1, 1, !dbg !895
  call void @llvm.dbg.value(metadata i32 %67, metadata !815, metadata !DIExpression()), !dbg !828
  %68 = trunc i32 %.1 to i16, !dbg !896
  %69 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1, !dbg !897
  %70 = load %struct.list_data_s*, %struct.list_data_s** %69, align 4, !dbg !897, !tbaa !508
  %71 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %70, i32 0, i32 1, !dbg !898
  store i16 %68, i16* %71, align 2, !dbg !899, !tbaa !435
  br label %86, !dbg !900

72:                                               ; preds = %63
  %73 = add i32 %.1, 1, !dbg !901
  call void @llvm.dbg.value(metadata i32 %73, metadata !815, metadata !DIExpression()), !dbg !828
  %74 = sext i16 %2 to i32, !dbg !902
  %75 = xor i32 %.1, %74, !dbg !903
  %76 = trunc i32 %75 to i16, !dbg !904
  call void @llvm.dbg.value(metadata i16 %76, metadata !824, metadata !DIExpression()), !dbg !905
  %77 = and i32 %73, 7, !dbg !906
  %78 = shl i32 %77, 8, !dbg !907
  %79 = zext i16 %76 to i32, !dbg !908
  %80 = or i32 %78, %79, !dbg !909
  %81 = and i32 16383, %80, !dbg !910
  %82 = trunc i32 %81 to i16, !dbg !911
  %83 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1, !dbg !912
  %84 = load %struct.list_data_s*, %struct.list_data_s** %83, align 4, !dbg !912, !tbaa !508
  %85 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %84, i32 0, i32 1, !dbg !913
  store i16 %82, i16* %85, align 2, !dbg !914, !tbaa !435
  br label %86

86:                                               ; preds = %72, %66
  %.2 = phi i32 [ %67, %66 ], [ %73, %72 ], !dbg !915
  call void @llvm.dbg.value(metadata i32 %.2, metadata !815, metadata !DIExpression()), !dbg !828
  %87 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0, !dbg !916
  %88 = load %struct.list_head_s*, %struct.list_head_s** %87, align 4, !dbg !916, !tbaa !505
  call void @llvm.dbg.value(metadata %struct.list_head_s* %88, metadata !816, metadata !DIExpression()), !dbg !828
  br label %59, !dbg !889, !llvm.loop !917

89:                                               ; preds = %59
  %90 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %15, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_idx, %struct.RESULTS_S* null), !dbg !919
  call void @llvm.dbg.value(metadata %struct.list_head_s* %90, metadata !817, metadata !DIExpression()), !dbg !828
  %91 = bitcast %struct.list_data_s* %6 to i8*, !dbg !920
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %91) #4, !dbg !920
  %92 = bitcast %struct.list_data_s** %5 to i8*, !dbg !920
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4, !dbg !920
  ret %struct.list_head_s* %90, !dbg !921
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s*, %struct.list_data_s*, %struct.list_head_s**, %struct.list_data_s**, %struct.list_head_s*, %struct.list_data_s*) #0 !dbg !922 {
  call void @llvm.dbg.value(metadata %struct.list_head_s* %0, metadata !928, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata %struct.list_data_s* %1, metadata !929, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata %struct.list_head_s** %2, metadata !930, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata %struct.list_data_s** %3, metadata !931, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata %struct.list_head_s* %4, metadata !932, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata %struct.list_data_s* %5, metadata !933, metadata !DIExpression()), !dbg !935
  %7 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !936, !tbaa !334
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %7, i32 1, !dbg !938
  %9 = icmp uge %struct.list_head_s* %8, %4, !dbg !939
  br i1 %9, label %10, label %11, !dbg !940

10:                                               ; preds = %6
  br label %30, !dbg !941

11:                                               ; preds = %6
  %12 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !942, !tbaa !334
  %13 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %12, i32 1, !dbg !944
  %14 = icmp uge %struct.list_data_s* %13, %5, !dbg !945
  br i1 %14, label %15, label %16, !dbg !946

15:                                               ; preds = %11
  br label %30, !dbg !947

16:                                               ; preds = %11
  %17 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !948, !tbaa !334
  call void @llvm.dbg.value(metadata %struct.list_head_s* %17, metadata !934, metadata !DIExpression()), !dbg !935
  %18 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !949, !tbaa !334
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %18, i32 1, !dbg !949
  store %struct.list_head_s* %19, %struct.list_head_s** %2, align 4, !dbg !949, !tbaa !334
  %20 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !950
  %21 = load %struct.list_head_s*, %struct.list_head_s** %20, align 4, !dbg !950, !tbaa !505
  %22 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 0, !dbg !951
  store %struct.list_head_s* %21, %struct.list_head_s** %22, align 4, !dbg !952, !tbaa !505
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 0, i32 0, !dbg !953
  store %struct.list_head_s* %17, %struct.list_head_s** %23, align 4, !dbg !954, !tbaa !505
  %24 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !955, !tbaa !334
  %25 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 1, !dbg !956
  store %struct.list_data_s* %24, %struct.list_data_s** %25, align 4, !dbg !957, !tbaa !508
  %26 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !958, !tbaa !334
  %27 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %26, i32 1, !dbg !958
  store %struct.list_data_s* %27, %struct.list_data_s** %3, align 4, !dbg !958, !tbaa !334
  %28 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 1, !dbg !959
  %29 = load %struct.list_data_s*, %struct.list_data_s** %28, align 4, !dbg !959, !tbaa !508
  call arm_aapcscc void @copy_info(%struct.list_data_s* %29, %struct.list_data_s* %1), !dbg !960
  br label %30, !dbg !961

30:                                               ; preds = %16, %15, %10
  %.0 = phi %struct.list_head_s* [ null, %10 ], [ null, %15 ], [ %17, %16 ], !dbg !935
  ret %struct.list_head_s* %.0, !dbg !962
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i8* @iterate(i8*) #0 !dbg !963 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !967, metadata !DIExpression()), !dbg !972
  %2 = bitcast i8* %0 to %struct.RESULTS_S*, !dbg !973
  call void @llvm.dbg.value(metadata %struct.RESULTS_S* %2, metadata !970, metadata !DIExpression()), !dbg !972
  %3 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 5, !dbg !974
  %4 = load i32, i32* %3, align 4, !dbg !974, !tbaa !975
  call void @llvm.dbg.value(metadata i32 %4, metadata !971, metadata !DIExpression()), !dbg !972
  %5 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !976
  store i16 0, i16* %5, align 4, !dbg !977, !tbaa !340
  %6 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 10, !dbg !978
  store i16 0, i16* %6, align 2, !dbg !979, !tbaa !980
  %7 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 11, !dbg !981
  store i16 0, i16* %7, align 4, !dbg !982, !tbaa !357
  %8 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 12, !dbg !983
  store i16 0, i16* %8, align 2, !dbg !984, !tbaa !344
  call void @llvm.dbg.value(metadata i32 0, metadata !968, metadata !DIExpression()), !dbg !972
  br label %9, !dbg !985

9:                                                ; preds = %27, %1
  %.0 = phi i32 [ 0, %1 ], [ %28, %27 ], !dbg !987
  call void @llvm.dbg.value(metadata i32 %.0, metadata !968, metadata !DIExpression()), !dbg !972
  %exitcond = icmp ne i32 %.0, %4, !dbg !988
  br i1 %exitcond, label %10, label %29, !dbg !990

10:                                               ; preds = %9
  %11 = call arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S* %2, i16 signext 1), !dbg !991
  call void @llvm.dbg.value(metadata i16 %11, metadata !969, metadata !DIExpression()), !dbg !972
  %12 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !993
  %13 = load i16, i16* %12, align 4, !dbg !993, !tbaa !340
  %14 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %11, i16 zeroext %13), !dbg !994
  %15 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !995
  store i16 %14, i16* %15, align 4, !dbg !996, !tbaa !340
  %16 = call arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S* %2, i16 signext -1), !dbg !997
  call void @llvm.dbg.value(metadata i16 %16, metadata !969, metadata !DIExpression()), !dbg !972
  %17 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !998
  %18 = load i16, i16* %17, align 4, !dbg !998, !tbaa !340
  %19 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %16, i16 zeroext %18), !dbg !999
  %20 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !1000
  store i16 %19, i16* %20, align 4, !dbg !1001, !tbaa !340
  %21 = icmp eq i32 %.0, 0, !dbg !1002
  br i1 %21, label %22, label %._crit_edge, !dbg !1004

._crit_edge:                                      ; preds = %10
  br label %26, !dbg !1004

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 9, !dbg !1005
  %24 = load i16, i16* %23, align 4, !dbg !1005, !tbaa !340
  %25 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %2, i32 0, i32 10, !dbg !1006
  store i16 %24, i16* %25, align 2, !dbg !1007, !tbaa !980
  br label %26, !dbg !1008

26:                                               ; preds = %22, %._crit_edge
  br label %27, !dbg !1009

27:                                               ; preds = %26
  %28 = add i32 %.0, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %28, metadata !968, metadata !DIExpression()), !dbg !972
  br label %9, !dbg !1011, !llvm.loop !1012

29:                                               ; preds = %9
  ret i8* null, !dbg !1014
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @main(i32, i8**) #0 !dbg !1015 {
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.RESULTS_S], align 4
  %5 = alloca [2000 x i8], align 1
  store i32 %0, i32* %3, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1020, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i8** %1, metadata !1021, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 0, metadata !1024, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 -1, metadata !1025, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 0, metadata !1026, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 0, metadata !1027, metadata !DIExpression()), !dbg !1047
  %6 = bitcast [1 x %struct.RESULTS_S]* %4 to i8*, !dbg !1048
  call void @llvm.lifetime.start.p0i8(i64 68, i8* %6) #4, !dbg !1048
  call void @llvm.dbg.declare(metadata [1 x %struct.RESULTS_S]* %4, metadata !1029, metadata !DIExpression()), !dbg !1049
  %7 = bitcast [2000 x i8]* %5 to i8*, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 2000, i8* %7) #4, !dbg !1050
  call void @llvm.dbg.declare(metadata [2000 x i8]* %5, metadata !1033, metadata !DIExpression()), !dbg !1051
  %8 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1052
  %9 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %8, i32 0, i32 14, !dbg !1053
  call arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S* %9, i32* %3, i8** %1), !dbg !1054
  %10 = call arm_aapcscc i32 @get_seed_32(i32 1), !dbg !1055
  %11 = trunc i32 %10 to i16, !dbg !1055
  %12 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1056
  %13 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %12, i32 0, i32 0, !dbg !1057
  store i16 %11, i16* %13, align 4, !dbg !1058, !tbaa !336
  %14 = call arm_aapcscc i32 @get_seed_32(i32 2), !dbg !1059
  %15 = trunc i32 %14 to i16, !dbg !1059
  %16 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1060
  %17 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %16, i32 0, i32 1, !dbg !1061
  store i16 %15, i16* %17, align 2, !dbg !1062, !tbaa !338
  %18 = call arm_aapcscc i32 @get_seed_32(i32 3), !dbg !1063
  %19 = trunc i32 %18 to i16, !dbg !1063
  %20 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1064
  %21 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %20, i32 0, i32 2, !dbg !1065
  store i16 %19, i16* %21, align 4, !dbg !1066, !tbaa !477
  %22 = call arm_aapcscc i32 @get_seed_32(i32 4), !dbg !1067
  %23 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1068
  %24 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %23, i32 0, i32 5, !dbg !1069
  store i32 %22, i32* %24, align 4, !dbg !1070, !tbaa !975
  %25 = call arm_aapcscc i32 @get_seed_32(i32 5), !dbg !1071
  %26 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1072
  %27 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %26, i32 0, i32 6, !dbg !1073
  store i32 %25, i32* %27, align 4, !dbg !1074, !tbaa !1075
  %28 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1076
  %29 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %28, i32 0, i32 6, !dbg !1078
  %30 = load i32, i32* %29, align 4, !dbg !1078, !tbaa !1075
  %31 = icmp eq i32 %30, 0, !dbg !1079
  br i1 %31, label %32, label %._crit_edge, !dbg !1080

._crit_edge:                                      ; preds = %2
  br label %35, !dbg !1080

32:                                               ; preds = %2
  %33 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1081
  %34 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %33, i32 0, i32 6, !dbg !1083
  store i32 7, i32* %34, align 4, !dbg !1084, !tbaa !1075
  br label %35, !dbg !1085

35:                                               ; preds = %32, %._crit_edge
  %36 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1086
  %37 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %36, i32 0, i32 0, !dbg !1088
  %38 = load i16, i16* %37, align 4, !dbg !1088, !tbaa !336
  %39 = sext i16 %38 to i32, !dbg !1086
  %40 = icmp eq i32 %39, 0, !dbg !1089
  br i1 %40, label %41, label %._crit_edge27, !dbg !1090

._crit_edge27:                                    ; preds = %35
  br label %60, !dbg !1090

41:                                               ; preds = %35
  %42 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1091
  %43 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %42, i32 0, i32 1, !dbg !1092
  %44 = load i16, i16* %43, align 2, !dbg !1092, !tbaa !338
  %45 = sext i16 %44 to i32, !dbg !1091
  %46 = icmp eq i32 %45, 0, !dbg !1093
  br i1 %46, label %47, label %._crit_edge28, !dbg !1094

._crit_edge28:                                    ; preds = %41
  br label %60, !dbg !1094

47:                                               ; preds = %41
  %48 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1095
  %49 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %48, i32 0, i32 2, !dbg !1096
  %50 = load i16, i16* %49, align 4, !dbg !1096, !tbaa !477
  %51 = sext i16 %50 to i32, !dbg !1095
  %52 = icmp eq i32 %51, 0, !dbg !1097
  br i1 %52, label %53, label %._crit_edge29, !dbg !1098

._crit_edge29:                                    ; preds = %47
  br label %60, !dbg !1098

53:                                               ; preds = %47
  %54 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1099
  %55 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %54, i32 0, i32 0, !dbg !1101
  store i16 0, i16* %55, align 4, !dbg !1102, !tbaa !336
  %56 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1103
  %57 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %56, i32 0, i32 1, !dbg !1104
  store i16 0, i16* %57, align 2, !dbg !1105, !tbaa !338
  %58 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1106
  %59 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %58, i32 0, i32 2, !dbg !1107
  store i16 102, i16* %59, align 4, !dbg !1108, !tbaa !477
  br label %60, !dbg !1109

60:                                               ; preds = %53, %._crit_edge29, %._crit_edge28, %._crit_edge27
  %61 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1110
  %62 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %61, i32 0, i32 0, !dbg !1112
  %63 = load i16, i16* %62, align 4, !dbg !1112, !tbaa !336
  %64 = sext i16 %63 to i32, !dbg !1110
  %65 = icmp eq i32 %64, 1, !dbg !1113
  br i1 %65, label %66, label %._crit_edge30, !dbg !1114

._crit_edge30:                                    ; preds = %60
  br label %85, !dbg !1114

66:                                               ; preds = %60
  %67 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1115
  %68 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %67, i32 0, i32 1, !dbg !1116
  %69 = load i16, i16* %68, align 2, !dbg !1116, !tbaa !338
  %70 = sext i16 %69 to i32, !dbg !1115
  %71 = icmp eq i32 %70, 0, !dbg !1117
  br i1 %71, label %72, label %._crit_edge31, !dbg !1118

._crit_edge31:                                    ; preds = %66
  br label %85, !dbg !1118

72:                                               ; preds = %66
  %73 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1119
  %74 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %73, i32 0, i32 2, !dbg !1120
  %75 = load i16, i16* %74, align 4, !dbg !1120, !tbaa !477
  %76 = sext i16 %75 to i32, !dbg !1119
  %77 = icmp eq i32 %76, 0, !dbg !1121
  br i1 %77, label %78, label %._crit_edge32, !dbg !1122

._crit_edge32:                                    ; preds = %72
  br label %85, !dbg !1122

78:                                               ; preds = %72
  %79 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1123
  %80 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %79, i32 0, i32 0, !dbg !1125
  store i16 13333, i16* %80, align 4, !dbg !1126, !tbaa !336
  %81 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1127
  %82 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %81, i32 0, i32 1, !dbg !1128
  store i16 13333, i16* %82, align 2, !dbg !1129, !tbaa !338
  %83 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1130
  %84 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %83, i32 0, i32 2, !dbg !1131
  store i16 102, i16* %84, align 4, !dbg !1132, !tbaa !477
  br label %85, !dbg !1133

85:                                               ; preds = %78, %._crit_edge32, %._crit_edge31, %._crit_edge30
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %86, !dbg !1134

86:                                               ; preds = %662, %85
  %indvars.iv11 = phi i32 [ 0, %85 ], [ %indvars.iv.next12.1, %662 ], !dbg !1136, !lws_unroll_2 !652, !lws_unrolled_loop !652
  call void @llvm.dbg.value(metadata i32 %indvars.iv11, metadata !1022, metadata !DIExpression()), !dbg !1047
  br i1 true, label %87, label %120, !dbg !1137

87:                                               ; preds = %86
  %88 = getelementptr inbounds [2000 x i8], [2000 x i8]* %5, i32 0, i32 0, !dbg !1138
  %89 = mul nuw nsw i32 %indvars.iv11, 2, !dbg !1141
  %90 = mul nuw nsw i32 %89, 1000, !dbg !1142
  %91 = getelementptr inbounds i8, i8* %88, i32 %90, !dbg !1143
  %92 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1144
  %93 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %92, i32 0, i32 3, !dbg !1145
  %94 = getelementptr inbounds [4 x i8*], [4 x i8*]* %93, i32 0, i32 0, !dbg !1144
  store i8* %91, i8** %94, align 4, !dbg !1146, !tbaa !334
  %95 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1147
  %96 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %95, i32 0, i32 4, !dbg !1148
  store i32 2000, i32* %96, align 4, !dbg !1149, !tbaa !326
  %97 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1150
  %98 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %97, i32 0, i32 0, !dbg !1151
  %99 = load i16, i16* %98, align 4, !dbg !1151, !tbaa !336
  %100 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1152
  %101 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %100, i32 0, i32 0, !dbg !1153
  store i16 %99, i16* %101, align 4, !dbg !1154, !tbaa !336
  %102 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1155
  %103 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %102, i32 0, i32 1, !dbg !1156
  %104 = load i16, i16* %103, align 2, !dbg !1156, !tbaa !338
  %105 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1157
  %106 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %105, i32 0, i32 1, !dbg !1158
  store i16 %104, i16* %106, align 2, !dbg !1159, !tbaa !338
  %107 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1160
  %108 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %107, i32 0, i32 2, !dbg !1161
  %109 = load i16, i16* %108, align 4, !dbg !1161, !tbaa !477
  %110 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1162
  %111 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %110, i32 0, i32 2, !dbg !1163
  store i16 %109, i16* %111, align 4, !dbg !1164, !tbaa !477
  %112 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1165
  %113 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %112, i32 0, i32 13, !dbg !1166
  store i16 0, i16* %113, align 4, !dbg !1167, !tbaa !1168
  %114 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1169
  %115 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %114, i32 0, i32 6, !dbg !1170
  %116 = load i32, i32* %115, align 4, !dbg !1170, !tbaa !1075
  %117 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv11, !dbg !1171
  %118 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %117, i32 0, i32 6, !dbg !1172
  store i32 %116, i32* %118, align 4, !dbg !1173, !tbaa !1075
  br label %119, !dbg !1174

119:                                              ; preds = %87
  %indvars.iv.next12 = add nuw nsw i32 %indvars.iv11, 1, !dbg !1175
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  call void @llvm.dbg.value(metadata i32 %indvars.iv.next12, metadata !1022, metadata !DIExpression()), !dbg !1047
  %exitcond13.1 = icmp ne i32 %indvars.iv.next12, 1, !dbg !1176
  br i1 %exitcond13.1, label %630, label %120, !dbg !1137

120:                                              ; preds = %119, %86
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %121, !dbg !1177

121:                                              ; preds = %132, %120
  %indvars.iv8 = phi i32 [ %indvars.iv.next9, %132 ], [ 0, %120 ], !dbg !1047
  %.05 = phi i16 [ 0, %120 ], [ %.16, %132 ], !dbg !1047
  call void @llvm.dbg.value(metadata i32 %indvars.iv8, metadata !1022, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.05, metadata !1024, metadata !DIExpression()), !dbg !1047
  %exitcond10 = icmp ne i32 %indvars.iv8, 3, !dbg !1179
  br i1 %exitcond10, label %122, label %133, !dbg !1181

122:                                              ; preds = %121
  %123 = shl i32 1, %indvars.iv8, !dbg !1182
  %124 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1185
  %125 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %124, i32 0, i32 6, !dbg !1186
  %126 = load i32, i32* %125, align 4, !dbg !1186, !tbaa !1075
  %127 = and i32 %123, %126, !dbg !1187
  %128 = icmp ne i32 %127, 0, !dbg !1187
  br i1 %128, label %129, label %._crit_edge33, !dbg !1188

._crit_edge33:                                    ; preds = %122
  br label %131, !dbg !1188

129:                                              ; preds = %122
  %130 = add i16 %.05, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i16 %130, metadata !1024, metadata !DIExpression()), !dbg !1047
  br label %131, !dbg !1190

131:                                              ; preds = %129, %._crit_edge33
  %.16 = phi i16 [ %130, %129 ], [ %.05, %._crit_edge33 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.16, metadata !1024, metadata !DIExpression()), !dbg !1047
  br label %132, !dbg !1191

132:                                              ; preds = %131
  %indvars.iv.next9 = add nuw nsw i32 %indvars.iv8, 1, !dbg !1192
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %121, !dbg !1193, !llvm.loop !1194

133:                                              ; preds = %121
  %.05.lcssa = phi i16 [ %.05, %121 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.05.lcssa, metadata !1024, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %134, !dbg !1196

134:                                              ; preds = %671, %133
  %indvars.iv5 = phi i32 [ 0, %133 ], [ %indvars.iv.next6.1, %671 ], !dbg !1198, !lws_unroll_2 !652, !lws_unrolled_loop !652
  call void @llvm.dbg.value(metadata i32 %indvars.iv5, metadata !1022, metadata !DIExpression()), !dbg !1047
  br i1 true, label %135, label %144, !dbg !1199

135:                                              ; preds = %134
  %136 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv5, !dbg !1200
  %137 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %136, i32 0, i32 4, !dbg !1202
  %138 = load i32, i32* %137, align 4, !dbg !1202, !tbaa !326
  %139 = zext i16 %.05.lcssa to i32, !dbg !1203
  %140 = udiv i32 %138, %139, !dbg !1204
  %141 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv5, !dbg !1205
  %142 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %141, i32 0, i32 4, !dbg !1206
  store i32 %140, i32* %142, align 4, !dbg !1207, !tbaa !326
  br label %143, !dbg !1205

143:                                              ; preds = %135
  %indvars.iv.next6 = add nuw nsw i32 %indvars.iv5, 1, !dbg !1208
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  call void @llvm.dbg.value(metadata i32 %indvars.iv.next6, metadata !1022, metadata !DIExpression()), !dbg !1047
  %exitcond7.1 = icmp ne i32 %indvars.iv.next6, 1, !dbg !1209
  br i1 %exitcond7.1, label %663, label %144, !dbg !1199

144:                                              ; preds = %143, %134
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %145, !dbg !1210

145:                                              ; preds = %175, %144
  %indvars.iv2 = phi i32 [ %indvars.iv.next3, %175 ], [ 0, %144 ], !dbg !1047
  %.03 = phi i16 [ 0, %144 ], [ %.14, %175 ], !dbg !1047
  call void @llvm.dbg.value(metadata i32 %indvars.iv2, metadata !1022, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.03, metadata !1023, metadata !DIExpression()), !dbg !1047
  %exitcond4 = icmp ne i32 %indvars.iv2, 3, !dbg !1211
  br i1 %exitcond4, label %146, label %176, !dbg !1212

146:                                              ; preds = %145
  %147 = shl i32 1, %indvars.iv2, !dbg !1213
  %148 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1215
  %149 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %148, i32 0, i32 6, !dbg !1216
  %150 = load i32, i32* %149, align 4, !dbg !1216, !tbaa !1075
  %151 = and i32 %147, %150, !dbg !1217
  %152 = icmp ne i32 %151, 0, !dbg !1217
  br i1 %152, label %153, label %._crit_edge34, !dbg !1218

._crit_edge34:                                    ; preds = %146
  br label %174, !dbg !1218

153:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i32 0, metadata !1037, metadata !DIExpression()), !dbg !1219
  br label %154, !dbg !1220

154:                                              ; preds = %170, %153
  %.012 = phi i32 [ 0, %153 ], [ %171, %170 ], !dbg !1223
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1037, metadata !DIExpression()), !dbg !1219
  %exitcond = icmp ne i32 %.012, 1, !dbg !1224
  br i1 %exitcond, label %155, label %172, !dbg !1226

155:                                              ; preds = %154
  %156 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1227
  %157 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %156, i32 0, i32 3, !dbg !1228
  %158 = getelementptr inbounds [4 x i8*], [4 x i8*]* %157, i32 0, i32 0, !dbg !1227
  %159 = load i8*, i8** %158, align 4, !dbg !1227, !tbaa !334
  %160 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1229
  %161 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %160, i32 0, i32 4, !dbg !1230
  %162 = load i32, i32* %161, align 4, !dbg !1230, !tbaa !326
  %163 = zext i16 %.03 to i32, !dbg !1231
  %164 = mul i32 %162, %163, !dbg !1232
  %165 = getelementptr inbounds i8, i8* %159, i32 %164, !dbg !1233
  %166 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1234
  %167 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %166, i32 0, i32 3, !dbg !1235
  %168 = add nuw nsw i32 %indvars.iv2, 1, !dbg !1236
  %169 = getelementptr inbounds [4 x i8*], [4 x i8*]* %167, i32 0, i32 %168, !dbg !1234
  store i8* %165, i8** %169, align 4, !dbg !1237, !tbaa !334
  br label %170, !dbg !1234

170:                                              ; preds = %155
  %171 = add nuw nsw i32 %.012, 1, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %171, metadata !1037, metadata !DIExpression()), !dbg !1219
  br label %154, !dbg !1239, !llvm.loop !1240

172:                                              ; preds = %154
  %173 = add i16 %.03, 1, !dbg !1242
  call void @llvm.dbg.value(metadata i16 %173, metadata !1023, metadata !DIExpression()), !dbg !1047
  br label %174, !dbg !1243

174:                                              ; preds = %172, %._crit_edge34
  %.14 = phi i16 [ %173, %172 ], [ %.03, %._crit_edge34 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.14, metadata !1023, metadata !DIExpression()), !dbg !1047
  br label %175, !dbg !1244

175:                                              ; preds = %174
  %indvars.iv.next3 = add nuw nsw i32 %indvars.iv2, 1, !dbg !1245
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %145, !dbg !1246, !llvm.loop !1247

176:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %177, !dbg !1249

177:                                              ; preds = %244, %176
  %indvars.iv = phi i32 [ %indvars.iv.next, %244 ], [ 0, %176 ], !dbg !1251
  call void @llvm.dbg.value(metadata i32 %indvars.iv, metadata !1022, metadata !DIExpression()), !dbg !1047
  %exitcond1 = icmp ne i32 %indvars.iv, 1, !dbg !1252
  br i1 %exitcond1, label %178, label %245, !dbg !1254

178:                                              ; preds = %177
  %179 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1255
  %180 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %179, i32 0, i32 6, !dbg !1258
  %181 = load i32, i32* %180, align 4, !dbg !1258, !tbaa !1075
  %182 = and i32 %181, 1, !dbg !1259
  %183 = icmp ne i32 %182, 0, !dbg !1259
  br i1 %183, label %184, label %._crit_edge35, !dbg !1260

._crit_edge35:                                    ; preds = %178
  br label %199, !dbg !1260

184:                                              ; preds = %178
  %185 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1261
  %186 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %185, i32 0, i32 4, !dbg !1263
  %187 = load i32, i32* %186, align 4, !dbg !1263, !tbaa !326
  %188 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1264
  %189 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %188, i32 0, i32 3, !dbg !1265
  %190 = getelementptr inbounds [4 x i8*], [4 x i8*]* %189, i32 0, i32 1, !dbg !1264
  %191 = load i8*, i8** %190, align 4, !dbg !1264, !tbaa !334
  %192 = bitcast i8* %191 to %struct.list_head_s*, !dbg !1264
  %193 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1266
  %194 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %193, i32 0, i32 0, !dbg !1267
  %195 = load i16, i16* %194, align 4, !dbg !1267, !tbaa !336
  %196 = call arm_aapcscc %struct.list_head_s* @core_list_init(i32 %187, %struct.list_head_s* %192, i16 signext %195), !dbg !1268
  %197 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1269
  %198 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %197, i32 0, i32 7, !dbg !1270
  store %struct.list_head_s* %196, %struct.list_head_s** %198, align 4, !dbg !1271, !tbaa !475
  br label %199, !dbg !1272

199:                                              ; preds = %184, %._crit_edge35
  %200 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1273
  %201 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %200, i32 0, i32 6, !dbg !1275
  %202 = load i32, i32* %201, align 4, !dbg !1275, !tbaa !1075
  %203 = and i32 %202, 2, !dbg !1276
  %204 = icmp ne i32 %203, 0, !dbg !1276
  br i1 %204, label %205, label %._crit_edge36, !dbg !1277

._crit_edge36:                                    ; preds = %199
  br label %226, !dbg !1277

205:                                              ; preds = %199
  %206 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1278
  %207 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %206, i32 0, i32 4, !dbg !1280
  %208 = load i32, i32* %207, align 4, !dbg !1280, !tbaa !326
  %209 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1281
  %210 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %209, i32 0, i32 3, !dbg !1282
  %211 = getelementptr inbounds [4 x i8*], [4 x i8*]* %210, i32 0, i32 2, !dbg !1281
  %212 = load i8*, i8** %211, align 4, !dbg !1281, !tbaa !334
  %213 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1283
  %214 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %213, i32 0, i32 0, !dbg !1284
  %215 = load i16, i16* %214, align 4, !dbg !1284, !tbaa !336
  %216 = sext i16 %215 to i32, !dbg !1285
  %217 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1286
  %218 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %217, i32 0, i32 1, !dbg !1287
  %219 = load i16, i16* %218, align 2, !dbg !1287, !tbaa !338
  %220 = sext i16 %219 to i32, !dbg !1288
  %221 = shl i32 %220, 16, !dbg !1289
  %222 = or i32 %216, %221, !dbg !1290
  %223 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1291
  %224 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %223, i32 0, i32 8, !dbg !1292
  %225 = call arm_aapcscc i32 @core_init_matrix(i32 %208, i8* %212, i32 %222, %struct.MAT_PARAMS_S* %224), !dbg !1293
  br label %226, !dbg !1294

226:                                              ; preds = %205, %._crit_edge36
  %227 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1295
  %228 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %227, i32 0, i32 6, !dbg !1297
  %229 = load i32, i32* %228, align 4, !dbg !1297, !tbaa !1075
  %230 = and i32 %229, 4, !dbg !1298
  %231 = icmp ne i32 %230, 0, !dbg !1298
  br i1 %231, label %232, label %._crit_edge37, !dbg !1299

._crit_edge37:                                    ; preds = %226
  br label %243, !dbg !1299

232:                                              ; preds = %226
  %233 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1300
  %234 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %233, i32 0, i32 4, !dbg !1302
  %235 = load i32, i32* %234, align 4, !dbg !1302, !tbaa !326
  %236 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1303
  %237 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %236, i32 0, i32 0, !dbg !1304
  %238 = load i16, i16* %237, align 4, !dbg !1304, !tbaa !336
  %239 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1305
  %240 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %239, i32 0, i32 3, !dbg !1306
  %241 = getelementptr inbounds [4 x i8*], [4 x i8*]* %240, i32 0, i32 3, !dbg !1305
  %242 = load i8*, i8** %241, align 4, !dbg !1305, !tbaa !334
  call arm_aapcscc void @core_init_state(i32 %235, i16 signext %238, i8* %242), !dbg !1307
  br label %243, !dbg !1308

243:                                              ; preds = %232, %._crit_edge37
  br label %244, !dbg !1309

244:                                              ; preds = %243
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %177, !dbg !1311, !llvm.loop !1312

245:                                              ; preds = %177
  %246 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1314
  %247 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %246, i32 0, i32 5, !dbg !1315
  %248 = load i32, i32* %247, align 4, !dbg !1315, !tbaa !975
  %249 = icmp eq i32 %248, 0, !dbg !1316
  br i1 %249, label %250, label %._crit_edge38, !dbg !1317

._crit_edge38:                                    ; preds = %245
  br label %276, !dbg !1317

250:                                              ; preds = %245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1041, metadata !DIExpression()), !dbg !1318
  %251 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1319
  %252 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %251, i32 0, i32 5, !dbg !1320
  store i32 1, i32* %252, align 4, !dbg !1321, !tbaa !975
  br label %253, !dbg !1322

253:                                              ; preds = %255, %250
  %.01 = phi double [ 0.000000e+00, %250 ], [ %264, %255 ], !dbg !1318
  call void @llvm.dbg.value(metadata double %.01, metadata !1041, metadata !DIExpression()), !dbg !1318
  %254 = fcmp olt double %.01, 1.000000e+00, !dbg !1323
  br i1 %254, label %255, label %265, !dbg !1322

255:                                              ; preds = %253
  %256 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1324
  %257 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %256, i32 0, i32 5, !dbg !1326
  %258 = load i32, i32* %257, align 4, !dbg !1327, !tbaa !975
  %259 = mul i32 %258, 10, !dbg !1327
  store i32 %259, i32* %257, align 4, !dbg !1327, !tbaa !975
  call arm_aapcscc void @start_time(), !dbg !1328
  %260 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1329
  %261 = bitcast %struct.RESULTS_S* %260 to i8*, !dbg !1330
  %262 = call arm_aapcscc i8* @iterate(i8* %261), !dbg !1331
  call arm_aapcscc void @stop_time(), !dbg !1332
  %263 = call arm_aapcscc i32 @get_time(), !dbg !1333
  %264 = call arm_aapcscc double @time_in_secs(i32 %263), !dbg !1334
  call void @llvm.dbg.value(metadata double %264, metadata !1041, metadata !DIExpression()), !dbg !1318
  br label %253, !dbg !1322, !llvm.loop !1335

265:                                              ; preds = %253
  %.01.lcssa = phi double [ %.01, %253 ], !dbg !1318
  call void @llvm.dbg.value(metadata double %.01.lcssa, metadata !1041, metadata !DIExpression()), !dbg !1318
  %266 = fptoui double %.01.lcssa to i32, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %266, metadata !1044, metadata !DIExpression()), !dbg !1318
  %267 = icmp eq i32 %266, 0, !dbg !1338
  br i1 %267, label %268, label %._crit_edge39, !dbg !1340

._crit_edge39:                                    ; preds = %265
  br label %269, !dbg !1340

268:                                              ; preds = %265
  call void @llvm.dbg.value(metadata i32 1, metadata !1044, metadata !DIExpression()), !dbg !1318
  br label %269, !dbg !1341

269:                                              ; preds = %268, %._crit_edge39
  %.0 = phi i32 [ 1, %268 ], [ %266, %._crit_edge39 ], !dbg !1318
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1044, metadata !DIExpression()), !dbg !1318
  %270 = udiv i32 10, %.0, !dbg !1342
  %271 = add i32 1, %270, !dbg !1343
  %272 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1344
  %273 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %272, i32 0, i32 5, !dbg !1345
  %274 = load i32, i32* %273, align 4, !dbg !1346, !tbaa !975
  %275 = mul i32 %274, %271, !dbg !1346
  store i32 %275, i32* %273, align 4, !dbg !1346, !tbaa !975
  br label %276, !dbg !1347

276:                                              ; preds = %269, %._crit_edge38
  call arm_aapcscc void @start_time(), !dbg !1348
  %277 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1349
  %278 = bitcast %struct.RESULTS_S* %277 to i8*, !dbg !1350
  %279 = call arm_aapcscc i8* @iterate(i8* %278), !dbg !1351
  call arm_aapcscc void @stop_time(), !dbg !1352
  %280 = call arm_aapcscc i32 @get_time(), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %280, metadata !1028, metadata !DIExpression()), !dbg !1047
  %281 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1354
  %282 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %281, i32 0, i32 0, !dbg !1355
  %283 = load i16, i16* %282, align 4, !dbg !1355, !tbaa !336
  %284 = call arm_aapcscc zeroext i16 @crc16(i16 signext %283, i16 zeroext 0), !dbg !1356
  call void @llvm.dbg.value(metadata i16 %284, metadata !1027, metadata !DIExpression()), !dbg !1047
  %285 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1357
  %286 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %285, i32 0, i32 1, !dbg !1358
  %287 = load i16, i16* %286, align 2, !dbg !1358, !tbaa !338
  %288 = call arm_aapcscc zeroext i16 @crc16(i16 signext %287, i16 zeroext %284), !dbg !1359
  call void @llvm.dbg.value(metadata i16 %288, metadata !1027, metadata !DIExpression()), !dbg !1047
  %289 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1360
  %290 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %289, i32 0, i32 2, !dbg !1361
  %291 = load i16, i16* %290, align 4, !dbg !1361, !tbaa !477
  %292 = call arm_aapcscc zeroext i16 @crc16(i16 signext %291, i16 zeroext %288), !dbg !1362
  call void @llvm.dbg.value(metadata i16 %292, metadata !1027, metadata !DIExpression()), !dbg !1047
  %293 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1363
  %294 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %293, i32 0, i32 4, !dbg !1364
  %295 = load i32, i32* %294, align 4, !dbg !1364, !tbaa !326
  %296 = trunc i32 %295 to i16, !dbg !1363
  %297 = call arm_aapcscc zeroext i16 @crc16(i16 signext %296, i16 zeroext %292), !dbg !1365
  call void @llvm.dbg.value(metadata i16 %297, metadata !1027, metadata !DIExpression()), !dbg !1047
  %298 = zext i16 %297 to i32, !dbg !1366
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
  call void @llvm.dbg.value(metadata i16 0, metadata !1025, metadata !DIExpression()), !dbg !1047
  %300 = getelementptr [45 x i8], [45 x i8]* @.str.3, i32 0, i32 0
  %301 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %300), !dbg !1367
  br label %315, !dbg !1369

302:                                              ; preds = %LeafBlock15
  call void @llvm.dbg.value(metadata i16 1, metadata !1025, metadata !DIExpression()), !dbg !1047
  %303 = getelementptr [44 x i8], [44 x i8]* @.str.4, i32 0, i32 0
  %304 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %303), !dbg !1370
  br label %315, !dbg !1371

305:                                              ; preds = %LeafBlock13
  call void @llvm.dbg.value(metadata i16 2, metadata !1025, metadata !DIExpression()), !dbg !1047
  %306 = getelementptr [49 x i8], [49 x i8]* @.str.5, i32 0, i32 0
  %307 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %306), !dbg !1372
  br label %315, !dbg !1373

308:                                              ; preds = %LeafBlock19
  call void @llvm.dbg.value(metadata i16 3, metadata !1025, metadata !DIExpression()), !dbg !1047
  %309 = getelementptr [45 x i8], [45 x i8]* @.str.6, i32 0, i32 0
  %310 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %309), !dbg !1374
  br label %315, !dbg !1375

311:                                              ; preds = %LeafBlock
  call void @llvm.dbg.value(metadata i16 4, metadata !1025, metadata !DIExpression()), !dbg !1047
  %312 = getelementptr [44 x i8], [44 x i8]* @.str.7, i32 0, i32 0
  %313 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %312), !dbg !1376
  br label %315, !dbg !1377

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock13.NewDefault_crit_edge, %LeafBlock15.NewDefault_crit_edge, %LeafBlock17.NewDefault_crit_edge, %LeafBlock19.NewDefault_crit_edge
  br label %314

314:                                              ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i16 -1, metadata !1026, metadata !DIExpression()), !dbg !1047
  br label %315, !dbg !1378

315:                                              ; preds = %314, %311, %308, %305, %302, %299
  %.08 = phi i16 [ -1, %314 ], [ 0, %311 ], [ 0, %308 ], [ 0, %305 ], [ 0, %302 ], [ 0, %299 ], !dbg !1047
  %.07 = phi i16 [ -1, %314 ], [ 4, %311 ], [ 3, %308 ], [ 2, %305 ], [ 1, %302 ], [ 0, %299 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.07, metadata !1025, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.08, metadata !1026, metadata !DIExpression()), !dbg !1047
  %316 = sext i16 %.07 to i32, !dbg !1379
  %317 = icmp sge i32 %316, 0, !dbg !1381
  br i1 %317, label %318, label %._crit_edge40, !dbg !1382

._crit_edge40:                                    ; preds = %315
  br label %446, !dbg !1382

318:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %319, !dbg !1383

319:                                              ; preds = %443, %318
  %.19 = phi i16 [ %.08, %318 ], [ %442, %443 ], !dbg !1047
  %.5 = phi i16 [ 0, %318 ], [ %444, %443 ], !dbg !1386
  call void @llvm.dbg.value(metadata i16 %.5, metadata !1022, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.19, metadata !1026, metadata !DIExpression()), !dbg !1047
  %320 = zext i16 %.5 to i32, !dbg !1387
  %321 = load i32, i32* @default_num_contexts, align 4, !dbg !1389, !tbaa !1045
  %322 = icmp ult i32 %320, %321, !dbg !1390
  br i1 %322, label %323, label %445, !dbg !1391

323:                                              ; preds = %319
  %324 = zext i16 %.5 to i32, !dbg !1392
  %325 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %324, !dbg !1392
  %326 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %325, i32 0, i32 13, !dbg !1394
  store i16 0, i16* %326, align 4, !dbg !1395, !tbaa !1168
  %327 = zext i16 %.5 to i32, !dbg !1396
  %328 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %327, !dbg !1396
  %329 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %328, i32 0, i32 6, !dbg !1398
  %330 = load i32, i32* %329, align 4, !dbg !1398, !tbaa !1075
  %331 = and i32 %330, 1, !dbg !1399
  %332 = icmp ne i32 %331, 0, !dbg !1399
  br i1 %332, label %333, label %._crit_edge41, !dbg !1400

._crit_edge41:                                    ; preds = %323
  br label %362, !dbg !1400

333:                                              ; preds = %323
  %334 = zext i16 %.5 to i32, !dbg !1401
  %335 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %334, !dbg !1401
  %336 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %335, i32 0, i32 10, !dbg !1402
  %337 = load i16, i16* %336, align 2, !dbg !1402, !tbaa !980
  %338 = zext i16 %337 to i32, !dbg !1401
  %339 = sext i16 %.07 to i32, !dbg !1403
  %340 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %339, !dbg !1403
  %341 = load i16, i16* %340, align 2, !dbg !1403, !tbaa !294
  %342 = zext i16 %341 to i32, !dbg !1403
  %343 = icmp ne i32 %338, %342, !dbg !1404
  br i1 %343, label %344, label %._crit_edge42, !dbg !1405

._crit_edge42:                                    ; preds = %333
  br label %362, !dbg !1405

344:                                              ; preds = %333
  %345 = zext i16 %.5 to i32, !dbg !1406
  %346 = zext i16 %.5 to i32, !dbg !1408
  %347 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %346, !dbg !1408
  %348 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %347, i32 0, i32 10, !dbg !1409
  %349 = load i16, i16* %348, align 2, !dbg !1409, !tbaa !980
  %350 = zext i16 %349 to i32, !dbg !1408
  %351 = sext i16 %.07 to i32, !dbg !1410
  %352 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %351, !dbg !1410
  %353 = load i16, i16* %352, align 2, !dbg !1410, !tbaa !294
  %354 = zext i16 %353 to i32, !dbg !1410
  %355 = getelementptr [47 x i8], [47 x i8]* @.str.8, i32 0, i32 0
  %356 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %355, i32 %345, i32 %350, i32 %354), !dbg !1411
  %357 = zext i16 %.5 to i32, !dbg !1412
  %358 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %357, !dbg !1412
  %359 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %358, i32 0, i32 13, !dbg !1413
  %360 = load i16, i16* %359, align 4, !dbg !1414, !tbaa !1168
  %361 = add i16 %360, 1, !dbg !1414
  store i16 %361, i16* %359, align 4, !dbg !1414, !tbaa !1168
  br label %362, !dbg !1415

362:                                              ; preds = %344, %._crit_edge42, %._crit_edge41
  %363 = zext i16 %.5 to i32, !dbg !1416
  %364 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %363, !dbg !1416
  %365 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %364, i32 0, i32 6, !dbg !1418
  %366 = load i32, i32* %365, align 4, !dbg !1418, !tbaa !1075
  %367 = and i32 %366, 2, !dbg !1419
  %368 = icmp ne i32 %367, 0, !dbg !1419
  br i1 %368, label %369, label %._crit_edge43, !dbg !1420

._crit_edge43:                                    ; preds = %362
  br label %398, !dbg !1420

369:                                              ; preds = %362
  %370 = zext i16 %.5 to i32, !dbg !1421
  %371 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %370, !dbg !1421
  %372 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %371, i32 0, i32 11, !dbg !1422
  %373 = load i16, i16* %372, align 4, !dbg !1422, !tbaa !357
  %374 = zext i16 %373 to i32, !dbg !1421
  %375 = sext i16 %.07 to i32, !dbg !1423
  %376 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %375, !dbg !1423
  %377 = load i16, i16* %376, align 2, !dbg !1423, !tbaa !294
  %378 = zext i16 %377 to i32, !dbg !1423
  %379 = icmp ne i32 %374, %378, !dbg !1424
  br i1 %379, label %380, label %._crit_edge44, !dbg !1425

._crit_edge44:                                    ; preds = %369
  br label %398, !dbg !1425

380:                                              ; preds = %369
  %381 = zext i16 %.5 to i32, !dbg !1426
  %382 = zext i16 %.5 to i32, !dbg !1428
  %383 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %382, !dbg !1428
  %384 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %383, i32 0, i32 11, !dbg !1429
  %385 = load i16, i16* %384, align 4, !dbg !1429, !tbaa !357
  %386 = zext i16 %385 to i32, !dbg !1428
  %387 = sext i16 %.07 to i32, !dbg !1430
  %388 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %387, !dbg !1430
  %389 = load i16, i16* %388, align 2, !dbg !1430, !tbaa !294
  %390 = zext i16 %389 to i32, !dbg !1430
  %391 = getelementptr [49 x i8], [49 x i8]* @.str.9, i32 0, i32 0
  %392 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %391, i32 %381, i32 %386, i32 %390), !dbg !1431
  %393 = zext i16 %.5 to i32, !dbg !1432
  %394 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %393, !dbg !1432
  %395 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %394, i32 0, i32 13, !dbg !1433
  %396 = load i16, i16* %395, align 4, !dbg !1434, !tbaa !1168
  %397 = add i16 %396, 1, !dbg !1434
  store i16 %397, i16* %395, align 4, !dbg !1434, !tbaa !1168
  br label %398, !dbg !1435

398:                                              ; preds = %380, %._crit_edge44, %._crit_edge43
  %399 = zext i16 %.5 to i32, !dbg !1436
  %400 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %399, !dbg !1436
  %401 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %400, i32 0, i32 6, !dbg !1438
  %402 = load i32, i32* %401, align 4, !dbg !1438, !tbaa !1075
  %403 = and i32 %402, 4, !dbg !1439
  %404 = icmp ne i32 %403, 0, !dbg !1439
  br i1 %404, label %405, label %._crit_edge45, !dbg !1440

._crit_edge45:                                    ; preds = %398
  br label %434, !dbg !1440

405:                                              ; preds = %398
  %406 = zext i16 %.5 to i32, !dbg !1441
  %407 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %406, !dbg !1441
  %408 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %407, i32 0, i32 12, !dbg !1442
  %409 = load i16, i16* %408, align 2, !dbg !1442, !tbaa !344
  %410 = zext i16 %409 to i32, !dbg !1441
  %411 = sext i16 %.07 to i32, !dbg !1443
  %412 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %411, !dbg !1443
  %413 = load i16, i16* %412, align 2, !dbg !1443, !tbaa !294
  %414 = zext i16 %413 to i32, !dbg !1443
  %415 = icmp ne i32 %410, %414, !dbg !1444
  br i1 %415, label %416, label %._crit_edge46, !dbg !1445

._crit_edge46:                                    ; preds = %405
  br label %434, !dbg !1445

416:                                              ; preds = %405
  %417 = zext i16 %.5 to i32, !dbg !1446
  %418 = zext i16 %.5 to i32, !dbg !1448
  %419 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %418, !dbg !1448
  %420 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %419, i32 0, i32 12, !dbg !1449
  %421 = load i16, i16* %420, align 2, !dbg !1449, !tbaa !344
  %422 = zext i16 %421 to i32, !dbg !1448
  %423 = sext i16 %.07 to i32, !dbg !1450
  %424 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %423, !dbg !1450
  %425 = load i16, i16* %424, align 2, !dbg !1450, !tbaa !294
  %426 = zext i16 %425 to i32, !dbg !1450
  %427 = getelementptr [48 x i8], [48 x i8]* @.str.10, i32 0, i32 0
  %428 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %427, i32 %417, i32 %422, i32 %426), !dbg !1451
  %429 = zext i16 %.5 to i32, !dbg !1452
  %430 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %429, !dbg !1452
  %431 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %430, i32 0, i32 13, !dbg !1453
  %432 = load i16, i16* %431, align 4, !dbg !1454, !tbaa !1168
  %433 = add i16 %432, 1, !dbg !1454
  store i16 %433, i16* %431, align 4, !dbg !1454, !tbaa !1168
  br label %434, !dbg !1455

434:                                              ; preds = %416, %._crit_edge46, %._crit_edge45
  %435 = zext i16 %.5 to i32, !dbg !1456
  %436 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %435, !dbg !1456
  %437 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %436, i32 0, i32 13, !dbg !1457
  %438 = load i16, i16* %437, align 4, !dbg !1457, !tbaa !1168
  %439 = sext i16 %438 to i32, !dbg !1456
  %440 = sext i16 %.19 to i32, !dbg !1458
  %441 = add nsw i32 %440, %439, !dbg !1458
  %442 = trunc i32 %441 to i16, !dbg !1458
  call void @llvm.dbg.value(metadata i16 %442, metadata !1026, metadata !DIExpression()), !dbg !1047
  br label %443, !dbg !1459

443:                                              ; preds = %434
  %444 = add i16 %.5, 1, !dbg !1460
  call void @llvm.dbg.value(metadata i16 %444, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %319, !dbg !1461, !llvm.loop !1462

445:                                              ; preds = %319
  %.19.lcssa = phi i16 [ %.19, %319 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.19.lcssa, metadata !1026, metadata !DIExpression()), !dbg !1047
  br label %446, !dbg !1464

446:                                              ; preds = %445, %._crit_edge40
  %.210 = phi i16 [ %.19.lcssa, %445 ], [ %.08, %._crit_edge40 ], !dbg !1465
  call void @llvm.dbg.value(metadata i16 %.210, metadata !1026, metadata !DIExpression()), !dbg !1047
  %447 = call arm_aapcscc zeroext i8 @check_data_types(), !dbg !1466
  %448 = zext i8 %447 to i32, !dbg !1466
  %449 = sext i16 %.210 to i32, !dbg !1467
  %450 = add nsw i32 %449, %448, !dbg !1467
  %451 = trunc i32 %450 to i16, !dbg !1467
  call void @llvm.dbg.value(metadata i16 %451, metadata !1026, metadata !DIExpression()), !dbg !1047
  %452 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1468
  %453 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %452, i32 0, i32 4, !dbg !1469
  %454 = load i32, i32* %453, align 4, !dbg !1469, !tbaa !326
  %455 = getelementptr [24 x i8], [24 x i8]* @.str.11, i32 0, i32 0
  %456 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %455, i32 %454), !dbg !1470
  %457 = getelementptr [24 x i8], [24 x i8]* @.str.12, i32 0, i32 0
  %458 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %457, i32 %280), !dbg !1471
  %459 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1472
  %460 = getelementptr [23 x i8], [23 x i8]* @.str.13, i32 0, i32 0
  %461 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %460, double %459), !dbg !1473
  %462 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1474
  %463 = fcmp ogt double %462, 0.000000e+00, !dbg !1476
  br i1 %463, label %464, label %._crit_edge47, !dbg !1477

._crit_edge47:                                    ; preds = %446
  br label %475, !dbg !1477

464:                                              ; preds = %446
  %465 = load i32, i32* @default_num_contexts, align 4, !dbg !1478, !tbaa !1045
  %466 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1479
  %467 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %466, i32 0, i32 5, !dbg !1480
  %468 = load i32, i32* %467, align 4, !dbg !1480, !tbaa !975
  %469 = mul i32 %465, %468, !dbg !1481
  %470 = uitofp i32 %469 to double, !dbg !1478
  %471 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1482
  %472 = fdiv double %470, %471, !dbg !1483
  %473 = getelementptr [23 x i8], [23 x i8]* @.str.14, i32 0, i32 0
  %474 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %473, double %472), !dbg !1484
  br label %475, !dbg !1484

475:                                              ; preds = %464, %._crit_edge47
  %476 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1485
  %477 = fcmp olt double %476, 1.000000e+01, !dbg !1487
  br i1 %477, label %478, label %._crit_edge48, !dbg !1488

._crit_edge48:                                    ; preds = %475
  br label %482, !dbg !1488

478:                                              ; preds = %475
  %479 = getelementptr [62 x i8], [62 x i8]* @.str.15, i32 0, i32 0
  %480 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %479), !dbg !1489
  %481 = add i16 %451, 1, !dbg !1491
  call void @llvm.dbg.value(metadata i16 %481, metadata !1026, metadata !DIExpression()), !dbg !1047
  br label %482, !dbg !1492

482:                                              ; preds = %478, %._crit_edge48
  %.311 = phi i16 [ %481, %478 ], [ %451, %._crit_edge48 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.311, metadata !1026, metadata !DIExpression()), !dbg !1047
  %483 = load i32, i32* @default_num_contexts, align 4, !dbg !1493, !tbaa !1045
  %484 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1494
  %485 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %484, i32 0, i32 5, !dbg !1495
  %486 = load i32, i32* %485, align 4, !dbg !1495, !tbaa !975
  %487 = mul i32 %483, %486, !dbg !1496
  %488 = getelementptr [24 x i8], [24 x i8]* @.str.16, i32 0, i32 0
  %489 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %488, i32 %487), !dbg !1497
  %490 = getelementptr [23 x i8], [23 x i8]* @.str.17, i32 0, i32 0
  %491 = getelementptr [116 x i8], [116 x i8]* @.str.18, i32 0, i32 0
  %492 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %490, i8* %491), !dbg !1498
  %493 = getelementptr [23 x i8], [23 x i8]* @.str.19, i32 0, i32 0
  %494 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %495 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %493, i8* %494), !dbg !1499
  %496 = getelementptr [23 x i8], [23 x i8]* @.str.21, i32 0, i32 0
  %497 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %498 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %496, i8* %497), !dbg !1500
  %499 = zext i16 %297 to i32, !dbg !1501
  %500 = getelementptr [27 x i8], [27 x i8]* @.str.23, i32 0, i32 0
  %501 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %500, i32 %499), !dbg !1502
  %502 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1503
  %503 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %502, i32 0, i32 6, !dbg !1505
  %504 = load i32, i32* %503, align 4, !dbg !1505, !tbaa !1075
  %505 = and i32 %504, 1, !dbg !1506
  %506 = icmp ne i32 %505, 0, !dbg !1506
  br i1 %506, label %507, label %._crit_edge49, !dbg !1507

._crit_edge49:                                    ; preds = %482
  br label %524, !dbg !1507

507:                                              ; preds = %482
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %508, !dbg !1508

508:                                              ; preds = %521, %507
  %.6 = phi i16 [ 0, %507 ], [ %522, %521 ], !dbg !1510
  call void @llvm.dbg.value(metadata i16 %.6, metadata !1022, metadata !DIExpression()), !dbg !1047
  %509 = zext i16 %.6 to i32, !dbg !1511
  %510 = load i32, i32* @default_num_contexts, align 4, !dbg !1513, !tbaa !1045
  %511 = icmp ult i32 %509, %510, !dbg !1514
  br i1 %511, label %512, label %523, !dbg !1515

512:                                              ; preds = %508
  %513 = zext i16 %.6 to i32, !dbg !1516
  %514 = zext i16 %.6 to i32, !dbg !1517
  %515 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %514, !dbg !1517
  %516 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %515, i32 0, i32 10, !dbg !1518
  %517 = load i16, i16* %516, align 2, !dbg !1518, !tbaa !980
  %518 = zext i16 %517 to i32, !dbg !1517
  %519 = getelementptr [28 x i8], [28 x i8]* @.str.24, i32 0, i32 0
  %520 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %519, i32 %513, i32 %518), !dbg !1519
  br label %521, !dbg !1519

521:                                              ; preds = %512
  %522 = add i16 %.6, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i16 %522, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %508, !dbg !1521, !llvm.loop !1522

523:                                              ; preds = %508
  br label %524, !dbg !1523

524:                                              ; preds = %523, %._crit_edge49
  %525 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1524
  %526 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %525, i32 0, i32 6, !dbg !1526
  %527 = load i32, i32* %526, align 4, !dbg !1526, !tbaa !1075
  %528 = and i32 %527, 2, !dbg !1527
  %529 = icmp ne i32 %528, 0, !dbg !1527
  br i1 %529, label %530, label %._crit_edge50, !dbg !1528

._crit_edge50:                                    ; preds = %524
  br label %547, !dbg !1528

530:                                              ; preds = %524
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %531, !dbg !1529

531:                                              ; preds = %544, %530
  %.7 = phi i16 [ 0, %530 ], [ %545, %544 ], !dbg !1531
  call void @llvm.dbg.value(metadata i16 %.7, metadata !1022, metadata !DIExpression()), !dbg !1047
  %532 = zext i16 %.7 to i32, !dbg !1532
  %533 = load i32, i32* @default_num_contexts, align 4, !dbg !1534, !tbaa !1045
  %534 = icmp ult i32 %532, %533, !dbg !1535
  br i1 %534, label %535, label %546, !dbg !1536

535:                                              ; preds = %531
  %536 = zext i16 %.7 to i32, !dbg !1537
  %537 = zext i16 %.7 to i32, !dbg !1538
  %538 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %537, !dbg !1538
  %539 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %538, i32 0, i32 11, !dbg !1539
  %540 = load i16, i16* %539, align 4, !dbg !1539, !tbaa !357
  %541 = zext i16 %540 to i32, !dbg !1538
  %542 = getelementptr [28 x i8], [28 x i8]* @.str.25, i32 0, i32 0
  %543 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %542, i32 %536, i32 %541), !dbg !1540
  br label %544, !dbg !1540

544:                                              ; preds = %535
  %545 = add i16 %.7, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i16 %545, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %531, !dbg !1542, !llvm.loop !1543

546:                                              ; preds = %531
  br label %547, !dbg !1544

547:                                              ; preds = %546, %._crit_edge50
  %548 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1545
  %549 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %548, i32 0, i32 6, !dbg !1547
  %550 = load i32, i32* %549, align 4, !dbg !1547, !tbaa !1075
  %551 = and i32 %550, 4, !dbg !1548
  %552 = icmp ne i32 %551, 0, !dbg !1548
  br i1 %552, label %553, label %._crit_edge51, !dbg !1549

._crit_edge51:                                    ; preds = %547
  br label %570, !dbg !1549

553:                                              ; preds = %547
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %554, !dbg !1550

554:                                              ; preds = %567, %553
  %.8 = phi i16 [ 0, %553 ], [ %568, %567 ], !dbg !1552
  call void @llvm.dbg.value(metadata i16 %.8, metadata !1022, metadata !DIExpression()), !dbg !1047
  %555 = zext i16 %.8 to i32, !dbg !1553
  %556 = load i32, i32* @default_num_contexts, align 4, !dbg !1555, !tbaa !1045
  %557 = icmp ult i32 %555, %556, !dbg !1556
  br i1 %557, label %558, label %569, !dbg !1557

558:                                              ; preds = %554
  %559 = zext i16 %.8 to i32, !dbg !1558
  %560 = zext i16 %.8 to i32, !dbg !1559
  %561 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %560, !dbg !1559
  %562 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %561, i32 0, i32 12, !dbg !1560
  %563 = load i16, i16* %562, align 2, !dbg !1560, !tbaa !344
  %564 = zext i16 %563 to i32, !dbg !1559
  %565 = getelementptr [28 x i8], [28 x i8]* @.str.26, i32 0, i32 0
  %566 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %565, i32 %559, i32 %564), !dbg !1561
  br label %567, !dbg !1561

567:                                              ; preds = %558
  %568 = add i16 %.8, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i16 %568, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %554, !dbg !1563, !llvm.loop !1564

569:                                              ; preds = %554
  br label %570, !dbg !1565

570:                                              ; preds = %569, %._crit_edge51
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %571, !dbg !1566

571:                                              ; preds = %584, %570
  %.9 = phi i16 [ 0, %570 ], [ %585, %584 ], !dbg !1568
  call void @llvm.dbg.value(metadata i16 %.9, metadata !1022, metadata !DIExpression()), !dbg !1047
  %572 = zext i16 %.9 to i32, !dbg !1569
  %573 = load i32, i32* @default_num_contexts, align 4, !dbg !1571, !tbaa !1045
  %574 = icmp ult i32 %572, %573, !dbg !1572
  br i1 %574, label %575, label %586, !dbg !1573

575:                                              ; preds = %571
  %576 = zext i16 %.9 to i32, !dbg !1574
  %577 = zext i16 %.9 to i32, !dbg !1575
  %578 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %577, !dbg !1575
  %579 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %578, i32 0, i32 9, !dbg !1576
  %580 = load i16, i16* %579, align 4, !dbg !1576, !tbaa !340
  %581 = zext i16 %580 to i32, !dbg !1575
  %582 = getelementptr [28 x i8], [28 x i8]* @.str.27, i32 0, i32 0
  %583 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %582, i32 %576, i32 %581), !dbg !1577
  br label %584, !dbg !1577

584:                                              ; preds = %575
  %585 = add i16 %.9, 1, !dbg !1578
  call void @llvm.dbg.value(metadata i16 %585, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %571, !dbg !1579, !llvm.loop !1580

586:                                              ; preds = %571
  %587 = sext i16 %.311 to i32, !dbg !1582
  %588 = icmp eq i32 %587, 0, !dbg !1584
  br i1 %588, label %589, label %._crit_edge52, !dbg !1585

._crit_edge52:                                    ; preds = %586
  br label %613, !dbg !1585

589:                                              ; preds = %586
  %590 = getelementptr [73 x i8], [73 x i8]* @.str.28, i32 0, i32 0
  %591 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %590), !dbg !1586
  %592 = sext i16 %.07 to i32, !dbg !1588
  %593 = icmp eq i32 %592, 3, !dbg !1590
  br i1 %593, label %594, label %._crit_edge53, !dbg !1591

._crit_edge53:                                    ; preds = %589
  br label %612, !dbg !1591

594:                                              ; preds = %589
  %595 = load i32, i32* @default_num_contexts, align 4, !dbg !1592, !tbaa !1045
  %596 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1594
  %597 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %596, i32 0, i32 5, !dbg !1595
  %598 = load i32, i32* %597, align 4, !dbg !1595, !tbaa !975
  %599 = mul i32 %595, %598, !dbg !1596
  %600 = uitofp i32 %599 to double, !dbg !1592
  %601 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1597
  %602 = fdiv double %600, %601, !dbg !1598
  %603 = getelementptr [26 x i8], [26 x i8]* @.str.29, i32 0, i32 0
  %604 = getelementptr [116 x i8], [116 x i8]* @.str.18, i32 0, i32 0
  %605 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %606 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %603, double %602, i8* %604, i8* %605), !dbg !1599
  %607 = getelementptr [6 x i8], [6 x i8]* @.str.30, i32 0, i32 0
  %608 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %609 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %607, i8* %608), !dbg !1600
  %610 = getelementptr [2 x i8], [2 x i8]* @.str.31, i32 0, i32 0
  %611 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %610), !dbg !1601
  br label %612, !dbg !1602

612:                                              ; preds = %594, %._crit_edge53
  br label %613, !dbg !1603

613:                                              ; preds = %612, %._crit_edge52
  %614 = sext i16 %.311 to i32, !dbg !1604
  %615 = icmp sgt i32 %614, 0, !dbg !1606
  br i1 %615, label %616, label %._crit_edge54, !dbg !1607

._crit_edge54:                                    ; preds = %613
  br label %619, !dbg !1607

616:                                              ; preds = %613
  %617 = getelementptr [17 x i8], [17 x i8]* @.str.32, i32 0, i32 0
  %618 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %617), !dbg !1608
  br label %619, !dbg !1608

619:                                              ; preds = %616, %._crit_edge54
  %620 = sext i16 %.311 to i32, !dbg !1609
  %621 = icmp slt i32 %620, 0, !dbg !1611
  br i1 %621, label %622, label %._crit_edge55, !dbg !1612

._crit_edge55:                                    ; preds = %619
  br label %625, !dbg !1612

622:                                              ; preds = %619
  %623 = getelementptr [99 x i8], [99 x i8]* @.str.33, i32 0, i32 0
  %624 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %623), !dbg !1613
  br label %625, !dbg !1613

625:                                              ; preds = %622, %._crit_edge55
  %626 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1614
  %627 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %626, i32 0, i32 14, !dbg !1615
  call arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S* %627), !dbg !1616
  %628 = bitcast [2000 x i8]* %5 to i8*, !dbg !1617
  call void @llvm.lifetime.end.p0i8(i64 2000, i8* %628) #4, !dbg !1617
  %629 = bitcast [1 x %struct.RESULTS_S]* %4 to i8*, !dbg !1617
  call void @llvm.lifetime.end.p0i8(i64 68, i8* %629) #4, !dbg !1617
  ret i32 0, !dbg !1618

630:                                              ; preds = %119
  %631 = getelementptr inbounds [2000 x i8], [2000 x i8]* %5, i32 0, i32 0, !dbg !1138
  %632 = mul nuw nsw i32 %indvars.iv.next12, 2, !dbg !1141
  %633 = mul nuw nsw i32 %632, 1000, !dbg !1142
  %634 = getelementptr inbounds i8, i8* %631, i32 %633, !dbg !1143
  %635 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next12, !dbg !1144
  %636 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %635, i32 0, i32 3, !dbg !1145
  %637 = getelementptr inbounds [4 x i8*], [4 x i8*]* %636, i32 0, i32 0, !dbg !1144
  store i8* %634, i8** %637, align 4, !dbg !1146, !tbaa !334
  %638 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next12, !dbg !1147
  %639 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %638, i32 0, i32 4, !dbg !1148
  store i32 2000, i32* %639, align 4, !dbg !1149, !tbaa !326
  %640 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1150
  %641 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %640, i32 0, i32 0, !dbg !1151
  %642 = load i16, i16* %641, align 4, !dbg !1151, !tbaa !336
  %643 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next12, !dbg !1152
  %644 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %643, i32 0, i32 0, !dbg !1153
  store i16 %642, i16* %644, align 4, !dbg !1154, !tbaa !336
  %645 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1155
  %646 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %645, i32 0, i32 1, !dbg !1156
  %647 = load i16, i16* %646, align 2, !dbg !1156, !tbaa !338
  %648 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next12, !dbg !1157
  %649 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %648, i32 0, i32 1, !dbg !1158
  store i16 %647, i16* %649, align 2, !dbg !1159, !tbaa !338
  %650 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1160
  %651 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %650, i32 0, i32 2, !dbg !1161
  %652 = load i16, i16* %651, align 4, !dbg !1161, !tbaa !477
  %653 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next12, !dbg !1162
  %654 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %653, i32 0, i32 2, !dbg !1163
  store i16 %652, i16* %654, align 4, !dbg !1164, !tbaa !477
  %655 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next12, !dbg !1165
  %656 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %655, i32 0, i32 13, !dbg !1166
  store i16 0, i16* %656, align 4, !dbg !1167, !tbaa !1168
  %657 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1169
  %658 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %657, i32 0, i32 6, !dbg !1170
  %659 = load i32, i32* %658, align 4, !dbg !1170, !tbaa !1075
  %660 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next12, !dbg !1171
  %661 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %660, i32 0, i32 6, !dbg !1172
  store i32 %659, i32* %661, align 4, !dbg !1173, !tbaa !1075
  br label %662, !dbg !1174

662:                                              ; preds = %630
  %indvars.iv.next12.1 = add nuw nsw i32 %indvars.iv.next12, 1, !dbg !1175
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %86

663:                                              ; preds = %143
  %664 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next6, !dbg !1200
  %665 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %664, i32 0, i32 4, !dbg !1202
  %666 = load i32, i32* %665, align 4, !dbg !1202, !tbaa !326
  %667 = zext i16 %.05.lcssa to i32, !dbg !1203
  %668 = udiv i32 %666, %667, !dbg !1204
  %669 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next6, !dbg !1205
  %670 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %669, i32 0, i32 4, !dbg !1206
  store i32 %668, i32* %670, align 4, !dbg !1207, !tbaa !326
  br label %671, !dbg !1205

671:                                              ; preds = %663
  %indvars.iv.next6.1 = add nuw nsw i32 %indvars.iv.next6, 1, !dbg !1208
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %134
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S*, i16 signext, i16 zeroext) #0 !dbg !1619 {
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %0, metadata !1632, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i16 %1, metadata !1633, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i16 %2, metadata !1634, metadata !DIExpression()), !dbg !1640
  %4 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 0, !dbg !1641
  %5 = load i32, i32* %4, align 4, !dbg !1641, !tbaa !1642
  call void @llvm.dbg.value(metadata i32 %5, metadata !1635, metadata !DIExpression()), !dbg !1640
  %6 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 3, !dbg !1643
  %7 = load i32*, i32** %6, align 4, !dbg !1643, !tbaa !1644
  call void @llvm.dbg.value(metadata i32* %7, metadata !1636, metadata !DIExpression()), !dbg !1640
  %8 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 1, !dbg !1645
  %9 = load i16*, i16** %8, align 4, !dbg !1645, !tbaa !1646
  call void @llvm.dbg.value(metadata i16* %9, metadata !1637, metadata !DIExpression()), !dbg !1640
  %10 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 2, !dbg !1647
  %11 = load i16*, i16** %10, align 4, !dbg !1647, !tbaa !1648
  call void @llvm.dbg.value(metadata i16* %11, metadata !1638, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i16 %1, metadata !1639, metadata !DIExpression()), !dbg !1640
  %12 = call arm_aapcscc signext i16 @matrix_test(i32 %5, i32* %7, i16* %9, i16* %11, i16 signext %1), !dbg !1649
  %13 = call arm_aapcscc zeroext i16 @crc16(i16 signext %12, i16 zeroext %2), !dbg !1650
  call void @llvm.dbg.value(metadata i16 %13, metadata !1634, metadata !DIExpression()), !dbg !1640
  ret i16 %13, !dbg !1651
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_test(i32, i32*, i16*, i16*, i16 signext) #0 !dbg !1652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1656, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32* %1, metadata !1657, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i16* %2, metadata !1658, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i16* %3, metadata !1659, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i16 %4, metadata !1660, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i16 0, metadata !1661, metadata !DIExpression()), !dbg !1663
  %6 = sext i16 %4 to i32, !dbg !1664
  %7 = or i32 61440, %6, !dbg !1664
  %8 = trunc i32 %7 to i16, !dbg !1664
  call void @llvm.dbg.value(metadata i16 %8, metadata !1662, metadata !DIExpression()), !dbg !1663
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %4), !dbg !1665
  call arm_aapcscc void @matrix_mul_const(i32 %0, i32* %1, i16* %2, i16 signext %4), !dbg !1666
  %9 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1667
  %10 = call arm_aapcscc zeroext i16 @crc16(i16 signext %9, i16 zeroext 0), !dbg !1668
  call void @llvm.dbg.value(metadata i16 %10, metadata !1661, metadata !DIExpression()), !dbg !1663
  call arm_aapcscc void @matrix_mul_vect(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1669
  %11 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1670
  %12 = call arm_aapcscc zeroext i16 @crc16(i16 signext %11, i16 zeroext %10), !dbg !1671
  call void @llvm.dbg.value(metadata i16 %12, metadata !1661, metadata !DIExpression()), !dbg !1663
  call arm_aapcscc void @matrix_mul_matrix(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1672
  %13 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1673
  %14 = call arm_aapcscc zeroext i16 @crc16(i16 signext %13, i16 zeroext %12), !dbg !1674
  call void @llvm.dbg.value(metadata i16 %14, metadata !1661, metadata !DIExpression()), !dbg !1663
  call arm_aapcscc void @matrix_mul_matrix_bitextract(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1675
  %15 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1676
  %16 = call arm_aapcscc zeroext i16 @crc16(i16 signext %15, i16 zeroext %14), !dbg !1677
  call void @llvm.dbg.value(metadata i16 %16, metadata !1661, metadata !DIExpression()), !dbg !1663
  %17 = sext i16 %4 to i32, !dbg !1678
  %18 = sub nsw i32 0, %17, !dbg !1679
  %19 = trunc i32 %18 to i16, !dbg !1679
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %19), !dbg !1680
  ret i16 %16, !dbg !1681
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_add_const(i32, i16*, i16 signext) #0 !dbg !1682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1686, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i16* %1, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i16 %2, metadata !1688, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 0, metadata !1689, metadata !DIExpression()), !dbg !1691
  br label %4, !dbg !1692

4:                                                ; preds = %19, %3
  %.01 = phi i32 [ 0, %3 ], [ %20, %19 ], !dbg !1694
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1689, metadata !DIExpression()), !dbg !1691
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1695
  br i1 %exitcond2, label %5, label %21, !dbg !1697

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1691
  br label %6, !dbg !1698

6:                                                ; preds = %16, %5
  %.0 = phi i32 [ 0, %5 ], [ %17, %16 ], !dbg !1701
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1690, metadata !DIExpression()), !dbg !1691
  %exitcond = icmp ne i32 %.0, %0, !dbg !1702
  br i1 %exitcond, label %7, label %18, !dbg !1704

7:                                                ; preds = %6
  %8 = sext i16 %2 to i32, !dbg !1705
  %9 = mul i32 %.01, %0, !dbg !1707
  %10 = add i32 %9, %.0, !dbg !1708
  %11 = getelementptr inbounds i16, i16* %1, i32 %10, !dbg !1709
  %12 = load i16, i16* %11, align 2, !dbg !1710, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1710
  %14 = add nsw i32 %13, %8, !dbg !1710
  %15 = trunc i32 %14 to i16, !dbg !1710
  store i16 %15, i16* %11, align 2, !dbg !1710, !tbaa !294
  br label %16, !dbg !1711

16:                                               ; preds = %7
  %17 = add i32 %.0, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %17, metadata !1690, metadata !DIExpression()), !dbg !1691
  br label %6, !dbg !1713, !llvm.loop !1714

18:                                               ; preds = %6
  br label %19, !dbg !1716

19:                                               ; preds = %18
  %20 = add i32 %.01, 1, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %20, metadata !1689, metadata !DIExpression()), !dbg !1691
  br label %4, !dbg !1718, !llvm.loop !1719

21:                                               ; preds = %4
  ret void, !dbg !1721
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_const(i32, i32*, i16*, i16 signext) #0 !dbg !1722 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1726, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i32* %1, metadata !1727, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i16* %2, metadata !1728, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i16 %3, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i32 0, metadata !1730, metadata !DIExpression()), !dbg !1732
  br label %5, !dbg !1733

5:                                                ; preds = %22, %4
  %.01 = phi i32 [ 0, %4 ], [ %23, %22 ], !dbg !1735
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1730, metadata !DIExpression()), !dbg !1732
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1736
  br i1 %exitcond2, label %6, label %24, !dbg !1738

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1731, metadata !DIExpression()), !dbg !1732
  br label %7, !dbg !1739

7:                                                ; preds = %19, %6
  %.0 = phi i32 [ 0, %6 ], [ %20, %19 ], !dbg !1742
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1731, metadata !DIExpression()), !dbg !1732
  %exitcond = icmp ne i32 %.0, %0, !dbg !1743
  br i1 %exitcond, label %8, label %21, !dbg !1745

8:                                                ; preds = %7
  %9 = mul i32 %.01, %0, !dbg !1746
  %10 = add i32 %9, %.0, !dbg !1748
  %11 = getelementptr inbounds i16, i16* %2, i32 %10, !dbg !1749
  %12 = load i16, i16* %11, align 2, !dbg !1749, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1750
  %14 = sext i16 %3 to i32, !dbg !1751
  %15 = mul nsw i32 %13, %14, !dbg !1752
  %16 = mul i32 %.01, %0, !dbg !1753
  %17 = add i32 %16, %.0, !dbg !1754
  %18 = getelementptr inbounds i32, i32* %1, i32 %17, !dbg !1755
  store i32 %15, i32* %18, align 4, !dbg !1756, !tbaa !1045
  br label %19, !dbg !1757

19:                                               ; preds = %8
  %20 = add i32 %.0, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %20, metadata !1731, metadata !DIExpression()), !dbg !1732
  br label %7, !dbg !1759, !llvm.loop !1760

21:                                               ; preds = %7
  br label %22, !dbg !1762

22:                                               ; preds = %21
  %23 = add i32 %.01, 1, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %23, metadata !1730, metadata !DIExpression()), !dbg !1732
  br label %5, !dbg !1764, !llvm.loop !1765

24:                                               ; preds = %5
  ret void, !dbg !1767
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_sum(i32, i32*, i16 signext) #0 !dbg !1768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1772, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32* %1, metadata !1773, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i16 %2, metadata !1774, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !1776, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !1777, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i16 0, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !1779, metadata !DIExpression()), !dbg !1781
  br label %4, !dbg !1782

4:                                                ; preds = %30, %3
  %.06 = phi i32 [ 0, %3 ], [ %.17.lcssa, %30 ], !dbg !1784
  %.03 = phi i32 [ 0, %3 ], [ %.14.lcssa, %30 ], !dbg !1785
  %.02 = phi i16 [ 0, %3 ], [ %.1.lcssa, %30 ], !dbg !1786
  %.01 = phi i32 [ 0, %3 ], [ %31, %30 ], !dbg !1787
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1779, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i16 %.02, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1776, metadata !DIExpression()), !dbg !1781
  %exitcond8 = icmp ne i32 %.01, %0, !dbg !1788
  br i1 %exitcond8, label %5, label %32, !dbg !1790

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1780, metadata !DIExpression()), !dbg !1781
  br label %6, !dbg !1791

6:                                                ; preds = %27, %5
  %.17 = phi i32 [ %.06, %5 ], [ %11, %27 ], !dbg !1781
  %.14 = phi i32 [ %.03, %5 ], [ %.25, %27 ], !dbg !1781
  %.1 = phi i16 [ %.02, %5 ], [ %.2, %27 ], !dbg !1781
  %.0 = phi i32 [ 0, %5 ], [ %28, %27 ], !dbg !1794
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1780, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i16 %.1, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %.17, metadata !1776, metadata !DIExpression()), !dbg !1781
  %exitcond = icmp ne i32 %.0, %0, !dbg !1795
  br i1 %exitcond, label %7, label %29, !dbg !1797

7:                                                ; preds = %6
  %8 = mul i32 %.01, %0, !dbg !1798
  %9 = add i32 %8, %.0, !dbg !1800
  %10 = getelementptr inbounds i32, i32* %1, i32 %9, !dbg !1801
  %11 = load i32, i32* %10, align 4, !dbg !1801, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %11, metadata !1777, metadata !DIExpression()), !dbg !1781
  %12 = add nsw i32 %.14, %11, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %12, metadata !1775, metadata !DIExpression()), !dbg !1781
  %13 = sext i16 %2 to i32, !dbg !1803
  %14 = icmp sgt i32 %12, %13, !dbg !1805
  br i1 %14, label %15, label %19, !dbg !1806

15:                                               ; preds = %7
  %16 = sext i16 %.1 to i32, !dbg !1807
  %17 = add nsw i32 %16, 10, !dbg !1807
  %18 = trunc i32 %17 to i16, !dbg !1807
  call void @llvm.dbg.value(metadata i16 %18, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !1775, metadata !DIExpression()), !dbg !1781
  br label %26, !dbg !1809

19:                                               ; preds = %7
  %20 = icmp sgt i32 %11, %.17, !dbg !1810
  %21 = zext i1 %20 to i64, !dbg !1812
  %22 = select i1 %20, i32 1, i32 0, !dbg !1812
  %23 = sext i16 %.1 to i32, !dbg !1813
  %24 = add nsw i32 %23, %22, !dbg !1813
  %25 = trunc i32 %24 to i16, !dbg !1813
  call void @llvm.dbg.value(metadata i16 %25, metadata !1778, metadata !DIExpression()), !dbg !1781
  br label %26

26:                                               ; preds = %19, %15
  %.25 = phi i32 [ 0, %15 ], [ %12, %19 ], !dbg !1814
  %.2 = phi i16 [ %18, %15 ], [ %25, %19 ], !dbg !1815
  call void @llvm.dbg.value(metadata i16 %.2, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %.25, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %11, metadata !1776, metadata !DIExpression()), !dbg !1781
  br label %27, !dbg !1816

27:                                               ; preds = %26
  %28 = add i32 %.0, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %28, metadata !1780, metadata !DIExpression()), !dbg !1781
  br label %6, !dbg !1818, !llvm.loop !1819

29:                                               ; preds = %6
  %.17.lcssa = phi i32 [ %.17, %6 ], !dbg !1781
  %.14.lcssa = phi i32 [ %.14, %6 ], !dbg !1781
  %.1.lcssa = phi i16 [ %.1, %6 ], !dbg !1781
  call void @llvm.dbg.value(metadata i32 %.17.lcssa, metadata !1776, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i16 %.1.lcssa, metadata !1778, metadata !DIExpression()), !dbg !1781
  br label %30, !dbg !1821

30:                                               ; preds = %29
  %31 = add i32 %.01, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %31, metadata !1779, metadata !DIExpression()), !dbg !1781
  br label %4, !dbg !1823, !llvm.loop !1824

32:                                               ; preds = %4
  %.02.lcssa = phi i16 [ %.02, %4 ], !dbg !1786
  call void @llvm.dbg.value(metadata i16 %.02.lcssa, metadata !1778, metadata !DIExpression()), !dbg !1781
  ret i16 %.02.lcssa, !dbg !1826
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_vect(i32, i32*, i16*, i16*) #0 !dbg !1827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1831, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32* %1, metadata !1832, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i16* %2, metadata !1833, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i16* %3, metadata !1834, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()), !dbg !1837
  br label %5, !dbg !1838

5:                                                ; preds = %25, %4
  %.01 = phi i32 [ 0, %4 ], [ %26, %25 ], !dbg !1840
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1835, metadata !DIExpression()), !dbg !1837
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1841
  br i1 %exitcond2, label %6, label %27, !dbg !1843

6:                                                ; preds = %5
  %7 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1844
  store i32 0, i32* %7, align 4, !dbg !1846, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !1836, metadata !DIExpression()), !dbg !1837
  br label %8, !dbg !1847

8:                                                ; preds = %22, %6
  %.0 = phi i32 [ 0, %6 ], [ %23, %22 ], !dbg !1849
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1836, metadata !DIExpression()), !dbg !1837
  %exitcond = icmp ne i32 %.0, %0, !dbg !1850
  br i1 %exitcond, label %9, label %24, !dbg !1852

9:                                                ; preds = %8
  %10 = mul i32 %.01, %0, !dbg !1853
  %11 = add i32 %10, %.0, !dbg !1855
  %12 = getelementptr inbounds i16, i16* %2, i32 %11, !dbg !1856
  %13 = load i16, i16* %12, align 2, !dbg !1856, !tbaa !294
  %14 = sext i16 %13 to i32, !dbg !1857
  %15 = getelementptr inbounds i16, i16* %3, i32 %.0, !dbg !1858
  %16 = load i16, i16* %15, align 2, !dbg !1858, !tbaa !294
  %17 = sext i16 %16 to i32, !dbg !1859
  %18 = mul nsw i32 %14, %17, !dbg !1860
  %19 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1861
  %20 = load i32, i32* %19, align 4, !dbg !1862, !tbaa !1045
  %21 = add nsw i32 %20, %18, !dbg !1862
  store i32 %21, i32* %19, align 4, !dbg !1862, !tbaa !1045
  br label %22, !dbg !1863

22:                                               ; preds = %9
  %23 = add i32 %.0, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %23, metadata !1836, metadata !DIExpression()), !dbg !1837
  br label %8, !dbg !1865, !llvm.loop !1866

24:                                               ; preds = %8
  br label %25, !dbg !1868

25:                                               ; preds = %24
  %26 = add i32 %.01, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %26, metadata !1835, metadata !DIExpression()), !dbg !1837
  br label %5, !dbg !1870, !llvm.loop !1871

27:                                               ; preds = %5
  ret void, !dbg !1873
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix(i32, i32*, i16*, i16*) #0 !dbg !1874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1876, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32* %1, metadata !1877, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i16* %2, metadata !1878, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i16* %3, metadata !1879, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 0, metadata !1880, metadata !DIExpression()), !dbg !1883
  br label %5, !dbg !1884

5:                                                ; preds = %36, %4
  %.02 = phi i32 [ 0, %4 ], [ %37, %36 ], !dbg !1886
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1880, metadata !DIExpression()), !dbg !1883
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1887
  br i1 %exitcond4, label %6, label %38, !dbg !1889

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1881, metadata !DIExpression()), !dbg !1883
  br label %7, !dbg !1890

7:                                                ; preds = %33, %6
  %.01 = phi i32 [ 0, %6 ], [ %34, %33 ], !dbg !1893
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1881, metadata !DIExpression()), !dbg !1883
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1894
  br i1 %exitcond3, label %8, label %35, !dbg !1896

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1897
  %10 = add i32 %9, %.01, !dbg !1899
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1900
  store i32 0, i32* %11, align 4, !dbg !1901, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()), !dbg !1883
  br label %12, !dbg !1902

12:                                               ; preds = %30, %8
  %.0 = phi i32 [ 0, %8 ], [ %31, %30 ], !dbg !1904
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1882, metadata !DIExpression()), !dbg !1883
  %exitcond = icmp ne i32 %.0, %0, !dbg !1905
  br i1 %exitcond, label %13, label %32, !dbg !1907

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1908
  %15 = add i32 %14, %.0, !dbg !1910
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1911
  %17 = load i16, i16* %16, align 2, !dbg !1911, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1912
  %19 = mul i32 %.0, %0, !dbg !1913
  %20 = add i32 %19, %.01, !dbg !1914
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1915
  %22 = load i16, i16* %21, align 2, !dbg !1915, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1916
  %24 = mul nsw i32 %18, %23, !dbg !1917
  %25 = mul i32 %.02, %0, !dbg !1918
  %26 = add i32 %25, %.01, !dbg !1919
  %27 = getelementptr inbounds i32, i32* %1, i32 %26, !dbg !1920
  %28 = load i32, i32* %27, align 4, !dbg !1921, !tbaa !1045
  %29 = add nsw i32 %28, %24, !dbg !1921
  store i32 %29, i32* %27, align 4, !dbg !1921, !tbaa !1045
  br label %30, !dbg !1922

30:                                               ; preds = %13
  %31 = add i32 %.0, 1, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %31, metadata !1882, metadata !DIExpression()), !dbg !1883
  br label %12, !dbg !1924, !llvm.loop !1925

32:                                               ; preds = %12
  br label %33, !dbg !1927

33:                                               ; preds = %32
  %34 = add i32 %.01, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %34, metadata !1881, metadata !DIExpression()), !dbg !1883
  br label %7, !dbg !1929, !llvm.loop !1930

35:                                               ; preds = %7
  br label %36, !dbg !1932

36:                                               ; preds = %35
  %37 = add i32 %.02, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %37, metadata !1880, metadata !DIExpression()), !dbg !1883
  br label %5, !dbg !1934, !llvm.loop !1935

38:                                               ; preds = %5
  ret void, !dbg !1937
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix_bitextract(i32, i32*, i16*, i16*) #0 !dbg !1938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1940, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i32* %1, metadata !1941, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i16* %2, metadata !1942, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i16* %3, metadata !1943, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !1957
  br label %5, !dbg !1958

5:                                                ; preds = %41, %4
  %.02 = phi i32 [ 0, %4 ], [ %42, %41 ], !dbg !1959
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1944, metadata !DIExpression()), !dbg !1957
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1960
  br i1 %exitcond4, label %6, label %43, !dbg !1961

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1945, metadata !DIExpression()), !dbg !1957
  br label %7, !dbg !1962

7:                                                ; preds = %38, %6
  %.01 = phi i32 [ 0, %6 ], [ %39, %38 ], !dbg !1963
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1945, metadata !DIExpression()), !dbg !1957
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1964
  br i1 %exitcond3, label %8, label %40, !dbg !1965

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1966
  %10 = add i32 %9, %.01, !dbg !1967
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1968
  store i32 0, i32* %11, align 4, !dbg !1969, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()), !dbg !1957
  br label %12, !dbg !1970

12:                                               ; preds = %35, %8
  %.0 = phi i32 [ 0, %8 ], [ %36, %35 ], !dbg !1971
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1946, metadata !DIExpression()), !dbg !1957
  %exitcond = icmp ne i32 %.0, %0, !dbg !1972
  br i1 %exitcond, label %13, label %37, !dbg !1973

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1974
  %15 = add i32 %14, %.0, !dbg !1975
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1976
  %17 = load i16, i16* %16, align 2, !dbg !1976, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1977
  %19 = mul i32 %.0, %0, !dbg !1978
  %20 = add i32 %19, %.01, !dbg !1979
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1980
  %22 = load i16, i16* %21, align 2, !dbg !1980, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1981
  %24 = mul nsw i32 %18, %23, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %24, metadata !1947, metadata !DIExpression()), !dbg !1983
  %25 = ashr i32 %24, 2, !dbg !1984
  %26 = and i32 %25, 15, !dbg !1984
  %27 = ashr i32 %24, 5, !dbg !1985
  %28 = and i32 %27, 127, !dbg !1985
  %29 = mul i32 %26, %28, !dbg !1986
  %30 = mul i32 %.02, %0, !dbg !1987
  %31 = add i32 %30, %.01, !dbg !1988
  %32 = getelementptr inbounds i32, i32* %1, i32 %31, !dbg !1989
  %33 = load i32, i32* %32, align 4, !dbg !1990, !tbaa !1045
  %34 = add i32 %33, %29, !dbg !1990
  store i32 %34, i32* %32, align 4, !dbg !1990, !tbaa !1045
  br label %35, !dbg !1991

35:                                               ; preds = %13
  %36 = add i32 %.0, 1, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %36, metadata !1946, metadata !DIExpression()), !dbg !1957
  br label %12, !dbg !1993, !llvm.loop !1994

37:                                               ; preds = %12
  br label %38, !dbg !1996

38:                                               ; preds = %37
  %39 = add i32 %.01, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %39, metadata !1945, metadata !DIExpression()), !dbg !1957
  br label %7, !dbg !1998, !llvm.loop !1999

40:                                               ; preds = %7
  br label %41, !dbg !2001

41:                                               ; preds = %40
  %42 = add i32 %.02, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %42, metadata !1944, metadata !DIExpression()), !dbg !1957
  br label %5, !dbg !2003, !llvm.loop !2004

43:                                               ; preds = %5
  ret void, !dbg !2006
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_init_matrix(i32, i8*, i32, %struct.MAT_PARAMS_S*) #0 !dbg !2007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2011, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8* %1, metadata !2012, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %2, metadata !2013, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %3, metadata !2014, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 0, metadata !2015, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 1, metadata !2018, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 0, metadata !2020, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 0, metadata !2021, metadata !DIExpression()), !dbg !2022
  %5 = icmp eq i32 %2, 0, !dbg !2023
  br i1 %5, label %6, label %._crit_edge, !dbg !2025

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2025

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !2013, metadata !DIExpression()), !dbg !2022
  br label %7, !dbg !2026

7:                                                ; preds = %6, %._crit_edge
  %.03 = phi i32 [ 1, %6 ], [ %2, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2013, metadata !DIExpression()), !dbg !2022
  br label %8, !dbg !2027

8:                                                ; preds = %10, %7
  %.01 = phi i32 [ 0, %7 ], [ %11, %10 ], !dbg !2022
  %.0 = phi i32 [ 0, %7 ], [ %14, %10 ], !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2021, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2020, metadata !DIExpression()), !dbg !2022
  %9 = icmp ult i32 %.0, %0, !dbg !2028
  br i1 %9, label %10, label %15, !dbg !2027

10:                                               ; preds = %8
  %11 = add i32 %.01, 1, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %11, metadata !2020, metadata !DIExpression()), !dbg !2022
  %12 = mul i32 %11, %11, !dbg !2031
  %13 = mul i32 %12, 2, !dbg !2032
  %14 = mul i32 %13, 4, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %14, metadata !2021, metadata !DIExpression()), !dbg !2022
  br label %8, !dbg !2027, !llvm.loop !2034

15:                                               ; preds = %8
  %.01.lcssa = phi i32 [ %.01, %8 ], !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2020, metadata !DIExpression()), !dbg !2022
  %16 = sub i32 %.01.lcssa, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %16, metadata !2015, metadata !DIExpression()), !dbg !2022
  %17 = ptrtoint i8* %1 to i32, !dbg !2037
  %18 = sub i32 %17, 1, !dbg !2037
  %19 = and i32 %18, -4, !dbg !2037
  %20 = add i32 4, %19, !dbg !2037
  %21 = inttoptr i32 %20 to i8*, !dbg !2037
  %22 = bitcast i8* %21 to i16*, !dbg !2038
  call void @llvm.dbg.value(metadata i16* %22, metadata !2016, metadata !DIExpression()), !dbg !2022
  %23 = mul i32 %16, %16, !dbg !2039
  %24 = getelementptr inbounds i16, i16* %22, i32 %23, !dbg !2040
  call void @llvm.dbg.value(metadata i16* %24, metadata !2017, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 0, metadata !2020, metadata !DIExpression()), !dbg !2022
  br label %25, !dbg !2041

25:                                               ; preds = %52, %15
  %.05 = phi i32 [ 1, %15 ], [ %.16.lcssa, %52 ], !dbg !2043
  %.14 = phi i32 [ %.03, %15 ], [ %.2.lcssa, %52 ], !dbg !2044
  %.12 = phi i32 [ 0, %15 ], [ %53, %52 ], !dbg !2045
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2020, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2013, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2018, metadata !DIExpression()), !dbg !2022
  %exitcond7 = icmp ne i32 %.12, %16, !dbg !2046
  br i1 %exitcond7, label %26, label %54, !dbg !2048

26:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 0, metadata !2021, metadata !DIExpression()), !dbg !2022
  br label %27, !dbg !2049

27:                                               ; preds = %49, %26
  %.16 = phi i32 [ %.05, %26 ], [ %48, %49 ], !dbg !2022
  %.2 = phi i32 [ %.14, %26 ], [ %30, %49 ], !dbg !2022
  %.1 = phi i32 [ 0, %26 ], [ %50, %49 ], !dbg !2052
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2021, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2013, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2018, metadata !DIExpression()), !dbg !2022
  %exitcond = icmp ne i32 %.1, %16, !dbg !2053
  br i1 %exitcond, label %28, label %51, !dbg !2055

28:                                               ; preds = %27
  %29 = mul nsw i32 %.16, %.2, !dbg !2056
  %30 = srem i32 %29, 65536, !dbg !2058
  call void @llvm.dbg.value(metadata i32 %30, metadata !2013, metadata !DIExpression()), !dbg !2022
  %31 = add nsw i32 %30, %.16, !dbg !2059
  %32 = trunc i32 %31 to i16, !dbg !2060
  call void @llvm.dbg.value(metadata i16 %32, metadata !2019, metadata !DIExpression()), !dbg !2022
  %33 = sext i16 %32 to i32, !dbg !2061
  %34 = and i32 %33, 65535, !dbg !2061
  %35 = trunc i32 %34 to i16, !dbg !2061
  call void @llvm.dbg.value(metadata i16 %35, metadata !2019, metadata !DIExpression()), !dbg !2022
  %36 = mul i32 %.12, %16, !dbg !2062
  %37 = add i32 %36, %.1, !dbg !2063
  %38 = getelementptr inbounds i16, i16* %24, i32 %37, !dbg !2064
  store i16 %35, i16* %38, align 2, !dbg !2065, !tbaa !294
  %39 = sext i16 %35 to i32, !dbg !2066
  %40 = add nsw i32 %39, %.16, !dbg !2067
  %41 = trunc i32 %40 to i16, !dbg !2068
  call void @llvm.dbg.value(metadata i16 %41, metadata !2019, metadata !DIExpression()), !dbg !2022
  %42 = sext i16 %41 to i32, !dbg !2069
  %43 = and i32 %42, 255, !dbg !2069
  %44 = trunc i32 %43 to i16, !dbg !2069
  call void @llvm.dbg.value(metadata i16 %44, metadata !2019, metadata !DIExpression()), !dbg !2022
  %45 = mul i32 %.12, %16, !dbg !2070
  %46 = add i32 %45, %.1, !dbg !2071
  %47 = getelementptr inbounds i16, i16* %22, i32 %46, !dbg !2072
  store i16 %44, i16* %47, align 2, !dbg !2073, !tbaa !294
  %48 = add nsw i32 %.16, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %48, metadata !2018, metadata !DIExpression()), !dbg !2022
  br label %49, !dbg !2075

49:                                               ; preds = %28
  %50 = add i32 %.1, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %50, metadata !2021, metadata !DIExpression()), !dbg !2022
  br label %27, !dbg !2077, !llvm.loop !2078

51:                                               ; preds = %27
  %.16.lcssa = phi i32 [ %.16, %27 ], !dbg !2022
  %.2.lcssa = phi i32 [ %.2, %27 ], !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !2018, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2013, metadata !DIExpression()), !dbg !2022
  br label %52, !dbg !2080

52:                                               ; preds = %51
  %53 = add i32 %.12, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %53, metadata !2020, metadata !DIExpression()), !dbg !2022
  br label %25, !dbg !2082, !llvm.loop !2083

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 1, !dbg !2085
  store i16* %22, i16** %55, align 4, !dbg !2086, !tbaa !1646
  %56 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 2, !dbg !2087
  store i16* %24, i16** %56, align 4, !dbg !2088, !tbaa !1648
  %57 = mul i32 %16, %16, !dbg !2089
  %58 = getelementptr inbounds i16, i16* %24, i32 %57, !dbg !2089
  %59 = ptrtoint i16* %58 to i32, !dbg !2089
  %60 = sub i32 %59, 1, !dbg !2089
  %61 = and i32 %60, -4, !dbg !2089
  %62 = add i32 4, %61, !dbg !2089
  %63 = inttoptr i32 %62 to i8*, !dbg !2089
  %64 = bitcast i8* %63 to i32*, !dbg !2090
  %65 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 3, !dbg !2091
  store i32* %64, i32** %65, align 4, !dbg !2092, !tbaa !1644
  %66 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 0, !dbg !2093
  store i32 %16, i32* %66, align 4, !dbg !2094, !tbaa !1642
  ret i32 %16, !dbg !2095
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_state(i32, i8*, i16 signext, i16 signext, i16 signext, i16 zeroext) #0 !dbg !2096 {
  %7 = alloca [8 x i32], align 4
  %8 = alloca [8 x i32], align 4
  %9 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2100, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8* %1, metadata !2101, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i16 %2, metadata !2102, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i16 %3, metadata !2103, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i16 %4, metadata !2104, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i16 %5, metadata !2105, metadata !DIExpression()), !dbg !2117
  %10 = bitcast [8 x i32]* %7 to i8*, !dbg !2118
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !2118
  call void @llvm.dbg.declare(metadata [8 x i32]* %7, metadata !2106, metadata !DIExpression()), !dbg !2119
  %11 = bitcast [8 x i32]* %8 to i8*, !dbg !2120
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %11) #4, !dbg !2120
  call void @llvm.dbg.declare(metadata [8 x i32]* %8, metadata !2110, metadata !DIExpression()), !dbg !2121
  %12 = bitcast i8** %9 to i8*, !dbg !2122
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2122
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2111, metadata !DIExpression()), !dbg !2123
  store i8* %1, i8** %9, align 4, !dbg !2123, !tbaa !334
  call void @llvm.dbg.value(metadata i32 0, metadata !2112, metadata !DIExpression()), !dbg !2117
  br label %13, !dbg !2124

13:                                               ; preds = %17, %6
  %.0 = phi i32 [ 0, %6 ], [ %18, %17 ], !dbg !2126
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2112, metadata !DIExpression()), !dbg !2117
  %exitcond3 = icmp ne i32 %.0, 8, !dbg !2127
  br i1 %exitcond3, label %14, label %19, !dbg !2129

14:                                               ; preds = %13
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.0, !dbg !2130
  store i32 0, i32* %15, align 4, !dbg !2132, !tbaa !1045
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.0, !dbg !2133
  store i32 0, i32* %16, align 4, !dbg !2134, !tbaa !1045
  br label %17, !dbg !2135

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %.0, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %18, metadata !2112, metadata !DIExpression()), !dbg !2117
  br label %13, !dbg !2137, !llvm.loop !2138

19:                                               ; preds = %13
  br label %20, !dbg !2140

20:                                               ; preds = %25, %19
  %21 = load i8*, i8** %9, align 4, !dbg !2141, !tbaa !334
  %22 = load i8, i8* %21, align 1, !dbg !2142, !tbaa !2143
  %23 = zext i8 %22 to i32, !dbg !2142
  %24 = icmp ne i32 %23, 0, !dbg !2144
  br i1 %24, label %25, label %31, !dbg !2140

25:                                               ; preds = %20
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2145
  %27 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %26), !dbg !2146
  call void @llvm.dbg.value(metadata i32 %27, metadata !2113, metadata !DIExpression()), !dbg !2147
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %27, !dbg !2148
  %29 = load i32, i32* %28, align 4, !dbg !2149, !tbaa !1045
  %30 = add i32 %29, 1, !dbg !2149
  store i32 %30, i32* %28, align 4, !dbg !2149, !tbaa !1045
  br label %20, !dbg !2140, !llvm.loop !2150

31:                                               ; preds = %20
  store i8* %1, i8** %9, align 4, !dbg !2152, !tbaa !334
  br label %32, !dbg !2153

32:                                               ; preds = %49, %31
  %33 = load i8*, i8** %9, align 4, !dbg !2154, !tbaa !334
  %34 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2155
  %35 = icmp ult i8* %33, %34, !dbg !2156
  br i1 %35, label %36, label %53, !dbg !2153

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 4, !dbg !2157, !tbaa !334
  %38 = load i8, i8* %37, align 1, !dbg !2160, !tbaa !2143
  %39 = zext i8 %38 to i32, !dbg !2160
  %40 = icmp ne i32 %39, 44, !dbg !2161
  br i1 %40, label %41, label %._crit_edge, !dbg !2162

._crit_edge:                                      ; preds = %36
  br label %49, !dbg !2162

41:                                               ; preds = %36
  %42 = trunc i16 %2 to i8, !dbg !2163
  %43 = zext i8 %42 to i32, !dbg !2163
  %44 = load i8*, i8** %9, align 4, !dbg !2164, !tbaa !334
  %45 = load i8, i8* %44, align 1, !dbg !2165, !tbaa !2143
  %46 = zext i8 %45 to i32, !dbg !2165
  %47 = xor i32 %46, %43, !dbg !2165
  %48 = trunc i32 %47 to i8, !dbg !2165
  store i8 %48, i8* %44, align 1, !dbg !2165, !tbaa !2143
  br label %49, !dbg !2166

49:                                               ; preds = %41, %._crit_edge
  %50 = sext i16 %4 to i32, !dbg !2167
  %51 = load i8*, i8** %9, align 4, !dbg !2168, !tbaa !334
  %52 = getelementptr inbounds i8, i8* %51, i32 %50, !dbg !2168
  store i8* %52, i8** %9, align 4, !dbg !2168, !tbaa !334
  br label %32, !dbg !2153, !llvm.loop !2169

53:                                               ; preds = %32
  store i8* %1, i8** %9, align 4, !dbg !2171, !tbaa !334
  br label %54, !dbg !2172

54:                                               ; preds = %59, %53
  %55 = load i8*, i8** %9, align 4, !dbg !2173, !tbaa !334
  %56 = load i8, i8* %55, align 1, !dbg !2174, !tbaa !2143
  %57 = zext i8 %56 to i32, !dbg !2174
  %58 = icmp ne i32 %57, 0, !dbg !2175
  br i1 %58, label %59, label %65, !dbg !2172

59:                                               ; preds = %54
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2176
  %61 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %60), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %61, metadata !2115, metadata !DIExpression()), !dbg !2178
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %61, !dbg !2179
  %63 = load i32, i32* %62, align 4, !dbg !2180, !tbaa !1045
  %64 = add i32 %63, 1, !dbg !2180
  store i32 %64, i32* %62, align 4, !dbg !2180, !tbaa !1045
  br label %54, !dbg !2172, !llvm.loop !2181

65:                                               ; preds = %54
  store i8* %1, i8** %9, align 4, !dbg !2183, !tbaa !334
  br label %66, !dbg !2184

66:                                               ; preds = %83, %65
  %67 = load i8*, i8** %9, align 4, !dbg !2185, !tbaa !334
  %68 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2186
  %69 = icmp ult i8* %67, %68, !dbg !2187
  br i1 %69, label %70, label %87, !dbg !2184

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 4, !dbg !2188, !tbaa !334
  %72 = load i8, i8* %71, align 1, !dbg !2191, !tbaa !2143
  %73 = zext i8 %72 to i32, !dbg !2191
  %74 = icmp ne i32 %73, 44, !dbg !2192
  br i1 %74, label %75, label %._crit_edge2, !dbg !2193

._crit_edge2:                                     ; preds = %70
  br label %83, !dbg !2193

75:                                               ; preds = %70
  %76 = trunc i16 %3 to i8, !dbg !2194
  %77 = zext i8 %76 to i32, !dbg !2194
  %78 = load i8*, i8** %9, align 4, !dbg !2195, !tbaa !334
  %79 = load i8, i8* %78, align 1, !dbg !2196, !tbaa !2143
  %80 = zext i8 %79 to i32, !dbg !2196
  %81 = xor i32 %80, %77, !dbg !2196
  %82 = trunc i32 %81 to i8, !dbg !2196
  store i8 %82, i8* %78, align 1, !dbg !2196, !tbaa !2143
  br label %83, !dbg !2197

83:                                               ; preds = %75, %._crit_edge2
  %84 = sext i16 %4 to i32, !dbg !2198
  %85 = load i8*, i8** %9, align 4, !dbg !2199, !tbaa !334
  %86 = getelementptr inbounds i8, i8* %85, i32 %84, !dbg !2199
  store i8* %86, i8** %9, align 4, !dbg !2199, !tbaa !334
  br label %66, !dbg !2184, !llvm.loop !2200

87:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 0, metadata !2112, metadata !DIExpression()), !dbg !2117
  br label %88, !dbg !2202

88:                                               ; preds = %96, %87
  %.01 = phi i16 [ %5, %87 ], [ %95, %96 ]
  %.1 = phi i32 [ 0, %87 ], [ %97, %96 ], !dbg !2204
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2105, metadata !DIExpression()), !dbg !2117
  %exitcond = icmp ne i32 %.1, 8, !dbg !2205
  br i1 %exitcond, label %89, label %98, !dbg !2207

89:                                               ; preds = %88
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.1, !dbg !2208
  %91 = load i32, i32* %90, align 4, !dbg !2208, !tbaa !1045
  %92 = call arm_aapcscc zeroext i16 @crcu32(i32 %91, i16 zeroext %.01), !dbg !2210
  call void @llvm.dbg.value(metadata i16 %92, metadata !2105, metadata !DIExpression()), !dbg !2117
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.1, !dbg !2211
  %94 = load i32, i32* %93, align 4, !dbg !2211, !tbaa !1045
  %95 = call arm_aapcscc zeroext i16 @crcu32(i32 %94, i16 zeroext %92), !dbg !2212
  call void @llvm.dbg.value(metadata i16 %95, metadata !2105, metadata !DIExpression()), !dbg !2117
  br label %96, !dbg !2213

96:                                               ; preds = %89
  %97 = add nuw nsw i32 %.1, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %97, metadata !2112, metadata !DIExpression()), !dbg !2117
  br label %88, !dbg !2215, !llvm.loop !2216

98:                                               ; preds = %88
  %.01.lcssa = phi i16 [ %.01, %88 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2105, metadata !DIExpression()), !dbg !2117
  %99 = bitcast i8** %9 to i8*, !dbg !2218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #4, !dbg !2218
  %100 = bitcast [8 x i32]* %8 to i8*, !dbg !2218
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %100) #4, !dbg !2218
  %101 = bitcast [8 x i32]* %7 to i8*, !dbg !2218
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %101) #4, !dbg !2218
  ret i16 %.01.lcssa, !dbg !2219
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_state_transition(i8**, i32*) #0 !dbg !2220 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2226, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32* %1, metadata !2227, metadata !DIExpression()), !dbg !2231
  %3 = load i8*, i8** %0, align 4, !dbg !2232, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %3, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 0, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %4, !dbg !2233

4:                                                ; preds = %136, %2
  %.01 = phi i8* [ %3, %2 ], [ %137, %136 ], !dbg !2231
  %.0 = phi i32 [ 0, %2 ], [ %.13, %136 ], !dbg !2234
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2230, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2228, metadata !DIExpression()), !dbg !2231
  %5 = load i8, i8* %.01, align 1, !dbg !2235, !tbaa !2143
  %6 = zext i8 %5 to i32, !dbg !2235
  %7 = icmp ne i32 %6, 0, !dbg !2235
  br i1 %7, label %8, label %._crit_edge, !dbg !2238

._crit_edge:                                      ; preds = %4
  br label %10, !dbg !2238

8:                                                ; preds = %4
  %9 = icmp ne i32 %.0, 1, !dbg !2239
  br label %10

10:                                               ; preds = %8, %._crit_edge
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %8 ], !dbg !2240
  br i1 %11, label %12, label %._crit_edge17, !dbg !2241

._crit_edge17:                                    ; preds = %10
  %.01.lcssa = phi i8* [ %.01, %10 ], !dbg !2231
  %.0.lcssa = phi i32 [ %.0, %10 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8* %.01.lcssa, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %138, !dbg !2241

12:                                               ; preds = %10
  %13 = load i8, i8* %.01, align 1, !dbg !2242, !tbaa !2143
  call void @llvm.dbg.value(metadata i8 %13, metadata !2229, metadata !DIExpression()), !dbg !2231
  %14 = zext i8 %13 to i32, !dbg !2244
  %15 = icmp eq i32 %14, 44, !dbg !2246
  br i1 %15, label %16, label %18, !dbg !2247

16:                                               ; preds = %12
  %.01.lcssa29 = phi i8* [ %.01, %12 ], !dbg !2231
  %.0.lcssa27 = phi i32 [ %.0, %12 ], !dbg !2234
  call void @llvm.dbg.value(metadata i8* %.01.lcssa29, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %.0.lcssa27, metadata !2230, metadata !DIExpression()), !dbg !2231
  %17 = getelementptr inbounds i8, i8* %.01.lcssa29, i32 1, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %17, metadata !2228, metadata !DIExpression()), !dbg !2231
  br label %138, !dbg !2250

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
  %20 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2251
  %21 = icmp ne i8 %20, 0, !dbg !2251
  br i1 %21, label %22, label %23, !dbg !2254

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 4, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %40, !dbg !2255

23:                                               ; preds = %19
  %24 = zext i8 %13 to i32, !dbg !2257
  %25 = icmp eq i32 %24, 43, !dbg !2259
  br i1 %25, label %._crit_edge18, label %26, !dbg !2260

._crit_edge18:                                    ; preds = %23
  br label %29, !dbg !2260

26:                                               ; preds = %23
  %27 = zext i8 %13 to i32, !dbg !2261
  %28 = icmp eq i32 %27, 45, !dbg !2262
  br i1 %28, label %._crit_edge19, label %30, !dbg !2263

._crit_edge19:                                    ; preds = %26
  br label %29, !dbg !2263

29:                                               ; preds = %._crit_edge19, %._crit_edge18
  call void @llvm.dbg.value(metadata i32 2, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %39, !dbg !2264

30:                                               ; preds = %26
  %31 = zext i8 %13 to i32, !dbg !2266
  %32 = icmp eq i32 %31, 46, !dbg !2268
  br i1 %32, label %33, label %34, !dbg !2269

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 5, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %38, !dbg !2270

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2231
  %35 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2272
  %36 = load i32, i32* %35, align 4, !dbg !2274, !tbaa !1045
  %37 = add i32 %36, 1, !dbg !2274
  store i32 %37, i32* %35, align 4, !dbg !2274, !tbaa !1045
  br label %38

38:                                               ; preds = %34, %33
  %.1 = phi i32 [ 5, %33 ], [ 1, %34 ], !dbg !2275
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %39

39:                                               ; preds = %38, %29
  %.2 = phi i32 [ 2, %29 ], [ %.1, %38 ], !dbg !2276
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %40

40:                                               ; preds = %39, %22
  %.3 = phi i32 [ 4, %22 ], [ %.2, %39 ], !dbg !2277
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2230, metadata !DIExpression()), !dbg !2231
  %41 = getelementptr inbounds i32, i32* %1, i32 0, !dbg !2278
  %42 = load i32, i32* %41, align 4, !dbg !2279, !tbaa !1045
  %43 = add i32 %42, 1, !dbg !2279
  store i32 %43, i32* %41, align 4, !dbg !2279, !tbaa !1045
  br label %135, !dbg !2280

44:                                               ; preds = %NodeBlock
  %45 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2281
  %46 = icmp ne i8 %45, 0, !dbg !2281
  br i1 %46, label %47, label %51, !dbg !2283

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 4, metadata !2230, metadata !DIExpression()), !dbg !2231
  %48 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2284
  %49 = load i32, i32* %48, align 4, !dbg !2286, !tbaa !1045
  %50 = add i32 %49, 1, !dbg !2286
  store i32 %50, i32* %48, align 4, !dbg !2286, !tbaa !1045
  br label %63, !dbg !2287

51:                                               ; preds = %44
  %52 = zext i8 %13 to i32, !dbg !2288
  %53 = icmp eq i32 %52, 46, !dbg !2290
  br i1 %53, label %54, label %58, !dbg !2291

54:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 5, metadata !2230, metadata !DIExpression()), !dbg !2231
  %55 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2292
  %56 = load i32, i32* %55, align 4, !dbg !2294, !tbaa !1045
  %57 = add i32 %56, 1, !dbg !2294
  store i32 %57, i32* %55, align 4, !dbg !2294, !tbaa !1045
  br label %62, !dbg !2295

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2231
  %59 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2296
  %60 = load i32, i32* %59, align 4, !dbg !2298, !tbaa !1045
  %61 = add i32 %60, 1, !dbg !2298
  store i32 %61, i32* %59, align 4, !dbg !2298, !tbaa !1045
  br label %62

62:                                               ; preds = %58, %54
  %.4 = phi i32 [ 5, %54 ], [ 1, %58 ], !dbg !2299
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %63

63:                                               ; preds = %62, %47
  %.5 = phi i32 [ 4, %47 ], [ %.4, %62 ], !dbg !2300
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %135, !dbg !2301

64:                                               ; preds = %NodeBlock7
  %65 = zext i8 %13 to i32, !dbg !2302
  %66 = icmp eq i32 %65, 46, !dbg !2304
  br i1 %66, label %67, label %71, !dbg !2305

67:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 5, metadata !2230, metadata !DIExpression()), !dbg !2231
  %68 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2306
  %69 = load i32, i32* %68, align 4, !dbg !2308, !tbaa !1045
  %70 = add i32 %69, 1, !dbg !2308
  store i32 %70, i32* %68, align 4, !dbg !2308, !tbaa !1045
  br label %79, !dbg !2309

71:                                               ; preds = %64
  %72 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2310
  %73 = icmp ne i8 %72, 0, !dbg !2310
  br i1 %73, label %._crit_edge20, label %74, !dbg !2312

._crit_edge20:                                    ; preds = %71
  br label %78, !dbg !2312

74:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2231
  %75 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2313
  %76 = load i32, i32* %75, align 4, !dbg !2315, !tbaa !1045
  %77 = add i32 %76, 1, !dbg !2315
  store i32 %77, i32* %75, align 4, !dbg !2315, !tbaa !1045
  br label %78, !dbg !2316

78:                                               ; preds = %74, %._crit_edge20
  %.6 = phi i32 [ %.0, %._crit_edge20 ], [ 1, %74 ], !dbg !2231
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %79

79:                                               ; preds = %78, %67
  %.7 = phi i32 [ 5, %67 ], [ %.6, %78 ], !dbg !2231
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %135, !dbg !2317

80:                                               ; preds = %NodeBlock7
  %81 = zext i8 %13 to i32, !dbg !2318
  %82 = icmp eq i32 %81, 69, !dbg !2320
  br i1 %82, label %._crit_edge21, label %83, !dbg !2321

._crit_edge21:                                    ; preds = %80
  br label %86, !dbg !2321

83:                                               ; preds = %80
  %84 = zext i8 %13 to i32, !dbg !2322
  %85 = icmp eq i32 %84, 101, !dbg !2323
  br i1 %85, label %._crit_edge22, label %90, !dbg !2324

._crit_edge22:                                    ; preds = %83
  br label %86, !dbg !2324

86:                                               ; preds = %._crit_edge22, %._crit_edge21
  call void @llvm.dbg.value(metadata i32 3, metadata !2230, metadata !DIExpression()), !dbg !2231
  %87 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2325
  %88 = load i32, i32* %87, align 4, !dbg !2327, !tbaa !1045
  %89 = add i32 %88, 1, !dbg !2327
  store i32 %89, i32* %87, align 4, !dbg !2327, !tbaa !1045
  br label %98, !dbg !2328

90:                                               ; preds = %83
  %91 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2329
  %92 = icmp ne i8 %91, 0, !dbg !2329
  br i1 %92, label %._crit_edge23, label %93, !dbg !2331

._crit_edge23:                                    ; preds = %90
  br label %97, !dbg !2331

93:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2231
  %94 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2332
  %95 = load i32, i32* %94, align 4, !dbg !2334, !tbaa !1045
  %96 = add i32 %95, 1, !dbg !2334
  store i32 %96, i32* %94, align 4, !dbg !2334, !tbaa !1045
  br label %97, !dbg !2335

97:                                               ; preds = %93, %._crit_edge23
  %.8 = phi i32 [ %.0, %._crit_edge23 ], [ 1, %93 ], !dbg !2231
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %98

98:                                               ; preds = %97, %86
  %.9 = phi i32 [ 3, %86 ], [ %.8, %97 ], !dbg !2231
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %135, !dbg !2336

99:                                               ; preds = %NodeBlock
  %100 = zext i8 %13 to i32, !dbg !2337
  %101 = icmp eq i32 %100, 43, !dbg !2339
  br i1 %101, label %._crit_edge24, label %102, !dbg !2340

._crit_edge24:                                    ; preds = %99
  br label %105, !dbg !2340

102:                                              ; preds = %99
  %103 = zext i8 %13 to i32, !dbg !2341
  %104 = icmp eq i32 %103, 45, !dbg !2342
  br i1 %104, label %._crit_edge25, label %109, !dbg !2343

._crit_edge25:                                    ; preds = %102
  br label %105, !dbg !2343

105:                                              ; preds = %._crit_edge25, %._crit_edge24
  call void @llvm.dbg.value(metadata i32 6, metadata !2230, metadata !DIExpression()), !dbg !2231
  %106 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2344
  %107 = load i32, i32* %106, align 4, !dbg !2346, !tbaa !1045
  %108 = add i32 %107, 1, !dbg !2346
  store i32 %108, i32* %106, align 4, !dbg !2346, !tbaa !1045
  br label %113, !dbg !2347

109:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2231
  %110 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2348
  %111 = load i32, i32* %110, align 4, !dbg !2350, !tbaa !1045
  %112 = add i32 %111, 1, !dbg !2350
  store i32 %112, i32* %110, align 4, !dbg !2350, !tbaa !1045
  br label %113

113:                                              ; preds = %109, %105
  %.10 = phi i32 [ 6, %105 ], [ 1, %109 ], !dbg !2351
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %135, !dbg !2352

114:                                              ; preds = %NodeBlock11
  %115 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2353
  %116 = icmp ne i8 %115, 0, !dbg !2353
  br i1 %116, label %117, label %121, !dbg !2355

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 7, metadata !2230, metadata !DIExpression()), !dbg !2231
  %118 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2356
  %119 = load i32, i32* %118, align 4, !dbg !2358, !tbaa !1045
  %120 = add i32 %119, 1, !dbg !2358
  store i32 %120, i32* %118, align 4, !dbg !2358, !tbaa !1045
  br label %125, !dbg !2359

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2231
  %122 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2360
  %123 = load i32, i32* %122, align 4, !dbg !2362, !tbaa !1045
  %124 = add i32 %123, 1, !dbg !2362
  store i32 %124, i32* %122, align 4, !dbg !2362, !tbaa !1045
  br label %125

125:                                              ; preds = %121, %117
  %.11 = phi i32 [ 7, %117 ], [ 1, %121 ], !dbg !2363
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %135, !dbg !2364

126:                                              ; preds = %LeafBlock9
  %127 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2365
  %128 = icmp ne i8 %127, 0, !dbg !2365
  br i1 %128, label %._crit_edge26, label %129, !dbg !2367

._crit_edge26:                                    ; preds = %126
  br label %133, !dbg !2367

129:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2231
  %130 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2368
  %131 = load i32, i32* %130, align 4, !dbg !2370, !tbaa !1045
  %132 = add i32 %131, 1, !dbg !2370
  store i32 %132, i32* %130, align 4, !dbg !2370, !tbaa !1045
  br label %133, !dbg !2371

133:                                              ; preds = %129, %._crit_edge26
  %.12 = phi i32 [ %.0, %._crit_edge26 ], [ 1, %129 ], !dbg !2231
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %135, !dbg !2372

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock9.NewDefault_crit_edge
  br label %134

134:                                              ; preds = %NewDefault
  br label %135, !dbg !2373

135:                                              ; preds = %134, %133, %125, %113, %98, %79, %63, %40
  %.13 = phi i32 [ %.0, %134 ], [ %.12, %133 ], [ %.11, %125 ], [ %.10, %113 ], [ %.9, %98 ], [ %.7, %79 ], [ %.5, %63 ], [ %.3, %40 ], !dbg !2231
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %136, !dbg !2374

136:                                              ; preds = %135
  %137 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !2375
  call void @llvm.dbg.value(metadata i8* %137, metadata !2228, metadata !DIExpression()), !dbg !2231
  br label %4, !dbg !2376, !llvm.loop !2377

138:                                              ; preds = %16, %._crit_edge17
  %.028 = phi i32 [ %.0.lcssa27, %16 ], [ %.0.lcssa, %._crit_edge17 ]
  %.14 = phi i8* [ %17, %16 ], [ %.01.lcssa, %._crit_edge17 ], !dbg !2231
  call void @llvm.dbg.value(metadata i8* %.14, metadata !2228, metadata !DIExpression()), !dbg !2231
  store i8* %.14, i8** %0, align 4, !dbg !2379, !tbaa !334
  ret i32 %.028, !dbg !2380
}

; Function Attrs: nounwind
define internal arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext) #0 !dbg !2381 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2385, metadata !DIExpression()), !dbg !2387
  %2 = zext i8 %0 to i32, !dbg !2388
  %3 = icmp sge i32 %2, 48, !dbg !2389
  %4 = zext i1 %3 to i32, !dbg !2389
  %5 = zext i8 %0 to i32, !dbg !2390
  %6 = icmp sle i32 %5, 57, !dbg !2391
  %7 = zext i1 %6 to i32, !dbg !2391
  %8 = and i32 %4, %7, !dbg !2392
  %9 = icmp ne i32 %8, 0, !dbg !2393
  %10 = zext i1 %9 to i64, !dbg !2393
  %11 = select i1 %9, i32 1, i32 0, !dbg !2393
  %12 = trunc i32 %11 to i8, !dbg !2393
  call void @llvm.dbg.value(metadata i8 %12, metadata !2386, metadata !DIExpression()), !dbg !2387
  ret i8 %12, !dbg !2394
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @core_init_state(i32, i16 signext, i8*) #0 !dbg !2395 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2399, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i16 %1, metadata !2400, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %2, metadata !2401, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* null, metadata !2405, metadata !DIExpression()), !dbg !2406
  %4 = add i32 %0, -1, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %4, metadata !2399, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression()), !dbg !2406
  br label %5, !dbg !2408

5:                                                ; preds = %53, %3
  %.04 = phi i32 [ 0, %3 ], [ %.15, %53 ], !dbg !2409
  %.02 = phi i32 [ 0, %3 ], [ %.13, %53 ], !dbg !2406
  %.01 = phi i8* [ null, %3 ], [ %.1, %53 ], !dbg !2410
  %.0 = phi i16 [ %1, %3 ], [ %26, %53 ]
  call void @llvm.dbg.value(metadata i16 %.0, metadata !2400, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2402, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2403, metadata !DIExpression()), !dbg !2406
  %6 = add i32 %.02, %.04, !dbg !2411
  %7 = add i32 %6, 1, !dbg !2412
  %8 = icmp ult i32 %7, %4, !dbg !2413
  br i1 %8, label %9, label %54, !dbg !2408

9:                                                ; preds = %5
  %10 = icmp ugt i32 %.04, 0, !dbg !2414
  br i1 %10, label %11, label %._crit_edge, !dbg !2417

._crit_edge:                                      ; preds = %9
  br label %25, !dbg !2417

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2404, metadata !DIExpression()), !dbg !2406
  br label %12, !dbg !2418

12:                                               ; preds = %18, %11
  %.06 = phi i32 [ 0, %11 ], [ %19, %18 ], !dbg !2421
  call void @llvm.dbg.value(metadata i32 %.06, metadata !2404, metadata !DIExpression()), !dbg !2406
  %exitcond = icmp ne i32 %.06, %.04, !dbg !2422
  br i1 %exitcond, label %13, label %20, !dbg !2424

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.01, i32 %.06, !dbg !2425
  %15 = load i8, i8* %14, align 1, !dbg !2425, !tbaa !2143
  %16 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2426
  %17 = getelementptr inbounds i8, i8* %16, i32 %.06, !dbg !2427
  store i8 %15, i8* %17, align 1, !dbg !2428, !tbaa !2143
  br label %18, !dbg !2429

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %.06, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %19, metadata !2404, metadata !DIExpression()), !dbg !2406
  br label %12, !dbg !2431, !llvm.loop !2432

20:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2404, metadata !DIExpression()), !dbg !2406
  %21 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2434
  %22 = getelementptr inbounds i8, i8* %21, i32 %.04, !dbg !2435
  store i8 44, i8* %22, align 1, !dbg !2436, !tbaa !2143
  %23 = add nuw nsw i32 %.04, 1, !dbg !2437
  %24 = add i32 %.02, %23, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %24, metadata !2402, metadata !DIExpression()), !dbg !2406
  br label %25, !dbg !2439

25:                                               ; preds = %20, %._crit_edge
  %.13 = phi i32 [ %24, %20 ], [ %.02, %._crit_edge ], !dbg !2406
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2402, metadata !DIExpression()), !dbg !2406
  %26 = add i16 %.0, 1, !dbg !2440
  call void @llvm.dbg.value(metadata i16 %26, metadata !2400, metadata !DIExpression()), !dbg !2406
  %27 = sext i16 %26 to i32, !dbg !2441
  %28 = and i32 %27, 7, !dbg !2442
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
  %30 = sext i16 %26 to i32, !dbg !2443
  %31 = ashr i32 %30, 3, !dbg !2445
  %32 = and i32 %31, 3, !dbg !2446
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* @intpat, i32 0, i32 %32, !dbg !2447
  %34 = load i8*, i8** %33, align 4, !dbg !2447, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %34, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 4, metadata !2403, metadata !DIExpression()), !dbg !2406
  br label %53, !dbg !2448

35:                                               ; preds = %LeafBlock
  %36 = sext i16 %26 to i32, !dbg !2449
  %37 = ashr i32 %36, 3, !dbg !2450
  %38 = and i32 %37, 3, !dbg !2451
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* @floatpat, i32 0, i32 %38, !dbg !2452
  %40 = load i8*, i8** %39, align 4, !dbg !2452, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %40, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 8, metadata !2403, metadata !DIExpression()), !dbg !2406
  br label %53, !dbg !2453

41:                                               ; preds = %NodeBlock
  %42 = sext i16 %26 to i32, !dbg !2454
  %43 = ashr i32 %42, 3, !dbg !2455
  %44 = and i32 %43, 3, !dbg !2456
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* @scipat, i32 0, i32 %44, !dbg !2457
  %46 = load i8*, i8** %45, align 4, !dbg !2457, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %46, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 8, metadata !2403, metadata !DIExpression()), !dbg !2406
  br label %53, !dbg !2458

47:                                               ; preds = %NodeBlock
  %48 = sext i16 %26 to i32, !dbg !2459
  %49 = ashr i32 %48, 3, !dbg !2460
  %50 = and i32 %49, 3, !dbg !2461
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* @errpat, i32 0, i32 %50, !dbg !2462
  %52 = load i8*, i8** %51, align 4, !dbg !2462, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %52, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 8, metadata !2403, metadata !DIExpression()), !dbg !2406
  br label %53, !dbg !2463

53:                                               ; preds = %47, %41, %35, %29
  %.15 = phi i32 [ 8, %47 ], [ 8, %41 ], [ 8, %35 ], [ 4, %29 ], !dbg !2406
  %.1 = phi i8* [ %52, %47 ], [ %46, %41 ], [ %40, %35 ], [ %34, %29 ], !dbg !2406
  call void @llvm.dbg.value(metadata i8* %.1, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2403, metadata !DIExpression()), !dbg !2406
  br label %5, !dbg !2408, !llvm.loop !2464

54:                                               ; preds = %5
  %.02.lcssa = phi i32 [ %.02, %5 ], !dbg !2406
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !2402, metadata !DIExpression()), !dbg !2406
  %55 = add i32 %4, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %55, metadata !2399, metadata !DIExpression()), !dbg !2406
  br label %56, !dbg !2467

56:                                               ; preds = %58, %54
  %.2 = phi i32 [ %.02.lcssa, %54 ], [ %60, %58 ], !dbg !2406
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2402, metadata !DIExpression()), !dbg !2406
  %57 = icmp ult i32 %.2, %55, !dbg !2468
  br i1 %57, label %58, label %61, !dbg !2467

58:                                               ; preds = %56
  %59 = getelementptr inbounds i8, i8* %2, i32 %.2, !dbg !2469
  store i8 0, i8* %59, align 1, !dbg !2471, !tbaa !2143
  %60 = add i32 %.2, 1, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %60, metadata !2402, metadata !DIExpression()), !dbg !2406
  br label %56, !dbg !2467, !llvm.loop !2473

61:                                               ; preds = %56
  ret void, !dbg !2475
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_seed_32(i32) #0 !dbg !2476 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2483
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
  %3 = load volatile i32, i32* @seed1_volatile, align 4, !dbg !2484, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %3, metadata !2482, metadata !DIExpression()), !dbg !2483
  br label %13, !dbg !2486

4:                                                ; preds = %NodeBlock
  %5 = load volatile i32, i32* @seed2_volatile, align 4, !dbg !2487, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %5, metadata !2482, metadata !DIExpression()), !dbg !2483
  br label %13, !dbg !2488

6:                                                ; preds = %NodeBlock5
  %7 = load volatile i32, i32* @seed3_volatile, align 4, !dbg !2489, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %7, metadata !2482, metadata !DIExpression()), !dbg !2483
  br label %13, !dbg !2490

8:                                                ; preds = %NodeBlock3
  %9 = load volatile i32, i32* @seed4_volatile, align 4, !dbg !2491, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %9, metadata !2482, metadata !DIExpression()), !dbg !2483
  br label %13, !dbg !2492

10:                                               ; preds = %LeafBlock1
  %11 = load volatile i32, i32* @seed5_volatile, align 4, !dbg !2493, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %11, metadata !2482, metadata !DIExpression()), !dbg !2483
  br label %13, !dbg !2494

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock1.NewDefault_crit_edge
  br label %12

12:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2482, metadata !DIExpression()), !dbg !2483
  br label %13, !dbg !2495

13:                                               ; preds = %12, %10, %8, %6, %4, %2
  %.0 = phi i32 [ 0, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], !dbg !2496
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2482, metadata !DIExpression()), !dbg !2483
  ret i32 %.0, !dbg !2497
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu8(i8 zeroext, i16 zeroext) #0 !dbg !2498 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i16 %1, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2507
  br label %3, !dbg !2508

3:                                                ; preds = %36, %2
  %indvars.iv = phi i32 [ %indvars.iv.next, %36 ], [ 0, %2 ], !dbg !2510
  %.01 = phi i16 [ %1, %2 ], [ %.2, %36 ]
  %.0 = phi i8 [ %0, %2 ], [ %14, %36 ]
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %indvars.iv, metadata !2504, metadata !DIExpression()), !dbg !2507
  %exitcond = icmp ne i32 %indvars.iv, 8, !dbg !2511
  br i1 %exitcond, label %4, label %37, !dbg !2513

4:                                                ; preds = %3
  %5 = zext i8 %.0 to i32, !dbg !2514
  %6 = and i32 %5, 1, !dbg !2516
  %7 = trunc i16 %.01 to i8, !dbg !2517
  %8 = zext i8 %7 to i32, !dbg !2517
  %9 = and i32 %8, 1, !dbg !2518
  %10 = xor i32 %6, %9, !dbg !2519
  %11 = trunc i32 %10 to i8, !dbg !2520
  call void @llvm.dbg.value(metadata i8 %11, metadata !2505, metadata !DIExpression()), !dbg !2507
  %12 = zext i8 %.0 to i32, !dbg !2521
  %13 = ashr i32 %12, 1, !dbg !2521
  %14 = trunc i32 %13 to i8, !dbg !2521
  call void @llvm.dbg.value(metadata i8 %14, metadata !2502, metadata !DIExpression()), !dbg !2507
  %15 = zext i8 %11 to i32, !dbg !2522
  %16 = icmp eq i32 %15, 1, !dbg !2524
  br i1 %16, label %17, label %21, !dbg !2525

17:                                               ; preds = %4
  %18 = zext i16 %.01 to i32, !dbg !2526
  %19 = xor i32 %18, 16386, !dbg !2526
  %20 = trunc i32 %19 to i16, !dbg !2526
  call void @llvm.dbg.value(metadata i16 %20, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 1, metadata !2506, metadata !DIExpression()), !dbg !2507
  br label %22, !dbg !2528

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2507
  br label %22

22:                                               ; preds = %21, %17
  %.03 = phi i8 [ 1, %17 ], [ 0, %21 ], !dbg !2529
  %.1 = phi i16 [ %20, %17 ], [ %.01, %21 ]
  call void @llvm.dbg.value(metadata i16 %.1, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 %.03, metadata !2506, metadata !DIExpression()), !dbg !2507
  %23 = zext i16 %.1 to i32, !dbg !2530
  %24 = ashr i32 %23, 1, !dbg !2530
  %25 = trunc i32 %24 to i16, !dbg !2530
  call void @llvm.dbg.value(metadata i16 %25, metadata !2503, metadata !DIExpression()), !dbg !2507
  %26 = icmp ne i8 %.03, 0, !dbg !2531
  br i1 %26, label %27, label %31, !dbg !2533

27:                                               ; preds = %22
  %28 = zext i16 %25 to i32, !dbg !2534
  %29 = or i32 %28, 32768, !dbg !2534
  %30 = trunc i32 %29 to i16, !dbg !2534
  call void @llvm.dbg.value(metadata i16 %30, metadata !2503, metadata !DIExpression()), !dbg !2507
  br label %35, !dbg !2535

31:                                               ; preds = %22
  %32 = zext i16 %25 to i32, !dbg !2536
  %33 = and i32 %32, 32767, !dbg !2536
  %34 = trunc i32 %33 to i16, !dbg !2536
  call void @llvm.dbg.value(metadata i16 %34, metadata !2503, metadata !DIExpression()), !dbg !2507
  br label %35

35:                                               ; preds = %31, %27
  %.2 = phi i16 [ %30, %27 ], [ %34, %31 ], !dbg !2537
  call void @llvm.dbg.value(metadata i16 %.2, metadata !2503, metadata !DIExpression()), !dbg !2507
  br label %36, !dbg !2538

36:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !dbg !2539
  call void @llvm.dbg.value(metadata i8 undef, metadata !2504, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2507
  br label %3, !dbg !2540, !llvm.loop !2541

37:                                               ; preds = %3
  %.01.lcssa = phi i16 [ %.01, %3 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2503, metadata !DIExpression()), !dbg !2507
  ret i16 %.01.lcssa, !dbg !2543
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu16(i16 zeroext, i16 zeroext) #0 !dbg !2544 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2548, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i16 %1, metadata !2549, metadata !DIExpression()), !dbg !2550
  %3 = trunc i16 %0 to i8, !dbg !2551
  %4 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %3, i16 zeroext %1), !dbg !2552
  call void @llvm.dbg.value(metadata i16 %4, metadata !2549, metadata !DIExpression()), !dbg !2550
  %5 = zext i16 %0 to i32, !dbg !2553
  %6 = ashr i32 %5, 8, !dbg !2554
  %7 = trunc i32 %6 to i8, !dbg !2555
  %8 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %7, i16 zeroext %4), !dbg !2556
  call void @llvm.dbg.value(metadata i16 %8, metadata !2549, metadata !DIExpression()), !dbg !2550
  ret i16 %8, !dbg !2557
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu32(i32, i16 zeroext) #0 !dbg !2558 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2562, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i16 %1, metadata !2563, metadata !DIExpression()), !dbg !2564
  %3 = trunc i32 %0 to i16, !dbg !2565
  %4 = call arm_aapcscc zeroext i16 @crc16(i16 signext %3, i16 zeroext %1), !dbg !2566
  call void @llvm.dbg.value(metadata i16 %4, metadata !2563, metadata !DIExpression()), !dbg !2564
  %5 = lshr i32 %0, 16, !dbg !2567
  %6 = trunc i32 %5 to i16, !dbg !2568
  %7 = call arm_aapcscc zeroext i16 @crc16(i16 signext %6, i16 zeroext %4), !dbg !2569
  call void @llvm.dbg.value(metadata i16 %7, metadata !2563, metadata !DIExpression()), !dbg !2564
  ret i16 %7, !dbg !2570
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crc16(i16 signext, i16 zeroext) #0 !dbg !2571 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i16 %1, metadata !2576, metadata !DIExpression()), !dbg !2577
  %3 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %0, i16 zeroext %1), !dbg !2578
  ret i16 %3, !dbg !2579
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i8 @check_data_types() #0 !dbg !2580 {
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2584
  %1 = zext i8 0 to i32, !dbg !2585
  %2 = icmp sgt i32 %1, 0, !dbg !2587
  br i1 %2, label %3, label %._crit_edge, !dbg !2588

._crit_edge:                                      ; preds = %0
  br label %6, !dbg !2588

3:                                                ; preds = %0
  %4 = getelementptr [54 x i8], [54 x i8]* @.str.48, i32 0, i32 0
  %5 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %4), !dbg !2589
  br label %6, !dbg !2591

6:                                                ; preds = %3, %._crit_edge
  ret i8 0, !dbg !2592
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i64 @clock() #3 !dbg !2593 {
  %1 = load volatile i64, i64* @dummy, align 8, !dbg !2596, !tbaa !2597
  ret i64 %1, !dbg !2599
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @start_time() #0 !dbg !2600 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !2601
  store volatile i64 %1, i64* @start_time_val, align 8, !dbg !2601, !tbaa !2597
  ret void, !dbg !2602
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @stop_time() #0 !dbg !2603 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !2604
  store volatile i64 %1, i64* @stop_time_val, align 8, !dbg !2604, !tbaa !2597
  ret void, !dbg !2605
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_time() #0 !dbg !2606 {
  %1 = load volatile i64, i64* @stop_time_val, align 8, !dbg !2611, !tbaa !2597
  %2 = load volatile i64, i64* @start_time_val, align 8, !dbg !2611, !tbaa !2597
  %3 = sub i64 %1, %2, !dbg !2611
  %4 = trunc i64 %3 to i32, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %4, metadata !2610, metadata !DIExpression()), !dbg !2613
  ret i32 %4, !dbg !2614
}

; Function Attrs: nounwind
define dso_local arm_aapcscc double @time_in_secs(i32) #0 !dbg !2615 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2619, metadata !DIExpression()), !dbg !2621
  %2 = uitofp i32 %0 to double, !dbg !2622
  %3 = fdiv double %2, 1.000000e+07, !dbg !2623
  call void @llvm.dbg.value(metadata double %3, metadata !2620, metadata !DIExpression()), !dbg !2621
  ret double %3, !dbg !2624
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S*, i32*, i8**) #0 !dbg !2625 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32* %1, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8** %2, metadata !2637, metadata !DIExpression()), !dbg !2638
  %4 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2639
  store i8 1, i8* %4, align 1, !dbg !2640, !tbaa !2641
  ret void, !dbg !2642
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S*) #0 !dbg !2643 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2647, metadata !DIExpression()), !dbg !2648
  %2 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2649
  store i8 0, i8* %2, align 1, !dbg !2650, !tbaa !2641
  ret void, !dbg !2651
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @printf_(i8*, ...) #0 !dbg !2652 {
  %2 = alloca %struct.__va_list, align 4
  %3 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2658, metadata !DIExpression()), !dbg !2670
  %4 = bitcast %struct.__va_list* %2 to i8*, !dbg !2671
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !2671
  call void @llvm.dbg.declare(metadata %struct.__va_list* %2, metadata !2659, metadata !DIExpression()), !dbg !2672
  %5 = bitcast %struct.__va_list* %2 to i8*, !dbg !2673
  call void @llvm.va_start(i8* %5), !dbg !2673
  %6 = bitcast [1 x i8]* %3 to i8*, !dbg !2674
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #4, !dbg !2674
  call void @llvm.dbg.declare(metadata [1 x i8]* %3, metadata !2666, metadata !DIExpression()), !dbg !2675
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i32 0, i32 0, !dbg !2676
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %2, i32 0, i32 0, !dbg !2677
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !2677
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !2677
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %7, i32 -1, i8* %0, [1 x i32] %10), !dbg !2677
  call void @llvm.dbg.value(metadata i32 %11, metadata !2668, metadata !DIExpression()), !dbg !2670
  %12 = bitcast %struct.__va_list* %2 to i8*, !dbg !2678
  call void @llvm.va_end(i8* %12), !dbg !2678
  %13 = bitcast [1 x i8]* %3 to i8*, !dbg !2679
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4, !dbg !2679
  %14 = bitcast %struct.__va_list* %2 to i8*, !dbg !2679
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !2679
  ret i32 %11, !dbg !2680
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_char(i8 zeroext, i8*, i32, i32) #5 !dbg !2681 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2683, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %1, metadata !2684, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i32 %2, metadata !2685, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i32 %3, metadata !2686, metadata !DIExpression()), !dbg !2687
  %5 = icmp ne i8 %0, 0, !dbg !2688
  br i1 %5, label %6, label %._crit_edge, !dbg !2690

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2690

6:                                                ; preds = %4
  call arm_aapcscc void @_putchar(i8 zeroext %0), !dbg !2691
  br label %7, !dbg !2693

7:                                                ; preds = %6, %._crit_edge
  ret void, !dbg !2694
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32]) #0 !dbg !2695 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca i8*, align 4
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %6, i32 0, i32 0
  %9 = bitcast i8** %8 to [1 x i32]*
  store [1 x i32] %4, [1 x i32]* %9, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !2700, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %1, metadata !2701, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %2, metadata !2702, metadata !DIExpression()), !dbg !2752
  store i8* %3, i8** %7, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2703, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata %struct.__va_list* %6, metadata !2704, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2709, metadata !DIExpression()), !dbg !2752
  %10 = icmp ne i8* %1, null, !dbg !2755
  br i1 %10, label %._crit_edge, label %11, !dbg !2757

._crit_edge:                                      ; preds = %5
  br label %12, !dbg !2757

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* @_out_null, metadata !2700, metadata !DIExpression()), !dbg !2752
  br label %12, !dbg !2758

12:                                               ; preds = %11, %._crit_edge
  %.0 = phi void (i8, i8*, i32, i32)* [ %0, %._crit_edge ], [ @_out_null, %11 ]
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %.0, metadata !2700, metadata !DIExpression()), !dbg !2752
  br label %13, !dbg !2760

13:                                               ; preds = %.backedge, %12
  %.018 = phi i32 [ 0, %12 ], [ %.018.be, %.backedge ], !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.018, metadata !2709, metadata !DIExpression()), !dbg !2752
  %14 = load i8*, i8** %7, align 4, !dbg !2761, !tbaa !334
  %15 = load i8, i8* %14, align 1, !dbg !2762, !tbaa !2143
  %16 = icmp ne i8 %15, 0, !dbg !2760
  br i1 %16, label %17, label %543, !dbg !2760

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 4, !dbg !2763, !tbaa !334
  %19 = load i8, i8* %18, align 1, !dbg !2765, !tbaa !2143
  %20 = zext i8 %19 to i32, !dbg !2765
  %21 = icmp ne i32 %20, 37, !dbg !2766
  br i1 %21, label %22, label %28, !dbg !2767

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 4, !dbg !2768, !tbaa !334
  %24 = load i8, i8* %23, align 1, !dbg !2770, !tbaa !2143
  %25 = add i32 %.018, 1, !dbg !2771
  call void @llvm.dbg.value(metadata i32 %25, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext %24, i8* %1, i32 %.018, i32 %2), !dbg !2772
  %26 = load i8*, i8** %7, align 4, !dbg !2773, !tbaa !334
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2773
  store i8* %27, i8** %7, align 4, !dbg !2773, !tbaa !334
  br label %.backedge, !dbg !2774

.backedge:                                        ; preds = %542, %22
  %.018.be = phi i32 [ %25, %22 ], [ %.1533, %542 ]
  br label %13, !dbg !2752, !llvm.loop !2775

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 4, !dbg !2777, !tbaa !334
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !2777
  store i8* %30, i8** %7, align 4, !dbg !2777, !tbaa !334
  br label %31

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %32, !dbg !2779

32:                                               ; preds = %._crit_edge124, %31
  %.03 = phi i32 [ 0, %31 ], [ %.14, %._crit_edge124 ], !dbg !2780
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2705, metadata !DIExpression()), !dbg !2752
  %33 = load i8*, i8** %7, align 4, !dbg !2781, !tbaa !334
  %34 = load i8, i8* %33, align 1, !dbg !2783, !tbaa !2143
  %35 = zext i8 %34 to i32, !dbg !2783
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
  %37 = or i32 %.03, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %37, metadata !2705, metadata !DIExpression()), !dbg !2752
  %38 = load i8*, i8** %7, align 4, !dbg !2786, !tbaa !334
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2786
  store i8* %39, i8** %7, align 4, !dbg !2786, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2708, metadata !DIExpression()), !dbg !2752
  br label %57, !dbg !2787

40:                                               ; preds = %LeafBlock44
  %41 = or i32 %.03, 2, !dbg !2788
  call void @llvm.dbg.value(metadata i32 %41, metadata !2705, metadata !DIExpression()), !dbg !2752
  %42 = load i8*, i8** %7, align 4, !dbg !2789, !tbaa !334
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !2789
  store i8* %43, i8** %7, align 4, !dbg !2789, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2708, metadata !DIExpression()), !dbg !2752
  br label %57, !dbg !2790

44:                                               ; preds = %LeafBlock42
  %45 = or i32 %.03, 4, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %45, metadata !2705, metadata !DIExpression()), !dbg !2752
  %46 = load i8*, i8** %7, align 4, !dbg !2792, !tbaa !334
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !2792
  store i8* %47, i8** %7, align 4, !dbg !2792, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2708, metadata !DIExpression()), !dbg !2752
  br label %57, !dbg !2793

48:                                               ; preds = %LeafBlock
  %49 = or i32 %.03, 8, !dbg !2794
  call void @llvm.dbg.value(metadata i32 %49, metadata !2705, metadata !DIExpression()), !dbg !2752
  %50 = load i8*, i8** %7, align 4, !dbg !2795, !tbaa !334
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !2795
  store i8* %51, i8** %7, align 4, !dbg !2795, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2708, metadata !DIExpression()), !dbg !2752
  br label %57, !dbg !2796

52:                                               ; preds = %LeafBlock40
  %53 = or i32 %.03, 16, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %53, metadata !2705, metadata !DIExpression()), !dbg !2752
  %54 = load i8*, i8** %7, align 4, !dbg !2798, !tbaa !334
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !2798
  store i8* %55, i8** %7, align 4, !dbg !2798, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2708, metadata !DIExpression()), !dbg !2752
  br label %57, !dbg !2799

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock40.NewDefault_crit_edge, %LeafBlock42.NewDefault_crit_edge, %LeafBlock44.NewDefault_crit_edge, %LeafBlock46.NewDefault_crit_edge
  br label %56

56:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2708, metadata !DIExpression()), !dbg !2752
  br label %57, !dbg !2800

57:                                               ; preds = %56, %52, %48, %44, %40, %36
  %.017 = phi i32 [ 0, %56 ], [ 1, %52 ], [ 1, %48 ], [ 1, %44 ], [ 1, %40 ], [ 1, %36 ], !dbg !2801
  %.14 = phi i32 [ %.03, %56 ], [ %53, %52 ], [ %49, %48 ], [ %45, %44 ], [ %41, %40 ], [ %37, %36 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.017, metadata !2708, metadata !DIExpression()), !dbg !2752
  br label %58, !dbg !2803

58:                                               ; preds = %57
  %59 = icmp ne i32 %.017, 0, !dbg !2803
  br i1 %59, label %._crit_edge124, label %60, !dbg !2803, !llvm.loop !2804

._crit_edge124:                                   ; preds = %58
  br label %32, !dbg !2803

60:                                               ; preds = %58
  %.14.lcssa = phi i32 [ %.14, %58 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2706, metadata !DIExpression()), !dbg !2752
  %61 = load i8*, i8** %7, align 4, !dbg !2806, !tbaa !334
  %62 = load i8, i8* %61, align 1, !dbg !2807, !tbaa !2143
  %63 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %62), !dbg !2808
  br i1 %63, label %64, label %66, !dbg !2809

64:                                               ; preds = %60
  %65 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2810
  call void @llvm.dbg.value(metadata i32 %65, metadata !2706, metadata !DIExpression()), !dbg !2752
  br label %86, !dbg !2812

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 4, !dbg !2813, !tbaa !334
  %68 = load i8, i8* %67, align 1, !dbg !2814, !tbaa !2143
  %69 = zext i8 %68 to i32, !dbg !2814
  %70 = icmp eq i32 %69, 42, !dbg !2815
  br i1 %70, label %71, label %._crit_edge125, !dbg !2816

._crit_edge125:                                   ; preds = %66
  br label %85, !dbg !2816

71:                                               ; preds = %66
  %72 = bitcast %struct.__va_list* %6 to i8**, !dbg !2817
  %73 = load i8*, i8** %72, align 4, !dbg !2817
  %74 = getelementptr inbounds i8, i8* %73, i32 4, !dbg !2817
  store i8* %74, i8** %72, align 4, !dbg !2817
  %75 = bitcast i8* %73 to i32*, !dbg !2817
  %76 = load i32, i32* %75, align 4, !dbg !2817
  call void @llvm.dbg.value(metadata i32 %76, metadata !2710, metadata !DIExpression()), !dbg !2818
  %77 = icmp slt i32 %76, 0, !dbg !2819
  br i1 %77, label %78, label %81, !dbg !2821

78:                                               ; preds = %71
  %79 = or i32 %.14.lcssa, 2, !dbg !2822
  call void @llvm.dbg.value(metadata i32 %79, metadata !2705, metadata !DIExpression()), !dbg !2752
  %80 = sub nsw i32 0, %76, !dbg !2824
  call void @llvm.dbg.value(metadata i32 %80, metadata !2706, metadata !DIExpression()), !dbg !2752
  br label %82, !dbg !2825

81:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 %76, metadata !2706, metadata !DIExpression()), !dbg !2752
  br label %82

82:                                               ; preds = %81, %78
  %.08 = phi i32 [ %80, %78 ], [ %76, %81 ], !dbg !2826
  %.25 = phi i32 [ %79, %78 ], [ %.14.lcssa, %81 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.25, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.08, metadata !2706, metadata !DIExpression()), !dbg !2752
  %83 = load i8*, i8** %7, align 4, !dbg !2827, !tbaa !334
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !2827
  store i8* %84, i8** %7, align 4, !dbg !2827, !tbaa !334
  br label %85, !dbg !2828

85:                                               ; preds = %82, %._crit_edge125
  %.19 = phi i32 [ %.08, %82 ], [ 0, %._crit_edge125 ], !dbg !2802
  %.36 = phi i32 [ %.25, %82 ], [ %.14.lcssa, %._crit_edge125 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.36, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2706, metadata !DIExpression()), !dbg !2752
  br label %86

86:                                               ; preds = %85, %64
  %.210 = phi i32 [ %65, %64 ], [ %.19, %85 ], !dbg !2829
  %.4 = phi i32 [ %.14.lcssa, %64 ], [ %.36, %85 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.210, metadata !2706, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2752
  %87 = load i8*, i8** %7, align 4, !dbg !2830, !tbaa !334
  %88 = load i8, i8* %87, align 1, !dbg !2831, !tbaa !2143
  %89 = zext i8 %88 to i32, !dbg !2831
  %90 = icmp eq i32 %89, 46, !dbg !2832
  br i1 %90, label %91, label %._crit_edge126, !dbg !2833

._crit_edge126:                                   ; preds = %86
  br label %120, !dbg !2833

91:                                               ; preds = %86
  %92 = or i32 %.4, 1024, !dbg !2834
  call void @llvm.dbg.value(metadata i32 %92, metadata !2705, metadata !DIExpression()), !dbg !2752
  %93 = load i8*, i8** %7, align 4, !dbg !2835, !tbaa !334
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !2835
  store i8* %94, i8** %7, align 4, !dbg !2835, !tbaa !334
  %95 = load i8*, i8** %7, align 4, !dbg !2836, !tbaa !334
  %96 = load i8, i8* %95, align 1, !dbg !2837, !tbaa !2143
  %97 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %96), !dbg !2838
  br i1 %97, label %98, label %100, !dbg !2839

98:                                               ; preds = %91
  %99 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2840
  call void @llvm.dbg.value(metadata i32 %99, metadata !2707, metadata !DIExpression()), !dbg !2752
  br label %119, !dbg !2842

100:                                              ; preds = %91
  %101 = load i8*, i8** %7, align 4, !dbg !2843, !tbaa !334
  %102 = load i8, i8* %101, align 1, !dbg !2844, !tbaa !2143
  %103 = zext i8 %102 to i32, !dbg !2844
  %104 = icmp eq i32 %103, 42, !dbg !2845
  br i1 %104, label %105, label %._crit_edge127, !dbg !2846

._crit_edge127:                                   ; preds = %100
  br label %118, !dbg !2846

105:                                              ; preds = %100
  %106 = bitcast %struct.__va_list* %6 to i8**, !dbg !2847
  %107 = load i8*, i8** %106, align 4, !dbg !2847
  %108 = getelementptr inbounds i8, i8* %107, i32 4, !dbg !2847
  store i8* %108, i8** %106, align 4, !dbg !2847
  %109 = bitcast i8* %107 to i32*, !dbg !2847
  %110 = load i32, i32* %109, align 4, !dbg !2847
  call void @llvm.dbg.value(metadata i32 %110, metadata !2715, metadata !DIExpression()), !dbg !2848
  %111 = icmp sgt i32 %110, 0, !dbg !2849
  br i1 %111, label %112, label %113, !dbg !2850

112:                                              ; preds = %105
  br label %114, !dbg !2850

113:                                              ; preds = %105
  br label %114, !dbg !2850

114:                                              ; preds = %113, %112
  %115 = phi i32 [ %110, %112 ], [ 0, %113 ], !dbg !2850
  call void @llvm.dbg.value(metadata i32 %115, metadata !2707, metadata !DIExpression()), !dbg !2752
  %116 = load i8*, i8** %7, align 4, !dbg !2851, !tbaa !334
  %117 = getelementptr inbounds i8, i8* %116, i32 1, !dbg !2851
  store i8* %117, i8** %7, align 4, !dbg !2851, !tbaa !334
  br label %118, !dbg !2852

118:                                              ; preds = %114, %._crit_edge127
  %.011 = phi i32 [ %115, %114 ], [ 0, %._crit_edge127 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.011, metadata !2707, metadata !DIExpression()), !dbg !2752
  br label %119

119:                                              ; preds = %118, %98
  %.112 = phi i32 [ %99, %98 ], [ %.011, %118 ], !dbg !2853
  call void @llvm.dbg.value(metadata i32 %.112, metadata !2707, metadata !DIExpression()), !dbg !2752
  br label %120, !dbg !2854

120:                                              ; preds = %119, %._crit_edge126
  %.213 = phi i32 [ %.112, %119 ], [ 0, %._crit_edge126 ], !dbg !2802
  %.5 = phi i32 [ %92, %119 ], [ %.4, %._crit_edge126 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.213, metadata !2707, metadata !DIExpression()), !dbg !2752
  %121 = load i8*, i8** %7, align 4, !dbg !2855, !tbaa !334
  %122 = load i8, i8* %121, align 1, !dbg !2856, !tbaa !2143
  %123 = zext i8 %122 to i32, !dbg !2856
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
  %125 = or i32 %.5, 256, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %125, metadata !2705, metadata !DIExpression()), !dbg !2752
  %126 = load i8*, i8** %7, align 4, !dbg !2859, !tbaa !334
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !2859
  store i8* %127, i8** %7, align 4, !dbg !2859, !tbaa !334
  %128 = load i8*, i8** %7, align 4, !dbg !2860, !tbaa !334
  %129 = load i8, i8* %128, align 1, !dbg !2862, !tbaa !2143
  %130 = zext i8 %129 to i32, !dbg !2862
  %131 = icmp eq i32 %130, 108, !dbg !2863
  br i1 %131, label %132, label %._crit_edge128, !dbg !2864

._crit_edge128:                                   ; preds = %124
  br label %136, !dbg !2864

132:                                              ; preds = %124
  %133 = or i32 %125, 512, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %133, metadata !2705, metadata !DIExpression()), !dbg !2752
  %134 = load i8*, i8** %7, align 4, !dbg !2867, !tbaa !334
  %135 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !2867
  store i8* %135, i8** %7, align 4, !dbg !2867, !tbaa !334
  br label %136, !dbg !2868

136:                                              ; preds = %132, %._crit_edge128
  %.6 = phi i32 [ %133, %132 ], [ %125, %._crit_edge128 ], !dbg !2869
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %163, !dbg !2870

137:                                              ; preds = %LeafBlock55
  %138 = or i32 %.5, 128, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %138, metadata !2705, metadata !DIExpression()), !dbg !2752
  %139 = load i8*, i8** %7, align 4, !dbg !2872, !tbaa !334
  %140 = getelementptr inbounds i8, i8* %139, i32 1, !dbg !2872
  store i8* %140, i8** %7, align 4, !dbg !2872, !tbaa !334
  %141 = load i8*, i8** %7, align 4, !dbg !2873, !tbaa !334
  %142 = load i8, i8* %141, align 1, !dbg !2875, !tbaa !2143
  %143 = zext i8 %142 to i32, !dbg !2875
  %144 = icmp eq i32 %143, 104, !dbg !2876
  br i1 %144, label %145, label %._crit_edge129, !dbg !2877

._crit_edge129:                                   ; preds = %137
  br label %149, !dbg !2877

145:                                              ; preds = %137
  %146 = or i32 %138, 64, !dbg !2878
  call void @llvm.dbg.value(metadata i32 %146, metadata !2705, metadata !DIExpression()), !dbg !2752
  %147 = load i8*, i8** %7, align 4, !dbg !2880, !tbaa !334
  %148 = getelementptr inbounds i8, i8* %147, i32 1, !dbg !2880
  store i8* %148, i8** %7, align 4, !dbg !2880, !tbaa !334
  br label %149, !dbg !2881

149:                                              ; preds = %145, %._crit_edge129
  %.7 = phi i32 [ %146, %145 ], [ %138, %._crit_edge129 ], !dbg !2869
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %163, !dbg !2882

150:                                              ; preds = %LeafBlock63
  %151 = or i32 %.5, 256, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %151, metadata !2705, metadata !DIExpression()), !dbg !2752
  %152 = load i8*, i8** %7, align 4, !dbg !2884, !tbaa !334
  %153 = getelementptr inbounds i8, i8* %152, i32 1, !dbg !2884
  store i8* %153, i8** %7, align 4, !dbg !2884, !tbaa !334
  br label %163, !dbg !2885

154:                                              ; preds = %LeafBlock57
  %155 = or i32 %.5, 512, !dbg !2886
  call void @llvm.dbg.value(metadata i32 %155, metadata !2705, metadata !DIExpression()), !dbg !2752
  %156 = load i8*, i8** %7, align 4, !dbg !2887, !tbaa !334
  %157 = getelementptr inbounds i8, i8* %156, i32 1, !dbg !2887
  store i8* %157, i8** %7, align 4, !dbg !2887, !tbaa !334
  br label %163, !dbg !2888

158:                                              ; preds = %LeafBlock65
  %159 = or i32 %.5, 256, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %159, metadata !2705, metadata !DIExpression()), !dbg !2752
  %160 = load i8*, i8** %7, align 4, !dbg !2890, !tbaa !334
  %161 = getelementptr inbounds i8, i8* %160, i32 1, !dbg !2890
  store i8* %161, i8** %7, align 4, !dbg !2890, !tbaa !334
  br label %163, !dbg !2891

NewDefault54:                                     ; preds = %LeafBlock55.NewDefault54_crit_edge, %LeafBlock57.NewDefault54_crit_edge, %LeafBlock61.NewDefault54_crit_edge, %LeafBlock63.NewDefault54_crit_edge, %LeafBlock65.NewDefault54_crit_edge
  br label %162

162:                                              ; preds = %NewDefault54
  br label %163, !dbg !2892

163:                                              ; preds = %162, %158, %154, %150, %149, %136
  %.8 = phi i32 [ %.5, %162 ], [ %159, %158 ], [ %155, %154 ], [ %151, %150 ], [ %.7, %149 ], [ %.6, %136 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2705, metadata !DIExpression()), !dbg !2752
  %164 = load i8*, i8** %7, align 4, !dbg !2893, !tbaa !334
  %165 = load i8, i8* %164, align 1, !dbg !2894, !tbaa !2143
  %166 = zext i8 %165 to i32, !dbg !2894
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
  %168 = load i8*, i8** %7, align 4, !dbg !2895, !tbaa !334
  %169 = load i8, i8* %168, align 1, !dbg !2897, !tbaa !2143
  %170 = zext i8 %169 to i32, !dbg !2897
  %171 = icmp eq i32 %170, 120, !dbg !2898
  br i1 %171, label %._crit_edge131, label %172, !dbg !2899

._crit_edge131:                                   ; preds = %167
  br label %177, !dbg !2899

172:                                              ; preds = %167
  %173 = load i8*, i8** %7, align 4, !dbg !2900, !tbaa !334
  %174 = load i8, i8* %173, align 1, !dbg !2901, !tbaa !2143
  %175 = zext i8 %174 to i32, !dbg !2901
  %176 = icmp eq i32 %175, 88, !dbg !2902
  br i1 %176, label %._crit_edge132, label %178, !dbg !2903

._crit_edge132:                                   ; preds = %172
  br label %177, !dbg !2903

177:                                              ; preds = %._crit_edge132, %._crit_edge131
  call void @llvm.dbg.value(metadata i32 16, metadata !2721, metadata !DIExpression()), !dbg !2904
  br label %194, !dbg !2905

178:                                              ; preds = %172
  %179 = load i8*, i8** %7, align 4, !dbg !2907, !tbaa !334
  %180 = load i8, i8* %179, align 1, !dbg !2909, !tbaa !2143
  %181 = zext i8 %180 to i32, !dbg !2909
  %182 = icmp eq i32 %181, 111, !dbg !2910
  br i1 %182, label %183, label %184, !dbg !2911

183:                                              ; preds = %178
  call void @llvm.dbg.value(metadata i32 8, metadata !2721, metadata !DIExpression()), !dbg !2904
  br label %193, !dbg !2912

184:                                              ; preds = %178
  %185 = load i8*, i8** %7, align 4, !dbg !2914, !tbaa !334
  %186 = load i8, i8* %185, align 1, !dbg !2916, !tbaa !2143
  %187 = zext i8 %186 to i32, !dbg !2916
  %188 = icmp eq i32 %187, 98, !dbg !2917
  br i1 %188, label %189, label %190, !dbg !2918

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 2, metadata !2721, metadata !DIExpression()), !dbg !2904
  br label %192, !dbg !2919

190:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 10, metadata !2721, metadata !DIExpression()), !dbg !2904
  %191 = and i32 %.8, -17, !dbg !2921
  call void @llvm.dbg.value(metadata i32 %191, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %192

192:                                              ; preds = %190, %189
  %.037 = phi i32 [ 2, %189 ], [ 10, %190 ], !dbg !2923
  %.9 = phi i32 [ %.8, %189 ], [ %191, %190 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.037, metadata !2721, metadata !DIExpression()), !dbg !2904
  br label %193

193:                                              ; preds = %192, %183
  %.138 = phi i32 [ 8, %183 ], [ %.037, %192 ], !dbg !2924
  %.10 = phi i32 [ %.8, %183 ], [ %.9, %192 ], !dbg !2834
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.138, metadata !2721, metadata !DIExpression()), !dbg !2904
  br label %194

194:                                              ; preds = %193, %177
  %.239 = phi i32 [ 16, %177 ], [ %.138, %193 ], !dbg !2925
  %.11 = phi i32 [ %.8, %177 ], [ %.10, %193 ], !dbg !2834
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.239, metadata !2721, metadata !DIExpression()), !dbg !2904
  %195 = load i8*, i8** %7, align 4, !dbg !2926, !tbaa !334
  %196 = load i8, i8* %195, align 1, !dbg !2928, !tbaa !2143
  %197 = zext i8 %196 to i32, !dbg !2928
  %198 = icmp eq i32 %197, 88, !dbg !2929
  br i1 %198, label %199, label %._crit_edge133, !dbg !2930

._crit_edge133:                                   ; preds = %194
  br label %201, !dbg !2930

199:                                              ; preds = %194
  %200 = or i32 %.11, 32, !dbg !2931
  call void @llvm.dbg.value(metadata i32 %200, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %201, !dbg !2933

201:                                              ; preds = %199, %._crit_edge133
  %.12 = phi i32 [ %200, %199 ], [ %.11, %._crit_edge133 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2705, metadata !DIExpression()), !dbg !2752
  %202 = load i8*, i8** %7, align 4, !dbg !2934, !tbaa !334
  %203 = load i8, i8* %202, align 1, !dbg !2936, !tbaa !2143
  %204 = zext i8 %203 to i32, !dbg !2936
  %205 = icmp ne i32 %204, 105, !dbg !2937
  br i1 %205, label %206, label %._crit_edge134, !dbg !2938

._crit_edge134:                                   ; preds = %201
  br label %213, !dbg !2938

206:                                              ; preds = %201
  %207 = load i8*, i8** %7, align 4, !dbg !2939, !tbaa !334
  %208 = load i8, i8* %207, align 1, !dbg !2940, !tbaa !2143
  %209 = zext i8 %208 to i32, !dbg !2940
  %210 = icmp ne i32 %209, 100, !dbg !2941
  br i1 %210, label %211, label %._crit_edge135, !dbg !2942

._crit_edge135:                                   ; preds = %206
  br label %213, !dbg !2942

211:                                              ; preds = %206
  %212 = and i32 %.12, -13, !dbg !2943
  call void @llvm.dbg.value(metadata i32 %212, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %213, !dbg !2945

213:                                              ; preds = %211, %._crit_edge135, %._crit_edge134
  %.13 = phi i32 [ %212, %211 ], [ %.12, %._crit_edge135 ], [ %.12, %._crit_edge134 ], !dbg !2904
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2705, metadata !DIExpression()), !dbg !2752
  %214 = and i32 %.13, 1024, !dbg !2946
  %215 = icmp ne i32 %214, 0, !dbg !2946
  br i1 %215, label %216, label %._crit_edge136, !dbg !2948

._crit_edge136:                                   ; preds = %213
  br label %218, !dbg !2948

216:                                              ; preds = %213
  %217 = and i32 %.13, -2, !dbg !2949
  call void @llvm.dbg.value(metadata i32 %217, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %218, !dbg !2951

218:                                              ; preds = %216, %._crit_edge136
  %.147 = phi i32 [ %217, %216 ], [ %.13, %._crit_edge136 ], !dbg !2904
  call void @llvm.dbg.value(metadata i32 %.147, metadata !2705, metadata !DIExpression()), !dbg !2752
  %219 = load i8*, i8** %7, align 4, !dbg !2952, !tbaa !334
  %220 = load i8, i8* %219, align 1, !dbg !2953, !tbaa !2143
  %221 = zext i8 %220 to i32, !dbg !2953
  %222 = icmp eq i32 %221, 105, !dbg !2954
  br i1 %222, label %._crit_edge137, label %223, !dbg !2955

._crit_edge137:                                   ; preds = %218
  br label %228, !dbg !2955

223:                                              ; preds = %218
  %224 = load i8*, i8** %7, align 4, !dbg !2956, !tbaa !334
  %225 = load i8, i8* %224, align 1, !dbg !2957, !tbaa !2143
  %226 = zext i8 %225 to i32, !dbg !2957
  %227 = icmp eq i32 %226, 100, !dbg !2958
  br i1 %227, label %._crit_edge138, label %309, !dbg !2959

._crit_edge138:                                   ; preds = %223
  br label %228, !dbg !2959

228:                                              ; preds = %._crit_edge138, %._crit_edge137
  %229 = and i32 %.147, 512, !dbg !2960
  %230 = icmp ne i32 %229, 0, !dbg !2960
  br i1 %230, label %231, label %250, !dbg !2961

231:                                              ; preds = %228
  %232 = bitcast %struct.__va_list* %6 to i8**, !dbg !2962
  %233 = load i8*, i8** %232, align 4, !dbg !2962
  %234 = ptrtoint i8* %233 to i32, !dbg !2962
  %235 = add i32 %234, 7, !dbg !2962
  %236 = and i32 %235, -8, !dbg !2962
  %237 = inttoptr i32 %236 to i8*, !dbg !2962
  %238 = getelementptr inbounds i8, i8* %237, i32 8, !dbg !2962
  store i8* %238, i8** %232, align 4, !dbg !2962
  %239 = bitcast i8* %237 to i64*, !dbg !2962
  %240 = load i64, i64* %239, align 8, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %240, metadata !2724, metadata !DIExpression()), !dbg !2963
  %241 = icmp sgt i64 %240, 0, !dbg !2964
  br i1 %241, label %242, label %243, !dbg !2965

242:                                              ; preds = %231
  br label %245, !dbg !2965

243:                                              ; preds = %231
  %244 = sub nsw i64 0, %240, !dbg !2966
  br label %245, !dbg !2965

245:                                              ; preds = %243, %242
  %246 = phi i64 [ %240, %242 ], [ %244, %243 ], !dbg !2965
  %247 = icmp slt i64 %240, 0, !dbg !2967
  %248 = zext i32 %.239 to i64, !dbg !2968
  %249 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %246, i1 zeroext %247, i64 %248, i32 %.213, i32 %.210, i32 %.147), !dbg !2969
  call void @llvm.dbg.value(metadata i32 %249, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %308, !dbg !2970

250:                                              ; preds = %228
  %251 = and i32 %.147, 256, !dbg !2971
  %252 = icmp ne i32 %251, 0, !dbg !2971
  br i1 %252, label %253, label %267, !dbg !2972

253:                                              ; preds = %250
  %254 = bitcast %struct.__va_list* %6 to i8**, !dbg !2973
  %255 = load i8*, i8** %254, align 4, !dbg !2973
  %256 = getelementptr inbounds i8, i8* %255, i32 4, !dbg !2973
  store i8* %256, i8** %254, align 4, !dbg !2973
  %257 = bitcast i8* %255 to i32*, !dbg !2973
  %258 = load i32, i32* %257, align 4, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %258, metadata !2731, metadata !DIExpression()), !dbg !2974
  %259 = icmp sgt i32 %258, 0, !dbg !2975
  br i1 %259, label %260, label %261, !dbg !2976

260:                                              ; preds = %253
  br label %263, !dbg !2976

261:                                              ; preds = %253
  %262 = sub nsw i32 0, %258, !dbg !2977
  br label %263, !dbg !2976

263:                                              ; preds = %261, %260
  %264 = phi i32 [ %258, %260 ], [ %262, %261 ], !dbg !2976
  %265 = icmp slt i32 %258, 0, !dbg !2978
  %266 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %264, i1 zeroext %265, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %266, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %307, !dbg !2980

267:                                              ; preds = %250
  %268 = and i32 %.147, 64, !dbg !2981
  %269 = icmp ne i32 %268, 0, !dbg !2981
  br i1 %269, label %270, label %278, !dbg !2982

270:                                              ; preds = %267
  %271 = bitcast %struct.__va_list* %6 to i8**, !dbg !2983
  %272 = load i8*, i8** %271, align 4, !dbg !2983
  %273 = getelementptr inbounds i8, i8* %272, i32 4, !dbg !2983
  store i8* %273, i8** %271, align 4, !dbg !2983
  %274 = bitcast i8* %272 to i32*, !dbg !2983
  %275 = load i32, i32* %274, align 4, !dbg !2983
  %276 = trunc i32 %275 to i8, !dbg !2984
  %277 = zext i8 %276 to i32, !dbg !2984
  br label %297, !dbg !2982

278:                                              ; preds = %267
  %279 = and i32 %.147, 128, !dbg !2985
  %280 = icmp ne i32 %279, 0, !dbg !2985
  br i1 %280, label %281, label %289, !dbg !2986

281:                                              ; preds = %278
  %282 = bitcast %struct.__va_list* %6 to i8**, !dbg !2987
  %283 = load i8*, i8** %282, align 4, !dbg !2987
  %284 = getelementptr inbounds i8, i8* %283, i32 4, !dbg !2987
  store i8* %284, i8** %282, align 4, !dbg !2987
  %285 = bitcast i8* %283 to i32*, !dbg !2987
  %286 = load i32, i32* %285, align 4, !dbg !2987
  %287 = trunc i32 %286 to i16, !dbg !2988
  %288 = sext i16 %287 to i32, !dbg !2988
  br label %295, !dbg !2986

289:                                              ; preds = %278
  %290 = bitcast %struct.__va_list* %6 to i8**, !dbg !2989
  %291 = load i8*, i8** %290, align 4, !dbg !2989
  %292 = getelementptr inbounds i8, i8* %291, i32 4, !dbg !2989
  store i8* %292, i8** %290, align 4, !dbg !2989
  %293 = bitcast i8* %291 to i32*, !dbg !2989
  %294 = load i32, i32* %293, align 4, !dbg !2989
  br label %295, !dbg !2986

295:                                              ; preds = %289, %281
  %296 = phi i32 [ %288, %281 ], [ %294, %289 ], !dbg !2986
  br label %297, !dbg !2982

297:                                              ; preds = %295, %270
  %298 = phi i32 [ %277, %270 ], [ %296, %295 ], !dbg !2982
  call void @llvm.dbg.value(metadata i32 %298, metadata !2736, metadata !DIExpression()), !dbg !2990
  %299 = icmp sgt i32 %298, 0, !dbg !2991
  br i1 %299, label %300, label %301, !dbg !2992

300:                                              ; preds = %297
  br label %303, !dbg !2992

301:                                              ; preds = %297
  %302 = sub nsw i32 0, %298, !dbg !2993
  br label %303, !dbg !2992

303:                                              ; preds = %301, %300
  %304 = phi i32 [ %298, %300 ], [ %302, %301 ], !dbg !2992
  %305 = icmp slt i32 %298, 0, !dbg !2994
  %306 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %304, i1 zeroext %305, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !2995
  call void @llvm.dbg.value(metadata i32 %306, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %307

307:                                              ; preds = %303, %263
  %.119 = phi i32 [ %266, %263 ], [ %306, %303 ], !dbg !2996
  call void @llvm.dbg.value(metadata i32 %.119, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %308

308:                                              ; preds = %307, %245
  %.220 = phi i32 [ %249, %245 ], [ %.119, %307 ], !dbg !2997
  call void @llvm.dbg.value(metadata i32 %.220, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %369, !dbg !2998

309:                                              ; preds = %223
  %310 = and i32 %.147, 512, !dbg !2999
  %311 = icmp ne i32 %310, 0, !dbg !2999
  br i1 %311, label %312, label %324, !dbg !3000

312:                                              ; preds = %309
  %313 = bitcast %struct.__va_list* %6 to i8**, !dbg !3001
  %314 = load i8*, i8** %313, align 4, !dbg !3001
  %315 = ptrtoint i8* %314 to i32, !dbg !3001
  %316 = add i32 %315, 7, !dbg !3001
  %317 = and i32 %316, -8, !dbg !3001
  %318 = inttoptr i32 %317 to i8*, !dbg !3001
  %319 = getelementptr inbounds i8, i8* %318, i32 8, !dbg !3001
  store i8* %319, i8** %313, align 4, !dbg !3001
  %320 = bitcast i8* %318 to i64*, !dbg !3001
  %321 = load i64, i64* %320, align 8, !dbg !3001
  %322 = zext i32 %.239 to i64, !dbg !3003
  %323 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %321, i1 zeroext false, i64 %322, i32 %.213, i32 %.210, i32 %.147), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %323, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %368, !dbg !3005

324:                                              ; preds = %309
  %325 = and i32 %.147, 256, !dbg !3006
  %326 = icmp ne i32 %325, 0, !dbg !3006
  br i1 %326, label %327, label %334, !dbg !3007

327:                                              ; preds = %324
  %328 = bitcast %struct.__va_list* %6 to i8**, !dbg !3008
  %329 = load i8*, i8** %328, align 4, !dbg !3008
  %330 = getelementptr inbounds i8, i8* %329, i32 4, !dbg !3008
  store i8* %330, i8** %328, align 4, !dbg !3008
  %331 = bitcast i8* %329 to i32*, !dbg !3008
  %332 = load i32, i32* %331, align 4, !dbg !3008
  %333 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %332, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %333, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %367, !dbg !3011

334:                                              ; preds = %324
  %335 = and i32 %.147, 64, !dbg !3012
  %336 = icmp ne i32 %335, 0, !dbg !3012
  br i1 %336, label %337, label %345, !dbg !3013

337:                                              ; preds = %334
  %338 = bitcast %struct.__va_list* %6 to i8**, !dbg !3014
  %339 = load i8*, i8** %338, align 4, !dbg !3014
  %340 = getelementptr inbounds i8, i8* %339, i32 4, !dbg !3014
  store i8* %340, i8** %338, align 4, !dbg !3014
  %341 = bitcast i8* %339 to i32*, !dbg !3014
  %342 = load i32, i32* %341, align 4, !dbg !3014
  %343 = trunc i32 %342 to i8, !dbg !3015
  %344 = zext i8 %343 to i32, !dbg !3015
  br label %364, !dbg !3013

345:                                              ; preds = %334
  %346 = and i32 %.147, 128, !dbg !3016
  %347 = icmp ne i32 %346, 0, !dbg !3016
  br i1 %347, label %348, label %356, !dbg !3017

348:                                              ; preds = %345
  %349 = bitcast %struct.__va_list* %6 to i8**, !dbg !3018
  %350 = load i8*, i8** %349, align 4, !dbg !3018
  %351 = getelementptr inbounds i8, i8* %350, i32 4, !dbg !3018
  store i8* %351, i8** %349, align 4, !dbg !3018
  %352 = bitcast i8* %350 to i32*, !dbg !3018
  %353 = load i32, i32* %352, align 4, !dbg !3018
  %354 = trunc i32 %353 to i16, !dbg !3019
  %355 = zext i16 %354 to i32, !dbg !3019
  br label %362, !dbg !3017

356:                                              ; preds = %345
  %357 = bitcast %struct.__va_list* %6 to i8**, !dbg !3020
  %358 = load i8*, i8** %357, align 4, !dbg !3020
  %359 = getelementptr inbounds i8, i8* %358, i32 4, !dbg !3020
  store i8* %359, i8** %357, align 4, !dbg !3020
  %360 = bitcast i8* %358 to i32*, !dbg !3020
  %361 = load i32, i32* %360, align 4, !dbg !3020
  br label %362, !dbg !3017

362:                                              ; preds = %356, %348
  %363 = phi i32 [ %355, %348 ], [ %361, %356 ], !dbg !3017
  br label %364, !dbg !3013

364:                                              ; preds = %362, %337
  %365 = phi i32 [ %344, %337 ], [ %363, %362 ], !dbg !3013
  call void @llvm.dbg.value(metadata i32 %365, metadata !2738, metadata !DIExpression()), !dbg !3021
  %366 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %365, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %366, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %367

367:                                              ; preds = %364, %327
  %.321 = phi i32 [ %333, %327 ], [ %366, %364 ], !dbg !3023
  call void @llvm.dbg.value(metadata i32 %.321, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %368

368:                                              ; preds = %367, %312
  %.422 = phi i32 [ %323, %312 ], [ %.321, %367 ], !dbg !3024
  call void @llvm.dbg.value(metadata i32 %.422, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %369

369:                                              ; preds = %368, %308
  %.523 = phi i32 [ %.220, %308 ], [ %.422, %368 ], !dbg !3025
  call void @llvm.dbg.value(metadata i32 %.523, metadata !2709, metadata !DIExpression()), !dbg !2752
  %370 = load i8*, i8** %7, align 4, !dbg !3026, !tbaa !334
  %371 = getelementptr inbounds i8, i8* %370, i32 1, !dbg !3026
  store i8* %371, i8** %7, align 4, !dbg !3026, !tbaa !334
  br label %542

372:                                              ; preds = %NodeBlock80._crit_edge, %NodeBlock94._crit_edge130
  %373 = load i8*, i8** %7, align 4, !dbg !3027, !tbaa !334
  %374 = load i8, i8* %373, align 1, !dbg !3029, !tbaa !2143
  %375 = zext i8 %374 to i32, !dbg !3029
  %376 = icmp eq i32 %375, 70, !dbg !3030
  br i1 %376, label %377, label %._crit_edge139, !dbg !3031

._crit_edge139:                                   ; preds = %372
  br label %379, !dbg !3031

377:                                              ; preds = %372
  %378 = or i32 %.8, 32, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %378, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %379, !dbg !3033

379:                                              ; preds = %377, %._crit_edge139
  %.15 = phi i32 [ %378, %377 ], [ %.8, %._crit_edge139 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2705, metadata !DIExpression()), !dbg !2752
  %380 = bitcast %struct.__va_list* %6 to i8**, !dbg !3034
  %381 = load i8*, i8** %380, align 4, !dbg !3034
  %382 = ptrtoint i8* %381 to i32, !dbg !3034
  %383 = add i32 %382, 7, !dbg !3034
  %384 = and i32 %383, -8, !dbg !3034
  %385 = inttoptr i32 %384 to i8*, !dbg !3034
  %386 = getelementptr inbounds i8, i8* %385, i32 8, !dbg !3034
  store i8* %386, i8** %380, align 4, !dbg !3034
  %387 = bitcast i8* %385 to double*, !dbg !3034
  %388 = load double, double* %387, align 8, !dbg !3034
  %389 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %388, i32 %.213, i32 %.210, i32 %.15), !dbg !3035
  call void @llvm.dbg.value(metadata i32 %389, metadata !2709, metadata !DIExpression()), !dbg !2752
  %390 = load i8*, i8** %7, align 4, !dbg !3036, !tbaa !334
  %391 = getelementptr inbounds i8, i8* %390, i32 1, !dbg !3036
  store i8* %391, i8** %7, align 4, !dbg !3036, !tbaa !334
  br label %542, !dbg !3037

392:                                              ; preds = %NodeBlock76._crit_edge, %LeafBlock78._crit_edge, %NodeBlock94._crit_edge, %LeafBlock96._crit_edge
  %393 = load i8*, i8** %7, align 4, !dbg !3038, !tbaa !334
  %394 = load i8, i8* %393, align 1, !dbg !3040, !tbaa !2143
  %395 = zext i8 %394 to i32, !dbg !3040
  %396 = icmp eq i32 %395, 103, !dbg !3041
  br i1 %396, label %._crit_edge140, label %397, !dbg !3042

._crit_edge140:                                   ; preds = %392
  br label %402, !dbg !3042

397:                                              ; preds = %392
  %398 = load i8*, i8** %7, align 4, !dbg !3043, !tbaa !334
  %399 = load i8, i8* %398, align 1, !dbg !3044, !tbaa !2143
  %400 = zext i8 %399 to i32, !dbg !3044
  %401 = icmp eq i32 %400, 71, !dbg !3045
  br i1 %401, label %._crit_edge141, label %._crit_edge142, !dbg !3046

._crit_edge142:                                   ; preds = %397
  br label %404, !dbg !3046

._crit_edge141:                                   ; preds = %397
  br label %402, !dbg !3046

402:                                              ; preds = %._crit_edge141, %._crit_edge140
  %403 = or i32 %.8, 2048, !dbg !3047
  call void @llvm.dbg.value(metadata i32 %403, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %404, !dbg !3048

404:                                              ; preds = %402, %._crit_edge142
  %.16 = phi i32 [ %403, %402 ], [ %.8, %._crit_edge142 ], !dbg !2802
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2705, metadata !DIExpression()), !dbg !2752
  %405 = load i8*, i8** %7, align 4, !dbg !3049, !tbaa !334
  %406 = load i8, i8* %405, align 1, !dbg !3051, !tbaa !2143
  %407 = zext i8 %406 to i32, !dbg !3051
  %408 = icmp eq i32 %407, 69, !dbg !3052
  br i1 %408, label %._crit_edge143, label %409, !dbg !3053

._crit_edge143:                                   ; preds = %404
  br label %414, !dbg !3053

409:                                              ; preds = %404
  %410 = load i8*, i8** %7, align 4, !dbg !3054, !tbaa !334
  %411 = load i8, i8* %410, align 1, !dbg !3055, !tbaa !2143
  %412 = zext i8 %411 to i32, !dbg !3055
  %413 = icmp eq i32 %412, 71, !dbg !3056
  br i1 %413, label %._crit_edge144, label %._crit_edge145, !dbg !3057

._crit_edge145:                                   ; preds = %409
  br label %416, !dbg !3057

._crit_edge144:                                   ; preds = %409
  br label %414, !dbg !3057

414:                                              ; preds = %._crit_edge144, %._crit_edge143
  %415 = or i32 %.16, 32, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %415, metadata !2705, metadata !DIExpression()), !dbg !2752
  br label %416, !dbg !3059

416:                                              ; preds = %414, %._crit_edge145
  %.17 = phi i32 [ %415, %414 ], [ %.16, %._crit_edge145 ], !dbg !3060
  call void @llvm.dbg.value(metadata i32 %.17, metadata !2705, metadata !DIExpression()), !dbg !2752
  %417 = bitcast %struct.__va_list* %6 to i8**, !dbg !3061
  %418 = load i8*, i8** %417, align 4, !dbg !3061
  %419 = ptrtoint i8* %418 to i32, !dbg !3061
  %420 = add i32 %419, 7, !dbg !3061
  %421 = and i32 %420, -8, !dbg !3061
  %422 = inttoptr i32 %421 to i8*, !dbg !3061
  %423 = getelementptr inbounds i8, i8* %422, i32 8, !dbg !3061
  store i8* %423, i8** %417, align 4, !dbg !3061
  %424 = bitcast i8* %422 to double*, !dbg !3061
  %425 = load double, double* %424, align 8, !dbg !3061
  %426 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %425, i32 %.213, i32 %.210, i32 %.17), !dbg !3062
  call void @llvm.dbg.value(metadata i32 %426, metadata !2709, metadata !DIExpression()), !dbg !2752
  %427 = load i8*, i8** %7, align 4, !dbg !3063, !tbaa !334
  %428 = getelementptr inbounds i8, i8* %427, i32 1, !dbg !3063
  store i8* %428, i8** %7, align 4, !dbg !3063, !tbaa !334
  br label %542, !dbg !3064

429:                                              ; preds = %NodeBlock88
  call void @llvm.dbg.value(metadata i32 1, metadata !2744, metadata !DIExpression()), !dbg !3065
  %430 = and i32 %.8, 2, !dbg !3066
  %431 = icmp ne i32 %430, 0, !dbg !3066
  br i1 %431, label %._crit_edge146, label %432, !dbg !3068

._crit_edge146:                                   ; preds = %429
  br label %439, !dbg !3068

432:                                              ; preds = %429
  br label %433, !dbg !3069

433:                                              ; preds = %436, %432
  %.034 = phi i32 [ 1, %432 ], [ %434, %436 ], !dbg !3065
  %.624 = phi i32 [ %.018, %432 ], [ %437, %436 ], !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.624, metadata !2709, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.034, metadata !2744, metadata !DIExpression()), !dbg !3065
  %434 = add i32 %.034, 1, !dbg !3071
  call void @llvm.dbg.value(metadata i32 %434, metadata !2744, metadata !DIExpression()), !dbg !3065
  %435 = icmp ult i32 %.034, %.210, !dbg !3072
  br i1 %435, label %436, label %438, !dbg !3069

436:                                              ; preds = %433
  %437 = add i32 %.624, 1, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %437, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.624, i32 %2), !dbg !3075
  br label %433, !dbg !3069, !llvm.loop !3076

438:                                              ; preds = %433
  %.624.lcssa = phi i32 [ %.624, %433 ], !dbg !2752
  %.lcssa153 = phi i32 [ %434, %433 ], !dbg !3071
  call void @llvm.dbg.value(metadata i32 %.624.lcssa, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %439, !dbg !3078

439:                                              ; preds = %438, %._crit_edge146
  %.135 = phi i32 [ 1, %._crit_edge146 ], [ %.lcssa153, %438 ], !dbg !3065
  %.725 = phi i32 [ %.018, %._crit_edge146 ], [ %.624.lcssa, %438 ], !dbg !3079
  call void @llvm.dbg.value(metadata i32 %.725, metadata !2709, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.135, metadata !2744, metadata !DIExpression()), !dbg !3065
  %440 = bitcast %struct.__va_list* %6 to i8**, !dbg !3080
  %441 = load i8*, i8** %440, align 4, !dbg !3080
  %442 = getelementptr inbounds i8, i8* %441, i32 4, !dbg !3080
  store i8* %442, i8** %440, align 4, !dbg !3080
  %443 = bitcast i8* %441 to i32*, !dbg !3080
  %444 = load i32, i32* %443, align 4, !dbg !3080
  %445 = trunc i32 %444 to i8, !dbg !3081
  %446 = add i32 %.725, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i32 %446, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext %445, i8* %1, i32 %.725, i32 %2), !dbg !3083
  %447 = and i32 %.8, 2, !dbg !3084
  %448 = icmp ne i32 %447, 0, !dbg !3084
  br i1 %448, label %449, label %._crit_edge147, !dbg !3086

._crit_edge147:                                   ; preds = %439
  br label %456, !dbg !3086

449:                                              ; preds = %439
  br label %450, !dbg !3087

450:                                              ; preds = %453, %449
  %.236 = phi i32 [ %.135, %449 ], [ %451, %453 ], !dbg !3065
  %.826 = phi i32 [ %446, %449 ], [ %454, %453 ], !dbg !3065
  call void @llvm.dbg.value(metadata i32 %.826, metadata !2709, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.236, metadata !2744, metadata !DIExpression()), !dbg !3065
  %451 = add i32 %.236, 1, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %451, metadata !2744, metadata !DIExpression()), !dbg !3065
  %452 = icmp ult i32 %.236, %.210, !dbg !3090
  br i1 %452, label %453, label %455, !dbg !3087

453:                                              ; preds = %450
  %454 = add i32 %.826, 1, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %454, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.826, i32 %2), !dbg !3093
  br label %450, !dbg !3087, !llvm.loop !3094

455:                                              ; preds = %450
  %.826.lcssa = phi i32 [ %.826, %450 ], !dbg !3065
  call void @llvm.dbg.value(metadata i32 %.826.lcssa, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %456, !dbg !3096

456:                                              ; preds = %455, %._crit_edge147
  %.927 = phi i32 [ %.826.lcssa, %455 ], [ %446, %._crit_edge147 ], !dbg !3082
  call void @llvm.dbg.value(metadata i32 %.927, metadata !2709, metadata !DIExpression()), !dbg !2752
  %457 = load i8*, i8** %7, align 4, !dbg !3097, !tbaa !334
  %458 = getelementptr inbounds i8, i8* %457, i32 1, !dbg !3097
  store i8* %458, i8** %7, align 4, !dbg !3097, !tbaa !334
  br label %542

459:                                              ; preds = %LeafBlock108
  %460 = bitcast %struct.__va_list* %6 to i8**, !dbg !3098
  %461 = load i8*, i8** %460, align 4, !dbg !3098
  %462 = getelementptr inbounds i8, i8* %461, i32 4, !dbg !3098
  store i8* %462, i8** %460, align 4, !dbg !3098
  %463 = bitcast i8* %461 to i8**, !dbg !3098
  %464 = load i8*, i8** %463, align 4, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %464, metadata !2746, metadata !DIExpression()), !dbg !3099
  %465 = icmp ne i32 %.213, 0, !dbg !3100
  br i1 %465, label %466, label %467, !dbg !3100

466:                                              ; preds = %459
  br label %468, !dbg !3100

467:                                              ; preds = %459
  br label %468, !dbg !3100

468:                                              ; preds = %467, %466
  %469 = phi i32 [ %.213, %466 ], [ -1, %467 ], !dbg !3100
  %470 = call arm_aapcscc i32 @_strnlen_s(i8* %464, i32 %469), !dbg !3101
  call void @llvm.dbg.value(metadata i32 %470, metadata !2748, metadata !DIExpression()), !dbg !3099
  %471 = and i32 %.8, 1024, !dbg !3102
  %472 = icmp ne i32 %471, 0, !dbg !3102
  br i1 %472, label %473, label %._crit_edge148, !dbg !3104

._crit_edge148:                                   ; preds = %468
  br label %479, !dbg !3104

473:                                              ; preds = %468
  %474 = icmp ult i32 %470, %.213, !dbg !3105
  br i1 %474, label %475, label %476, !dbg !3107

475:                                              ; preds = %473
  br label %477, !dbg !3107

476:                                              ; preds = %473
  br label %477, !dbg !3107

477:                                              ; preds = %476, %475
  %478 = phi i32 [ %470, %475 ], [ %.213, %476 ], !dbg !3107
  call void @llvm.dbg.value(metadata i32 %478, metadata !2748, metadata !DIExpression()), !dbg !3099
  br label %479, !dbg !3108

479:                                              ; preds = %477, %._crit_edge148
  %.01 = phi i32 [ %478, %477 ], [ %470, %._crit_edge148 ], !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2748, metadata !DIExpression()), !dbg !3099
  %480 = and i32 %.8, 2, !dbg !3109
  %481 = icmp ne i32 %480, 0, !dbg !3109
  br i1 %481, label %._crit_edge149, label %482, !dbg !3111

._crit_edge149:                                   ; preds = %479
  br label %489, !dbg !3111

482:                                              ; preds = %479
  br label %483, !dbg !3112

483:                                              ; preds = %486, %482
  %.1028 = phi i32 [ %.018, %482 ], [ %487, %486 ], !dbg !2752
  %.1 = phi i32 [ %.01, %482 ], [ %484, %486 ], !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2748, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.1028, metadata !2709, metadata !DIExpression()), !dbg !2752
  %484 = add i32 %.1, 1, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %484, metadata !2748, metadata !DIExpression()), !dbg !3099
  %485 = icmp ult i32 %.1, %.210, !dbg !3115
  br i1 %485, label %486, label %488, !dbg !3112

486:                                              ; preds = %483
  %487 = add i32 %.1028, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i32 %487, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1028, i32 %2), !dbg !3118
  br label %483, !dbg !3112, !llvm.loop !3119

488:                                              ; preds = %483
  %.1028.lcssa = phi i32 [ %.1028, %483 ], !dbg !2752
  %.lcssa = phi i32 [ %484, %483 ], !dbg !3114
  call void @llvm.dbg.value(metadata i32 %.1028.lcssa, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %489, !dbg !3121

489:                                              ; preds = %488, %._crit_edge149
  %.1129 = phi i32 [ %.018, %._crit_edge149 ], [ %.1028.lcssa, %488 ], !dbg !3079
  %.2 = phi i32 [ %.01, %._crit_edge149 ], [ %.lcssa, %488 ], !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2748, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.1129, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %490, !dbg !3122

490:                                              ; preds = %504, %489
  %.1230 = phi i32 [ %.1129, %489 ], [ %507, %504 ], !dbg !2752
  %.314 = phi i32 [ %.213, %489 ], [ %.516, %504 ], !dbg !2802
  %.02 = phi i8* [ %464, %489 ], [ %505, %504 ], !dbg !3099
  call void @llvm.dbg.value(metadata i8* %.02, metadata !2746, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.314, metadata !2707, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.1230, metadata !2709, metadata !DIExpression()), !dbg !2752
  %491 = load i8, i8* %.02, align 1, !dbg !3123, !tbaa !2143
  %492 = zext i8 %491 to i32, !dbg !3123
  %493 = icmp ne i32 %492, 0, !dbg !3124
  br i1 %493, label %494, label %._crit_edge150, !dbg !3125

._crit_edge150:                                   ; preds = %490
  br label %502, !dbg !3125

494:                                              ; preds = %490
  %495 = and i32 %.8, 1024, !dbg !3126
  %496 = icmp ne i32 %495, 0, !dbg !3126
  br i1 %496, label %497, label %._crit_edge151, !dbg !3127

._crit_edge151:                                   ; preds = %494
  br label %500, !dbg !3127

497:                                              ; preds = %494
  %498 = add i32 %.314, -1, !dbg !3128
  call void @llvm.dbg.value(metadata i32 %498, metadata !2707, metadata !DIExpression()), !dbg !2752
  %499 = icmp ne i32 %.314, 0, !dbg !3127
  br label %500, !dbg !3127

500:                                              ; preds = %497, %._crit_edge151
  %.415 = phi i32 [ %498, %497 ], [ %.314, %._crit_edge151 ], !dbg !2802
  %501 = phi i1 [ true, %._crit_edge151 ], [ %499, %497 ]
  call void @llvm.dbg.value(metadata i32 %.415, metadata !2707, metadata !DIExpression()), !dbg !2752
  br label %502

502:                                              ; preds = %500, %._crit_edge150
  %.516 = phi i32 [ %.415, %500 ], [ %.314, %._crit_edge150 ], !dbg !2802
  %503 = phi i1 [ false, %._crit_edge150 ], [ %501, %500 ], !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.516, metadata !2707, metadata !DIExpression()), !dbg !2752
  br i1 %503, label %504, label %508, !dbg !3122

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %505, metadata !2746, metadata !DIExpression()), !dbg !3099
  %506 = load i8, i8* %.02, align 1, !dbg !3131, !tbaa !2143
  %507 = add i32 %.1230, 1, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %507, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext %506, i8* %1, i32 %.1230, i32 %2), !dbg !3133
  br label %490, !dbg !3122, !llvm.loop !3134

508:                                              ; preds = %502
  %.1230.lcssa = phi i32 [ %.1230, %502 ], !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.1230.lcssa, metadata !2709, metadata !DIExpression()), !dbg !2752
  %509 = and i32 %.8, 2, !dbg !3136
  %510 = icmp ne i32 %509, 0, !dbg !3136
  br i1 %510, label %511, label %._crit_edge152, !dbg !3138

._crit_edge152:                                   ; preds = %508
  br label %518, !dbg !3138

511:                                              ; preds = %508
  br label %512, !dbg !3139

512:                                              ; preds = %515, %511
  %.1331 = phi i32 [ %.1230.lcssa, %511 ], [ %516, %515 ], !dbg !2752
  %.3 = phi i32 [ %.2, %511 ], [ %513, %515 ], !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2748, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 %.1331, metadata !2709, metadata !DIExpression()), !dbg !2752
  %513 = add i32 %.3, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %513, metadata !2748, metadata !DIExpression()), !dbg !3099
  %514 = icmp ult i32 %.3, %.210, !dbg !3142
  br i1 %514, label %515, label %517, !dbg !3139

515:                                              ; preds = %512
  %516 = add i32 %.1331, 1, !dbg !3143
  call void @llvm.dbg.value(metadata i32 %516, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1331, i32 %2), !dbg !3145
  br label %512, !dbg !3139, !llvm.loop !3146

517:                                              ; preds = %512
  %.1331.lcssa = phi i32 [ %.1331, %512 ], !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.1331.lcssa, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %518, !dbg !3148

518:                                              ; preds = %517, %._crit_edge152
  %.1432 = phi i32 [ %.1331.lcssa, %517 ], [ %.1230.lcssa, %._crit_edge152 ], !dbg !3079
  call void @llvm.dbg.value(metadata i32 %.1432, metadata !2709, metadata !DIExpression()), !dbg !2752
  %519 = load i8*, i8** %7, align 4, !dbg !3149, !tbaa !334
  %520 = getelementptr inbounds i8, i8* %519, i32 1, !dbg !3149
  store i8* %520, i8** %7, align 4, !dbg !3149, !tbaa !334
  br label %542

521:                                              ; preds = %LeafBlock104
  call void @llvm.dbg.value(metadata i32 8, metadata !2706, metadata !DIExpression()), !dbg !2752
  %522 = or i32 %.8, 33, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %522, metadata !2705, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2749, metadata !DIExpression()), !dbg !3151
  %523 = bitcast %struct.__va_list* %6 to i8**, !dbg !3152
  %524 = load i8*, i8** %523, align 4, !dbg !3152
  %525 = getelementptr inbounds i8, i8* %524, i32 4, !dbg !3152
  store i8* %525, i8** %523, align 4, !dbg !3152
  %526 = bitcast i8* %524 to i8**, !dbg !3152
  %527 = load i8*, i8** %526, align 4, !dbg !3152
  %528 = ptrtoint i8* %527 to i32, !dbg !3155
  %529 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %528, i1 zeroext false, i32 16, i32 %.213, i32 8, i32 %522), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %529, metadata !2709, metadata !DIExpression()), !dbg !2752
  %530 = load i8*, i8** %7, align 4, !dbg !3157, !tbaa !334
  %531 = getelementptr inbounds i8, i8* %530, i32 1, !dbg !3157
  store i8* %531, i8** %7, align 4, !dbg !3157, !tbaa !334
  br label %542

532:                                              ; preds = %LeafBlock74
  %533 = add i32 %.018, 1, !dbg !3158
  call void @llvm.dbg.value(metadata i32 %533, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext 37, i8* %1, i32 %.018, i32 %2), !dbg !3159
  %534 = load i8*, i8** %7, align 4, !dbg !3160, !tbaa !334
  %535 = getelementptr inbounds i8, i8* %534, i32 1, !dbg !3160
  store i8* %535, i8** %7, align 4, !dbg !3160, !tbaa !334
  br label %542, !dbg !3161

NewDefault73:                                     ; preds = %LeafBlock74.NewDefault73_crit_edge, %LeafBlock78.NewDefault73_crit_edge, %LeafBlock84.NewDefault73_crit_edge, %LeafBlock96.NewDefault73_crit_edge, %LeafBlock98.NewDefault73_crit_edge, %LeafBlock104.NewDefault73_crit_edge, %LeafBlock108.NewDefault73_crit_edge, %LeafBlock110.NewDefault73_crit_edge, %LeafBlock112.NewDefault73_crit_edge
  br label %536

536:                                              ; preds = %NewDefault73
  %537 = load i8*, i8** %7, align 4, !dbg !3162, !tbaa !334
  %538 = load i8, i8* %537, align 1, !dbg !3163, !tbaa !2143
  %539 = add i32 %.018, 1, !dbg !3164
  call void @llvm.dbg.value(metadata i32 %539, metadata !2709, metadata !DIExpression()), !dbg !2752
  call arm_aapcscc void %.0(i8 zeroext %538, i8* %1, i32 %.018, i32 %2), !dbg !3165
  %540 = load i8*, i8** %7, align 4, !dbg !3166, !tbaa !334
  %541 = getelementptr inbounds i8, i8* %540, i32 1, !dbg !3166
  store i8* %541, i8** %7, align 4, !dbg !3166, !tbaa !334
  br label %542, !dbg !3167

542:                                              ; preds = %536, %532, %521, %518, %456, %416, %379, %369
  %.1533 = phi i32 [ %539, %536 ], [ %533, %532 ], [ %529, %521 ], [ %.1432, %518 ], [ %.927, %456 ], [ %426, %416 ], [ %389, %379 ], [ %.523, %369 ], !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.1533, metadata !2709, metadata !DIExpression()), !dbg !2752
  br label %.backedge, !dbg !2760

543:                                              ; preds = %13
  %.018.lcssa = phi i32 [ %.018, %13 ], !dbg !2752
  call void @llvm.dbg.value(metadata i32 %.018.lcssa, metadata !2709, metadata !DIExpression()), !dbg !2752
  %544 = icmp ult i32 %.018.lcssa, %2, !dbg !3168
  br i1 %544, label %545, label %546, !dbg !3169

545:                                              ; preds = %543
  br label %548, !dbg !3169

546:                                              ; preds = %543
  %547 = sub i32 %2, 1, !dbg !3170
  br label %548, !dbg !3169

548:                                              ; preds = %546, %545
  %549 = phi i32 [ %.018.lcssa, %545 ], [ %547, %546 ], !dbg !3169
  call arm_aapcscc void %.0(i8 zeroext 0, i8* %1, i32 %549, i32 %2), !dbg !3171
  ret i32 %.018.lcssa, !dbg !3172
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_null(i8 zeroext, i8*, i32, i32) #5 !dbg !3173 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3175, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i8* %1, metadata !3176, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 %2, metadata !3177, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 %3, metadata !3178, metadata !DIExpression()), !dbg !3179
  ret void, !dbg !3180
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc zeroext i1 @_is_digit(i8 zeroext) #5 !dbg !3181 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3185, metadata !DIExpression()), !dbg !3186
  %2 = zext i8 %0 to i32, !dbg !3187
  %3 = icmp sge i32 %2, 48, !dbg !3188
  br i1 %3, label %4, label %._crit_edge, !dbg !3189

._crit_edge:                                      ; preds = %1
  br label %7, !dbg !3189

4:                                                ; preds = %1
  %5 = zext i8 %0 to i32, !dbg !3190
  %6 = icmp sle i32 %5, 57, !dbg !3191
  br label %7

7:                                                ; preds = %4, %._crit_edge
  %8 = phi i1 [ false, %._crit_edge ], [ %6, %4 ], !dbg !3186
  ret i1 %8, !dbg !3192
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_atoi(i8**) #0 !dbg !3193 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32 0, metadata !3199, metadata !DIExpression()), !dbg !3200
  br label %2, !dbg !3201

2:                                                ; preds = %6, %1
  %.0 = phi i32 [ 0, %1 ], [ %13, %6 ], !dbg !3200
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3199, metadata !DIExpression()), !dbg !3200
  %3 = load i8*, i8** %0, align 4, !dbg !3202, !tbaa !334
  %4 = load i8, i8* %3, align 1, !dbg !3203, !tbaa !2143
  %5 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %4), !dbg !3204
  br i1 %5, label %6, label %14, !dbg !3201

6:                                                ; preds = %2
  %7 = mul i32 %.0, 10, !dbg !3205
  %8 = load i8*, i8** %0, align 4, !dbg !3207, !tbaa !334
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !3207
  store i8* %9, i8** %0, align 4, !dbg !3207, !tbaa !334
  %10 = load i8, i8* %8, align 1, !dbg !3208, !tbaa !2143
  %11 = zext i8 %10 to i32, !dbg !3208
  %12 = sub nsw i32 %11, 48, !dbg !3209
  %13 = add i32 %7, %12, !dbg !3210
  call void @llvm.dbg.value(metadata i32 %13, metadata !3199, metadata !DIExpression()), !dbg !3200
  br label %2, !dbg !3201, !llvm.loop !3211

14:                                               ; preds = %2
  %.0.lcssa = phi i32 [ %.0, %2 ], !dbg !3200
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !3199, metadata !DIExpression()), !dbg !3200
  ret i32 %.0.lcssa, !dbg !3213
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i64, i1 zeroext, i64, i32, i32, i32) #0 !dbg !3214 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3218, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8* %1, metadata !3219, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 %2, metadata !3220, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 %3, metadata !3221, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %4, metadata !3222, metadata !DIExpression()), !dbg !3234
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3223, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %6, metadata !3224, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 %7, metadata !3225, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 %8, metadata !3226, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 %9, metadata !3227, metadata !DIExpression()), !dbg !3234
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3235
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3235
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3228, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 0, metadata !3229, metadata !DIExpression()), !dbg !3234
  %14 = icmp ne i64 %4, 0, !dbg !3237
  br i1 %14, label %._crit_edge, label %15, !dbg !3239

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3239

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3240
  call void @llvm.dbg.value(metadata i32 %16, metadata !3227, metadata !DIExpression()), !dbg !3234
  br label %17, !dbg !3242

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3227, metadata !DIExpression()), !dbg !3234
  %18 = and i32 %.01, 1024, !dbg !3243
  %19 = icmp ne i32 %18, 0, !dbg !3243
  br i1 %19, label %20, label %._crit_edge3, !dbg !3244

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3244

20:                                               ; preds = %17
  %21 = icmp ne i64 %4, 0, !dbg !3245
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3246

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3246

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3246

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3247

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i64 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3234
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3229, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %.02, metadata !3222, metadata !DIExpression()), !dbg !3234
  %24 = urem i64 %.02, %6, !dbg !3248
  %25 = trunc i64 %24 to i8, !dbg !3249
  call void @llvm.dbg.value(metadata i8 %25, metadata !3230, metadata !DIExpression()), !dbg !3250
  %26 = zext i8 %25 to i32, !dbg !3251
  %27 = icmp slt i32 %26, 10, !dbg !3252
  br i1 %27, label %28, label %31, !dbg !3251

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3253
  %30 = add nsw i32 48, %29, !dbg !3254
  br label %39, !dbg !3251

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3255
  %33 = icmp ne i32 %32, 0, !dbg !3256
  %34 = zext i1 %33 to i64, !dbg !3256
  %35 = select i1 %33, i32 65, i32 97, !dbg !3256
  %36 = zext i8 %25 to i32, !dbg !3257
  %37 = add nsw i32 %35, %36, !dbg !3258
  %38 = sub nsw i32 %37, 10, !dbg !3259
  br label %39, !dbg !3251

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3251
  %41 = trunc i32 %40 to i8, !dbg !3251
  %42 = add i32 %.0, 1, !dbg !3260
  call void @llvm.dbg.value(metadata i32 %42, metadata !3229, metadata !DIExpression()), !dbg !3234
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3261
  store i8 %41, i8* %43, align 1, !dbg !3262, !tbaa !2143
  %44 = udiv i64 %.02, %6, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %44, metadata !3222, metadata !DIExpression()), !dbg !3234
  br label %45, !dbg !3264

45:                                               ; preds = %39
  %46 = icmp ne i64 %44, 0, !dbg !3265
  br i1 %46, label %47, label %._crit_edge6, !dbg !3266

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3266

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3267
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3268
  br i1 %50, label %._crit_edge7, label %51, !dbg !3264, !llvm.loop !3269

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3264

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3260
  br label %52, !dbg !3271

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3234
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3229, metadata !DIExpression()), !dbg !3234
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3272
  %54 = trunc i8 %12 to i1, !dbg !3273
  %55 = trunc i64 %6 to i32, !dbg !3274
  %56 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %55, i32 %7, i32 %8, i32 %.01), !dbg !3275
  %57 = bitcast [32 x i8]* %11 to i8*, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %57) #4, !dbg !3276
  ret i32 %56, !dbg !3277
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3278 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3282, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* %1, metadata !3283, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %2, metadata !3284, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %3, metadata !3285, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %4, metadata !3286, metadata !DIExpression()), !dbg !3298
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3287, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %6, metadata !3288, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %7, metadata !3289, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %8, metadata !3290, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %9, metadata !3291, metadata !DIExpression()), !dbg !3298
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3299
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3299
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3292, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 0, metadata !3293, metadata !DIExpression()), !dbg !3298
  %14 = icmp ne i32 %4, 0, !dbg !3301
  br i1 %14, label %._crit_edge, label %15, !dbg !3303

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3303

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3304
  call void @llvm.dbg.value(metadata i32 %16, metadata !3291, metadata !DIExpression()), !dbg !3298
  br label %17, !dbg !3306

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3291, metadata !DIExpression()), !dbg !3298
  %18 = and i32 %.01, 1024, !dbg !3307
  %19 = icmp ne i32 %18, 0, !dbg !3307
  br i1 %19, label %20, label %._crit_edge3, !dbg !3308

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3308

20:                                               ; preds = %17
  %21 = icmp ne i32 %4, 0, !dbg !3309
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3310

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3310

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3310

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3311

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i32 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3298
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3293, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3286, metadata !DIExpression()), !dbg !3298
  %24 = urem i32 %.02, %6, !dbg !3312
  %25 = trunc i32 %24 to i8, !dbg !3313
  call void @llvm.dbg.value(metadata i8 %25, metadata !3294, metadata !DIExpression()), !dbg !3314
  %26 = zext i8 %25 to i32, !dbg !3315
  %27 = icmp slt i32 %26, 10, !dbg !3316
  br i1 %27, label %28, label %31, !dbg !3315

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3317
  %30 = add nsw i32 48, %29, !dbg !3318
  br label %39, !dbg !3315

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3319
  %33 = icmp ne i32 %32, 0, !dbg !3320
  %34 = zext i1 %33 to i64, !dbg !3320
  %35 = select i1 %33, i32 65, i32 97, !dbg !3320
  %36 = zext i8 %25 to i32, !dbg !3321
  %37 = add nsw i32 %35, %36, !dbg !3322
  %38 = sub nsw i32 %37, 10, !dbg !3323
  br label %39, !dbg !3315

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3315
  %41 = trunc i32 %40 to i8, !dbg !3315
  %42 = add i32 %.0, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %42, metadata !3293, metadata !DIExpression()), !dbg !3298
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3325
  store i8 %41, i8* %43, align 1, !dbg !3326, !tbaa !2143
  %44 = udiv i32 %.02, %6, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %44, metadata !3286, metadata !DIExpression()), !dbg !3298
  br label %45, !dbg !3328

45:                                               ; preds = %39
  %46 = icmp ne i32 %44, 0, !dbg !3329
  br i1 %46, label %47, label %._crit_edge6, !dbg !3330

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3330

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3331
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3332
  br i1 %50, label %._crit_edge7, label %51, !dbg !3328, !llvm.loop !3333

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3328

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3324
  br label %52, !dbg !3335

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3298
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3293, metadata !DIExpression()), !dbg !3298
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3336
  %54 = trunc i8 %12 to i1, !dbg !3337
  %55 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %6, i32 %7, i32 %8, i32 %.01), !dbg !3338
  %56 = bitcast [32 x i8]* %11 to i8*, !dbg !3339
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %56) #4, !dbg !3339
  ret i32 %55, !dbg !3340
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !147 {
  %9 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !173, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %1, metadata !174, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %2, metadata !175, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %3, metadata !176, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata double %4, metadata !177, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %5, metadata !178, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %7, metadata !180, metadata !DIExpression()), !dbg !3341
  %10 = bitcast [32 x i8]* %9 to i8*, !dbg !3342
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !3342
  call void @llvm.dbg.declare(metadata [32 x i8]* %9, metadata !181, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !186, metadata !DIExpression()), !dbg !3341
  %11 = fcmp une double %4, %4, !dbg !3344
  br i1 %11, label %12, label %15, !dbg !3346

12:                                               ; preds = %8
  %13 = getelementptr [4 x i8], [4 x i8]* @.str.75, i32 0, i32 0
  %14 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %13, i32 3, i32 %6, i32 %7), !dbg !3347
  br label %200, !dbg !3348

15:                                               ; preds = %8
  %16 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3349
  br i1 %16, label %17, label %20, !dbg !3351

17:                                               ; preds = %15
  %18 = getelementptr [5 x i8], [5 x i8]* @.str.1.76, i32 0, i32 0
  %19 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %18, i32 4, i32 %6, i32 %7), !dbg !3352
  br label %200, !dbg !3353

20:                                               ; preds = %15
  %21 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3354
  br i1 %21, label %22, label %34, !dbg !3356

22:                                               ; preds = %20
  %23 = and i32 %7, 4, !dbg !3357
  %24 = icmp ne i32 %23, 0, !dbg !3358
  %25 = zext i1 %24 to i64, !dbg !3358
  %26 = getelementptr [5 x i8], [5 x i8]* @.str.2.77, i32 0, i32 0
  %27 = getelementptr [4 x i8], [4 x i8]* @.str.3.78, i32 0, i32 0
  %28 = select i1 %24, i8* %26, i8* %27, !dbg !3358
  %29 = and i32 %7, 4, !dbg !3359
  %30 = icmp ne i32 %29, 0, !dbg !3360
  %31 = zext i1 %30 to i64, !dbg !3360
  %32 = select i1 %30, i32 4, i32 3, !dbg !3360
  %33 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %28, i32 %32, i32 %6, i32 %7), !dbg !3361
  br label %200, !dbg !3362

34:                                               ; preds = %20
  %35 = fcmp ogt double %4, 1.000000e+09, !dbg !3363
  br i1 %35, label %._crit_edge, label %36, !dbg !3365

._crit_edge:                                      ; preds = %34
  br label %38, !dbg !3365

36:                                               ; preds = %34
  %37 = fcmp olt double %4, -1.000000e+09, !dbg !3366
  br i1 %37, label %._crit_edge23, label %40, !dbg !3367

._crit_edge23:                                    ; preds = %36
  br label %38, !dbg !3367

38:                                               ; preds = %._crit_edge23, %._crit_edge
  %39 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3368
  br label %200, !dbg !3370

40:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !3341
  %41 = fcmp olt double %4, 0.000000e+00, !dbg !3371
  br i1 %41, label %42, label %._crit_edge24, !dbg !3373

._crit_edge24:                                    ; preds = %40
  br label %44, !dbg !3373

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8 1, metadata !187, metadata !DIExpression()), !dbg !3341
  %43 = fsub double 0.000000e+00, %4, !dbg !3374
  call void @llvm.dbg.value(metadata double %43, metadata !177, metadata !DIExpression()), !dbg !3341
  br label %44, !dbg !3376

44:                                               ; preds = %42, %._crit_edge24
  %.012 = phi double [ %43, %42 ], [ %4, %._crit_edge24 ]
  %.011 = phi i8 [ 1, %42 ], [ 0, %._crit_edge24 ], !dbg !3341
  call void @llvm.dbg.value(metadata i8 %.011, metadata !187, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata double %.012, metadata !177, metadata !DIExpression()), !dbg !3341
  %45 = and i32 %7, 1024, !dbg !3377
  %46 = icmp ne i32 %45, 0, !dbg !3377
  br i1 %46, label %._crit_edge25, label %47, !dbg !3379

._crit_edge25:                                    ; preds = %44
  br label %48, !dbg !3379

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 6, metadata !178, metadata !DIExpression()), !dbg !3341
  br label %48, !dbg !3380

48:                                               ; preds = %47, %._crit_edge25
  %.013 = phi i32 [ %5, %._crit_edge25 ], [ 6, %47 ]
  call void @llvm.dbg.value(metadata i32 %.013, metadata !178, metadata !DIExpression()), !dbg !3341
  br label %49, !dbg !3382

49:                                               ; preds = %55, %48
  %.017 = phi i32 [ 0, %48 ], [ %56, %55 ], !dbg !3341
  %.114 = phi i32 [ %.013, %48 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i32 %.114, metadata !178, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.017, metadata !185, metadata !DIExpression()), !dbg !3341
  %50 = icmp ult i32 %.017, 32, !dbg !3383
  br i1 %50, label %51, label %._crit_edge26, !dbg !3384

._crit_edge26:                                    ; preds = %49
  br label %53, !dbg !3384

51:                                               ; preds = %49
  %52 = icmp ugt i32 %.114, 9, !dbg !3385
  br label %53

53:                                               ; preds = %51, %._crit_edge26
  %54 = phi i1 [ false, %._crit_edge26 ], [ %52, %51 ], !dbg !3341
  br i1 %54, label %55, label %59, !dbg !3382

55:                                               ; preds = %53
  %56 = add i32 %.017, 1, !dbg !3386
  call void @llvm.dbg.value(metadata i32 %56, metadata !185, metadata !DIExpression()), !dbg !3341
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.017, !dbg !3388
  store i8 48, i8* %57, align 1, !dbg !3389, !tbaa !2143
  %58 = add i32 %.114, -1, !dbg !3390
  call void @llvm.dbg.value(metadata i32 %58, metadata !178, metadata !DIExpression()), !dbg !3341
  br label %49, !dbg !3382, !llvm.loop !3391

59:                                               ; preds = %53
  %.017.lcssa = phi i32 [ %.017, %53 ], !dbg !3341
  %.114.lcssa = phi i32 [ %.114, %53 ]
  call void @llvm.dbg.value(metadata i32 %.017.lcssa, metadata !185, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !178, metadata !DIExpression()), !dbg !3341
  %60 = fptosi double %.012 to i32, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %60, metadata !189, metadata !DIExpression()), !dbg !3341
  %61 = sitofp i32 %60 to double, !dbg !3394
  %62 = fsub double %.012, %61, !dbg !3395
  %63 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3396
  %64 = load double, double* %63, align 8, !dbg !3396, !tbaa !3397
  %65 = fmul double %62, %64, !dbg !3399
  call void @llvm.dbg.value(metadata double %65, metadata !190, metadata !DIExpression()), !dbg !3341
  %66 = fptoui double %65 to i32, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %66, metadata !191, metadata !DIExpression()), !dbg !3341
  %67 = uitofp i32 %66 to double, !dbg !3401
  %68 = fsub double %65, %67, !dbg !3402
  call void @llvm.dbg.value(metadata double %68, metadata !186, metadata !DIExpression()), !dbg !3341
  %69 = fcmp ogt double %68, 5.000000e-01, !dbg !3403
  br i1 %69, label %70, label %79, !dbg !3405

70:                                               ; preds = %59
  %71 = add i32 %66, 1, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %71, metadata !191, metadata !DIExpression()), !dbg !3341
  %72 = uitofp i32 %71 to double, !dbg !3408
  %73 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3410
  %74 = load double, double* %73, align 8, !dbg !3410, !tbaa !3397
  %75 = fcmp oge double %72, %74, !dbg !3411
  br i1 %75, label %76, label %._crit_edge27, !dbg !3412

._crit_edge27:                                    ; preds = %70
  br label %78, !dbg !3412

76:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !3341
  %77 = add nsw i32 %60, 1, !dbg !3413
  call void @llvm.dbg.value(metadata i32 %77, metadata !189, metadata !DIExpression()), !dbg !3341
  br label %78, !dbg !3415

78:                                               ; preds = %76, %._crit_edge27
  %.06 = phi i32 [ %77, %76 ], [ %60, %._crit_edge27 ], !dbg !3341
  %.02 = phi i32 [ 0, %76 ], [ %71, %._crit_edge27 ], !dbg !3416
  call void @llvm.dbg.value(metadata i32 %.02, metadata !191, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.06, metadata !189, metadata !DIExpression()), !dbg !3341
  br label %91, !dbg !3417

79:                                               ; preds = %59
  %80 = fcmp olt double %68, 5.000000e-01, !dbg !3418
  br i1 %80, label %81, label %82, !dbg !3420

81:                                               ; preds = %79
  br label %90, !dbg !3421

82:                                               ; preds = %79
  %83 = icmp eq i32 %66, 0, !dbg !3423
  br i1 %83, label %._crit_edge28, label %84, !dbg !3425

._crit_edge28:                                    ; preds = %82
  br label %87, !dbg !3425

84:                                               ; preds = %82
  %85 = and i32 %66, 1, !dbg !3426
  %86 = icmp ne i32 %85, 0, !dbg !3426
  br i1 %86, label %._crit_edge29, label %._crit_edge30, !dbg !3427

._crit_edge30:                                    ; preds = %84
  br label %89, !dbg !3427

._crit_edge29:                                    ; preds = %84
  br label %87, !dbg !3427

87:                                               ; preds = %._crit_edge29, %._crit_edge28
  %88 = add i32 %66, 1, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %88, metadata !191, metadata !DIExpression()), !dbg !3341
  br label %89, !dbg !3430

89:                                               ; preds = %87, %._crit_edge30
  %.13 = phi i32 [ %88, %87 ], [ %66, %._crit_edge30 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.13, metadata !191, metadata !DIExpression()), !dbg !3341
  br label %90

90:                                               ; preds = %89, %81
  %.24 = phi i32 [ %66, %81 ], [ %.13, %89 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.24, metadata !191, metadata !DIExpression()), !dbg !3341
  br label %91

91:                                               ; preds = %90, %78
  %.17 = phi i32 [ %.06, %78 ], [ %60, %90 ], !dbg !3341
  %.35 = phi i32 [ %.02, %78 ], [ %.24, %90 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.35, metadata !191, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.17, metadata !189, metadata !DIExpression()), !dbg !3341
  %92 = icmp eq i32 %.114.lcssa, 0, !dbg !3431
  br i1 %92, label %93, label %105, !dbg !3432

93:                                               ; preds = %91
  %94 = sitofp i32 %.17 to double, !dbg !3433
  %95 = fsub double %.012, %94, !dbg !3435
  call void @llvm.dbg.value(metadata double %95, metadata !186, metadata !DIExpression()), !dbg !3341
  %96 = fcmp olt double %95, 5.000000e-01, !dbg !3436
  br i1 %96, label %97, label %._crit_edge31, !dbg !3438

._crit_edge31:                                    ; preds = %93
  br label %99, !dbg !3438

97:                                               ; preds = %93
  %98 = fcmp ogt double %95, 5.000000e-01, !dbg !3439
  br i1 %98, label %._crit_edge32, label %._crit_edge33, !dbg !3440

._crit_edge33:                                    ; preds = %97
  br label %104, !dbg !3440

._crit_edge32:                                    ; preds = %97
  br label %99, !dbg !3440

99:                                               ; preds = %._crit_edge32, %._crit_edge31
  %100 = and i32 %.17, 1, !dbg !3441
  %101 = icmp ne i32 %100, 0, !dbg !3441
  br i1 %101, label %102, label %._crit_edge34, !dbg !3442

._crit_edge34:                                    ; preds = %99
  br label %104, !dbg !3442

102:                                              ; preds = %99
  %103 = add nsw i32 %.17, 1, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %103, metadata !189, metadata !DIExpression()), !dbg !3341
  br label %104, !dbg !3445

104:                                              ; preds = %102, %._crit_edge34, %._crit_edge33
  %.28 = phi i32 [ %103, %102 ], [ %.17, %._crit_edge34 ], [ %.17, %._crit_edge33 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.28, metadata !189, metadata !DIExpression()), !dbg !3341
  br label %136, !dbg !3446

105:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !192, metadata !DIExpression()), !dbg !3447
  br label %106, !dbg !3448

106:                                              ; preds = %118, %105
  %.118 = phi i32 [ %.017.lcssa, %105 ], [ %113, %118 ], !dbg !3341
  %.4 = phi i32 [ %.35, %105 ], [ %115, %118 ], !dbg !3341
  %.01 = phi i32 [ %.114.lcssa, %105 ], [ %109, %118 ], !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.01, metadata !192, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.4, metadata !191, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.118, metadata !185, metadata !DIExpression()), !dbg !3341
  %107 = icmp ult i32 %.118, 32, !dbg !3449
  br i1 %107, label %108, label %._crit_edge35, !dbg !3448

._crit_edge35:                                    ; preds = %106
  %.118.lcssa = phi i32 [ %.118, %106 ], !dbg !3341
  %.01.lcssa = phi i32 [ %.01, %106 ], !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.118.lcssa, metadata !185, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !192, metadata !DIExpression()), !dbg !3447
  br label %119, !dbg !3448

108:                                              ; preds = %106
  %109 = add i32 %.01, -1, !dbg !3450
  call void @llvm.dbg.value(metadata i32 %109, metadata !192, metadata !DIExpression()), !dbg !3447
  %110 = urem i32 %.4, 10, !dbg !3452
  %111 = add i32 48, %110, !dbg !3453
  %112 = trunc i32 %111 to i8, !dbg !3454
  %113 = add i32 %.118, 1, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %113, metadata !185, metadata !DIExpression()), !dbg !3341
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.118, !dbg !3456
  store i8 %112, i8* %114, align 1, !dbg !3457, !tbaa !2143
  %115 = udiv i32 %.4, 10, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %115, metadata !191, metadata !DIExpression()), !dbg !3341
  %116 = icmp ne i32 %115, 0, !dbg !3458
  br i1 %116, label %118, label %117, !dbg !3460

117:                                              ; preds = %108
  %.lcssa52 = phi i32 [ %109, %108 ], !dbg !3450
  %.lcssa51 = phi i32 [ %113, %108 ], !dbg !3455
  br label %119, !dbg !3461

118:                                              ; preds = %108
  br label %106, !dbg !3448, !llvm.loop !3463

119:                                              ; preds = %117, %._crit_edge35
  %.219 = phi i32 [ %.lcssa51, %117 ], [ %.118.lcssa, %._crit_edge35 ], !dbg !3341
  %.1 = phi i32 [ %.lcssa52, %117 ], [ %.01.lcssa, %._crit_edge35 ], !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.1, metadata !192, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.219, metadata !185, metadata !DIExpression()), !dbg !3341
  br label %120, !dbg !3465

120:                                              ; preds = %127, %119
  %.320 = phi i32 [ %.219, %119 ], [ %128, %127 ], !dbg !3447
  %.2 = phi i32 [ %.1, %119 ], [ %.3, %127 ], !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.2, metadata !192, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.320, metadata !185, metadata !DIExpression()), !dbg !3341
  %121 = icmp ult i32 %.320, 32, !dbg !3466
  br i1 %121, label %122, label %._crit_edge36, !dbg !3467

._crit_edge36:                                    ; preds = %120
  br label %125, !dbg !3467

122:                                              ; preds = %120
  %123 = add i32 %.2, -1, !dbg !3468
  call void @llvm.dbg.value(metadata i32 %123, metadata !192, metadata !DIExpression()), !dbg !3447
  %124 = icmp ugt i32 %.2, 0, !dbg !3469
  br label %125

125:                                              ; preds = %122, %._crit_edge36
  %.3 = phi i32 [ %123, %122 ], [ %.2, %._crit_edge36 ], !dbg !3447
  %126 = phi i1 [ false, %._crit_edge36 ], [ %124, %122 ], !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.3, metadata !192, metadata !DIExpression()), !dbg !3447
  br i1 %126, label %127, label %130, !dbg !3465

127:                                              ; preds = %125
  %128 = add i32 %.320, 1, !dbg !3470
  call void @llvm.dbg.value(metadata i32 %128, metadata !185, metadata !DIExpression()), !dbg !3341
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320, !dbg !3472
  store i8 48, i8* %129, align 1, !dbg !3473, !tbaa !2143
  br label %120, !dbg !3465, !llvm.loop !3474

130:                                              ; preds = %125
  %.320.lcssa = phi i32 [ %.320, %125 ], !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.320.lcssa, metadata !185, metadata !DIExpression()), !dbg !3341
  %131 = icmp ult i32 %.320.lcssa, 32, !dbg !3476
  br i1 %131, label %132, label %._crit_edge37, !dbg !3478

._crit_edge37:                                    ; preds = %130
  br label %135, !dbg !3478

132:                                              ; preds = %130
  %133 = add i32 %.320.lcssa, 1, !dbg !3479
  call void @llvm.dbg.value(metadata i32 %133, metadata !185, metadata !DIExpression()), !dbg !3341
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320.lcssa, !dbg !3481
  store i8 46, i8* %134, align 1, !dbg !3482, !tbaa !2143
  br label %135, !dbg !3483

135:                                              ; preds = %132, %._crit_edge37
  %.421 = phi i32 [ %133, %132 ], [ %.320.lcssa, %._crit_edge37 ], !dbg !3447
  call void @llvm.dbg.value(metadata i32 %.421, metadata !185, metadata !DIExpression()), !dbg !3341
  br label %136

136:                                              ; preds = %135, %104
  %.5 = phi i32 [ %.017.lcssa, %104 ], [ %.421, %135 ], !dbg !3341
  %.39 = phi i32 [ %.28, %104 ], [ %.17, %135 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.39, metadata !189, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.5, metadata !185, metadata !DIExpression()), !dbg !3341
  br label %137, !dbg !3484

137:                                              ; preds = %148, %136
  %.6 = phi i32 [ %.5, %136 ], [ %143, %148 ], !dbg !3341
  %.410 = phi i32 [ %.39, %136 ], [ %145, %148 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.410, metadata !189, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.6, metadata !185, metadata !DIExpression()), !dbg !3341
  %138 = icmp ult i32 %.6, 32, !dbg !3485
  br i1 %138, label %139, label %._crit_edge38, !dbg !3484

._crit_edge38:                                    ; preds = %137
  %.6.lcssa = phi i32 [ %.6, %137 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.6.lcssa, metadata !185, metadata !DIExpression()), !dbg !3341
  br label %149, !dbg !3484

139:                                              ; preds = %137
  %140 = srem i32 %.410, 10, !dbg !3486
  %141 = add nsw i32 48, %140, !dbg !3488
  %142 = trunc i32 %141 to i8, !dbg !3489
  %143 = add i32 %.6, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %143, metadata !185, metadata !DIExpression()), !dbg !3341
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.6, !dbg !3491
  store i8 %142, i8* %144, align 1, !dbg !3492, !tbaa !2143
  %145 = sdiv i32 %.410, 10, !dbg !3493
  call void @llvm.dbg.value(metadata i32 %145, metadata !189, metadata !DIExpression()), !dbg !3341
  %146 = icmp ne i32 %145, 0, !dbg !3493
  br i1 %146, label %148, label %147, !dbg !3495

147:                                              ; preds = %139
  %.lcssa = phi i32 [ %143, %139 ], !dbg !3490
  br label %149, !dbg !3496

148:                                              ; preds = %139
  br label %137, !dbg !3484, !llvm.loop !3498

149:                                              ; preds = %147, %._crit_edge38
  %.7 = phi i32 [ %.lcssa, %147 ], [ %.6.lcssa, %._crit_edge38 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.7, metadata !185, metadata !DIExpression()), !dbg !3341
  %150 = and i32 %7, 2, !dbg !3500
  %151 = icmp ne i32 %150, 0, !dbg !3500
  br i1 %151, label %._crit_edge39, label %152, !dbg !3502

._crit_edge39:                                    ; preds = %149
  br label %175, !dbg !3502

152:                                              ; preds = %149
  %153 = and i32 %7, 1, !dbg !3503
  %154 = icmp ne i32 %153, 0, !dbg !3503
  br i1 %154, label %155, label %._crit_edge40, !dbg !3504

._crit_edge40:                                    ; preds = %152
  br label %175, !dbg !3504

155:                                              ; preds = %152
  %156 = icmp ne i32 %6, 0, !dbg !3505
  br i1 %156, label %157, label %._crit_edge41, !dbg !3508

._crit_edge41:                                    ; preds = %155
  br label %164, !dbg !3508

157:                                              ; preds = %155
  %158 = trunc i8 %.011 to i1, !dbg !3509
  br i1 %158, label %._crit_edge42, label %159, !dbg !3510

._crit_edge42:                                    ; preds = %157
  br label %162, !dbg !3510

159:                                              ; preds = %157
  %160 = and i32 %7, 12, !dbg !3511
  %161 = icmp ne i32 %160, 0, !dbg !3511
  br i1 %161, label %._crit_edge43, label %._crit_edge44, !dbg !3512

._crit_edge44:                                    ; preds = %159
  br label %164, !dbg !3512

._crit_edge43:                                    ; preds = %159
  br label %162, !dbg !3512

162:                                              ; preds = %._crit_edge43, %._crit_edge42
  %163 = add i32 %6, -1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %163, metadata !179, metadata !DIExpression()), !dbg !3341
  br label %164, !dbg !3515

164:                                              ; preds = %162, %._crit_edge44, %._crit_edge41
  %.015 = phi i32 [ %163, %162 ], [ %6, %._crit_edge44 ], [ %6, %._crit_edge41 ]
  call void @llvm.dbg.value(metadata i32 %.015, metadata !179, metadata !DIExpression()), !dbg !3341
  br label %165, !dbg !3516

165:                                              ; preds = %171, %164
  %.8 = phi i32 [ %.7, %164 ], [ %172, %171 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.8, metadata !185, metadata !DIExpression()), !dbg !3341
  %166 = icmp ult i32 %.8, %.015, !dbg !3517
  br i1 %166, label %167, label %._crit_edge45, !dbg !3518

._crit_edge45:                                    ; preds = %165
  br label %169, !dbg !3518

167:                                              ; preds = %165
  %168 = icmp ult i32 %.8, 32, !dbg !3519
  br label %169

169:                                              ; preds = %167, %._crit_edge45
  %170 = phi i1 [ false, %._crit_edge45 ], [ %168, %167 ], !dbg !3520
  br i1 %170, label %171, label %174, !dbg !3516

171:                                              ; preds = %169
  %172 = add i32 %.8, 1, !dbg !3521
  call void @llvm.dbg.value(metadata i32 %172, metadata !185, metadata !DIExpression()), !dbg !3341
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.8, !dbg !3523
  store i8 48, i8* %173, align 1, !dbg !3524, !tbaa !2143
  br label %165, !dbg !3516, !llvm.loop !3525

174:                                              ; preds = %169
  %.8.lcssa = phi i32 [ %.8, %169 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.8.lcssa, metadata !185, metadata !DIExpression()), !dbg !3341
  br label %175, !dbg !3527

175:                                              ; preds = %174, %._crit_edge40, %._crit_edge39
  %.9 = phi i32 [ %.7, %._crit_edge39 ], [ %.8.lcssa, %174 ], [ %.7, %._crit_edge40 ], !dbg !3490
  %.116 = phi i32 [ %6, %._crit_edge39 ], [ %.015, %174 ], [ %6, %._crit_edge40 ]
  call void @llvm.dbg.value(metadata i32 %.116, metadata !179, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.9, metadata !185, metadata !DIExpression()), !dbg !3341
  %176 = icmp ult i32 %.9, 32, !dbg !3528
  br i1 %176, label %177, label %._crit_edge46, !dbg !3530

._crit_edge46:                                    ; preds = %175
  br label %197, !dbg !3530

177:                                              ; preds = %175
  %178 = trunc i8 %.011 to i1, !dbg !3531
  br i1 %178, label %179, label %182, !dbg !3534

179:                                              ; preds = %177
  %180 = add i32 %.9, 1, !dbg !3535
  call void @llvm.dbg.value(metadata i32 %180, metadata !185, metadata !DIExpression()), !dbg !3341
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3537
  store i8 45, i8* %181, align 1, !dbg !3538, !tbaa !2143
  br label %196, !dbg !3539

182:                                              ; preds = %177
  %183 = and i32 %7, 4, !dbg !3540
  %184 = icmp ne i32 %183, 0, !dbg !3540
  br i1 %184, label %185, label %188, !dbg !3542

185:                                              ; preds = %182
  %186 = add i32 %.9, 1, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %186, metadata !185, metadata !DIExpression()), !dbg !3341
  %187 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3545
  store i8 43, i8* %187, align 1, !dbg !3546, !tbaa !2143
  br label %195, !dbg !3547

188:                                              ; preds = %182
  %189 = and i32 %7, 8, !dbg !3548
  %190 = icmp ne i32 %189, 0, !dbg !3548
  br i1 %190, label %191, label %._crit_edge47, !dbg !3550

._crit_edge47:                                    ; preds = %188
  br label %194, !dbg !3550

191:                                              ; preds = %188
  %192 = add i32 %.9, 1, !dbg !3551
  call void @llvm.dbg.value(metadata i32 %192, metadata !185, metadata !DIExpression()), !dbg !3341
  %193 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3553
  store i8 32, i8* %193, align 1, !dbg !3554, !tbaa !2143
  br label %194, !dbg !3555

194:                                              ; preds = %191, %._crit_edge47
  %.10 = phi i32 [ %192, %191 ], [ %.9, %._crit_edge47 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.10, metadata !185, metadata !DIExpression()), !dbg !3341
  br label %195

195:                                              ; preds = %194, %185
  %.11 = phi i32 [ %186, %185 ], [ %.10, %194 ], !dbg !3556
  call void @llvm.dbg.value(metadata i32 %.11, metadata !185, metadata !DIExpression()), !dbg !3341
  br label %196

196:                                              ; preds = %195, %179
  %.12 = phi i32 [ %180, %179 ], [ %.11, %195 ], !dbg !3557
  call void @llvm.dbg.value(metadata i32 %.12, metadata !185, metadata !DIExpression()), !dbg !3341
  br label %197, !dbg !3558

197:                                              ; preds = %196, %._crit_edge46
  %.1322 = phi i32 [ %.12, %196 ], [ %.9, %._crit_edge46 ], !dbg !3341
  call void @llvm.dbg.value(metadata i32 %.1322, metadata !185, metadata !DIExpression()), !dbg !3341
  %198 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0, !dbg !3559
  %199 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %198, i32 %.1322, i32 %.116, i32 %7), !dbg !3560
  br label %200

200:                                              ; preds = %197, %38, %22, %17, %12
  %.0 = phi i32 [ %14, %12 ], [ %19, %17 ], [ %33, %22 ], [ %39, %38 ], [ %199, %197 ], !dbg !3341
  %201 = bitcast [32 x i8]* %9 to i8*, !dbg !3561
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %201) #4, !dbg !3561
  ret i32 %.0, !dbg !3561
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !3562 {
  %9 = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3564, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i8* %1, metadata !3565, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %2, metadata !3566, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %3, metadata !3567, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata double %4, metadata !3568, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %5, metadata !3569, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %6, metadata !3570, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %7, metadata !3571, metadata !DIExpression()), !dbg !3585
  %10 = fcmp une double %4, %4, !dbg !3586
  br i1 %10, label %._crit_edge, label %11, !dbg !3588

._crit_edge:                                      ; preds = %8
  br label %15, !dbg !3588

11:                                               ; preds = %8
  %12 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3589
  br i1 %12, label %._crit_edge16, label %13, !dbg !3590

._crit_edge16:                                    ; preds = %11
  br label %15, !dbg !3590

13:                                               ; preds = %11
  %14 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3591
  br i1 %14, label %._crit_edge17, label %17, !dbg !3592

._crit_edge17:                                    ; preds = %13
  br label %15, !dbg !3592

15:                                               ; preds = %._crit_edge17, %._crit_edge16, %._crit_edge
  %16 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3593
  br label %171, !dbg !3595

17:                                               ; preds = %13
  %18 = fcmp olt double %4, 0.000000e+00, !dbg !3596
  %19 = zext i1 %18 to i8, !dbg !3597
  call void @llvm.dbg.value(metadata i8 %19, metadata !3572, metadata !DIExpression()), !dbg !3585
  %20 = trunc i8 %19 to i1, !dbg !3598
  br i1 %20, label %21, label %._crit_edge18, !dbg !3600

._crit_edge18:                                    ; preds = %17
  br label %23, !dbg !3600

21:                                               ; preds = %17
  %22 = fsub double -0.000000e+00, %4, !dbg !3601
  call void @llvm.dbg.value(metadata double %22, metadata !3568, metadata !DIExpression()), !dbg !3585
  br label %23, !dbg !3603

23:                                               ; preds = %21, %._crit_edge18
  %.09 = phi double [ %22, %21 ], [ %4, %._crit_edge18 ]
  call void @llvm.dbg.value(metadata double %.09, metadata !3568, metadata !DIExpression()), !dbg !3585
  %24 = and i32 %7, 1024, !dbg !3604
  %25 = icmp ne i32 %24, 0, !dbg !3604
  br i1 %25, label %._crit_edge19, label %26, !dbg !3606

._crit_edge19:                                    ; preds = %23
  br label %27, !dbg !3606

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 6, metadata !3569, metadata !DIExpression()), !dbg !3585
  br label %27, !dbg !3607

27:                                               ; preds = %26, %._crit_edge19
  %.011 = phi i32 [ %5, %._crit_edge19 ], [ 6, %26 ]
  call void @llvm.dbg.value(metadata i32 %.011, metadata !3569, metadata !DIExpression()), !dbg !3585
  %28 = bitcast %union.anon* %9 to i8*, !dbg !3609
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #4, !dbg !3609
  call void @llvm.dbg.declare(metadata %union.anon* %9, metadata !3573, metadata !DIExpression()), !dbg !3610
  %29 = bitcast %union.anon* %9 to double*, !dbg !3611
  store double %.09, double* %29, align 8, !dbg !3612, !tbaa !2143
  %30 = bitcast %union.anon* %9 to i64*, !dbg !3613
  %31 = load i64, i64* %30, align 8, !dbg !3613, !tbaa !2143
  %32 = lshr i64 %31, 52, !dbg !3614
  %33 = and i64 %32, 2047, !dbg !3615
  %34 = trunc i64 %33 to i32, !dbg !3616
  %35 = sub nsw i32 %34, 1023, !dbg !3617
  call void @llvm.dbg.value(metadata i32 %35, metadata !3578, metadata !DIExpression()), !dbg !3585
  %36 = bitcast %union.anon* %9 to i64*, !dbg !3618
  %37 = load i64, i64* %36, align 8, !dbg !3618, !tbaa !2143
  %38 = and i64 %37, 4503599627370495, !dbg !3619
  %39 = or i64 %38, 4607182418800017408, !dbg !3620
  %40 = bitcast %union.anon* %9 to i64*, !dbg !3621
  store i64 %39, i64* %40, align 8, !dbg !3622, !tbaa !2143
  %41 = sitofp i32 %35 to double, !dbg !3623
  %42 = fmul double %41, 0x3FD34413509F79FB, !dbg !3624
  %43 = fadd double 0x3FC68A288B60C8B3, %42, !dbg !3625
  %44 = bitcast %union.anon* %9 to double*, !dbg !3626
  %45 = load double, double* %44, align 8, !dbg !3626, !tbaa !2143
  %46 = fsub double %45, 1.500000e+00, !dbg !3627
  %47 = fmul double %46, 0x3FD287A7636F4361, !dbg !3628
  %48 = fadd double %43, %47, !dbg !3629
  %49 = fptosi double %48 to i32, !dbg !3630
  call void @llvm.dbg.value(metadata i32 %49, metadata !3579, metadata !DIExpression()), !dbg !3585
  %50 = sitofp i32 %49 to double, !dbg !3631
  %51 = fmul double %50, 0x400A934F0979A371, !dbg !3632
  %52 = fadd double %51, 5.000000e-01, !dbg !3633
  %53 = fptosi double %52 to i32, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %53, metadata !3578, metadata !DIExpression()), !dbg !3585
  %54 = sitofp i32 %49 to double, !dbg !3635
  %55 = fmul double %54, 0x40026BB1BBB55516, !dbg !3636
  %56 = sitofp i32 %53 to double, !dbg !3637
  %57 = fmul double %56, 0x3FE62E42FEFA39EF, !dbg !3638
  %58 = fsub double %55, %57, !dbg !3639
  call void @llvm.dbg.value(metadata double %58, metadata !3580, metadata !DIExpression()), !dbg !3585
  %59 = fmul double %58, %58, !dbg !3640
  call void @llvm.dbg.value(metadata double %59, metadata !3581, metadata !DIExpression()), !dbg !3585
  %60 = add nsw i32 %53, 1023, !dbg !3641
  %61 = sext i32 %60 to i64, !dbg !3642
  %62 = shl i64 %61, 52, !dbg !3643
  %63 = bitcast %union.anon* %9 to i64*, !dbg !3644
  store i64 %62, i64* %63, align 8, !dbg !3645, !tbaa !2143
  %64 = fmul double 2.000000e+00, %58, !dbg !3646
  %65 = fsub double 2.000000e+00, %58, !dbg !3647
  %66 = fdiv double %59, 1.400000e+01, !dbg !3648
  %67 = fadd double 1.000000e+01, %66, !dbg !3649
  %68 = fdiv double %59, %67, !dbg !3650
  %69 = fadd double 6.000000e+00, %68, !dbg !3651
  %70 = fdiv double %59, %69, !dbg !3652
  %71 = fadd double %65, %70, !dbg !3653
  %72 = fdiv double %64, %71, !dbg !3654
  %73 = fadd double 1.000000e+00, %72, !dbg !3655
  %74 = bitcast %union.anon* %9 to double*, !dbg !3656
  %75 = load double, double* %74, align 8, !dbg !3657, !tbaa !2143
  %76 = fmul double %75, %73, !dbg !3657
  store double %76, double* %74, align 8, !dbg !3657, !tbaa !2143
  %77 = bitcast %union.anon* %9 to double*, !dbg !3658
  %78 = load double, double* %77, align 8, !dbg !3658, !tbaa !2143
  %79 = fcmp olt double %.09, %78, !dbg !3660
  br i1 %79, label %80, label %._crit_edge20, !dbg !3661

._crit_edge20:                                    ; preds = %27
  br label %85, !dbg !3661

80:                                               ; preds = %27
  %81 = add nsw i32 %49, -1, !dbg !3662
  call void @llvm.dbg.value(metadata i32 %81, metadata !3579, metadata !DIExpression()), !dbg !3585
  %82 = bitcast %union.anon* %9 to double*, !dbg !3664
  %83 = load double, double* %82, align 8, !dbg !3665, !tbaa !2143
  %84 = fdiv double %83, 1.000000e+01, !dbg !3665
  store double %84, double* %82, align 8, !dbg !3665, !tbaa !2143
  br label %85, !dbg !3666

85:                                               ; preds = %80, %._crit_edge20
  %.06 = phi i32 [ %81, %80 ], [ %49, %._crit_edge20 ], !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3579, metadata !DIExpression()), !dbg !3585
  %86 = icmp slt i32 %.06, 100, !dbg !3667
  br i1 %86, label %87, label %._crit_edge21, !dbg !3668

._crit_edge21:                                    ; preds = %85
  br label %89, !dbg !3668

87:                                               ; preds = %85
  %88 = icmp sgt i32 %.06, -100, !dbg !3669
  br label %89

89:                                               ; preds = %87, %._crit_edge21
  %90 = phi i1 [ false, %._crit_edge21 ], [ %88, %87 ], !dbg !3585
  %91 = zext i1 %90 to i64, !dbg !3670
  %92 = select i1 %90, i32 4, i32 5, !dbg !3670
  call void @llvm.dbg.value(metadata i32 %92, metadata !3582, metadata !DIExpression()), !dbg !3585
  %93 = and i32 %7, 2048, !dbg !3671
  %94 = icmp ne i32 %93, 0, !dbg !3671
  br i1 %94, label %95, label %._crit_edge22, !dbg !3673

._crit_edge22:                                    ; preds = %89
  br label %116, !dbg !3673

95:                                               ; preds = %89
  %96 = fcmp oge double %.09, 1.000000e-04, !dbg !3674
  br i1 %96, label %97, label %._crit_edge23, !dbg !3677

._crit_edge23:                                    ; preds = %95
  br label %107, !dbg !3677

97:                                               ; preds = %95
  %98 = fcmp olt double %.09, 1.000000e+06, !dbg !3678
  br i1 %98, label %99, label %._crit_edge24, !dbg !3679

._crit_edge24:                                    ; preds = %97
  br label %107, !dbg !3679

99:                                               ; preds = %97
  %100 = icmp sgt i32 %.011, %.06, !dbg !3680
  br i1 %100, label %101, label %104, !dbg !3683

101:                                              ; preds = %99
  %102 = sub nsw i32 %.011, %.06, !dbg !3684
  %103 = sub nsw i32 %102, 1, !dbg !3686
  call void @llvm.dbg.value(metadata i32 %103, metadata !3569, metadata !DIExpression()), !dbg !3585
  br label %105, !dbg !3687

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 0, metadata !3569, metadata !DIExpression()), !dbg !3585
  br label %105

105:                                              ; preds = %104, %101
  %.112 = phi i32 [ %103, %101 ], [ 0, %104 ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %.112, metadata !3569, metadata !DIExpression()), !dbg !3585
  %106 = or i32 %7, 1024, !dbg !3689
  call void @llvm.dbg.value(metadata i32 %106, metadata !3571, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 0, metadata !3582, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 0, metadata !3579, metadata !DIExpression()), !dbg !3585
  br label %115, !dbg !3690

107:                                              ; preds = %._crit_edge24, %._crit_edge23
  %108 = icmp ugt i32 %.011, 0, !dbg !3691
  br i1 %108, label %109, label %._crit_edge25, !dbg !3694

._crit_edge25:                                    ; preds = %107
  br label %114, !dbg !3694

109:                                              ; preds = %107
  %110 = and i32 %7, 1024, !dbg !3695
  %111 = icmp ne i32 %110, 0, !dbg !3695
  br i1 %111, label %112, label %._crit_edge26, !dbg !3696

._crit_edge26:                                    ; preds = %109
  br label %114, !dbg !3696

112:                                              ; preds = %109
  %113 = add i32 %.011, -1, !dbg !3697
  call void @llvm.dbg.value(metadata i32 %113, metadata !3569, metadata !DIExpression()), !dbg !3585
  br label %114, !dbg !3699

114:                                              ; preds = %112, %._crit_edge26, %._crit_edge25
  %.213 = phi i32 [ %113, %112 ], [ %.011, %._crit_edge26 ], [ %.011, %._crit_edge25 ]
  call void @llvm.dbg.value(metadata i32 %.213, metadata !3569, metadata !DIExpression()), !dbg !3585
  br label %115

115:                                              ; preds = %114, %105
  %.014 = phi i32 [ %106, %105 ], [ %7, %114 ]
  %.3 = phi i32 [ %.112, %105 ], [ %.213, %114 ], !dbg !3700
  %.17 = phi i32 [ 0, %105 ], [ %.06, %114 ], !dbg !3585
  %.02 = phi i32 [ 0, %105 ], [ %92, %114 ], !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3582, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.17, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3569, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.014, metadata !3571, metadata !DIExpression()), !dbg !3585
  br label %116, !dbg !3701

116:                                              ; preds = %115, %._crit_edge22
  %.115 = phi i32 [ %.014, %115 ], [ %7, %._crit_edge22 ]
  %.4 = phi i32 [ %.3, %115 ], [ %.011, %._crit_edge22 ]
  %.28 = phi i32 [ %.17, %115 ], [ %.06, %._crit_edge22 ], !dbg !3585
  %.13 = phi i32 [ %.02, %115 ], [ %92, %._crit_edge22 ], !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3582, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.28, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3569, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.115, metadata !3571, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %6, metadata !3583, metadata !DIExpression()), !dbg !3585
  %117 = icmp ugt i32 %6, %.13, !dbg !3702
  br i1 %117, label %118, label %120, !dbg !3704

118:                                              ; preds = %116
  %119 = sub i32 %6, %.13, !dbg !3705
  call void @llvm.dbg.value(metadata i32 %119, metadata !3583, metadata !DIExpression()), !dbg !3585
  br label %121, !dbg !3707

120:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3585
  br label %121

121:                                              ; preds = %120, %118
  %.01 = phi i32 [ %119, %118 ], [ 0, %120 ], !dbg !3708
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3583, metadata !DIExpression()), !dbg !3585
  %122 = and i32 %.115, 2, !dbg !3709
  %123 = icmp ne i32 %122, 0, !dbg !3709
  br i1 %123, label %124, label %._crit_edge27, !dbg !3711

._crit_edge27:                                    ; preds = %121
  br label %127, !dbg !3711

124:                                              ; preds = %121
  %125 = icmp ne i32 %.13, 0, !dbg !3712
  br i1 %125, label %126, label %._crit_edge28, !dbg !3713

._crit_edge28:                                    ; preds = %124
  br label %127, !dbg !3713

126:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3585
  br label %127, !dbg !3714

127:                                              ; preds = %126, %._crit_edge28, %._crit_edge27
  %.1 = phi i32 [ 0, %126 ], [ %.01, %._crit_edge28 ], [ %.01, %._crit_edge27 ], !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3583, metadata !DIExpression()), !dbg !3585
  %128 = icmp ne i32 %.28, 0, !dbg !3716
  br i1 %128, label %129, label %._crit_edge29, !dbg !3718

._crit_edge29:                                    ; preds = %127
  br label %133, !dbg !3718

129:                                              ; preds = %127
  %130 = bitcast %union.anon* %9 to double*, !dbg !3719
  %131 = load double, double* %130, align 8, !dbg !3719, !tbaa !2143
  %132 = fdiv double %.09, %131, !dbg !3721
  call void @llvm.dbg.value(metadata double %132, metadata !3568, metadata !DIExpression()), !dbg !3585
  br label %133, !dbg !3722

133:                                              ; preds = %129, %._crit_edge29
  %.110 = phi double [ %132, %129 ], [ %.09, %._crit_edge29 ], !dbg !3585
  call void @llvm.dbg.value(metadata double %.110, metadata !3568, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %2, metadata !3584, metadata !DIExpression()), !dbg !3585
  %134 = trunc i8 %19 to i1, !dbg !3723
  br i1 %134, label %135, label %137, !dbg !3723

135:                                              ; preds = %133
  %136 = fsub double -0.000000e+00, %.110, !dbg !3724
  br label %138, !dbg !3723

137:                                              ; preds = %133
  br label %138, !dbg !3723

138:                                              ; preds = %137, %135
  %139 = phi double [ %136, %135 ], [ %.110, %137 ], !dbg !3723
  %140 = and i32 %.115, -2049, !dbg !3725
  %141 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %139, i32 %.4, i32 %.1, i32 %140), !dbg !3726
  call void @llvm.dbg.value(metadata i32 %141, metadata !3566, metadata !DIExpression()), !dbg !3585
  %142 = icmp ne i32 %.13, 0, !dbg !3727
  br i1 %142, label %143, label %._crit_edge30, !dbg !3729

._crit_edge30:                                    ; preds = %138
  br label %169, !dbg !3729

143:                                              ; preds = %138
  %144 = and i32 %.115, 32, !dbg !3730
  %145 = icmp ne i32 %144, 0, !dbg !3732
  %146 = zext i1 %145 to i64, !dbg !3732
  %147 = select i1 %145, i32 69, i32 101, !dbg !3732
  %148 = trunc i32 %147 to i8, !dbg !3732
  %149 = add i32 %141, 1, !dbg !3733
  call void @llvm.dbg.value(metadata i32 %149, metadata !3566, metadata !DIExpression()), !dbg !3585
  call arm_aapcscc void %0(i8 zeroext %148, i8* %1, i32 %141, i32 %3), !dbg !3734
  %150 = icmp slt i32 %.28, 0, !dbg !3735
  br i1 %150, label %151, label %153, !dbg !3736

151:                                              ; preds = %143
  %152 = sub nsw i32 0, %.28, !dbg !3737
  br label %154, !dbg !3736

153:                                              ; preds = %143
  br label %154, !dbg !3736

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ %.28, %153 ], !dbg !3736
  %156 = icmp slt i32 %.28, 0, !dbg !3738
  %157 = sub i32 %.13, 1, !dbg !3739
  %158 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %149, i32 %3, i32 %155, i1 zeroext %156, i32 10, i32 0, i32 %157, i32 5), !dbg !3740
  call void @llvm.dbg.value(metadata i32 %158, metadata !3566, metadata !DIExpression()), !dbg !3585
  %159 = and i32 %.115, 2, !dbg !3741
  %160 = icmp ne i32 %159, 0, !dbg !3741
  br i1 %160, label %161, label %._crit_edge31, !dbg !3743

._crit_edge31:                                    ; preds = %154
  br label %168, !dbg !3743

161:                                              ; preds = %154
  br label %162, !dbg !3744

162:                                              ; preds = %165, %161
  %.04 = phi i32 [ %158, %161 ], [ %166, %165 ], !dbg !3746
  call void @llvm.dbg.value(metadata i32 %.04, metadata !3566, metadata !DIExpression()), !dbg !3585
  %163 = sub i32 %.04, %2, !dbg !3747
  %164 = icmp ult i32 %163, %6, !dbg !3748
  br i1 %164, label %165, label %167, !dbg !3744

165:                                              ; preds = %162
  %166 = add i32 %.04, 1, !dbg !3749
  call void @llvm.dbg.value(metadata i32 %166, metadata !3566, metadata !DIExpression()), !dbg !3585
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.04, i32 %3), !dbg !3750
  br label %162, !dbg !3744, !llvm.loop !3751

167:                                              ; preds = %162
  %.04.lcssa = phi i32 [ %.04, %162 ], !dbg !3746
  call void @llvm.dbg.value(metadata i32 %.04.lcssa, metadata !3566, metadata !DIExpression()), !dbg !3585
  br label %168, !dbg !3753

168:                                              ; preds = %167, %._crit_edge31
  %.15 = phi i32 [ %.04.lcssa, %167 ], [ %158, %._crit_edge31 ], !dbg !3754
  call void @llvm.dbg.value(metadata i32 %.15, metadata !3566, metadata !DIExpression()), !dbg !3585
  br label %169, !dbg !3755

169:                                              ; preds = %168, %._crit_edge30
  %.2 = phi i32 [ %.15, %168 ], [ %141, %._crit_edge30 ], !dbg !3585
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3566, metadata !DIExpression()), !dbg !3585
  %170 = bitcast %union.anon* %9 to i8*, !dbg !3756
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170) #4, !dbg !3756
  br label %171

171:                                              ; preds = %169, %15
  %.0 = phi i32 [ %16, %15 ], [ %.2, %169 ], !dbg !3585
  ret i32 %.0, !dbg !3756
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @_strnlen_s(i8*, i32) #5 !dbg !3757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3761, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 %1, metadata !3762, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()), !dbg !3764
  br label %3, !dbg !3765

3:                                                ; preds = %13, %2
  %.01 = phi i32 [ %1, %2 ], [ %.1, %13 ]
  %.0 = phi i8* [ %0, %2 ], [ %14, %13 ], !dbg !3767
  call void @llvm.dbg.value(metadata i8* %.0, metadata !3763, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3762, metadata !DIExpression()), !dbg !3764
  %4 = load i8, i8* %.0, align 1, !dbg !3768, !tbaa !2143
  %5 = zext i8 %4 to i32, !dbg !3768
  %6 = icmp ne i32 %5, 0, !dbg !3768
  br i1 %6, label %7, label %._crit_edge, !dbg !3770

._crit_edge:                                      ; preds = %3
  br label %10, !dbg !3770

7:                                                ; preds = %3
  %8 = add i32 %.01, -1, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %8, metadata !3762, metadata !DIExpression()), !dbg !3764
  %9 = icmp ne i32 %.01, 0, !dbg !3770
  br label %10

10:                                               ; preds = %7, %._crit_edge
  %.1 = phi i32 [ %8, %7 ], [ %.01, %._crit_edge ]
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %7 ], !dbg !3772
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3762, metadata !DIExpression()), !dbg !3764
  br i1 %11, label %12, label %15, !dbg !3773

12:                                               ; preds = %10
  br label %13, !dbg !3773

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !3774
  call void @llvm.dbg.value(metadata i8* %14, metadata !3763, metadata !DIExpression()), !dbg !3764
  br label %3, !dbg !3775, !llvm.loop !3776

15:                                               ; preds = %10
  %.0.lcssa = phi i8* [ %.0, %10 ], !dbg !3767
  call void @llvm.dbg.value(metadata i8* %.0.lcssa, metadata !3763, metadata !DIExpression()), !dbg !3764
  %16 = ptrtoint i8* %.0.lcssa to i32, !dbg !3778
  %17 = ptrtoint i8* %0 to i32, !dbg !3778
  %18 = sub i32 %16, %17, !dbg !3778
  ret i32 %18, !dbg !3779
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i32, i32) #0 !dbg !3780 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3784, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i8* %1, metadata !3785, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 %2, metadata !3786, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 %3, metadata !3787, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i8* %4, metadata !3788, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 %5, metadata !3789, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 %6, metadata !3790, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 %7, metadata !3791, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 %2, metadata !3792, metadata !DIExpression()), !dbg !3797
  %9 = and i32 %7, 2, !dbg !3798
  %10 = icmp ne i32 %9, 0, !dbg !3798
  br i1 %10, label %._crit_edge, label %11, !dbg !3799

._crit_edge:                                      ; preds = %8
  br label %23, !dbg !3799

11:                                               ; preds = %8
  %12 = and i32 %7, 1, !dbg !3800
  %13 = icmp ne i32 %12, 0, !dbg !3800
  br i1 %13, label %._crit_edge3, label %14, !dbg !3801

._crit_edge3:                                     ; preds = %11
  br label %23, !dbg !3801

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %5, metadata !3793, metadata !DIExpression()), !dbg !3802
  br label %15, !dbg !3803

15:                                               ; preds = %20, %14
  %.02 = phi i32 [ %2, %14 ], [ %19, %20 ]
  %.0 = phi i32 [ %5, %14 ], [ %21, %20 ], !dbg !3802
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3793, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3786, metadata !DIExpression()), !dbg !3797
  %16 = icmp ult i32 %.0, %6, !dbg !3804
  br i1 %16, label %18, label %17, !dbg !3806

17:                                               ; preds = %15
  %.02.lcssa = phi i32 [ %.02, %15 ]
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !3786, metadata !DIExpression()), !dbg !3797
  br label %22

18:                                               ; preds = %15
  %19 = add i32 %.02, 1, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %19, metadata !3786, metadata !DIExpression()), !dbg !3797
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.02, i32 %3), !dbg !3809
  br label %20, !dbg !3810

20:                                               ; preds = %18
  %21 = add i32 %.0, 1, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %21, metadata !3793, metadata !DIExpression()), !dbg !3802
  br label %15, !dbg !3812, !llvm.loop !3813

22:                                               ; preds = %17
  br label %23, !dbg !3815

23:                                               ; preds = %22, %._crit_edge3, %._crit_edge
  %.1 = phi i32 [ %2, %._crit_edge ], [ %2, %._crit_edge3 ], [ %.02.lcssa, %22 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3786, metadata !DIExpression()), !dbg !3797
  br label %24, !dbg !3816

24:                                               ; preds = %26, %23
  %.2 = phi i32 [ %.1, %23 ], [ %30, %26 ]
  %.01 = phi i32 [ %5, %23 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3789, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3786, metadata !DIExpression()), !dbg !3797
  %25 = icmp ne i32 %.01, 0, !dbg !3816
  br i1 %25, label %26, label %31, !dbg !3816

26:                                               ; preds = %24
  %27 = add i32 %.01, -1, !dbg !3817
  call void @llvm.dbg.value(metadata i32 %27, metadata !3789, metadata !DIExpression()), !dbg !3797
  %28 = getelementptr inbounds i8, i8* %4, i32 %27, !dbg !3819
  %29 = load i8, i8* %28, align 1, !dbg !3819, !tbaa !2143
  %30 = add i32 %.2, 1, !dbg !3820
  call void @llvm.dbg.value(metadata i32 %30, metadata !3786, metadata !DIExpression()), !dbg !3797
  call arm_aapcscc void %0(i8 zeroext %29, i8* %1, i32 %.2, i32 %3), !dbg !3821
  br label %24, !dbg !3816, !llvm.loop !3822

31:                                               ; preds = %24
  %.2.lcssa = phi i32 [ %.2, %24 ]
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !3786, metadata !DIExpression()), !dbg !3797
  %32 = and i32 %7, 2, !dbg !3824
  %33 = icmp ne i32 %32, 0, !dbg !3824
  br i1 %33, label %34, label %._crit_edge4, !dbg !3826

._crit_edge4:                                     ; preds = %31
  br label %41, !dbg !3826

34:                                               ; preds = %31
  br label %35, !dbg !3827

35:                                               ; preds = %38, %34
  %.3 = phi i32 [ %.2.lcssa, %34 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3786, metadata !DIExpression()), !dbg !3797
  %36 = sub i32 %.3, %2, !dbg !3829
  %37 = icmp ult i32 %36, %6, !dbg !3830
  br i1 %37, label %38, label %40, !dbg !3827

38:                                               ; preds = %35
  %39 = add i32 %.3, 1, !dbg !3831
  call void @llvm.dbg.value(metadata i32 %39, metadata !3786, metadata !DIExpression()), !dbg !3797
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.3, i32 %3), !dbg !3833
  br label %35, !dbg !3827, !llvm.loop !3834

40:                                               ; preds = %35
  %.3.lcssa = phi i32 [ %.3, %35 ]
  call void @llvm.dbg.value(metadata i32 %.3.lcssa, metadata !3786, metadata !DIExpression()), !dbg !3797
  br label %41, !dbg !3836

41:                                               ; preds = %40, %._crit_edge4
  %.4 = phi i32 [ %.3.lcssa, %40 ], [ %.2.lcssa, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3786, metadata !DIExpression()), !dbg !3797
  ret i32 %.4, !dbg !3837
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3838 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3842, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i8* %1, metadata !3843, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %2, metadata !3844, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %3, metadata !3845, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i8* %4, metadata !3846, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %5, metadata !3847, metadata !DIExpression()), !dbg !3853
  %12 = zext i1 %6 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3848, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %7, metadata !3849, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %8, metadata !3850, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %9, metadata !3851, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %10, metadata !3852, metadata !DIExpression()), !dbg !3853
  %13 = and i32 %10, 2, !dbg !3854
  %14 = icmp ne i32 %13, 0, !dbg !3854
  br i1 %14, label %._crit_edge, label %15, !dbg !3856

._crit_edge:                                      ; preds = %11
  br label %51, !dbg !3856

15:                                               ; preds = %11
  %16 = icmp ne i32 %9, 0, !dbg !3857
  br i1 %16, label %17, label %._crit_edge4, !dbg !3860

._crit_edge4:                                     ; preds = %15
  br label %27, !dbg !3860

17:                                               ; preds = %15
  %18 = and i32 %10, 1, !dbg !3861
  %19 = icmp ne i32 %18, 0, !dbg !3861
  br i1 %19, label %20, label %._crit_edge5, !dbg !3862

._crit_edge5:                                     ; preds = %17
  br label %27, !dbg !3862

20:                                               ; preds = %17
  %21 = trunc i8 %12 to i1, !dbg !3863
  br i1 %21, label %._crit_edge6, label %22, !dbg !3864

._crit_edge6:                                     ; preds = %20
  br label %25, !dbg !3864

22:                                               ; preds = %20
  %23 = and i32 %10, 12, !dbg !3865
  %24 = icmp ne i32 %23, 0, !dbg !3865
  br i1 %24, label %._crit_edge7, label %._crit_edge8, !dbg !3866

._crit_edge8:                                     ; preds = %22
  br label %27, !dbg !3866

._crit_edge7:                                     ; preds = %22
  br label %25, !dbg !3866

25:                                               ; preds = %._crit_edge7, %._crit_edge6
  %26 = add i32 %9, -1, !dbg !3867
  call void @llvm.dbg.value(metadata i32 %26, metadata !3851, metadata !DIExpression()), !dbg !3853
  br label %27, !dbg !3869

27:                                               ; preds = %25, %._crit_edge8, %._crit_edge5, %._crit_edge4
  %.0 = phi i32 [ %26, %25 ], [ %9, %._crit_edge8 ], [ %9, %._crit_edge5 ], [ %9, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3851, metadata !DIExpression()), !dbg !3853
  br label %28, !dbg !3870

28:                                               ; preds = %34, %27
  %.01 = phi i32 [ %5, %27 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3847, metadata !DIExpression()), !dbg !3853
  %29 = icmp ult i32 %.01, %8, !dbg !3871
  br i1 %29, label %30, label %._crit_edge9, !dbg !3872

._crit_edge9:                                     ; preds = %28
  br label %32, !dbg !3872

30:                                               ; preds = %28
  %31 = icmp ult i32 %.01, 32, !dbg !3873
  br label %32

32:                                               ; preds = %30, %._crit_edge9
  %33 = phi i1 [ false, %._crit_edge9 ], [ %31, %30 ], !dbg !3874
  br i1 %33, label %34, label %37, !dbg !3870

34:                                               ; preds = %32
  %35 = add i32 %.01, 1, !dbg !3875
  call void @llvm.dbg.value(metadata i32 %35, metadata !3847, metadata !DIExpression()), !dbg !3853
  %36 = getelementptr inbounds i8, i8* %4, i32 %.01, !dbg !3877
  store i8 48, i8* %36, align 1, !dbg !3878, !tbaa !2143
  br label %28, !dbg !3870, !llvm.loop !3879

37:                                               ; preds = %32
  %.01.lcssa = phi i32 [ %.01, %32 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %38, !dbg !3881

38:                                               ; preds = %47, %37
  %.12 = phi i32 [ %.01.lcssa, %37 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3847, metadata !DIExpression()), !dbg !3853
  %39 = and i32 %10, 1, !dbg !3882
  %40 = icmp ne i32 %39, 0, !dbg !3882
  br i1 %40, label %41, label %._crit_edge10, !dbg !3883

._crit_edge10:                                    ; preds = %38
  br label %45, !dbg !3883

41:                                               ; preds = %38
  %42 = icmp ult i32 %.12, %.0, !dbg !3884
  br i1 %42, label %43, label %._crit_edge11, !dbg !3885

._crit_edge11:                                    ; preds = %41
  br label %45, !dbg !3885

43:                                               ; preds = %41
  %44 = icmp ult i32 %.12, 32, !dbg !3886
  br label %45

45:                                               ; preds = %43, %._crit_edge11, %._crit_edge10
  %46 = phi i1 [ false, %._crit_edge11 ], [ false, %._crit_edge10 ], [ %44, %43 ], !dbg !3874
  br i1 %46, label %47, label %50, !dbg !3881

47:                                               ; preds = %45
  %48 = add i32 %.12, 1, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %48, metadata !3847, metadata !DIExpression()), !dbg !3853
  %49 = getelementptr inbounds i8, i8* %4, i32 %.12, !dbg !3889
  store i8 48, i8* %49, align 1, !dbg !3890, !tbaa !2143
  br label %38, !dbg !3881, !llvm.loop !3891

50:                                               ; preds = %45
  %.12.lcssa = phi i32 [ %.12, %45 ]
  call void @llvm.dbg.value(metadata i32 %.12.lcssa, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %51, !dbg !3893

51:                                               ; preds = %50, %._crit_edge
  %.2 = phi i32 [ %5, %._crit_edge ], [ %.12.lcssa, %50 ]
  %.1 = phi i32 [ %9, %._crit_edge ], [ %.0, %50 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3851, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3847, metadata !DIExpression()), !dbg !3853
  %52 = and i32 %10, 16, !dbg !3894
  %53 = icmp ne i32 %52, 0, !dbg !3894
  br i1 %53, label %54, label %._crit_edge12, !dbg !3896

._crit_edge12:                                    ; preds = %51
  br label %106, !dbg !3896

54:                                               ; preds = %51
  %55 = and i32 %10, 1024, !dbg !3897
  %56 = icmp ne i32 %55, 0, !dbg !3897
  br i1 %56, label %._crit_edge13, label %57, !dbg !3900

._crit_edge13:                                    ; preds = %54
  br label %71, !dbg !3900

57:                                               ; preds = %54
  %58 = icmp ne i32 %.2, 0, !dbg !3901
  br i1 %58, label %59, label %._crit_edge14, !dbg !3902

._crit_edge14:                                    ; preds = %57
  br label %71, !dbg !3902

59:                                               ; preds = %57
  %60 = icmp eq i32 %.2, %8, !dbg !3903
  br i1 %60, label %._crit_edge15, label %61, !dbg !3904

._crit_edge15:                                    ; preds = %59
  br label %63, !dbg !3904

61:                                               ; preds = %59
  %62 = icmp eq i32 %.2, %.1, !dbg !3905
  br i1 %62, label %._crit_edge16, label %._crit_edge17, !dbg !3906

._crit_edge17:                                    ; preds = %61
  br label %71, !dbg !3906

._crit_edge16:                                    ; preds = %61
  br label %63, !dbg !3906

63:                                               ; preds = %._crit_edge16, %._crit_edge15
  %64 = add i32 %.2, -1, !dbg !3907
  call void @llvm.dbg.value(metadata i32 %64, metadata !3847, metadata !DIExpression()), !dbg !3853
  %65 = icmp ne i32 %64, 0, !dbg !3909
  br i1 %65, label %66, label %._crit_edge18, !dbg !3911

._crit_edge18:                                    ; preds = %63
  br label %70, !dbg !3911

66:                                               ; preds = %63
  %67 = icmp eq i32 %7, 16, !dbg !3912
  br i1 %67, label %68, label %._crit_edge19, !dbg !3913

._crit_edge19:                                    ; preds = %66
  br label %70, !dbg !3913

68:                                               ; preds = %66
  %69 = add i32 %64, -1, !dbg !3914
  call void @llvm.dbg.value(metadata i32 %69, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %70, !dbg !3916

70:                                               ; preds = %68, %._crit_edge19, %._crit_edge18
  %.3 = phi i32 [ %69, %68 ], [ %64, %._crit_edge19 ], [ %64, %._crit_edge18 ], !dbg !3917
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %71, !dbg !3918

71:                                               ; preds = %70, %._crit_edge17, %._crit_edge14, %._crit_edge13
  %.4 = phi i32 [ %.2, %._crit_edge13 ], [ %.3, %70 ], [ %.2, %._crit_edge17 ], [ %.2, %._crit_edge14 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3847, metadata !DIExpression()), !dbg !3853
  %72 = icmp eq i32 %7, 16, !dbg !3919
  br i1 %72, label %73, label %._crit_edge20, !dbg !3921

._crit_edge20:                                    ; preds = %71
  br label %81, !dbg !3921

73:                                               ; preds = %71
  %74 = and i32 %10, 32, !dbg !3922
  %75 = icmp ne i32 %74, 0, !dbg !3922
  br i1 %75, label %._crit_edge21, label %76, !dbg !3923

._crit_edge21:                                    ; preds = %73
  br label %81, !dbg !3923

76:                                               ; preds = %73
  %77 = icmp ult i32 %.4, 32, !dbg !3924
  br i1 %77, label %78, label %._crit_edge22, !dbg !3925

._crit_edge22:                                    ; preds = %76
  br label %81, !dbg !3925

78:                                               ; preds = %76
  %79 = add i32 %.4, 1, !dbg !3926
  call void @llvm.dbg.value(metadata i32 %79, metadata !3847, metadata !DIExpression()), !dbg !3853
  %80 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3928
  store i8 120, i8* %80, align 1, !dbg !3929, !tbaa !2143
  br label %100, !dbg !3930

81:                                               ; preds = %._crit_edge22, %._crit_edge21, %._crit_edge20
  %82 = icmp eq i32 %7, 16, !dbg !3931
  br i1 %82, label %83, label %._crit_edge23, !dbg !3933

._crit_edge23:                                    ; preds = %81
  br label %91, !dbg !3933

83:                                               ; preds = %81
  %84 = and i32 %10, 32, !dbg !3934
  %85 = icmp ne i32 %84, 0, !dbg !3934
  br i1 %85, label %86, label %._crit_edge24, !dbg !3935

._crit_edge24:                                    ; preds = %83
  br label %91, !dbg !3935

86:                                               ; preds = %83
  %87 = icmp ult i32 %.4, 32, !dbg !3936
  br i1 %87, label %88, label %._crit_edge25, !dbg !3937

._crit_edge25:                                    ; preds = %86
  br label %91, !dbg !3937

88:                                               ; preds = %86
  %89 = add i32 %.4, 1, !dbg !3938
  call void @llvm.dbg.value(metadata i32 %89, metadata !3847, metadata !DIExpression()), !dbg !3853
  %90 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3940
  store i8 88, i8* %90, align 1, !dbg !3941, !tbaa !2143
  br label %99, !dbg !3942

91:                                               ; preds = %._crit_edge25, %._crit_edge24, %._crit_edge23
  %92 = icmp eq i32 %7, 2, !dbg !3943
  br i1 %92, label %93, label %._crit_edge26, !dbg !3945

._crit_edge26:                                    ; preds = %91
  br label %98, !dbg !3945

93:                                               ; preds = %91
  %94 = icmp ult i32 %.4, 32, !dbg !3946
  br i1 %94, label %95, label %._crit_edge27, !dbg !3947

._crit_edge27:                                    ; preds = %93
  br label %98, !dbg !3947

95:                                               ; preds = %93
  %96 = add i32 %.4, 1, !dbg !3948
  call void @llvm.dbg.value(metadata i32 %96, metadata !3847, metadata !DIExpression()), !dbg !3853
  %97 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3950
  store i8 98, i8* %97, align 1, !dbg !3951, !tbaa !2143
  br label %98, !dbg !3952

98:                                               ; preds = %95, %._crit_edge27, %._crit_edge26
  %.5 = phi i32 [ %96, %95 ], [ %.4, %._crit_edge27 ], [ %.4, %._crit_edge26 ]
  call void @llvm.dbg.value(metadata i32 %.5, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %99

99:                                               ; preds = %98, %88
  %.6 = phi i32 [ %89, %88 ], [ %.5, %98 ], !dbg !3953
  call void @llvm.dbg.value(metadata i32 %.6, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %100

100:                                              ; preds = %99, %78
  %.7 = phi i32 [ %.6, %99 ], [ %79, %78 ], !dbg !3954
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3847, metadata !DIExpression()), !dbg !3853
  %101 = icmp ult i32 %.7, 32, !dbg !3955
  br i1 %101, label %102, label %._crit_edge28, !dbg !3957

._crit_edge28:                                    ; preds = %100
  br label %105, !dbg !3957

102:                                              ; preds = %100
  %103 = add i32 %.7, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i32 %103, metadata !3847, metadata !DIExpression()), !dbg !3853
  %104 = getelementptr inbounds i8, i8* %4, i32 %.7, !dbg !3960
  store i8 48, i8* %104, align 1, !dbg !3961, !tbaa !2143
  br label %105, !dbg !3962

105:                                              ; preds = %102, %._crit_edge28
  %.8 = phi i32 [ %103, %102 ], [ %.7, %._crit_edge28 ], !dbg !3963
  call void @llvm.dbg.value(metadata i32 %.8, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %106, !dbg !3964

106:                                              ; preds = %105, %._crit_edge12
  %.9 = phi i32 [ %.8, %105 ], [ %.2, %._crit_edge12 ]
  call void @llvm.dbg.value(metadata i32 %.9, metadata !3847, metadata !DIExpression()), !dbg !3853
  %107 = icmp ult i32 %.9, 32, !dbg !3965
  br i1 %107, label %108, label %._crit_edge29, !dbg !3967

._crit_edge29:                                    ; preds = %106
  br label %128, !dbg !3967

108:                                              ; preds = %106
  %109 = trunc i8 %12 to i1, !dbg !3968
  br i1 %109, label %110, label %113, !dbg !3971

110:                                              ; preds = %108
  %111 = add i32 %.9, 1, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %111, metadata !3847, metadata !DIExpression()), !dbg !3853
  %112 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3974
  store i8 45, i8* %112, align 1, !dbg !3975, !tbaa !2143
  br label %127, !dbg !3976

113:                                              ; preds = %108
  %114 = and i32 %10, 4, !dbg !3977
  %115 = icmp ne i32 %114, 0, !dbg !3977
  br i1 %115, label %116, label %119, !dbg !3979

116:                                              ; preds = %113
  %117 = add i32 %.9, 1, !dbg !3980
  call void @llvm.dbg.value(metadata i32 %117, metadata !3847, metadata !DIExpression()), !dbg !3853
  %118 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3982
  store i8 43, i8* %118, align 1, !dbg !3983, !tbaa !2143
  br label %126, !dbg !3984

119:                                              ; preds = %113
  %120 = and i32 %10, 8, !dbg !3985
  %121 = icmp ne i32 %120, 0, !dbg !3985
  br i1 %121, label %122, label %._crit_edge30, !dbg !3987

._crit_edge30:                                    ; preds = %119
  br label %125, !dbg !3987

122:                                              ; preds = %119
  %123 = add i32 %.9, 1, !dbg !3988
  call void @llvm.dbg.value(metadata i32 %123, metadata !3847, metadata !DIExpression()), !dbg !3853
  %124 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3990
  store i8 32, i8* %124, align 1, !dbg !3991, !tbaa !2143
  br label %125, !dbg !3992

125:                                              ; preds = %122, %._crit_edge30
  %.10 = phi i32 [ %123, %122 ], [ %.9, %._crit_edge30 ], !dbg !3853
  call void @llvm.dbg.value(metadata i32 %.10, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %126

126:                                              ; preds = %125, %116
  %.11 = phi i32 [ %117, %116 ], [ %.10, %125 ], !dbg !3993
  call void @llvm.dbg.value(metadata i32 %.11, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %127

127:                                              ; preds = %126, %110
  %.123 = phi i32 [ %111, %110 ], [ %.11, %126 ], !dbg !3994
  call void @llvm.dbg.value(metadata i32 %.123, metadata !3847, metadata !DIExpression()), !dbg !3853
  br label %128, !dbg !3995

128:                                              ; preds = %127, %._crit_edge29
  %.13 = phi i32 [ %.123, %127 ], [ %.9, %._crit_edge29 ], !dbg !3853
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3847, metadata !DIExpression()), !dbg !3853
  %129 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %.13, i32 %.1, i32 %10), !dbg !3996
  ret i32 %129, !dbg !3997
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @sprintf_(i8*, i8*, ...) #0 !dbg !3998 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i8* %1, metadata !4003, metadata !DIExpression()), !dbg !4006
  %4 = bitcast %struct.__va_list* %3 to i8*, !dbg !4007
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !4007
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4004, metadata !DIExpression()), !dbg !4008
  %5 = bitcast %struct.__va_list* %3 to i8*, !dbg !4009
  call void @llvm.va_start(i8* %5), !dbg !4009
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4010
  %7 = bitcast i8** %6 to [1 x i32]*, !dbg !4010
  %8 = load [1 x i32], [1 x i32]* %7, align 4, !dbg !4010
  %9 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 -1, i8* %1, [1 x i32] %8), !dbg !4010
  call void @llvm.dbg.value(metadata i32 %9, metadata !4005, metadata !DIExpression()), !dbg !4006
  %10 = bitcast %struct.__va_list* %3 to i8*, !dbg !4011
  call void @llvm.va_end(i8* %10), !dbg !4011
  %11 = bitcast %struct.__va_list* %3 to i8*, !dbg !4012
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !4012
  ret i32 %9, !dbg !4013
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_buffer(i8 zeroext, i8*, i32, i32) #5 !dbg !4014 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4016, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i8* %1, metadata !4017, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i32 %2, metadata !4018, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i32 %3, metadata !4019, metadata !DIExpression()), !dbg !4020
  %5 = icmp ult i32 %2, %3, !dbg !4021
  br i1 %5, label %6, label %._crit_edge, !dbg !4023

._crit_edge:                                      ; preds = %4
  br label %8, !dbg !4023

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %1, i32 %2, !dbg !4024
  store i8 %0, i8* %7, align 1, !dbg !4026, !tbaa !2143
  br label %8, !dbg !4027

8:                                                ; preds = %6, %._crit_edge
  ret void, !dbg !4028
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @snprintf_(i8*, i32, i8*, ...) #0 !dbg !4029 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4033, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i32 %1, metadata !4034, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i8* %2, metadata !4035, metadata !DIExpression()), !dbg !4038
  %5 = bitcast %struct.__va_list* %4 to i8*, !dbg !4039
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !4039
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4036, metadata !DIExpression()), !dbg !4040
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4041
  call void @llvm.va_start(i8* %6), !dbg !4041
  %7 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4042
  %8 = bitcast i8** %7 to [1 x i32]*, !dbg !4042
  %9 = load [1 x i32], [1 x i32]* %8, align 4, !dbg !4042
  %10 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %9), !dbg !4042
  call void @llvm.dbg.value(metadata i32 %10, metadata !4037, metadata !DIExpression()), !dbg !4038
  %11 = bitcast %struct.__va_list* %4 to i8*, !dbg !4043
  call void @llvm.va_end(i8* %11), !dbg !4043
  %12 = bitcast %struct.__va_list* %4 to i8*, !dbg !4044
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !4044
  ret i32 %10, !dbg !4045
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vprintf_(i8*, [1 x i32]) #0 !dbg !4046 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %6 = bitcast i8** %5 to [1 x i32]*
  store [1 x i32] %1, [1 x i32]* %6, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4051, metadata !DIExpression()), !dbg !4054
  %7 = bitcast [1 x i8]* %4 to i8*, !dbg !4055
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #4, !dbg !4055
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !4052, metadata !DIExpression()), !dbg !4056
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !4057
  %9 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4058
  %10 = bitcast i8** %9 to [1 x i32]*, !dbg !4058
  %11 = load [1 x i32], [1 x i32]* %10, align 4, !dbg !4058
  %12 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %8, i32 -1, i8* %0, [1 x i32] %11), !dbg !4058
  %13 = bitcast [1 x i8]* %4 to i8*, !dbg !4059
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4, !dbg !4059
  ret i32 %12, !dbg !4060
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vsnprintf_(i8*, i32, i8*, [1 x i32]) #0 !dbg !4061 {
  %5 = alloca %struct.__va_list, align 4
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0
  %7 = bitcast i8** %6 to [1 x i32]*
  store [1 x i32] %3, [1 x i32]* %7, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4065, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i32 %1, metadata !4066, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i8* %2, metadata !4067, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.declare(metadata %struct.__va_list* %5, metadata !4068, metadata !DIExpression()), !dbg !4070
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0, !dbg !4071
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !4071
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !4071
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %10), !dbg !4071
  ret i32 %11, !dbg !4072
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @fctprintf(void (i8, i8*)*, i8*, i8*, ...) #0 !dbg !4073 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.out_fct_wrap_type, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*)* %0, metadata !4077, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i8* %1, metadata !4078, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i8* %2, metadata !4079, metadata !DIExpression()), !dbg !4084
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4085
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !4085
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4080, metadata !DIExpression()), !dbg !4086
  %7 = bitcast %struct.__va_list* %4 to i8*, !dbg !4087
  call void @llvm.va_start(i8* %7), !dbg !4087
  %8 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4088
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !4088
  call void @llvm.dbg.declare(metadata %struct.out_fct_wrap_type* %5, metadata !4081, metadata !DIExpression()), !dbg !4089
  %9 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 0, !dbg !4090
  store void (i8, i8*)* %0, void (i8, i8*)** %9, align 4, !dbg !4090, !tbaa !4091
  %10 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 1, !dbg !4090
  store i8* %1, i8** %10, align 4, !dbg !4090, !tbaa !4093
  %11 = ptrtoint %struct.out_fct_wrap_type* %5 to i32, !dbg !4094
  %12 = inttoptr i32 %11 to i8*, !dbg !4095
  %13 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4096
  %14 = bitcast i8** %13 to [1 x i32]*, !dbg !4096
  %15 = load [1 x i32], [1 x i32]* %14, align 4, !dbg !4096
  %16 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_fct, i8* %12, i32 -1, i8* %2, [1 x i32] %15), !dbg !4096
  call void @llvm.dbg.value(metadata i32 %16, metadata !4083, metadata !DIExpression()), !dbg !4084
  %17 = bitcast %struct.__va_list* %4 to i8*, !dbg !4097
  call void @llvm.va_end(i8* %17), !dbg !4097
  %18 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4098
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #4, !dbg !4098
  %19 = bitcast %struct.__va_list* %4 to i8*, !dbg !4098
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !4098
  ret i32 %16, !dbg !4099
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_fct(i8 zeroext, i8*, i32, i32) #5 !dbg !4100 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4102, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8* %1, metadata !4103, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 %2, metadata !4104, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 %3, metadata !4105, metadata !DIExpression()), !dbg !4106
  %5 = icmp ne i8 %0, 0, !dbg !4107
  br i1 %5, label %6, label %._crit_edge, !dbg !4109

._crit_edge:                                      ; preds = %4
  br label %13, !dbg !4109

6:                                                ; preds = %4
  %7 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4110
  %8 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %7, i32 0, i32 0, !dbg !4112
  %9 = load void (i8, i8*)*, void (i8, i8*)** %8, align 4, !dbg !4112, !tbaa !4091
  %10 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4113
  %11 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %10, i32 0, i32 1, !dbg !4114
  %12 = load i8*, i8** %11, align 4, !dbg !4114, !tbaa !4093
  call arm_aapcscc void %9(i8 zeroext %0, i8* %12), !dbg !4115
  br label %13, !dbg !4116

13:                                               ; preds = %6, %._crit_edge
  ret void, !dbg !4117
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @putc(i32, i8*) #3 !dbg !4118 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4123, metadata !DIExpression()), !dbg !4125
  store i8* %1, i8** %4, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4124, metadata !DIExpression()), !dbg !4126
  %5 = load i8*, i8** %4, align 4, !dbg !4127, !tbaa !334
  %6 = load i32, i32* %3, align 4, !dbg !4128, !tbaa !1045
  ret i32 %6, !dbg !4129
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_putchar(i8 zeroext) #3 !dbg !4130 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !2143
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4134, metadata !DIExpression()), !dbg !4135
  %3 = load i8, i8* %2, align 1, !dbg !4136, !tbaa !2143
  %4 = zext i8 %3 to i32, !dbg !4136
  %5 = call arm_aapcscc i32 @putc(i32 %4, i8* %2), !dbg !4137
  ret void, !dbg !4138
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #6 !dbg !4139 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #4, !dbg !4140, !srcloc !4141
  call void asm sideeffect "    ldr    sp, [r1]", ""() #4, !dbg !4142, !srcloc !4143
  call void asm sideeffect "bl __checkpoint_startup_restore", ""() #4, !dbg !4144, !srcloc !4145
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #4, !dbg !4146, !srcloc !4147
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #4, !dbg !4148, !srcloc !4149
  call void asm sideeffect "bl __checkpoint_startup_checkpoint", ""() #4, !dbg !4150, !srcloc !4151
  call void asm sideeffect "    bl   main\0A", ""() #4, !dbg !4152, !srcloc !4153
  call void asm sideeffect "    bkpt     ", ""() #4, !dbg !4154, !srcloc !4155
  unreachable, !dbg !4156
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @NMI_Handler() #0 !dbg !4157 {
  br label %1, !dbg !4158

1:                                                ; preds = %1, %0
  br label %1, !dbg !4158, !llvm.loop !4159
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @HardFault_Handler() #0 !dbg !4161 {
  br label %1, !dbg !4162

1:                                                ; preds = %1, %0
  br label %1, !dbg !4162, !llvm.loop !4163
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 !dbg !4165 {
  br label %1, !dbg !4166

1:                                                ; preds = %1, %0
  br label %1, !dbg !4166, !llvm.loop !4167
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @__checkpoint_startup_checkpoint() #0 !dbg !4169 {
  ret void, !dbg !4170
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @__checkpoint_startup_restore() #0 !dbg !4171 {
  ret void, !dbg !4172
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
!652 = !{!"loop_write_scheduler"}
!653 = !DILocation(line: 470, column: 28, scope: !654)
!654 = distinct !DILexicalBlock(scope: !643, file: !242, line: 469, column: 5)
!655 = !DILocation(line: 471, column: 15, scope: !654)
!656 = !DILocation(line: 471, column: 20, scope: !654)
!657 = !DILocation(line: 475, column: 5, scope: !643)
!658 = distinct !DISubprogram(name: "core_list_mergesort", scope: !242, file: !242, line: 500, type: !659, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !663)
!659 = !DISubroutineType(types: !660)
!660 = !{!465, !465, !661, !246}
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_cmp", file: !242, line: 64, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!664 = !DILocalVariable(name: "list", arg: 1, scope: !658, file: !242, line: 500, type: !465)
!665 = !DILocalVariable(name: "cmp", arg: 2, scope: !658, file: !242, line: 500, type: !661)
!666 = !DILocalVariable(name: "res", arg: 3, scope: !658, file: !242, line: 500, type: !246)
!667 = !DILocalVariable(name: "p", scope: !658, file: !242, line: 502, type: !465)
!668 = !DILocalVariable(name: "q", scope: !658, file: !242, line: 502, type: !465)
!669 = !DILocalVariable(name: "e", scope: !658, file: !242, line: 502, type: !465)
!670 = !DILocalVariable(name: "tail", scope: !658, file: !242, line: 502, type: !465)
!671 = !DILocalVariable(name: "insize", scope: !658, file: !242, line: 503, type: !51)
!672 = !DILocalVariable(name: "nmerges", scope: !658, file: !242, line: 503, type: !51)
!673 = !DILocalVariable(name: "psize", scope: !658, file: !242, line: 503, type: !51)
!674 = !DILocalVariable(name: "qsize", scope: !658, file: !242, line: 503, type: !51)
!675 = !DILocalVariable(name: "i", scope: !658, file: !242, line: 503, type: !51)
!676 = !DILocation(line: 0, scope: !658)
!677 = !DILocation(line: 507, column: 5, scope: !658)
!678 = !DILocation(line: 515, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !658, file: !242, line: 508, column: 5)
!680 = !DILocation(line: 0, scope: !679)
!681 = !DILocation(line: 511, column: 14, scope: !679)
!682 = !DILocation(line: 510, column: 14, scope: !679)
!683 = !DILocation(line: 517, column: 20, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !242, line: 516, column: 9)
!685 = !DILocation(line: 521, column: 18, scope: !686)
!686 = distinct !DILexicalBlock(scope: !684, file: !242, line: 521, column: 13)
!687 = !DILocation(line: 0, scope: !684)
!688 = !DILocation(line: 521, column: 27, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !242, line: 521, column: 13)
!690 = !DILocation(line: 521, column: 13, scope: !686)
!691 = !DILocation(line: 523, column: 22, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !242, line: 522, column: 13)
!693 = !DILocation(line: 524, column: 24, scope: !692)
!694 = !DILocation(line: 525, column: 22, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !242, line: 525, column: 21)
!696 = !DILocation(line: 525, column: 21, scope: !692)
!697 = !DILocation(line: 526, column: 21, scope: !695)
!698 = !DILocation(line: 527, column: 13, scope: !692)
!699 = !DILocation(line: 521, column: 13, scope: !689)
!700 = distinct !{!700, !690, !701}
!701 = !DILocation(line: 527, column: 13, scope: !686)
!702 = !DILocation(line: 533, column: 13, scope: !684)
!703 = !DILocation(line: 509, column: 14, scope: !679)
!704 = !DILocation(line: 533, column: 26, scope: !684)
!705 = !DILocation(line: 533, column: 30, scope: !684)
!706 = !DILocation(line: 533, column: 40, scope: !684)
!707 = !DILocation(line: 533, column: 44, scope: !684)
!708 = !DILocation(line: 537, column: 27, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !242, line: 537, column: 21)
!710 = distinct !DILexicalBlock(scope: !684, file: !242, line: 534, column: 13)
!711 = !DILocation(line: 537, column: 21, scope: !710)
!712 = !DILocation(line: 541, column: 28, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !242, line: 538, column: 17)
!714 = !DILocation(line: 542, column: 26, scope: !713)
!715 = !DILocation(line: 543, column: 17, scope: !713)
!716 = !DILocation(line: 544, column: 32, scope: !717)
!717 = distinct !DILexicalBlock(scope: !709, file: !242, line: 544, column: 26)
!718 = !DILocation(line: 544, column: 37, scope: !717)
!719 = !DILocation(line: 544, column: 41, scope: !717)
!720 = !DILocation(line: 544, column: 26, scope: !709)
!721 = !DILocation(line: 548, column: 28, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !242, line: 545, column: 17)
!723 = !DILocation(line: 549, column: 26, scope: !722)
!724 = !DILocation(line: 550, column: 17, scope: !722)
!725 = !DILocation(line: 551, column: 33, scope: !726)
!726 = distinct !DILexicalBlock(scope: !717, file: !242, line: 551, column: 26)
!727 = !DILocation(line: 551, column: 42, scope: !726)
!728 = !DILocation(line: 551, column: 26, scope: !726)
!729 = !DILocation(line: 551, column: 53, scope: !726)
!730 = !DILocation(line: 551, column: 26, scope: !717)
!731 = !DILocation(line: 556, column: 28, scope: !732)
!732 = distinct !DILexicalBlock(scope: !726, file: !242, line: 552, column: 17)
!733 = !DILocation(line: 557, column: 26, scope: !732)
!734 = !DILocation(line: 558, column: 17, scope: !732)
!735 = !DILocation(line: 563, column: 28, scope: !736)
!736 = distinct !DILexicalBlock(scope: !726, file: !242, line: 560, column: 17)
!737 = !DILocation(line: 564, column: 26, scope: !736)
!738 = !DILocation(line: 0, scope: !726)
!739 = !DILocation(line: 0, scope: !717)
!740 = !DILocation(line: 524, column: 19, scope: !692)
!741 = !DILocation(line: 530, column: 19, scope: !684)
!742 = !DILocation(line: 0, scope: !709)
!743 = !DILocation(line: 568, column: 21, scope: !744)
!744 = distinct !DILexicalBlock(scope: !710, file: !242, line: 568, column: 21)
!745 = !DILocation(line: 568, column: 21, scope: !710)
!746 = !DILocation(line: 570, column: 27, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !242, line: 569, column: 17)
!748 = !DILocation(line: 570, column: 32, scope: !747)
!749 = !DILocation(line: 571, column: 17, scope: !747)
!750 = distinct !{!750, !702, !751}
!751 = !DILocation(line: 577, column: 13, scope: !684)
!752 = distinct !{!752, !678, !753}
!753 = !DILocation(line: 581, column: 9, scope: !679)
!754 = !DILocation(line: 583, column: 15, scope: !679)
!755 = !DILocation(line: 583, column: 20, scope: !679)
!756 = !DILocation(line: 586, column: 21, scope: !757)
!757 = distinct !DILexicalBlock(scope: !679, file: !242, line: 586, column: 13)
!758 = !DILocation(line: 586, column: 13, scope: !679)
!759 = !DILocation(line: 587, column: 13, scope: !757)
!760 = !DILocation(line: 590, column: 16, scope: !679)
!761 = distinct !{!761, !677, !762}
!762 = !DILocation(line: 591, column: 5, scope: !658)
!763 = distinct !DISubprogram(name: "core_list_remove", scope: !242, file: !242, line: 377, type: !644, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !764)
!764 = !{!765, !766, !767}
!765 = !DILocalVariable(name: "item", arg: 1, scope: !763, file: !242, line: 377, type: !465)
!766 = !DILocalVariable(name: "tmp", scope: !763, file: !242, line: 379, type: !221)
!767 = !DILocalVariable(name: "ret", scope: !763, file: !242, line: 380, type: !465)
!768 = !DILocation(line: 0, scope: !763)
!769 = !DILocation(line: 380, column: 28, scope: !763)
!770 = !DILocation(line: 382, column: 24, scope: !763)
!771 = !DILocation(line: 383, column: 23, scope: !763)
!772 = !DILocation(line: 383, column: 11, scope: !763)
!773 = !DILocation(line: 383, column: 16, scope: !763)
!774 = !DILocation(line: 384, column: 10, scope: !763)
!775 = !DILocation(line: 384, column: 16, scope: !763)
!776 = !DILocation(line: 386, column: 24, scope: !763)
!777 = !DILocation(line: 386, column: 30, scope: !763)
!778 = !DILocation(line: 386, column: 11, scope: !763)
!779 = !DILocation(line: 386, column: 16, scope: !763)
!780 = !DILocation(line: 387, column: 10, scope: !763)
!781 = !DILocation(line: 387, column: 16, scope: !763)
!782 = !DILocation(line: 388, column: 5, scope: !763)
!783 = distinct !DISubprogram(name: "core_list_undo_remove", scope: !242, file: !242, line: 408, type: !784, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!465, !465, !465}
!786 = !{!787, !788, !789}
!787 = !DILocalVariable(name: "item_removed", arg: 1, scope: !783, file: !242, line: 408, type: !465)
!788 = !DILocalVariable(name: "item_modified", arg: 2, scope: !783, file: !242, line: 408, type: !465)
!789 = !DILocalVariable(name: "tmp", scope: !783, file: !242, line: 410, type: !221)
!790 = !DILocation(line: 0, scope: !783)
!791 = !DILocation(line: 412, column: 41, scope: !783)
!792 = !DILocation(line: 413, column: 42, scope: !783)
!793 = !DILocation(line: 413, column: 19, scope: !783)
!794 = !DILocation(line: 413, column: 25, scope: !783)
!795 = !DILocation(line: 414, column: 20, scope: !783)
!796 = !DILocation(line: 414, column: 25, scope: !783)
!797 = !DILocation(line: 416, column: 42, scope: !783)
!798 = !DILocation(line: 416, column: 19, scope: !783)
!799 = !DILocation(line: 416, column: 25, scope: !783)
!800 = !DILocation(line: 417, column: 20, scope: !783)
!801 = !DILocation(line: 417, column: 25, scope: !783)
!802 = !DILocation(line: 418, column: 5, scope: !783)
!803 = distinct !DISubprogram(name: "core_list_init", scope: !242, file: !242, line: 251, type: !804, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{!465, !23, !465, !12}
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !823, !824}
!807 = !DILocalVariable(name: "blksize", arg: 1, scope: !803, file: !242, line: 251, type: !23)
!808 = !DILocalVariable(name: "memblock", arg: 2, scope: !803, file: !242, line: 251, type: !465)
!809 = !DILocalVariable(name: "seed", arg: 3, scope: !803, file: !242, line: 251, type: !12)
!810 = !DILocalVariable(name: "per_item", scope: !803, file: !242, line: 254, type: !23)
!811 = !DILocalVariable(name: "size", scope: !803, file: !242, line: 255, type: !23)
!812 = !DILocalVariable(name: "memblock_end", scope: !803, file: !242, line: 258, type: !465)
!813 = !DILocalVariable(name: "datablock", scope: !803, file: !242, line: 259, type: !221)
!814 = !DILocalVariable(name: "datablock_end", scope: !803, file: !242, line: 260, type: !221)
!815 = !DILocalVariable(name: "i", scope: !803, file: !242, line: 262, type: !23)
!816 = !DILocalVariable(name: "finder", scope: !803, file: !242, line: 263, type: !465)
!817 = !DILocalVariable(name: "list", scope: !803, file: !242, line: 263, type: !465)
!818 = !DILocalVariable(name: "info", scope: !803, file: !242, line: 264, type: !222)
!819 = !DILocalVariable(name: "datpat", scope: !820, file: !242, line: 281, type: !53)
!820 = distinct !DILexicalBlock(scope: !821, file: !242, line: 280, column: 5)
!821 = distinct !DILexicalBlock(scope: !822, file: !242, line: 279, column: 5)
!822 = distinct !DILexicalBlock(scope: !803, file: !242, line: 279, column: 5)
!823 = !DILocalVariable(name: "dat", scope: !820, file: !242, line: 282, type: !53)
!824 = !DILocalVariable(name: "pat", scope: !825, file: !242, line: 298, type: !53)
!825 = distinct !DILexicalBlock(scope: !826, file: !242, line: 297, column: 9)
!826 = distinct !DILexicalBlock(scope: !827, file: !242, line: 294, column: 13)
!827 = distinct !DILexicalBlock(scope: !803, file: !242, line: 293, column: 5)
!828 = !DILocation(line: 0, scope: !803)
!829 = !DILocation(line: 251, column: 43, scope: !803)
!830 = !DILocation(line: 255, column: 32, scope: !803)
!831 = !DILocation(line: 256, column: 19, scope: !803)
!832 = !DILocation(line: 258, column: 32, scope: !803)
!833 = !DILocation(line: 258, column: 41, scope: !803)
!834 = !DILocation(line: 259, column: 5, scope: !803)
!835 = !DILocation(line: 259, column: 16, scope: !803)
!836 = !DILocation(line: 259, column: 32, scope: !803)
!837 = !DILocation(line: 260, column: 32, scope: !803)
!838 = !DILocation(line: 260, column: 42, scope: !803)
!839 = !DILocation(line: 263, column: 32, scope: !803)
!840 = !DILocation(line: 264, column: 5, scope: !803)
!841 = !DILocation(line: 264, column: 16, scope: !803)
!842 = !DILocation(line: 267, column: 11, scope: !803)
!843 = !DILocation(line: 267, column: 24, scope: !803)
!844 = !DILocation(line: 268, column: 26, scope: !803)
!845 = !DILocation(line: 268, column: 11, scope: !803)
!846 = !DILocation(line: 268, column: 24, scope: !803)
!847 = !DILocation(line: 269, column: 11, scope: !803)
!848 = !DILocation(line: 269, column: 17, scope: !803)
!849 = !DILocation(line: 269, column: 24, scope: !803)
!850 = !DILocation(line: 270, column: 11, scope: !803)
!851 = !DILocation(line: 270, column: 17, scope: !803)
!852 = !DILocation(line: 270, column: 24, scope: !803)
!853 = !DILocation(line: 271, column: 13, scope: !803)
!854 = !DILocation(line: 272, column: 14, scope: !803)
!855 = !DILocation(line: 273, column: 10, scope: !803)
!856 = !DILocation(line: 273, column: 17, scope: !803)
!857 = !DILocation(line: 274, column: 10, scope: !803)
!858 = !DILocation(line: 274, column: 17, scope: !803)
!859 = !DILocation(line: 275, column: 5, scope: !803)
!860 = !DILocation(line: 279, column: 10, scope: !822)
!861 = !DILocation(line: 0, scope: !822)
!862 = !DILocation(line: 279, column: 19, scope: !821)
!863 = !DILocation(line: 279, column: 5, scope: !822)
!864 = !DILocation(line: 281, column: 35, scope: !820)
!865 = !DILocation(line: 281, column: 40, scope: !820)
!866 = !DILocation(line: 281, column: 26, scope: !820)
!867 = !DILocation(line: 281, column: 45, scope: !820)
!868 = !DILocation(line: 281, column: 25, scope: !820)
!869 = !DILocation(line: 0, scope: !820)
!870 = !DILocation(line: 283, column: 16, scope: !820)
!871 = !DILocation(line: 283, column: 23, scope: !820)
!872 = !DILocation(line: 283, column: 34, scope: !820)
!873 = !DILocation(line: 283, column: 29, scope: !820)
!874 = !DILocation(line: 283, column: 15, scope: !820)
!875 = !DILocation(line: 284, column: 24, scope: !820)
!876 = !DILocation(line: 284, column: 28, scope: !820)
!877 = !DILocation(line: 284, column: 36, scope: !820)
!878 = !DILocation(line: 284, column: 34, scope: !820)
!879 = !DILocation(line: 284, column: 23, scope: !820)
!880 = !DILocation(line: 284, column: 14, scope: !820)
!881 = !DILocation(line: 284, column: 21, scope: !820)
!882 = !DILocation(line: 286, column: 9, scope: !820)
!883 = !DILocation(line: 288, column: 5, scope: !820)
!884 = !DILocation(line: 279, column: 28, scope: !821)
!885 = !DILocation(line: 279, column: 5, scope: !821)
!886 = distinct !{!886, !863, !887}
!887 = !DILocation(line: 288, column: 5, scope: !822)
!888 = !DILocation(line: 290, column: 20, scope: !803)
!889 = !DILocation(line: 292, column: 5, scope: !803)
!890 = !DILocation(line: 292, column: 20, scope: !803)
!891 = !DILocation(line: 292, column: 25, scope: !803)
!892 = !DILocation(line: 294, column: 22, scope: !826)
!893 = !DILocation(line: 294, column: 15, scope: !826)
!894 = !DILocation(line: 294, column: 13, scope: !827)
!895 = !DILocation(line: 295, column: 34, scope: !826)
!896 = !DILocation(line: 295, column: 33, scope: !826)
!897 = !DILocation(line: 295, column: 21, scope: !826)
!898 = !DILocation(line: 295, column: 27, scope: !826)
!899 = !DILocation(line: 295, column: 31, scope: !826)
!900 = !DILocation(line: 295, column: 13, scope: !826)
!901 = !DILocation(line: 298, column: 36, scope: !825)
!902 = !DILocation(line: 298, column: 41, scope: !825)
!903 = !DILocation(line: 298, column: 39, scope: !825)
!904 = !DILocation(line: 298, column: 26, scope: !825)
!905 = !DILocation(line: 0, scope: !825)
!906 = !DILocation(line: 300, column: 40, scope: !825)
!907 = !DILocation(line: 300, column: 48, scope: !825)
!908 = !DILocation(line: 301, column: 38, scope: !825)
!909 = !DILocation(line: 301, column: 36, scope: !825)
!910 = !DILocation(line: 300, column: 33, scope: !825)
!911 = !DILocation(line: 299, column: 33, scope: !825)
!912 = !DILocation(line: 299, column: 21, scope: !825)
!913 = !DILocation(line: 299, column: 27, scope: !825)
!914 = !DILocation(line: 299, column: 31, scope: !825)
!915 = !DILocation(line: 0, scope: !826)
!916 = !DILocation(line: 304, column: 26, scope: !827)
!917 = distinct !{!917, !889, !918}
!918 = !DILocation(line: 305, column: 5, scope: !803)
!919 = !DILocation(line: 306, column: 12, scope: !803)
!920 = !DILocation(line: 319, column: 1, scope: !803)
!921 = !DILocation(line: 318, column: 5, scope: !803)
!922 = distinct !DISubprogram(name: "core_list_insert_new", scope: !242, file: !242, line: 336, type: !923, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !927)
!923 = !DISubroutineType(types: !924)
!924 = !{!465, !465, !221, !925, !926, !465, !221}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!927 = !{!928, !929, !930, !931, !932, !933, !934}
!928 = !DILocalVariable(name: "insert_point", arg: 1, scope: !922, file: !242, line: 336, type: !465)
!929 = !DILocalVariable(name: "info", arg: 2, scope: !922, file: !242, line: 337, type: !221)
!930 = !DILocalVariable(name: "memblock", arg: 3, scope: !922, file: !242, line: 338, type: !925)
!931 = !DILocalVariable(name: "datablock", arg: 4, scope: !922, file: !242, line: 339, type: !926)
!932 = !DILocalVariable(name: "memblock_end", arg: 5, scope: !922, file: !242, line: 340, type: !465)
!933 = !DILocalVariable(name: "datablock_end", arg: 6, scope: !922, file: !242, line: 341, type: !221)
!934 = !DILocalVariable(name: "newitem", scope: !922, file: !242, line: 343, type: !465)
!935 = !DILocation(line: 0, scope: !922)
!936 = !DILocation(line: 345, column: 10, scope: !937)
!937 = distinct !DILexicalBlock(scope: !922, file: !242, line: 345, column: 9)
!938 = !DILocation(line: 345, column: 20, scope: !937)
!939 = !DILocation(line: 345, column: 25, scope: !937)
!940 = !DILocation(line: 345, column: 9, scope: !922)
!941 = !DILocation(line: 346, column: 9, scope: !937)
!942 = !DILocation(line: 347, column: 10, scope: !943)
!943 = distinct !DILexicalBlock(scope: !922, file: !242, line: 347, column: 9)
!944 = !DILocation(line: 347, column: 21, scope: !943)
!945 = !DILocation(line: 347, column: 26, scope: !943)
!946 = !DILocation(line: 347, column: 9, scope: !922)
!947 = !DILocation(line: 348, column: 9, scope: !943)
!948 = !DILocation(line: 350, column: 15, scope: !922)
!949 = !DILocation(line: 351, column: 16, scope: !922)
!950 = !DILocation(line: 352, column: 40, scope: !922)
!951 = !DILocation(line: 352, column: 14, scope: !922)
!952 = !DILocation(line: 352, column: 24, scope: !922)
!953 = !DILocation(line: 353, column: 19, scope: !922)
!954 = !DILocation(line: 353, column: 24, scope: !922)
!955 = !DILocation(line: 355, column: 21, scope: !922)
!956 = !DILocation(line: 355, column: 14, scope: !922)
!957 = !DILocation(line: 355, column: 19, scope: !922)
!958 = !DILocation(line: 356, column: 17, scope: !922)
!959 = !DILocation(line: 357, column: 24, scope: !922)
!960 = !DILocation(line: 357, column: 5, scope: !922)
!961 = !DILocation(line: 359, column: 5, scope: !922)
!962 = !DILocation(line: 360, column: 1, scope: !922)
!963 = distinct !DISubprogram(name: "iterate", scope: !74, file: !74, line: 52, type: !964, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{!19, !19}
!966 = !{!967, !968, !969, !970, !971}
!967 = !DILocalVariable(name: "pres", arg: 1, scope: !963, file: !74, line: 52, type: !19)
!968 = !DILocalVariable(name: "i", scope: !963, file: !74, line: 54, type: !23)
!969 = !DILocalVariable(name: "crc", scope: !963, file: !74, line: 55, type: !53)
!970 = !DILocalVariable(name: "res", scope: !963, file: !74, line: 56, type: !6)
!971 = !DILocalVariable(name: "iterations", scope: !963, file: !74, line: 57, type: !23)
!972 = !DILocation(line: 0, scope: !963)
!973 = !DILocation(line: 56, column: 32, scope: !963)
!974 = !DILocation(line: 57, column: 37, scope: !963)
!975 = !{!327, !328, i64 28}
!976 = !DILocation(line: 58, column: 10, scope: !963)
!977 = !DILocation(line: 58, column: 30, scope: !963)
!978 = !DILocation(line: 59, column: 10, scope: !963)
!979 = !DILocation(line: 59, column: 30, scope: !963)
!980 = !{!327, !295, i64 58}
!981 = !DILocation(line: 60, column: 10, scope: !963)
!982 = !DILocation(line: 60, column: 30, scope: !963)
!983 = !DILocation(line: 61, column: 10, scope: !963)
!984 = !DILocation(line: 61, column: 30, scope: !963)
!985 = !DILocation(line: 63, column: 10, scope: !986)
!986 = distinct !DILexicalBlock(scope: !963, file: !74, line: 63, column: 5)
!987 = !DILocation(line: 0, scope: !986)
!988 = !DILocation(line: 63, column: 19, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !74, line: 63, column: 5)
!990 = !DILocation(line: 63, column: 5, scope: !986)
!991 = !DILocation(line: 65, column: 20, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !74, line: 64, column: 5)
!993 = !DILocation(line: 66, column: 37, scope: !992)
!994 = !DILocation(line: 66, column: 20, scope: !992)
!995 = !DILocation(line: 66, column: 14, scope: !992)
!996 = !DILocation(line: 66, column: 18, scope: !992)
!997 = !DILocation(line: 67, column: 20, scope: !992)
!998 = !DILocation(line: 68, column: 37, scope: !992)
!999 = !DILocation(line: 68, column: 20, scope: !992)
!1000 = !DILocation(line: 68, column: 14, scope: !992)
!1001 = !DILocation(line: 68, column: 18, scope: !992)
!1002 = !DILocation(line: 69, column: 15, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !992, file: !74, line: 69, column: 13)
!1004 = !DILocation(line: 69, column: 13, scope: !992)
!1005 = !DILocation(line: 70, column: 33, scope: !1003)
!1006 = !DILocation(line: 70, column: 18, scope: !1003)
!1007 = !DILocation(line: 70, column: 26, scope: !1003)
!1008 = !DILocation(line: 70, column: 13, scope: !1003)
!1009 = !DILocation(line: 71, column: 5, scope: !992)
!1010 = !DILocation(line: 63, column: 34, scope: !989)
!1011 = !DILocation(line: 63, column: 5, scope: !989)
!1012 = distinct !{!1012, !990, !1013}
!1013 = !DILocation(line: 71, column: 5, scope: !986)
!1014 = !DILocation(line: 72, column: 5, scope: !963)
!1015 = distinct !DISubprogram(name: "main", scope: !74, file: !74, line: 115, type: !1016, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1019)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!43, !43, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1033, !1037, !1041, !1044}
!1020 = !DILocalVariable(name: "argc", arg: 1, scope: !1015, file: !74, line: 115, type: !43)
!1021 = !DILocalVariable(name: "argv", arg: 2, scope: !1015, file: !74, line: 115, type: !1018)
!1022 = !DILocalVariable(name: "i", scope: !1015, file: !74, line: 118, type: !53)
!1023 = !DILocalVariable(name: "j", scope: !1015, file: !74, line: 118, type: !53)
!1024 = !DILocalVariable(name: "num_algorithms", scope: !1015, file: !74, line: 118, type: !53)
!1025 = !DILocalVariable(name: "known_id", scope: !1015, file: !74, line: 119, type: !12)
!1026 = !DILocalVariable(name: "total_errors", scope: !1015, file: !74, line: 119, type: !12)
!1027 = !DILocalVariable(name: "seedcrc", scope: !1015, file: !74, line: 120, type: !53)
!1028 = !DILocalVariable(name: "total_time", scope: !1015, file: !74, line: 121, type: !117)
!1029 = !DILocalVariable(name: "results", scope: !1015, file: !74, line: 122, type: !1030)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !1031)
!1031 = !{!1032}
!1032 = !DISubrange(count: 1)
!1033 = !DILocalVariable(name: "stack_memblock", scope: !1015, file: !74, line: 124, type: !1034)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16000, elements: !1035)
!1035 = !{!1036}
!1036 = !DISubrange(count: 2000)
!1037 = !DILocalVariable(name: "ctx", scope: !1038, file: !74, line: 209, type: !23)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !74, line: 208, column: 5)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !74, line: 207, column: 5)
!1040 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 207, column: 5)
!1041 = !DILocalVariable(name: "secs_passed", scope: !1042, file: !74, line: 244, type: !68)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !74, line: 243, column: 5)
!1043 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 242, column: 9)
!1044 = !DILocalVariable(name: "divisor", scope: !1042, file: !74, line: 245, type: !23)
!1045 = !{!328, !328, i64 0}
!1046 = !DILocation(line: 115, column: 10, scope: !1015)
!1047 = !DILocation(line: 0, scope: !1015)
!1048 = !DILocation(line: 122, column: 5, scope: !1015)
!1049 = !DILocation(line: 122, column: 18, scope: !1015)
!1050 = !DILocation(line: 124, column: 5, scope: !1015)
!1051 = !DILocation(line: 124, column: 11, scope: !1015)
!1052 = !DILocation(line: 127, column: 21, scope: !1015)
!1053 = !DILocation(line: 127, column: 32, scope: !1015)
!1054 = !DILocation(line: 127, column: 5, scope: !1015)
!1055 = !DILocation(line: 134, column: 29, scope: !1015)
!1056 = !DILocation(line: 134, column: 5, scope: !1015)
!1057 = !DILocation(line: 134, column: 16, scope: !1015)
!1058 = !DILocation(line: 134, column: 27, scope: !1015)
!1059 = !DILocation(line: 135, column: 29, scope: !1015)
!1060 = !DILocation(line: 135, column: 5, scope: !1015)
!1061 = !DILocation(line: 135, column: 16, scope: !1015)
!1062 = !DILocation(line: 135, column: 27, scope: !1015)
!1063 = !DILocation(line: 136, column: 29, scope: !1015)
!1064 = !DILocation(line: 136, column: 5, scope: !1015)
!1065 = !DILocation(line: 136, column: 16, scope: !1015)
!1066 = !DILocation(line: 136, column: 27, scope: !1015)
!1067 = !DILocation(line: 137, column: 29, scope: !1015)
!1068 = !DILocation(line: 137, column: 5, scope: !1015)
!1069 = !DILocation(line: 137, column: 16, scope: !1015)
!1070 = !DILocation(line: 137, column: 27, scope: !1015)
!1071 = !DILocation(line: 141, column: 24, scope: !1015)
!1072 = !DILocation(line: 141, column: 5, scope: !1015)
!1073 = !DILocation(line: 141, column: 16, scope: !1015)
!1074 = !DILocation(line: 141, column: 22, scope: !1015)
!1075 = !{!327, !328, i64 32}
!1076 = !DILocation(line: 142, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 142, column: 9)
!1078 = !DILocation(line: 142, column: 20, scope: !1077)
!1079 = !DILocation(line: 142, column: 26, scope: !1077)
!1080 = !DILocation(line: 142, column: 9, scope: !1015)
!1081 = !DILocation(line: 144, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !74, line: 143, column: 5)
!1083 = !DILocation(line: 144, column: 20, scope: !1082)
!1084 = !DILocation(line: 144, column: 26, scope: !1082)
!1085 = !DILocation(line: 145, column: 5, scope: !1082)
!1086 = !DILocation(line: 147, column: 10, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 147, column: 9)
!1088 = !DILocation(line: 147, column: 21, scope: !1087)
!1089 = !DILocation(line: 147, column: 27, scope: !1087)
!1090 = !DILocation(line: 147, column: 33, scope: !1087)
!1091 = !DILocation(line: 147, column: 37, scope: !1087)
!1092 = !DILocation(line: 147, column: 48, scope: !1087)
!1093 = !DILocation(line: 147, column: 54, scope: !1087)
!1094 = !DILocation(line: 148, column: 9, scope: !1087)
!1095 = !DILocation(line: 148, column: 13, scope: !1087)
!1096 = !DILocation(line: 148, column: 24, scope: !1087)
!1097 = !DILocation(line: 148, column: 30, scope: !1087)
!1098 = !DILocation(line: 147, column: 9, scope: !1015)
!1099 = !DILocation(line: 150, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1087, file: !74, line: 149, column: 5)
!1101 = !DILocation(line: 150, column: 20, scope: !1100)
!1102 = !DILocation(line: 150, column: 26, scope: !1100)
!1103 = !DILocation(line: 151, column: 9, scope: !1100)
!1104 = !DILocation(line: 151, column: 20, scope: !1100)
!1105 = !DILocation(line: 151, column: 26, scope: !1100)
!1106 = !DILocation(line: 152, column: 9, scope: !1100)
!1107 = !DILocation(line: 152, column: 20, scope: !1100)
!1108 = !DILocation(line: 152, column: 26, scope: !1100)
!1109 = !DILocation(line: 153, column: 5, scope: !1100)
!1110 = !DILocation(line: 154, column: 10, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 154, column: 9)
!1112 = !DILocation(line: 154, column: 21, scope: !1111)
!1113 = !DILocation(line: 154, column: 27, scope: !1111)
!1114 = !DILocation(line: 154, column: 33, scope: !1111)
!1115 = !DILocation(line: 154, column: 37, scope: !1111)
!1116 = !DILocation(line: 154, column: 48, scope: !1111)
!1117 = !DILocation(line: 154, column: 54, scope: !1111)
!1118 = !DILocation(line: 155, column: 9, scope: !1111)
!1119 = !DILocation(line: 155, column: 13, scope: !1111)
!1120 = !DILocation(line: 155, column: 24, scope: !1111)
!1121 = !DILocation(line: 155, column: 30, scope: !1111)
!1122 = !DILocation(line: 154, column: 9, scope: !1015)
!1123 = !DILocation(line: 157, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1111, file: !74, line: 156, column: 5)
!1125 = !DILocation(line: 157, column: 20, scope: !1124)
!1126 = !DILocation(line: 157, column: 26, scope: !1124)
!1127 = !DILocation(line: 158, column: 9, scope: !1124)
!1128 = !DILocation(line: 158, column: 20, scope: !1124)
!1129 = !DILocation(line: 158, column: 26, scope: !1124)
!1130 = !DILocation(line: 159, column: 9, scope: !1124)
!1131 = !DILocation(line: 159, column: 20, scope: !1124)
!1132 = !DILocation(line: 159, column: 26, scope: !1124)
!1133 = !DILocation(line: 160, column: 5, scope: !1124)
!1134 = !DILocation(line: 184, column: 6, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 184, column: 1)
!1136 = !DILocation(line: 0, scope: !1135)
!1137 = !DILocation(line: 184, column: 1, scope: !1135)
!1138 = !DILocation(line: 186, column: 30, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !74, line: 185, column: 1)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !74, line: 184, column: 1)
!1141 = !DILocation(line: 186, column: 49, scope: !1139)
!1142 = !DILocation(line: 186, column: 51, scope: !1139)
!1143 = !DILocation(line: 186, column: 45, scope: !1139)
!1144 = !DILocation(line: 186, column: 5, scope: !1139)
!1145 = !DILocation(line: 186, column: 16, scope: !1139)
!1146 = !DILocation(line: 186, column: 28, scope: !1139)
!1147 = !DILocation(line: 187, column: 5, scope: !1139)
!1148 = !DILocation(line: 187, column: 16, scope: !1139)
!1149 = !DILocation(line: 187, column: 28, scope: !1139)
!1150 = !DILocation(line: 188, column: 30, scope: !1139)
!1151 = !DILocation(line: 188, column: 41, scope: !1139)
!1152 = !DILocation(line: 188, column: 5, scope: !1139)
!1153 = !DILocation(line: 188, column: 16, scope: !1139)
!1154 = !DILocation(line: 188, column: 28, scope: !1139)
!1155 = !DILocation(line: 189, column: 30, scope: !1139)
!1156 = !DILocation(line: 189, column: 41, scope: !1139)
!1157 = !DILocation(line: 189, column: 5, scope: !1139)
!1158 = !DILocation(line: 189, column: 16, scope: !1139)
!1159 = !DILocation(line: 189, column: 28, scope: !1139)
!1160 = !DILocation(line: 190, column: 30, scope: !1139)
!1161 = !DILocation(line: 190, column: 41, scope: !1139)
!1162 = !DILocation(line: 190, column: 5, scope: !1139)
!1163 = !DILocation(line: 190, column: 16, scope: !1139)
!1164 = !DILocation(line: 190, column: 28, scope: !1139)
!1165 = !DILocation(line: 191, column: 5, scope: !1139)
!1166 = !DILocation(line: 191, column: 16, scope: !1139)
!1167 = !DILocation(line: 191, column: 28, scope: !1139)
!1168 = !{!327, !295, i64 64}
!1169 = !DILocation(line: 192, column: 30, scope: !1139)
!1170 = !DILocation(line: 192, column: 41, scope: !1139)
!1171 = !DILocation(line: 192, column: 5, scope: !1139)
!1172 = !DILocation(line: 192, column: 16, scope: !1139)
!1173 = !DILocation(line: 192, column: 28, scope: !1139)
!1174 = !DILocation(line: 193, column: 1, scope: !1139)
!1175 = !DILocation(line: 184, column: 31, scope: !1140)
!1176 = !DILocation(line: 184, column: 15, scope: !1140)
!1177 = !DILocation(line: 199, column: 10, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 199, column: 5)
!1179 = !DILocation(line: 199, column: 19, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1178, file: !74, line: 199, column: 5)
!1181 = !DILocation(line: 199, column: 5, scope: !1178)
!1182 = !DILocation(line: 201, column: 16, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !74, line: 201, column: 13)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !74, line: 200, column: 5)
!1185 = !DILocation(line: 201, column: 32, scope: !1183)
!1186 = !DILocation(line: 201, column: 43, scope: !1183)
!1187 = !DILocation(line: 201, column: 30, scope: !1183)
!1188 = !DILocation(line: 201, column: 13, scope: !1184)
!1189 = !DILocation(line: 202, column: 27, scope: !1183)
!1190 = !DILocation(line: 202, column: 13, scope: !1183)
!1191 = !DILocation(line: 203, column: 5, scope: !1184)
!1192 = !DILocation(line: 199, column: 38, scope: !1180)
!1193 = !DILocation(line: 199, column: 5, scope: !1180)
!1194 = distinct !{!1194, !1181, !1195}
!1195 = !DILocation(line: 203, column: 5, scope: !1178)
!1196 = !DILocation(line: 204, column: 10, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 204, column: 5)
!1198 = !DILocation(line: 0, scope: !1197)
!1199 = !DILocation(line: 204, column: 5, scope: !1197)
!1200 = !DILocation(line: 205, column: 27, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !74, line: 204, column: 5)
!1202 = !DILocation(line: 205, column: 38, scope: !1201)
!1203 = !DILocation(line: 205, column: 45, scope: !1201)
!1204 = !DILocation(line: 205, column: 43, scope: !1201)
!1205 = !DILocation(line: 205, column: 9, scope: !1201)
!1206 = !DILocation(line: 205, column: 20, scope: !1201)
!1207 = !DILocation(line: 205, column: 25, scope: !1201)
!1208 = !DILocation(line: 204, column: 35, scope: !1201)
!1209 = !DILocation(line: 204, column: 19, scope: !1201)
!1210 = !DILocation(line: 207, column: 10, scope: !1040)
!1211 = !DILocation(line: 207, column: 19, scope: !1039)
!1212 = !DILocation(line: 207, column: 5, scope: !1040)
!1213 = !DILocation(line: 210, column: 16, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1038, file: !74, line: 210, column: 13)
!1215 = !DILocation(line: 210, column: 32, scope: !1214)
!1216 = !DILocation(line: 210, column: 43, scope: !1214)
!1217 = !DILocation(line: 210, column: 30, scope: !1214)
!1218 = !DILocation(line: 210, column: 13, scope: !1038)
!1219 = !DILocation(line: 0, scope: !1038)
!1220 = !DILocation(line: 212, column: 18, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !74, line: 212, column: 13)
!1222 = distinct !DILexicalBlock(scope: !1214, file: !74, line: 211, column: 9)
!1223 = !DILocation(line: 0, scope: !1221)
!1224 = !DILocation(line: 212, column: 31, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !74, line: 212, column: 13)
!1226 = !DILocation(line: 212, column: 13, scope: !1221)
!1227 = !DILocation(line: 214, column: 32, scope: !1225)
!1228 = !DILocation(line: 214, column: 45, scope: !1225)
!1229 = !DILocation(line: 214, column: 60, scope: !1225)
!1230 = !DILocation(line: 214, column: 71, scope: !1225)
!1231 = !DILocation(line: 214, column: 78, scope: !1225)
!1232 = !DILocation(line: 214, column: 76, scope: !1225)
!1233 = !DILocation(line: 214, column: 58, scope: !1225)
!1234 = !DILocation(line: 213, column: 17, scope: !1225)
!1235 = !DILocation(line: 213, column: 30, scope: !1225)
!1236 = !DILocation(line: 213, column: 41, scope: !1225)
!1237 = !DILocation(line: 214, column: 21, scope: !1225)
!1238 = !DILocation(line: 212, column: 49, scope: !1225)
!1239 = !DILocation(line: 212, column: 13, scope: !1225)
!1240 = distinct !{!1240, !1226, !1241}
!1241 = !DILocation(line: 214, column: 78, scope: !1221)
!1242 = !DILocation(line: 215, column: 14, scope: !1222)
!1243 = !DILocation(line: 216, column: 9, scope: !1222)
!1244 = !DILocation(line: 217, column: 5, scope: !1038)
!1245 = !DILocation(line: 207, column: 38, scope: !1039)
!1246 = !DILocation(line: 207, column: 5, scope: !1039)
!1247 = distinct !{!1247, !1212, !1248}
!1248 = !DILocation(line: 217, column: 5, scope: !1040)
!1249 = !DILocation(line: 219, column: 10, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 219, column: 5)
!1251 = !DILocation(line: 0, scope: !1250)
!1252 = !DILocation(line: 219, column: 19, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !74, line: 219, column: 5)
!1254 = !DILocation(line: 219, column: 5, scope: !1250)
!1255 = !DILocation(line: 221, column: 13, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !74, line: 221, column: 13)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !74, line: 220, column: 5)
!1258 = !DILocation(line: 221, column: 24, scope: !1256)
!1259 = !DILocation(line: 221, column: 30, scope: !1256)
!1260 = !DILocation(line: 221, column: 13, scope: !1257)
!1261 = !DILocation(line: 224, column: 17, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1256, file: !74, line: 222, column: 9)
!1263 = !DILocation(line: 224, column: 28, scope: !1262)
!1264 = !DILocation(line: 224, column: 34, scope: !1262)
!1265 = !DILocation(line: 224, column: 45, scope: !1262)
!1266 = !DILocation(line: 224, column: 58, scope: !1262)
!1267 = !DILocation(line: 224, column: 69, scope: !1262)
!1268 = !DILocation(line: 223, column: 31, scope: !1262)
!1269 = !DILocation(line: 223, column: 13, scope: !1262)
!1270 = !DILocation(line: 223, column: 24, scope: !1262)
!1271 = !DILocation(line: 223, column: 29, scope: !1262)
!1272 = !DILocation(line: 225, column: 9, scope: !1262)
!1273 = !DILocation(line: 226, column: 13, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1257, file: !74, line: 226, column: 13)
!1275 = !DILocation(line: 226, column: 24, scope: !1274)
!1276 = !DILocation(line: 226, column: 30, scope: !1274)
!1277 = !DILocation(line: 226, column: 13, scope: !1257)
!1278 = !DILocation(line: 228, column: 30, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !74, line: 227, column: 9)
!1280 = !DILocation(line: 228, column: 41, scope: !1279)
!1281 = !DILocation(line: 229, column: 30, scope: !1279)
!1282 = !DILocation(line: 229, column: 41, scope: !1279)
!1283 = !DILocation(line: 230, column: 38, scope: !1279)
!1284 = !DILocation(line: 230, column: 49, scope: !1279)
!1285 = !DILocation(line: 230, column: 30, scope: !1279)
!1286 = !DILocation(line: 231, column: 46, scope: !1279)
!1287 = !DILocation(line: 231, column: 57, scope: !1279)
!1288 = !DILocation(line: 231, column: 38, scope: !1279)
!1289 = !DILocation(line: 231, column: 64, scope: !1279)
!1290 = !DILocation(line: 231, column: 34, scope: !1279)
!1291 = !DILocation(line: 232, column: 32, scope: !1279)
!1292 = !DILocation(line: 232, column: 43, scope: !1279)
!1293 = !DILocation(line: 228, column: 13, scope: !1279)
!1294 = !DILocation(line: 233, column: 9, scope: !1279)
!1295 = !DILocation(line: 234, column: 13, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1257, file: !74, line: 234, column: 13)
!1297 = !DILocation(line: 234, column: 24, scope: !1296)
!1298 = !DILocation(line: 234, column: 30, scope: !1296)
!1299 = !DILocation(line: 234, column: 13, scope: !1257)
!1300 = !DILocation(line: 237, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !74, line: 235, column: 9)
!1302 = !DILocation(line: 237, column: 28, scope: !1301)
!1303 = !DILocation(line: 237, column: 34, scope: !1301)
!1304 = !DILocation(line: 237, column: 45, scope: !1301)
!1305 = !DILocation(line: 237, column: 52, scope: !1301)
!1306 = !DILocation(line: 237, column: 63, scope: !1301)
!1307 = !DILocation(line: 236, column: 13, scope: !1301)
!1308 = !DILocation(line: 238, column: 9, scope: !1301)
!1309 = !DILocation(line: 239, column: 5, scope: !1257)
!1310 = !DILocation(line: 219, column: 35, scope: !1253)
!1311 = !DILocation(line: 219, column: 5, scope: !1253)
!1312 = distinct !{!1312, !1254, !1313}
!1313 = !DILocation(line: 239, column: 5, scope: !1250)
!1314 = !DILocation(line: 242, column: 9, scope: !1043)
!1315 = !DILocation(line: 242, column: 20, scope: !1043)
!1316 = !DILocation(line: 242, column: 31, scope: !1043)
!1317 = !DILocation(line: 242, column: 9, scope: !1015)
!1318 = !DILocation(line: 0, scope: !1042)
!1319 = !DILocation(line: 246, column: 9, scope: !1042)
!1320 = !DILocation(line: 246, column: 20, scope: !1042)
!1321 = !DILocation(line: 246, column: 31, scope: !1042)
!1322 = !DILocation(line: 247, column: 9, scope: !1042)
!1323 = !DILocation(line: 247, column: 28, scope: !1042)
!1324 = !DILocation(line: 249, column: 13, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1042, file: !74, line: 248, column: 9)
!1326 = !DILocation(line: 249, column: 24, scope: !1325)
!1327 = !DILocation(line: 249, column: 35, scope: !1325)
!1328 = !DILocation(line: 250, column: 13, scope: !1325)
!1329 = !DILocation(line: 251, column: 22, scope: !1325)
!1330 = !DILocation(line: 251, column: 21, scope: !1325)
!1331 = !DILocation(line: 251, column: 13, scope: !1325)
!1332 = !DILocation(line: 252, column: 13, scope: !1325)
!1333 = !DILocation(line: 253, column: 40, scope: !1325)
!1334 = !DILocation(line: 253, column: 27, scope: !1325)
!1335 = distinct !{!1335, !1322, !1336}
!1336 = !DILocation(line: 254, column: 9, scope: !1042)
!1337 = !DILocation(line: 257, column: 19, scope: !1042)
!1338 = !DILocation(line: 258, column: 21, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1042, file: !74, line: 258, column: 13)
!1340 = !DILocation(line: 258, column: 13, scope: !1042)
!1341 = !DILocation(line: 261, column: 13, scope: !1339)
!1342 = !DILocation(line: 262, column: 41, scope: !1042)
!1343 = !DILocation(line: 262, column: 36, scope: !1042)
!1344 = !DILocation(line: 262, column: 9, scope: !1042)
!1345 = !DILocation(line: 262, column: 20, scope: !1042)
!1346 = !DILocation(line: 262, column: 31, scope: !1042)
!1347 = !DILocation(line: 263, column: 5, scope: !1042)
!1348 = !DILocation(line: 265, column: 5, scope: !1015)
!1349 = !DILocation(line: 282, column: 14, scope: !1015)
!1350 = !DILocation(line: 282, column: 13, scope: !1015)
!1351 = !DILocation(line: 282, column: 5, scope: !1015)
!1352 = !DILocation(line: 284, column: 5, scope: !1015)
!1353 = !DILocation(line: 285, column: 18, scope: !1015)
!1354 = !DILocation(line: 287, column: 21, scope: !1015)
!1355 = !DILocation(line: 287, column: 32, scope: !1015)
!1356 = !DILocation(line: 287, column: 15, scope: !1015)
!1357 = !DILocation(line: 288, column: 21, scope: !1015)
!1358 = !DILocation(line: 288, column: 32, scope: !1015)
!1359 = !DILocation(line: 288, column: 15, scope: !1015)
!1360 = !DILocation(line: 289, column: 21, scope: !1015)
!1361 = !DILocation(line: 289, column: 32, scope: !1015)
!1362 = !DILocation(line: 289, column: 15, scope: !1015)
!1363 = !DILocation(line: 290, column: 21, scope: !1015)
!1364 = !DILocation(line: 290, column: 32, scope: !1015)
!1365 = !DILocation(line: 290, column: 15, scope: !1015)
!1366 = !DILocation(line: 292, column: 13, scope: !1015)
!1367 = !DILocation(line: 296, column: 13, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 293, column: 5)
!1369 = !DILocation(line: 297, column: 13, scope: !1368)
!1370 = !DILocation(line: 301, column: 13, scope: !1368)
!1371 = !DILocation(line: 302, column: 13, scope: !1368)
!1372 = !DILocation(line: 306, column: 13, scope: !1368)
!1373 = !DILocation(line: 307, column: 13, scope: !1368)
!1374 = !DILocation(line: 310, column: 13, scope: !1368)
!1375 = !DILocation(line: 311, column: 13, scope: !1368)
!1376 = !DILocation(line: 315, column: 13, scope: !1368)
!1377 = !DILocation(line: 316, column: 13, scope: !1368)
!1378 = !DILocation(line: 319, column: 13, scope: !1368)
!1379 = !DILocation(line: 321, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 321, column: 9)
!1381 = !DILocation(line: 321, column: 18, scope: !1380)
!1382 = !DILocation(line: 321, column: 9, scope: !1015)
!1383 = !DILocation(line: 323, column: 14, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !74, line: 323, column: 9)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !74, line: 322, column: 5)
!1386 = !DILocation(line: 0, scope: !1384)
!1387 = !DILocation(line: 323, column: 21, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !74, line: 323, column: 9)
!1389 = !DILocation(line: 323, column: 25, scope: !1388)
!1390 = !DILocation(line: 323, column: 23, scope: !1388)
!1391 = !DILocation(line: 323, column: 9, scope: !1384)
!1392 = !DILocation(line: 325, column: 13, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !74, line: 324, column: 9)
!1394 = !DILocation(line: 325, column: 24, scope: !1393)
!1395 = !DILocation(line: 325, column: 28, scope: !1393)
!1396 = !DILocation(line: 326, column: 18, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !74, line: 326, column: 17)
!1398 = !DILocation(line: 326, column: 29, scope: !1397)
!1399 = !DILocation(line: 326, column: 35, scope: !1397)
!1400 = !DILocation(line: 327, column: 17, scope: !1397)
!1401 = !DILocation(line: 327, column: 21, scope: !1397)
!1402 = !DILocation(line: 327, column: 32, scope: !1397)
!1403 = !DILocation(line: 327, column: 43, scope: !1397)
!1404 = !DILocation(line: 327, column: 40, scope: !1397)
!1405 = !DILocation(line: 326, column: 17, scope: !1393)
!1406 = !DILocation(line: 330, column: 27, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !74, line: 328, column: 13)
!1408 = !DILocation(line: 331, column: 27, scope: !1407)
!1409 = !DILocation(line: 331, column: 38, scope: !1407)
!1410 = !DILocation(line: 332, column: 27, scope: !1407)
!1411 = !DILocation(line: 329, column: 17, scope: !1407)
!1412 = !DILocation(line: 333, column: 17, scope: !1407)
!1413 = !DILocation(line: 333, column: 28, scope: !1407)
!1414 = !DILocation(line: 333, column: 31, scope: !1407)
!1415 = !DILocation(line: 334, column: 13, scope: !1407)
!1416 = !DILocation(line: 335, column: 18, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1393, file: !74, line: 335, column: 17)
!1418 = !DILocation(line: 335, column: 29, scope: !1417)
!1419 = !DILocation(line: 335, column: 35, scope: !1417)
!1420 = !DILocation(line: 336, column: 17, scope: !1417)
!1421 = !DILocation(line: 336, column: 21, scope: !1417)
!1422 = !DILocation(line: 336, column: 32, scope: !1417)
!1423 = !DILocation(line: 336, column: 45, scope: !1417)
!1424 = !DILocation(line: 336, column: 42, scope: !1417)
!1425 = !DILocation(line: 335, column: 17, scope: !1393)
!1426 = !DILocation(line: 339, column: 27, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1417, file: !74, line: 337, column: 13)
!1428 = !DILocation(line: 340, column: 27, scope: !1427)
!1429 = !DILocation(line: 340, column: 38, scope: !1427)
!1430 = !DILocation(line: 341, column: 27, scope: !1427)
!1431 = !DILocation(line: 338, column: 17, scope: !1427)
!1432 = !DILocation(line: 342, column: 17, scope: !1427)
!1433 = !DILocation(line: 342, column: 28, scope: !1427)
!1434 = !DILocation(line: 342, column: 31, scope: !1427)
!1435 = !DILocation(line: 343, column: 13, scope: !1427)
!1436 = !DILocation(line: 344, column: 18, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1393, file: !74, line: 344, column: 17)
!1438 = !DILocation(line: 344, column: 29, scope: !1437)
!1439 = !DILocation(line: 344, column: 35, scope: !1437)
!1440 = !DILocation(line: 345, column: 17, scope: !1437)
!1441 = !DILocation(line: 345, column: 21, scope: !1437)
!1442 = !DILocation(line: 345, column: 32, scope: !1437)
!1443 = !DILocation(line: 345, column: 44, scope: !1437)
!1444 = !DILocation(line: 345, column: 41, scope: !1437)
!1445 = !DILocation(line: 344, column: 17, scope: !1393)
!1446 = !DILocation(line: 348, column: 27, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1437, file: !74, line: 346, column: 13)
!1448 = !DILocation(line: 349, column: 27, scope: !1447)
!1449 = !DILocation(line: 349, column: 38, scope: !1447)
!1450 = !DILocation(line: 350, column: 27, scope: !1447)
!1451 = !DILocation(line: 347, column: 17, scope: !1447)
!1452 = !DILocation(line: 351, column: 17, scope: !1447)
!1453 = !DILocation(line: 351, column: 28, scope: !1447)
!1454 = !DILocation(line: 351, column: 31, scope: !1447)
!1455 = !DILocation(line: 352, column: 13, scope: !1447)
!1456 = !DILocation(line: 353, column: 29, scope: !1393)
!1457 = !DILocation(line: 353, column: 40, scope: !1393)
!1458 = !DILocation(line: 353, column: 26, scope: !1393)
!1459 = !DILocation(line: 354, column: 9, scope: !1393)
!1460 = !DILocation(line: 323, column: 48, scope: !1388)
!1461 = !DILocation(line: 323, column: 9, scope: !1388)
!1462 = distinct !{!1462, !1391, !1463}
!1463 = !DILocation(line: 354, column: 9, scope: !1384)
!1464 = !DILocation(line: 355, column: 5, scope: !1385)
!1465 = !DILocation(line: 318, column: 26, scope: !1368)
!1466 = !DILocation(line: 356, column: 21, scope: !1015)
!1467 = !DILocation(line: 356, column: 18, scope: !1015)
!1468 = !DILocation(line: 358, column: 58, scope: !1015)
!1469 = !DILocation(line: 358, column: 69, scope: !1015)
!1470 = !DILocation(line: 358, column: 5, scope: !1015)
!1471 = !DILocation(line: 359, column: 5, scope: !1015)
!1472 = !DILocation(line: 361, column: 42, scope: !1015)
!1473 = !DILocation(line: 361, column: 5, scope: !1015)
!1474 = !DILocation(line: 362, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 362, column: 9)
!1476 = !DILocation(line: 362, column: 34, scope: !1475)
!1477 = !DILocation(line: 362, column: 9, scope: !1015)
!1478 = !DILocation(line: 364, column: 19, scope: !1475)
!1479 = !DILocation(line: 364, column: 42, scope: !1475)
!1480 = !DILocation(line: 364, column: 53, scope: !1475)
!1481 = !DILocation(line: 364, column: 40, scope: !1475)
!1482 = !DILocation(line: 365, column: 25, scope: !1475)
!1483 = !DILocation(line: 365, column: 23, scope: !1475)
!1484 = !DILocation(line: 363, column: 9, scope: !1475)
!1485 = !DILocation(line: 373, column: 9, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 373, column: 9)
!1487 = !DILocation(line: 373, column: 34, scope: !1486)
!1488 = !DILocation(line: 373, column: 9, scope: !1015)
!1489 = !DILocation(line: 375, column: 9, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !74, line: 374, column: 5)
!1491 = !DILocation(line: 377, column: 21, scope: !1490)
!1492 = !DILocation(line: 378, column: 5, scope: !1490)
!1493 = !DILocation(line: 381, column: 30, scope: !1015)
!1494 = !DILocation(line: 381, column: 53, scope: !1015)
!1495 = !DILocation(line: 381, column: 64, scope: !1015)
!1496 = !DILocation(line: 381, column: 51, scope: !1015)
!1497 = !DILocation(line: 380, column: 5, scope: !1015)
!1498 = !DILocation(line: 382, column: 5, scope: !1015)
!1499 = !DILocation(line: 383, column: 5, scope: !1015)
!1500 = !DILocation(line: 387, column: 5, scope: !1015)
!1501 = !DILocation(line: 389, column: 46, scope: !1015)
!1502 = !DILocation(line: 389, column: 5, scope: !1015)
!1503 = !DILocation(line: 390, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 390, column: 9)
!1505 = !DILocation(line: 390, column: 20, scope: !1504)
!1506 = !DILocation(line: 390, column: 26, scope: !1504)
!1507 = !DILocation(line: 390, column: 9, scope: !1015)
!1508 = !DILocation(line: 391, column: 14, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !74, line: 391, column: 9)
!1510 = !DILocation(line: 0, scope: !1509)
!1511 = !DILocation(line: 391, column: 21, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !74, line: 391, column: 9)
!1513 = !DILocation(line: 391, column: 25, scope: !1512)
!1514 = !DILocation(line: 391, column: 23, scope: !1512)
!1515 = !DILocation(line: 391, column: 9, scope: !1509)
!1516 = !DILocation(line: 392, column: 55, scope: !1512)
!1517 = !DILocation(line: 392, column: 58, scope: !1512)
!1518 = !DILocation(line: 392, column: 69, scope: !1512)
!1519 = !DILocation(line: 392, column: 13, scope: !1512)
!1520 = !DILocation(line: 391, column: 48, scope: !1512)
!1521 = !DILocation(line: 391, column: 9, scope: !1512)
!1522 = distinct !{!1522, !1515, !1523}
!1523 = !DILocation(line: 392, column: 76, scope: !1509)
!1524 = !DILocation(line: 393, column: 9, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 393, column: 9)
!1526 = !DILocation(line: 393, column: 20, scope: !1525)
!1527 = !DILocation(line: 393, column: 26, scope: !1525)
!1528 = !DILocation(line: 393, column: 9, scope: !1015)
!1529 = !DILocation(line: 394, column: 14, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !74, line: 394, column: 9)
!1531 = !DILocation(line: 0, scope: !1530)
!1532 = !DILocation(line: 394, column: 21, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !74, line: 394, column: 9)
!1534 = !DILocation(line: 394, column: 25, scope: !1533)
!1535 = !DILocation(line: 394, column: 23, scope: !1533)
!1536 = !DILocation(line: 394, column: 9, scope: !1530)
!1537 = !DILocation(line: 395, column: 55, scope: !1533)
!1538 = !DILocation(line: 395, column: 58, scope: !1533)
!1539 = !DILocation(line: 395, column: 69, scope: !1533)
!1540 = !DILocation(line: 395, column: 13, scope: !1533)
!1541 = !DILocation(line: 394, column: 48, scope: !1533)
!1542 = !DILocation(line: 394, column: 9, scope: !1533)
!1543 = distinct !{!1543, !1536, !1544}
!1544 = !DILocation(line: 395, column: 78, scope: !1530)
!1545 = !DILocation(line: 396, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 396, column: 9)
!1547 = !DILocation(line: 396, column: 20, scope: !1546)
!1548 = !DILocation(line: 396, column: 26, scope: !1546)
!1549 = !DILocation(line: 396, column: 9, scope: !1015)
!1550 = !DILocation(line: 397, column: 14, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1546, file: !74, line: 397, column: 9)
!1552 = !DILocation(line: 0, scope: !1551)
!1553 = !DILocation(line: 397, column: 21, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1551, file: !74, line: 397, column: 9)
!1555 = !DILocation(line: 397, column: 25, scope: !1554)
!1556 = !DILocation(line: 397, column: 23, scope: !1554)
!1557 = !DILocation(line: 397, column: 9, scope: !1551)
!1558 = !DILocation(line: 398, column: 55, scope: !1554)
!1559 = !DILocation(line: 398, column: 58, scope: !1554)
!1560 = !DILocation(line: 398, column: 69, scope: !1554)
!1561 = !DILocation(line: 398, column: 13, scope: !1554)
!1562 = !DILocation(line: 397, column: 48, scope: !1554)
!1563 = !DILocation(line: 397, column: 9, scope: !1554)
!1564 = distinct !{!1564, !1557, !1565}
!1565 = !DILocation(line: 398, column: 77, scope: !1551)
!1566 = !DILocation(line: 399, column: 10, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 399, column: 5)
!1568 = !DILocation(line: 0, scope: !1567)
!1569 = !DILocation(line: 399, column: 17, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !74, line: 399, column: 5)
!1571 = !DILocation(line: 399, column: 21, scope: !1570)
!1572 = !DILocation(line: 399, column: 19, scope: !1570)
!1573 = !DILocation(line: 399, column: 5, scope: !1567)
!1574 = !DILocation(line: 400, column: 51, scope: !1570)
!1575 = !DILocation(line: 400, column: 54, scope: !1570)
!1576 = !DILocation(line: 400, column: 65, scope: !1570)
!1577 = !DILocation(line: 400, column: 9, scope: !1570)
!1578 = !DILocation(line: 399, column: 44, scope: !1570)
!1579 = !DILocation(line: 399, column: 5, scope: !1570)
!1580 = distinct !{!1580, !1573, !1581}
!1581 = !DILocation(line: 400, column: 68, scope: !1567)
!1582 = !DILocation(line: 401, column: 9, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 401, column: 9)
!1584 = !DILocation(line: 401, column: 22, scope: !1583)
!1585 = !DILocation(line: 401, column: 9, scope: !1015)
!1586 = !DILocation(line: 403, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !74, line: 402, column: 5)
!1588 = !DILocation(line: 407, column: 13, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1587, file: !74, line: 407, column: 13)
!1590 = !DILocation(line: 407, column: 22, scope: !1589)
!1591 = !DILocation(line: 407, column: 13, scope: !1587)
!1592 = !DILocation(line: 410, column: 23, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !74, line: 408, column: 9)
!1594 = !DILocation(line: 410, column: 46, scope: !1593)
!1595 = !DILocation(line: 410, column: 57, scope: !1593)
!1596 = !DILocation(line: 410, column: 44, scope: !1593)
!1597 = !DILocation(line: 411, column: 29, scope: !1593)
!1598 = !DILocation(line: 411, column: 27, scope: !1593)
!1599 = !DILocation(line: 409, column: 13, scope: !1593)
!1600 = !DILocation(line: 415, column: 13, scope: !1593)
!1601 = !DILocation(line: 423, column: 13, scope: !1593)
!1602 = !DILocation(line: 424, column: 9, scope: !1593)
!1603 = !DILocation(line: 426, column: 5, scope: !1587)
!1604 = !DILocation(line: 427, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 427, column: 9)
!1606 = !DILocation(line: 427, column: 22, scope: !1605)
!1607 = !DILocation(line: 427, column: 9, scope: !1015)
!1608 = !DILocation(line: 428, column: 9, scope: !1605)
!1609 = !DILocation(line: 429, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 429, column: 9)
!1611 = !DILocation(line: 429, column: 22, scope: !1610)
!1612 = !DILocation(line: 429, column: 9, scope: !1015)
!1613 = !DILocation(line: 430, column: 9, scope: !1610)
!1614 = !DILocation(line: 439, column: 21, scope: !1015)
!1615 = !DILocation(line: 439, column: 32, scope: !1015)
!1616 = !DILocation(line: 439, column: 5, scope: !1015)
!1617 = !DILocation(line: 442, column: 1, scope: !1015)
!1618 = !DILocation(line: 441, column: 5, scope: !1015)
!1619 = distinct !DISubprogram(name: "core_bench_matrix", scope: !1620, file: !1620, line: 92, type: !1621, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1631)
!1620 = !DIFile(filename: "src/coremark/core_matrix.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!53, !1623, !12, !53}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_params", file: !8, line: 119, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MAT_PARAMS_S", file: !8, line: 113, size: 128, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1625, file: !8, line: 115, baseType: !43, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1625, file: !8, line: 116, baseType: !45, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1625, file: !8, line: 117, baseType: !45, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1625, file: !8, line: 118, baseType: !49, size: 32, offset: 96)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639}
!1632 = !DILocalVariable(name: "p", arg: 1, scope: !1619, file: !1620, line: 92, type: !1623)
!1633 = !DILocalVariable(name: "seed", arg: 2, scope: !1619, file: !1620, line: 92, type: !12)
!1634 = !DILocalVariable(name: "crc", arg: 3, scope: !1619, file: !1620, line: 92, type: !53)
!1635 = !DILocalVariable(name: "N", scope: !1619, file: !1620, line: 94, type: !23)
!1636 = !DILocalVariable(name: "C", scope: !1619, file: !1620, line: 95, type: !49)
!1637 = !DILocalVariable(name: "A", scope: !1619, file: !1620, line: 96, type: !45)
!1638 = !DILocalVariable(name: "B", scope: !1619, file: !1620, line: 97, type: !45)
!1639 = !DILocalVariable(name: "val", scope: !1619, file: !1620, line: 98, type: !46)
!1640 = !DILocation(line: 0, scope: !1619)
!1641 = !DILocation(line: 94, column: 22, scope: !1619)
!1642 = !{!330, !328, i64 0}
!1643 = !DILocation(line: 95, column: 22, scope: !1619)
!1644 = !{!330, !329, i64 12}
!1645 = !DILocation(line: 96, column: 22, scope: !1619)
!1646 = !{!330, !329, i64 4}
!1647 = !DILocation(line: 97, column: 22, scope: !1619)
!1648 = !{!330, !329, i64 8}
!1649 = !DILocation(line: 100, column: 17, scope: !1619)
!1650 = !DILocation(line: 100, column: 11, scope: !1619)
!1651 = !DILocation(line: 102, column: 5, scope: !1619)
!1652 = distinct !DISubprogram(name: "matrix_test", scope: !1620, file: !1620, line: 130, type: !1653, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!12, !23, !49, !45, !45, !46}
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662}
!1656 = !DILocalVariable(name: "N", arg: 1, scope: !1652, file: !1620, line: 130, type: !23)
!1657 = !DILocalVariable(name: "C", arg: 2, scope: !1652, file: !1620, line: 130, type: !49)
!1658 = !DILocalVariable(name: "A", arg: 3, scope: !1652, file: !1620, line: 130, type: !45)
!1659 = !DILocalVariable(name: "B", arg: 4, scope: !1652, file: !1620, line: 130, type: !45)
!1660 = !DILocalVariable(name: "val", arg: 5, scope: !1652, file: !1620, line: 130, type: !46)
!1661 = !DILocalVariable(name: "crc", scope: !1652, file: !1620, line: 132, type: !53)
!1662 = !DILocalVariable(name: "clipval", scope: !1652, file: !1620, line: 133, type: !46)
!1663 = !DILocation(line: 0, scope: !1652)
!1664 = !DILocation(line: 133, column: 22, scope: !1652)
!1665 = !DILocation(line: 135, column: 5, scope: !1652)
!1666 = !DILocation(line: 139, column: 5, scope: !1652)
!1667 = !DILocation(line: 140, column: 17, scope: !1652)
!1668 = !DILocation(line: 140, column: 11, scope: !1652)
!1669 = !DILocation(line: 144, column: 5, scope: !1652)
!1670 = !DILocation(line: 145, column: 17, scope: !1652)
!1671 = !DILocation(line: 145, column: 11, scope: !1652)
!1672 = !DILocation(line: 149, column: 5, scope: !1652)
!1673 = !DILocation(line: 150, column: 17, scope: !1652)
!1674 = !DILocation(line: 150, column: 11, scope: !1652)
!1675 = !DILocation(line: 154, column: 5, scope: !1652)
!1676 = !DILocation(line: 155, column: 17, scope: !1652)
!1677 = !DILocation(line: 155, column: 11, scope: !1652)
!1678 = !DILocation(line: 160, column: 29, scope: !1652)
!1679 = !DILocation(line: 160, column: 28, scope: !1652)
!1680 = !DILocation(line: 160, column: 5, scope: !1652)
!1681 = !DILocation(line: 161, column: 5, scope: !1652)
!1682 = distinct !DISubprogram(name: "matrix_add_const", scope: !1620, file: !1620, line: 285, type: !1683, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !23, !45, !46}
!1685 = !{!1686, !1687, !1688, !1689, !1690}
!1686 = !DILocalVariable(name: "N", arg: 1, scope: !1682, file: !1620, line: 285, type: !23)
!1687 = !DILocalVariable(name: "A", arg: 2, scope: !1682, file: !1620, line: 285, type: !45)
!1688 = !DILocalVariable(name: "val", arg: 3, scope: !1682, file: !1620, line: 285, type: !46)
!1689 = !DILocalVariable(name: "i", scope: !1682, file: !1620, line: 287, type: !23)
!1690 = !DILocalVariable(name: "j", scope: !1682, file: !1620, line: 287, type: !23)
!1691 = !DILocation(line: 0, scope: !1682)
!1692 = !DILocation(line: 288, column: 10, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1682, file: !1620, line: 288, column: 5)
!1694 = !DILocation(line: 0, scope: !1693)
!1695 = !DILocation(line: 288, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !1620, line: 288, column: 5)
!1697 = !DILocation(line: 288, column: 5, scope: !1693)
!1698 = !DILocation(line: 290, column: 14, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !1620, line: 290, column: 9)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !1620, line: 289, column: 5)
!1701 = !DILocation(line: 0, scope: !1699)
!1702 = !DILocation(line: 290, column: 23, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !1620, line: 290, column: 9)
!1704 = !DILocation(line: 290, column: 9, scope: !1699)
!1705 = !DILocation(line: 292, column: 29, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !1620, line: 291, column: 9)
!1707 = !DILocation(line: 292, column: 17, scope: !1706)
!1708 = !DILocation(line: 292, column: 21, scope: !1706)
!1709 = !DILocation(line: 292, column: 13, scope: !1706)
!1710 = !DILocation(line: 292, column: 26, scope: !1706)
!1711 = !DILocation(line: 293, column: 9, scope: !1706)
!1712 = !DILocation(line: 290, column: 29, scope: !1703)
!1713 = !DILocation(line: 290, column: 9, scope: !1703)
!1714 = distinct !{!1714, !1704, !1715}
!1715 = !DILocation(line: 293, column: 9, scope: !1699)
!1716 = !DILocation(line: 294, column: 5, scope: !1700)
!1717 = !DILocation(line: 288, column: 25, scope: !1696)
!1718 = !DILocation(line: 288, column: 5, scope: !1696)
!1719 = distinct !{!1719, !1697, !1720}
!1720 = !DILocation(line: 294, column: 5, scope: !1693)
!1721 = !DILocation(line: 295, column: 1, scope: !1682)
!1722 = distinct !DISubprogram(name: "matrix_mul_const", scope: !1620, file: !1620, line: 269, type: !1723, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !23, !49, !45, !46}
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731}
!1726 = !DILocalVariable(name: "N", arg: 1, scope: !1722, file: !1620, line: 269, type: !23)
!1727 = !DILocalVariable(name: "C", arg: 2, scope: !1722, file: !1620, line: 269, type: !49)
!1728 = !DILocalVariable(name: "A", arg: 3, scope: !1722, file: !1620, line: 269, type: !45)
!1729 = !DILocalVariable(name: "val", arg: 4, scope: !1722, file: !1620, line: 269, type: !46)
!1730 = !DILocalVariable(name: "i", scope: !1722, file: !1620, line: 271, type: !23)
!1731 = !DILocalVariable(name: "j", scope: !1722, file: !1620, line: 271, type: !23)
!1732 = !DILocation(line: 0, scope: !1722)
!1733 = !DILocation(line: 272, column: 10, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1722, file: !1620, line: 272, column: 5)
!1735 = !DILocation(line: 0, scope: !1734)
!1736 = !DILocation(line: 272, column: 19, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !1620, line: 272, column: 5)
!1738 = !DILocation(line: 272, column: 5, scope: !1734)
!1739 = !DILocation(line: 274, column: 14, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !1620, line: 274, column: 9)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !1620, line: 273, column: 5)
!1742 = !DILocation(line: 0, scope: !1740)
!1743 = !DILocation(line: 274, column: 23, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !1620, line: 274, column: 9)
!1745 = !DILocation(line: 274, column: 9, scope: !1740)
!1746 = !DILocation(line: 276, column: 40, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1744, file: !1620, line: 275, column: 9)
!1748 = !DILocation(line: 276, column: 44, scope: !1747)
!1749 = !DILocation(line: 276, column: 36, scope: !1747)
!1750 = !DILocation(line: 276, column: 28, scope: !1747)
!1751 = !DILocation(line: 276, column: 51, scope: !1747)
!1752 = !DILocation(line: 276, column: 49, scope: !1747)
!1753 = !DILocation(line: 276, column: 17, scope: !1747)
!1754 = !DILocation(line: 276, column: 21, scope: !1747)
!1755 = !DILocation(line: 276, column: 13, scope: !1747)
!1756 = !DILocation(line: 276, column: 26, scope: !1747)
!1757 = !DILocation(line: 277, column: 9, scope: !1747)
!1758 = !DILocation(line: 274, column: 29, scope: !1744)
!1759 = !DILocation(line: 274, column: 9, scope: !1744)
!1760 = distinct !{!1760, !1745, !1761}
!1761 = !DILocation(line: 277, column: 9, scope: !1740)
!1762 = !DILocation(line: 278, column: 5, scope: !1741)
!1763 = !DILocation(line: 272, column: 25, scope: !1737)
!1764 = !DILocation(line: 272, column: 5, scope: !1737)
!1765 = distinct !{!1765, !1738, !1766}
!1766 = !DILocation(line: 278, column: 5, scope: !1734)
!1767 = !DILocation(line: 279, column: 1, scope: !1722)
!1768 = distinct !DISubprogram(name: "matrix_sum", scope: !1620, file: !1620, line: 238, type: !1769, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!12, !23, !49, !46}
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780}
!1772 = !DILocalVariable(name: "N", arg: 1, scope: !1768, file: !1620, line: 238, type: !23)
!1773 = !DILocalVariable(name: "C", arg: 2, scope: !1768, file: !1620, line: 238, type: !49)
!1774 = !DILocalVariable(name: "clipval", arg: 3, scope: !1768, file: !1620, line: 238, type: !46)
!1775 = !DILocalVariable(name: "tmp", scope: !1768, file: !1620, line: 240, type: !50)
!1776 = !DILocalVariable(name: "prev", scope: !1768, file: !1620, line: 240, type: !50)
!1777 = !DILocalVariable(name: "cur", scope: !1768, file: !1620, line: 240, type: !50)
!1778 = !DILocalVariable(name: "ret", scope: !1768, file: !1620, line: 241, type: !12)
!1779 = !DILocalVariable(name: "i", scope: !1768, file: !1620, line: 242, type: !23)
!1780 = !DILocalVariable(name: "j", scope: !1768, file: !1620, line: 242, type: !23)
!1781 = !DILocation(line: 0, scope: !1768)
!1782 = !DILocation(line: 243, column: 10, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1768, file: !1620, line: 243, column: 5)
!1784 = !DILocation(line: 240, column: 21, scope: !1768)
!1785 = !DILocation(line: 240, column: 12, scope: !1768)
!1786 = !DILocation(line: 241, column: 12, scope: !1768)
!1787 = !DILocation(line: 0, scope: !1783)
!1788 = !DILocation(line: 243, column: 19, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1783, file: !1620, line: 243, column: 5)
!1790 = !DILocation(line: 243, column: 5, scope: !1783)
!1791 = !DILocation(line: 245, column: 14, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !1620, line: 245, column: 9)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !1620, line: 244, column: 5)
!1794 = !DILocation(line: 0, scope: !1792)
!1795 = !DILocation(line: 245, column: 23, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !1620, line: 245, column: 9)
!1797 = !DILocation(line: 245, column: 9, scope: !1792)
!1798 = !DILocation(line: 247, column: 23, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1796, file: !1620, line: 246, column: 9)
!1800 = !DILocation(line: 247, column: 27, scope: !1799)
!1801 = !DILocation(line: 247, column: 19, scope: !1799)
!1802 = !DILocation(line: 248, column: 17, scope: !1799)
!1803 = !DILocation(line: 249, column: 23, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !1620, line: 249, column: 17)
!1805 = !DILocation(line: 249, column: 21, scope: !1804)
!1806 = !DILocation(line: 249, column: 17, scope: !1799)
!1807 = !DILocation(line: 251, column: 21, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !1620, line: 250, column: 13)
!1809 = !DILocation(line: 253, column: 13, scope: !1808)
!1810 = !DILocation(line: 256, column: 29, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1804, file: !1620, line: 255, column: 13)
!1812 = !DILocation(line: 256, column: 24, scope: !1811)
!1813 = !DILocation(line: 256, column: 21, scope: !1811)
!1814 = !DILocation(line: 0, scope: !1799)
!1815 = !DILocation(line: 0, scope: !1804)
!1816 = !DILocation(line: 259, column: 9, scope: !1799)
!1817 = !DILocation(line: 245, column: 29, scope: !1796)
!1818 = !DILocation(line: 245, column: 9, scope: !1796)
!1819 = distinct !{!1819, !1797, !1820}
!1820 = !DILocation(line: 259, column: 9, scope: !1792)
!1821 = !DILocation(line: 260, column: 5, scope: !1793)
!1822 = !DILocation(line: 243, column: 25, scope: !1789)
!1823 = !DILocation(line: 243, column: 5, scope: !1789)
!1824 = distinct !{!1824, !1790, !1825}
!1825 = !DILocation(line: 260, column: 5, scope: !1783)
!1826 = !DILocation(line: 261, column: 5, scope: !1768)
!1827 = distinct !DISubprogram(name: "matrix_mul_vect", scope: !1620, file: !1620, line: 303, type: !1828, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !23, !49, !45, !45}
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836}
!1831 = !DILocalVariable(name: "N", arg: 1, scope: !1827, file: !1620, line: 303, type: !23)
!1832 = !DILocalVariable(name: "C", arg: 2, scope: !1827, file: !1620, line: 303, type: !49)
!1833 = !DILocalVariable(name: "A", arg: 3, scope: !1827, file: !1620, line: 303, type: !45)
!1834 = !DILocalVariable(name: "B", arg: 4, scope: !1827, file: !1620, line: 303, type: !45)
!1835 = !DILocalVariable(name: "i", scope: !1827, file: !1620, line: 305, type: !23)
!1836 = !DILocalVariable(name: "j", scope: !1827, file: !1620, line: 305, type: !23)
!1837 = !DILocation(line: 0, scope: !1827)
!1838 = !DILocation(line: 306, column: 10, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1827, file: !1620, line: 306, column: 5)
!1840 = !DILocation(line: 0, scope: !1839)
!1841 = !DILocation(line: 306, column: 19, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !1620, line: 306, column: 5)
!1843 = !DILocation(line: 306, column: 5, scope: !1839)
!1844 = !DILocation(line: 308, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !1620, line: 307, column: 5)
!1846 = !DILocation(line: 308, column: 14, scope: !1845)
!1847 = !DILocation(line: 309, column: 14, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !1620, line: 309, column: 9)
!1849 = !DILocation(line: 0, scope: !1848)
!1850 = !DILocation(line: 309, column: 23, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1848, file: !1620, line: 309, column: 9)
!1852 = !DILocation(line: 309, column: 9, scope: !1848)
!1853 = !DILocation(line: 311, column: 33, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !1620, line: 310, column: 9)
!1855 = !DILocation(line: 311, column: 37, scope: !1854)
!1856 = !DILocation(line: 311, column: 29, scope: !1854)
!1857 = !DILocation(line: 311, column: 21, scope: !1854)
!1858 = !DILocation(line: 311, column: 52, scope: !1854)
!1859 = !DILocation(line: 311, column: 44, scope: !1854)
!1860 = !DILocation(line: 311, column: 42, scope: !1854)
!1861 = !DILocation(line: 311, column: 13, scope: !1854)
!1862 = !DILocation(line: 311, column: 18, scope: !1854)
!1863 = !DILocation(line: 312, column: 9, scope: !1854)
!1864 = !DILocation(line: 309, column: 29, scope: !1851)
!1865 = !DILocation(line: 309, column: 9, scope: !1851)
!1866 = distinct !{!1866, !1852, !1867}
!1867 = !DILocation(line: 312, column: 9, scope: !1848)
!1868 = !DILocation(line: 313, column: 5, scope: !1845)
!1869 = !DILocation(line: 306, column: 25, scope: !1842)
!1870 = !DILocation(line: 306, column: 5, scope: !1842)
!1871 = distinct !{!1871, !1843, !1872}
!1872 = !DILocation(line: 313, column: 5, scope: !1839)
!1873 = !DILocation(line: 314, column: 1, scope: !1827)
!1874 = distinct !DISubprogram(name: "matrix_mul_matrix", scope: !1620, file: !1620, line: 322, type: !1828, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1875)
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1881, !1882}
!1876 = !DILocalVariable(name: "N", arg: 1, scope: !1874, file: !1620, line: 322, type: !23)
!1877 = !DILocalVariable(name: "C", arg: 2, scope: !1874, file: !1620, line: 322, type: !49)
!1878 = !DILocalVariable(name: "A", arg: 3, scope: !1874, file: !1620, line: 322, type: !45)
!1879 = !DILocalVariable(name: "B", arg: 4, scope: !1874, file: !1620, line: 322, type: !45)
!1880 = !DILocalVariable(name: "i", scope: !1874, file: !1620, line: 324, type: !23)
!1881 = !DILocalVariable(name: "j", scope: !1874, file: !1620, line: 324, type: !23)
!1882 = !DILocalVariable(name: "k", scope: !1874, file: !1620, line: 324, type: !23)
!1883 = !DILocation(line: 0, scope: !1874)
!1884 = !DILocation(line: 325, column: 10, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1874, file: !1620, line: 325, column: 5)
!1886 = !DILocation(line: 0, scope: !1885)
!1887 = !DILocation(line: 325, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !1620, line: 325, column: 5)
!1889 = !DILocation(line: 325, column: 5, scope: !1885)
!1890 = !DILocation(line: 327, column: 14, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !1620, line: 327, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !1620, line: 326, column: 5)
!1893 = !DILocation(line: 0, scope: !1891)
!1894 = !DILocation(line: 327, column: 23, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !1620, line: 327, column: 9)
!1896 = !DILocation(line: 327, column: 9, scope: !1891)
!1897 = !DILocation(line: 329, column: 17, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !1620, line: 328, column: 9)
!1899 = !DILocation(line: 329, column: 21, scope: !1898)
!1900 = !DILocation(line: 329, column: 13, scope: !1898)
!1901 = !DILocation(line: 329, column: 26, scope: !1898)
!1902 = !DILocation(line: 330, column: 18, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !1620, line: 330, column: 13)
!1904 = !DILocation(line: 0, scope: !1903)
!1905 = !DILocation(line: 330, column: 27, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !1620, line: 330, column: 13)
!1907 = !DILocation(line: 330, column: 13, scope: !1903)
!1908 = !DILocation(line: 332, column: 45, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !1620, line: 331, column: 13)
!1910 = !DILocation(line: 332, column: 49, scope: !1909)
!1911 = !DILocation(line: 332, column: 41, scope: !1909)
!1912 = !DILocation(line: 332, column: 33, scope: !1909)
!1913 = !DILocation(line: 332, column: 68, scope: !1909)
!1914 = !DILocation(line: 332, column: 72, scope: !1909)
!1915 = !DILocation(line: 332, column: 64, scope: !1909)
!1916 = !DILocation(line: 332, column: 56, scope: !1909)
!1917 = !DILocation(line: 332, column: 54, scope: !1909)
!1918 = !DILocation(line: 332, column: 21, scope: !1909)
!1919 = !DILocation(line: 332, column: 25, scope: !1909)
!1920 = !DILocation(line: 332, column: 17, scope: !1909)
!1921 = !DILocation(line: 332, column: 30, scope: !1909)
!1922 = !DILocation(line: 333, column: 13, scope: !1909)
!1923 = !DILocation(line: 330, column: 33, scope: !1906)
!1924 = !DILocation(line: 330, column: 13, scope: !1906)
!1925 = distinct !{!1925, !1907, !1926}
!1926 = !DILocation(line: 333, column: 13, scope: !1903)
!1927 = !DILocation(line: 334, column: 9, scope: !1898)
!1928 = !DILocation(line: 327, column: 29, scope: !1895)
!1929 = !DILocation(line: 327, column: 9, scope: !1895)
!1930 = distinct !{!1930, !1896, !1931}
!1931 = !DILocation(line: 334, column: 9, scope: !1891)
!1932 = !DILocation(line: 335, column: 5, scope: !1892)
!1933 = !DILocation(line: 325, column: 25, scope: !1888)
!1934 = !DILocation(line: 325, column: 5, scope: !1888)
!1935 = distinct !{!1935, !1889, !1936}
!1936 = !DILocation(line: 335, column: 5, scope: !1885)
!1937 = !DILocation(line: 336, column: 1, scope: !1874)
!1938 = distinct !DISubprogram(name: "matrix_mul_matrix_bitextract", scope: !1620, file: !1620, line: 344, type: !1828, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1939)
!1939 = !{!1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1940 = !DILocalVariable(name: "N", arg: 1, scope: !1938, file: !1620, line: 344, type: !23)
!1941 = !DILocalVariable(name: "C", arg: 2, scope: !1938, file: !1620, line: 344, type: !49)
!1942 = !DILocalVariable(name: "A", arg: 3, scope: !1938, file: !1620, line: 344, type: !45)
!1943 = !DILocalVariable(name: "B", arg: 4, scope: !1938, file: !1620, line: 344, type: !45)
!1944 = !DILocalVariable(name: "i", scope: !1938, file: !1620, line: 346, type: !23)
!1945 = !DILocalVariable(name: "j", scope: !1938, file: !1620, line: 346, type: !23)
!1946 = !DILocalVariable(name: "k", scope: !1938, file: !1620, line: 346, type: !23)
!1947 = !DILocalVariable(name: "tmp", scope: !1948, file: !1620, line: 354, type: !50)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !1620, line: 353, column: 13)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !1620, line: 352, column: 13)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !1620, line: 352, column: 13)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !1620, line: 350, column: 9)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !1620, line: 349, column: 9)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1620, line: 349, column: 9)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !1620, line: 348, column: 5)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !1620, line: 347, column: 5)
!1956 = distinct !DILexicalBlock(scope: !1938, file: !1620, line: 347, column: 5)
!1957 = !DILocation(line: 0, scope: !1938)
!1958 = !DILocation(line: 347, column: 10, scope: !1956)
!1959 = !DILocation(line: 0, scope: !1956)
!1960 = !DILocation(line: 347, column: 19, scope: !1955)
!1961 = !DILocation(line: 347, column: 5, scope: !1956)
!1962 = !DILocation(line: 349, column: 14, scope: !1953)
!1963 = !DILocation(line: 0, scope: !1953)
!1964 = !DILocation(line: 349, column: 23, scope: !1952)
!1965 = !DILocation(line: 349, column: 9, scope: !1953)
!1966 = !DILocation(line: 351, column: 17, scope: !1951)
!1967 = !DILocation(line: 351, column: 21, scope: !1951)
!1968 = !DILocation(line: 351, column: 13, scope: !1951)
!1969 = !DILocation(line: 351, column: 26, scope: !1951)
!1970 = !DILocation(line: 352, column: 18, scope: !1950)
!1971 = !DILocation(line: 0, scope: !1950)
!1972 = !DILocation(line: 352, column: 27, scope: !1949)
!1973 = !DILocation(line: 352, column: 13, scope: !1950)
!1974 = !DILocation(line: 354, column: 42, scope: !1948)
!1975 = !DILocation(line: 354, column: 46, scope: !1948)
!1976 = !DILocation(line: 354, column: 38, scope: !1948)
!1977 = !DILocation(line: 354, column: 30, scope: !1948)
!1978 = !DILocation(line: 354, column: 65, scope: !1948)
!1979 = !DILocation(line: 354, column: 69, scope: !1948)
!1980 = !DILocation(line: 354, column: 61, scope: !1948)
!1981 = !DILocation(line: 354, column: 53, scope: !1948)
!1982 = !DILocation(line: 354, column: 51, scope: !1948)
!1983 = !DILocation(line: 0, scope: !1948)
!1984 = !DILocation(line: 355, column: 33, scope: !1948)
!1985 = !DILocation(line: 355, column: 58, scope: !1948)
!1986 = !DILocation(line: 355, column: 56, scope: !1948)
!1987 = !DILocation(line: 355, column: 21, scope: !1948)
!1988 = !DILocation(line: 355, column: 25, scope: !1948)
!1989 = !DILocation(line: 355, column: 17, scope: !1948)
!1990 = !DILocation(line: 355, column: 30, scope: !1948)
!1991 = !DILocation(line: 356, column: 13, scope: !1948)
!1992 = !DILocation(line: 352, column: 33, scope: !1949)
!1993 = !DILocation(line: 352, column: 13, scope: !1949)
!1994 = distinct !{!1994, !1973, !1995}
!1995 = !DILocation(line: 356, column: 13, scope: !1950)
!1996 = !DILocation(line: 357, column: 9, scope: !1951)
!1997 = !DILocation(line: 349, column: 29, scope: !1952)
!1998 = !DILocation(line: 349, column: 9, scope: !1952)
!1999 = distinct !{!1999, !1965, !2000}
!2000 = !DILocation(line: 357, column: 9, scope: !1953)
!2001 = !DILocation(line: 358, column: 5, scope: !1954)
!2002 = !DILocation(line: 347, column: 25, scope: !1955)
!2003 = !DILocation(line: 347, column: 5, scope: !1955)
!2004 = distinct !{!2004, !1961, !2005}
!2005 = !DILocation(line: 358, column: 5, scope: !1956)
!2006 = !DILocation(line: 359, column: 1, scope: !1938)
!2007 = distinct !DISubprogram(name: "core_init_matrix", scope: !1620, file: !1620, line: 181, type: !2008, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!23, !23, !19, !51, !1623}
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021}
!2011 = !DILocalVariable(name: "blksize", arg: 1, scope: !2007, file: !1620, line: 181, type: !23)
!2012 = !DILocalVariable(name: "memblk", arg: 2, scope: !2007, file: !1620, line: 181, type: !19)
!2013 = !DILocalVariable(name: "seed", arg: 3, scope: !2007, file: !1620, line: 181, type: !51)
!2014 = !DILocalVariable(name: "p", arg: 4, scope: !2007, file: !1620, line: 181, type: !1623)
!2015 = !DILocalVariable(name: "N", scope: !2007, file: !1620, line: 183, type: !23)
!2016 = !DILocalVariable(name: "A", scope: !2007, file: !1620, line: 184, type: !45)
!2017 = !DILocalVariable(name: "B", scope: !2007, file: !1620, line: 185, type: !45)
!2018 = !DILocalVariable(name: "order", scope: !2007, file: !1620, line: 186, type: !51)
!2019 = !DILocalVariable(name: "val", scope: !2007, file: !1620, line: 187, type: !46)
!2020 = !DILocalVariable(name: "i", scope: !2007, file: !1620, line: 188, type: !23)
!2021 = !DILocalVariable(name: "j", scope: !2007, file: !1620, line: 188, type: !23)
!2022 = !DILocation(line: 0, scope: !2007)
!2023 = !DILocation(line: 189, column: 14, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2007, file: !1620, line: 189, column: 9)
!2025 = !DILocation(line: 189, column: 9, scope: !2007)
!2026 = !DILocation(line: 190, column: 9, scope: !2024)
!2027 = !DILocation(line: 191, column: 5, scope: !2007)
!2028 = !DILocation(line: 191, column: 14, scope: !2007)
!2029 = !DILocation(line: 193, column: 10, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2007, file: !1620, line: 192, column: 5)
!2031 = !DILocation(line: 194, column: 15, scope: !2030)
!2032 = !DILocation(line: 194, column: 19, scope: !2030)
!2033 = !DILocation(line: 194, column: 23, scope: !2030)
!2034 = distinct !{!2034, !2027, !2035}
!2035 = !DILocation(line: 195, column: 5, scope: !2007)
!2036 = !DILocation(line: 196, column: 11, scope: !2007)
!2037 = !DILocation(line: 197, column: 19, scope: !2007)
!2038 = !DILocation(line: 197, column: 9, scope: !2007)
!2039 = !DILocation(line: 198, column: 15, scope: !2007)
!2040 = !DILocation(line: 198, column: 11, scope: !2007)
!2041 = !DILocation(line: 200, column: 10, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2007, file: !1620, line: 200, column: 5)
!2043 = !DILocation(line: 186, column: 13, scope: !2007)
!2044 = !DILocation(line: 190, column: 14, scope: !2024)
!2045 = !DILocation(line: 0, scope: !2042)
!2046 = !DILocation(line: 200, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !1620, line: 200, column: 5)
!2048 = !DILocation(line: 200, column: 5, scope: !2042)
!2049 = !DILocation(line: 202, column: 14, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !1620, line: 202, column: 9)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !1620, line: 201, column: 5)
!2052 = !DILocation(line: 0, scope: !2050)
!2053 = !DILocation(line: 202, column: 23, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !1620, line: 202, column: 9)
!2055 = !DILocation(line: 202, column: 9, scope: !2050)
!2056 = !DILocation(line: 204, column: 36, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !1620, line: 203, column: 9)
!2058 = !DILocation(line: 204, column: 44, scope: !2057)
!2059 = !DILocation(line: 205, column: 34, scope: !2057)
!2060 = !DILocation(line: 205, column: 28, scope: !2057)
!2061 = !DILocation(line: 206, column: 28, scope: !2057)
!2062 = !DILocation(line: 207, column: 17, scope: !2057)
!2063 = !DILocation(line: 207, column: 21, scope: !2057)
!2064 = !DILocation(line: 207, column: 13, scope: !2057)
!2065 = !DILocation(line: 207, column: 26, scope: !2057)
!2066 = !DILocation(line: 208, column: 29, scope: !2057)
!2067 = !DILocation(line: 208, column: 33, scope: !2057)
!2068 = !DILocation(line: 208, column: 28, scope: !2057)
!2069 = !DILocation(line: 209, column: 28, scope: !2057)
!2070 = !DILocation(line: 210, column: 17, scope: !2057)
!2071 = !DILocation(line: 210, column: 21, scope: !2057)
!2072 = !DILocation(line: 210, column: 13, scope: !2057)
!2073 = !DILocation(line: 210, column: 26, scope: !2057)
!2074 = !DILocation(line: 211, column: 18, scope: !2057)
!2075 = !DILocation(line: 212, column: 9, scope: !2057)
!2076 = !DILocation(line: 202, column: 29, scope: !2054)
!2077 = !DILocation(line: 202, column: 9, scope: !2054)
!2078 = distinct !{!2078, !2055, !2079}
!2079 = !DILocation(line: 212, column: 9, scope: !2050)
!2080 = !DILocation(line: 213, column: 5, scope: !2051)
!2081 = !DILocation(line: 200, column: 25, scope: !2047)
!2082 = !DILocation(line: 200, column: 5, scope: !2047)
!2083 = distinct !{!2083, !2048, !2084}
!2084 = !DILocation(line: 213, column: 5, scope: !2042)
!2085 = !DILocation(line: 215, column: 8, scope: !2007)
!2086 = !DILocation(line: 215, column: 10, scope: !2007)
!2087 = !DILocation(line: 216, column: 8, scope: !2007)
!2088 = !DILocation(line: 216, column: 10, scope: !2007)
!2089 = !DILocation(line: 217, column: 22, scope: !2007)
!2090 = !DILocation(line: 217, column: 12, scope: !2007)
!2091 = !DILocation(line: 217, column: 8, scope: !2007)
!2092 = !DILocation(line: 217, column: 10, scope: !2007)
!2093 = !DILocation(line: 218, column: 8, scope: !2007)
!2094 = !DILocation(line: 218, column: 10, scope: !2007)
!2095 = !DILocation(line: 223, column: 5, scope: !2007)
!2096 = distinct !DISubprogram(name: "core_bench_state", scope: !105, file: !105, line: 46, type: !2097, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!53, !23, !107, !12, !12, !12, !53}
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2105, !2106, !2110, !2111, !2112, !2113, !2115}
!2100 = !DILocalVariable(name: "blksize", arg: 1, scope: !2096, file: !105, line: 46, type: !23)
!2101 = !DILocalVariable(name: "memblock", arg: 2, scope: !2096, file: !105, line: 47, type: !107)
!2102 = !DILocalVariable(name: "seed1", arg: 3, scope: !2096, file: !105, line: 48, type: !12)
!2103 = !DILocalVariable(name: "seed2", arg: 4, scope: !2096, file: !105, line: 49, type: !12)
!2104 = !DILocalVariable(name: "step", arg: 5, scope: !2096, file: !105, line: 50, type: !12)
!2105 = !DILocalVariable(name: "crc", arg: 6, scope: !2096, file: !105, line: 51, type: !53)
!2106 = !DILocalVariable(name: "final_counts", scope: !2096, file: !105, line: 53, type: !2107)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !2108)
!2108 = !{!2109}
!2109 = !DISubrange(count: 8)
!2110 = !DILocalVariable(name: "track_counts", scope: !2096, file: !105, line: 54, type: !2107)
!2111 = !DILocalVariable(name: "p", scope: !2096, file: !105, line: 55, type: !107)
!2112 = !DILocalVariable(name: "i", scope: !2096, file: !105, line: 56, type: !23)
!2113 = !DILocalVariable(name: "fstate", scope: !2114, file: !105, line: 68, type: !90)
!2114 = distinct !DILexicalBlock(scope: !2096, file: !105, line: 67, column: 5)
!2115 = !DILocalVariable(name: "fstate", scope: !2116, file: !105, line: 88, type: !90)
!2116 = distinct !DILexicalBlock(scope: !2096, file: !105, line: 87, column: 5)
!2117 = !DILocation(line: 0, scope: !2096)
!2118 = !DILocation(line: 53, column: 5, scope: !2096)
!2119 = !DILocation(line: 53, column: 12, scope: !2096)
!2120 = !DILocation(line: 54, column: 5, scope: !2096)
!2121 = !DILocation(line: 54, column: 12, scope: !2096)
!2122 = !DILocation(line: 55, column: 5, scope: !2096)
!2123 = !DILocation(line: 55, column: 12, scope: !2096)
!2124 = !DILocation(line: 61, column: 10, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2096, file: !105, line: 61, column: 5)
!2126 = !DILocation(line: 0, scope: !2125)
!2127 = !DILocation(line: 61, column: 19, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !105, line: 61, column: 5)
!2129 = !DILocation(line: 61, column: 5, scope: !2125)
!2130 = !DILocation(line: 63, column: 27, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2128, file: !105, line: 62, column: 5)
!2132 = !DILocation(line: 63, column: 43, scope: !2131)
!2133 = !DILocation(line: 63, column: 9, scope: !2131)
!2134 = !DILocation(line: 63, column: 25, scope: !2131)
!2135 = !DILocation(line: 64, column: 5, scope: !2131)
!2136 = !DILocation(line: 61, column: 39, scope: !2128)
!2137 = !DILocation(line: 61, column: 5, scope: !2128)
!2138 = distinct !{!2138, !2129, !2139}
!2139 = !DILocation(line: 64, column: 5, scope: !2125)
!2140 = !DILocation(line: 66, column: 5, scope: !2096)
!2141 = !DILocation(line: 66, column: 13, scope: !2096)
!2142 = !DILocation(line: 66, column: 12, scope: !2096)
!2143 = !{!296, !296, i64 0}
!2144 = !DILocation(line: 66, column: 15, scope: !2096)
!2145 = !DILocation(line: 68, column: 60, scope: !2114)
!2146 = !DILocation(line: 68, column: 34, scope: !2114)
!2147 = !DILocation(line: 0, scope: !2114)
!2148 = !DILocation(line: 69, column: 9, scope: !2114)
!2149 = !DILocation(line: 69, column: 29, scope: !2114)
!2150 = distinct !{!2150, !2140, !2151}
!2151 = !DILocation(line: 75, column: 5, scope: !2096)
!2152 = !DILocation(line: 77, column: 7, scope: !2096)
!2153 = !DILocation(line: 78, column: 5, scope: !2096)
!2154 = !DILocation(line: 78, column: 12, scope: !2096)
!2155 = !DILocation(line: 78, column: 26, scope: !2096)
!2156 = !DILocation(line: 78, column: 14, scope: !2096)
!2157 = !DILocation(line: 80, column: 14, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !105, line: 80, column: 13)
!2159 = distinct !DILexicalBlock(scope: !2096, file: !105, line: 79, column: 5)
!2160 = !DILocation(line: 80, column: 13, scope: !2158)
!2161 = !DILocation(line: 80, column: 16, scope: !2158)
!2162 = !DILocation(line: 80, column: 13, scope: !2159)
!2163 = !DILocation(line: 81, column: 19, scope: !2158)
!2164 = !DILocation(line: 81, column: 14, scope: !2158)
!2165 = !DILocation(line: 81, column: 16, scope: !2158)
!2166 = !DILocation(line: 81, column: 13, scope: !2158)
!2167 = !DILocation(line: 82, column: 14, scope: !2159)
!2168 = !DILocation(line: 82, column: 11, scope: !2159)
!2169 = distinct !{!2169, !2153, !2170}
!2170 = !DILocation(line: 83, column: 5, scope: !2096)
!2171 = !DILocation(line: 84, column: 7, scope: !2096)
!2172 = !DILocation(line: 86, column: 5, scope: !2096)
!2173 = !DILocation(line: 86, column: 13, scope: !2096)
!2174 = !DILocation(line: 86, column: 12, scope: !2096)
!2175 = !DILocation(line: 86, column: 15, scope: !2096)
!2176 = !DILocation(line: 88, column: 60, scope: !2116)
!2177 = !DILocation(line: 88, column: 34, scope: !2116)
!2178 = !DILocation(line: 0, scope: !2116)
!2179 = !DILocation(line: 89, column: 9, scope: !2116)
!2180 = !DILocation(line: 89, column: 29, scope: !2116)
!2181 = distinct !{!2181, !2172, !2182}
!2182 = !DILocation(line: 95, column: 5, scope: !2096)
!2183 = !DILocation(line: 97, column: 7, scope: !2096)
!2184 = !DILocation(line: 98, column: 5, scope: !2096)
!2185 = !DILocation(line: 98, column: 12, scope: !2096)
!2186 = !DILocation(line: 98, column: 26, scope: !2096)
!2187 = !DILocation(line: 98, column: 14, scope: !2096)
!2188 = !DILocation(line: 100, column: 14, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !105, line: 100, column: 13)
!2190 = distinct !DILexicalBlock(scope: !2096, file: !105, line: 99, column: 5)
!2191 = !DILocation(line: 100, column: 13, scope: !2189)
!2192 = !DILocation(line: 100, column: 16, scope: !2189)
!2193 = !DILocation(line: 100, column: 13, scope: !2190)
!2194 = !DILocation(line: 101, column: 19, scope: !2189)
!2195 = !DILocation(line: 101, column: 14, scope: !2189)
!2196 = !DILocation(line: 101, column: 16, scope: !2189)
!2197 = !DILocation(line: 101, column: 13, scope: !2189)
!2198 = !DILocation(line: 102, column: 14, scope: !2190)
!2199 = !DILocation(line: 102, column: 11, scope: !2190)
!2200 = distinct !{!2200, !2184, !2201}
!2201 = !DILocation(line: 103, column: 5, scope: !2096)
!2202 = !DILocation(line: 105, column: 10, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2096, file: !105, line: 105, column: 5)
!2204 = !DILocation(line: 0, scope: !2203)
!2205 = !DILocation(line: 105, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !105, line: 105, column: 5)
!2207 = !DILocation(line: 105, column: 5, scope: !2203)
!2208 = !DILocation(line: 107, column: 22, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !105, line: 106, column: 5)
!2210 = !DILocation(line: 107, column: 15, scope: !2209)
!2211 = !DILocation(line: 108, column: 22, scope: !2209)
!2212 = !DILocation(line: 108, column: 15, scope: !2209)
!2213 = !DILocation(line: 109, column: 5, scope: !2209)
!2214 = !DILocation(line: 105, column: 39, scope: !2206)
!2215 = !DILocation(line: 105, column: 5, scope: !2206)
!2216 = distinct !{!2216, !2207, !2217}
!2217 = !DILocation(line: 109, column: 5, scope: !2203)
!2218 = !DILocation(line: 111, column: 1, scope: !2096)
!2219 = !DILocation(line: 110, column: 5, scope: !2096)
!2220 = distinct !DISubprogram(name: "core_state_transition", scope: !105, file: !105, line: 217, type: !2221, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2225)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!90, !2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!2225 = !{!2226, !2227, !2228, !2229, !2230}
!2226 = !DILocalVariable(name: "instr", arg: 1, scope: !2220, file: !105, line: 217, type: !2223)
!2227 = !DILocalVariable(name: "transition_count", arg: 2, scope: !2220, file: !105, line: 217, type: !2224)
!2228 = !DILocalVariable(name: "str", scope: !2220, file: !105, line: 219, type: !107)
!2229 = !DILocalVariable(name: "NEXT_SYMBOL", scope: !2220, file: !105, line: 220, type: !64)
!2230 = !DILocalVariable(name: "state", scope: !2220, file: !105, line: 221, type: !90)
!2231 = !DILocation(line: 0, scope: !2220)
!2232 = !DILocation(line: 219, column: 27, scope: !2220)
!2233 = !DILocation(line: 222, column: 5, scope: !2220)
!2234 = !DILocation(line: 221, column: 21, scope: !2220)
!2235 = !DILocation(line: 222, column: 12, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !105, line: 222, column: 5)
!2237 = distinct !DILexicalBlock(scope: !2220, file: !105, line: 222, column: 5)
!2238 = !DILocation(line: 222, column: 17, scope: !2236)
!2239 = !DILocation(line: 222, column: 26, scope: !2236)
!2240 = !DILocation(line: 0, scope: !2236)
!2241 = !DILocation(line: 222, column: 5, scope: !2237)
!2242 = !DILocation(line: 224, column: 23, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2236, file: !105, line: 223, column: 5)
!2244 = !DILocation(line: 225, column: 13, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2243, file: !105, line: 225, column: 13)
!2246 = !DILocation(line: 225, column: 25, scope: !2245)
!2247 = !DILocation(line: 225, column: 13, scope: !2243)
!2248 = !DILocation(line: 227, column: 16, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2245, file: !105, line: 226, column: 9)
!2250 = !DILocation(line: 228, column: 13, scope: !2249)
!2251 = !DILocation(line: 233, column: 21, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !105, line: 233, column: 21)
!2253 = distinct !DILexicalBlock(scope: !2243, file: !105, line: 231, column: 9)
!2254 = !DILocation(line: 233, column: 21, scope: !2253)
!2255 = !DILocation(line: 236, column: 17, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !105, line: 234, column: 17)
!2257 = !DILocation(line: 237, column: 26, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2252, file: !105, line: 237, column: 26)
!2259 = !DILocation(line: 237, column: 38, scope: !2258)
!2260 = !DILocation(line: 237, column: 45, scope: !2258)
!2261 = !DILocation(line: 237, column: 48, scope: !2258)
!2262 = !DILocation(line: 237, column: 60, scope: !2258)
!2263 = !DILocation(line: 237, column: 26, scope: !2252)
!2264 = !DILocation(line: 240, column: 17, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2258, file: !105, line: 238, column: 17)
!2266 = !DILocation(line: 241, column: 26, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2258, file: !105, line: 241, column: 26)
!2268 = !DILocation(line: 241, column: 38, scope: !2267)
!2269 = !DILocation(line: 241, column: 26, scope: !2258)
!2270 = !DILocation(line: 244, column: 17, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !105, line: 242, column: 17)
!2272 = !DILocation(line: 248, column: 21, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2267, file: !105, line: 246, column: 17)
!2274 = !DILocation(line: 248, column: 51, scope: !2273)
!2275 = !DILocation(line: 0, scope: !2267)
!2276 = !DILocation(line: 0, scope: !2258)
!2277 = !DILocation(line: 0, scope: !2252)
!2278 = !DILocation(line: 250, column: 17, scope: !2253)
!2279 = !DILocation(line: 250, column: 45, scope: !2253)
!2280 = !DILocation(line: 251, column: 17, scope: !2253)
!2281 = !DILocation(line: 253, column: 21, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2253, file: !105, line: 253, column: 21)
!2283 = !DILocation(line: 253, column: 21, scope: !2253)
!2284 = !DILocation(line: 256, column: 21, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !105, line: 254, column: 17)
!2286 = !DILocation(line: 256, column: 46, scope: !2285)
!2287 = !DILocation(line: 257, column: 17, scope: !2285)
!2288 = !DILocation(line: 258, column: 26, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !105, line: 258, column: 26)
!2290 = !DILocation(line: 258, column: 38, scope: !2289)
!2291 = !DILocation(line: 258, column: 26, scope: !2282)
!2292 = !DILocation(line: 261, column: 21, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !105, line: 259, column: 17)
!2294 = !DILocation(line: 261, column: 46, scope: !2293)
!2295 = !DILocation(line: 262, column: 17, scope: !2293)
!2296 = !DILocation(line: 266, column: 21, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2289, file: !105, line: 264, column: 17)
!2298 = !DILocation(line: 266, column: 46, scope: !2297)
!2299 = !DILocation(line: 0, scope: !2289)
!2300 = !DILocation(line: 0, scope: !2282)
!2301 = !DILocation(line: 268, column: 17, scope: !2253)
!2302 = !DILocation(line: 270, column: 21, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2253, file: !105, line: 270, column: 21)
!2304 = !DILocation(line: 270, column: 33, scope: !2303)
!2305 = !DILocation(line: 270, column: 21, scope: !2253)
!2306 = !DILocation(line: 273, column: 21, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !105, line: 271, column: 17)
!2308 = !DILocation(line: 273, column: 47, scope: !2307)
!2309 = !DILocation(line: 274, column: 17, scope: !2307)
!2310 = !DILocation(line: 275, column: 27, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2303, file: !105, line: 275, column: 26)
!2312 = !DILocation(line: 275, column: 26, scope: !2303)
!2313 = !DILocation(line: 278, column: 21, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !105, line: 276, column: 17)
!2315 = !DILocation(line: 278, column: 47, scope: !2314)
!2316 = !DILocation(line: 279, column: 17, scope: !2314)
!2317 = !DILocation(line: 280, column: 17, scope: !2253)
!2318 = !DILocation(line: 282, column: 21, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2253, file: !105, line: 282, column: 21)
!2320 = !DILocation(line: 282, column: 33, scope: !2319)
!2321 = !DILocation(line: 282, column: 40, scope: !2319)
!2322 = !DILocation(line: 282, column: 43, scope: !2319)
!2323 = !DILocation(line: 282, column: 55, scope: !2319)
!2324 = !DILocation(line: 282, column: 21, scope: !2253)
!2325 = !DILocation(line: 285, column: 21, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2319, file: !105, line: 283, column: 17)
!2327 = !DILocation(line: 285, column: 49, scope: !2326)
!2328 = !DILocation(line: 286, column: 17, scope: !2326)
!2329 = !DILocation(line: 287, column: 27, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2319, file: !105, line: 287, column: 26)
!2331 = !DILocation(line: 287, column: 26, scope: !2319)
!2332 = !DILocation(line: 290, column: 21, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !105, line: 288, column: 17)
!2334 = !DILocation(line: 290, column: 49, scope: !2333)
!2335 = !DILocation(line: 291, column: 17, scope: !2333)
!2336 = !DILocation(line: 292, column: 17, scope: !2253)
!2337 = !DILocation(line: 294, column: 21, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2253, file: !105, line: 294, column: 21)
!2339 = !DILocation(line: 294, column: 33, scope: !2338)
!2340 = !DILocation(line: 294, column: 40, scope: !2338)
!2341 = !DILocation(line: 294, column: 43, scope: !2338)
!2342 = !DILocation(line: 294, column: 55, scope: !2338)
!2343 = !DILocation(line: 294, column: 21, scope: !2253)
!2344 = !DILocation(line: 297, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2338, file: !105, line: 295, column: 17)
!2346 = !DILocation(line: 297, column: 46, scope: !2345)
!2347 = !DILocation(line: 298, column: 17, scope: !2345)
!2348 = !DILocation(line: 302, column: 21, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2338, file: !105, line: 300, column: 17)
!2350 = !DILocation(line: 302, column: 46, scope: !2349)
!2351 = !DILocation(line: 0, scope: !2338)
!2352 = !DILocation(line: 304, column: 17, scope: !2253)
!2353 = !DILocation(line: 306, column: 21, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2253, file: !105, line: 306, column: 21)
!2355 = !DILocation(line: 306, column: 21, scope: !2253)
!2356 = !DILocation(line: 309, column: 21, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !105, line: 307, column: 17)
!2358 = !DILocation(line: 309, column: 52, scope: !2357)
!2359 = !DILocation(line: 310, column: 17, scope: !2357)
!2360 = !DILocation(line: 314, column: 21, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2354, file: !105, line: 312, column: 17)
!2362 = !DILocation(line: 314, column: 52, scope: !2361)
!2363 = !DILocation(line: 0, scope: !2354)
!2364 = !DILocation(line: 316, column: 17, scope: !2253)
!2365 = !DILocation(line: 318, column: 22, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2253, file: !105, line: 318, column: 21)
!2367 = !DILocation(line: 318, column: 21, scope: !2253)
!2368 = !DILocation(line: 321, column: 21, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !105, line: 319, column: 17)
!2370 = !DILocation(line: 321, column: 51, scope: !2369)
!2371 = !DILocation(line: 322, column: 17, scope: !2369)
!2372 = !DILocation(line: 323, column: 17, scope: !2253)
!2373 = !DILocation(line: 325, column: 17, scope: !2253)
!2374 = !DILocation(line: 327, column: 5, scope: !2243)
!2375 = !DILocation(line: 222, column: 46, scope: !2236)
!2376 = !DILocation(line: 222, column: 5, scope: !2236)
!2377 = distinct !{!2377, !2241, !2378}
!2378 = !DILocation(line: 327, column: 5, scope: !2237)
!2379 = !DILocation(line: 328, column: 12, scope: !2220)
!2380 = !DILocation(line: 329, column: 5, scope: !2220)
!2381 = distinct !DISubprogram(name: "ee_isdigit", scope: !105, file: !105, line: 198, type: !2382, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!64, !64}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "c", arg: 1, scope: !2381, file: !105, line: 198, type: !64)
!2386 = !DILocalVariable(name: "retval", scope: !2381, file: !105, line: 200, type: !64)
!2387 = !DILocation(line: 0, scope: !2381)
!2388 = !DILocation(line: 201, column: 16, scope: !2381)
!2389 = !DILocation(line: 201, column: 18, scope: !2381)
!2390 = !DILocation(line: 201, column: 29, scope: !2381)
!2391 = !DILocation(line: 201, column: 31, scope: !2381)
!2392 = !DILocation(line: 201, column: 26, scope: !2381)
!2393 = !DILocation(line: 201, column: 14, scope: !2381)
!2394 = !DILocation(line: 202, column: 5, scope: !2381)
!2395 = distinct !DISubprogram(name: "core_init_state", scope: !105, file: !105, line: 140, type: !2396, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !23, !12, !107}
!2398 = !{!2399, !2400, !2401, !2402, !2403, !2404, !2405}
!2399 = !DILocalVariable(name: "size", arg: 1, scope: !2395, file: !105, line: 140, type: !23)
!2400 = !DILocalVariable(name: "seed", arg: 2, scope: !2395, file: !105, line: 140, type: !12)
!2401 = !DILocalVariable(name: "p", arg: 3, scope: !2395, file: !105, line: 140, type: !107)
!2402 = !DILocalVariable(name: "total", scope: !2395, file: !105, line: 142, type: !23)
!2403 = !DILocalVariable(name: "next", scope: !2395, file: !105, line: 142, type: !23)
!2404 = !DILocalVariable(name: "i", scope: !2395, file: !105, line: 142, type: !23)
!2405 = !DILocalVariable(name: "buf", scope: !2395, file: !105, line: 143, type: !107)
!2406 = !DILocation(line: 0, scope: !2395)
!2407 = !DILocation(line: 148, column: 9, scope: !2395)
!2408 = !DILocation(line: 150, column: 5, scope: !2395)
!2409 = !DILocation(line: 149, column: 10, scope: !2395)
!2410 = !DILocation(line: 143, column: 12, scope: !2395)
!2411 = !DILocation(line: 150, column: 19, scope: !2395)
!2412 = !DILocation(line: 150, column: 26, scope: !2395)
!2413 = !DILocation(line: 150, column: 31, scope: !2395)
!2414 = !DILocation(line: 152, column: 18, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !105, line: 152, column: 13)
!2416 = distinct !DILexicalBlock(scope: !2395, file: !105, line: 151, column: 5)
!2417 = !DILocation(line: 152, column: 13, scope: !2416)
!2418 = !DILocation(line: 154, column: 18, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !105, line: 154, column: 13)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !105, line: 153, column: 9)
!2421 = !DILocation(line: 0, scope: !2419)
!2422 = !DILocation(line: 154, column: 27, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !105, line: 154, column: 13)
!2424 = !DILocation(line: 154, column: 13, scope: !2419)
!2425 = !DILocation(line: 155, column: 36, scope: !2423)
!2426 = !DILocation(line: 155, column: 21, scope: !2423)
!2427 = !DILocation(line: 155, column: 29, scope: !2423)
!2428 = !DILocation(line: 155, column: 34, scope: !2423)
!2429 = !DILocation(line: 155, column: 17, scope: !2423)
!2430 = !DILocation(line: 154, column: 36, scope: !2423)
!2431 = !DILocation(line: 154, column: 13, scope: !2423)
!2432 = distinct !{!2432, !2424, !2433}
!2433 = !DILocation(line: 155, column: 41, scope: !2419)
!2434 = !DILocation(line: 156, column: 17, scope: !2420)
!2435 = !DILocation(line: 156, column: 25, scope: !2420)
!2436 = !DILocation(line: 156, column: 30, scope: !2420)
!2437 = !DILocation(line: 157, column: 27, scope: !2420)
!2438 = !DILocation(line: 157, column: 19, scope: !2420)
!2439 = !DILocation(line: 158, column: 9, scope: !2420)
!2440 = !DILocation(line: 159, column: 13, scope: !2416)
!2441 = !DILocation(line: 160, column: 17, scope: !2416)
!2442 = !DILocation(line: 160, column: 22, scope: !2416)
!2443 = !DILocation(line: 165, column: 32, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2416, file: !105, line: 161, column: 9)
!2445 = !DILocation(line: 165, column: 37, scope: !2444)
!2446 = !DILocation(line: 165, column: 43, scope: !2444)
!2447 = !DILocation(line: 165, column: 24, scope: !2444)
!2448 = !DILocation(line: 167, column: 17, scope: !2444)
!2449 = !DILocation(line: 170, column: 34, scope: !2444)
!2450 = !DILocation(line: 170, column: 39, scope: !2444)
!2451 = !DILocation(line: 170, column: 45, scope: !2444)
!2452 = !DILocation(line: 170, column: 24, scope: !2444)
!2453 = !DILocation(line: 172, column: 17, scope: !2444)
!2454 = !DILocation(line: 175, column: 32, scope: !2444)
!2455 = !DILocation(line: 175, column: 37, scope: !2444)
!2456 = !DILocation(line: 175, column: 43, scope: !2444)
!2457 = !DILocation(line: 175, column: 24, scope: !2444)
!2458 = !DILocation(line: 177, column: 17, scope: !2444)
!2459 = !DILocation(line: 179, column: 32, scope: !2444)
!2460 = !DILocation(line: 179, column: 37, scope: !2444)
!2461 = !DILocation(line: 179, column: 43, scope: !2444)
!2462 = !DILocation(line: 179, column: 24, scope: !2444)
!2463 = !DILocation(line: 181, column: 17, scope: !2444)
!2464 = distinct !{!2464, !2408, !2465}
!2465 = !DILocation(line: 185, column: 5, scope: !2395)
!2466 = !DILocation(line: 186, column: 9, scope: !2395)
!2467 = !DILocation(line: 187, column: 5, scope: !2395)
!2468 = !DILocation(line: 187, column: 18, scope: !2395)
!2469 = !DILocation(line: 189, column: 13, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2395, file: !105, line: 188, column: 5)
!2471 = !DILocation(line: 189, column: 22, scope: !2470)
!2472 = !DILocation(line: 190, column: 14, scope: !2470)
!2473 = distinct !{!2473, !2467, !2474}
!2474 = !DILocation(line: 191, column: 5, scope: !2395)
!2475 = !DILocation(line: 195, column: 1, scope: !2395)
!2476 = distinct !DISubprogram(name: "get_seed_32", scope: !2477, file: !2477, line: 43, type: !2478, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2480)
!2477 = !DIFile(filename: "src/coremark/core_util.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!51, !43}
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "i", arg: 1, scope: !2476, file: !2477, line: 43, type: !43)
!2482 = !DILocalVariable(name: "retval", scope: !2476, file: !2477, line: 45, type: !51)
!2483 = !DILocation(line: 0, scope: !2476)
!2484 = !DILocation(line: 49, column: 22, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2476, file: !2477, line: 47, column: 5)
!2486 = !DILocation(line: 50, column: 13, scope: !2485)
!2487 = !DILocation(line: 52, column: 22, scope: !2485)
!2488 = !DILocation(line: 53, column: 13, scope: !2485)
!2489 = !DILocation(line: 55, column: 22, scope: !2485)
!2490 = !DILocation(line: 56, column: 13, scope: !2485)
!2491 = !DILocation(line: 58, column: 22, scope: !2485)
!2492 = !DILocation(line: 59, column: 13, scope: !2485)
!2493 = !DILocation(line: 61, column: 22, scope: !2485)
!2494 = !DILocation(line: 62, column: 13, scope: !2485)
!2495 = !DILocation(line: 65, column: 13, scope: !2485)
!2496 = !DILocation(line: 0, scope: !2485)
!2497 = !DILocation(line: 67, column: 5, scope: !2476)
!2498 = distinct !DISubprogram(name: "crcu8", scope: !2477, file: !2477, line: 165, type: !2499, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!53, !64, !53}
!2501 = !{!2502, !2503, !2504, !2505, !2506}
!2502 = !DILocalVariable(name: "data", arg: 1, scope: !2498, file: !2477, line: 165, type: !64)
!2503 = !DILocalVariable(name: "crc", arg: 2, scope: !2498, file: !2477, line: 165, type: !53)
!2504 = !DILocalVariable(name: "i", scope: !2498, file: !2477, line: 167, type: !64)
!2505 = !DILocalVariable(name: "x16", scope: !2498, file: !2477, line: 167, type: !64)
!2506 = !DILocalVariable(name: "carry", scope: !2498, file: !2477, line: 167, type: !64)
!2507 = !DILocation(line: 0, scope: !2498)
!2508 = !DILocation(line: 169, column: 10, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2498, file: !2477, line: 169, column: 5)
!2510 = !DILocation(line: 0, scope: !2509)
!2511 = !DILocation(line: 169, column: 19, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !2477, line: 169, column: 5)
!2513 = !DILocation(line: 169, column: 5, scope: !2509)
!2514 = !DILocation(line: 171, column: 24, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !2477, line: 170, column: 5)
!2516 = !DILocation(line: 171, column: 29, scope: !2515)
!2517 = !DILocation(line: 171, column: 37, scope: !2515)
!2518 = !DILocation(line: 171, column: 48, scope: !2515)
!2519 = !DILocation(line: 171, column: 34, scope: !2515)
!2520 = !DILocation(line: 171, column: 15, scope: !2515)
!2521 = !DILocation(line: 172, column: 14, scope: !2515)
!2522 = !DILocation(line: 174, column: 13, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2515, file: !2477, line: 174, column: 13)
!2524 = !DILocation(line: 174, column: 17, scope: !2523)
!2525 = !DILocation(line: 174, column: 13, scope: !2515)
!2526 = !DILocation(line: 176, column: 17, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2523, file: !2477, line: 175, column: 9)
!2528 = !DILocation(line: 178, column: 9, scope: !2527)
!2529 = !DILocation(line: 0, scope: !2523)
!2530 = !DILocation(line: 181, column: 13, scope: !2515)
!2531 = !DILocation(line: 182, column: 13, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2515, file: !2477, line: 182, column: 13)
!2533 = !DILocation(line: 182, column: 13, scope: !2515)
!2534 = !DILocation(line: 183, column: 17, scope: !2532)
!2535 = !DILocation(line: 183, column: 13, scope: !2532)
!2536 = !DILocation(line: 185, column: 17, scope: !2532)
!2537 = !DILocation(line: 0, scope: !2532)
!2538 = !DILocation(line: 186, column: 5, scope: !2515)
!2539 = !DILocation(line: 169, column: 25, scope: !2512)
!2540 = !DILocation(line: 169, column: 5, scope: !2512)
!2541 = distinct !{!2541, !2513, !2542}
!2542 = !DILocation(line: 186, column: 5, scope: !2509)
!2543 = !DILocation(line: 187, column: 5, scope: !2498)
!2544 = distinct !DISubprogram(name: "crcu16", scope: !2477, file: !2477, line: 190, type: !2545, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!53, !53, !53}
!2547 = !{!2548, !2549}
!2548 = !DILocalVariable(name: "newval", arg: 1, scope: !2544, file: !2477, line: 190, type: !53)
!2549 = !DILocalVariable(name: "crc", arg: 2, scope: !2544, file: !2477, line: 190, type: !53)
!2550 = !DILocation(line: 0, scope: !2544)
!2551 = !DILocation(line: 192, column: 17, scope: !2544)
!2552 = !DILocation(line: 192, column: 11, scope: !2544)
!2553 = !DILocation(line: 193, column: 25, scope: !2544)
!2554 = !DILocation(line: 193, column: 34, scope: !2544)
!2555 = !DILocation(line: 193, column: 17, scope: !2544)
!2556 = !DILocation(line: 193, column: 11, scope: !2544)
!2557 = !DILocation(line: 194, column: 5, scope: !2544)
!2558 = distinct !DISubprogram(name: "crcu32", scope: !2477, file: !2477, line: 197, type: !2559, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!53, !23, !53}
!2561 = !{!2562, !2563}
!2562 = !DILocalVariable(name: "newval", arg: 1, scope: !2558, file: !2477, line: 197, type: !23)
!2563 = !DILocalVariable(name: "crc", arg: 2, scope: !2558, file: !2477, line: 197, type: !53)
!2564 = !DILocation(line: 0, scope: !2558)
!2565 = !DILocation(line: 199, column: 17, scope: !2558)
!2566 = !DILocation(line: 199, column: 11, scope: !2558)
!2567 = !DILocation(line: 200, column: 33, scope: !2558)
!2568 = !DILocation(line: 200, column: 17, scope: !2558)
!2569 = !DILocation(line: 200, column: 11, scope: !2558)
!2570 = !DILocation(line: 201, column: 5, scope: !2558)
!2571 = distinct !DISubprogram(name: "crc16", scope: !2477, file: !2477, line: 204, type: !2572, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!53, !12, !53}
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "newval", arg: 1, scope: !2571, file: !2477, line: 204, type: !12)
!2576 = !DILocalVariable(name: "crc", arg: 2, scope: !2571, file: !2477, line: 204, type: !53)
!2577 = !DILocation(line: 0, scope: !2571)
!2578 = !DILocation(line: 206, column: 12, scope: !2571)
!2579 = !DILocation(line: 206, column: 5, scope: !2571)
!2580 = distinct !DISubprogram(name: "check_data_types", scope: !2477, file: !2477, line: 210, type: !2581, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2582)
!2581 = !DISubroutineType(types: !101)
!2582 = !{!2583}
!2583 = !DILocalVariable(name: "retval", scope: !2580, file: !2477, line: 212, type: !64)
!2584 = !DILocation(line: 0, scope: !2580)
!2585 = !DILocation(line: 244, column: 9, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2580, file: !2477, line: 244, column: 9)
!2587 = !DILocation(line: 244, column: 16, scope: !2586)
!2588 = !DILocation(line: 244, column: 9, scope: !2580)
!2589 = !DILocation(line: 246, column: 9, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !2477, line: 245, column: 5)
!2591 = !DILocation(line: 247, column: 5, scope: !2590)
!2592 = !DILocation(line: 248, column: 5, scope: !2580)
!2593 = distinct !DISubprogram(name: "clock", scope: !125, file: !125, line: 73, type: !2594, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!137}
!2596 = !DILocation(line: 74, column: 10, scope: !2593)
!2597 = !{!2598, !2598, i64 0}
!2598 = !{!"long long", !296, i64 0}
!2599 = !DILocation(line: 74, column: 3, scope: !2593)
!2600 = distinct !DISubprogram(name: "start_time", scope: !125, file: !125, line: 90, type: !214, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2601 = !DILocation(line: 92, column: 5, scope: !2600)
!2602 = !DILocation(line: 93, column: 1, scope: !2600)
!2603 = distinct !DISubprogram(name: "stop_time", scope: !125, file: !125, line: 103, type: !214, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2604 = !DILocation(line: 105, column: 5, scope: !2603)
!2605 = !DILocation(line: 106, column: 1, scope: !2603)
!2606 = distinct !DISubprogram(name: "get_time", scope: !125, file: !125, line: 117, type: !2607, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!117}
!2609 = !{!2610}
!2610 = !DILocalVariable(name: "elapsed", scope: !2606, file: !125, line: 119, type: !117)
!2611 = !DILocation(line: 120, column: 24, scope: !2606)
!2612 = !DILocation(line: 120, column: 11, scope: !2606)
!2613 = !DILocation(line: 0, scope: !2606)
!2614 = !DILocation(line: 121, column: 5, scope: !2606)
!2615 = distinct !DISubprogram(name: "time_in_secs", scope: !125, file: !125, line: 131, type: !2616, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!68, !117}
!2618 = !{!2619, !2620}
!2619 = !DILocalVariable(name: "ticks", arg: 1, scope: !2615, file: !125, line: 131, type: !117)
!2620 = !DILocalVariable(name: "retval", scope: !2615, file: !125, line: 133, type: !68)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 133, column: 24, scope: !2615)
!2623 = !DILocation(line: 133, column: 41, scope: !2615)
!2624 = !DILocation(line: 134, column: 5, scope: !2615)
!2625 = distinct !DISubprogram(name: "portable_init", scope: !125, file: !125, line: 144, type: !2626, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2634)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{null, !2628, !2633, !1018}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_portable", file: !13, line: 195, baseType: !2630)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CORE_PORTABLE_S", file: !13, line: 192, size: 8, elements: !2631)
!2631 = !{!2632}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "portable_id", scope: !2630, file: !13, line: 194, baseType: !64, size: 8)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!2634 = !{!2635, !2636, !2637}
!2635 = !DILocalVariable(name: "p", arg: 1, scope: !2625, file: !125, line: 144, type: !2628)
!2636 = !DILocalVariable(name: "argc", arg: 2, scope: !2625, file: !125, line: 144, type: !2633)
!2637 = !DILocalVariable(name: "argv", arg: 3, scope: !2625, file: !125, line: 144, type: !1018)
!2638 = !DILocation(line: 0, scope: !2625)
!2639 = !DILocation(line: 156, column: 8, scope: !2625)
!2640 = !DILocation(line: 156, column: 20, scope: !2625)
!2641 = !{!331, !296, i64 0}
!2642 = !DILocation(line: 157, column: 1, scope: !2625)
!2643 = distinct !DISubprogram(name: "portable_fini", scope: !125, file: !125, line: 162, type: !2644, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !2628}
!2646 = !{!2647}
!2647 = !DILocalVariable(name: "p", arg: 1, scope: !2643, file: !125, line: 162, type: !2628)
!2648 = !DILocation(line: 0, scope: !2643)
!2649 = !DILocation(line: 164, column: 8, scope: !2643)
!2650 = !DILocation(line: 164, column: 20, scope: !2643)
!2651 = !DILocation(line: 165, column: 1, scope: !2643)
!2652 = distinct !DISubprogram(name: "printf_", scope: !148, file: !148, line: 862, type: !2653, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2657)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!43, !2655, null}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2657 = !{!2658, !2659, !2666, !2668}
!2658 = !DILocalVariable(name: "format", arg: 1, scope: !2652, file: !148, line: 862, type: !2655)
!2659 = !DILocalVariable(name: "va", scope: !2652, file: !148, line: 864, type: !2660)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2661, line: 14, baseType: !2662)
!2661 = !DIFile(filename: "llvm/llvm-9.0.1/install/lib/clang/9.0.1/include/stdarg.h", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection")
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, line: 864, baseType: !2663)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", file: !158, line: 864, size: 32, elements: !2664)
!2664 = !{!2665}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2663, file: !158, line: 864, baseType: !19, size: 32)
!2666 = !DILocalVariable(name: "buffer", scope: !2652, file: !148, line: 866, type: !2667)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !1031)
!2668 = !DILocalVariable(name: "ret", scope: !2652, file: !148, line: 867, type: !2669)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2670 = !DILocation(line: 0, scope: !2652)
!2671 = !DILocation(line: 864, column: 3, scope: !2652)
!2672 = !DILocation(line: 864, column: 11, scope: !2652)
!2673 = !DILocation(line: 865, column: 3, scope: !2652)
!2674 = !DILocation(line: 866, column: 3, scope: !2652)
!2675 = !DILocation(line: 866, column: 8, scope: !2652)
!2676 = !DILocation(line: 867, column: 41, scope: !2652)
!2677 = !DILocation(line: 867, column: 19, scope: !2652)
!2678 = !DILocation(line: 868, column: 3, scope: !2652)
!2679 = !DILocation(line: 870, column: 1, scope: !2652)
!2680 = !DILocation(line: 869, column: 3, scope: !2652)
!2681 = distinct !DISubprogram(name: "_out_char", scope: !148, file: !148, line: 149, type: !155, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2682)
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DILocalVariable(name: "character", arg: 1, scope: !2681, file: !148, line: 149, type: !67)
!2684 = !DILocalVariable(name: "buffer", arg: 2, scope: !2681, file: !148, line: 149, type: !19)
!2685 = !DILocalVariable(name: "idx", arg: 3, scope: !2681, file: !148, line: 149, type: !151)
!2686 = !DILocalVariable(name: "maxlen", arg: 4, scope: !2681, file: !148, line: 149, type: !151)
!2687 = !DILocation(line: 0, scope: !2681)
!2688 = !DILocation(line: 152, column: 7, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2681, file: !148, line: 152, column: 7)
!2690 = !DILocation(line: 152, column: 7, scope: !2681)
!2691 = !DILocation(line: 153, column: 5, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2689, file: !148, line: 152, column: 18)
!2693 = !DILocation(line: 154, column: 3, scope: !2692)
!2694 = !DILocation(line: 155, column: 1, scope: !2681)
!2695 = distinct !DISubprogram(name: "_vsnprintf", scope: !148, file: !148, line: 577, type: !2696, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2699)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!43, !153, !66, !2698, !2655, !2660}
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2715, !2721, !2724, !2731, !2736, !2738, !2744, !2746, !2748, !2749}
!2700 = !DILocalVariable(name: "out", arg: 1, scope: !2695, file: !148, line: 577, type: !153)
!2701 = !DILocalVariable(name: "buffer", arg: 2, scope: !2695, file: !148, line: 577, type: !66)
!2702 = !DILocalVariable(name: "maxlen", arg: 3, scope: !2695, file: !148, line: 577, type: !2698)
!2703 = !DILocalVariable(name: "format", arg: 4, scope: !2695, file: !148, line: 577, type: !2655)
!2704 = !DILocalVariable(name: "va", arg: 5, scope: !2695, file: !148, line: 577, type: !2660)
!2705 = !DILocalVariable(name: "flags", scope: !2695, file: !148, line: 579, type: !24)
!2706 = !DILocalVariable(name: "width", scope: !2695, file: !148, line: 579, type: !24)
!2707 = !DILocalVariable(name: "precision", scope: !2695, file: !148, line: 579, type: !24)
!2708 = !DILocalVariable(name: "n", scope: !2695, file: !148, line: 579, type: !24)
!2709 = !DILocalVariable(name: "idx", scope: !2695, file: !148, line: 580, type: !151)
!2710 = !DILocalVariable(name: "w", scope: !2711, file: !148, line: 620, type: !2669)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !148, line: 619, column: 30)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !148, line: 619, column: 14)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !148, line: 616, column: 9)
!2714 = distinct !DILexicalBlock(scope: !2695, file: !148, line: 588, column: 3)
!2715 = !DILocalVariable(name: "prec", scope: !2716, file: !148, line: 640, type: !2669)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !148, line: 639, column: 32)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !148, line: 639, column: 16)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !148, line: 636, column: 11)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !148, line: 633, column: 25)
!2720 = distinct !DILexicalBlock(scope: !2714, file: !148, line: 633, column: 9)
!2721 = !DILocalVariable(name: "base", scope: !2722, file: !148, line: 692, type: !24)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !148, line: 690, column: 18)
!2723 = distinct !DILexicalBlock(scope: !2714, file: !148, line: 683, column: 22)
!2724 = !DILocalVariable(name: "value", scope: !2725, file: !148, line: 726, type: !2729)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !148, line: 724, column: 40)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !148, line: 724, column: 15)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !148, line: 722, column: 51)
!2728 = distinct !DILexicalBlock(scope: !2722, file: !148, line: 722, column: 13)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2730)
!2730 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2731 = !DILocalVariable(name: "value", scope: !2732, file: !148, line: 731, type: !2734)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 730, column: 40)
!2733 = distinct !DILexicalBlock(scope: !2726, file: !148, line: 730, column: 20)
!2734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2735)
!2735 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!2736 = !DILocalVariable(name: "value", scope: !2737, file: !148, line: 735, type: !2669)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 734, column: 16)
!2738 = !DILocalVariable(name: "value", scope: !2739, file: !148, line: 750, type: !2743)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !148, line: 749, column: 16)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !148, line: 746, column: 20)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 741, column: 15)
!2742 = distinct !DILexicalBlock(scope: !2728, file: !148, line: 739, column: 14)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!2744 = !DILocalVariable(name: "l", scope: !2745, file: !148, line: 777, type: !24)
!2745 = distinct !DILexicalBlock(scope: !2723, file: !148, line: 776, column: 18)
!2746 = !DILocalVariable(name: "p", scope: !2747, file: !148, line: 797, type: !2655)
!2747 = distinct !DILexicalBlock(scope: !2723, file: !148, line: 796, column: 18)
!2748 = !DILocalVariable(name: "l", scope: !2747, file: !148, line: 798, type: !24)
!2749 = !DILocalVariable(name: "is_ll", scope: !2750, file: !148, line: 826, type: !2751)
!2750 = distinct !DILexicalBlock(scope: !2723, file: !148, line: 822, column: 18)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2752 = !DILocation(line: 0, scope: !2695)
!2753 = !DILocation(line: 577, column: 88, scope: !2695)
!2754 = !DILocation(line: 577, column: 104, scope: !2695)
!2755 = !DILocation(line: 582, column: 8, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2695, file: !148, line: 582, column: 7)
!2757 = !DILocation(line: 582, column: 7, scope: !2695)
!2758 = !DILocation(line: 585, column: 3, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2756, file: !148, line: 582, column: 16)
!2760 = !DILocation(line: 587, column: 3, scope: !2695)
!2761 = !DILocation(line: 587, column: 11, scope: !2695)
!2762 = !DILocation(line: 587, column: 10, scope: !2695)
!2763 = !DILocation(line: 590, column: 10, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2714, file: !148, line: 590, column: 9)
!2765 = !DILocation(line: 590, column: 9, scope: !2764)
!2766 = !DILocation(line: 590, column: 17, scope: !2764)
!2767 = !DILocation(line: 590, column: 9, scope: !2714)
!2768 = !DILocation(line: 592, column: 12, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !148, line: 590, column: 25)
!2770 = !DILocation(line: 592, column: 11, scope: !2769)
!2771 = !DILocation(line: 592, column: 31, scope: !2769)
!2772 = !DILocation(line: 592, column: 7, scope: !2769)
!2773 = !DILocation(line: 593, column: 13, scope: !2769)
!2774 = !DILocation(line: 594, column: 7, scope: !2769)
!2775 = distinct !{!2775, !2760, !2776}
!2776 = !DILocation(line: 850, column: 3, scope: !2695)
!2777 = !DILocation(line: 598, column: 13, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2764, file: !148, line: 596, column: 10)
!2779 = !DILocation(line: 603, column: 5, scope: !2714)
!2780 = !DILocation(line: 602, column: 11, scope: !2714)
!2781 = !DILocation(line: 604, column: 16, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2714, file: !148, line: 603, column: 8)
!2783 = !DILocation(line: 604, column: 15, scope: !2782)
!2784 = !DILocation(line: 605, column: 25, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !148, line: 604, column: 24)
!2786 = !DILocation(line: 605, column: 49, scope: !2785)
!2787 = !DILocation(line: 605, column: 61, scope: !2785)
!2788 = !DILocation(line: 606, column: 25, scope: !2785)
!2789 = !DILocation(line: 606, column: 49, scope: !2785)
!2790 = !DILocation(line: 606, column: 61, scope: !2785)
!2791 = !DILocation(line: 607, column: 25, scope: !2785)
!2792 = !DILocation(line: 607, column: 49, scope: !2785)
!2793 = !DILocation(line: 607, column: 61, scope: !2785)
!2794 = !DILocation(line: 608, column: 25, scope: !2785)
!2795 = !DILocation(line: 608, column: 49, scope: !2785)
!2796 = !DILocation(line: 608, column: 61, scope: !2785)
!2797 = !DILocation(line: 609, column: 25, scope: !2785)
!2798 = !DILocation(line: 609, column: 49, scope: !2785)
!2799 = !DILocation(line: 609, column: 61, scope: !2785)
!2800 = !DILocation(line: 610, column: 61, scope: !2785)
!2801 = !DILocation(line: 0, scope: !2785)
!2802 = !DILocation(line: 0, scope: !2714)
!2803 = !DILocation(line: 612, column: 5, scope: !2782)
!2804 = distinct !{!2804, !2779, !2805}
!2805 = !DILocation(line: 612, column: 15, scope: !2714)
!2806 = !DILocation(line: 616, column: 20, scope: !2713)
!2807 = !DILocation(line: 616, column: 19, scope: !2713)
!2808 = !DILocation(line: 616, column: 9, scope: !2713)
!2809 = !DILocation(line: 616, column: 9, scope: !2714)
!2810 = !DILocation(line: 617, column: 15, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2713, file: !148, line: 616, column: 29)
!2812 = !DILocation(line: 618, column: 5, scope: !2811)
!2813 = !DILocation(line: 619, column: 15, scope: !2712)
!2814 = !DILocation(line: 619, column: 14, scope: !2712)
!2815 = !DILocation(line: 619, column: 22, scope: !2712)
!2816 = !DILocation(line: 619, column: 14, scope: !2713)
!2817 = !DILocation(line: 620, column: 21, scope: !2711)
!2818 = !DILocation(line: 0, scope: !2711)
!2819 = !DILocation(line: 621, column: 13, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2711, file: !148, line: 621, column: 11)
!2821 = !DILocation(line: 621, column: 11, scope: !2711)
!2822 = !DILocation(line: 622, column: 15, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !148, line: 621, column: 18)
!2824 = !DILocation(line: 623, column: 31, scope: !2823)
!2825 = !DILocation(line: 624, column: 7, scope: !2823)
!2826 = !DILocation(line: 0, scope: !2820)
!2827 = !DILocation(line: 628, column: 13, scope: !2711)
!2828 = !DILocation(line: 629, column: 5, scope: !2711)
!2829 = !DILocation(line: 0, scope: !2713)
!2830 = !DILocation(line: 633, column: 10, scope: !2720)
!2831 = !DILocation(line: 633, column: 9, scope: !2720)
!2832 = !DILocation(line: 633, column: 17, scope: !2720)
!2833 = !DILocation(line: 633, column: 9, scope: !2714)
!2834 = !DILocation(line: 634, column: 13, scope: !2719)
!2835 = !DILocation(line: 635, column: 13, scope: !2719)
!2836 = !DILocation(line: 636, column: 22, scope: !2718)
!2837 = !DILocation(line: 636, column: 21, scope: !2718)
!2838 = !DILocation(line: 636, column: 11, scope: !2718)
!2839 = !DILocation(line: 636, column: 11, scope: !2719)
!2840 = !DILocation(line: 637, column: 21, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2718, file: !148, line: 636, column: 31)
!2842 = !DILocation(line: 638, column: 7, scope: !2841)
!2843 = !DILocation(line: 639, column: 17, scope: !2717)
!2844 = !DILocation(line: 639, column: 16, scope: !2717)
!2845 = !DILocation(line: 639, column: 24, scope: !2717)
!2846 = !DILocation(line: 639, column: 16, scope: !2718)
!2847 = !DILocation(line: 640, column: 31, scope: !2716)
!2848 = !DILocation(line: 0, scope: !2716)
!2849 = !DILocation(line: 641, column: 26, scope: !2716)
!2850 = !DILocation(line: 641, column: 21, scope: !2716)
!2851 = !DILocation(line: 642, column: 15, scope: !2716)
!2852 = !DILocation(line: 643, column: 7, scope: !2716)
!2853 = !DILocation(line: 0, scope: !2718)
!2854 = !DILocation(line: 644, column: 5, scope: !2719)
!2855 = !DILocation(line: 647, column: 14, scope: !2714)
!2856 = !DILocation(line: 647, column: 13, scope: !2714)
!2857 = !DILocation(line: 649, column: 15, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2714, file: !148, line: 647, column: 22)
!2859 = !DILocation(line: 650, column: 15, scope: !2858)
!2860 = !DILocation(line: 651, column: 14, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2858, file: !148, line: 651, column: 13)
!2862 = !DILocation(line: 651, column: 13, scope: !2861)
!2863 = !DILocation(line: 651, column: 21, scope: !2861)
!2864 = !DILocation(line: 651, column: 13, scope: !2858)
!2865 = !DILocation(line: 652, column: 17, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2861, file: !148, line: 651, column: 29)
!2867 = !DILocation(line: 653, column: 17, scope: !2866)
!2868 = !DILocation(line: 654, column: 9, scope: !2866)
!2869 = !DILocation(line: 0, scope: !2858)
!2870 = !DILocation(line: 655, column: 9, scope: !2858)
!2871 = !DILocation(line: 657, column: 15, scope: !2858)
!2872 = !DILocation(line: 658, column: 15, scope: !2858)
!2873 = !DILocation(line: 659, column: 14, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2858, file: !148, line: 659, column: 13)
!2875 = !DILocation(line: 659, column: 13, scope: !2874)
!2876 = !DILocation(line: 659, column: 21, scope: !2874)
!2877 = !DILocation(line: 659, column: 13, scope: !2858)
!2878 = !DILocation(line: 660, column: 17, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2874, file: !148, line: 659, column: 29)
!2880 = !DILocation(line: 661, column: 17, scope: !2879)
!2881 = !DILocation(line: 662, column: 9, scope: !2879)
!2882 = !DILocation(line: 663, column: 9, scope: !2858)
!2883 = !DILocation(line: 666, column: 15, scope: !2858)
!2884 = !DILocation(line: 667, column: 15, scope: !2858)
!2885 = !DILocation(line: 668, column: 9, scope: !2858)
!2886 = !DILocation(line: 671, column: 15, scope: !2858)
!2887 = !DILocation(line: 672, column: 15, scope: !2858)
!2888 = !DILocation(line: 673, column: 9, scope: !2858)
!2889 = !DILocation(line: 675, column: 15, scope: !2858)
!2890 = !DILocation(line: 676, column: 15, scope: !2858)
!2891 = !DILocation(line: 677, column: 9, scope: !2858)
!2892 = !DILocation(line: 679, column: 9, scope: !2858)
!2893 = !DILocation(line: 683, column: 14, scope: !2714)
!2894 = !DILocation(line: 683, column: 13, scope: !2714)
!2895 = !DILocation(line: 693, column: 14, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2722, file: !148, line: 693, column: 13)
!2897 = !DILocation(line: 693, column: 13, scope: !2896)
!2898 = !DILocation(line: 693, column: 21, scope: !2896)
!2899 = !DILocation(line: 693, column: 28, scope: !2896)
!2900 = !DILocation(line: 693, column: 32, scope: !2896)
!2901 = !DILocation(line: 693, column: 31, scope: !2896)
!2902 = !DILocation(line: 693, column: 39, scope: !2896)
!2903 = !DILocation(line: 693, column: 13, scope: !2722)
!2904 = !DILocation(line: 0, scope: !2722)
!2905 = !DILocation(line: 695, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2896, file: !148, line: 693, column: 47)
!2907 = !DILocation(line: 696, column: 19, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2896, file: !148, line: 696, column: 18)
!2909 = !DILocation(line: 696, column: 18, scope: !2908)
!2910 = !DILocation(line: 696, column: 26, scope: !2908)
!2911 = !DILocation(line: 696, column: 18, scope: !2896)
!2912 = !DILocation(line: 698, column: 9, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2908, file: !148, line: 696, column: 34)
!2914 = !DILocation(line: 699, column: 19, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2908, file: !148, line: 699, column: 18)
!2916 = !DILocation(line: 699, column: 18, scope: !2915)
!2917 = !DILocation(line: 699, column: 26, scope: !2915)
!2918 = !DILocation(line: 699, column: 18, scope: !2908)
!2919 = !DILocation(line: 701, column: 9, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !148, line: 699, column: 34)
!2921 = !DILocation(line: 704, column: 17, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2915, file: !148, line: 702, column: 14)
!2923 = !DILocation(line: 0, scope: !2915)
!2924 = !DILocation(line: 0, scope: !2908)
!2925 = !DILocation(line: 0, scope: !2896)
!2926 = !DILocation(line: 707, column: 14, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2722, file: !148, line: 707, column: 13)
!2928 = !DILocation(line: 707, column: 13, scope: !2927)
!2929 = !DILocation(line: 707, column: 21, scope: !2927)
!2930 = !DILocation(line: 707, column: 13, scope: !2722)
!2931 = !DILocation(line: 708, column: 17, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !148, line: 707, column: 29)
!2933 = !DILocation(line: 709, column: 9, scope: !2932)
!2934 = !DILocation(line: 712, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2722, file: !148, line: 712, column: 13)
!2936 = !DILocation(line: 712, column: 14, scope: !2935)
!2937 = !DILocation(line: 712, column: 22, scope: !2935)
!2938 = !DILocation(line: 712, column: 30, scope: !2935)
!2939 = !DILocation(line: 712, column: 35, scope: !2935)
!2940 = !DILocation(line: 712, column: 34, scope: !2935)
!2941 = !DILocation(line: 712, column: 42, scope: !2935)
!2942 = !DILocation(line: 712, column: 13, scope: !2722)
!2943 = !DILocation(line: 713, column: 17, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2935, file: !148, line: 712, column: 51)
!2945 = !DILocation(line: 714, column: 9, scope: !2944)
!2946 = !DILocation(line: 717, column: 19, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2722, file: !148, line: 717, column: 13)
!2948 = !DILocation(line: 717, column: 13, scope: !2722)
!2949 = !DILocation(line: 718, column: 17, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2947, file: !148, line: 717, column: 38)
!2951 = !DILocation(line: 719, column: 9, scope: !2950)
!2952 = !DILocation(line: 722, column: 15, scope: !2728)
!2953 = !DILocation(line: 722, column: 14, scope: !2728)
!2954 = !DILocation(line: 722, column: 22, scope: !2728)
!2955 = !DILocation(line: 722, column: 30, scope: !2728)
!2956 = !DILocation(line: 722, column: 35, scope: !2728)
!2957 = !DILocation(line: 722, column: 34, scope: !2728)
!2958 = !DILocation(line: 722, column: 42, scope: !2728)
!2959 = !DILocation(line: 722, column: 13, scope: !2722)
!2960 = !DILocation(line: 724, column: 21, scope: !2726)
!2961 = !DILocation(line: 724, column: 15, scope: !2727)
!2962 = !DILocation(line: 726, column: 37, scope: !2725)
!2963 = !DILocation(line: 0, scope: !2725)
!2964 = !DILocation(line: 727, column: 88, scope: !2725)
!2965 = !DILocation(line: 727, column: 82, scope: !2725)
!2966 = !DILocation(line: 727, column: 104, scope: !2725)
!2967 = !DILocation(line: 727, column: 120, scope: !2725)
!2968 = !DILocation(line: 727, column: 125, scope: !2725)
!2969 = !DILocation(line: 727, column: 19, scope: !2725)
!2970 = !DILocation(line: 729, column: 11, scope: !2725)
!2971 = !DILocation(line: 730, column: 26, scope: !2733)
!2972 = !DILocation(line: 730, column: 20, scope: !2726)
!2973 = !DILocation(line: 731, column: 32, scope: !2732)
!2974 = !DILocation(line: 0, scope: !2732)
!2975 = !DILocation(line: 732, column: 78, scope: !2732)
!2976 = !DILocation(line: 732, column: 72, scope: !2732)
!2977 = !DILocation(line: 732, column: 94, scope: !2732)
!2978 = !DILocation(line: 732, column: 110, scope: !2732)
!2979 = !DILocation(line: 732, column: 19, scope: !2732)
!2980 = !DILocation(line: 733, column: 11, scope: !2732)
!2981 = !DILocation(line: 735, column: 38, scope: !2737)
!2982 = !DILocation(line: 735, column: 31, scope: !2737)
!2983 = !DILocation(line: 735, column: 60, scope: !2737)
!2984 = !DILocation(line: 735, column: 54, scope: !2737)
!2985 = !DILocation(line: 735, column: 85, scope: !2737)
!2986 = !DILocation(line: 735, column: 78, scope: !2737)
!2987 = !DILocation(line: 735, column: 113, scope: !2737)
!2988 = !DILocation(line: 735, column: 102, scope: !2737)
!2989 = !DILocation(line: 735, column: 131, scope: !2737)
!2990 = !DILocation(line: 0, scope: !2737)
!2991 = !DILocation(line: 736, column: 77, scope: !2737)
!2992 = !DILocation(line: 736, column: 71, scope: !2737)
!2993 = !DILocation(line: 736, column: 93, scope: !2737)
!2994 = !DILocation(line: 736, column: 109, scope: !2737)
!2995 = !DILocation(line: 736, column: 19, scope: !2737)
!2996 = !DILocation(line: 0, scope: !2733)
!2997 = !DILocation(line: 0, scope: !2726)
!2998 = !DILocation(line: 738, column: 9, scope: !2727)
!2999 = !DILocation(line: 741, column: 21, scope: !2741)
!3000 = !DILocation(line: 741, column: 15, scope: !2742)
!3001 = !DILocation(line: 743, column: 61, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2741, file: !148, line: 741, column: 40)
!3003 = !DILocation(line: 743, column: 100, scope: !3002)
!3004 = !DILocation(line: 743, column: 19, scope: !3002)
!3005 = !DILocation(line: 745, column: 11, scope: !3002)
!3006 = !DILocation(line: 746, column: 26, scope: !2740)
!3007 = !DILocation(line: 746, column: 20, scope: !2741)
!3008 = !DILocation(line: 747, column: 56, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2740, file: !148, line: 746, column: 40)
!3010 = !DILocation(line: 747, column: 19, scope: !3009)
!3011 = !DILocation(line: 748, column: 11, scope: !3009)
!3012 = !DILocation(line: 750, column: 47, scope: !2739)
!3013 = !DILocation(line: 750, column: 40, scope: !2739)
!3014 = !DILocation(line: 750, column: 78, scope: !2739)
!3015 = !DILocation(line: 750, column: 63, scope: !2739)
!3016 = !DILocation(line: 750, column: 112, scope: !2739)
!3017 = !DILocation(line: 750, column: 105, scope: !2739)
!3018 = !DILocation(line: 750, column: 149, scope: !2739)
!3019 = !DILocation(line: 750, column: 129, scope: !2739)
!3020 = !DILocation(line: 750, column: 176, scope: !2739)
!3021 = !DILocation(line: 0, scope: !2739)
!3022 = !DILocation(line: 751, column: 19, scope: !2739)
!3023 = !DILocation(line: 0, scope: !2740)
!3024 = !DILocation(line: 0, scope: !2741)
!3025 = !DILocation(line: 0, scope: !2728)
!3026 = !DILocation(line: 754, column: 15, scope: !2722)
!3027 = !DILocation(line: 760, column: 14, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2723, file: !148, line: 760, column: 13)
!3029 = !DILocation(line: 760, column: 13, scope: !3028)
!3030 = !DILocation(line: 760, column: 21, scope: !3028)
!3031 = !DILocation(line: 760, column: 13, scope: !2723)
!3032 = !DILocation(line: 760, column: 35, scope: !3028)
!3033 = !DILocation(line: 760, column: 29, scope: !3028)
!3034 = !DILocation(line: 761, column: 47, scope: !2723)
!3035 = !DILocation(line: 761, column: 15, scope: !2723)
!3036 = !DILocation(line: 762, column: 15, scope: !2723)
!3037 = !DILocation(line: 763, column: 9, scope: !2723)
!3038 = !DILocation(line: 769, column: 15, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2723, file: !148, line: 769, column: 13)
!3040 = !DILocation(line: 769, column: 14, scope: !3039)
!3041 = !DILocation(line: 769, column: 22, scope: !3039)
!3042 = !DILocation(line: 769, column: 29, scope: !3039)
!3043 = !DILocation(line: 769, column: 33, scope: !3039)
!3044 = !DILocation(line: 769, column: 32, scope: !3039)
!3045 = !DILocation(line: 769, column: 40, scope: !3039)
!3046 = !DILocation(line: 769, column: 13, scope: !2723)
!3047 = !DILocation(line: 769, column: 55, scope: !3039)
!3048 = !DILocation(line: 769, column: 49, scope: !3039)
!3049 = !DILocation(line: 770, column: 15, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !2723, file: !148, line: 770, column: 13)
!3051 = !DILocation(line: 770, column: 14, scope: !3050)
!3052 = !DILocation(line: 770, column: 22, scope: !3050)
!3053 = !DILocation(line: 770, column: 29, scope: !3050)
!3054 = !DILocation(line: 770, column: 33, scope: !3050)
!3055 = !DILocation(line: 770, column: 32, scope: !3050)
!3056 = !DILocation(line: 770, column: 40, scope: !3050)
!3057 = !DILocation(line: 770, column: 13, scope: !2723)
!3058 = !DILocation(line: 770, column: 55, scope: !3050)
!3059 = !DILocation(line: 770, column: 49, scope: !3050)
!3060 = !DILocation(line: 0, scope: !2723)
!3061 = !DILocation(line: 771, column: 47, scope: !2723)
!3062 = !DILocation(line: 771, column: 15, scope: !2723)
!3063 = !DILocation(line: 772, column: 15, scope: !2723)
!3064 = !DILocation(line: 773, column: 9, scope: !2723)
!3065 = !DILocation(line: 0, scope: !2745)
!3066 = !DILocation(line: 779, column: 21, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2745, file: !148, line: 779, column: 13)
!3068 = !DILocation(line: 779, column: 13, scope: !2745)
!3069 = !DILocation(line: 780, column: 11, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !148, line: 779, column: 36)
!3071 = !DILocation(line: 780, column: 19, scope: !3070)
!3072 = !DILocation(line: 780, column: 22, scope: !3070)
!3073 = !DILocation(line: 781, column: 33, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3070, file: !148, line: 780, column: 31)
!3075 = !DILocation(line: 781, column: 13, scope: !3074)
!3076 = distinct !{!3076, !3069, !3077}
!3077 = !DILocation(line: 782, column: 11, scope: !3070)
!3078 = !DILocation(line: 783, column: 9, scope: !3070)
!3079 = !DILocation(line: 580, column: 10, scope: !2695)
!3080 = !DILocation(line: 785, column: 19, scope: !2745)
!3081 = !DILocation(line: 785, column: 13, scope: !2745)
!3082 = !DILocation(line: 785, column: 47, scope: !2745)
!3083 = !DILocation(line: 785, column: 9, scope: !2745)
!3084 = !DILocation(line: 787, column: 19, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !2745, file: !148, line: 787, column: 13)
!3086 = !DILocation(line: 787, column: 13, scope: !2745)
!3087 = !DILocation(line: 788, column: 11, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !148, line: 787, column: 33)
!3089 = !DILocation(line: 788, column: 19, scope: !3088)
!3090 = !DILocation(line: 788, column: 22, scope: !3088)
!3091 = !DILocation(line: 789, column: 33, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !148, line: 788, column: 31)
!3093 = !DILocation(line: 789, column: 13, scope: !3092)
!3094 = distinct !{!3094, !3087, !3095}
!3095 = !DILocation(line: 790, column: 11, scope: !3088)
!3096 = !DILocation(line: 791, column: 9, scope: !3088)
!3097 = !DILocation(line: 792, column: 15, scope: !2745)
!3098 = !DILocation(line: 797, column: 25, scope: !2747)
!3099 = !DILocation(line: 0, scope: !2747)
!3100 = !DILocation(line: 798, column: 40, scope: !2747)
!3101 = !DILocation(line: 798, column: 26, scope: !2747)
!3102 = !DILocation(line: 800, column: 19, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 800, column: 13)
!3104 = !DILocation(line: 800, column: 13, scope: !2747)
!3105 = !DILocation(line: 801, column: 18, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3103, file: !148, line: 800, column: 38)
!3107 = !DILocation(line: 801, column: 16, scope: !3106)
!3108 = !DILocation(line: 802, column: 9, scope: !3106)
!3109 = !DILocation(line: 803, column: 21, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 803, column: 13)
!3111 = !DILocation(line: 803, column: 13, scope: !2747)
!3112 = !DILocation(line: 804, column: 11, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !148, line: 803, column: 36)
!3114 = !DILocation(line: 804, column: 19, scope: !3113)
!3115 = !DILocation(line: 804, column: 22, scope: !3113)
!3116 = !DILocation(line: 805, column: 33, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3113, file: !148, line: 804, column: 31)
!3118 = !DILocation(line: 805, column: 13, scope: !3117)
!3119 = distinct !{!3119, !3112, !3120}
!3120 = !DILocation(line: 806, column: 11, scope: !3113)
!3121 = !DILocation(line: 807, column: 9, scope: !3113)
!3122 = !DILocation(line: 809, column: 9, scope: !2747)
!3123 = !DILocation(line: 809, column: 17, scope: !2747)
!3124 = !DILocation(line: 809, column: 20, scope: !2747)
!3125 = !DILocation(line: 809, column: 26, scope: !2747)
!3126 = !DILocation(line: 809, column: 38, scope: !2747)
!3127 = !DILocation(line: 809, column: 57, scope: !2747)
!3128 = !DILocation(line: 809, column: 69, scope: !2747)
!3129 = !DILocation(line: 810, column: 18, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 809, column: 74)
!3131 = !DILocation(line: 810, column: 15, scope: !3130)
!3132 = !DILocation(line: 810, column: 34, scope: !3130)
!3133 = !DILocation(line: 810, column: 11, scope: !3130)
!3134 = distinct !{!3134, !3122, !3135}
!3135 = !DILocation(line: 811, column: 9, scope: !2747)
!3136 = !DILocation(line: 813, column: 19, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 813, column: 13)
!3138 = !DILocation(line: 813, column: 13, scope: !2747)
!3139 = !DILocation(line: 814, column: 11, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !148, line: 813, column: 33)
!3141 = !DILocation(line: 814, column: 19, scope: !3140)
!3142 = !DILocation(line: 814, column: 22, scope: !3140)
!3143 = !DILocation(line: 815, column: 33, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !148, line: 814, column: 31)
!3145 = !DILocation(line: 815, column: 13, scope: !3144)
!3146 = distinct !{!3146, !3139, !3147}
!3147 = !DILocation(line: 816, column: 11, scope: !3140)
!3148 = !DILocation(line: 817, column: 9, scope: !3140)
!3149 = !DILocation(line: 818, column: 15, scope: !2747)
!3150 = !DILocation(line: 824, column: 15, scope: !2750)
!3151 = !DILocation(line: 0, scope: !2750)
!3152 = !DILocation(line: 832, column: 81, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !148, line: 830, column: 14)
!3154 = distinct !DILexicalBlock(scope: !2750, file: !148, line: 827, column: 13)
!3155 = !DILocation(line: 832, column: 70, scope: !3153)
!3156 = !DILocation(line: 832, column: 17, scope: !3153)
!3157 = !DILocation(line: 836, column: 15, scope: !2750)
!3158 = !DILocation(line: 841, column: 29, scope: !2723)
!3159 = !DILocation(line: 841, column: 9, scope: !2723)
!3160 = !DILocation(line: 842, column: 15, scope: !2723)
!3161 = !DILocation(line: 843, column: 9, scope: !2723)
!3162 = !DILocation(line: 846, column: 14, scope: !2723)
!3163 = !DILocation(line: 846, column: 13, scope: !2723)
!3164 = !DILocation(line: 846, column: 33, scope: !2723)
!3165 = !DILocation(line: 846, column: 9, scope: !2723)
!3166 = !DILocation(line: 847, column: 15, scope: !2723)
!3167 = !DILocation(line: 848, column: 9, scope: !2723)
!3168 = !DILocation(line: 853, column: 28, scope: !2695)
!3169 = !DILocation(line: 853, column: 24, scope: !2695)
!3170 = !DILocation(line: 853, column: 52, scope: !2695)
!3171 = !DILocation(line: 853, column: 3, scope: !2695)
!3172 = !DILocation(line: 856, column: 3, scope: !2695)
!3173 = distinct !DISubprogram(name: "_out_null", scope: !148, file: !148, line: 142, type: !155, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3174)
!3174 = !{!3175, !3176, !3177, !3178}
!3175 = !DILocalVariable(name: "character", arg: 1, scope: !3173, file: !148, line: 142, type: !67)
!3176 = !DILocalVariable(name: "buffer", arg: 2, scope: !3173, file: !148, line: 142, type: !19)
!3177 = !DILocalVariable(name: "idx", arg: 3, scope: !3173, file: !148, line: 142, type: !151)
!3178 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3173, file: !148, line: 142, type: !151)
!3179 = !DILocation(line: 0, scope: !3173)
!3180 = !DILocation(line: 145, column: 1, scope: !3173)
!3181 = distinct !DISubprogram(name: "_is_digit", scope: !148, file: !148, line: 181, type: !3182, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!188, !67}
!3184 = !{!3185}
!3185 = !DILocalVariable(name: "ch", arg: 1, scope: !3181, file: !148, line: 181, type: !67)
!3186 = !DILocation(line: 0, scope: !3181)
!3187 = !DILocation(line: 183, column: 11, scope: !3181)
!3188 = !DILocation(line: 183, column: 14, scope: !3181)
!3189 = !DILocation(line: 183, column: 22, scope: !3181)
!3190 = !DILocation(line: 183, column: 26, scope: !3181)
!3191 = !DILocation(line: 183, column: 29, scope: !3181)
!3192 = !DILocation(line: 183, column: 3, scope: !3181)
!3193 = distinct !DISubprogram(name: "_atoi", scope: !148, file: !148, line: 188, type: !3194, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3197)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!24, !3196}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 32)
!3197 = !{!3198, !3199}
!3198 = !DILocalVariable(name: "str", arg: 1, scope: !3193, file: !148, line: 188, type: !3196)
!3199 = !DILocalVariable(name: "i", scope: !3193, file: !148, line: 190, type: !24)
!3200 = !DILocation(line: 0, scope: !3193)
!3201 = !DILocation(line: 191, column: 3, scope: !3193)
!3202 = !DILocation(line: 191, column: 21, scope: !3193)
!3203 = !DILocation(line: 191, column: 20, scope: !3193)
!3204 = !DILocation(line: 191, column: 10, scope: !3193)
!3205 = !DILocation(line: 192, column: 11, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3193, file: !148, line: 191, column: 28)
!3207 = !DILocation(line: 192, column: 42, scope: !3206)
!3208 = !DILocation(line: 192, column: 34, scope: !3206)
!3209 = !DILocation(line: 192, column: 46, scope: !3206)
!3210 = !DILocation(line: 192, column: 17, scope: !3206)
!3211 = distinct !{!3211, !3201, !3212}
!3212 = !DILocation(line: 193, column: 3, scope: !3193)
!3213 = !DILocation(line: 194, column: 3, scope: !3193)
!3214 = distinct !DISubprogram(name: "_ntoa_long_long", scope: !148, file: !148, line: 306, type: !3215, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!151, !153, !66, !151, !151, !140, !188, !140, !24, !24, !24}
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3218 = !DILocalVariable(name: "out", arg: 1, scope: !3214, file: !148, line: 306, type: !153)
!3219 = !DILocalVariable(name: "buffer", arg: 2, scope: !3214, file: !148, line: 306, type: !66)
!3220 = !DILocalVariable(name: "idx", arg: 3, scope: !3214, file: !148, line: 306, type: !151)
!3221 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3214, file: !148, line: 306, type: !151)
!3222 = !DILocalVariable(name: "value", arg: 5, scope: !3214, file: !148, line: 306, type: !140)
!3223 = !DILocalVariable(name: "negative", arg: 6, scope: !3214, file: !148, line: 306, type: !188)
!3224 = !DILocalVariable(name: "base", arg: 7, scope: !3214, file: !148, line: 306, type: !140)
!3225 = !DILocalVariable(name: "prec", arg: 8, scope: !3214, file: !148, line: 306, type: !24)
!3226 = !DILocalVariable(name: "width", arg: 9, scope: !3214, file: !148, line: 306, type: !24)
!3227 = !DILocalVariable(name: "flags", arg: 10, scope: !3214, file: !148, line: 306, type: !24)
!3228 = !DILocalVariable(name: "buf", scope: !3214, file: !148, line: 308, type: !182)
!3229 = !DILocalVariable(name: "len", scope: !3214, file: !148, line: 309, type: !151)
!3230 = !DILocalVariable(name: "digit", scope: !3231, file: !148, line: 319, type: !2656)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !148, line: 318, column: 8)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !148, line: 317, column: 44)
!3233 = distinct !DILexicalBlock(scope: !3214, file: !148, line: 317, column: 7)
!3234 = !DILocation(line: 0, scope: !3214)
!3235 = !DILocation(line: 308, column: 3, scope: !3214)
!3236 = !DILocation(line: 308, column: 8, scope: !3214)
!3237 = !DILocation(line: 312, column: 8, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3214, file: !148, line: 312, column: 7)
!3239 = !DILocation(line: 312, column: 7, scope: !3214)
!3240 = !DILocation(line: 313, column: 11, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3238, file: !148, line: 312, column: 15)
!3242 = !DILocation(line: 314, column: 3, scope: !3241)
!3243 = !DILocation(line: 317, column: 15, scope: !3233)
!3244 = !DILocation(line: 317, column: 34, scope: !3233)
!3245 = !DILocation(line: 317, column: 37, scope: !3233)
!3246 = !DILocation(line: 317, column: 7, scope: !3214)
!3247 = !DILocation(line: 318, column: 5, scope: !3232)
!3248 = !DILocation(line: 319, column: 39, scope: !3231)
!3249 = !DILocation(line: 319, column: 26, scope: !3231)
!3250 = !DILocation(line: 0, scope: !3231)
!3251 = !DILocation(line: 320, column: 20, scope: !3231)
!3252 = !DILocation(line: 320, column: 26, scope: !3231)
!3253 = !DILocation(line: 320, column: 39, scope: !3231)
!3254 = !DILocation(line: 320, column: 37, scope: !3231)
!3255 = !DILocation(line: 320, column: 54, scope: !3231)
!3256 = !DILocation(line: 320, column: 48, scope: !3231)
!3257 = !DILocation(line: 320, column: 87, scope: !3231)
!3258 = !DILocation(line: 320, column: 85, scope: !3231)
!3259 = !DILocation(line: 320, column: 93, scope: !3231)
!3260 = !DILocation(line: 320, column: 14, scope: !3231)
!3261 = !DILocation(line: 320, column: 7, scope: !3231)
!3262 = !DILocation(line: 320, column: 18, scope: !3231)
!3263 = !DILocation(line: 321, column: 13, scope: !3231)
!3264 = !DILocation(line: 322, column: 5, scope: !3231)
!3265 = !DILocation(line: 322, column: 14, scope: !3232)
!3266 = !DILocation(line: 322, column: 20, scope: !3232)
!3267 = !DILocation(line: 322, column: 28, scope: !3232)
!3268 = !DILocation(line: 0, scope: !3232)
!3269 = distinct !{!3269, !3247, !3270}
!3270 = !DILocation(line: 322, column: 54, scope: !3232)
!3271 = !DILocation(line: 323, column: 3, scope: !3232)
!3272 = !DILocation(line: 325, column: 49, scope: !3214)
!3273 = !DILocation(line: 325, column: 59, scope: !3214)
!3274 = !DILocation(line: 325, column: 69, scope: !3214)
!3275 = !DILocation(line: 325, column: 10, scope: !3214)
!3276 = !DILocation(line: 326, column: 1, scope: !3214)
!3277 = !DILocation(line: 325, column: 3, scope: !3214)
!3278 = distinct !DISubprogram(name: "_ntoa_long", scope: !148, file: !148, line: 281, type: !3279, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!151, !153, !66, !151, !151, !70, !188, !70, !24, !24, !24}
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3282 = !DILocalVariable(name: "out", arg: 1, scope: !3278, file: !148, line: 281, type: !153)
!3283 = !DILocalVariable(name: "buffer", arg: 2, scope: !3278, file: !148, line: 281, type: !66)
!3284 = !DILocalVariable(name: "idx", arg: 3, scope: !3278, file: !148, line: 281, type: !151)
!3285 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3278, file: !148, line: 281, type: !151)
!3286 = !DILocalVariable(name: "value", arg: 5, scope: !3278, file: !148, line: 281, type: !70)
!3287 = !DILocalVariable(name: "negative", arg: 6, scope: !3278, file: !148, line: 281, type: !188)
!3288 = !DILocalVariable(name: "base", arg: 7, scope: !3278, file: !148, line: 281, type: !70)
!3289 = !DILocalVariable(name: "prec", arg: 8, scope: !3278, file: !148, line: 281, type: !24)
!3290 = !DILocalVariable(name: "width", arg: 9, scope: !3278, file: !148, line: 281, type: !24)
!3291 = !DILocalVariable(name: "flags", arg: 10, scope: !3278, file: !148, line: 281, type: !24)
!3292 = !DILocalVariable(name: "buf", scope: !3278, file: !148, line: 283, type: !182)
!3293 = !DILocalVariable(name: "len", scope: !3278, file: !148, line: 284, type: !151)
!3294 = !DILocalVariable(name: "digit", scope: !3295, file: !148, line: 294, type: !2656)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !148, line: 293, column: 8)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !148, line: 292, column: 44)
!3297 = distinct !DILexicalBlock(scope: !3278, file: !148, line: 292, column: 7)
!3298 = !DILocation(line: 0, scope: !3278)
!3299 = !DILocation(line: 283, column: 3, scope: !3278)
!3300 = !DILocation(line: 283, column: 8, scope: !3278)
!3301 = !DILocation(line: 287, column: 8, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3278, file: !148, line: 287, column: 7)
!3303 = !DILocation(line: 287, column: 7, scope: !3278)
!3304 = !DILocation(line: 288, column: 11, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !148, line: 287, column: 15)
!3306 = !DILocation(line: 289, column: 3, scope: !3305)
!3307 = !DILocation(line: 292, column: 15, scope: !3297)
!3308 = !DILocation(line: 292, column: 34, scope: !3297)
!3309 = !DILocation(line: 292, column: 37, scope: !3297)
!3310 = !DILocation(line: 292, column: 7, scope: !3278)
!3311 = !DILocation(line: 293, column: 5, scope: !3296)
!3312 = !DILocation(line: 294, column: 39, scope: !3295)
!3313 = !DILocation(line: 294, column: 26, scope: !3295)
!3314 = !DILocation(line: 0, scope: !3295)
!3315 = !DILocation(line: 295, column: 20, scope: !3295)
!3316 = !DILocation(line: 295, column: 26, scope: !3295)
!3317 = !DILocation(line: 295, column: 39, scope: !3295)
!3318 = !DILocation(line: 295, column: 37, scope: !3295)
!3319 = !DILocation(line: 295, column: 54, scope: !3295)
!3320 = !DILocation(line: 295, column: 48, scope: !3295)
!3321 = !DILocation(line: 295, column: 87, scope: !3295)
!3322 = !DILocation(line: 295, column: 85, scope: !3295)
!3323 = !DILocation(line: 295, column: 93, scope: !3295)
!3324 = !DILocation(line: 295, column: 14, scope: !3295)
!3325 = !DILocation(line: 295, column: 7, scope: !3295)
!3326 = !DILocation(line: 295, column: 18, scope: !3295)
!3327 = !DILocation(line: 296, column: 13, scope: !3295)
!3328 = !DILocation(line: 297, column: 5, scope: !3295)
!3329 = !DILocation(line: 297, column: 14, scope: !3296)
!3330 = !DILocation(line: 297, column: 20, scope: !3296)
!3331 = !DILocation(line: 297, column: 28, scope: !3296)
!3332 = !DILocation(line: 0, scope: !3296)
!3333 = distinct !{!3333, !3311, !3334}
!3334 = !DILocation(line: 297, column: 54, scope: !3296)
!3335 = !DILocation(line: 298, column: 3, scope: !3296)
!3336 = !DILocation(line: 300, column: 49, scope: !3278)
!3337 = !DILocation(line: 300, column: 59, scope: !3278)
!3338 = !DILocation(line: 300, column: 10, scope: !3278)
!3339 = !DILocation(line: 301, column: 1, scope: !3278)
!3340 = !DILocation(line: 300, column: 3, scope: !3278)
!3341 = !DILocation(line: 0, scope: !147)
!3342 = !DILocation(line: 341, column: 3, scope: !147)
!3343 = !DILocation(line: 341, column: 8, scope: !147)
!3344 = !DILocation(line: 349, column: 13, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !147, file: !148, line: 349, column: 7)
!3346 = !DILocation(line: 349, column: 7, scope: !147)
!3347 = !DILocation(line: 350, column: 12, scope: !3345)
!3348 = !DILocation(line: 350, column: 5, scope: !3345)
!3349 = !DILocation(line: 351, column: 13, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !147, file: !148, line: 351, column: 7)
!3351 = !DILocation(line: 351, column: 7, scope: !147)
!3352 = !DILocation(line: 352, column: 12, scope: !3350)
!3353 = !DILocation(line: 352, column: 5, scope: !3350)
!3354 = !DILocation(line: 353, column: 13, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !147, file: !148, line: 353, column: 7)
!3356 = !DILocation(line: 353, column: 7, scope: !147)
!3357 = !DILocation(line: 354, column: 54, scope: !3355)
!3358 = !DILocation(line: 354, column: 47, scope: !3355)
!3359 = !DILocation(line: 354, column: 93, scope: !3355)
!3360 = !DILocation(line: 354, column: 86, scope: !3355)
!3361 = !DILocation(line: 354, column: 12, scope: !3355)
!3362 = !DILocation(line: 354, column: 5, scope: !3355)
!3363 = !DILocation(line: 358, column: 14, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !147, file: !148, line: 358, column: 7)
!3365 = !DILocation(line: 358, column: 34, scope: !3364)
!3366 = !DILocation(line: 358, column: 44, scope: !3364)
!3367 = !DILocation(line: 358, column: 7, scope: !147)
!3368 = !DILocation(line: 360, column: 12, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3364, file: !148, line: 358, column: 66)
!3370 = !DILocation(line: 360, column: 5, scope: !3369)
!3371 = !DILocation(line: 368, column: 13, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !147, file: !148, line: 368, column: 7)
!3373 = !DILocation(line: 368, column: 7, scope: !147)
!3374 = !DILocation(line: 370, column: 15, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3372, file: !148, line: 368, column: 18)
!3376 = !DILocation(line: 371, column: 3, scope: !3375)
!3377 = !DILocation(line: 374, column: 15, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !147, file: !148, line: 374, column: 7)
!3379 = !DILocation(line: 374, column: 7, scope: !147)
!3380 = !DILocation(line: 376, column: 3, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !148, line: 374, column: 35)
!3382 = !DILocation(line: 378, column: 3, scope: !147)
!3383 = !DILocation(line: 378, column: 15, scope: !147)
!3384 = !DILocation(line: 378, column: 42, scope: !147)
!3385 = !DILocation(line: 378, column: 51, scope: !147)
!3386 = !DILocation(line: 379, column: 12, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !147, file: !148, line: 378, column: 58)
!3388 = !DILocation(line: 379, column: 5, scope: !3387)
!3389 = !DILocation(line: 379, column: 16, scope: !3387)
!3390 = !DILocation(line: 380, column: 9, scope: !3387)
!3391 = distinct !{!3391, !3382, !3392}
!3392 = !DILocation(line: 381, column: 3, scope: !147)
!3393 = !DILocation(line: 383, column: 15, scope: !147)
!3394 = !DILocation(line: 384, column: 25, scope: !147)
!3395 = !DILocation(line: 384, column: 23, scope: !147)
!3396 = !DILocation(line: 384, column: 34, scope: !147)
!3397 = !{!3398, !3398, i64 0}
!3398 = !{!"double", !296, i64 0}
!3399 = !DILocation(line: 384, column: 32, scope: !147)
!3400 = !DILocation(line: 385, column: 24, scope: !147)
!3401 = !DILocation(line: 386, column: 16, scope: !147)
!3402 = !DILocation(line: 386, column: 14, scope: !147)
!3403 = !DILocation(line: 388, column: 12, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !147, file: !148, line: 388, column: 7)
!3405 = !DILocation(line: 388, column: 7, scope: !147)
!3406 = !DILocation(line: 389, column: 5, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3404, file: !148, line: 388, column: 19)
!3408 = !DILocation(line: 391, column: 9, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3407, file: !148, line: 391, column: 9)
!3410 = !DILocation(line: 391, column: 17, scope: !3409)
!3411 = !DILocation(line: 391, column: 14, scope: !3409)
!3412 = !DILocation(line: 391, column: 9, scope: !3407)
!3413 = !DILocation(line: 393, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3409, file: !148, line: 391, column: 30)
!3415 = !DILocation(line: 394, column: 5, scope: !3414)
!3416 = !DILocation(line: 0, scope: !3407)
!3417 = !DILocation(line: 395, column: 3, scope: !3407)
!3418 = !DILocation(line: 396, column: 17, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3404, file: !148, line: 396, column: 12)
!3420 = !DILocation(line: 396, column: 12, scope: !3404)
!3421 = !DILocation(line: 397, column: 3, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !148, line: 396, column: 24)
!3423 = !DILocation(line: 398, column: 18, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3419, file: !148, line: 398, column: 12)
!3425 = !DILocation(line: 398, column: 25, scope: !3424)
!3426 = !DILocation(line: 398, column: 34, scope: !3424)
!3427 = !DILocation(line: 398, column: 12, scope: !3419)
!3428 = !DILocation(line: 400, column: 5, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3424, file: !148, line: 398, column: 41)
!3430 = !DILocation(line: 401, column: 3, scope: !3429)
!3431 = !DILocation(line: 403, column: 12, scope: !194)
!3432 = !DILocation(line: 403, column: 7, scope: !147)
!3433 = !DILocation(line: 404, column: 20, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !194, file: !148, line: 403, column: 19)
!3435 = !DILocation(line: 404, column: 18, scope: !3434)
!3436 = !DILocation(line: 405, column: 17, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3434, file: !148, line: 405, column: 9)
!3438 = !DILocation(line: 405, column: 24, scope: !3437)
!3439 = !DILocation(line: 405, column: 33, scope: !3437)
!3440 = !DILocation(line: 405, column: 41, scope: !3437)
!3441 = !DILocation(line: 405, column: 51, scope: !3437)
!3442 = !DILocation(line: 405, column: 9, scope: !3434)
!3443 = !DILocation(line: 408, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !148, line: 405, column: 57)
!3445 = !DILocation(line: 409, column: 5, scope: !3444)
!3446 = !DILocation(line: 410, column: 3, scope: !3434)
!3447 = !DILocation(line: 0, scope: !193)
!3448 = !DILocation(line: 414, column: 5, scope: !193)
!3449 = !DILocation(line: 414, column: 16, scope: !193)
!3450 = !DILocation(line: 415, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !193, file: !148, line: 414, column: 43)
!3452 = !DILocation(line: 416, column: 39, scope: !3451)
!3453 = !DILocation(line: 416, column: 31, scope: !3451)
!3454 = !DILocation(line: 416, column: 20, scope: !3451)
!3455 = !DILocation(line: 416, column: 14, scope: !3451)
!3456 = !DILocation(line: 416, column: 7, scope: !3451)
!3457 = !DILocation(line: 416, column: 18, scope: !3451)
!3458 = !DILocation(line: 417, column: 18, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3451, file: !148, line: 417, column: 11)
!3460 = !DILocation(line: 417, column: 11, scope: !3451)
!3461 = !DILocation(line: 418, column: 9, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !148, line: 417, column: 27)
!3463 = distinct !{!3463, !3448, !3464}
!3464 = !DILocation(line: 420, column: 5, scope: !193)
!3465 = !DILocation(line: 422, column: 5, scope: !193)
!3466 = !DILocation(line: 422, column: 17, scope: !193)
!3467 = !DILocation(line: 422, column: 44, scope: !193)
!3468 = !DILocation(line: 422, column: 53, scope: !193)
!3469 = !DILocation(line: 422, column: 56, scope: !193)
!3470 = !DILocation(line: 423, column: 14, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !193, file: !148, line: 422, column: 63)
!3472 = !DILocation(line: 423, column: 7, scope: !3471)
!3473 = !DILocation(line: 423, column: 18, scope: !3471)
!3474 = distinct !{!3474, !3465, !3475}
!3475 = !DILocation(line: 424, column: 5, scope: !193)
!3476 = !DILocation(line: 425, column: 13, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !193, file: !148, line: 425, column: 9)
!3478 = !DILocation(line: 425, column: 9, scope: !193)
!3479 = !DILocation(line: 427, column: 14, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3477, file: !148, line: 425, column: 40)
!3481 = !DILocation(line: 427, column: 7, scope: !3480)
!3482 = !DILocation(line: 427, column: 18, scope: !3480)
!3483 = !DILocation(line: 428, column: 5, scope: !3480)
!3484 = !DILocation(line: 432, column: 3, scope: !147)
!3485 = !DILocation(line: 432, column: 14, scope: !147)
!3486 = !DILocation(line: 433, column: 37, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !147, file: !148, line: 432, column: 41)
!3488 = !DILocation(line: 433, column: 28, scope: !3487)
!3489 = !DILocation(line: 433, column: 18, scope: !3487)
!3490 = !DILocation(line: 433, column: 12, scope: !3487)
!3491 = !DILocation(line: 433, column: 5, scope: !3487)
!3492 = !DILocation(line: 433, column: 16, scope: !3487)
!3493 = !DILocation(line: 434, column: 17, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3487, file: !148, line: 434, column: 9)
!3495 = !DILocation(line: 434, column: 9, scope: !3487)
!3496 = !DILocation(line: 435, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3494, file: !148, line: 434, column: 25)
!3498 = distinct !{!3498, !3484, !3499}
!3499 = !DILocation(line: 437, column: 3, scope: !147)
!3500 = !DILocation(line: 440, column: 15, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !147, file: !148, line: 440, column: 7)
!3502 = !DILocation(line: 440, column: 29, scope: !3501)
!3503 = !DILocation(line: 440, column: 39, scope: !3501)
!3504 = !DILocation(line: 440, column: 7, scope: !147)
!3505 = !DILocation(line: 441, column: 9, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !148, line: 441, column: 9)
!3507 = distinct !DILexicalBlock(scope: !3501, file: !148, line: 440, column: 57)
!3508 = !DILocation(line: 441, column: 15, scope: !3506)
!3509 = !DILocation(line: 441, column: 19, scope: !3506)
!3510 = !DILocation(line: 441, column: 28, scope: !3506)
!3511 = !DILocation(line: 441, column: 38, scope: !3506)
!3512 = !DILocation(line: 441, column: 9, scope: !3507)
!3513 = !DILocation(line: 442, column: 12, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3506, file: !148, line: 441, column: 70)
!3515 = !DILocation(line: 443, column: 5, scope: !3514)
!3516 = !DILocation(line: 444, column: 5, scope: !3507)
!3517 = !DILocation(line: 444, column: 17, scope: !3507)
!3518 = !DILocation(line: 444, column: 26, scope: !3507)
!3519 = !DILocation(line: 444, column: 34, scope: !3507)
!3520 = !DILocation(line: 0, scope: !3507)
!3521 = !DILocation(line: 445, column: 14, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3507, file: !148, line: 444, column: 62)
!3523 = !DILocation(line: 445, column: 7, scope: !3522)
!3524 = !DILocation(line: 445, column: 18, scope: !3522)
!3525 = distinct !{!3525, !3516, !3526}
!3526 = !DILocation(line: 446, column: 5, scope: !3507)
!3527 = !DILocation(line: 447, column: 3, scope: !3507)
!3528 = !DILocation(line: 449, column: 11, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !147, file: !148, line: 449, column: 7)
!3530 = !DILocation(line: 449, column: 7, scope: !147)
!3531 = !DILocation(line: 450, column: 9, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !148, line: 450, column: 9)
!3533 = distinct !DILexicalBlock(scope: !3529, file: !148, line: 449, column: 38)
!3534 = !DILocation(line: 450, column: 9, scope: !3533)
!3535 = !DILocation(line: 451, column: 14, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3532, file: !148, line: 450, column: 19)
!3537 = !DILocation(line: 451, column: 7, scope: !3536)
!3538 = !DILocation(line: 451, column: 18, scope: !3536)
!3539 = !DILocation(line: 452, column: 5, scope: !3536)
!3540 = !DILocation(line: 453, column: 20, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3532, file: !148, line: 453, column: 14)
!3542 = !DILocation(line: 453, column: 14, scope: !3532)
!3543 = !DILocation(line: 454, column: 14, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !148, line: 453, column: 34)
!3545 = !DILocation(line: 454, column: 7, scope: !3544)
!3546 = !DILocation(line: 454, column: 18, scope: !3544)
!3547 = !DILocation(line: 455, column: 5, scope: !3544)
!3548 = !DILocation(line: 456, column: 20, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3541, file: !148, line: 456, column: 14)
!3550 = !DILocation(line: 456, column: 14, scope: !3541)
!3551 = !DILocation(line: 457, column: 14, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3549, file: !148, line: 456, column: 35)
!3553 = !DILocation(line: 457, column: 7, scope: !3552)
!3554 = !DILocation(line: 457, column: 18, scope: !3552)
!3555 = !DILocation(line: 458, column: 5, scope: !3552)
!3556 = !DILocation(line: 0, scope: !3541)
!3557 = !DILocation(line: 0, scope: !3532)
!3558 = !DILocation(line: 459, column: 3, scope: !3533)
!3559 = !DILocation(line: 461, column: 45, scope: !147)
!3560 = !DILocation(line: 461, column: 10, scope: !147)
!3561 = !DILocation(line: 462, column: 1, scope: !147)
!3562 = distinct !DISubprogram(name: "_etoa", scope: !148, file: !148, line: 467, type: !149, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3578, !3579, !3580, !3581, !3582, !3583, !3584}
!3564 = !DILocalVariable(name: "out", arg: 1, scope: !3562, file: !148, line: 467, type: !153)
!3565 = !DILocalVariable(name: "buffer", arg: 2, scope: !3562, file: !148, line: 467, type: !66)
!3566 = !DILocalVariable(name: "idx", arg: 3, scope: !3562, file: !148, line: 467, type: !151)
!3567 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3562, file: !148, line: 467, type: !151)
!3568 = !DILocalVariable(name: "value", arg: 5, scope: !3562, file: !148, line: 467, type: !69)
!3569 = !DILocalVariable(name: "prec", arg: 6, scope: !3562, file: !148, line: 467, type: !24)
!3570 = !DILocalVariable(name: "width", arg: 7, scope: !3562, file: !148, line: 467, type: !24)
!3571 = !DILocalVariable(name: "flags", arg: 8, scope: !3562, file: !148, line: 467, type: !24)
!3572 = !DILocalVariable(name: "negative", scope: !3562, file: !148, line: 475, type: !2751)
!3573 = !DILocalVariable(name: "conv", scope: !3562, file: !148, line: 490, type: !3574)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3562, file: !148, line: 487, size: 64, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "U", scope: !3574, file: !148, line: 488, baseType: !138, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !3574, file: !148, line: 489, baseType: !69, size: 64)
!3578 = !DILocalVariable(name: "exp2", scope: !3562, file: !148, line: 493, type: !43)
!3579 = !DILocalVariable(name: "expval", scope: !3562, file: !148, line: 496, type: !43)
!3580 = !DILocalVariable(name: "z", scope: !3562, file: !148, line: 499, type: !196)
!3581 = !DILocalVariable(name: "z2", scope: !3562, file: !148, line: 500, type: !196)
!3582 = !DILocalVariable(name: "minwidth", scope: !3562, file: !148, line: 511, type: !24)
!3583 = !DILocalVariable(name: "fwidth", scope: !3562, file: !148, line: 537, type: !24)
!3584 = !DILocalVariable(name: "start_idx", scope: !3562, file: !148, line: 556, type: !2698)
!3585 = !DILocation(line: 0, scope: !3562)
!3586 = !DILocation(line: 470, column: 14, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 470, column: 7)
!3588 = !DILocation(line: 470, column: 24, scope: !3587)
!3589 = !DILocation(line: 470, column: 34, scope: !3587)
!3590 = !DILocation(line: 470, column: 45, scope: !3587)
!3591 = !DILocation(line: 470, column: 55, scope: !3587)
!3592 = !DILocation(line: 470, column: 7, scope: !3562)
!3593 = !DILocation(line: 471, column: 12, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3587, file: !148, line: 470, column: 68)
!3595 = !DILocation(line: 471, column: 5, scope: !3594)
!3596 = !DILocation(line: 475, column: 31, scope: !3562)
!3597 = !DILocation(line: 475, column: 14, scope: !3562)
!3598 = !DILocation(line: 476, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 476, column: 7)
!3600 = !DILocation(line: 476, column: 7, scope: !3562)
!3601 = !DILocation(line: 477, column: 13, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3599, file: !148, line: 476, column: 17)
!3603 = !DILocation(line: 478, column: 3, scope: !3602)
!3604 = !DILocation(line: 481, column: 15, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 481, column: 7)
!3606 = !DILocation(line: 481, column: 7, scope: !3562)
!3607 = !DILocation(line: 483, column: 3, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3605, file: !148, line: 481, column: 35)
!3609 = !DILocation(line: 487, column: 3, scope: !3562)
!3610 = !DILocation(line: 490, column: 5, scope: !3562)
!3611 = !DILocation(line: 492, column: 8, scope: !3562)
!3612 = !DILocation(line: 492, column: 10, scope: !3562)
!3613 = !DILocation(line: 493, column: 26, scope: !3562)
!3614 = !DILocation(line: 493, column: 28, scope: !3562)
!3615 = !DILocation(line: 493, column: 36, scope: !3562)
!3616 = !DILocation(line: 493, column: 14, scope: !3562)
!3617 = !DILocation(line: 493, column: 47, scope: !3562)
!3618 = !DILocation(line: 494, column: 18, scope: !3562)
!3619 = !DILocation(line: 494, column: 20, scope: !3562)
!3620 = !DILocation(line: 494, column: 44, scope: !3562)
!3621 = !DILocation(line: 494, column: 8, scope: !3562)
!3622 = !DILocation(line: 494, column: 10, scope: !3562)
!3623 = !DILocation(line: 496, column: 40, scope: !3562)
!3624 = !DILocation(line: 496, column: 45, scope: !3562)
!3625 = !DILocation(line: 496, column: 38, scope: !3562)
!3626 = !DILocation(line: 496, column: 73, scope: !3562)
!3627 = !DILocation(line: 496, column: 75, scope: !3562)
!3628 = !DILocation(line: 496, column: 82, scope: !3562)
!3629 = !DILocation(line: 496, column: 65, scope: !3562)
!3630 = !DILocation(line: 496, column: 16, scope: !3562)
!3631 = !DILocation(line: 498, column: 16, scope: !3562)
!3632 = !DILocation(line: 498, column: 23, scope: !3562)
!3633 = !DILocation(line: 498, column: 43, scope: !3562)
!3634 = !DILocation(line: 498, column: 10, scope: !3562)
!3635 = !DILocation(line: 499, column: 21, scope: !3562)
!3636 = !DILocation(line: 499, column: 28, scope: !3562)
!3637 = !DILocation(line: 499, column: 50, scope: !3562)
!3638 = !DILocation(line: 499, column: 55, scope: !3562)
!3639 = !DILocation(line: 499, column: 48, scope: !3562)
!3640 = !DILocation(line: 500, column: 23, scope: !3562)
!3641 = !DILocation(line: 501, column: 28, scope: !3562)
!3642 = !DILocation(line: 501, column: 12, scope: !3562)
!3643 = !DILocation(line: 501, column: 36, scope: !3562)
!3644 = !DILocation(line: 501, column: 8, scope: !3562)
!3645 = !DILocation(line: 501, column: 10, scope: !3562)
!3646 = !DILocation(line: 503, column: 19, scope: !3562)
!3647 = !DILocation(line: 503, column: 28, scope: !3562)
!3648 = !DILocation(line: 503, column: 60, scope: !3562)
!3649 = !DILocation(line: 503, column: 55, scope: !3562)
!3650 = !DILocation(line: 503, column: 49, scope: !3562)
!3651 = !DILocation(line: 503, column: 43, scope: !3562)
!3652 = !DILocation(line: 503, column: 38, scope: !3562)
!3653 = !DILocation(line: 503, column: 32, scope: !3562)
!3654 = !DILocation(line: 503, column: 23, scope: !3562)
!3655 = !DILocation(line: 503, column: 15, scope: !3562)
!3656 = !DILocation(line: 503, column: 8, scope: !3562)
!3657 = !DILocation(line: 503, column: 10, scope: !3562)
!3658 = !DILocation(line: 505, column: 20, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 505, column: 7)
!3660 = !DILocation(line: 505, column: 13, scope: !3659)
!3661 = !DILocation(line: 505, column: 7, scope: !3562)
!3662 = !DILocation(line: 506, column: 11, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3659, file: !148, line: 505, column: 23)
!3664 = !DILocation(line: 507, column: 10, scope: !3663)
!3665 = !DILocation(line: 507, column: 12, scope: !3663)
!3666 = !DILocation(line: 508, column: 3, scope: !3663)
!3667 = !DILocation(line: 511, column: 36, scope: !3562)
!3668 = !DILocation(line: 511, column: 43, scope: !3562)
!3669 = !DILocation(line: 511, column: 54, scope: !3562)
!3670 = !DILocation(line: 511, column: 27, scope: !3562)
!3671 = !DILocation(line: 514, column: 13, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 514, column: 7)
!3673 = !DILocation(line: 514, column: 7, scope: !3562)
!3674 = !DILocation(line: 516, column: 16, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !148, line: 516, column: 9)
!3676 = distinct !DILexicalBlock(scope: !3672, file: !148, line: 514, column: 32)
!3677 = !DILocation(line: 516, column: 25, scope: !3675)
!3678 = !DILocation(line: 516, column: 35, scope: !3675)
!3679 = !DILocation(line: 516, column: 9, scope: !3676)
!3680 = !DILocation(line: 517, column: 21, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !148, line: 517, column: 11)
!3682 = distinct !DILexicalBlock(scope: !3675, file: !148, line: 516, column: 43)
!3683 = !DILocation(line: 517, column: 11, scope: !3682)
!3684 = !DILocation(line: 518, column: 37, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !148, line: 517, column: 31)
!3686 = !DILocation(line: 518, column: 46, scope: !3685)
!3687 = !DILocation(line: 519, column: 7, scope: !3685)
!3688 = !DILocation(line: 0, scope: !3681)
!3689 = !DILocation(line: 523, column: 13, scope: !3682)
!3690 = !DILocation(line: 527, column: 5, scope: !3682)
!3691 = !DILocation(line: 530, column: 17, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !148, line: 530, column: 11)
!3693 = distinct !DILexicalBlock(scope: !3675, file: !148, line: 528, column: 10)
!3694 = !DILocation(line: 530, column: 22, scope: !3692)
!3695 = !DILocation(line: 530, column: 32, scope: !3692)
!3696 = !DILocation(line: 530, column: 11, scope: !3693)
!3697 = !DILocation(line: 531, column: 9, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3692, file: !148, line: 530, column: 52)
!3699 = !DILocation(line: 532, column: 7, scope: !3698)
!3700 = !DILocation(line: 0, scope: !3675)
!3701 = !DILocation(line: 534, column: 3, scope: !3676)
!3702 = !DILocation(line: 538, column: 13, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 538, column: 7)
!3704 = !DILocation(line: 538, column: 7, scope: !3562)
!3705 = !DILocation(line: 540, column: 12, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3703, file: !148, line: 538, column: 25)
!3707 = !DILocation(line: 541, column: 3, scope: !3706)
!3708 = !DILocation(line: 0, scope: !3703)
!3709 = !DILocation(line: 545, column: 14, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 545, column: 7)
!3711 = !DILocation(line: 545, column: 28, scope: !3710)
!3712 = !DILocation(line: 545, column: 31, scope: !3710)
!3713 = !DILocation(line: 545, column: 7, scope: !3562)
!3714 = !DILocation(line: 548, column: 3, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3710, file: !148, line: 545, column: 41)
!3716 = !DILocation(line: 551, column: 7, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 551, column: 7)
!3718 = !DILocation(line: 551, column: 7, scope: !3562)
!3719 = !DILocation(line: 552, column: 19, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3717, file: !148, line: 551, column: 15)
!3721 = !DILocation(line: 552, column: 11, scope: !3720)
!3722 = !DILocation(line: 553, column: 3, scope: !3720)
!3723 = !DILocation(line: 557, column: 41, scope: !3562)
!3724 = !DILocation(line: 557, column: 52, scope: !3562)
!3725 = !DILocation(line: 557, column: 88, scope: !3562)
!3726 = !DILocation(line: 557, column: 9, scope: !3562)
!3727 = !DILocation(line: 560, column: 7, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3562, file: !148, line: 560, column: 7)
!3729 = !DILocation(line: 560, column: 7, scope: !3562)
!3730 = !DILocation(line: 562, column: 16, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !148, line: 560, column: 17)
!3732 = !DILocation(line: 562, column: 9, scope: !3731)
!3733 = !DILocation(line: 562, column: 59, scope: !3731)
!3734 = !DILocation(line: 562, column: 5, scope: !3731)
!3735 = !DILocation(line: 564, column: 56, scope: !3731)
!3736 = !DILocation(line: 564, column: 48, scope: !3731)
!3737 = !DILocation(line: 564, column: 63, scope: !3731)
!3738 = !DILocation(line: 564, column: 88, scope: !3731)
!3739 = !DILocation(line: 564, column: 108, scope: !3731)
!3740 = !DILocation(line: 564, column: 11, scope: !3731)
!3741 = !DILocation(line: 566, column: 15, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3731, file: !148, line: 566, column: 9)
!3743 = !DILocation(line: 566, column: 9, scope: !3731)
!3744 = !DILocation(line: 567, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !148, line: 566, column: 29)
!3746 = !DILocation(line: 0, scope: !3731)
!3747 = !DILocation(line: 567, column: 18, scope: !3745)
!3748 = !DILocation(line: 567, column: 30, scope: !3745)
!3749 = !DILocation(line: 567, column: 59, scope: !3745)
!3750 = !DILocation(line: 567, column: 39, scope: !3745)
!3751 = distinct !{!3751, !3744, !3752}
!3752 = !DILocation(line: 567, column: 69, scope: !3745)
!3753 = !DILocation(line: 568, column: 5, scope: !3745)
!3754 = !DILocation(line: 564, column: 9, scope: !3731)
!3755 = !DILocation(line: 569, column: 3, scope: !3731)
!3756 = !DILocation(line: 571, column: 1, scope: !3562)
!3757 = distinct !DISubprogram(name: "_strnlen_s", scope: !148, file: !148, line: 171, type: !3758, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!24, !2655, !151}
!3760 = !{!3761, !3762, !3763}
!3761 = !DILocalVariable(name: "str", arg: 1, scope: !3757, file: !148, line: 171, type: !2655)
!3762 = !DILocalVariable(name: "maxsize", arg: 2, scope: !3757, file: !148, line: 171, type: !151)
!3763 = !DILocalVariable(name: "s", scope: !3757, file: !148, line: 173, type: !2655)
!3764 = !DILocation(line: 0, scope: !3757)
!3765 = !DILocation(line: 174, column: 8, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3757, file: !148, line: 174, column: 3)
!3767 = !DILocation(line: 0, scope: !3766)
!3768 = !DILocation(line: 174, column: 17, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3766, file: !148, line: 174, column: 3)
!3770 = !DILocation(line: 174, column: 20, scope: !3769)
!3771 = !DILocation(line: 174, column: 30, scope: !3769)
!3772 = !DILocation(line: 0, scope: !3769)
!3773 = !DILocation(line: 174, column: 3, scope: !3766)
!3774 = !DILocation(line: 174, column: 34, scope: !3769)
!3775 = !DILocation(line: 174, column: 3, scope: !3769)
!3776 = distinct !{!3776, !3773, !3777}
!3777 = !DILocation(line: 174, column: 38, scope: !3766)
!3778 = !DILocation(line: 175, column: 27, scope: !3757)
!3779 = !DILocation(line: 175, column: 3, scope: !3757)
!3780 = distinct !DISubprogram(name: "_out_rev", scope: !148, file: !148, line: 199, type: !3781, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!151, !153, !66, !151, !151, !2655, !151, !24, !24}
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793}
!3784 = !DILocalVariable(name: "out", arg: 1, scope: !3780, file: !148, line: 199, type: !153)
!3785 = !DILocalVariable(name: "buffer", arg: 2, scope: !3780, file: !148, line: 199, type: !66)
!3786 = !DILocalVariable(name: "idx", arg: 3, scope: !3780, file: !148, line: 199, type: !151)
!3787 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3780, file: !148, line: 199, type: !151)
!3788 = !DILocalVariable(name: "buf", arg: 5, scope: !3780, file: !148, line: 199, type: !2655)
!3789 = !DILocalVariable(name: "len", arg: 6, scope: !3780, file: !148, line: 199, type: !151)
!3790 = !DILocalVariable(name: "width", arg: 7, scope: !3780, file: !148, line: 199, type: !24)
!3791 = !DILocalVariable(name: "flags", arg: 8, scope: !3780, file: !148, line: 199, type: !24)
!3792 = !DILocalVariable(name: "start_idx", scope: !3780, file: !148, line: 201, type: !2698)
!3793 = !DILocalVariable(name: "i", scope: !3794, file: !148, line: 205, type: !151)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !148, line: 205, column: 5)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !148, line: 204, column: 58)
!3796 = distinct !DILexicalBlock(scope: !3780, file: !148, line: 204, column: 7)
!3797 = !DILocation(line: 0, scope: !3780)
!3798 = !DILocation(line: 204, column: 15, scope: !3796)
!3799 = !DILocation(line: 204, column: 29, scope: !3796)
!3800 = !DILocation(line: 204, column: 40, scope: !3796)
!3801 = !DILocation(line: 204, column: 7, scope: !3780)
!3802 = !DILocation(line: 0, scope: !3794)
!3803 = !DILocation(line: 205, column: 10, scope: !3794)
!3804 = !DILocation(line: 205, column: 28, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3794, file: !148, line: 205, column: 5)
!3806 = !DILocation(line: 205, column: 5, scope: !3794)
!3807 = !DILocation(line: 206, column: 27, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3805, file: !148, line: 205, column: 42)
!3809 = !DILocation(line: 206, column: 7, scope: !3808)
!3810 = !DILocation(line: 207, column: 5, scope: !3808)
!3811 = !DILocation(line: 205, column: 38, scope: !3805)
!3812 = !DILocation(line: 205, column: 5, scope: !3805)
!3813 = distinct !{!3813, !3806, !3814}
!3814 = !DILocation(line: 207, column: 5, scope: !3794)
!3815 = !DILocation(line: 208, column: 3, scope: !3795)
!3816 = !DILocation(line: 211, column: 3, scope: !3780)
!3817 = !DILocation(line: 212, column: 13, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3780, file: !148, line: 211, column: 15)
!3819 = !DILocation(line: 212, column: 9, scope: !3818)
!3820 = !DILocation(line: 212, column: 32, scope: !3818)
!3821 = !DILocation(line: 212, column: 5, scope: !3818)
!3822 = distinct !{!3822, !3816, !3823}
!3823 = !DILocation(line: 213, column: 3, scope: !3780)
!3824 = !DILocation(line: 216, column: 13, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3780, file: !148, line: 216, column: 7)
!3826 = !DILocation(line: 216, column: 7, scope: !3780)
!3827 = !DILocation(line: 217, column: 5, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !148, line: 216, column: 27)
!3829 = !DILocation(line: 217, column: 16, scope: !3828)
!3830 = !DILocation(line: 217, column: 28, scope: !3828)
!3831 = !DILocation(line: 218, column: 27, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3828, file: !148, line: 217, column: 37)
!3833 = !DILocation(line: 218, column: 7, scope: !3832)
!3834 = distinct !{!3834, !3827, !3835}
!3835 = !DILocation(line: 219, column: 5, scope: !3828)
!3836 = !DILocation(line: 220, column: 3, scope: !3828)
!3837 = !DILocation(line: 222, column: 3, scope: !3780)
!3838 = distinct !DISubprogram(name: "_ntoa_format", scope: !148, file: !148, line: 227, type: !3839, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!151, !153, !66, !151, !151, !66, !151, !188, !24, !24, !24, !24}
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852}
!3842 = !DILocalVariable(name: "out", arg: 1, scope: !3838, file: !148, line: 227, type: !153)
!3843 = !DILocalVariable(name: "buffer", arg: 2, scope: !3838, file: !148, line: 227, type: !66)
!3844 = !DILocalVariable(name: "idx", arg: 3, scope: !3838, file: !148, line: 227, type: !151)
!3845 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3838, file: !148, line: 227, type: !151)
!3846 = !DILocalVariable(name: "buf", arg: 5, scope: !3838, file: !148, line: 227, type: !66)
!3847 = !DILocalVariable(name: "len", arg: 6, scope: !3838, file: !148, line: 227, type: !151)
!3848 = !DILocalVariable(name: "negative", arg: 7, scope: !3838, file: !148, line: 227, type: !188)
!3849 = !DILocalVariable(name: "base", arg: 8, scope: !3838, file: !148, line: 227, type: !24)
!3850 = !DILocalVariable(name: "prec", arg: 9, scope: !3838, file: !148, line: 227, type: !24)
!3851 = !DILocalVariable(name: "width", arg: 10, scope: !3838, file: !148, line: 227, type: !24)
!3852 = !DILocalVariable(name: "flags", arg: 11, scope: !3838, file: !148, line: 227, type: !24)
!3853 = !DILocation(line: 0, scope: !3838)
!3854 = !DILocation(line: 230, column: 15, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3838, file: !148, line: 230, column: 7)
!3856 = !DILocation(line: 230, column: 7, scope: !3838)
!3857 = !DILocation(line: 231, column: 9, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !148, line: 231, column: 9)
!3859 = distinct !DILexicalBlock(scope: !3855, file: !148, line: 230, column: 30)
!3860 = !DILocation(line: 231, column: 15, scope: !3858)
!3861 = !DILocation(line: 231, column: 25, scope: !3858)
!3862 = !DILocation(line: 231, column: 42, scope: !3858)
!3863 = !DILocation(line: 231, column: 46, scope: !3858)
!3864 = !DILocation(line: 231, column: 55, scope: !3858)
!3865 = !DILocation(line: 231, column: 65, scope: !3858)
!3866 = !DILocation(line: 231, column: 9, scope: !3859)
!3867 = !DILocation(line: 232, column: 12, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3858, file: !148, line: 231, column: 97)
!3869 = !DILocation(line: 233, column: 5, scope: !3868)
!3870 = !DILocation(line: 234, column: 5, scope: !3859)
!3871 = !DILocation(line: 234, column: 17, scope: !3859)
!3872 = !DILocation(line: 234, column: 25, scope: !3859)
!3873 = !DILocation(line: 234, column: 33, scope: !3859)
!3874 = !DILocation(line: 0, scope: !3859)
!3875 = !DILocation(line: 235, column: 14, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3859, file: !148, line: 234, column: 61)
!3877 = !DILocation(line: 235, column: 7, scope: !3876)
!3878 = !DILocation(line: 235, column: 18, scope: !3876)
!3879 = distinct !{!3879, !3870, !3880}
!3880 = !DILocation(line: 236, column: 5, scope: !3859)
!3881 = !DILocation(line: 237, column: 5, scope: !3859)
!3882 = !DILocation(line: 237, column: 19, scope: !3859)
!3883 = !DILocation(line: 237, column: 36, scope: !3859)
!3884 = !DILocation(line: 237, column: 44, scope: !3859)
!3885 = !DILocation(line: 237, column: 53, scope: !3859)
!3886 = !DILocation(line: 237, column: 61, scope: !3859)
!3887 = !DILocation(line: 238, column: 14, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3859, file: !148, line: 237, column: 89)
!3889 = !DILocation(line: 238, column: 7, scope: !3888)
!3890 = !DILocation(line: 238, column: 18, scope: !3888)
!3891 = distinct !{!3891, !3881, !3892}
!3892 = !DILocation(line: 239, column: 5, scope: !3859)
!3893 = !DILocation(line: 240, column: 3, scope: !3859)
!3894 = !DILocation(line: 243, column: 13, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3838, file: !148, line: 243, column: 7)
!3896 = !DILocation(line: 243, column: 7, scope: !3838)
!3897 = !DILocation(line: 244, column: 17, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !148, line: 244, column: 9)
!3899 = distinct !DILexicalBlock(scope: !3895, file: !148, line: 243, column: 27)
!3900 = !DILocation(line: 244, column: 36, scope: !3898)
!3901 = !DILocation(line: 244, column: 39, scope: !3898)
!3902 = !DILocation(line: 244, column: 43, scope: !3898)
!3903 = !DILocation(line: 244, column: 52, scope: !3898)
!3904 = !DILocation(line: 244, column: 61, scope: !3898)
!3905 = !DILocation(line: 244, column: 69, scope: !3898)
!3906 = !DILocation(line: 244, column: 9, scope: !3899)
!3907 = !DILocation(line: 245, column: 10, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3898, file: !148, line: 244, column: 81)
!3909 = !DILocation(line: 246, column: 11, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3908, file: !148, line: 246, column: 11)
!3911 = !DILocation(line: 246, column: 15, scope: !3910)
!3912 = !DILocation(line: 246, column: 24, scope: !3910)
!3913 = !DILocation(line: 246, column: 11, scope: !3908)
!3914 = !DILocation(line: 247, column: 12, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3910, file: !148, line: 246, column: 33)
!3916 = !DILocation(line: 248, column: 7, scope: !3915)
!3917 = !DILocation(line: 0, scope: !3908)
!3918 = !DILocation(line: 249, column: 5, scope: !3908)
!3919 = !DILocation(line: 250, column: 15, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3899, file: !148, line: 250, column: 9)
!3921 = !DILocation(line: 250, column: 23, scope: !3920)
!3922 = !DILocation(line: 250, column: 34, scope: !3920)
!3923 = !DILocation(line: 250, column: 53, scope: !3920)
!3924 = !DILocation(line: 250, column: 61, scope: !3920)
!3925 = !DILocation(line: 250, column: 9, scope: !3899)
!3926 = !DILocation(line: 251, column: 14, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3920, file: !148, line: 250, column: 89)
!3928 = !DILocation(line: 251, column: 7, scope: !3927)
!3929 = !DILocation(line: 251, column: 18, scope: !3927)
!3930 = !DILocation(line: 252, column: 5, scope: !3927)
!3931 = !DILocation(line: 253, column: 20, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3920, file: !148, line: 253, column: 14)
!3933 = !DILocation(line: 253, column: 28, scope: !3932)
!3934 = !DILocation(line: 253, column: 38, scope: !3932)
!3935 = !DILocation(line: 253, column: 57, scope: !3932)
!3936 = !DILocation(line: 253, column: 65, scope: !3932)
!3937 = !DILocation(line: 253, column: 14, scope: !3920)
!3938 = !DILocation(line: 254, column: 14, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3932, file: !148, line: 253, column: 93)
!3940 = !DILocation(line: 254, column: 7, scope: !3939)
!3941 = !DILocation(line: 254, column: 18, scope: !3939)
!3942 = !DILocation(line: 255, column: 5, scope: !3939)
!3943 = !DILocation(line: 256, column: 20, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3932, file: !148, line: 256, column: 14)
!3945 = !DILocation(line: 256, column: 27, scope: !3944)
!3946 = !DILocation(line: 256, column: 35, scope: !3944)
!3947 = !DILocation(line: 256, column: 14, scope: !3932)
!3948 = !DILocation(line: 257, column: 14, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3944, file: !148, line: 256, column: 63)
!3950 = !DILocation(line: 257, column: 7, scope: !3949)
!3951 = !DILocation(line: 257, column: 18, scope: !3949)
!3952 = !DILocation(line: 258, column: 5, scope: !3949)
!3953 = !DILocation(line: 0, scope: !3932)
!3954 = !DILocation(line: 0, scope: !3920)
!3955 = !DILocation(line: 259, column: 13, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3899, file: !148, line: 259, column: 9)
!3957 = !DILocation(line: 259, column: 9, scope: !3899)
!3958 = !DILocation(line: 260, column: 14, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3956, file: !148, line: 259, column: 40)
!3960 = !DILocation(line: 260, column: 7, scope: !3959)
!3961 = !DILocation(line: 260, column: 18, scope: !3959)
!3962 = !DILocation(line: 261, column: 5, scope: !3959)
!3963 = !DILocation(line: 0, scope: !3899)
!3964 = !DILocation(line: 262, column: 3, scope: !3899)
!3965 = !DILocation(line: 264, column: 11, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3838, file: !148, line: 264, column: 7)
!3967 = !DILocation(line: 264, column: 7, scope: !3838)
!3968 = !DILocation(line: 265, column: 9, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !148, line: 265, column: 9)
!3970 = distinct !DILexicalBlock(scope: !3966, file: !148, line: 264, column: 38)
!3971 = !DILocation(line: 265, column: 9, scope: !3970)
!3972 = !DILocation(line: 266, column: 14, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3969, file: !148, line: 265, column: 19)
!3974 = !DILocation(line: 266, column: 7, scope: !3973)
!3975 = !DILocation(line: 266, column: 18, scope: !3973)
!3976 = !DILocation(line: 267, column: 5, scope: !3973)
!3977 = !DILocation(line: 268, column: 20, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3969, file: !148, line: 268, column: 14)
!3979 = !DILocation(line: 268, column: 14, scope: !3969)
!3980 = !DILocation(line: 269, column: 14, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !148, line: 268, column: 34)
!3982 = !DILocation(line: 269, column: 7, scope: !3981)
!3983 = !DILocation(line: 269, column: 18, scope: !3981)
!3984 = !DILocation(line: 270, column: 5, scope: !3981)
!3985 = !DILocation(line: 271, column: 20, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3978, file: !148, line: 271, column: 14)
!3987 = !DILocation(line: 271, column: 14, scope: !3978)
!3988 = !DILocation(line: 272, column: 14, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3986, file: !148, line: 271, column: 35)
!3990 = !DILocation(line: 272, column: 7, scope: !3989)
!3991 = !DILocation(line: 272, column: 18, scope: !3989)
!3992 = !DILocation(line: 273, column: 5, scope: !3989)
!3993 = !DILocation(line: 0, scope: !3978)
!3994 = !DILocation(line: 0, scope: !3969)
!3995 = !DILocation(line: 274, column: 3, scope: !3970)
!3996 = !DILocation(line: 276, column: 10, scope: !3838)
!3997 = !DILocation(line: 276, column: 3, scope: !3838)
!3998 = distinct !DISubprogram(name: "sprintf_", scope: !148, file: !148, line: 873, type: !3999, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!43, !66, !2655, null}
!4001 = !{!4002, !4003, !4004, !4005}
!4002 = !DILocalVariable(name: "buffer", arg: 1, scope: !3998, file: !148, line: 873, type: !66)
!4003 = !DILocalVariable(name: "format", arg: 2, scope: !3998, file: !148, line: 873, type: !2655)
!4004 = !DILocalVariable(name: "va", scope: !3998, file: !148, line: 875, type: !2660)
!4005 = !DILocalVariable(name: "ret", scope: !3998, file: !148, line: 877, type: !2669)
!4006 = !DILocation(line: 0, scope: !3998)
!4007 = !DILocation(line: 875, column: 3, scope: !3998)
!4008 = !DILocation(line: 875, column: 11, scope: !3998)
!4009 = !DILocation(line: 876, column: 3, scope: !3998)
!4010 = !DILocation(line: 877, column: 19, scope: !3998)
!4011 = !DILocation(line: 878, column: 3, scope: !3998)
!4012 = !DILocation(line: 880, column: 1, scope: !3998)
!4013 = !DILocation(line: 879, column: 3, scope: !3998)
!4014 = distinct !DISubprogram(name: "_out_buffer", scope: !148, file: !148, line: 133, type: !155, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4015)
!4015 = !{!4016, !4017, !4018, !4019}
!4016 = !DILocalVariable(name: "character", arg: 1, scope: !4014, file: !148, line: 133, type: !67)
!4017 = !DILocalVariable(name: "buffer", arg: 2, scope: !4014, file: !148, line: 133, type: !19)
!4018 = !DILocalVariable(name: "idx", arg: 3, scope: !4014, file: !148, line: 133, type: !151)
!4019 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4014, file: !148, line: 133, type: !151)
!4020 = !DILocation(line: 0, scope: !4014)
!4021 = !DILocation(line: 135, column: 11, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4014, file: !148, line: 135, column: 7)
!4023 = !DILocation(line: 135, column: 7, scope: !4014)
!4024 = !DILocation(line: 136, column: 5, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4022, file: !148, line: 135, column: 21)
!4026 = !DILocation(line: 136, column: 26, scope: !4025)
!4027 = !DILocation(line: 137, column: 3, scope: !4025)
!4028 = !DILocation(line: 138, column: 1, scope: !4014)
!4029 = distinct !DISubprogram(name: "snprintf_", scope: !148, file: !148, line: 883, type: !4030, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!43, !66, !151, !2655, null}
!4032 = !{!4033, !4034, !4035, !4036, !4037}
!4033 = !DILocalVariable(name: "buffer", arg: 1, scope: !4029, file: !148, line: 883, type: !66)
!4034 = !DILocalVariable(name: "count", arg: 2, scope: !4029, file: !148, line: 883, type: !151)
!4035 = !DILocalVariable(name: "format", arg: 3, scope: !4029, file: !148, line: 883, type: !2655)
!4036 = !DILocalVariable(name: "va", scope: !4029, file: !148, line: 885, type: !2660)
!4037 = !DILocalVariable(name: "ret", scope: !4029, file: !148, line: 887, type: !2669)
!4038 = !DILocation(line: 0, scope: !4029)
!4039 = !DILocation(line: 885, column: 3, scope: !4029)
!4040 = !DILocation(line: 885, column: 11, scope: !4029)
!4041 = !DILocation(line: 886, column: 3, scope: !4029)
!4042 = !DILocation(line: 887, column: 19, scope: !4029)
!4043 = !DILocation(line: 888, column: 3, scope: !4029)
!4044 = !DILocation(line: 890, column: 1, scope: !4029)
!4045 = !DILocation(line: 889, column: 3, scope: !4029)
!4046 = distinct !DISubprogram(name: "vprintf_", scope: !148, file: !148, line: 893, type: !4047, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!43, !2655, !2660}
!4049 = !{!4050, !4051, !4052}
!4050 = !DILocalVariable(name: "format", arg: 1, scope: !4046, file: !148, line: 893, type: !2655)
!4051 = !DILocalVariable(name: "va", arg: 2, scope: !4046, file: !148, line: 893, type: !2660)
!4052 = !DILocalVariable(name: "buffer", scope: !4046, file: !148, line: 895, type: !2667)
!4053 = !DILocation(line: 0, scope: !4046)
!4054 = !DILocation(line: 893, column: 42, scope: !4046)
!4055 = !DILocation(line: 895, column: 3, scope: !4046)
!4056 = !DILocation(line: 895, column: 8, scope: !4046)
!4057 = !DILocation(line: 896, column: 32, scope: !4046)
!4058 = !DILocation(line: 896, column: 10, scope: !4046)
!4059 = !DILocation(line: 897, column: 1, scope: !4046)
!4060 = !DILocation(line: 896, column: 3, scope: !4046)
!4061 = distinct !DISubprogram(name: "vsnprintf_", scope: !148, file: !148, line: 900, type: !4062, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!43, !66, !151, !2655, !2660}
!4064 = !{!4065, !4066, !4067, !4068}
!4065 = !DILocalVariable(name: "buffer", arg: 1, scope: !4061, file: !148, line: 900, type: !66)
!4066 = !DILocalVariable(name: "count", arg: 2, scope: !4061, file: !148, line: 900, type: !151)
!4067 = !DILocalVariable(name: "format", arg: 3, scope: !4061, file: !148, line: 900, type: !2655)
!4068 = !DILocalVariable(name: "va", arg: 4, scope: !4061, file: !148, line: 900, type: !2660)
!4069 = !DILocation(line: 0, scope: !4061)
!4070 = !DILocation(line: 900, column: 72, scope: !4061)
!4071 = !DILocation(line: 902, column: 10, scope: !4061)
!4072 = !DILocation(line: 902, column: 3, scope: !4061)
!4073 = distinct !DISubprogram(name: "fctprintf", scope: !148, file: !148, line: 906, type: !4074, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!43, !167, !19, !2655, null}
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4083}
!4077 = !DILocalVariable(name: "out", arg: 1, scope: !4073, file: !148, line: 906, type: !167)
!4078 = !DILocalVariable(name: "arg", arg: 2, scope: !4073, file: !148, line: 906, type: !19)
!4079 = !DILocalVariable(name: "format", arg: 3, scope: !4073, file: !148, line: 906, type: !2655)
!4080 = !DILocalVariable(name: "va", scope: !4073, file: !148, line: 908, type: !2660)
!4081 = !DILocalVariable(name: "out_fct_wrap", scope: !4073, file: !148, line: 910, type: !4082)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!4083 = !DILocalVariable(name: "ret", scope: !4073, file: !148, line: 911, type: !2669)
!4084 = !DILocation(line: 0, scope: !4073)
!4085 = !DILocation(line: 908, column: 3, scope: !4073)
!4086 = !DILocation(line: 908, column: 11, scope: !4073)
!4087 = !DILocation(line: 909, column: 3, scope: !4073)
!4088 = !DILocation(line: 910, column: 3, scope: !4073)
!4089 = !DILocation(line: 910, column: 27, scope: !4073)
!4090 = !DILocation(line: 910, column: 42, scope: !4073)
!4091 = !{!4092, !329, i64 0}
!4092 = !{!"", !329, i64 0, !329, i64 4}
!4093 = !{!4092, !329, i64 4}
!4094 = !DILocation(line: 911, column: 47, scope: !4073)
!4095 = !DILocation(line: 911, column: 40, scope: !4073)
!4096 = !DILocation(line: 911, column: 19, scope: !4073)
!4097 = !DILocation(line: 912, column: 3, scope: !4073)
!4098 = !DILocation(line: 914, column: 1, scope: !4073)
!4099 = !DILocation(line: 913, column: 3, scope: !4073)
!4100 = distinct !DISubprogram(name: "_out_fct", scope: !148, file: !148, line: 159, type: !155, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4101)
!4101 = !{!4102, !4103, !4104, !4105}
!4102 = !DILocalVariable(name: "character", arg: 1, scope: !4100, file: !148, line: 159, type: !67)
!4103 = !DILocalVariable(name: "buffer", arg: 2, scope: !4100, file: !148, line: 159, type: !19)
!4104 = !DILocalVariable(name: "idx", arg: 3, scope: !4100, file: !148, line: 159, type: !151)
!4105 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4100, file: !148, line: 159, type: !151)
!4106 = !DILocation(line: 0, scope: !4100)
!4107 = !DILocation(line: 162, column: 7, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4100, file: !148, line: 162, column: 7)
!4109 = !DILocation(line: 162, column: 7, scope: !4100)
!4110 = !DILocation(line: 164, column: 6, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4108, file: !148, line: 162, column: 18)
!4112 = !DILocation(line: 164, column: 35, scope: !4111)
!4113 = !DILocation(line: 164, column: 51, scope: !4111)
!4114 = !DILocation(line: 164, column: 80, scope: !4111)
!4115 = !DILocation(line: 164, column: 5, scope: !4111)
!4116 = !DILocation(line: 165, column: 3, scope: !4111)
!4117 = !DILocation(line: 166, column: 1, scope: !4100)
!4118 = distinct !DISubprogram(name: "putc", scope: !4119, file: !4119, line: 10, type: !4120, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4122)
!4119 = !DIFile(filename: "src/icemu/printfmap.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!43, !43, !19}
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "character", arg: 1, scope: !4118, file: !4119, line: 10, type: !43)
!4124 = !DILocalVariable(name: "stream", arg: 2, scope: !4118, file: !4119, line: 10, type: !19)
!4125 = !DILocation(line: 10, column: 14, scope: !4118)
!4126 = !DILocation(line: 10, column: 31, scope: !4118)
!4127 = !DILocation(line: 12, column: 11, scope: !4118)
!4128 = !DILocation(line: 13, column: 12, scope: !4118)
!4129 = !DILocation(line: 13, column: 5, scope: !4118)
!4130 = distinct !DISubprogram(name: "_putchar", scope: !4119, file: !4119, line: 17, type: !4131, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{null, !67}
!4133 = !{!4134}
!4134 = !DILocalVariable(name: "character", arg: 1, scope: !4130, file: !4119, line: 17, type: !67)
!4135 = !DILocation(line: 17, column: 20, scope: !4130)
!4136 = !DILocation(line: 18, column: 10, scope: !4130)
!4137 = !DILocation(line: 18, column: 5, scope: !4130)
!4138 = !DILocation(line: 19, column: 1, scope: !4130)
!4139 = distinct !DISubprogram(name: "Reset_Handler", scope: !206, file: !206, line: 251, type: !214, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4140 = !DILocation(line: 256, column: 5, scope: !4139)
!4141 = !{i32 13155, i32 13197, i32 13243}
!4142 = !DILocation(line: 263, column: 5, scope: !4139)
!4143 = !{i32 13321}
!4144 = !DILocation(line: 282, column: 5, scope: !4139)
!4145 = !{i32 13764}
!4146 = !DILocation(line: 288, column: 5, scope: !4139)
!4147 = !{i32 13922, i32 13965, i32 14003, i32 14041, i32 14066, i32 14107, i32 14148, i32 14185}
!4148 = !DILocation(line: 299, column: 5, scope: !4139)
!4149 = !{i32 14274, i32 14312, i32 14349, i32 14382, i32 14407, i32 14444, i32 14477, i32 14520}
!4150 = !DILocation(line: 313, column: 5, scope: !4139)
!4151 = !{i32 14731}
!4152 = !DILocation(line: 319, column: 5, scope: !4139)
!4153 = !{i32 14873}
!4154 = !DILocation(line: 324, column: 5, scope: !4139)
!4155 = !{i32 14980}
!4156 = !DILocation(line: 325, column: 1, scope: !4139)
!4157 = distinct !DISubprogram(name: "NMI_Handler", scope: !206, file: !206, line: 338, type: !214, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4158 = !DILocation(line: 343, column: 5, scope: !4157)
!4159 = distinct !{!4159, !4158, !4160}
!4160 = !DILocation(line: 345, column: 5, scope: !4157)
!4161 = distinct !DISubprogram(name: "HardFault_Handler", scope: !206, file: !206, line: 356, type: !214, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4162 = !DILocation(line: 361, column: 5, scope: !4161)
!4163 = distinct !{!4163, !4162, !4164}
!4164 = !DILocation(line: 363, column: 5, scope: !4161)
!4165 = distinct !DISubprogram(name: "am_default_isr", scope: !206, file: !206, line: 374, type: !214, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4166 = !DILocation(line: 379, column: 5, scope: !4165)
!4167 = distinct !{!4167, !4166, !4168}
!4168 = !DILocation(line: 381, column: 5, scope: !4165)
!4169 = distinct !DISubprogram(name: "__checkpoint_startup_checkpoint", scope: !206, file: !206, line: 51, type: !214, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4170 = !DILocation(line: 52, column: 1, scope: !4169)
!4171 = distinct !DISubprogram(name: "__checkpoint_startup_restore", scope: !206, file: !206, line: 55, type: !214, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4172 = !DILocation(line: 56, column: 1, scope: !4171)
