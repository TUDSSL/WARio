; ModuleID = 'coremark-unroll.ll'
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
  br i1 %3, label %4, label %._crit_edge, !dbg !651

._crit_edge:                                      ; preds = %2
  %.01.lcssa3 = phi %struct.list_head_s* [ %.01, %2 ], !dbg !650
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.01.lcssa3, metadata !648, metadata !DIExpression()), !dbg !650
  br label %9, !dbg !651

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
  br i1 %8, label %10, label %._crit_edge1, !dbg !651

._crit_edge1:                                     ; preds = %4
  %.0.lcssa2 = phi %struct.list_head_s* [ %.0, %4 ]
  call void @llvm.dbg.value(metadata %struct.list_head_s* %.0.lcssa2, metadata !647, metadata !DIExpression()), !dbg !650
  br label %9, !dbg !651

9:                                                ; preds = %._crit_edge1, %._crit_edge
  %.01.lcssa = phi %struct.list_head_s* [ %.01.lcssa3, %._crit_edge ], [ %.0.lcssa2, %._crit_edge1 ], !dbg !650
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
  br i1 true, label %87, label %._crit_edge1, !dbg !1137

._crit_edge1:                                     ; preds = %86
  br label %120, !dbg !1137

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
  br i1 false, label %630, label %._crit_edge2, !dbg !1137

._crit_edge2:                                     ; preds = %119
  br label %120, !dbg !1137

120:                                              ; preds = %._crit_edge2, %._crit_edge1
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %121, !dbg !1176

121:                                              ; preds = %132, %120
  %indvars.iv8 = phi i32 [ %indvars.iv.next9, %132 ], [ 0, %120 ], !dbg !1047
  %.05 = phi i16 [ 0, %120 ], [ %.16, %132 ], !dbg !1047
  call void @llvm.dbg.value(metadata i32 %indvars.iv8, metadata !1022, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.05, metadata !1024, metadata !DIExpression()), !dbg !1047
  %exitcond10 = icmp ne i32 %indvars.iv8, 3, !dbg !1178
  br i1 %exitcond10, label %122, label %133, !dbg !1180

122:                                              ; preds = %121
  %123 = shl i32 1, %indvars.iv8, !dbg !1181
  %124 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1184
  %125 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %124, i32 0, i32 6, !dbg !1185
  %126 = load i32, i32* %125, align 4, !dbg !1185, !tbaa !1075
  %127 = and i32 %123, %126, !dbg !1186
  %128 = icmp ne i32 %127, 0, !dbg !1186
  br i1 %128, label %129, label %._crit_edge33, !dbg !1187

._crit_edge33:                                    ; preds = %122
  br label %131, !dbg !1187

129:                                              ; preds = %122
  %130 = add i16 %.05, 1, !dbg !1188
  call void @llvm.dbg.value(metadata i16 %130, metadata !1024, metadata !DIExpression()), !dbg !1047
  br label %131, !dbg !1189

131:                                              ; preds = %129, %._crit_edge33
  %.16 = phi i16 [ %130, %129 ], [ %.05, %._crit_edge33 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.16, metadata !1024, metadata !DIExpression()), !dbg !1047
  br label %132, !dbg !1190

132:                                              ; preds = %131
  %indvars.iv.next9 = add nuw nsw i32 %indvars.iv8, 1, !dbg !1191
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %121, !dbg !1192, !llvm.loop !1193

133:                                              ; preds = %121
  %.05.lcssa = phi i16 [ %.05, %121 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.05.lcssa, metadata !1024, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %134, !dbg !1195

134:                                              ; preds = %671, %133
  %indvars.iv5 = phi i32 [ 0, %133 ], [ %indvars.iv.next6.1, %671 ], !dbg !1197, !lws_unroll_2 !652, !lws_unrolled_loop !652
  call void @llvm.dbg.value(metadata i32 %indvars.iv5, metadata !1022, metadata !DIExpression()), !dbg !1047
  br i1 true, label %135, label %._crit_edge3, !dbg !1198

._crit_edge3:                                     ; preds = %134
  br label %144, !dbg !1198

135:                                              ; preds = %134
  %136 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv5, !dbg !1199
  %137 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %136, i32 0, i32 4, !dbg !1201
  %138 = load i32, i32* %137, align 4, !dbg !1201, !tbaa !326
  %139 = zext i16 %.05.lcssa to i32, !dbg !1202
  %140 = udiv i32 %138, %139, !dbg !1203
  %141 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv5, !dbg !1204
  %142 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %141, i32 0, i32 4, !dbg !1205
  store i32 %140, i32* %142, align 4, !dbg !1206, !tbaa !326
  br label %143, !dbg !1204

143:                                              ; preds = %135
  %indvars.iv.next6 = add nuw nsw i32 %indvars.iv5, 1, !dbg !1207
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  call void @llvm.dbg.value(metadata i32 %indvars.iv.next6, metadata !1022, metadata !DIExpression()), !dbg !1047
  br i1 false, label %663, label %._crit_edge4, !dbg !1198

._crit_edge4:                                     ; preds = %143
  br label %144, !dbg !1198

144:                                              ; preds = %._crit_edge4, %._crit_edge3
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %145, !dbg !1208

145:                                              ; preds = %175, %144
  %indvars.iv2 = phi i32 [ %indvars.iv.next3, %175 ], [ 0, %144 ], !dbg !1047
  %.03 = phi i16 [ 0, %144 ], [ %.14, %175 ], !dbg !1047
  call void @llvm.dbg.value(metadata i32 %indvars.iv2, metadata !1022, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.03, metadata !1023, metadata !DIExpression()), !dbg !1047
  %exitcond4 = icmp ne i32 %indvars.iv2, 3, !dbg !1209
  br i1 %exitcond4, label %146, label %176, !dbg !1210

146:                                              ; preds = %145
  %147 = shl i32 1, %indvars.iv2, !dbg !1211
  %148 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1213
  %149 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %148, i32 0, i32 6, !dbg !1214
  %150 = load i32, i32* %149, align 4, !dbg !1214, !tbaa !1075
  %151 = and i32 %147, %150, !dbg !1215
  %152 = icmp ne i32 %151, 0, !dbg !1215
  br i1 %152, label %153, label %._crit_edge34, !dbg !1216

._crit_edge34:                                    ; preds = %146
  br label %174, !dbg !1216

153:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i32 0, metadata !1037, metadata !DIExpression()), !dbg !1217
  br label %154, !dbg !1218

154:                                              ; preds = %170, %153
  %.012 = phi i32 [ 0, %153 ], [ %171, %170 ], !dbg !1221
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1037, metadata !DIExpression()), !dbg !1217
  %exitcond = icmp ne i32 %.012, 1, !dbg !1222
  br i1 %exitcond, label %155, label %172, !dbg !1224

155:                                              ; preds = %154
  %156 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1225
  %157 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %156, i32 0, i32 3, !dbg !1226
  %158 = getelementptr inbounds [4 x i8*], [4 x i8*]* %157, i32 0, i32 0, !dbg !1225
  %159 = load i8*, i8** %158, align 4, !dbg !1225, !tbaa !334
  %160 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1227
  %161 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %160, i32 0, i32 4, !dbg !1228
  %162 = load i32, i32* %161, align 4, !dbg !1228, !tbaa !326
  %163 = zext i16 %.03 to i32, !dbg !1229
  %164 = mul i32 %162, %163, !dbg !1230
  %165 = getelementptr inbounds i8, i8* %159, i32 %164, !dbg !1231
  %166 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1232
  %167 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %166, i32 0, i32 3, !dbg !1233
  %168 = add nuw nsw i32 %indvars.iv2, 1, !dbg !1234
  %169 = getelementptr inbounds [4 x i8*], [4 x i8*]* %167, i32 0, i32 %168, !dbg !1232
  store i8* %165, i8** %169, align 4, !dbg !1235, !tbaa !334
  br label %170, !dbg !1232

170:                                              ; preds = %155
  %171 = add nuw nsw i32 %.012, 1, !dbg !1236
  call void @llvm.dbg.value(metadata i32 %171, metadata !1037, metadata !DIExpression()), !dbg !1217
  br label %154, !dbg !1237, !llvm.loop !1238

172:                                              ; preds = %154
  %173 = add i16 %.03, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i16 %173, metadata !1023, metadata !DIExpression()), !dbg !1047
  br label %174, !dbg !1241

174:                                              ; preds = %172, %._crit_edge34
  %.14 = phi i16 [ %173, %172 ], [ %.03, %._crit_edge34 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.14, metadata !1023, metadata !DIExpression()), !dbg !1047
  br label %175, !dbg !1242

175:                                              ; preds = %174
  %indvars.iv.next3 = add nuw nsw i32 %indvars.iv2, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %145, !dbg !1244, !llvm.loop !1245

176:                                              ; preds = %145
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %177, !dbg !1247

177:                                              ; preds = %244, %176
  %indvars.iv = phi i32 [ %indvars.iv.next, %244 ], [ 0, %176 ], !dbg !1249
  call void @llvm.dbg.value(metadata i32 %indvars.iv, metadata !1022, metadata !DIExpression()), !dbg !1047
  %exitcond1 = icmp ne i32 %indvars.iv, 1, !dbg !1250
  br i1 %exitcond1, label %178, label %245, !dbg !1252

178:                                              ; preds = %177
  %179 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1253
  %180 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %179, i32 0, i32 6, !dbg !1256
  %181 = load i32, i32* %180, align 4, !dbg !1256, !tbaa !1075
  %182 = and i32 %181, 1, !dbg !1257
  %183 = icmp ne i32 %182, 0, !dbg !1257
  br i1 %183, label %184, label %._crit_edge35, !dbg !1258

._crit_edge35:                                    ; preds = %178
  br label %199, !dbg !1258

184:                                              ; preds = %178
  %185 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1259
  %186 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %185, i32 0, i32 4, !dbg !1261
  %187 = load i32, i32* %186, align 4, !dbg !1261, !tbaa !326
  %188 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1262
  %189 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %188, i32 0, i32 3, !dbg !1263
  %190 = getelementptr inbounds [4 x i8*], [4 x i8*]* %189, i32 0, i32 1, !dbg !1262
  %191 = load i8*, i8** %190, align 4, !dbg !1262, !tbaa !334
  %192 = bitcast i8* %191 to %struct.list_head_s*, !dbg !1262
  %193 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1264
  %194 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %193, i32 0, i32 0, !dbg !1265
  %195 = load i16, i16* %194, align 4, !dbg !1265, !tbaa !336
  %196 = call arm_aapcscc %struct.list_head_s* @core_list_init(i32 %187, %struct.list_head_s* %192, i16 signext %195), !dbg !1266
  %197 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1267
  %198 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %197, i32 0, i32 7, !dbg !1268
  store %struct.list_head_s* %196, %struct.list_head_s** %198, align 4, !dbg !1269, !tbaa !475
  br label %199, !dbg !1270

199:                                              ; preds = %184, %._crit_edge35
  %200 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1271
  %201 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %200, i32 0, i32 6, !dbg !1273
  %202 = load i32, i32* %201, align 4, !dbg !1273, !tbaa !1075
  %203 = and i32 %202, 2, !dbg !1274
  %204 = icmp ne i32 %203, 0, !dbg !1274
  br i1 %204, label %205, label %._crit_edge36, !dbg !1275

._crit_edge36:                                    ; preds = %199
  br label %226, !dbg !1275

205:                                              ; preds = %199
  %206 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1276
  %207 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %206, i32 0, i32 4, !dbg !1278
  %208 = load i32, i32* %207, align 4, !dbg !1278, !tbaa !326
  %209 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1279
  %210 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %209, i32 0, i32 3, !dbg !1280
  %211 = getelementptr inbounds [4 x i8*], [4 x i8*]* %210, i32 0, i32 2, !dbg !1279
  %212 = load i8*, i8** %211, align 4, !dbg !1279, !tbaa !334
  %213 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1281
  %214 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %213, i32 0, i32 0, !dbg !1282
  %215 = load i16, i16* %214, align 4, !dbg !1282, !tbaa !336
  %216 = sext i16 %215 to i32, !dbg !1283
  %217 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1284
  %218 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %217, i32 0, i32 1, !dbg !1285
  %219 = load i16, i16* %218, align 2, !dbg !1285, !tbaa !338
  %220 = sext i16 %219 to i32, !dbg !1286
  %221 = shl i32 %220, 16, !dbg !1287
  %222 = or i32 %216, %221, !dbg !1288
  %223 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1289
  %224 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %223, i32 0, i32 8, !dbg !1290
  %225 = call arm_aapcscc i32 @core_init_matrix(i32 %208, i8* %212, i32 %222, %struct.MAT_PARAMS_S* %224), !dbg !1291
  br label %226, !dbg !1292

226:                                              ; preds = %205, %._crit_edge36
  %227 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1293
  %228 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %227, i32 0, i32 6, !dbg !1295
  %229 = load i32, i32* %228, align 4, !dbg !1295, !tbaa !1075
  %230 = and i32 %229, 4, !dbg !1296
  %231 = icmp ne i32 %230, 0, !dbg !1296
  br i1 %231, label %232, label %._crit_edge37, !dbg !1297

._crit_edge37:                                    ; preds = %226
  br label %243, !dbg !1297

232:                                              ; preds = %226
  %233 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1298
  %234 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %233, i32 0, i32 4, !dbg !1300
  %235 = load i32, i32* %234, align 4, !dbg !1300, !tbaa !326
  %236 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1301
  %237 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %236, i32 0, i32 0, !dbg !1302
  %238 = load i16, i16* %237, align 4, !dbg !1302, !tbaa !336
  %239 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv, !dbg !1303
  %240 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %239, i32 0, i32 3, !dbg !1304
  %241 = getelementptr inbounds [4 x i8*], [4 x i8*]* %240, i32 0, i32 3, !dbg !1303
  %242 = load i8*, i8** %241, align 4, !dbg !1303, !tbaa !334
  call arm_aapcscc void @core_init_state(i32 %235, i16 signext %238, i8* %242), !dbg !1305
  br label %243, !dbg !1306

243:                                              ; preds = %232, %._crit_edge37
  br label %244, !dbg !1307

244:                                              ; preds = %243
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !dbg !1308
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %177, !dbg !1309, !llvm.loop !1310

245:                                              ; preds = %177
  %246 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1312
  %247 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %246, i32 0, i32 5, !dbg !1313
  %248 = load i32, i32* %247, align 4, !dbg !1313, !tbaa !975
  %249 = icmp eq i32 %248, 0, !dbg !1314
  br i1 %249, label %250, label %._crit_edge38, !dbg !1315

._crit_edge38:                                    ; preds = %245
  br label %276, !dbg !1315

250:                                              ; preds = %245
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1041, metadata !DIExpression()), !dbg !1316
  %251 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1317
  %252 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %251, i32 0, i32 5, !dbg !1318
  store i32 1, i32* %252, align 4, !dbg !1319, !tbaa !975
  br label %253, !dbg !1320

253:                                              ; preds = %255, %250
  %.01 = phi double [ 0.000000e+00, %250 ], [ %264, %255 ], !dbg !1316
  call void @llvm.dbg.value(metadata double %.01, metadata !1041, metadata !DIExpression()), !dbg !1316
  %254 = fcmp olt double %.01, 1.000000e+00, !dbg !1321
  br i1 %254, label %255, label %265, !dbg !1320

255:                                              ; preds = %253
  %256 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1322
  %257 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %256, i32 0, i32 5, !dbg !1324
  %258 = load i32, i32* %257, align 4, !dbg !1325, !tbaa !975
  %259 = mul i32 %258, 10, !dbg !1325
  store i32 %259, i32* %257, align 4, !dbg !1325, !tbaa !975
  call arm_aapcscc void @start_time(), !dbg !1326
  %260 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1327
  %261 = bitcast %struct.RESULTS_S* %260 to i8*, !dbg !1328
  %262 = call arm_aapcscc i8* @iterate(i8* %261), !dbg !1329
  call arm_aapcscc void @stop_time(), !dbg !1330
  %263 = call arm_aapcscc i32 @get_time(), !dbg !1331
  %264 = call arm_aapcscc double @time_in_secs(i32 %263), !dbg !1332
  call void @llvm.dbg.value(metadata double %264, metadata !1041, metadata !DIExpression()), !dbg !1316
  br label %253, !dbg !1320, !llvm.loop !1333

265:                                              ; preds = %253
  %.01.lcssa = phi double [ %.01, %253 ], !dbg !1316
  call void @llvm.dbg.value(metadata double %.01.lcssa, metadata !1041, metadata !DIExpression()), !dbg !1316
  %266 = fptoui double %.01.lcssa to i32, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %266, metadata !1044, metadata !DIExpression()), !dbg !1316
  %267 = icmp eq i32 %266, 0, !dbg !1336
  br i1 %267, label %268, label %._crit_edge39, !dbg !1338

._crit_edge39:                                    ; preds = %265
  br label %269, !dbg !1338

268:                                              ; preds = %265
  call void @llvm.dbg.value(metadata i32 1, metadata !1044, metadata !DIExpression()), !dbg !1316
  br label %269, !dbg !1339

269:                                              ; preds = %268, %._crit_edge39
  %.0 = phi i32 [ 1, %268 ], [ %266, %._crit_edge39 ], !dbg !1316
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1044, metadata !DIExpression()), !dbg !1316
  %270 = udiv i32 10, %.0, !dbg !1340
  %271 = add i32 1, %270, !dbg !1341
  %272 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1342
  %273 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %272, i32 0, i32 5, !dbg !1343
  %274 = load i32, i32* %273, align 4, !dbg !1344, !tbaa !975
  %275 = mul i32 %274, %271, !dbg !1344
  store i32 %275, i32* %273, align 4, !dbg !1344, !tbaa !975
  br label %276, !dbg !1345

276:                                              ; preds = %269, %._crit_edge38
  call arm_aapcscc void @start_time(), !dbg !1346
  %277 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1347
  %278 = bitcast %struct.RESULTS_S* %277 to i8*, !dbg !1348
  %279 = call arm_aapcscc i8* @iterate(i8* %278), !dbg !1349
  call arm_aapcscc void @stop_time(), !dbg !1350
  %280 = call arm_aapcscc i32 @get_time(), !dbg !1351
  call void @llvm.dbg.value(metadata i32 %280, metadata !1028, metadata !DIExpression()), !dbg !1047
  %281 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1352
  %282 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %281, i32 0, i32 0, !dbg !1353
  %283 = load i16, i16* %282, align 4, !dbg !1353, !tbaa !336
  %284 = call arm_aapcscc zeroext i16 @crc16(i16 signext %283, i16 zeroext 0), !dbg !1354
  call void @llvm.dbg.value(metadata i16 %284, metadata !1027, metadata !DIExpression()), !dbg !1047
  %285 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1355
  %286 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %285, i32 0, i32 1, !dbg !1356
  %287 = load i16, i16* %286, align 2, !dbg !1356, !tbaa !338
  %288 = call arm_aapcscc zeroext i16 @crc16(i16 signext %287, i16 zeroext %284), !dbg !1357
  call void @llvm.dbg.value(metadata i16 %288, metadata !1027, metadata !DIExpression()), !dbg !1047
  %289 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1358
  %290 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %289, i32 0, i32 2, !dbg !1359
  %291 = load i16, i16* %290, align 4, !dbg !1359, !tbaa !477
  %292 = call arm_aapcscc zeroext i16 @crc16(i16 signext %291, i16 zeroext %288), !dbg !1360
  call void @llvm.dbg.value(metadata i16 %292, metadata !1027, metadata !DIExpression()), !dbg !1047
  %293 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1361
  %294 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %293, i32 0, i32 4, !dbg !1362
  %295 = load i32, i32* %294, align 4, !dbg !1362, !tbaa !326
  %296 = trunc i32 %295 to i16, !dbg !1361
  %297 = call arm_aapcscc zeroext i16 @crc16(i16 signext %296, i16 zeroext %292), !dbg !1363
  call void @llvm.dbg.value(metadata i16 %297, metadata !1027, metadata !DIExpression()), !dbg !1047
  %298 = zext i16 %297 to i32, !dbg !1364
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
  %301 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %300), !dbg !1365
  br label %315, !dbg !1367

302:                                              ; preds = %LeafBlock15
  call void @llvm.dbg.value(metadata i16 1, metadata !1025, metadata !DIExpression()), !dbg !1047
  %303 = getelementptr [44 x i8], [44 x i8]* @.str.4, i32 0, i32 0
  %304 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %303), !dbg !1368
  br label %315, !dbg !1369

305:                                              ; preds = %LeafBlock13
  call void @llvm.dbg.value(metadata i16 2, metadata !1025, metadata !DIExpression()), !dbg !1047
  %306 = getelementptr [49 x i8], [49 x i8]* @.str.5, i32 0, i32 0
  %307 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %306), !dbg !1370
  br label %315, !dbg !1371

308:                                              ; preds = %LeafBlock19
  call void @llvm.dbg.value(metadata i16 3, metadata !1025, metadata !DIExpression()), !dbg !1047
  %309 = getelementptr [45 x i8], [45 x i8]* @.str.6, i32 0, i32 0
  %310 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %309), !dbg !1372
  br label %315, !dbg !1373

311:                                              ; preds = %LeafBlock
  call void @llvm.dbg.value(metadata i16 4, metadata !1025, metadata !DIExpression()), !dbg !1047
  %312 = getelementptr [44 x i8], [44 x i8]* @.str.7, i32 0, i32 0
  %313 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %312), !dbg !1374
  br label %315, !dbg !1375

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock13.NewDefault_crit_edge, %LeafBlock15.NewDefault_crit_edge, %LeafBlock17.NewDefault_crit_edge, %LeafBlock19.NewDefault_crit_edge
  br label %314

314:                                              ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i16 -1, metadata !1026, metadata !DIExpression()), !dbg !1047
  br label %315, !dbg !1376

315:                                              ; preds = %314, %311, %308, %305, %302, %299
  %.08 = phi i16 [ -1, %314 ], [ 0, %311 ], [ 0, %308 ], [ 0, %305 ], [ 0, %302 ], [ 0, %299 ], !dbg !1047
  %.07 = phi i16 [ -1, %314 ], [ 4, %311 ], [ 3, %308 ], [ 2, %305 ], [ 1, %302 ], [ 0, %299 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.07, metadata !1025, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.08, metadata !1026, metadata !DIExpression()), !dbg !1047
  %316 = sext i16 %.07 to i32, !dbg !1377
  %317 = icmp sge i32 %316, 0, !dbg !1379
  br i1 %317, label %318, label %._crit_edge40, !dbg !1380

._crit_edge40:                                    ; preds = %315
  br label %446, !dbg !1380

318:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %319, !dbg !1381

319:                                              ; preds = %443, %318
  %.19 = phi i16 [ %.08, %318 ], [ %442, %443 ], !dbg !1047
  %.5 = phi i16 [ 0, %318 ], [ %444, %443 ], !dbg !1384
  call void @llvm.dbg.value(metadata i16 %.5, metadata !1022, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.19, metadata !1026, metadata !DIExpression()), !dbg !1047
  %320 = zext i16 %.5 to i32, !dbg !1385
  %321 = load i32, i32* @default_num_contexts, align 4, !dbg !1387, !tbaa !1045
  %322 = icmp ult i32 %320, %321, !dbg !1388
  br i1 %322, label %323, label %445, !dbg !1389

323:                                              ; preds = %319
  %324 = zext i16 %.5 to i32, !dbg !1390
  %325 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %324, !dbg !1390
  %326 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %325, i32 0, i32 13, !dbg !1392
  store i16 0, i16* %326, align 4, !dbg !1393, !tbaa !1168
  %327 = zext i16 %.5 to i32, !dbg !1394
  %328 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %327, !dbg !1394
  %329 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %328, i32 0, i32 6, !dbg !1396
  %330 = load i32, i32* %329, align 4, !dbg !1396, !tbaa !1075
  %331 = and i32 %330, 1, !dbg !1397
  %332 = icmp ne i32 %331, 0, !dbg !1397
  br i1 %332, label %333, label %._crit_edge41, !dbg !1398

._crit_edge41:                                    ; preds = %323
  br label %362, !dbg !1398

333:                                              ; preds = %323
  %334 = zext i16 %.5 to i32, !dbg !1399
  %335 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %334, !dbg !1399
  %336 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %335, i32 0, i32 10, !dbg !1400
  %337 = load i16, i16* %336, align 2, !dbg !1400, !tbaa !980
  %338 = zext i16 %337 to i32, !dbg !1399
  %339 = sext i16 %.07 to i32, !dbg !1401
  %340 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %339, !dbg !1401
  %341 = load i16, i16* %340, align 2, !dbg !1401, !tbaa !294
  %342 = zext i16 %341 to i32, !dbg !1401
  %343 = icmp ne i32 %338, %342, !dbg !1402
  br i1 %343, label %344, label %._crit_edge42, !dbg !1403

._crit_edge42:                                    ; preds = %333
  br label %362, !dbg !1403

344:                                              ; preds = %333
  %345 = zext i16 %.5 to i32, !dbg !1404
  %346 = zext i16 %.5 to i32, !dbg !1406
  %347 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %346, !dbg !1406
  %348 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %347, i32 0, i32 10, !dbg !1407
  %349 = load i16, i16* %348, align 2, !dbg !1407, !tbaa !980
  %350 = zext i16 %349 to i32, !dbg !1406
  %351 = sext i16 %.07 to i32, !dbg !1408
  %352 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %351, !dbg !1408
  %353 = load i16, i16* %352, align 2, !dbg !1408, !tbaa !294
  %354 = zext i16 %353 to i32, !dbg !1408
  %355 = getelementptr [47 x i8], [47 x i8]* @.str.8, i32 0, i32 0
  %356 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %355, i32 %345, i32 %350, i32 %354), !dbg !1409
  %357 = zext i16 %.5 to i32, !dbg !1410
  %358 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %357, !dbg !1410
  %359 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %358, i32 0, i32 13, !dbg !1411
  %360 = load i16, i16* %359, align 4, !dbg !1412, !tbaa !1168
  %361 = add i16 %360, 1, !dbg !1412
  store i16 %361, i16* %359, align 4, !dbg !1412, !tbaa !1168
  br label %362, !dbg !1413

362:                                              ; preds = %344, %._crit_edge42, %._crit_edge41
  %363 = zext i16 %.5 to i32, !dbg !1414
  %364 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %363, !dbg !1414
  %365 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %364, i32 0, i32 6, !dbg !1416
  %366 = load i32, i32* %365, align 4, !dbg !1416, !tbaa !1075
  %367 = and i32 %366, 2, !dbg !1417
  %368 = icmp ne i32 %367, 0, !dbg !1417
  br i1 %368, label %369, label %._crit_edge43, !dbg !1418

._crit_edge43:                                    ; preds = %362
  br label %398, !dbg !1418

369:                                              ; preds = %362
  %370 = zext i16 %.5 to i32, !dbg !1419
  %371 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %370, !dbg !1419
  %372 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %371, i32 0, i32 11, !dbg !1420
  %373 = load i16, i16* %372, align 4, !dbg !1420, !tbaa !357
  %374 = zext i16 %373 to i32, !dbg !1419
  %375 = sext i16 %.07 to i32, !dbg !1421
  %376 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %375, !dbg !1421
  %377 = load i16, i16* %376, align 2, !dbg !1421, !tbaa !294
  %378 = zext i16 %377 to i32, !dbg !1421
  %379 = icmp ne i32 %374, %378, !dbg !1422
  br i1 %379, label %380, label %._crit_edge44, !dbg !1423

._crit_edge44:                                    ; preds = %369
  br label %398, !dbg !1423

380:                                              ; preds = %369
  %381 = zext i16 %.5 to i32, !dbg !1424
  %382 = zext i16 %.5 to i32, !dbg !1426
  %383 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %382, !dbg !1426
  %384 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %383, i32 0, i32 11, !dbg !1427
  %385 = load i16, i16* %384, align 4, !dbg !1427, !tbaa !357
  %386 = zext i16 %385 to i32, !dbg !1426
  %387 = sext i16 %.07 to i32, !dbg !1428
  %388 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %387, !dbg !1428
  %389 = load i16, i16* %388, align 2, !dbg !1428, !tbaa !294
  %390 = zext i16 %389 to i32, !dbg !1428
  %391 = getelementptr [49 x i8], [49 x i8]* @.str.9, i32 0, i32 0
  %392 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %391, i32 %381, i32 %386, i32 %390), !dbg !1429
  %393 = zext i16 %.5 to i32, !dbg !1430
  %394 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %393, !dbg !1430
  %395 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %394, i32 0, i32 13, !dbg !1431
  %396 = load i16, i16* %395, align 4, !dbg !1432, !tbaa !1168
  %397 = add i16 %396, 1, !dbg !1432
  store i16 %397, i16* %395, align 4, !dbg !1432, !tbaa !1168
  br label %398, !dbg !1433

398:                                              ; preds = %380, %._crit_edge44, %._crit_edge43
  %399 = zext i16 %.5 to i32, !dbg !1434
  %400 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %399, !dbg !1434
  %401 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %400, i32 0, i32 6, !dbg !1436
  %402 = load i32, i32* %401, align 4, !dbg !1436, !tbaa !1075
  %403 = and i32 %402, 4, !dbg !1437
  %404 = icmp ne i32 %403, 0, !dbg !1437
  br i1 %404, label %405, label %._crit_edge45, !dbg !1438

._crit_edge45:                                    ; preds = %398
  br label %434, !dbg !1438

405:                                              ; preds = %398
  %406 = zext i16 %.5 to i32, !dbg !1439
  %407 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %406, !dbg !1439
  %408 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %407, i32 0, i32 12, !dbg !1440
  %409 = load i16, i16* %408, align 2, !dbg !1440, !tbaa !344
  %410 = zext i16 %409 to i32, !dbg !1439
  %411 = sext i16 %.07 to i32, !dbg !1441
  %412 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %411, !dbg !1441
  %413 = load i16, i16* %412, align 2, !dbg !1441, !tbaa !294
  %414 = zext i16 %413 to i32, !dbg !1441
  %415 = icmp ne i32 %410, %414, !dbg !1442
  br i1 %415, label %416, label %._crit_edge46, !dbg !1443

._crit_edge46:                                    ; preds = %405
  br label %434, !dbg !1443

416:                                              ; preds = %405
  %417 = zext i16 %.5 to i32, !dbg !1444
  %418 = zext i16 %.5 to i32, !dbg !1446
  %419 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %418, !dbg !1446
  %420 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %419, i32 0, i32 12, !dbg !1447
  %421 = load i16, i16* %420, align 2, !dbg !1447, !tbaa !344
  %422 = zext i16 %421 to i32, !dbg !1446
  %423 = sext i16 %.07 to i32, !dbg !1448
  %424 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %423, !dbg !1448
  %425 = load i16, i16* %424, align 2, !dbg !1448, !tbaa !294
  %426 = zext i16 %425 to i32, !dbg !1448
  %427 = getelementptr [48 x i8], [48 x i8]* @.str.10, i32 0, i32 0
  %428 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %427, i32 %417, i32 %422, i32 %426), !dbg !1449
  %429 = zext i16 %.5 to i32, !dbg !1450
  %430 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %429, !dbg !1450
  %431 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %430, i32 0, i32 13, !dbg !1451
  %432 = load i16, i16* %431, align 4, !dbg !1452, !tbaa !1168
  %433 = add i16 %432, 1, !dbg !1452
  store i16 %433, i16* %431, align 4, !dbg !1452, !tbaa !1168
  br label %434, !dbg !1453

434:                                              ; preds = %416, %._crit_edge46, %._crit_edge45
  %435 = zext i16 %.5 to i32, !dbg !1454
  %436 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %435, !dbg !1454
  %437 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %436, i32 0, i32 13, !dbg !1455
  %438 = load i16, i16* %437, align 4, !dbg !1455, !tbaa !1168
  %439 = sext i16 %438 to i32, !dbg !1454
  %440 = sext i16 %.19 to i32, !dbg !1456
  %441 = add nsw i32 %440, %439, !dbg !1456
  %442 = trunc i32 %441 to i16, !dbg !1456
  call void @llvm.dbg.value(metadata i16 %442, metadata !1026, metadata !DIExpression()), !dbg !1047
  br label %443, !dbg !1457

443:                                              ; preds = %434
  %444 = add i16 %.5, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i16 %444, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %319, !dbg !1459, !llvm.loop !1460

445:                                              ; preds = %319
  %.19.lcssa = phi i16 [ %.19, %319 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.19.lcssa, metadata !1026, metadata !DIExpression()), !dbg !1047
  br label %446, !dbg !1462

446:                                              ; preds = %445, %._crit_edge40
  %.210 = phi i16 [ %.19.lcssa, %445 ], [ %.08, %._crit_edge40 ], !dbg !1463
  call void @llvm.dbg.value(metadata i16 %.210, metadata !1026, metadata !DIExpression()), !dbg !1047
  %447 = call arm_aapcscc zeroext i8 @check_data_types(), !dbg !1464
  %448 = zext i8 %447 to i32, !dbg !1464
  %449 = sext i16 %.210 to i32, !dbg !1465
  %450 = add nsw i32 %449, %448, !dbg !1465
  %451 = trunc i32 %450 to i16, !dbg !1465
  call void @llvm.dbg.value(metadata i16 %451, metadata !1026, metadata !DIExpression()), !dbg !1047
  %452 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1466
  %453 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %452, i32 0, i32 4, !dbg !1467
  %454 = load i32, i32* %453, align 4, !dbg !1467, !tbaa !326
  %455 = getelementptr [24 x i8], [24 x i8]* @.str.11, i32 0, i32 0
  %456 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %455, i32 %454), !dbg !1468
  %457 = getelementptr [24 x i8], [24 x i8]* @.str.12, i32 0, i32 0
  %458 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %457, i32 %280), !dbg !1469
  %459 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1470
  %460 = getelementptr [23 x i8], [23 x i8]* @.str.13, i32 0, i32 0
  %461 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %460, double %459), !dbg !1471
  %462 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1472
  %463 = fcmp ogt double %462, 0.000000e+00, !dbg !1474
  br i1 %463, label %464, label %._crit_edge47, !dbg !1475

._crit_edge47:                                    ; preds = %446
  br label %475, !dbg !1475

464:                                              ; preds = %446
  %465 = load i32, i32* @default_num_contexts, align 4, !dbg !1476, !tbaa !1045
  %466 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1477
  %467 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %466, i32 0, i32 5, !dbg !1478
  %468 = load i32, i32* %467, align 4, !dbg !1478, !tbaa !975
  %469 = mul i32 %465, %468, !dbg !1479
  %470 = uitofp i32 %469 to double, !dbg !1476
  %471 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1480
  %472 = fdiv double %470, %471, !dbg !1481
  %473 = getelementptr [23 x i8], [23 x i8]* @.str.14, i32 0, i32 0
  %474 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %473, double %472), !dbg !1482
  br label %475, !dbg !1482

475:                                              ; preds = %464, %._crit_edge47
  %476 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1483
  %477 = fcmp olt double %476, 1.000000e+01, !dbg !1485
  br i1 %477, label %478, label %._crit_edge48, !dbg !1486

._crit_edge48:                                    ; preds = %475
  br label %482, !dbg !1486

478:                                              ; preds = %475
  %479 = getelementptr [62 x i8], [62 x i8]* @.str.15, i32 0, i32 0
  %480 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %479), !dbg !1487
  %481 = add i16 %451, 1, !dbg !1489
  call void @llvm.dbg.value(metadata i16 %481, metadata !1026, metadata !DIExpression()), !dbg !1047
  br label %482, !dbg !1490

482:                                              ; preds = %478, %._crit_edge48
  %.311 = phi i16 [ %481, %478 ], [ %451, %._crit_edge48 ], !dbg !1047
  call void @llvm.dbg.value(metadata i16 %.311, metadata !1026, metadata !DIExpression()), !dbg !1047
  %483 = load i32, i32* @default_num_contexts, align 4, !dbg !1491, !tbaa !1045
  %484 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1492
  %485 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %484, i32 0, i32 5, !dbg !1493
  %486 = load i32, i32* %485, align 4, !dbg !1493, !tbaa !975
  %487 = mul i32 %483, %486, !dbg !1494
  %488 = getelementptr [24 x i8], [24 x i8]* @.str.16, i32 0, i32 0
  %489 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %488, i32 %487), !dbg !1495
  %490 = getelementptr [23 x i8], [23 x i8]* @.str.17, i32 0, i32 0
  %491 = getelementptr [116 x i8], [116 x i8]* @.str.18, i32 0, i32 0
  %492 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %490, i8* %491), !dbg !1496
  %493 = getelementptr [23 x i8], [23 x i8]* @.str.19, i32 0, i32 0
  %494 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %495 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %493, i8* %494), !dbg !1497
  %496 = getelementptr [23 x i8], [23 x i8]* @.str.21, i32 0, i32 0
  %497 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %498 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %496, i8* %497), !dbg !1498
  %499 = zext i16 %297 to i32, !dbg !1499
  %500 = getelementptr [27 x i8], [27 x i8]* @.str.23, i32 0, i32 0
  %501 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %500, i32 %499), !dbg !1500
  %502 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1501
  %503 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %502, i32 0, i32 6, !dbg !1503
  %504 = load i32, i32* %503, align 4, !dbg !1503, !tbaa !1075
  %505 = and i32 %504, 1, !dbg !1504
  %506 = icmp ne i32 %505, 0, !dbg !1504
  br i1 %506, label %507, label %._crit_edge49, !dbg !1505

._crit_edge49:                                    ; preds = %482
  br label %524, !dbg !1505

507:                                              ; preds = %482
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %508, !dbg !1506

508:                                              ; preds = %521, %507
  %.6 = phi i16 [ 0, %507 ], [ %522, %521 ], !dbg !1508
  call void @llvm.dbg.value(metadata i16 %.6, metadata !1022, metadata !DIExpression()), !dbg !1047
  %509 = zext i16 %.6 to i32, !dbg !1509
  %510 = load i32, i32* @default_num_contexts, align 4, !dbg !1511, !tbaa !1045
  %511 = icmp ult i32 %509, %510, !dbg !1512
  br i1 %511, label %512, label %523, !dbg !1513

512:                                              ; preds = %508
  %513 = zext i16 %.6 to i32, !dbg !1514
  %514 = zext i16 %.6 to i32, !dbg !1515
  %515 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %514, !dbg !1515
  %516 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %515, i32 0, i32 10, !dbg !1516
  %517 = load i16, i16* %516, align 2, !dbg !1516, !tbaa !980
  %518 = zext i16 %517 to i32, !dbg !1515
  %519 = getelementptr [28 x i8], [28 x i8]* @.str.24, i32 0, i32 0
  %520 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %519, i32 %513, i32 %518), !dbg !1517
  br label %521, !dbg !1517

521:                                              ; preds = %512
  %522 = add i16 %.6, 1, !dbg !1518
  call void @llvm.dbg.value(metadata i16 %522, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %508, !dbg !1519, !llvm.loop !1520

523:                                              ; preds = %508
  br label %524, !dbg !1521

524:                                              ; preds = %523, %._crit_edge49
  %525 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1522
  %526 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %525, i32 0, i32 6, !dbg !1524
  %527 = load i32, i32* %526, align 4, !dbg !1524, !tbaa !1075
  %528 = and i32 %527, 2, !dbg !1525
  %529 = icmp ne i32 %528, 0, !dbg !1525
  br i1 %529, label %530, label %._crit_edge50, !dbg !1526

._crit_edge50:                                    ; preds = %524
  br label %547, !dbg !1526

530:                                              ; preds = %524
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %531, !dbg !1527

531:                                              ; preds = %544, %530
  %.7 = phi i16 [ 0, %530 ], [ %545, %544 ], !dbg !1529
  call void @llvm.dbg.value(metadata i16 %.7, metadata !1022, metadata !DIExpression()), !dbg !1047
  %532 = zext i16 %.7 to i32, !dbg !1530
  %533 = load i32, i32* @default_num_contexts, align 4, !dbg !1532, !tbaa !1045
  %534 = icmp ult i32 %532, %533, !dbg !1533
  br i1 %534, label %535, label %546, !dbg !1534

535:                                              ; preds = %531
  %536 = zext i16 %.7 to i32, !dbg !1535
  %537 = zext i16 %.7 to i32, !dbg !1536
  %538 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %537, !dbg !1536
  %539 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %538, i32 0, i32 11, !dbg !1537
  %540 = load i16, i16* %539, align 4, !dbg !1537, !tbaa !357
  %541 = zext i16 %540 to i32, !dbg !1536
  %542 = getelementptr [28 x i8], [28 x i8]* @.str.25, i32 0, i32 0
  %543 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %542, i32 %536, i32 %541), !dbg !1538
  br label %544, !dbg !1538

544:                                              ; preds = %535
  %545 = add i16 %.7, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i16 %545, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %531, !dbg !1540, !llvm.loop !1541

546:                                              ; preds = %531
  br label %547, !dbg !1542

547:                                              ; preds = %546, %._crit_edge50
  %548 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1543
  %549 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %548, i32 0, i32 6, !dbg !1545
  %550 = load i32, i32* %549, align 4, !dbg !1545, !tbaa !1075
  %551 = and i32 %550, 4, !dbg !1546
  %552 = icmp ne i32 %551, 0, !dbg !1546
  br i1 %552, label %553, label %._crit_edge51, !dbg !1547

._crit_edge51:                                    ; preds = %547
  br label %570, !dbg !1547

553:                                              ; preds = %547
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %554, !dbg !1548

554:                                              ; preds = %567, %553
  %.8 = phi i16 [ 0, %553 ], [ %568, %567 ], !dbg !1550
  call void @llvm.dbg.value(metadata i16 %.8, metadata !1022, metadata !DIExpression()), !dbg !1047
  %555 = zext i16 %.8 to i32, !dbg !1551
  %556 = load i32, i32* @default_num_contexts, align 4, !dbg !1553, !tbaa !1045
  %557 = icmp ult i32 %555, %556, !dbg !1554
  br i1 %557, label %558, label %569, !dbg !1555

558:                                              ; preds = %554
  %559 = zext i16 %.8 to i32, !dbg !1556
  %560 = zext i16 %.8 to i32, !dbg !1557
  %561 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %560, !dbg !1557
  %562 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %561, i32 0, i32 12, !dbg !1558
  %563 = load i16, i16* %562, align 2, !dbg !1558, !tbaa !344
  %564 = zext i16 %563 to i32, !dbg !1557
  %565 = getelementptr [28 x i8], [28 x i8]* @.str.26, i32 0, i32 0
  %566 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %565, i32 %559, i32 %564), !dbg !1559
  br label %567, !dbg !1559

567:                                              ; preds = %558
  %568 = add i16 %.8, 1, !dbg !1560
  call void @llvm.dbg.value(metadata i16 %568, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %554, !dbg !1561, !llvm.loop !1562

569:                                              ; preds = %554
  br label %570, !dbg !1563

570:                                              ; preds = %569, %._crit_edge51
  call void @llvm.dbg.value(metadata i16 0, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %571, !dbg !1564

571:                                              ; preds = %584, %570
  %.9 = phi i16 [ 0, %570 ], [ %585, %584 ], !dbg !1566
  call void @llvm.dbg.value(metadata i16 %.9, metadata !1022, metadata !DIExpression()), !dbg !1047
  %572 = zext i16 %.9 to i32, !dbg !1567
  %573 = load i32, i32* @default_num_contexts, align 4, !dbg !1569, !tbaa !1045
  %574 = icmp ult i32 %572, %573, !dbg !1570
  br i1 %574, label %575, label %586, !dbg !1571

575:                                              ; preds = %571
  %576 = zext i16 %.9 to i32, !dbg !1572
  %577 = zext i16 %.9 to i32, !dbg !1573
  %578 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %577, !dbg !1573
  %579 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %578, i32 0, i32 9, !dbg !1574
  %580 = load i16, i16* %579, align 4, !dbg !1574, !tbaa !340
  %581 = zext i16 %580 to i32, !dbg !1573
  %582 = getelementptr [28 x i8], [28 x i8]* @.str.27, i32 0, i32 0
  %583 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %582, i32 %576, i32 %581), !dbg !1575
  br label %584, !dbg !1575

584:                                              ; preds = %575
  %585 = add i16 %.9, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i16 %585, metadata !1022, metadata !DIExpression()), !dbg !1047
  br label %571, !dbg !1577, !llvm.loop !1578

586:                                              ; preds = %571
  %587 = sext i16 %.311 to i32, !dbg !1580
  %588 = icmp eq i32 %587, 0, !dbg !1582
  br i1 %588, label %589, label %._crit_edge52, !dbg !1583

._crit_edge52:                                    ; preds = %586
  br label %613, !dbg !1583

589:                                              ; preds = %586
  %590 = getelementptr [73 x i8], [73 x i8]* @.str.28, i32 0, i32 0
  %591 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %590), !dbg !1584
  %592 = sext i16 %.07 to i32, !dbg !1586
  %593 = icmp eq i32 %592, 3, !dbg !1588
  br i1 %593, label %594, label %._crit_edge53, !dbg !1589

._crit_edge53:                                    ; preds = %589
  br label %612, !dbg !1589

594:                                              ; preds = %589
  %595 = load i32, i32* @default_num_contexts, align 4, !dbg !1590, !tbaa !1045
  %596 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1592
  %597 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %596, i32 0, i32 5, !dbg !1593
  %598 = load i32, i32* %597, align 4, !dbg !1593, !tbaa !975
  %599 = mul i32 %595, %598, !dbg !1594
  %600 = uitofp i32 %599 to double, !dbg !1590
  %601 = call arm_aapcscc double @time_in_secs(i32 %280), !dbg !1595
  %602 = fdiv double %600, %601, !dbg !1596
  %603 = getelementptr [26 x i8], [26 x i8]* @.str.29, i32 0, i32 0
  %604 = getelementptr [116 x i8], [116 x i8]* @.str.18, i32 0, i32 0
  %605 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %606 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %603, double %602, i8* %604, i8* %605), !dbg !1597
  %607 = getelementptr [6 x i8], [6 x i8]* @.str.30, i32 0, i32 0
  %608 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %609 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %607, i8* %608), !dbg !1598
  %610 = getelementptr [2 x i8], [2 x i8]* @.str.31, i32 0, i32 0
  %611 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %610), !dbg !1599
  br label %612, !dbg !1600

612:                                              ; preds = %594, %._crit_edge53
  br label %613, !dbg !1601

613:                                              ; preds = %612, %._crit_edge52
  %614 = sext i16 %.311 to i32, !dbg !1602
  %615 = icmp sgt i32 %614, 0, !dbg !1604
  br i1 %615, label %616, label %._crit_edge54, !dbg !1605

._crit_edge54:                                    ; preds = %613
  br label %619, !dbg !1605

616:                                              ; preds = %613
  %617 = getelementptr [17 x i8], [17 x i8]* @.str.32, i32 0, i32 0
  %618 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %617), !dbg !1606
  br label %619, !dbg !1606

619:                                              ; preds = %616, %._crit_edge54
  %620 = sext i16 %.311 to i32, !dbg !1607
  %621 = icmp slt i32 %620, 0, !dbg !1609
  br i1 %621, label %622, label %._crit_edge55, !dbg !1610

._crit_edge55:                                    ; preds = %619
  br label %625, !dbg !1610

622:                                              ; preds = %619
  %623 = getelementptr [99 x i8], [99 x i8]* @.str.33, i32 0, i32 0
  %624 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %623), !dbg !1611
  br label %625, !dbg !1611

625:                                              ; preds = %622, %._crit_edge55
  %626 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1612
  %627 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %626, i32 0, i32 14, !dbg !1613
  call arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S* %627), !dbg !1614
  %628 = bitcast [2000 x i8]* %5 to i8*, !dbg !1615
  call void @llvm.lifetime.end.p0i8(i64 2000, i8* %628) #4, !dbg !1615
  %629 = bitcast [1 x %struct.RESULTS_S]* %4 to i8*, !dbg !1615
  call void @llvm.lifetime.end.p0i8(i64 68, i8* %629) #4, !dbg !1615
  ret i32 0, !dbg !1616

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
  %664 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next6, !dbg !1199
  %665 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %664, i32 0, i32 4, !dbg !1201
  %666 = load i32, i32* %665, align 4, !dbg !1201, !tbaa !326
  %667 = zext i16 %.05.lcssa to i32, !dbg !1202
  %668 = udiv i32 %666, %667, !dbg !1203
  %669 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %indvars.iv.next6, !dbg !1204
  %670 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %669, i32 0, i32 4, !dbg !1205
  store i32 %668, i32* %670, align 4, !dbg !1206, !tbaa !326
  br label %671, !dbg !1204

671:                                              ; preds = %663
  %indvars.iv.next6.1 = add nuw nsw i32 %indvars.iv.next6, 1, !dbg !1207
  call void @llvm.dbg.value(metadata i16 undef, metadata !1022, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %134
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S*, i16 signext, i16 zeroext) #0 !dbg !1617 {
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %0, metadata !1630, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i16 %1, metadata !1631, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i16 %2, metadata !1632, metadata !DIExpression()), !dbg !1638
  %4 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 0, !dbg !1639
  %5 = load i32, i32* %4, align 4, !dbg !1639, !tbaa !1640
  call void @llvm.dbg.value(metadata i32 %5, metadata !1633, metadata !DIExpression()), !dbg !1638
  %6 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 3, !dbg !1641
  %7 = load i32*, i32** %6, align 4, !dbg !1641, !tbaa !1642
  call void @llvm.dbg.value(metadata i32* %7, metadata !1634, metadata !DIExpression()), !dbg !1638
  %8 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 1, !dbg !1643
  %9 = load i16*, i16** %8, align 4, !dbg !1643, !tbaa !1644
  call void @llvm.dbg.value(metadata i16* %9, metadata !1635, metadata !DIExpression()), !dbg !1638
  %10 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 2, !dbg !1645
  %11 = load i16*, i16** %10, align 4, !dbg !1645, !tbaa !1646
  call void @llvm.dbg.value(metadata i16* %11, metadata !1636, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i16 %1, metadata !1637, metadata !DIExpression()), !dbg !1638
  %12 = call arm_aapcscc signext i16 @matrix_test(i32 %5, i32* %7, i16* %9, i16* %11, i16 signext %1), !dbg !1647
  %13 = call arm_aapcscc zeroext i16 @crc16(i16 signext %12, i16 zeroext %2), !dbg !1648
  call void @llvm.dbg.value(metadata i16 %13, metadata !1632, metadata !DIExpression()), !dbg !1638
  ret i16 %13, !dbg !1649
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_test(i32, i32*, i16*, i16*, i16 signext) #0 !dbg !1650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1654, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i32* %1, metadata !1655, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i16* %2, metadata !1656, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i16* %3, metadata !1657, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i16 %4, metadata !1658, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i16 0, metadata !1659, metadata !DIExpression()), !dbg !1661
  %6 = sext i16 %4 to i32, !dbg !1662
  %7 = or i32 61440, %6, !dbg !1662
  %8 = trunc i32 %7 to i16, !dbg !1662
  call void @llvm.dbg.value(metadata i16 %8, metadata !1660, metadata !DIExpression()), !dbg !1661
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %4), !dbg !1663
  call arm_aapcscc void @matrix_mul_const(i32 %0, i32* %1, i16* %2, i16 signext %4), !dbg !1664
  %9 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1665
  %10 = call arm_aapcscc zeroext i16 @crc16(i16 signext %9, i16 zeroext 0), !dbg !1666
  call void @llvm.dbg.value(metadata i16 %10, metadata !1659, metadata !DIExpression()), !dbg !1661
  call arm_aapcscc void @matrix_mul_vect(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1667
  %11 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1668
  %12 = call arm_aapcscc zeroext i16 @crc16(i16 signext %11, i16 zeroext %10), !dbg !1669
  call void @llvm.dbg.value(metadata i16 %12, metadata !1659, metadata !DIExpression()), !dbg !1661
  call arm_aapcscc void @matrix_mul_matrix(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1670
  %13 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1671
  %14 = call arm_aapcscc zeroext i16 @crc16(i16 signext %13, i16 zeroext %12), !dbg !1672
  call void @llvm.dbg.value(metadata i16 %14, metadata !1659, metadata !DIExpression()), !dbg !1661
  call arm_aapcscc void @matrix_mul_matrix_bitextract(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1673
  %15 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1674
  %16 = call arm_aapcscc zeroext i16 @crc16(i16 signext %15, i16 zeroext %14), !dbg !1675
  call void @llvm.dbg.value(metadata i16 %16, metadata !1659, metadata !DIExpression()), !dbg !1661
  %17 = sext i16 %4 to i32, !dbg !1676
  %18 = sub nsw i32 0, %17, !dbg !1677
  %19 = trunc i32 %18 to i16, !dbg !1677
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %19), !dbg !1678
  ret i16 %16, !dbg !1679
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_add_const(i32, i16*, i16 signext) #0 !dbg !1680 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1684, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i16* %1, metadata !1685, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i16 %2, metadata !1686, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 0, metadata !1687, metadata !DIExpression()), !dbg !1689
  br label %4, !dbg !1690

4:                                                ; preds = %19, %3
  %.01 = phi i32 [ 0, %3 ], [ %20, %19 ], !dbg !1692
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1687, metadata !DIExpression()), !dbg !1689
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1693
  br i1 %exitcond2, label %5, label %21, !dbg !1695

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1689
  br label %6, !dbg !1696

6:                                                ; preds = %16, %5
  %.0 = phi i32 [ 0, %5 ], [ %17, %16 ], !dbg !1699
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1688, metadata !DIExpression()), !dbg !1689
  %exitcond = icmp ne i32 %.0, %0, !dbg !1700
  br i1 %exitcond, label %7, label %18, !dbg !1702

7:                                                ; preds = %6
  %8 = sext i16 %2 to i32, !dbg !1703
  %9 = mul i32 %.01, %0, !dbg !1705
  %10 = add i32 %9, %.0, !dbg !1706
  %11 = getelementptr inbounds i16, i16* %1, i32 %10, !dbg !1707
  %12 = load i16, i16* %11, align 2, !dbg !1708, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1708
  %14 = add nsw i32 %13, %8, !dbg !1708
  %15 = trunc i32 %14 to i16, !dbg !1708
  store i16 %15, i16* %11, align 2, !dbg !1708, !tbaa !294
  br label %16, !dbg !1709

16:                                               ; preds = %7
  %17 = add i32 %.0, 1, !dbg !1710
  call void @llvm.dbg.value(metadata i32 %17, metadata !1688, metadata !DIExpression()), !dbg !1689
  br label %6, !dbg !1711, !llvm.loop !1712

18:                                               ; preds = %6
  br label %19, !dbg !1714

19:                                               ; preds = %18
  %20 = add i32 %.01, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %20, metadata !1687, metadata !DIExpression()), !dbg !1689
  br label %4, !dbg !1716, !llvm.loop !1717

21:                                               ; preds = %4
  ret void, !dbg !1719
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_const(i32, i32*, i16*, i16 signext) #0 !dbg !1720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1724, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i32* %1, metadata !1725, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i16* %2, metadata !1726, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i16 %3, metadata !1727, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i32 0, metadata !1728, metadata !DIExpression()), !dbg !1730
  br label %5, !dbg !1731

5:                                                ; preds = %22, %4
  %.01 = phi i32 [ 0, %4 ], [ %23, %22 ], !dbg !1733
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1728, metadata !DIExpression()), !dbg !1730
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1734
  br i1 %exitcond2, label %6, label %24, !dbg !1736

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1729, metadata !DIExpression()), !dbg !1730
  br label %7, !dbg !1737

7:                                                ; preds = %19, %6
  %.0 = phi i32 [ 0, %6 ], [ %20, %19 ], !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1729, metadata !DIExpression()), !dbg !1730
  %exitcond = icmp ne i32 %.0, %0, !dbg !1741
  br i1 %exitcond, label %8, label %21, !dbg !1743

8:                                                ; preds = %7
  %9 = mul i32 %.01, %0, !dbg !1744
  %10 = add i32 %9, %.0, !dbg !1746
  %11 = getelementptr inbounds i16, i16* %2, i32 %10, !dbg !1747
  %12 = load i16, i16* %11, align 2, !dbg !1747, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1748
  %14 = sext i16 %3 to i32, !dbg !1749
  %15 = mul nsw i32 %13, %14, !dbg !1750
  %16 = mul i32 %.01, %0, !dbg !1751
  %17 = add i32 %16, %.0, !dbg !1752
  %18 = getelementptr inbounds i32, i32* %1, i32 %17, !dbg !1753
  store i32 %15, i32* %18, align 4, !dbg !1754, !tbaa !1045
  br label %19, !dbg !1755

19:                                               ; preds = %8
  %20 = add i32 %.0, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %20, metadata !1729, metadata !DIExpression()), !dbg !1730
  br label %7, !dbg !1757, !llvm.loop !1758

21:                                               ; preds = %7
  br label %22, !dbg !1760

22:                                               ; preds = %21
  %23 = add i32 %.01, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i32 %23, metadata !1728, metadata !DIExpression()), !dbg !1730
  br label %5, !dbg !1762, !llvm.loop !1763

24:                                               ; preds = %5
  ret void, !dbg !1765
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_sum(i32, i32*, i16 signext) #0 !dbg !1766 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1770, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32* %1, metadata !1771, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i16 %2, metadata !1772, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1774, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1775, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i16 0, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1777, metadata !DIExpression()), !dbg !1779
  br label %4, !dbg !1780

4:                                                ; preds = %30, %3
  %.06 = phi i32 [ 0, %3 ], [ %.17.lcssa, %30 ], !dbg !1782
  %.03 = phi i32 [ 0, %3 ], [ %.14.lcssa, %30 ], !dbg !1783
  %.02 = phi i16 [ 0, %3 ], [ %.1.lcssa, %30 ], !dbg !1784
  %.01 = phi i32 [ 0, %3 ], [ %31, %30 ], !dbg !1785
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i16 %.02, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1774, metadata !DIExpression()), !dbg !1779
  %exitcond8 = icmp ne i32 %.01, %0, !dbg !1786
  br i1 %exitcond8, label %5, label %32, !dbg !1788

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1778, metadata !DIExpression()), !dbg !1779
  br label %6, !dbg !1789

6:                                                ; preds = %27, %5
  %.17 = phi i32 [ %.06, %5 ], [ %11, %27 ], !dbg !1779
  %.14 = phi i32 [ %.03, %5 ], [ %.25, %27 ], !dbg !1779
  %.1 = phi i16 [ %.02, %5 ], [ %.2, %27 ], !dbg !1779
  %.0 = phi i32 [ 0, %5 ], [ %28, %27 ], !dbg !1792
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1778, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i16 %.1, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %.17, metadata !1774, metadata !DIExpression()), !dbg !1779
  %exitcond = icmp ne i32 %.0, %0, !dbg !1793
  br i1 %exitcond, label %7, label %29, !dbg !1795

7:                                                ; preds = %6
  %8 = mul i32 %.01, %0, !dbg !1796
  %9 = add i32 %8, %.0, !dbg !1798
  %10 = getelementptr inbounds i32, i32* %1, i32 %9, !dbg !1799
  %11 = load i32, i32* %10, align 4, !dbg !1799, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %11, metadata !1775, metadata !DIExpression()), !dbg !1779
  %12 = add nsw i32 %.14, %11, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %12, metadata !1773, metadata !DIExpression()), !dbg !1779
  %13 = sext i16 %2 to i32, !dbg !1801
  %14 = icmp sgt i32 %12, %13, !dbg !1803
  br i1 %14, label %15, label %19, !dbg !1804

15:                                               ; preds = %7
  %16 = sext i16 %.1 to i32, !dbg !1805
  %17 = add nsw i32 %16, 10, !dbg !1805
  %18 = trunc i32 %17 to i16, !dbg !1805
  call void @llvm.dbg.value(metadata i16 %18, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1773, metadata !DIExpression()), !dbg !1779
  br label %26, !dbg !1807

19:                                               ; preds = %7
  %20 = icmp sgt i32 %11, %.17, !dbg !1808
  %21 = zext i1 %20 to i64, !dbg !1810
  %22 = select i1 %20, i32 1, i32 0, !dbg !1810
  %23 = sext i16 %.1 to i32, !dbg !1811
  %24 = add nsw i32 %23, %22, !dbg !1811
  %25 = trunc i32 %24 to i16, !dbg !1811
  call void @llvm.dbg.value(metadata i16 %25, metadata !1776, metadata !DIExpression()), !dbg !1779
  br label %26

26:                                               ; preds = %19, %15
  %.25 = phi i32 [ 0, %15 ], [ %12, %19 ], !dbg !1812
  %.2 = phi i16 [ %18, %15 ], [ %25, %19 ], !dbg !1813
  call void @llvm.dbg.value(metadata i16 %.2, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %.25, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %11, metadata !1774, metadata !DIExpression()), !dbg !1779
  br label %27, !dbg !1814

27:                                               ; preds = %26
  %28 = add i32 %.0, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %28, metadata !1778, metadata !DIExpression()), !dbg !1779
  br label %6, !dbg !1816, !llvm.loop !1817

29:                                               ; preds = %6
  %.17.lcssa = phi i32 [ %.17, %6 ], !dbg !1779
  %.14.lcssa = phi i32 [ %.14, %6 ], !dbg !1779
  %.1.lcssa = phi i16 [ %.1, %6 ], !dbg !1779
  call void @llvm.dbg.value(metadata i32 %.17.lcssa, metadata !1774, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i16 %.1.lcssa, metadata !1776, metadata !DIExpression()), !dbg !1779
  br label %30, !dbg !1819

30:                                               ; preds = %29
  %31 = add i32 %.01, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %31, metadata !1777, metadata !DIExpression()), !dbg !1779
  br label %4, !dbg !1821, !llvm.loop !1822

32:                                               ; preds = %4
  %.02.lcssa = phi i16 [ %.02, %4 ], !dbg !1784
  call void @llvm.dbg.value(metadata i16 %.02.lcssa, metadata !1776, metadata !DIExpression()), !dbg !1779
  ret i16 %.02.lcssa, !dbg !1824
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_vect(i32, i32*, i16*, i16*) #0 !dbg !1825 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1829, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i32* %1, metadata !1830, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i16* %2, metadata !1831, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i16* %3, metadata !1832, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i32 0, metadata !1833, metadata !DIExpression()), !dbg !1835
  br label %5, !dbg !1836

5:                                                ; preds = %25, %4
  %.01 = phi i32 [ 0, %4 ], [ %26, %25 ], !dbg !1838
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1833, metadata !DIExpression()), !dbg !1835
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1839
  br i1 %exitcond2, label %6, label %27, !dbg !1841

6:                                                ; preds = %5
  %7 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1842
  store i32 0, i32* %7, align 4, !dbg !1844, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !1834, metadata !DIExpression()), !dbg !1835
  br label %8, !dbg !1845

8:                                                ; preds = %22, %6
  %.0 = phi i32 [ 0, %6 ], [ %23, %22 ], !dbg !1847
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1834, metadata !DIExpression()), !dbg !1835
  %exitcond = icmp ne i32 %.0, %0, !dbg !1848
  br i1 %exitcond, label %9, label %24, !dbg !1850

9:                                                ; preds = %8
  %10 = mul i32 %.01, %0, !dbg !1851
  %11 = add i32 %10, %.0, !dbg !1853
  %12 = getelementptr inbounds i16, i16* %2, i32 %11, !dbg !1854
  %13 = load i16, i16* %12, align 2, !dbg !1854, !tbaa !294
  %14 = sext i16 %13 to i32, !dbg !1855
  %15 = getelementptr inbounds i16, i16* %3, i32 %.0, !dbg !1856
  %16 = load i16, i16* %15, align 2, !dbg !1856, !tbaa !294
  %17 = sext i16 %16 to i32, !dbg !1857
  %18 = mul nsw i32 %14, %17, !dbg !1858
  %19 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1859
  %20 = load i32, i32* %19, align 4, !dbg !1860, !tbaa !1045
  %21 = add nsw i32 %20, %18, !dbg !1860
  store i32 %21, i32* %19, align 4, !dbg !1860, !tbaa !1045
  br label %22, !dbg !1861

22:                                               ; preds = %9
  %23 = add i32 %.0, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %23, metadata !1834, metadata !DIExpression()), !dbg !1835
  br label %8, !dbg !1863, !llvm.loop !1864

24:                                               ; preds = %8
  br label %25, !dbg !1866

25:                                               ; preds = %24
  %26 = add i32 %.01, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %26, metadata !1833, metadata !DIExpression()), !dbg !1835
  br label %5, !dbg !1868, !llvm.loop !1869

27:                                               ; preds = %5
  ret void, !dbg !1871
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix(i32, i32*, i16*, i16*) #0 !dbg !1872 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1874, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i32* %1, metadata !1875, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i16* %2, metadata !1876, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i16* %3, metadata !1877, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i32 0, metadata !1878, metadata !DIExpression()), !dbg !1881
  br label %5, !dbg !1882

5:                                                ; preds = %36, %4
  %.02 = phi i32 [ 0, %4 ], [ %37, %36 ], !dbg !1884
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1878, metadata !DIExpression()), !dbg !1881
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1885
  br i1 %exitcond4, label %6, label %38, !dbg !1887

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1879, metadata !DIExpression()), !dbg !1881
  br label %7, !dbg !1888

7:                                                ; preds = %33, %6
  %.01 = phi i32 [ 0, %6 ], [ %34, %33 ], !dbg !1891
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1879, metadata !DIExpression()), !dbg !1881
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1892
  br i1 %exitcond3, label %8, label %35, !dbg !1894

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1895
  %10 = add i32 %9, %.01, !dbg !1897
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1898
  store i32 0, i32* %11, align 4, !dbg !1899, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !1880, metadata !DIExpression()), !dbg !1881
  br label %12, !dbg !1900

12:                                               ; preds = %30, %8
  %.0 = phi i32 [ 0, %8 ], [ %31, %30 ], !dbg !1902
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1880, metadata !DIExpression()), !dbg !1881
  %exitcond = icmp ne i32 %.0, %0, !dbg !1903
  br i1 %exitcond, label %13, label %32, !dbg !1905

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1906
  %15 = add i32 %14, %.0, !dbg !1908
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1909
  %17 = load i16, i16* %16, align 2, !dbg !1909, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1910
  %19 = mul i32 %.0, %0, !dbg !1911
  %20 = add i32 %19, %.01, !dbg !1912
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1913
  %22 = load i16, i16* %21, align 2, !dbg !1913, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1914
  %24 = mul nsw i32 %18, %23, !dbg !1915
  %25 = mul i32 %.02, %0, !dbg !1916
  %26 = add i32 %25, %.01, !dbg !1917
  %27 = getelementptr inbounds i32, i32* %1, i32 %26, !dbg !1918
  %28 = load i32, i32* %27, align 4, !dbg !1919, !tbaa !1045
  %29 = add nsw i32 %28, %24, !dbg !1919
  store i32 %29, i32* %27, align 4, !dbg !1919, !tbaa !1045
  br label %30, !dbg !1920

30:                                               ; preds = %13
  %31 = add i32 %.0, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %31, metadata !1880, metadata !DIExpression()), !dbg !1881
  br label %12, !dbg !1922, !llvm.loop !1923

32:                                               ; preds = %12
  br label %33, !dbg !1925

33:                                               ; preds = %32
  %34 = add i32 %.01, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %34, metadata !1879, metadata !DIExpression()), !dbg !1881
  br label %7, !dbg !1927, !llvm.loop !1928

35:                                               ; preds = %7
  br label %36, !dbg !1930

36:                                               ; preds = %35
  %37 = add i32 %.02, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i32 %37, metadata !1878, metadata !DIExpression()), !dbg !1881
  br label %5, !dbg !1932, !llvm.loop !1933

38:                                               ; preds = %5
  ret void, !dbg !1935
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix_bitextract(i32, i32*, i16*, i16*) #0 !dbg !1936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1938, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32* %1, metadata !1939, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i16* %2, metadata !1940, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i16* %3, metadata !1941, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 0, metadata !1942, metadata !DIExpression()), !dbg !1955
  br label %5, !dbg !1956

5:                                                ; preds = %41, %4
  %.02 = phi i32 [ 0, %4 ], [ %42, %41 ], !dbg !1957
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1942, metadata !DIExpression()), !dbg !1955
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1958
  br i1 %exitcond4, label %6, label %43, !dbg !1959

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1943, metadata !DIExpression()), !dbg !1955
  br label %7, !dbg !1960

7:                                                ; preds = %38, %6
  %.01 = phi i32 [ 0, %6 ], [ %39, %38 ], !dbg !1961
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1943, metadata !DIExpression()), !dbg !1955
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1962
  br i1 %exitcond3, label %8, label %40, !dbg !1963

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1964
  %10 = add i32 %9, %.01, !dbg !1965
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1966
  store i32 0, i32* %11, align 4, !dbg !1967, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()), !dbg !1955
  br label %12, !dbg !1968

12:                                               ; preds = %35, %8
  %.0 = phi i32 [ 0, %8 ], [ %36, %35 ], !dbg !1969
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1944, metadata !DIExpression()), !dbg !1955
  %exitcond = icmp ne i32 %.0, %0, !dbg !1970
  br i1 %exitcond, label %13, label %37, !dbg !1971

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1972
  %15 = add i32 %14, %.0, !dbg !1973
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1974
  %17 = load i16, i16* %16, align 2, !dbg !1974, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1975
  %19 = mul i32 %.0, %0, !dbg !1976
  %20 = add i32 %19, %.01, !dbg !1977
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1978
  %22 = load i16, i16* %21, align 2, !dbg !1978, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1979
  %24 = mul nsw i32 %18, %23, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %24, metadata !1945, metadata !DIExpression()), !dbg !1981
  %25 = ashr i32 %24, 2, !dbg !1982
  %26 = and i32 %25, 15, !dbg !1982
  %27 = ashr i32 %24, 5, !dbg !1983
  %28 = and i32 %27, 127, !dbg !1983
  %29 = mul i32 %26, %28, !dbg !1984
  %30 = mul i32 %.02, %0, !dbg !1985
  %31 = add i32 %30, %.01, !dbg !1986
  %32 = getelementptr inbounds i32, i32* %1, i32 %31, !dbg !1987
  %33 = load i32, i32* %32, align 4, !dbg !1988, !tbaa !1045
  %34 = add i32 %33, %29, !dbg !1988
  store i32 %34, i32* %32, align 4, !dbg !1988, !tbaa !1045
  br label %35, !dbg !1989

35:                                               ; preds = %13
  %36 = add i32 %.0, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i32 %36, metadata !1944, metadata !DIExpression()), !dbg !1955
  br label %12, !dbg !1991, !llvm.loop !1992

37:                                               ; preds = %12
  br label %38, !dbg !1994

38:                                               ; preds = %37
  %39 = add i32 %.01, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %39, metadata !1943, metadata !DIExpression()), !dbg !1955
  br label %7, !dbg !1996, !llvm.loop !1997

40:                                               ; preds = %7
  br label %41, !dbg !1999

41:                                               ; preds = %40
  %42 = add i32 %.02, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %42, metadata !1942, metadata !DIExpression()), !dbg !1955
  br label %5, !dbg !2001, !llvm.loop !2002

43:                                               ; preds = %5
  ret void, !dbg !2004
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_init_matrix(i32, i8*, i32, %struct.MAT_PARAMS_S*) #0 !dbg !2005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2009, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8* %1, metadata !2010, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %2, metadata !2011, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %3, metadata !2012, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 0, metadata !2013, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 1, metadata !2016, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 0, metadata !2018, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 0, metadata !2019, metadata !DIExpression()), !dbg !2020
  %5 = icmp eq i32 %2, 0, !dbg !2021
  br i1 %5, label %6, label %._crit_edge, !dbg !2023

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2023

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !2011, metadata !DIExpression()), !dbg !2020
  br label %7, !dbg !2024

7:                                                ; preds = %6, %._crit_edge
  %.03 = phi i32 [ 1, %6 ], [ %2, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2011, metadata !DIExpression()), !dbg !2020
  br label %8, !dbg !2025

8:                                                ; preds = %10, %7
  %.01 = phi i32 [ 0, %7 ], [ %11, %10 ], !dbg !2020
  %.0 = phi i32 [ 0, %7 ], [ %14, %10 ], !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2019, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2018, metadata !DIExpression()), !dbg !2020
  %9 = icmp ult i32 %.0, %0, !dbg !2026
  br i1 %9, label %10, label %15, !dbg !2025

10:                                               ; preds = %8
  %11 = add i32 %.01, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %11, metadata !2018, metadata !DIExpression()), !dbg !2020
  %12 = mul i32 %11, %11, !dbg !2029
  %13 = mul i32 %12, 2, !dbg !2030
  %14 = mul i32 %13, 4, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %14, metadata !2019, metadata !DIExpression()), !dbg !2020
  br label %8, !dbg !2025, !llvm.loop !2032

15:                                               ; preds = %8
  %.01.lcssa = phi i32 [ %.01, %8 ], !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2018, metadata !DIExpression()), !dbg !2020
  %16 = sub i32 %.01.lcssa, 1, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %16, metadata !2013, metadata !DIExpression()), !dbg !2020
  %17 = ptrtoint i8* %1 to i32, !dbg !2035
  %18 = sub i32 %17, 1, !dbg !2035
  %19 = and i32 %18, -4, !dbg !2035
  %20 = add i32 4, %19, !dbg !2035
  %21 = inttoptr i32 %20 to i8*, !dbg !2035
  %22 = bitcast i8* %21 to i16*, !dbg !2036
  call void @llvm.dbg.value(metadata i16* %22, metadata !2014, metadata !DIExpression()), !dbg !2020
  %23 = mul i32 %16, %16, !dbg !2037
  %24 = getelementptr inbounds i16, i16* %22, i32 %23, !dbg !2038
  call void @llvm.dbg.value(metadata i16* %24, metadata !2015, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 0, metadata !2018, metadata !DIExpression()), !dbg !2020
  br label %25, !dbg !2039

25:                                               ; preds = %52, %15
  %.05 = phi i32 [ 1, %15 ], [ %.16.lcssa, %52 ], !dbg !2041
  %.14 = phi i32 [ %.03, %15 ], [ %.2.lcssa, %52 ], !dbg !2042
  %.12 = phi i32 [ 0, %15 ], [ %53, %52 ], !dbg !2043
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2018, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2011, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2016, metadata !DIExpression()), !dbg !2020
  %exitcond7 = icmp ne i32 %.12, %16, !dbg !2044
  br i1 %exitcond7, label %26, label %54, !dbg !2046

26:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 0, metadata !2019, metadata !DIExpression()), !dbg !2020
  br label %27, !dbg !2047

27:                                               ; preds = %49, %26
  %.16 = phi i32 [ %.05, %26 ], [ %48, %49 ], !dbg !2020
  %.2 = phi i32 [ %.14, %26 ], [ %30, %49 ], !dbg !2020
  %.1 = phi i32 [ 0, %26 ], [ %50, %49 ], !dbg !2050
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2019, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2011, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2016, metadata !DIExpression()), !dbg !2020
  %exitcond = icmp ne i32 %.1, %16, !dbg !2051
  br i1 %exitcond, label %28, label %51, !dbg !2053

28:                                               ; preds = %27
  %29 = mul nsw i32 %.16, %.2, !dbg !2054
  %30 = srem i32 %29, 65536, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %30, metadata !2011, metadata !DIExpression()), !dbg !2020
  %31 = add nsw i32 %30, %.16, !dbg !2057
  %32 = trunc i32 %31 to i16, !dbg !2058
  call void @llvm.dbg.value(metadata i16 %32, metadata !2017, metadata !DIExpression()), !dbg !2020
  %33 = sext i16 %32 to i32, !dbg !2059
  %34 = and i32 %33, 65535, !dbg !2059
  %35 = trunc i32 %34 to i16, !dbg !2059
  call void @llvm.dbg.value(metadata i16 %35, metadata !2017, metadata !DIExpression()), !dbg !2020
  %36 = mul i32 %.12, %16, !dbg !2060
  %37 = add i32 %36, %.1, !dbg !2061
  %38 = getelementptr inbounds i16, i16* %24, i32 %37, !dbg !2062
  store i16 %35, i16* %38, align 2, !dbg !2063, !tbaa !294
  %39 = sext i16 %35 to i32, !dbg !2064
  %40 = add nsw i32 %39, %.16, !dbg !2065
  %41 = trunc i32 %40 to i16, !dbg !2066
  call void @llvm.dbg.value(metadata i16 %41, metadata !2017, metadata !DIExpression()), !dbg !2020
  %42 = sext i16 %41 to i32, !dbg !2067
  %43 = and i32 %42, 255, !dbg !2067
  %44 = trunc i32 %43 to i16, !dbg !2067
  call void @llvm.dbg.value(metadata i16 %44, metadata !2017, metadata !DIExpression()), !dbg !2020
  %45 = mul i32 %.12, %16, !dbg !2068
  %46 = add i32 %45, %.1, !dbg !2069
  %47 = getelementptr inbounds i16, i16* %22, i32 %46, !dbg !2070
  store i16 %44, i16* %47, align 2, !dbg !2071, !tbaa !294
  %48 = add nsw i32 %.16, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i32 %48, metadata !2016, metadata !DIExpression()), !dbg !2020
  br label %49, !dbg !2073

49:                                               ; preds = %28
  %50 = add i32 %.1, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %50, metadata !2019, metadata !DIExpression()), !dbg !2020
  br label %27, !dbg !2075, !llvm.loop !2076

51:                                               ; preds = %27
  %.16.lcssa = phi i32 [ %.16, %27 ], !dbg !2020
  %.2.lcssa = phi i32 [ %.2, %27 ], !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !2016, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2011, metadata !DIExpression()), !dbg !2020
  br label %52, !dbg !2078

52:                                               ; preds = %51
  %53 = add i32 %.12, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %53, metadata !2018, metadata !DIExpression()), !dbg !2020
  br label %25, !dbg !2080, !llvm.loop !2081

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 1, !dbg !2083
  store i16* %22, i16** %55, align 4, !dbg !2084, !tbaa !1644
  %56 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 2, !dbg !2085
  store i16* %24, i16** %56, align 4, !dbg !2086, !tbaa !1646
  %57 = mul i32 %16, %16, !dbg !2087
  %58 = getelementptr inbounds i16, i16* %24, i32 %57, !dbg !2087
  %59 = ptrtoint i16* %58 to i32, !dbg !2087
  %60 = sub i32 %59, 1, !dbg !2087
  %61 = and i32 %60, -4, !dbg !2087
  %62 = add i32 4, %61, !dbg !2087
  %63 = inttoptr i32 %62 to i8*, !dbg !2087
  %64 = bitcast i8* %63 to i32*, !dbg !2088
  %65 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 3, !dbg !2089
  store i32* %64, i32** %65, align 4, !dbg !2090, !tbaa !1642
  %66 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 0, !dbg !2091
  store i32 %16, i32* %66, align 4, !dbg !2092, !tbaa !1640
  ret i32 %16, !dbg !2093
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_state(i32, i8*, i16 signext, i16 signext, i16 signext, i16 zeroext) #0 !dbg !2094 {
  %7 = alloca [8 x i32], align 4
  %8 = alloca [8 x i32], align 4
  %9 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2098, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8* %1, metadata !2099, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i16 %2, metadata !2100, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i16 %3, metadata !2101, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i16 %4, metadata !2102, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i16 %5, metadata !2103, metadata !DIExpression()), !dbg !2115
  %10 = bitcast [8 x i32]* %7 to i8*, !dbg !2116
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !2116
  call void @llvm.dbg.declare(metadata [8 x i32]* %7, metadata !2104, metadata !DIExpression()), !dbg !2117
  %11 = bitcast [8 x i32]* %8 to i8*, !dbg !2118
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %11) #4, !dbg !2118
  call void @llvm.dbg.declare(metadata [8 x i32]* %8, metadata !2108, metadata !DIExpression()), !dbg !2119
  %12 = bitcast i8** %9 to i8*, !dbg !2120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2120
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2109, metadata !DIExpression()), !dbg !2121
  store i8* %1, i8** %9, align 4, !dbg !2121, !tbaa !334
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2115
  br label %13, !dbg !2122

13:                                               ; preds = %17, %6
  %.0 = phi i32 [ 0, %6 ], [ %18, %17 ], !dbg !2124
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2110, metadata !DIExpression()), !dbg !2115
  %exitcond3 = icmp ne i32 %.0, 8, !dbg !2125
  br i1 %exitcond3, label %14, label %19, !dbg !2127

14:                                               ; preds = %13
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.0, !dbg !2128
  store i32 0, i32* %15, align 4, !dbg !2130, !tbaa !1045
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.0, !dbg !2131
  store i32 0, i32* %16, align 4, !dbg !2132, !tbaa !1045
  br label %17, !dbg !2133

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %.0, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i32 %18, metadata !2110, metadata !DIExpression()), !dbg !2115
  br label %13, !dbg !2135, !llvm.loop !2136

19:                                               ; preds = %13
  br label %20, !dbg !2138

20:                                               ; preds = %25, %19
  %21 = load i8*, i8** %9, align 4, !dbg !2139, !tbaa !334
  %22 = load i8, i8* %21, align 1, !dbg !2140, !tbaa !2141
  %23 = zext i8 %22 to i32, !dbg !2140
  %24 = icmp ne i32 %23, 0, !dbg !2142
  br i1 %24, label %25, label %31, !dbg !2138

25:                                               ; preds = %20
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2143
  %27 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %26), !dbg !2144
  call void @llvm.dbg.value(metadata i32 %27, metadata !2111, metadata !DIExpression()), !dbg !2145
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %27, !dbg !2146
  %29 = load i32, i32* %28, align 4, !dbg !2147, !tbaa !1045
  %30 = add i32 %29, 1, !dbg !2147
  store i32 %30, i32* %28, align 4, !dbg !2147, !tbaa !1045
  br label %20, !dbg !2138, !llvm.loop !2148

31:                                               ; preds = %20
  store i8* %1, i8** %9, align 4, !dbg !2150, !tbaa !334
  br label %32, !dbg !2151

32:                                               ; preds = %49, %31
  %33 = load i8*, i8** %9, align 4, !dbg !2152, !tbaa !334
  %34 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2153
  %35 = icmp ult i8* %33, %34, !dbg !2154
  br i1 %35, label %36, label %53, !dbg !2151

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 4, !dbg !2155, !tbaa !334
  %38 = load i8, i8* %37, align 1, !dbg !2158, !tbaa !2141
  %39 = zext i8 %38 to i32, !dbg !2158
  %40 = icmp ne i32 %39, 44, !dbg !2159
  br i1 %40, label %41, label %._crit_edge, !dbg !2160

._crit_edge:                                      ; preds = %36
  br label %49, !dbg !2160

41:                                               ; preds = %36
  %42 = trunc i16 %2 to i8, !dbg !2161
  %43 = zext i8 %42 to i32, !dbg !2161
  %44 = load i8*, i8** %9, align 4, !dbg !2162, !tbaa !334
  %45 = load i8, i8* %44, align 1, !dbg !2163, !tbaa !2141
  %46 = zext i8 %45 to i32, !dbg !2163
  %47 = xor i32 %46, %43, !dbg !2163
  %48 = trunc i32 %47 to i8, !dbg !2163
  store i8 %48, i8* %44, align 1, !dbg !2163, !tbaa !2141
  br label %49, !dbg !2164

49:                                               ; preds = %41, %._crit_edge
  %50 = sext i16 %4 to i32, !dbg !2165
  %51 = load i8*, i8** %9, align 4, !dbg !2166, !tbaa !334
  %52 = getelementptr inbounds i8, i8* %51, i32 %50, !dbg !2166
  store i8* %52, i8** %9, align 4, !dbg !2166, !tbaa !334
  br label %32, !dbg !2151, !llvm.loop !2167

53:                                               ; preds = %32
  store i8* %1, i8** %9, align 4, !dbg !2169, !tbaa !334
  br label %54, !dbg !2170

54:                                               ; preds = %59, %53
  %55 = load i8*, i8** %9, align 4, !dbg !2171, !tbaa !334
  %56 = load i8, i8* %55, align 1, !dbg !2172, !tbaa !2141
  %57 = zext i8 %56 to i32, !dbg !2172
  %58 = icmp ne i32 %57, 0, !dbg !2173
  br i1 %58, label %59, label %65, !dbg !2170

59:                                               ; preds = %54
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2174
  %61 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %60), !dbg !2175
  call void @llvm.dbg.value(metadata i32 %61, metadata !2113, metadata !DIExpression()), !dbg !2176
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %61, !dbg !2177
  %63 = load i32, i32* %62, align 4, !dbg !2178, !tbaa !1045
  %64 = add i32 %63, 1, !dbg !2178
  store i32 %64, i32* %62, align 4, !dbg !2178, !tbaa !1045
  br label %54, !dbg !2170, !llvm.loop !2179

65:                                               ; preds = %54
  store i8* %1, i8** %9, align 4, !dbg !2181, !tbaa !334
  br label %66, !dbg !2182

66:                                               ; preds = %83, %65
  %67 = load i8*, i8** %9, align 4, !dbg !2183, !tbaa !334
  %68 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2184
  %69 = icmp ult i8* %67, %68, !dbg !2185
  br i1 %69, label %70, label %87, !dbg !2182

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 4, !dbg !2186, !tbaa !334
  %72 = load i8, i8* %71, align 1, !dbg !2189, !tbaa !2141
  %73 = zext i8 %72 to i32, !dbg !2189
  %74 = icmp ne i32 %73, 44, !dbg !2190
  br i1 %74, label %75, label %._crit_edge2, !dbg !2191

._crit_edge2:                                     ; preds = %70
  br label %83, !dbg !2191

75:                                               ; preds = %70
  %76 = trunc i16 %3 to i8, !dbg !2192
  %77 = zext i8 %76 to i32, !dbg !2192
  %78 = load i8*, i8** %9, align 4, !dbg !2193, !tbaa !334
  %79 = load i8, i8* %78, align 1, !dbg !2194, !tbaa !2141
  %80 = zext i8 %79 to i32, !dbg !2194
  %81 = xor i32 %80, %77, !dbg !2194
  %82 = trunc i32 %81 to i8, !dbg !2194
  store i8 %82, i8* %78, align 1, !dbg !2194, !tbaa !2141
  br label %83, !dbg !2195

83:                                               ; preds = %75, %._crit_edge2
  %84 = sext i16 %4 to i32, !dbg !2196
  %85 = load i8*, i8** %9, align 4, !dbg !2197, !tbaa !334
  %86 = getelementptr inbounds i8, i8* %85, i32 %84, !dbg !2197
  store i8* %86, i8** %9, align 4, !dbg !2197, !tbaa !334
  br label %66, !dbg !2182, !llvm.loop !2198

87:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2115
  br label %88, !dbg !2200

88:                                               ; preds = %96, %87
  %.01 = phi i16 [ %5, %87 ], [ %95, %96 ]
  %.1 = phi i32 [ 0, %87 ], [ %97, %96 ], !dbg !2202
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2110, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2103, metadata !DIExpression()), !dbg !2115
  %exitcond = icmp ne i32 %.1, 8, !dbg !2203
  br i1 %exitcond, label %89, label %98, !dbg !2205

89:                                               ; preds = %88
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.1, !dbg !2206
  %91 = load i32, i32* %90, align 4, !dbg !2206, !tbaa !1045
  %92 = call arm_aapcscc zeroext i16 @crcu32(i32 %91, i16 zeroext %.01), !dbg !2208
  call void @llvm.dbg.value(metadata i16 %92, metadata !2103, metadata !DIExpression()), !dbg !2115
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.1, !dbg !2209
  %94 = load i32, i32* %93, align 4, !dbg !2209, !tbaa !1045
  %95 = call arm_aapcscc zeroext i16 @crcu32(i32 %94, i16 zeroext %92), !dbg !2210
  call void @llvm.dbg.value(metadata i16 %95, metadata !2103, metadata !DIExpression()), !dbg !2115
  br label %96, !dbg !2211

96:                                               ; preds = %89
  %97 = add nuw nsw i32 %.1, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %97, metadata !2110, metadata !DIExpression()), !dbg !2115
  br label %88, !dbg !2213, !llvm.loop !2214

98:                                               ; preds = %88
  %.01.lcssa = phi i16 [ %.01, %88 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2103, metadata !DIExpression()), !dbg !2115
  %99 = bitcast i8** %9 to i8*, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #4, !dbg !2216
  %100 = bitcast [8 x i32]* %8 to i8*, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %100) #4, !dbg !2216
  %101 = bitcast [8 x i32]* %7 to i8*, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %101) #4, !dbg !2216
  ret i16 %.01.lcssa, !dbg !2217
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_state_transition(i8**, i32*) #0 !dbg !2218 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2224, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32* %1, metadata !2225, metadata !DIExpression()), !dbg !2229
  %3 = load i8*, i8** %0, align 4, !dbg !2230, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %3, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 0, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %4, !dbg !2231

4:                                                ; preds = %136, %2
  %.01 = phi i8* [ %3, %2 ], [ %137, %136 ], !dbg !2229
  %.0 = phi i32 [ 0, %2 ], [ %.13, %136 ], !dbg !2232
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2228, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2226, metadata !DIExpression()), !dbg !2229
  %5 = load i8, i8* %.01, align 1, !dbg !2233, !tbaa !2141
  %6 = zext i8 %5 to i32, !dbg !2233
  %7 = icmp ne i32 %6, 0, !dbg !2233
  br i1 %7, label %8, label %._crit_edge, !dbg !2236

._crit_edge:                                      ; preds = %4
  br label %10, !dbg !2236

8:                                                ; preds = %4
  %9 = icmp ne i32 %.0, 1, !dbg !2237
  br label %10

10:                                               ; preds = %8, %._crit_edge
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %8 ], !dbg !2238
  br i1 %11, label %12, label %._crit_edge17, !dbg !2239

._crit_edge17:                                    ; preds = %10
  %.01.lcssa = phi i8* [ %.01, %10 ], !dbg !2229
  %.0.lcssa = phi i32 [ %.0, %10 ], !dbg !2232
  call void @llvm.dbg.value(metadata i8* %.01.lcssa, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %138, !dbg !2239

12:                                               ; preds = %10
  %13 = load i8, i8* %.01, align 1, !dbg !2240, !tbaa !2141
  call void @llvm.dbg.value(metadata i8 %13, metadata !2227, metadata !DIExpression()), !dbg !2229
  %14 = zext i8 %13 to i32, !dbg !2242
  %15 = icmp eq i32 %14, 44, !dbg !2244
  br i1 %15, label %16, label %18, !dbg !2245

16:                                               ; preds = %12
  %.01.lcssa29 = phi i8* [ %.01, %12 ], !dbg !2229
  %.0.lcssa27 = phi i32 [ %.0, %12 ], !dbg !2232
  call void @llvm.dbg.value(metadata i8* %.01.lcssa29, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %.0.lcssa27, metadata !2228, metadata !DIExpression()), !dbg !2229
  %17 = getelementptr inbounds i8, i8* %.01.lcssa29, i32 1, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %17, metadata !2226, metadata !DIExpression()), !dbg !2229
  br label %138, !dbg !2248

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
  %20 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2249
  %21 = icmp ne i8 %20, 0, !dbg !2249
  br i1 %21, label %22, label %23, !dbg !2252

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 4, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %40, !dbg !2253

23:                                               ; preds = %19
  %24 = zext i8 %13 to i32, !dbg !2255
  %25 = icmp eq i32 %24, 43, !dbg !2257
  br i1 %25, label %._crit_edge18, label %26, !dbg !2258

._crit_edge18:                                    ; preds = %23
  br label %29, !dbg !2258

26:                                               ; preds = %23
  %27 = zext i8 %13 to i32, !dbg !2259
  %28 = icmp eq i32 %27, 45, !dbg !2260
  br i1 %28, label %._crit_edge19, label %30, !dbg !2261

._crit_edge19:                                    ; preds = %26
  br label %29, !dbg !2261

29:                                               ; preds = %._crit_edge19, %._crit_edge18
  call void @llvm.dbg.value(metadata i32 2, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %39, !dbg !2262

30:                                               ; preds = %26
  %31 = zext i8 %13 to i32, !dbg !2264
  %32 = icmp eq i32 %31, 46, !dbg !2266
  br i1 %32, label %33, label %34, !dbg !2267

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 5, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %38, !dbg !2268

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 1, metadata !2228, metadata !DIExpression()), !dbg !2229
  %35 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2270
  %36 = load i32, i32* %35, align 4, !dbg !2272, !tbaa !1045
  %37 = add i32 %36, 1, !dbg !2272
  store i32 %37, i32* %35, align 4, !dbg !2272, !tbaa !1045
  br label %38

38:                                               ; preds = %34, %33
  %.1 = phi i32 [ 5, %33 ], [ 1, %34 ], !dbg !2273
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %39

39:                                               ; preds = %38, %29
  %.2 = phi i32 [ 2, %29 ], [ %.1, %38 ], !dbg !2274
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %40

40:                                               ; preds = %39, %22
  %.3 = phi i32 [ 4, %22 ], [ %.2, %39 ], !dbg !2275
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2228, metadata !DIExpression()), !dbg !2229
  %41 = getelementptr inbounds i32, i32* %1, i32 0, !dbg !2276
  %42 = load i32, i32* %41, align 4, !dbg !2277, !tbaa !1045
  %43 = add i32 %42, 1, !dbg !2277
  store i32 %43, i32* %41, align 4, !dbg !2277, !tbaa !1045
  br label %135, !dbg !2278

44:                                               ; preds = %NodeBlock
  %45 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2279
  %46 = icmp ne i8 %45, 0, !dbg !2279
  br i1 %46, label %47, label %51, !dbg !2281

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 4, metadata !2228, metadata !DIExpression()), !dbg !2229
  %48 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2282
  %49 = load i32, i32* %48, align 4, !dbg !2284, !tbaa !1045
  %50 = add i32 %49, 1, !dbg !2284
  store i32 %50, i32* %48, align 4, !dbg !2284, !tbaa !1045
  br label %63, !dbg !2285

51:                                               ; preds = %44
  %52 = zext i8 %13 to i32, !dbg !2286
  %53 = icmp eq i32 %52, 46, !dbg !2288
  br i1 %53, label %54, label %58, !dbg !2289

54:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 5, metadata !2228, metadata !DIExpression()), !dbg !2229
  %55 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2290
  %56 = load i32, i32* %55, align 4, !dbg !2292, !tbaa !1045
  %57 = add i32 %56, 1, !dbg !2292
  store i32 %57, i32* %55, align 4, !dbg !2292, !tbaa !1045
  br label %62, !dbg !2293

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 1, metadata !2228, metadata !DIExpression()), !dbg !2229
  %59 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2294
  %60 = load i32, i32* %59, align 4, !dbg !2296, !tbaa !1045
  %61 = add i32 %60, 1, !dbg !2296
  store i32 %61, i32* %59, align 4, !dbg !2296, !tbaa !1045
  br label %62

62:                                               ; preds = %58, %54
  %.4 = phi i32 [ 5, %54 ], [ 1, %58 ], !dbg !2297
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %63

63:                                               ; preds = %62, %47
  %.5 = phi i32 [ 4, %47 ], [ %.4, %62 ], !dbg !2298
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %135, !dbg !2299

64:                                               ; preds = %NodeBlock7
  %65 = zext i8 %13 to i32, !dbg !2300
  %66 = icmp eq i32 %65, 46, !dbg !2302
  br i1 %66, label %67, label %71, !dbg !2303

67:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 5, metadata !2228, metadata !DIExpression()), !dbg !2229
  %68 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2304
  %69 = load i32, i32* %68, align 4, !dbg !2306, !tbaa !1045
  %70 = add i32 %69, 1, !dbg !2306
  store i32 %70, i32* %68, align 4, !dbg !2306, !tbaa !1045
  br label %79, !dbg !2307

71:                                               ; preds = %64
  %72 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2308
  %73 = icmp ne i8 %72, 0, !dbg !2308
  br i1 %73, label %._crit_edge20, label %74, !dbg !2310

._crit_edge20:                                    ; preds = %71
  br label %78, !dbg !2310

74:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 1, metadata !2228, metadata !DIExpression()), !dbg !2229
  %75 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2311
  %76 = load i32, i32* %75, align 4, !dbg !2313, !tbaa !1045
  %77 = add i32 %76, 1, !dbg !2313
  store i32 %77, i32* %75, align 4, !dbg !2313, !tbaa !1045
  br label %78, !dbg !2314

78:                                               ; preds = %74, %._crit_edge20
  %.6 = phi i32 [ %.0, %._crit_edge20 ], [ 1, %74 ], !dbg !2229
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %79

79:                                               ; preds = %78, %67
  %.7 = phi i32 [ 5, %67 ], [ %.6, %78 ], !dbg !2229
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %135, !dbg !2315

80:                                               ; preds = %NodeBlock7
  %81 = zext i8 %13 to i32, !dbg !2316
  %82 = icmp eq i32 %81, 69, !dbg !2318
  br i1 %82, label %._crit_edge21, label %83, !dbg !2319

._crit_edge21:                                    ; preds = %80
  br label %86, !dbg !2319

83:                                               ; preds = %80
  %84 = zext i8 %13 to i32, !dbg !2320
  %85 = icmp eq i32 %84, 101, !dbg !2321
  br i1 %85, label %._crit_edge22, label %90, !dbg !2322

._crit_edge22:                                    ; preds = %83
  br label %86, !dbg !2322

86:                                               ; preds = %._crit_edge22, %._crit_edge21
  call void @llvm.dbg.value(metadata i32 3, metadata !2228, metadata !DIExpression()), !dbg !2229
  %87 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2323
  %88 = load i32, i32* %87, align 4, !dbg !2325, !tbaa !1045
  %89 = add i32 %88, 1, !dbg !2325
  store i32 %89, i32* %87, align 4, !dbg !2325, !tbaa !1045
  br label %98, !dbg !2326

90:                                               ; preds = %83
  %91 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2327
  %92 = icmp ne i8 %91, 0, !dbg !2327
  br i1 %92, label %._crit_edge23, label %93, !dbg !2329

._crit_edge23:                                    ; preds = %90
  br label %97, !dbg !2329

93:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i32 1, metadata !2228, metadata !DIExpression()), !dbg !2229
  %94 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2330
  %95 = load i32, i32* %94, align 4, !dbg !2332, !tbaa !1045
  %96 = add i32 %95, 1, !dbg !2332
  store i32 %96, i32* %94, align 4, !dbg !2332, !tbaa !1045
  br label %97, !dbg !2333

97:                                               ; preds = %93, %._crit_edge23
  %.8 = phi i32 [ %.0, %._crit_edge23 ], [ 1, %93 ], !dbg !2229
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %98

98:                                               ; preds = %97, %86
  %.9 = phi i32 [ 3, %86 ], [ %.8, %97 ], !dbg !2229
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %135, !dbg !2334

99:                                               ; preds = %NodeBlock
  %100 = zext i8 %13 to i32, !dbg !2335
  %101 = icmp eq i32 %100, 43, !dbg !2337
  br i1 %101, label %._crit_edge24, label %102, !dbg !2338

._crit_edge24:                                    ; preds = %99
  br label %105, !dbg !2338

102:                                              ; preds = %99
  %103 = zext i8 %13 to i32, !dbg !2339
  %104 = icmp eq i32 %103, 45, !dbg !2340
  br i1 %104, label %._crit_edge25, label %109, !dbg !2341

._crit_edge25:                                    ; preds = %102
  br label %105, !dbg !2341

105:                                              ; preds = %._crit_edge25, %._crit_edge24
  call void @llvm.dbg.value(metadata i32 6, metadata !2228, metadata !DIExpression()), !dbg !2229
  %106 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2342
  %107 = load i32, i32* %106, align 4, !dbg !2344, !tbaa !1045
  %108 = add i32 %107, 1, !dbg !2344
  store i32 %108, i32* %106, align 4, !dbg !2344, !tbaa !1045
  br label %113, !dbg !2345

109:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 1, metadata !2228, metadata !DIExpression()), !dbg !2229
  %110 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2346
  %111 = load i32, i32* %110, align 4, !dbg !2348, !tbaa !1045
  %112 = add i32 %111, 1, !dbg !2348
  store i32 %112, i32* %110, align 4, !dbg !2348, !tbaa !1045
  br label %113

113:                                              ; preds = %109, %105
  %.10 = phi i32 [ 6, %105 ], [ 1, %109 ], !dbg !2349
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %135, !dbg !2350

114:                                              ; preds = %NodeBlock11
  %115 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2351
  %116 = icmp ne i8 %115, 0, !dbg !2351
  br i1 %116, label %117, label %121, !dbg !2353

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 7, metadata !2228, metadata !DIExpression()), !dbg !2229
  %118 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2354
  %119 = load i32, i32* %118, align 4, !dbg !2356, !tbaa !1045
  %120 = add i32 %119, 1, !dbg !2356
  store i32 %120, i32* %118, align 4, !dbg !2356, !tbaa !1045
  br label %125, !dbg !2357

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 1, metadata !2228, metadata !DIExpression()), !dbg !2229
  %122 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2358
  %123 = load i32, i32* %122, align 4, !dbg !2360, !tbaa !1045
  %124 = add i32 %123, 1, !dbg !2360
  store i32 %124, i32* %122, align 4, !dbg !2360, !tbaa !1045
  br label %125

125:                                              ; preds = %121, %117
  %.11 = phi i32 [ 7, %117 ], [ 1, %121 ], !dbg !2361
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %135, !dbg !2362

126:                                              ; preds = %LeafBlock9
  %127 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2363
  %128 = icmp ne i8 %127, 0, !dbg !2363
  br i1 %128, label %._crit_edge26, label %129, !dbg !2365

._crit_edge26:                                    ; preds = %126
  br label %133, !dbg !2365

129:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i32 1, metadata !2228, metadata !DIExpression()), !dbg !2229
  %130 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2366
  %131 = load i32, i32* %130, align 4, !dbg !2368, !tbaa !1045
  %132 = add i32 %131, 1, !dbg !2368
  store i32 %132, i32* %130, align 4, !dbg !2368, !tbaa !1045
  br label %133, !dbg !2369

133:                                              ; preds = %129, %._crit_edge26
  %.12 = phi i32 [ %.0, %._crit_edge26 ], [ 1, %129 ], !dbg !2229
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %135, !dbg !2370

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock9.NewDefault_crit_edge
  br label %134

134:                                              ; preds = %NewDefault
  br label %135, !dbg !2371

135:                                              ; preds = %134, %133, %125, %113, %98, %79, %63, %40
  %.13 = phi i32 [ %.0, %134 ], [ %.12, %133 ], [ %.11, %125 ], [ %.10, %113 ], [ %.9, %98 ], [ %.7, %79 ], [ %.5, %63 ], [ %.3, %40 ], !dbg !2229
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2228, metadata !DIExpression()), !dbg !2229
  br label %136, !dbg !2372

136:                                              ; preds = %135
  %137 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %137, metadata !2226, metadata !DIExpression()), !dbg !2229
  br label %4, !dbg !2374, !llvm.loop !2375

138:                                              ; preds = %16, %._crit_edge17
  %.028 = phi i32 [ %.0.lcssa27, %16 ], [ %.0.lcssa, %._crit_edge17 ]
  %.14 = phi i8* [ %17, %16 ], [ %.01.lcssa, %._crit_edge17 ], !dbg !2229
  call void @llvm.dbg.value(metadata i8* %.14, metadata !2226, metadata !DIExpression()), !dbg !2229
  store i8* %.14, i8** %0, align 4, !dbg !2377, !tbaa !334
  ret i32 %.028, !dbg !2378
}

; Function Attrs: nounwind
define internal arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext) #0 !dbg !2379 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2383, metadata !DIExpression()), !dbg !2385
  %2 = zext i8 %0 to i32, !dbg !2386
  %3 = icmp sge i32 %2, 48, !dbg !2387
  %4 = zext i1 %3 to i32, !dbg !2387
  %5 = zext i8 %0 to i32, !dbg !2388
  %6 = icmp sle i32 %5, 57, !dbg !2389
  %7 = zext i1 %6 to i32, !dbg !2389
  %8 = and i32 %4, %7, !dbg !2390
  %9 = icmp ne i32 %8, 0, !dbg !2391
  %10 = zext i1 %9 to i64, !dbg !2391
  %11 = select i1 %9, i32 1, i32 0, !dbg !2391
  %12 = trunc i32 %11 to i8, !dbg !2391
  call void @llvm.dbg.value(metadata i8 %12, metadata !2384, metadata !DIExpression()), !dbg !2385
  ret i8 %12, !dbg !2392
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @core_init_state(i32, i16 signext, i8*) #0 !dbg !2393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i16 %1, metadata !2398, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8* %2, metadata !2399, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8* null, metadata !2403, metadata !DIExpression()), !dbg !2404
  %4 = add i32 %0, -1, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %4, metadata !2397, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()), !dbg !2404
  br label %5, !dbg !2406

5:                                                ; preds = %53, %3
  %.04 = phi i32 [ 0, %3 ], [ %.15, %53 ], !dbg !2407
  %.02 = phi i32 [ 0, %3 ], [ %.13, %53 ], !dbg !2404
  %.01 = phi i8* [ null, %3 ], [ %.1, %53 ], !dbg !2408
  %.0 = phi i16 [ %1, %3 ], [ %26, %53 ]
  call void @llvm.dbg.value(metadata i16 %.0, metadata !2398, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2401, metadata !DIExpression()), !dbg !2404
  %6 = add i32 %.02, %.04, !dbg !2409
  %7 = add i32 %6, 1, !dbg !2410
  %8 = icmp ult i32 %7, %4, !dbg !2411
  br i1 %8, label %9, label %54, !dbg !2406

9:                                                ; preds = %5
  %10 = icmp ugt i32 %.04, 0, !dbg !2412
  br i1 %10, label %11, label %._crit_edge, !dbg !2415

._crit_edge:                                      ; preds = %9
  br label %25, !dbg !2415

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2404
  br label %12, !dbg !2416

12:                                               ; preds = %18, %11
  %.06 = phi i32 [ 0, %11 ], [ %19, %18 ], !dbg !2419
  call void @llvm.dbg.value(metadata i32 %.06, metadata !2402, metadata !DIExpression()), !dbg !2404
  %exitcond = icmp ne i32 %.06, %.04, !dbg !2420
  br i1 %exitcond, label %13, label %20, !dbg !2422

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.01, i32 %.06, !dbg !2423
  %15 = load i8, i8* %14, align 1, !dbg !2423, !tbaa !2141
  %16 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2424
  %17 = getelementptr inbounds i8, i8* %16, i32 %.06, !dbg !2425
  store i8 %15, i8* %17, align 1, !dbg !2426, !tbaa !2141
  br label %18, !dbg !2427

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %.06, 1, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %19, metadata !2402, metadata !DIExpression()), !dbg !2404
  br label %12, !dbg !2429, !llvm.loop !2430

20:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2402, metadata !DIExpression()), !dbg !2404
  %21 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2432
  %22 = getelementptr inbounds i8, i8* %21, i32 %.04, !dbg !2433
  store i8 44, i8* %22, align 1, !dbg !2434, !tbaa !2141
  %23 = add nuw nsw i32 %.04, 1, !dbg !2435
  %24 = add i32 %.02, %23, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %24, metadata !2400, metadata !DIExpression()), !dbg !2404
  br label %25, !dbg !2437

25:                                               ; preds = %20, %._crit_edge
  %.13 = phi i32 [ %24, %20 ], [ %.02, %._crit_edge ], !dbg !2404
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2400, metadata !DIExpression()), !dbg !2404
  %26 = add i16 %.0, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i16 %26, metadata !2398, metadata !DIExpression()), !dbg !2404
  %27 = sext i16 %26 to i32, !dbg !2439
  %28 = and i32 %27, 7, !dbg !2440
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
  %30 = sext i16 %26 to i32, !dbg !2441
  %31 = ashr i32 %30, 3, !dbg !2443
  %32 = and i32 %31, 3, !dbg !2444
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* @intpat, i32 0, i32 %32, !dbg !2445
  %34 = load i8*, i8** %33, align 4, !dbg !2445, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %34, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 4, metadata !2401, metadata !DIExpression()), !dbg !2404
  br label %53, !dbg !2446

35:                                               ; preds = %LeafBlock
  %36 = sext i16 %26 to i32, !dbg !2447
  %37 = ashr i32 %36, 3, !dbg !2448
  %38 = and i32 %37, 3, !dbg !2449
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* @floatpat, i32 0, i32 %38, !dbg !2450
  %40 = load i8*, i8** %39, align 4, !dbg !2450, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %40, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 8, metadata !2401, metadata !DIExpression()), !dbg !2404
  br label %53, !dbg !2451

41:                                               ; preds = %NodeBlock
  %42 = sext i16 %26 to i32, !dbg !2452
  %43 = ashr i32 %42, 3, !dbg !2453
  %44 = and i32 %43, 3, !dbg !2454
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* @scipat, i32 0, i32 %44, !dbg !2455
  %46 = load i8*, i8** %45, align 4, !dbg !2455, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %46, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 8, metadata !2401, metadata !DIExpression()), !dbg !2404
  br label %53, !dbg !2456

47:                                               ; preds = %NodeBlock
  %48 = sext i16 %26 to i32, !dbg !2457
  %49 = ashr i32 %48, 3, !dbg !2458
  %50 = and i32 %49, 3, !dbg !2459
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* @errpat, i32 0, i32 %50, !dbg !2460
  %52 = load i8*, i8** %51, align 4, !dbg !2460, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %52, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 8, metadata !2401, metadata !DIExpression()), !dbg !2404
  br label %53, !dbg !2461

53:                                               ; preds = %47, %41, %35, %29
  %.15 = phi i32 [ 8, %47 ], [ 8, %41 ], [ 8, %35 ], [ 4, %29 ], !dbg !2404
  %.1 = phi i8* [ %52, %47 ], [ %46, %41 ], [ %40, %35 ], [ %34, %29 ], !dbg !2404
  call void @llvm.dbg.value(metadata i8* %.1, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2401, metadata !DIExpression()), !dbg !2404
  br label %5, !dbg !2406, !llvm.loop !2462

54:                                               ; preds = %5
  %.02.lcssa = phi i32 [ %.02, %5 ], !dbg !2404
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !2400, metadata !DIExpression()), !dbg !2404
  %55 = add i32 %4, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %55, metadata !2397, metadata !DIExpression()), !dbg !2404
  br label %56, !dbg !2465

56:                                               ; preds = %58, %54
  %.2 = phi i32 [ %.02.lcssa, %54 ], [ %60, %58 ], !dbg !2404
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2400, metadata !DIExpression()), !dbg !2404
  %57 = icmp ult i32 %.2, %55, !dbg !2466
  br i1 %57, label %58, label %61, !dbg !2465

58:                                               ; preds = %56
  %59 = getelementptr inbounds i8, i8* %2, i32 %.2, !dbg !2467
  store i8 0, i8* %59, align 1, !dbg !2469, !tbaa !2141
  %60 = add i32 %.2, 1, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %60, metadata !2400, metadata !DIExpression()), !dbg !2404
  br label %56, !dbg !2465, !llvm.loop !2471

61:                                               ; preds = %56
  ret void, !dbg !2473
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_seed_32(i32) #0 !dbg !2474 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()), !dbg !2481
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
  %3 = load volatile i32, i32* @seed1_volatile, align 4, !dbg !2482, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %3, metadata !2480, metadata !DIExpression()), !dbg !2481
  br label %13, !dbg !2484

4:                                                ; preds = %NodeBlock
  %5 = load volatile i32, i32* @seed2_volatile, align 4, !dbg !2485, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %5, metadata !2480, metadata !DIExpression()), !dbg !2481
  br label %13, !dbg !2486

6:                                                ; preds = %NodeBlock5
  %7 = load volatile i32, i32* @seed3_volatile, align 4, !dbg !2487, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %7, metadata !2480, metadata !DIExpression()), !dbg !2481
  br label %13, !dbg !2488

8:                                                ; preds = %NodeBlock3
  %9 = load volatile i32, i32* @seed4_volatile, align 4, !dbg !2489, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %9, metadata !2480, metadata !DIExpression()), !dbg !2481
  br label %13, !dbg !2490

10:                                               ; preds = %LeafBlock1
  %11 = load volatile i32, i32* @seed5_volatile, align 4, !dbg !2491, !tbaa !1045
  call void @llvm.dbg.value(metadata i32 %11, metadata !2480, metadata !DIExpression()), !dbg !2481
  br label %13, !dbg !2492

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock1.NewDefault_crit_edge
  br label %12

12:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2480, metadata !DIExpression()), !dbg !2481
  br label %13, !dbg !2493

13:                                               ; preds = %12, %10, %8, %6, %4, %2
  %.0 = phi i32 [ 0, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], !dbg !2494
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2480, metadata !DIExpression()), !dbg !2481
  ret i32 %.0, !dbg !2495
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu8(i8 zeroext, i16 zeroext) #0 !dbg !2496 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2500, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i16 %1, metadata !2501, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 0, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 0, metadata !2502, metadata !DIExpression()), !dbg !2505
  br label %3, !dbg !2506

3:                                                ; preds = %36, %2
  %indvars.iv = phi i32 [ %indvars.iv.next, %36 ], [ 0, %2 ], !dbg !2508
  %.01 = phi i16 [ %1, %2 ], [ %.2, %36 ]
  %.0 = phi i8 [ %0, %2 ], [ %14, %36 ]
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2500, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2501, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %indvars.iv, metadata !2502, metadata !DIExpression()), !dbg !2505
  %exitcond = icmp ne i32 %indvars.iv, 8, !dbg !2509
  br i1 %exitcond, label %4, label %37, !dbg !2511

4:                                                ; preds = %3
  %5 = zext i8 %.0 to i32, !dbg !2512
  %6 = and i32 %5, 1, !dbg !2514
  %7 = trunc i16 %.01 to i8, !dbg !2515
  %8 = zext i8 %7 to i32, !dbg !2515
  %9 = and i32 %8, 1, !dbg !2516
  %10 = xor i32 %6, %9, !dbg !2517
  %11 = trunc i32 %10 to i8, !dbg !2518
  call void @llvm.dbg.value(metadata i8 %11, metadata !2503, metadata !DIExpression()), !dbg !2505
  %12 = zext i8 %.0 to i32, !dbg !2519
  %13 = ashr i32 %12, 1, !dbg !2519
  %14 = trunc i32 %13 to i8, !dbg !2519
  call void @llvm.dbg.value(metadata i8 %14, metadata !2500, metadata !DIExpression()), !dbg !2505
  %15 = zext i8 %11 to i32, !dbg !2520
  %16 = icmp eq i32 %15, 1, !dbg !2522
  br i1 %16, label %17, label %21, !dbg !2523

17:                                               ; preds = %4
  %18 = zext i16 %.01 to i32, !dbg !2524
  %19 = xor i32 %18, 16386, !dbg !2524
  %20 = trunc i32 %19 to i16, !dbg !2524
  call void @llvm.dbg.value(metadata i16 %20, metadata !2501, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 1, metadata !2504, metadata !DIExpression()), !dbg !2505
  br label %22, !dbg !2526

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2505
  br label %22

22:                                               ; preds = %21, %17
  %.03 = phi i8 [ 1, %17 ], [ 0, %21 ], !dbg !2527
  %.1 = phi i16 [ %20, %17 ], [ %.01, %21 ]
  call void @llvm.dbg.value(metadata i16 %.1, metadata !2501, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8 %.03, metadata !2504, metadata !DIExpression()), !dbg !2505
  %23 = zext i16 %.1 to i32, !dbg !2528
  %24 = ashr i32 %23, 1, !dbg !2528
  %25 = trunc i32 %24 to i16, !dbg !2528
  call void @llvm.dbg.value(metadata i16 %25, metadata !2501, metadata !DIExpression()), !dbg !2505
  %26 = icmp ne i8 %.03, 0, !dbg !2529
  br i1 %26, label %27, label %31, !dbg !2531

27:                                               ; preds = %22
  %28 = zext i16 %25 to i32, !dbg !2532
  %29 = or i32 %28, 32768, !dbg !2532
  %30 = trunc i32 %29 to i16, !dbg !2532
  call void @llvm.dbg.value(metadata i16 %30, metadata !2501, metadata !DIExpression()), !dbg !2505
  br label %35, !dbg !2533

31:                                               ; preds = %22
  %32 = zext i16 %25 to i32, !dbg !2534
  %33 = and i32 %32, 32767, !dbg !2534
  %34 = trunc i32 %33 to i16, !dbg !2534
  call void @llvm.dbg.value(metadata i16 %34, metadata !2501, metadata !DIExpression()), !dbg !2505
  br label %35

35:                                               ; preds = %31, %27
  %.2 = phi i16 [ %30, %27 ], [ %34, %31 ], !dbg !2535
  call void @llvm.dbg.value(metadata i16 %.2, metadata !2501, metadata !DIExpression()), !dbg !2505
  br label %36, !dbg !2536

36:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i8 undef, metadata !2502, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2505
  br label %3, !dbg !2538, !llvm.loop !2539

37:                                               ; preds = %3
  %.01.lcssa = phi i16 [ %.01, %3 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2501, metadata !DIExpression()), !dbg !2505
  ret i16 %.01.lcssa, !dbg !2541
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu16(i16 zeroext, i16 zeroext) #0 !dbg !2542 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2546, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i16 %1, metadata !2547, metadata !DIExpression()), !dbg !2548
  %3 = trunc i16 %0 to i8, !dbg !2549
  %4 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %3, i16 zeroext %1), !dbg !2550
  call void @llvm.dbg.value(metadata i16 %4, metadata !2547, metadata !DIExpression()), !dbg !2548
  %5 = zext i16 %0 to i32, !dbg !2551
  %6 = ashr i32 %5, 8, !dbg !2552
  %7 = trunc i32 %6 to i8, !dbg !2553
  %8 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %7, i16 zeroext %4), !dbg !2554
  call void @llvm.dbg.value(metadata i16 %8, metadata !2547, metadata !DIExpression()), !dbg !2548
  ret i16 %8, !dbg !2555
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu32(i32, i16 zeroext) #0 !dbg !2556 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2560, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i16 %1, metadata !2561, metadata !DIExpression()), !dbg !2562
  %3 = trunc i32 %0 to i16, !dbg !2563
  %4 = call arm_aapcscc zeroext i16 @crc16(i16 signext %3, i16 zeroext %1), !dbg !2564
  call void @llvm.dbg.value(metadata i16 %4, metadata !2561, metadata !DIExpression()), !dbg !2562
  %5 = lshr i32 %0, 16, !dbg !2565
  %6 = trunc i32 %5 to i16, !dbg !2566
  %7 = call arm_aapcscc zeroext i16 @crc16(i16 signext %6, i16 zeroext %4), !dbg !2567
  call void @llvm.dbg.value(metadata i16 %7, metadata !2561, metadata !DIExpression()), !dbg !2562
  ret i16 %7, !dbg !2568
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crc16(i16 signext, i16 zeroext) #0 !dbg !2569 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i16 %1, metadata !2574, metadata !DIExpression()), !dbg !2575
  %3 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %0, i16 zeroext %1), !dbg !2576
  ret i16 %3, !dbg !2577
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i8 @check_data_types() #0 !dbg !2578 {
  call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2582
  %1 = zext i8 0 to i32, !dbg !2583
  %2 = icmp sgt i32 %1, 0, !dbg !2585
  br i1 %2, label %3, label %._crit_edge, !dbg !2586

._crit_edge:                                      ; preds = %0
  br label %6, !dbg !2586

3:                                                ; preds = %0
  %4 = getelementptr [54 x i8], [54 x i8]* @.str.48, i32 0, i32 0
  %5 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %4), !dbg !2587
  br label %6, !dbg !2589

6:                                                ; preds = %3, %._crit_edge
  ret i8 0, !dbg !2590
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i64 @clock() #3 !dbg !2591 {
  %1 = load volatile i64, i64* @dummy, align 8, !dbg !2594, !tbaa !2595
  ret i64 %1, !dbg !2597
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @start_time() #0 !dbg !2598 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !2599
  store volatile i64 %1, i64* @start_time_val, align 8, !dbg !2599, !tbaa !2595
  ret void, !dbg !2600
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @stop_time() #0 !dbg !2601 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !2602
  store volatile i64 %1, i64* @stop_time_val, align 8, !dbg !2602, !tbaa !2595
  ret void, !dbg !2603
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_time() #0 !dbg !2604 {
  %1 = load volatile i64, i64* @stop_time_val, align 8, !dbg !2609, !tbaa !2595
  %2 = load volatile i64, i64* @start_time_val, align 8, !dbg !2609, !tbaa !2595
  %3 = sub i64 %1, %2, !dbg !2609
  %4 = trunc i64 %3 to i32, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %4, metadata !2608, metadata !DIExpression()), !dbg !2611
  ret i32 %4, !dbg !2612
}

; Function Attrs: nounwind
define dso_local arm_aapcscc double @time_in_secs(i32) #0 !dbg !2613 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2617, metadata !DIExpression()), !dbg !2619
  %2 = uitofp i32 %0 to double, !dbg !2620
  %3 = fdiv double %2, 1.000000e+07, !dbg !2621
  call void @llvm.dbg.value(metadata double %3, metadata !2618, metadata !DIExpression()), !dbg !2619
  ret double %3, !dbg !2622
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S*, i32*, i8**) #0 !dbg !2623 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2633, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i32* %1, metadata !2634, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8** %2, metadata !2635, metadata !DIExpression()), !dbg !2636
  %4 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2637
  store i8 1, i8* %4, align 1, !dbg !2638, !tbaa !2639
  ret void, !dbg !2640
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S*) #0 !dbg !2641 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2645, metadata !DIExpression()), !dbg !2646
  %2 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2647
  store i8 0, i8* %2, align 1, !dbg !2648, !tbaa !2639
  ret void, !dbg !2649
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @printf_(i8*, ...) #0 !dbg !2650 {
  %2 = alloca %struct.__va_list, align 4
  %3 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2656, metadata !DIExpression()), !dbg !2668
  %4 = bitcast %struct.__va_list* %2 to i8*, !dbg !2669
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !2669
  call void @llvm.dbg.declare(metadata %struct.__va_list* %2, metadata !2657, metadata !DIExpression()), !dbg !2670
  %5 = bitcast %struct.__va_list* %2 to i8*, !dbg !2671
  call void @llvm.va_start(i8* %5), !dbg !2671
  %6 = bitcast [1 x i8]* %3 to i8*, !dbg !2672
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #4, !dbg !2672
  call void @llvm.dbg.declare(metadata [1 x i8]* %3, metadata !2664, metadata !DIExpression()), !dbg !2673
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i32 0, i32 0, !dbg !2674
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %2, i32 0, i32 0, !dbg !2675
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !2675
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !2675
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %7, i32 -1, i8* %0, [1 x i32] %10), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %11, metadata !2666, metadata !DIExpression()), !dbg !2668
  %12 = bitcast %struct.__va_list* %2 to i8*, !dbg !2676
  call void @llvm.va_end(i8* %12), !dbg !2676
  %13 = bitcast [1 x i8]* %3 to i8*, !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4, !dbg !2677
  %14 = bitcast %struct.__va_list* %2 to i8*, !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !2677
  ret i32 %11, !dbg !2678
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_char(i8 zeroext, i8*, i32, i32) #5 !dbg !2679 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2681, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %1, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 %2, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 %3, metadata !2684, metadata !DIExpression()), !dbg !2685
  %5 = icmp ne i8 %0, 0, !dbg !2686
  br i1 %5, label %6, label %._crit_edge, !dbg !2688

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2688

6:                                                ; preds = %4
  call arm_aapcscc void @_putchar(i8 zeroext %0), !dbg !2689
  br label %7, !dbg !2691

7:                                                ; preds = %6, %._crit_edge
  ret void, !dbg !2692
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32]) #0 !dbg !2693 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca i8*, align 4
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %6, i32 0, i32 0
  %9 = bitcast i8** %8 to [1 x i32]*
  store [1 x i32] %4, [1 x i32]* %9, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !2698, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %1, metadata !2699, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %2, metadata !2700, metadata !DIExpression()), !dbg !2750
  store i8* %3, i8** %7, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2701, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata %struct.__va_list* %6, metadata !2702, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2750
  %10 = icmp ne i8* %1, null, !dbg !2753
  br i1 %10, label %._crit_edge, label %11, !dbg !2755

._crit_edge:                                      ; preds = %5
  br label %12, !dbg !2755

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* @_out_null, metadata !2698, metadata !DIExpression()), !dbg !2750
  br label %12, !dbg !2756

12:                                               ; preds = %11, %._crit_edge
  %.0 = phi void (i8, i8*, i32, i32)* [ %0, %._crit_edge ], [ @_out_null, %11 ]
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %.0, metadata !2698, metadata !DIExpression()), !dbg !2750
  br label %13, !dbg !2758

13:                                               ; preds = %.backedge, %12
  %.018 = phi i32 [ 0, %12 ], [ %.018.be, %.backedge ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.018, metadata !2707, metadata !DIExpression()), !dbg !2750
  %14 = load i8*, i8** %7, align 4, !dbg !2759, !tbaa !334
  %15 = load i8, i8* %14, align 1, !dbg !2760, !tbaa !2141
  %16 = icmp ne i8 %15, 0, !dbg !2758
  br i1 %16, label %17, label %543, !dbg !2758

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 4, !dbg !2761, !tbaa !334
  %19 = load i8, i8* %18, align 1, !dbg !2763, !tbaa !2141
  %20 = zext i8 %19 to i32, !dbg !2763
  %21 = icmp ne i32 %20, 37, !dbg !2764
  br i1 %21, label %22, label %28, !dbg !2765

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 4, !dbg !2766, !tbaa !334
  %24 = load i8, i8* %23, align 1, !dbg !2768, !tbaa !2141
  %25 = add i32 %.018, 1, !dbg !2769
  call void @llvm.dbg.value(metadata i32 %25, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext %24, i8* %1, i32 %.018, i32 %2), !dbg !2770
  %26 = load i8*, i8** %7, align 4, !dbg !2771, !tbaa !334
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2771
  store i8* %27, i8** %7, align 4, !dbg !2771, !tbaa !334
  br label %.backedge, !dbg !2772

.backedge:                                        ; preds = %542, %22
  %.018.be = phi i32 [ %25, %22 ], [ %.1533, %542 ]
  br label %13, !dbg !2750, !llvm.loop !2773

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 4, !dbg !2775, !tbaa !334
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !2775
  store i8* %30, i8** %7, align 4, !dbg !2775, !tbaa !334
  br label %31

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %32, !dbg !2777

32:                                               ; preds = %._crit_edge124, %31
  %.03 = phi i32 [ 0, %31 ], [ %.14, %._crit_edge124 ], !dbg !2778
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2703, metadata !DIExpression()), !dbg !2750
  %33 = load i8*, i8** %7, align 4, !dbg !2779, !tbaa !334
  %34 = load i8, i8* %33, align 1, !dbg !2781, !tbaa !2141
  %35 = zext i8 %34 to i32, !dbg !2781
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
  %37 = or i32 %.03, 1, !dbg !2782
  call void @llvm.dbg.value(metadata i32 %37, metadata !2703, metadata !DIExpression()), !dbg !2750
  %38 = load i8*, i8** %7, align 4, !dbg !2784, !tbaa !334
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2784
  store i8* %39, i8** %7, align 4, !dbg !2784, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()), !dbg !2750
  br label %57, !dbg !2785

40:                                               ; preds = %LeafBlock44
  %41 = or i32 %.03, 2, !dbg !2786
  call void @llvm.dbg.value(metadata i32 %41, metadata !2703, metadata !DIExpression()), !dbg !2750
  %42 = load i8*, i8** %7, align 4, !dbg !2787, !tbaa !334
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !2787
  store i8* %43, i8** %7, align 4, !dbg !2787, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()), !dbg !2750
  br label %57, !dbg !2788

44:                                               ; preds = %LeafBlock42
  %45 = or i32 %.03, 4, !dbg !2789
  call void @llvm.dbg.value(metadata i32 %45, metadata !2703, metadata !DIExpression()), !dbg !2750
  %46 = load i8*, i8** %7, align 4, !dbg !2790, !tbaa !334
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !2790
  store i8* %47, i8** %7, align 4, !dbg !2790, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()), !dbg !2750
  br label %57, !dbg !2791

48:                                               ; preds = %LeafBlock
  %49 = or i32 %.03, 8, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %49, metadata !2703, metadata !DIExpression()), !dbg !2750
  %50 = load i8*, i8** %7, align 4, !dbg !2793, !tbaa !334
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !2793
  store i8* %51, i8** %7, align 4, !dbg !2793, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()), !dbg !2750
  br label %57, !dbg !2794

52:                                               ; preds = %LeafBlock40
  %53 = or i32 %.03, 16, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %53, metadata !2703, metadata !DIExpression()), !dbg !2750
  %54 = load i8*, i8** %7, align 4, !dbg !2796, !tbaa !334
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !2796
  store i8* %55, i8** %7, align 4, !dbg !2796, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2706, metadata !DIExpression()), !dbg !2750
  br label %57, !dbg !2797

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock40.NewDefault_crit_edge, %LeafBlock42.NewDefault_crit_edge, %LeafBlock44.NewDefault_crit_edge, %LeafBlock46.NewDefault_crit_edge
  br label %56

56:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2706, metadata !DIExpression()), !dbg !2750
  br label %57, !dbg !2798

57:                                               ; preds = %56, %52, %48, %44, %40, %36
  %.017 = phi i32 [ 0, %56 ], [ 1, %52 ], [ 1, %48 ], [ 1, %44 ], [ 1, %40 ], [ 1, %36 ], !dbg !2799
  %.14 = phi i32 [ %.03, %56 ], [ %53, %52 ], [ %49, %48 ], [ %45, %44 ], [ %41, %40 ], [ %37, %36 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.017, metadata !2706, metadata !DIExpression()), !dbg !2750
  br label %58, !dbg !2801

58:                                               ; preds = %57
  %59 = icmp ne i32 %.017, 0, !dbg !2801
  br i1 %59, label %._crit_edge124, label %60, !dbg !2801, !llvm.loop !2802

._crit_edge124:                                   ; preds = %58
  br label %32, !dbg !2801

60:                                               ; preds = %58
  %.14.lcssa = phi i32 [ %.14, %58 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2704, metadata !DIExpression()), !dbg !2750
  %61 = load i8*, i8** %7, align 4, !dbg !2804, !tbaa !334
  %62 = load i8, i8* %61, align 1, !dbg !2805, !tbaa !2141
  %63 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %62), !dbg !2806
  br i1 %63, label %64, label %66, !dbg !2807

64:                                               ; preds = %60
  %65 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2808
  call void @llvm.dbg.value(metadata i32 %65, metadata !2704, metadata !DIExpression()), !dbg !2750
  br label %86, !dbg !2810

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 4, !dbg !2811, !tbaa !334
  %68 = load i8, i8* %67, align 1, !dbg !2812, !tbaa !2141
  %69 = zext i8 %68 to i32, !dbg !2812
  %70 = icmp eq i32 %69, 42, !dbg !2813
  br i1 %70, label %71, label %._crit_edge125, !dbg !2814

._crit_edge125:                                   ; preds = %66
  br label %85, !dbg !2814

71:                                               ; preds = %66
  %72 = bitcast %struct.__va_list* %6 to i8**, !dbg !2815
  %73 = load i8*, i8** %72, align 4, !dbg !2815
  %74 = getelementptr inbounds i8, i8* %73, i32 4, !dbg !2815
  store i8* %74, i8** %72, align 4, !dbg !2815
  %75 = bitcast i8* %73 to i32*, !dbg !2815
  %76 = load i32, i32* %75, align 4, !dbg !2815
  call void @llvm.dbg.value(metadata i32 %76, metadata !2708, metadata !DIExpression()), !dbg !2816
  %77 = icmp slt i32 %76, 0, !dbg !2817
  br i1 %77, label %78, label %81, !dbg !2819

78:                                               ; preds = %71
  %79 = or i32 %.14.lcssa, 2, !dbg !2820
  call void @llvm.dbg.value(metadata i32 %79, metadata !2703, metadata !DIExpression()), !dbg !2750
  %80 = sub nsw i32 0, %76, !dbg !2822
  call void @llvm.dbg.value(metadata i32 %80, metadata !2704, metadata !DIExpression()), !dbg !2750
  br label %82, !dbg !2823

81:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 %76, metadata !2704, metadata !DIExpression()), !dbg !2750
  br label %82

82:                                               ; preds = %81, %78
  %.08 = phi i32 [ %80, %78 ], [ %76, %81 ], !dbg !2824
  %.25 = phi i32 [ %79, %78 ], [ %.14.lcssa, %81 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.25, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.08, metadata !2704, metadata !DIExpression()), !dbg !2750
  %83 = load i8*, i8** %7, align 4, !dbg !2825, !tbaa !334
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !2825
  store i8* %84, i8** %7, align 4, !dbg !2825, !tbaa !334
  br label %85, !dbg !2826

85:                                               ; preds = %82, %._crit_edge125
  %.19 = phi i32 [ %.08, %82 ], [ 0, %._crit_edge125 ], !dbg !2800
  %.36 = phi i32 [ %.25, %82 ], [ %.14.lcssa, %._crit_edge125 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.36, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2704, metadata !DIExpression()), !dbg !2750
  br label %86

86:                                               ; preds = %85, %64
  %.210 = phi i32 [ %65, %64 ], [ %.19, %85 ], !dbg !2827
  %.4 = phi i32 [ %.14.lcssa, %64 ], [ %.36, %85 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.210, metadata !2704, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2705, metadata !DIExpression()), !dbg !2750
  %87 = load i8*, i8** %7, align 4, !dbg !2828, !tbaa !334
  %88 = load i8, i8* %87, align 1, !dbg !2829, !tbaa !2141
  %89 = zext i8 %88 to i32, !dbg !2829
  %90 = icmp eq i32 %89, 46, !dbg !2830
  br i1 %90, label %91, label %._crit_edge126, !dbg !2831

._crit_edge126:                                   ; preds = %86
  br label %120, !dbg !2831

91:                                               ; preds = %86
  %92 = or i32 %.4, 1024, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %92, metadata !2703, metadata !DIExpression()), !dbg !2750
  %93 = load i8*, i8** %7, align 4, !dbg !2833, !tbaa !334
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !2833
  store i8* %94, i8** %7, align 4, !dbg !2833, !tbaa !334
  %95 = load i8*, i8** %7, align 4, !dbg !2834, !tbaa !334
  %96 = load i8, i8* %95, align 1, !dbg !2835, !tbaa !2141
  %97 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %96), !dbg !2836
  br i1 %97, label %98, label %100, !dbg !2837

98:                                               ; preds = %91
  %99 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %99, metadata !2705, metadata !DIExpression()), !dbg !2750
  br label %119, !dbg !2840

100:                                              ; preds = %91
  %101 = load i8*, i8** %7, align 4, !dbg !2841, !tbaa !334
  %102 = load i8, i8* %101, align 1, !dbg !2842, !tbaa !2141
  %103 = zext i8 %102 to i32, !dbg !2842
  %104 = icmp eq i32 %103, 42, !dbg !2843
  br i1 %104, label %105, label %._crit_edge127, !dbg !2844

._crit_edge127:                                   ; preds = %100
  br label %118, !dbg !2844

105:                                              ; preds = %100
  %106 = bitcast %struct.__va_list* %6 to i8**, !dbg !2845
  %107 = load i8*, i8** %106, align 4, !dbg !2845
  %108 = getelementptr inbounds i8, i8* %107, i32 4, !dbg !2845
  store i8* %108, i8** %106, align 4, !dbg !2845
  %109 = bitcast i8* %107 to i32*, !dbg !2845
  %110 = load i32, i32* %109, align 4, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %110, metadata !2713, metadata !DIExpression()), !dbg !2846
  %111 = icmp sgt i32 %110, 0, !dbg !2847
  br i1 %111, label %112, label %113, !dbg !2848

112:                                              ; preds = %105
  br label %114, !dbg !2848

113:                                              ; preds = %105
  br label %114, !dbg !2848

114:                                              ; preds = %113, %112
  %115 = phi i32 [ %110, %112 ], [ 0, %113 ], !dbg !2848
  call void @llvm.dbg.value(metadata i32 %115, metadata !2705, metadata !DIExpression()), !dbg !2750
  %116 = load i8*, i8** %7, align 4, !dbg !2849, !tbaa !334
  %117 = getelementptr inbounds i8, i8* %116, i32 1, !dbg !2849
  store i8* %117, i8** %7, align 4, !dbg !2849, !tbaa !334
  br label %118, !dbg !2850

118:                                              ; preds = %114, %._crit_edge127
  %.011 = phi i32 [ %115, %114 ], [ 0, %._crit_edge127 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.011, metadata !2705, metadata !DIExpression()), !dbg !2750
  br label %119

119:                                              ; preds = %118, %98
  %.112 = phi i32 [ %99, %98 ], [ %.011, %118 ], !dbg !2851
  call void @llvm.dbg.value(metadata i32 %.112, metadata !2705, metadata !DIExpression()), !dbg !2750
  br label %120, !dbg !2852

120:                                              ; preds = %119, %._crit_edge126
  %.213 = phi i32 [ %.112, %119 ], [ 0, %._crit_edge126 ], !dbg !2800
  %.5 = phi i32 [ %92, %119 ], [ %.4, %._crit_edge126 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.213, metadata !2705, metadata !DIExpression()), !dbg !2750
  %121 = load i8*, i8** %7, align 4, !dbg !2853, !tbaa !334
  %122 = load i8, i8* %121, align 1, !dbg !2854, !tbaa !2141
  %123 = zext i8 %122 to i32, !dbg !2854
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
  %125 = or i32 %.5, 256, !dbg !2855
  call void @llvm.dbg.value(metadata i32 %125, metadata !2703, metadata !DIExpression()), !dbg !2750
  %126 = load i8*, i8** %7, align 4, !dbg !2857, !tbaa !334
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !2857
  store i8* %127, i8** %7, align 4, !dbg !2857, !tbaa !334
  %128 = load i8*, i8** %7, align 4, !dbg !2858, !tbaa !334
  %129 = load i8, i8* %128, align 1, !dbg !2860, !tbaa !2141
  %130 = zext i8 %129 to i32, !dbg !2860
  %131 = icmp eq i32 %130, 108, !dbg !2861
  br i1 %131, label %132, label %._crit_edge128, !dbg !2862

._crit_edge128:                                   ; preds = %124
  br label %136, !dbg !2862

132:                                              ; preds = %124
  %133 = or i32 %125, 512, !dbg !2863
  call void @llvm.dbg.value(metadata i32 %133, metadata !2703, metadata !DIExpression()), !dbg !2750
  %134 = load i8*, i8** %7, align 4, !dbg !2865, !tbaa !334
  %135 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !2865
  store i8* %135, i8** %7, align 4, !dbg !2865, !tbaa !334
  br label %136, !dbg !2866

136:                                              ; preds = %132, %._crit_edge128
  %.6 = phi i32 [ %133, %132 ], [ %125, %._crit_edge128 ], !dbg !2867
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %163, !dbg !2868

137:                                              ; preds = %LeafBlock55
  %138 = or i32 %.5, 128, !dbg !2869
  call void @llvm.dbg.value(metadata i32 %138, metadata !2703, metadata !DIExpression()), !dbg !2750
  %139 = load i8*, i8** %7, align 4, !dbg !2870, !tbaa !334
  %140 = getelementptr inbounds i8, i8* %139, i32 1, !dbg !2870
  store i8* %140, i8** %7, align 4, !dbg !2870, !tbaa !334
  %141 = load i8*, i8** %7, align 4, !dbg !2871, !tbaa !334
  %142 = load i8, i8* %141, align 1, !dbg !2873, !tbaa !2141
  %143 = zext i8 %142 to i32, !dbg !2873
  %144 = icmp eq i32 %143, 104, !dbg !2874
  br i1 %144, label %145, label %._crit_edge129, !dbg !2875

._crit_edge129:                                   ; preds = %137
  br label %149, !dbg !2875

145:                                              ; preds = %137
  %146 = or i32 %138, 64, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %146, metadata !2703, metadata !DIExpression()), !dbg !2750
  %147 = load i8*, i8** %7, align 4, !dbg !2878, !tbaa !334
  %148 = getelementptr inbounds i8, i8* %147, i32 1, !dbg !2878
  store i8* %148, i8** %7, align 4, !dbg !2878, !tbaa !334
  br label %149, !dbg !2879

149:                                              ; preds = %145, %._crit_edge129
  %.7 = phi i32 [ %146, %145 ], [ %138, %._crit_edge129 ], !dbg !2867
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %163, !dbg !2880

150:                                              ; preds = %LeafBlock63
  %151 = or i32 %.5, 256, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %151, metadata !2703, metadata !DIExpression()), !dbg !2750
  %152 = load i8*, i8** %7, align 4, !dbg !2882, !tbaa !334
  %153 = getelementptr inbounds i8, i8* %152, i32 1, !dbg !2882
  store i8* %153, i8** %7, align 4, !dbg !2882, !tbaa !334
  br label %163, !dbg !2883

154:                                              ; preds = %LeafBlock57
  %155 = or i32 %.5, 512, !dbg !2884
  call void @llvm.dbg.value(metadata i32 %155, metadata !2703, metadata !DIExpression()), !dbg !2750
  %156 = load i8*, i8** %7, align 4, !dbg !2885, !tbaa !334
  %157 = getelementptr inbounds i8, i8* %156, i32 1, !dbg !2885
  store i8* %157, i8** %7, align 4, !dbg !2885, !tbaa !334
  br label %163, !dbg !2886

158:                                              ; preds = %LeafBlock65
  %159 = or i32 %.5, 256, !dbg !2887
  call void @llvm.dbg.value(metadata i32 %159, metadata !2703, metadata !DIExpression()), !dbg !2750
  %160 = load i8*, i8** %7, align 4, !dbg !2888, !tbaa !334
  %161 = getelementptr inbounds i8, i8* %160, i32 1, !dbg !2888
  store i8* %161, i8** %7, align 4, !dbg !2888, !tbaa !334
  br label %163, !dbg !2889

NewDefault54:                                     ; preds = %LeafBlock55.NewDefault54_crit_edge, %LeafBlock57.NewDefault54_crit_edge, %LeafBlock61.NewDefault54_crit_edge, %LeafBlock63.NewDefault54_crit_edge, %LeafBlock65.NewDefault54_crit_edge
  br label %162

162:                                              ; preds = %NewDefault54
  br label %163, !dbg !2890

163:                                              ; preds = %162, %158, %154, %150, %149, %136
  %.8 = phi i32 [ %.5, %162 ], [ %159, %158 ], [ %155, %154 ], [ %151, %150 ], [ %.7, %149 ], [ %.6, %136 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2703, metadata !DIExpression()), !dbg !2750
  %164 = load i8*, i8** %7, align 4, !dbg !2891, !tbaa !334
  %165 = load i8, i8* %164, align 1, !dbg !2892, !tbaa !2141
  %166 = zext i8 %165 to i32, !dbg !2892
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
  %168 = load i8*, i8** %7, align 4, !dbg !2893, !tbaa !334
  %169 = load i8, i8* %168, align 1, !dbg !2895, !tbaa !2141
  %170 = zext i8 %169 to i32, !dbg !2895
  %171 = icmp eq i32 %170, 120, !dbg !2896
  br i1 %171, label %._crit_edge131, label %172, !dbg !2897

._crit_edge131:                                   ; preds = %167
  br label %177, !dbg !2897

172:                                              ; preds = %167
  %173 = load i8*, i8** %7, align 4, !dbg !2898, !tbaa !334
  %174 = load i8, i8* %173, align 1, !dbg !2899, !tbaa !2141
  %175 = zext i8 %174 to i32, !dbg !2899
  %176 = icmp eq i32 %175, 88, !dbg !2900
  br i1 %176, label %._crit_edge132, label %178, !dbg !2901

._crit_edge132:                                   ; preds = %172
  br label %177, !dbg !2901

177:                                              ; preds = %._crit_edge132, %._crit_edge131
  call void @llvm.dbg.value(metadata i32 16, metadata !2719, metadata !DIExpression()), !dbg !2902
  br label %194, !dbg !2903

178:                                              ; preds = %172
  %179 = load i8*, i8** %7, align 4, !dbg !2905, !tbaa !334
  %180 = load i8, i8* %179, align 1, !dbg !2907, !tbaa !2141
  %181 = zext i8 %180 to i32, !dbg !2907
  %182 = icmp eq i32 %181, 111, !dbg !2908
  br i1 %182, label %183, label %184, !dbg !2909

183:                                              ; preds = %178
  call void @llvm.dbg.value(metadata i32 8, metadata !2719, metadata !DIExpression()), !dbg !2902
  br label %193, !dbg !2910

184:                                              ; preds = %178
  %185 = load i8*, i8** %7, align 4, !dbg !2912, !tbaa !334
  %186 = load i8, i8* %185, align 1, !dbg !2914, !tbaa !2141
  %187 = zext i8 %186 to i32, !dbg !2914
  %188 = icmp eq i32 %187, 98, !dbg !2915
  br i1 %188, label %189, label %190, !dbg !2916

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 2, metadata !2719, metadata !DIExpression()), !dbg !2902
  br label %192, !dbg !2917

190:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 10, metadata !2719, metadata !DIExpression()), !dbg !2902
  %191 = and i32 %.8, -17, !dbg !2919
  call void @llvm.dbg.value(metadata i32 %191, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %192

192:                                              ; preds = %190, %189
  %.037 = phi i32 [ 2, %189 ], [ 10, %190 ], !dbg !2921
  %.9 = phi i32 [ %.8, %189 ], [ %191, %190 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.037, metadata !2719, metadata !DIExpression()), !dbg !2902
  br label %193

193:                                              ; preds = %192, %183
  %.138 = phi i32 [ 8, %183 ], [ %.037, %192 ], !dbg !2922
  %.10 = phi i32 [ %.8, %183 ], [ %.9, %192 ], !dbg !2832
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.138, metadata !2719, metadata !DIExpression()), !dbg !2902
  br label %194

194:                                              ; preds = %193, %177
  %.239 = phi i32 [ 16, %177 ], [ %.138, %193 ], !dbg !2923
  %.11 = phi i32 [ %.8, %177 ], [ %.10, %193 ], !dbg !2832
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.239, metadata !2719, metadata !DIExpression()), !dbg !2902
  %195 = load i8*, i8** %7, align 4, !dbg !2924, !tbaa !334
  %196 = load i8, i8* %195, align 1, !dbg !2926, !tbaa !2141
  %197 = zext i8 %196 to i32, !dbg !2926
  %198 = icmp eq i32 %197, 88, !dbg !2927
  br i1 %198, label %199, label %._crit_edge133, !dbg !2928

._crit_edge133:                                   ; preds = %194
  br label %201, !dbg !2928

199:                                              ; preds = %194
  %200 = or i32 %.11, 32, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %200, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %201, !dbg !2931

201:                                              ; preds = %199, %._crit_edge133
  %.12 = phi i32 [ %200, %199 ], [ %.11, %._crit_edge133 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2703, metadata !DIExpression()), !dbg !2750
  %202 = load i8*, i8** %7, align 4, !dbg !2932, !tbaa !334
  %203 = load i8, i8* %202, align 1, !dbg !2934, !tbaa !2141
  %204 = zext i8 %203 to i32, !dbg !2934
  %205 = icmp ne i32 %204, 105, !dbg !2935
  br i1 %205, label %206, label %._crit_edge134, !dbg !2936

._crit_edge134:                                   ; preds = %201
  br label %213, !dbg !2936

206:                                              ; preds = %201
  %207 = load i8*, i8** %7, align 4, !dbg !2937, !tbaa !334
  %208 = load i8, i8* %207, align 1, !dbg !2938, !tbaa !2141
  %209 = zext i8 %208 to i32, !dbg !2938
  %210 = icmp ne i32 %209, 100, !dbg !2939
  br i1 %210, label %211, label %._crit_edge135, !dbg !2940

._crit_edge135:                                   ; preds = %206
  br label %213, !dbg !2940

211:                                              ; preds = %206
  %212 = and i32 %.12, -13, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %212, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %213, !dbg !2943

213:                                              ; preds = %211, %._crit_edge135, %._crit_edge134
  %.13 = phi i32 [ %212, %211 ], [ %.12, %._crit_edge135 ], [ %.12, %._crit_edge134 ], !dbg !2902
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2703, metadata !DIExpression()), !dbg !2750
  %214 = and i32 %.13, 1024, !dbg !2944
  %215 = icmp ne i32 %214, 0, !dbg !2944
  br i1 %215, label %216, label %._crit_edge136, !dbg !2946

._crit_edge136:                                   ; preds = %213
  br label %218, !dbg !2946

216:                                              ; preds = %213
  %217 = and i32 %.13, -2, !dbg !2947
  call void @llvm.dbg.value(metadata i32 %217, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %218, !dbg !2949

218:                                              ; preds = %216, %._crit_edge136
  %.147 = phi i32 [ %217, %216 ], [ %.13, %._crit_edge136 ], !dbg !2902
  call void @llvm.dbg.value(metadata i32 %.147, metadata !2703, metadata !DIExpression()), !dbg !2750
  %219 = load i8*, i8** %7, align 4, !dbg !2950, !tbaa !334
  %220 = load i8, i8* %219, align 1, !dbg !2951, !tbaa !2141
  %221 = zext i8 %220 to i32, !dbg !2951
  %222 = icmp eq i32 %221, 105, !dbg !2952
  br i1 %222, label %._crit_edge137, label %223, !dbg !2953

._crit_edge137:                                   ; preds = %218
  br label %228, !dbg !2953

223:                                              ; preds = %218
  %224 = load i8*, i8** %7, align 4, !dbg !2954, !tbaa !334
  %225 = load i8, i8* %224, align 1, !dbg !2955, !tbaa !2141
  %226 = zext i8 %225 to i32, !dbg !2955
  %227 = icmp eq i32 %226, 100, !dbg !2956
  br i1 %227, label %._crit_edge138, label %309, !dbg !2957

._crit_edge138:                                   ; preds = %223
  br label %228, !dbg !2957

228:                                              ; preds = %._crit_edge138, %._crit_edge137
  %229 = and i32 %.147, 512, !dbg !2958
  %230 = icmp ne i32 %229, 0, !dbg !2958
  br i1 %230, label %231, label %250, !dbg !2959

231:                                              ; preds = %228
  %232 = bitcast %struct.__va_list* %6 to i8**, !dbg !2960
  %233 = load i8*, i8** %232, align 4, !dbg !2960
  %234 = ptrtoint i8* %233 to i32, !dbg !2960
  %235 = add i32 %234, 7, !dbg !2960
  %236 = and i32 %235, -8, !dbg !2960
  %237 = inttoptr i32 %236 to i8*, !dbg !2960
  %238 = getelementptr inbounds i8, i8* %237, i32 8, !dbg !2960
  store i8* %238, i8** %232, align 4, !dbg !2960
  %239 = bitcast i8* %237 to i64*, !dbg !2960
  %240 = load i64, i64* %239, align 8, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %240, metadata !2722, metadata !DIExpression()), !dbg !2961
  %241 = icmp sgt i64 %240, 0, !dbg !2962
  br i1 %241, label %242, label %243, !dbg !2963

242:                                              ; preds = %231
  br label %245, !dbg !2963

243:                                              ; preds = %231
  %244 = sub nsw i64 0, %240, !dbg !2964
  br label %245, !dbg !2963

245:                                              ; preds = %243, %242
  %246 = phi i64 [ %240, %242 ], [ %244, %243 ], !dbg !2963
  %247 = icmp slt i64 %240, 0, !dbg !2965
  %248 = zext i32 %.239 to i64, !dbg !2966
  %249 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %246, i1 zeroext %247, i64 %248, i32 %.213, i32 %.210, i32 %.147), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %249, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %308, !dbg !2968

250:                                              ; preds = %228
  %251 = and i32 %.147, 256, !dbg !2969
  %252 = icmp ne i32 %251, 0, !dbg !2969
  br i1 %252, label %253, label %267, !dbg !2970

253:                                              ; preds = %250
  %254 = bitcast %struct.__va_list* %6 to i8**, !dbg !2971
  %255 = load i8*, i8** %254, align 4, !dbg !2971
  %256 = getelementptr inbounds i8, i8* %255, i32 4, !dbg !2971
  store i8* %256, i8** %254, align 4, !dbg !2971
  %257 = bitcast i8* %255 to i32*, !dbg !2971
  %258 = load i32, i32* %257, align 4, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %258, metadata !2729, metadata !DIExpression()), !dbg !2972
  %259 = icmp sgt i32 %258, 0, !dbg !2973
  br i1 %259, label %260, label %261, !dbg !2974

260:                                              ; preds = %253
  br label %263, !dbg !2974

261:                                              ; preds = %253
  %262 = sub nsw i32 0, %258, !dbg !2975
  br label %263, !dbg !2974

263:                                              ; preds = %261, %260
  %264 = phi i32 [ %258, %260 ], [ %262, %261 ], !dbg !2974
  %265 = icmp slt i32 %258, 0, !dbg !2976
  %266 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %264, i1 zeroext %265, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !2977
  call void @llvm.dbg.value(metadata i32 %266, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %307, !dbg !2978

267:                                              ; preds = %250
  %268 = and i32 %.147, 64, !dbg !2979
  %269 = icmp ne i32 %268, 0, !dbg !2979
  br i1 %269, label %270, label %278, !dbg !2980

270:                                              ; preds = %267
  %271 = bitcast %struct.__va_list* %6 to i8**, !dbg !2981
  %272 = load i8*, i8** %271, align 4, !dbg !2981
  %273 = getelementptr inbounds i8, i8* %272, i32 4, !dbg !2981
  store i8* %273, i8** %271, align 4, !dbg !2981
  %274 = bitcast i8* %272 to i32*, !dbg !2981
  %275 = load i32, i32* %274, align 4, !dbg !2981
  %276 = trunc i32 %275 to i8, !dbg !2982
  %277 = zext i8 %276 to i32, !dbg !2982
  br label %297, !dbg !2980

278:                                              ; preds = %267
  %279 = and i32 %.147, 128, !dbg !2983
  %280 = icmp ne i32 %279, 0, !dbg !2983
  br i1 %280, label %281, label %289, !dbg !2984

281:                                              ; preds = %278
  %282 = bitcast %struct.__va_list* %6 to i8**, !dbg !2985
  %283 = load i8*, i8** %282, align 4, !dbg !2985
  %284 = getelementptr inbounds i8, i8* %283, i32 4, !dbg !2985
  store i8* %284, i8** %282, align 4, !dbg !2985
  %285 = bitcast i8* %283 to i32*, !dbg !2985
  %286 = load i32, i32* %285, align 4, !dbg !2985
  %287 = trunc i32 %286 to i16, !dbg !2986
  %288 = sext i16 %287 to i32, !dbg !2986
  br label %295, !dbg !2984

289:                                              ; preds = %278
  %290 = bitcast %struct.__va_list* %6 to i8**, !dbg !2987
  %291 = load i8*, i8** %290, align 4, !dbg !2987
  %292 = getelementptr inbounds i8, i8* %291, i32 4, !dbg !2987
  store i8* %292, i8** %290, align 4, !dbg !2987
  %293 = bitcast i8* %291 to i32*, !dbg !2987
  %294 = load i32, i32* %293, align 4, !dbg !2987
  br label %295, !dbg !2984

295:                                              ; preds = %289, %281
  %296 = phi i32 [ %288, %281 ], [ %294, %289 ], !dbg !2984
  br label %297, !dbg !2980

297:                                              ; preds = %295, %270
  %298 = phi i32 [ %277, %270 ], [ %296, %295 ], !dbg !2980
  call void @llvm.dbg.value(metadata i32 %298, metadata !2734, metadata !DIExpression()), !dbg !2988
  %299 = icmp sgt i32 %298, 0, !dbg !2989
  br i1 %299, label %300, label %301, !dbg !2990

300:                                              ; preds = %297
  br label %303, !dbg !2990

301:                                              ; preds = %297
  %302 = sub nsw i32 0, %298, !dbg !2991
  br label %303, !dbg !2990

303:                                              ; preds = %301, %300
  %304 = phi i32 [ %298, %300 ], [ %302, %301 ], !dbg !2990
  %305 = icmp slt i32 %298, 0, !dbg !2992
  %306 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %304, i1 zeroext %305, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !2993
  call void @llvm.dbg.value(metadata i32 %306, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %307

307:                                              ; preds = %303, %263
  %.119 = phi i32 [ %266, %263 ], [ %306, %303 ], !dbg !2994
  call void @llvm.dbg.value(metadata i32 %.119, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %308

308:                                              ; preds = %307, %245
  %.220 = phi i32 [ %249, %245 ], [ %.119, %307 ], !dbg !2995
  call void @llvm.dbg.value(metadata i32 %.220, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %369, !dbg !2996

309:                                              ; preds = %223
  %310 = and i32 %.147, 512, !dbg !2997
  %311 = icmp ne i32 %310, 0, !dbg !2997
  br i1 %311, label %312, label %324, !dbg !2998

312:                                              ; preds = %309
  %313 = bitcast %struct.__va_list* %6 to i8**, !dbg !2999
  %314 = load i8*, i8** %313, align 4, !dbg !2999
  %315 = ptrtoint i8* %314 to i32, !dbg !2999
  %316 = add i32 %315, 7, !dbg !2999
  %317 = and i32 %316, -8, !dbg !2999
  %318 = inttoptr i32 %317 to i8*, !dbg !2999
  %319 = getelementptr inbounds i8, i8* %318, i32 8, !dbg !2999
  store i8* %319, i8** %313, align 4, !dbg !2999
  %320 = bitcast i8* %318 to i64*, !dbg !2999
  %321 = load i64, i64* %320, align 8, !dbg !2999
  %322 = zext i32 %.239 to i64, !dbg !3001
  %323 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %321, i1 zeroext false, i64 %322, i32 %.213, i32 %.210, i32 %.147), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %323, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %368, !dbg !3003

324:                                              ; preds = %309
  %325 = and i32 %.147, 256, !dbg !3004
  %326 = icmp ne i32 %325, 0, !dbg !3004
  br i1 %326, label %327, label %334, !dbg !3005

327:                                              ; preds = %324
  %328 = bitcast %struct.__va_list* %6 to i8**, !dbg !3006
  %329 = load i8*, i8** %328, align 4, !dbg !3006
  %330 = getelementptr inbounds i8, i8* %329, i32 4, !dbg !3006
  store i8* %330, i8** %328, align 4, !dbg !3006
  %331 = bitcast i8* %329 to i32*, !dbg !3006
  %332 = load i32, i32* %331, align 4, !dbg !3006
  %333 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %332, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3008
  call void @llvm.dbg.value(metadata i32 %333, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %367, !dbg !3009

334:                                              ; preds = %324
  %335 = and i32 %.147, 64, !dbg !3010
  %336 = icmp ne i32 %335, 0, !dbg !3010
  br i1 %336, label %337, label %345, !dbg !3011

337:                                              ; preds = %334
  %338 = bitcast %struct.__va_list* %6 to i8**, !dbg !3012
  %339 = load i8*, i8** %338, align 4, !dbg !3012
  %340 = getelementptr inbounds i8, i8* %339, i32 4, !dbg !3012
  store i8* %340, i8** %338, align 4, !dbg !3012
  %341 = bitcast i8* %339 to i32*, !dbg !3012
  %342 = load i32, i32* %341, align 4, !dbg !3012
  %343 = trunc i32 %342 to i8, !dbg !3013
  %344 = zext i8 %343 to i32, !dbg !3013
  br label %364, !dbg !3011

345:                                              ; preds = %334
  %346 = and i32 %.147, 128, !dbg !3014
  %347 = icmp ne i32 %346, 0, !dbg !3014
  br i1 %347, label %348, label %356, !dbg !3015

348:                                              ; preds = %345
  %349 = bitcast %struct.__va_list* %6 to i8**, !dbg !3016
  %350 = load i8*, i8** %349, align 4, !dbg !3016
  %351 = getelementptr inbounds i8, i8* %350, i32 4, !dbg !3016
  store i8* %351, i8** %349, align 4, !dbg !3016
  %352 = bitcast i8* %350 to i32*, !dbg !3016
  %353 = load i32, i32* %352, align 4, !dbg !3016
  %354 = trunc i32 %353 to i16, !dbg !3017
  %355 = zext i16 %354 to i32, !dbg !3017
  br label %362, !dbg !3015

356:                                              ; preds = %345
  %357 = bitcast %struct.__va_list* %6 to i8**, !dbg !3018
  %358 = load i8*, i8** %357, align 4, !dbg !3018
  %359 = getelementptr inbounds i8, i8* %358, i32 4, !dbg !3018
  store i8* %359, i8** %357, align 4, !dbg !3018
  %360 = bitcast i8* %358 to i32*, !dbg !3018
  %361 = load i32, i32* %360, align 4, !dbg !3018
  br label %362, !dbg !3015

362:                                              ; preds = %356, %348
  %363 = phi i32 [ %355, %348 ], [ %361, %356 ], !dbg !3015
  br label %364, !dbg !3011

364:                                              ; preds = %362, %337
  %365 = phi i32 [ %344, %337 ], [ %363, %362 ], !dbg !3011
  call void @llvm.dbg.value(metadata i32 %365, metadata !2736, metadata !DIExpression()), !dbg !3019
  %366 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %365, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3020
  call void @llvm.dbg.value(metadata i32 %366, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %367

367:                                              ; preds = %364, %327
  %.321 = phi i32 [ %333, %327 ], [ %366, %364 ], !dbg !3021
  call void @llvm.dbg.value(metadata i32 %.321, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %368

368:                                              ; preds = %367, %312
  %.422 = phi i32 [ %323, %312 ], [ %.321, %367 ], !dbg !3022
  call void @llvm.dbg.value(metadata i32 %.422, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %369

369:                                              ; preds = %368, %308
  %.523 = phi i32 [ %.220, %308 ], [ %.422, %368 ], !dbg !3023
  call void @llvm.dbg.value(metadata i32 %.523, metadata !2707, metadata !DIExpression()), !dbg !2750
  %370 = load i8*, i8** %7, align 4, !dbg !3024, !tbaa !334
  %371 = getelementptr inbounds i8, i8* %370, i32 1, !dbg !3024
  store i8* %371, i8** %7, align 4, !dbg !3024, !tbaa !334
  br label %542

372:                                              ; preds = %NodeBlock80._crit_edge, %NodeBlock94._crit_edge130
  %373 = load i8*, i8** %7, align 4, !dbg !3025, !tbaa !334
  %374 = load i8, i8* %373, align 1, !dbg !3027, !tbaa !2141
  %375 = zext i8 %374 to i32, !dbg !3027
  %376 = icmp eq i32 %375, 70, !dbg !3028
  br i1 %376, label %377, label %._crit_edge139, !dbg !3029

._crit_edge139:                                   ; preds = %372
  br label %379, !dbg !3029

377:                                              ; preds = %372
  %378 = or i32 %.8, 32, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %378, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %379, !dbg !3031

379:                                              ; preds = %377, %._crit_edge139
  %.15 = phi i32 [ %378, %377 ], [ %.8, %._crit_edge139 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2703, metadata !DIExpression()), !dbg !2750
  %380 = bitcast %struct.__va_list* %6 to i8**, !dbg !3032
  %381 = load i8*, i8** %380, align 4, !dbg !3032
  %382 = ptrtoint i8* %381 to i32, !dbg !3032
  %383 = add i32 %382, 7, !dbg !3032
  %384 = and i32 %383, -8, !dbg !3032
  %385 = inttoptr i32 %384 to i8*, !dbg !3032
  %386 = getelementptr inbounds i8, i8* %385, i32 8, !dbg !3032
  store i8* %386, i8** %380, align 4, !dbg !3032
  %387 = bitcast i8* %385 to double*, !dbg !3032
  %388 = load double, double* %387, align 8, !dbg !3032
  %389 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %388, i32 %.213, i32 %.210, i32 %.15), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %389, metadata !2707, metadata !DIExpression()), !dbg !2750
  %390 = load i8*, i8** %7, align 4, !dbg !3034, !tbaa !334
  %391 = getelementptr inbounds i8, i8* %390, i32 1, !dbg !3034
  store i8* %391, i8** %7, align 4, !dbg !3034, !tbaa !334
  br label %542, !dbg !3035

392:                                              ; preds = %NodeBlock76._crit_edge, %LeafBlock78._crit_edge, %NodeBlock94._crit_edge, %LeafBlock96._crit_edge
  %393 = load i8*, i8** %7, align 4, !dbg !3036, !tbaa !334
  %394 = load i8, i8* %393, align 1, !dbg !3038, !tbaa !2141
  %395 = zext i8 %394 to i32, !dbg !3038
  %396 = icmp eq i32 %395, 103, !dbg !3039
  br i1 %396, label %._crit_edge140, label %397, !dbg !3040

._crit_edge140:                                   ; preds = %392
  br label %402, !dbg !3040

397:                                              ; preds = %392
  %398 = load i8*, i8** %7, align 4, !dbg !3041, !tbaa !334
  %399 = load i8, i8* %398, align 1, !dbg !3042, !tbaa !2141
  %400 = zext i8 %399 to i32, !dbg !3042
  %401 = icmp eq i32 %400, 71, !dbg !3043
  br i1 %401, label %._crit_edge141, label %._crit_edge142, !dbg !3044

._crit_edge142:                                   ; preds = %397
  br label %404, !dbg !3044

._crit_edge141:                                   ; preds = %397
  br label %402, !dbg !3044

402:                                              ; preds = %._crit_edge141, %._crit_edge140
  %403 = or i32 %.8, 2048, !dbg !3045
  call void @llvm.dbg.value(metadata i32 %403, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %404, !dbg !3046

404:                                              ; preds = %402, %._crit_edge142
  %.16 = phi i32 [ %403, %402 ], [ %.8, %._crit_edge142 ], !dbg !2800
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2703, metadata !DIExpression()), !dbg !2750
  %405 = load i8*, i8** %7, align 4, !dbg !3047, !tbaa !334
  %406 = load i8, i8* %405, align 1, !dbg !3049, !tbaa !2141
  %407 = zext i8 %406 to i32, !dbg !3049
  %408 = icmp eq i32 %407, 69, !dbg !3050
  br i1 %408, label %._crit_edge143, label %409, !dbg !3051

._crit_edge143:                                   ; preds = %404
  br label %414, !dbg !3051

409:                                              ; preds = %404
  %410 = load i8*, i8** %7, align 4, !dbg !3052, !tbaa !334
  %411 = load i8, i8* %410, align 1, !dbg !3053, !tbaa !2141
  %412 = zext i8 %411 to i32, !dbg !3053
  %413 = icmp eq i32 %412, 71, !dbg !3054
  br i1 %413, label %._crit_edge144, label %._crit_edge145, !dbg !3055

._crit_edge145:                                   ; preds = %409
  br label %416, !dbg !3055

._crit_edge144:                                   ; preds = %409
  br label %414, !dbg !3055

414:                                              ; preds = %._crit_edge144, %._crit_edge143
  %415 = or i32 %.16, 32, !dbg !3056
  call void @llvm.dbg.value(metadata i32 %415, metadata !2703, metadata !DIExpression()), !dbg !2750
  br label %416, !dbg !3057

416:                                              ; preds = %414, %._crit_edge145
  %.17 = phi i32 [ %415, %414 ], [ %.16, %._crit_edge145 ], !dbg !3058
  call void @llvm.dbg.value(metadata i32 %.17, metadata !2703, metadata !DIExpression()), !dbg !2750
  %417 = bitcast %struct.__va_list* %6 to i8**, !dbg !3059
  %418 = load i8*, i8** %417, align 4, !dbg !3059
  %419 = ptrtoint i8* %418 to i32, !dbg !3059
  %420 = add i32 %419, 7, !dbg !3059
  %421 = and i32 %420, -8, !dbg !3059
  %422 = inttoptr i32 %421 to i8*, !dbg !3059
  %423 = getelementptr inbounds i8, i8* %422, i32 8, !dbg !3059
  store i8* %423, i8** %417, align 4, !dbg !3059
  %424 = bitcast i8* %422 to double*, !dbg !3059
  %425 = load double, double* %424, align 8, !dbg !3059
  %426 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %425, i32 %.213, i32 %.210, i32 %.17), !dbg !3060
  call void @llvm.dbg.value(metadata i32 %426, metadata !2707, metadata !DIExpression()), !dbg !2750
  %427 = load i8*, i8** %7, align 4, !dbg !3061, !tbaa !334
  %428 = getelementptr inbounds i8, i8* %427, i32 1, !dbg !3061
  store i8* %428, i8** %7, align 4, !dbg !3061, !tbaa !334
  br label %542, !dbg !3062

429:                                              ; preds = %NodeBlock88
  call void @llvm.dbg.value(metadata i32 1, metadata !2742, metadata !DIExpression()), !dbg !3063
  %430 = and i32 %.8, 2, !dbg !3064
  %431 = icmp ne i32 %430, 0, !dbg !3064
  br i1 %431, label %._crit_edge146, label %432, !dbg !3066

._crit_edge146:                                   ; preds = %429
  br label %439, !dbg !3066

432:                                              ; preds = %429
  br label %433, !dbg !3067

433:                                              ; preds = %436, %432
  %.034 = phi i32 [ 1, %432 ], [ %434, %436 ], !dbg !3063
  %.624 = phi i32 [ %.018, %432 ], [ %437, %436 ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.624, metadata !2707, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.034, metadata !2742, metadata !DIExpression()), !dbg !3063
  %434 = add i32 %.034, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %434, metadata !2742, metadata !DIExpression()), !dbg !3063
  %435 = icmp ult i32 %.034, %.210, !dbg !3070
  br i1 %435, label %436, label %438, !dbg !3067

436:                                              ; preds = %433
  %437 = add i32 %.624, 1, !dbg !3071
  call void @llvm.dbg.value(metadata i32 %437, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.624, i32 %2), !dbg !3073
  br label %433, !dbg !3067, !llvm.loop !3074

438:                                              ; preds = %433
  %.624.lcssa = phi i32 [ %.624, %433 ], !dbg !2750
  %.lcssa153 = phi i32 [ %434, %433 ], !dbg !3069
  call void @llvm.dbg.value(metadata i32 %.624.lcssa, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %439, !dbg !3076

439:                                              ; preds = %438, %._crit_edge146
  %.135 = phi i32 [ 1, %._crit_edge146 ], [ %.lcssa153, %438 ], !dbg !3063
  %.725 = phi i32 [ %.018, %._crit_edge146 ], [ %.624.lcssa, %438 ], !dbg !3077
  call void @llvm.dbg.value(metadata i32 %.725, metadata !2707, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.135, metadata !2742, metadata !DIExpression()), !dbg !3063
  %440 = bitcast %struct.__va_list* %6 to i8**, !dbg !3078
  %441 = load i8*, i8** %440, align 4, !dbg !3078
  %442 = getelementptr inbounds i8, i8* %441, i32 4, !dbg !3078
  store i8* %442, i8** %440, align 4, !dbg !3078
  %443 = bitcast i8* %441 to i32*, !dbg !3078
  %444 = load i32, i32* %443, align 4, !dbg !3078
  %445 = trunc i32 %444 to i8, !dbg !3079
  %446 = add i32 %.725, 1, !dbg !3080
  call void @llvm.dbg.value(metadata i32 %446, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext %445, i8* %1, i32 %.725, i32 %2), !dbg !3081
  %447 = and i32 %.8, 2, !dbg !3082
  %448 = icmp ne i32 %447, 0, !dbg !3082
  br i1 %448, label %449, label %._crit_edge147, !dbg !3084

._crit_edge147:                                   ; preds = %439
  br label %456, !dbg !3084

449:                                              ; preds = %439
  br label %450, !dbg !3085

450:                                              ; preds = %453, %449
  %.236 = phi i32 [ %.135, %449 ], [ %451, %453 ], !dbg !3063
  %.826 = phi i32 [ %446, %449 ], [ %454, %453 ], !dbg !3063
  call void @llvm.dbg.value(metadata i32 %.826, metadata !2707, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.236, metadata !2742, metadata !DIExpression()), !dbg !3063
  %451 = add i32 %.236, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %451, metadata !2742, metadata !DIExpression()), !dbg !3063
  %452 = icmp ult i32 %.236, %.210, !dbg !3088
  br i1 %452, label %453, label %455, !dbg !3085

453:                                              ; preds = %450
  %454 = add i32 %.826, 1, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %454, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.826, i32 %2), !dbg !3091
  br label %450, !dbg !3085, !llvm.loop !3092

455:                                              ; preds = %450
  %.826.lcssa = phi i32 [ %.826, %450 ], !dbg !3063
  call void @llvm.dbg.value(metadata i32 %.826.lcssa, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %456, !dbg !3094

456:                                              ; preds = %455, %._crit_edge147
  %.927 = phi i32 [ %.826.lcssa, %455 ], [ %446, %._crit_edge147 ], !dbg !3080
  call void @llvm.dbg.value(metadata i32 %.927, metadata !2707, metadata !DIExpression()), !dbg !2750
  %457 = load i8*, i8** %7, align 4, !dbg !3095, !tbaa !334
  %458 = getelementptr inbounds i8, i8* %457, i32 1, !dbg !3095
  store i8* %458, i8** %7, align 4, !dbg !3095, !tbaa !334
  br label %542

459:                                              ; preds = %LeafBlock108
  %460 = bitcast %struct.__va_list* %6 to i8**, !dbg !3096
  %461 = load i8*, i8** %460, align 4, !dbg !3096
  %462 = getelementptr inbounds i8, i8* %461, i32 4, !dbg !3096
  store i8* %462, i8** %460, align 4, !dbg !3096
  %463 = bitcast i8* %461 to i8**, !dbg !3096
  %464 = load i8*, i8** %463, align 4, !dbg !3096
  call void @llvm.dbg.value(metadata i8* %464, metadata !2744, metadata !DIExpression()), !dbg !3097
  %465 = icmp ne i32 %.213, 0, !dbg !3098
  br i1 %465, label %466, label %467, !dbg !3098

466:                                              ; preds = %459
  br label %468, !dbg !3098

467:                                              ; preds = %459
  br label %468, !dbg !3098

468:                                              ; preds = %467, %466
  %469 = phi i32 [ %.213, %466 ], [ -1, %467 ], !dbg !3098
  %470 = call arm_aapcscc i32 @_strnlen_s(i8* %464, i32 %469), !dbg !3099
  call void @llvm.dbg.value(metadata i32 %470, metadata !2746, metadata !DIExpression()), !dbg !3097
  %471 = and i32 %.8, 1024, !dbg !3100
  %472 = icmp ne i32 %471, 0, !dbg !3100
  br i1 %472, label %473, label %._crit_edge148, !dbg !3102

._crit_edge148:                                   ; preds = %468
  br label %479, !dbg !3102

473:                                              ; preds = %468
  %474 = icmp ult i32 %470, %.213, !dbg !3103
  br i1 %474, label %475, label %476, !dbg !3105

475:                                              ; preds = %473
  br label %477, !dbg !3105

476:                                              ; preds = %473
  br label %477, !dbg !3105

477:                                              ; preds = %476, %475
  %478 = phi i32 [ %470, %475 ], [ %.213, %476 ], !dbg !3105
  call void @llvm.dbg.value(metadata i32 %478, metadata !2746, metadata !DIExpression()), !dbg !3097
  br label %479, !dbg !3106

479:                                              ; preds = %477, %._crit_edge148
  %.01 = phi i32 [ %478, %477 ], [ %470, %._crit_edge148 ], !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2746, metadata !DIExpression()), !dbg !3097
  %480 = and i32 %.8, 2, !dbg !3107
  %481 = icmp ne i32 %480, 0, !dbg !3107
  br i1 %481, label %._crit_edge149, label %482, !dbg !3109

._crit_edge149:                                   ; preds = %479
  br label %489, !dbg !3109

482:                                              ; preds = %479
  br label %483, !dbg !3110

483:                                              ; preds = %486, %482
  %.1028 = phi i32 [ %.018, %482 ], [ %487, %486 ], !dbg !2750
  %.1 = phi i32 [ %.01, %482 ], [ %484, %486 ], !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2746, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.1028, metadata !2707, metadata !DIExpression()), !dbg !2750
  %484 = add i32 %.1, 1, !dbg !3112
  call void @llvm.dbg.value(metadata i32 %484, metadata !2746, metadata !DIExpression()), !dbg !3097
  %485 = icmp ult i32 %.1, %.210, !dbg !3113
  br i1 %485, label %486, label %488, !dbg !3110

486:                                              ; preds = %483
  %487 = add i32 %.1028, 1, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %487, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1028, i32 %2), !dbg !3116
  br label %483, !dbg !3110, !llvm.loop !3117

488:                                              ; preds = %483
  %.1028.lcssa = phi i32 [ %.1028, %483 ], !dbg !2750
  %.lcssa = phi i32 [ %484, %483 ], !dbg !3112
  call void @llvm.dbg.value(metadata i32 %.1028.lcssa, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %489, !dbg !3119

489:                                              ; preds = %488, %._crit_edge149
  %.1129 = phi i32 [ %.018, %._crit_edge149 ], [ %.1028.lcssa, %488 ], !dbg !3077
  %.2 = phi i32 [ %.01, %._crit_edge149 ], [ %.lcssa, %488 ], !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2746, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.1129, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %490, !dbg !3120

490:                                              ; preds = %504, %489
  %.1230 = phi i32 [ %.1129, %489 ], [ %507, %504 ], !dbg !2750
  %.314 = phi i32 [ %.213, %489 ], [ %.516, %504 ], !dbg !2800
  %.02 = phi i8* [ %464, %489 ], [ %505, %504 ], !dbg !3097
  call void @llvm.dbg.value(metadata i8* %.02, metadata !2744, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.314, metadata !2705, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.1230, metadata !2707, metadata !DIExpression()), !dbg !2750
  %491 = load i8, i8* %.02, align 1, !dbg !3121, !tbaa !2141
  %492 = zext i8 %491 to i32, !dbg !3121
  %493 = icmp ne i32 %492, 0, !dbg !3122
  br i1 %493, label %494, label %._crit_edge150, !dbg !3123

._crit_edge150:                                   ; preds = %490
  br label %502, !dbg !3123

494:                                              ; preds = %490
  %495 = and i32 %.8, 1024, !dbg !3124
  %496 = icmp ne i32 %495, 0, !dbg !3124
  br i1 %496, label %497, label %._crit_edge151, !dbg !3125

._crit_edge151:                                   ; preds = %494
  br label %500, !dbg !3125

497:                                              ; preds = %494
  %498 = add i32 %.314, -1, !dbg !3126
  call void @llvm.dbg.value(metadata i32 %498, metadata !2705, metadata !DIExpression()), !dbg !2750
  %499 = icmp ne i32 %.314, 0, !dbg !3125
  br label %500, !dbg !3125

500:                                              ; preds = %497, %._crit_edge151
  %.415 = phi i32 [ %498, %497 ], [ %.314, %._crit_edge151 ], !dbg !2800
  %501 = phi i1 [ true, %._crit_edge151 ], [ %499, %497 ]
  call void @llvm.dbg.value(metadata i32 %.415, metadata !2705, metadata !DIExpression()), !dbg !2750
  br label %502

502:                                              ; preds = %500, %._crit_edge150
  %.516 = phi i32 [ %.415, %500 ], [ %.314, %._crit_edge150 ], !dbg !2800
  %503 = phi i1 [ false, %._crit_edge150 ], [ %501, %500 ], !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.516, metadata !2705, metadata !DIExpression()), !dbg !2750
  br i1 %503, label %504, label %508, !dbg !3120

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !3127
  call void @llvm.dbg.value(metadata i8* %505, metadata !2744, metadata !DIExpression()), !dbg !3097
  %506 = load i8, i8* %.02, align 1, !dbg !3129, !tbaa !2141
  %507 = add i32 %.1230, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %507, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext %506, i8* %1, i32 %.1230, i32 %2), !dbg !3131
  br label %490, !dbg !3120, !llvm.loop !3132

508:                                              ; preds = %502
  %.1230.lcssa = phi i32 [ %.1230, %502 ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.1230.lcssa, metadata !2707, metadata !DIExpression()), !dbg !2750
  %509 = and i32 %.8, 2, !dbg !3134
  %510 = icmp ne i32 %509, 0, !dbg !3134
  br i1 %510, label %511, label %._crit_edge152, !dbg !3136

._crit_edge152:                                   ; preds = %508
  br label %518, !dbg !3136

511:                                              ; preds = %508
  br label %512, !dbg !3137

512:                                              ; preds = %515, %511
  %.1331 = phi i32 [ %.1230.lcssa, %511 ], [ %516, %515 ], !dbg !2750
  %.3 = phi i32 [ %.2, %511 ], [ %513, %515 ], !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2746, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %.1331, metadata !2707, metadata !DIExpression()), !dbg !2750
  %513 = add i32 %.3, 1, !dbg !3139
  call void @llvm.dbg.value(metadata i32 %513, metadata !2746, metadata !DIExpression()), !dbg !3097
  %514 = icmp ult i32 %.3, %.210, !dbg !3140
  br i1 %514, label %515, label %517, !dbg !3137

515:                                              ; preds = %512
  %516 = add i32 %.1331, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %516, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1331, i32 %2), !dbg !3143
  br label %512, !dbg !3137, !llvm.loop !3144

517:                                              ; preds = %512
  %.1331.lcssa = phi i32 [ %.1331, %512 ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.1331.lcssa, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %518, !dbg !3146

518:                                              ; preds = %517, %._crit_edge152
  %.1432 = phi i32 [ %.1331.lcssa, %517 ], [ %.1230.lcssa, %._crit_edge152 ], !dbg !3077
  call void @llvm.dbg.value(metadata i32 %.1432, metadata !2707, metadata !DIExpression()), !dbg !2750
  %519 = load i8*, i8** %7, align 4, !dbg !3147, !tbaa !334
  %520 = getelementptr inbounds i8, i8* %519, i32 1, !dbg !3147
  store i8* %520, i8** %7, align 4, !dbg !3147, !tbaa !334
  br label %542

521:                                              ; preds = %LeafBlock104
  call void @llvm.dbg.value(metadata i32 8, metadata !2704, metadata !DIExpression()), !dbg !2750
  %522 = or i32 %.8, 33, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %522, metadata !2703, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8 0, metadata !2747, metadata !DIExpression()), !dbg !3149
  %523 = bitcast %struct.__va_list* %6 to i8**, !dbg !3150
  %524 = load i8*, i8** %523, align 4, !dbg !3150
  %525 = getelementptr inbounds i8, i8* %524, i32 4, !dbg !3150
  store i8* %525, i8** %523, align 4, !dbg !3150
  %526 = bitcast i8* %524 to i8**, !dbg !3150
  %527 = load i8*, i8** %526, align 4, !dbg !3150
  %528 = ptrtoint i8* %527 to i32, !dbg !3153
  %529 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %528, i1 zeroext false, i32 16, i32 %.213, i32 8, i32 %522), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %529, metadata !2707, metadata !DIExpression()), !dbg !2750
  %530 = load i8*, i8** %7, align 4, !dbg !3155, !tbaa !334
  %531 = getelementptr inbounds i8, i8* %530, i32 1, !dbg !3155
  store i8* %531, i8** %7, align 4, !dbg !3155, !tbaa !334
  br label %542

532:                                              ; preds = %LeafBlock74
  %533 = add i32 %.018, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i32 %533, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext 37, i8* %1, i32 %.018, i32 %2), !dbg !3157
  %534 = load i8*, i8** %7, align 4, !dbg !3158, !tbaa !334
  %535 = getelementptr inbounds i8, i8* %534, i32 1, !dbg !3158
  store i8* %535, i8** %7, align 4, !dbg !3158, !tbaa !334
  br label %542, !dbg !3159

NewDefault73:                                     ; preds = %LeafBlock74.NewDefault73_crit_edge, %LeafBlock78.NewDefault73_crit_edge, %LeafBlock84.NewDefault73_crit_edge, %LeafBlock96.NewDefault73_crit_edge, %LeafBlock98.NewDefault73_crit_edge, %LeafBlock104.NewDefault73_crit_edge, %LeafBlock108.NewDefault73_crit_edge, %LeafBlock110.NewDefault73_crit_edge, %LeafBlock112.NewDefault73_crit_edge
  br label %536

536:                                              ; preds = %NewDefault73
  %537 = load i8*, i8** %7, align 4, !dbg !3160, !tbaa !334
  %538 = load i8, i8* %537, align 1, !dbg !3161, !tbaa !2141
  %539 = add i32 %.018, 1, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %539, metadata !2707, metadata !DIExpression()), !dbg !2750
  call arm_aapcscc void %.0(i8 zeroext %538, i8* %1, i32 %.018, i32 %2), !dbg !3163
  %540 = load i8*, i8** %7, align 4, !dbg !3164, !tbaa !334
  %541 = getelementptr inbounds i8, i8* %540, i32 1, !dbg !3164
  store i8* %541, i8** %7, align 4, !dbg !3164, !tbaa !334
  br label %542, !dbg !3165

542:                                              ; preds = %536, %532, %521, %518, %456, %416, %379, %369
  %.1533 = phi i32 [ %539, %536 ], [ %533, %532 ], [ %529, %521 ], [ %.1432, %518 ], [ %.927, %456 ], [ %426, %416 ], [ %389, %379 ], [ %.523, %369 ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.1533, metadata !2707, metadata !DIExpression()), !dbg !2750
  br label %.backedge, !dbg !2758

543:                                              ; preds = %13
  %.018.lcssa = phi i32 [ %.018, %13 ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %.018.lcssa, metadata !2707, metadata !DIExpression()), !dbg !2750
  %544 = icmp ult i32 %.018.lcssa, %2, !dbg !3166
  br i1 %544, label %545, label %546, !dbg !3167

545:                                              ; preds = %543
  br label %548, !dbg !3167

546:                                              ; preds = %543
  %547 = sub i32 %2, 1, !dbg !3168
  br label %548, !dbg !3167

548:                                              ; preds = %546, %545
  %549 = phi i32 [ %.018.lcssa, %545 ], [ %547, %546 ], !dbg !3167
  call arm_aapcscc void %.0(i8 zeroext 0, i8* %1, i32 %549, i32 %2), !dbg !3169
  ret i32 %.018.lcssa, !dbg !3170
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_null(i8 zeroext, i8*, i32, i32) #5 !dbg !3171 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3173, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3174, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %2, metadata !3175, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %3, metadata !3176, metadata !DIExpression()), !dbg !3177
  ret void, !dbg !3178
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc zeroext i1 @_is_digit(i8 zeroext) #5 !dbg !3179 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3183, metadata !DIExpression()), !dbg !3184
  %2 = zext i8 %0 to i32, !dbg !3185
  %3 = icmp sge i32 %2, 48, !dbg !3186
  br i1 %3, label %4, label %._crit_edge, !dbg !3187

._crit_edge:                                      ; preds = %1
  br label %7, !dbg !3187

4:                                                ; preds = %1
  %5 = zext i8 %0 to i32, !dbg !3188
  %6 = icmp sle i32 %5, 57, !dbg !3189
  br label %7

7:                                                ; preds = %4, %._crit_edge
  %8 = phi i1 [ false, %._crit_edge ], [ %6, %4 ], !dbg !3184
  ret i1 %8, !dbg !3190
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_atoi(i8**) #0 !dbg !3191 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 0, metadata !3197, metadata !DIExpression()), !dbg !3198
  br label %2, !dbg !3199

2:                                                ; preds = %6, %1
  %.0 = phi i32 [ 0, %1 ], [ %13, %6 ], !dbg !3198
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3197, metadata !DIExpression()), !dbg !3198
  %3 = load i8*, i8** %0, align 4, !dbg !3200, !tbaa !334
  %4 = load i8, i8* %3, align 1, !dbg !3201, !tbaa !2141
  %5 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %4), !dbg !3202
  br i1 %5, label %6, label %14, !dbg !3199

6:                                                ; preds = %2
  %7 = mul i32 %.0, 10, !dbg !3203
  %8 = load i8*, i8** %0, align 4, !dbg !3205, !tbaa !334
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !3205
  store i8* %9, i8** %0, align 4, !dbg !3205, !tbaa !334
  %10 = load i8, i8* %8, align 1, !dbg !3206, !tbaa !2141
  %11 = zext i8 %10 to i32, !dbg !3206
  %12 = sub nsw i32 %11, 48, !dbg !3207
  %13 = add i32 %7, %12, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %13, metadata !3197, metadata !DIExpression()), !dbg !3198
  br label %2, !dbg !3199, !llvm.loop !3209

14:                                               ; preds = %2
  %.0.lcssa = phi i32 [ %.0, %2 ], !dbg !3198
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !3197, metadata !DIExpression()), !dbg !3198
  ret i32 %.0.lcssa, !dbg !3211
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i64, i1 zeroext, i64, i32, i32, i32) #0 !dbg !3212 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3216, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %1, metadata !3217, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %2, metadata !3218, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %3, metadata !3219, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %4, metadata !3220, metadata !DIExpression()), !dbg !3232
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3221, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %6, metadata !3222, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %7, metadata !3223, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %8, metadata !3224, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %9, metadata !3225, metadata !DIExpression()), !dbg !3232
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3233
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3233
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3226, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 0, metadata !3227, metadata !DIExpression()), !dbg !3232
  %14 = icmp ne i64 %4, 0, !dbg !3235
  br i1 %14, label %._crit_edge, label %15, !dbg !3237

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3237

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %16, metadata !3225, metadata !DIExpression()), !dbg !3232
  br label %17, !dbg !3240

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3225, metadata !DIExpression()), !dbg !3232
  %18 = and i32 %.01, 1024, !dbg !3241
  %19 = icmp ne i32 %18, 0, !dbg !3241
  br i1 %19, label %20, label %._crit_edge3, !dbg !3242

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3242

20:                                               ; preds = %17
  %21 = icmp ne i64 %4, 0, !dbg !3243
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3244

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3244

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3244

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3245

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i64 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3232
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3227, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %.02, metadata !3220, metadata !DIExpression()), !dbg !3232
  %24 = urem i64 %.02, %6, !dbg !3246
  %25 = trunc i64 %24 to i8, !dbg !3247
  call void @llvm.dbg.value(metadata i8 %25, metadata !3228, metadata !DIExpression()), !dbg !3248
  %26 = zext i8 %25 to i32, !dbg !3249
  %27 = icmp slt i32 %26, 10, !dbg !3250
  br i1 %27, label %28, label %31, !dbg !3249

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3251
  %30 = add nsw i32 48, %29, !dbg !3252
  br label %39, !dbg !3249

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3253
  %33 = icmp ne i32 %32, 0, !dbg !3254
  %34 = zext i1 %33 to i64, !dbg !3254
  %35 = select i1 %33, i32 65, i32 97, !dbg !3254
  %36 = zext i8 %25 to i32, !dbg !3255
  %37 = add nsw i32 %35, %36, !dbg !3256
  %38 = sub nsw i32 %37, 10, !dbg !3257
  br label %39, !dbg !3249

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3249
  %41 = trunc i32 %40 to i8, !dbg !3249
  %42 = add i32 %.0, 1, !dbg !3258
  call void @llvm.dbg.value(metadata i32 %42, metadata !3227, metadata !DIExpression()), !dbg !3232
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3259
  store i8 %41, i8* %43, align 1, !dbg !3260, !tbaa !2141
  %44 = udiv i64 %.02, %6, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %44, metadata !3220, metadata !DIExpression()), !dbg !3232
  br label %45, !dbg !3262

45:                                               ; preds = %39
  %46 = icmp ne i64 %44, 0, !dbg !3263
  br i1 %46, label %47, label %._crit_edge6, !dbg !3264

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3264

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3265
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3266
  br i1 %50, label %._crit_edge7, label %51, !dbg !3262, !llvm.loop !3267

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3262

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3258
  br label %52, !dbg !3269

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3232
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3227, metadata !DIExpression()), !dbg !3232
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3270
  %54 = trunc i8 %12 to i1, !dbg !3271
  %55 = trunc i64 %6 to i32, !dbg !3272
  %56 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %55, i32 %7, i32 %8, i32 %.01), !dbg !3273
  %57 = bitcast [32 x i8]* %11 to i8*, !dbg !3274
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %57) #4, !dbg !3274
  ret i32 %56, !dbg !3275
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3276 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3280, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8* %1, metadata !3281, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %2, metadata !3282, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %3, metadata !3283, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %4, metadata !3284, metadata !DIExpression()), !dbg !3296
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3285, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %6, metadata !3286, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %7, metadata !3287, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %8, metadata !3288, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %9, metadata !3289, metadata !DIExpression()), !dbg !3296
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3297
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3297
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3290, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 0, metadata !3291, metadata !DIExpression()), !dbg !3296
  %14 = icmp ne i32 %4, 0, !dbg !3299
  br i1 %14, label %._crit_edge, label %15, !dbg !3301

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3301

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3302
  call void @llvm.dbg.value(metadata i32 %16, metadata !3289, metadata !DIExpression()), !dbg !3296
  br label %17, !dbg !3304

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3289, metadata !DIExpression()), !dbg !3296
  %18 = and i32 %.01, 1024, !dbg !3305
  %19 = icmp ne i32 %18, 0, !dbg !3305
  br i1 %19, label %20, label %._crit_edge3, !dbg !3306

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3306

20:                                               ; preds = %17
  %21 = icmp ne i32 %4, 0, !dbg !3307
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3308

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3308

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3308

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3309

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i32 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3296
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3291, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3284, metadata !DIExpression()), !dbg !3296
  %24 = urem i32 %.02, %6, !dbg !3310
  %25 = trunc i32 %24 to i8, !dbg !3311
  call void @llvm.dbg.value(metadata i8 %25, metadata !3292, metadata !DIExpression()), !dbg !3312
  %26 = zext i8 %25 to i32, !dbg !3313
  %27 = icmp slt i32 %26, 10, !dbg !3314
  br i1 %27, label %28, label %31, !dbg !3313

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3315
  %30 = add nsw i32 48, %29, !dbg !3316
  br label %39, !dbg !3313

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3317
  %33 = icmp ne i32 %32, 0, !dbg !3318
  %34 = zext i1 %33 to i64, !dbg !3318
  %35 = select i1 %33, i32 65, i32 97, !dbg !3318
  %36 = zext i8 %25 to i32, !dbg !3319
  %37 = add nsw i32 %35, %36, !dbg !3320
  %38 = sub nsw i32 %37, 10, !dbg !3321
  br label %39, !dbg !3313

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3313
  %41 = trunc i32 %40 to i8, !dbg !3313
  %42 = add i32 %.0, 1, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %42, metadata !3291, metadata !DIExpression()), !dbg !3296
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3323
  store i8 %41, i8* %43, align 1, !dbg !3324, !tbaa !2141
  %44 = udiv i32 %.02, %6, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %44, metadata !3284, metadata !DIExpression()), !dbg !3296
  br label %45, !dbg !3326

45:                                               ; preds = %39
  %46 = icmp ne i32 %44, 0, !dbg !3327
  br i1 %46, label %47, label %._crit_edge6, !dbg !3328

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3328

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3329
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3330
  br i1 %50, label %._crit_edge7, label %51, !dbg !3326, !llvm.loop !3331

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3326

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3322
  br label %52, !dbg !3333

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3296
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3291, metadata !DIExpression()), !dbg !3296
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3334
  %54 = trunc i8 %12 to i1, !dbg !3335
  %55 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %6, i32 %7, i32 %8, i32 %.01), !dbg !3336
  %56 = bitcast [32 x i8]* %11 to i8*, !dbg !3337
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %56) #4, !dbg !3337
  ret i32 %55, !dbg !3338
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !147 {
  %9 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !173, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8* %1, metadata !174, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %2, metadata !175, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %3, metadata !176, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata double %4, metadata !177, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %5, metadata !178, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %7, metadata !180, metadata !DIExpression()), !dbg !3339
  %10 = bitcast [32 x i8]* %9 to i8*, !dbg !3340
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !3340
  call void @llvm.dbg.declare(metadata [32 x i8]* %9, metadata !181, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !186, metadata !DIExpression()), !dbg !3339
  %11 = fcmp une double %4, %4, !dbg !3342
  br i1 %11, label %12, label %15, !dbg !3344

12:                                               ; preds = %8
  %13 = getelementptr [4 x i8], [4 x i8]* @.str.75, i32 0, i32 0
  %14 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %13, i32 3, i32 %6, i32 %7), !dbg !3345
  br label %200, !dbg !3346

15:                                               ; preds = %8
  %16 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3347
  br i1 %16, label %17, label %20, !dbg !3349

17:                                               ; preds = %15
  %18 = getelementptr [5 x i8], [5 x i8]* @.str.1.76, i32 0, i32 0
  %19 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %18, i32 4, i32 %6, i32 %7), !dbg !3350
  br label %200, !dbg !3351

20:                                               ; preds = %15
  %21 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3352
  br i1 %21, label %22, label %34, !dbg !3354

22:                                               ; preds = %20
  %23 = and i32 %7, 4, !dbg !3355
  %24 = icmp ne i32 %23, 0, !dbg !3356
  %25 = zext i1 %24 to i64, !dbg !3356
  %26 = getelementptr [5 x i8], [5 x i8]* @.str.2.77, i32 0, i32 0
  %27 = getelementptr [4 x i8], [4 x i8]* @.str.3.78, i32 0, i32 0
  %28 = select i1 %24, i8* %26, i8* %27, !dbg !3356
  %29 = and i32 %7, 4, !dbg !3357
  %30 = icmp ne i32 %29, 0, !dbg !3358
  %31 = zext i1 %30 to i64, !dbg !3358
  %32 = select i1 %30, i32 4, i32 3, !dbg !3358
  %33 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %28, i32 %32, i32 %6, i32 %7), !dbg !3359
  br label %200, !dbg !3360

34:                                               ; preds = %20
  %35 = fcmp ogt double %4, 1.000000e+09, !dbg !3361
  br i1 %35, label %._crit_edge, label %36, !dbg !3363

._crit_edge:                                      ; preds = %34
  br label %38, !dbg !3363

36:                                               ; preds = %34
  %37 = fcmp olt double %4, -1.000000e+09, !dbg !3364
  br i1 %37, label %._crit_edge23, label %40, !dbg !3365

._crit_edge23:                                    ; preds = %36
  br label %38, !dbg !3365

38:                                               ; preds = %._crit_edge23, %._crit_edge
  %39 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3366
  br label %200, !dbg !3368

40:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !3339
  %41 = fcmp olt double %4, 0.000000e+00, !dbg !3369
  br i1 %41, label %42, label %._crit_edge24, !dbg !3371

._crit_edge24:                                    ; preds = %40
  br label %44, !dbg !3371

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8 1, metadata !187, metadata !DIExpression()), !dbg !3339
  %43 = fsub double 0.000000e+00, %4, !dbg !3372
  call void @llvm.dbg.value(metadata double %43, metadata !177, metadata !DIExpression()), !dbg !3339
  br label %44, !dbg !3374

44:                                               ; preds = %42, %._crit_edge24
  %.012 = phi double [ %43, %42 ], [ %4, %._crit_edge24 ]
  %.011 = phi i8 [ 1, %42 ], [ 0, %._crit_edge24 ], !dbg !3339
  call void @llvm.dbg.value(metadata i8 %.011, metadata !187, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata double %.012, metadata !177, metadata !DIExpression()), !dbg !3339
  %45 = and i32 %7, 1024, !dbg !3375
  %46 = icmp ne i32 %45, 0, !dbg !3375
  br i1 %46, label %._crit_edge25, label %47, !dbg !3377

._crit_edge25:                                    ; preds = %44
  br label %48, !dbg !3377

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 6, metadata !178, metadata !DIExpression()), !dbg !3339
  br label %48, !dbg !3378

48:                                               ; preds = %47, %._crit_edge25
  %.013 = phi i32 [ %5, %._crit_edge25 ], [ 6, %47 ]
  call void @llvm.dbg.value(metadata i32 %.013, metadata !178, metadata !DIExpression()), !dbg !3339
  br label %49, !dbg !3380

49:                                               ; preds = %55, %48
  %.017 = phi i32 [ 0, %48 ], [ %56, %55 ], !dbg !3339
  %.114 = phi i32 [ %.013, %48 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i32 %.114, metadata !178, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.017, metadata !185, metadata !DIExpression()), !dbg !3339
  %50 = icmp ult i32 %.017, 32, !dbg !3381
  br i1 %50, label %51, label %._crit_edge26, !dbg !3382

._crit_edge26:                                    ; preds = %49
  br label %53, !dbg !3382

51:                                               ; preds = %49
  %52 = icmp ugt i32 %.114, 9, !dbg !3383
  br label %53

53:                                               ; preds = %51, %._crit_edge26
  %54 = phi i1 [ false, %._crit_edge26 ], [ %52, %51 ], !dbg !3339
  br i1 %54, label %55, label %59, !dbg !3380

55:                                               ; preds = %53
  %56 = add i32 %.017, 1, !dbg !3384
  call void @llvm.dbg.value(metadata i32 %56, metadata !185, metadata !DIExpression()), !dbg !3339
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.017, !dbg !3386
  store i8 48, i8* %57, align 1, !dbg !3387, !tbaa !2141
  %58 = add i32 %.114, -1, !dbg !3388
  call void @llvm.dbg.value(metadata i32 %58, metadata !178, metadata !DIExpression()), !dbg !3339
  br label %49, !dbg !3380, !llvm.loop !3389

59:                                               ; preds = %53
  %.017.lcssa = phi i32 [ %.017, %53 ], !dbg !3339
  %.114.lcssa = phi i32 [ %.114, %53 ]
  call void @llvm.dbg.value(metadata i32 %.017.lcssa, metadata !185, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !178, metadata !DIExpression()), !dbg !3339
  %60 = fptosi double %.012 to i32, !dbg !3391
  call void @llvm.dbg.value(metadata i32 %60, metadata !189, metadata !DIExpression()), !dbg !3339
  %61 = sitofp i32 %60 to double, !dbg !3392
  %62 = fsub double %.012, %61, !dbg !3393
  %63 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3394
  %64 = load double, double* %63, align 8, !dbg !3394, !tbaa !3395
  %65 = fmul double %62, %64, !dbg !3397
  call void @llvm.dbg.value(metadata double %65, metadata !190, metadata !DIExpression()), !dbg !3339
  %66 = fptoui double %65 to i32, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %66, metadata !191, metadata !DIExpression()), !dbg !3339
  %67 = uitofp i32 %66 to double, !dbg !3399
  %68 = fsub double %65, %67, !dbg !3400
  call void @llvm.dbg.value(metadata double %68, metadata !186, metadata !DIExpression()), !dbg !3339
  %69 = fcmp ogt double %68, 5.000000e-01, !dbg !3401
  br i1 %69, label %70, label %79, !dbg !3403

70:                                               ; preds = %59
  %71 = add i32 %66, 1, !dbg !3404
  call void @llvm.dbg.value(metadata i32 %71, metadata !191, metadata !DIExpression()), !dbg !3339
  %72 = uitofp i32 %71 to double, !dbg !3406
  %73 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3408
  %74 = load double, double* %73, align 8, !dbg !3408, !tbaa !3395
  %75 = fcmp oge double %72, %74, !dbg !3409
  br i1 %75, label %76, label %._crit_edge27, !dbg !3410

._crit_edge27:                                    ; preds = %70
  br label %78, !dbg !3410

76:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !3339
  %77 = add nsw i32 %60, 1, !dbg !3411
  call void @llvm.dbg.value(metadata i32 %77, metadata !189, metadata !DIExpression()), !dbg !3339
  br label %78, !dbg !3413

78:                                               ; preds = %76, %._crit_edge27
  %.06 = phi i32 [ %77, %76 ], [ %60, %._crit_edge27 ], !dbg !3339
  %.02 = phi i32 [ 0, %76 ], [ %71, %._crit_edge27 ], !dbg !3414
  call void @llvm.dbg.value(metadata i32 %.02, metadata !191, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.06, metadata !189, metadata !DIExpression()), !dbg !3339
  br label %91, !dbg !3415

79:                                               ; preds = %59
  %80 = fcmp olt double %68, 5.000000e-01, !dbg !3416
  br i1 %80, label %81, label %82, !dbg !3418

81:                                               ; preds = %79
  br label %90, !dbg !3419

82:                                               ; preds = %79
  %83 = icmp eq i32 %66, 0, !dbg !3421
  br i1 %83, label %._crit_edge28, label %84, !dbg !3423

._crit_edge28:                                    ; preds = %82
  br label %87, !dbg !3423

84:                                               ; preds = %82
  %85 = and i32 %66, 1, !dbg !3424
  %86 = icmp ne i32 %85, 0, !dbg !3424
  br i1 %86, label %._crit_edge29, label %._crit_edge30, !dbg !3425

._crit_edge30:                                    ; preds = %84
  br label %89, !dbg !3425

._crit_edge29:                                    ; preds = %84
  br label %87, !dbg !3425

87:                                               ; preds = %._crit_edge29, %._crit_edge28
  %88 = add i32 %66, 1, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %88, metadata !191, metadata !DIExpression()), !dbg !3339
  br label %89, !dbg !3428

89:                                               ; preds = %87, %._crit_edge30
  %.13 = phi i32 [ %88, %87 ], [ %66, %._crit_edge30 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.13, metadata !191, metadata !DIExpression()), !dbg !3339
  br label %90

90:                                               ; preds = %89, %81
  %.24 = phi i32 [ %66, %81 ], [ %.13, %89 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.24, metadata !191, metadata !DIExpression()), !dbg !3339
  br label %91

91:                                               ; preds = %90, %78
  %.17 = phi i32 [ %.06, %78 ], [ %60, %90 ], !dbg !3339
  %.35 = phi i32 [ %.02, %78 ], [ %.24, %90 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.35, metadata !191, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.17, metadata !189, metadata !DIExpression()), !dbg !3339
  %92 = icmp eq i32 %.114.lcssa, 0, !dbg !3429
  br i1 %92, label %93, label %105, !dbg !3430

93:                                               ; preds = %91
  %94 = sitofp i32 %.17 to double, !dbg !3431
  %95 = fsub double %.012, %94, !dbg !3433
  call void @llvm.dbg.value(metadata double %95, metadata !186, metadata !DIExpression()), !dbg !3339
  %96 = fcmp olt double %95, 5.000000e-01, !dbg !3434
  br i1 %96, label %97, label %._crit_edge31, !dbg !3436

._crit_edge31:                                    ; preds = %93
  br label %99, !dbg !3436

97:                                               ; preds = %93
  %98 = fcmp ogt double %95, 5.000000e-01, !dbg !3437
  br i1 %98, label %._crit_edge32, label %._crit_edge33, !dbg !3438

._crit_edge33:                                    ; preds = %97
  br label %104, !dbg !3438

._crit_edge32:                                    ; preds = %97
  br label %99, !dbg !3438

99:                                               ; preds = %._crit_edge32, %._crit_edge31
  %100 = and i32 %.17, 1, !dbg !3439
  %101 = icmp ne i32 %100, 0, !dbg !3439
  br i1 %101, label %102, label %._crit_edge34, !dbg !3440

._crit_edge34:                                    ; preds = %99
  br label %104, !dbg !3440

102:                                              ; preds = %99
  %103 = add nsw i32 %.17, 1, !dbg !3441
  call void @llvm.dbg.value(metadata i32 %103, metadata !189, metadata !DIExpression()), !dbg !3339
  br label %104, !dbg !3443

104:                                              ; preds = %102, %._crit_edge34, %._crit_edge33
  %.28 = phi i32 [ %103, %102 ], [ %.17, %._crit_edge34 ], [ %.17, %._crit_edge33 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.28, metadata !189, metadata !DIExpression()), !dbg !3339
  br label %136, !dbg !3444

105:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !192, metadata !DIExpression()), !dbg !3445
  br label %106, !dbg !3446

106:                                              ; preds = %118, %105
  %.118 = phi i32 [ %.017.lcssa, %105 ], [ %113, %118 ], !dbg !3339
  %.4 = phi i32 [ %.35, %105 ], [ %115, %118 ], !dbg !3339
  %.01 = phi i32 [ %.114.lcssa, %105 ], [ %109, %118 ], !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.01, metadata !192, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.4, metadata !191, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.118, metadata !185, metadata !DIExpression()), !dbg !3339
  %107 = icmp ult i32 %.118, 32, !dbg !3447
  br i1 %107, label %108, label %._crit_edge35, !dbg !3446

._crit_edge35:                                    ; preds = %106
  %.118.lcssa = phi i32 [ %.118, %106 ], !dbg !3339
  %.01.lcssa = phi i32 [ %.01, %106 ], !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.118.lcssa, metadata !185, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !192, metadata !DIExpression()), !dbg !3445
  br label %119, !dbg !3446

108:                                              ; preds = %106
  %109 = add i32 %.01, -1, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %109, metadata !192, metadata !DIExpression()), !dbg !3445
  %110 = urem i32 %.4, 10, !dbg !3450
  %111 = add i32 48, %110, !dbg !3451
  %112 = trunc i32 %111 to i8, !dbg !3452
  %113 = add i32 %.118, 1, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %113, metadata !185, metadata !DIExpression()), !dbg !3339
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.118, !dbg !3454
  store i8 %112, i8* %114, align 1, !dbg !3455, !tbaa !2141
  %115 = udiv i32 %.4, 10, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %115, metadata !191, metadata !DIExpression()), !dbg !3339
  %116 = icmp ne i32 %115, 0, !dbg !3456
  br i1 %116, label %118, label %117, !dbg !3458

117:                                              ; preds = %108
  %.lcssa52 = phi i32 [ %109, %108 ], !dbg !3448
  %.lcssa51 = phi i32 [ %113, %108 ], !dbg !3453
  br label %119, !dbg !3459

118:                                              ; preds = %108
  br label %106, !dbg !3446, !llvm.loop !3461

119:                                              ; preds = %117, %._crit_edge35
  %.219 = phi i32 [ %.lcssa51, %117 ], [ %.118.lcssa, %._crit_edge35 ], !dbg !3339
  %.1 = phi i32 [ %.lcssa52, %117 ], [ %.01.lcssa, %._crit_edge35 ], !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.1, metadata !192, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.219, metadata !185, metadata !DIExpression()), !dbg !3339
  br label %120, !dbg !3463

120:                                              ; preds = %127, %119
  %.320 = phi i32 [ %.219, %119 ], [ %128, %127 ], !dbg !3445
  %.2 = phi i32 [ %.1, %119 ], [ %.3, %127 ], !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.2, metadata !192, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.320, metadata !185, metadata !DIExpression()), !dbg !3339
  %121 = icmp ult i32 %.320, 32, !dbg !3464
  br i1 %121, label %122, label %._crit_edge36, !dbg !3465

._crit_edge36:                                    ; preds = %120
  br label %125, !dbg !3465

122:                                              ; preds = %120
  %123 = add i32 %.2, -1, !dbg !3466
  call void @llvm.dbg.value(metadata i32 %123, metadata !192, metadata !DIExpression()), !dbg !3445
  %124 = icmp ugt i32 %.2, 0, !dbg !3467
  br label %125

125:                                              ; preds = %122, %._crit_edge36
  %.3 = phi i32 [ %123, %122 ], [ %.2, %._crit_edge36 ], !dbg !3445
  %126 = phi i1 [ false, %._crit_edge36 ], [ %124, %122 ], !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.3, metadata !192, metadata !DIExpression()), !dbg !3445
  br i1 %126, label %127, label %130, !dbg !3463

127:                                              ; preds = %125
  %128 = add i32 %.320, 1, !dbg !3468
  call void @llvm.dbg.value(metadata i32 %128, metadata !185, metadata !DIExpression()), !dbg !3339
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320, !dbg !3470
  store i8 48, i8* %129, align 1, !dbg !3471, !tbaa !2141
  br label %120, !dbg !3463, !llvm.loop !3472

130:                                              ; preds = %125
  %.320.lcssa = phi i32 [ %.320, %125 ], !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.320.lcssa, metadata !185, metadata !DIExpression()), !dbg !3339
  %131 = icmp ult i32 %.320.lcssa, 32, !dbg !3474
  br i1 %131, label %132, label %._crit_edge37, !dbg !3476

._crit_edge37:                                    ; preds = %130
  br label %135, !dbg !3476

132:                                              ; preds = %130
  %133 = add i32 %.320.lcssa, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %133, metadata !185, metadata !DIExpression()), !dbg !3339
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320.lcssa, !dbg !3479
  store i8 46, i8* %134, align 1, !dbg !3480, !tbaa !2141
  br label %135, !dbg !3481

135:                                              ; preds = %132, %._crit_edge37
  %.421 = phi i32 [ %133, %132 ], [ %.320.lcssa, %._crit_edge37 ], !dbg !3445
  call void @llvm.dbg.value(metadata i32 %.421, metadata !185, metadata !DIExpression()), !dbg !3339
  br label %136

136:                                              ; preds = %135, %104
  %.5 = phi i32 [ %.017.lcssa, %104 ], [ %.421, %135 ], !dbg !3339
  %.39 = phi i32 [ %.28, %104 ], [ %.17, %135 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.39, metadata !189, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.5, metadata !185, metadata !DIExpression()), !dbg !3339
  br label %137, !dbg !3482

137:                                              ; preds = %148, %136
  %.6 = phi i32 [ %.5, %136 ], [ %143, %148 ], !dbg !3339
  %.410 = phi i32 [ %.39, %136 ], [ %145, %148 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.410, metadata !189, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.6, metadata !185, metadata !DIExpression()), !dbg !3339
  %138 = icmp ult i32 %.6, 32, !dbg !3483
  br i1 %138, label %139, label %._crit_edge38, !dbg !3482

._crit_edge38:                                    ; preds = %137
  %.6.lcssa = phi i32 [ %.6, %137 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.6.lcssa, metadata !185, metadata !DIExpression()), !dbg !3339
  br label %149, !dbg !3482

139:                                              ; preds = %137
  %140 = srem i32 %.410, 10, !dbg !3484
  %141 = add nsw i32 48, %140, !dbg !3486
  %142 = trunc i32 %141 to i8, !dbg !3487
  %143 = add i32 %.6, 1, !dbg !3488
  call void @llvm.dbg.value(metadata i32 %143, metadata !185, metadata !DIExpression()), !dbg !3339
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.6, !dbg !3489
  store i8 %142, i8* %144, align 1, !dbg !3490, !tbaa !2141
  %145 = sdiv i32 %.410, 10, !dbg !3491
  call void @llvm.dbg.value(metadata i32 %145, metadata !189, metadata !DIExpression()), !dbg !3339
  %146 = icmp ne i32 %145, 0, !dbg !3491
  br i1 %146, label %148, label %147, !dbg !3493

147:                                              ; preds = %139
  %.lcssa = phi i32 [ %143, %139 ], !dbg !3488
  br label %149, !dbg !3494

148:                                              ; preds = %139
  br label %137, !dbg !3482, !llvm.loop !3496

149:                                              ; preds = %147, %._crit_edge38
  %.7 = phi i32 [ %.lcssa, %147 ], [ %.6.lcssa, %._crit_edge38 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.7, metadata !185, metadata !DIExpression()), !dbg !3339
  %150 = and i32 %7, 2, !dbg !3498
  %151 = icmp ne i32 %150, 0, !dbg !3498
  br i1 %151, label %._crit_edge39, label %152, !dbg !3500

._crit_edge39:                                    ; preds = %149
  br label %175, !dbg !3500

152:                                              ; preds = %149
  %153 = and i32 %7, 1, !dbg !3501
  %154 = icmp ne i32 %153, 0, !dbg !3501
  br i1 %154, label %155, label %._crit_edge40, !dbg !3502

._crit_edge40:                                    ; preds = %152
  br label %175, !dbg !3502

155:                                              ; preds = %152
  %156 = icmp ne i32 %6, 0, !dbg !3503
  br i1 %156, label %157, label %._crit_edge41, !dbg !3506

._crit_edge41:                                    ; preds = %155
  br label %164, !dbg !3506

157:                                              ; preds = %155
  %158 = trunc i8 %.011 to i1, !dbg !3507
  br i1 %158, label %._crit_edge42, label %159, !dbg !3508

._crit_edge42:                                    ; preds = %157
  br label %162, !dbg !3508

159:                                              ; preds = %157
  %160 = and i32 %7, 12, !dbg !3509
  %161 = icmp ne i32 %160, 0, !dbg !3509
  br i1 %161, label %._crit_edge43, label %._crit_edge44, !dbg !3510

._crit_edge44:                                    ; preds = %159
  br label %164, !dbg !3510

._crit_edge43:                                    ; preds = %159
  br label %162, !dbg !3510

162:                                              ; preds = %._crit_edge43, %._crit_edge42
  %163 = add i32 %6, -1, !dbg !3511
  call void @llvm.dbg.value(metadata i32 %163, metadata !179, metadata !DIExpression()), !dbg !3339
  br label %164, !dbg !3513

164:                                              ; preds = %162, %._crit_edge44, %._crit_edge41
  %.015 = phi i32 [ %163, %162 ], [ %6, %._crit_edge44 ], [ %6, %._crit_edge41 ]
  call void @llvm.dbg.value(metadata i32 %.015, metadata !179, metadata !DIExpression()), !dbg !3339
  br label %165, !dbg !3514

165:                                              ; preds = %171, %164
  %.8 = phi i32 [ %.7, %164 ], [ %172, %171 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.8, metadata !185, metadata !DIExpression()), !dbg !3339
  %166 = icmp ult i32 %.8, %.015, !dbg !3515
  br i1 %166, label %167, label %._crit_edge45, !dbg !3516

._crit_edge45:                                    ; preds = %165
  br label %169, !dbg !3516

167:                                              ; preds = %165
  %168 = icmp ult i32 %.8, 32, !dbg !3517
  br label %169

169:                                              ; preds = %167, %._crit_edge45
  %170 = phi i1 [ false, %._crit_edge45 ], [ %168, %167 ], !dbg !3518
  br i1 %170, label %171, label %174, !dbg !3514

171:                                              ; preds = %169
  %172 = add i32 %.8, 1, !dbg !3519
  call void @llvm.dbg.value(metadata i32 %172, metadata !185, metadata !DIExpression()), !dbg !3339
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.8, !dbg !3521
  store i8 48, i8* %173, align 1, !dbg !3522, !tbaa !2141
  br label %165, !dbg !3514, !llvm.loop !3523

174:                                              ; preds = %169
  %.8.lcssa = phi i32 [ %.8, %169 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.8.lcssa, metadata !185, metadata !DIExpression()), !dbg !3339
  br label %175, !dbg !3525

175:                                              ; preds = %174, %._crit_edge40, %._crit_edge39
  %.9 = phi i32 [ %.7, %._crit_edge39 ], [ %.8.lcssa, %174 ], [ %.7, %._crit_edge40 ], !dbg !3488
  %.116 = phi i32 [ %6, %._crit_edge39 ], [ %.015, %174 ], [ %6, %._crit_edge40 ]
  call void @llvm.dbg.value(metadata i32 %.116, metadata !179, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.9, metadata !185, metadata !DIExpression()), !dbg !3339
  %176 = icmp ult i32 %.9, 32, !dbg !3526
  br i1 %176, label %177, label %._crit_edge46, !dbg !3528

._crit_edge46:                                    ; preds = %175
  br label %197, !dbg !3528

177:                                              ; preds = %175
  %178 = trunc i8 %.011 to i1, !dbg !3529
  br i1 %178, label %179, label %182, !dbg !3532

179:                                              ; preds = %177
  %180 = add i32 %.9, 1, !dbg !3533
  call void @llvm.dbg.value(metadata i32 %180, metadata !185, metadata !DIExpression()), !dbg !3339
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3535
  store i8 45, i8* %181, align 1, !dbg !3536, !tbaa !2141
  br label %196, !dbg !3537

182:                                              ; preds = %177
  %183 = and i32 %7, 4, !dbg !3538
  %184 = icmp ne i32 %183, 0, !dbg !3538
  br i1 %184, label %185, label %188, !dbg !3540

185:                                              ; preds = %182
  %186 = add i32 %.9, 1, !dbg !3541
  call void @llvm.dbg.value(metadata i32 %186, metadata !185, metadata !DIExpression()), !dbg !3339
  %187 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3543
  store i8 43, i8* %187, align 1, !dbg !3544, !tbaa !2141
  br label %195, !dbg !3545

188:                                              ; preds = %182
  %189 = and i32 %7, 8, !dbg !3546
  %190 = icmp ne i32 %189, 0, !dbg !3546
  br i1 %190, label %191, label %._crit_edge47, !dbg !3548

._crit_edge47:                                    ; preds = %188
  br label %194, !dbg !3548

191:                                              ; preds = %188
  %192 = add i32 %.9, 1, !dbg !3549
  call void @llvm.dbg.value(metadata i32 %192, metadata !185, metadata !DIExpression()), !dbg !3339
  %193 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3551
  store i8 32, i8* %193, align 1, !dbg !3552, !tbaa !2141
  br label %194, !dbg !3553

194:                                              ; preds = %191, %._crit_edge47
  %.10 = phi i32 [ %192, %191 ], [ %.9, %._crit_edge47 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.10, metadata !185, metadata !DIExpression()), !dbg !3339
  br label %195

195:                                              ; preds = %194, %185
  %.11 = phi i32 [ %186, %185 ], [ %.10, %194 ], !dbg !3554
  call void @llvm.dbg.value(metadata i32 %.11, metadata !185, metadata !DIExpression()), !dbg !3339
  br label %196

196:                                              ; preds = %195, %179
  %.12 = phi i32 [ %180, %179 ], [ %.11, %195 ], !dbg !3555
  call void @llvm.dbg.value(metadata i32 %.12, metadata !185, metadata !DIExpression()), !dbg !3339
  br label %197, !dbg !3556

197:                                              ; preds = %196, %._crit_edge46
  %.1322 = phi i32 [ %.12, %196 ], [ %.9, %._crit_edge46 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %.1322, metadata !185, metadata !DIExpression()), !dbg !3339
  %198 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0, !dbg !3557
  %199 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %198, i32 %.1322, i32 %.116, i32 %7), !dbg !3558
  br label %200

200:                                              ; preds = %197, %38, %22, %17, %12
  %.0 = phi i32 [ %14, %12 ], [ %19, %17 ], [ %33, %22 ], [ %39, %38 ], [ %199, %197 ], !dbg !3339
  %201 = bitcast [32 x i8]* %9 to i8*, !dbg !3559
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %201) #4, !dbg !3559
  ret i32 %.0, !dbg !3559
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !3560 {
  %9 = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3562, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i8* %1, metadata !3563, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %2, metadata !3564, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %3, metadata !3565, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata double %4, metadata !3566, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %5, metadata !3567, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %6, metadata !3568, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %7, metadata !3569, metadata !DIExpression()), !dbg !3583
  %10 = fcmp une double %4, %4, !dbg !3584
  br i1 %10, label %._crit_edge, label %11, !dbg !3586

._crit_edge:                                      ; preds = %8
  br label %15, !dbg !3586

11:                                               ; preds = %8
  %12 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3587
  br i1 %12, label %._crit_edge16, label %13, !dbg !3588

._crit_edge16:                                    ; preds = %11
  br label %15, !dbg !3588

13:                                               ; preds = %11
  %14 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3589
  br i1 %14, label %._crit_edge17, label %17, !dbg !3590

._crit_edge17:                                    ; preds = %13
  br label %15, !dbg !3590

15:                                               ; preds = %._crit_edge17, %._crit_edge16, %._crit_edge
  %16 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3591
  br label %171, !dbg !3593

17:                                               ; preds = %13
  %18 = fcmp olt double %4, 0.000000e+00, !dbg !3594
  %19 = zext i1 %18 to i8, !dbg !3595
  call void @llvm.dbg.value(metadata i8 %19, metadata !3570, metadata !DIExpression()), !dbg !3583
  %20 = trunc i8 %19 to i1, !dbg !3596
  br i1 %20, label %21, label %._crit_edge18, !dbg !3598

._crit_edge18:                                    ; preds = %17
  br label %23, !dbg !3598

21:                                               ; preds = %17
  %22 = fsub double -0.000000e+00, %4, !dbg !3599
  call void @llvm.dbg.value(metadata double %22, metadata !3566, metadata !DIExpression()), !dbg !3583
  br label %23, !dbg !3601

23:                                               ; preds = %21, %._crit_edge18
  %.09 = phi double [ %22, %21 ], [ %4, %._crit_edge18 ]
  call void @llvm.dbg.value(metadata double %.09, metadata !3566, metadata !DIExpression()), !dbg !3583
  %24 = and i32 %7, 1024, !dbg !3602
  %25 = icmp ne i32 %24, 0, !dbg !3602
  br i1 %25, label %._crit_edge19, label %26, !dbg !3604

._crit_edge19:                                    ; preds = %23
  br label %27, !dbg !3604

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 6, metadata !3567, metadata !DIExpression()), !dbg !3583
  br label %27, !dbg !3605

27:                                               ; preds = %26, %._crit_edge19
  %.011 = phi i32 [ %5, %._crit_edge19 ], [ 6, %26 ]
  call void @llvm.dbg.value(metadata i32 %.011, metadata !3567, metadata !DIExpression()), !dbg !3583
  %28 = bitcast %union.anon* %9 to i8*, !dbg !3607
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #4, !dbg !3607
  call void @llvm.dbg.declare(metadata %union.anon* %9, metadata !3571, metadata !DIExpression()), !dbg !3608
  %29 = bitcast %union.anon* %9 to double*, !dbg !3609
  store double %.09, double* %29, align 8, !dbg !3610, !tbaa !2141
  %30 = bitcast %union.anon* %9 to i64*, !dbg !3611
  %31 = load i64, i64* %30, align 8, !dbg !3611, !tbaa !2141
  %32 = lshr i64 %31, 52, !dbg !3612
  %33 = and i64 %32, 2047, !dbg !3613
  %34 = trunc i64 %33 to i32, !dbg !3614
  %35 = sub nsw i32 %34, 1023, !dbg !3615
  call void @llvm.dbg.value(metadata i32 %35, metadata !3576, metadata !DIExpression()), !dbg !3583
  %36 = bitcast %union.anon* %9 to i64*, !dbg !3616
  %37 = load i64, i64* %36, align 8, !dbg !3616, !tbaa !2141
  %38 = and i64 %37, 4503599627370495, !dbg !3617
  %39 = or i64 %38, 4607182418800017408, !dbg !3618
  %40 = bitcast %union.anon* %9 to i64*, !dbg !3619
  store i64 %39, i64* %40, align 8, !dbg !3620, !tbaa !2141
  %41 = sitofp i32 %35 to double, !dbg !3621
  %42 = fmul double %41, 0x3FD34413509F79FB, !dbg !3622
  %43 = fadd double 0x3FC68A288B60C8B3, %42, !dbg !3623
  %44 = bitcast %union.anon* %9 to double*, !dbg !3624
  %45 = load double, double* %44, align 8, !dbg !3624, !tbaa !2141
  %46 = fsub double %45, 1.500000e+00, !dbg !3625
  %47 = fmul double %46, 0x3FD287A7636F4361, !dbg !3626
  %48 = fadd double %43, %47, !dbg !3627
  %49 = fptosi double %48 to i32, !dbg !3628
  call void @llvm.dbg.value(metadata i32 %49, metadata !3577, metadata !DIExpression()), !dbg !3583
  %50 = sitofp i32 %49 to double, !dbg !3629
  %51 = fmul double %50, 0x400A934F0979A371, !dbg !3630
  %52 = fadd double %51, 5.000000e-01, !dbg !3631
  %53 = fptosi double %52 to i32, !dbg !3632
  call void @llvm.dbg.value(metadata i32 %53, metadata !3576, metadata !DIExpression()), !dbg !3583
  %54 = sitofp i32 %49 to double, !dbg !3633
  %55 = fmul double %54, 0x40026BB1BBB55516, !dbg !3634
  %56 = sitofp i32 %53 to double, !dbg !3635
  %57 = fmul double %56, 0x3FE62E42FEFA39EF, !dbg !3636
  %58 = fsub double %55, %57, !dbg !3637
  call void @llvm.dbg.value(metadata double %58, metadata !3578, metadata !DIExpression()), !dbg !3583
  %59 = fmul double %58, %58, !dbg !3638
  call void @llvm.dbg.value(metadata double %59, metadata !3579, metadata !DIExpression()), !dbg !3583
  %60 = add nsw i32 %53, 1023, !dbg !3639
  %61 = sext i32 %60 to i64, !dbg !3640
  %62 = shl i64 %61, 52, !dbg !3641
  %63 = bitcast %union.anon* %9 to i64*, !dbg !3642
  store i64 %62, i64* %63, align 8, !dbg !3643, !tbaa !2141
  %64 = fmul double 2.000000e+00, %58, !dbg !3644
  %65 = fsub double 2.000000e+00, %58, !dbg !3645
  %66 = fdiv double %59, 1.400000e+01, !dbg !3646
  %67 = fadd double 1.000000e+01, %66, !dbg !3647
  %68 = fdiv double %59, %67, !dbg !3648
  %69 = fadd double 6.000000e+00, %68, !dbg !3649
  %70 = fdiv double %59, %69, !dbg !3650
  %71 = fadd double %65, %70, !dbg !3651
  %72 = fdiv double %64, %71, !dbg !3652
  %73 = fadd double 1.000000e+00, %72, !dbg !3653
  %74 = bitcast %union.anon* %9 to double*, !dbg !3654
  %75 = load double, double* %74, align 8, !dbg !3655, !tbaa !2141
  %76 = fmul double %75, %73, !dbg !3655
  store double %76, double* %74, align 8, !dbg !3655, !tbaa !2141
  %77 = bitcast %union.anon* %9 to double*, !dbg !3656
  %78 = load double, double* %77, align 8, !dbg !3656, !tbaa !2141
  %79 = fcmp olt double %.09, %78, !dbg !3658
  br i1 %79, label %80, label %._crit_edge20, !dbg !3659

._crit_edge20:                                    ; preds = %27
  br label %85, !dbg !3659

80:                                               ; preds = %27
  %81 = add nsw i32 %49, -1, !dbg !3660
  call void @llvm.dbg.value(metadata i32 %81, metadata !3577, metadata !DIExpression()), !dbg !3583
  %82 = bitcast %union.anon* %9 to double*, !dbg !3662
  %83 = load double, double* %82, align 8, !dbg !3663, !tbaa !2141
  %84 = fdiv double %83, 1.000000e+01, !dbg !3663
  store double %84, double* %82, align 8, !dbg !3663, !tbaa !2141
  br label %85, !dbg !3664

85:                                               ; preds = %80, %._crit_edge20
  %.06 = phi i32 [ %81, %80 ], [ %49, %._crit_edge20 ], !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3577, metadata !DIExpression()), !dbg !3583
  %86 = icmp slt i32 %.06, 100, !dbg !3665
  br i1 %86, label %87, label %._crit_edge21, !dbg !3666

._crit_edge21:                                    ; preds = %85
  br label %89, !dbg !3666

87:                                               ; preds = %85
  %88 = icmp sgt i32 %.06, -100, !dbg !3667
  br label %89

89:                                               ; preds = %87, %._crit_edge21
  %90 = phi i1 [ false, %._crit_edge21 ], [ %88, %87 ], !dbg !3583
  %91 = zext i1 %90 to i64, !dbg !3668
  %92 = select i1 %90, i32 4, i32 5, !dbg !3668
  call void @llvm.dbg.value(metadata i32 %92, metadata !3580, metadata !DIExpression()), !dbg !3583
  %93 = and i32 %7, 2048, !dbg !3669
  %94 = icmp ne i32 %93, 0, !dbg !3669
  br i1 %94, label %95, label %._crit_edge22, !dbg !3671

._crit_edge22:                                    ; preds = %89
  br label %116, !dbg !3671

95:                                               ; preds = %89
  %96 = fcmp oge double %.09, 1.000000e-04, !dbg !3672
  br i1 %96, label %97, label %._crit_edge23, !dbg !3675

._crit_edge23:                                    ; preds = %95
  br label %107, !dbg !3675

97:                                               ; preds = %95
  %98 = fcmp olt double %.09, 1.000000e+06, !dbg !3676
  br i1 %98, label %99, label %._crit_edge24, !dbg !3677

._crit_edge24:                                    ; preds = %97
  br label %107, !dbg !3677

99:                                               ; preds = %97
  %100 = icmp sgt i32 %.011, %.06, !dbg !3678
  br i1 %100, label %101, label %104, !dbg !3681

101:                                              ; preds = %99
  %102 = sub nsw i32 %.011, %.06, !dbg !3682
  %103 = sub nsw i32 %102, 1, !dbg !3684
  call void @llvm.dbg.value(metadata i32 %103, metadata !3567, metadata !DIExpression()), !dbg !3583
  br label %105, !dbg !3685

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 0, metadata !3567, metadata !DIExpression()), !dbg !3583
  br label %105

105:                                              ; preds = %104, %101
  %.112 = phi i32 [ %103, %101 ], [ 0, %104 ], !dbg !3686
  call void @llvm.dbg.value(metadata i32 %.112, metadata !3567, metadata !DIExpression()), !dbg !3583
  %106 = or i32 %7, 1024, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %106, metadata !3569, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 0, metadata !3577, metadata !DIExpression()), !dbg !3583
  br label %115, !dbg !3688

107:                                              ; preds = %._crit_edge24, %._crit_edge23
  %108 = icmp ugt i32 %.011, 0, !dbg !3689
  br i1 %108, label %109, label %._crit_edge25, !dbg !3692

._crit_edge25:                                    ; preds = %107
  br label %114, !dbg !3692

109:                                              ; preds = %107
  %110 = and i32 %7, 1024, !dbg !3693
  %111 = icmp ne i32 %110, 0, !dbg !3693
  br i1 %111, label %112, label %._crit_edge26, !dbg !3694

._crit_edge26:                                    ; preds = %109
  br label %114, !dbg !3694

112:                                              ; preds = %109
  %113 = add i32 %.011, -1, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %113, metadata !3567, metadata !DIExpression()), !dbg !3583
  br label %114, !dbg !3697

114:                                              ; preds = %112, %._crit_edge26, %._crit_edge25
  %.213 = phi i32 [ %113, %112 ], [ %.011, %._crit_edge26 ], [ %.011, %._crit_edge25 ]
  call void @llvm.dbg.value(metadata i32 %.213, metadata !3567, metadata !DIExpression()), !dbg !3583
  br label %115

115:                                              ; preds = %114, %105
  %.014 = phi i32 [ %106, %105 ], [ %7, %114 ]
  %.3 = phi i32 [ %.112, %105 ], [ %.213, %114 ], !dbg !3698
  %.17 = phi i32 [ 0, %105 ], [ %.06, %114 ], !dbg !3583
  %.02 = phi i32 [ 0, %105 ], [ %92, %114 ], !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.17, metadata !3577, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3567, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.014, metadata !3569, metadata !DIExpression()), !dbg !3583
  br label %116, !dbg !3699

116:                                              ; preds = %115, %._crit_edge22
  %.115 = phi i32 [ %.014, %115 ], [ %7, %._crit_edge22 ]
  %.4 = phi i32 [ %.3, %115 ], [ %.011, %._crit_edge22 ]
  %.28 = phi i32 [ %.17, %115 ], [ %.06, %._crit_edge22 ], !dbg !3583
  %.13 = phi i32 [ %.02, %115 ], [ %92, %._crit_edge22 ], !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.28, metadata !3577, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3567, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.115, metadata !3569, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %6, metadata !3581, metadata !DIExpression()), !dbg !3583
  %117 = icmp ugt i32 %6, %.13, !dbg !3700
  br i1 %117, label %118, label %120, !dbg !3702

118:                                              ; preds = %116
  %119 = sub i32 %6, %.13, !dbg !3703
  call void @llvm.dbg.value(metadata i32 %119, metadata !3581, metadata !DIExpression()), !dbg !3583
  br label %121, !dbg !3705

120:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 0, metadata !3581, metadata !DIExpression()), !dbg !3583
  br label %121

121:                                              ; preds = %120, %118
  %.01 = phi i32 [ %119, %118 ], [ 0, %120 ], !dbg !3706
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3581, metadata !DIExpression()), !dbg !3583
  %122 = and i32 %.115, 2, !dbg !3707
  %123 = icmp ne i32 %122, 0, !dbg !3707
  br i1 %123, label %124, label %._crit_edge27, !dbg !3709

._crit_edge27:                                    ; preds = %121
  br label %127, !dbg !3709

124:                                              ; preds = %121
  %125 = icmp ne i32 %.13, 0, !dbg !3710
  br i1 %125, label %126, label %._crit_edge28, !dbg !3711

._crit_edge28:                                    ; preds = %124
  br label %127, !dbg !3711

126:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i32 0, metadata !3581, metadata !DIExpression()), !dbg !3583
  br label %127, !dbg !3712

127:                                              ; preds = %126, %._crit_edge28, %._crit_edge27
  %.1 = phi i32 [ 0, %126 ], [ %.01, %._crit_edge28 ], [ %.01, %._crit_edge27 ], !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3581, metadata !DIExpression()), !dbg !3583
  %128 = icmp ne i32 %.28, 0, !dbg !3714
  br i1 %128, label %129, label %._crit_edge29, !dbg !3716

._crit_edge29:                                    ; preds = %127
  br label %133, !dbg !3716

129:                                              ; preds = %127
  %130 = bitcast %union.anon* %9 to double*, !dbg !3717
  %131 = load double, double* %130, align 8, !dbg !3717, !tbaa !2141
  %132 = fdiv double %.09, %131, !dbg !3719
  call void @llvm.dbg.value(metadata double %132, metadata !3566, metadata !DIExpression()), !dbg !3583
  br label %133, !dbg !3720

133:                                              ; preds = %129, %._crit_edge29
  %.110 = phi double [ %132, %129 ], [ %.09, %._crit_edge29 ], !dbg !3583
  call void @llvm.dbg.value(metadata double %.110, metadata !3566, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 %2, metadata !3582, metadata !DIExpression()), !dbg !3583
  %134 = trunc i8 %19 to i1, !dbg !3721
  br i1 %134, label %135, label %137, !dbg !3721

135:                                              ; preds = %133
  %136 = fsub double -0.000000e+00, %.110, !dbg !3722
  br label %138, !dbg !3721

137:                                              ; preds = %133
  br label %138, !dbg !3721

138:                                              ; preds = %137, %135
  %139 = phi double [ %136, %135 ], [ %.110, %137 ], !dbg !3721
  %140 = and i32 %.115, -2049, !dbg !3723
  %141 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %139, i32 %.4, i32 %.1, i32 %140), !dbg !3724
  call void @llvm.dbg.value(metadata i32 %141, metadata !3564, metadata !DIExpression()), !dbg !3583
  %142 = icmp ne i32 %.13, 0, !dbg !3725
  br i1 %142, label %143, label %._crit_edge30, !dbg !3727

._crit_edge30:                                    ; preds = %138
  br label %169, !dbg !3727

143:                                              ; preds = %138
  %144 = and i32 %.115, 32, !dbg !3728
  %145 = icmp ne i32 %144, 0, !dbg !3730
  %146 = zext i1 %145 to i64, !dbg !3730
  %147 = select i1 %145, i32 69, i32 101, !dbg !3730
  %148 = trunc i32 %147 to i8, !dbg !3730
  %149 = add i32 %141, 1, !dbg !3731
  call void @llvm.dbg.value(metadata i32 %149, metadata !3564, metadata !DIExpression()), !dbg !3583
  call arm_aapcscc void %0(i8 zeroext %148, i8* %1, i32 %141, i32 %3), !dbg !3732
  %150 = icmp slt i32 %.28, 0, !dbg !3733
  br i1 %150, label %151, label %153, !dbg !3734

151:                                              ; preds = %143
  %152 = sub nsw i32 0, %.28, !dbg !3735
  br label %154, !dbg !3734

153:                                              ; preds = %143
  br label %154, !dbg !3734

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ %.28, %153 ], !dbg !3734
  %156 = icmp slt i32 %.28, 0, !dbg !3736
  %157 = sub i32 %.13, 1, !dbg !3737
  %158 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %149, i32 %3, i32 %155, i1 zeroext %156, i32 10, i32 0, i32 %157, i32 5), !dbg !3738
  call void @llvm.dbg.value(metadata i32 %158, metadata !3564, metadata !DIExpression()), !dbg !3583
  %159 = and i32 %.115, 2, !dbg !3739
  %160 = icmp ne i32 %159, 0, !dbg !3739
  br i1 %160, label %161, label %._crit_edge31, !dbg !3741

._crit_edge31:                                    ; preds = %154
  br label %168, !dbg !3741

161:                                              ; preds = %154
  br label %162, !dbg !3742

162:                                              ; preds = %165, %161
  %.04 = phi i32 [ %158, %161 ], [ %166, %165 ], !dbg !3744
  call void @llvm.dbg.value(metadata i32 %.04, metadata !3564, metadata !DIExpression()), !dbg !3583
  %163 = sub i32 %.04, %2, !dbg !3745
  %164 = icmp ult i32 %163, %6, !dbg !3746
  br i1 %164, label %165, label %167, !dbg !3742

165:                                              ; preds = %162
  %166 = add i32 %.04, 1, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %166, metadata !3564, metadata !DIExpression()), !dbg !3583
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.04, i32 %3), !dbg !3748
  br label %162, !dbg !3742, !llvm.loop !3749

167:                                              ; preds = %162
  %.04.lcssa = phi i32 [ %.04, %162 ], !dbg !3744
  call void @llvm.dbg.value(metadata i32 %.04.lcssa, metadata !3564, metadata !DIExpression()), !dbg !3583
  br label %168, !dbg !3751

168:                                              ; preds = %167, %._crit_edge31
  %.15 = phi i32 [ %.04.lcssa, %167 ], [ %158, %._crit_edge31 ], !dbg !3752
  call void @llvm.dbg.value(metadata i32 %.15, metadata !3564, metadata !DIExpression()), !dbg !3583
  br label %169, !dbg !3753

169:                                              ; preds = %168, %._crit_edge30
  %.2 = phi i32 [ %.15, %168 ], [ %141, %._crit_edge30 ], !dbg !3583
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3564, metadata !DIExpression()), !dbg !3583
  %170 = bitcast %union.anon* %9 to i8*, !dbg !3754
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170) #4, !dbg !3754
  br label %171

171:                                              ; preds = %169, %15
  %.0 = phi i32 [ %16, %15 ], [ %.2, %169 ], !dbg !3583
  ret i32 %.0, !dbg !3754
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @_strnlen_s(i8*, i32) #5 !dbg !3755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %1, metadata !3760, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i8* %0, metadata !3761, metadata !DIExpression()), !dbg !3762
  br label %3, !dbg !3763

3:                                                ; preds = %13, %2
  %.01 = phi i32 [ %1, %2 ], [ %.1, %13 ]
  %.0 = phi i8* [ %0, %2 ], [ %14, %13 ], !dbg !3765
  call void @llvm.dbg.value(metadata i8* %.0, metadata !3761, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3760, metadata !DIExpression()), !dbg !3762
  %4 = load i8, i8* %.0, align 1, !dbg !3766, !tbaa !2141
  %5 = zext i8 %4 to i32, !dbg !3766
  %6 = icmp ne i32 %5, 0, !dbg !3766
  br i1 %6, label %7, label %._crit_edge, !dbg !3768

._crit_edge:                                      ; preds = %3
  br label %10, !dbg !3768

7:                                                ; preds = %3
  %8 = add i32 %.01, -1, !dbg !3769
  call void @llvm.dbg.value(metadata i32 %8, metadata !3760, metadata !DIExpression()), !dbg !3762
  %9 = icmp ne i32 %.01, 0, !dbg !3768
  br label %10

10:                                               ; preds = %7, %._crit_edge
  %.1 = phi i32 [ %8, %7 ], [ %.01, %._crit_edge ]
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %7 ], !dbg !3770
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3760, metadata !DIExpression()), !dbg !3762
  br i1 %11, label %12, label %15, !dbg !3771

12:                                               ; preds = %10
  br label %13, !dbg !3771

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !3772
  call void @llvm.dbg.value(metadata i8* %14, metadata !3761, metadata !DIExpression()), !dbg !3762
  br label %3, !dbg !3773, !llvm.loop !3774

15:                                               ; preds = %10
  %.0.lcssa = phi i8* [ %.0, %10 ], !dbg !3765
  call void @llvm.dbg.value(metadata i8* %.0.lcssa, metadata !3761, metadata !DIExpression()), !dbg !3762
  %16 = ptrtoint i8* %.0.lcssa to i32, !dbg !3776
  %17 = ptrtoint i8* %0 to i32, !dbg !3776
  %18 = sub i32 %16, %17, !dbg !3776
  ret i32 %18, !dbg !3777
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i32, i32) #0 !dbg !3778 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3782, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8* %1, metadata !3783, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %2, metadata !3784, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %3, metadata !3785, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8* %4, metadata !3786, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %5, metadata !3787, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %6, metadata !3788, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %7, metadata !3789, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %2, metadata !3790, metadata !DIExpression()), !dbg !3795
  %9 = and i32 %7, 2, !dbg !3796
  %10 = icmp ne i32 %9, 0, !dbg !3796
  br i1 %10, label %._crit_edge, label %11, !dbg !3797

._crit_edge:                                      ; preds = %8
  br label %23, !dbg !3797

11:                                               ; preds = %8
  %12 = and i32 %7, 1, !dbg !3798
  %13 = icmp ne i32 %12, 0, !dbg !3798
  br i1 %13, label %._crit_edge3, label %14, !dbg !3799

._crit_edge3:                                     ; preds = %11
  br label %23, !dbg !3799

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %5, metadata !3791, metadata !DIExpression()), !dbg !3800
  br label %15, !dbg !3801

15:                                               ; preds = %20, %14
  %.02 = phi i32 [ %2, %14 ], [ %19, %20 ]
  %.0 = phi i32 [ %5, %14 ], [ %21, %20 ], !dbg !3800
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3791, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3784, metadata !DIExpression()), !dbg !3795
  %16 = icmp ult i32 %.0, %6, !dbg !3802
  br i1 %16, label %18, label %17, !dbg !3804

17:                                               ; preds = %15
  %.02.lcssa = phi i32 [ %.02, %15 ]
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !3784, metadata !DIExpression()), !dbg !3795
  br label %22

18:                                               ; preds = %15
  %19 = add i32 %.02, 1, !dbg !3805
  call void @llvm.dbg.value(metadata i32 %19, metadata !3784, metadata !DIExpression()), !dbg !3795
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.02, i32 %3), !dbg !3807
  br label %20, !dbg !3808

20:                                               ; preds = %18
  %21 = add i32 %.0, 1, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %21, metadata !3791, metadata !DIExpression()), !dbg !3800
  br label %15, !dbg !3810, !llvm.loop !3811

22:                                               ; preds = %17
  br label %23, !dbg !3813

23:                                               ; preds = %22, %._crit_edge3, %._crit_edge
  %.1 = phi i32 [ %2, %._crit_edge ], [ %2, %._crit_edge3 ], [ %.02.lcssa, %22 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3784, metadata !DIExpression()), !dbg !3795
  br label %24, !dbg !3814

24:                                               ; preds = %26, %23
  %.2 = phi i32 [ %.1, %23 ], [ %30, %26 ]
  %.01 = phi i32 [ %5, %23 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3787, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3784, metadata !DIExpression()), !dbg !3795
  %25 = icmp ne i32 %.01, 0, !dbg !3814
  br i1 %25, label %26, label %31, !dbg !3814

26:                                               ; preds = %24
  %27 = add i32 %.01, -1, !dbg !3815
  call void @llvm.dbg.value(metadata i32 %27, metadata !3787, metadata !DIExpression()), !dbg !3795
  %28 = getelementptr inbounds i8, i8* %4, i32 %27, !dbg !3817
  %29 = load i8, i8* %28, align 1, !dbg !3817, !tbaa !2141
  %30 = add i32 %.2, 1, !dbg !3818
  call void @llvm.dbg.value(metadata i32 %30, metadata !3784, metadata !DIExpression()), !dbg !3795
  call arm_aapcscc void %0(i8 zeroext %29, i8* %1, i32 %.2, i32 %3), !dbg !3819
  br label %24, !dbg !3814, !llvm.loop !3820

31:                                               ; preds = %24
  %.2.lcssa = phi i32 [ %.2, %24 ]
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !3784, metadata !DIExpression()), !dbg !3795
  %32 = and i32 %7, 2, !dbg !3822
  %33 = icmp ne i32 %32, 0, !dbg !3822
  br i1 %33, label %34, label %._crit_edge4, !dbg !3824

._crit_edge4:                                     ; preds = %31
  br label %41, !dbg !3824

34:                                               ; preds = %31
  br label %35, !dbg !3825

35:                                               ; preds = %38, %34
  %.3 = phi i32 [ %.2.lcssa, %34 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3784, metadata !DIExpression()), !dbg !3795
  %36 = sub i32 %.3, %2, !dbg !3827
  %37 = icmp ult i32 %36, %6, !dbg !3828
  br i1 %37, label %38, label %40, !dbg !3825

38:                                               ; preds = %35
  %39 = add i32 %.3, 1, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %39, metadata !3784, metadata !DIExpression()), !dbg !3795
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.3, i32 %3), !dbg !3831
  br label %35, !dbg !3825, !llvm.loop !3832

40:                                               ; preds = %35
  %.3.lcssa = phi i32 [ %.3, %35 ]
  call void @llvm.dbg.value(metadata i32 %.3.lcssa, metadata !3784, metadata !DIExpression()), !dbg !3795
  br label %41, !dbg !3834

41:                                               ; preds = %40, %._crit_edge4
  %.4 = phi i32 [ %.3.lcssa, %40 ], [ %.2.lcssa, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3784, metadata !DIExpression()), !dbg !3795
  ret i32 %.4, !dbg !3835
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3836 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3840, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8* %1, metadata !3841, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %2, metadata !3842, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %3, metadata !3843, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8* %4, metadata !3844, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %5, metadata !3845, metadata !DIExpression()), !dbg !3851
  %12 = zext i1 %6 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3846, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %7, metadata !3847, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %8, metadata !3848, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %9, metadata !3849, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %10, metadata !3850, metadata !DIExpression()), !dbg !3851
  %13 = and i32 %10, 2, !dbg !3852
  %14 = icmp ne i32 %13, 0, !dbg !3852
  br i1 %14, label %._crit_edge, label %15, !dbg !3854

._crit_edge:                                      ; preds = %11
  br label %51, !dbg !3854

15:                                               ; preds = %11
  %16 = icmp ne i32 %9, 0, !dbg !3855
  br i1 %16, label %17, label %._crit_edge4, !dbg !3858

._crit_edge4:                                     ; preds = %15
  br label %27, !dbg !3858

17:                                               ; preds = %15
  %18 = and i32 %10, 1, !dbg !3859
  %19 = icmp ne i32 %18, 0, !dbg !3859
  br i1 %19, label %20, label %._crit_edge5, !dbg !3860

._crit_edge5:                                     ; preds = %17
  br label %27, !dbg !3860

20:                                               ; preds = %17
  %21 = trunc i8 %12 to i1, !dbg !3861
  br i1 %21, label %._crit_edge6, label %22, !dbg !3862

._crit_edge6:                                     ; preds = %20
  br label %25, !dbg !3862

22:                                               ; preds = %20
  %23 = and i32 %10, 12, !dbg !3863
  %24 = icmp ne i32 %23, 0, !dbg !3863
  br i1 %24, label %._crit_edge7, label %._crit_edge8, !dbg !3864

._crit_edge8:                                     ; preds = %22
  br label %27, !dbg !3864

._crit_edge7:                                     ; preds = %22
  br label %25, !dbg !3864

25:                                               ; preds = %._crit_edge7, %._crit_edge6
  %26 = add i32 %9, -1, !dbg !3865
  call void @llvm.dbg.value(metadata i32 %26, metadata !3849, metadata !DIExpression()), !dbg !3851
  br label %27, !dbg !3867

27:                                               ; preds = %25, %._crit_edge8, %._crit_edge5, %._crit_edge4
  %.0 = phi i32 [ %26, %25 ], [ %9, %._crit_edge8 ], [ %9, %._crit_edge5 ], [ %9, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3849, metadata !DIExpression()), !dbg !3851
  br label %28, !dbg !3868

28:                                               ; preds = %34, %27
  %.01 = phi i32 [ %5, %27 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3845, metadata !DIExpression()), !dbg !3851
  %29 = icmp ult i32 %.01, %8, !dbg !3869
  br i1 %29, label %30, label %._crit_edge9, !dbg !3870

._crit_edge9:                                     ; preds = %28
  br label %32, !dbg !3870

30:                                               ; preds = %28
  %31 = icmp ult i32 %.01, 32, !dbg !3871
  br label %32

32:                                               ; preds = %30, %._crit_edge9
  %33 = phi i1 [ false, %._crit_edge9 ], [ %31, %30 ], !dbg !3872
  br i1 %33, label %34, label %37, !dbg !3868

34:                                               ; preds = %32
  %35 = add i32 %.01, 1, !dbg !3873
  call void @llvm.dbg.value(metadata i32 %35, metadata !3845, metadata !DIExpression()), !dbg !3851
  %36 = getelementptr inbounds i8, i8* %4, i32 %.01, !dbg !3875
  store i8 48, i8* %36, align 1, !dbg !3876, !tbaa !2141
  br label %28, !dbg !3868, !llvm.loop !3877

37:                                               ; preds = %32
  %.01.lcssa = phi i32 [ %.01, %32 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %38, !dbg !3879

38:                                               ; preds = %47, %37
  %.12 = phi i32 [ %.01.lcssa, %37 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3845, metadata !DIExpression()), !dbg !3851
  %39 = and i32 %10, 1, !dbg !3880
  %40 = icmp ne i32 %39, 0, !dbg !3880
  br i1 %40, label %41, label %._crit_edge10, !dbg !3881

._crit_edge10:                                    ; preds = %38
  br label %45, !dbg !3881

41:                                               ; preds = %38
  %42 = icmp ult i32 %.12, %.0, !dbg !3882
  br i1 %42, label %43, label %._crit_edge11, !dbg !3883

._crit_edge11:                                    ; preds = %41
  br label %45, !dbg !3883

43:                                               ; preds = %41
  %44 = icmp ult i32 %.12, 32, !dbg !3884
  br label %45

45:                                               ; preds = %43, %._crit_edge11, %._crit_edge10
  %46 = phi i1 [ false, %._crit_edge11 ], [ false, %._crit_edge10 ], [ %44, %43 ], !dbg !3872
  br i1 %46, label %47, label %50, !dbg !3879

47:                                               ; preds = %45
  %48 = add i32 %.12, 1, !dbg !3885
  call void @llvm.dbg.value(metadata i32 %48, metadata !3845, metadata !DIExpression()), !dbg !3851
  %49 = getelementptr inbounds i8, i8* %4, i32 %.12, !dbg !3887
  store i8 48, i8* %49, align 1, !dbg !3888, !tbaa !2141
  br label %38, !dbg !3879, !llvm.loop !3889

50:                                               ; preds = %45
  %.12.lcssa = phi i32 [ %.12, %45 ]
  call void @llvm.dbg.value(metadata i32 %.12.lcssa, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %51, !dbg !3891

51:                                               ; preds = %50, %._crit_edge
  %.2 = phi i32 [ %5, %._crit_edge ], [ %.12.lcssa, %50 ]
  %.1 = phi i32 [ %9, %._crit_edge ], [ %.0, %50 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3849, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3845, metadata !DIExpression()), !dbg !3851
  %52 = and i32 %10, 16, !dbg !3892
  %53 = icmp ne i32 %52, 0, !dbg !3892
  br i1 %53, label %54, label %._crit_edge12, !dbg !3894

._crit_edge12:                                    ; preds = %51
  br label %106, !dbg !3894

54:                                               ; preds = %51
  %55 = and i32 %10, 1024, !dbg !3895
  %56 = icmp ne i32 %55, 0, !dbg !3895
  br i1 %56, label %._crit_edge13, label %57, !dbg !3898

._crit_edge13:                                    ; preds = %54
  br label %71, !dbg !3898

57:                                               ; preds = %54
  %58 = icmp ne i32 %.2, 0, !dbg !3899
  br i1 %58, label %59, label %._crit_edge14, !dbg !3900

._crit_edge14:                                    ; preds = %57
  br label %71, !dbg !3900

59:                                               ; preds = %57
  %60 = icmp eq i32 %.2, %8, !dbg !3901
  br i1 %60, label %._crit_edge15, label %61, !dbg !3902

._crit_edge15:                                    ; preds = %59
  br label %63, !dbg !3902

61:                                               ; preds = %59
  %62 = icmp eq i32 %.2, %.1, !dbg !3903
  br i1 %62, label %._crit_edge16, label %._crit_edge17, !dbg !3904

._crit_edge17:                                    ; preds = %61
  br label %71, !dbg !3904

._crit_edge16:                                    ; preds = %61
  br label %63, !dbg !3904

63:                                               ; preds = %._crit_edge16, %._crit_edge15
  %64 = add i32 %.2, -1, !dbg !3905
  call void @llvm.dbg.value(metadata i32 %64, metadata !3845, metadata !DIExpression()), !dbg !3851
  %65 = icmp ne i32 %64, 0, !dbg !3907
  br i1 %65, label %66, label %._crit_edge18, !dbg !3909

._crit_edge18:                                    ; preds = %63
  br label %70, !dbg !3909

66:                                               ; preds = %63
  %67 = icmp eq i32 %7, 16, !dbg !3910
  br i1 %67, label %68, label %._crit_edge19, !dbg !3911

._crit_edge19:                                    ; preds = %66
  br label %70, !dbg !3911

68:                                               ; preds = %66
  %69 = add i32 %64, -1, !dbg !3912
  call void @llvm.dbg.value(metadata i32 %69, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %70, !dbg !3914

70:                                               ; preds = %68, %._crit_edge19, %._crit_edge18
  %.3 = phi i32 [ %69, %68 ], [ %64, %._crit_edge19 ], [ %64, %._crit_edge18 ], !dbg !3915
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %71, !dbg !3916

71:                                               ; preds = %70, %._crit_edge17, %._crit_edge14, %._crit_edge13
  %.4 = phi i32 [ %.2, %._crit_edge13 ], [ %.3, %70 ], [ %.2, %._crit_edge17 ], [ %.2, %._crit_edge14 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3845, metadata !DIExpression()), !dbg !3851
  %72 = icmp eq i32 %7, 16, !dbg !3917
  br i1 %72, label %73, label %._crit_edge20, !dbg !3919

._crit_edge20:                                    ; preds = %71
  br label %81, !dbg !3919

73:                                               ; preds = %71
  %74 = and i32 %10, 32, !dbg !3920
  %75 = icmp ne i32 %74, 0, !dbg !3920
  br i1 %75, label %._crit_edge21, label %76, !dbg !3921

._crit_edge21:                                    ; preds = %73
  br label %81, !dbg !3921

76:                                               ; preds = %73
  %77 = icmp ult i32 %.4, 32, !dbg !3922
  br i1 %77, label %78, label %._crit_edge22, !dbg !3923

._crit_edge22:                                    ; preds = %76
  br label %81, !dbg !3923

78:                                               ; preds = %76
  %79 = add i32 %.4, 1, !dbg !3924
  call void @llvm.dbg.value(metadata i32 %79, metadata !3845, metadata !DIExpression()), !dbg !3851
  %80 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3926
  store i8 120, i8* %80, align 1, !dbg !3927, !tbaa !2141
  br label %100, !dbg !3928

81:                                               ; preds = %._crit_edge22, %._crit_edge21, %._crit_edge20
  %82 = icmp eq i32 %7, 16, !dbg !3929
  br i1 %82, label %83, label %._crit_edge23, !dbg !3931

._crit_edge23:                                    ; preds = %81
  br label %91, !dbg !3931

83:                                               ; preds = %81
  %84 = and i32 %10, 32, !dbg !3932
  %85 = icmp ne i32 %84, 0, !dbg !3932
  br i1 %85, label %86, label %._crit_edge24, !dbg !3933

._crit_edge24:                                    ; preds = %83
  br label %91, !dbg !3933

86:                                               ; preds = %83
  %87 = icmp ult i32 %.4, 32, !dbg !3934
  br i1 %87, label %88, label %._crit_edge25, !dbg !3935

._crit_edge25:                                    ; preds = %86
  br label %91, !dbg !3935

88:                                               ; preds = %86
  %89 = add i32 %.4, 1, !dbg !3936
  call void @llvm.dbg.value(metadata i32 %89, metadata !3845, metadata !DIExpression()), !dbg !3851
  %90 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3938
  store i8 88, i8* %90, align 1, !dbg !3939, !tbaa !2141
  br label %99, !dbg !3940

91:                                               ; preds = %._crit_edge25, %._crit_edge24, %._crit_edge23
  %92 = icmp eq i32 %7, 2, !dbg !3941
  br i1 %92, label %93, label %._crit_edge26, !dbg !3943

._crit_edge26:                                    ; preds = %91
  br label %98, !dbg !3943

93:                                               ; preds = %91
  %94 = icmp ult i32 %.4, 32, !dbg !3944
  br i1 %94, label %95, label %._crit_edge27, !dbg !3945

._crit_edge27:                                    ; preds = %93
  br label %98, !dbg !3945

95:                                               ; preds = %93
  %96 = add i32 %.4, 1, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %96, metadata !3845, metadata !DIExpression()), !dbg !3851
  %97 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3948
  store i8 98, i8* %97, align 1, !dbg !3949, !tbaa !2141
  br label %98, !dbg !3950

98:                                               ; preds = %95, %._crit_edge27, %._crit_edge26
  %.5 = phi i32 [ %96, %95 ], [ %.4, %._crit_edge27 ], [ %.4, %._crit_edge26 ]
  call void @llvm.dbg.value(metadata i32 %.5, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %99

99:                                               ; preds = %98, %88
  %.6 = phi i32 [ %89, %88 ], [ %.5, %98 ], !dbg !3951
  call void @llvm.dbg.value(metadata i32 %.6, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %100

100:                                              ; preds = %99, %78
  %.7 = phi i32 [ %.6, %99 ], [ %79, %78 ], !dbg !3952
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3845, metadata !DIExpression()), !dbg !3851
  %101 = icmp ult i32 %.7, 32, !dbg !3953
  br i1 %101, label %102, label %._crit_edge28, !dbg !3955

._crit_edge28:                                    ; preds = %100
  br label %105, !dbg !3955

102:                                              ; preds = %100
  %103 = add i32 %.7, 1, !dbg !3956
  call void @llvm.dbg.value(metadata i32 %103, metadata !3845, metadata !DIExpression()), !dbg !3851
  %104 = getelementptr inbounds i8, i8* %4, i32 %.7, !dbg !3958
  store i8 48, i8* %104, align 1, !dbg !3959, !tbaa !2141
  br label %105, !dbg !3960

105:                                              ; preds = %102, %._crit_edge28
  %.8 = phi i32 [ %103, %102 ], [ %.7, %._crit_edge28 ], !dbg !3961
  call void @llvm.dbg.value(metadata i32 %.8, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %106, !dbg !3962

106:                                              ; preds = %105, %._crit_edge12
  %.9 = phi i32 [ %.8, %105 ], [ %.2, %._crit_edge12 ]
  call void @llvm.dbg.value(metadata i32 %.9, metadata !3845, metadata !DIExpression()), !dbg !3851
  %107 = icmp ult i32 %.9, 32, !dbg !3963
  br i1 %107, label %108, label %._crit_edge29, !dbg !3965

._crit_edge29:                                    ; preds = %106
  br label %128, !dbg !3965

108:                                              ; preds = %106
  %109 = trunc i8 %12 to i1, !dbg !3966
  br i1 %109, label %110, label %113, !dbg !3969

110:                                              ; preds = %108
  %111 = add i32 %.9, 1, !dbg !3970
  call void @llvm.dbg.value(metadata i32 %111, metadata !3845, metadata !DIExpression()), !dbg !3851
  %112 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3972
  store i8 45, i8* %112, align 1, !dbg !3973, !tbaa !2141
  br label %127, !dbg !3974

113:                                              ; preds = %108
  %114 = and i32 %10, 4, !dbg !3975
  %115 = icmp ne i32 %114, 0, !dbg !3975
  br i1 %115, label %116, label %119, !dbg !3977

116:                                              ; preds = %113
  %117 = add i32 %.9, 1, !dbg !3978
  call void @llvm.dbg.value(metadata i32 %117, metadata !3845, metadata !DIExpression()), !dbg !3851
  %118 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3980
  store i8 43, i8* %118, align 1, !dbg !3981, !tbaa !2141
  br label %126, !dbg !3982

119:                                              ; preds = %113
  %120 = and i32 %10, 8, !dbg !3983
  %121 = icmp ne i32 %120, 0, !dbg !3983
  br i1 %121, label %122, label %._crit_edge30, !dbg !3985

._crit_edge30:                                    ; preds = %119
  br label %125, !dbg !3985

122:                                              ; preds = %119
  %123 = add i32 %.9, 1, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %123, metadata !3845, metadata !DIExpression()), !dbg !3851
  %124 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3988
  store i8 32, i8* %124, align 1, !dbg !3989, !tbaa !2141
  br label %125, !dbg !3990

125:                                              ; preds = %122, %._crit_edge30
  %.10 = phi i32 [ %123, %122 ], [ %.9, %._crit_edge30 ], !dbg !3851
  call void @llvm.dbg.value(metadata i32 %.10, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %126

126:                                              ; preds = %125, %116
  %.11 = phi i32 [ %117, %116 ], [ %.10, %125 ], !dbg !3991
  call void @llvm.dbg.value(metadata i32 %.11, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %127

127:                                              ; preds = %126, %110
  %.123 = phi i32 [ %111, %110 ], [ %.11, %126 ], !dbg !3992
  call void @llvm.dbg.value(metadata i32 %.123, metadata !3845, metadata !DIExpression()), !dbg !3851
  br label %128, !dbg !3993

128:                                              ; preds = %127, %._crit_edge29
  %.13 = phi i32 [ %.123, %127 ], [ %.9, %._crit_edge29 ], !dbg !3851
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3845, metadata !DIExpression()), !dbg !3851
  %129 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %.13, i32 %.1, i32 %10), !dbg !3994
  ret i32 %129, !dbg !3995
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @sprintf_(i8*, i8*, ...) #0 !dbg !3996 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i8* %1, metadata !4001, metadata !DIExpression()), !dbg !4004
  %4 = bitcast %struct.__va_list* %3 to i8*, !dbg !4005
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !4005
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4002, metadata !DIExpression()), !dbg !4006
  %5 = bitcast %struct.__va_list* %3 to i8*, !dbg !4007
  call void @llvm.va_start(i8* %5), !dbg !4007
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4008
  %7 = bitcast i8** %6 to [1 x i32]*, !dbg !4008
  %8 = load [1 x i32], [1 x i32]* %7, align 4, !dbg !4008
  %9 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 -1, i8* %1, [1 x i32] %8), !dbg !4008
  call void @llvm.dbg.value(metadata i32 %9, metadata !4003, metadata !DIExpression()), !dbg !4004
  %10 = bitcast %struct.__va_list* %3 to i8*, !dbg !4009
  call void @llvm.va_end(i8* %10), !dbg !4009
  %11 = bitcast %struct.__va_list* %3 to i8*, !dbg !4010
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !4010
  ret i32 %9, !dbg !4011
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_buffer(i8 zeroext, i8*, i32, i32) #5 !dbg !4012 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4014, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i8* %1, metadata !4015, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 %2, metadata !4016, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 %3, metadata !4017, metadata !DIExpression()), !dbg !4018
  %5 = icmp ult i32 %2, %3, !dbg !4019
  br i1 %5, label %6, label %._crit_edge, !dbg !4021

._crit_edge:                                      ; preds = %4
  br label %8, !dbg !4021

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %1, i32 %2, !dbg !4022
  store i8 %0, i8* %7, align 1, !dbg !4024, !tbaa !2141
  br label %8, !dbg !4025

8:                                                ; preds = %6, %._crit_edge
  ret void, !dbg !4026
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @snprintf_(i8*, i32, i8*, ...) #0 !dbg !4027 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4031, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 %1, metadata !4032, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8* %2, metadata !4033, metadata !DIExpression()), !dbg !4036
  %5 = bitcast %struct.__va_list* %4 to i8*, !dbg !4037
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !4037
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4034, metadata !DIExpression()), !dbg !4038
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4039
  call void @llvm.va_start(i8* %6), !dbg !4039
  %7 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4040
  %8 = bitcast i8** %7 to [1 x i32]*, !dbg !4040
  %9 = load [1 x i32], [1 x i32]* %8, align 4, !dbg !4040
  %10 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %9), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %10, metadata !4035, metadata !DIExpression()), !dbg !4036
  %11 = bitcast %struct.__va_list* %4 to i8*, !dbg !4041
  call void @llvm.va_end(i8* %11), !dbg !4041
  %12 = bitcast %struct.__va_list* %4 to i8*, !dbg !4042
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !4042
  ret i32 %10, !dbg !4043
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vprintf_(i8*, [1 x i32]) #0 !dbg !4044 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %6 = bitcast i8** %5 to [1 x i32]*
  store [1 x i32] %1, [1 x i32]* %6, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4048, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4049, metadata !DIExpression()), !dbg !4052
  %7 = bitcast [1 x i8]* %4 to i8*, !dbg !4053
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #4, !dbg !4053
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !4050, metadata !DIExpression()), !dbg !4054
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !4055
  %9 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4056
  %10 = bitcast i8** %9 to [1 x i32]*, !dbg !4056
  %11 = load [1 x i32], [1 x i32]* %10, align 4, !dbg !4056
  %12 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %8, i32 -1, i8* %0, [1 x i32] %11), !dbg !4056
  %13 = bitcast [1 x i8]* %4 to i8*, !dbg !4057
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4, !dbg !4057
  ret i32 %12, !dbg !4058
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vsnprintf_(i8*, i32, i8*, [1 x i32]) #0 !dbg !4059 {
  %5 = alloca %struct.__va_list, align 4
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0
  %7 = bitcast i8** %6 to [1 x i32]*
  store [1 x i32] %3, [1 x i32]* %7, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4063, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i32 %1, metadata !4064, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i8* %2, metadata !4065, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.declare(metadata %struct.__va_list* %5, metadata !4066, metadata !DIExpression()), !dbg !4068
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0, !dbg !4069
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !4069
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !4069
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %10), !dbg !4069
  ret i32 %11, !dbg !4070
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @fctprintf(void (i8, i8*)*, i8*, i8*, ...) #0 !dbg !4071 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.out_fct_wrap_type, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*)* %0, metadata !4075, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8* %1, metadata !4076, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8* %2, metadata !4077, metadata !DIExpression()), !dbg !4082
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4083
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !4083
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4078, metadata !DIExpression()), !dbg !4084
  %7 = bitcast %struct.__va_list* %4 to i8*, !dbg !4085
  call void @llvm.va_start(i8* %7), !dbg !4085
  %8 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4086
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !4086
  call void @llvm.dbg.declare(metadata %struct.out_fct_wrap_type* %5, metadata !4079, metadata !DIExpression()), !dbg !4087
  %9 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 0, !dbg !4088
  store void (i8, i8*)* %0, void (i8, i8*)** %9, align 4, !dbg !4088, !tbaa !4089
  %10 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 1, !dbg !4088
  store i8* %1, i8** %10, align 4, !dbg !4088, !tbaa !4091
  %11 = ptrtoint %struct.out_fct_wrap_type* %5 to i32, !dbg !4092
  %12 = inttoptr i32 %11 to i8*, !dbg !4093
  %13 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4094
  %14 = bitcast i8** %13 to [1 x i32]*, !dbg !4094
  %15 = load [1 x i32], [1 x i32]* %14, align 4, !dbg !4094
  %16 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_fct, i8* %12, i32 -1, i8* %2, [1 x i32] %15), !dbg !4094
  call void @llvm.dbg.value(metadata i32 %16, metadata !4081, metadata !DIExpression()), !dbg !4082
  %17 = bitcast %struct.__va_list* %4 to i8*, !dbg !4095
  call void @llvm.va_end(i8* %17), !dbg !4095
  %18 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #4, !dbg !4096
  %19 = bitcast %struct.__va_list* %4 to i8*, !dbg !4096
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !4096
  ret i32 %16, !dbg !4097
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_fct(i8 zeroext, i8*, i32, i32) #5 !dbg !4098 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4100, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i8* %1, metadata !4101, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %2, metadata !4102, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 %3, metadata !4103, metadata !DIExpression()), !dbg !4104
  %5 = icmp ne i8 %0, 0, !dbg !4105
  br i1 %5, label %6, label %._crit_edge, !dbg !4107

._crit_edge:                                      ; preds = %4
  br label %13, !dbg !4107

6:                                                ; preds = %4
  %7 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4108
  %8 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %7, i32 0, i32 0, !dbg !4110
  %9 = load void (i8, i8*)*, void (i8, i8*)** %8, align 4, !dbg !4110, !tbaa !4089
  %10 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4111
  %11 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %10, i32 0, i32 1, !dbg !4112
  %12 = load i8*, i8** %11, align 4, !dbg !4112, !tbaa !4091
  call arm_aapcscc void %9(i8 zeroext %0, i8* %12), !dbg !4113
  br label %13, !dbg !4114

13:                                               ; preds = %6, %._crit_edge
  ret void, !dbg !4115
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @putc(i32, i8*) #3 !dbg !4116 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4121, metadata !DIExpression()), !dbg !4123
  store i8* %1, i8** %4, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4122, metadata !DIExpression()), !dbg !4124
  %5 = load i8*, i8** %4, align 4, !dbg !4125, !tbaa !334
  %6 = load i32, i32* %3, align 4, !dbg !4126, !tbaa !1045
  ret i32 %6, !dbg !4127
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_putchar(i8 zeroext) #3 !dbg !4128 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !2141
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4132, metadata !DIExpression()), !dbg !4133
  %3 = load i8, i8* %2, align 1, !dbg !4134, !tbaa !2141
  %4 = zext i8 %3 to i32, !dbg !4134
  %5 = call arm_aapcscc i32 @putc(i32 %4, i8* %2), !dbg !4135
  ret void, !dbg !4136
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #6 !dbg !4137 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #4, !dbg !4138, !srcloc !4139
  call void asm sideeffect "    ldr    sp, [r1]", ""() #4, !dbg !4140, !srcloc !4141
  call void asm sideeffect "bl __checkpoint_startup_restore", ""() #4, !dbg !4142, !srcloc !4143
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #4, !dbg !4144, !srcloc !4145
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #4, !dbg !4146, !srcloc !4147
  call void asm sideeffect "bl __checkpoint_startup_checkpoint", ""() #4, !dbg !4148, !srcloc !4149
  call void asm sideeffect "    bl   main\0A", ""() #4, !dbg !4150, !srcloc !4151
  call void asm sideeffect "    bkpt     ", ""() #4, !dbg !4152, !srcloc !4153
  unreachable, !dbg !4154
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @NMI_Handler() #0 !dbg !4155 {
  br label %1, !dbg !4156

1:                                                ; preds = %1, %0
  br label %1, !dbg !4156, !llvm.loop !4157
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @HardFault_Handler() #0 !dbg !4159 {
  br label %1, !dbg !4160

1:                                                ; preds = %1, %0
  br label %1, !dbg !4160, !llvm.loop !4161
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 !dbg !4163 {
  br label %1, !dbg !4164

1:                                                ; preds = %1, %0
  br label %1, !dbg !4164, !llvm.loop !4165
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @__checkpoint_startup_checkpoint() #0 !dbg !4167 {
  ret void, !dbg !4168
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @__checkpoint_startup_restore() #0 !dbg !4169 {
  ret void, !dbg !4170
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
!1176 = !DILocation(line: 199, column: 10, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 199, column: 5)
!1178 = !DILocation(line: 199, column: 19, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1177, file: !74, line: 199, column: 5)
!1180 = !DILocation(line: 199, column: 5, scope: !1177)
!1181 = !DILocation(line: 201, column: 16, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !74, line: 201, column: 13)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !74, line: 200, column: 5)
!1184 = !DILocation(line: 201, column: 32, scope: !1182)
!1185 = !DILocation(line: 201, column: 43, scope: !1182)
!1186 = !DILocation(line: 201, column: 30, scope: !1182)
!1187 = !DILocation(line: 201, column: 13, scope: !1183)
!1188 = !DILocation(line: 202, column: 27, scope: !1182)
!1189 = !DILocation(line: 202, column: 13, scope: !1182)
!1190 = !DILocation(line: 203, column: 5, scope: !1183)
!1191 = !DILocation(line: 199, column: 38, scope: !1179)
!1192 = !DILocation(line: 199, column: 5, scope: !1179)
!1193 = distinct !{!1193, !1180, !1194}
!1194 = !DILocation(line: 203, column: 5, scope: !1177)
!1195 = !DILocation(line: 204, column: 10, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 204, column: 5)
!1197 = !DILocation(line: 0, scope: !1196)
!1198 = !DILocation(line: 204, column: 5, scope: !1196)
!1199 = !DILocation(line: 205, column: 27, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !74, line: 204, column: 5)
!1201 = !DILocation(line: 205, column: 38, scope: !1200)
!1202 = !DILocation(line: 205, column: 45, scope: !1200)
!1203 = !DILocation(line: 205, column: 43, scope: !1200)
!1204 = !DILocation(line: 205, column: 9, scope: !1200)
!1205 = !DILocation(line: 205, column: 20, scope: !1200)
!1206 = !DILocation(line: 205, column: 25, scope: !1200)
!1207 = !DILocation(line: 204, column: 35, scope: !1200)
!1208 = !DILocation(line: 207, column: 10, scope: !1040)
!1209 = !DILocation(line: 207, column: 19, scope: !1039)
!1210 = !DILocation(line: 207, column: 5, scope: !1040)
!1211 = !DILocation(line: 210, column: 16, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1038, file: !74, line: 210, column: 13)
!1213 = !DILocation(line: 210, column: 32, scope: !1212)
!1214 = !DILocation(line: 210, column: 43, scope: !1212)
!1215 = !DILocation(line: 210, column: 30, scope: !1212)
!1216 = !DILocation(line: 210, column: 13, scope: !1038)
!1217 = !DILocation(line: 0, scope: !1038)
!1218 = !DILocation(line: 212, column: 18, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !74, line: 212, column: 13)
!1220 = distinct !DILexicalBlock(scope: !1212, file: !74, line: 211, column: 9)
!1221 = !DILocation(line: 0, scope: !1219)
!1222 = !DILocation(line: 212, column: 31, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !74, line: 212, column: 13)
!1224 = !DILocation(line: 212, column: 13, scope: !1219)
!1225 = !DILocation(line: 214, column: 32, scope: !1223)
!1226 = !DILocation(line: 214, column: 45, scope: !1223)
!1227 = !DILocation(line: 214, column: 60, scope: !1223)
!1228 = !DILocation(line: 214, column: 71, scope: !1223)
!1229 = !DILocation(line: 214, column: 78, scope: !1223)
!1230 = !DILocation(line: 214, column: 76, scope: !1223)
!1231 = !DILocation(line: 214, column: 58, scope: !1223)
!1232 = !DILocation(line: 213, column: 17, scope: !1223)
!1233 = !DILocation(line: 213, column: 30, scope: !1223)
!1234 = !DILocation(line: 213, column: 41, scope: !1223)
!1235 = !DILocation(line: 214, column: 21, scope: !1223)
!1236 = !DILocation(line: 212, column: 49, scope: !1223)
!1237 = !DILocation(line: 212, column: 13, scope: !1223)
!1238 = distinct !{!1238, !1224, !1239}
!1239 = !DILocation(line: 214, column: 78, scope: !1219)
!1240 = !DILocation(line: 215, column: 14, scope: !1220)
!1241 = !DILocation(line: 216, column: 9, scope: !1220)
!1242 = !DILocation(line: 217, column: 5, scope: !1038)
!1243 = !DILocation(line: 207, column: 38, scope: !1039)
!1244 = !DILocation(line: 207, column: 5, scope: !1039)
!1245 = distinct !{!1245, !1210, !1246}
!1246 = !DILocation(line: 217, column: 5, scope: !1040)
!1247 = !DILocation(line: 219, column: 10, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 219, column: 5)
!1249 = !DILocation(line: 0, scope: !1248)
!1250 = !DILocation(line: 219, column: 19, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !74, line: 219, column: 5)
!1252 = !DILocation(line: 219, column: 5, scope: !1248)
!1253 = !DILocation(line: 221, column: 13, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !74, line: 221, column: 13)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !74, line: 220, column: 5)
!1256 = !DILocation(line: 221, column: 24, scope: !1254)
!1257 = !DILocation(line: 221, column: 30, scope: !1254)
!1258 = !DILocation(line: 221, column: 13, scope: !1255)
!1259 = !DILocation(line: 224, column: 17, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1254, file: !74, line: 222, column: 9)
!1261 = !DILocation(line: 224, column: 28, scope: !1260)
!1262 = !DILocation(line: 224, column: 34, scope: !1260)
!1263 = !DILocation(line: 224, column: 45, scope: !1260)
!1264 = !DILocation(line: 224, column: 58, scope: !1260)
!1265 = !DILocation(line: 224, column: 69, scope: !1260)
!1266 = !DILocation(line: 223, column: 31, scope: !1260)
!1267 = !DILocation(line: 223, column: 13, scope: !1260)
!1268 = !DILocation(line: 223, column: 24, scope: !1260)
!1269 = !DILocation(line: 223, column: 29, scope: !1260)
!1270 = !DILocation(line: 225, column: 9, scope: !1260)
!1271 = !DILocation(line: 226, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1255, file: !74, line: 226, column: 13)
!1273 = !DILocation(line: 226, column: 24, scope: !1272)
!1274 = !DILocation(line: 226, column: 30, scope: !1272)
!1275 = !DILocation(line: 226, column: 13, scope: !1255)
!1276 = !DILocation(line: 228, column: 30, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !74, line: 227, column: 9)
!1278 = !DILocation(line: 228, column: 41, scope: !1277)
!1279 = !DILocation(line: 229, column: 30, scope: !1277)
!1280 = !DILocation(line: 229, column: 41, scope: !1277)
!1281 = !DILocation(line: 230, column: 38, scope: !1277)
!1282 = !DILocation(line: 230, column: 49, scope: !1277)
!1283 = !DILocation(line: 230, column: 30, scope: !1277)
!1284 = !DILocation(line: 231, column: 46, scope: !1277)
!1285 = !DILocation(line: 231, column: 57, scope: !1277)
!1286 = !DILocation(line: 231, column: 38, scope: !1277)
!1287 = !DILocation(line: 231, column: 64, scope: !1277)
!1288 = !DILocation(line: 231, column: 34, scope: !1277)
!1289 = !DILocation(line: 232, column: 32, scope: !1277)
!1290 = !DILocation(line: 232, column: 43, scope: !1277)
!1291 = !DILocation(line: 228, column: 13, scope: !1277)
!1292 = !DILocation(line: 233, column: 9, scope: !1277)
!1293 = !DILocation(line: 234, column: 13, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1255, file: !74, line: 234, column: 13)
!1295 = !DILocation(line: 234, column: 24, scope: !1294)
!1296 = !DILocation(line: 234, column: 30, scope: !1294)
!1297 = !DILocation(line: 234, column: 13, scope: !1255)
!1298 = !DILocation(line: 237, column: 17, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !74, line: 235, column: 9)
!1300 = !DILocation(line: 237, column: 28, scope: !1299)
!1301 = !DILocation(line: 237, column: 34, scope: !1299)
!1302 = !DILocation(line: 237, column: 45, scope: !1299)
!1303 = !DILocation(line: 237, column: 52, scope: !1299)
!1304 = !DILocation(line: 237, column: 63, scope: !1299)
!1305 = !DILocation(line: 236, column: 13, scope: !1299)
!1306 = !DILocation(line: 238, column: 9, scope: !1299)
!1307 = !DILocation(line: 239, column: 5, scope: !1255)
!1308 = !DILocation(line: 219, column: 35, scope: !1251)
!1309 = !DILocation(line: 219, column: 5, scope: !1251)
!1310 = distinct !{!1310, !1252, !1311}
!1311 = !DILocation(line: 239, column: 5, scope: !1248)
!1312 = !DILocation(line: 242, column: 9, scope: !1043)
!1313 = !DILocation(line: 242, column: 20, scope: !1043)
!1314 = !DILocation(line: 242, column: 31, scope: !1043)
!1315 = !DILocation(line: 242, column: 9, scope: !1015)
!1316 = !DILocation(line: 0, scope: !1042)
!1317 = !DILocation(line: 246, column: 9, scope: !1042)
!1318 = !DILocation(line: 246, column: 20, scope: !1042)
!1319 = !DILocation(line: 246, column: 31, scope: !1042)
!1320 = !DILocation(line: 247, column: 9, scope: !1042)
!1321 = !DILocation(line: 247, column: 28, scope: !1042)
!1322 = !DILocation(line: 249, column: 13, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1042, file: !74, line: 248, column: 9)
!1324 = !DILocation(line: 249, column: 24, scope: !1323)
!1325 = !DILocation(line: 249, column: 35, scope: !1323)
!1326 = !DILocation(line: 250, column: 13, scope: !1323)
!1327 = !DILocation(line: 251, column: 22, scope: !1323)
!1328 = !DILocation(line: 251, column: 21, scope: !1323)
!1329 = !DILocation(line: 251, column: 13, scope: !1323)
!1330 = !DILocation(line: 252, column: 13, scope: !1323)
!1331 = !DILocation(line: 253, column: 40, scope: !1323)
!1332 = !DILocation(line: 253, column: 27, scope: !1323)
!1333 = distinct !{!1333, !1320, !1334}
!1334 = !DILocation(line: 254, column: 9, scope: !1042)
!1335 = !DILocation(line: 257, column: 19, scope: !1042)
!1336 = !DILocation(line: 258, column: 21, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1042, file: !74, line: 258, column: 13)
!1338 = !DILocation(line: 258, column: 13, scope: !1042)
!1339 = !DILocation(line: 261, column: 13, scope: !1337)
!1340 = !DILocation(line: 262, column: 41, scope: !1042)
!1341 = !DILocation(line: 262, column: 36, scope: !1042)
!1342 = !DILocation(line: 262, column: 9, scope: !1042)
!1343 = !DILocation(line: 262, column: 20, scope: !1042)
!1344 = !DILocation(line: 262, column: 31, scope: !1042)
!1345 = !DILocation(line: 263, column: 5, scope: !1042)
!1346 = !DILocation(line: 265, column: 5, scope: !1015)
!1347 = !DILocation(line: 282, column: 14, scope: !1015)
!1348 = !DILocation(line: 282, column: 13, scope: !1015)
!1349 = !DILocation(line: 282, column: 5, scope: !1015)
!1350 = !DILocation(line: 284, column: 5, scope: !1015)
!1351 = !DILocation(line: 285, column: 18, scope: !1015)
!1352 = !DILocation(line: 287, column: 21, scope: !1015)
!1353 = !DILocation(line: 287, column: 32, scope: !1015)
!1354 = !DILocation(line: 287, column: 15, scope: !1015)
!1355 = !DILocation(line: 288, column: 21, scope: !1015)
!1356 = !DILocation(line: 288, column: 32, scope: !1015)
!1357 = !DILocation(line: 288, column: 15, scope: !1015)
!1358 = !DILocation(line: 289, column: 21, scope: !1015)
!1359 = !DILocation(line: 289, column: 32, scope: !1015)
!1360 = !DILocation(line: 289, column: 15, scope: !1015)
!1361 = !DILocation(line: 290, column: 21, scope: !1015)
!1362 = !DILocation(line: 290, column: 32, scope: !1015)
!1363 = !DILocation(line: 290, column: 15, scope: !1015)
!1364 = !DILocation(line: 292, column: 13, scope: !1015)
!1365 = !DILocation(line: 296, column: 13, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 293, column: 5)
!1367 = !DILocation(line: 297, column: 13, scope: !1366)
!1368 = !DILocation(line: 301, column: 13, scope: !1366)
!1369 = !DILocation(line: 302, column: 13, scope: !1366)
!1370 = !DILocation(line: 306, column: 13, scope: !1366)
!1371 = !DILocation(line: 307, column: 13, scope: !1366)
!1372 = !DILocation(line: 310, column: 13, scope: !1366)
!1373 = !DILocation(line: 311, column: 13, scope: !1366)
!1374 = !DILocation(line: 315, column: 13, scope: !1366)
!1375 = !DILocation(line: 316, column: 13, scope: !1366)
!1376 = !DILocation(line: 319, column: 13, scope: !1366)
!1377 = !DILocation(line: 321, column: 9, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 321, column: 9)
!1379 = !DILocation(line: 321, column: 18, scope: !1378)
!1380 = !DILocation(line: 321, column: 9, scope: !1015)
!1381 = !DILocation(line: 323, column: 14, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !74, line: 323, column: 9)
!1383 = distinct !DILexicalBlock(scope: !1378, file: !74, line: 322, column: 5)
!1384 = !DILocation(line: 0, scope: !1382)
!1385 = !DILocation(line: 323, column: 21, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !74, line: 323, column: 9)
!1387 = !DILocation(line: 323, column: 25, scope: !1386)
!1388 = !DILocation(line: 323, column: 23, scope: !1386)
!1389 = !DILocation(line: 323, column: 9, scope: !1382)
!1390 = !DILocation(line: 325, column: 13, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !74, line: 324, column: 9)
!1392 = !DILocation(line: 325, column: 24, scope: !1391)
!1393 = !DILocation(line: 325, column: 28, scope: !1391)
!1394 = !DILocation(line: 326, column: 18, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !74, line: 326, column: 17)
!1396 = !DILocation(line: 326, column: 29, scope: !1395)
!1397 = !DILocation(line: 326, column: 35, scope: !1395)
!1398 = !DILocation(line: 327, column: 17, scope: !1395)
!1399 = !DILocation(line: 327, column: 21, scope: !1395)
!1400 = !DILocation(line: 327, column: 32, scope: !1395)
!1401 = !DILocation(line: 327, column: 43, scope: !1395)
!1402 = !DILocation(line: 327, column: 40, scope: !1395)
!1403 = !DILocation(line: 326, column: 17, scope: !1391)
!1404 = !DILocation(line: 330, column: 27, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1395, file: !74, line: 328, column: 13)
!1406 = !DILocation(line: 331, column: 27, scope: !1405)
!1407 = !DILocation(line: 331, column: 38, scope: !1405)
!1408 = !DILocation(line: 332, column: 27, scope: !1405)
!1409 = !DILocation(line: 329, column: 17, scope: !1405)
!1410 = !DILocation(line: 333, column: 17, scope: !1405)
!1411 = !DILocation(line: 333, column: 28, scope: !1405)
!1412 = !DILocation(line: 333, column: 31, scope: !1405)
!1413 = !DILocation(line: 334, column: 13, scope: !1405)
!1414 = !DILocation(line: 335, column: 18, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1391, file: !74, line: 335, column: 17)
!1416 = !DILocation(line: 335, column: 29, scope: !1415)
!1417 = !DILocation(line: 335, column: 35, scope: !1415)
!1418 = !DILocation(line: 336, column: 17, scope: !1415)
!1419 = !DILocation(line: 336, column: 21, scope: !1415)
!1420 = !DILocation(line: 336, column: 32, scope: !1415)
!1421 = !DILocation(line: 336, column: 45, scope: !1415)
!1422 = !DILocation(line: 336, column: 42, scope: !1415)
!1423 = !DILocation(line: 335, column: 17, scope: !1391)
!1424 = !DILocation(line: 339, column: 27, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1415, file: !74, line: 337, column: 13)
!1426 = !DILocation(line: 340, column: 27, scope: !1425)
!1427 = !DILocation(line: 340, column: 38, scope: !1425)
!1428 = !DILocation(line: 341, column: 27, scope: !1425)
!1429 = !DILocation(line: 338, column: 17, scope: !1425)
!1430 = !DILocation(line: 342, column: 17, scope: !1425)
!1431 = !DILocation(line: 342, column: 28, scope: !1425)
!1432 = !DILocation(line: 342, column: 31, scope: !1425)
!1433 = !DILocation(line: 343, column: 13, scope: !1425)
!1434 = !DILocation(line: 344, column: 18, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1391, file: !74, line: 344, column: 17)
!1436 = !DILocation(line: 344, column: 29, scope: !1435)
!1437 = !DILocation(line: 344, column: 35, scope: !1435)
!1438 = !DILocation(line: 345, column: 17, scope: !1435)
!1439 = !DILocation(line: 345, column: 21, scope: !1435)
!1440 = !DILocation(line: 345, column: 32, scope: !1435)
!1441 = !DILocation(line: 345, column: 44, scope: !1435)
!1442 = !DILocation(line: 345, column: 41, scope: !1435)
!1443 = !DILocation(line: 344, column: 17, scope: !1391)
!1444 = !DILocation(line: 348, column: 27, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !74, line: 346, column: 13)
!1446 = !DILocation(line: 349, column: 27, scope: !1445)
!1447 = !DILocation(line: 349, column: 38, scope: !1445)
!1448 = !DILocation(line: 350, column: 27, scope: !1445)
!1449 = !DILocation(line: 347, column: 17, scope: !1445)
!1450 = !DILocation(line: 351, column: 17, scope: !1445)
!1451 = !DILocation(line: 351, column: 28, scope: !1445)
!1452 = !DILocation(line: 351, column: 31, scope: !1445)
!1453 = !DILocation(line: 352, column: 13, scope: !1445)
!1454 = !DILocation(line: 353, column: 29, scope: !1391)
!1455 = !DILocation(line: 353, column: 40, scope: !1391)
!1456 = !DILocation(line: 353, column: 26, scope: !1391)
!1457 = !DILocation(line: 354, column: 9, scope: !1391)
!1458 = !DILocation(line: 323, column: 48, scope: !1386)
!1459 = !DILocation(line: 323, column: 9, scope: !1386)
!1460 = distinct !{!1460, !1389, !1461}
!1461 = !DILocation(line: 354, column: 9, scope: !1382)
!1462 = !DILocation(line: 355, column: 5, scope: !1383)
!1463 = !DILocation(line: 318, column: 26, scope: !1366)
!1464 = !DILocation(line: 356, column: 21, scope: !1015)
!1465 = !DILocation(line: 356, column: 18, scope: !1015)
!1466 = !DILocation(line: 358, column: 58, scope: !1015)
!1467 = !DILocation(line: 358, column: 69, scope: !1015)
!1468 = !DILocation(line: 358, column: 5, scope: !1015)
!1469 = !DILocation(line: 359, column: 5, scope: !1015)
!1470 = !DILocation(line: 361, column: 42, scope: !1015)
!1471 = !DILocation(line: 361, column: 5, scope: !1015)
!1472 = !DILocation(line: 362, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 362, column: 9)
!1474 = !DILocation(line: 362, column: 34, scope: !1473)
!1475 = !DILocation(line: 362, column: 9, scope: !1015)
!1476 = !DILocation(line: 364, column: 19, scope: !1473)
!1477 = !DILocation(line: 364, column: 42, scope: !1473)
!1478 = !DILocation(line: 364, column: 53, scope: !1473)
!1479 = !DILocation(line: 364, column: 40, scope: !1473)
!1480 = !DILocation(line: 365, column: 25, scope: !1473)
!1481 = !DILocation(line: 365, column: 23, scope: !1473)
!1482 = !DILocation(line: 363, column: 9, scope: !1473)
!1483 = !DILocation(line: 373, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 373, column: 9)
!1485 = !DILocation(line: 373, column: 34, scope: !1484)
!1486 = !DILocation(line: 373, column: 9, scope: !1015)
!1487 = !DILocation(line: 375, column: 9, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !74, line: 374, column: 5)
!1489 = !DILocation(line: 377, column: 21, scope: !1488)
!1490 = !DILocation(line: 378, column: 5, scope: !1488)
!1491 = !DILocation(line: 381, column: 30, scope: !1015)
!1492 = !DILocation(line: 381, column: 53, scope: !1015)
!1493 = !DILocation(line: 381, column: 64, scope: !1015)
!1494 = !DILocation(line: 381, column: 51, scope: !1015)
!1495 = !DILocation(line: 380, column: 5, scope: !1015)
!1496 = !DILocation(line: 382, column: 5, scope: !1015)
!1497 = !DILocation(line: 383, column: 5, scope: !1015)
!1498 = !DILocation(line: 387, column: 5, scope: !1015)
!1499 = !DILocation(line: 389, column: 46, scope: !1015)
!1500 = !DILocation(line: 389, column: 5, scope: !1015)
!1501 = !DILocation(line: 390, column: 9, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 390, column: 9)
!1503 = !DILocation(line: 390, column: 20, scope: !1502)
!1504 = !DILocation(line: 390, column: 26, scope: !1502)
!1505 = !DILocation(line: 390, column: 9, scope: !1015)
!1506 = !DILocation(line: 391, column: 14, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !74, line: 391, column: 9)
!1508 = !DILocation(line: 0, scope: !1507)
!1509 = !DILocation(line: 391, column: 21, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !74, line: 391, column: 9)
!1511 = !DILocation(line: 391, column: 25, scope: !1510)
!1512 = !DILocation(line: 391, column: 23, scope: !1510)
!1513 = !DILocation(line: 391, column: 9, scope: !1507)
!1514 = !DILocation(line: 392, column: 55, scope: !1510)
!1515 = !DILocation(line: 392, column: 58, scope: !1510)
!1516 = !DILocation(line: 392, column: 69, scope: !1510)
!1517 = !DILocation(line: 392, column: 13, scope: !1510)
!1518 = !DILocation(line: 391, column: 48, scope: !1510)
!1519 = !DILocation(line: 391, column: 9, scope: !1510)
!1520 = distinct !{!1520, !1513, !1521}
!1521 = !DILocation(line: 392, column: 76, scope: !1507)
!1522 = !DILocation(line: 393, column: 9, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 393, column: 9)
!1524 = !DILocation(line: 393, column: 20, scope: !1523)
!1525 = !DILocation(line: 393, column: 26, scope: !1523)
!1526 = !DILocation(line: 393, column: 9, scope: !1015)
!1527 = !DILocation(line: 394, column: 14, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !74, line: 394, column: 9)
!1529 = !DILocation(line: 0, scope: !1528)
!1530 = !DILocation(line: 394, column: 21, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !74, line: 394, column: 9)
!1532 = !DILocation(line: 394, column: 25, scope: !1531)
!1533 = !DILocation(line: 394, column: 23, scope: !1531)
!1534 = !DILocation(line: 394, column: 9, scope: !1528)
!1535 = !DILocation(line: 395, column: 55, scope: !1531)
!1536 = !DILocation(line: 395, column: 58, scope: !1531)
!1537 = !DILocation(line: 395, column: 69, scope: !1531)
!1538 = !DILocation(line: 395, column: 13, scope: !1531)
!1539 = !DILocation(line: 394, column: 48, scope: !1531)
!1540 = !DILocation(line: 394, column: 9, scope: !1531)
!1541 = distinct !{!1541, !1534, !1542}
!1542 = !DILocation(line: 395, column: 78, scope: !1528)
!1543 = !DILocation(line: 396, column: 9, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 396, column: 9)
!1545 = !DILocation(line: 396, column: 20, scope: !1544)
!1546 = !DILocation(line: 396, column: 26, scope: !1544)
!1547 = !DILocation(line: 396, column: 9, scope: !1015)
!1548 = !DILocation(line: 397, column: 14, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !74, line: 397, column: 9)
!1550 = !DILocation(line: 0, scope: !1549)
!1551 = !DILocation(line: 397, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !74, line: 397, column: 9)
!1553 = !DILocation(line: 397, column: 25, scope: !1552)
!1554 = !DILocation(line: 397, column: 23, scope: !1552)
!1555 = !DILocation(line: 397, column: 9, scope: !1549)
!1556 = !DILocation(line: 398, column: 55, scope: !1552)
!1557 = !DILocation(line: 398, column: 58, scope: !1552)
!1558 = !DILocation(line: 398, column: 69, scope: !1552)
!1559 = !DILocation(line: 398, column: 13, scope: !1552)
!1560 = !DILocation(line: 397, column: 48, scope: !1552)
!1561 = !DILocation(line: 397, column: 9, scope: !1552)
!1562 = distinct !{!1562, !1555, !1563}
!1563 = !DILocation(line: 398, column: 77, scope: !1549)
!1564 = !DILocation(line: 399, column: 10, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 399, column: 5)
!1566 = !DILocation(line: 0, scope: !1565)
!1567 = !DILocation(line: 399, column: 17, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !74, line: 399, column: 5)
!1569 = !DILocation(line: 399, column: 21, scope: !1568)
!1570 = !DILocation(line: 399, column: 19, scope: !1568)
!1571 = !DILocation(line: 399, column: 5, scope: !1565)
!1572 = !DILocation(line: 400, column: 51, scope: !1568)
!1573 = !DILocation(line: 400, column: 54, scope: !1568)
!1574 = !DILocation(line: 400, column: 65, scope: !1568)
!1575 = !DILocation(line: 400, column: 9, scope: !1568)
!1576 = !DILocation(line: 399, column: 44, scope: !1568)
!1577 = !DILocation(line: 399, column: 5, scope: !1568)
!1578 = distinct !{!1578, !1571, !1579}
!1579 = !DILocation(line: 400, column: 68, scope: !1565)
!1580 = !DILocation(line: 401, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 401, column: 9)
!1582 = !DILocation(line: 401, column: 22, scope: !1581)
!1583 = !DILocation(line: 401, column: 9, scope: !1015)
!1584 = !DILocation(line: 403, column: 9, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !74, line: 402, column: 5)
!1586 = !DILocation(line: 407, column: 13, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1585, file: !74, line: 407, column: 13)
!1588 = !DILocation(line: 407, column: 22, scope: !1587)
!1589 = !DILocation(line: 407, column: 13, scope: !1585)
!1590 = !DILocation(line: 410, column: 23, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !74, line: 408, column: 9)
!1592 = !DILocation(line: 410, column: 46, scope: !1591)
!1593 = !DILocation(line: 410, column: 57, scope: !1591)
!1594 = !DILocation(line: 410, column: 44, scope: !1591)
!1595 = !DILocation(line: 411, column: 29, scope: !1591)
!1596 = !DILocation(line: 411, column: 27, scope: !1591)
!1597 = !DILocation(line: 409, column: 13, scope: !1591)
!1598 = !DILocation(line: 415, column: 13, scope: !1591)
!1599 = !DILocation(line: 423, column: 13, scope: !1591)
!1600 = !DILocation(line: 424, column: 9, scope: !1591)
!1601 = !DILocation(line: 426, column: 5, scope: !1585)
!1602 = !DILocation(line: 427, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 427, column: 9)
!1604 = !DILocation(line: 427, column: 22, scope: !1603)
!1605 = !DILocation(line: 427, column: 9, scope: !1015)
!1606 = !DILocation(line: 428, column: 9, scope: !1603)
!1607 = !DILocation(line: 429, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1015, file: !74, line: 429, column: 9)
!1609 = !DILocation(line: 429, column: 22, scope: !1608)
!1610 = !DILocation(line: 429, column: 9, scope: !1015)
!1611 = !DILocation(line: 430, column: 9, scope: !1608)
!1612 = !DILocation(line: 439, column: 21, scope: !1015)
!1613 = !DILocation(line: 439, column: 32, scope: !1015)
!1614 = !DILocation(line: 439, column: 5, scope: !1015)
!1615 = !DILocation(line: 442, column: 1, scope: !1015)
!1616 = !DILocation(line: 441, column: 5, scope: !1015)
!1617 = distinct !DISubprogram(name: "core_bench_matrix", scope: !1618, file: !1618, line: 92, type: !1619, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1629)
!1618 = !DIFile(filename: "src/coremark/core_matrix.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!53, !1621, !12, !53}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_params", file: !8, line: 119, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MAT_PARAMS_S", file: !8, line: 113, size: 128, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1623, file: !8, line: 115, baseType: !43, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1623, file: !8, line: 116, baseType: !45, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1623, file: !8, line: 117, baseType: !45, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1623, file: !8, line: 118, baseType: !49, size: 32, offset: 96)
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637}
!1630 = !DILocalVariable(name: "p", arg: 1, scope: !1617, file: !1618, line: 92, type: !1621)
!1631 = !DILocalVariable(name: "seed", arg: 2, scope: !1617, file: !1618, line: 92, type: !12)
!1632 = !DILocalVariable(name: "crc", arg: 3, scope: !1617, file: !1618, line: 92, type: !53)
!1633 = !DILocalVariable(name: "N", scope: !1617, file: !1618, line: 94, type: !23)
!1634 = !DILocalVariable(name: "C", scope: !1617, file: !1618, line: 95, type: !49)
!1635 = !DILocalVariable(name: "A", scope: !1617, file: !1618, line: 96, type: !45)
!1636 = !DILocalVariable(name: "B", scope: !1617, file: !1618, line: 97, type: !45)
!1637 = !DILocalVariable(name: "val", scope: !1617, file: !1618, line: 98, type: !46)
!1638 = !DILocation(line: 0, scope: !1617)
!1639 = !DILocation(line: 94, column: 22, scope: !1617)
!1640 = !{!330, !328, i64 0}
!1641 = !DILocation(line: 95, column: 22, scope: !1617)
!1642 = !{!330, !329, i64 12}
!1643 = !DILocation(line: 96, column: 22, scope: !1617)
!1644 = !{!330, !329, i64 4}
!1645 = !DILocation(line: 97, column: 22, scope: !1617)
!1646 = !{!330, !329, i64 8}
!1647 = !DILocation(line: 100, column: 17, scope: !1617)
!1648 = !DILocation(line: 100, column: 11, scope: !1617)
!1649 = !DILocation(line: 102, column: 5, scope: !1617)
!1650 = distinct !DISubprogram(name: "matrix_test", scope: !1618, file: !1618, line: 130, type: !1651, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1653)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!12, !23, !49, !45, !45, !46}
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660}
!1654 = !DILocalVariable(name: "N", arg: 1, scope: !1650, file: !1618, line: 130, type: !23)
!1655 = !DILocalVariable(name: "C", arg: 2, scope: !1650, file: !1618, line: 130, type: !49)
!1656 = !DILocalVariable(name: "A", arg: 3, scope: !1650, file: !1618, line: 130, type: !45)
!1657 = !DILocalVariable(name: "B", arg: 4, scope: !1650, file: !1618, line: 130, type: !45)
!1658 = !DILocalVariable(name: "val", arg: 5, scope: !1650, file: !1618, line: 130, type: !46)
!1659 = !DILocalVariable(name: "crc", scope: !1650, file: !1618, line: 132, type: !53)
!1660 = !DILocalVariable(name: "clipval", scope: !1650, file: !1618, line: 133, type: !46)
!1661 = !DILocation(line: 0, scope: !1650)
!1662 = !DILocation(line: 133, column: 22, scope: !1650)
!1663 = !DILocation(line: 135, column: 5, scope: !1650)
!1664 = !DILocation(line: 139, column: 5, scope: !1650)
!1665 = !DILocation(line: 140, column: 17, scope: !1650)
!1666 = !DILocation(line: 140, column: 11, scope: !1650)
!1667 = !DILocation(line: 144, column: 5, scope: !1650)
!1668 = !DILocation(line: 145, column: 17, scope: !1650)
!1669 = !DILocation(line: 145, column: 11, scope: !1650)
!1670 = !DILocation(line: 149, column: 5, scope: !1650)
!1671 = !DILocation(line: 150, column: 17, scope: !1650)
!1672 = !DILocation(line: 150, column: 11, scope: !1650)
!1673 = !DILocation(line: 154, column: 5, scope: !1650)
!1674 = !DILocation(line: 155, column: 17, scope: !1650)
!1675 = !DILocation(line: 155, column: 11, scope: !1650)
!1676 = !DILocation(line: 160, column: 29, scope: !1650)
!1677 = !DILocation(line: 160, column: 28, scope: !1650)
!1678 = !DILocation(line: 160, column: 5, scope: !1650)
!1679 = !DILocation(line: 161, column: 5, scope: !1650)
!1680 = distinct !DISubprogram(name: "matrix_add_const", scope: !1618, file: !1618, line: 285, type: !1681, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1683)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !23, !45, !46}
!1683 = !{!1684, !1685, !1686, !1687, !1688}
!1684 = !DILocalVariable(name: "N", arg: 1, scope: !1680, file: !1618, line: 285, type: !23)
!1685 = !DILocalVariable(name: "A", arg: 2, scope: !1680, file: !1618, line: 285, type: !45)
!1686 = !DILocalVariable(name: "val", arg: 3, scope: !1680, file: !1618, line: 285, type: !46)
!1687 = !DILocalVariable(name: "i", scope: !1680, file: !1618, line: 287, type: !23)
!1688 = !DILocalVariable(name: "j", scope: !1680, file: !1618, line: 287, type: !23)
!1689 = !DILocation(line: 0, scope: !1680)
!1690 = !DILocation(line: 288, column: 10, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1680, file: !1618, line: 288, column: 5)
!1692 = !DILocation(line: 0, scope: !1691)
!1693 = !DILocation(line: 288, column: 19, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !1618, line: 288, column: 5)
!1695 = !DILocation(line: 288, column: 5, scope: !1691)
!1696 = !DILocation(line: 290, column: 14, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !1618, line: 290, column: 9)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !1618, line: 289, column: 5)
!1699 = !DILocation(line: 0, scope: !1697)
!1700 = !DILocation(line: 290, column: 23, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !1618, line: 290, column: 9)
!1702 = !DILocation(line: 290, column: 9, scope: !1697)
!1703 = !DILocation(line: 292, column: 29, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !1618, line: 291, column: 9)
!1705 = !DILocation(line: 292, column: 17, scope: !1704)
!1706 = !DILocation(line: 292, column: 21, scope: !1704)
!1707 = !DILocation(line: 292, column: 13, scope: !1704)
!1708 = !DILocation(line: 292, column: 26, scope: !1704)
!1709 = !DILocation(line: 293, column: 9, scope: !1704)
!1710 = !DILocation(line: 290, column: 29, scope: !1701)
!1711 = !DILocation(line: 290, column: 9, scope: !1701)
!1712 = distinct !{!1712, !1702, !1713}
!1713 = !DILocation(line: 293, column: 9, scope: !1697)
!1714 = !DILocation(line: 294, column: 5, scope: !1698)
!1715 = !DILocation(line: 288, column: 25, scope: !1694)
!1716 = !DILocation(line: 288, column: 5, scope: !1694)
!1717 = distinct !{!1717, !1695, !1718}
!1718 = !DILocation(line: 294, column: 5, scope: !1691)
!1719 = !DILocation(line: 295, column: 1, scope: !1680)
!1720 = distinct !DISubprogram(name: "matrix_mul_const", scope: !1618, file: !1618, line: 269, type: !1721, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1723)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !23, !49, !45, !46}
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729}
!1724 = !DILocalVariable(name: "N", arg: 1, scope: !1720, file: !1618, line: 269, type: !23)
!1725 = !DILocalVariable(name: "C", arg: 2, scope: !1720, file: !1618, line: 269, type: !49)
!1726 = !DILocalVariable(name: "A", arg: 3, scope: !1720, file: !1618, line: 269, type: !45)
!1727 = !DILocalVariable(name: "val", arg: 4, scope: !1720, file: !1618, line: 269, type: !46)
!1728 = !DILocalVariable(name: "i", scope: !1720, file: !1618, line: 271, type: !23)
!1729 = !DILocalVariable(name: "j", scope: !1720, file: !1618, line: 271, type: !23)
!1730 = !DILocation(line: 0, scope: !1720)
!1731 = !DILocation(line: 272, column: 10, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1720, file: !1618, line: 272, column: 5)
!1733 = !DILocation(line: 0, scope: !1732)
!1734 = !DILocation(line: 272, column: 19, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !1618, line: 272, column: 5)
!1736 = !DILocation(line: 272, column: 5, scope: !1732)
!1737 = !DILocation(line: 274, column: 14, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !1618, line: 274, column: 9)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !1618, line: 273, column: 5)
!1740 = !DILocation(line: 0, scope: !1738)
!1741 = !DILocation(line: 274, column: 23, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !1618, line: 274, column: 9)
!1743 = !DILocation(line: 274, column: 9, scope: !1738)
!1744 = !DILocation(line: 276, column: 40, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !1618, line: 275, column: 9)
!1746 = !DILocation(line: 276, column: 44, scope: !1745)
!1747 = !DILocation(line: 276, column: 36, scope: !1745)
!1748 = !DILocation(line: 276, column: 28, scope: !1745)
!1749 = !DILocation(line: 276, column: 51, scope: !1745)
!1750 = !DILocation(line: 276, column: 49, scope: !1745)
!1751 = !DILocation(line: 276, column: 17, scope: !1745)
!1752 = !DILocation(line: 276, column: 21, scope: !1745)
!1753 = !DILocation(line: 276, column: 13, scope: !1745)
!1754 = !DILocation(line: 276, column: 26, scope: !1745)
!1755 = !DILocation(line: 277, column: 9, scope: !1745)
!1756 = !DILocation(line: 274, column: 29, scope: !1742)
!1757 = !DILocation(line: 274, column: 9, scope: !1742)
!1758 = distinct !{!1758, !1743, !1759}
!1759 = !DILocation(line: 277, column: 9, scope: !1738)
!1760 = !DILocation(line: 278, column: 5, scope: !1739)
!1761 = !DILocation(line: 272, column: 25, scope: !1735)
!1762 = !DILocation(line: 272, column: 5, scope: !1735)
!1763 = distinct !{!1763, !1736, !1764}
!1764 = !DILocation(line: 278, column: 5, scope: !1732)
!1765 = !DILocation(line: 279, column: 1, scope: !1720)
!1766 = distinct !DISubprogram(name: "matrix_sum", scope: !1618, file: !1618, line: 238, type: !1767, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!12, !23, !49, !46}
!1769 = !{!1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1770 = !DILocalVariable(name: "N", arg: 1, scope: !1766, file: !1618, line: 238, type: !23)
!1771 = !DILocalVariable(name: "C", arg: 2, scope: !1766, file: !1618, line: 238, type: !49)
!1772 = !DILocalVariable(name: "clipval", arg: 3, scope: !1766, file: !1618, line: 238, type: !46)
!1773 = !DILocalVariable(name: "tmp", scope: !1766, file: !1618, line: 240, type: !50)
!1774 = !DILocalVariable(name: "prev", scope: !1766, file: !1618, line: 240, type: !50)
!1775 = !DILocalVariable(name: "cur", scope: !1766, file: !1618, line: 240, type: !50)
!1776 = !DILocalVariable(name: "ret", scope: !1766, file: !1618, line: 241, type: !12)
!1777 = !DILocalVariable(name: "i", scope: !1766, file: !1618, line: 242, type: !23)
!1778 = !DILocalVariable(name: "j", scope: !1766, file: !1618, line: 242, type: !23)
!1779 = !DILocation(line: 0, scope: !1766)
!1780 = !DILocation(line: 243, column: 10, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1766, file: !1618, line: 243, column: 5)
!1782 = !DILocation(line: 240, column: 21, scope: !1766)
!1783 = !DILocation(line: 240, column: 12, scope: !1766)
!1784 = !DILocation(line: 241, column: 12, scope: !1766)
!1785 = !DILocation(line: 0, scope: !1781)
!1786 = !DILocation(line: 243, column: 19, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1781, file: !1618, line: 243, column: 5)
!1788 = !DILocation(line: 243, column: 5, scope: !1781)
!1789 = !DILocation(line: 245, column: 14, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !1618, line: 245, column: 9)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !1618, line: 244, column: 5)
!1792 = !DILocation(line: 0, scope: !1790)
!1793 = !DILocation(line: 245, column: 23, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !1618, line: 245, column: 9)
!1795 = !DILocation(line: 245, column: 9, scope: !1790)
!1796 = !DILocation(line: 247, column: 23, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !1618, line: 246, column: 9)
!1798 = !DILocation(line: 247, column: 27, scope: !1797)
!1799 = !DILocation(line: 247, column: 19, scope: !1797)
!1800 = !DILocation(line: 248, column: 17, scope: !1797)
!1801 = !DILocation(line: 249, column: 23, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1797, file: !1618, line: 249, column: 17)
!1803 = !DILocation(line: 249, column: 21, scope: !1802)
!1804 = !DILocation(line: 249, column: 17, scope: !1797)
!1805 = !DILocation(line: 251, column: 21, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !1618, line: 250, column: 13)
!1807 = !DILocation(line: 253, column: 13, scope: !1806)
!1808 = !DILocation(line: 256, column: 29, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1802, file: !1618, line: 255, column: 13)
!1810 = !DILocation(line: 256, column: 24, scope: !1809)
!1811 = !DILocation(line: 256, column: 21, scope: !1809)
!1812 = !DILocation(line: 0, scope: !1797)
!1813 = !DILocation(line: 0, scope: !1802)
!1814 = !DILocation(line: 259, column: 9, scope: !1797)
!1815 = !DILocation(line: 245, column: 29, scope: !1794)
!1816 = !DILocation(line: 245, column: 9, scope: !1794)
!1817 = distinct !{!1817, !1795, !1818}
!1818 = !DILocation(line: 259, column: 9, scope: !1790)
!1819 = !DILocation(line: 260, column: 5, scope: !1791)
!1820 = !DILocation(line: 243, column: 25, scope: !1787)
!1821 = !DILocation(line: 243, column: 5, scope: !1787)
!1822 = distinct !{!1822, !1788, !1823}
!1823 = !DILocation(line: 260, column: 5, scope: !1781)
!1824 = !DILocation(line: 261, column: 5, scope: !1766)
!1825 = distinct !DISubprogram(name: "matrix_mul_vect", scope: !1618, file: !1618, line: 303, type: !1826, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !23, !49, !45, !45}
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834}
!1829 = !DILocalVariable(name: "N", arg: 1, scope: !1825, file: !1618, line: 303, type: !23)
!1830 = !DILocalVariable(name: "C", arg: 2, scope: !1825, file: !1618, line: 303, type: !49)
!1831 = !DILocalVariable(name: "A", arg: 3, scope: !1825, file: !1618, line: 303, type: !45)
!1832 = !DILocalVariable(name: "B", arg: 4, scope: !1825, file: !1618, line: 303, type: !45)
!1833 = !DILocalVariable(name: "i", scope: !1825, file: !1618, line: 305, type: !23)
!1834 = !DILocalVariable(name: "j", scope: !1825, file: !1618, line: 305, type: !23)
!1835 = !DILocation(line: 0, scope: !1825)
!1836 = !DILocation(line: 306, column: 10, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1825, file: !1618, line: 306, column: 5)
!1838 = !DILocation(line: 0, scope: !1837)
!1839 = !DILocation(line: 306, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !1618, line: 306, column: 5)
!1841 = !DILocation(line: 306, column: 5, scope: !1837)
!1842 = !DILocation(line: 308, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !1618, line: 307, column: 5)
!1844 = !DILocation(line: 308, column: 14, scope: !1843)
!1845 = !DILocation(line: 309, column: 14, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !1618, line: 309, column: 9)
!1847 = !DILocation(line: 0, scope: !1846)
!1848 = !DILocation(line: 309, column: 23, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !1618, line: 309, column: 9)
!1850 = !DILocation(line: 309, column: 9, scope: !1846)
!1851 = !DILocation(line: 311, column: 33, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1849, file: !1618, line: 310, column: 9)
!1853 = !DILocation(line: 311, column: 37, scope: !1852)
!1854 = !DILocation(line: 311, column: 29, scope: !1852)
!1855 = !DILocation(line: 311, column: 21, scope: !1852)
!1856 = !DILocation(line: 311, column: 52, scope: !1852)
!1857 = !DILocation(line: 311, column: 44, scope: !1852)
!1858 = !DILocation(line: 311, column: 42, scope: !1852)
!1859 = !DILocation(line: 311, column: 13, scope: !1852)
!1860 = !DILocation(line: 311, column: 18, scope: !1852)
!1861 = !DILocation(line: 312, column: 9, scope: !1852)
!1862 = !DILocation(line: 309, column: 29, scope: !1849)
!1863 = !DILocation(line: 309, column: 9, scope: !1849)
!1864 = distinct !{!1864, !1850, !1865}
!1865 = !DILocation(line: 312, column: 9, scope: !1846)
!1866 = !DILocation(line: 313, column: 5, scope: !1843)
!1867 = !DILocation(line: 306, column: 25, scope: !1840)
!1868 = !DILocation(line: 306, column: 5, scope: !1840)
!1869 = distinct !{!1869, !1841, !1870}
!1870 = !DILocation(line: 313, column: 5, scope: !1837)
!1871 = !DILocation(line: 314, column: 1, scope: !1825)
!1872 = distinct !DISubprogram(name: "matrix_mul_matrix", scope: !1618, file: !1618, line: 322, type: !1826, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880}
!1874 = !DILocalVariable(name: "N", arg: 1, scope: !1872, file: !1618, line: 322, type: !23)
!1875 = !DILocalVariable(name: "C", arg: 2, scope: !1872, file: !1618, line: 322, type: !49)
!1876 = !DILocalVariable(name: "A", arg: 3, scope: !1872, file: !1618, line: 322, type: !45)
!1877 = !DILocalVariable(name: "B", arg: 4, scope: !1872, file: !1618, line: 322, type: !45)
!1878 = !DILocalVariable(name: "i", scope: !1872, file: !1618, line: 324, type: !23)
!1879 = !DILocalVariable(name: "j", scope: !1872, file: !1618, line: 324, type: !23)
!1880 = !DILocalVariable(name: "k", scope: !1872, file: !1618, line: 324, type: !23)
!1881 = !DILocation(line: 0, scope: !1872)
!1882 = !DILocation(line: 325, column: 10, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1872, file: !1618, line: 325, column: 5)
!1884 = !DILocation(line: 0, scope: !1883)
!1885 = !DILocation(line: 325, column: 19, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !1618, line: 325, column: 5)
!1887 = !DILocation(line: 325, column: 5, scope: !1883)
!1888 = !DILocation(line: 327, column: 14, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !1618, line: 327, column: 9)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !1618, line: 326, column: 5)
!1891 = !DILocation(line: 0, scope: !1889)
!1892 = !DILocation(line: 327, column: 23, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !1618, line: 327, column: 9)
!1894 = !DILocation(line: 327, column: 9, scope: !1889)
!1895 = !DILocation(line: 329, column: 17, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1893, file: !1618, line: 328, column: 9)
!1897 = !DILocation(line: 329, column: 21, scope: !1896)
!1898 = !DILocation(line: 329, column: 13, scope: !1896)
!1899 = !DILocation(line: 329, column: 26, scope: !1896)
!1900 = !DILocation(line: 330, column: 18, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !1618, line: 330, column: 13)
!1902 = !DILocation(line: 0, scope: !1901)
!1903 = !DILocation(line: 330, column: 27, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !1618, line: 330, column: 13)
!1905 = !DILocation(line: 330, column: 13, scope: !1901)
!1906 = !DILocation(line: 332, column: 45, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !1618, line: 331, column: 13)
!1908 = !DILocation(line: 332, column: 49, scope: !1907)
!1909 = !DILocation(line: 332, column: 41, scope: !1907)
!1910 = !DILocation(line: 332, column: 33, scope: !1907)
!1911 = !DILocation(line: 332, column: 68, scope: !1907)
!1912 = !DILocation(line: 332, column: 72, scope: !1907)
!1913 = !DILocation(line: 332, column: 64, scope: !1907)
!1914 = !DILocation(line: 332, column: 56, scope: !1907)
!1915 = !DILocation(line: 332, column: 54, scope: !1907)
!1916 = !DILocation(line: 332, column: 21, scope: !1907)
!1917 = !DILocation(line: 332, column: 25, scope: !1907)
!1918 = !DILocation(line: 332, column: 17, scope: !1907)
!1919 = !DILocation(line: 332, column: 30, scope: !1907)
!1920 = !DILocation(line: 333, column: 13, scope: !1907)
!1921 = !DILocation(line: 330, column: 33, scope: !1904)
!1922 = !DILocation(line: 330, column: 13, scope: !1904)
!1923 = distinct !{!1923, !1905, !1924}
!1924 = !DILocation(line: 333, column: 13, scope: !1901)
!1925 = !DILocation(line: 334, column: 9, scope: !1896)
!1926 = !DILocation(line: 327, column: 29, scope: !1893)
!1927 = !DILocation(line: 327, column: 9, scope: !1893)
!1928 = distinct !{!1928, !1894, !1929}
!1929 = !DILocation(line: 334, column: 9, scope: !1889)
!1930 = !DILocation(line: 335, column: 5, scope: !1890)
!1931 = !DILocation(line: 325, column: 25, scope: !1886)
!1932 = !DILocation(line: 325, column: 5, scope: !1886)
!1933 = distinct !{!1933, !1887, !1934}
!1934 = !DILocation(line: 335, column: 5, scope: !1883)
!1935 = !DILocation(line: 336, column: 1, scope: !1872)
!1936 = distinct !DISubprogram(name: "matrix_mul_matrix_bitextract", scope: !1618, file: !1618, line: 344, type: !1826, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1938 = !DILocalVariable(name: "N", arg: 1, scope: !1936, file: !1618, line: 344, type: !23)
!1939 = !DILocalVariable(name: "C", arg: 2, scope: !1936, file: !1618, line: 344, type: !49)
!1940 = !DILocalVariable(name: "A", arg: 3, scope: !1936, file: !1618, line: 344, type: !45)
!1941 = !DILocalVariable(name: "B", arg: 4, scope: !1936, file: !1618, line: 344, type: !45)
!1942 = !DILocalVariable(name: "i", scope: !1936, file: !1618, line: 346, type: !23)
!1943 = !DILocalVariable(name: "j", scope: !1936, file: !1618, line: 346, type: !23)
!1944 = !DILocalVariable(name: "k", scope: !1936, file: !1618, line: 346, type: !23)
!1945 = !DILocalVariable(name: "tmp", scope: !1946, file: !1618, line: 354, type: !50)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !1618, line: 353, column: 13)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !1618, line: 352, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !1618, line: 352, column: 13)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !1618, line: 350, column: 9)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !1618, line: 349, column: 9)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !1618, line: 349, column: 9)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !1618, line: 348, column: 5)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1618, line: 347, column: 5)
!1954 = distinct !DILexicalBlock(scope: !1936, file: !1618, line: 347, column: 5)
!1955 = !DILocation(line: 0, scope: !1936)
!1956 = !DILocation(line: 347, column: 10, scope: !1954)
!1957 = !DILocation(line: 0, scope: !1954)
!1958 = !DILocation(line: 347, column: 19, scope: !1953)
!1959 = !DILocation(line: 347, column: 5, scope: !1954)
!1960 = !DILocation(line: 349, column: 14, scope: !1951)
!1961 = !DILocation(line: 0, scope: !1951)
!1962 = !DILocation(line: 349, column: 23, scope: !1950)
!1963 = !DILocation(line: 349, column: 9, scope: !1951)
!1964 = !DILocation(line: 351, column: 17, scope: !1949)
!1965 = !DILocation(line: 351, column: 21, scope: !1949)
!1966 = !DILocation(line: 351, column: 13, scope: !1949)
!1967 = !DILocation(line: 351, column: 26, scope: !1949)
!1968 = !DILocation(line: 352, column: 18, scope: !1948)
!1969 = !DILocation(line: 0, scope: !1948)
!1970 = !DILocation(line: 352, column: 27, scope: !1947)
!1971 = !DILocation(line: 352, column: 13, scope: !1948)
!1972 = !DILocation(line: 354, column: 42, scope: !1946)
!1973 = !DILocation(line: 354, column: 46, scope: !1946)
!1974 = !DILocation(line: 354, column: 38, scope: !1946)
!1975 = !DILocation(line: 354, column: 30, scope: !1946)
!1976 = !DILocation(line: 354, column: 65, scope: !1946)
!1977 = !DILocation(line: 354, column: 69, scope: !1946)
!1978 = !DILocation(line: 354, column: 61, scope: !1946)
!1979 = !DILocation(line: 354, column: 53, scope: !1946)
!1980 = !DILocation(line: 354, column: 51, scope: !1946)
!1981 = !DILocation(line: 0, scope: !1946)
!1982 = !DILocation(line: 355, column: 33, scope: !1946)
!1983 = !DILocation(line: 355, column: 58, scope: !1946)
!1984 = !DILocation(line: 355, column: 56, scope: !1946)
!1985 = !DILocation(line: 355, column: 21, scope: !1946)
!1986 = !DILocation(line: 355, column: 25, scope: !1946)
!1987 = !DILocation(line: 355, column: 17, scope: !1946)
!1988 = !DILocation(line: 355, column: 30, scope: !1946)
!1989 = !DILocation(line: 356, column: 13, scope: !1946)
!1990 = !DILocation(line: 352, column: 33, scope: !1947)
!1991 = !DILocation(line: 352, column: 13, scope: !1947)
!1992 = distinct !{!1992, !1971, !1993}
!1993 = !DILocation(line: 356, column: 13, scope: !1948)
!1994 = !DILocation(line: 357, column: 9, scope: !1949)
!1995 = !DILocation(line: 349, column: 29, scope: !1950)
!1996 = !DILocation(line: 349, column: 9, scope: !1950)
!1997 = distinct !{!1997, !1963, !1998}
!1998 = !DILocation(line: 357, column: 9, scope: !1951)
!1999 = !DILocation(line: 358, column: 5, scope: !1952)
!2000 = !DILocation(line: 347, column: 25, scope: !1953)
!2001 = !DILocation(line: 347, column: 5, scope: !1953)
!2002 = distinct !{!2002, !1959, !2003}
!2003 = !DILocation(line: 358, column: 5, scope: !1954)
!2004 = !DILocation(line: 359, column: 1, scope: !1936)
!2005 = distinct !DISubprogram(name: "core_init_matrix", scope: !1618, file: !1618, line: 181, type: !2006, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!23, !23, !19, !51, !1621}
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!2009 = !DILocalVariable(name: "blksize", arg: 1, scope: !2005, file: !1618, line: 181, type: !23)
!2010 = !DILocalVariable(name: "memblk", arg: 2, scope: !2005, file: !1618, line: 181, type: !19)
!2011 = !DILocalVariable(name: "seed", arg: 3, scope: !2005, file: !1618, line: 181, type: !51)
!2012 = !DILocalVariable(name: "p", arg: 4, scope: !2005, file: !1618, line: 181, type: !1621)
!2013 = !DILocalVariable(name: "N", scope: !2005, file: !1618, line: 183, type: !23)
!2014 = !DILocalVariable(name: "A", scope: !2005, file: !1618, line: 184, type: !45)
!2015 = !DILocalVariable(name: "B", scope: !2005, file: !1618, line: 185, type: !45)
!2016 = !DILocalVariable(name: "order", scope: !2005, file: !1618, line: 186, type: !51)
!2017 = !DILocalVariable(name: "val", scope: !2005, file: !1618, line: 187, type: !46)
!2018 = !DILocalVariable(name: "i", scope: !2005, file: !1618, line: 188, type: !23)
!2019 = !DILocalVariable(name: "j", scope: !2005, file: !1618, line: 188, type: !23)
!2020 = !DILocation(line: 0, scope: !2005)
!2021 = !DILocation(line: 189, column: 14, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2005, file: !1618, line: 189, column: 9)
!2023 = !DILocation(line: 189, column: 9, scope: !2005)
!2024 = !DILocation(line: 190, column: 9, scope: !2022)
!2025 = !DILocation(line: 191, column: 5, scope: !2005)
!2026 = !DILocation(line: 191, column: 14, scope: !2005)
!2027 = !DILocation(line: 193, column: 10, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2005, file: !1618, line: 192, column: 5)
!2029 = !DILocation(line: 194, column: 15, scope: !2028)
!2030 = !DILocation(line: 194, column: 19, scope: !2028)
!2031 = !DILocation(line: 194, column: 23, scope: !2028)
!2032 = distinct !{!2032, !2025, !2033}
!2033 = !DILocation(line: 195, column: 5, scope: !2005)
!2034 = !DILocation(line: 196, column: 11, scope: !2005)
!2035 = !DILocation(line: 197, column: 19, scope: !2005)
!2036 = !DILocation(line: 197, column: 9, scope: !2005)
!2037 = !DILocation(line: 198, column: 15, scope: !2005)
!2038 = !DILocation(line: 198, column: 11, scope: !2005)
!2039 = !DILocation(line: 200, column: 10, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2005, file: !1618, line: 200, column: 5)
!2041 = !DILocation(line: 186, column: 13, scope: !2005)
!2042 = !DILocation(line: 190, column: 14, scope: !2022)
!2043 = !DILocation(line: 0, scope: !2040)
!2044 = !DILocation(line: 200, column: 19, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2040, file: !1618, line: 200, column: 5)
!2046 = !DILocation(line: 200, column: 5, scope: !2040)
!2047 = !DILocation(line: 202, column: 14, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !1618, line: 202, column: 9)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !1618, line: 201, column: 5)
!2050 = !DILocation(line: 0, scope: !2048)
!2051 = !DILocation(line: 202, column: 23, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !1618, line: 202, column: 9)
!2053 = !DILocation(line: 202, column: 9, scope: !2048)
!2054 = !DILocation(line: 204, column: 36, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !1618, line: 203, column: 9)
!2056 = !DILocation(line: 204, column: 44, scope: !2055)
!2057 = !DILocation(line: 205, column: 34, scope: !2055)
!2058 = !DILocation(line: 205, column: 28, scope: !2055)
!2059 = !DILocation(line: 206, column: 28, scope: !2055)
!2060 = !DILocation(line: 207, column: 17, scope: !2055)
!2061 = !DILocation(line: 207, column: 21, scope: !2055)
!2062 = !DILocation(line: 207, column: 13, scope: !2055)
!2063 = !DILocation(line: 207, column: 26, scope: !2055)
!2064 = !DILocation(line: 208, column: 29, scope: !2055)
!2065 = !DILocation(line: 208, column: 33, scope: !2055)
!2066 = !DILocation(line: 208, column: 28, scope: !2055)
!2067 = !DILocation(line: 209, column: 28, scope: !2055)
!2068 = !DILocation(line: 210, column: 17, scope: !2055)
!2069 = !DILocation(line: 210, column: 21, scope: !2055)
!2070 = !DILocation(line: 210, column: 13, scope: !2055)
!2071 = !DILocation(line: 210, column: 26, scope: !2055)
!2072 = !DILocation(line: 211, column: 18, scope: !2055)
!2073 = !DILocation(line: 212, column: 9, scope: !2055)
!2074 = !DILocation(line: 202, column: 29, scope: !2052)
!2075 = !DILocation(line: 202, column: 9, scope: !2052)
!2076 = distinct !{!2076, !2053, !2077}
!2077 = !DILocation(line: 212, column: 9, scope: !2048)
!2078 = !DILocation(line: 213, column: 5, scope: !2049)
!2079 = !DILocation(line: 200, column: 25, scope: !2045)
!2080 = !DILocation(line: 200, column: 5, scope: !2045)
!2081 = distinct !{!2081, !2046, !2082}
!2082 = !DILocation(line: 213, column: 5, scope: !2040)
!2083 = !DILocation(line: 215, column: 8, scope: !2005)
!2084 = !DILocation(line: 215, column: 10, scope: !2005)
!2085 = !DILocation(line: 216, column: 8, scope: !2005)
!2086 = !DILocation(line: 216, column: 10, scope: !2005)
!2087 = !DILocation(line: 217, column: 22, scope: !2005)
!2088 = !DILocation(line: 217, column: 12, scope: !2005)
!2089 = !DILocation(line: 217, column: 8, scope: !2005)
!2090 = !DILocation(line: 217, column: 10, scope: !2005)
!2091 = !DILocation(line: 218, column: 8, scope: !2005)
!2092 = !DILocation(line: 218, column: 10, scope: !2005)
!2093 = !DILocation(line: 223, column: 5, scope: !2005)
!2094 = distinct !DISubprogram(name: "core_bench_state", scope: !105, file: !105, line: 46, type: !2095, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!53, !23, !107, !12, !12, !12, !53}
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2108, !2109, !2110, !2111, !2113}
!2098 = !DILocalVariable(name: "blksize", arg: 1, scope: !2094, file: !105, line: 46, type: !23)
!2099 = !DILocalVariable(name: "memblock", arg: 2, scope: !2094, file: !105, line: 47, type: !107)
!2100 = !DILocalVariable(name: "seed1", arg: 3, scope: !2094, file: !105, line: 48, type: !12)
!2101 = !DILocalVariable(name: "seed2", arg: 4, scope: !2094, file: !105, line: 49, type: !12)
!2102 = !DILocalVariable(name: "step", arg: 5, scope: !2094, file: !105, line: 50, type: !12)
!2103 = !DILocalVariable(name: "crc", arg: 6, scope: !2094, file: !105, line: 51, type: !53)
!2104 = !DILocalVariable(name: "final_counts", scope: !2094, file: !105, line: 53, type: !2105)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 8)
!2108 = !DILocalVariable(name: "track_counts", scope: !2094, file: !105, line: 54, type: !2105)
!2109 = !DILocalVariable(name: "p", scope: !2094, file: !105, line: 55, type: !107)
!2110 = !DILocalVariable(name: "i", scope: !2094, file: !105, line: 56, type: !23)
!2111 = !DILocalVariable(name: "fstate", scope: !2112, file: !105, line: 68, type: !90)
!2112 = distinct !DILexicalBlock(scope: !2094, file: !105, line: 67, column: 5)
!2113 = !DILocalVariable(name: "fstate", scope: !2114, file: !105, line: 88, type: !90)
!2114 = distinct !DILexicalBlock(scope: !2094, file: !105, line: 87, column: 5)
!2115 = !DILocation(line: 0, scope: !2094)
!2116 = !DILocation(line: 53, column: 5, scope: !2094)
!2117 = !DILocation(line: 53, column: 12, scope: !2094)
!2118 = !DILocation(line: 54, column: 5, scope: !2094)
!2119 = !DILocation(line: 54, column: 12, scope: !2094)
!2120 = !DILocation(line: 55, column: 5, scope: !2094)
!2121 = !DILocation(line: 55, column: 12, scope: !2094)
!2122 = !DILocation(line: 61, column: 10, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2094, file: !105, line: 61, column: 5)
!2124 = !DILocation(line: 0, scope: !2123)
!2125 = !DILocation(line: 61, column: 19, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !105, line: 61, column: 5)
!2127 = !DILocation(line: 61, column: 5, scope: !2123)
!2128 = !DILocation(line: 63, column: 27, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !105, line: 62, column: 5)
!2130 = !DILocation(line: 63, column: 43, scope: !2129)
!2131 = !DILocation(line: 63, column: 9, scope: !2129)
!2132 = !DILocation(line: 63, column: 25, scope: !2129)
!2133 = !DILocation(line: 64, column: 5, scope: !2129)
!2134 = !DILocation(line: 61, column: 39, scope: !2126)
!2135 = !DILocation(line: 61, column: 5, scope: !2126)
!2136 = distinct !{!2136, !2127, !2137}
!2137 = !DILocation(line: 64, column: 5, scope: !2123)
!2138 = !DILocation(line: 66, column: 5, scope: !2094)
!2139 = !DILocation(line: 66, column: 13, scope: !2094)
!2140 = !DILocation(line: 66, column: 12, scope: !2094)
!2141 = !{!296, !296, i64 0}
!2142 = !DILocation(line: 66, column: 15, scope: !2094)
!2143 = !DILocation(line: 68, column: 60, scope: !2112)
!2144 = !DILocation(line: 68, column: 34, scope: !2112)
!2145 = !DILocation(line: 0, scope: !2112)
!2146 = !DILocation(line: 69, column: 9, scope: !2112)
!2147 = !DILocation(line: 69, column: 29, scope: !2112)
!2148 = distinct !{!2148, !2138, !2149}
!2149 = !DILocation(line: 75, column: 5, scope: !2094)
!2150 = !DILocation(line: 77, column: 7, scope: !2094)
!2151 = !DILocation(line: 78, column: 5, scope: !2094)
!2152 = !DILocation(line: 78, column: 12, scope: !2094)
!2153 = !DILocation(line: 78, column: 26, scope: !2094)
!2154 = !DILocation(line: 78, column: 14, scope: !2094)
!2155 = !DILocation(line: 80, column: 14, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !105, line: 80, column: 13)
!2157 = distinct !DILexicalBlock(scope: !2094, file: !105, line: 79, column: 5)
!2158 = !DILocation(line: 80, column: 13, scope: !2156)
!2159 = !DILocation(line: 80, column: 16, scope: !2156)
!2160 = !DILocation(line: 80, column: 13, scope: !2157)
!2161 = !DILocation(line: 81, column: 19, scope: !2156)
!2162 = !DILocation(line: 81, column: 14, scope: !2156)
!2163 = !DILocation(line: 81, column: 16, scope: !2156)
!2164 = !DILocation(line: 81, column: 13, scope: !2156)
!2165 = !DILocation(line: 82, column: 14, scope: !2157)
!2166 = !DILocation(line: 82, column: 11, scope: !2157)
!2167 = distinct !{!2167, !2151, !2168}
!2168 = !DILocation(line: 83, column: 5, scope: !2094)
!2169 = !DILocation(line: 84, column: 7, scope: !2094)
!2170 = !DILocation(line: 86, column: 5, scope: !2094)
!2171 = !DILocation(line: 86, column: 13, scope: !2094)
!2172 = !DILocation(line: 86, column: 12, scope: !2094)
!2173 = !DILocation(line: 86, column: 15, scope: !2094)
!2174 = !DILocation(line: 88, column: 60, scope: !2114)
!2175 = !DILocation(line: 88, column: 34, scope: !2114)
!2176 = !DILocation(line: 0, scope: !2114)
!2177 = !DILocation(line: 89, column: 9, scope: !2114)
!2178 = !DILocation(line: 89, column: 29, scope: !2114)
!2179 = distinct !{!2179, !2170, !2180}
!2180 = !DILocation(line: 95, column: 5, scope: !2094)
!2181 = !DILocation(line: 97, column: 7, scope: !2094)
!2182 = !DILocation(line: 98, column: 5, scope: !2094)
!2183 = !DILocation(line: 98, column: 12, scope: !2094)
!2184 = !DILocation(line: 98, column: 26, scope: !2094)
!2185 = !DILocation(line: 98, column: 14, scope: !2094)
!2186 = !DILocation(line: 100, column: 14, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !105, line: 100, column: 13)
!2188 = distinct !DILexicalBlock(scope: !2094, file: !105, line: 99, column: 5)
!2189 = !DILocation(line: 100, column: 13, scope: !2187)
!2190 = !DILocation(line: 100, column: 16, scope: !2187)
!2191 = !DILocation(line: 100, column: 13, scope: !2188)
!2192 = !DILocation(line: 101, column: 19, scope: !2187)
!2193 = !DILocation(line: 101, column: 14, scope: !2187)
!2194 = !DILocation(line: 101, column: 16, scope: !2187)
!2195 = !DILocation(line: 101, column: 13, scope: !2187)
!2196 = !DILocation(line: 102, column: 14, scope: !2188)
!2197 = !DILocation(line: 102, column: 11, scope: !2188)
!2198 = distinct !{!2198, !2182, !2199}
!2199 = !DILocation(line: 103, column: 5, scope: !2094)
!2200 = !DILocation(line: 105, column: 10, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2094, file: !105, line: 105, column: 5)
!2202 = !DILocation(line: 0, scope: !2201)
!2203 = !DILocation(line: 105, column: 19, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !105, line: 105, column: 5)
!2205 = !DILocation(line: 105, column: 5, scope: !2201)
!2206 = !DILocation(line: 107, column: 22, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !105, line: 106, column: 5)
!2208 = !DILocation(line: 107, column: 15, scope: !2207)
!2209 = !DILocation(line: 108, column: 22, scope: !2207)
!2210 = !DILocation(line: 108, column: 15, scope: !2207)
!2211 = !DILocation(line: 109, column: 5, scope: !2207)
!2212 = !DILocation(line: 105, column: 39, scope: !2204)
!2213 = !DILocation(line: 105, column: 5, scope: !2204)
!2214 = distinct !{!2214, !2205, !2215}
!2215 = !DILocation(line: 109, column: 5, scope: !2201)
!2216 = !DILocation(line: 111, column: 1, scope: !2094)
!2217 = !DILocation(line: 110, column: 5, scope: !2094)
!2218 = distinct !DISubprogram(name: "core_state_transition", scope: !105, file: !105, line: 217, type: !2219, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2223)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!90, !2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!2223 = !{!2224, !2225, !2226, !2227, !2228}
!2224 = !DILocalVariable(name: "instr", arg: 1, scope: !2218, file: !105, line: 217, type: !2221)
!2225 = !DILocalVariable(name: "transition_count", arg: 2, scope: !2218, file: !105, line: 217, type: !2222)
!2226 = !DILocalVariable(name: "str", scope: !2218, file: !105, line: 219, type: !107)
!2227 = !DILocalVariable(name: "NEXT_SYMBOL", scope: !2218, file: !105, line: 220, type: !64)
!2228 = !DILocalVariable(name: "state", scope: !2218, file: !105, line: 221, type: !90)
!2229 = !DILocation(line: 0, scope: !2218)
!2230 = !DILocation(line: 219, column: 27, scope: !2218)
!2231 = !DILocation(line: 222, column: 5, scope: !2218)
!2232 = !DILocation(line: 221, column: 21, scope: !2218)
!2233 = !DILocation(line: 222, column: 12, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !105, line: 222, column: 5)
!2235 = distinct !DILexicalBlock(scope: !2218, file: !105, line: 222, column: 5)
!2236 = !DILocation(line: 222, column: 17, scope: !2234)
!2237 = !DILocation(line: 222, column: 26, scope: !2234)
!2238 = !DILocation(line: 0, scope: !2234)
!2239 = !DILocation(line: 222, column: 5, scope: !2235)
!2240 = !DILocation(line: 224, column: 23, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2234, file: !105, line: 223, column: 5)
!2242 = !DILocation(line: 225, column: 13, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2241, file: !105, line: 225, column: 13)
!2244 = !DILocation(line: 225, column: 25, scope: !2243)
!2245 = !DILocation(line: 225, column: 13, scope: !2241)
!2246 = !DILocation(line: 227, column: 16, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !105, line: 226, column: 9)
!2248 = !DILocation(line: 228, column: 13, scope: !2247)
!2249 = !DILocation(line: 233, column: 21, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 233, column: 21)
!2251 = distinct !DILexicalBlock(scope: !2241, file: !105, line: 231, column: 9)
!2252 = !DILocation(line: 233, column: 21, scope: !2251)
!2253 = !DILocation(line: 236, column: 17, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !105, line: 234, column: 17)
!2255 = !DILocation(line: 237, column: 26, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2250, file: !105, line: 237, column: 26)
!2257 = !DILocation(line: 237, column: 38, scope: !2256)
!2258 = !DILocation(line: 237, column: 45, scope: !2256)
!2259 = !DILocation(line: 237, column: 48, scope: !2256)
!2260 = !DILocation(line: 237, column: 60, scope: !2256)
!2261 = !DILocation(line: 237, column: 26, scope: !2250)
!2262 = !DILocation(line: 240, column: 17, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2256, file: !105, line: 238, column: 17)
!2264 = !DILocation(line: 241, column: 26, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2256, file: !105, line: 241, column: 26)
!2266 = !DILocation(line: 241, column: 38, scope: !2265)
!2267 = !DILocation(line: 241, column: 26, scope: !2256)
!2268 = !DILocation(line: 244, column: 17, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !105, line: 242, column: 17)
!2270 = !DILocation(line: 248, column: 21, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2265, file: !105, line: 246, column: 17)
!2272 = !DILocation(line: 248, column: 51, scope: !2271)
!2273 = !DILocation(line: 0, scope: !2265)
!2274 = !DILocation(line: 0, scope: !2256)
!2275 = !DILocation(line: 0, scope: !2250)
!2276 = !DILocation(line: 250, column: 17, scope: !2251)
!2277 = !DILocation(line: 250, column: 45, scope: !2251)
!2278 = !DILocation(line: 251, column: 17, scope: !2251)
!2279 = !DILocation(line: 253, column: 21, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 253, column: 21)
!2281 = !DILocation(line: 253, column: 21, scope: !2251)
!2282 = !DILocation(line: 256, column: 21, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !105, line: 254, column: 17)
!2284 = !DILocation(line: 256, column: 46, scope: !2283)
!2285 = !DILocation(line: 257, column: 17, scope: !2283)
!2286 = !DILocation(line: 258, column: 26, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2280, file: !105, line: 258, column: 26)
!2288 = !DILocation(line: 258, column: 38, scope: !2287)
!2289 = !DILocation(line: 258, column: 26, scope: !2280)
!2290 = !DILocation(line: 261, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !105, line: 259, column: 17)
!2292 = !DILocation(line: 261, column: 46, scope: !2291)
!2293 = !DILocation(line: 262, column: 17, scope: !2291)
!2294 = !DILocation(line: 266, column: 21, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2287, file: !105, line: 264, column: 17)
!2296 = !DILocation(line: 266, column: 46, scope: !2295)
!2297 = !DILocation(line: 0, scope: !2287)
!2298 = !DILocation(line: 0, scope: !2280)
!2299 = !DILocation(line: 268, column: 17, scope: !2251)
!2300 = !DILocation(line: 270, column: 21, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 270, column: 21)
!2302 = !DILocation(line: 270, column: 33, scope: !2301)
!2303 = !DILocation(line: 270, column: 21, scope: !2251)
!2304 = !DILocation(line: 273, column: 21, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !105, line: 271, column: 17)
!2306 = !DILocation(line: 273, column: 47, scope: !2305)
!2307 = !DILocation(line: 274, column: 17, scope: !2305)
!2308 = !DILocation(line: 275, column: 27, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2301, file: !105, line: 275, column: 26)
!2310 = !DILocation(line: 275, column: 26, scope: !2301)
!2311 = !DILocation(line: 278, column: 21, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2309, file: !105, line: 276, column: 17)
!2313 = !DILocation(line: 278, column: 47, scope: !2312)
!2314 = !DILocation(line: 279, column: 17, scope: !2312)
!2315 = !DILocation(line: 280, column: 17, scope: !2251)
!2316 = !DILocation(line: 282, column: 21, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 282, column: 21)
!2318 = !DILocation(line: 282, column: 33, scope: !2317)
!2319 = !DILocation(line: 282, column: 40, scope: !2317)
!2320 = !DILocation(line: 282, column: 43, scope: !2317)
!2321 = !DILocation(line: 282, column: 55, scope: !2317)
!2322 = !DILocation(line: 282, column: 21, scope: !2251)
!2323 = !DILocation(line: 285, column: 21, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2317, file: !105, line: 283, column: 17)
!2325 = !DILocation(line: 285, column: 49, scope: !2324)
!2326 = !DILocation(line: 286, column: 17, scope: !2324)
!2327 = !DILocation(line: 287, column: 27, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2317, file: !105, line: 287, column: 26)
!2329 = !DILocation(line: 287, column: 26, scope: !2317)
!2330 = !DILocation(line: 290, column: 21, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !105, line: 288, column: 17)
!2332 = !DILocation(line: 290, column: 49, scope: !2331)
!2333 = !DILocation(line: 291, column: 17, scope: !2331)
!2334 = !DILocation(line: 292, column: 17, scope: !2251)
!2335 = !DILocation(line: 294, column: 21, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 294, column: 21)
!2337 = !DILocation(line: 294, column: 33, scope: !2336)
!2338 = !DILocation(line: 294, column: 40, scope: !2336)
!2339 = !DILocation(line: 294, column: 43, scope: !2336)
!2340 = !DILocation(line: 294, column: 55, scope: !2336)
!2341 = !DILocation(line: 294, column: 21, scope: !2251)
!2342 = !DILocation(line: 297, column: 21, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2336, file: !105, line: 295, column: 17)
!2344 = !DILocation(line: 297, column: 46, scope: !2343)
!2345 = !DILocation(line: 298, column: 17, scope: !2343)
!2346 = !DILocation(line: 302, column: 21, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2336, file: !105, line: 300, column: 17)
!2348 = !DILocation(line: 302, column: 46, scope: !2347)
!2349 = !DILocation(line: 0, scope: !2336)
!2350 = !DILocation(line: 304, column: 17, scope: !2251)
!2351 = !DILocation(line: 306, column: 21, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 306, column: 21)
!2353 = !DILocation(line: 306, column: 21, scope: !2251)
!2354 = !DILocation(line: 309, column: 21, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !105, line: 307, column: 17)
!2356 = !DILocation(line: 309, column: 52, scope: !2355)
!2357 = !DILocation(line: 310, column: 17, scope: !2355)
!2358 = !DILocation(line: 314, column: 21, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2352, file: !105, line: 312, column: 17)
!2360 = !DILocation(line: 314, column: 52, scope: !2359)
!2361 = !DILocation(line: 0, scope: !2352)
!2362 = !DILocation(line: 316, column: 17, scope: !2251)
!2363 = !DILocation(line: 318, column: 22, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2251, file: !105, line: 318, column: 21)
!2365 = !DILocation(line: 318, column: 21, scope: !2251)
!2366 = !DILocation(line: 321, column: 21, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !105, line: 319, column: 17)
!2368 = !DILocation(line: 321, column: 51, scope: !2367)
!2369 = !DILocation(line: 322, column: 17, scope: !2367)
!2370 = !DILocation(line: 323, column: 17, scope: !2251)
!2371 = !DILocation(line: 325, column: 17, scope: !2251)
!2372 = !DILocation(line: 327, column: 5, scope: !2241)
!2373 = !DILocation(line: 222, column: 46, scope: !2234)
!2374 = !DILocation(line: 222, column: 5, scope: !2234)
!2375 = distinct !{!2375, !2239, !2376}
!2376 = !DILocation(line: 327, column: 5, scope: !2235)
!2377 = !DILocation(line: 328, column: 12, scope: !2218)
!2378 = !DILocation(line: 329, column: 5, scope: !2218)
!2379 = distinct !DISubprogram(name: "ee_isdigit", scope: !105, file: !105, line: 198, type: !2380, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!64, !64}
!2382 = !{!2383, !2384}
!2383 = !DILocalVariable(name: "c", arg: 1, scope: !2379, file: !105, line: 198, type: !64)
!2384 = !DILocalVariable(name: "retval", scope: !2379, file: !105, line: 200, type: !64)
!2385 = !DILocation(line: 0, scope: !2379)
!2386 = !DILocation(line: 201, column: 16, scope: !2379)
!2387 = !DILocation(line: 201, column: 18, scope: !2379)
!2388 = !DILocation(line: 201, column: 29, scope: !2379)
!2389 = !DILocation(line: 201, column: 31, scope: !2379)
!2390 = !DILocation(line: 201, column: 26, scope: !2379)
!2391 = !DILocation(line: 201, column: 14, scope: !2379)
!2392 = !DILocation(line: 202, column: 5, scope: !2379)
!2393 = distinct !DISubprogram(name: "core_init_state", scope: !105, file: !105, line: 140, type: !2394, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !23, !12, !107}
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2397 = !DILocalVariable(name: "size", arg: 1, scope: !2393, file: !105, line: 140, type: !23)
!2398 = !DILocalVariable(name: "seed", arg: 2, scope: !2393, file: !105, line: 140, type: !12)
!2399 = !DILocalVariable(name: "p", arg: 3, scope: !2393, file: !105, line: 140, type: !107)
!2400 = !DILocalVariable(name: "total", scope: !2393, file: !105, line: 142, type: !23)
!2401 = !DILocalVariable(name: "next", scope: !2393, file: !105, line: 142, type: !23)
!2402 = !DILocalVariable(name: "i", scope: !2393, file: !105, line: 142, type: !23)
!2403 = !DILocalVariable(name: "buf", scope: !2393, file: !105, line: 143, type: !107)
!2404 = !DILocation(line: 0, scope: !2393)
!2405 = !DILocation(line: 148, column: 9, scope: !2393)
!2406 = !DILocation(line: 150, column: 5, scope: !2393)
!2407 = !DILocation(line: 149, column: 10, scope: !2393)
!2408 = !DILocation(line: 143, column: 12, scope: !2393)
!2409 = !DILocation(line: 150, column: 19, scope: !2393)
!2410 = !DILocation(line: 150, column: 26, scope: !2393)
!2411 = !DILocation(line: 150, column: 31, scope: !2393)
!2412 = !DILocation(line: 152, column: 18, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !105, line: 152, column: 13)
!2414 = distinct !DILexicalBlock(scope: !2393, file: !105, line: 151, column: 5)
!2415 = !DILocation(line: 152, column: 13, scope: !2414)
!2416 = !DILocation(line: 154, column: 18, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !105, line: 154, column: 13)
!2418 = distinct !DILexicalBlock(scope: !2413, file: !105, line: 153, column: 9)
!2419 = !DILocation(line: 0, scope: !2417)
!2420 = !DILocation(line: 154, column: 27, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !105, line: 154, column: 13)
!2422 = !DILocation(line: 154, column: 13, scope: !2417)
!2423 = !DILocation(line: 155, column: 36, scope: !2421)
!2424 = !DILocation(line: 155, column: 21, scope: !2421)
!2425 = !DILocation(line: 155, column: 29, scope: !2421)
!2426 = !DILocation(line: 155, column: 34, scope: !2421)
!2427 = !DILocation(line: 155, column: 17, scope: !2421)
!2428 = !DILocation(line: 154, column: 36, scope: !2421)
!2429 = !DILocation(line: 154, column: 13, scope: !2421)
!2430 = distinct !{!2430, !2422, !2431}
!2431 = !DILocation(line: 155, column: 41, scope: !2417)
!2432 = !DILocation(line: 156, column: 17, scope: !2418)
!2433 = !DILocation(line: 156, column: 25, scope: !2418)
!2434 = !DILocation(line: 156, column: 30, scope: !2418)
!2435 = !DILocation(line: 157, column: 27, scope: !2418)
!2436 = !DILocation(line: 157, column: 19, scope: !2418)
!2437 = !DILocation(line: 158, column: 9, scope: !2418)
!2438 = !DILocation(line: 159, column: 13, scope: !2414)
!2439 = !DILocation(line: 160, column: 17, scope: !2414)
!2440 = !DILocation(line: 160, column: 22, scope: !2414)
!2441 = !DILocation(line: 165, column: 32, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2414, file: !105, line: 161, column: 9)
!2443 = !DILocation(line: 165, column: 37, scope: !2442)
!2444 = !DILocation(line: 165, column: 43, scope: !2442)
!2445 = !DILocation(line: 165, column: 24, scope: !2442)
!2446 = !DILocation(line: 167, column: 17, scope: !2442)
!2447 = !DILocation(line: 170, column: 34, scope: !2442)
!2448 = !DILocation(line: 170, column: 39, scope: !2442)
!2449 = !DILocation(line: 170, column: 45, scope: !2442)
!2450 = !DILocation(line: 170, column: 24, scope: !2442)
!2451 = !DILocation(line: 172, column: 17, scope: !2442)
!2452 = !DILocation(line: 175, column: 32, scope: !2442)
!2453 = !DILocation(line: 175, column: 37, scope: !2442)
!2454 = !DILocation(line: 175, column: 43, scope: !2442)
!2455 = !DILocation(line: 175, column: 24, scope: !2442)
!2456 = !DILocation(line: 177, column: 17, scope: !2442)
!2457 = !DILocation(line: 179, column: 32, scope: !2442)
!2458 = !DILocation(line: 179, column: 37, scope: !2442)
!2459 = !DILocation(line: 179, column: 43, scope: !2442)
!2460 = !DILocation(line: 179, column: 24, scope: !2442)
!2461 = !DILocation(line: 181, column: 17, scope: !2442)
!2462 = distinct !{!2462, !2406, !2463}
!2463 = !DILocation(line: 185, column: 5, scope: !2393)
!2464 = !DILocation(line: 186, column: 9, scope: !2393)
!2465 = !DILocation(line: 187, column: 5, scope: !2393)
!2466 = !DILocation(line: 187, column: 18, scope: !2393)
!2467 = !DILocation(line: 189, column: 13, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2393, file: !105, line: 188, column: 5)
!2469 = !DILocation(line: 189, column: 22, scope: !2468)
!2470 = !DILocation(line: 190, column: 14, scope: !2468)
!2471 = distinct !{!2471, !2465, !2472}
!2472 = !DILocation(line: 191, column: 5, scope: !2393)
!2473 = !DILocation(line: 195, column: 1, scope: !2393)
!2474 = distinct !DISubprogram(name: "get_seed_32", scope: !2475, file: !2475, line: 43, type: !2476, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2478)
!2475 = !DIFile(filename: "src/coremark/core_util.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!51, !43}
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "i", arg: 1, scope: !2474, file: !2475, line: 43, type: !43)
!2480 = !DILocalVariable(name: "retval", scope: !2474, file: !2475, line: 45, type: !51)
!2481 = !DILocation(line: 0, scope: !2474)
!2482 = !DILocation(line: 49, column: 22, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2474, file: !2475, line: 47, column: 5)
!2484 = !DILocation(line: 50, column: 13, scope: !2483)
!2485 = !DILocation(line: 52, column: 22, scope: !2483)
!2486 = !DILocation(line: 53, column: 13, scope: !2483)
!2487 = !DILocation(line: 55, column: 22, scope: !2483)
!2488 = !DILocation(line: 56, column: 13, scope: !2483)
!2489 = !DILocation(line: 58, column: 22, scope: !2483)
!2490 = !DILocation(line: 59, column: 13, scope: !2483)
!2491 = !DILocation(line: 61, column: 22, scope: !2483)
!2492 = !DILocation(line: 62, column: 13, scope: !2483)
!2493 = !DILocation(line: 65, column: 13, scope: !2483)
!2494 = !DILocation(line: 0, scope: !2483)
!2495 = !DILocation(line: 67, column: 5, scope: !2474)
!2496 = distinct !DISubprogram(name: "crcu8", scope: !2475, file: !2475, line: 165, type: !2497, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!53, !64, !53}
!2499 = !{!2500, !2501, !2502, !2503, !2504}
!2500 = !DILocalVariable(name: "data", arg: 1, scope: !2496, file: !2475, line: 165, type: !64)
!2501 = !DILocalVariable(name: "crc", arg: 2, scope: !2496, file: !2475, line: 165, type: !53)
!2502 = !DILocalVariable(name: "i", scope: !2496, file: !2475, line: 167, type: !64)
!2503 = !DILocalVariable(name: "x16", scope: !2496, file: !2475, line: 167, type: !64)
!2504 = !DILocalVariable(name: "carry", scope: !2496, file: !2475, line: 167, type: !64)
!2505 = !DILocation(line: 0, scope: !2496)
!2506 = !DILocation(line: 169, column: 10, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2496, file: !2475, line: 169, column: 5)
!2508 = !DILocation(line: 0, scope: !2507)
!2509 = !DILocation(line: 169, column: 19, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !2475, line: 169, column: 5)
!2511 = !DILocation(line: 169, column: 5, scope: !2507)
!2512 = !DILocation(line: 171, column: 24, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !2475, line: 170, column: 5)
!2514 = !DILocation(line: 171, column: 29, scope: !2513)
!2515 = !DILocation(line: 171, column: 37, scope: !2513)
!2516 = !DILocation(line: 171, column: 48, scope: !2513)
!2517 = !DILocation(line: 171, column: 34, scope: !2513)
!2518 = !DILocation(line: 171, column: 15, scope: !2513)
!2519 = !DILocation(line: 172, column: 14, scope: !2513)
!2520 = !DILocation(line: 174, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2513, file: !2475, line: 174, column: 13)
!2522 = !DILocation(line: 174, column: 17, scope: !2521)
!2523 = !DILocation(line: 174, column: 13, scope: !2513)
!2524 = !DILocation(line: 176, column: 17, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !2475, line: 175, column: 9)
!2526 = !DILocation(line: 178, column: 9, scope: !2525)
!2527 = !DILocation(line: 0, scope: !2521)
!2528 = !DILocation(line: 181, column: 13, scope: !2513)
!2529 = !DILocation(line: 182, column: 13, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2513, file: !2475, line: 182, column: 13)
!2531 = !DILocation(line: 182, column: 13, scope: !2513)
!2532 = !DILocation(line: 183, column: 17, scope: !2530)
!2533 = !DILocation(line: 183, column: 13, scope: !2530)
!2534 = !DILocation(line: 185, column: 17, scope: !2530)
!2535 = !DILocation(line: 0, scope: !2530)
!2536 = !DILocation(line: 186, column: 5, scope: !2513)
!2537 = !DILocation(line: 169, column: 25, scope: !2510)
!2538 = !DILocation(line: 169, column: 5, scope: !2510)
!2539 = distinct !{!2539, !2511, !2540}
!2540 = !DILocation(line: 186, column: 5, scope: !2507)
!2541 = !DILocation(line: 187, column: 5, scope: !2496)
!2542 = distinct !DISubprogram(name: "crcu16", scope: !2475, file: !2475, line: 190, type: !2543, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!53, !53, !53}
!2545 = !{!2546, !2547}
!2546 = !DILocalVariable(name: "newval", arg: 1, scope: !2542, file: !2475, line: 190, type: !53)
!2547 = !DILocalVariable(name: "crc", arg: 2, scope: !2542, file: !2475, line: 190, type: !53)
!2548 = !DILocation(line: 0, scope: !2542)
!2549 = !DILocation(line: 192, column: 17, scope: !2542)
!2550 = !DILocation(line: 192, column: 11, scope: !2542)
!2551 = !DILocation(line: 193, column: 25, scope: !2542)
!2552 = !DILocation(line: 193, column: 34, scope: !2542)
!2553 = !DILocation(line: 193, column: 17, scope: !2542)
!2554 = !DILocation(line: 193, column: 11, scope: !2542)
!2555 = !DILocation(line: 194, column: 5, scope: !2542)
!2556 = distinct !DISubprogram(name: "crcu32", scope: !2475, file: !2475, line: 197, type: !2557, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!53, !23, !53}
!2559 = !{!2560, !2561}
!2560 = !DILocalVariable(name: "newval", arg: 1, scope: !2556, file: !2475, line: 197, type: !23)
!2561 = !DILocalVariable(name: "crc", arg: 2, scope: !2556, file: !2475, line: 197, type: !53)
!2562 = !DILocation(line: 0, scope: !2556)
!2563 = !DILocation(line: 199, column: 17, scope: !2556)
!2564 = !DILocation(line: 199, column: 11, scope: !2556)
!2565 = !DILocation(line: 200, column: 33, scope: !2556)
!2566 = !DILocation(line: 200, column: 17, scope: !2556)
!2567 = !DILocation(line: 200, column: 11, scope: !2556)
!2568 = !DILocation(line: 201, column: 5, scope: !2556)
!2569 = distinct !DISubprogram(name: "crc16", scope: !2475, file: !2475, line: 204, type: !2570, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!53, !12, !53}
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "newval", arg: 1, scope: !2569, file: !2475, line: 204, type: !12)
!2574 = !DILocalVariable(name: "crc", arg: 2, scope: !2569, file: !2475, line: 204, type: !53)
!2575 = !DILocation(line: 0, scope: !2569)
!2576 = !DILocation(line: 206, column: 12, scope: !2569)
!2577 = !DILocation(line: 206, column: 5, scope: !2569)
!2578 = distinct !DISubprogram(name: "check_data_types", scope: !2475, file: !2475, line: 210, type: !2579, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2580)
!2579 = !DISubroutineType(types: !101)
!2580 = !{!2581}
!2581 = !DILocalVariable(name: "retval", scope: !2578, file: !2475, line: 212, type: !64)
!2582 = !DILocation(line: 0, scope: !2578)
!2583 = !DILocation(line: 244, column: 9, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2578, file: !2475, line: 244, column: 9)
!2585 = !DILocation(line: 244, column: 16, scope: !2584)
!2586 = !DILocation(line: 244, column: 9, scope: !2578)
!2587 = !DILocation(line: 246, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !2475, line: 245, column: 5)
!2589 = !DILocation(line: 247, column: 5, scope: !2588)
!2590 = !DILocation(line: 248, column: 5, scope: !2578)
!2591 = distinct !DISubprogram(name: "clock", scope: !125, file: !125, line: 73, type: !2592, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!137}
!2594 = !DILocation(line: 74, column: 10, scope: !2591)
!2595 = !{!2596, !2596, i64 0}
!2596 = !{!"long long", !296, i64 0}
!2597 = !DILocation(line: 74, column: 3, scope: !2591)
!2598 = distinct !DISubprogram(name: "start_time", scope: !125, file: !125, line: 90, type: !214, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2599 = !DILocation(line: 92, column: 5, scope: !2598)
!2600 = !DILocation(line: 93, column: 1, scope: !2598)
!2601 = distinct !DISubprogram(name: "stop_time", scope: !125, file: !125, line: 103, type: !214, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2602 = !DILocation(line: 105, column: 5, scope: !2601)
!2603 = !DILocation(line: 106, column: 1, scope: !2601)
!2604 = distinct !DISubprogram(name: "get_time", scope: !125, file: !125, line: 117, type: !2605, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!117}
!2607 = !{!2608}
!2608 = !DILocalVariable(name: "elapsed", scope: !2604, file: !125, line: 119, type: !117)
!2609 = !DILocation(line: 120, column: 24, scope: !2604)
!2610 = !DILocation(line: 120, column: 11, scope: !2604)
!2611 = !DILocation(line: 0, scope: !2604)
!2612 = !DILocation(line: 121, column: 5, scope: !2604)
!2613 = distinct !DISubprogram(name: "time_in_secs", scope: !125, file: !125, line: 131, type: !2614, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!68, !117}
!2616 = !{!2617, !2618}
!2617 = !DILocalVariable(name: "ticks", arg: 1, scope: !2613, file: !125, line: 131, type: !117)
!2618 = !DILocalVariable(name: "retval", scope: !2613, file: !125, line: 133, type: !68)
!2619 = !DILocation(line: 0, scope: !2613)
!2620 = !DILocation(line: 133, column: 24, scope: !2613)
!2621 = !DILocation(line: 133, column: 41, scope: !2613)
!2622 = !DILocation(line: 134, column: 5, scope: !2613)
!2623 = distinct !DISubprogram(name: "portable_init", scope: !125, file: !125, line: 144, type: !2624, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2632)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !2626, !2631, !1018}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_portable", file: !13, line: 195, baseType: !2628)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CORE_PORTABLE_S", file: !13, line: 192, size: 8, elements: !2629)
!2629 = !{!2630}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "portable_id", scope: !2628, file: !13, line: 194, baseType: !64, size: 8)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!2632 = !{!2633, !2634, !2635}
!2633 = !DILocalVariable(name: "p", arg: 1, scope: !2623, file: !125, line: 144, type: !2626)
!2634 = !DILocalVariable(name: "argc", arg: 2, scope: !2623, file: !125, line: 144, type: !2631)
!2635 = !DILocalVariable(name: "argv", arg: 3, scope: !2623, file: !125, line: 144, type: !1018)
!2636 = !DILocation(line: 0, scope: !2623)
!2637 = !DILocation(line: 156, column: 8, scope: !2623)
!2638 = !DILocation(line: 156, column: 20, scope: !2623)
!2639 = !{!331, !296, i64 0}
!2640 = !DILocation(line: 157, column: 1, scope: !2623)
!2641 = distinct !DISubprogram(name: "portable_fini", scope: !125, file: !125, line: 162, type: !2642, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{null, !2626}
!2644 = !{!2645}
!2645 = !DILocalVariable(name: "p", arg: 1, scope: !2641, file: !125, line: 162, type: !2626)
!2646 = !DILocation(line: 0, scope: !2641)
!2647 = !DILocation(line: 164, column: 8, scope: !2641)
!2648 = !DILocation(line: 164, column: 20, scope: !2641)
!2649 = !DILocation(line: 165, column: 1, scope: !2641)
!2650 = distinct !DISubprogram(name: "printf_", scope: !148, file: !148, line: 862, type: !2651, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2655)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!43, !2653, null}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2655 = !{!2656, !2657, !2664, !2666}
!2656 = !DILocalVariable(name: "format", arg: 1, scope: !2650, file: !148, line: 862, type: !2653)
!2657 = !DILocalVariable(name: "va", scope: !2650, file: !148, line: 864, type: !2658)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2659, line: 14, baseType: !2660)
!2659 = !DIFile(filename: "llvm/llvm-9.0.1/install/lib/clang/9.0.1/include/stdarg.h", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection")
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, line: 864, baseType: !2661)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", file: !158, line: 864, size: 32, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2661, file: !158, line: 864, baseType: !19, size: 32)
!2664 = !DILocalVariable(name: "buffer", scope: !2650, file: !148, line: 866, type: !2665)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !1031)
!2666 = !DILocalVariable(name: "ret", scope: !2650, file: !148, line: 867, type: !2667)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2668 = !DILocation(line: 0, scope: !2650)
!2669 = !DILocation(line: 864, column: 3, scope: !2650)
!2670 = !DILocation(line: 864, column: 11, scope: !2650)
!2671 = !DILocation(line: 865, column: 3, scope: !2650)
!2672 = !DILocation(line: 866, column: 3, scope: !2650)
!2673 = !DILocation(line: 866, column: 8, scope: !2650)
!2674 = !DILocation(line: 867, column: 41, scope: !2650)
!2675 = !DILocation(line: 867, column: 19, scope: !2650)
!2676 = !DILocation(line: 868, column: 3, scope: !2650)
!2677 = !DILocation(line: 870, column: 1, scope: !2650)
!2678 = !DILocation(line: 869, column: 3, scope: !2650)
!2679 = distinct !DISubprogram(name: "_out_char", scope: !148, file: !148, line: 149, type: !155, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2680)
!2680 = !{!2681, !2682, !2683, !2684}
!2681 = !DILocalVariable(name: "character", arg: 1, scope: !2679, file: !148, line: 149, type: !67)
!2682 = !DILocalVariable(name: "buffer", arg: 2, scope: !2679, file: !148, line: 149, type: !19)
!2683 = !DILocalVariable(name: "idx", arg: 3, scope: !2679, file: !148, line: 149, type: !151)
!2684 = !DILocalVariable(name: "maxlen", arg: 4, scope: !2679, file: !148, line: 149, type: !151)
!2685 = !DILocation(line: 0, scope: !2679)
!2686 = !DILocation(line: 152, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2679, file: !148, line: 152, column: 7)
!2688 = !DILocation(line: 152, column: 7, scope: !2679)
!2689 = !DILocation(line: 153, column: 5, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !148, line: 152, column: 18)
!2691 = !DILocation(line: 154, column: 3, scope: !2690)
!2692 = !DILocation(line: 155, column: 1, scope: !2679)
!2693 = distinct !DISubprogram(name: "_vsnprintf", scope: !148, file: !148, line: 577, type: !2694, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2697)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!43, !153, !66, !2696, !2653, !2658}
!2696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2713, !2719, !2722, !2729, !2734, !2736, !2742, !2744, !2746, !2747}
!2698 = !DILocalVariable(name: "out", arg: 1, scope: !2693, file: !148, line: 577, type: !153)
!2699 = !DILocalVariable(name: "buffer", arg: 2, scope: !2693, file: !148, line: 577, type: !66)
!2700 = !DILocalVariable(name: "maxlen", arg: 3, scope: !2693, file: !148, line: 577, type: !2696)
!2701 = !DILocalVariable(name: "format", arg: 4, scope: !2693, file: !148, line: 577, type: !2653)
!2702 = !DILocalVariable(name: "va", arg: 5, scope: !2693, file: !148, line: 577, type: !2658)
!2703 = !DILocalVariable(name: "flags", scope: !2693, file: !148, line: 579, type: !24)
!2704 = !DILocalVariable(name: "width", scope: !2693, file: !148, line: 579, type: !24)
!2705 = !DILocalVariable(name: "precision", scope: !2693, file: !148, line: 579, type: !24)
!2706 = !DILocalVariable(name: "n", scope: !2693, file: !148, line: 579, type: !24)
!2707 = !DILocalVariable(name: "idx", scope: !2693, file: !148, line: 580, type: !151)
!2708 = !DILocalVariable(name: "w", scope: !2709, file: !148, line: 620, type: !2667)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !148, line: 619, column: 30)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !148, line: 619, column: 14)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !148, line: 616, column: 9)
!2712 = distinct !DILexicalBlock(scope: !2693, file: !148, line: 588, column: 3)
!2713 = !DILocalVariable(name: "prec", scope: !2714, file: !148, line: 640, type: !2667)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !148, line: 639, column: 32)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !148, line: 639, column: 16)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !148, line: 636, column: 11)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !148, line: 633, column: 25)
!2718 = distinct !DILexicalBlock(scope: !2712, file: !148, line: 633, column: 9)
!2719 = !DILocalVariable(name: "base", scope: !2720, file: !148, line: 692, type: !24)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 690, column: 18)
!2721 = distinct !DILexicalBlock(scope: !2712, file: !148, line: 683, column: 22)
!2722 = !DILocalVariable(name: "value", scope: !2723, file: !148, line: 726, type: !2727)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !148, line: 724, column: 40)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !148, line: 724, column: 15)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !148, line: 722, column: 51)
!2726 = distinct !DILexicalBlock(scope: !2720, file: !148, line: 722, column: 13)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2728)
!2728 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2729 = !DILocalVariable(name: "value", scope: !2730, file: !148, line: 731, type: !2732)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !148, line: 730, column: 40)
!2731 = distinct !DILexicalBlock(scope: !2724, file: !148, line: 730, column: 20)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2733)
!2733 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!2734 = !DILocalVariable(name: "value", scope: !2735, file: !148, line: 735, type: !2667)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !148, line: 734, column: 16)
!2736 = !DILocalVariable(name: "value", scope: !2737, file: !148, line: 750, type: !2741)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !148, line: 749, column: 16)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !148, line: 746, column: 20)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !148, line: 741, column: 15)
!2740 = distinct !DILexicalBlock(scope: !2726, file: !148, line: 739, column: 14)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!2742 = !DILocalVariable(name: "l", scope: !2743, file: !148, line: 777, type: !24)
!2743 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 776, column: 18)
!2744 = !DILocalVariable(name: "p", scope: !2745, file: !148, line: 797, type: !2653)
!2745 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 796, column: 18)
!2746 = !DILocalVariable(name: "l", scope: !2745, file: !148, line: 798, type: !24)
!2747 = !DILocalVariable(name: "is_ll", scope: !2748, file: !148, line: 826, type: !2749)
!2748 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 822, column: 18)
!2749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2750 = !DILocation(line: 0, scope: !2693)
!2751 = !DILocation(line: 577, column: 88, scope: !2693)
!2752 = !DILocation(line: 577, column: 104, scope: !2693)
!2753 = !DILocation(line: 582, column: 8, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2693, file: !148, line: 582, column: 7)
!2755 = !DILocation(line: 582, column: 7, scope: !2693)
!2756 = !DILocation(line: 585, column: 3, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2754, file: !148, line: 582, column: 16)
!2758 = !DILocation(line: 587, column: 3, scope: !2693)
!2759 = !DILocation(line: 587, column: 11, scope: !2693)
!2760 = !DILocation(line: 587, column: 10, scope: !2693)
!2761 = !DILocation(line: 590, column: 10, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2712, file: !148, line: 590, column: 9)
!2763 = !DILocation(line: 590, column: 9, scope: !2762)
!2764 = !DILocation(line: 590, column: 17, scope: !2762)
!2765 = !DILocation(line: 590, column: 9, scope: !2712)
!2766 = !DILocation(line: 592, column: 12, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2762, file: !148, line: 590, column: 25)
!2768 = !DILocation(line: 592, column: 11, scope: !2767)
!2769 = !DILocation(line: 592, column: 31, scope: !2767)
!2770 = !DILocation(line: 592, column: 7, scope: !2767)
!2771 = !DILocation(line: 593, column: 13, scope: !2767)
!2772 = !DILocation(line: 594, column: 7, scope: !2767)
!2773 = distinct !{!2773, !2758, !2774}
!2774 = !DILocation(line: 850, column: 3, scope: !2693)
!2775 = !DILocation(line: 598, column: 13, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2762, file: !148, line: 596, column: 10)
!2777 = !DILocation(line: 603, column: 5, scope: !2712)
!2778 = !DILocation(line: 602, column: 11, scope: !2712)
!2779 = !DILocation(line: 604, column: 16, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2712, file: !148, line: 603, column: 8)
!2781 = !DILocation(line: 604, column: 15, scope: !2780)
!2782 = !DILocation(line: 605, column: 25, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2780, file: !148, line: 604, column: 24)
!2784 = !DILocation(line: 605, column: 49, scope: !2783)
!2785 = !DILocation(line: 605, column: 61, scope: !2783)
!2786 = !DILocation(line: 606, column: 25, scope: !2783)
!2787 = !DILocation(line: 606, column: 49, scope: !2783)
!2788 = !DILocation(line: 606, column: 61, scope: !2783)
!2789 = !DILocation(line: 607, column: 25, scope: !2783)
!2790 = !DILocation(line: 607, column: 49, scope: !2783)
!2791 = !DILocation(line: 607, column: 61, scope: !2783)
!2792 = !DILocation(line: 608, column: 25, scope: !2783)
!2793 = !DILocation(line: 608, column: 49, scope: !2783)
!2794 = !DILocation(line: 608, column: 61, scope: !2783)
!2795 = !DILocation(line: 609, column: 25, scope: !2783)
!2796 = !DILocation(line: 609, column: 49, scope: !2783)
!2797 = !DILocation(line: 609, column: 61, scope: !2783)
!2798 = !DILocation(line: 610, column: 61, scope: !2783)
!2799 = !DILocation(line: 0, scope: !2783)
!2800 = !DILocation(line: 0, scope: !2712)
!2801 = !DILocation(line: 612, column: 5, scope: !2780)
!2802 = distinct !{!2802, !2777, !2803}
!2803 = !DILocation(line: 612, column: 15, scope: !2712)
!2804 = !DILocation(line: 616, column: 20, scope: !2711)
!2805 = !DILocation(line: 616, column: 19, scope: !2711)
!2806 = !DILocation(line: 616, column: 9, scope: !2711)
!2807 = !DILocation(line: 616, column: 9, scope: !2712)
!2808 = !DILocation(line: 617, column: 15, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2711, file: !148, line: 616, column: 29)
!2810 = !DILocation(line: 618, column: 5, scope: !2809)
!2811 = !DILocation(line: 619, column: 15, scope: !2710)
!2812 = !DILocation(line: 619, column: 14, scope: !2710)
!2813 = !DILocation(line: 619, column: 22, scope: !2710)
!2814 = !DILocation(line: 619, column: 14, scope: !2711)
!2815 = !DILocation(line: 620, column: 21, scope: !2709)
!2816 = !DILocation(line: 0, scope: !2709)
!2817 = !DILocation(line: 621, column: 13, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2709, file: !148, line: 621, column: 11)
!2819 = !DILocation(line: 621, column: 11, scope: !2709)
!2820 = !DILocation(line: 622, column: 15, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !148, line: 621, column: 18)
!2822 = !DILocation(line: 623, column: 31, scope: !2821)
!2823 = !DILocation(line: 624, column: 7, scope: !2821)
!2824 = !DILocation(line: 0, scope: !2818)
!2825 = !DILocation(line: 628, column: 13, scope: !2709)
!2826 = !DILocation(line: 629, column: 5, scope: !2709)
!2827 = !DILocation(line: 0, scope: !2711)
!2828 = !DILocation(line: 633, column: 10, scope: !2718)
!2829 = !DILocation(line: 633, column: 9, scope: !2718)
!2830 = !DILocation(line: 633, column: 17, scope: !2718)
!2831 = !DILocation(line: 633, column: 9, scope: !2712)
!2832 = !DILocation(line: 634, column: 13, scope: !2717)
!2833 = !DILocation(line: 635, column: 13, scope: !2717)
!2834 = !DILocation(line: 636, column: 22, scope: !2716)
!2835 = !DILocation(line: 636, column: 21, scope: !2716)
!2836 = !DILocation(line: 636, column: 11, scope: !2716)
!2837 = !DILocation(line: 636, column: 11, scope: !2717)
!2838 = !DILocation(line: 637, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2716, file: !148, line: 636, column: 31)
!2840 = !DILocation(line: 638, column: 7, scope: !2839)
!2841 = !DILocation(line: 639, column: 17, scope: !2715)
!2842 = !DILocation(line: 639, column: 16, scope: !2715)
!2843 = !DILocation(line: 639, column: 24, scope: !2715)
!2844 = !DILocation(line: 639, column: 16, scope: !2716)
!2845 = !DILocation(line: 640, column: 31, scope: !2714)
!2846 = !DILocation(line: 0, scope: !2714)
!2847 = !DILocation(line: 641, column: 26, scope: !2714)
!2848 = !DILocation(line: 641, column: 21, scope: !2714)
!2849 = !DILocation(line: 642, column: 15, scope: !2714)
!2850 = !DILocation(line: 643, column: 7, scope: !2714)
!2851 = !DILocation(line: 0, scope: !2716)
!2852 = !DILocation(line: 644, column: 5, scope: !2717)
!2853 = !DILocation(line: 647, column: 14, scope: !2712)
!2854 = !DILocation(line: 647, column: 13, scope: !2712)
!2855 = !DILocation(line: 649, column: 15, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2712, file: !148, line: 647, column: 22)
!2857 = !DILocation(line: 650, column: 15, scope: !2856)
!2858 = !DILocation(line: 651, column: 14, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !148, line: 651, column: 13)
!2860 = !DILocation(line: 651, column: 13, scope: !2859)
!2861 = !DILocation(line: 651, column: 21, scope: !2859)
!2862 = !DILocation(line: 651, column: 13, scope: !2856)
!2863 = !DILocation(line: 652, column: 17, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2859, file: !148, line: 651, column: 29)
!2865 = !DILocation(line: 653, column: 17, scope: !2864)
!2866 = !DILocation(line: 654, column: 9, scope: !2864)
!2867 = !DILocation(line: 0, scope: !2856)
!2868 = !DILocation(line: 655, column: 9, scope: !2856)
!2869 = !DILocation(line: 657, column: 15, scope: !2856)
!2870 = !DILocation(line: 658, column: 15, scope: !2856)
!2871 = !DILocation(line: 659, column: 14, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2856, file: !148, line: 659, column: 13)
!2873 = !DILocation(line: 659, column: 13, scope: !2872)
!2874 = !DILocation(line: 659, column: 21, scope: !2872)
!2875 = !DILocation(line: 659, column: 13, scope: !2856)
!2876 = !DILocation(line: 660, column: 17, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2872, file: !148, line: 659, column: 29)
!2878 = !DILocation(line: 661, column: 17, scope: !2877)
!2879 = !DILocation(line: 662, column: 9, scope: !2877)
!2880 = !DILocation(line: 663, column: 9, scope: !2856)
!2881 = !DILocation(line: 666, column: 15, scope: !2856)
!2882 = !DILocation(line: 667, column: 15, scope: !2856)
!2883 = !DILocation(line: 668, column: 9, scope: !2856)
!2884 = !DILocation(line: 671, column: 15, scope: !2856)
!2885 = !DILocation(line: 672, column: 15, scope: !2856)
!2886 = !DILocation(line: 673, column: 9, scope: !2856)
!2887 = !DILocation(line: 675, column: 15, scope: !2856)
!2888 = !DILocation(line: 676, column: 15, scope: !2856)
!2889 = !DILocation(line: 677, column: 9, scope: !2856)
!2890 = !DILocation(line: 679, column: 9, scope: !2856)
!2891 = !DILocation(line: 683, column: 14, scope: !2712)
!2892 = !DILocation(line: 683, column: 13, scope: !2712)
!2893 = !DILocation(line: 693, column: 14, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2720, file: !148, line: 693, column: 13)
!2895 = !DILocation(line: 693, column: 13, scope: !2894)
!2896 = !DILocation(line: 693, column: 21, scope: !2894)
!2897 = !DILocation(line: 693, column: 28, scope: !2894)
!2898 = !DILocation(line: 693, column: 32, scope: !2894)
!2899 = !DILocation(line: 693, column: 31, scope: !2894)
!2900 = !DILocation(line: 693, column: 39, scope: !2894)
!2901 = !DILocation(line: 693, column: 13, scope: !2720)
!2902 = !DILocation(line: 0, scope: !2720)
!2903 = !DILocation(line: 695, column: 9, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2894, file: !148, line: 693, column: 47)
!2905 = !DILocation(line: 696, column: 19, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2894, file: !148, line: 696, column: 18)
!2907 = !DILocation(line: 696, column: 18, scope: !2906)
!2908 = !DILocation(line: 696, column: 26, scope: !2906)
!2909 = !DILocation(line: 696, column: 18, scope: !2894)
!2910 = !DILocation(line: 698, column: 9, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2906, file: !148, line: 696, column: 34)
!2912 = !DILocation(line: 699, column: 19, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2906, file: !148, line: 699, column: 18)
!2914 = !DILocation(line: 699, column: 18, scope: !2913)
!2915 = !DILocation(line: 699, column: 26, scope: !2913)
!2916 = !DILocation(line: 699, column: 18, scope: !2906)
!2917 = !DILocation(line: 701, column: 9, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2913, file: !148, line: 699, column: 34)
!2919 = !DILocation(line: 704, column: 17, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2913, file: !148, line: 702, column: 14)
!2921 = !DILocation(line: 0, scope: !2913)
!2922 = !DILocation(line: 0, scope: !2906)
!2923 = !DILocation(line: 0, scope: !2894)
!2924 = !DILocation(line: 707, column: 14, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2720, file: !148, line: 707, column: 13)
!2926 = !DILocation(line: 707, column: 13, scope: !2925)
!2927 = !DILocation(line: 707, column: 21, scope: !2925)
!2928 = !DILocation(line: 707, column: 13, scope: !2720)
!2929 = !DILocation(line: 708, column: 17, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2925, file: !148, line: 707, column: 29)
!2931 = !DILocation(line: 709, column: 9, scope: !2930)
!2932 = !DILocation(line: 712, column: 15, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2720, file: !148, line: 712, column: 13)
!2934 = !DILocation(line: 712, column: 14, scope: !2933)
!2935 = !DILocation(line: 712, column: 22, scope: !2933)
!2936 = !DILocation(line: 712, column: 30, scope: !2933)
!2937 = !DILocation(line: 712, column: 35, scope: !2933)
!2938 = !DILocation(line: 712, column: 34, scope: !2933)
!2939 = !DILocation(line: 712, column: 42, scope: !2933)
!2940 = !DILocation(line: 712, column: 13, scope: !2720)
!2941 = !DILocation(line: 713, column: 17, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2933, file: !148, line: 712, column: 51)
!2943 = !DILocation(line: 714, column: 9, scope: !2942)
!2944 = !DILocation(line: 717, column: 19, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2720, file: !148, line: 717, column: 13)
!2946 = !DILocation(line: 717, column: 13, scope: !2720)
!2947 = !DILocation(line: 718, column: 17, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !148, line: 717, column: 38)
!2949 = !DILocation(line: 719, column: 9, scope: !2948)
!2950 = !DILocation(line: 722, column: 15, scope: !2726)
!2951 = !DILocation(line: 722, column: 14, scope: !2726)
!2952 = !DILocation(line: 722, column: 22, scope: !2726)
!2953 = !DILocation(line: 722, column: 30, scope: !2726)
!2954 = !DILocation(line: 722, column: 35, scope: !2726)
!2955 = !DILocation(line: 722, column: 34, scope: !2726)
!2956 = !DILocation(line: 722, column: 42, scope: !2726)
!2957 = !DILocation(line: 722, column: 13, scope: !2720)
!2958 = !DILocation(line: 724, column: 21, scope: !2724)
!2959 = !DILocation(line: 724, column: 15, scope: !2725)
!2960 = !DILocation(line: 726, column: 37, scope: !2723)
!2961 = !DILocation(line: 0, scope: !2723)
!2962 = !DILocation(line: 727, column: 88, scope: !2723)
!2963 = !DILocation(line: 727, column: 82, scope: !2723)
!2964 = !DILocation(line: 727, column: 104, scope: !2723)
!2965 = !DILocation(line: 727, column: 120, scope: !2723)
!2966 = !DILocation(line: 727, column: 125, scope: !2723)
!2967 = !DILocation(line: 727, column: 19, scope: !2723)
!2968 = !DILocation(line: 729, column: 11, scope: !2723)
!2969 = !DILocation(line: 730, column: 26, scope: !2731)
!2970 = !DILocation(line: 730, column: 20, scope: !2724)
!2971 = !DILocation(line: 731, column: 32, scope: !2730)
!2972 = !DILocation(line: 0, scope: !2730)
!2973 = !DILocation(line: 732, column: 78, scope: !2730)
!2974 = !DILocation(line: 732, column: 72, scope: !2730)
!2975 = !DILocation(line: 732, column: 94, scope: !2730)
!2976 = !DILocation(line: 732, column: 110, scope: !2730)
!2977 = !DILocation(line: 732, column: 19, scope: !2730)
!2978 = !DILocation(line: 733, column: 11, scope: !2730)
!2979 = !DILocation(line: 735, column: 38, scope: !2735)
!2980 = !DILocation(line: 735, column: 31, scope: !2735)
!2981 = !DILocation(line: 735, column: 60, scope: !2735)
!2982 = !DILocation(line: 735, column: 54, scope: !2735)
!2983 = !DILocation(line: 735, column: 85, scope: !2735)
!2984 = !DILocation(line: 735, column: 78, scope: !2735)
!2985 = !DILocation(line: 735, column: 113, scope: !2735)
!2986 = !DILocation(line: 735, column: 102, scope: !2735)
!2987 = !DILocation(line: 735, column: 131, scope: !2735)
!2988 = !DILocation(line: 0, scope: !2735)
!2989 = !DILocation(line: 736, column: 77, scope: !2735)
!2990 = !DILocation(line: 736, column: 71, scope: !2735)
!2991 = !DILocation(line: 736, column: 93, scope: !2735)
!2992 = !DILocation(line: 736, column: 109, scope: !2735)
!2993 = !DILocation(line: 736, column: 19, scope: !2735)
!2994 = !DILocation(line: 0, scope: !2731)
!2995 = !DILocation(line: 0, scope: !2724)
!2996 = !DILocation(line: 738, column: 9, scope: !2725)
!2997 = !DILocation(line: 741, column: 21, scope: !2739)
!2998 = !DILocation(line: 741, column: 15, scope: !2740)
!2999 = !DILocation(line: 743, column: 61, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2739, file: !148, line: 741, column: 40)
!3001 = !DILocation(line: 743, column: 100, scope: !3000)
!3002 = !DILocation(line: 743, column: 19, scope: !3000)
!3003 = !DILocation(line: 745, column: 11, scope: !3000)
!3004 = !DILocation(line: 746, column: 26, scope: !2738)
!3005 = !DILocation(line: 746, column: 20, scope: !2739)
!3006 = !DILocation(line: 747, column: 56, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2738, file: !148, line: 746, column: 40)
!3008 = !DILocation(line: 747, column: 19, scope: !3007)
!3009 = !DILocation(line: 748, column: 11, scope: !3007)
!3010 = !DILocation(line: 750, column: 47, scope: !2737)
!3011 = !DILocation(line: 750, column: 40, scope: !2737)
!3012 = !DILocation(line: 750, column: 78, scope: !2737)
!3013 = !DILocation(line: 750, column: 63, scope: !2737)
!3014 = !DILocation(line: 750, column: 112, scope: !2737)
!3015 = !DILocation(line: 750, column: 105, scope: !2737)
!3016 = !DILocation(line: 750, column: 149, scope: !2737)
!3017 = !DILocation(line: 750, column: 129, scope: !2737)
!3018 = !DILocation(line: 750, column: 176, scope: !2737)
!3019 = !DILocation(line: 0, scope: !2737)
!3020 = !DILocation(line: 751, column: 19, scope: !2737)
!3021 = !DILocation(line: 0, scope: !2738)
!3022 = !DILocation(line: 0, scope: !2739)
!3023 = !DILocation(line: 0, scope: !2726)
!3024 = !DILocation(line: 754, column: 15, scope: !2720)
!3025 = !DILocation(line: 760, column: 14, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 760, column: 13)
!3027 = !DILocation(line: 760, column: 13, scope: !3026)
!3028 = !DILocation(line: 760, column: 21, scope: !3026)
!3029 = !DILocation(line: 760, column: 13, scope: !2721)
!3030 = !DILocation(line: 760, column: 35, scope: !3026)
!3031 = !DILocation(line: 760, column: 29, scope: !3026)
!3032 = !DILocation(line: 761, column: 47, scope: !2721)
!3033 = !DILocation(line: 761, column: 15, scope: !2721)
!3034 = !DILocation(line: 762, column: 15, scope: !2721)
!3035 = !DILocation(line: 763, column: 9, scope: !2721)
!3036 = !DILocation(line: 769, column: 15, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 769, column: 13)
!3038 = !DILocation(line: 769, column: 14, scope: !3037)
!3039 = !DILocation(line: 769, column: 22, scope: !3037)
!3040 = !DILocation(line: 769, column: 29, scope: !3037)
!3041 = !DILocation(line: 769, column: 33, scope: !3037)
!3042 = !DILocation(line: 769, column: 32, scope: !3037)
!3043 = !DILocation(line: 769, column: 40, scope: !3037)
!3044 = !DILocation(line: 769, column: 13, scope: !2721)
!3045 = !DILocation(line: 769, column: 55, scope: !3037)
!3046 = !DILocation(line: 769, column: 49, scope: !3037)
!3047 = !DILocation(line: 770, column: 15, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2721, file: !148, line: 770, column: 13)
!3049 = !DILocation(line: 770, column: 14, scope: !3048)
!3050 = !DILocation(line: 770, column: 22, scope: !3048)
!3051 = !DILocation(line: 770, column: 29, scope: !3048)
!3052 = !DILocation(line: 770, column: 33, scope: !3048)
!3053 = !DILocation(line: 770, column: 32, scope: !3048)
!3054 = !DILocation(line: 770, column: 40, scope: !3048)
!3055 = !DILocation(line: 770, column: 13, scope: !2721)
!3056 = !DILocation(line: 770, column: 55, scope: !3048)
!3057 = !DILocation(line: 770, column: 49, scope: !3048)
!3058 = !DILocation(line: 0, scope: !2721)
!3059 = !DILocation(line: 771, column: 47, scope: !2721)
!3060 = !DILocation(line: 771, column: 15, scope: !2721)
!3061 = !DILocation(line: 772, column: 15, scope: !2721)
!3062 = !DILocation(line: 773, column: 9, scope: !2721)
!3063 = !DILocation(line: 0, scope: !2743)
!3064 = !DILocation(line: 779, column: 21, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 779, column: 13)
!3066 = !DILocation(line: 779, column: 13, scope: !2743)
!3067 = !DILocation(line: 780, column: 11, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !148, line: 779, column: 36)
!3069 = !DILocation(line: 780, column: 19, scope: !3068)
!3070 = !DILocation(line: 780, column: 22, scope: !3068)
!3071 = !DILocation(line: 781, column: 33, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !148, line: 780, column: 31)
!3073 = !DILocation(line: 781, column: 13, scope: !3072)
!3074 = distinct !{!3074, !3067, !3075}
!3075 = !DILocation(line: 782, column: 11, scope: !3068)
!3076 = !DILocation(line: 783, column: 9, scope: !3068)
!3077 = !DILocation(line: 580, column: 10, scope: !2693)
!3078 = !DILocation(line: 785, column: 19, scope: !2743)
!3079 = !DILocation(line: 785, column: 13, scope: !2743)
!3080 = !DILocation(line: 785, column: 47, scope: !2743)
!3081 = !DILocation(line: 785, column: 9, scope: !2743)
!3082 = !DILocation(line: 787, column: 19, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2743, file: !148, line: 787, column: 13)
!3084 = !DILocation(line: 787, column: 13, scope: !2743)
!3085 = !DILocation(line: 788, column: 11, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !148, line: 787, column: 33)
!3087 = !DILocation(line: 788, column: 19, scope: !3086)
!3088 = !DILocation(line: 788, column: 22, scope: !3086)
!3089 = !DILocation(line: 789, column: 33, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !148, line: 788, column: 31)
!3091 = !DILocation(line: 789, column: 13, scope: !3090)
!3092 = distinct !{!3092, !3085, !3093}
!3093 = !DILocation(line: 790, column: 11, scope: !3086)
!3094 = !DILocation(line: 791, column: 9, scope: !3086)
!3095 = !DILocation(line: 792, column: 15, scope: !2743)
!3096 = !DILocation(line: 797, column: 25, scope: !2745)
!3097 = !DILocation(line: 0, scope: !2745)
!3098 = !DILocation(line: 798, column: 40, scope: !2745)
!3099 = !DILocation(line: 798, column: 26, scope: !2745)
!3100 = !DILocation(line: 800, column: 19, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2745, file: !148, line: 800, column: 13)
!3102 = !DILocation(line: 800, column: 13, scope: !2745)
!3103 = !DILocation(line: 801, column: 18, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3101, file: !148, line: 800, column: 38)
!3105 = !DILocation(line: 801, column: 16, scope: !3104)
!3106 = !DILocation(line: 802, column: 9, scope: !3104)
!3107 = !DILocation(line: 803, column: 21, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2745, file: !148, line: 803, column: 13)
!3109 = !DILocation(line: 803, column: 13, scope: !2745)
!3110 = !DILocation(line: 804, column: 11, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3108, file: !148, line: 803, column: 36)
!3112 = !DILocation(line: 804, column: 19, scope: !3111)
!3113 = !DILocation(line: 804, column: 22, scope: !3111)
!3114 = !DILocation(line: 805, column: 33, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !148, line: 804, column: 31)
!3116 = !DILocation(line: 805, column: 13, scope: !3115)
!3117 = distinct !{!3117, !3110, !3118}
!3118 = !DILocation(line: 806, column: 11, scope: !3111)
!3119 = !DILocation(line: 807, column: 9, scope: !3111)
!3120 = !DILocation(line: 809, column: 9, scope: !2745)
!3121 = !DILocation(line: 809, column: 17, scope: !2745)
!3122 = !DILocation(line: 809, column: 20, scope: !2745)
!3123 = !DILocation(line: 809, column: 26, scope: !2745)
!3124 = !DILocation(line: 809, column: 38, scope: !2745)
!3125 = !DILocation(line: 809, column: 57, scope: !2745)
!3126 = !DILocation(line: 809, column: 69, scope: !2745)
!3127 = !DILocation(line: 810, column: 18, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2745, file: !148, line: 809, column: 74)
!3129 = !DILocation(line: 810, column: 15, scope: !3128)
!3130 = !DILocation(line: 810, column: 34, scope: !3128)
!3131 = !DILocation(line: 810, column: 11, scope: !3128)
!3132 = distinct !{!3132, !3120, !3133}
!3133 = !DILocation(line: 811, column: 9, scope: !2745)
!3134 = !DILocation(line: 813, column: 19, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !2745, file: !148, line: 813, column: 13)
!3136 = !DILocation(line: 813, column: 13, scope: !2745)
!3137 = !DILocation(line: 814, column: 11, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3135, file: !148, line: 813, column: 33)
!3139 = !DILocation(line: 814, column: 19, scope: !3138)
!3140 = !DILocation(line: 814, column: 22, scope: !3138)
!3141 = !DILocation(line: 815, column: 33, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !148, line: 814, column: 31)
!3143 = !DILocation(line: 815, column: 13, scope: !3142)
!3144 = distinct !{!3144, !3137, !3145}
!3145 = !DILocation(line: 816, column: 11, scope: !3138)
!3146 = !DILocation(line: 817, column: 9, scope: !3138)
!3147 = !DILocation(line: 818, column: 15, scope: !2745)
!3148 = !DILocation(line: 824, column: 15, scope: !2748)
!3149 = !DILocation(line: 0, scope: !2748)
!3150 = !DILocation(line: 832, column: 81, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !148, line: 830, column: 14)
!3152 = distinct !DILexicalBlock(scope: !2748, file: !148, line: 827, column: 13)
!3153 = !DILocation(line: 832, column: 70, scope: !3151)
!3154 = !DILocation(line: 832, column: 17, scope: !3151)
!3155 = !DILocation(line: 836, column: 15, scope: !2748)
!3156 = !DILocation(line: 841, column: 29, scope: !2721)
!3157 = !DILocation(line: 841, column: 9, scope: !2721)
!3158 = !DILocation(line: 842, column: 15, scope: !2721)
!3159 = !DILocation(line: 843, column: 9, scope: !2721)
!3160 = !DILocation(line: 846, column: 14, scope: !2721)
!3161 = !DILocation(line: 846, column: 13, scope: !2721)
!3162 = !DILocation(line: 846, column: 33, scope: !2721)
!3163 = !DILocation(line: 846, column: 9, scope: !2721)
!3164 = !DILocation(line: 847, column: 15, scope: !2721)
!3165 = !DILocation(line: 848, column: 9, scope: !2721)
!3166 = !DILocation(line: 853, column: 28, scope: !2693)
!3167 = !DILocation(line: 853, column: 24, scope: !2693)
!3168 = !DILocation(line: 853, column: 52, scope: !2693)
!3169 = !DILocation(line: 853, column: 3, scope: !2693)
!3170 = !DILocation(line: 856, column: 3, scope: !2693)
!3171 = distinct !DISubprogram(name: "_out_null", scope: !148, file: !148, line: 142, type: !155, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3172)
!3172 = !{!3173, !3174, !3175, !3176}
!3173 = !DILocalVariable(name: "character", arg: 1, scope: !3171, file: !148, line: 142, type: !67)
!3174 = !DILocalVariable(name: "buffer", arg: 2, scope: !3171, file: !148, line: 142, type: !19)
!3175 = !DILocalVariable(name: "idx", arg: 3, scope: !3171, file: !148, line: 142, type: !151)
!3176 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3171, file: !148, line: 142, type: !151)
!3177 = !DILocation(line: 0, scope: !3171)
!3178 = !DILocation(line: 145, column: 1, scope: !3171)
!3179 = distinct !DISubprogram(name: "_is_digit", scope: !148, file: !148, line: 181, type: !3180, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!188, !67}
!3182 = !{!3183}
!3183 = !DILocalVariable(name: "ch", arg: 1, scope: !3179, file: !148, line: 181, type: !67)
!3184 = !DILocation(line: 0, scope: !3179)
!3185 = !DILocation(line: 183, column: 11, scope: !3179)
!3186 = !DILocation(line: 183, column: 14, scope: !3179)
!3187 = !DILocation(line: 183, column: 22, scope: !3179)
!3188 = !DILocation(line: 183, column: 26, scope: !3179)
!3189 = !DILocation(line: 183, column: 29, scope: !3179)
!3190 = !DILocation(line: 183, column: 3, scope: !3179)
!3191 = distinct !DISubprogram(name: "_atoi", scope: !148, file: !148, line: 188, type: !3192, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3195)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!24, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 32)
!3195 = !{!3196, !3197}
!3196 = !DILocalVariable(name: "str", arg: 1, scope: !3191, file: !148, line: 188, type: !3194)
!3197 = !DILocalVariable(name: "i", scope: !3191, file: !148, line: 190, type: !24)
!3198 = !DILocation(line: 0, scope: !3191)
!3199 = !DILocation(line: 191, column: 3, scope: !3191)
!3200 = !DILocation(line: 191, column: 21, scope: !3191)
!3201 = !DILocation(line: 191, column: 20, scope: !3191)
!3202 = !DILocation(line: 191, column: 10, scope: !3191)
!3203 = !DILocation(line: 192, column: 11, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3191, file: !148, line: 191, column: 28)
!3205 = !DILocation(line: 192, column: 42, scope: !3204)
!3206 = !DILocation(line: 192, column: 34, scope: !3204)
!3207 = !DILocation(line: 192, column: 46, scope: !3204)
!3208 = !DILocation(line: 192, column: 17, scope: !3204)
!3209 = distinct !{!3209, !3199, !3210}
!3210 = !DILocation(line: 193, column: 3, scope: !3191)
!3211 = !DILocation(line: 194, column: 3, scope: !3191)
!3212 = distinct !DISubprogram(name: "_ntoa_long_long", scope: !148, file: !148, line: 306, type: !3213, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!151, !153, !66, !151, !151, !140, !188, !140, !24, !24, !24}
!3215 = !{!3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228}
!3216 = !DILocalVariable(name: "out", arg: 1, scope: !3212, file: !148, line: 306, type: !153)
!3217 = !DILocalVariable(name: "buffer", arg: 2, scope: !3212, file: !148, line: 306, type: !66)
!3218 = !DILocalVariable(name: "idx", arg: 3, scope: !3212, file: !148, line: 306, type: !151)
!3219 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3212, file: !148, line: 306, type: !151)
!3220 = !DILocalVariable(name: "value", arg: 5, scope: !3212, file: !148, line: 306, type: !140)
!3221 = !DILocalVariable(name: "negative", arg: 6, scope: !3212, file: !148, line: 306, type: !188)
!3222 = !DILocalVariable(name: "base", arg: 7, scope: !3212, file: !148, line: 306, type: !140)
!3223 = !DILocalVariable(name: "prec", arg: 8, scope: !3212, file: !148, line: 306, type: !24)
!3224 = !DILocalVariable(name: "width", arg: 9, scope: !3212, file: !148, line: 306, type: !24)
!3225 = !DILocalVariable(name: "flags", arg: 10, scope: !3212, file: !148, line: 306, type: !24)
!3226 = !DILocalVariable(name: "buf", scope: !3212, file: !148, line: 308, type: !182)
!3227 = !DILocalVariable(name: "len", scope: !3212, file: !148, line: 309, type: !151)
!3228 = !DILocalVariable(name: "digit", scope: !3229, file: !148, line: 319, type: !2654)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !148, line: 318, column: 8)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !148, line: 317, column: 44)
!3231 = distinct !DILexicalBlock(scope: !3212, file: !148, line: 317, column: 7)
!3232 = !DILocation(line: 0, scope: !3212)
!3233 = !DILocation(line: 308, column: 3, scope: !3212)
!3234 = !DILocation(line: 308, column: 8, scope: !3212)
!3235 = !DILocation(line: 312, column: 8, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3212, file: !148, line: 312, column: 7)
!3237 = !DILocation(line: 312, column: 7, scope: !3212)
!3238 = !DILocation(line: 313, column: 11, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !148, line: 312, column: 15)
!3240 = !DILocation(line: 314, column: 3, scope: !3239)
!3241 = !DILocation(line: 317, column: 15, scope: !3231)
!3242 = !DILocation(line: 317, column: 34, scope: !3231)
!3243 = !DILocation(line: 317, column: 37, scope: !3231)
!3244 = !DILocation(line: 317, column: 7, scope: !3212)
!3245 = !DILocation(line: 318, column: 5, scope: !3230)
!3246 = !DILocation(line: 319, column: 39, scope: !3229)
!3247 = !DILocation(line: 319, column: 26, scope: !3229)
!3248 = !DILocation(line: 0, scope: !3229)
!3249 = !DILocation(line: 320, column: 20, scope: !3229)
!3250 = !DILocation(line: 320, column: 26, scope: !3229)
!3251 = !DILocation(line: 320, column: 39, scope: !3229)
!3252 = !DILocation(line: 320, column: 37, scope: !3229)
!3253 = !DILocation(line: 320, column: 54, scope: !3229)
!3254 = !DILocation(line: 320, column: 48, scope: !3229)
!3255 = !DILocation(line: 320, column: 87, scope: !3229)
!3256 = !DILocation(line: 320, column: 85, scope: !3229)
!3257 = !DILocation(line: 320, column: 93, scope: !3229)
!3258 = !DILocation(line: 320, column: 14, scope: !3229)
!3259 = !DILocation(line: 320, column: 7, scope: !3229)
!3260 = !DILocation(line: 320, column: 18, scope: !3229)
!3261 = !DILocation(line: 321, column: 13, scope: !3229)
!3262 = !DILocation(line: 322, column: 5, scope: !3229)
!3263 = !DILocation(line: 322, column: 14, scope: !3230)
!3264 = !DILocation(line: 322, column: 20, scope: !3230)
!3265 = !DILocation(line: 322, column: 28, scope: !3230)
!3266 = !DILocation(line: 0, scope: !3230)
!3267 = distinct !{!3267, !3245, !3268}
!3268 = !DILocation(line: 322, column: 54, scope: !3230)
!3269 = !DILocation(line: 323, column: 3, scope: !3230)
!3270 = !DILocation(line: 325, column: 49, scope: !3212)
!3271 = !DILocation(line: 325, column: 59, scope: !3212)
!3272 = !DILocation(line: 325, column: 69, scope: !3212)
!3273 = !DILocation(line: 325, column: 10, scope: !3212)
!3274 = !DILocation(line: 326, column: 1, scope: !3212)
!3275 = !DILocation(line: 325, column: 3, scope: !3212)
!3276 = distinct !DISubprogram(name: "_ntoa_long", scope: !148, file: !148, line: 281, type: !3277, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!151, !153, !66, !151, !151, !70, !188, !70, !24, !24, !24}
!3279 = !{!3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292}
!3280 = !DILocalVariable(name: "out", arg: 1, scope: !3276, file: !148, line: 281, type: !153)
!3281 = !DILocalVariable(name: "buffer", arg: 2, scope: !3276, file: !148, line: 281, type: !66)
!3282 = !DILocalVariable(name: "idx", arg: 3, scope: !3276, file: !148, line: 281, type: !151)
!3283 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3276, file: !148, line: 281, type: !151)
!3284 = !DILocalVariable(name: "value", arg: 5, scope: !3276, file: !148, line: 281, type: !70)
!3285 = !DILocalVariable(name: "negative", arg: 6, scope: !3276, file: !148, line: 281, type: !188)
!3286 = !DILocalVariable(name: "base", arg: 7, scope: !3276, file: !148, line: 281, type: !70)
!3287 = !DILocalVariable(name: "prec", arg: 8, scope: !3276, file: !148, line: 281, type: !24)
!3288 = !DILocalVariable(name: "width", arg: 9, scope: !3276, file: !148, line: 281, type: !24)
!3289 = !DILocalVariable(name: "flags", arg: 10, scope: !3276, file: !148, line: 281, type: !24)
!3290 = !DILocalVariable(name: "buf", scope: !3276, file: !148, line: 283, type: !182)
!3291 = !DILocalVariable(name: "len", scope: !3276, file: !148, line: 284, type: !151)
!3292 = !DILocalVariable(name: "digit", scope: !3293, file: !148, line: 294, type: !2654)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !148, line: 293, column: 8)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !148, line: 292, column: 44)
!3295 = distinct !DILexicalBlock(scope: !3276, file: !148, line: 292, column: 7)
!3296 = !DILocation(line: 0, scope: !3276)
!3297 = !DILocation(line: 283, column: 3, scope: !3276)
!3298 = !DILocation(line: 283, column: 8, scope: !3276)
!3299 = !DILocation(line: 287, column: 8, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3276, file: !148, line: 287, column: 7)
!3301 = !DILocation(line: 287, column: 7, scope: !3276)
!3302 = !DILocation(line: 288, column: 11, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !148, line: 287, column: 15)
!3304 = !DILocation(line: 289, column: 3, scope: !3303)
!3305 = !DILocation(line: 292, column: 15, scope: !3295)
!3306 = !DILocation(line: 292, column: 34, scope: !3295)
!3307 = !DILocation(line: 292, column: 37, scope: !3295)
!3308 = !DILocation(line: 292, column: 7, scope: !3276)
!3309 = !DILocation(line: 293, column: 5, scope: !3294)
!3310 = !DILocation(line: 294, column: 39, scope: !3293)
!3311 = !DILocation(line: 294, column: 26, scope: !3293)
!3312 = !DILocation(line: 0, scope: !3293)
!3313 = !DILocation(line: 295, column: 20, scope: !3293)
!3314 = !DILocation(line: 295, column: 26, scope: !3293)
!3315 = !DILocation(line: 295, column: 39, scope: !3293)
!3316 = !DILocation(line: 295, column: 37, scope: !3293)
!3317 = !DILocation(line: 295, column: 54, scope: !3293)
!3318 = !DILocation(line: 295, column: 48, scope: !3293)
!3319 = !DILocation(line: 295, column: 87, scope: !3293)
!3320 = !DILocation(line: 295, column: 85, scope: !3293)
!3321 = !DILocation(line: 295, column: 93, scope: !3293)
!3322 = !DILocation(line: 295, column: 14, scope: !3293)
!3323 = !DILocation(line: 295, column: 7, scope: !3293)
!3324 = !DILocation(line: 295, column: 18, scope: !3293)
!3325 = !DILocation(line: 296, column: 13, scope: !3293)
!3326 = !DILocation(line: 297, column: 5, scope: !3293)
!3327 = !DILocation(line: 297, column: 14, scope: !3294)
!3328 = !DILocation(line: 297, column: 20, scope: !3294)
!3329 = !DILocation(line: 297, column: 28, scope: !3294)
!3330 = !DILocation(line: 0, scope: !3294)
!3331 = distinct !{!3331, !3309, !3332}
!3332 = !DILocation(line: 297, column: 54, scope: !3294)
!3333 = !DILocation(line: 298, column: 3, scope: !3294)
!3334 = !DILocation(line: 300, column: 49, scope: !3276)
!3335 = !DILocation(line: 300, column: 59, scope: !3276)
!3336 = !DILocation(line: 300, column: 10, scope: !3276)
!3337 = !DILocation(line: 301, column: 1, scope: !3276)
!3338 = !DILocation(line: 300, column: 3, scope: !3276)
!3339 = !DILocation(line: 0, scope: !147)
!3340 = !DILocation(line: 341, column: 3, scope: !147)
!3341 = !DILocation(line: 341, column: 8, scope: !147)
!3342 = !DILocation(line: 349, column: 13, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !147, file: !148, line: 349, column: 7)
!3344 = !DILocation(line: 349, column: 7, scope: !147)
!3345 = !DILocation(line: 350, column: 12, scope: !3343)
!3346 = !DILocation(line: 350, column: 5, scope: !3343)
!3347 = !DILocation(line: 351, column: 13, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !147, file: !148, line: 351, column: 7)
!3349 = !DILocation(line: 351, column: 7, scope: !147)
!3350 = !DILocation(line: 352, column: 12, scope: !3348)
!3351 = !DILocation(line: 352, column: 5, scope: !3348)
!3352 = !DILocation(line: 353, column: 13, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !147, file: !148, line: 353, column: 7)
!3354 = !DILocation(line: 353, column: 7, scope: !147)
!3355 = !DILocation(line: 354, column: 54, scope: !3353)
!3356 = !DILocation(line: 354, column: 47, scope: !3353)
!3357 = !DILocation(line: 354, column: 93, scope: !3353)
!3358 = !DILocation(line: 354, column: 86, scope: !3353)
!3359 = !DILocation(line: 354, column: 12, scope: !3353)
!3360 = !DILocation(line: 354, column: 5, scope: !3353)
!3361 = !DILocation(line: 358, column: 14, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !147, file: !148, line: 358, column: 7)
!3363 = !DILocation(line: 358, column: 34, scope: !3362)
!3364 = !DILocation(line: 358, column: 44, scope: !3362)
!3365 = !DILocation(line: 358, column: 7, scope: !147)
!3366 = !DILocation(line: 360, column: 12, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3362, file: !148, line: 358, column: 66)
!3368 = !DILocation(line: 360, column: 5, scope: !3367)
!3369 = !DILocation(line: 368, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !147, file: !148, line: 368, column: 7)
!3371 = !DILocation(line: 368, column: 7, scope: !147)
!3372 = !DILocation(line: 370, column: 15, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !148, line: 368, column: 18)
!3374 = !DILocation(line: 371, column: 3, scope: !3373)
!3375 = !DILocation(line: 374, column: 15, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !147, file: !148, line: 374, column: 7)
!3377 = !DILocation(line: 374, column: 7, scope: !147)
!3378 = !DILocation(line: 376, column: 3, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !148, line: 374, column: 35)
!3380 = !DILocation(line: 378, column: 3, scope: !147)
!3381 = !DILocation(line: 378, column: 15, scope: !147)
!3382 = !DILocation(line: 378, column: 42, scope: !147)
!3383 = !DILocation(line: 378, column: 51, scope: !147)
!3384 = !DILocation(line: 379, column: 12, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !147, file: !148, line: 378, column: 58)
!3386 = !DILocation(line: 379, column: 5, scope: !3385)
!3387 = !DILocation(line: 379, column: 16, scope: !3385)
!3388 = !DILocation(line: 380, column: 9, scope: !3385)
!3389 = distinct !{!3389, !3380, !3390}
!3390 = !DILocation(line: 381, column: 3, scope: !147)
!3391 = !DILocation(line: 383, column: 15, scope: !147)
!3392 = !DILocation(line: 384, column: 25, scope: !147)
!3393 = !DILocation(line: 384, column: 23, scope: !147)
!3394 = !DILocation(line: 384, column: 34, scope: !147)
!3395 = !{!3396, !3396, i64 0}
!3396 = !{!"double", !296, i64 0}
!3397 = !DILocation(line: 384, column: 32, scope: !147)
!3398 = !DILocation(line: 385, column: 24, scope: !147)
!3399 = !DILocation(line: 386, column: 16, scope: !147)
!3400 = !DILocation(line: 386, column: 14, scope: !147)
!3401 = !DILocation(line: 388, column: 12, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !147, file: !148, line: 388, column: 7)
!3403 = !DILocation(line: 388, column: 7, scope: !147)
!3404 = !DILocation(line: 389, column: 5, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3402, file: !148, line: 388, column: 19)
!3406 = !DILocation(line: 391, column: 9, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3405, file: !148, line: 391, column: 9)
!3408 = !DILocation(line: 391, column: 17, scope: !3407)
!3409 = !DILocation(line: 391, column: 14, scope: !3407)
!3410 = !DILocation(line: 391, column: 9, scope: !3405)
!3411 = !DILocation(line: 393, column: 7, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !148, line: 391, column: 30)
!3413 = !DILocation(line: 394, column: 5, scope: !3412)
!3414 = !DILocation(line: 0, scope: !3405)
!3415 = !DILocation(line: 395, column: 3, scope: !3405)
!3416 = !DILocation(line: 396, column: 17, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3402, file: !148, line: 396, column: 12)
!3418 = !DILocation(line: 396, column: 12, scope: !3402)
!3419 = !DILocation(line: 397, column: 3, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3417, file: !148, line: 396, column: 24)
!3421 = !DILocation(line: 398, column: 18, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3417, file: !148, line: 398, column: 12)
!3423 = !DILocation(line: 398, column: 25, scope: !3422)
!3424 = !DILocation(line: 398, column: 34, scope: !3422)
!3425 = !DILocation(line: 398, column: 12, scope: !3417)
!3426 = !DILocation(line: 400, column: 5, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3422, file: !148, line: 398, column: 41)
!3428 = !DILocation(line: 401, column: 3, scope: !3427)
!3429 = !DILocation(line: 403, column: 12, scope: !194)
!3430 = !DILocation(line: 403, column: 7, scope: !147)
!3431 = !DILocation(line: 404, column: 20, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !194, file: !148, line: 403, column: 19)
!3433 = !DILocation(line: 404, column: 18, scope: !3432)
!3434 = !DILocation(line: 405, column: 17, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3432, file: !148, line: 405, column: 9)
!3436 = !DILocation(line: 405, column: 24, scope: !3435)
!3437 = !DILocation(line: 405, column: 33, scope: !3435)
!3438 = !DILocation(line: 405, column: 41, scope: !3435)
!3439 = !DILocation(line: 405, column: 51, scope: !3435)
!3440 = !DILocation(line: 405, column: 9, scope: !3432)
!3441 = !DILocation(line: 408, column: 7, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3435, file: !148, line: 405, column: 57)
!3443 = !DILocation(line: 409, column: 5, scope: !3442)
!3444 = !DILocation(line: 410, column: 3, scope: !3432)
!3445 = !DILocation(line: 0, scope: !193)
!3446 = !DILocation(line: 414, column: 5, scope: !193)
!3447 = !DILocation(line: 414, column: 16, scope: !193)
!3448 = !DILocation(line: 415, column: 7, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !193, file: !148, line: 414, column: 43)
!3450 = !DILocation(line: 416, column: 39, scope: !3449)
!3451 = !DILocation(line: 416, column: 31, scope: !3449)
!3452 = !DILocation(line: 416, column: 20, scope: !3449)
!3453 = !DILocation(line: 416, column: 14, scope: !3449)
!3454 = !DILocation(line: 416, column: 7, scope: !3449)
!3455 = !DILocation(line: 416, column: 18, scope: !3449)
!3456 = !DILocation(line: 417, column: 18, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3449, file: !148, line: 417, column: 11)
!3458 = !DILocation(line: 417, column: 11, scope: !3449)
!3459 = !DILocation(line: 418, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3457, file: !148, line: 417, column: 27)
!3461 = distinct !{!3461, !3446, !3462}
!3462 = !DILocation(line: 420, column: 5, scope: !193)
!3463 = !DILocation(line: 422, column: 5, scope: !193)
!3464 = !DILocation(line: 422, column: 17, scope: !193)
!3465 = !DILocation(line: 422, column: 44, scope: !193)
!3466 = !DILocation(line: 422, column: 53, scope: !193)
!3467 = !DILocation(line: 422, column: 56, scope: !193)
!3468 = !DILocation(line: 423, column: 14, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !193, file: !148, line: 422, column: 63)
!3470 = !DILocation(line: 423, column: 7, scope: !3469)
!3471 = !DILocation(line: 423, column: 18, scope: !3469)
!3472 = distinct !{!3472, !3463, !3473}
!3473 = !DILocation(line: 424, column: 5, scope: !193)
!3474 = !DILocation(line: 425, column: 13, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !193, file: !148, line: 425, column: 9)
!3476 = !DILocation(line: 425, column: 9, scope: !193)
!3477 = !DILocation(line: 427, column: 14, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !148, line: 425, column: 40)
!3479 = !DILocation(line: 427, column: 7, scope: !3478)
!3480 = !DILocation(line: 427, column: 18, scope: !3478)
!3481 = !DILocation(line: 428, column: 5, scope: !3478)
!3482 = !DILocation(line: 432, column: 3, scope: !147)
!3483 = !DILocation(line: 432, column: 14, scope: !147)
!3484 = !DILocation(line: 433, column: 37, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !147, file: !148, line: 432, column: 41)
!3486 = !DILocation(line: 433, column: 28, scope: !3485)
!3487 = !DILocation(line: 433, column: 18, scope: !3485)
!3488 = !DILocation(line: 433, column: 12, scope: !3485)
!3489 = !DILocation(line: 433, column: 5, scope: !3485)
!3490 = !DILocation(line: 433, column: 16, scope: !3485)
!3491 = !DILocation(line: 434, column: 17, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3485, file: !148, line: 434, column: 9)
!3493 = !DILocation(line: 434, column: 9, scope: !3485)
!3494 = !DILocation(line: 435, column: 7, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3492, file: !148, line: 434, column: 25)
!3496 = distinct !{!3496, !3482, !3497}
!3497 = !DILocation(line: 437, column: 3, scope: !147)
!3498 = !DILocation(line: 440, column: 15, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !147, file: !148, line: 440, column: 7)
!3500 = !DILocation(line: 440, column: 29, scope: !3499)
!3501 = !DILocation(line: 440, column: 39, scope: !3499)
!3502 = !DILocation(line: 440, column: 7, scope: !147)
!3503 = !DILocation(line: 441, column: 9, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !148, line: 441, column: 9)
!3505 = distinct !DILexicalBlock(scope: !3499, file: !148, line: 440, column: 57)
!3506 = !DILocation(line: 441, column: 15, scope: !3504)
!3507 = !DILocation(line: 441, column: 19, scope: !3504)
!3508 = !DILocation(line: 441, column: 28, scope: !3504)
!3509 = !DILocation(line: 441, column: 38, scope: !3504)
!3510 = !DILocation(line: 441, column: 9, scope: !3505)
!3511 = !DILocation(line: 442, column: 12, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3504, file: !148, line: 441, column: 70)
!3513 = !DILocation(line: 443, column: 5, scope: !3512)
!3514 = !DILocation(line: 444, column: 5, scope: !3505)
!3515 = !DILocation(line: 444, column: 17, scope: !3505)
!3516 = !DILocation(line: 444, column: 26, scope: !3505)
!3517 = !DILocation(line: 444, column: 34, scope: !3505)
!3518 = !DILocation(line: 0, scope: !3505)
!3519 = !DILocation(line: 445, column: 14, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3505, file: !148, line: 444, column: 62)
!3521 = !DILocation(line: 445, column: 7, scope: !3520)
!3522 = !DILocation(line: 445, column: 18, scope: !3520)
!3523 = distinct !{!3523, !3514, !3524}
!3524 = !DILocation(line: 446, column: 5, scope: !3505)
!3525 = !DILocation(line: 447, column: 3, scope: !3505)
!3526 = !DILocation(line: 449, column: 11, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !147, file: !148, line: 449, column: 7)
!3528 = !DILocation(line: 449, column: 7, scope: !147)
!3529 = !DILocation(line: 450, column: 9, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !148, line: 450, column: 9)
!3531 = distinct !DILexicalBlock(scope: !3527, file: !148, line: 449, column: 38)
!3532 = !DILocation(line: 450, column: 9, scope: !3531)
!3533 = !DILocation(line: 451, column: 14, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3530, file: !148, line: 450, column: 19)
!3535 = !DILocation(line: 451, column: 7, scope: !3534)
!3536 = !DILocation(line: 451, column: 18, scope: !3534)
!3537 = !DILocation(line: 452, column: 5, scope: !3534)
!3538 = !DILocation(line: 453, column: 20, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3530, file: !148, line: 453, column: 14)
!3540 = !DILocation(line: 453, column: 14, scope: !3530)
!3541 = !DILocation(line: 454, column: 14, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3539, file: !148, line: 453, column: 34)
!3543 = !DILocation(line: 454, column: 7, scope: !3542)
!3544 = !DILocation(line: 454, column: 18, scope: !3542)
!3545 = !DILocation(line: 455, column: 5, scope: !3542)
!3546 = !DILocation(line: 456, column: 20, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3539, file: !148, line: 456, column: 14)
!3548 = !DILocation(line: 456, column: 14, scope: !3539)
!3549 = !DILocation(line: 457, column: 14, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3547, file: !148, line: 456, column: 35)
!3551 = !DILocation(line: 457, column: 7, scope: !3550)
!3552 = !DILocation(line: 457, column: 18, scope: !3550)
!3553 = !DILocation(line: 458, column: 5, scope: !3550)
!3554 = !DILocation(line: 0, scope: !3539)
!3555 = !DILocation(line: 0, scope: !3530)
!3556 = !DILocation(line: 459, column: 3, scope: !3531)
!3557 = !DILocation(line: 461, column: 45, scope: !147)
!3558 = !DILocation(line: 461, column: 10, scope: !147)
!3559 = !DILocation(line: 462, column: 1, scope: !147)
!3560 = distinct !DISubprogram(name: "_etoa", scope: !148, file: !148, line: 467, type: !149, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3562 = !DILocalVariable(name: "out", arg: 1, scope: !3560, file: !148, line: 467, type: !153)
!3563 = !DILocalVariable(name: "buffer", arg: 2, scope: !3560, file: !148, line: 467, type: !66)
!3564 = !DILocalVariable(name: "idx", arg: 3, scope: !3560, file: !148, line: 467, type: !151)
!3565 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3560, file: !148, line: 467, type: !151)
!3566 = !DILocalVariable(name: "value", arg: 5, scope: !3560, file: !148, line: 467, type: !69)
!3567 = !DILocalVariable(name: "prec", arg: 6, scope: !3560, file: !148, line: 467, type: !24)
!3568 = !DILocalVariable(name: "width", arg: 7, scope: !3560, file: !148, line: 467, type: !24)
!3569 = !DILocalVariable(name: "flags", arg: 8, scope: !3560, file: !148, line: 467, type: !24)
!3570 = !DILocalVariable(name: "negative", scope: !3560, file: !148, line: 475, type: !2749)
!3571 = !DILocalVariable(name: "conv", scope: !3560, file: !148, line: 490, type: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3560, file: !148, line: 487, size: 64, elements: !3573)
!3573 = !{!3574, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "U", scope: !3572, file: !148, line: 488, baseType: !138, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !3572, file: !148, line: 489, baseType: !69, size: 64)
!3576 = !DILocalVariable(name: "exp2", scope: !3560, file: !148, line: 493, type: !43)
!3577 = !DILocalVariable(name: "expval", scope: !3560, file: !148, line: 496, type: !43)
!3578 = !DILocalVariable(name: "z", scope: !3560, file: !148, line: 499, type: !196)
!3579 = !DILocalVariable(name: "z2", scope: !3560, file: !148, line: 500, type: !196)
!3580 = !DILocalVariable(name: "minwidth", scope: !3560, file: !148, line: 511, type: !24)
!3581 = !DILocalVariable(name: "fwidth", scope: !3560, file: !148, line: 537, type: !24)
!3582 = !DILocalVariable(name: "start_idx", scope: !3560, file: !148, line: 556, type: !2696)
!3583 = !DILocation(line: 0, scope: !3560)
!3584 = !DILocation(line: 470, column: 14, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 470, column: 7)
!3586 = !DILocation(line: 470, column: 24, scope: !3585)
!3587 = !DILocation(line: 470, column: 34, scope: !3585)
!3588 = !DILocation(line: 470, column: 45, scope: !3585)
!3589 = !DILocation(line: 470, column: 55, scope: !3585)
!3590 = !DILocation(line: 470, column: 7, scope: !3560)
!3591 = !DILocation(line: 471, column: 12, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3585, file: !148, line: 470, column: 68)
!3593 = !DILocation(line: 471, column: 5, scope: !3592)
!3594 = !DILocation(line: 475, column: 31, scope: !3560)
!3595 = !DILocation(line: 475, column: 14, scope: !3560)
!3596 = !DILocation(line: 476, column: 7, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 476, column: 7)
!3598 = !DILocation(line: 476, column: 7, scope: !3560)
!3599 = !DILocation(line: 477, column: 13, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3597, file: !148, line: 476, column: 17)
!3601 = !DILocation(line: 478, column: 3, scope: !3600)
!3602 = !DILocation(line: 481, column: 15, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 481, column: 7)
!3604 = !DILocation(line: 481, column: 7, scope: !3560)
!3605 = !DILocation(line: 483, column: 3, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !148, line: 481, column: 35)
!3607 = !DILocation(line: 487, column: 3, scope: !3560)
!3608 = !DILocation(line: 490, column: 5, scope: !3560)
!3609 = !DILocation(line: 492, column: 8, scope: !3560)
!3610 = !DILocation(line: 492, column: 10, scope: !3560)
!3611 = !DILocation(line: 493, column: 26, scope: !3560)
!3612 = !DILocation(line: 493, column: 28, scope: !3560)
!3613 = !DILocation(line: 493, column: 36, scope: !3560)
!3614 = !DILocation(line: 493, column: 14, scope: !3560)
!3615 = !DILocation(line: 493, column: 47, scope: !3560)
!3616 = !DILocation(line: 494, column: 18, scope: !3560)
!3617 = !DILocation(line: 494, column: 20, scope: !3560)
!3618 = !DILocation(line: 494, column: 44, scope: !3560)
!3619 = !DILocation(line: 494, column: 8, scope: !3560)
!3620 = !DILocation(line: 494, column: 10, scope: !3560)
!3621 = !DILocation(line: 496, column: 40, scope: !3560)
!3622 = !DILocation(line: 496, column: 45, scope: !3560)
!3623 = !DILocation(line: 496, column: 38, scope: !3560)
!3624 = !DILocation(line: 496, column: 73, scope: !3560)
!3625 = !DILocation(line: 496, column: 75, scope: !3560)
!3626 = !DILocation(line: 496, column: 82, scope: !3560)
!3627 = !DILocation(line: 496, column: 65, scope: !3560)
!3628 = !DILocation(line: 496, column: 16, scope: !3560)
!3629 = !DILocation(line: 498, column: 16, scope: !3560)
!3630 = !DILocation(line: 498, column: 23, scope: !3560)
!3631 = !DILocation(line: 498, column: 43, scope: !3560)
!3632 = !DILocation(line: 498, column: 10, scope: !3560)
!3633 = !DILocation(line: 499, column: 21, scope: !3560)
!3634 = !DILocation(line: 499, column: 28, scope: !3560)
!3635 = !DILocation(line: 499, column: 50, scope: !3560)
!3636 = !DILocation(line: 499, column: 55, scope: !3560)
!3637 = !DILocation(line: 499, column: 48, scope: !3560)
!3638 = !DILocation(line: 500, column: 23, scope: !3560)
!3639 = !DILocation(line: 501, column: 28, scope: !3560)
!3640 = !DILocation(line: 501, column: 12, scope: !3560)
!3641 = !DILocation(line: 501, column: 36, scope: !3560)
!3642 = !DILocation(line: 501, column: 8, scope: !3560)
!3643 = !DILocation(line: 501, column: 10, scope: !3560)
!3644 = !DILocation(line: 503, column: 19, scope: !3560)
!3645 = !DILocation(line: 503, column: 28, scope: !3560)
!3646 = !DILocation(line: 503, column: 60, scope: !3560)
!3647 = !DILocation(line: 503, column: 55, scope: !3560)
!3648 = !DILocation(line: 503, column: 49, scope: !3560)
!3649 = !DILocation(line: 503, column: 43, scope: !3560)
!3650 = !DILocation(line: 503, column: 38, scope: !3560)
!3651 = !DILocation(line: 503, column: 32, scope: !3560)
!3652 = !DILocation(line: 503, column: 23, scope: !3560)
!3653 = !DILocation(line: 503, column: 15, scope: !3560)
!3654 = !DILocation(line: 503, column: 8, scope: !3560)
!3655 = !DILocation(line: 503, column: 10, scope: !3560)
!3656 = !DILocation(line: 505, column: 20, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 505, column: 7)
!3658 = !DILocation(line: 505, column: 13, scope: !3657)
!3659 = !DILocation(line: 505, column: 7, scope: !3560)
!3660 = !DILocation(line: 506, column: 11, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3657, file: !148, line: 505, column: 23)
!3662 = !DILocation(line: 507, column: 10, scope: !3661)
!3663 = !DILocation(line: 507, column: 12, scope: !3661)
!3664 = !DILocation(line: 508, column: 3, scope: !3661)
!3665 = !DILocation(line: 511, column: 36, scope: !3560)
!3666 = !DILocation(line: 511, column: 43, scope: !3560)
!3667 = !DILocation(line: 511, column: 54, scope: !3560)
!3668 = !DILocation(line: 511, column: 27, scope: !3560)
!3669 = !DILocation(line: 514, column: 13, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 514, column: 7)
!3671 = !DILocation(line: 514, column: 7, scope: !3560)
!3672 = !DILocation(line: 516, column: 16, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !148, line: 516, column: 9)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !148, line: 514, column: 32)
!3675 = !DILocation(line: 516, column: 25, scope: !3673)
!3676 = !DILocation(line: 516, column: 35, scope: !3673)
!3677 = !DILocation(line: 516, column: 9, scope: !3674)
!3678 = !DILocation(line: 517, column: 21, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !148, line: 517, column: 11)
!3680 = distinct !DILexicalBlock(scope: !3673, file: !148, line: 516, column: 43)
!3681 = !DILocation(line: 517, column: 11, scope: !3680)
!3682 = !DILocation(line: 518, column: 37, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !148, line: 517, column: 31)
!3684 = !DILocation(line: 518, column: 46, scope: !3683)
!3685 = !DILocation(line: 519, column: 7, scope: !3683)
!3686 = !DILocation(line: 0, scope: !3679)
!3687 = !DILocation(line: 523, column: 13, scope: !3680)
!3688 = !DILocation(line: 527, column: 5, scope: !3680)
!3689 = !DILocation(line: 530, column: 17, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !148, line: 530, column: 11)
!3691 = distinct !DILexicalBlock(scope: !3673, file: !148, line: 528, column: 10)
!3692 = !DILocation(line: 530, column: 22, scope: !3690)
!3693 = !DILocation(line: 530, column: 32, scope: !3690)
!3694 = !DILocation(line: 530, column: 11, scope: !3691)
!3695 = !DILocation(line: 531, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3690, file: !148, line: 530, column: 52)
!3697 = !DILocation(line: 532, column: 7, scope: !3696)
!3698 = !DILocation(line: 0, scope: !3673)
!3699 = !DILocation(line: 534, column: 3, scope: !3674)
!3700 = !DILocation(line: 538, column: 13, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 538, column: 7)
!3702 = !DILocation(line: 538, column: 7, scope: !3560)
!3703 = !DILocation(line: 540, column: 12, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3701, file: !148, line: 538, column: 25)
!3705 = !DILocation(line: 541, column: 3, scope: !3704)
!3706 = !DILocation(line: 0, scope: !3701)
!3707 = !DILocation(line: 545, column: 14, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 545, column: 7)
!3709 = !DILocation(line: 545, column: 28, scope: !3708)
!3710 = !DILocation(line: 545, column: 31, scope: !3708)
!3711 = !DILocation(line: 545, column: 7, scope: !3560)
!3712 = !DILocation(line: 548, column: 3, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3708, file: !148, line: 545, column: 41)
!3714 = !DILocation(line: 551, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 551, column: 7)
!3716 = !DILocation(line: 551, column: 7, scope: !3560)
!3717 = !DILocation(line: 552, column: 19, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !148, line: 551, column: 15)
!3719 = !DILocation(line: 552, column: 11, scope: !3718)
!3720 = !DILocation(line: 553, column: 3, scope: !3718)
!3721 = !DILocation(line: 557, column: 41, scope: !3560)
!3722 = !DILocation(line: 557, column: 52, scope: !3560)
!3723 = !DILocation(line: 557, column: 88, scope: !3560)
!3724 = !DILocation(line: 557, column: 9, scope: !3560)
!3725 = !DILocation(line: 560, column: 7, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 560, column: 7)
!3727 = !DILocation(line: 560, column: 7, scope: !3560)
!3728 = !DILocation(line: 562, column: 16, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3726, file: !148, line: 560, column: 17)
!3730 = !DILocation(line: 562, column: 9, scope: !3729)
!3731 = !DILocation(line: 562, column: 59, scope: !3729)
!3732 = !DILocation(line: 562, column: 5, scope: !3729)
!3733 = !DILocation(line: 564, column: 56, scope: !3729)
!3734 = !DILocation(line: 564, column: 48, scope: !3729)
!3735 = !DILocation(line: 564, column: 63, scope: !3729)
!3736 = !DILocation(line: 564, column: 88, scope: !3729)
!3737 = !DILocation(line: 564, column: 108, scope: !3729)
!3738 = !DILocation(line: 564, column: 11, scope: !3729)
!3739 = !DILocation(line: 566, column: 15, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3729, file: !148, line: 566, column: 9)
!3741 = !DILocation(line: 566, column: 9, scope: !3729)
!3742 = !DILocation(line: 567, column: 7, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3740, file: !148, line: 566, column: 29)
!3744 = !DILocation(line: 0, scope: !3729)
!3745 = !DILocation(line: 567, column: 18, scope: !3743)
!3746 = !DILocation(line: 567, column: 30, scope: !3743)
!3747 = !DILocation(line: 567, column: 59, scope: !3743)
!3748 = !DILocation(line: 567, column: 39, scope: !3743)
!3749 = distinct !{!3749, !3742, !3750}
!3750 = !DILocation(line: 567, column: 69, scope: !3743)
!3751 = !DILocation(line: 568, column: 5, scope: !3743)
!3752 = !DILocation(line: 564, column: 9, scope: !3729)
!3753 = !DILocation(line: 569, column: 3, scope: !3729)
!3754 = !DILocation(line: 571, column: 1, scope: !3560)
!3755 = distinct !DISubprogram(name: "_strnlen_s", scope: !148, file: !148, line: 171, type: !3756, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!24, !2653, !151}
!3758 = !{!3759, !3760, !3761}
!3759 = !DILocalVariable(name: "str", arg: 1, scope: !3755, file: !148, line: 171, type: !2653)
!3760 = !DILocalVariable(name: "maxsize", arg: 2, scope: !3755, file: !148, line: 171, type: !151)
!3761 = !DILocalVariable(name: "s", scope: !3755, file: !148, line: 173, type: !2653)
!3762 = !DILocation(line: 0, scope: !3755)
!3763 = !DILocation(line: 174, column: 8, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3755, file: !148, line: 174, column: 3)
!3765 = !DILocation(line: 0, scope: !3764)
!3766 = !DILocation(line: 174, column: 17, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !148, line: 174, column: 3)
!3768 = !DILocation(line: 174, column: 20, scope: !3767)
!3769 = !DILocation(line: 174, column: 30, scope: !3767)
!3770 = !DILocation(line: 0, scope: !3767)
!3771 = !DILocation(line: 174, column: 3, scope: !3764)
!3772 = !DILocation(line: 174, column: 34, scope: !3767)
!3773 = !DILocation(line: 174, column: 3, scope: !3767)
!3774 = distinct !{!3774, !3771, !3775}
!3775 = !DILocation(line: 174, column: 38, scope: !3764)
!3776 = !DILocation(line: 175, column: 27, scope: !3755)
!3777 = !DILocation(line: 175, column: 3, scope: !3755)
!3778 = distinct !DISubprogram(name: "_out_rev", scope: !148, file: !148, line: 199, type: !3779, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!151, !153, !66, !151, !151, !2653, !151, !24, !24}
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3782 = !DILocalVariable(name: "out", arg: 1, scope: !3778, file: !148, line: 199, type: !153)
!3783 = !DILocalVariable(name: "buffer", arg: 2, scope: !3778, file: !148, line: 199, type: !66)
!3784 = !DILocalVariable(name: "idx", arg: 3, scope: !3778, file: !148, line: 199, type: !151)
!3785 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3778, file: !148, line: 199, type: !151)
!3786 = !DILocalVariable(name: "buf", arg: 5, scope: !3778, file: !148, line: 199, type: !2653)
!3787 = !DILocalVariable(name: "len", arg: 6, scope: !3778, file: !148, line: 199, type: !151)
!3788 = !DILocalVariable(name: "width", arg: 7, scope: !3778, file: !148, line: 199, type: !24)
!3789 = !DILocalVariable(name: "flags", arg: 8, scope: !3778, file: !148, line: 199, type: !24)
!3790 = !DILocalVariable(name: "start_idx", scope: !3778, file: !148, line: 201, type: !2696)
!3791 = !DILocalVariable(name: "i", scope: !3792, file: !148, line: 205, type: !151)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !148, line: 205, column: 5)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !148, line: 204, column: 58)
!3794 = distinct !DILexicalBlock(scope: !3778, file: !148, line: 204, column: 7)
!3795 = !DILocation(line: 0, scope: !3778)
!3796 = !DILocation(line: 204, column: 15, scope: !3794)
!3797 = !DILocation(line: 204, column: 29, scope: !3794)
!3798 = !DILocation(line: 204, column: 40, scope: !3794)
!3799 = !DILocation(line: 204, column: 7, scope: !3778)
!3800 = !DILocation(line: 0, scope: !3792)
!3801 = !DILocation(line: 205, column: 10, scope: !3792)
!3802 = !DILocation(line: 205, column: 28, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3792, file: !148, line: 205, column: 5)
!3804 = !DILocation(line: 205, column: 5, scope: !3792)
!3805 = !DILocation(line: 206, column: 27, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !148, line: 205, column: 42)
!3807 = !DILocation(line: 206, column: 7, scope: !3806)
!3808 = !DILocation(line: 207, column: 5, scope: !3806)
!3809 = !DILocation(line: 205, column: 38, scope: !3803)
!3810 = !DILocation(line: 205, column: 5, scope: !3803)
!3811 = distinct !{!3811, !3804, !3812}
!3812 = !DILocation(line: 207, column: 5, scope: !3792)
!3813 = !DILocation(line: 208, column: 3, scope: !3793)
!3814 = !DILocation(line: 211, column: 3, scope: !3778)
!3815 = !DILocation(line: 212, column: 13, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3778, file: !148, line: 211, column: 15)
!3817 = !DILocation(line: 212, column: 9, scope: !3816)
!3818 = !DILocation(line: 212, column: 32, scope: !3816)
!3819 = !DILocation(line: 212, column: 5, scope: !3816)
!3820 = distinct !{!3820, !3814, !3821}
!3821 = !DILocation(line: 213, column: 3, scope: !3778)
!3822 = !DILocation(line: 216, column: 13, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3778, file: !148, line: 216, column: 7)
!3824 = !DILocation(line: 216, column: 7, scope: !3778)
!3825 = !DILocation(line: 217, column: 5, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3823, file: !148, line: 216, column: 27)
!3827 = !DILocation(line: 217, column: 16, scope: !3826)
!3828 = !DILocation(line: 217, column: 28, scope: !3826)
!3829 = !DILocation(line: 218, column: 27, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3826, file: !148, line: 217, column: 37)
!3831 = !DILocation(line: 218, column: 7, scope: !3830)
!3832 = distinct !{!3832, !3825, !3833}
!3833 = !DILocation(line: 219, column: 5, scope: !3826)
!3834 = !DILocation(line: 220, column: 3, scope: !3826)
!3835 = !DILocation(line: 222, column: 3, scope: !3778)
!3836 = distinct !DISubprogram(name: "_ntoa_format", scope: !148, file: !148, line: 227, type: !3837, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!151, !153, !66, !151, !151, !66, !151, !188, !24, !24, !24, !24}
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!3840 = !DILocalVariable(name: "out", arg: 1, scope: !3836, file: !148, line: 227, type: !153)
!3841 = !DILocalVariable(name: "buffer", arg: 2, scope: !3836, file: !148, line: 227, type: !66)
!3842 = !DILocalVariable(name: "idx", arg: 3, scope: !3836, file: !148, line: 227, type: !151)
!3843 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3836, file: !148, line: 227, type: !151)
!3844 = !DILocalVariable(name: "buf", arg: 5, scope: !3836, file: !148, line: 227, type: !66)
!3845 = !DILocalVariable(name: "len", arg: 6, scope: !3836, file: !148, line: 227, type: !151)
!3846 = !DILocalVariable(name: "negative", arg: 7, scope: !3836, file: !148, line: 227, type: !188)
!3847 = !DILocalVariable(name: "base", arg: 8, scope: !3836, file: !148, line: 227, type: !24)
!3848 = !DILocalVariable(name: "prec", arg: 9, scope: !3836, file: !148, line: 227, type: !24)
!3849 = !DILocalVariable(name: "width", arg: 10, scope: !3836, file: !148, line: 227, type: !24)
!3850 = !DILocalVariable(name: "flags", arg: 11, scope: !3836, file: !148, line: 227, type: !24)
!3851 = !DILocation(line: 0, scope: !3836)
!3852 = !DILocation(line: 230, column: 15, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3836, file: !148, line: 230, column: 7)
!3854 = !DILocation(line: 230, column: 7, scope: !3836)
!3855 = !DILocation(line: 231, column: 9, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !148, line: 231, column: 9)
!3857 = distinct !DILexicalBlock(scope: !3853, file: !148, line: 230, column: 30)
!3858 = !DILocation(line: 231, column: 15, scope: !3856)
!3859 = !DILocation(line: 231, column: 25, scope: !3856)
!3860 = !DILocation(line: 231, column: 42, scope: !3856)
!3861 = !DILocation(line: 231, column: 46, scope: !3856)
!3862 = !DILocation(line: 231, column: 55, scope: !3856)
!3863 = !DILocation(line: 231, column: 65, scope: !3856)
!3864 = !DILocation(line: 231, column: 9, scope: !3857)
!3865 = !DILocation(line: 232, column: 12, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3856, file: !148, line: 231, column: 97)
!3867 = !DILocation(line: 233, column: 5, scope: !3866)
!3868 = !DILocation(line: 234, column: 5, scope: !3857)
!3869 = !DILocation(line: 234, column: 17, scope: !3857)
!3870 = !DILocation(line: 234, column: 25, scope: !3857)
!3871 = !DILocation(line: 234, column: 33, scope: !3857)
!3872 = !DILocation(line: 0, scope: !3857)
!3873 = !DILocation(line: 235, column: 14, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3857, file: !148, line: 234, column: 61)
!3875 = !DILocation(line: 235, column: 7, scope: !3874)
!3876 = !DILocation(line: 235, column: 18, scope: !3874)
!3877 = distinct !{!3877, !3868, !3878}
!3878 = !DILocation(line: 236, column: 5, scope: !3857)
!3879 = !DILocation(line: 237, column: 5, scope: !3857)
!3880 = !DILocation(line: 237, column: 19, scope: !3857)
!3881 = !DILocation(line: 237, column: 36, scope: !3857)
!3882 = !DILocation(line: 237, column: 44, scope: !3857)
!3883 = !DILocation(line: 237, column: 53, scope: !3857)
!3884 = !DILocation(line: 237, column: 61, scope: !3857)
!3885 = !DILocation(line: 238, column: 14, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3857, file: !148, line: 237, column: 89)
!3887 = !DILocation(line: 238, column: 7, scope: !3886)
!3888 = !DILocation(line: 238, column: 18, scope: !3886)
!3889 = distinct !{!3889, !3879, !3890}
!3890 = !DILocation(line: 239, column: 5, scope: !3857)
!3891 = !DILocation(line: 240, column: 3, scope: !3857)
!3892 = !DILocation(line: 243, column: 13, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3836, file: !148, line: 243, column: 7)
!3894 = !DILocation(line: 243, column: 7, scope: !3836)
!3895 = !DILocation(line: 244, column: 17, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !148, line: 244, column: 9)
!3897 = distinct !DILexicalBlock(scope: !3893, file: !148, line: 243, column: 27)
!3898 = !DILocation(line: 244, column: 36, scope: !3896)
!3899 = !DILocation(line: 244, column: 39, scope: !3896)
!3900 = !DILocation(line: 244, column: 43, scope: !3896)
!3901 = !DILocation(line: 244, column: 52, scope: !3896)
!3902 = !DILocation(line: 244, column: 61, scope: !3896)
!3903 = !DILocation(line: 244, column: 69, scope: !3896)
!3904 = !DILocation(line: 244, column: 9, scope: !3897)
!3905 = !DILocation(line: 245, column: 10, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3896, file: !148, line: 244, column: 81)
!3907 = !DILocation(line: 246, column: 11, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3906, file: !148, line: 246, column: 11)
!3909 = !DILocation(line: 246, column: 15, scope: !3908)
!3910 = !DILocation(line: 246, column: 24, scope: !3908)
!3911 = !DILocation(line: 246, column: 11, scope: !3906)
!3912 = !DILocation(line: 247, column: 12, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3908, file: !148, line: 246, column: 33)
!3914 = !DILocation(line: 248, column: 7, scope: !3913)
!3915 = !DILocation(line: 0, scope: !3906)
!3916 = !DILocation(line: 249, column: 5, scope: !3906)
!3917 = !DILocation(line: 250, column: 15, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3897, file: !148, line: 250, column: 9)
!3919 = !DILocation(line: 250, column: 23, scope: !3918)
!3920 = !DILocation(line: 250, column: 34, scope: !3918)
!3921 = !DILocation(line: 250, column: 53, scope: !3918)
!3922 = !DILocation(line: 250, column: 61, scope: !3918)
!3923 = !DILocation(line: 250, column: 9, scope: !3897)
!3924 = !DILocation(line: 251, column: 14, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3918, file: !148, line: 250, column: 89)
!3926 = !DILocation(line: 251, column: 7, scope: !3925)
!3927 = !DILocation(line: 251, column: 18, scope: !3925)
!3928 = !DILocation(line: 252, column: 5, scope: !3925)
!3929 = !DILocation(line: 253, column: 20, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3918, file: !148, line: 253, column: 14)
!3931 = !DILocation(line: 253, column: 28, scope: !3930)
!3932 = !DILocation(line: 253, column: 38, scope: !3930)
!3933 = !DILocation(line: 253, column: 57, scope: !3930)
!3934 = !DILocation(line: 253, column: 65, scope: !3930)
!3935 = !DILocation(line: 253, column: 14, scope: !3918)
!3936 = !DILocation(line: 254, column: 14, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3930, file: !148, line: 253, column: 93)
!3938 = !DILocation(line: 254, column: 7, scope: !3937)
!3939 = !DILocation(line: 254, column: 18, scope: !3937)
!3940 = !DILocation(line: 255, column: 5, scope: !3937)
!3941 = !DILocation(line: 256, column: 20, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3930, file: !148, line: 256, column: 14)
!3943 = !DILocation(line: 256, column: 27, scope: !3942)
!3944 = !DILocation(line: 256, column: 35, scope: !3942)
!3945 = !DILocation(line: 256, column: 14, scope: !3930)
!3946 = !DILocation(line: 257, column: 14, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3942, file: !148, line: 256, column: 63)
!3948 = !DILocation(line: 257, column: 7, scope: !3947)
!3949 = !DILocation(line: 257, column: 18, scope: !3947)
!3950 = !DILocation(line: 258, column: 5, scope: !3947)
!3951 = !DILocation(line: 0, scope: !3930)
!3952 = !DILocation(line: 0, scope: !3918)
!3953 = !DILocation(line: 259, column: 13, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3897, file: !148, line: 259, column: 9)
!3955 = !DILocation(line: 259, column: 9, scope: !3897)
!3956 = !DILocation(line: 260, column: 14, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3954, file: !148, line: 259, column: 40)
!3958 = !DILocation(line: 260, column: 7, scope: !3957)
!3959 = !DILocation(line: 260, column: 18, scope: !3957)
!3960 = !DILocation(line: 261, column: 5, scope: !3957)
!3961 = !DILocation(line: 0, scope: !3897)
!3962 = !DILocation(line: 262, column: 3, scope: !3897)
!3963 = !DILocation(line: 264, column: 11, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3836, file: !148, line: 264, column: 7)
!3965 = !DILocation(line: 264, column: 7, scope: !3836)
!3966 = !DILocation(line: 265, column: 9, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !148, line: 265, column: 9)
!3968 = distinct !DILexicalBlock(scope: !3964, file: !148, line: 264, column: 38)
!3969 = !DILocation(line: 265, column: 9, scope: !3968)
!3970 = !DILocation(line: 266, column: 14, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3967, file: !148, line: 265, column: 19)
!3972 = !DILocation(line: 266, column: 7, scope: !3971)
!3973 = !DILocation(line: 266, column: 18, scope: !3971)
!3974 = !DILocation(line: 267, column: 5, scope: !3971)
!3975 = !DILocation(line: 268, column: 20, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3967, file: !148, line: 268, column: 14)
!3977 = !DILocation(line: 268, column: 14, scope: !3967)
!3978 = !DILocation(line: 269, column: 14, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3976, file: !148, line: 268, column: 34)
!3980 = !DILocation(line: 269, column: 7, scope: !3979)
!3981 = !DILocation(line: 269, column: 18, scope: !3979)
!3982 = !DILocation(line: 270, column: 5, scope: !3979)
!3983 = !DILocation(line: 271, column: 20, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3976, file: !148, line: 271, column: 14)
!3985 = !DILocation(line: 271, column: 14, scope: !3976)
!3986 = !DILocation(line: 272, column: 14, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3984, file: !148, line: 271, column: 35)
!3988 = !DILocation(line: 272, column: 7, scope: !3987)
!3989 = !DILocation(line: 272, column: 18, scope: !3987)
!3990 = !DILocation(line: 273, column: 5, scope: !3987)
!3991 = !DILocation(line: 0, scope: !3976)
!3992 = !DILocation(line: 0, scope: !3967)
!3993 = !DILocation(line: 274, column: 3, scope: !3968)
!3994 = !DILocation(line: 276, column: 10, scope: !3836)
!3995 = !DILocation(line: 276, column: 3, scope: !3836)
!3996 = distinct !DISubprogram(name: "sprintf_", scope: !148, file: !148, line: 873, type: !3997, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!43, !66, !2653, null}
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DILocalVariable(name: "buffer", arg: 1, scope: !3996, file: !148, line: 873, type: !66)
!4001 = !DILocalVariable(name: "format", arg: 2, scope: !3996, file: !148, line: 873, type: !2653)
!4002 = !DILocalVariable(name: "va", scope: !3996, file: !148, line: 875, type: !2658)
!4003 = !DILocalVariable(name: "ret", scope: !3996, file: !148, line: 877, type: !2667)
!4004 = !DILocation(line: 0, scope: !3996)
!4005 = !DILocation(line: 875, column: 3, scope: !3996)
!4006 = !DILocation(line: 875, column: 11, scope: !3996)
!4007 = !DILocation(line: 876, column: 3, scope: !3996)
!4008 = !DILocation(line: 877, column: 19, scope: !3996)
!4009 = !DILocation(line: 878, column: 3, scope: !3996)
!4010 = !DILocation(line: 880, column: 1, scope: !3996)
!4011 = !DILocation(line: 879, column: 3, scope: !3996)
!4012 = distinct !DISubprogram(name: "_out_buffer", scope: !148, file: !148, line: 133, type: !155, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4013)
!4013 = !{!4014, !4015, !4016, !4017}
!4014 = !DILocalVariable(name: "character", arg: 1, scope: !4012, file: !148, line: 133, type: !67)
!4015 = !DILocalVariable(name: "buffer", arg: 2, scope: !4012, file: !148, line: 133, type: !19)
!4016 = !DILocalVariable(name: "idx", arg: 3, scope: !4012, file: !148, line: 133, type: !151)
!4017 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4012, file: !148, line: 133, type: !151)
!4018 = !DILocation(line: 0, scope: !4012)
!4019 = !DILocation(line: 135, column: 11, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4012, file: !148, line: 135, column: 7)
!4021 = !DILocation(line: 135, column: 7, scope: !4012)
!4022 = !DILocation(line: 136, column: 5, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4020, file: !148, line: 135, column: 21)
!4024 = !DILocation(line: 136, column: 26, scope: !4023)
!4025 = !DILocation(line: 137, column: 3, scope: !4023)
!4026 = !DILocation(line: 138, column: 1, scope: !4012)
!4027 = distinct !DISubprogram(name: "snprintf_", scope: !148, file: !148, line: 883, type: !4028, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4030)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!43, !66, !151, !2653, null}
!4030 = !{!4031, !4032, !4033, !4034, !4035}
!4031 = !DILocalVariable(name: "buffer", arg: 1, scope: !4027, file: !148, line: 883, type: !66)
!4032 = !DILocalVariable(name: "count", arg: 2, scope: !4027, file: !148, line: 883, type: !151)
!4033 = !DILocalVariable(name: "format", arg: 3, scope: !4027, file: !148, line: 883, type: !2653)
!4034 = !DILocalVariable(name: "va", scope: !4027, file: !148, line: 885, type: !2658)
!4035 = !DILocalVariable(name: "ret", scope: !4027, file: !148, line: 887, type: !2667)
!4036 = !DILocation(line: 0, scope: !4027)
!4037 = !DILocation(line: 885, column: 3, scope: !4027)
!4038 = !DILocation(line: 885, column: 11, scope: !4027)
!4039 = !DILocation(line: 886, column: 3, scope: !4027)
!4040 = !DILocation(line: 887, column: 19, scope: !4027)
!4041 = !DILocation(line: 888, column: 3, scope: !4027)
!4042 = !DILocation(line: 890, column: 1, scope: !4027)
!4043 = !DILocation(line: 889, column: 3, scope: !4027)
!4044 = distinct !DISubprogram(name: "vprintf_", scope: !148, file: !148, line: 893, type: !4045, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!43, !2653, !2658}
!4047 = !{!4048, !4049, !4050}
!4048 = !DILocalVariable(name: "format", arg: 1, scope: !4044, file: !148, line: 893, type: !2653)
!4049 = !DILocalVariable(name: "va", arg: 2, scope: !4044, file: !148, line: 893, type: !2658)
!4050 = !DILocalVariable(name: "buffer", scope: !4044, file: !148, line: 895, type: !2665)
!4051 = !DILocation(line: 0, scope: !4044)
!4052 = !DILocation(line: 893, column: 42, scope: !4044)
!4053 = !DILocation(line: 895, column: 3, scope: !4044)
!4054 = !DILocation(line: 895, column: 8, scope: !4044)
!4055 = !DILocation(line: 896, column: 32, scope: !4044)
!4056 = !DILocation(line: 896, column: 10, scope: !4044)
!4057 = !DILocation(line: 897, column: 1, scope: !4044)
!4058 = !DILocation(line: 896, column: 3, scope: !4044)
!4059 = distinct !DISubprogram(name: "vsnprintf_", scope: !148, file: !148, line: 900, type: !4060, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!43, !66, !151, !2653, !2658}
!4062 = !{!4063, !4064, !4065, !4066}
!4063 = !DILocalVariable(name: "buffer", arg: 1, scope: !4059, file: !148, line: 900, type: !66)
!4064 = !DILocalVariable(name: "count", arg: 2, scope: !4059, file: !148, line: 900, type: !151)
!4065 = !DILocalVariable(name: "format", arg: 3, scope: !4059, file: !148, line: 900, type: !2653)
!4066 = !DILocalVariable(name: "va", arg: 4, scope: !4059, file: !148, line: 900, type: !2658)
!4067 = !DILocation(line: 0, scope: !4059)
!4068 = !DILocation(line: 900, column: 72, scope: !4059)
!4069 = !DILocation(line: 902, column: 10, scope: !4059)
!4070 = !DILocation(line: 902, column: 3, scope: !4059)
!4071 = distinct !DISubprogram(name: "fctprintf", scope: !148, file: !148, line: 906, type: !4072, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!43, !167, !19, !2653, null}
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4081}
!4075 = !DILocalVariable(name: "out", arg: 1, scope: !4071, file: !148, line: 906, type: !167)
!4076 = !DILocalVariable(name: "arg", arg: 2, scope: !4071, file: !148, line: 906, type: !19)
!4077 = !DILocalVariable(name: "format", arg: 3, scope: !4071, file: !148, line: 906, type: !2653)
!4078 = !DILocalVariable(name: "va", scope: !4071, file: !148, line: 908, type: !2658)
!4079 = !DILocalVariable(name: "out_fct_wrap", scope: !4071, file: !148, line: 910, type: !4080)
!4080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!4081 = !DILocalVariable(name: "ret", scope: !4071, file: !148, line: 911, type: !2667)
!4082 = !DILocation(line: 0, scope: !4071)
!4083 = !DILocation(line: 908, column: 3, scope: !4071)
!4084 = !DILocation(line: 908, column: 11, scope: !4071)
!4085 = !DILocation(line: 909, column: 3, scope: !4071)
!4086 = !DILocation(line: 910, column: 3, scope: !4071)
!4087 = !DILocation(line: 910, column: 27, scope: !4071)
!4088 = !DILocation(line: 910, column: 42, scope: !4071)
!4089 = !{!4090, !329, i64 0}
!4090 = !{!"", !329, i64 0, !329, i64 4}
!4091 = !{!4090, !329, i64 4}
!4092 = !DILocation(line: 911, column: 47, scope: !4071)
!4093 = !DILocation(line: 911, column: 40, scope: !4071)
!4094 = !DILocation(line: 911, column: 19, scope: !4071)
!4095 = !DILocation(line: 912, column: 3, scope: !4071)
!4096 = !DILocation(line: 914, column: 1, scope: !4071)
!4097 = !DILocation(line: 913, column: 3, scope: !4071)
!4098 = distinct !DISubprogram(name: "_out_fct", scope: !148, file: !148, line: 159, type: !155, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4099)
!4099 = !{!4100, !4101, !4102, !4103}
!4100 = !DILocalVariable(name: "character", arg: 1, scope: !4098, file: !148, line: 159, type: !67)
!4101 = !DILocalVariable(name: "buffer", arg: 2, scope: !4098, file: !148, line: 159, type: !19)
!4102 = !DILocalVariable(name: "idx", arg: 3, scope: !4098, file: !148, line: 159, type: !151)
!4103 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4098, file: !148, line: 159, type: !151)
!4104 = !DILocation(line: 0, scope: !4098)
!4105 = !DILocation(line: 162, column: 7, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4098, file: !148, line: 162, column: 7)
!4107 = !DILocation(line: 162, column: 7, scope: !4098)
!4108 = !DILocation(line: 164, column: 6, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !148, line: 162, column: 18)
!4110 = !DILocation(line: 164, column: 35, scope: !4109)
!4111 = !DILocation(line: 164, column: 51, scope: !4109)
!4112 = !DILocation(line: 164, column: 80, scope: !4109)
!4113 = !DILocation(line: 164, column: 5, scope: !4109)
!4114 = !DILocation(line: 165, column: 3, scope: !4109)
!4115 = !DILocation(line: 166, column: 1, scope: !4098)
!4116 = distinct !DISubprogram(name: "putc", scope: !4117, file: !4117, line: 10, type: !4118, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4120)
!4117 = !DIFile(filename: "src/icemu/printfmap.c", directory: "/home/vkortbeek1/devel/intermittent-compiler-collection/benchmarks/coremark")
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!43, !43, !19}
!4120 = !{!4121, !4122}
!4121 = !DILocalVariable(name: "character", arg: 1, scope: !4116, file: !4117, line: 10, type: !43)
!4122 = !DILocalVariable(name: "stream", arg: 2, scope: !4116, file: !4117, line: 10, type: !19)
!4123 = !DILocation(line: 10, column: 14, scope: !4116)
!4124 = !DILocation(line: 10, column: 31, scope: !4116)
!4125 = !DILocation(line: 12, column: 11, scope: !4116)
!4126 = !DILocation(line: 13, column: 12, scope: !4116)
!4127 = !DILocation(line: 13, column: 5, scope: !4116)
!4128 = distinct !DISubprogram(name: "_putchar", scope: !4117, file: !4117, line: 17, type: !4129, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4131)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !67}
!4131 = !{!4132}
!4132 = !DILocalVariable(name: "character", arg: 1, scope: !4128, file: !4117, line: 17, type: !67)
!4133 = !DILocation(line: 17, column: 20, scope: !4128)
!4134 = !DILocation(line: 18, column: 10, scope: !4128)
!4135 = !DILocation(line: 18, column: 5, scope: !4128)
!4136 = !DILocation(line: 19, column: 1, scope: !4128)
!4137 = distinct !DISubprogram(name: "Reset_Handler", scope: !206, file: !206, line: 251, type: !214, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4138 = !DILocation(line: 256, column: 5, scope: !4137)
!4139 = !{i32 13155, i32 13197, i32 13243}
!4140 = !DILocation(line: 263, column: 5, scope: !4137)
!4141 = !{i32 13321}
!4142 = !DILocation(line: 282, column: 5, scope: !4137)
!4143 = !{i32 13764}
!4144 = !DILocation(line: 288, column: 5, scope: !4137)
!4145 = !{i32 13922, i32 13965, i32 14003, i32 14041, i32 14066, i32 14107, i32 14148, i32 14185}
!4146 = !DILocation(line: 299, column: 5, scope: !4137)
!4147 = !{i32 14274, i32 14312, i32 14349, i32 14382, i32 14407, i32 14444, i32 14477, i32 14520}
!4148 = !DILocation(line: 313, column: 5, scope: !4137)
!4149 = !{i32 14731}
!4150 = !DILocation(line: 319, column: 5, scope: !4137)
!4151 = !{i32 14873}
!4152 = !DILocation(line: 324, column: 5, scope: !4137)
!4153 = !{i32 14980}
!4154 = !DILocation(line: 325, column: 1, scope: !4137)
!4155 = distinct !DISubprogram(name: "NMI_Handler", scope: !206, file: !206, line: 338, type: !214, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4156 = !DILocation(line: 343, column: 5, scope: !4155)
!4157 = distinct !{!4157, !4156, !4158}
!4158 = !DILocation(line: 345, column: 5, scope: !4155)
!4159 = distinct !DISubprogram(name: "HardFault_Handler", scope: !206, file: !206, line: 356, type: !214, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4160 = !DILocation(line: 361, column: 5, scope: !4159)
!4161 = distinct !{!4161, !4160, !4162}
!4162 = !DILocation(line: 363, column: 5, scope: !4159)
!4163 = distinct !DISubprogram(name: "am_default_isr", scope: !206, file: !206, line: 374, type: !214, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4164 = !DILocation(line: 379, column: 5, scope: !4163)
!4165 = distinct !{!4165, !4164, !4166}
!4166 = !DILocation(line: 381, column: 5, scope: !4163)
!4167 = distinct !DISubprogram(name: "__checkpoint_startup_checkpoint", scope: !206, file: !206, line: 51, type: !214, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4168 = !DILocation(line: 52, column: 1, scope: !4167)
!4169 = distinct !DISubprogram(name: "__checkpoint_startup_restore", scope: !206, file: !206, line: 55, type: !214, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4170 = !DILocation(line: 56, column: 1, scope: !4169)
