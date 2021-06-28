; ModuleID = '/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark/build-noelle/src/coremark.bc'
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

31:                                               ; preds = %._crit_edge, %30
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

50:                                               ; preds = %._crit_edge3, %48
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

62:                                               ; preds = %._crit_edge4, %60
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

30:                                               ; preds = %._crit_edge, %5
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

56:                                               ; preds = %._crit_edge, %45
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

70:                                               ; preds = %._crit_edge11, %60
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

80:                                               ; preds = %._crit_edge12, %76
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

95:                                               ; preds = %._crit_edge13, %93
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

104:                                              ; preds = %._crit_edge14, %101
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

20:                                               ; preds = %._crit_edge, %10
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

40:                                               ; preds = %._crit_edge2, %29
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

20:                                               ; preds = %._crit_edge, %17
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

27:                                               ; preds = %._crit_edge29, %25
  %28 = phi i1 [ false, %._crit_edge29 ], [ %26, %25 ], !dbg !688
  br label %29, !dbg !706

29:                                               ; preds = %._crit_edge28, %27
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

26:                                               ; preds = %._crit_edge, %22
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

35:                                               ; preds = %._crit_edge, %32
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

60:                                               ; preds = %._crit_edge29, %._crit_edge28, %._crit_edge27, %53
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

85:                                               ; preds = %._crit_edge32, %._crit_edge31, %._crit_edge30, %78
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %86, !dbg !1135

86:                                               ; preds = %129, %85
  %.02 = phi i16 [ 0, %85 ], [ %130, %129 ], !dbg !1137
  call void @llvm.dbg.value(metadata i16 %.02, metadata !1023, metadata !DIExpression()), !dbg !1048
  %87 = zext i16 %.02 to i32, !dbg !1138
  %88 = icmp slt i32 %87, 1, !dbg !1140
  br i1 %88, label %89, label %131, !dbg !1141

89:                                               ; preds = %86
  %90 = getelementptr inbounds [2000 x i8], [2000 x i8]* %5, i32 0, i32 0, !dbg !1142
  %91 = zext i16 %.02 to i32, !dbg !1144
  %92 = mul nsw i32 %91, 2, !dbg !1145
  %93 = mul nsw i32 %92, 1000, !dbg !1146
  %94 = getelementptr inbounds i8, i8* %90, i32 %93, !dbg !1147
  %95 = zext i16 %.02 to i32, !dbg !1148
  %96 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %95, !dbg !1148
  %97 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %96, i32 0, i32 3, !dbg !1149
  %98 = getelementptr inbounds [4 x i8*], [4 x i8*]* %97, i32 0, i32 0, !dbg !1148
  store i8* %94, i8** %98, align 4, !dbg !1150, !tbaa !334
  %99 = zext i16 %.02 to i32, !dbg !1151
  %100 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %99, !dbg !1151
  %101 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %100, i32 0, i32 4, !dbg !1152
  store i32 2000, i32* %101, align 4, !dbg !1153, !tbaa !326
  %102 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1154
  %103 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %102, i32 0, i32 0, !dbg !1155
  %104 = load i16, i16* %103, align 4, !dbg !1155, !tbaa !336
  %105 = zext i16 %.02 to i32, !dbg !1156
  %106 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %105, !dbg !1156
  %107 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %106, i32 0, i32 0, !dbg !1157
  store i16 %104, i16* %107, align 4, !dbg !1158, !tbaa !336
  %108 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1159
  %109 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %108, i32 0, i32 1, !dbg !1160
  %110 = load i16, i16* %109, align 2, !dbg !1160, !tbaa !338
  %111 = zext i16 %.02 to i32, !dbg !1161
  %112 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %111, !dbg !1161
  %113 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %112, i32 0, i32 1, !dbg !1162
  store i16 %110, i16* %113, align 2, !dbg !1163, !tbaa !338
  %114 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1164
  %115 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %114, i32 0, i32 2, !dbg !1165
  %116 = load i16, i16* %115, align 4, !dbg !1165, !tbaa !477
  %117 = zext i16 %.02 to i32, !dbg !1166
  %118 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %117, !dbg !1166
  %119 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %118, i32 0, i32 2, !dbg !1167
  store i16 %116, i16* %119, align 4, !dbg !1168, !tbaa !477
  %120 = zext i16 %.02 to i32, !dbg !1169
  %121 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %120, !dbg !1169
  %122 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %121, i32 0, i32 13, !dbg !1170
  store i16 0, i16* %122, align 4, !dbg !1171, !tbaa !1172
  %123 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1173
  %124 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %123, i32 0, i32 6, !dbg !1174
  %125 = load i32, i32* %124, align 4, !dbg !1174, !tbaa !1076
  %126 = zext i16 %.02 to i32, !dbg !1175
  %127 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %126, !dbg !1175
  %128 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %127, i32 0, i32 6, !dbg !1176
  store i32 %125, i32* %128, align 4, !dbg !1177, !tbaa !1076
  br label %129, !dbg !1178

129:                                              ; preds = %89
  %130 = add nsw i16 %.02, 1, !dbg !1179
  call void @llvm.dbg.value(metadata i16 %130, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %86, !dbg !1180, !llvm.loop !1181

131:                                              ; preds = %86
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %132, !dbg !1183

132:                                              ; preds = %146, %131
  %.05 = phi i16 [ 0, %131 ], [ %.16, %146 ], !dbg !1048
  %.1 = phi i16 [ 0, %131 ], [ %147, %146 ], !dbg !1185
  call void @llvm.dbg.value(metadata i16 %.1, metadata !1023, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.05, metadata !1025, metadata !DIExpression()), !dbg !1048
  %133 = zext i16 %.1 to i32, !dbg !1186
  %134 = icmp slt i32 %133, 3, !dbg !1188
  br i1 %134, label %135, label %148, !dbg !1189

135:                                              ; preds = %132
  %136 = zext i16 %.1 to i32, !dbg !1190
  %137 = shl i32 1, %136, !dbg !1193
  %138 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1194
  %139 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %138, i32 0, i32 6, !dbg !1195
  %140 = load i32, i32* %139, align 4, !dbg !1195, !tbaa !1076
  %141 = and i32 %137, %140, !dbg !1196
  %142 = icmp ne i32 %141, 0, !dbg !1196
  br i1 %142, label %143, label %._crit_edge33, !dbg !1197

._crit_edge33:                                    ; preds = %135
  br label %145, !dbg !1197

143:                                              ; preds = %135
  %144 = add i16 %.05, 1, !dbg !1198
  call void @llvm.dbg.value(metadata i16 %144, metadata !1025, metadata !DIExpression()), !dbg !1048
  br label %145, !dbg !1199

145:                                              ; preds = %._crit_edge33, %143
  %.16 = phi i16 [ %144, %143 ], [ %.05, %._crit_edge33 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.16, metadata !1025, metadata !DIExpression()), !dbg !1048
  br label %146, !dbg !1200

146:                                              ; preds = %145
  %147 = add nsw i16 %.1, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i16 %147, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %132, !dbg !1202, !llvm.loop !1203

148:                                              ; preds = %132
  %.05.lcssa = phi i16 [ %.05, %132 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.05.lcssa, metadata !1025, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %149, !dbg !1205

149:                                              ; preds = %162, %148
  %.2 = phi i16 [ 0, %148 ], [ %163, %162 ], !dbg !1207
  call void @llvm.dbg.value(metadata i16 %.2, metadata !1023, metadata !DIExpression()), !dbg !1048
  %150 = zext i16 %.2 to i32, !dbg !1208
  %151 = icmp slt i32 %150, 1, !dbg !1210
  br i1 %151, label %152, label %164, !dbg !1211

152:                                              ; preds = %149
  %153 = zext i16 %.2 to i32, !dbg !1212
  %154 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %153, !dbg !1212
  %155 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %154, i32 0, i32 4, !dbg !1213
  %156 = load i32, i32* %155, align 4, !dbg !1213, !tbaa !326
  %157 = zext i16 %.05.lcssa to i32, !dbg !1214
  %158 = udiv i32 %156, %157, !dbg !1215
  %159 = zext i16 %.2 to i32, !dbg !1216
  %160 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %159, !dbg !1216
  %161 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %160, i32 0, i32 4, !dbg !1217
  store i32 %158, i32* %161, align 4, !dbg !1218, !tbaa !326
  br label %162, !dbg !1216

162:                                              ; preds = %152
  %163 = add nsw i16 %.2, 1, !dbg !1219
  call void @llvm.dbg.value(metadata i16 %163, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %149, !dbg !1220, !llvm.loop !1221

164:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %165, !dbg !1223

165:                                              ; preds = %199, %164
  %.03 = phi i16 [ 0, %164 ], [ %.14, %199 ], !dbg !1048
  %.3 = phi i16 [ 0, %164 ], [ %200, %199 ], !dbg !1224
  call void @llvm.dbg.value(metadata i16 %.3, metadata !1023, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.03, metadata !1024, metadata !DIExpression()), !dbg !1048
  %166 = zext i16 %.3 to i32, !dbg !1225
  %167 = icmp slt i32 %166, 3, !dbg !1226
  br i1 %167, label %168, label %201, !dbg !1227

168:                                              ; preds = %165
  %169 = zext i16 %.3 to i32, !dbg !1228
  %170 = shl i32 1, %169, !dbg !1230
  %171 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1231
  %172 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %171, i32 0, i32 6, !dbg !1232
  %173 = load i32, i32* %172, align 4, !dbg !1232, !tbaa !1076
  %174 = and i32 %170, %173, !dbg !1233
  %175 = icmp ne i32 %174, 0, !dbg !1233
  br i1 %175, label %176, label %._crit_edge34, !dbg !1234

._crit_edge34:                                    ; preds = %168
  br label %198, !dbg !1234

176:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i32 0, metadata !1038, metadata !DIExpression()), !dbg !1235
  br label %177, !dbg !1236

177:                                              ; preds = %194, %176
  %.012 = phi i32 [ 0, %176 ], [ %195, %194 ], !dbg !1239
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1038, metadata !DIExpression()), !dbg !1235
  %exitcond = icmp ne i32 %.012, 1, !dbg !1240
  br i1 %exitcond, label %178, label %196, !dbg !1242

178:                                              ; preds = %177
  %179 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1243
  %180 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %179, i32 0, i32 3, !dbg !1244
  %181 = getelementptr inbounds [4 x i8*], [4 x i8*]* %180, i32 0, i32 0, !dbg !1243
  %182 = load i8*, i8** %181, align 4, !dbg !1243, !tbaa !334
  %183 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1245
  %184 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %183, i32 0, i32 4, !dbg !1246
  %185 = load i32, i32* %184, align 4, !dbg !1246, !tbaa !326
  %186 = zext i16 %.03 to i32, !dbg !1247
  %187 = mul i32 %185, %186, !dbg !1248
  %188 = getelementptr inbounds i8, i8* %182, i32 %187, !dbg !1249
  %189 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %.012, !dbg !1250
  %190 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %189, i32 0, i32 3, !dbg !1251
  %191 = zext i16 %.3 to i32, !dbg !1252
  %192 = add nsw i32 %191, 1, !dbg !1253
  %193 = getelementptr inbounds [4 x i8*], [4 x i8*]* %190, i32 0, i32 %192, !dbg !1250
  store i8* %188, i8** %193, align 4, !dbg !1254, !tbaa !334
  br label %194, !dbg !1250

194:                                              ; preds = %178
  %195 = add nuw nsw i32 %.012, 1, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %195, metadata !1038, metadata !DIExpression()), !dbg !1235
  br label %177, !dbg !1256, !llvm.loop !1257

196:                                              ; preds = %177
  %197 = add i16 %.03, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i16 %197, metadata !1024, metadata !DIExpression()), !dbg !1048
  br label %198, !dbg !1260

198:                                              ; preds = %._crit_edge34, %196
  %.14 = phi i16 [ %197, %196 ], [ %.03, %._crit_edge34 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.14, metadata !1024, metadata !DIExpression()), !dbg !1048
  br label %199, !dbg !1261

199:                                              ; preds = %198
  %200 = add nsw i16 %.3, 1, !dbg !1262
  call void @llvm.dbg.value(metadata i16 %200, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %165, !dbg !1263, !llvm.loop !1264

201:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %202, !dbg !1266

202:                                              ; preds = %283, %201
  %.4 = phi i16 [ 0, %201 ], [ %284, %283 ], !dbg !1268
  call void @llvm.dbg.value(metadata i16 %.4, metadata !1023, metadata !DIExpression()), !dbg !1048
  %203 = zext i16 %.4 to i32, !dbg !1269
  %204 = icmp slt i32 %203, 1, !dbg !1271
  br i1 %204, label %205, label %285, !dbg !1272

205:                                              ; preds = %202
  %206 = zext i16 %.4 to i32, !dbg !1273
  %207 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %206, !dbg !1273
  %208 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %207, i32 0, i32 6, !dbg !1276
  %209 = load i32, i32* %208, align 4, !dbg !1276, !tbaa !1076
  %210 = and i32 %209, 1, !dbg !1277
  %211 = icmp ne i32 %210, 0, !dbg !1277
  br i1 %211, label %212, label %._crit_edge35, !dbg !1278

._crit_edge35:                                    ; preds = %205
  br label %230, !dbg !1278

212:                                              ; preds = %205
  %213 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1279
  %214 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %213, i32 0, i32 4, !dbg !1281
  %215 = load i32, i32* %214, align 4, !dbg !1281, !tbaa !326
  %216 = zext i16 %.4 to i32, !dbg !1282
  %217 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %216, !dbg !1282
  %218 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %217, i32 0, i32 3, !dbg !1283
  %219 = getelementptr inbounds [4 x i8*], [4 x i8*]* %218, i32 0, i32 1, !dbg !1282
  %220 = load i8*, i8** %219, align 4, !dbg !1282, !tbaa !334
  %221 = bitcast i8* %220 to %struct.list_head_s*, !dbg !1282
  %222 = zext i16 %.4 to i32, !dbg !1284
  %223 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %222, !dbg !1284
  %224 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %223, i32 0, i32 0, !dbg !1285
  %225 = load i16, i16* %224, align 4, !dbg !1285, !tbaa !336
  %226 = call arm_aapcscc %struct.list_head_s* @core_list_init(i32 %215, %struct.list_head_s* %221, i16 signext %225), !dbg !1286
  %227 = zext i16 %.4 to i32, !dbg !1287
  %228 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %227, !dbg !1287
  %229 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %228, i32 0, i32 7, !dbg !1288
  store %struct.list_head_s* %226, %struct.list_head_s** %229, align 4, !dbg !1289, !tbaa !475
  br label %230, !dbg !1290

230:                                              ; preds = %._crit_edge35, %212
  %231 = zext i16 %.4 to i32, !dbg !1291
  %232 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %231, !dbg !1291
  %233 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %232, i32 0, i32 6, !dbg !1293
  %234 = load i32, i32* %233, align 4, !dbg !1293, !tbaa !1076
  %235 = and i32 %234, 2, !dbg !1294
  %236 = icmp ne i32 %235, 0, !dbg !1294
  br i1 %236, label %237, label %._crit_edge36, !dbg !1295

._crit_edge36:                                    ; preds = %230
  br label %262, !dbg !1295

237:                                              ; preds = %230
  %238 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1296
  %239 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %238, i32 0, i32 4, !dbg !1298
  %240 = load i32, i32* %239, align 4, !dbg !1298, !tbaa !326
  %241 = zext i16 %.4 to i32, !dbg !1299
  %242 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %241, !dbg !1299
  %243 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %242, i32 0, i32 3, !dbg !1300
  %244 = getelementptr inbounds [4 x i8*], [4 x i8*]* %243, i32 0, i32 2, !dbg !1299
  %245 = load i8*, i8** %244, align 4, !dbg !1299, !tbaa !334
  %246 = zext i16 %.4 to i32, !dbg !1301
  %247 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %246, !dbg !1301
  %248 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %247, i32 0, i32 0, !dbg !1302
  %249 = load i16, i16* %248, align 4, !dbg !1302, !tbaa !336
  %250 = sext i16 %249 to i32, !dbg !1303
  %251 = zext i16 %.4 to i32, !dbg !1304
  %252 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %251, !dbg !1304
  %253 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %252, i32 0, i32 1, !dbg !1305
  %254 = load i16, i16* %253, align 2, !dbg !1305, !tbaa !338
  %255 = sext i16 %254 to i32, !dbg !1306
  %256 = shl i32 %255, 16, !dbg !1307
  %257 = or i32 %250, %256, !dbg !1308
  %258 = zext i16 %.4 to i32, !dbg !1309
  %259 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %258, !dbg !1309
  %260 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %259, i32 0, i32 8, !dbg !1310
  %261 = call arm_aapcscc i32 @core_init_matrix(i32 %240, i8* %245, i32 %257, %struct.MAT_PARAMS_S* %260), !dbg !1311
  br label %262, !dbg !1312

262:                                              ; preds = %._crit_edge36, %237
  %263 = zext i16 %.4 to i32, !dbg !1313
  %264 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %263, !dbg !1313
  %265 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %264, i32 0, i32 6, !dbg !1315
  %266 = load i32, i32* %265, align 4, !dbg !1315, !tbaa !1076
  %267 = and i32 %266, 4, !dbg !1316
  %268 = icmp ne i32 %267, 0, !dbg !1316
  br i1 %268, label %269, label %._crit_edge37, !dbg !1317

._crit_edge37:                                    ; preds = %262
  br label %282, !dbg !1317

269:                                              ; preds = %262
  %270 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1318
  %271 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %270, i32 0, i32 4, !dbg !1320
  %272 = load i32, i32* %271, align 4, !dbg !1320, !tbaa !326
  %273 = zext i16 %.4 to i32, !dbg !1321
  %274 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %273, !dbg !1321
  %275 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %274, i32 0, i32 0, !dbg !1322
  %276 = load i16, i16* %275, align 4, !dbg !1322, !tbaa !336
  %277 = zext i16 %.4 to i32, !dbg !1323
  %278 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %277, !dbg !1323
  %279 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %278, i32 0, i32 3, !dbg !1324
  %280 = getelementptr inbounds [4 x i8*], [4 x i8*]* %279, i32 0, i32 3, !dbg !1323
  %281 = load i8*, i8** %280, align 4, !dbg !1323, !tbaa !334
  call arm_aapcscc void @core_init_state(i32 %272, i16 signext %276, i8* %281), !dbg !1325
  br label %282, !dbg !1326

282:                                              ; preds = %._crit_edge37, %269
  br label %283, !dbg !1327

283:                                              ; preds = %282
  %284 = add nsw i16 %.4, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i16 %284, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %202, !dbg !1329, !llvm.loop !1330

285:                                              ; preds = %202
  %286 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1332
  %287 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %286, i32 0, i32 5, !dbg !1333
  %288 = load i32, i32* %287, align 4, !dbg !1333, !tbaa !976
  %289 = icmp eq i32 %288, 0, !dbg !1334
  br i1 %289, label %290, label %._crit_edge38, !dbg !1335

._crit_edge38:                                    ; preds = %285
  br label %316, !dbg !1335

290:                                              ; preds = %285
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1042, metadata !DIExpression()), !dbg !1336
  %291 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1337
  %292 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %291, i32 0, i32 5, !dbg !1338
  store i32 1, i32* %292, align 4, !dbg !1339, !tbaa !976
  br label %293, !dbg !1340

293:                                              ; preds = %295, %290
  %.01 = phi double [ 0.000000e+00, %290 ], [ %304, %295 ], !dbg !1336
  call void @llvm.dbg.value(metadata double %.01, metadata !1042, metadata !DIExpression()), !dbg !1336
  %294 = fcmp olt double %.01, 1.000000e+00, !dbg !1341
  br i1 %294, label %295, label %305, !dbg !1340

295:                                              ; preds = %293
  %296 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1342
  %297 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %296, i32 0, i32 5, !dbg !1344
  %298 = load i32, i32* %297, align 4, !dbg !1345, !tbaa !976
  %299 = mul i32 %298, 10, !dbg !1345
  store i32 %299, i32* %297, align 4, !dbg !1345, !tbaa !976
  call arm_aapcscc void @start_time(), !dbg !1346
  %300 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1347
  %301 = bitcast %struct.RESULTS_S* %300 to i8*, !dbg !1348
  %302 = call arm_aapcscc i8* @iterate(i8* %301), !dbg !1349
  call arm_aapcscc void @stop_time(), !dbg !1350
  %303 = call arm_aapcscc i32 @get_time(), !dbg !1351
  %304 = call arm_aapcscc double @time_in_secs(i32 %303), !dbg !1352
  call void @llvm.dbg.value(metadata double %304, metadata !1042, metadata !DIExpression()), !dbg !1336
  br label %293, !dbg !1340, !llvm.loop !1353

305:                                              ; preds = %293
  %.01.lcssa = phi double [ %.01, %293 ], !dbg !1336
  call void @llvm.dbg.value(metadata double %.01.lcssa, metadata !1042, metadata !DIExpression()), !dbg !1336
  %306 = fptoui double %.01.lcssa to i32, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %306, metadata !1045, metadata !DIExpression()), !dbg !1336
  %307 = icmp eq i32 %306, 0, !dbg !1356
  br i1 %307, label %308, label %._crit_edge39, !dbg !1358

._crit_edge39:                                    ; preds = %305
  br label %309, !dbg !1358

308:                                              ; preds = %305
  call void @llvm.dbg.value(metadata i32 1, metadata !1045, metadata !DIExpression()), !dbg !1336
  br label %309, !dbg !1359

309:                                              ; preds = %._crit_edge39, %308
  %.0 = phi i32 [ 1, %308 ], [ %306, %._crit_edge39 ], !dbg !1336
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1045, metadata !DIExpression()), !dbg !1336
  %310 = udiv i32 10, %.0, !dbg !1360
  %311 = add i32 1, %310, !dbg !1361
  %312 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1362
  %313 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %312, i32 0, i32 5, !dbg !1363
  %314 = load i32, i32* %313, align 4, !dbg !1364, !tbaa !976
  %315 = mul i32 %314, %311, !dbg !1364
  store i32 %315, i32* %313, align 4, !dbg !1364, !tbaa !976
  br label %316, !dbg !1365

316:                                              ; preds = %._crit_edge38, %309
  call arm_aapcscc void @start_time(), !dbg !1366
  %317 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1367
  %318 = bitcast %struct.RESULTS_S* %317 to i8*, !dbg !1368
  %319 = call arm_aapcscc i8* @iterate(i8* %318), !dbg !1369
  call arm_aapcscc void @stop_time(), !dbg !1370
  %320 = call arm_aapcscc i32 @get_time(), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %320, metadata !1029, metadata !DIExpression()), !dbg !1048
  %321 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1372
  %322 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %321, i32 0, i32 0, !dbg !1373
  %323 = load i16, i16* %322, align 4, !dbg !1373, !tbaa !336
  %324 = call arm_aapcscc zeroext i16 @crc16(i16 signext %323, i16 zeroext 0), !dbg !1374
  call void @llvm.dbg.value(metadata i16 %324, metadata !1028, metadata !DIExpression()), !dbg !1048
  %325 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1375
  %326 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %325, i32 0, i32 1, !dbg !1376
  %327 = load i16, i16* %326, align 2, !dbg !1376, !tbaa !338
  %328 = call arm_aapcscc zeroext i16 @crc16(i16 signext %327, i16 zeroext %324), !dbg !1377
  call void @llvm.dbg.value(metadata i16 %328, metadata !1028, metadata !DIExpression()), !dbg !1048
  %329 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1378
  %330 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %329, i32 0, i32 2, !dbg !1379
  %331 = load i16, i16* %330, align 4, !dbg !1379, !tbaa !477
  %332 = call arm_aapcscc zeroext i16 @crc16(i16 signext %331, i16 zeroext %328), !dbg !1380
  call void @llvm.dbg.value(metadata i16 %332, metadata !1028, metadata !DIExpression()), !dbg !1048
  %333 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1381
  %334 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %333, i32 0, i32 4, !dbg !1382
  %335 = load i32, i32* %334, align 4, !dbg !1382, !tbaa !326
  %336 = trunc i32 %335 to i16, !dbg !1381
  %337 = call arm_aapcscc zeroext i16 @crc16(i16 signext %336, i16 zeroext %332), !dbg !1383
  call void @llvm.dbg.value(metadata i16 %337, metadata !1028, metadata !DIExpression()), !dbg !1048
  %338 = zext i16 %337 to i32, !dbg !1384
  br label %NodeBlock25

NodeBlock25:                                      ; preds = %316
  %Pivot26 = icmp slt i32 %338, 31493
  br i1 %Pivot26, label %NodeBlock, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %Pivot24 = icmp slt i32 %338, 35330
  br i1 %Pivot24, label %LeafBlock15, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %Pivot22 = icmp slt i32 %338, 59893
  br i1 %Pivot22, label %LeafBlock17, label %LeafBlock19

LeafBlock19:                                      ; preds = %NodeBlock21
  %SwitchLeaf20 = icmp eq i32 %338, 59893
  br i1 %SwitchLeaf20, label %348, label %LeafBlock19.NewDefault_crit_edge

LeafBlock19.NewDefault_crit_edge:                 ; preds = %LeafBlock19
  br label %NewDefault

LeafBlock17:                                      ; preds = %NodeBlock21
  %SwitchLeaf18 = icmp eq i32 %338, 35330
  br i1 %SwitchLeaf18, label %339, label %LeafBlock17.NewDefault_crit_edge

LeafBlock17.NewDefault_crit_edge:                 ; preds = %LeafBlock17
  br label %NewDefault

LeafBlock15:                                      ; preds = %NodeBlock23
  %SwitchLeaf16 = icmp eq i32 %338, 31493
  br i1 %SwitchLeaf16, label %342, label %LeafBlock15.NewDefault_crit_edge

LeafBlock15.NewDefault_crit_edge:                 ; preds = %LeafBlock15
  br label %NewDefault

NodeBlock:                                        ; preds = %NodeBlock25
  %Pivot = icmp slt i32 %338, 20143
  br i1 %Pivot, label %LeafBlock, label %LeafBlock13

LeafBlock13:                                      ; preds = %NodeBlock
  %SwitchLeaf14 = icmp eq i32 %338, 20143
  br i1 %SwitchLeaf14, label %345, label %LeafBlock13.NewDefault_crit_edge

LeafBlock13.NewDefault_crit_edge:                 ; preds = %LeafBlock13
  br label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %338, 6386
  br i1 %SwitchLeaf, label %351, label %LeafBlock.NewDefault_crit_edge

LeafBlock.NewDefault_crit_edge:                   ; preds = %LeafBlock
  br label %NewDefault

339:                                              ; preds = %LeafBlock17
  call void @llvm.dbg.value(metadata i16 0, metadata !1026, metadata !DIExpression()), !dbg !1048
  %340 = getelementptr [45 x i8], [45 x i8]* @.str.3, i32 0, i32 0
  %341 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %340), !dbg !1385
  br label %355, !dbg !1387

342:                                              ; preds = %LeafBlock15
  call void @llvm.dbg.value(metadata i16 1, metadata !1026, metadata !DIExpression()), !dbg !1048
  %343 = getelementptr [44 x i8], [44 x i8]* @.str.4, i32 0, i32 0
  %344 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %343), !dbg !1388
  br label %355, !dbg !1389

345:                                              ; preds = %LeafBlock13
  call void @llvm.dbg.value(metadata i16 2, metadata !1026, metadata !DIExpression()), !dbg !1048
  %346 = getelementptr [49 x i8], [49 x i8]* @.str.5, i32 0, i32 0
  %347 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %346), !dbg !1390
  br label %355, !dbg !1391

348:                                              ; preds = %LeafBlock19
  call void @llvm.dbg.value(metadata i16 3, metadata !1026, metadata !DIExpression()), !dbg !1048
  %349 = getelementptr [45 x i8], [45 x i8]* @.str.6, i32 0, i32 0
  %350 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %349), !dbg !1392
  br label %355, !dbg !1393

351:                                              ; preds = %LeafBlock
  call void @llvm.dbg.value(metadata i16 4, metadata !1026, metadata !DIExpression()), !dbg !1048
  %352 = getelementptr [44 x i8], [44 x i8]* @.str.7, i32 0, i32 0
  %353 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %352), !dbg !1394
  br label %355, !dbg !1395

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock13.NewDefault_crit_edge, %LeafBlock15.NewDefault_crit_edge, %LeafBlock17.NewDefault_crit_edge, %LeafBlock19.NewDefault_crit_edge
  br label %354

354:                                              ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i16 -1, metadata !1027, metadata !DIExpression()), !dbg !1048
  br label %355, !dbg !1396

355:                                              ; preds = %354, %351, %348, %345, %342, %339
  %.08 = phi i16 [ -1, %354 ], [ 0, %351 ], [ 0, %348 ], [ 0, %345 ], [ 0, %342 ], [ 0, %339 ], !dbg !1048
  %.07 = phi i16 [ -1, %354 ], [ 4, %351 ], [ 3, %348 ], [ 2, %345 ], [ 1, %342 ], [ 0, %339 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.07, metadata !1026, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.08, metadata !1027, metadata !DIExpression()), !dbg !1048
  %356 = sext i16 %.07 to i32, !dbg !1397
  %357 = icmp sge i32 %356, 0, !dbg !1399
  br i1 %357, label %358, label %._crit_edge40, !dbg !1400

._crit_edge40:                                    ; preds = %355
  br label %486, !dbg !1400

358:                                              ; preds = %355
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %359, !dbg !1401

359:                                              ; preds = %483, %358
  %.19 = phi i16 [ %.08, %358 ], [ %482, %483 ], !dbg !1048
  %.5 = phi i16 [ 0, %358 ], [ %484, %483 ], !dbg !1404
  call void @llvm.dbg.value(metadata i16 %.5, metadata !1023, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.19, metadata !1027, metadata !DIExpression()), !dbg !1048
  %360 = zext i16 %.5 to i32, !dbg !1405
  %361 = load i32, i32* @default_num_contexts, align 4, !dbg !1407, !tbaa !1046
  %362 = icmp ult i32 %360, %361, !dbg !1408
  br i1 %362, label %363, label %485, !dbg !1409

363:                                              ; preds = %359
  %364 = zext i16 %.5 to i32, !dbg !1410
  %365 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %364, !dbg !1410
  %366 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %365, i32 0, i32 13, !dbg !1412
  store i16 0, i16* %366, align 4, !dbg !1413, !tbaa !1172
  %367 = zext i16 %.5 to i32, !dbg !1414
  %368 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %367, !dbg !1414
  %369 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %368, i32 0, i32 6, !dbg !1416
  %370 = load i32, i32* %369, align 4, !dbg !1416, !tbaa !1076
  %371 = and i32 %370, 1, !dbg !1417
  %372 = icmp ne i32 %371, 0, !dbg !1417
  br i1 %372, label %373, label %._crit_edge41, !dbg !1418

._crit_edge41:                                    ; preds = %363
  br label %402, !dbg !1418

373:                                              ; preds = %363
  %374 = zext i16 %.5 to i32, !dbg !1419
  %375 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %374, !dbg !1419
  %376 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %375, i32 0, i32 10, !dbg !1420
  %377 = load i16, i16* %376, align 2, !dbg !1420, !tbaa !981
  %378 = zext i16 %377 to i32, !dbg !1419
  %379 = sext i16 %.07 to i32, !dbg !1421
  %380 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %379, !dbg !1421
  %381 = load i16, i16* %380, align 2, !dbg !1421, !tbaa !294
  %382 = zext i16 %381 to i32, !dbg !1421
  %383 = icmp ne i32 %378, %382, !dbg !1422
  br i1 %383, label %384, label %._crit_edge42, !dbg !1423

._crit_edge42:                                    ; preds = %373
  br label %402, !dbg !1423

384:                                              ; preds = %373
  %385 = zext i16 %.5 to i32, !dbg !1424
  %386 = zext i16 %.5 to i32, !dbg !1426
  %387 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %386, !dbg !1426
  %388 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %387, i32 0, i32 10, !dbg !1427
  %389 = load i16, i16* %388, align 2, !dbg !1427, !tbaa !981
  %390 = zext i16 %389 to i32, !dbg !1426
  %391 = sext i16 %.07 to i32, !dbg !1428
  %392 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %391, !dbg !1428
  %393 = load i16, i16* %392, align 2, !dbg !1428, !tbaa !294
  %394 = zext i16 %393 to i32, !dbg !1428
  %395 = getelementptr [47 x i8], [47 x i8]* @.str.8, i32 0, i32 0
  %396 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %395, i32 %385, i32 %390, i32 %394), !dbg !1429
  %397 = zext i16 %.5 to i32, !dbg !1430
  %398 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %397, !dbg !1430
  %399 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %398, i32 0, i32 13, !dbg !1431
  %400 = load i16, i16* %399, align 4, !dbg !1432, !tbaa !1172
  %401 = add i16 %400, 1, !dbg !1432
  store i16 %401, i16* %399, align 4, !dbg !1432, !tbaa !1172
  br label %402, !dbg !1433

402:                                              ; preds = %._crit_edge42, %._crit_edge41, %384
  %403 = zext i16 %.5 to i32, !dbg !1434
  %404 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %403, !dbg !1434
  %405 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %404, i32 0, i32 6, !dbg !1436
  %406 = load i32, i32* %405, align 4, !dbg !1436, !tbaa !1076
  %407 = and i32 %406, 2, !dbg !1437
  %408 = icmp ne i32 %407, 0, !dbg !1437
  br i1 %408, label %409, label %._crit_edge43, !dbg !1438

._crit_edge43:                                    ; preds = %402
  br label %438, !dbg !1438

409:                                              ; preds = %402
  %410 = zext i16 %.5 to i32, !dbg !1439
  %411 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %410, !dbg !1439
  %412 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %411, i32 0, i32 11, !dbg !1440
  %413 = load i16, i16* %412, align 4, !dbg !1440, !tbaa !357
  %414 = zext i16 %413 to i32, !dbg !1439
  %415 = sext i16 %.07 to i32, !dbg !1441
  %416 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %415, !dbg !1441
  %417 = load i16, i16* %416, align 2, !dbg !1441, !tbaa !294
  %418 = zext i16 %417 to i32, !dbg !1441
  %419 = icmp ne i32 %414, %418, !dbg !1442
  br i1 %419, label %420, label %._crit_edge44, !dbg !1443

._crit_edge44:                                    ; preds = %409
  br label %438, !dbg !1443

420:                                              ; preds = %409
  %421 = zext i16 %.5 to i32, !dbg !1444
  %422 = zext i16 %.5 to i32, !dbg !1446
  %423 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %422, !dbg !1446
  %424 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %423, i32 0, i32 11, !dbg !1447
  %425 = load i16, i16* %424, align 4, !dbg !1447, !tbaa !357
  %426 = zext i16 %425 to i32, !dbg !1446
  %427 = sext i16 %.07 to i32, !dbg !1448
  %428 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %427, !dbg !1448
  %429 = load i16, i16* %428, align 2, !dbg !1448, !tbaa !294
  %430 = zext i16 %429 to i32, !dbg !1448
  %431 = getelementptr [49 x i8], [49 x i8]* @.str.9, i32 0, i32 0
  %432 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %431, i32 %421, i32 %426, i32 %430), !dbg !1449
  %433 = zext i16 %.5 to i32, !dbg !1450
  %434 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %433, !dbg !1450
  %435 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %434, i32 0, i32 13, !dbg !1451
  %436 = load i16, i16* %435, align 4, !dbg !1452, !tbaa !1172
  %437 = add i16 %436, 1, !dbg !1452
  store i16 %437, i16* %435, align 4, !dbg !1452, !tbaa !1172
  br label %438, !dbg !1453

438:                                              ; preds = %._crit_edge44, %._crit_edge43, %420
  %439 = zext i16 %.5 to i32, !dbg !1454
  %440 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %439, !dbg !1454
  %441 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %440, i32 0, i32 6, !dbg !1456
  %442 = load i32, i32* %441, align 4, !dbg !1456, !tbaa !1076
  %443 = and i32 %442, 4, !dbg !1457
  %444 = icmp ne i32 %443, 0, !dbg !1457
  br i1 %444, label %445, label %._crit_edge45, !dbg !1458

._crit_edge45:                                    ; preds = %438
  br label %474, !dbg !1458

445:                                              ; preds = %438
  %446 = zext i16 %.5 to i32, !dbg !1459
  %447 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %446, !dbg !1459
  %448 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %447, i32 0, i32 12, !dbg !1460
  %449 = load i16, i16* %448, align 2, !dbg !1460, !tbaa !344
  %450 = zext i16 %449 to i32, !dbg !1459
  %451 = sext i16 %.07 to i32, !dbg !1461
  %452 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %451, !dbg !1461
  %453 = load i16, i16* %452, align 2, !dbg !1461, !tbaa !294
  %454 = zext i16 %453 to i32, !dbg !1461
  %455 = icmp ne i32 %450, %454, !dbg !1462
  br i1 %455, label %456, label %._crit_edge46, !dbg !1463

._crit_edge46:                                    ; preds = %445
  br label %474, !dbg !1463

456:                                              ; preds = %445
  %457 = zext i16 %.5 to i32, !dbg !1464
  %458 = zext i16 %.5 to i32, !dbg !1466
  %459 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %458, !dbg !1466
  %460 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %459, i32 0, i32 12, !dbg !1467
  %461 = load i16, i16* %460, align 2, !dbg !1467, !tbaa !344
  %462 = zext i16 %461 to i32, !dbg !1466
  %463 = sext i16 %.07 to i32, !dbg !1468
  %464 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %463, !dbg !1468
  %465 = load i16, i16* %464, align 2, !dbg !1468, !tbaa !294
  %466 = zext i16 %465 to i32, !dbg !1468
  %467 = getelementptr [48 x i8], [48 x i8]* @.str.10, i32 0, i32 0
  %468 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %467, i32 %457, i32 %462, i32 %466), !dbg !1469
  %469 = zext i16 %.5 to i32, !dbg !1470
  %470 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %469, !dbg !1470
  %471 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %470, i32 0, i32 13, !dbg !1471
  %472 = load i16, i16* %471, align 4, !dbg !1472, !tbaa !1172
  %473 = add i16 %472, 1, !dbg !1472
  store i16 %473, i16* %471, align 4, !dbg !1472, !tbaa !1172
  br label %474, !dbg !1473

474:                                              ; preds = %._crit_edge46, %._crit_edge45, %456
  %475 = zext i16 %.5 to i32, !dbg !1474
  %476 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %475, !dbg !1474
  %477 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %476, i32 0, i32 13, !dbg !1475
  %478 = load i16, i16* %477, align 4, !dbg !1475, !tbaa !1172
  %479 = sext i16 %478 to i32, !dbg !1474
  %480 = sext i16 %.19 to i32, !dbg !1476
  %481 = add nsw i32 %480, %479, !dbg !1476
  %482 = trunc i32 %481 to i16, !dbg !1476
  call void @llvm.dbg.value(metadata i16 %482, metadata !1027, metadata !DIExpression()), !dbg !1048
  br label %483, !dbg !1477

483:                                              ; preds = %474
  %484 = add i16 %.5, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i16 %484, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %359, !dbg !1479, !llvm.loop !1480

485:                                              ; preds = %359
  %.19.lcssa = phi i16 [ %.19, %359 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.19.lcssa, metadata !1027, metadata !DIExpression()), !dbg !1048
  br label %486, !dbg !1482

486:                                              ; preds = %._crit_edge40, %485
  %.210 = phi i16 [ %.19.lcssa, %485 ], [ %.08, %._crit_edge40 ], !dbg !1483
  call void @llvm.dbg.value(metadata i16 %.210, metadata !1027, metadata !DIExpression()), !dbg !1048
  %487 = call arm_aapcscc zeroext i8 @check_data_types(), !dbg !1484
  %488 = zext i8 %487 to i32, !dbg !1484
  %489 = sext i16 %.210 to i32, !dbg !1485
  %490 = add nsw i32 %489, %488, !dbg !1485
  %491 = trunc i32 %490 to i16, !dbg !1485
  call void @llvm.dbg.value(metadata i16 %491, metadata !1027, metadata !DIExpression()), !dbg !1048
  %492 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1486
  %493 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %492, i32 0, i32 4, !dbg !1487
  %494 = load i32, i32* %493, align 4, !dbg !1487, !tbaa !326
  %495 = getelementptr [24 x i8], [24 x i8]* @.str.11, i32 0, i32 0
  %496 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %495, i32 %494), !dbg !1488
  %497 = getelementptr [24 x i8], [24 x i8]* @.str.12, i32 0, i32 0
  %498 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %497, i32 %320), !dbg !1489
  %499 = call arm_aapcscc double @time_in_secs(i32 %320), !dbg !1490
  %500 = getelementptr [23 x i8], [23 x i8]* @.str.13, i32 0, i32 0
  %501 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %500, double %499), !dbg !1491
  %502 = call arm_aapcscc double @time_in_secs(i32 %320), !dbg !1492
  %503 = fcmp ogt double %502, 0.000000e+00, !dbg !1494
  br i1 %503, label %504, label %._crit_edge47, !dbg !1495

._crit_edge47:                                    ; preds = %486
  br label %515, !dbg !1495

504:                                              ; preds = %486
  %505 = load i32, i32* @default_num_contexts, align 4, !dbg !1496, !tbaa !1046
  %506 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1497
  %507 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %506, i32 0, i32 5, !dbg !1498
  %508 = load i32, i32* %507, align 4, !dbg !1498, !tbaa !976
  %509 = mul i32 %505, %508, !dbg !1499
  %510 = uitofp i32 %509 to double, !dbg !1496
  %511 = call arm_aapcscc double @time_in_secs(i32 %320), !dbg !1500
  %512 = fdiv double %510, %511, !dbg !1501
  %513 = getelementptr [23 x i8], [23 x i8]* @.str.14, i32 0, i32 0
  %514 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %513, double %512), !dbg !1502
  br label %515, !dbg !1502

515:                                              ; preds = %._crit_edge47, %504
  %516 = call arm_aapcscc double @time_in_secs(i32 %320), !dbg !1503
  %517 = fcmp olt double %516, 1.000000e+01, !dbg !1505
  br i1 %517, label %518, label %._crit_edge48, !dbg !1506

._crit_edge48:                                    ; preds = %515
  br label %522, !dbg !1506

518:                                              ; preds = %515
  %519 = getelementptr [62 x i8], [62 x i8]* @.str.15, i32 0, i32 0
  %520 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %519), !dbg !1507
  %521 = add i16 %491, 1, !dbg !1509
  call void @llvm.dbg.value(metadata i16 %521, metadata !1027, metadata !DIExpression()), !dbg !1048
  br label %522, !dbg !1510

522:                                              ; preds = %._crit_edge48, %518
  %.311 = phi i16 [ %521, %518 ], [ %491, %._crit_edge48 ], !dbg !1048
  call void @llvm.dbg.value(metadata i16 %.311, metadata !1027, metadata !DIExpression()), !dbg !1048
  %523 = load i32, i32* @default_num_contexts, align 4, !dbg !1511, !tbaa !1046
  %524 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1512
  %525 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %524, i32 0, i32 5, !dbg !1513
  %526 = load i32, i32* %525, align 4, !dbg !1513, !tbaa !976
  %527 = mul i32 %523, %526, !dbg !1514
  %528 = getelementptr [24 x i8], [24 x i8]* @.str.16, i32 0, i32 0
  %529 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %528, i32 %527), !dbg !1515
  %530 = getelementptr [23 x i8], [23 x i8]* @.str.17, i32 0, i32 0
  %531 = getelementptr [16 x i8], [16 x i8]* @.str.18, i32 0, i32 0
  %532 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %530, i8* %531), !dbg !1516
  %533 = getelementptr [23 x i8], [23 x i8]* @.str.19, i32 0, i32 0
  %534 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %535 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %533, i8* %534), !dbg !1517
  %536 = getelementptr [23 x i8], [23 x i8]* @.str.21, i32 0, i32 0
  %537 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %538 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %536, i8* %537), !dbg !1518
  %539 = zext i16 %337 to i32, !dbg !1519
  %540 = getelementptr [27 x i8], [27 x i8]* @.str.23, i32 0, i32 0
  %541 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %540, i32 %539), !dbg !1520
  %542 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1521
  %543 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %542, i32 0, i32 6, !dbg !1523
  %544 = load i32, i32* %543, align 4, !dbg !1523, !tbaa !1076
  %545 = and i32 %544, 1, !dbg !1524
  %546 = icmp ne i32 %545, 0, !dbg !1524
  br i1 %546, label %547, label %._crit_edge49, !dbg !1525

._crit_edge49:                                    ; preds = %522
  br label %564, !dbg !1525

547:                                              ; preds = %522
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %548, !dbg !1526

548:                                              ; preds = %561, %547
  %.6 = phi i16 [ 0, %547 ], [ %562, %561 ], !dbg !1528
  call void @llvm.dbg.value(metadata i16 %.6, metadata !1023, metadata !DIExpression()), !dbg !1048
  %549 = zext i16 %.6 to i32, !dbg !1529
  %550 = load i32, i32* @default_num_contexts, align 4, !dbg !1531, !tbaa !1046
  %551 = icmp ult i32 %549, %550, !dbg !1532
  br i1 %551, label %552, label %563, !dbg !1533

552:                                              ; preds = %548
  %553 = zext i16 %.6 to i32, !dbg !1534
  %554 = zext i16 %.6 to i32, !dbg !1535
  %555 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %554, !dbg !1535
  %556 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %555, i32 0, i32 10, !dbg !1536
  %557 = load i16, i16* %556, align 2, !dbg !1536, !tbaa !981
  %558 = zext i16 %557 to i32, !dbg !1535
  %559 = getelementptr [28 x i8], [28 x i8]* @.str.24, i32 0, i32 0
  %560 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %559, i32 %553, i32 %558), !dbg !1537
  br label %561, !dbg !1537

561:                                              ; preds = %552
  %562 = add i16 %.6, 1, !dbg !1538
  call void @llvm.dbg.value(metadata i16 %562, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %548, !dbg !1539, !llvm.loop !1540

563:                                              ; preds = %548
  br label %564, !dbg !1541

564:                                              ; preds = %._crit_edge49, %563
  %565 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1542
  %566 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %565, i32 0, i32 6, !dbg !1544
  %567 = load i32, i32* %566, align 4, !dbg !1544, !tbaa !1076
  %568 = and i32 %567, 2, !dbg !1545
  %569 = icmp ne i32 %568, 0, !dbg !1545
  br i1 %569, label %570, label %._crit_edge50, !dbg !1546

._crit_edge50:                                    ; preds = %564
  br label %587, !dbg !1546

570:                                              ; preds = %564
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %571, !dbg !1547

571:                                              ; preds = %584, %570
  %.7 = phi i16 [ 0, %570 ], [ %585, %584 ], !dbg !1549
  call void @llvm.dbg.value(metadata i16 %.7, metadata !1023, metadata !DIExpression()), !dbg !1048
  %572 = zext i16 %.7 to i32, !dbg !1550
  %573 = load i32, i32* @default_num_contexts, align 4, !dbg !1552, !tbaa !1046
  %574 = icmp ult i32 %572, %573, !dbg !1553
  br i1 %574, label %575, label %586, !dbg !1554

575:                                              ; preds = %571
  %576 = zext i16 %.7 to i32, !dbg !1555
  %577 = zext i16 %.7 to i32, !dbg !1556
  %578 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %577, !dbg !1556
  %579 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %578, i32 0, i32 11, !dbg !1557
  %580 = load i16, i16* %579, align 4, !dbg !1557, !tbaa !357
  %581 = zext i16 %580 to i32, !dbg !1556
  %582 = getelementptr [28 x i8], [28 x i8]* @.str.25, i32 0, i32 0
  %583 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %582, i32 %576, i32 %581), !dbg !1558
  br label %584, !dbg !1558

584:                                              ; preds = %575
  %585 = add i16 %.7, 1, !dbg !1559
  call void @llvm.dbg.value(metadata i16 %585, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %571, !dbg !1560, !llvm.loop !1561

586:                                              ; preds = %571
  br label %587, !dbg !1562

587:                                              ; preds = %._crit_edge50, %586
  %588 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1563
  %589 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %588, i32 0, i32 6, !dbg !1565
  %590 = load i32, i32* %589, align 4, !dbg !1565, !tbaa !1076
  %591 = and i32 %590, 4, !dbg !1566
  %592 = icmp ne i32 %591, 0, !dbg !1566
  br i1 %592, label %593, label %._crit_edge51, !dbg !1567

._crit_edge51:                                    ; preds = %587
  br label %610, !dbg !1567

593:                                              ; preds = %587
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %594, !dbg !1568

594:                                              ; preds = %607, %593
  %.8 = phi i16 [ 0, %593 ], [ %608, %607 ], !dbg !1570
  call void @llvm.dbg.value(metadata i16 %.8, metadata !1023, metadata !DIExpression()), !dbg !1048
  %595 = zext i16 %.8 to i32, !dbg !1571
  %596 = load i32, i32* @default_num_contexts, align 4, !dbg !1573, !tbaa !1046
  %597 = icmp ult i32 %595, %596, !dbg !1574
  br i1 %597, label %598, label %609, !dbg !1575

598:                                              ; preds = %594
  %599 = zext i16 %.8 to i32, !dbg !1576
  %600 = zext i16 %.8 to i32, !dbg !1577
  %601 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %600, !dbg !1577
  %602 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %601, i32 0, i32 12, !dbg !1578
  %603 = load i16, i16* %602, align 2, !dbg !1578, !tbaa !344
  %604 = zext i16 %603 to i32, !dbg !1577
  %605 = getelementptr [28 x i8], [28 x i8]* @.str.26, i32 0, i32 0
  %606 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %605, i32 %599, i32 %604), !dbg !1579
  br label %607, !dbg !1579

607:                                              ; preds = %598
  %608 = add i16 %.8, 1, !dbg !1580
  call void @llvm.dbg.value(metadata i16 %608, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %594, !dbg !1581, !llvm.loop !1582

609:                                              ; preds = %594
  br label %610, !dbg !1583

610:                                              ; preds = %._crit_edge51, %609
  call void @llvm.dbg.value(metadata i16 0, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %611, !dbg !1584

611:                                              ; preds = %624, %610
  %.9 = phi i16 [ 0, %610 ], [ %625, %624 ], !dbg !1586
  call void @llvm.dbg.value(metadata i16 %.9, metadata !1023, metadata !DIExpression()), !dbg !1048
  %612 = zext i16 %.9 to i32, !dbg !1587
  %613 = load i32, i32* @default_num_contexts, align 4, !dbg !1589, !tbaa !1046
  %614 = icmp ult i32 %612, %613, !dbg !1590
  br i1 %614, label %615, label %626, !dbg !1591

615:                                              ; preds = %611
  %616 = zext i16 %.9 to i32, !dbg !1592
  %617 = zext i16 %.9 to i32, !dbg !1593
  %618 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 %617, !dbg !1593
  %619 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %618, i32 0, i32 9, !dbg !1594
  %620 = load i16, i16* %619, align 4, !dbg !1594, !tbaa !340
  %621 = zext i16 %620 to i32, !dbg !1593
  %622 = getelementptr [28 x i8], [28 x i8]* @.str.27, i32 0, i32 0
  %623 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %622, i32 %616, i32 %621), !dbg !1595
  br label %624, !dbg !1595

624:                                              ; preds = %615
  %625 = add i16 %.9, 1, !dbg !1596
  call void @llvm.dbg.value(metadata i16 %625, metadata !1023, metadata !DIExpression()), !dbg !1048
  br label %611, !dbg !1597, !llvm.loop !1598

626:                                              ; preds = %611
  %627 = sext i16 %.311 to i32, !dbg !1600
  %628 = icmp eq i32 %627, 0, !dbg !1602
  br i1 %628, label %629, label %._crit_edge52, !dbg !1603

._crit_edge52:                                    ; preds = %626
  br label %653, !dbg !1603

629:                                              ; preds = %626
  %630 = getelementptr [73 x i8], [73 x i8]* @.str.28, i32 0, i32 0
  %631 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %630), !dbg !1604
  %632 = sext i16 %.07 to i32, !dbg !1606
  %633 = icmp eq i32 %632, 3, !dbg !1608
  br i1 %633, label %634, label %._crit_edge53, !dbg !1609

._crit_edge53:                                    ; preds = %629
  br label %652, !dbg !1609

634:                                              ; preds = %629
  %635 = load i32, i32* @default_num_contexts, align 4, !dbg !1610, !tbaa !1046
  %636 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1612
  %637 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %636, i32 0, i32 5, !dbg !1613
  %638 = load i32, i32* %637, align 4, !dbg !1613, !tbaa !976
  %639 = mul i32 %635, %638, !dbg !1614
  %640 = uitofp i32 %639 to double, !dbg !1610
  %641 = call arm_aapcscc double @time_in_secs(i32 %320), !dbg !1615
  %642 = fdiv double %640, %641, !dbg !1616
  %643 = getelementptr [26 x i8], [26 x i8]* @.str.29, i32 0, i32 0
  %644 = getelementptr [16 x i8], [16 x i8]* @.str.18, i32 0, i32 0
  %645 = getelementptr [2 x i8], [2 x i8]* @.str.20, i32 0, i32 0
  %646 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %643, double %642, i8* %644, i8* %645), !dbg !1617
  %647 = getelementptr [6 x i8], [6 x i8]* @.str.30, i32 0, i32 0
  %648 = getelementptr [6 x i8], [6 x i8]* @.str.22, i32 0, i32 0
  %649 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %647, i8* %648), !dbg !1618
  %650 = getelementptr [2 x i8], [2 x i8]* @.str.31, i32 0, i32 0
  %651 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %650), !dbg !1619
  br label %652, !dbg !1620

652:                                              ; preds = %._crit_edge53, %634
  br label %653, !dbg !1621

653:                                              ; preds = %._crit_edge52, %652
  %654 = sext i16 %.311 to i32, !dbg !1622
  %655 = icmp sgt i32 %654, 0, !dbg !1624
  br i1 %655, label %656, label %._crit_edge54, !dbg !1625

._crit_edge54:                                    ; preds = %653
  br label %659, !dbg !1625

656:                                              ; preds = %653
  %657 = getelementptr [17 x i8], [17 x i8]* @.str.32, i32 0, i32 0
  %658 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %657), !dbg !1626
  br label %659, !dbg !1626

659:                                              ; preds = %._crit_edge54, %656
  %660 = sext i16 %.311 to i32, !dbg !1627
  %661 = icmp slt i32 %660, 0, !dbg !1629
  br i1 %661, label %662, label %._crit_edge55, !dbg !1630

._crit_edge55:                                    ; preds = %659
  br label %665, !dbg !1630

662:                                              ; preds = %659
  %663 = getelementptr [99 x i8], [99 x i8]* @.str.33, i32 0, i32 0
  %664 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %663), !dbg !1631
  br label %665, !dbg !1631

665:                                              ; preds = %._crit_edge55, %662
  %666 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %4, i32 0, i32 0, !dbg !1632
  %667 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %666, i32 0, i32 14, !dbg !1633
  call arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S* %667), !dbg !1634
  %668 = bitcast [2000 x i8]* %5 to i8*, !dbg !1635
  call void @llvm.lifetime.end.p0i8(i64 2000, i8* %668) #4, !dbg !1635
  %669 = bitcast [1 x %struct.RESULTS_S]* %4 to i8*, !dbg !1635
  call void @llvm.lifetime.end.p0i8(i64 68, i8* %669) #4, !dbg !1635
  ret i32 0, !dbg !1636
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S*, i16 signext, i16 zeroext) #0 !dbg !1637 {
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %0, metadata !1650, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i16 %1, metadata !1651, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i16 %2, metadata !1652, metadata !DIExpression()), !dbg !1658
  %4 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 0, !dbg !1659
  %5 = load i32, i32* %4, align 4, !dbg !1659, !tbaa !1660
  call void @llvm.dbg.value(metadata i32 %5, metadata !1653, metadata !DIExpression()), !dbg !1658
  %6 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 3, !dbg !1661
  %7 = load i32*, i32** %6, align 4, !dbg !1661, !tbaa !1662
  call void @llvm.dbg.value(metadata i32* %7, metadata !1654, metadata !DIExpression()), !dbg !1658
  %8 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 1, !dbg !1663
  %9 = load i16*, i16** %8, align 4, !dbg !1663, !tbaa !1664
  call void @llvm.dbg.value(metadata i16* %9, metadata !1655, metadata !DIExpression()), !dbg !1658
  %10 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %0, i32 0, i32 2, !dbg !1665
  %11 = load i16*, i16** %10, align 4, !dbg !1665, !tbaa !1666
  call void @llvm.dbg.value(metadata i16* %11, metadata !1656, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i16 %1, metadata !1657, metadata !DIExpression()), !dbg !1658
  %12 = call arm_aapcscc signext i16 @matrix_test(i32 %5, i32* %7, i16* %9, i16* %11, i16 signext %1), !dbg !1667
  %13 = call arm_aapcscc zeroext i16 @crc16(i16 signext %12, i16 zeroext %2), !dbg !1668
  call void @llvm.dbg.value(metadata i16 %13, metadata !1652, metadata !DIExpression()), !dbg !1658
  ret i16 %13, !dbg !1669
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_test(i32, i32*, i16*, i16*, i16 signext) #0 !dbg !1670 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1674, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i32* %1, metadata !1675, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i16* %2, metadata !1676, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i16* %3, metadata !1677, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i16 %4, metadata !1678, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i16 0, metadata !1679, metadata !DIExpression()), !dbg !1681
  %6 = sext i16 %4 to i32, !dbg !1682
  %7 = or i32 61440, %6, !dbg !1682
  %8 = trunc i32 %7 to i16, !dbg !1682
  call void @llvm.dbg.value(metadata i16 %8, metadata !1680, metadata !DIExpression()), !dbg !1681
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %4), !dbg !1683
  call arm_aapcscc void @matrix_mul_const(i32 %0, i32* %1, i16* %2, i16 signext %4), !dbg !1684
  %9 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1685
  %10 = call arm_aapcscc zeroext i16 @crc16(i16 signext %9, i16 zeroext 0), !dbg !1686
  call void @llvm.dbg.value(metadata i16 %10, metadata !1679, metadata !DIExpression()), !dbg !1681
  call arm_aapcscc void @matrix_mul_vect(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1687
  %11 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1688
  %12 = call arm_aapcscc zeroext i16 @crc16(i16 signext %11, i16 zeroext %10), !dbg !1689
  call void @llvm.dbg.value(metadata i16 %12, metadata !1679, metadata !DIExpression()), !dbg !1681
  call arm_aapcscc void @matrix_mul_matrix(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1690
  %13 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1691
  %14 = call arm_aapcscc zeroext i16 @crc16(i16 signext %13, i16 zeroext %12), !dbg !1692
  call void @llvm.dbg.value(metadata i16 %14, metadata !1679, metadata !DIExpression()), !dbg !1681
  call arm_aapcscc void @matrix_mul_matrix_bitextract(i32 %0, i32* %1, i16* %2, i16* %3), !dbg !1693
  %15 = call arm_aapcscc signext i16 @matrix_sum(i32 %0, i32* %1, i16 signext %8), !dbg !1694
  %16 = call arm_aapcscc zeroext i16 @crc16(i16 signext %15, i16 zeroext %14), !dbg !1695
  call void @llvm.dbg.value(metadata i16 %16, metadata !1679, metadata !DIExpression()), !dbg !1681
  %17 = sext i16 %4 to i32, !dbg !1696
  %18 = sub nsw i32 0, %17, !dbg !1697
  %19 = trunc i32 %18 to i16, !dbg !1697
  call arm_aapcscc void @matrix_add_const(i32 %0, i16* %2, i16 signext %19), !dbg !1698
  ret i16 %16, !dbg !1699
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_add_const(i32, i16*, i16 signext) #0 !dbg !1700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1704, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i16* %1, metadata !1705, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i16 %2, metadata !1706, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i32 0, metadata !1707, metadata !DIExpression()), !dbg !1709
  br label %4, !dbg !1710

4:                                                ; preds = %19, %3
  %.01 = phi i32 [ 0, %3 ], [ %20, %19 ], !dbg !1712
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1707, metadata !DIExpression()), !dbg !1709
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1713
  br i1 %exitcond2, label %5, label %21, !dbg !1715

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1708, metadata !DIExpression()), !dbg !1709
  br label %6, !dbg !1716

6:                                                ; preds = %16, %5
  %.0 = phi i32 [ 0, %5 ], [ %17, %16 ], !dbg !1719
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1708, metadata !DIExpression()), !dbg !1709
  %exitcond = icmp ne i32 %.0, %0, !dbg !1720
  br i1 %exitcond, label %7, label %18, !dbg !1722

7:                                                ; preds = %6
  %8 = sext i16 %2 to i32, !dbg !1723
  %9 = mul i32 %.01, %0, !dbg !1725
  %10 = add i32 %9, %.0, !dbg !1726
  %11 = getelementptr inbounds i16, i16* %1, i32 %10, !dbg !1727
  %12 = load i16, i16* %11, align 2, !dbg !1728, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1728
  %14 = add nsw i32 %13, %8, !dbg !1728
  %15 = trunc i32 %14 to i16, !dbg !1728
  store i16 %15, i16* %11, align 2, !dbg !1728, !tbaa !294
  br label %16, !dbg !1729

16:                                               ; preds = %7
  %17 = add i32 %.0, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %17, metadata !1708, metadata !DIExpression()), !dbg !1709
  br label %6, !dbg !1731, !llvm.loop !1732

18:                                               ; preds = %6
  br label %19, !dbg !1734

19:                                               ; preds = %18
  %20 = add i32 %.01, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %20, metadata !1707, metadata !DIExpression()), !dbg !1709
  br label %4, !dbg !1736, !llvm.loop !1737

21:                                               ; preds = %4
  ret void, !dbg !1739
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_const(i32, i32*, i16*, i16 signext) #0 !dbg !1740 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1744, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32* %1, metadata !1745, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i16* %2, metadata !1746, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i16 %3, metadata !1747, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i32 0, metadata !1748, metadata !DIExpression()), !dbg !1750
  br label %5, !dbg !1751

5:                                                ; preds = %22, %4
  %.01 = phi i32 [ 0, %4 ], [ %23, %22 ], !dbg !1753
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1748, metadata !DIExpression()), !dbg !1750
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1754
  br i1 %exitcond2, label %6, label %24, !dbg !1756

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1749, metadata !DIExpression()), !dbg !1750
  br label %7, !dbg !1757

7:                                                ; preds = %19, %6
  %.0 = phi i32 [ 0, %6 ], [ %20, %19 ], !dbg !1760
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1749, metadata !DIExpression()), !dbg !1750
  %exitcond = icmp ne i32 %.0, %0, !dbg !1761
  br i1 %exitcond, label %8, label %21, !dbg !1763

8:                                                ; preds = %7
  %9 = mul i32 %.01, %0, !dbg !1764
  %10 = add i32 %9, %.0, !dbg !1766
  %11 = getelementptr inbounds i16, i16* %2, i32 %10, !dbg !1767
  %12 = load i16, i16* %11, align 2, !dbg !1767, !tbaa !294
  %13 = sext i16 %12 to i32, !dbg !1768
  %14 = sext i16 %3 to i32, !dbg !1769
  %15 = mul nsw i32 %13, %14, !dbg !1770
  %16 = mul i32 %.01, %0, !dbg !1771
  %17 = add i32 %16, %.0, !dbg !1772
  %18 = getelementptr inbounds i32, i32* %1, i32 %17, !dbg !1773
  store i32 %15, i32* %18, align 4, !dbg !1774, !tbaa !1046
  br label %19, !dbg !1775

19:                                               ; preds = %8
  %20 = add i32 %.0, 1, !dbg !1776
  call void @llvm.dbg.value(metadata i32 %20, metadata !1749, metadata !DIExpression()), !dbg !1750
  br label %7, !dbg !1777, !llvm.loop !1778

21:                                               ; preds = %7
  br label %22, !dbg !1780

22:                                               ; preds = %21
  %23 = add i32 %.01, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %23, metadata !1748, metadata !DIExpression()), !dbg !1750
  br label %5, !dbg !1782, !llvm.loop !1783

24:                                               ; preds = %5
  ret void, !dbg !1785
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_sum(i32, i32*, i16 signext) #0 !dbg !1786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1790, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32* %1, metadata !1791, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i16 %2, metadata !1792, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 0, metadata !1793, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 0, metadata !1794, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 0, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i16 0, metadata !1796, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 0, metadata !1797, metadata !DIExpression()), !dbg !1799
  br label %4, !dbg !1800

4:                                                ; preds = %30, %3
  %.06 = phi i32 [ 0, %3 ], [ %.17.lcssa, %30 ], !dbg !1802
  %.03 = phi i32 [ 0, %3 ], [ %.14.lcssa, %30 ], !dbg !1803
  %.02 = phi i16 [ 0, %3 ], [ %.1.lcssa, %30 ], !dbg !1804
  %.01 = phi i32 [ 0, %3 ], [ %31, %30 ], !dbg !1805
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1797, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i16 %.02, metadata !1796, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1793, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1794, metadata !DIExpression()), !dbg !1799
  %exitcond8 = icmp ne i32 %.01, %0, !dbg !1806
  br i1 %exitcond8, label %5, label %32, !dbg !1808

5:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1799
  br label %6, !dbg !1809

6:                                                ; preds = %27, %5
  %.17 = phi i32 [ %.06, %5 ], [ %11, %27 ], !dbg !1799
  %.14 = phi i32 [ %.03, %5 ], [ %.25, %27 ], !dbg !1799
  %.1 = phi i16 [ %.02, %5 ], [ %.2, %27 ], !dbg !1799
  %.0 = phi i32 [ 0, %5 ], [ %28, %27 ], !dbg !1812
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1798, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i16 %.1, metadata !1796, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1793, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %.17, metadata !1794, metadata !DIExpression()), !dbg !1799
  %exitcond = icmp ne i32 %.0, %0, !dbg !1813
  br i1 %exitcond, label %7, label %29, !dbg !1815

7:                                                ; preds = %6
  %8 = mul i32 %.01, %0, !dbg !1816
  %9 = add i32 %8, %.0, !dbg !1818
  %10 = getelementptr inbounds i32, i32* %1, i32 %9, !dbg !1819
  %11 = load i32, i32* %10, align 4, !dbg !1819, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %11, metadata !1795, metadata !DIExpression()), !dbg !1799
  %12 = add nsw i32 %.14, %11, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %12, metadata !1793, metadata !DIExpression()), !dbg !1799
  %13 = sext i16 %2 to i32, !dbg !1821
  %14 = icmp sgt i32 %12, %13, !dbg !1823
  br i1 %14, label %15, label %19, !dbg !1824

15:                                               ; preds = %7
  %16 = sext i16 %.1 to i32, !dbg !1825
  %17 = add nsw i32 %16, 10, !dbg !1825
  %18 = trunc i32 %17 to i16, !dbg !1825
  call void @llvm.dbg.value(metadata i16 %18, metadata !1796, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 0, metadata !1793, metadata !DIExpression()), !dbg !1799
  br label %26, !dbg !1827

19:                                               ; preds = %7
  %20 = icmp sgt i32 %11, %.17, !dbg !1828
  %21 = zext i1 %20 to i64, !dbg !1830
  %22 = select i1 %20, i32 1, i32 0, !dbg !1830
  %23 = sext i16 %.1 to i32, !dbg !1831
  %24 = add nsw i32 %23, %22, !dbg !1831
  %25 = trunc i32 %24 to i16, !dbg !1831
  call void @llvm.dbg.value(metadata i16 %25, metadata !1796, metadata !DIExpression()), !dbg !1799
  br label %26

26:                                               ; preds = %19, %15
  %.25 = phi i32 [ 0, %15 ], [ %12, %19 ], !dbg !1832
  %.2 = phi i16 [ %18, %15 ], [ %25, %19 ], !dbg !1833
  call void @llvm.dbg.value(metadata i16 %.2, metadata !1796, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %.25, metadata !1793, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %11, metadata !1794, metadata !DIExpression()), !dbg !1799
  br label %27, !dbg !1834

27:                                               ; preds = %26
  %28 = add i32 %.0, 1, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %28, metadata !1798, metadata !DIExpression()), !dbg !1799
  br label %6, !dbg !1836, !llvm.loop !1837

29:                                               ; preds = %6
  %.17.lcssa = phi i32 [ %.17, %6 ], !dbg !1799
  %.14.lcssa = phi i32 [ %.14, %6 ], !dbg !1799
  %.1.lcssa = phi i16 [ %.1, %6 ], !dbg !1799
  call void @llvm.dbg.value(metadata i32 %.17.lcssa, metadata !1794, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !1793, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i16 %.1.lcssa, metadata !1796, metadata !DIExpression()), !dbg !1799
  br label %30, !dbg !1839

30:                                               ; preds = %29
  %31 = add i32 %.01, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %31, metadata !1797, metadata !DIExpression()), !dbg !1799
  br label %4, !dbg !1841, !llvm.loop !1842

32:                                               ; preds = %4
  %.02.lcssa = phi i16 [ %.02, %4 ], !dbg !1804
  call void @llvm.dbg.value(metadata i16 %.02.lcssa, metadata !1796, metadata !DIExpression()), !dbg !1799
  ret i16 %.02.lcssa, !dbg !1844
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_vect(i32, i32*, i16*, i16*) #0 !dbg !1845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1849, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32* %1, metadata !1850, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i16* %2, metadata !1851, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i16* %3, metadata !1852, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 0, metadata !1853, metadata !DIExpression()), !dbg !1855
  br label %5, !dbg !1856

5:                                                ; preds = %25, %4
  %.01 = phi i32 [ 0, %4 ], [ %26, %25 ], !dbg !1858
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1853, metadata !DIExpression()), !dbg !1855
  %exitcond2 = icmp ne i32 %.01, %0, !dbg !1859
  br i1 %exitcond2, label %6, label %27, !dbg !1861

6:                                                ; preds = %5
  %7 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1862
  store i32 0, i32* %7, align 4, !dbg !1864, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1854, metadata !DIExpression()), !dbg !1855
  br label %8, !dbg !1865

8:                                                ; preds = %22, %6
  %.0 = phi i32 [ 0, %6 ], [ %23, %22 ], !dbg !1867
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1854, metadata !DIExpression()), !dbg !1855
  %exitcond = icmp ne i32 %.0, %0, !dbg !1868
  br i1 %exitcond, label %9, label %24, !dbg !1870

9:                                                ; preds = %8
  %10 = mul i32 %.01, %0, !dbg !1871
  %11 = add i32 %10, %.0, !dbg !1873
  %12 = getelementptr inbounds i16, i16* %2, i32 %11, !dbg !1874
  %13 = load i16, i16* %12, align 2, !dbg !1874, !tbaa !294
  %14 = sext i16 %13 to i32, !dbg !1875
  %15 = getelementptr inbounds i16, i16* %3, i32 %.0, !dbg !1876
  %16 = load i16, i16* %15, align 2, !dbg !1876, !tbaa !294
  %17 = sext i16 %16 to i32, !dbg !1877
  %18 = mul nsw i32 %14, %17, !dbg !1878
  %19 = getelementptr inbounds i32, i32* %1, i32 %.01, !dbg !1879
  %20 = load i32, i32* %19, align 4, !dbg !1880, !tbaa !1046
  %21 = add nsw i32 %20, %18, !dbg !1880
  store i32 %21, i32* %19, align 4, !dbg !1880, !tbaa !1046
  br label %22, !dbg !1881

22:                                               ; preds = %9
  %23 = add i32 %.0, 1, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %23, metadata !1854, metadata !DIExpression()), !dbg !1855
  br label %8, !dbg !1883, !llvm.loop !1884

24:                                               ; preds = %8
  br label %25, !dbg !1886

25:                                               ; preds = %24
  %26 = add i32 %.01, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %26, metadata !1853, metadata !DIExpression()), !dbg !1855
  br label %5, !dbg !1888, !llvm.loop !1889

27:                                               ; preds = %5
  ret void, !dbg !1891
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix(i32, i32*, i16*, i16*) #0 !dbg !1892 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1894, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i32* %1, metadata !1895, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i16* %2, metadata !1896, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i16* %3, metadata !1897, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i32 0, metadata !1898, metadata !DIExpression()), !dbg !1901
  br label %5, !dbg !1902

5:                                                ; preds = %36, %4
  %.02 = phi i32 [ 0, %4 ], [ %37, %36 ], !dbg !1904
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1898, metadata !DIExpression()), !dbg !1901
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1905
  br i1 %exitcond4, label %6, label %38, !dbg !1907

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1899, metadata !DIExpression()), !dbg !1901
  br label %7, !dbg !1908

7:                                                ; preds = %33, %6
  %.01 = phi i32 [ 0, %6 ], [ %34, %33 ], !dbg !1911
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1899, metadata !DIExpression()), !dbg !1901
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1912
  br i1 %exitcond3, label %8, label %35, !dbg !1914

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1915
  %10 = add i32 %9, %.01, !dbg !1917
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1918
  store i32 0, i32* %11, align 4, !dbg !1919, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1900, metadata !DIExpression()), !dbg !1901
  br label %12, !dbg !1920

12:                                               ; preds = %30, %8
  %.0 = phi i32 [ 0, %8 ], [ %31, %30 ], !dbg !1922
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1900, metadata !DIExpression()), !dbg !1901
  %exitcond = icmp ne i32 %.0, %0, !dbg !1923
  br i1 %exitcond, label %13, label %32, !dbg !1925

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1926
  %15 = add i32 %14, %.0, !dbg !1928
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1929
  %17 = load i16, i16* %16, align 2, !dbg !1929, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1930
  %19 = mul i32 %.0, %0, !dbg !1931
  %20 = add i32 %19, %.01, !dbg !1932
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1933
  %22 = load i16, i16* %21, align 2, !dbg !1933, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1934
  %24 = mul nsw i32 %18, %23, !dbg !1935
  %25 = mul i32 %.02, %0, !dbg !1936
  %26 = add i32 %25, %.01, !dbg !1937
  %27 = getelementptr inbounds i32, i32* %1, i32 %26, !dbg !1938
  %28 = load i32, i32* %27, align 4, !dbg !1939, !tbaa !1046
  %29 = add nsw i32 %28, %24, !dbg !1939
  store i32 %29, i32* %27, align 4, !dbg !1939, !tbaa !1046
  br label %30, !dbg !1940

30:                                               ; preds = %13
  %31 = add i32 %.0, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %31, metadata !1900, metadata !DIExpression()), !dbg !1901
  br label %12, !dbg !1942, !llvm.loop !1943

32:                                               ; preds = %12
  br label %33, !dbg !1945

33:                                               ; preds = %32
  %34 = add i32 %.01, 1, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %34, metadata !1899, metadata !DIExpression()), !dbg !1901
  br label %7, !dbg !1947, !llvm.loop !1948

35:                                               ; preds = %7
  br label %36, !dbg !1950

36:                                               ; preds = %35
  %37 = add i32 %.02, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %37, metadata !1898, metadata !DIExpression()), !dbg !1901
  br label %5, !dbg !1952, !llvm.loop !1953

38:                                               ; preds = %5
  ret void, !dbg !1955
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix_bitextract(i32, i32*, i16*, i16*) #0 !dbg !1956 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1958, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i32* %1, metadata !1959, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i16* %2, metadata !1960, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i16* %3, metadata !1961, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i32 0, metadata !1962, metadata !DIExpression()), !dbg !1975
  br label %5, !dbg !1976

5:                                                ; preds = %41, %4
  %.02 = phi i32 [ 0, %4 ], [ %42, %41 ], !dbg !1977
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1962, metadata !DIExpression()), !dbg !1975
  %exitcond4 = icmp ne i32 %.02, %0, !dbg !1978
  br i1 %exitcond4, label %6, label %43, !dbg !1979

6:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !1963, metadata !DIExpression()), !dbg !1975
  br label %7, !dbg !1980

7:                                                ; preds = %38, %6
  %.01 = phi i32 [ 0, %6 ], [ %39, %38 ], !dbg !1981
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1963, metadata !DIExpression()), !dbg !1975
  %exitcond3 = icmp ne i32 %.01, %0, !dbg !1982
  br i1 %exitcond3, label %8, label %40, !dbg !1983

8:                                                ; preds = %7
  %9 = mul i32 %.02, %0, !dbg !1984
  %10 = add i32 %9, %.01, !dbg !1985
  %11 = getelementptr inbounds i32, i32* %1, i32 %10, !dbg !1986
  store i32 0, i32* %11, align 4, !dbg !1987, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()), !dbg !1975
  br label %12, !dbg !1988

12:                                               ; preds = %35, %8
  %.0 = phi i32 [ 0, %8 ], [ %36, %35 ], !dbg !1989
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1964, metadata !DIExpression()), !dbg !1975
  %exitcond = icmp ne i32 %.0, %0, !dbg !1990
  br i1 %exitcond, label %13, label %37, !dbg !1991

13:                                               ; preds = %12
  %14 = mul i32 %.02, %0, !dbg !1992
  %15 = add i32 %14, %.0, !dbg !1993
  %16 = getelementptr inbounds i16, i16* %2, i32 %15, !dbg !1994
  %17 = load i16, i16* %16, align 2, !dbg !1994, !tbaa !294
  %18 = sext i16 %17 to i32, !dbg !1995
  %19 = mul i32 %.0, %0, !dbg !1996
  %20 = add i32 %19, %.01, !dbg !1997
  %21 = getelementptr inbounds i16, i16* %3, i32 %20, !dbg !1998
  %22 = load i16, i16* %21, align 2, !dbg !1998, !tbaa !294
  %23 = sext i16 %22 to i32, !dbg !1999
  %24 = mul nsw i32 %18, %23, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %24, metadata !1965, metadata !DIExpression()), !dbg !2001
  %25 = ashr i32 %24, 2, !dbg !2002
  %26 = and i32 %25, 15, !dbg !2002
  %27 = ashr i32 %24, 5, !dbg !2003
  %28 = and i32 %27, 127, !dbg !2003
  %29 = mul i32 %26, %28, !dbg !2004
  %30 = mul i32 %.02, %0, !dbg !2005
  %31 = add i32 %30, %.01, !dbg !2006
  %32 = getelementptr inbounds i32, i32* %1, i32 %31, !dbg !2007
  %33 = load i32, i32* %32, align 4, !dbg !2008, !tbaa !1046
  %34 = add i32 %33, %29, !dbg !2008
  store i32 %34, i32* %32, align 4, !dbg !2008, !tbaa !1046
  br label %35, !dbg !2009

35:                                               ; preds = %13
  %36 = add i32 %.0, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %36, metadata !1964, metadata !DIExpression()), !dbg !1975
  br label %12, !dbg !2011, !llvm.loop !2012

37:                                               ; preds = %12
  br label %38, !dbg !2014

38:                                               ; preds = %37
  %39 = add i32 %.01, 1, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %39, metadata !1963, metadata !DIExpression()), !dbg !1975
  br label %7, !dbg !2016, !llvm.loop !2017

40:                                               ; preds = %7
  br label %41, !dbg !2019

41:                                               ; preds = %40
  %42 = add i32 %.02, 1, !dbg !2020
  call void @llvm.dbg.value(metadata i32 %42, metadata !1962, metadata !DIExpression()), !dbg !1975
  br label %5, !dbg !2021, !llvm.loop !2022

43:                                               ; preds = %5
  ret void, !dbg !2024
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_init_matrix(i32, i8*, i32, %struct.MAT_PARAMS_S*) #0 !dbg !2025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2029, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8* %1, metadata !2030, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %2, metadata !2031, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %struct.MAT_PARAMS_S* %3, metadata !2032, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !2033, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 1, metadata !2036, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !2039, metadata !DIExpression()), !dbg !2040
  %5 = icmp eq i32 %2, 0, !dbg !2041
  br i1 %5, label %6, label %._crit_edge, !dbg !2043

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2043

6:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !2031, metadata !DIExpression()), !dbg !2040
  br label %7, !dbg !2044

7:                                                ; preds = %._crit_edge, %6
  %.03 = phi i32 [ 1, %6 ], [ %2, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2031, metadata !DIExpression()), !dbg !2040
  br label %8, !dbg !2045

8:                                                ; preds = %10, %7
  %.01 = phi i32 [ 0, %7 ], [ %11, %10 ], !dbg !2040
  %.0 = phi i32 [ 0, %7 ], [ %14, %10 ], !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2038, metadata !DIExpression()), !dbg !2040
  %9 = icmp ult i32 %.0, %0, !dbg !2046
  br i1 %9, label %10, label %15, !dbg !2045

10:                                               ; preds = %8
  %11 = add i32 %.01, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %11, metadata !2038, metadata !DIExpression()), !dbg !2040
  %12 = mul i32 %11, %11, !dbg !2049
  %13 = mul i32 %12, 2, !dbg !2050
  %14 = mul i32 %13, 4, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %14, metadata !2039, metadata !DIExpression()), !dbg !2040
  br label %8, !dbg !2045, !llvm.loop !2052

15:                                               ; preds = %8
  %.01.lcssa = phi i32 [ %.01, %8 ], !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2038, metadata !DIExpression()), !dbg !2040
  %16 = sub i32 %.01.lcssa, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %16, metadata !2033, metadata !DIExpression()), !dbg !2040
  %17 = ptrtoint i8* %1 to i32, !dbg !2055
  %18 = sub i32 %17, 1, !dbg !2055
  %19 = and i32 %18, -4, !dbg !2055
  %20 = add i32 4, %19, !dbg !2055
  %21 = inttoptr i32 %20 to i8*, !dbg !2055
  %22 = bitcast i8* %21 to i16*, !dbg !2056
  call void @llvm.dbg.value(metadata i16* %22, metadata !2034, metadata !DIExpression()), !dbg !2040
  %23 = mul i32 %16, %16, !dbg !2057
  %24 = getelementptr inbounds i16, i16* %22, i32 %23, !dbg !2058
  call void @llvm.dbg.value(metadata i16* %24, metadata !2035, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()), !dbg !2040
  br label %25, !dbg !2059

25:                                               ; preds = %52, %15
  %.05 = phi i32 [ 1, %15 ], [ %.16.lcssa, %52 ], !dbg !2061
  %.14 = phi i32 [ %.03, %15 ], [ %.2.lcssa, %52 ], !dbg !2062
  %.12 = phi i32 [ 0, %15 ], [ %53, %52 ], !dbg !2063
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2031, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2036, metadata !DIExpression()), !dbg !2040
  %exitcond7 = icmp ne i32 %.12, %16, !dbg !2064
  br i1 %exitcond7, label %26, label %54, !dbg !2066

26:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 0, metadata !2039, metadata !DIExpression()), !dbg !2040
  br label %27, !dbg !2067

27:                                               ; preds = %49, %26
  %.16 = phi i32 [ %.05, %26 ], [ %48, %49 ], !dbg !2040
  %.2 = phi i32 [ %.14, %26 ], [ %30, %49 ], !dbg !2040
  %.1 = phi i32 [ 0, %26 ], [ %50, %49 ], !dbg !2070
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2031, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2036, metadata !DIExpression()), !dbg !2040
  %exitcond = icmp ne i32 %.1, %16, !dbg !2071
  br i1 %exitcond, label %28, label %51, !dbg !2073

28:                                               ; preds = %27
  %29 = mul nsw i32 %.16, %.2, !dbg !2074
  %30 = srem i32 %29, 65536, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %30, metadata !2031, metadata !DIExpression()), !dbg !2040
  %31 = add nsw i32 %30, %.16, !dbg !2077
  %32 = trunc i32 %31 to i16, !dbg !2078
  call void @llvm.dbg.value(metadata i16 %32, metadata !2037, metadata !DIExpression()), !dbg !2040
  %33 = sext i16 %32 to i32, !dbg !2079
  %34 = and i32 %33, 65535, !dbg !2079
  %35 = trunc i32 %34 to i16, !dbg !2079
  call void @llvm.dbg.value(metadata i16 %35, metadata !2037, metadata !DIExpression()), !dbg !2040
  %36 = mul i32 %.12, %16, !dbg !2080
  %37 = add i32 %36, %.1, !dbg !2081
  %38 = getelementptr inbounds i16, i16* %24, i32 %37, !dbg !2082
  store i16 %35, i16* %38, align 2, !dbg !2083, !tbaa !294
  %39 = sext i16 %35 to i32, !dbg !2084
  %40 = add nsw i32 %39, %.16, !dbg !2085
  %41 = trunc i32 %40 to i16, !dbg !2086
  call void @llvm.dbg.value(metadata i16 %41, metadata !2037, metadata !DIExpression()), !dbg !2040
  %42 = sext i16 %41 to i32, !dbg !2087
  %43 = and i32 %42, 255, !dbg !2087
  %44 = trunc i32 %43 to i16, !dbg !2087
  call void @llvm.dbg.value(metadata i16 %44, metadata !2037, metadata !DIExpression()), !dbg !2040
  %45 = mul i32 %.12, %16, !dbg !2088
  %46 = add i32 %45, %.1, !dbg !2089
  %47 = getelementptr inbounds i16, i16* %22, i32 %46, !dbg !2090
  store i16 %44, i16* %47, align 2, !dbg !2091, !tbaa !294
  %48 = add nsw i32 %.16, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %48, metadata !2036, metadata !DIExpression()), !dbg !2040
  br label %49, !dbg !2093

49:                                               ; preds = %28
  %50 = add i32 %.1, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i32 %50, metadata !2039, metadata !DIExpression()), !dbg !2040
  br label %27, !dbg !2095, !llvm.loop !2096

51:                                               ; preds = %27
  %.16.lcssa = phi i32 [ %.16, %27 ], !dbg !2040
  %.2.lcssa = phi i32 [ %.2, %27 ], !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !2036, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2031, metadata !DIExpression()), !dbg !2040
  br label %52, !dbg !2098

52:                                               ; preds = %51
  %53 = add i32 %.12, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %53, metadata !2038, metadata !DIExpression()), !dbg !2040
  br label %25, !dbg !2100, !llvm.loop !2101

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 1, !dbg !2103
  store i16* %22, i16** %55, align 4, !dbg !2104, !tbaa !1664
  %56 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 2, !dbg !2105
  store i16* %24, i16** %56, align 4, !dbg !2106, !tbaa !1666
  %57 = mul i32 %16, %16, !dbg !2107
  %58 = getelementptr inbounds i16, i16* %24, i32 %57, !dbg !2107
  %59 = ptrtoint i16* %58 to i32, !dbg !2107
  %60 = sub i32 %59, 1, !dbg !2107
  %61 = and i32 %60, -4, !dbg !2107
  %62 = add i32 4, %61, !dbg !2107
  %63 = inttoptr i32 %62 to i8*, !dbg !2107
  %64 = bitcast i8* %63 to i32*, !dbg !2108
  %65 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 3, !dbg !2109
  store i32* %64, i32** %65, align 4, !dbg !2110, !tbaa !1662
  %66 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %3, i32 0, i32 0, !dbg !2111
  store i32 %16, i32* %66, align 4, !dbg !2112, !tbaa !1660
  ret i32 %16, !dbg !2113
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_state(i32, i8*, i16 signext, i16 signext, i16 signext, i16 zeroext) #0 !dbg !2114 {
  %7 = alloca [8 x i32], align 4
  %8 = alloca [8 x i32], align 4
  %9 = alloca i8*, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2118, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8* %1, metadata !2119, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i16 %2, metadata !2120, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i16 %3, metadata !2121, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i16 %4, metadata !2122, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i16 %5, metadata !2123, metadata !DIExpression()), !dbg !2135
  %10 = bitcast [8 x i32]* %7 to i8*, !dbg !2136
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !2136
  call void @llvm.dbg.declare(metadata [8 x i32]* %7, metadata !2124, metadata !DIExpression()), !dbg !2137
  %11 = bitcast [8 x i32]* %8 to i8*, !dbg !2138
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %11) #4, !dbg !2138
  call void @llvm.dbg.declare(metadata [8 x i32]* %8, metadata !2128, metadata !DIExpression()), !dbg !2139
  %12 = bitcast i8** %9 to i8*, !dbg !2140
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2140
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2129, metadata !DIExpression()), !dbg !2141
  store i8* %1, i8** %9, align 4, !dbg !2141, !tbaa !334
  call void @llvm.dbg.value(metadata i32 0, metadata !2130, metadata !DIExpression()), !dbg !2135
  br label %13, !dbg !2142

13:                                               ; preds = %17, %6
  %.0 = phi i32 [ 0, %6 ], [ %18, %17 ], !dbg !2144
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2130, metadata !DIExpression()), !dbg !2135
  %exitcond3 = icmp ne i32 %.0, 8, !dbg !2145
  br i1 %exitcond3, label %14, label %19, !dbg !2147

14:                                               ; preds = %13
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.0, !dbg !2148
  store i32 0, i32* %15, align 4, !dbg !2150, !tbaa !1046
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.0, !dbg !2151
  store i32 0, i32* %16, align 4, !dbg !2152, !tbaa !1046
  br label %17, !dbg !2153

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %.0, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %18, metadata !2130, metadata !DIExpression()), !dbg !2135
  br label %13, !dbg !2155, !llvm.loop !2156

19:                                               ; preds = %13
  br label %20, !dbg !2158

20:                                               ; preds = %25, %19
  %21 = load i8*, i8** %9, align 4, !dbg !2159, !tbaa !334
  %22 = load i8, i8* %21, align 1, !dbg !2160, !tbaa !2161
  %23 = zext i8 %22 to i32, !dbg !2160
  %24 = icmp ne i32 %23, 0, !dbg !2162
  br i1 %24, label %25, label %31, !dbg !2158

25:                                               ; preds = %20
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2163
  %27 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %26), !dbg !2164
  call void @llvm.dbg.value(metadata i32 %27, metadata !2131, metadata !DIExpression()), !dbg !2165
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %27, !dbg !2166
  %29 = load i32, i32* %28, align 4, !dbg !2167, !tbaa !1046
  %30 = add i32 %29, 1, !dbg !2167
  store i32 %30, i32* %28, align 4, !dbg !2167, !tbaa !1046
  br label %20, !dbg !2158, !llvm.loop !2168

31:                                               ; preds = %20
  store i8* %1, i8** %9, align 4, !dbg !2170, !tbaa !334
  br label %32, !dbg !2171

32:                                               ; preds = %49, %31
  %33 = load i8*, i8** %9, align 4, !dbg !2172, !tbaa !334
  %34 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2173
  %35 = icmp ult i8* %33, %34, !dbg !2174
  br i1 %35, label %36, label %53, !dbg !2171

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 4, !dbg !2175, !tbaa !334
  %38 = load i8, i8* %37, align 1, !dbg !2178, !tbaa !2161
  %39 = zext i8 %38 to i32, !dbg !2178
  %40 = icmp ne i32 %39, 44, !dbg !2179
  br i1 %40, label %41, label %._crit_edge, !dbg !2180

._crit_edge:                                      ; preds = %36
  br label %49, !dbg !2180

41:                                               ; preds = %36
  %42 = trunc i16 %2 to i8, !dbg !2181
  %43 = zext i8 %42 to i32, !dbg !2181
  %44 = load i8*, i8** %9, align 4, !dbg !2182, !tbaa !334
  %45 = load i8, i8* %44, align 1, !dbg !2183, !tbaa !2161
  %46 = zext i8 %45 to i32, !dbg !2183
  %47 = xor i32 %46, %43, !dbg !2183
  %48 = trunc i32 %47 to i8, !dbg !2183
  store i8 %48, i8* %44, align 1, !dbg !2183, !tbaa !2161
  br label %49, !dbg !2184

49:                                               ; preds = %._crit_edge, %41
  %50 = sext i16 %4 to i32, !dbg !2185
  %51 = load i8*, i8** %9, align 4, !dbg !2186, !tbaa !334
  %52 = getelementptr inbounds i8, i8* %51, i32 %50, !dbg !2186
  store i8* %52, i8** %9, align 4, !dbg !2186, !tbaa !334
  br label %32, !dbg !2171, !llvm.loop !2187

53:                                               ; preds = %32
  store i8* %1, i8** %9, align 4, !dbg !2189, !tbaa !334
  br label %54, !dbg !2190

54:                                               ; preds = %59, %53
  %55 = load i8*, i8** %9, align 4, !dbg !2191, !tbaa !334
  %56 = load i8, i8* %55, align 1, !dbg !2192, !tbaa !2161
  %57 = zext i8 %56 to i32, !dbg !2192
  %58 = icmp ne i32 %57, 0, !dbg !2193
  br i1 %58, label %59, label %65, !dbg !2190

59:                                               ; preds = %54
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 0, !dbg !2194
  %61 = call arm_aapcscc i32 @core_state_transition(i8** %9, i32* %60), !dbg !2195
  call void @llvm.dbg.value(metadata i32 %61, metadata !2133, metadata !DIExpression()), !dbg !2196
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %61, !dbg !2197
  %63 = load i32, i32* %62, align 4, !dbg !2198, !tbaa !1046
  %64 = add i32 %63, 1, !dbg !2198
  store i32 %64, i32* %62, align 4, !dbg !2198, !tbaa !1046
  br label %54, !dbg !2190, !llvm.loop !2199

65:                                               ; preds = %54
  store i8* %1, i8** %9, align 4, !dbg !2201, !tbaa !334
  br label %66, !dbg !2202

66:                                               ; preds = %83, %65
  %67 = load i8*, i8** %9, align 4, !dbg !2203, !tbaa !334
  %68 = getelementptr inbounds i8, i8* %1, i32 %0, !dbg !2204
  %69 = icmp ult i8* %67, %68, !dbg !2205
  br i1 %69, label %70, label %87, !dbg !2202

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 4, !dbg !2206, !tbaa !334
  %72 = load i8, i8* %71, align 1, !dbg !2209, !tbaa !2161
  %73 = zext i8 %72 to i32, !dbg !2209
  %74 = icmp ne i32 %73, 44, !dbg !2210
  br i1 %74, label %75, label %._crit_edge2, !dbg !2211

._crit_edge2:                                     ; preds = %70
  br label %83, !dbg !2211

75:                                               ; preds = %70
  %76 = trunc i16 %3 to i8, !dbg !2212
  %77 = zext i8 %76 to i32, !dbg !2212
  %78 = load i8*, i8** %9, align 4, !dbg !2213, !tbaa !334
  %79 = load i8, i8* %78, align 1, !dbg !2214, !tbaa !2161
  %80 = zext i8 %79 to i32, !dbg !2214
  %81 = xor i32 %80, %77, !dbg !2214
  %82 = trunc i32 %81 to i8, !dbg !2214
  store i8 %82, i8* %78, align 1, !dbg !2214, !tbaa !2161
  br label %83, !dbg !2215

83:                                               ; preds = %._crit_edge2, %75
  %84 = sext i16 %4 to i32, !dbg !2216
  %85 = load i8*, i8** %9, align 4, !dbg !2217, !tbaa !334
  %86 = getelementptr inbounds i8, i8* %85, i32 %84, !dbg !2217
  store i8* %86, i8** %9, align 4, !dbg !2217, !tbaa !334
  br label %66, !dbg !2202, !llvm.loop !2218

87:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 0, metadata !2130, metadata !DIExpression()), !dbg !2135
  br label %88, !dbg !2220

88:                                               ; preds = %96, %87
  %.01 = phi i16 [ %5, %87 ], [ %95, %96 ]
  %.1 = phi i32 [ 0, %87 ], [ %97, %96 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2130, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2123, metadata !DIExpression()), !dbg !2135
  %exitcond = icmp ne i32 %.1, 8, !dbg !2223
  br i1 %exitcond, label %89, label %98, !dbg !2225

89:                                               ; preds = %88
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i32 0, i32 %.1, !dbg !2226
  %91 = load i32, i32* %90, align 4, !dbg !2226, !tbaa !1046
  %92 = call arm_aapcscc zeroext i16 @crcu32(i32 %91, i16 zeroext %.01), !dbg !2228
  call void @llvm.dbg.value(metadata i16 %92, metadata !2123, metadata !DIExpression()), !dbg !2135
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i32 0, i32 %.1, !dbg !2229
  %94 = load i32, i32* %93, align 4, !dbg !2229, !tbaa !1046
  %95 = call arm_aapcscc zeroext i16 @crcu32(i32 %94, i16 zeroext %92), !dbg !2230
  call void @llvm.dbg.value(metadata i16 %95, metadata !2123, metadata !DIExpression()), !dbg !2135
  br label %96, !dbg !2231

96:                                               ; preds = %89
  %97 = add nuw nsw i32 %.1, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %97, metadata !2130, metadata !DIExpression()), !dbg !2135
  br label %88, !dbg !2233, !llvm.loop !2234

98:                                               ; preds = %88
  %.01.lcssa = phi i16 [ %.01, %88 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2123, metadata !DIExpression()), !dbg !2135
  %99 = bitcast i8** %9 to i8*, !dbg !2236
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %99) #4, !dbg !2236
  %100 = bitcast [8 x i32]* %8 to i8*, !dbg !2236
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %100) #4, !dbg !2236
  %101 = bitcast [8 x i32]* %7 to i8*, !dbg !2236
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %101) #4, !dbg !2236
  ret i16 %.01.lcssa, !dbg !2237
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_state_transition(i8**, i32*) #0 !dbg !2238 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32* %1, metadata !2245, metadata !DIExpression()), !dbg !2249
  %3 = load i8*, i8** %0, align 4, !dbg !2250, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %3, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 0, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %4, !dbg !2251

4:                                                ; preds = %136, %2
  %.01 = phi i8* [ %3, %2 ], [ %137, %136 ], !dbg !2249
  %.0 = phi i32 [ 0, %2 ], [ %.13, %136 ], !dbg !2252
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2248, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2246, metadata !DIExpression()), !dbg !2249
  %5 = load i8, i8* %.01, align 1, !dbg !2253, !tbaa !2161
  %6 = zext i8 %5 to i32, !dbg !2253
  %7 = icmp ne i32 %6, 0, !dbg !2253
  br i1 %7, label %8, label %._crit_edge, !dbg !2256

._crit_edge:                                      ; preds = %4
  br label %10, !dbg !2256

8:                                                ; preds = %4
  %9 = icmp ne i32 %.0, 1, !dbg !2257
  br label %10

10:                                               ; preds = %._crit_edge, %8
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %8 ], !dbg !2258
  br i1 %11, label %12, label %._crit_edge17, !dbg !2259

._crit_edge17:                                    ; preds = %10
  %.01.lcssa = phi i8* [ %.01, %10 ], !dbg !2249
  %.0.lcssa = phi i32 [ %.0, %10 ], !dbg !2252
  call void @llvm.dbg.value(metadata i8* %.01.lcssa, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %138, !dbg !2259

12:                                               ; preds = %10
  %13 = load i8, i8* %.01, align 1, !dbg !2260, !tbaa !2161
  call void @llvm.dbg.value(metadata i8 %13, metadata !2247, metadata !DIExpression()), !dbg !2249
  %14 = zext i8 %13 to i32, !dbg !2262
  %15 = icmp eq i32 %14, 44, !dbg !2264
  br i1 %15, label %16, label %18, !dbg !2265

16:                                               ; preds = %12
  %.01.lcssa29 = phi i8* [ %.01, %12 ], !dbg !2249
  %.0.lcssa27 = phi i32 [ %.0, %12 ], !dbg !2252
  call void @llvm.dbg.value(metadata i8* %.01.lcssa29, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %.0.lcssa27, metadata !2248, metadata !DIExpression()), !dbg !2249
  %17 = getelementptr inbounds i8, i8* %.01.lcssa29, i32 1, !dbg !2266
  call void @llvm.dbg.value(metadata i8* %17, metadata !2246, metadata !DIExpression()), !dbg !2249
  br label %138, !dbg !2268

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
  %20 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2269
  %21 = icmp ne i8 %20, 0, !dbg !2269
  br i1 %21, label %22, label %23, !dbg !2272

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 4, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %40, !dbg !2273

23:                                               ; preds = %19
  %24 = zext i8 %13 to i32, !dbg !2275
  %25 = icmp eq i32 %24, 43, !dbg !2277
  br i1 %25, label %._crit_edge18, label %26, !dbg !2278

._crit_edge18:                                    ; preds = %23
  br label %29, !dbg !2278

26:                                               ; preds = %23
  %27 = zext i8 %13 to i32, !dbg !2279
  %28 = icmp eq i32 %27, 45, !dbg !2280
  br i1 %28, label %._crit_edge19, label %30, !dbg !2281

._crit_edge19:                                    ; preds = %26
  br label %29, !dbg !2281

29:                                               ; preds = %._crit_edge19, %._crit_edge18
  call void @llvm.dbg.value(metadata i32 2, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %39, !dbg !2282

30:                                               ; preds = %26
  %31 = zext i8 %13 to i32, !dbg !2284
  %32 = icmp eq i32 %31, 46, !dbg !2286
  br i1 %32, label %33, label %34, !dbg !2287

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 5, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %38, !dbg !2288

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 1, metadata !2248, metadata !DIExpression()), !dbg !2249
  %35 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2290
  %36 = load i32, i32* %35, align 4, !dbg !2292, !tbaa !1046
  %37 = add i32 %36, 1, !dbg !2292
  store i32 %37, i32* %35, align 4, !dbg !2292, !tbaa !1046
  br label %38

38:                                               ; preds = %34, %33
  %.1 = phi i32 [ 5, %33 ], [ 1, %34 ], !dbg !2293
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %39

39:                                               ; preds = %38, %29
  %.2 = phi i32 [ 2, %29 ], [ %.1, %38 ], !dbg !2294
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %40

40:                                               ; preds = %39, %22
  %.3 = phi i32 [ 4, %22 ], [ %.2, %39 ], !dbg !2295
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2248, metadata !DIExpression()), !dbg !2249
  %41 = getelementptr inbounds i32, i32* %1, i32 0, !dbg !2296
  %42 = load i32, i32* %41, align 4, !dbg !2297, !tbaa !1046
  %43 = add i32 %42, 1, !dbg !2297
  store i32 %43, i32* %41, align 4, !dbg !2297, !tbaa !1046
  br label %135, !dbg !2298

44:                                               ; preds = %NodeBlock
  %45 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2299
  %46 = icmp ne i8 %45, 0, !dbg !2299
  br i1 %46, label %47, label %51, !dbg !2301

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 4, metadata !2248, metadata !DIExpression()), !dbg !2249
  %48 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2302
  %49 = load i32, i32* %48, align 4, !dbg !2304, !tbaa !1046
  %50 = add i32 %49, 1, !dbg !2304
  store i32 %50, i32* %48, align 4, !dbg !2304, !tbaa !1046
  br label %63, !dbg !2305

51:                                               ; preds = %44
  %52 = zext i8 %13 to i32, !dbg !2306
  %53 = icmp eq i32 %52, 46, !dbg !2308
  br i1 %53, label %54, label %58, !dbg !2309

54:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 5, metadata !2248, metadata !DIExpression()), !dbg !2249
  %55 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2310
  %56 = load i32, i32* %55, align 4, !dbg !2312, !tbaa !1046
  %57 = add i32 %56, 1, !dbg !2312
  store i32 %57, i32* %55, align 4, !dbg !2312, !tbaa !1046
  br label %62, !dbg !2313

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 1, metadata !2248, metadata !DIExpression()), !dbg !2249
  %59 = getelementptr inbounds i32, i32* %1, i32 2, !dbg !2314
  %60 = load i32, i32* %59, align 4, !dbg !2316, !tbaa !1046
  %61 = add i32 %60, 1, !dbg !2316
  store i32 %61, i32* %59, align 4, !dbg !2316, !tbaa !1046
  br label %62

62:                                               ; preds = %58, %54
  %.4 = phi i32 [ 5, %54 ], [ 1, %58 ], !dbg !2317
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %63

63:                                               ; preds = %62, %47
  %.5 = phi i32 [ 4, %47 ], [ %.4, %62 ], !dbg !2318
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %135, !dbg !2319

64:                                               ; preds = %NodeBlock7
  %65 = zext i8 %13 to i32, !dbg !2320
  %66 = icmp eq i32 %65, 46, !dbg !2322
  br i1 %66, label %67, label %71, !dbg !2323

67:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 5, metadata !2248, metadata !DIExpression()), !dbg !2249
  %68 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2324
  %69 = load i32, i32* %68, align 4, !dbg !2326, !tbaa !1046
  %70 = add i32 %69, 1, !dbg !2326
  store i32 %70, i32* %68, align 4, !dbg !2326, !tbaa !1046
  br label %79, !dbg !2327

71:                                               ; preds = %64
  %72 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2328
  %73 = icmp ne i8 %72, 0, !dbg !2328
  br i1 %73, label %._crit_edge20, label %74, !dbg !2330

._crit_edge20:                                    ; preds = %71
  br label %78, !dbg !2330

74:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 1, metadata !2248, metadata !DIExpression()), !dbg !2249
  %75 = getelementptr inbounds i32, i32* %1, i32 4, !dbg !2331
  %76 = load i32, i32* %75, align 4, !dbg !2333, !tbaa !1046
  %77 = add i32 %76, 1, !dbg !2333
  store i32 %77, i32* %75, align 4, !dbg !2333, !tbaa !1046
  br label %78, !dbg !2334

78:                                               ; preds = %._crit_edge20, %74
  %.6 = phi i32 [ %.0, %._crit_edge20 ], [ 1, %74 ], !dbg !2249
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %79

79:                                               ; preds = %78, %67
  %.7 = phi i32 [ 5, %67 ], [ %.6, %78 ], !dbg !2249
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %135, !dbg !2335

80:                                               ; preds = %NodeBlock7
  %81 = zext i8 %13 to i32, !dbg !2336
  %82 = icmp eq i32 %81, 69, !dbg !2338
  br i1 %82, label %._crit_edge21, label %83, !dbg !2339

._crit_edge21:                                    ; preds = %80
  br label %86, !dbg !2339

83:                                               ; preds = %80
  %84 = zext i8 %13 to i32, !dbg !2340
  %85 = icmp eq i32 %84, 101, !dbg !2341
  br i1 %85, label %._crit_edge22, label %90, !dbg !2342

._crit_edge22:                                    ; preds = %83
  br label %86, !dbg !2342

86:                                               ; preds = %._crit_edge22, %._crit_edge21
  call void @llvm.dbg.value(metadata i32 3, metadata !2248, metadata !DIExpression()), !dbg !2249
  %87 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2343
  %88 = load i32, i32* %87, align 4, !dbg !2345, !tbaa !1046
  %89 = add i32 %88, 1, !dbg !2345
  store i32 %89, i32* %87, align 4, !dbg !2345, !tbaa !1046
  br label %98, !dbg !2346

90:                                               ; preds = %83
  %91 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2347
  %92 = icmp ne i8 %91, 0, !dbg !2347
  br i1 %92, label %._crit_edge23, label %93, !dbg !2349

._crit_edge23:                                    ; preds = %90
  br label %97, !dbg !2349

93:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i32 1, metadata !2248, metadata !DIExpression()), !dbg !2249
  %94 = getelementptr inbounds i32, i32* %1, i32 5, !dbg !2350
  %95 = load i32, i32* %94, align 4, !dbg !2352, !tbaa !1046
  %96 = add i32 %95, 1, !dbg !2352
  store i32 %96, i32* %94, align 4, !dbg !2352, !tbaa !1046
  br label %97, !dbg !2353

97:                                               ; preds = %._crit_edge23, %93
  %.8 = phi i32 [ %.0, %._crit_edge23 ], [ 1, %93 ], !dbg !2249
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %98

98:                                               ; preds = %97, %86
  %.9 = phi i32 [ 3, %86 ], [ %.8, %97 ], !dbg !2249
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %135, !dbg !2354

99:                                               ; preds = %NodeBlock
  %100 = zext i8 %13 to i32, !dbg !2355
  %101 = icmp eq i32 %100, 43, !dbg !2357
  br i1 %101, label %._crit_edge24, label %102, !dbg !2358

._crit_edge24:                                    ; preds = %99
  br label %105, !dbg !2358

102:                                              ; preds = %99
  %103 = zext i8 %13 to i32, !dbg !2359
  %104 = icmp eq i32 %103, 45, !dbg !2360
  br i1 %104, label %._crit_edge25, label %109, !dbg !2361

._crit_edge25:                                    ; preds = %102
  br label %105, !dbg !2361

105:                                              ; preds = %._crit_edge25, %._crit_edge24
  call void @llvm.dbg.value(metadata i32 6, metadata !2248, metadata !DIExpression()), !dbg !2249
  %106 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2362
  %107 = load i32, i32* %106, align 4, !dbg !2364, !tbaa !1046
  %108 = add i32 %107, 1, !dbg !2364
  store i32 %108, i32* %106, align 4, !dbg !2364, !tbaa !1046
  br label %113, !dbg !2365

109:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 1, metadata !2248, metadata !DIExpression()), !dbg !2249
  %110 = getelementptr inbounds i32, i32* %1, i32 3, !dbg !2366
  %111 = load i32, i32* %110, align 4, !dbg !2368, !tbaa !1046
  %112 = add i32 %111, 1, !dbg !2368
  store i32 %112, i32* %110, align 4, !dbg !2368, !tbaa !1046
  br label %113

113:                                              ; preds = %109, %105
  %.10 = phi i32 [ 6, %105 ], [ 1, %109 ], !dbg !2369
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %135, !dbg !2370

114:                                              ; preds = %NodeBlock11
  %115 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2371
  %116 = icmp ne i8 %115, 0, !dbg !2371
  br i1 %116, label %117, label %121, !dbg !2373

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 7, metadata !2248, metadata !DIExpression()), !dbg !2249
  %118 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2374
  %119 = load i32, i32* %118, align 4, !dbg !2376, !tbaa !1046
  %120 = add i32 %119, 1, !dbg !2376
  store i32 %120, i32* %118, align 4, !dbg !2376, !tbaa !1046
  br label %125, !dbg !2377

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 1, metadata !2248, metadata !DIExpression()), !dbg !2249
  %122 = getelementptr inbounds i32, i32* %1, i32 6, !dbg !2378
  %123 = load i32, i32* %122, align 4, !dbg !2380, !tbaa !1046
  %124 = add i32 %123, 1, !dbg !2380
  store i32 %124, i32* %122, align 4, !dbg !2380, !tbaa !1046
  br label %125

125:                                              ; preds = %121, %117
  %.11 = phi i32 [ 7, %117 ], [ 1, %121 ], !dbg !2381
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %135, !dbg !2382

126:                                              ; preds = %LeafBlock9
  %127 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %13), !dbg !2383
  %128 = icmp ne i8 %127, 0, !dbg !2383
  br i1 %128, label %._crit_edge26, label %129, !dbg !2385

._crit_edge26:                                    ; preds = %126
  br label %133, !dbg !2385

129:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i32 1, metadata !2248, metadata !DIExpression()), !dbg !2249
  %130 = getelementptr inbounds i32, i32* %1, i32 1, !dbg !2386
  %131 = load i32, i32* %130, align 4, !dbg !2388, !tbaa !1046
  %132 = add i32 %131, 1, !dbg !2388
  store i32 %132, i32* %130, align 4, !dbg !2388, !tbaa !1046
  br label %133, !dbg !2389

133:                                              ; preds = %._crit_edge26, %129
  %.12 = phi i32 [ %.0, %._crit_edge26 ], [ 1, %129 ], !dbg !2249
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %135, !dbg !2390

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock9.NewDefault_crit_edge
  br label %134

134:                                              ; preds = %NewDefault
  br label %135, !dbg !2391

135:                                              ; preds = %134, %133, %125, %113, %98, %79, %63, %40
  %.13 = phi i32 [ %.0, %134 ], [ %.12, %133 ], [ %.11, %125 ], [ %.10, %113 ], [ %.9, %98 ], [ %.7, %79 ], [ %.5, %63 ], [ %.3, %40 ], !dbg !2249
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %136, !dbg !2392

136:                                              ; preds = %135
  %137 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !2393
  call void @llvm.dbg.value(metadata i8* %137, metadata !2246, metadata !DIExpression()), !dbg !2249
  br label %4, !dbg !2394, !llvm.loop !2395

138:                                              ; preds = %._crit_edge17, %16
  %.028 = phi i32 [ %.0.lcssa27, %16 ], [ %.0.lcssa, %._crit_edge17 ]
  %.14 = phi i8* [ %17, %16 ], [ %.01.lcssa, %._crit_edge17 ], !dbg !2249
  call void @llvm.dbg.value(metadata i8* %.14, metadata !2246, metadata !DIExpression()), !dbg !2249
  store i8* %.14, i8** %0, align 4, !dbg !2397, !tbaa !334
  ret i32 %.028, !dbg !2398
}

; Function Attrs: nounwind
define internal arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext) #0 !dbg !2399 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2403, metadata !DIExpression()), !dbg !2405
  %2 = zext i8 %0 to i32, !dbg !2406
  %3 = icmp sge i32 %2, 48, !dbg !2407
  %4 = zext i1 %3 to i32, !dbg !2407
  %5 = zext i8 %0 to i32, !dbg !2408
  %6 = icmp sle i32 %5, 57, !dbg !2409
  %7 = zext i1 %6 to i32, !dbg !2409
  %8 = and i32 %4, %7, !dbg !2410
  %9 = icmp ne i32 %8, 0, !dbg !2411
  %10 = zext i1 %9 to i64, !dbg !2411
  %11 = select i1 %9, i32 1, i32 0, !dbg !2411
  %12 = trunc i32 %11 to i8, !dbg !2411
  call void @llvm.dbg.value(metadata i8 %12, metadata !2404, metadata !DIExpression()), !dbg !2405
  ret i8 %12, !dbg !2412
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @core_init_state(i32, i16 signext, i8*) #0 !dbg !2413 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i16 %1, metadata !2418, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %2, metadata !2419, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 0, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 0, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* null, metadata !2423, metadata !DIExpression()), !dbg !2424
  %4 = add i32 %0, -1, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %4, metadata !2417, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 0, metadata !2421, metadata !DIExpression()), !dbg !2424
  br label %5, !dbg !2426

5:                                                ; preds = %53, %3
  %.04 = phi i32 [ 0, %3 ], [ %.15, %53 ], !dbg !2427
  %.02 = phi i32 [ 0, %3 ], [ %.13, %53 ], !dbg !2424
  %.01 = phi i8* [ null, %3 ], [ %.1, %53 ], !dbg !2428
  %.0 = phi i16 [ %1, %3 ], [ %26, %53 ]
  call void @llvm.dbg.value(metadata i16 %.0, metadata !2418, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2421, metadata !DIExpression()), !dbg !2424
  %6 = add i32 %.02, %.04, !dbg !2429
  %7 = add i32 %6, 1, !dbg !2430
  %8 = icmp ult i32 %7, %4, !dbg !2431
  br i1 %8, label %9, label %54, !dbg !2426

9:                                                ; preds = %5
  %10 = icmp ugt i32 %.04, 0, !dbg !2432
  br i1 %10, label %11, label %._crit_edge, !dbg !2435

._crit_edge:                                      ; preds = %9
  br label %25, !dbg !2435

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()), !dbg !2424
  br label %12, !dbg !2436

12:                                               ; preds = %18, %11
  %.06 = phi i32 [ 0, %11 ], [ %19, %18 ], !dbg !2439
  call void @llvm.dbg.value(metadata i32 %.06, metadata !2422, metadata !DIExpression()), !dbg !2424
  %exitcond = icmp ne i32 %.06, %.04, !dbg !2440
  br i1 %exitcond, label %13, label %20, !dbg !2442

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.01, i32 %.06, !dbg !2443
  %15 = load i8, i8* %14, align 1, !dbg !2443, !tbaa !2161
  %16 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2444
  %17 = getelementptr inbounds i8, i8* %16, i32 %.06, !dbg !2445
  store i8 %15, i8* %17, align 1, !dbg !2446, !tbaa !2161
  br label %18, !dbg !2447

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %.06, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %19, metadata !2422, metadata !DIExpression()), !dbg !2424
  br label %12, !dbg !2449, !llvm.loop !2450

20:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 %.04, metadata !2422, metadata !DIExpression()), !dbg !2424
  %21 = getelementptr inbounds i8, i8* %2, i32 %.02, !dbg !2452
  %22 = getelementptr inbounds i8, i8* %21, i32 %.04, !dbg !2453
  store i8 44, i8* %22, align 1, !dbg !2454, !tbaa !2161
  %23 = add nuw nsw i32 %.04, 1, !dbg !2455
  %24 = add i32 %.02, %23, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %24, metadata !2420, metadata !DIExpression()), !dbg !2424
  br label %25, !dbg !2457

25:                                               ; preds = %._crit_edge, %20
  %.13 = phi i32 [ %24, %20 ], [ %.02, %._crit_edge ], !dbg !2424
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2420, metadata !DIExpression()), !dbg !2424
  %26 = add i16 %.0, 1, !dbg !2458
  call void @llvm.dbg.value(metadata i16 %26, metadata !2418, metadata !DIExpression()), !dbg !2424
  %27 = sext i16 %26 to i32, !dbg !2459
  %28 = and i32 %27, 7, !dbg !2460
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
  %30 = sext i16 %26 to i32, !dbg !2461
  %31 = ashr i32 %30, 3, !dbg !2463
  %32 = and i32 %31, 3, !dbg !2464
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* @intpat, i32 0, i32 %32, !dbg !2465
  %34 = load i8*, i8** %33, align 4, !dbg !2465, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %34, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 4, metadata !2421, metadata !DIExpression()), !dbg !2424
  br label %53, !dbg !2466

35:                                               ; preds = %LeafBlock
  %36 = sext i16 %26 to i32, !dbg !2467
  %37 = ashr i32 %36, 3, !dbg !2468
  %38 = and i32 %37, 3, !dbg !2469
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* @floatpat, i32 0, i32 %38, !dbg !2470
  %40 = load i8*, i8** %39, align 4, !dbg !2470, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %40, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 8, metadata !2421, metadata !DIExpression()), !dbg !2424
  br label %53, !dbg !2471

41:                                               ; preds = %NodeBlock
  %42 = sext i16 %26 to i32, !dbg !2472
  %43 = ashr i32 %42, 3, !dbg !2473
  %44 = and i32 %43, 3, !dbg !2474
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* @scipat, i32 0, i32 %44, !dbg !2475
  %46 = load i8*, i8** %45, align 4, !dbg !2475, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %46, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 8, metadata !2421, metadata !DIExpression()), !dbg !2424
  br label %53, !dbg !2476

47:                                               ; preds = %NodeBlock
  %48 = sext i16 %26 to i32, !dbg !2477
  %49 = ashr i32 %48, 3, !dbg !2478
  %50 = and i32 %49, 3, !dbg !2479
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* @errpat, i32 0, i32 %50, !dbg !2480
  %52 = load i8*, i8** %51, align 4, !dbg !2480, !tbaa !334
  call void @llvm.dbg.value(metadata i8* %52, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 8, metadata !2421, metadata !DIExpression()), !dbg !2424
  br label %53, !dbg !2481

53:                                               ; preds = %47, %41, %35, %29
  %.15 = phi i32 [ 8, %47 ], [ 8, %41 ], [ 8, %35 ], [ 4, %29 ], !dbg !2424
  %.1 = phi i8* [ %52, %47 ], [ %46, %41 ], [ %40, %35 ], [ %34, %29 ], !dbg !2424
  call void @llvm.dbg.value(metadata i8* %.1, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2421, metadata !DIExpression()), !dbg !2424
  br label %5, !dbg !2426, !llvm.loop !2482

54:                                               ; preds = %5
  %.02.lcssa = phi i32 [ %.02, %5 ], !dbg !2424
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !2420, metadata !DIExpression()), !dbg !2424
  %55 = add i32 %4, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i32 %55, metadata !2417, metadata !DIExpression()), !dbg !2424
  br label %56, !dbg !2485

56:                                               ; preds = %58, %54
  %.2 = phi i32 [ %.02.lcssa, %54 ], [ %60, %58 ], !dbg !2424
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2420, metadata !DIExpression()), !dbg !2424
  %57 = icmp ult i32 %.2, %55, !dbg !2486
  br i1 %57, label %58, label %61, !dbg !2485

58:                                               ; preds = %56
  %59 = getelementptr inbounds i8, i8* %2, i32 %.2, !dbg !2487
  store i8 0, i8* %59, align 1, !dbg !2489, !tbaa !2161
  %60 = add i32 %.2, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %60, metadata !2420, metadata !DIExpression()), !dbg !2424
  br label %56, !dbg !2485, !llvm.loop !2491

61:                                               ; preds = %56
  ret void, !dbg !2493
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_seed_32(i32) #0 !dbg !2494 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2499, metadata !DIExpression()), !dbg !2501
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
  %3 = load volatile i32, i32* @seed1_volatile, align 4, !dbg !2502, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %3, metadata !2500, metadata !DIExpression()), !dbg !2501
  br label %13, !dbg !2504

4:                                                ; preds = %NodeBlock
  %5 = load volatile i32, i32* @seed2_volatile, align 4, !dbg !2505, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %5, metadata !2500, metadata !DIExpression()), !dbg !2501
  br label %13, !dbg !2506

6:                                                ; preds = %NodeBlock5
  %7 = load volatile i32, i32* @seed3_volatile, align 4, !dbg !2507, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %7, metadata !2500, metadata !DIExpression()), !dbg !2501
  br label %13, !dbg !2508

8:                                                ; preds = %NodeBlock3
  %9 = load volatile i32, i32* @seed4_volatile, align 4, !dbg !2509, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %9, metadata !2500, metadata !DIExpression()), !dbg !2501
  br label %13, !dbg !2510

10:                                               ; preds = %LeafBlock1
  %11 = load volatile i32, i32* @seed5_volatile, align 4, !dbg !2511, !tbaa !1046
  call void @llvm.dbg.value(metadata i32 %11, metadata !2500, metadata !DIExpression()), !dbg !2501
  br label %13, !dbg !2512

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock1.NewDefault_crit_edge
  br label %12

12:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2500, metadata !DIExpression()), !dbg !2501
  br label %13, !dbg !2513

13:                                               ; preds = %12, %10, %8, %6, %4, %2
  %.0 = phi i32 [ 0, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], !dbg !2514
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2500, metadata !DIExpression()), !dbg !2501
  ret i32 %.0, !dbg !2515
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu8(i8 zeroext, i16 zeroext) #0 !dbg !2516 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2520, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i16 %1, metadata !2521, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2525
  br label %3, !dbg !2526

3:                                                ; preds = %38, %2
  %.02 = phi i8 [ 0, %2 ], [ %39, %38 ], !dbg !2528
  %.01 = phi i16 [ %1, %2 ], [ %.2, %38 ]
  %.0 = phi i8 [ %0, %2 ], [ %16, %38 ]
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2520, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i16 %.01, metadata !2521, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %.02, metadata !2522, metadata !DIExpression()), !dbg !2525
  %4 = zext i8 %.02 to i32, !dbg !2529
  %5 = icmp slt i32 %4, 8, !dbg !2531
  br i1 %5, label %6, label %40, !dbg !2532

6:                                                ; preds = %3
  %7 = zext i8 %.0 to i32, !dbg !2533
  %8 = and i32 %7, 1, !dbg !2535
  %9 = trunc i16 %.01 to i8, !dbg !2536
  %10 = zext i8 %9 to i32, !dbg !2536
  %11 = and i32 %10, 1, !dbg !2537
  %12 = xor i32 %8, %11, !dbg !2538
  %13 = trunc i32 %12 to i8, !dbg !2539
  call void @llvm.dbg.value(metadata i8 %13, metadata !2523, metadata !DIExpression()), !dbg !2525
  %14 = zext i8 %.0 to i32, !dbg !2540
  %15 = ashr i32 %14, 1, !dbg !2540
  %16 = trunc i32 %15 to i8, !dbg !2540
  call void @llvm.dbg.value(metadata i8 %16, metadata !2520, metadata !DIExpression()), !dbg !2525
  %17 = zext i8 %13 to i32, !dbg !2541
  %18 = icmp eq i32 %17, 1, !dbg !2543
  br i1 %18, label %19, label %23, !dbg !2544

19:                                               ; preds = %6
  %20 = zext i16 %.01 to i32, !dbg !2545
  %21 = xor i32 %20, 16386, !dbg !2545
  %22 = trunc i32 %21 to i16, !dbg !2545
  call void @llvm.dbg.value(metadata i16 %22, metadata !2521, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 1, metadata !2524, metadata !DIExpression()), !dbg !2525
  br label %24, !dbg !2547

23:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2525
  br label %24

24:                                               ; preds = %23, %19
  %.03 = phi i8 [ 1, %19 ], [ 0, %23 ], !dbg !2548
  %.1 = phi i16 [ %22, %19 ], [ %.01, %23 ]
  call void @llvm.dbg.value(metadata i16 %.1, metadata !2521, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %.03, metadata !2524, metadata !DIExpression()), !dbg !2525
  %25 = zext i16 %.1 to i32, !dbg !2549
  %26 = ashr i32 %25, 1, !dbg !2549
  %27 = trunc i32 %26 to i16, !dbg !2549
  call void @llvm.dbg.value(metadata i16 %27, metadata !2521, metadata !DIExpression()), !dbg !2525
  %28 = icmp ne i8 %.03, 0, !dbg !2550
  br i1 %28, label %29, label %33, !dbg !2552

29:                                               ; preds = %24
  %30 = zext i16 %27 to i32, !dbg !2553
  %31 = or i32 %30, 32768, !dbg !2553
  %32 = trunc i32 %31 to i16, !dbg !2553
  call void @llvm.dbg.value(metadata i16 %32, metadata !2521, metadata !DIExpression()), !dbg !2525
  br label %37, !dbg !2554

33:                                               ; preds = %24
  %34 = zext i16 %27 to i32, !dbg !2555
  %35 = and i32 %34, 32767, !dbg !2555
  %36 = trunc i32 %35 to i16, !dbg !2555
  call void @llvm.dbg.value(metadata i16 %36, metadata !2521, metadata !DIExpression()), !dbg !2525
  br label %37

37:                                               ; preds = %33, %29
  %.2 = phi i16 [ %32, %29 ], [ %36, %33 ], !dbg !2556
  call void @llvm.dbg.value(metadata i16 %.2, metadata !2521, metadata !DIExpression()), !dbg !2525
  br label %38, !dbg !2557

38:                                               ; preds = %37
  %39 = add nuw nsw i8 %.02, 1, !dbg !2558
  call void @llvm.dbg.value(metadata i8 %39, metadata !2522, metadata !DIExpression()), !dbg !2525
  br label %3, !dbg !2559, !llvm.loop !2560

40:                                               ; preds = %3
  %.01.lcssa = phi i16 [ %.01, %3 ]
  call void @llvm.dbg.value(metadata i16 %.01.lcssa, metadata !2521, metadata !DIExpression()), !dbg !2525
  ret i16 %.01.lcssa, !dbg !2562
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu16(i16 zeroext, i16 zeroext) #0 !dbg !2563 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2567, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i16 %1, metadata !2568, metadata !DIExpression()), !dbg !2569
  %3 = trunc i16 %0 to i8, !dbg !2570
  %4 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %3, i16 zeroext %1), !dbg !2571
  call void @llvm.dbg.value(metadata i16 %4, metadata !2568, metadata !DIExpression()), !dbg !2569
  %5 = zext i16 %0 to i32, !dbg !2572
  %6 = ashr i32 %5, 8, !dbg !2573
  %7 = trunc i32 %6 to i8, !dbg !2574
  %8 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %7, i16 zeroext %4), !dbg !2575
  call void @llvm.dbg.value(metadata i16 %8, metadata !2568, metadata !DIExpression()), !dbg !2569
  ret i16 %8, !dbg !2576
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu32(i32, i16 zeroext) #0 !dbg !2577 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i16 %1, metadata !2582, metadata !DIExpression()), !dbg !2583
  %3 = trunc i32 %0 to i16, !dbg !2584
  %4 = call arm_aapcscc zeroext i16 @crc16(i16 signext %3, i16 zeroext %1), !dbg !2585
  call void @llvm.dbg.value(metadata i16 %4, metadata !2582, metadata !DIExpression()), !dbg !2583
  %5 = lshr i32 %0, 16, !dbg !2586
  %6 = trunc i32 %5 to i16, !dbg !2587
  %7 = call arm_aapcscc zeroext i16 @crc16(i16 signext %6, i16 zeroext %4), !dbg !2588
  call void @llvm.dbg.value(metadata i16 %7, metadata !2582, metadata !DIExpression()), !dbg !2583
  ret i16 %7, !dbg !2589
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crc16(i16 signext, i16 zeroext) #0 !dbg !2590 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i16 %1, metadata !2595, metadata !DIExpression()), !dbg !2596
  %3 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %0, i16 zeroext %1), !dbg !2597
  ret i16 %3, !dbg !2598
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i8 @check_data_types() #0 !dbg !2599 {
  call void @llvm.dbg.value(metadata i8 0, metadata !2602, metadata !DIExpression()), !dbg !2603
  %1 = zext i8 0 to i32, !dbg !2604
  %2 = icmp sgt i32 %1, 0, !dbg !2606
  br i1 %2, label %3, label %._crit_edge, !dbg !2607

._crit_edge:                                      ; preds = %0
  br label %6, !dbg !2607

3:                                                ; preds = %0
  %4 = getelementptr [54 x i8], [54 x i8]* @.str.48, i32 0, i32 0
  %5 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %4), !dbg !2608
  br label %6, !dbg !2610

6:                                                ; preds = %._crit_edge, %3
  ret i8 0, !dbg !2611
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i64 @clock() #3 !dbg !2612 {
  %1 = load volatile i64, i64* @dummy, align 8, !dbg !2615, !tbaa !2616
  ret i64 %1, !dbg !2618
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @start_time() #0 !dbg !2619 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !2620
  store volatile i64 %1, i64* @start_time_val, align 8, !dbg !2620, !tbaa !2616
  ret void, !dbg !2621
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @stop_time() #0 !dbg !2622 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !2623
  store volatile i64 %1, i64* @stop_time_val, align 8, !dbg !2623, !tbaa !2616
  ret void, !dbg !2624
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_time() #0 !dbg !2625 {
  %1 = load volatile i64, i64* @stop_time_val, align 8, !dbg !2630, !tbaa !2616
  %2 = load volatile i64, i64* @start_time_val, align 8, !dbg !2630, !tbaa !2616
  %3 = sub i64 %1, %2, !dbg !2630
  %4 = trunc i64 %3 to i32, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %4, metadata !2629, metadata !DIExpression()), !dbg !2632
  ret i32 %4, !dbg !2633
}

; Function Attrs: nounwind
define dso_local arm_aapcscc double @time_in_secs(i32) #0 !dbg !2634 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2638, metadata !DIExpression()), !dbg !2640
  %2 = uitofp i32 %0 to double, !dbg !2641
  %3 = fdiv double %2, 1.000000e+07, !dbg !2642
  call void @llvm.dbg.value(metadata double %3, metadata !2639, metadata !DIExpression()), !dbg !2640
  ret double %3, !dbg !2643
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S*, i32*, i8**) #0 !dbg !2644 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2654, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32* %1, metadata !2655, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8** %2, metadata !2656, metadata !DIExpression()), !dbg !2657
  %4 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2658
  store i8 1, i8* %4, align 1, !dbg !2659, !tbaa !2660
  ret void, !dbg !2661
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S*) #0 !dbg !2662 {
  call void @llvm.dbg.value(metadata %struct.CORE_PORTABLE_S* %0, metadata !2666, metadata !DIExpression()), !dbg !2667
  %2 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %0, i32 0, i32 0, !dbg !2668
  store i8 0, i8* %2, align 1, !dbg !2669, !tbaa !2660
  ret void, !dbg !2670
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @printf_(i8*, ...) #0 !dbg !2671 {
  %2 = alloca %struct.__va_list, align 4
  %3 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2677, metadata !DIExpression()), !dbg !2689
  %4 = bitcast %struct.__va_list* %2 to i8*, !dbg !2690
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !2690
  call void @llvm.dbg.declare(metadata %struct.__va_list* %2, metadata !2678, metadata !DIExpression()), !dbg !2691
  %5 = bitcast %struct.__va_list* %2 to i8*, !dbg !2692
  call void @llvm.va_start(i8* %5), !dbg !2692
  %6 = bitcast [1 x i8]* %3 to i8*, !dbg !2693
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #4, !dbg !2693
  call void @llvm.dbg.declare(metadata [1 x i8]* %3, metadata !2685, metadata !DIExpression()), !dbg !2694
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i32 0, i32 0, !dbg !2695
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %2, i32 0, i32 0, !dbg !2696
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !2696
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !2696
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %7, i32 -1, i8* %0, [1 x i32] %10), !dbg !2696
  call void @llvm.dbg.value(metadata i32 %11, metadata !2687, metadata !DIExpression()), !dbg !2689
  %12 = bitcast %struct.__va_list* %2 to i8*, !dbg !2697
  call void @llvm.va_end(i8* %12), !dbg !2697
  %13 = bitcast [1 x i8]* %3 to i8*, !dbg !2698
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4, !dbg !2698
  %14 = bitcast %struct.__va_list* %2 to i8*, !dbg !2698
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !2698
  ret i32 %11, !dbg !2699
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_char(i8 zeroext, i8*, i32, i32) #5 !dbg !2700 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2702, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8* %1, metadata !2703, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 %2, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 %3, metadata !2705, metadata !DIExpression()), !dbg !2706
  %5 = icmp ne i8 %0, 0, !dbg !2707
  br i1 %5, label %6, label %._crit_edge, !dbg !2709

._crit_edge:                                      ; preds = %4
  br label %7, !dbg !2709

6:                                                ; preds = %4
  call arm_aapcscc void @_putchar(i8 zeroext %0), !dbg !2710
  br label %7, !dbg !2712

7:                                                ; preds = %._crit_edge, %6
  ret void, !dbg !2713
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32]) #0 !dbg !2714 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca i8*, align 4
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %6, i32 0, i32 0
  %9 = bitcast i8** %8 to [1 x i32]*
  store [1 x i32] %4, [1 x i32]* %9, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !2719, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %1, metadata !2720, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %2, metadata !2721, metadata !DIExpression()), !dbg !2771
  store i8* %3, i8** %7, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2722, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.declare(metadata %struct.__va_list* %6, metadata !2723, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i32 0, metadata !2728, metadata !DIExpression()), !dbg !2771
  %10 = icmp ne i8* %1, null, !dbg !2774
  br i1 %10, label %._crit_edge, label %11, !dbg !2776

._crit_edge:                                      ; preds = %5
  br label %12, !dbg !2776

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* @_out_null, metadata !2719, metadata !DIExpression()), !dbg !2771
  br label %12, !dbg !2777

12:                                               ; preds = %._crit_edge, %11
  %.0 = phi void (i8, i8*, i32, i32)* [ %0, %._crit_edge ], [ @_out_null, %11 ]
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %.0, metadata !2719, metadata !DIExpression()), !dbg !2771
  br label %13, !dbg !2779

13:                                               ; preds = %.backedge, %12
  %.018 = phi i32 [ 0, %12 ], [ %.018.be, %.backedge ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.018, metadata !2728, metadata !DIExpression()), !dbg !2771
  %14 = load i8*, i8** %7, align 4, !dbg !2780, !tbaa !334
  %15 = load i8, i8* %14, align 1, !dbg !2781, !tbaa !2161
  %16 = icmp ne i8 %15, 0, !dbg !2779
  br i1 %16, label %17, label %543, !dbg !2779

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 4, !dbg !2782, !tbaa !334
  %19 = load i8, i8* %18, align 1, !dbg !2784, !tbaa !2161
  %20 = zext i8 %19 to i32, !dbg !2784
  %21 = icmp ne i32 %20, 37, !dbg !2785
  br i1 %21, label %22, label %28, !dbg !2786

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 4, !dbg !2787, !tbaa !334
  %24 = load i8, i8* %23, align 1, !dbg !2789, !tbaa !2161
  %25 = add i32 %.018, 1, !dbg !2790
  call void @llvm.dbg.value(metadata i32 %25, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext %24, i8* %1, i32 %.018, i32 %2), !dbg !2791
  %26 = load i8*, i8** %7, align 4, !dbg !2792, !tbaa !334
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2792
  store i8* %27, i8** %7, align 4, !dbg !2792, !tbaa !334
  br label %.backedge, !dbg !2793

.backedge:                                        ; preds = %22, %542
  %.018.be = phi i32 [ %25, %22 ], [ %.1533, %542 ]
  br label %13, !dbg !2771, !llvm.loop !2794

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 4, !dbg !2796, !tbaa !334
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !2796
  store i8* %30, i8** %7, align 4, !dbg !2796, !tbaa !334
  br label %31

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %32, !dbg !2798

32:                                               ; preds = %._crit_edge124, %31
  %.03 = phi i32 [ 0, %31 ], [ %.14, %._crit_edge124 ], !dbg !2799
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2724, metadata !DIExpression()), !dbg !2771
  %33 = load i8*, i8** %7, align 4, !dbg !2800, !tbaa !334
  %34 = load i8, i8* %33, align 1, !dbg !2802, !tbaa !2161
  %35 = zext i8 %34 to i32, !dbg !2802
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
  %37 = or i32 %.03, 1, !dbg !2803
  call void @llvm.dbg.value(metadata i32 %37, metadata !2724, metadata !DIExpression()), !dbg !2771
  %38 = load i8*, i8** %7, align 4, !dbg !2805, !tbaa !334
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !2805
  store i8* %39, i8** %7, align 4, !dbg !2805, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %57, !dbg !2806

40:                                               ; preds = %LeafBlock44
  %41 = or i32 %.03, 2, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %41, metadata !2724, metadata !DIExpression()), !dbg !2771
  %42 = load i8*, i8** %7, align 4, !dbg !2808, !tbaa !334
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !2808
  store i8* %43, i8** %7, align 4, !dbg !2808, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %57, !dbg !2809

44:                                               ; preds = %LeafBlock42
  %45 = or i32 %.03, 4, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %45, metadata !2724, metadata !DIExpression()), !dbg !2771
  %46 = load i8*, i8** %7, align 4, !dbg !2811, !tbaa !334
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !2811
  store i8* %47, i8** %7, align 4, !dbg !2811, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %57, !dbg !2812

48:                                               ; preds = %LeafBlock
  %49 = or i32 %.03, 8, !dbg !2813
  call void @llvm.dbg.value(metadata i32 %49, metadata !2724, metadata !DIExpression()), !dbg !2771
  %50 = load i8*, i8** %7, align 4, !dbg !2814, !tbaa !334
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !2814
  store i8* %51, i8** %7, align 4, !dbg !2814, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %57, !dbg !2815

52:                                               ; preds = %LeafBlock40
  %53 = or i32 %.03, 16, !dbg !2816
  call void @llvm.dbg.value(metadata i32 %53, metadata !2724, metadata !DIExpression()), !dbg !2771
  %54 = load i8*, i8** %7, align 4, !dbg !2817, !tbaa !334
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !2817
  store i8* %55, i8** %7, align 4, !dbg !2817, !tbaa !334
  call void @llvm.dbg.value(metadata i32 1, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %57, !dbg !2818

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock40.NewDefault_crit_edge, %LeafBlock42.NewDefault_crit_edge, %LeafBlock44.NewDefault_crit_edge, %LeafBlock46.NewDefault_crit_edge
  br label %56

56:                                               ; preds = %NewDefault
  call void @llvm.dbg.value(metadata i32 0, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %57, !dbg !2819

57:                                               ; preds = %56, %52, %48, %44, %40, %36
  %.017 = phi i32 [ 0, %56 ], [ 1, %52 ], [ 1, %48 ], [ 1, %44 ], [ 1, %40 ], [ 1, %36 ], !dbg !2820
  %.14 = phi i32 [ %.03, %56 ], [ %53, %52 ], [ %49, %48 ], [ %45, %44 ], [ %41, %40 ], [ %37, %36 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.14, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.017, metadata !2727, metadata !DIExpression()), !dbg !2771
  br label %58, !dbg !2822

58:                                               ; preds = %57
  %59 = icmp ne i32 %.017, 0, !dbg !2822
  br i1 %59, label %._crit_edge124, label %60, !dbg !2822, !llvm.loop !2823

._crit_edge124:                                   ; preds = %58
  br label %32, !dbg !2822

60:                                               ; preds = %58
  %.14.lcssa = phi i32 [ %.14, %58 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.14.lcssa, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()), !dbg !2771
  %61 = load i8*, i8** %7, align 4, !dbg !2825, !tbaa !334
  %62 = load i8, i8* %61, align 1, !dbg !2826, !tbaa !2161
  %63 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %62), !dbg !2827
  br i1 %63, label %64, label %66, !dbg !2828

64:                                               ; preds = %60
  %65 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %65, metadata !2725, metadata !DIExpression()), !dbg !2771
  br label %86, !dbg !2831

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 4, !dbg !2832, !tbaa !334
  %68 = load i8, i8* %67, align 1, !dbg !2833, !tbaa !2161
  %69 = zext i8 %68 to i32, !dbg !2833
  %70 = icmp eq i32 %69, 42, !dbg !2834
  br i1 %70, label %71, label %._crit_edge125, !dbg !2835

._crit_edge125:                                   ; preds = %66
  br label %85, !dbg !2835

71:                                               ; preds = %66
  %72 = bitcast %struct.__va_list* %6 to i8**, !dbg !2836
  %73 = load i8*, i8** %72, align 4, !dbg !2836
  %74 = getelementptr inbounds i8, i8* %73, i32 4, !dbg !2836
  store i8* %74, i8** %72, align 4, !dbg !2836
  %75 = bitcast i8* %73 to i32*, !dbg !2836
  %76 = load i32, i32* %75, align 4, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %76, metadata !2729, metadata !DIExpression()), !dbg !2837
  %77 = icmp slt i32 %76, 0, !dbg !2838
  br i1 %77, label %78, label %81, !dbg !2840

78:                                               ; preds = %71
  %79 = or i32 %.14.lcssa, 2, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %79, metadata !2724, metadata !DIExpression()), !dbg !2771
  %80 = sub nsw i32 0, %76, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %80, metadata !2725, metadata !DIExpression()), !dbg !2771
  br label %82, !dbg !2844

81:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 %76, metadata !2725, metadata !DIExpression()), !dbg !2771
  br label %82

82:                                               ; preds = %81, %78
  %.08 = phi i32 [ %80, %78 ], [ %76, %81 ], !dbg !2845
  %.25 = phi i32 [ %79, %78 ], [ %.14.lcssa, %81 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.25, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.08, metadata !2725, metadata !DIExpression()), !dbg !2771
  %83 = load i8*, i8** %7, align 4, !dbg !2846, !tbaa !334
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !2846
  store i8* %84, i8** %7, align 4, !dbg !2846, !tbaa !334
  br label %85, !dbg !2847

85:                                               ; preds = %._crit_edge125, %82
  %.19 = phi i32 [ %.08, %82 ], [ 0, %._crit_edge125 ], !dbg !2821
  %.36 = phi i32 [ %.25, %82 ], [ %.14.lcssa, %._crit_edge125 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.36, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2725, metadata !DIExpression()), !dbg !2771
  br label %86

86:                                               ; preds = %85, %64
  %.210 = phi i32 [ %65, %64 ], [ %.19, %85 ], !dbg !2848
  %.4 = phi i32 [ %.14.lcssa, %64 ], [ %.36, %85 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.4, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.210, metadata !2725, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !2771
  %87 = load i8*, i8** %7, align 4, !dbg !2849, !tbaa !334
  %88 = load i8, i8* %87, align 1, !dbg !2850, !tbaa !2161
  %89 = zext i8 %88 to i32, !dbg !2850
  %90 = icmp eq i32 %89, 46, !dbg !2851
  br i1 %90, label %91, label %._crit_edge126, !dbg !2852

._crit_edge126:                                   ; preds = %86
  br label %120, !dbg !2852

91:                                               ; preds = %86
  %92 = or i32 %.4, 1024, !dbg !2853
  call void @llvm.dbg.value(metadata i32 %92, metadata !2724, metadata !DIExpression()), !dbg !2771
  %93 = load i8*, i8** %7, align 4, !dbg !2854, !tbaa !334
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !2854
  store i8* %94, i8** %7, align 4, !dbg !2854, !tbaa !334
  %95 = load i8*, i8** %7, align 4, !dbg !2855, !tbaa !334
  %96 = load i8, i8* %95, align 1, !dbg !2856, !tbaa !2161
  %97 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %96), !dbg !2857
  br i1 %97, label %98, label %100, !dbg !2858

98:                                               ; preds = %91
  %99 = call arm_aapcscc i32 @_atoi(i8** %7), !dbg !2859
  call void @llvm.dbg.value(metadata i32 %99, metadata !2726, metadata !DIExpression()), !dbg !2771
  br label %119, !dbg !2861

100:                                              ; preds = %91
  %101 = load i8*, i8** %7, align 4, !dbg !2862, !tbaa !334
  %102 = load i8, i8* %101, align 1, !dbg !2863, !tbaa !2161
  %103 = zext i8 %102 to i32, !dbg !2863
  %104 = icmp eq i32 %103, 42, !dbg !2864
  br i1 %104, label %105, label %._crit_edge127, !dbg !2865

._crit_edge127:                                   ; preds = %100
  br label %118, !dbg !2865

105:                                              ; preds = %100
  %106 = bitcast %struct.__va_list* %6 to i8**, !dbg !2866
  %107 = load i8*, i8** %106, align 4, !dbg !2866
  %108 = getelementptr inbounds i8, i8* %107, i32 4, !dbg !2866
  store i8* %108, i8** %106, align 4, !dbg !2866
  %109 = bitcast i8* %107 to i32*, !dbg !2866
  %110 = load i32, i32* %109, align 4, !dbg !2866
  call void @llvm.dbg.value(metadata i32 %110, metadata !2734, metadata !DIExpression()), !dbg !2867
  %111 = icmp sgt i32 %110, 0, !dbg !2868
  br i1 %111, label %112, label %113, !dbg !2869

112:                                              ; preds = %105
  br label %114, !dbg !2869

113:                                              ; preds = %105
  br label %114, !dbg !2869

114:                                              ; preds = %113, %112
  %115 = phi i32 [ %110, %112 ], [ 0, %113 ], !dbg !2869
  call void @llvm.dbg.value(metadata i32 %115, metadata !2726, metadata !DIExpression()), !dbg !2771
  %116 = load i8*, i8** %7, align 4, !dbg !2870, !tbaa !334
  %117 = getelementptr inbounds i8, i8* %116, i32 1, !dbg !2870
  store i8* %117, i8** %7, align 4, !dbg !2870, !tbaa !334
  br label %118, !dbg !2871

118:                                              ; preds = %._crit_edge127, %114
  %.011 = phi i32 [ %115, %114 ], [ 0, %._crit_edge127 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.011, metadata !2726, metadata !DIExpression()), !dbg !2771
  br label %119

119:                                              ; preds = %118, %98
  %.112 = phi i32 [ %99, %98 ], [ %.011, %118 ], !dbg !2872
  call void @llvm.dbg.value(metadata i32 %.112, metadata !2726, metadata !DIExpression()), !dbg !2771
  br label %120, !dbg !2873

120:                                              ; preds = %._crit_edge126, %119
  %.213 = phi i32 [ %.112, %119 ], [ 0, %._crit_edge126 ], !dbg !2821
  %.5 = phi i32 [ %92, %119 ], [ %.4, %._crit_edge126 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.5, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.213, metadata !2726, metadata !DIExpression()), !dbg !2771
  %121 = load i8*, i8** %7, align 4, !dbg !2874, !tbaa !334
  %122 = load i8, i8* %121, align 1, !dbg !2875, !tbaa !2161
  %123 = zext i8 %122 to i32, !dbg !2875
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
  %125 = or i32 %.5, 256, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %125, metadata !2724, metadata !DIExpression()), !dbg !2771
  %126 = load i8*, i8** %7, align 4, !dbg !2878, !tbaa !334
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !2878
  store i8* %127, i8** %7, align 4, !dbg !2878, !tbaa !334
  %128 = load i8*, i8** %7, align 4, !dbg !2879, !tbaa !334
  %129 = load i8, i8* %128, align 1, !dbg !2881, !tbaa !2161
  %130 = zext i8 %129 to i32, !dbg !2881
  %131 = icmp eq i32 %130, 108, !dbg !2882
  br i1 %131, label %132, label %._crit_edge128, !dbg !2883

._crit_edge128:                                   ; preds = %124
  br label %136, !dbg !2883

132:                                              ; preds = %124
  %133 = or i32 %125, 512, !dbg !2884
  call void @llvm.dbg.value(metadata i32 %133, metadata !2724, metadata !DIExpression()), !dbg !2771
  %134 = load i8*, i8** %7, align 4, !dbg !2886, !tbaa !334
  %135 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !2886
  store i8* %135, i8** %7, align 4, !dbg !2886, !tbaa !334
  br label %136, !dbg !2887

136:                                              ; preds = %._crit_edge128, %132
  %.6 = phi i32 [ %133, %132 ], [ %125, %._crit_edge128 ], !dbg !2888
  call void @llvm.dbg.value(metadata i32 %.6, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %163, !dbg !2889

137:                                              ; preds = %LeafBlock55
  %138 = or i32 %.5, 128, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %138, metadata !2724, metadata !DIExpression()), !dbg !2771
  %139 = load i8*, i8** %7, align 4, !dbg !2891, !tbaa !334
  %140 = getelementptr inbounds i8, i8* %139, i32 1, !dbg !2891
  store i8* %140, i8** %7, align 4, !dbg !2891, !tbaa !334
  %141 = load i8*, i8** %7, align 4, !dbg !2892, !tbaa !334
  %142 = load i8, i8* %141, align 1, !dbg !2894, !tbaa !2161
  %143 = zext i8 %142 to i32, !dbg !2894
  %144 = icmp eq i32 %143, 104, !dbg !2895
  br i1 %144, label %145, label %._crit_edge129, !dbg !2896

._crit_edge129:                                   ; preds = %137
  br label %149, !dbg !2896

145:                                              ; preds = %137
  %146 = or i32 %138, 64, !dbg !2897
  call void @llvm.dbg.value(metadata i32 %146, metadata !2724, metadata !DIExpression()), !dbg !2771
  %147 = load i8*, i8** %7, align 4, !dbg !2899, !tbaa !334
  %148 = getelementptr inbounds i8, i8* %147, i32 1, !dbg !2899
  store i8* %148, i8** %7, align 4, !dbg !2899, !tbaa !334
  br label %149, !dbg !2900

149:                                              ; preds = %._crit_edge129, %145
  %.7 = phi i32 [ %146, %145 ], [ %138, %._crit_edge129 ], !dbg !2888
  call void @llvm.dbg.value(metadata i32 %.7, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %163, !dbg !2901

150:                                              ; preds = %LeafBlock63
  %151 = or i32 %.5, 256, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %151, metadata !2724, metadata !DIExpression()), !dbg !2771
  %152 = load i8*, i8** %7, align 4, !dbg !2903, !tbaa !334
  %153 = getelementptr inbounds i8, i8* %152, i32 1, !dbg !2903
  store i8* %153, i8** %7, align 4, !dbg !2903, !tbaa !334
  br label %163, !dbg !2904

154:                                              ; preds = %LeafBlock57
  %155 = or i32 %.5, 512, !dbg !2905
  call void @llvm.dbg.value(metadata i32 %155, metadata !2724, metadata !DIExpression()), !dbg !2771
  %156 = load i8*, i8** %7, align 4, !dbg !2906, !tbaa !334
  %157 = getelementptr inbounds i8, i8* %156, i32 1, !dbg !2906
  store i8* %157, i8** %7, align 4, !dbg !2906, !tbaa !334
  br label %163, !dbg !2907

158:                                              ; preds = %LeafBlock65
  %159 = or i32 %.5, 256, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %159, metadata !2724, metadata !DIExpression()), !dbg !2771
  %160 = load i8*, i8** %7, align 4, !dbg !2909, !tbaa !334
  %161 = getelementptr inbounds i8, i8* %160, i32 1, !dbg !2909
  store i8* %161, i8** %7, align 4, !dbg !2909, !tbaa !334
  br label %163, !dbg !2910

NewDefault54:                                     ; preds = %LeafBlock55.NewDefault54_crit_edge, %LeafBlock57.NewDefault54_crit_edge, %LeafBlock61.NewDefault54_crit_edge, %LeafBlock63.NewDefault54_crit_edge, %LeafBlock65.NewDefault54_crit_edge
  br label %162

162:                                              ; preds = %NewDefault54
  br label %163, !dbg !2911

163:                                              ; preds = %162, %158, %154, %150, %149, %136
  %.8 = phi i32 [ %.5, %162 ], [ %159, %158 ], [ %155, %154 ], [ %151, %150 ], [ %.7, %149 ], [ %.6, %136 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.8, metadata !2724, metadata !DIExpression()), !dbg !2771
  %164 = load i8*, i8** %7, align 4, !dbg !2912, !tbaa !334
  %165 = load i8, i8* %164, align 1, !dbg !2913, !tbaa !2161
  %166 = zext i8 %165 to i32, !dbg !2913
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
  %168 = load i8*, i8** %7, align 4, !dbg !2914, !tbaa !334
  %169 = load i8, i8* %168, align 1, !dbg !2916, !tbaa !2161
  %170 = zext i8 %169 to i32, !dbg !2916
  %171 = icmp eq i32 %170, 120, !dbg !2917
  br i1 %171, label %._crit_edge131, label %172, !dbg !2918

._crit_edge131:                                   ; preds = %167
  br label %177, !dbg !2918

172:                                              ; preds = %167
  %173 = load i8*, i8** %7, align 4, !dbg !2919, !tbaa !334
  %174 = load i8, i8* %173, align 1, !dbg !2920, !tbaa !2161
  %175 = zext i8 %174 to i32, !dbg !2920
  %176 = icmp eq i32 %175, 88, !dbg !2921
  br i1 %176, label %._crit_edge132, label %178, !dbg !2922

._crit_edge132:                                   ; preds = %172
  br label %177, !dbg !2922

177:                                              ; preds = %._crit_edge132, %._crit_edge131
  call void @llvm.dbg.value(metadata i32 16, metadata !2740, metadata !DIExpression()), !dbg !2923
  br label %194, !dbg !2924

178:                                              ; preds = %172
  %179 = load i8*, i8** %7, align 4, !dbg !2926, !tbaa !334
  %180 = load i8, i8* %179, align 1, !dbg !2928, !tbaa !2161
  %181 = zext i8 %180 to i32, !dbg !2928
  %182 = icmp eq i32 %181, 111, !dbg !2929
  br i1 %182, label %183, label %184, !dbg !2930

183:                                              ; preds = %178
  call void @llvm.dbg.value(metadata i32 8, metadata !2740, metadata !DIExpression()), !dbg !2923
  br label %193, !dbg !2931

184:                                              ; preds = %178
  %185 = load i8*, i8** %7, align 4, !dbg !2933, !tbaa !334
  %186 = load i8, i8* %185, align 1, !dbg !2935, !tbaa !2161
  %187 = zext i8 %186 to i32, !dbg !2935
  %188 = icmp eq i32 %187, 98, !dbg !2936
  br i1 %188, label %189, label %190, !dbg !2937

189:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 2, metadata !2740, metadata !DIExpression()), !dbg !2923
  br label %192, !dbg !2938

190:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 10, metadata !2740, metadata !DIExpression()), !dbg !2923
  %191 = and i32 %.8, -17, !dbg !2940
  call void @llvm.dbg.value(metadata i32 %191, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %192

192:                                              ; preds = %190, %189
  %.037 = phi i32 [ 2, %189 ], [ 10, %190 ], !dbg !2942
  %.9 = phi i32 [ %.8, %189 ], [ %191, %190 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.9, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.037, metadata !2740, metadata !DIExpression()), !dbg !2923
  br label %193

193:                                              ; preds = %192, %183
  %.138 = phi i32 [ 8, %183 ], [ %.037, %192 ], !dbg !2943
  %.10 = phi i32 [ %.8, %183 ], [ %.9, %192 ], !dbg !2853
  call void @llvm.dbg.value(metadata i32 %.10, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.138, metadata !2740, metadata !DIExpression()), !dbg !2923
  br label %194

194:                                              ; preds = %193, %177
  %.239 = phi i32 [ 16, %177 ], [ %.138, %193 ], !dbg !2944
  %.11 = phi i32 [ %.8, %177 ], [ %.10, %193 ], !dbg !2853
  call void @llvm.dbg.value(metadata i32 %.11, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.239, metadata !2740, metadata !DIExpression()), !dbg !2923
  %195 = load i8*, i8** %7, align 4, !dbg !2945, !tbaa !334
  %196 = load i8, i8* %195, align 1, !dbg !2947, !tbaa !2161
  %197 = zext i8 %196 to i32, !dbg !2947
  %198 = icmp eq i32 %197, 88, !dbg !2948
  br i1 %198, label %199, label %._crit_edge133, !dbg !2949

._crit_edge133:                                   ; preds = %194
  br label %201, !dbg !2949

199:                                              ; preds = %194
  %200 = or i32 %.11, 32, !dbg !2950
  call void @llvm.dbg.value(metadata i32 %200, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %201, !dbg !2952

201:                                              ; preds = %._crit_edge133, %199
  %.12 = phi i32 [ %200, %199 ], [ %.11, %._crit_edge133 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.12, metadata !2724, metadata !DIExpression()), !dbg !2771
  %202 = load i8*, i8** %7, align 4, !dbg !2953, !tbaa !334
  %203 = load i8, i8* %202, align 1, !dbg !2955, !tbaa !2161
  %204 = zext i8 %203 to i32, !dbg !2955
  %205 = icmp ne i32 %204, 105, !dbg !2956
  br i1 %205, label %206, label %._crit_edge134, !dbg !2957

._crit_edge134:                                   ; preds = %201
  br label %213, !dbg !2957

206:                                              ; preds = %201
  %207 = load i8*, i8** %7, align 4, !dbg !2958, !tbaa !334
  %208 = load i8, i8* %207, align 1, !dbg !2959, !tbaa !2161
  %209 = zext i8 %208 to i32, !dbg !2959
  %210 = icmp ne i32 %209, 100, !dbg !2960
  br i1 %210, label %211, label %._crit_edge135, !dbg !2961

._crit_edge135:                                   ; preds = %206
  br label %213, !dbg !2961

211:                                              ; preds = %206
  %212 = and i32 %.12, -13, !dbg !2962
  call void @llvm.dbg.value(metadata i32 %212, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %213, !dbg !2964

213:                                              ; preds = %._crit_edge135, %._crit_edge134, %211
  %.13 = phi i32 [ %212, %211 ], [ %.12, %._crit_edge135 ], [ %.12, %._crit_edge134 ], !dbg !2923
  call void @llvm.dbg.value(metadata i32 %.13, metadata !2724, metadata !DIExpression()), !dbg !2771
  %214 = and i32 %.13, 1024, !dbg !2965
  %215 = icmp ne i32 %214, 0, !dbg !2965
  br i1 %215, label %216, label %._crit_edge136, !dbg !2967

._crit_edge136:                                   ; preds = %213
  br label %218, !dbg !2967

216:                                              ; preds = %213
  %217 = and i32 %.13, -2, !dbg !2968
  call void @llvm.dbg.value(metadata i32 %217, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %218, !dbg !2970

218:                                              ; preds = %._crit_edge136, %216
  %.147 = phi i32 [ %217, %216 ], [ %.13, %._crit_edge136 ], !dbg !2923
  call void @llvm.dbg.value(metadata i32 %.147, metadata !2724, metadata !DIExpression()), !dbg !2771
  %219 = load i8*, i8** %7, align 4, !dbg !2971, !tbaa !334
  %220 = load i8, i8* %219, align 1, !dbg !2972, !tbaa !2161
  %221 = zext i8 %220 to i32, !dbg !2972
  %222 = icmp eq i32 %221, 105, !dbg !2973
  br i1 %222, label %._crit_edge137, label %223, !dbg !2974

._crit_edge137:                                   ; preds = %218
  br label %228, !dbg !2974

223:                                              ; preds = %218
  %224 = load i8*, i8** %7, align 4, !dbg !2975, !tbaa !334
  %225 = load i8, i8* %224, align 1, !dbg !2976, !tbaa !2161
  %226 = zext i8 %225 to i32, !dbg !2976
  %227 = icmp eq i32 %226, 100, !dbg !2977
  br i1 %227, label %._crit_edge138, label %309, !dbg !2978

._crit_edge138:                                   ; preds = %223
  br label %228, !dbg !2978

228:                                              ; preds = %._crit_edge138, %._crit_edge137
  %229 = and i32 %.147, 512, !dbg !2979
  %230 = icmp ne i32 %229, 0, !dbg !2979
  br i1 %230, label %231, label %250, !dbg !2980

231:                                              ; preds = %228
  %232 = bitcast %struct.__va_list* %6 to i8**, !dbg !2981
  %233 = load i8*, i8** %232, align 4, !dbg !2981
  %234 = ptrtoint i8* %233 to i32, !dbg !2981
  %235 = add i32 %234, 7, !dbg !2981
  %236 = and i32 %235, -8, !dbg !2981
  %237 = inttoptr i32 %236 to i8*, !dbg !2981
  %238 = getelementptr inbounds i8, i8* %237, i32 8, !dbg !2981
  store i8* %238, i8** %232, align 4, !dbg !2981
  %239 = bitcast i8* %237 to i64*, !dbg !2981
  %240 = load i64, i64* %239, align 8, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %240, metadata !2743, metadata !DIExpression()), !dbg !2982
  %241 = icmp sgt i64 %240, 0, !dbg !2983
  br i1 %241, label %242, label %243, !dbg !2984

242:                                              ; preds = %231
  br label %245, !dbg !2984

243:                                              ; preds = %231
  %244 = sub nsw i64 0, %240, !dbg !2985
  br label %245, !dbg !2984

245:                                              ; preds = %243, %242
  %246 = phi i64 [ %240, %242 ], [ %244, %243 ], !dbg !2984
  %247 = icmp slt i64 %240, 0, !dbg !2986
  %248 = zext i32 %.239 to i64, !dbg !2987
  %249 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %246, i1 zeroext %247, i64 %248, i32 %.213, i32 %.210, i32 %.147), !dbg !2988
  call void @llvm.dbg.value(metadata i32 %249, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %308, !dbg !2989

250:                                              ; preds = %228
  %251 = and i32 %.147, 256, !dbg !2990
  %252 = icmp ne i32 %251, 0, !dbg !2990
  br i1 %252, label %253, label %267, !dbg !2991

253:                                              ; preds = %250
  %254 = bitcast %struct.__va_list* %6 to i8**, !dbg !2992
  %255 = load i8*, i8** %254, align 4, !dbg !2992
  %256 = getelementptr inbounds i8, i8* %255, i32 4, !dbg !2992
  store i8* %256, i8** %254, align 4, !dbg !2992
  %257 = bitcast i8* %255 to i32*, !dbg !2992
  %258 = load i32, i32* %257, align 4, !dbg !2992
  call void @llvm.dbg.value(metadata i32 %258, metadata !2750, metadata !DIExpression()), !dbg !2993
  %259 = icmp sgt i32 %258, 0, !dbg !2994
  br i1 %259, label %260, label %261, !dbg !2995

260:                                              ; preds = %253
  br label %263, !dbg !2995

261:                                              ; preds = %253
  %262 = sub nsw i32 0, %258, !dbg !2996
  br label %263, !dbg !2995

263:                                              ; preds = %261, %260
  %264 = phi i32 [ %258, %260 ], [ %262, %261 ], !dbg !2995
  %265 = icmp slt i32 %258, 0, !dbg !2997
  %266 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %264, i1 zeroext %265, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %266, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %307, !dbg !2999

267:                                              ; preds = %250
  %268 = and i32 %.147, 64, !dbg !3000
  %269 = icmp ne i32 %268, 0, !dbg !3000
  br i1 %269, label %270, label %278, !dbg !3001

270:                                              ; preds = %267
  %271 = bitcast %struct.__va_list* %6 to i8**, !dbg !3002
  %272 = load i8*, i8** %271, align 4, !dbg !3002
  %273 = getelementptr inbounds i8, i8* %272, i32 4, !dbg !3002
  store i8* %273, i8** %271, align 4, !dbg !3002
  %274 = bitcast i8* %272 to i32*, !dbg !3002
  %275 = load i32, i32* %274, align 4, !dbg !3002
  %276 = trunc i32 %275 to i8, !dbg !3003
  %277 = zext i8 %276 to i32, !dbg !3003
  br label %297, !dbg !3001

278:                                              ; preds = %267
  %279 = and i32 %.147, 128, !dbg !3004
  %280 = icmp ne i32 %279, 0, !dbg !3004
  br i1 %280, label %281, label %289, !dbg !3005

281:                                              ; preds = %278
  %282 = bitcast %struct.__va_list* %6 to i8**, !dbg !3006
  %283 = load i8*, i8** %282, align 4, !dbg !3006
  %284 = getelementptr inbounds i8, i8* %283, i32 4, !dbg !3006
  store i8* %284, i8** %282, align 4, !dbg !3006
  %285 = bitcast i8* %283 to i32*, !dbg !3006
  %286 = load i32, i32* %285, align 4, !dbg !3006
  %287 = trunc i32 %286 to i16, !dbg !3007
  %288 = sext i16 %287 to i32, !dbg !3007
  br label %295, !dbg !3005

289:                                              ; preds = %278
  %290 = bitcast %struct.__va_list* %6 to i8**, !dbg !3008
  %291 = load i8*, i8** %290, align 4, !dbg !3008
  %292 = getelementptr inbounds i8, i8* %291, i32 4, !dbg !3008
  store i8* %292, i8** %290, align 4, !dbg !3008
  %293 = bitcast i8* %291 to i32*, !dbg !3008
  %294 = load i32, i32* %293, align 4, !dbg !3008
  br label %295, !dbg !3005

295:                                              ; preds = %289, %281
  %296 = phi i32 [ %288, %281 ], [ %294, %289 ], !dbg !3005
  br label %297, !dbg !3001

297:                                              ; preds = %295, %270
  %298 = phi i32 [ %277, %270 ], [ %296, %295 ], !dbg !3001
  call void @llvm.dbg.value(metadata i32 %298, metadata !2755, metadata !DIExpression()), !dbg !3009
  %299 = icmp sgt i32 %298, 0, !dbg !3010
  br i1 %299, label %300, label %301, !dbg !3011

300:                                              ; preds = %297
  br label %303, !dbg !3011

301:                                              ; preds = %297
  %302 = sub nsw i32 0, %298, !dbg !3012
  br label %303, !dbg !3011

303:                                              ; preds = %301, %300
  %304 = phi i32 [ %298, %300 ], [ %302, %301 ], !dbg !3011
  %305 = icmp slt i32 %298, 0, !dbg !3013
  %306 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %304, i1 zeroext %305, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3014
  call void @llvm.dbg.value(metadata i32 %306, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %307

307:                                              ; preds = %303, %263
  %.119 = phi i32 [ %266, %263 ], [ %306, %303 ], !dbg !3015
  call void @llvm.dbg.value(metadata i32 %.119, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %308

308:                                              ; preds = %307, %245
  %.220 = phi i32 [ %249, %245 ], [ %.119, %307 ], !dbg !3016
  call void @llvm.dbg.value(metadata i32 %.220, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %369, !dbg !3017

309:                                              ; preds = %223
  %310 = and i32 %.147, 512, !dbg !3018
  %311 = icmp ne i32 %310, 0, !dbg !3018
  br i1 %311, label %312, label %324, !dbg !3019

312:                                              ; preds = %309
  %313 = bitcast %struct.__va_list* %6 to i8**, !dbg !3020
  %314 = load i8*, i8** %313, align 4, !dbg !3020
  %315 = ptrtoint i8* %314 to i32, !dbg !3020
  %316 = add i32 %315, 7, !dbg !3020
  %317 = and i32 %316, -8, !dbg !3020
  %318 = inttoptr i32 %317 to i8*, !dbg !3020
  %319 = getelementptr inbounds i8, i8* %318, i32 8, !dbg !3020
  store i8* %319, i8** %313, align 4, !dbg !3020
  %320 = bitcast i8* %318 to i64*, !dbg !3020
  %321 = load i64, i64* %320, align 8, !dbg !3020
  %322 = zext i32 %.239 to i64, !dbg !3022
  %323 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %321, i1 zeroext false, i64 %322, i32 %.213, i32 %.210, i32 %.147), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %323, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %368, !dbg !3024

324:                                              ; preds = %309
  %325 = and i32 %.147, 256, !dbg !3025
  %326 = icmp ne i32 %325, 0, !dbg !3025
  br i1 %326, label %327, label %334, !dbg !3026

327:                                              ; preds = %324
  %328 = bitcast %struct.__va_list* %6 to i8**, !dbg !3027
  %329 = load i8*, i8** %328, align 4, !dbg !3027
  %330 = getelementptr inbounds i8, i8* %329, i32 4, !dbg !3027
  store i8* %330, i8** %328, align 4, !dbg !3027
  %331 = bitcast i8* %329 to i32*, !dbg !3027
  %332 = load i32, i32* %331, align 4, !dbg !3027
  %333 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %332, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %333, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %367, !dbg !3030

334:                                              ; preds = %324
  %335 = and i32 %.147, 64, !dbg !3031
  %336 = icmp ne i32 %335, 0, !dbg !3031
  br i1 %336, label %337, label %345, !dbg !3032

337:                                              ; preds = %334
  %338 = bitcast %struct.__va_list* %6 to i8**, !dbg !3033
  %339 = load i8*, i8** %338, align 4, !dbg !3033
  %340 = getelementptr inbounds i8, i8* %339, i32 4, !dbg !3033
  store i8* %340, i8** %338, align 4, !dbg !3033
  %341 = bitcast i8* %339 to i32*, !dbg !3033
  %342 = load i32, i32* %341, align 4, !dbg !3033
  %343 = trunc i32 %342 to i8, !dbg !3034
  %344 = zext i8 %343 to i32, !dbg !3034
  br label %364, !dbg !3032

345:                                              ; preds = %334
  %346 = and i32 %.147, 128, !dbg !3035
  %347 = icmp ne i32 %346, 0, !dbg !3035
  br i1 %347, label %348, label %356, !dbg !3036

348:                                              ; preds = %345
  %349 = bitcast %struct.__va_list* %6 to i8**, !dbg !3037
  %350 = load i8*, i8** %349, align 4, !dbg !3037
  %351 = getelementptr inbounds i8, i8* %350, i32 4, !dbg !3037
  store i8* %351, i8** %349, align 4, !dbg !3037
  %352 = bitcast i8* %350 to i32*, !dbg !3037
  %353 = load i32, i32* %352, align 4, !dbg !3037
  %354 = trunc i32 %353 to i16, !dbg !3038
  %355 = zext i16 %354 to i32, !dbg !3038
  br label %362, !dbg !3036

356:                                              ; preds = %345
  %357 = bitcast %struct.__va_list* %6 to i8**, !dbg !3039
  %358 = load i8*, i8** %357, align 4, !dbg !3039
  %359 = getelementptr inbounds i8, i8* %358, i32 4, !dbg !3039
  store i8* %359, i8** %357, align 4, !dbg !3039
  %360 = bitcast i8* %358 to i32*, !dbg !3039
  %361 = load i32, i32* %360, align 4, !dbg !3039
  br label %362, !dbg !3036

362:                                              ; preds = %356, %348
  %363 = phi i32 [ %355, %348 ], [ %361, %356 ], !dbg !3036
  br label %364, !dbg !3032

364:                                              ; preds = %362, %337
  %365 = phi i32 [ %344, %337 ], [ %363, %362 ], !dbg !3032
  call void @llvm.dbg.value(metadata i32 %365, metadata !2757, metadata !DIExpression()), !dbg !3040
  %366 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %365, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147), !dbg !3041
  call void @llvm.dbg.value(metadata i32 %366, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %367

367:                                              ; preds = %364, %327
  %.321 = phi i32 [ %333, %327 ], [ %366, %364 ], !dbg !3042
  call void @llvm.dbg.value(metadata i32 %.321, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %368

368:                                              ; preds = %367, %312
  %.422 = phi i32 [ %323, %312 ], [ %.321, %367 ], !dbg !3043
  call void @llvm.dbg.value(metadata i32 %.422, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %369

369:                                              ; preds = %368, %308
  %.523 = phi i32 [ %.220, %308 ], [ %.422, %368 ], !dbg !3044
  call void @llvm.dbg.value(metadata i32 %.523, metadata !2728, metadata !DIExpression()), !dbg !2771
  %370 = load i8*, i8** %7, align 4, !dbg !3045, !tbaa !334
  %371 = getelementptr inbounds i8, i8* %370, i32 1, !dbg !3045
  store i8* %371, i8** %7, align 4, !dbg !3045, !tbaa !334
  br label %542

372:                                              ; preds = %NodeBlock80._crit_edge, %NodeBlock94._crit_edge130
  %373 = load i8*, i8** %7, align 4, !dbg !3046, !tbaa !334
  %374 = load i8, i8* %373, align 1, !dbg !3048, !tbaa !2161
  %375 = zext i8 %374 to i32, !dbg !3048
  %376 = icmp eq i32 %375, 70, !dbg !3049
  br i1 %376, label %377, label %._crit_edge139, !dbg !3050

._crit_edge139:                                   ; preds = %372
  br label %379, !dbg !3050

377:                                              ; preds = %372
  %378 = or i32 %.8, 32, !dbg !3051
  call void @llvm.dbg.value(metadata i32 %378, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %379, !dbg !3052

379:                                              ; preds = %._crit_edge139, %377
  %.15 = phi i32 [ %378, %377 ], [ %.8, %._crit_edge139 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.15, metadata !2724, metadata !DIExpression()), !dbg !2771
  %380 = bitcast %struct.__va_list* %6 to i8**, !dbg !3053
  %381 = load i8*, i8** %380, align 4, !dbg !3053
  %382 = ptrtoint i8* %381 to i32, !dbg !3053
  %383 = add i32 %382, 7, !dbg !3053
  %384 = and i32 %383, -8, !dbg !3053
  %385 = inttoptr i32 %384 to i8*, !dbg !3053
  %386 = getelementptr inbounds i8, i8* %385, i32 8, !dbg !3053
  store i8* %386, i8** %380, align 4, !dbg !3053
  %387 = bitcast i8* %385 to double*, !dbg !3053
  %388 = load double, double* %387, align 8, !dbg !3053
  %389 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %388, i32 %.213, i32 %.210, i32 %.15), !dbg !3054
  call void @llvm.dbg.value(metadata i32 %389, metadata !2728, metadata !DIExpression()), !dbg !2771
  %390 = load i8*, i8** %7, align 4, !dbg !3055, !tbaa !334
  %391 = getelementptr inbounds i8, i8* %390, i32 1, !dbg !3055
  store i8* %391, i8** %7, align 4, !dbg !3055, !tbaa !334
  br label %542, !dbg !3056

392:                                              ; preds = %NodeBlock76._crit_edge, %LeafBlock78._crit_edge, %NodeBlock94._crit_edge, %LeafBlock96._crit_edge
  %393 = load i8*, i8** %7, align 4, !dbg !3057, !tbaa !334
  %394 = load i8, i8* %393, align 1, !dbg !3059, !tbaa !2161
  %395 = zext i8 %394 to i32, !dbg !3059
  %396 = icmp eq i32 %395, 103, !dbg !3060
  br i1 %396, label %._crit_edge140, label %397, !dbg !3061

._crit_edge140:                                   ; preds = %392
  br label %402, !dbg !3061

397:                                              ; preds = %392
  %398 = load i8*, i8** %7, align 4, !dbg !3062, !tbaa !334
  %399 = load i8, i8* %398, align 1, !dbg !3063, !tbaa !2161
  %400 = zext i8 %399 to i32, !dbg !3063
  %401 = icmp eq i32 %400, 71, !dbg !3064
  br i1 %401, label %._crit_edge141, label %._crit_edge142, !dbg !3065

._crit_edge142:                                   ; preds = %397
  br label %404, !dbg !3065

._crit_edge141:                                   ; preds = %397
  br label %402, !dbg !3065

402:                                              ; preds = %._crit_edge141, %._crit_edge140
  %403 = or i32 %.8, 2048, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %403, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %404, !dbg !3067

404:                                              ; preds = %._crit_edge142, %402
  %.16 = phi i32 [ %403, %402 ], [ %.8, %._crit_edge142 ], !dbg !2821
  call void @llvm.dbg.value(metadata i32 %.16, metadata !2724, metadata !DIExpression()), !dbg !2771
  %405 = load i8*, i8** %7, align 4, !dbg !3068, !tbaa !334
  %406 = load i8, i8* %405, align 1, !dbg !3070, !tbaa !2161
  %407 = zext i8 %406 to i32, !dbg !3070
  %408 = icmp eq i32 %407, 69, !dbg !3071
  br i1 %408, label %._crit_edge143, label %409, !dbg !3072

._crit_edge143:                                   ; preds = %404
  br label %414, !dbg !3072

409:                                              ; preds = %404
  %410 = load i8*, i8** %7, align 4, !dbg !3073, !tbaa !334
  %411 = load i8, i8* %410, align 1, !dbg !3074, !tbaa !2161
  %412 = zext i8 %411 to i32, !dbg !3074
  %413 = icmp eq i32 %412, 71, !dbg !3075
  br i1 %413, label %._crit_edge144, label %._crit_edge145, !dbg !3076

._crit_edge145:                                   ; preds = %409
  br label %416, !dbg !3076

._crit_edge144:                                   ; preds = %409
  br label %414, !dbg !3076

414:                                              ; preds = %._crit_edge144, %._crit_edge143
  %415 = or i32 %.16, 32, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %415, metadata !2724, metadata !DIExpression()), !dbg !2771
  br label %416, !dbg !3078

416:                                              ; preds = %._crit_edge145, %414
  %.17 = phi i32 [ %415, %414 ], [ %.16, %._crit_edge145 ], !dbg !3079
  call void @llvm.dbg.value(metadata i32 %.17, metadata !2724, metadata !DIExpression()), !dbg !2771
  %417 = bitcast %struct.__va_list* %6 to i8**, !dbg !3080
  %418 = load i8*, i8** %417, align 4, !dbg !3080
  %419 = ptrtoint i8* %418 to i32, !dbg !3080
  %420 = add i32 %419, 7, !dbg !3080
  %421 = and i32 %420, -8, !dbg !3080
  %422 = inttoptr i32 %421 to i8*, !dbg !3080
  %423 = getelementptr inbounds i8, i8* %422, i32 8, !dbg !3080
  store i8* %423, i8** %417, align 4, !dbg !3080
  %424 = bitcast i8* %422 to double*, !dbg !3080
  %425 = load double, double* %424, align 8, !dbg !3080
  %426 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %425, i32 %.213, i32 %.210, i32 %.17), !dbg !3081
  call void @llvm.dbg.value(metadata i32 %426, metadata !2728, metadata !DIExpression()), !dbg !2771
  %427 = load i8*, i8** %7, align 4, !dbg !3082, !tbaa !334
  %428 = getelementptr inbounds i8, i8* %427, i32 1, !dbg !3082
  store i8* %428, i8** %7, align 4, !dbg !3082, !tbaa !334
  br label %542, !dbg !3083

429:                                              ; preds = %NodeBlock88
  call void @llvm.dbg.value(metadata i32 1, metadata !2763, metadata !DIExpression()), !dbg !3084
  %430 = and i32 %.8, 2, !dbg !3085
  %431 = icmp ne i32 %430, 0, !dbg !3085
  br i1 %431, label %._crit_edge146, label %432, !dbg !3087

._crit_edge146:                                   ; preds = %429
  br label %439, !dbg !3087

432:                                              ; preds = %429
  br label %433, !dbg !3088

433:                                              ; preds = %436, %432
  %.034 = phi i32 [ 1, %432 ], [ %434, %436 ], !dbg !3084
  %.624 = phi i32 [ %.018, %432 ], [ %437, %436 ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.624, metadata !2728, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.034, metadata !2763, metadata !DIExpression()), !dbg !3084
  %434 = add i32 %.034, 1, !dbg !3090
  call void @llvm.dbg.value(metadata i32 %434, metadata !2763, metadata !DIExpression()), !dbg !3084
  %435 = icmp ult i32 %.034, %.210, !dbg !3091
  br i1 %435, label %436, label %438, !dbg !3088

436:                                              ; preds = %433
  %437 = add i32 %.624, 1, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %437, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.624, i32 %2), !dbg !3094
  br label %433, !dbg !3088, !llvm.loop !3095

438:                                              ; preds = %433
  %.624.lcssa = phi i32 [ %.624, %433 ], !dbg !2771
  %.lcssa153 = phi i32 [ %434, %433 ], !dbg !3090
  call void @llvm.dbg.value(metadata i32 %.624.lcssa, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %439, !dbg !3097

439:                                              ; preds = %._crit_edge146, %438
  %.135 = phi i32 [ 1, %._crit_edge146 ], [ %.lcssa153, %438 ], !dbg !3084
  %.725 = phi i32 [ %.018, %._crit_edge146 ], [ %.624.lcssa, %438 ], !dbg !3098
  call void @llvm.dbg.value(metadata i32 %.725, metadata !2728, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.135, metadata !2763, metadata !DIExpression()), !dbg !3084
  %440 = bitcast %struct.__va_list* %6 to i8**, !dbg !3099
  %441 = load i8*, i8** %440, align 4, !dbg !3099
  %442 = getelementptr inbounds i8, i8* %441, i32 4, !dbg !3099
  store i8* %442, i8** %440, align 4, !dbg !3099
  %443 = bitcast i8* %441 to i32*, !dbg !3099
  %444 = load i32, i32* %443, align 4, !dbg !3099
  %445 = trunc i32 %444 to i8, !dbg !3100
  %446 = add i32 %.725, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %446, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext %445, i8* %1, i32 %.725, i32 %2), !dbg !3102
  %447 = and i32 %.8, 2, !dbg !3103
  %448 = icmp ne i32 %447, 0, !dbg !3103
  br i1 %448, label %449, label %._crit_edge147, !dbg !3105

._crit_edge147:                                   ; preds = %439
  br label %456, !dbg !3105

449:                                              ; preds = %439
  br label %450, !dbg !3106

450:                                              ; preds = %453, %449
  %.236 = phi i32 [ %.135, %449 ], [ %451, %453 ], !dbg !3084
  %.826 = phi i32 [ %446, %449 ], [ %454, %453 ], !dbg !3084
  call void @llvm.dbg.value(metadata i32 %.826, metadata !2728, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.236, metadata !2763, metadata !DIExpression()), !dbg !3084
  %451 = add i32 %.236, 1, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %451, metadata !2763, metadata !DIExpression()), !dbg !3084
  %452 = icmp ult i32 %.236, %.210, !dbg !3109
  br i1 %452, label %453, label %455, !dbg !3106

453:                                              ; preds = %450
  %454 = add i32 %.826, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i32 %454, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.826, i32 %2), !dbg !3112
  br label %450, !dbg !3106, !llvm.loop !3113

455:                                              ; preds = %450
  %.826.lcssa = phi i32 [ %.826, %450 ], !dbg !3084
  call void @llvm.dbg.value(metadata i32 %.826.lcssa, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %456, !dbg !3115

456:                                              ; preds = %._crit_edge147, %455
  %.927 = phi i32 [ %.826.lcssa, %455 ], [ %446, %._crit_edge147 ], !dbg !3101
  call void @llvm.dbg.value(metadata i32 %.927, metadata !2728, metadata !DIExpression()), !dbg !2771
  %457 = load i8*, i8** %7, align 4, !dbg !3116, !tbaa !334
  %458 = getelementptr inbounds i8, i8* %457, i32 1, !dbg !3116
  store i8* %458, i8** %7, align 4, !dbg !3116, !tbaa !334
  br label %542

459:                                              ; preds = %LeafBlock108
  %460 = bitcast %struct.__va_list* %6 to i8**, !dbg !3117
  %461 = load i8*, i8** %460, align 4, !dbg !3117
  %462 = getelementptr inbounds i8, i8* %461, i32 4, !dbg !3117
  store i8* %462, i8** %460, align 4, !dbg !3117
  %463 = bitcast i8* %461 to i8**, !dbg !3117
  %464 = load i8*, i8** %463, align 4, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %464, metadata !2765, metadata !DIExpression()), !dbg !3118
  %465 = icmp ne i32 %.213, 0, !dbg !3119
  br i1 %465, label %466, label %467, !dbg !3119

466:                                              ; preds = %459
  br label %468, !dbg !3119

467:                                              ; preds = %459
  br label %468, !dbg !3119

468:                                              ; preds = %467, %466
  %469 = phi i32 [ %.213, %466 ], [ -1, %467 ], !dbg !3119
  %470 = call arm_aapcscc i32 @_strnlen_s(i8* %464, i32 %469), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %470, metadata !2767, metadata !DIExpression()), !dbg !3118
  %471 = and i32 %.8, 1024, !dbg !3121
  %472 = icmp ne i32 %471, 0, !dbg !3121
  br i1 %472, label %473, label %._crit_edge148, !dbg !3123

._crit_edge148:                                   ; preds = %468
  br label %479, !dbg !3123

473:                                              ; preds = %468
  %474 = icmp ult i32 %470, %.213, !dbg !3124
  br i1 %474, label %475, label %476, !dbg !3126

475:                                              ; preds = %473
  br label %477, !dbg !3126

476:                                              ; preds = %473
  br label %477, !dbg !3126

477:                                              ; preds = %476, %475
  %478 = phi i32 [ %470, %475 ], [ %.213, %476 ], !dbg !3126
  call void @llvm.dbg.value(metadata i32 %478, metadata !2767, metadata !DIExpression()), !dbg !3118
  br label %479, !dbg !3127

479:                                              ; preds = %._crit_edge148, %477
  %.01 = phi i32 [ %478, %477 ], [ %470, %._crit_edge148 ], !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2767, metadata !DIExpression()), !dbg !3118
  %480 = and i32 %.8, 2, !dbg !3128
  %481 = icmp ne i32 %480, 0, !dbg !3128
  br i1 %481, label %._crit_edge149, label %482, !dbg !3130

._crit_edge149:                                   ; preds = %479
  br label %489, !dbg !3130

482:                                              ; preds = %479
  br label %483, !dbg !3131

483:                                              ; preds = %486, %482
  %.1028 = phi i32 [ %.018, %482 ], [ %487, %486 ], !dbg !2771
  %.1 = phi i32 [ %.01, %482 ], [ %484, %486 ], !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2767, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.1028, metadata !2728, metadata !DIExpression()), !dbg !2771
  %484 = add i32 %.1, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i32 %484, metadata !2767, metadata !DIExpression()), !dbg !3118
  %485 = icmp ult i32 %.1, %.210, !dbg !3134
  br i1 %485, label %486, label %488, !dbg !3131

486:                                              ; preds = %483
  %487 = add i32 %.1028, 1, !dbg !3135
  call void @llvm.dbg.value(metadata i32 %487, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1028, i32 %2), !dbg !3137
  br label %483, !dbg !3131, !llvm.loop !3138

488:                                              ; preds = %483
  %.1028.lcssa = phi i32 [ %.1028, %483 ], !dbg !2771
  %.lcssa = phi i32 [ %484, %483 ], !dbg !3133
  call void @llvm.dbg.value(metadata i32 %.1028.lcssa, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %489, !dbg !3140

489:                                              ; preds = %._crit_edge149, %488
  %.1129 = phi i32 [ %.018, %._crit_edge149 ], [ %.1028.lcssa, %488 ], !dbg !3098
  %.2 = phi i32 [ %.01, %._crit_edge149 ], [ %.lcssa, %488 ], !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2767, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.1129, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %490, !dbg !3141

490:                                              ; preds = %504, %489
  %.1230 = phi i32 [ %.1129, %489 ], [ %507, %504 ], !dbg !2771
  %.314 = phi i32 [ %.213, %489 ], [ %.516, %504 ], !dbg !2821
  %.02 = phi i8* [ %464, %489 ], [ %505, %504 ], !dbg !3118
  call void @llvm.dbg.value(metadata i8* %.02, metadata !2765, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.314, metadata !2726, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.1230, metadata !2728, metadata !DIExpression()), !dbg !2771
  %491 = load i8, i8* %.02, align 1, !dbg !3142, !tbaa !2161
  %492 = zext i8 %491 to i32, !dbg !3142
  %493 = icmp ne i32 %492, 0, !dbg !3143
  br i1 %493, label %494, label %._crit_edge150, !dbg !3144

._crit_edge150:                                   ; preds = %490
  br label %502, !dbg !3144

494:                                              ; preds = %490
  %495 = and i32 %.8, 1024, !dbg !3145
  %496 = icmp ne i32 %495, 0, !dbg !3145
  br i1 %496, label %497, label %._crit_edge151, !dbg !3146

._crit_edge151:                                   ; preds = %494
  br label %500, !dbg !3146

497:                                              ; preds = %494
  %498 = add i32 %.314, -1, !dbg !3147
  call void @llvm.dbg.value(metadata i32 %498, metadata !2726, metadata !DIExpression()), !dbg !2771
  %499 = icmp ne i32 %.314, 0, !dbg !3146
  br label %500, !dbg !3146

500:                                              ; preds = %._crit_edge151, %497
  %.415 = phi i32 [ %498, %497 ], [ %.314, %._crit_edge151 ], !dbg !2821
  %501 = phi i1 [ true, %._crit_edge151 ], [ %499, %497 ]
  call void @llvm.dbg.value(metadata i32 %.415, metadata !2726, metadata !DIExpression()), !dbg !2771
  br label %502

502:                                              ; preds = %._crit_edge150, %500
  %.516 = phi i32 [ %.415, %500 ], [ %.314, %._crit_edge150 ], !dbg !2821
  %503 = phi i1 [ false, %._crit_edge150 ], [ %501, %500 ], !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.516, metadata !2726, metadata !DIExpression()), !dbg !2771
  br i1 %503, label %504, label %508, !dbg !3141

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %505, metadata !2765, metadata !DIExpression()), !dbg !3118
  %506 = load i8, i8* %.02, align 1, !dbg !3150, !tbaa !2161
  %507 = add i32 %.1230, 1, !dbg !3151
  call void @llvm.dbg.value(metadata i32 %507, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext %506, i8* %1, i32 %.1230, i32 %2), !dbg !3152
  br label %490, !dbg !3141, !llvm.loop !3153

508:                                              ; preds = %502
  %.1230.lcssa = phi i32 [ %.1230, %502 ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.1230.lcssa, metadata !2728, metadata !DIExpression()), !dbg !2771
  %509 = and i32 %.8, 2, !dbg !3155
  %510 = icmp ne i32 %509, 0, !dbg !3155
  br i1 %510, label %511, label %._crit_edge152, !dbg !3157

._crit_edge152:                                   ; preds = %508
  br label %518, !dbg !3157

511:                                              ; preds = %508
  br label %512, !dbg !3158

512:                                              ; preds = %515, %511
  %.1331 = phi i32 [ %.1230.lcssa, %511 ], [ %516, %515 ], !dbg !2771
  %.3 = phi i32 [ %.2, %511 ], [ %513, %515 ], !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2767, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %.1331, metadata !2728, metadata !DIExpression()), !dbg !2771
  %513 = add i32 %.3, 1, !dbg !3160
  call void @llvm.dbg.value(metadata i32 %513, metadata !2767, metadata !DIExpression()), !dbg !3118
  %514 = icmp ult i32 %.3, %.210, !dbg !3161
  br i1 %514, label %515, label %517, !dbg !3158

515:                                              ; preds = %512
  %516 = add i32 %.1331, 1, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %516, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1331, i32 %2), !dbg !3164
  br label %512, !dbg !3158, !llvm.loop !3165

517:                                              ; preds = %512
  %.1331.lcssa = phi i32 [ %.1331, %512 ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.1331.lcssa, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %518, !dbg !3167

518:                                              ; preds = %._crit_edge152, %517
  %.1432 = phi i32 [ %.1331.lcssa, %517 ], [ %.1230.lcssa, %._crit_edge152 ], !dbg !3098
  call void @llvm.dbg.value(metadata i32 %.1432, metadata !2728, metadata !DIExpression()), !dbg !2771
  %519 = load i8*, i8** %7, align 4, !dbg !3168, !tbaa !334
  %520 = getelementptr inbounds i8, i8* %519, i32 1, !dbg !3168
  store i8* %520, i8** %7, align 4, !dbg !3168, !tbaa !334
  br label %542

521:                                              ; preds = %LeafBlock104
  call void @llvm.dbg.value(metadata i32 8, metadata !2725, metadata !DIExpression()), !dbg !2771
  %522 = or i32 %.8, 33, !dbg !3169
  call void @llvm.dbg.value(metadata i32 %522, metadata !2724, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8 0, metadata !2768, metadata !DIExpression()), !dbg !3170
  %523 = bitcast %struct.__va_list* %6 to i8**, !dbg !3171
  %524 = load i8*, i8** %523, align 4, !dbg !3171
  %525 = getelementptr inbounds i8, i8* %524, i32 4, !dbg !3171
  store i8* %525, i8** %523, align 4, !dbg !3171
  %526 = bitcast i8* %524 to i8**, !dbg !3171
  %527 = load i8*, i8** %526, align 4, !dbg !3171
  %528 = ptrtoint i8* %527 to i32, !dbg !3174
  %529 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %528, i1 zeroext false, i32 16, i32 %.213, i32 8, i32 %522), !dbg !3175
  call void @llvm.dbg.value(metadata i32 %529, metadata !2728, metadata !DIExpression()), !dbg !2771
  %530 = load i8*, i8** %7, align 4, !dbg !3176, !tbaa !334
  %531 = getelementptr inbounds i8, i8* %530, i32 1, !dbg !3176
  store i8* %531, i8** %7, align 4, !dbg !3176, !tbaa !334
  br label %542

532:                                              ; preds = %LeafBlock74
  %533 = add i32 %.018, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %533, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext 37, i8* %1, i32 %.018, i32 %2), !dbg !3178
  %534 = load i8*, i8** %7, align 4, !dbg !3179, !tbaa !334
  %535 = getelementptr inbounds i8, i8* %534, i32 1, !dbg !3179
  store i8* %535, i8** %7, align 4, !dbg !3179, !tbaa !334
  br label %542, !dbg !3180

NewDefault73:                                     ; preds = %LeafBlock74.NewDefault73_crit_edge, %LeafBlock78.NewDefault73_crit_edge, %LeafBlock84.NewDefault73_crit_edge, %LeafBlock96.NewDefault73_crit_edge, %LeafBlock98.NewDefault73_crit_edge, %LeafBlock104.NewDefault73_crit_edge, %LeafBlock108.NewDefault73_crit_edge, %LeafBlock110.NewDefault73_crit_edge, %LeafBlock112.NewDefault73_crit_edge
  br label %536

536:                                              ; preds = %NewDefault73
  %537 = load i8*, i8** %7, align 4, !dbg !3181, !tbaa !334
  %538 = load i8, i8* %537, align 1, !dbg !3182, !tbaa !2161
  %539 = add i32 %.018, 1, !dbg !3183
  call void @llvm.dbg.value(metadata i32 %539, metadata !2728, metadata !DIExpression()), !dbg !2771
  call arm_aapcscc void %.0(i8 zeroext %538, i8* %1, i32 %.018, i32 %2), !dbg !3184
  %540 = load i8*, i8** %7, align 4, !dbg !3185, !tbaa !334
  %541 = getelementptr inbounds i8, i8* %540, i32 1, !dbg !3185
  store i8* %541, i8** %7, align 4, !dbg !3185, !tbaa !334
  br label %542, !dbg !3186

542:                                              ; preds = %536, %532, %521, %518, %456, %416, %379, %369
  %.1533 = phi i32 [ %539, %536 ], [ %533, %532 ], [ %529, %521 ], [ %.1432, %518 ], [ %.927, %456 ], [ %426, %416 ], [ %389, %379 ], [ %.523, %369 ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.1533, metadata !2728, metadata !DIExpression()), !dbg !2771
  br label %.backedge, !dbg !2779

543:                                              ; preds = %13
  %.018.lcssa = phi i32 [ %.018, %13 ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.018.lcssa, metadata !2728, metadata !DIExpression()), !dbg !2771
  %544 = icmp ult i32 %.018.lcssa, %2, !dbg !3187
  br i1 %544, label %545, label %546, !dbg !3188

545:                                              ; preds = %543
  br label %548, !dbg !3188

546:                                              ; preds = %543
  %547 = sub i32 %2, 1, !dbg !3189
  br label %548, !dbg !3188

548:                                              ; preds = %546, %545
  %549 = phi i32 [ %.018.lcssa, %545 ], [ %547, %546 ], !dbg !3188
  call arm_aapcscc void %.0(i8 zeroext 0, i8* %1, i32 %549, i32 %2), !dbg !3190
  ret i32 %.018.lcssa, !dbg !3191
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_null(i8 zeroext, i8*, i32, i32) #5 !dbg !3192 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3194, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %2, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %3, metadata !3197, metadata !DIExpression()), !dbg !3198
  ret void, !dbg !3199
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc zeroext i1 @_is_digit(i8 zeroext) #5 !dbg !3200 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !3204, metadata !DIExpression()), !dbg !3205
  %2 = zext i8 %0 to i32, !dbg !3206
  %3 = icmp sge i32 %2, 48, !dbg !3207
  br i1 %3, label %4, label %._crit_edge, !dbg !3208

._crit_edge:                                      ; preds = %1
  br label %7, !dbg !3208

4:                                                ; preds = %1
  %5 = zext i8 %0 to i32, !dbg !3209
  %6 = icmp sle i32 %5, 57, !dbg !3210
  br label %7

7:                                                ; preds = %._crit_edge, %4
  %8 = phi i1 [ false, %._crit_edge ], [ %6, %4 ], !dbg !3205
  ret i1 %8, !dbg !3211
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_atoi(i8**) #0 !dbg !3212 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !3217, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 0, metadata !3218, metadata !DIExpression()), !dbg !3219
  br label %2, !dbg !3220

2:                                                ; preds = %6, %1
  %.0 = phi i32 [ 0, %1 ], [ %13, %6 ], !dbg !3219
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3218, metadata !DIExpression()), !dbg !3219
  %3 = load i8*, i8** %0, align 4, !dbg !3221, !tbaa !334
  %4 = load i8, i8* %3, align 1, !dbg !3222, !tbaa !2161
  %5 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %4), !dbg !3223
  br i1 %5, label %6, label %14, !dbg !3220

6:                                                ; preds = %2
  %7 = mul i32 %.0, 10, !dbg !3224
  %8 = load i8*, i8** %0, align 4, !dbg !3226, !tbaa !334
  %9 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !3226
  store i8* %9, i8** %0, align 4, !dbg !3226, !tbaa !334
  %10 = load i8, i8* %8, align 1, !dbg !3227, !tbaa !2161
  %11 = zext i8 %10 to i32, !dbg !3227
  %12 = sub nsw i32 %11, 48, !dbg !3228
  %13 = add i32 %7, %12, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %13, metadata !3218, metadata !DIExpression()), !dbg !3219
  br label %2, !dbg !3220, !llvm.loop !3230

14:                                               ; preds = %2
  %.0.lcssa = phi i32 [ %.0, %2 ], !dbg !3219
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !3218, metadata !DIExpression()), !dbg !3219
  ret i32 %.0.lcssa, !dbg !3232
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i64, i1 zeroext, i64, i32, i32, i32) #0 !dbg !3233 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3237, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %1, metadata !3238, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %2, metadata !3239, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %3, metadata !3240, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %4, metadata !3241, metadata !DIExpression()), !dbg !3253
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3242, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %6, metadata !3243, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %7, metadata !3244, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %8, metadata !3245, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %9, metadata !3246, metadata !DIExpression()), !dbg !3253
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3254
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3254
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3247, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i32 0, metadata !3248, metadata !DIExpression()), !dbg !3253
  %14 = icmp ne i64 %4, 0, !dbg !3256
  br i1 %14, label %._crit_edge, label %15, !dbg !3258

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3258

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3259
  call void @llvm.dbg.value(metadata i32 %16, metadata !3246, metadata !DIExpression()), !dbg !3253
  br label %17, !dbg !3261

17:                                               ; preds = %._crit_edge, %15
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3246, metadata !DIExpression()), !dbg !3253
  %18 = and i32 %.01, 1024, !dbg !3262
  %19 = icmp ne i32 %18, 0, !dbg !3262
  br i1 %19, label %20, label %._crit_edge3, !dbg !3263

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3263

20:                                               ; preds = %17
  %21 = icmp ne i64 %4, 0, !dbg !3264
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3265

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3265

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3265

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3266

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i64 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3253
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3248, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %.02, metadata !3241, metadata !DIExpression()), !dbg !3253
  %24 = urem i64 %.02, %6, !dbg !3267
  %25 = trunc i64 %24 to i8, !dbg !3268
  call void @llvm.dbg.value(metadata i8 %25, metadata !3249, metadata !DIExpression()), !dbg !3269
  %26 = zext i8 %25 to i32, !dbg !3270
  %27 = icmp slt i32 %26, 10, !dbg !3271
  br i1 %27, label %28, label %31, !dbg !3270

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3272
  %30 = add nsw i32 48, %29, !dbg !3273
  br label %39, !dbg !3270

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3274
  %33 = icmp ne i32 %32, 0, !dbg !3275
  %34 = zext i1 %33 to i64, !dbg !3275
  %35 = select i1 %33, i32 65, i32 97, !dbg !3275
  %36 = zext i8 %25 to i32, !dbg !3276
  %37 = add nsw i32 %35, %36, !dbg !3277
  %38 = sub nsw i32 %37, 10, !dbg !3278
  br label %39, !dbg !3270

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3270
  %41 = trunc i32 %40 to i8, !dbg !3270
  %42 = add i32 %.0, 1, !dbg !3279
  call void @llvm.dbg.value(metadata i32 %42, metadata !3248, metadata !DIExpression()), !dbg !3253
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3280
  store i8 %41, i8* %43, align 1, !dbg !3281, !tbaa !2161
  %44 = udiv i64 %.02, %6, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %44, metadata !3241, metadata !DIExpression()), !dbg !3253
  br label %45, !dbg !3283

45:                                               ; preds = %39
  %46 = icmp ne i64 %44, 0, !dbg !3284
  br i1 %46, label %47, label %._crit_edge6, !dbg !3285

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3285

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3286
  br label %49

49:                                               ; preds = %._crit_edge6, %47
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3287
  br i1 %50, label %._crit_edge7, label %51, !dbg !3283, !llvm.loop !3288

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3283

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3279
  br label %52, !dbg !3290

52:                                               ; preds = %._crit_edge5, %51
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3253
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3248, metadata !DIExpression()), !dbg !3253
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3291
  %54 = trunc i8 %12 to i1, !dbg !3292
  %55 = trunc i64 %6 to i32, !dbg !3293
  %56 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %55, i32 %7, i32 %8, i32 %.01), !dbg !3294
  %57 = bitcast [32 x i8]* %11 to i8*, !dbg !3295
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %57) #4, !dbg !3295
  ret i32 %56, !dbg !3296
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3297 {
  %11 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3301, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %1, metadata !3302, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %2, metadata !3303, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %3, metadata !3304, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %4, metadata !3305, metadata !DIExpression()), !dbg !3317
  %12 = zext i1 %5 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3306, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %6, metadata !3307, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %7, metadata !3308, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %8, metadata !3309, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %9, metadata !3310, metadata !DIExpression()), !dbg !3317
  %13 = bitcast [32 x i8]* %11 to i8*, !dbg !3318
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #4, !dbg !3318
  call void @llvm.dbg.declare(metadata [32 x i8]* %11, metadata !3311, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression()), !dbg !3317
  %14 = icmp ne i32 %4, 0, !dbg !3320
  br i1 %14, label %._crit_edge, label %15, !dbg !3322

._crit_edge:                                      ; preds = %10
  br label %17, !dbg !3322

15:                                               ; preds = %10
  %16 = and i32 %9, -17, !dbg !3323
  call void @llvm.dbg.value(metadata i32 %16, metadata !3310, metadata !DIExpression()), !dbg !3317
  br label %17, !dbg !3325

17:                                               ; preds = %._crit_edge, %15
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3310, metadata !DIExpression()), !dbg !3317
  %18 = and i32 %.01, 1024, !dbg !3326
  %19 = icmp ne i32 %18, 0, !dbg !3326
  br i1 %19, label %20, label %._crit_edge3, !dbg !3327

._crit_edge3:                                     ; preds = %17
  br label %22, !dbg !3327

20:                                               ; preds = %17
  %21 = icmp ne i32 %4, 0, !dbg !3328
  br i1 %21, label %._crit_edge4, label %._crit_edge5, !dbg !3329

._crit_edge5:                                     ; preds = %20
  br label %52, !dbg !3329

._crit_edge4:                                     ; preds = %20
  br label %22, !dbg !3329

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23, !dbg !3330

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i32 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ], !dbg !3317
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3312, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3305, metadata !DIExpression()), !dbg !3317
  %24 = urem i32 %.02, %6, !dbg !3331
  %25 = trunc i32 %24 to i8, !dbg !3332
  call void @llvm.dbg.value(metadata i8 %25, metadata !3313, metadata !DIExpression()), !dbg !3333
  %26 = zext i8 %25 to i32, !dbg !3334
  %27 = icmp slt i32 %26, 10, !dbg !3335
  br i1 %27, label %28, label %31, !dbg !3334

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32, !dbg !3336
  %30 = add nsw i32 48, %29, !dbg !3337
  br label %39, !dbg !3334

31:                                               ; preds = %23
  %32 = and i32 %.01, 32, !dbg !3338
  %33 = icmp ne i32 %32, 0, !dbg !3339
  %34 = zext i1 %33 to i64, !dbg !3339
  %35 = select i1 %33, i32 65, i32 97, !dbg !3339
  %36 = zext i8 %25 to i32, !dbg !3340
  %37 = add nsw i32 %35, %36, !dbg !3341
  %38 = sub nsw i32 %37, 10, !dbg !3342
  br label %39, !dbg !3334

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ], !dbg !3334
  %41 = trunc i32 %40 to i8, !dbg !3334
  %42 = add i32 %.0, 1, !dbg !3343
  call void @llvm.dbg.value(metadata i32 %42, metadata !3312, metadata !DIExpression()), !dbg !3317
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0, !dbg !3344
  store i8 %41, i8* %43, align 1, !dbg !3345, !tbaa !2161
  %44 = udiv i32 %.02, %6, !dbg !3346
  call void @llvm.dbg.value(metadata i32 %44, metadata !3305, metadata !DIExpression()), !dbg !3317
  br label %45, !dbg !3347

45:                                               ; preds = %39
  %46 = icmp ne i32 %44, 0, !dbg !3348
  br i1 %46, label %47, label %._crit_edge6, !dbg !3349

._crit_edge6:                                     ; preds = %45
  br label %49, !dbg !3349

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32, !dbg !3350
  br label %49

49:                                               ; preds = %._crit_edge6, %47
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ], !dbg !3351
  br i1 %50, label %._crit_edge7, label %51, !dbg !3347, !llvm.loop !3352

._crit_edge7:                                     ; preds = %49
  br label %23, !dbg !3347

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ], !dbg !3343
  br label %52, !dbg !3354

52:                                               ; preds = %._crit_edge5, %51
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ], !dbg !3317
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3312, metadata !DIExpression()), !dbg !3317
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0, !dbg !3355
  %54 = trunc i8 %12 to i1, !dbg !3356
  %55 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %6, i32 %7, i32 %8, i32 %.01), !dbg !3357
  %56 = bitcast [32 x i8]* %11 to i8*, !dbg !3358
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %56) #4, !dbg !3358
  ret i32 %55, !dbg !3359
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !147 {
  %9 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !173, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8* %1, metadata !174, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %2, metadata !175, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %3, metadata !176, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata double %4, metadata !177, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %5, metadata !178, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %6, metadata !179, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %7, metadata !180, metadata !DIExpression()), !dbg !3360
  %10 = bitcast [32 x i8]* %9 to i8*, !dbg !3361
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #4, !dbg !3361
  call void @llvm.dbg.declare(metadata [32 x i8]* %9, metadata !181, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !186, metadata !DIExpression()), !dbg !3360
  %11 = fcmp une double %4, %4, !dbg !3363
  br i1 %11, label %12, label %15, !dbg !3365

12:                                               ; preds = %8
  %13 = getelementptr [4 x i8], [4 x i8]* @.str.75, i32 0, i32 0
  %14 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %13, i32 3, i32 %6, i32 %7), !dbg !3366
  br label %200, !dbg !3367

15:                                               ; preds = %8
  %16 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3368
  br i1 %16, label %17, label %20, !dbg !3370

17:                                               ; preds = %15
  %18 = getelementptr [5 x i8], [5 x i8]* @.str.1.76, i32 0, i32 0
  %19 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %18, i32 4, i32 %6, i32 %7), !dbg !3371
  br label %200, !dbg !3372

20:                                               ; preds = %15
  %21 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3373
  br i1 %21, label %22, label %34, !dbg !3375

22:                                               ; preds = %20
  %23 = and i32 %7, 4, !dbg !3376
  %24 = icmp ne i32 %23, 0, !dbg !3377
  %25 = zext i1 %24 to i64, !dbg !3377
  %26 = getelementptr [5 x i8], [5 x i8]* @.str.2.77, i32 0, i32 0
  %27 = getelementptr [4 x i8], [4 x i8]* @.str.3.78, i32 0, i32 0
  %28 = select i1 %24, i8* %26, i8* %27, !dbg !3377
  %29 = and i32 %7, 4, !dbg !3378
  %30 = icmp ne i32 %29, 0, !dbg !3379
  %31 = zext i1 %30 to i64, !dbg !3379
  %32 = select i1 %30, i32 4, i32 3, !dbg !3379
  %33 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %28, i32 %32, i32 %6, i32 %7), !dbg !3380
  br label %200, !dbg !3381

34:                                               ; preds = %20
  %35 = fcmp ogt double %4, 1.000000e+09, !dbg !3382
  br i1 %35, label %._crit_edge, label %36, !dbg !3384

._crit_edge:                                      ; preds = %34
  br label %38, !dbg !3384

36:                                               ; preds = %34
  %37 = fcmp olt double %4, -1.000000e+09, !dbg !3385
  br i1 %37, label %._crit_edge23, label %40, !dbg !3386

._crit_edge23:                                    ; preds = %36
  br label %38, !dbg !3386

38:                                               ; preds = %._crit_edge23, %._crit_edge
  %39 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3387
  br label %200, !dbg !3389

40:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !187, metadata !DIExpression()), !dbg !3360
  %41 = fcmp olt double %4, 0.000000e+00, !dbg !3390
  br i1 %41, label %42, label %._crit_edge24, !dbg !3392

._crit_edge24:                                    ; preds = %40
  br label %44, !dbg !3392

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8 1, metadata !187, metadata !DIExpression()), !dbg !3360
  %43 = fsub double 0.000000e+00, %4, !dbg !3393
  call void @llvm.dbg.value(metadata double %43, metadata !177, metadata !DIExpression()), !dbg !3360
  br label %44, !dbg !3395

44:                                               ; preds = %._crit_edge24, %42
  %.012 = phi double [ %43, %42 ], [ %4, %._crit_edge24 ]
  %.011 = phi i8 [ 1, %42 ], [ 0, %._crit_edge24 ], !dbg !3360
  call void @llvm.dbg.value(metadata i8 %.011, metadata !187, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata double %.012, metadata !177, metadata !DIExpression()), !dbg !3360
  %45 = and i32 %7, 1024, !dbg !3396
  %46 = icmp ne i32 %45, 0, !dbg !3396
  br i1 %46, label %._crit_edge25, label %47, !dbg !3398

._crit_edge25:                                    ; preds = %44
  br label %48, !dbg !3398

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 6, metadata !178, metadata !DIExpression()), !dbg !3360
  br label %48, !dbg !3399

48:                                               ; preds = %._crit_edge25, %47
  %.013 = phi i32 [ %5, %._crit_edge25 ], [ 6, %47 ]
  call void @llvm.dbg.value(metadata i32 %.013, metadata !178, metadata !DIExpression()), !dbg !3360
  br label %49, !dbg !3401

49:                                               ; preds = %55, %48
  %.017 = phi i32 [ 0, %48 ], [ %56, %55 ], !dbg !3360
  %.114 = phi i32 [ %.013, %48 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i32 %.114, metadata !178, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.017, metadata !185, metadata !DIExpression()), !dbg !3360
  %50 = icmp ult i32 %.017, 32, !dbg !3402
  br i1 %50, label %51, label %._crit_edge26, !dbg !3403

._crit_edge26:                                    ; preds = %49
  br label %53, !dbg !3403

51:                                               ; preds = %49
  %52 = icmp ugt i32 %.114, 9, !dbg !3404
  br label %53

53:                                               ; preds = %._crit_edge26, %51
  %54 = phi i1 [ false, %._crit_edge26 ], [ %52, %51 ], !dbg !3360
  br i1 %54, label %55, label %59, !dbg !3401

55:                                               ; preds = %53
  %56 = add i32 %.017, 1, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %56, metadata !185, metadata !DIExpression()), !dbg !3360
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.017, !dbg !3407
  store i8 48, i8* %57, align 1, !dbg !3408, !tbaa !2161
  %58 = add i32 %.114, -1, !dbg !3409
  call void @llvm.dbg.value(metadata i32 %58, metadata !178, metadata !DIExpression()), !dbg !3360
  br label %49, !dbg !3401, !llvm.loop !3410

59:                                               ; preds = %53
  %.017.lcssa = phi i32 [ %.017, %53 ], !dbg !3360
  %.114.lcssa = phi i32 [ %.114, %53 ]
  call void @llvm.dbg.value(metadata i32 %.017.lcssa, metadata !185, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !178, metadata !DIExpression()), !dbg !3360
  %60 = fptosi double %.012 to i32, !dbg !3412
  call void @llvm.dbg.value(metadata i32 %60, metadata !189, metadata !DIExpression()), !dbg !3360
  %61 = sitofp i32 %60 to double, !dbg !3413
  %62 = fsub double %.012, %61, !dbg !3414
  %63 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3415
  %64 = load double, double* %63, align 8, !dbg !3415, !tbaa !3416
  %65 = fmul double %62, %64, !dbg !3418
  call void @llvm.dbg.value(metadata double %65, metadata !190, metadata !DIExpression()), !dbg !3360
  %66 = fptoui double %65 to i32, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %66, metadata !191, metadata !DIExpression()), !dbg !3360
  %67 = uitofp i32 %66 to double, !dbg !3420
  %68 = fsub double %65, %67, !dbg !3421
  call void @llvm.dbg.value(metadata double %68, metadata !186, metadata !DIExpression()), !dbg !3360
  %69 = fcmp ogt double %68, 5.000000e-01, !dbg !3422
  br i1 %69, label %70, label %79, !dbg !3424

70:                                               ; preds = %59
  %71 = add i32 %66, 1, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %71, metadata !191, metadata !DIExpression()), !dbg !3360
  %72 = uitofp i32 %71 to double, !dbg !3427
  %73 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa, !dbg !3429
  %74 = load double, double* %73, align 8, !dbg !3429, !tbaa !3416
  %75 = fcmp oge double %72, %74, !dbg !3430
  br i1 %75, label %76, label %._crit_edge27, !dbg !3431

._crit_edge27:                                    ; preds = %70
  br label %78, !dbg !3431

76:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !3360
  %77 = add nsw i32 %60, 1, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %77, metadata !189, metadata !DIExpression()), !dbg !3360
  br label %78, !dbg !3434

78:                                               ; preds = %._crit_edge27, %76
  %.06 = phi i32 [ %77, %76 ], [ %60, %._crit_edge27 ], !dbg !3360
  %.02 = phi i32 [ 0, %76 ], [ %71, %._crit_edge27 ], !dbg !3435
  call void @llvm.dbg.value(metadata i32 %.02, metadata !191, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.06, metadata !189, metadata !DIExpression()), !dbg !3360
  br label %91, !dbg !3436

79:                                               ; preds = %59
  %80 = fcmp olt double %68, 5.000000e-01, !dbg !3437
  br i1 %80, label %81, label %82, !dbg !3439

81:                                               ; preds = %79
  br label %90, !dbg !3440

82:                                               ; preds = %79
  %83 = icmp eq i32 %66, 0, !dbg !3442
  br i1 %83, label %._crit_edge28, label %84, !dbg !3444

._crit_edge28:                                    ; preds = %82
  br label %87, !dbg !3444

84:                                               ; preds = %82
  %85 = and i32 %66, 1, !dbg !3445
  %86 = icmp ne i32 %85, 0, !dbg !3445
  br i1 %86, label %._crit_edge29, label %._crit_edge30, !dbg !3446

._crit_edge30:                                    ; preds = %84
  br label %89, !dbg !3446

._crit_edge29:                                    ; preds = %84
  br label %87, !dbg !3446

87:                                               ; preds = %._crit_edge29, %._crit_edge28
  %88 = add i32 %66, 1, !dbg !3447
  call void @llvm.dbg.value(metadata i32 %88, metadata !191, metadata !DIExpression()), !dbg !3360
  br label %89, !dbg !3449

89:                                               ; preds = %._crit_edge30, %87
  %.13 = phi i32 [ %88, %87 ], [ %66, %._crit_edge30 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.13, metadata !191, metadata !DIExpression()), !dbg !3360
  br label %90

90:                                               ; preds = %89, %81
  %.24 = phi i32 [ %66, %81 ], [ %.13, %89 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.24, metadata !191, metadata !DIExpression()), !dbg !3360
  br label %91

91:                                               ; preds = %90, %78
  %.17 = phi i32 [ %.06, %78 ], [ %60, %90 ], !dbg !3360
  %.35 = phi i32 [ %.02, %78 ], [ %.24, %90 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.35, metadata !191, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.17, metadata !189, metadata !DIExpression()), !dbg !3360
  %92 = icmp eq i32 %.114.lcssa, 0, !dbg !3450
  br i1 %92, label %93, label %105, !dbg !3451

93:                                               ; preds = %91
  %94 = sitofp i32 %.17 to double, !dbg !3452
  %95 = fsub double %.012, %94, !dbg !3454
  call void @llvm.dbg.value(metadata double %95, metadata !186, metadata !DIExpression()), !dbg !3360
  %96 = fcmp olt double %95, 5.000000e-01, !dbg !3455
  br i1 %96, label %97, label %._crit_edge31, !dbg !3457

._crit_edge31:                                    ; preds = %93
  br label %99, !dbg !3457

97:                                               ; preds = %93
  %98 = fcmp ogt double %95, 5.000000e-01, !dbg !3458
  br i1 %98, label %._crit_edge32, label %._crit_edge33, !dbg !3459

._crit_edge33:                                    ; preds = %97
  br label %104, !dbg !3459

._crit_edge32:                                    ; preds = %97
  br label %99, !dbg !3459

99:                                               ; preds = %._crit_edge32, %._crit_edge31
  %100 = and i32 %.17, 1, !dbg !3460
  %101 = icmp ne i32 %100, 0, !dbg !3460
  br i1 %101, label %102, label %._crit_edge34, !dbg !3461

._crit_edge34:                                    ; preds = %99
  br label %104, !dbg !3461

102:                                              ; preds = %99
  %103 = add nsw i32 %.17, 1, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %103, metadata !189, metadata !DIExpression()), !dbg !3360
  br label %104, !dbg !3464

104:                                              ; preds = %._crit_edge34, %._crit_edge33, %102
  %.28 = phi i32 [ %103, %102 ], [ %.17, %._crit_edge34 ], [ %.17, %._crit_edge33 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.28, metadata !189, metadata !DIExpression()), !dbg !3360
  br label %136, !dbg !3465

105:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i32 %.114.lcssa, metadata !192, metadata !DIExpression()), !dbg !3466
  br label %106, !dbg !3467

106:                                              ; preds = %118, %105
  %.118 = phi i32 [ %.017.lcssa, %105 ], [ %113, %118 ], !dbg !3360
  %.4 = phi i32 [ %.35, %105 ], [ %115, %118 ], !dbg !3360
  %.01 = phi i32 [ %.114.lcssa, %105 ], [ %109, %118 ], !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.01, metadata !192, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.4, metadata !191, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.118, metadata !185, metadata !DIExpression()), !dbg !3360
  %107 = icmp ult i32 %.118, 32, !dbg !3468
  br i1 %107, label %108, label %._crit_edge35, !dbg !3467

._crit_edge35:                                    ; preds = %106
  %.118.lcssa = phi i32 [ %.118, %106 ], !dbg !3360
  %.01.lcssa = phi i32 [ %.01, %106 ], !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.118.lcssa, metadata !185, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !192, metadata !DIExpression()), !dbg !3466
  br label %119, !dbg !3467

108:                                              ; preds = %106
  %109 = add i32 %.01, -1, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %109, metadata !192, metadata !DIExpression()), !dbg !3466
  %110 = urem i32 %.4, 10, !dbg !3471
  %111 = add i32 48, %110, !dbg !3472
  %112 = trunc i32 %111 to i8, !dbg !3473
  %113 = add i32 %.118, 1, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %113, metadata !185, metadata !DIExpression()), !dbg !3360
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.118, !dbg !3475
  store i8 %112, i8* %114, align 1, !dbg !3476, !tbaa !2161
  %115 = udiv i32 %.4, 10, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %115, metadata !191, metadata !DIExpression()), !dbg !3360
  %116 = icmp ne i32 %115, 0, !dbg !3477
  br i1 %116, label %118, label %117, !dbg !3479

117:                                              ; preds = %108
  %.lcssa52 = phi i32 [ %109, %108 ], !dbg !3469
  %.lcssa51 = phi i32 [ %113, %108 ], !dbg !3474
  br label %119, !dbg !3480

118:                                              ; preds = %108
  br label %106, !dbg !3467, !llvm.loop !3482

119:                                              ; preds = %._crit_edge35, %117
  %.219 = phi i32 [ %.lcssa51, %117 ], [ %.118.lcssa, %._crit_edge35 ], !dbg !3360
  %.1 = phi i32 [ %.lcssa52, %117 ], [ %.01.lcssa, %._crit_edge35 ], !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.1, metadata !192, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.219, metadata !185, metadata !DIExpression()), !dbg !3360
  br label %120, !dbg !3484

120:                                              ; preds = %127, %119
  %.320 = phi i32 [ %.219, %119 ], [ %128, %127 ], !dbg !3466
  %.2 = phi i32 [ %.1, %119 ], [ %.3, %127 ], !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.2, metadata !192, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.320, metadata !185, metadata !DIExpression()), !dbg !3360
  %121 = icmp ult i32 %.320, 32, !dbg !3485
  br i1 %121, label %122, label %._crit_edge36, !dbg !3486

._crit_edge36:                                    ; preds = %120
  br label %125, !dbg !3486

122:                                              ; preds = %120
  %123 = add i32 %.2, -1, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %123, metadata !192, metadata !DIExpression()), !dbg !3466
  %124 = icmp ugt i32 %.2, 0, !dbg !3488
  br label %125

125:                                              ; preds = %._crit_edge36, %122
  %.3 = phi i32 [ %123, %122 ], [ %.2, %._crit_edge36 ], !dbg !3466
  %126 = phi i1 [ false, %._crit_edge36 ], [ %124, %122 ], !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.3, metadata !192, metadata !DIExpression()), !dbg !3466
  br i1 %126, label %127, label %130, !dbg !3484

127:                                              ; preds = %125
  %128 = add i32 %.320, 1, !dbg !3489
  call void @llvm.dbg.value(metadata i32 %128, metadata !185, metadata !DIExpression()), !dbg !3360
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320, !dbg !3491
  store i8 48, i8* %129, align 1, !dbg !3492, !tbaa !2161
  br label %120, !dbg !3484, !llvm.loop !3493

130:                                              ; preds = %125
  %.320.lcssa = phi i32 [ %.320, %125 ], !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.320.lcssa, metadata !185, metadata !DIExpression()), !dbg !3360
  %131 = icmp ult i32 %.320.lcssa, 32, !dbg !3495
  br i1 %131, label %132, label %._crit_edge37, !dbg !3497

._crit_edge37:                                    ; preds = %130
  br label %135, !dbg !3497

132:                                              ; preds = %130
  %133 = add i32 %.320.lcssa, 1, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %133, metadata !185, metadata !DIExpression()), !dbg !3360
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320.lcssa, !dbg !3500
  store i8 46, i8* %134, align 1, !dbg !3501, !tbaa !2161
  br label %135, !dbg !3502

135:                                              ; preds = %._crit_edge37, %132
  %.421 = phi i32 [ %133, %132 ], [ %.320.lcssa, %._crit_edge37 ], !dbg !3466
  call void @llvm.dbg.value(metadata i32 %.421, metadata !185, metadata !DIExpression()), !dbg !3360
  br label %136

136:                                              ; preds = %135, %104
  %.5 = phi i32 [ %.017.lcssa, %104 ], [ %.421, %135 ], !dbg !3360
  %.39 = phi i32 [ %.28, %104 ], [ %.17, %135 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.39, metadata !189, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.5, metadata !185, metadata !DIExpression()), !dbg !3360
  br label %137, !dbg !3503

137:                                              ; preds = %148, %136
  %.6 = phi i32 [ %.5, %136 ], [ %143, %148 ], !dbg !3360
  %.410 = phi i32 [ %.39, %136 ], [ %145, %148 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.410, metadata !189, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.6, metadata !185, metadata !DIExpression()), !dbg !3360
  %138 = icmp ult i32 %.6, 32, !dbg !3504
  br i1 %138, label %139, label %._crit_edge38, !dbg !3503

._crit_edge38:                                    ; preds = %137
  %.6.lcssa = phi i32 [ %.6, %137 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.6.lcssa, metadata !185, metadata !DIExpression()), !dbg !3360
  br label %149, !dbg !3503

139:                                              ; preds = %137
  %140 = srem i32 %.410, 10, !dbg !3505
  %141 = add nsw i32 48, %140, !dbg !3507
  %142 = trunc i32 %141 to i8, !dbg !3508
  %143 = add i32 %.6, 1, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %143, metadata !185, metadata !DIExpression()), !dbg !3360
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.6, !dbg !3510
  store i8 %142, i8* %144, align 1, !dbg !3511, !tbaa !2161
  %145 = sdiv i32 %.410, 10, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %145, metadata !189, metadata !DIExpression()), !dbg !3360
  %146 = icmp ne i32 %145, 0, !dbg !3512
  br i1 %146, label %148, label %147, !dbg !3514

147:                                              ; preds = %139
  %.lcssa = phi i32 [ %143, %139 ], !dbg !3509
  br label %149, !dbg !3515

148:                                              ; preds = %139
  br label %137, !dbg !3503, !llvm.loop !3517

149:                                              ; preds = %._crit_edge38, %147
  %.7 = phi i32 [ %.lcssa, %147 ], [ %.6.lcssa, %._crit_edge38 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.7, metadata !185, metadata !DIExpression()), !dbg !3360
  %150 = and i32 %7, 2, !dbg !3519
  %151 = icmp ne i32 %150, 0, !dbg !3519
  br i1 %151, label %._crit_edge39, label %152, !dbg !3521

._crit_edge39:                                    ; preds = %149
  br label %175, !dbg !3521

152:                                              ; preds = %149
  %153 = and i32 %7, 1, !dbg !3522
  %154 = icmp ne i32 %153, 0, !dbg !3522
  br i1 %154, label %155, label %._crit_edge40, !dbg !3523

._crit_edge40:                                    ; preds = %152
  br label %175, !dbg !3523

155:                                              ; preds = %152
  %156 = icmp ne i32 %6, 0, !dbg !3524
  br i1 %156, label %157, label %._crit_edge41, !dbg !3527

._crit_edge41:                                    ; preds = %155
  br label %164, !dbg !3527

157:                                              ; preds = %155
  %158 = trunc i8 %.011 to i1, !dbg !3528
  br i1 %158, label %._crit_edge42, label %159, !dbg !3529

._crit_edge42:                                    ; preds = %157
  br label %162, !dbg !3529

159:                                              ; preds = %157
  %160 = and i32 %7, 12, !dbg !3530
  %161 = icmp ne i32 %160, 0, !dbg !3530
  br i1 %161, label %._crit_edge43, label %._crit_edge44, !dbg !3531

._crit_edge44:                                    ; preds = %159
  br label %164, !dbg !3531

._crit_edge43:                                    ; preds = %159
  br label %162, !dbg !3531

162:                                              ; preds = %._crit_edge43, %._crit_edge42
  %163 = add i32 %6, -1, !dbg !3532
  call void @llvm.dbg.value(metadata i32 %163, metadata !179, metadata !DIExpression()), !dbg !3360
  br label %164, !dbg !3534

164:                                              ; preds = %._crit_edge44, %._crit_edge41, %162
  %.015 = phi i32 [ %163, %162 ], [ %6, %._crit_edge44 ], [ %6, %._crit_edge41 ]
  call void @llvm.dbg.value(metadata i32 %.015, metadata !179, metadata !DIExpression()), !dbg !3360
  br label %165, !dbg !3535

165:                                              ; preds = %171, %164
  %.8 = phi i32 [ %.7, %164 ], [ %172, %171 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.8, metadata !185, metadata !DIExpression()), !dbg !3360
  %166 = icmp ult i32 %.8, %.015, !dbg !3536
  br i1 %166, label %167, label %._crit_edge45, !dbg !3537

._crit_edge45:                                    ; preds = %165
  br label %169, !dbg !3537

167:                                              ; preds = %165
  %168 = icmp ult i32 %.8, 32, !dbg !3538
  br label %169

169:                                              ; preds = %._crit_edge45, %167
  %170 = phi i1 [ false, %._crit_edge45 ], [ %168, %167 ], !dbg !3539
  br i1 %170, label %171, label %174, !dbg !3535

171:                                              ; preds = %169
  %172 = add i32 %.8, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %172, metadata !185, metadata !DIExpression()), !dbg !3360
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.8, !dbg !3542
  store i8 48, i8* %173, align 1, !dbg !3543, !tbaa !2161
  br label %165, !dbg !3535, !llvm.loop !3544

174:                                              ; preds = %169
  %.8.lcssa = phi i32 [ %.8, %169 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.8.lcssa, metadata !185, metadata !DIExpression()), !dbg !3360
  br label %175, !dbg !3546

175:                                              ; preds = %._crit_edge40, %._crit_edge39, %174
  %.9 = phi i32 [ %.7, %._crit_edge39 ], [ %.8.lcssa, %174 ], [ %.7, %._crit_edge40 ], !dbg !3509
  %.116 = phi i32 [ %6, %._crit_edge39 ], [ %.015, %174 ], [ %6, %._crit_edge40 ]
  call void @llvm.dbg.value(metadata i32 %.116, metadata !179, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.9, metadata !185, metadata !DIExpression()), !dbg !3360
  %176 = icmp ult i32 %.9, 32, !dbg !3547
  br i1 %176, label %177, label %._crit_edge46, !dbg !3549

._crit_edge46:                                    ; preds = %175
  br label %197, !dbg !3549

177:                                              ; preds = %175
  %178 = trunc i8 %.011 to i1, !dbg !3550
  br i1 %178, label %179, label %182, !dbg !3553

179:                                              ; preds = %177
  %180 = add i32 %.9, 1, !dbg !3554
  call void @llvm.dbg.value(metadata i32 %180, metadata !185, metadata !DIExpression()), !dbg !3360
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3556
  store i8 45, i8* %181, align 1, !dbg !3557, !tbaa !2161
  br label %196, !dbg !3558

182:                                              ; preds = %177
  %183 = and i32 %7, 4, !dbg !3559
  %184 = icmp ne i32 %183, 0, !dbg !3559
  br i1 %184, label %185, label %188, !dbg !3561

185:                                              ; preds = %182
  %186 = add i32 %.9, 1, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %186, metadata !185, metadata !DIExpression()), !dbg !3360
  %187 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3564
  store i8 43, i8* %187, align 1, !dbg !3565, !tbaa !2161
  br label %195, !dbg !3566

188:                                              ; preds = %182
  %189 = and i32 %7, 8, !dbg !3567
  %190 = icmp ne i32 %189, 0, !dbg !3567
  br i1 %190, label %191, label %._crit_edge47, !dbg !3569

._crit_edge47:                                    ; preds = %188
  br label %194, !dbg !3569

191:                                              ; preds = %188
  %192 = add i32 %.9, 1, !dbg !3570
  call void @llvm.dbg.value(metadata i32 %192, metadata !185, metadata !DIExpression()), !dbg !3360
  %193 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9, !dbg !3572
  store i8 32, i8* %193, align 1, !dbg !3573, !tbaa !2161
  br label %194, !dbg !3574

194:                                              ; preds = %._crit_edge47, %191
  %.10 = phi i32 [ %192, %191 ], [ %.9, %._crit_edge47 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.10, metadata !185, metadata !DIExpression()), !dbg !3360
  br label %195

195:                                              ; preds = %194, %185
  %.11 = phi i32 [ %186, %185 ], [ %.10, %194 ], !dbg !3575
  call void @llvm.dbg.value(metadata i32 %.11, metadata !185, metadata !DIExpression()), !dbg !3360
  br label %196

196:                                              ; preds = %195, %179
  %.12 = phi i32 [ %180, %179 ], [ %.11, %195 ], !dbg !3576
  call void @llvm.dbg.value(metadata i32 %.12, metadata !185, metadata !DIExpression()), !dbg !3360
  br label %197, !dbg !3577

197:                                              ; preds = %._crit_edge46, %196
  %.1322 = phi i32 [ %.12, %196 ], [ %.9, %._crit_edge46 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %.1322, metadata !185, metadata !DIExpression()), !dbg !3360
  %198 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0, !dbg !3578
  %199 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %198, i32 %.1322, i32 %.116, i32 %7), !dbg !3579
  br label %200

200:                                              ; preds = %197, %38, %22, %17, %12
  %.0 = phi i32 [ %14, %12 ], [ %19, %17 ], [ %33, %22 ], [ %39, %38 ], [ %199, %197 ], !dbg !3360
  %201 = bitcast [32 x i8]* %9 to i8*, !dbg !3580
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %201) #4, !dbg !3580
  ret i32 %.0, !dbg !3580
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !3581 {
  %9 = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3583, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8* %1, metadata !3584, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %2, metadata !3585, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %3, metadata !3586, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata double %4, metadata !3587, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %5, metadata !3588, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %6, metadata !3589, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %7, metadata !3590, metadata !DIExpression()), !dbg !3604
  %10 = fcmp une double %4, %4, !dbg !3605
  br i1 %10, label %._crit_edge, label %11, !dbg !3607

._crit_edge:                                      ; preds = %8
  br label %15, !dbg !3607

11:                                               ; preds = %8
  %12 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF, !dbg !3608
  br i1 %12, label %._crit_edge16, label %13, !dbg !3609

._crit_edge16:                                    ; preds = %11
  br label %15, !dbg !3609

13:                                               ; preds = %11
  %14 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF, !dbg !3610
  br i1 %14, label %._crit_edge17, label %17, !dbg !3611

._crit_edge17:                                    ; preds = %13
  br label %15, !dbg !3611

15:                                               ; preds = %._crit_edge17, %._crit_edge16, %._crit_edge
  %16 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7), !dbg !3612
  br label %171, !dbg !3614

17:                                               ; preds = %13
  %18 = fcmp olt double %4, 0.000000e+00, !dbg !3615
  %19 = zext i1 %18 to i8, !dbg !3616
  call void @llvm.dbg.value(metadata i8 %19, metadata !3591, metadata !DIExpression()), !dbg !3604
  %20 = trunc i8 %19 to i1, !dbg !3617
  br i1 %20, label %21, label %._crit_edge18, !dbg !3619

._crit_edge18:                                    ; preds = %17
  br label %23, !dbg !3619

21:                                               ; preds = %17
  %22 = fsub double -0.000000e+00, %4, !dbg !3620
  call void @llvm.dbg.value(metadata double %22, metadata !3587, metadata !DIExpression()), !dbg !3604
  br label %23, !dbg !3622

23:                                               ; preds = %._crit_edge18, %21
  %.09 = phi double [ %22, %21 ], [ %4, %._crit_edge18 ]
  call void @llvm.dbg.value(metadata double %.09, metadata !3587, metadata !DIExpression()), !dbg !3604
  %24 = and i32 %7, 1024, !dbg !3623
  %25 = icmp ne i32 %24, 0, !dbg !3623
  br i1 %25, label %._crit_edge19, label %26, !dbg !3625

._crit_edge19:                                    ; preds = %23
  br label %27, !dbg !3625

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 6, metadata !3588, metadata !DIExpression()), !dbg !3604
  br label %27, !dbg !3626

27:                                               ; preds = %._crit_edge19, %26
  %.011 = phi i32 [ %5, %._crit_edge19 ], [ 6, %26 ]
  call void @llvm.dbg.value(metadata i32 %.011, metadata !3588, metadata !DIExpression()), !dbg !3604
  %28 = bitcast %union.anon* %9 to i8*, !dbg !3628
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #4, !dbg !3628
  call void @llvm.dbg.declare(metadata %union.anon* %9, metadata !3592, metadata !DIExpression()), !dbg !3629
  %29 = bitcast %union.anon* %9 to double*, !dbg !3630
  store double %.09, double* %29, align 8, !dbg !3631, !tbaa !2161
  %30 = bitcast %union.anon* %9 to i64*, !dbg !3632
  %31 = load i64, i64* %30, align 8, !dbg !3632, !tbaa !2161
  %32 = lshr i64 %31, 52, !dbg !3633
  %33 = and i64 %32, 2047, !dbg !3634
  %34 = trunc i64 %33 to i32, !dbg !3635
  %35 = sub nsw i32 %34, 1023, !dbg !3636
  call void @llvm.dbg.value(metadata i32 %35, metadata !3597, metadata !DIExpression()), !dbg !3604
  %36 = bitcast %union.anon* %9 to i64*, !dbg !3637
  %37 = load i64, i64* %36, align 8, !dbg !3637, !tbaa !2161
  %38 = and i64 %37, 4503599627370495, !dbg !3638
  %39 = or i64 %38, 4607182418800017408, !dbg !3639
  %40 = bitcast %union.anon* %9 to i64*, !dbg !3640
  store i64 %39, i64* %40, align 8, !dbg !3641, !tbaa !2161
  %41 = sitofp i32 %35 to double, !dbg !3642
  %42 = fmul double %41, 0x3FD34413509F79FB, !dbg !3643
  %43 = fadd double 0x3FC68A288B60C8B3, %42, !dbg !3644
  %44 = bitcast %union.anon* %9 to double*, !dbg !3645
  %45 = load double, double* %44, align 8, !dbg !3645, !tbaa !2161
  %46 = fsub double %45, 1.500000e+00, !dbg !3646
  %47 = fmul double %46, 0x3FD287A7636F4361, !dbg !3647
  %48 = fadd double %43, %47, !dbg !3648
  %49 = fptosi double %48 to i32, !dbg !3649
  call void @llvm.dbg.value(metadata i32 %49, metadata !3598, metadata !DIExpression()), !dbg !3604
  %50 = sitofp i32 %49 to double, !dbg !3650
  %51 = fmul double %50, 0x400A934F0979A371, !dbg !3651
  %52 = fadd double %51, 5.000000e-01, !dbg !3652
  %53 = fptosi double %52 to i32, !dbg !3653
  call void @llvm.dbg.value(metadata i32 %53, metadata !3597, metadata !DIExpression()), !dbg !3604
  %54 = sitofp i32 %49 to double, !dbg !3654
  %55 = fmul double %54, 0x40026BB1BBB55516, !dbg !3655
  %56 = sitofp i32 %53 to double, !dbg !3656
  %57 = fmul double %56, 0x3FE62E42FEFA39EF, !dbg !3657
  %58 = fsub double %55, %57, !dbg !3658
  call void @llvm.dbg.value(metadata double %58, metadata !3599, metadata !DIExpression()), !dbg !3604
  %59 = fmul double %58, %58, !dbg !3659
  call void @llvm.dbg.value(metadata double %59, metadata !3600, metadata !DIExpression()), !dbg !3604
  %60 = add nsw i32 %53, 1023, !dbg !3660
  %61 = sext i32 %60 to i64, !dbg !3661
  %62 = shl i64 %61, 52, !dbg !3662
  %63 = bitcast %union.anon* %9 to i64*, !dbg !3663
  store i64 %62, i64* %63, align 8, !dbg !3664, !tbaa !2161
  %64 = fmul double 2.000000e+00, %58, !dbg !3665
  %65 = fsub double 2.000000e+00, %58, !dbg !3666
  %66 = fdiv double %59, 1.400000e+01, !dbg !3667
  %67 = fadd double 1.000000e+01, %66, !dbg !3668
  %68 = fdiv double %59, %67, !dbg !3669
  %69 = fadd double 6.000000e+00, %68, !dbg !3670
  %70 = fdiv double %59, %69, !dbg !3671
  %71 = fadd double %65, %70, !dbg !3672
  %72 = fdiv double %64, %71, !dbg !3673
  %73 = fadd double 1.000000e+00, %72, !dbg !3674
  %74 = bitcast %union.anon* %9 to double*, !dbg !3675
  %75 = load double, double* %74, align 8, !dbg !3676, !tbaa !2161
  %76 = fmul double %75, %73, !dbg !3676
  store double %76, double* %74, align 8, !dbg !3676, !tbaa !2161
  %77 = bitcast %union.anon* %9 to double*, !dbg !3677
  %78 = load double, double* %77, align 8, !dbg !3677, !tbaa !2161
  %79 = fcmp olt double %.09, %78, !dbg !3679
  br i1 %79, label %80, label %._crit_edge20, !dbg !3680

._crit_edge20:                                    ; preds = %27
  br label %85, !dbg !3680

80:                                               ; preds = %27
  %81 = add nsw i32 %49, -1, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %81, metadata !3598, metadata !DIExpression()), !dbg !3604
  %82 = bitcast %union.anon* %9 to double*, !dbg !3683
  %83 = load double, double* %82, align 8, !dbg !3684, !tbaa !2161
  %84 = fdiv double %83, 1.000000e+01, !dbg !3684
  store double %84, double* %82, align 8, !dbg !3684, !tbaa !2161
  br label %85, !dbg !3685

85:                                               ; preds = %._crit_edge20, %80
  %.06 = phi i32 [ %81, %80 ], [ %49, %._crit_edge20 ], !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3598, metadata !DIExpression()), !dbg !3604
  %86 = icmp slt i32 %.06, 100, !dbg !3686
  br i1 %86, label %87, label %._crit_edge21, !dbg !3687

._crit_edge21:                                    ; preds = %85
  br label %89, !dbg !3687

87:                                               ; preds = %85
  %88 = icmp sgt i32 %.06, -100, !dbg !3688
  br label %89

89:                                               ; preds = %._crit_edge21, %87
  %90 = phi i1 [ false, %._crit_edge21 ], [ %88, %87 ], !dbg !3604
  %91 = zext i1 %90 to i64, !dbg !3689
  %92 = select i1 %90, i32 4, i32 5, !dbg !3689
  call void @llvm.dbg.value(metadata i32 %92, metadata !3601, metadata !DIExpression()), !dbg !3604
  %93 = and i32 %7, 2048, !dbg !3690
  %94 = icmp ne i32 %93, 0, !dbg !3690
  br i1 %94, label %95, label %._crit_edge22, !dbg !3692

._crit_edge22:                                    ; preds = %89
  br label %116, !dbg !3692

95:                                               ; preds = %89
  %96 = fcmp oge double %.09, 1.000000e-04, !dbg !3693
  br i1 %96, label %97, label %._crit_edge23, !dbg !3696

._crit_edge23:                                    ; preds = %95
  br label %107, !dbg !3696

97:                                               ; preds = %95
  %98 = fcmp olt double %.09, 1.000000e+06, !dbg !3697
  br i1 %98, label %99, label %._crit_edge24, !dbg !3698

._crit_edge24:                                    ; preds = %97
  br label %107, !dbg !3698

99:                                               ; preds = %97
  %100 = icmp sgt i32 %.011, %.06, !dbg !3699
  br i1 %100, label %101, label %104, !dbg !3702

101:                                              ; preds = %99
  %102 = sub nsw i32 %.011, %.06, !dbg !3703
  %103 = sub nsw i32 %102, 1, !dbg !3705
  call void @llvm.dbg.value(metadata i32 %103, metadata !3588, metadata !DIExpression()), !dbg !3604
  br label %105, !dbg !3706

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i32 0, metadata !3588, metadata !DIExpression()), !dbg !3604
  br label %105

105:                                              ; preds = %104, %101
  %.112 = phi i32 [ %103, %101 ], [ 0, %104 ], !dbg !3707
  call void @llvm.dbg.value(metadata i32 %.112, metadata !3588, metadata !DIExpression()), !dbg !3604
  %106 = or i32 %7, 1024, !dbg !3708
  call void @llvm.dbg.value(metadata i32 %106, metadata !3590, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 0, metadata !3601, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 0, metadata !3598, metadata !DIExpression()), !dbg !3604
  br label %115, !dbg !3709

107:                                              ; preds = %._crit_edge24, %._crit_edge23
  %108 = icmp ugt i32 %.011, 0, !dbg !3710
  br i1 %108, label %109, label %._crit_edge25, !dbg !3713

._crit_edge25:                                    ; preds = %107
  br label %114, !dbg !3713

109:                                              ; preds = %107
  %110 = and i32 %7, 1024, !dbg !3714
  %111 = icmp ne i32 %110, 0, !dbg !3714
  br i1 %111, label %112, label %._crit_edge26, !dbg !3715

._crit_edge26:                                    ; preds = %109
  br label %114, !dbg !3715

112:                                              ; preds = %109
  %113 = add i32 %.011, -1, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %113, metadata !3588, metadata !DIExpression()), !dbg !3604
  br label %114, !dbg !3718

114:                                              ; preds = %._crit_edge26, %._crit_edge25, %112
  %.213 = phi i32 [ %113, %112 ], [ %.011, %._crit_edge26 ], [ %.011, %._crit_edge25 ]
  call void @llvm.dbg.value(metadata i32 %.213, metadata !3588, metadata !DIExpression()), !dbg !3604
  br label %115

115:                                              ; preds = %114, %105
  %.014 = phi i32 [ %106, %105 ], [ %7, %114 ]
  %.3 = phi i32 [ %.112, %105 ], [ %.213, %114 ], !dbg !3719
  %.17 = phi i32 [ 0, %105 ], [ %.06, %114 ], !dbg !3604
  %.02 = phi i32 [ 0, %105 ], [ %92, %114 ], !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3601, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.17, metadata !3598, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3588, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.014, metadata !3590, metadata !DIExpression()), !dbg !3604
  br label %116, !dbg !3720

116:                                              ; preds = %._crit_edge22, %115
  %.115 = phi i32 [ %.014, %115 ], [ %7, %._crit_edge22 ]
  %.4 = phi i32 [ %.3, %115 ], [ %.011, %._crit_edge22 ]
  %.28 = phi i32 [ %.17, %115 ], [ %.06, %._crit_edge22 ], !dbg !3604
  %.13 = phi i32 [ %.02, %115 ], [ %92, %._crit_edge22 ], !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3601, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.28, metadata !3598, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3588, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.115, metadata !3590, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %6, metadata !3602, metadata !DIExpression()), !dbg !3604
  %117 = icmp ugt i32 %6, %.13, !dbg !3721
  br i1 %117, label %118, label %120, !dbg !3723

118:                                              ; preds = %116
  %119 = sub i32 %6, %.13, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %119, metadata !3602, metadata !DIExpression()), !dbg !3604
  br label %121, !dbg !3726

120:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3604
  br label %121

121:                                              ; preds = %120, %118
  %.01 = phi i32 [ %119, %118 ], [ 0, %120 ], !dbg !3727
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3602, metadata !DIExpression()), !dbg !3604
  %122 = and i32 %.115, 2, !dbg !3728
  %123 = icmp ne i32 %122, 0, !dbg !3728
  br i1 %123, label %124, label %._crit_edge27, !dbg !3730

._crit_edge27:                                    ; preds = %121
  br label %127, !dbg !3730

124:                                              ; preds = %121
  %125 = icmp ne i32 %.13, 0, !dbg !3731
  br i1 %125, label %126, label %._crit_edge28, !dbg !3732

._crit_edge28:                                    ; preds = %124
  br label %127, !dbg !3732

126:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3604
  br label %127, !dbg !3733

127:                                              ; preds = %._crit_edge28, %._crit_edge27, %126
  %.1 = phi i32 [ 0, %126 ], [ %.01, %._crit_edge28 ], [ %.01, %._crit_edge27 ], !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3602, metadata !DIExpression()), !dbg !3604
  %128 = icmp ne i32 %.28, 0, !dbg !3735
  br i1 %128, label %129, label %._crit_edge29, !dbg !3737

._crit_edge29:                                    ; preds = %127
  br label %133, !dbg !3737

129:                                              ; preds = %127
  %130 = bitcast %union.anon* %9 to double*, !dbg !3738
  %131 = load double, double* %130, align 8, !dbg !3738, !tbaa !2161
  %132 = fdiv double %.09, %131, !dbg !3740
  call void @llvm.dbg.value(metadata double %132, metadata !3587, metadata !DIExpression()), !dbg !3604
  br label %133, !dbg !3741

133:                                              ; preds = %._crit_edge29, %129
  %.110 = phi double [ %132, %129 ], [ %.09, %._crit_edge29 ], !dbg !3604
  call void @llvm.dbg.value(metadata double %.110, metadata !3587, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 %2, metadata !3603, metadata !DIExpression()), !dbg !3604
  %134 = trunc i8 %19 to i1, !dbg !3742
  br i1 %134, label %135, label %137, !dbg !3742

135:                                              ; preds = %133
  %136 = fsub double -0.000000e+00, %.110, !dbg !3743
  br label %138, !dbg !3742

137:                                              ; preds = %133
  br label %138, !dbg !3742

138:                                              ; preds = %137, %135
  %139 = phi double [ %136, %135 ], [ %.110, %137 ], !dbg !3742
  %140 = and i32 %.115, -2049, !dbg !3744
  %141 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %139, i32 %.4, i32 %.1, i32 %140), !dbg !3745
  call void @llvm.dbg.value(metadata i32 %141, metadata !3585, metadata !DIExpression()), !dbg !3604
  %142 = icmp ne i32 %.13, 0, !dbg !3746
  br i1 %142, label %143, label %._crit_edge30, !dbg !3748

._crit_edge30:                                    ; preds = %138
  br label %169, !dbg !3748

143:                                              ; preds = %138
  %144 = and i32 %.115, 32, !dbg !3749
  %145 = icmp ne i32 %144, 0, !dbg !3751
  %146 = zext i1 %145 to i64, !dbg !3751
  %147 = select i1 %145, i32 69, i32 101, !dbg !3751
  %148 = trunc i32 %147 to i8, !dbg !3751
  %149 = add i32 %141, 1, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %149, metadata !3585, metadata !DIExpression()), !dbg !3604
  call arm_aapcscc void %0(i8 zeroext %148, i8* %1, i32 %141, i32 %3), !dbg !3753
  %150 = icmp slt i32 %.28, 0, !dbg !3754
  br i1 %150, label %151, label %153, !dbg !3755

151:                                              ; preds = %143
  %152 = sub nsw i32 0, %.28, !dbg !3756
  br label %154, !dbg !3755

153:                                              ; preds = %143
  br label %154, !dbg !3755

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ %.28, %153 ], !dbg !3755
  %156 = icmp slt i32 %.28, 0, !dbg !3757
  %157 = sub i32 %.13, 1, !dbg !3758
  %158 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %149, i32 %3, i32 %155, i1 zeroext %156, i32 10, i32 0, i32 %157, i32 5), !dbg !3759
  call void @llvm.dbg.value(metadata i32 %158, metadata !3585, metadata !DIExpression()), !dbg !3604
  %159 = and i32 %.115, 2, !dbg !3760
  %160 = icmp ne i32 %159, 0, !dbg !3760
  br i1 %160, label %161, label %._crit_edge31, !dbg !3762

._crit_edge31:                                    ; preds = %154
  br label %168, !dbg !3762

161:                                              ; preds = %154
  br label %162, !dbg !3763

162:                                              ; preds = %165, %161
  %.04 = phi i32 [ %158, %161 ], [ %166, %165 ], !dbg !3765
  call void @llvm.dbg.value(metadata i32 %.04, metadata !3585, metadata !DIExpression()), !dbg !3604
  %163 = sub i32 %.04, %2, !dbg !3766
  %164 = icmp ult i32 %163, %6, !dbg !3767
  br i1 %164, label %165, label %167, !dbg !3763

165:                                              ; preds = %162
  %166 = add i32 %.04, 1, !dbg !3768
  call void @llvm.dbg.value(metadata i32 %166, metadata !3585, metadata !DIExpression()), !dbg !3604
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.04, i32 %3), !dbg !3769
  br label %162, !dbg !3763, !llvm.loop !3770

167:                                              ; preds = %162
  %.04.lcssa = phi i32 [ %.04, %162 ], !dbg !3765
  call void @llvm.dbg.value(metadata i32 %.04.lcssa, metadata !3585, metadata !DIExpression()), !dbg !3604
  br label %168, !dbg !3772

168:                                              ; preds = %._crit_edge31, %167
  %.15 = phi i32 [ %.04.lcssa, %167 ], [ %158, %._crit_edge31 ], !dbg !3773
  call void @llvm.dbg.value(metadata i32 %.15, metadata !3585, metadata !DIExpression()), !dbg !3604
  br label %169, !dbg !3774

169:                                              ; preds = %._crit_edge30, %168
  %.2 = phi i32 [ %.15, %168 ], [ %141, %._crit_edge30 ], !dbg !3604
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3585, metadata !DIExpression()), !dbg !3604
  %170 = bitcast %union.anon* %9 to i8*, !dbg !3775
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170) #4, !dbg !3775
  br label %171

171:                                              ; preds = %169, %15
  %.0 = phi i32 [ %16, %15 ], [ %.2, %169 ], !dbg !3604
  ret i32 %.0, !dbg !3775
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @_strnlen_s(i8*, i32) #5 !dbg !3776 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3780, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 %1, metadata !3781, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8* %0, metadata !3782, metadata !DIExpression()), !dbg !3783
  br label %3, !dbg !3784

3:                                                ; preds = %13, %2
  %.01 = phi i32 [ %1, %2 ], [ %.1, %13 ]
  %.0 = phi i8* [ %0, %2 ], [ %14, %13 ], !dbg !3786
  call void @llvm.dbg.value(metadata i8* %.0, metadata !3782, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3781, metadata !DIExpression()), !dbg !3783
  %4 = load i8, i8* %.0, align 1, !dbg !3787, !tbaa !2161
  %5 = zext i8 %4 to i32, !dbg !3787
  %6 = icmp ne i32 %5, 0, !dbg !3787
  br i1 %6, label %7, label %._crit_edge, !dbg !3789

._crit_edge:                                      ; preds = %3
  br label %10, !dbg !3789

7:                                                ; preds = %3
  %8 = add i32 %.01, -1, !dbg !3790
  call void @llvm.dbg.value(metadata i32 %8, metadata !3781, metadata !DIExpression()), !dbg !3783
  %9 = icmp ne i32 %.01, 0, !dbg !3789
  br label %10

10:                                               ; preds = %._crit_edge, %7
  %.1 = phi i32 [ %8, %7 ], [ %.01, %._crit_edge ]
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %7 ], !dbg !3791
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3781, metadata !DIExpression()), !dbg !3783
  br i1 %11, label %12, label %15, !dbg !3792

12:                                               ; preds = %10
  br label %13, !dbg !3792

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !3793
  call void @llvm.dbg.value(metadata i8* %14, metadata !3782, metadata !DIExpression()), !dbg !3783
  br label %3, !dbg !3794, !llvm.loop !3795

15:                                               ; preds = %10
  %.0.lcssa = phi i8* [ %.0, %10 ], !dbg !3786
  call void @llvm.dbg.value(metadata i8* %.0.lcssa, metadata !3782, metadata !DIExpression()), !dbg !3783
  %16 = ptrtoint i8* %.0.lcssa to i32, !dbg !3797
  %17 = ptrtoint i8* %0 to i32, !dbg !3797
  %18 = sub i32 %16, %17, !dbg !3797
  ret i32 %18, !dbg !3798
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i32, i32) #0 !dbg !3799 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3803, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i8* %1, metadata !3804, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %2, metadata !3805, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %3, metadata !3806, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i8* %4, metadata !3807, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %5, metadata !3808, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %6, metadata !3809, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %7, metadata !3810, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %2, metadata !3811, metadata !DIExpression()), !dbg !3816
  %9 = and i32 %7, 2, !dbg !3817
  %10 = icmp ne i32 %9, 0, !dbg !3817
  br i1 %10, label %._crit_edge, label %11, !dbg !3818

._crit_edge:                                      ; preds = %8
  br label %23, !dbg !3818

11:                                               ; preds = %8
  %12 = and i32 %7, 1, !dbg !3819
  %13 = icmp ne i32 %12, 0, !dbg !3819
  br i1 %13, label %._crit_edge3, label %14, !dbg !3820

._crit_edge3:                                     ; preds = %11
  br label %23, !dbg !3820

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %5, metadata !3812, metadata !DIExpression()), !dbg !3821
  br label %15, !dbg !3822

15:                                               ; preds = %20, %14
  %.02 = phi i32 [ %2, %14 ], [ %19, %20 ]
  %.0 = phi i32 [ %5, %14 ], [ %21, %20 ], !dbg !3821
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3812, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3805, metadata !DIExpression()), !dbg !3816
  %16 = icmp ult i32 %.0, %6, !dbg !3823
  br i1 %16, label %18, label %17, !dbg !3825

17:                                               ; preds = %15
  %.02.lcssa = phi i32 [ %.02, %15 ]
  call void @llvm.dbg.value(metadata i32 %.02.lcssa, metadata !3805, metadata !DIExpression()), !dbg !3816
  br label %22

18:                                               ; preds = %15
  %19 = add i32 %.02, 1, !dbg !3826
  call void @llvm.dbg.value(metadata i32 %19, metadata !3805, metadata !DIExpression()), !dbg !3816
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.02, i32 %3), !dbg !3828
  br label %20, !dbg !3829

20:                                               ; preds = %18
  %21 = add i32 %.0, 1, !dbg !3830
  call void @llvm.dbg.value(metadata i32 %21, metadata !3812, metadata !DIExpression()), !dbg !3821
  br label %15, !dbg !3831, !llvm.loop !3832

22:                                               ; preds = %17
  br label %23, !dbg !3834

23:                                               ; preds = %._crit_edge3, %._crit_edge, %22
  %.1 = phi i32 [ %2, %._crit_edge ], [ %2, %._crit_edge3 ], [ %.02.lcssa, %22 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3805, metadata !DIExpression()), !dbg !3816
  br label %24, !dbg !3835

24:                                               ; preds = %26, %23
  %.2 = phi i32 [ %.1, %23 ], [ %30, %26 ]
  %.01 = phi i32 [ %5, %23 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3808, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3805, metadata !DIExpression()), !dbg !3816
  %25 = icmp ne i32 %.01, 0, !dbg !3835
  br i1 %25, label %26, label %31, !dbg !3835

26:                                               ; preds = %24
  %27 = add i32 %.01, -1, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %27, metadata !3808, metadata !DIExpression()), !dbg !3816
  %28 = getelementptr inbounds i8, i8* %4, i32 %27, !dbg !3838
  %29 = load i8, i8* %28, align 1, !dbg !3838, !tbaa !2161
  %30 = add i32 %.2, 1, !dbg !3839
  call void @llvm.dbg.value(metadata i32 %30, metadata !3805, metadata !DIExpression()), !dbg !3816
  call arm_aapcscc void %0(i8 zeroext %29, i8* %1, i32 %.2, i32 %3), !dbg !3840
  br label %24, !dbg !3835, !llvm.loop !3841

31:                                               ; preds = %24
  %.2.lcssa = phi i32 [ %.2, %24 ]
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !3805, metadata !DIExpression()), !dbg !3816
  %32 = and i32 %7, 2, !dbg !3843
  %33 = icmp ne i32 %32, 0, !dbg !3843
  br i1 %33, label %34, label %._crit_edge4, !dbg !3845

._crit_edge4:                                     ; preds = %31
  br label %41, !dbg !3845

34:                                               ; preds = %31
  br label %35, !dbg !3846

35:                                               ; preds = %38, %34
  %.3 = phi i32 [ %.2.lcssa, %34 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3805, metadata !DIExpression()), !dbg !3816
  %36 = sub i32 %.3, %2, !dbg !3848
  %37 = icmp ult i32 %36, %6, !dbg !3849
  br i1 %37, label %38, label %40, !dbg !3846

38:                                               ; preds = %35
  %39 = add i32 %.3, 1, !dbg !3850
  call void @llvm.dbg.value(metadata i32 %39, metadata !3805, metadata !DIExpression()), !dbg !3816
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.3, i32 %3), !dbg !3852
  br label %35, !dbg !3846, !llvm.loop !3853

40:                                               ; preds = %35
  %.3.lcssa = phi i32 [ %.3, %35 ]
  call void @llvm.dbg.value(metadata i32 %.3.lcssa, metadata !3805, metadata !DIExpression()), !dbg !3816
  br label %41, !dbg !3855

41:                                               ; preds = %._crit_edge4, %40
  %.4 = phi i32 [ %.3.lcssa, %40 ], [ %.2.lcssa, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3805, metadata !DIExpression()), !dbg !3816
  ret i32 %.4, !dbg !3856
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !3857 {
  call void @llvm.dbg.value(metadata void (i8, i8*, i32, i32)* %0, metadata !3861, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8* %1, metadata !3862, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %2, metadata !3863, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %3, metadata !3864, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8* %4, metadata !3865, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %5, metadata !3866, metadata !DIExpression()), !dbg !3872
  %12 = zext i1 %6 to i8
  call void @llvm.dbg.value(metadata i8 %12, metadata !3867, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %7, metadata !3868, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %8, metadata !3869, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %9, metadata !3870, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %10, metadata !3871, metadata !DIExpression()), !dbg !3872
  %13 = and i32 %10, 2, !dbg !3873
  %14 = icmp ne i32 %13, 0, !dbg !3873
  br i1 %14, label %._crit_edge, label %15, !dbg !3875

._crit_edge:                                      ; preds = %11
  br label %51, !dbg !3875

15:                                               ; preds = %11
  %16 = icmp ne i32 %9, 0, !dbg !3876
  br i1 %16, label %17, label %._crit_edge4, !dbg !3879

._crit_edge4:                                     ; preds = %15
  br label %27, !dbg !3879

17:                                               ; preds = %15
  %18 = and i32 %10, 1, !dbg !3880
  %19 = icmp ne i32 %18, 0, !dbg !3880
  br i1 %19, label %20, label %._crit_edge5, !dbg !3881

._crit_edge5:                                     ; preds = %17
  br label %27, !dbg !3881

20:                                               ; preds = %17
  %21 = trunc i8 %12 to i1, !dbg !3882
  br i1 %21, label %._crit_edge6, label %22, !dbg !3883

._crit_edge6:                                     ; preds = %20
  br label %25, !dbg !3883

22:                                               ; preds = %20
  %23 = and i32 %10, 12, !dbg !3884
  %24 = icmp ne i32 %23, 0, !dbg !3884
  br i1 %24, label %._crit_edge7, label %._crit_edge8, !dbg !3885

._crit_edge8:                                     ; preds = %22
  br label %27, !dbg !3885

._crit_edge7:                                     ; preds = %22
  br label %25, !dbg !3885

25:                                               ; preds = %._crit_edge7, %._crit_edge6
  %26 = add i32 %9, -1, !dbg !3886
  call void @llvm.dbg.value(metadata i32 %26, metadata !3870, metadata !DIExpression()), !dbg !3872
  br label %27, !dbg !3888

27:                                               ; preds = %._crit_edge8, %._crit_edge5, %._crit_edge4, %25
  %.0 = phi i32 [ %26, %25 ], [ %9, %._crit_edge8 ], [ %9, %._crit_edge5 ], [ %9, %._crit_edge4 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3870, metadata !DIExpression()), !dbg !3872
  br label %28, !dbg !3889

28:                                               ; preds = %34, %27
  %.01 = phi i32 [ %5, %27 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3866, metadata !DIExpression()), !dbg !3872
  %29 = icmp ult i32 %.01, %8, !dbg !3890
  br i1 %29, label %30, label %._crit_edge9, !dbg !3891

._crit_edge9:                                     ; preds = %28
  br label %32, !dbg !3891

30:                                               ; preds = %28
  %31 = icmp ult i32 %.01, 32, !dbg !3892
  br label %32

32:                                               ; preds = %._crit_edge9, %30
  %33 = phi i1 [ false, %._crit_edge9 ], [ %31, %30 ], !dbg !3893
  br i1 %33, label %34, label %37, !dbg !3889

34:                                               ; preds = %32
  %35 = add i32 %.01, 1, !dbg !3894
  call void @llvm.dbg.value(metadata i32 %35, metadata !3866, metadata !DIExpression()), !dbg !3872
  %36 = getelementptr inbounds i8, i8* %4, i32 %.01, !dbg !3896
  store i8 48, i8* %36, align 1, !dbg !3897, !tbaa !2161
  br label %28, !dbg !3889, !llvm.loop !3898

37:                                               ; preds = %32
  %.01.lcssa = phi i32 [ %.01, %32 ]
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %38, !dbg !3900

38:                                               ; preds = %47, %37
  %.12 = phi i32 [ %.01.lcssa, %37 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i32 %.12, metadata !3866, metadata !DIExpression()), !dbg !3872
  %39 = and i32 %10, 1, !dbg !3901
  %40 = icmp ne i32 %39, 0, !dbg !3901
  br i1 %40, label %41, label %._crit_edge10, !dbg !3902

._crit_edge10:                                    ; preds = %38
  br label %45, !dbg !3902

41:                                               ; preds = %38
  %42 = icmp ult i32 %.12, %.0, !dbg !3903
  br i1 %42, label %43, label %._crit_edge11, !dbg !3904

._crit_edge11:                                    ; preds = %41
  br label %45, !dbg !3904

43:                                               ; preds = %41
  %44 = icmp ult i32 %.12, 32, !dbg !3905
  br label %45

45:                                               ; preds = %._crit_edge11, %._crit_edge10, %43
  %46 = phi i1 [ false, %._crit_edge11 ], [ false, %._crit_edge10 ], [ %44, %43 ], !dbg !3893
  br i1 %46, label %47, label %50, !dbg !3900

47:                                               ; preds = %45
  %48 = add i32 %.12, 1, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %48, metadata !3866, metadata !DIExpression()), !dbg !3872
  %49 = getelementptr inbounds i8, i8* %4, i32 %.12, !dbg !3908
  store i8 48, i8* %49, align 1, !dbg !3909, !tbaa !2161
  br label %38, !dbg !3900, !llvm.loop !3910

50:                                               ; preds = %45
  %.12.lcssa = phi i32 [ %.12, %45 ]
  call void @llvm.dbg.value(metadata i32 %.12.lcssa, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %51, !dbg !3912

51:                                               ; preds = %._crit_edge, %50
  %.2 = phi i32 [ %5, %._crit_edge ], [ %.12.lcssa, %50 ]
  %.1 = phi i32 [ %9, %._crit_edge ], [ %.0, %50 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3870, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3866, metadata !DIExpression()), !dbg !3872
  %52 = and i32 %10, 16, !dbg !3913
  %53 = icmp ne i32 %52, 0, !dbg !3913
  br i1 %53, label %54, label %._crit_edge12, !dbg !3915

._crit_edge12:                                    ; preds = %51
  br label %106, !dbg !3915

54:                                               ; preds = %51
  %55 = and i32 %10, 1024, !dbg !3916
  %56 = icmp ne i32 %55, 0, !dbg !3916
  br i1 %56, label %._crit_edge13, label %57, !dbg !3919

._crit_edge13:                                    ; preds = %54
  br label %71, !dbg !3919

57:                                               ; preds = %54
  %58 = icmp ne i32 %.2, 0, !dbg !3920
  br i1 %58, label %59, label %._crit_edge14, !dbg !3921

._crit_edge14:                                    ; preds = %57
  br label %71, !dbg !3921

59:                                               ; preds = %57
  %60 = icmp eq i32 %.2, %8, !dbg !3922
  br i1 %60, label %._crit_edge15, label %61, !dbg !3923

._crit_edge15:                                    ; preds = %59
  br label %63, !dbg !3923

61:                                               ; preds = %59
  %62 = icmp eq i32 %.2, %.1, !dbg !3924
  br i1 %62, label %._crit_edge16, label %._crit_edge17, !dbg !3925

._crit_edge17:                                    ; preds = %61
  br label %71, !dbg !3925

._crit_edge16:                                    ; preds = %61
  br label %63, !dbg !3925

63:                                               ; preds = %._crit_edge16, %._crit_edge15
  %64 = add i32 %.2, -1, !dbg !3926
  call void @llvm.dbg.value(metadata i32 %64, metadata !3866, metadata !DIExpression()), !dbg !3872
  %65 = icmp ne i32 %64, 0, !dbg !3928
  br i1 %65, label %66, label %._crit_edge18, !dbg !3930

._crit_edge18:                                    ; preds = %63
  br label %70, !dbg !3930

66:                                               ; preds = %63
  %67 = icmp eq i32 %7, 16, !dbg !3931
  br i1 %67, label %68, label %._crit_edge19, !dbg !3932

._crit_edge19:                                    ; preds = %66
  br label %70, !dbg !3932

68:                                               ; preds = %66
  %69 = add i32 %64, -1, !dbg !3933
  call void @llvm.dbg.value(metadata i32 %69, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %70, !dbg !3935

70:                                               ; preds = %._crit_edge19, %._crit_edge18, %68
  %.3 = phi i32 [ %69, %68 ], [ %64, %._crit_edge19 ], [ %64, %._crit_edge18 ], !dbg !3936
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %71, !dbg !3937

71:                                               ; preds = %._crit_edge17, %._crit_edge14, %._crit_edge13, %70
  %.4 = phi i32 [ %.2, %._crit_edge13 ], [ %.3, %70 ], [ %.2, %._crit_edge17 ], [ %.2, %._crit_edge14 ]
  call void @llvm.dbg.value(metadata i32 %.4, metadata !3866, metadata !DIExpression()), !dbg !3872
  %72 = icmp eq i32 %7, 16, !dbg !3938
  br i1 %72, label %73, label %._crit_edge20, !dbg !3940

._crit_edge20:                                    ; preds = %71
  br label %81, !dbg !3940

73:                                               ; preds = %71
  %74 = and i32 %10, 32, !dbg !3941
  %75 = icmp ne i32 %74, 0, !dbg !3941
  br i1 %75, label %._crit_edge21, label %76, !dbg !3942

._crit_edge21:                                    ; preds = %73
  br label %81, !dbg !3942

76:                                               ; preds = %73
  %77 = icmp ult i32 %.4, 32, !dbg !3943
  br i1 %77, label %78, label %._crit_edge22, !dbg !3944

._crit_edge22:                                    ; preds = %76
  br label %81, !dbg !3944

78:                                               ; preds = %76
  %79 = add i32 %.4, 1, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %79, metadata !3866, metadata !DIExpression()), !dbg !3872
  %80 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3947
  store i8 120, i8* %80, align 1, !dbg !3948, !tbaa !2161
  br label %100, !dbg !3949

81:                                               ; preds = %._crit_edge22, %._crit_edge21, %._crit_edge20
  %82 = icmp eq i32 %7, 16, !dbg !3950
  br i1 %82, label %83, label %._crit_edge23, !dbg !3952

._crit_edge23:                                    ; preds = %81
  br label %91, !dbg !3952

83:                                               ; preds = %81
  %84 = and i32 %10, 32, !dbg !3953
  %85 = icmp ne i32 %84, 0, !dbg !3953
  br i1 %85, label %86, label %._crit_edge24, !dbg !3954

._crit_edge24:                                    ; preds = %83
  br label %91, !dbg !3954

86:                                               ; preds = %83
  %87 = icmp ult i32 %.4, 32, !dbg !3955
  br i1 %87, label %88, label %._crit_edge25, !dbg !3956

._crit_edge25:                                    ; preds = %86
  br label %91, !dbg !3956

88:                                               ; preds = %86
  %89 = add i32 %.4, 1, !dbg !3957
  call void @llvm.dbg.value(metadata i32 %89, metadata !3866, metadata !DIExpression()), !dbg !3872
  %90 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3959
  store i8 88, i8* %90, align 1, !dbg !3960, !tbaa !2161
  br label %99, !dbg !3961

91:                                               ; preds = %._crit_edge25, %._crit_edge24, %._crit_edge23
  %92 = icmp eq i32 %7, 2, !dbg !3962
  br i1 %92, label %93, label %._crit_edge26, !dbg !3964

._crit_edge26:                                    ; preds = %91
  br label %98, !dbg !3964

93:                                               ; preds = %91
  %94 = icmp ult i32 %.4, 32, !dbg !3965
  br i1 %94, label %95, label %._crit_edge27, !dbg !3966

._crit_edge27:                                    ; preds = %93
  br label %98, !dbg !3966

95:                                               ; preds = %93
  %96 = add i32 %.4, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i32 %96, metadata !3866, metadata !DIExpression()), !dbg !3872
  %97 = getelementptr inbounds i8, i8* %4, i32 %.4, !dbg !3969
  store i8 98, i8* %97, align 1, !dbg !3970, !tbaa !2161
  br label %98, !dbg !3971

98:                                               ; preds = %._crit_edge27, %._crit_edge26, %95
  %.5 = phi i32 [ %96, %95 ], [ %.4, %._crit_edge27 ], [ %.4, %._crit_edge26 ]
  call void @llvm.dbg.value(metadata i32 %.5, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %99

99:                                               ; preds = %98, %88
  %.6 = phi i32 [ %89, %88 ], [ %.5, %98 ], !dbg !3972
  call void @llvm.dbg.value(metadata i32 %.6, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %100

100:                                              ; preds = %99, %78
  %.7 = phi i32 [ %.6, %99 ], [ %79, %78 ], !dbg !3973
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3866, metadata !DIExpression()), !dbg !3872
  %101 = icmp ult i32 %.7, 32, !dbg !3974
  br i1 %101, label %102, label %._crit_edge28, !dbg !3976

._crit_edge28:                                    ; preds = %100
  br label %105, !dbg !3976

102:                                              ; preds = %100
  %103 = add i32 %.7, 1, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %103, metadata !3866, metadata !DIExpression()), !dbg !3872
  %104 = getelementptr inbounds i8, i8* %4, i32 %.7, !dbg !3979
  store i8 48, i8* %104, align 1, !dbg !3980, !tbaa !2161
  br label %105, !dbg !3981

105:                                              ; preds = %._crit_edge28, %102
  %.8 = phi i32 [ %103, %102 ], [ %.7, %._crit_edge28 ], !dbg !3982
  call void @llvm.dbg.value(metadata i32 %.8, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %106, !dbg !3983

106:                                              ; preds = %._crit_edge12, %105
  %.9 = phi i32 [ %.8, %105 ], [ %.2, %._crit_edge12 ]
  call void @llvm.dbg.value(metadata i32 %.9, metadata !3866, metadata !DIExpression()), !dbg !3872
  %107 = icmp ult i32 %.9, 32, !dbg !3984
  br i1 %107, label %108, label %._crit_edge29, !dbg !3986

._crit_edge29:                                    ; preds = %106
  br label %128, !dbg !3986

108:                                              ; preds = %106
  %109 = trunc i8 %12 to i1, !dbg !3987
  br i1 %109, label %110, label %113, !dbg !3990

110:                                              ; preds = %108
  %111 = add i32 %.9, 1, !dbg !3991
  call void @llvm.dbg.value(metadata i32 %111, metadata !3866, metadata !DIExpression()), !dbg !3872
  %112 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !3993
  store i8 45, i8* %112, align 1, !dbg !3994, !tbaa !2161
  br label %127, !dbg !3995

113:                                              ; preds = %108
  %114 = and i32 %10, 4, !dbg !3996
  %115 = icmp ne i32 %114, 0, !dbg !3996
  br i1 %115, label %116, label %119, !dbg !3998

116:                                              ; preds = %113
  %117 = add i32 %.9, 1, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %117, metadata !3866, metadata !DIExpression()), !dbg !3872
  %118 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !4001
  store i8 43, i8* %118, align 1, !dbg !4002, !tbaa !2161
  br label %126, !dbg !4003

119:                                              ; preds = %113
  %120 = and i32 %10, 8, !dbg !4004
  %121 = icmp ne i32 %120, 0, !dbg !4004
  br i1 %121, label %122, label %._crit_edge30, !dbg !4006

._crit_edge30:                                    ; preds = %119
  br label %125, !dbg !4006

122:                                              ; preds = %119
  %123 = add i32 %.9, 1, !dbg !4007
  call void @llvm.dbg.value(metadata i32 %123, metadata !3866, metadata !DIExpression()), !dbg !3872
  %124 = getelementptr inbounds i8, i8* %4, i32 %.9, !dbg !4009
  store i8 32, i8* %124, align 1, !dbg !4010, !tbaa !2161
  br label %125, !dbg !4011

125:                                              ; preds = %._crit_edge30, %122
  %.10 = phi i32 [ %123, %122 ], [ %.9, %._crit_edge30 ], !dbg !3872
  call void @llvm.dbg.value(metadata i32 %.10, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %126

126:                                              ; preds = %125, %116
  %.11 = phi i32 [ %117, %116 ], [ %.10, %125 ], !dbg !4012
  call void @llvm.dbg.value(metadata i32 %.11, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %127

127:                                              ; preds = %126, %110
  %.123 = phi i32 [ %111, %110 ], [ %.11, %126 ], !dbg !4013
  call void @llvm.dbg.value(metadata i32 %.123, metadata !3866, metadata !DIExpression()), !dbg !3872
  br label %128, !dbg !4014

128:                                              ; preds = %._crit_edge29, %127
  %.13 = phi i32 [ %.123, %127 ], [ %.9, %._crit_edge29 ], !dbg !3872
  call void @llvm.dbg.value(metadata i32 %.13, metadata !3866, metadata !DIExpression()), !dbg !3872
  %129 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %.13, i32 %.1, i32 %10), !dbg !4015
  ret i32 %129, !dbg !4016
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @sprintf_(i8*, i8*, ...) #0 !dbg !4017 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4021, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8* %1, metadata !4022, metadata !DIExpression()), !dbg !4025
  %4 = bitcast %struct.__va_list* %3 to i8*, !dbg !4026
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !4026
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4023, metadata !DIExpression()), !dbg !4027
  %5 = bitcast %struct.__va_list* %3 to i8*, !dbg !4028
  call void @llvm.va_start(i8* %5), !dbg !4028
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4029
  %7 = bitcast i8** %6 to [1 x i32]*, !dbg !4029
  %8 = load [1 x i32], [1 x i32]* %7, align 4, !dbg !4029
  %9 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 -1, i8* %1, [1 x i32] %8), !dbg !4029
  call void @llvm.dbg.value(metadata i32 %9, metadata !4024, metadata !DIExpression()), !dbg !4025
  %10 = bitcast %struct.__va_list* %3 to i8*, !dbg !4030
  call void @llvm.va_end(i8* %10), !dbg !4030
  %11 = bitcast %struct.__va_list* %3 to i8*, !dbg !4031
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !4031
  ret i32 %9, !dbg !4032
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_buffer(i8 zeroext, i8*, i32, i32) #5 !dbg !4033 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4035, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i8* %1, metadata !4036, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i32 %2, metadata !4037, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i32 %3, metadata !4038, metadata !DIExpression()), !dbg !4039
  %5 = icmp ult i32 %2, %3, !dbg !4040
  br i1 %5, label %6, label %._crit_edge, !dbg !4042

._crit_edge:                                      ; preds = %4
  br label %8, !dbg !4042

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %1, i32 %2, !dbg !4043
  store i8 %0, i8* %7, align 1, !dbg !4045, !tbaa !2161
  br label %8, !dbg !4046

8:                                                ; preds = %._crit_edge, %6
  ret void, !dbg !4047
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @snprintf_(i8*, i32, i8*, ...) #0 !dbg !4048 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4052, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i32 %1, metadata !4053, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i8* %2, metadata !4054, metadata !DIExpression()), !dbg !4057
  %5 = bitcast %struct.__va_list* %4 to i8*, !dbg !4058
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !4058
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4055, metadata !DIExpression()), !dbg !4059
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4060
  call void @llvm.va_start(i8* %6), !dbg !4060
  %7 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4061
  %8 = bitcast i8** %7 to [1 x i32]*, !dbg !4061
  %9 = load [1 x i32], [1 x i32]* %8, align 4, !dbg !4061
  %10 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %9), !dbg !4061
  call void @llvm.dbg.value(metadata i32 %10, metadata !4056, metadata !DIExpression()), !dbg !4057
  %11 = bitcast %struct.__va_list* %4 to i8*, !dbg !4062
  call void @llvm.va_end(i8* %11), !dbg !4062
  %12 = bitcast %struct.__va_list* %4 to i8*, !dbg !4063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !4063
  ret i32 %10, !dbg !4064
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vprintf_(i8*, [1 x i32]) #0 !dbg !4065 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %6 = bitcast i8** %5 to [1 x i32]*
  store [1 x i32] %1, [1 x i32]* %6, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4069, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !4070, metadata !DIExpression()), !dbg !4073
  %7 = bitcast [1 x i8]* %4 to i8*, !dbg !4074
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #4, !dbg !4074
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !4071, metadata !DIExpression()), !dbg !4075
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !4076
  %9 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !4077
  %10 = bitcast i8** %9 to [1 x i32]*, !dbg !4077
  %11 = load [1 x i32], [1 x i32]* %10, align 4, !dbg !4077
  %12 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %8, i32 -1, i8* %0, [1 x i32] %11), !dbg !4077
  %13 = bitcast [1 x i8]* %4 to i8*, !dbg !4078
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #4, !dbg !4078
  ret i32 %12, !dbg !4079
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vsnprintf_(i8*, i32, i8*, [1 x i32]) #0 !dbg !4080 {
  %5 = alloca %struct.__va_list, align 4
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0
  %7 = bitcast i8** %6 to [1 x i32]*
  store [1 x i32] %3, [1 x i32]* %7, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4084, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i32 %1, metadata !4085, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i8* %2, metadata !4086, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.declare(metadata %struct.__va_list* %5, metadata !4087, metadata !DIExpression()), !dbg !4089
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0, !dbg !4090
  %9 = bitcast i8** %8 to [1 x i32]*, !dbg !4090
  %10 = load [1 x i32], [1 x i32]* %9, align 4, !dbg !4090
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %10), !dbg !4090
  ret i32 %11, !dbg !4091
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @fctprintf(void (i8, i8*)*, i8*, i8*, ...) #0 !dbg !4092 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.out_fct_wrap_type, align 4
  call void @llvm.dbg.value(metadata void (i8, i8*)* %0, metadata !4096, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8* %1, metadata !4097, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8* %2, metadata !4098, metadata !DIExpression()), !dbg !4103
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !4104
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4099, metadata !DIExpression()), !dbg !4105
  %7 = bitcast %struct.__va_list* %4 to i8*, !dbg !4106
  call void @llvm.va_start(i8* %7), !dbg !4106
  %8 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #4, !dbg !4107
  call void @llvm.dbg.declare(metadata %struct.out_fct_wrap_type* %5, metadata !4100, metadata !DIExpression()), !dbg !4108
  %9 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 0, !dbg !4109
  store void (i8, i8*)* %0, void (i8, i8*)** %9, align 4, !dbg !4109, !tbaa !4110
  %10 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 1, !dbg !4109
  store i8* %1, i8** %10, align 4, !dbg !4109, !tbaa !4112
  %11 = ptrtoint %struct.out_fct_wrap_type* %5 to i32, !dbg !4113
  %12 = inttoptr i32 %11 to i8*, !dbg !4114
  %13 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0, !dbg !4115
  %14 = bitcast i8** %13 to [1 x i32]*, !dbg !4115
  %15 = load [1 x i32], [1 x i32]* %14, align 4, !dbg !4115
  %16 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_fct, i8* %12, i32 -1, i8* %2, [1 x i32] %15), !dbg !4115
  call void @llvm.dbg.value(metadata i32 %16, metadata !4102, metadata !DIExpression()), !dbg !4103
  %17 = bitcast %struct.__va_list* %4 to i8*, !dbg !4116
  call void @llvm.va_end(i8* %17), !dbg !4116
  %18 = bitcast %struct.out_fct_wrap_type* %5 to i8*, !dbg !4117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #4, !dbg !4117
  %19 = bitcast %struct.__va_list* %4 to i8*, !dbg !4117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !4117
  ret i32 %16, !dbg !4118
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_fct(i8 zeroext, i8*, i32, i32) #5 !dbg !4119 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4121, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8* %1, metadata !4122, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 %2, metadata !4123, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 %3, metadata !4124, metadata !DIExpression()), !dbg !4125
  %5 = icmp ne i8 %0, 0, !dbg !4126
  br i1 %5, label %6, label %._crit_edge, !dbg !4128

._crit_edge:                                      ; preds = %4
  br label %13, !dbg !4128

6:                                                ; preds = %4
  %7 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4129
  %8 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %7, i32 0, i32 0, !dbg !4131
  %9 = load void (i8, i8*)*, void (i8, i8*)** %8, align 4, !dbg !4131, !tbaa !4110
  %10 = bitcast i8* %1 to %struct.out_fct_wrap_type*, !dbg !4132
  %11 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %10, i32 0, i32 1, !dbg !4133
  %12 = load i8*, i8** %11, align 4, !dbg !4133, !tbaa !4112
  call arm_aapcscc void %9(i8 zeroext %0, i8* %12), !dbg !4134
  br label %13, !dbg !4135

13:                                               ; preds = %._crit_edge, %6
  ret void, !dbg !4136
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @putc(i32, i8*) #3 !dbg !4137 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4, !tbaa !1046
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4142, metadata !DIExpression()), !dbg !4144
  store i8* %1, i8** %4, align 4, !tbaa !334
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4143, metadata !DIExpression()), !dbg !4145
  %5 = load i8*, i8** %4, align 4, !dbg !4146, !tbaa !334
  %6 = load i32, i32* %3, align 4, !dbg !4147, !tbaa !1046
  ret i32 %6, !dbg !4148
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_putchar(i8 zeroext) #3 !dbg !4149 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !2161
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4153, metadata !DIExpression()), !dbg !4154
  %3 = load i8, i8* %2, align 1, !dbg !4155, !tbaa !2161
  %4 = zext i8 %3 to i32, !dbg !4155
  %5 = call arm_aapcscc i32 @putc(i32 %4, i8* %2), !dbg !4156
  ret void, !dbg !4157
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #6 !dbg !4158 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #4, !dbg !4159, !srcloc !4160
  call void asm sideeffect "    ldr    sp, [r1]", ""() #4, !dbg !4161, !srcloc !4162
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #4, !dbg !4163, !srcloc !4164
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #4, !dbg !4165, !srcloc !4166
  call void asm sideeffect "    bl   main\0A", ""() #4, !dbg !4167, !srcloc !4168
  call void asm sideeffect "    bkpt     ", ""() #4, !dbg !4169, !srcloc !4170
  unreachable, !dbg !4171
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @NMI_Handler() #0 !dbg !4172 {
  br label %1, !dbg !4173

1:                                                ; preds = %0, %1
  br label %1, !dbg !4173, !llvm.loop !4174
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @HardFault_Handler() #0 !dbg !4176 {
  br label %1, !dbg !4177

1:                                                ; preds = %0, %1
  br label %1, !dbg !4177, !llvm.loop !4178
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 !dbg !4180 {
  br label %1, !dbg !4181

1:                                                ; preds = %0, %1
  br label %1, !dbg !4181, !llvm.loop !4182
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
!1138 = !DILocation(line: 184, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !74, line: 184, column: 1)
!1140 = !DILocation(line: 184, column: 15, scope: !1139)
!1141 = !DILocation(line: 184, column: 1, scope: !1136)
!1142 = !DILocation(line: 186, column: 30, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !74, line: 185, column: 1)
!1144 = !DILocation(line: 186, column: 47, scope: !1143)
!1145 = !DILocation(line: 186, column: 49, scope: !1143)
!1146 = !DILocation(line: 186, column: 51, scope: !1143)
!1147 = !DILocation(line: 186, column: 45, scope: !1143)
!1148 = !DILocation(line: 186, column: 5, scope: !1143)
!1149 = !DILocation(line: 186, column: 16, scope: !1143)
!1150 = !DILocation(line: 186, column: 28, scope: !1143)
!1151 = !DILocation(line: 187, column: 5, scope: !1143)
!1152 = !DILocation(line: 187, column: 16, scope: !1143)
!1153 = !DILocation(line: 187, column: 28, scope: !1143)
!1154 = !DILocation(line: 188, column: 30, scope: !1143)
!1155 = !DILocation(line: 188, column: 41, scope: !1143)
!1156 = !DILocation(line: 188, column: 5, scope: !1143)
!1157 = !DILocation(line: 188, column: 16, scope: !1143)
!1158 = !DILocation(line: 188, column: 28, scope: !1143)
!1159 = !DILocation(line: 189, column: 30, scope: !1143)
!1160 = !DILocation(line: 189, column: 41, scope: !1143)
!1161 = !DILocation(line: 189, column: 5, scope: !1143)
!1162 = !DILocation(line: 189, column: 16, scope: !1143)
!1163 = !DILocation(line: 189, column: 28, scope: !1143)
!1164 = !DILocation(line: 190, column: 30, scope: !1143)
!1165 = !DILocation(line: 190, column: 41, scope: !1143)
!1166 = !DILocation(line: 190, column: 5, scope: !1143)
!1167 = !DILocation(line: 190, column: 16, scope: !1143)
!1168 = !DILocation(line: 190, column: 28, scope: !1143)
!1169 = !DILocation(line: 191, column: 5, scope: !1143)
!1170 = !DILocation(line: 191, column: 16, scope: !1143)
!1171 = !DILocation(line: 191, column: 28, scope: !1143)
!1172 = !{!327, !295, i64 64}
!1173 = !DILocation(line: 192, column: 30, scope: !1143)
!1174 = !DILocation(line: 192, column: 41, scope: !1143)
!1175 = !DILocation(line: 192, column: 5, scope: !1143)
!1176 = !DILocation(line: 192, column: 16, scope: !1143)
!1177 = !DILocation(line: 192, column: 28, scope: !1143)
!1178 = !DILocation(line: 193, column: 1, scope: !1143)
!1179 = !DILocation(line: 184, column: 31, scope: !1139)
!1180 = !DILocation(line: 184, column: 1, scope: !1139)
!1181 = distinct !{!1181, !1141, !1182}
!1182 = !DILocation(line: 193, column: 1, scope: !1136)
!1183 = !DILocation(line: 199, column: 10, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 199, column: 5)
!1185 = !DILocation(line: 0, scope: !1184)
!1186 = !DILocation(line: 199, column: 17, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !74, line: 199, column: 5)
!1188 = !DILocation(line: 199, column: 19, scope: !1187)
!1189 = !DILocation(line: 199, column: 5, scope: !1184)
!1190 = !DILocation(line: 201, column: 19, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !74, line: 201, column: 13)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !74, line: 200, column: 5)
!1193 = !DILocation(line: 201, column: 16, scope: !1191)
!1194 = !DILocation(line: 201, column: 32, scope: !1191)
!1195 = !DILocation(line: 201, column: 43, scope: !1191)
!1196 = !DILocation(line: 201, column: 30, scope: !1191)
!1197 = !DILocation(line: 201, column: 13, scope: !1192)
!1198 = !DILocation(line: 202, column: 27, scope: !1191)
!1199 = !DILocation(line: 202, column: 13, scope: !1191)
!1200 = !DILocation(line: 203, column: 5, scope: !1192)
!1201 = !DILocation(line: 199, column: 38, scope: !1187)
!1202 = !DILocation(line: 199, column: 5, scope: !1187)
!1203 = distinct !{!1203, !1189, !1204}
!1204 = !DILocation(line: 203, column: 5, scope: !1184)
!1205 = !DILocation(line: 204, column: 10, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 204, column: 5)
!1207 = !DILocation(line: 0, scope: !1206)
!1208 = !DILocation(line: 204, column: 17, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !74, line: 204, column: 5)
!1210 = !DILocation(line: 204, column: 19, scope: !1209)
!1211 = !DILocation(line: 204, column: 5, scope: !1206)
!1212 = !DILocation(line: 205, column: 27, scope: !1209)
!1213 = !DILocation(line: 205, column: 38, scope: !1209)
!1214 = !DILocation(line: 205, column: 45, scope: !1209)
!1215 = !DILocation(line: 205, column: 43, scope: !1209)
!1216 = !DILocation(line: 205, column: 9, scope: !1209)
!1217 = !DILocation(line: 205, column: 20, scope: !1209)
!1218 = !DILocation(line: 205, column: 25, scope: !1209)
!1219 = !DILocation(line: 204, column: 35, scope: !1209)
!1220 = !DILocation(line: 204, column: 5, scope: !1209)
!1221 = distinct !{!1221, !1211, !1222}
!1222 = !DILocation(line: 205, column: 45, scope: !1206)
!1223 = !DILocation(line: 207, column: 10, scope: !1041)
!1224 = !DILocation(line: 0, scope: !1041)
!1225 = !DILocation(line: 207, column: 17, scope: !1040)
!1226 = !DILocation(line: 207, column: 19, scope: !1040)
!1227 = !DILocation(line: 207, column: 5, scope: !1041)
!1228 = !DILocation(line: 210, column: 19, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1039, file: !74, line: 210, column: 13)
!1230 = !DILocation(line: 210, column: 16, scope: !1229)
!1231 = !DILocation(line: 210, column: 32, scope: !1229)
!1232 = !DILocation(line: 210, column: 43, scope: !1229)
!1233 = !DILocation(line: 210, column: 30, scope: !1229)
!1234 = !DILocation(line: 210, column: 13, scope: !1039)
!1235 = !DILocation(line: 0, scope: !1039)
!1236 = !DILocation(line: 212, column: 18, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !74, line: 212, column: 13)
!1238 = distinct !DILexicalBlock(scope: !1229, file: !74, line: 211, column: 9)
!1239 = !DILocation(line: 0, scope: !1237)
!1240 = !DILocation(line: 212, column: 31, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !74, line: 212, column: 13)
!1242 = !DILocation(line: 212, column: 13, scope: !1237)
!1243 = !DILocation(line: 214, column: 32, scope: !1241)
!1244 = !DILocation(line: 214, column: 45, scope: !1241)
!1245 = !DILocation(line: 214, column: 60, scope: !1241)
!1246 = !DILocation(line: 214, column: 71, scope: !1241)
!1247 = !DILocation(line: 214, column: 78, scope: !1241)
!1248 = !DILocation(line: 214, column: 76, scope: !1241)
!1249 = !DILocation(line: 214, column: 58, scope: !1241)
!1250 = !DILocation(line: 213, column: 17, scope: !1241)
!1251 = !DILocation(line: 213, column: 30, scope: !1241)
!1252 = !DILocation(line: 213, column: 39, scope: !1241)
!1253 = !DILocation(line: 213, column: 41, scope: !1241)
!1254 = !DILocation(line: 214, column: 21, scope: !1241)
!1255 = !DILocation(line: 212, column: 49, scope: !1241)
!1256 = !DILocation(line: 212, column: 13, scope: !1241)
!1257 = distinct !{!1257, !1242, !1258}
!1258 = !DILocation(line: 214, column: 78, scope: !1237)
!1259 = !DILocation(line: 215, column: 14, scope: !1238)
!1260 = !DILocation(line: 216, column: 9, scope: !1238)
!1261 = !DILocation(line: 217, column: 5, scope: !1039)
!1262 = !DILocation(line: 207, column: 38, scope: !1040)
!1263 = !DILocation(line: 207, column: 5, scope: !1040)
!1264 = distinct !{!1264, !1227, !1265}
!1265 = !DILocation(line: 217, column: 5, scope: !1041)
!1266 = !DILocation(line: 219, column: 10, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 219, column: 5)
!1268 = !DILocation(line: 0, scope: !1267)
!1269 = !DILocation(line: 219, column: 17, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !74, line: 219, column: 5)
!1271 = !DILocation(line: 219, column: 19, scope: !1270)
!1272 = !DILocation(line: 219, column: 5, scope: !1267)
!1273 = !DILocation(line: 221, column: 13, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !74, line: 221, column: 13)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !74, line: 220, column: 5)
!1276 = !DILocation(line: 221, column: 24, scope: !1274)
!1277 = !DILocation(line: 221, column: 30, scope: !1274)
!1278 = !DILocation(line: 221, column: 13, scope: !1275)
!1279 = !DILocation(line: 224, column: 17, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !74, line: 222, column: 9)
!1281 = !DILocation(line: 224, column: 28, scope: !1280)
!1282 = !DILocation(line: 224, column: 34, scope: !1280)
!1283 = !DILocation(line: 224, column: 45, scope: !1280)
!1284 = !DILocation(line: 224, column: 58, scope: !1280)
!1285 = !DILocation(line: 224, column: 69, scope: !1280)
!1286 = !DILocation(line: 223, column: 31, scope: !1280)
!1287 = !DILocation(line: 223, column: 13, scope: !1280)
!1288 = !DILocation(line: 223, column: 24, scope: !1280)
!1289 = !DILocation(line: 223, column: 29, scope: !1280)
!1290 = !DILocation(line: 225, column: 9, scope: !1280)
!1291 = !DILocation(line: 226, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1275, file: !74, line: 226, column: 13)
!1293 = !DILocation(line: 226, column: 24, scope: !1292)
!1294 = !DILocation(line: 226, column: 30, scope: !1292)
!1295 = !DILocation(line: 226, column: 13, scope: !1275)
!1296 = !DILocation(line: 228, column: 30, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !74, line: 227, column: 9)
!1298 = !DILocation(line: 228, column: 41, scope: !1297)
!1299 = !DILocation(line: 229, column: 30, scope: !1297)
!1300 = !DILocation(line: 229, column: 41, scope: !1297)
!1301 = !DILocation(line: 230, column: 38, scope: !1297)
!1302 = !DILocation(line: 230, column: 49, scope: !1297)
!1303 = !DILocation(line: 230, column: 30, scope: !1297)
!1304 = !DILocation(line: 231, column: 46, scope: !1297)
!1305 = !DILocation(line: 231, column: 57, scope: !1297)
!1306 = !DILocation(line: 231, column: 38, scope: !1297)
!1307 = !DILocation(line: 231, column: 64, scope: !1297)
!1308 = !DILocation(line: 231, column: 34, scope: !1297)
!1309 = !DILocation(line: 232, column: 32, scope: !1297)
!1310 = !DILocation(line: 232, column: 43, scope: !1297)
!1311 = !DILocation(line: 228, column: 13, scope: !1297)
!1312 = !DILocation(line: 233, column: 9, scope: !1297)
!1313 = !DILocation(line: 234, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1275, file: !74, line: 234, column: 13)
!1315 = !DILocation(line: 234, column: 24, scope: !1314)
!1316 = !DILocation(line: 234, column: 30, scope: !1314)
!1317 = !DILocation(line: 234, column: 13, scope: !1275)
!1318 = !DILocation(line: 237, column: 17, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !74, line: 235, column: 9)
!1320 = !DILocation(line: 237, column: 28, scope: !1319)
!1321 = !DILocation(line: 237, column: 34, scope: !1319)
!1322 = !DILocation(line: 237, column: 45, scope: !1319)
!1323 = !DILocation(line: 237, column: 52, scope: !1319)
!1324 = !DILocation(line: 237, column: 63, scope: !1319)
!1325 = !DILocation(line: 236, column: 13, scope: !1319)
!1326 = !DILocation(line: 238, column: 9, scope: !1319)
!1327 = !DILocation(line: 239, column: 5, scope: !1275)
!1328 = !DILocation(line: 219, column: 35, scope: !1270)
!1329 = !DILocation(line: 219, column: 5, scope: !1270)
!1330 = distinct !{!1330, !1272, !1331}
!1331 = !DILocation(line: 239, column: 5, scope: !1267)
!1332 = !DILocation(line: 242, column: 9, scope: !1044)
!1333 = !DILocation(line: 242, column: 20, scope: !1044)
!1334 = !DILocation(line: 242, column: 31, scope: !1044)
!1335 = !DILocation(line: 242, column: 9, scope: !1016)
!1336 = !DILocation(line: 0, scope: !1043)
!1337 = !DILocation(line: 246, column: 9, scope: !1043)
!1338 = !DILocation(line: 246, column: 20, scope: !1043)
!1339 = !DILocation(line: 246, column: 31, scope: !1043)
!1340 = !DILocation(line: 247, column: 9, scope: !1043)
!1341 = !DILocation(line: 247, column: 28, scope: !1043)
!1342 = !DILocation(line: 249, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1043, file: !74, line: 248, column: 9)
!1344 = !DILocation(line: 249, column: 24, scope: !1343)
!1345 = !DILocation(line: 249, column: 35, scope: !1343)
!1346 = !DILocation(line: 250, column: 13, scope: !1343)
!1347 = !DILocation(line: 251, column: 22, scope: !1343)
!1348 = !DILocation(line: 251, column: 21, scope: !1343)
!1349 = !DILocation(line: 251, column: 13, scope: !1343)
!1350 = !DILocation(line: 252, column: 13, scope: !1343)
!1351 = !DILocation(line: 253, column: 40, scope: !1343)
!1352 = !DILocation(line: 253, column: 27, scope: !1343)
!1353 = distinct !{!1353, !1340, !1354}
!1354 = !DILocation(line: 254, column: 9, scope: !1043)
!1355 = !DILocation(line: 257, column: 19, scope: !1043)
!1356 = !DILocation(line: 258, column: 21, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1043, file: !74, line: 258, column: 13)
!1358 = !DILocation(line: 258, column: 13, scope: !1043)
!1359 = !DILocation(line: 261, column: 13, scope: !1357)
!1360 = !DILocation(line: 262, column: 41, scope: !1043)
!1361 = !DILocation(line: 262, column: 36, scope: !1043)
!1362 = !DILocation(line: 262, column: 9, scope: !1043)
!1363 = !DILocation(line: 262, column: 20, scope: !1043)
!1364 = !DILocation(line: 262, column: 31, scope: !1043)
!1365 = !DILocation(line: 263, column: 5, scope: !1043)
!1366 = !DILocation(line: 265, column: 5, scope: !1016)
!1367 = !DILocation(line: 282, column: 14, scope: !1016)
!1368 = !DILocation(line: 282, column: 13, scope: !1016)
!1369 = !DILocation(line: 282, column: 5, scope: !1016)
!1370 = !DILocation(line: 284, column: 5, scope: !1016)
!1371 = !DILocation(line: 285, column: 18, scope: !1016)
!1372 = !DILocation(line: 287, column: 21, scope: !1016)
!1373 = !DILocation(line: 287, column: 32, scope: !1016)
!1374 = !DILocation(line: 287, column: 15, scope: !1016)
!1375 = !DILocation(line: 288, column: 21, scope: !1016)
!1376 = !DILocation(line: 288, column: 32, scope: !1016)
!1377 = !DILocation(line: 288, column: 15, scope: !1016)
!1378 = !DILocation(line: 289, column: 21, scope: !1016)
!1379 = !DILocation(line: 289, column: 32, scope: !1016)
!1380 = !DILocation(line: 289, column: 15, scope: !1016)
!1381 = !DILocation(line: 290, column: 21, scope: !1016)
!1382 = !DILocation(line: 290, column: 32, scope: !1016)
!1383 = !DILocation(line: 290, column: 15, scope: !1016)
!1384 = !DILocation(line: 292, column: 13, scope: !1016)
!1385 = !DILocation(line: 296, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 293, column: 5)
!1387 = !DILocation(line: 297, column: 13, scope: !1386)
!1388 = !DILocation(line: 301, column: 13, scope: !1386)
!1389 = !DILocation(line: 302, column: 13, scope: !1386)
!1390 = !DILocation(line: 306, column: 13, scope: !1386)
!1391 = !DILocation(line: 307, column: 13, scope: !1386)
!1392 = !DILocation(line: 310, column: 13, scope: !1386)
!1393 = !DILocation(line: 311, column: 13, scope: !1386)
!1394 = !DILocation(line: 315, column: 13, scope: !1386)
!1395 = !DILocation(line: 316, column: 13, scope: !1386)
!1396 = !DILocation(line: 319, column: 13, scope: !1386)
!1397 = !DILocation(line: 321, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 321, column: 9)
!1399 = !DILocation(line: 321, column: 18, scope: !1398)
!1400 = !DILocation(line: 321, column: 9, scope: !1016)
!1401 = !DILocation(line: 323, column: 14, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !74, line: 323, column: 9)
!1403 = distinct !DILexicalBlock(scope: !1398, file: !74, line: 322, column: 5)
!1404 = !DILocation(line: 0, scope: !1402)
!1405 = !DILocation(line: 323, column: 21, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !74, line: 323, column: 9)
!1407 = !DILocation(line: 323, column: 25, scope: !1406)
!1408 = !DILocation(line: 323, column: 23, scope: !1406)
!1409 = !DILocation(line: 323, column: 9, scope: !1402)
!1410 = !DILocation(line: 325, column: 13, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !74, line: 324, column: 9)
!1412 = !DILocation(line: 325, column: 24, scope: !1411)
!1413 = !DILocation(line: 325, column: 28, scope: !1411)
!1414 = !DILocation(line: 326, column: 18, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !74, line: 326, column: 17)
!1416 = !DILocation(line: 326, column: 29, scope: !1415)
!1417 = !DILocation(line: 326, column: 35, scope: !1415)
!1418 = !DILocation(line: 327, column: 17, scope: !1415)
!1419 = !DILocation(line: 327, column: 21, scope: !1415)
!1420 = !DILocation(line: 327, column: 32, scope: !1415)
!1421 = !DILocation(line: 327, column: 43, scope: !1415)
!1422 = !DILocation(line: 327, column: 40, scope: !1415)
!1423 = !DILocation(line: 326, column: 17, scope: !1411)
!1424 = !DILocation(line: 330, column: 27, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1415, file: !74, line: 328, column: 13)
!1426 = !DILocation(line: 331, column: 27, scope: !1425)
!1427 = !DILocation(line: 331, column: 38, scope: !1425)
!1428 = !DILocation(line: 332, column: 27, scope: !1425)
!1429 = !DILocation(line: 329, column: 17, scope: !1425)
!1430 = !DILocation(line: 333, column: 17, scope: !1425)
!1431 = !DILocation(line: 333, column: 28, scope: !1425)
!1432 = !DILocation(line: 333, column: 31, scope: !1425)
!1433 = !DILocation(line: 334, column: 13, scope: !1425)
!1434 = !DILocation(line: 335, column: 18, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1411, file: !74, line: 335, column: 17)
!1436 = !DILocation(line: 335, column: 29, scope: !1435)
!1437 = !DILocation(line: 335, column: 35, scope: !1435)
!1438 = !DILocation(line: 336, column: 17, scope: !1435)
!1439 = !DILocation(line: 336, column: 21, scope: !1435)
!1440 = !DILocation(line: 336, column: 32, scope: !1435)
!1441 = !DILocation(line: 336, column: 45, scope: !1435)
!1442 = !DILocation(line: 336, column: 42, scope: !1435)
!1443 = !DILocation(line: 335, column: 17, scope: !1411)
!1444 = !DILocation(line: 339, column: 27, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !74, line: 337, column: 13)
!1446 = !DILocation(line: 340, column: 27, scope: !1445)
!1447 = !DILocation(line: 340, column: 38, scope: !1445)
!1448 = !DILocation(line: 341, column: 27, scope: !1445)
!1449 = !DILocation(line: 338, column: 17, scope: !1445)
!1450 = !DILocation(line: 342, column: 17, scope: !1445)
!1451 = !DILocation(line: 342, column: 28, scope: !1445)
!1452 = !DILocation(line: 342, column: 31, scope: !1445)
!1453 = !DILocation(line: 343, column: 13, scope: !1445)
!1454 = !DILocation(line: 344, column: 18, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1411, file: !74, line: 344, column: 17)
!1456 = !DILocation(line: 344, column: 29, scope: !1455)
!1457 = !DILocation(line: 344, column: 35, scope: !1455)
!1458 = !DILocation(line: 345, column: 17, scope: !1455)
!1459 = !DILocation(line: 345, column: 21, scope: !1455)
!1460 = !DILocation(line: 345, column: 32, scope: !1455)
!1461 = !DILocation(line: 345, column: 44, scope: !1455)
!1462 = !DILocation(line: 345, column: 41, scope: !1455)
!1463 = !DILocation(line: 344, column: 17, scope: !1411)
!1464 = !DILocation(line: 348, column: 27, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1455, file: !74, line: 346, column: 13)
!1466 = !DILocation(line: 349, column: 27, scope: !1465)
!1467 = !DILocation(line: 349, column: 38, scope: !1465)
!1468 = !DILocation(line: 350, column: 27, scope: !1465)
!1469 = !DILocation(line: 347, column: 17, scope: !1465)
!1470 = !DILocation(line: 351, column: 17, scope: !1465)
!1471 = !DILocation(line: 351, column: 28, scope: !1465)
!1472 = !DILocation(line: 351, column: 31, scope: !1465)
!1473 = !DILocation(line: 352, column: 13, scope: !1465)
!1474 = !DILocation(line: 353, column: 29, scope: !1411)
!1475 = !DILocation(line: 353, column: 40, scope: !1411)
!1476 = !DILocation(line: 353, column: 26, scope: !1411)
!1477 = !DILocation(line: 354, column: 9, scope: !1411)
!1478 = !DILocation(line: 323, column: 48, scope: !1406)
!1479 = !DILocation(line: 323, column: 9, scope: !1406)
!1480 = distinct !{!1480, !1409, !1481}
!1481 = !DILocation(line: 354, column: 9, scope: !1402)
!1482 = !DILocation(line: 355, column: 5, scope: !1403)
!1483 = !DILocation(line: 318, column: 26, scope: !1386)
!1484 = !DILocation(line: 356, column: 21, scope: !1016)
!1485 = !DILocation(line: 356, column: 18, scope: !1016)
!1486 = !DILocation(line: 358, column: 58, scope: !1016)
!1487 = !DILocation(line: 358, column: 69, scope: !1016)
!1488 = !DILocation(line: 358, column: 5, scope: !1016)
!1489 = !DILocation(line: 359, column: 5, scope: !1016)
!1490 = !DILocation(line: 361, column: 42, scope: !1016)
!1491 = !DILocation(line: 361, column: 5, scope: !1016)
!1492 = !DILocation(line: 362, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 362, column: 9)
!1494 = !DILocation(line: 362, column: 34, scope: !1493)
!1495 = !DILocation(line: 362, column: 9, scope: !1016)
!1496 = !DILocation(line: 364, column: 19, scope: !1493)
!1497 = !DILocation(line: 364, column: 42, scope: !1493)
!1498 = !DILocation(line: 364, column: 53, scope: !1493)
!1499 = !DILocation(line: 364, column: 40, scope: !1493)
!1500 = !DILocation(line: 365, column: 25, scope: !1493)
!1501 = !DILocation(line: 365, column: 23, scope: !1493)
!1502 = !DILocation(line: 363, column: 9, scope: !1493)
!1503 = !DILocation(line: 373, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 373, column: 9)
!1505 = !DILocation(line: 373, column: 34, scope: !1504)
!1506 = !DILocation(line: 373, column: 9, scope: !1016)
!1507 = !DILocation(line: 375, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !74, line: 374, column: 5)
!1509 = !DILocation(line: 377, column: 21, scope: !1508)
!1510 = !DILocation(line: 378, column: 5, scope: !1508)
!1511 = !DILocation(line: 381, column: 30, scope: !1016)
!1512 = !DILocation(line: 381, column: 53, scope: !1016)
!1513 = !DILocation(line: 381, column: 64, scope: !1016)
!1514 = !DILocation(line: 381, column: 51, scope: !1016)
!1515 = !DILocation(line: 380, column: 5, scope: !1016)
!1516 = !DILocation(line: 382, column: 5, scope: !1016)
!1517 = !DILocation(line: 383, column: 5, scope: !1016)
!1518 = !DILocation(line: 387, column: 5, scope: !1016)
!1519 = !DILocation(line: 389, column: 46, scope: !1016)
!1520 = !DILocation(line: 389, column: 5, scope: !1016)
!1521 = !DILocation(line: 390, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 390, column: 9)
!1523 = !DILocation(line: 390, column: 20, scope: !1522)
!1524 = !DILocation(line: 390, column: 26, scope: !1522)
!1525 = !DILocation(line: 390, column: 9, scope: !1016)
!1526 = !DILocation(line: 391, column: 14, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !74, line: 391, column: 9)
!1528 = !DILocation(line: 0, scope: !1527)
!1529 = !DILocation(line: 391, column: 21, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !74, line: 391, column: 9)
!1531 = !DILocation(line: 391, column: 25, scope: !1530)
!1532 = !DILocation(line: 391, column: 23, scope: !1530)
!1533 = !DILocation(line: 391, column: 9, scope: !1527)
!1534 = !DILocation(line: 392, column: 55, scope: !1530)
!1535 = !DILocation(line: 392, column: 58, scope: !1530)
!1536 = !DILocation(line: 392, column: 69, scope: !1530)
!1537 = !DILocation(line: 392, column: 13, scope: !1530)
!1538 = !DILocation(line: 391, column: 48, scope: !1530)
!1539 = !DILocation(line: 391, column: 9, scope: !1530)
!1540 = distinct !{!1540, !1533, !1541}
!1541 = !DILocation(line: 392, column: 76, scope: !1527)
!1542 = !DILocation(line: 393, column: 9, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 393, column: 9)
!1544 = !DILocation(line: 393, column: 20, scope: !1543)
!1545 = !DILocation(line: 393, column: 26, scope: !1543)
!1546 = !DILocation(line: 393, column: 9, scope: !1016)
!1547 = !DILocation(line: 394, column: 14, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !74, line: 394, column: 9)
!1549 = !DILocation(line: 0, scope: !1548)
!1550 = !DILocation(line: 394, column: 21, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !74, line: 394, column: 9)
!1552 = !DILocation(line: 394, column: 25, scope: !1551)
!1553 = !DILocation(line: 394, column: 23, scope: !1551)
!1554 = !DILocation(line: 394, column: 9, scope: !1548)
!1555 = !DILocation(line: 395, column: 55, scope: !1551)
!1556 = !DILocation(line: 395, column: 58, scope: !1551)
!1557 = !DILocation(line: 395, column: 69, scope: !1551)
!1558 = !DILocation(line: 395, column: 13, scope: !1551)
!1559 = !DILocation(line: 394, column: 48, scope: !1551)
!1560 = !DILocation(line: 394, column: 9, scope: !1551)
!1561 = distinct !{!1561, !1554, !1562}
!1562 = !DILocation(line: 395, column: 78, scope: !1548)
!1563 = !DILocation(line: 396, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 396, column: 9)
!1565 = !DILocation(line: 396, column: 20, scope: !1564)
!1566 = !DILocation(line: 396, column: 26, scope: !1564)
!1567 = !DILocation(line: 396, column: 9, scope: !1016)
!1568 = !DILocation(line: 397, column: 14, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !74, line: 397, column: 9)
!1570 = !DILocation(line: 0, scope: !1569)
!1571 = !DILocation(line: 397, column: 21, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !74, line: 397, column: 9)
!1573 = !DILocation(line: 397, column: 25, scope: !1572)
!1574 = !DILocation(line: 397, column: 23, scope: !1572)
!1575 = !DILocation(line: 397, column: 9, scope: !1569)
!1576 = !DILocation(line: 398, column: 55, scope: !1572)
!1577 = !DILocation(line: 398, column: 58, scope: !1572)
!1578 = !DILocation(line: 398, column: 69, scope: !1572)
!1579 = !DILocation(line: 398, column: 13, scope: !1572)
!1580 = !DILocation(line: 397, column: 48, scope: !1572)
!1581 = !DILocation(line: 397, column: 9, scope: !1572)
!1582 = distinct !{!1582, !1575, !1583}
!1583 = !DILocation(line: 398, column: 77, scope: !1569)
!1584 = !DILocation(line: 399, column: 10, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 399, column: 5)
!1586 = !DILocation(line: 0, scope: !1585)
!1587 = !DILocation(line: 399, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !74, line: 399, column: 5)
!1589 = !DILocation(line: 399, column: 21, scope: !1588)
!1590 = !DILocation(line: 399, column: 19, scope: !1588)
!1591 = !DILocation(line: 399, column: 5, scope: !1585)
!1592 = !DILocation(line: 400, column: 51, scope: !1588)
!1593 = !DILocation(line: 400, column: 54, scope: !1588)
!1594 = !DILocation(line: 400, column: 65, scope: !1588)
!1595 = !DILocation(line: 400, column: 9, scope: !1588)
!1596 = !DILocation(line: 399, column: 44, scope: !1588)
!1597 = !DILocation(line: 399, column: 5, scope: !1588)
!1598 = distinct !{!1598, !1591, !1599}
!1599 = !DILocation(line: 400, column: 68, scope: !1585)
!1600 = !DILocation(line: 401, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 401, column: 9)
!1602 = !DILocation(line: 401, column: 22, scope: !1601)
!1603 = !DILocation(line: 401, column: 9, scope: !1016)
!1604 = !DILocation(line: 403, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !74, line: 402, column: 5)
!1606 = !DILocation(line: 407, column: 13, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1605, file: !74, line: 407, column: 13)
!1608 = !DILocation(line: 407, column: 22, scope: !1607)
!1609 = !DILocation(line: 407, column: 13, scope: !1605)
!1610 = !DILocation(line: 410, column: 23, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !74, line: 408, column: 9)
!1612 = !DILocation(line: 410, column: 46, scope: !1611)
!1613 = !DILocation(line: 410, column: 57, scope: !1611)
!1614 = !DILocation(line: 410, column: 44, scope: !1611)
!1615 = !DILocation(line: 411, column: 29, scope: !1611)
!1616 = !DILocation(line: 411, column: 27, scope: !1611)
!1617 = !DILocation(line: 409, column: 13, scope: !1611)
!1618 = !DILocation(line: 415, column: 13, scope: !1611)
!1619 = !DILocation(line: 423, column: 13, scope: !1611)
!1620 = !DILocation(line: 424, column: 9, scope: !1611)
!1621 = !DILocation(line: 426, column: 5, scope: !1605)
!1622 = !DILocation(line: 427, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 427, column: 9)
!1624 = !DILocation(line: 427, column: 22, scope: !1623)
!1625 = !DILocation(line: 427, column: 9, scope: !1016)
!1626 = !DILocation(line: 428, column: 9, scope: !1623)
!1627 = !DILocation(line: 429, column: 9, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1016, file: !74, line: 429, column: 9)
!1629 = !DILocation(line: 429, column: 22, scope: !1628)
!1630 = !DILocation(line: 429, column: 9, scope: !1016)
!1631 = !DILocation(line: 430, column: 9, scope: !1628)
!1632 = !DILocation(line: 439, column: 21, scope: !1016)
!1633 = !DILocation(line: 439, column: 32, scope: !1016)
!1634 = !DILocation(line: 439, column: 5, scope: !1016)
!1635 = !DILocation(line: 442, column: 1, scope: !1016)
!1636 = !DILocation(line: 441, column: 5, scope: !1016)
!1637 = distinct !DISubprogram(name: "core_bench_matrix", scope: !1638, file: !1638, line: 92, type: !1639, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1649)
!1638 = !DIFile(filename: "src/coremark/core_matrix.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!53, !1641, !12, !53}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_params", file: !8, line: 119, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MAT_PARAMS_S", file: !8, line: 113, size: 128, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1643, file: !8, line: 115, baseType: !43, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1643, file: !8, line: 116, baseType: !45, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1643, file: !8, line: 117, baseType: !45, size: 32, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !1643, file: !8, line: 118, baseType: !49, size: 32, offset: 96)
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1650 = !DILocalVariable(name: "p", arg: 1, scope: !1637, file: !1638, line: 92, type: !1641)
!1651 = !DILocalVariable(name: "seed", arg: 2, scope: !1637, file: !1638, line: 92, type: !12)
!1652 = !DILocalVariable(name: "crc", arg: 3, scope: !1637, file: !1638, line: 92, type: !53)
!1653 = !DILocalVariable(name: "N", scope: !1637, file: !1638, line: 94, type: !23)
!1654 = !DILocalVariable(name: "C", scope: !1637, file: !1638, line: 95, type: !49)
!1655 = !DILocalVariable(name: "A", scope: !1637, file: !1638, line: 96, type: !45)
!1656 = !DILocalVariable(name: "B", scope: !1637, file: !1638, line: 97, type: !45)
!1657 = !DILocalVariable(name: "val", scope: !1637, file: !1638, line: 98, type: !46)
!1658 = !DILocation(line: 0, scope: !1637)
!1659 = !DILocation(line: 94, column: 22, scope: !1637)
!1660 = !{!330, !328, i64 0}
!1661 = !DILocation(line: 95, column: 22, scope: !1637)
!1662 = !{!330, !329, i64 12}
!1663 = !DILocation(line: 96, column: 22, scope: !1637)
!1664 = !{!330, !329, i64 4}
!1665 = !DILocation(line: 97, column: 22, scope: !1637)
!1666 = !{!330, !329, i64 8}
!1667 = !DILocation(line: 100, column: 17, scope: !1637)
!1668 = !DILocation(line: 100, column: 11, scope: !1637)
!1669 = !DILocation(line: 102, column: 5, scope: !1637)
!1670 = distinct !DISubprogram(name: "matrix_test", scope: !1638, file: !1638, line: 130, type: !1671, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!12, !23, !49, !45, !45, !46}
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1674 = !DILocalVariable(name: "N", arg: 1, scope: !1670, file: !1638, line: 130, type: !23)
!1675 = !DILocalVariable(name: "C", arg: 2, scope: !1670, file: !1638, line: 130, type: !49)
!1676 = !DILocalVariable(name: "A", arg: 3, scope: !1670, file: !1638, line: 130, type: !45)
!1677 = !DILocalVariable(name: "B", arg: 4, scope: !1670, file: !1638, line: 130, type: !45)
!1678 = !DILocalVariable(name: "val", arg: 5, scope: !1670, file: !1638, line: 130, type: !46)
!1679 = !DILocalVariable(name: "crc", scope: !1670, file: !1638, line: 132, type: !53)
!1680 = !DILocalVariable(name: "clipval", scope: !1670, file: !1638, line: 133, type: !46)
!1681 = !DILocation(line: 0, scope: !1670)
!1682 = !DILocation(line: 133, column: 22, scope: !1670)
!1683 = !DILocation(line: 135, column: 5, scope: !1670)
!1684 = !DILocation(line: 139, column: 5, scope: !1670)
!1685 = !DILocation(line: 140, column: 17, scope: !1670)
!1686 = !DILocation(line: 140, column: 11, scope: !1670)
!1687 = !DILocation(line: 144, column: 5, scope: !1670)
!1688 = !DILocation(line: 145, column: 17, scope: !1670)
!1689 = !DILocation(line: 145, column: 11, scope: !1670)
!1690 = !DILocation(line: 149, column: 5, scope: !1670)
!1691 = !DILocation(line: 150, column: 17, scope: !1670)
!1692 = !DILocation(line: 150, column: 11, scope: !1670)
!1693 = !DILocation(line: 154, column: 5, scope: !1670)
!1694 = !DILocation(line: 155, column: 17, scope: !1670)
!1695 = !DILocation(line: 155, column: 11, scope: !1670)
!1696 = !DILocation(line: 160, column: 29, scope: !1670)
!1697 = !DILocation(line: 160, column: 28, scope: !1670)
!1698 = !DILocation(line: 160, column: 5, scope: !1670)
!1699 = !DILocation(line: 161, column: 5, scope: !1670)
!1700 = distinct !DISubprogram(name: "matrix_add_const", scope: !1638, file: !1638, line: 285, type: !1701, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !23, !45, !46}
!1703 = !{!1704, !1705, !1706, !1707, !1708}
!1704 = !DILocalVariable(name: "N", arg: 1, scope: !1700, file: !1638, line: 285, type: !23)
!1705 = !DILocalVariable(name: "A", arg: 2, scope: !1700, file: !1638, line: 285, type: !45)
!1706 = !DILocalVariable(name: "val", arg: 3, scope: !1700, file: !1638, line: 285, type: !46)
!1707 = !DILocalVariable(name: "i", scope: !1700, file: !1638, line: 287, type: !23)
!1708 = !DILocalVariable(name: "j", scope: !1700, file: !1638, line: 287, type: !23)
!1709 = !DILocation(line: 0, scope: !1700)
!1710 = !DILocation(line: 288, column: 10, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1700, file: !1638, line: 288, column: 5)
!1712 = !DILocation(line: 0, scope: !1711)
!1713 = !DILocation(line: 288, column: 19, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !1638, line: 288, column: 5)
!1715 = !DILocation(line: 288, column: 5, scope: !1711)
!1716 = !DILocation(line: 290, column: 14, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !1638, line: 290, column: 9)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !1638, line: 289, column: 5)
!1719 = !DILocation(line: 0, scope: !1717)
!1720 = !DILocation(line: 290, column: 23, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !1638, line: 290, column: 9)
!1722 = !DILocation(line: 290, column: 9, scope: !1717)
!1723 = !DILocation(line: 292, column: 29, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !1638, line: 291, column: 9)
!1725 = !DILocation(line: 292, column: 17, scope: !1724)
!1726 = !DILocation(line: 292, column: 21, scope: !1724)
!1727 = !DILocation(line: 292, column: 13, scope: !1724)
!1728 = !DILocation(line: 292, column: 26, scope: !1724)
!1729 = !DILocation(line: 293, column: 9, scope: !1724)
!1730 = !DILocation(line: 290, column: 29, scope: !1721)
!1731 = !DILocation(line: 290, column: 9, scope: !1721)
!1732 = distinct !{!1732, !1722, !1733}
!1733 = !DILocation(line: 293, column: 9, scope: !1717)
!1734 = !DILocation(line: 294, column: 5, scope: !1718)
!1735 = !DILocation(line: 288, column: 25, scope: !1714)
!1736 = !DILocation(line: 288, column: 5, scope: !1714)
!1737 = distinct !{!1737, !1715, !1738}
!1738 = !DILocation(line: 294, column: 5, scope: !1711)
!1739 = !DILocation(line: 295, column: 1, scope: !1700)
!1740 = distinct !DISubprogram(name: "matrix_mul_const", scope: !1638, file: !1638, line: 269, type: !1741, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !23, !49, !45, !46}
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749}
!1744 = !DILocalVariable(name: "N", arg: 1, scope: !1740, file: !1638, line: 269, type: !23)
!1745 = !DILocalVariable(name: "C", arg: 2, scope: !1740, file: !1638, line: 269, type: !49)
!1746 = !DILocalVariable(name: "A", arg: 3, scope: !1740, file: !1638, line: 269, type: !45)
!1747 = !DILocalVariable(name: "val", arg: 4, scope: !1740, file: !1638, line: 269, type: !46)
!1748 = !DILocalVariable(name: "i", scope: !1740, file: !1638, line: 271, type: !23)
!1749 = !DILocalVariable(name: "j", scope: !1740, file: !1638, line: 271, type: !23)
!1750 = !DILocation(line: 0, scope: !1740)
!1751 = !DILocation(line: 272, column: 10, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1740, file: !1638, line: 272, column: 5)
!1753 = !DILocation(line: 0, scope: !1752)
!1754 = !DILocation(line: 272, column: 19, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !1638, line: 272, column: 5)
!1756 = !DILocation(line: 272, column: 5, scope: !1752)
!1757 = !DILocation(line: 274, column: 14, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1638, line: 274, column: 9)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !1638, line: 273, column: 5)
!1760 = !DILocation(line: 0, scope: !1758)
!1761 = !DILocation(line: 274, column: 23, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !1638, line: 274, column: 9)
!1763 = !DILocation(line: 274, column: 9, scope: !1758)
!1764 = !DILocation(line: 276, column: 40, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !1638, line: 275, column: 9)
!1766 = !DILocation(line: 276, column: 44, scope: !1765)
!1767 = !DILocation(line: 276, column: 36, scope: !1765)
!1768 = !DILocation(line: 276, column: 28, scope: !1765)
!1769 = !DILocation(line: 276, column: 51, scope: !1765)
!1770 = !DILocation(line: 276, column: 49, scope: !1765)
!1771 = !DILocation(line: 276, column: 17, scope: !1765)
!1772 = !DILocation(line: 276, column: 21, scope: !1765)
!1773 = !DILocation(line: 276, column: 13, scope: !1765)
!1774 = !DILocation(line: 276, column: 26, scope: !1765)
!1775 = !DILocation(line: 277, column: 9, scope: !1765)
!1776 = !DILocation(line: 274, column: 29, scope: !1762)
!1777 = !DILocation(line: 274, column: 9, scope: !1762)
!1778 = distinct !{!1778, !1763, !1779}
!1779 = !DILocation(line: 277, column: 9, scope: !1758)
!1780 = !DILocation(line: 278, column: 5, scope: !1759)
!1781 = !DILocation(line: 272, column: 25, scope: !1755)
!1782 = !DILocation(line: 272, column: 5, scope: !1755)
!1783 = distinct !{!1783, !1756, !1784}
!1784 = !DILocation(line: 278, column: 5, scope: !1752)
!1785 = !DILocation(line: 279, column: 1, scope: !1740)
!1786 = distinct !DISubprogram(name: "matrix_sum", scope: !1638, file: !1638, line: 238, type: !1787, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!12, !23, !49, !46}
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1790 = !DILocalVariable(name: "N", arg: 1, scope: !1786, file: !1638, line: 238, type: !23)
!1791 = !DILocalVariable(name: "C", arg: 2, scope: !1786, file: !1638, line: 238, type: !49)
!1792 = !DILocalVariable(name: "clipval", arg: 3, scope: !1786, file: !1638, line: 238, type: !46)
!1793 = !DILocalVariable(name: "tmp", scope: !1786, file: !1638, line: 240, type: !50)
!1794 = !DILocalVariable(name: "prev", scope: !1786, file: !1638, line: 240, type: !50)
!1795 = !DILocalVariable(name: "cur", scope: !1786, file: !1638, line: 240, type: !50)
!1796 = !DILocalVariable(name: "ret", scope: !1786, file: !1638, line: 241, type: !12)
!1797 = !DILocalVariable(name: "i", scope: !1786, file: !1638, line: 242, type: !23)
!1798 = !DILocalVariable(name: "j", scope: !1786, file: !1638, line: 242, type: !23)
!1799 = !DILocation(line: 0, scope: !1786)
!1800 = !DILocation(line: 243, column: 10, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1786, file: !1638, line: 243, column: 5)
!1802 = !DILocation(line: 240, column: 21, scope: !1786)
!1803 = !DILocation(line: 240, column: 12, scope: !1786)
!1804 = !DILocation(line: 241, column: 12, scope: !1786)
!1805 = !DILocation(line: 0, scope: !1801)
!1806 = !DILocation(line: 243, column: 19, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1801, file: !1638, line: 243, column: 5)
!1808 = !DILocation(line: 243, column: 5, scope: !1801)
!1809 = !DILocation(line: 245, column: 14, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !1638, line: 245, column: 9)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !1638, line: 244, column: 5)
!1812 = !DILocation(line: 0, scope: !1810)
!1813 = !DILocation(line: 245, column: 23, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !1638, line: 245, column: 9)
!1815 = !DILocation(line: 245, column: 9, scope: !1810)
!1816 = !DILocation(line: 247, column: 23, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !1638, line: 246, column: 9)
!1818 = !DILocation(line: 247, column: 27, scope: !1817)
!1819 = !DILocation(line: 247, column: 19, scope: !1817)
!1820 = !DILocation(line: 248, column: 17, scope: !1817)
!1821 = !DILocation(line: 249, column: 23, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1817, file: !1638, line: 249, column: 17)
!1823 = !DILocation(line: 249, column: 21, scope: !1822)
!1824 = !DILocation(line: 249, column: 17, scope: !1817)
!1825 = !DILocation(line: 251, column: 21, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !1638, line: 250, column: 13)
!1827 = !DILocation(line: 253, column: 13, scope: !1826)
!1828 = !DILocation(line: 256, column: 29, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1822, file: !1638, line: 255, column: 13)
!1830 = !DILocation(line: 256, column: 24, scope: !1829)
!1831 = !DILocation(line: 256, column: 21, scope: !1829)
!1832 = !DILocation(line: 0, scope: !1817)
!1833 = !DILocation(line: 0, scope: !1822)
!1834 = !DILocation(line: 259, column: 9, scope: !1817)
!1835 = !DILocation(line: 245, column: 29, scope: !1814)
!1836 = !DILocation(line: 245, column: 9, scope: !1814)
!1837 = distinct !{!1837, !1815, !1838}
!1838 = !DILocation(line: 259, column: 9, scope: !1810)
!1839 = !DILocation(line: 260, column: 5, scope: !1811)
!1840 = !DILocation(line: 243, column: 25, scope: !1807)
!1841 = !DILocation(line: 243, column: 5, scope: !1807)
!1842 = distinct !{!1842, !1808, !1843}
!1843 = !DILocation(line: 260, column: 5, scope: !1801)
!1844 = !DILocation(line: 261, column: 5, scope: !1786)
!1845 = distinct !DISubprogram(name: "matrix_mul_vect", scope: !1638, file: !1638, line: 303, type: !1846, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !23, !49, !45, !45}
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854}
!1849 = !DILocalVariable(name: "N", arg: 1, scope: !1845, file: !1638, line: 303, type: !23)
!1850 = !DILocalVariable(name: "C", arg: 2, scope: !1845, file: !1638, line: 303, type: !49)
!1851 = !DILocalVariable(name: "A", arg: 3, scope: !1845, file: !1638, line: 303, type: !45)
!1852 = !DILocalVariable(name: "B", arg: 4, scope: !1845, file: !1638, line: 303, type: !45)
!1853 = !DILocalVariable(name: "i", scope: !1845, file: !1638, line: 305, type: !23)
!1854 = !DILocalVariable(name: "j", scope: !1845, file: !1638, line: 305, type: !23)
!1855 = !DILocation(line: 0, scope: !1845)
!1856 = !DILocation(line: 306, column: 10, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1845, file: !1638, line: 306, column: 5)
!1858 = !DILocation(line: 0, scope: !1857)
!1859 = !DILocation(line: 306, column: 19, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !1638, line: 306, column: 5)
!1861 = !DILocation(line: 306, column: 5, scope: !1857)
!1862 = !DILocation(line: 308, column: 9, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !1638, line: 307, column: 5)
!1864 = !DILocation(line: 308, column: 14, scope: !1863)
!1865 = !DILocation(line: 309, column: 14, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1863, file: !1638, line: 309, column: 9)
!1867 = !DILocation(line: 0, scope: !1866)
!1868 = !DILocation(line: 309, column: 23, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !1638, line: 309, column: 9)
!1870 = !DILocation(line: 309, column: 9, scope: !1866)
!1871 = !DILocation(line: 311, column: 33, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !1638, line: 310, column: 9)
!1873 = !DILocation(line: 311, column: 37, scope: !1872)
!1874 = !DILocation(line: 311, column: 29, scope: !1872)
!1875 = !DILocation(line: 311, column: 21, scope: !1872)
!1876 = !DILocation(line: 311, column: 52, scope: !1872)
!1877 = !DILocation(line: 311, column: 44, scope: !1872)
!1878 = !DILocation(line: 311, column: 42, scope: !1872)
!1879 = !DILocation(line: 311, column: 13, scope: !1872)
!1880 = !DILocation(line: 311, column: 18, scope: !1872)
!1881 = !DILocation(line: 312, column: 9, scope: !1872)
!1882 = !DILocation(line: 309, column: 29, scope: !1869)
!1883 = !DILocation(line: 309, column: 9, scope: !1869)
!1884 = distinct !{!1884, !1870, !1885}
!1885 = !DILocation(line: 312, column: 9, scope: !1866)
!1886 = !DILocation(line: 313, column: 5, scope: !1863)
!1887 = !DILocation(line: 306, column: 25, scope: !1860)
!1888 = !DILocation(line: 306, column: 5, scope: !1860)
!1889 = distinct !{!1889, !1861, !1890}
!1890 = !DILocation(line: 313, column: 5, scope: !1857)
!1891 = !DILocation(line: 314, column: 1, scope: !1845)
!1892 = distinct !DISubprogram(name: "matrix_mul_matrix", scope: !1638, file: !1638, line: 322, type: !1846, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1893)
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1894 = !DILocalVariable(name: "N", arg: 1, scope: !1892, file: !1638, line: 322, type: !23)
!1895 = !DILocalVariable(name: "C", arg: 2, scope: !1892, file: !1638, line: 322, type: !49)
!1896 = !DILocalVariable(name: "A", arg: 3, scope: !1892, file: !1638, line: 322, type: !45)
!1897 = !DILocalVariable(name: "B", arg: 4, scope: !1892, file: !1638, line: 322, type: !45)
!1898 = !DILocalVariable(name: "i", scope: !1892, file: !1638, line: 324, type: !23)
!1899 = !DILocalVariable(name: "j", scope: !1892, file: !1638, line: 324, type: !23)
!1900 = !DILocalVariable(name: "k", scope: !1892, file: !1638, line: 324, type: !23)
!1901 = !DILocation(line: 0, scope: !1892)
!1902 = !DILocation(line: 325, column: 10, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1892, file: !1638, line: 325, column: 5)
!1904 = !DILocation(line: 0, scope: !1903)
!1905 = !DILocation(line: 325, column: 19, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !1638, line: 325, column: 5)
!1907 = !DILocation(line: 325, column: 5, scope: !1903)
!1908 = !DILocation(line: 327, column: 14, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !1638, line: 327, column: 9)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !1638, line: 326, column: 5)
!1911 = !DILocation(line: 0, scope: !1909)
!1912 = !DILocation(line: 327, column: 23, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !1638, line: 327, column: 9)
!1914 = !DILocation(line: 327, column: 9, scope: !1909)
!1915 = !DILocation(line: 329, column: 17, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !1638, line: 328, column: 9)
!1917 = !DILocation(line: 329, column: 21, scope: !1916)
!1918 = !DILocation(line: 329, column: 13, scope: !1916)
!1919 = !DILocation(line: 329, column: 26, scope: !1916)
!1920 = !DILocation(line: 330, column: 18, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !1638, line: 330, column: 13)
!1922 = !DILocation(line: 0, scope: !1921)
!1923 = !DILocation(line: 330, column: 27, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1921, file: !1638, line: 330, column: 13)
!1925 = !DILocation(line: 330, column: 13, scope: !1921)
!1926 = !DILocation(line: 332, column: 45, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1924, file: !1638, line: 331, column: 13)
!1928 = !DILocation(line: 332, column: 49, scope: !1927)
!1929 = !DILocation(line: 332, column: 41, scope: !1927)
!1930 = !DILocation(line: 332, column: 33, scope: !1927)
!1931 = !DILocation(line: 332, column: 68, scope: !1927)
!1932 = !DILocation(line: 332, column: 72, scope: !1927)
!1933 = !DILocation(line: 332, column: 64, scope: !1927)
!1934 = !DILocation(line: 332, column: 56, scope: !1927)
!1935 = !DILocation(line: 332, column: 54, scope: !1927)
!1936 = !DILocation(line: 332, column: 21, scope: !1927)
!1937 = !DILocation(line: 332, column: 25, scope: !1927)
!1938 = !DILocation(line: 332, column: 17, scope: !1927)
!1939 = !DILocation(line: 332, column: 30, scope: !1927)
!1940 = !DILocation(line: 333, column: 13, scope: !1927)
!1941 = !DILocation(line: 330, column: 33, scope: !1924)
!1942 = !DILocation(line: 330, column: 13, scope: !1924)
!1943 = distinct !{!1943, !1925, !1944}
!1944 = !DILocation(line: 333, column: 13, scope: !1921)
!1945 = !DILocation(line: 334, column: 9, scope: !1916)
!1946 = !DILocation(line: 327, column: 29, scope: !1913)
!1947 = !DILocation(line: 327, column: 9, scope: !1913)
!1948 = distinct !{!1948, !1914, !1949}
!1949 = !DILocation(line: 334, column: 9, scope: !1909)
!1950 = !DILocation(line: 335, column: 5, scope: !1910)
!1951 = !DILocation(line: 325, column: 25, scope: !1906)
!1952 = !DILocation(line: 325, column: 5, scope: !1906)
!1953 = distinct !{!1953, !1907, !1954}
!1954 = !DILocation(line: 335, column: 5, scope: !1903)
!1955 = !DILocation(line: 336, column: 1, scope: !1892)
!1956 = distinct !DISubprogram(name: "matrix_mul_matrix_bitextract", scope: !1638, file: !1638, line: 344, type: !1846, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1957)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!1958 = !DILocalVariable(name: "N", arg: 1, scope: !1956, file: !1638, line: 344, type: !23)
!1959 = !DILocalVariable(name: "C", arg: 2, scope: !1956, file: !1638, line: 344, type: !49)
!1960 = !DILocalVariable(name: "A", arg: 3, scope: !1956, file: !1638, line: 344, type: !45)
!1961 = !DILocalVariable(name: "B", arg: 4, scope: !1956, file: !1638, line: 344, type: !45)
!1962 = !DILocalVariable(name: "i", scope: !1956, file: !1638, line: 346, type: !23)
!1963 = !DILocalVariable(name: "j", scope: !1956, file: !1638, line: 346, type: !23)
!1964 = !DILocalVariable(name: "k", scope: !1956, file: !1638, line: 346, type: !23)
!1965 = !DILocalVariable(name: "tmp", scope: !1966, file: !1638, line: 354, type: !50)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !1638, line: 353, column: 13)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1638, line: 352, column: 13)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1638, line: 352, column: 13)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1638, line: 350, column: 9)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !1638, line: 349, column: 9)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !1638, line: 349, column: 9)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !1638, line: 348, column: 5)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !1638, line: 347, column: 5)
!1974 = distinct !DILexicalBlock(scope: !1956, file: !1638, line: 347, column: 5)
!1975 = !DILocation(line: 0, scope: !1956)
!1976 = !DILocation(line: 347, column: 10, scope: !1974)
!1977 = !DILocation(line: 0, scope: !1974)
!1978 = !DILocation(line: 347, column: 19, scope: !1973)
!1979 = !DILocation(line: 347, column: 5, scope: !1974)
!1980 = !DILocation(line: 349, column: 14, scope: !1971)
!1981 = !DILocation(line: 0, scope: !1971)
!1982 = !DILocation(line: 349, column: 23, scope: !1970)
!1983 = !DILocation(line: 349, column: 9, scope: !1971)
!1984 = !DILocation(line: 351, column: 17, scope: !1969)
!1985 = !DILocation(line: 351, column: 21, scope: !1969)
!1986 = !DILocation(line: 351, column: 13, scope: !1969)
!1987 = !DILocation(line: 351, column: 26, scope: !1969)
!1988 = !DILocation(line: 352, column: 18, scope: !1968)
!1989 = !DILocation(line: 0, scope: !1968)
!1990 = !DILocation(line: 352, column: 27, scope: !1967)
!1991 = !DILocation(line: 352, column: 13, scope: !1968)
!1992 = !DILocation(line: 354, column: 42, scope: !1966)
!1993 = !DILocation(line: 354, column: 46, scope: !1966)
!1994 = !DILocation(line: 354, column: 38, scope: !1966)
!1995 = !DILocation(line: 354, column: 30, scope: !1966)
!1996 = !DILocation(line: 354, column: 65, scope: !1966)
!1997 = !DILocation(line: 354, column: 69, scope: !1966)
!1998 = !DILocation(line: 354, column: 61, scope: !1966)
!1999 = !DILocation(line: 354, column: 53, scope: !1966)
!2000 = !DILocation(line: 354, column: 51, scope: !1966)
!2001 = !DILocation(line: 0, scope: !1966)
!2002 = !DILocation(line: 355, column: 33, scope: !1966)
!2003 = !DILocation(line: 355, column: 58, scope: !1966)
!2004 = !DILocation(line: 355, column: 56, scope: !1966)
!2005 = !DILocation(line: 355, column: 21, scope: !1966)
!2006 = !DILocation(line: 355, column: 25, scope: !1966)
!2007 = !DILocation(line: 355, column: 17, scope: !1966)
!2008 = !DILocation(line: 355, column: 30, scope: !1966)
!2009 = !DILocation(line: 356, column: 13, scope: !1966)
!2010 = !DILocation(line: 352, column: 33, scope: !1967)
!2011 = !DILocation(line: 352, column: 13, scope: !1967)
!2012 = distinct !{!2012, !1991, !2013}
!2013 = !DILocation(line: 356, column: 13, scope: !1968)
!2014 = !DILocation(line: 357, column: 9, scope: !1969)
!2015 = !DILocation(line: 349, column: 29, scope: !1970)
!2016 = !DILocation(line: 349, column: 9, scope: !1970)
!2017 = distinct !{!2017, !1983, !2018}
!2018 = !DILocation(line: 357, column: 9, scope: !1971)
!2019 = !DILocation(line: 358, column: 5, scope: !1972)
!2020 = !DILocation(line: 347, column: 25, scope: !1973)
!2021 = !DILocation(line: 347, column: 5, scope: !1973)
!2022 = distinct !{!2022, !1979, !2023}
!2023 = !DILocation(line: 358, column: 5, scope: !1974)
!2024 = !DILocation(line: 359, column: 1, scope: !1956)
!2025 = distinct !DISubprogram(name: "core_init_matrix", scope: !1638, file: !1638, line: 181, type: !2026, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!23, !23, !19, !51, !1641}
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039}
!2029 = !DILocalVariable(name: "blksize", arg: 1, scope: !2025, file: !1638, line: 181, type: !23)
!2030 = !DILocalVariable(name: "memblk", arg: 2, scope: !2025, file: !1638, line: 181, type: !19)
!2031 = !DILocalVariable(name: "seed", arg: 3, scope: !2025, file: !1638, line: 181, type: !51)
!2032 = !DILocalVariable(name: "p", arg: 4, scope: !2025, file: !1638, line: 181, type: !1641)
!2033 = !DILocalVariable(name: "N", scope: !2025, file: !1638, line: 183, type: !23)
!2034 = !DILocalVariable(name: "A", scope: !2025, file: !1638, line: 184, type: !45)
!2035 = !DILocalVariable(name: "B", scope: !2025, file: !1638, line: 185, type: !45)
!2036 = !DILocalVariable(name: "order", scope: !2025, file: !1638, line: 186, type: !51)
!2037 = !DILocalVariable(name: "val", scope: !2025, file: !1638, line: 187, type: !46)
!2038 = !DILocalVariable(name: "i", scope: !2025, file: !1638, line: 188, type: !23)
!2039 = !DILocalVariable(name: "j", scope: !2025, file: !1638, line: 188, type: !23)
!2040 = !DILocation(line: 0, scope: !2025)
!2041 = !DILocation(line: 189, column: 14, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2025, file: !1638, line: 189, column: 9)
!2043 = !DILocation(line: 189, column: 9, scope: !2025)
!2044 = !DILocation(line: 190, column: 9, scope: !2042)
!2045 = !DILocation(line: 191, column: 5, scope: !2025)
!2046 = !DILocation(line: 191, column: 14, scope: !2025)
!2047 = !DILocation(line: 193, column: 10, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2025, file: !1638, line: 192, column: 5)
!2049 = !DILocation(line: 194, column: 15, scope: !2048)
!2050 = !DILocation(line: 194, column: 19, scope: !2048)
!2051 = !DILocation(line: 194, column: 23, scope: !2048)
!2052 = distinct !{!2052, !2045, !2053}
!2053 = !DILocation(line: 195, column: 5, scope: !2025)
!2054 = !DILocation(line: 196, column: 11, scope: !2025)
!2055 = !DILocation(line: 197, column: 19, scope: !2025)
!2056 = !DILocation(line: 197, column: 9, scope: !2025)
!2057 = !DILocation(line: 198, column: 15, scope: !2025)
!2058 = !DILocation(line: 198, column: 11, scope: !2025)
!2059 = !DILocation(line: 200, column: 10, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2025, file: !1638, line: 200, column: 5)
!2061 = !DILocation(line: 186, column: 13, scope: !2025)
!2062 = !DILocation(line: 190, column: 14, scope: !2042)
!2063 = !DILocation(line: 0, scope: !2060)
!2064 = !DILocation(line: 200, column: 19, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !1638, line: 200, column: 5)
!2066 = !DILocation(line: 200, column: 5, scope: !2060)
!2067 = !DILocation(line: 202, column: 14, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !1638, line: 202, column: 9)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !1638, line: 201, column: 5)
!2070 = !DILocation(line: 0, scope: !2068)
!2071 = !DILocation(line: 202, column: 23, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !1638, line: 202, column: 9)
!2073 = !DILocation(line: 202, column: 9, scope: !2068)
!2074 = !DILocation(line: 204, column: 36, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !1638, line: 203, column: 9)
!2076 = !DILocation(line: 204, column: 44, scope: !2075)
!2077 = !DILocation(line: 205, column: 34, scope: !2075)
!2078 = !DILocation(line: 205, column: 28, scope: !2075)
!2079 = !DILocation(line: 206, column: 28, scope: !2075)
!2080 = !DILocation(line: 207, column: 17, scope: !2075)
!2081 = !DILocation(line: 207, column: 21, scope: !2075)
!2082 = !DILocation(line: 207, column: 13, scope: !2075)
!2083 = !DILocation(line: 207, column: 26, scope: !2075)
!2084 = !DILocation(line: 208, column: 29, scope: !2075)
!2085 = !DILocation(line: 208, column: 33, scope: !2075)
!2086 = !DILocation(line: 208, column: 28, scope: !2075)
!2087 = !DILocation(line: 209, column: 28, scope: !2075)
!2088 = !DILocation(line: 210, column: 17, scope: !2075)
!2089 = !DILocation(line: 210, column: 21, scope: !2075)
!2090 = !DILocation(line: 210, column: 13, scope: !2075)
!2091 = !DILocation(line: 210, column: 26, scope: !2075)
!2092 = !DILocation(line: 211, column: 18, scope: !2075)
!2093 = !DILocation(line: 212, column: 9, scope: !2075)
!2094 = !DILocation(line: 202, column: 29, scope: !2072)
!2095 = !DILocation(line: 202, column: 9, scope: !2072)
!2096 = distinct !{!2096, !2073, !2097}
!2097 = !DILocation(line: 212, column: 9, scope: !2068)
!2098 = !DILocation(line: 213, column: 5, scope: !2069)
!2099 = !DILocation(line: 200, column: 25, scope: !2065)
!2100 = !DILocation(line: 200, column: 5, scope: !2065)
!2101 = distinct !{!2101, !2066, !2102}
!2102 = !DILocation(line: 213, column: 5, scope: !2060)
!2103 = !DILocation(line: 215, column: 8, scope: !2025)
!2104 = !DILocation(line: 215, column: 10, scope: !2025)
!2105 = !DILocation(line: 216, column: 8, scope: !2025)
!2106 = !DILocation(line: 216, column: 10, scope: !2025)
!2107 = !DILocation(line: 217, column: 22, scope: !2025)
!2108 = !DILocation(line: 217, column: 12, scope: !2025)
!2109 = !DILocation(line: 217, column: 8, scope: !2025)
!2110 = !DILocation(line: 217, column: 10, scope: !2025)
!2111 = !DILocation(line: 218, column: 8, scope: !2025)
!2112 = !DILocation(line: 218, column: 10, scope: !2025)
!2113 = !DILocation(line: 223, column: 5, scope: !2025)
!2114 = distinct !DISubprogram(name: "core_bench_state", scope: !105, file: !105, line: 46, type: !2115, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!53, !23, !107, !12, !12, !12, !53}
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2128, !2129, !2130, !2131, !2133}
!2118 = !DILocalVariable(name: "blksize", arg: 1, scope: !2114, file: !105, line: 46, type: !23)
!2119 = !DILocalVariable(name: "memblock", arg: 2, scope: !2114, file: !105, line: 47, type: !107)
!2120 = !DILocalVariable(name: "seed1", arg: 3, scope: !2114, file: !105, line: 48, type: !12)
!2121 = !DILocalVariable(name: "seed2", arg: 4, scope: !2114, file: !105, line: 49, type: !12)
!2122 = !DILocalVariable(name: "step", arg: 5, scope: !2114, file: !105, line: 50, type: !12)
!2123 = !DILocalVariable(name: "crc", arg: 6, scope: !2114, file: !105, line: 51, type: !53)
!2124 = !DILocalVariable(name: "final_counts", scope: !2114, file: !105, line: 53, type: !2125)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 8)
!2128 = !DILocalVariable(name: "track_counts", scope: !2114, file: !105, line: 54, type: !2125)
!2129 = !DILocalVariable(name: "p", scope: !2114, file: !105, line: 55, type: !107)
!2130 = !DILocalVariable(name: "i", scope: !2114, file: !105, line: 56, type: !23)
!2131 = !DILocalVariable(name: "fstate", scope: !2132, file: !105, line: 68, type: !90)
!2132 = distinct !DILexicalBlock(scope: !2114, file: !105, line: 67, column: 5)
!2133 = !DILocalVariable(name: "fstate", scope: !2134, file: !105, line: 88, type: !90)
!2134 = distinct !DILexicalBlock(scope: !2114, file: !105, line: 87, column: 5)
!2135 = !DILocation(line: 0, scope: !2114)
!2136 = !DILocation(line: 53, column: 5, scope: !2114)
!2137 = !DILocation(line: 53, column: 12, scope: !2114)
!2138 = !DILocation(line: 54, column: 5, scope: !2114)
!2139 = !DILocation(line: 54, column: 12, scope: !2114)
!2140 = !DILocation(line: 55, column: 5, scope: !2114)
!2141 = !DILocation(line: 55, column: 12, scope: !2114)
!2142 = !DILocation(line: 61, column: 10, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2114, file: !105, line: 61, column: 5)
!2144 = !DILocation(line: 0, scope: !2143)
!2145 = !DILocation(line: 61, column: 19, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !105, line: 61, column: 5)
!2147 = !DILocation(line: 61, column: 5, scope: !2143)
!2148 = !DILocation(line: 63, column: 27, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !105, line: 62, column: 5)
!2150 = !DILocation(line: 63, column: 43, scope: !2149)
!2151 = !DILocation(line: 63, column: 9, scope: !2149)
!2152 = !DILocation(line: 63, column: 25, scope: !2149)
!2153 = !DILocation(line: 64, column: 5, scope: !2149)
!2154 = !DILocation(line: 61, column: 39, scope: !2146)
!2155 = !DILocation(line: 61, column: 5, scope: !2146)
!2156 = distinct !{!2156, !2147, !2157}
!2157 = !DILocation(line: 64, column: 5, scope: !2143)
!2158 = !DILocation(line: 66, column: 5, scope: !2114)
!2159 = !DILocation(line: 66, column: 13, scope: !2114)
!2160 = !DILocation(line: 66, column: 12, scope: !2114)
!2161 = !{!296, !296, i64 0}
!2162 = !DILocation(line: 66, column: 15, scope: !2114)
!2163 = !DILocation(line: 68, column: 60, scope: !2132)
!2164 = !DILocation(line: 68, column: 34, scope: !2132)
!2165 = !DILocation(line: 0, scope: !2132)
!2166 = !DILocation(line: 69, column: 9, scope: !2132)
!2167 = !DILocation(line: 69, column: 29, scope: !2132)
!2168 = distinct !{!2168, !2158, !2169}
!2169 = !DILocation(line: 75, column: 5, scope: !2114)
!2170 = !DILocation(line: 77, column: 7, scope: !2114)
!2171 = !DILocation(line: 78, column: 5, scope: !2114)
!2172 = !DILocation(line: 78, column: 12, scope: !2114)
!2173 = !DILocation(line: 78, column: 26, scope: !2114)
!2174 = !DILocation(line: 78, column: 14, scope: !2114)
!2175 = !DILocation(line: 80, column: 14, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !105, line: 80, column: 13)
!2177 = distinct !DILexicalBlock(scope: !2114, file: !105, line: 79, column: 5)
!2178 = !DILocation(line: 80, column: 13, scope: !2176)
!2179 = !DILocation(line: 80, column: 16, scope: !2176)
!2180 = !DILocation(line: 80, column: 13, scope: !2177)
!2181 = !DILocation(line: 81, column: 19, scope: !2176)
!2182 = !DILocation(line: 81, column: 14, scope: !2176)
!2183 = !DILocation(line: 81, column: 16, scope: !2176)
!2184 = !DILocation(line: 81, column: 13, scope: !2176)
!2185 = !DILocation(line: 82, column: 14, scope: !2177)
!2186 = !DILocation(line: 82, column: 11, scope: !2177)
!2187 = distinct !{!2187, !2171, !2188}
!2188 = !DILocation(line: 83, column: 5, scope: !2114)
!2189 = !DILocation(line: 84, column: 7, scope: !2114)
!2190 = !DILocation(line: 86, column: 5, scope: !2114)
!2191 = !DILocation(line: 86, column: 13, scope: !2114)
!2192 = !DILocation(line: 86, column: 12, scope: !2114)
!2193 = !DILocation(line: 86, column: 15, scope: !2114)
!2194 = !DILocation(line: 88, column: 60, scope: !2134)
!2195 = !DILocation(line: 88, column: 34, scope: !2134)
!2196 = !DILocation(line: 0, scope: !2134)
!2197 = !DILocation(line: 89, column: 9, scope: !2134)
!2198 = !DILocation(line: 89, column: 29, scope: !2134)
!2199 = distinct !{!2199, !2190, !2200}
!2200 = !DILocation(line: 95, column: 5, scope: !2114)
!2201 = !DILocation(line: 97, column: 7, scope: !2114)
!2202 = !DILocation(line: 98, column: 5, scope: !2114)
!2203 = !DILocation(line: 98, column: 12, scope: !2114)
!2204 = !DILocation(line: 98, column: 26, scope: !2114)
!2205 = !DILocation(line: 98, column: 14, scope: !2114)
!2206 = !DILocation(line: 100, column: 14, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !105, line: 100, column: 13)
!2208 = distinct !DILexicalBlock(scope: !2114, file: !105, line: 99, column: 5)
!2209 = !DILocation(line: 100, column: 13, scope: !2207)
!2210 = !DILocation(line: 100, column: 16, scope: !2207)
!2211 = !DILocation(line: 100, column: 13, scope: !2208)
!2212 = !DILocation(line: 101, column: 19, scope: !2207)
!2213 = !DILocation(line: 101, column: 14, scope: !2207)
!2214 = !DILocation(line: 101, column: 16, scope: !2207)
!2215 = !DILocation(line: 101, column: 13, scope: !2207)
!2216 = !DILocation(line: 102, column: 14, scope: !2208)
!2217 = !DILocation(line: 102, column: 11, scope: !2208)
!2218 = distinct !{!2218, !2202, !2219}
!2219 = !DILocation(line: 103, column: 5, scope: !2114)
!2220 = !DILocation(line: 105, column: 10, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2114, file: !105, line: 105, column: 5)
!2222 = !DILocation(line: 0, scope: !2221)
!2223 = !DILocation(line: 105, column: 19, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !105, line: 105, column: 5)
!2225 = !DILocation(line: 105, column: 5, scope: !2221)
!2226 = !DILocation(line: 107, column: 22, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !105, line: 106, column: 5)
!2228 = !DILocation(line: 107, column: 15, scope: !2227)
!2229 = !DILocation(line: 108, column: 22, scope: !2227)
!2230 = !DILocation(line: 108, column: 15, scope: !2227)
!2231 = !DILocation(line: 109, column: 5, scope: !2227)
!2232 = !DILocation(line: 105, column: 39, scope: !2224)
!2233 = !DILocation(line: 105, column: 5, scope: !2224)
!2234 = distinct !{!2234, !2225, !2235}
!2235 = !DILocation(line: 109, column: 5, scope: !2221)
!2236 = !DILocation(line: 111, column: 1, scope: !2114)
!2237 = !DILocation(line: 110, column: 5, scope: !2114)
!2238 = distinct !DISubprogram(name: "core_state_transition", scope: !105, file: !105, line: 217, type: !2239, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2243)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!90, !2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!2243 = !{!2244, !2245, !2246, !2247, !2248}
!2244 = !DILocalVariable(name: "instr", arg: 1, scope: !2238, file: !105, line: 217, type: !2241)
!2245 = !DILocalVariable(name: "transition_count", arg: 2, scope: !2238, file: !105, line: 217, type: !2242)
!2246 = !DILocalVariable(name: "str", scope: !2238, file: !105, line: 219, type: !107)
!2247 = !DILocalVariable(name: "NEXT_SYMBOL", scope: !2238, file: !105, line: 220, type: !64)
!2248 = !DILocalVariable(name: "state", scope: !2238, file: !105, line: 221, type: !90)
!2249 = !DILocation(line: 0, scope: !2238)
!2250 = !DILocation(line: 219, column: 27, scope: !2238)
!2251 = !DILocation(line: 222, column: 5, scope: !2238)
!2252 = !DILocation(line: 221, column: 21, scope: !2238)
!2253 = !DILocation(line: 222, column: 12, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !105, line: 222, column: 5)
!2255 = distinct !DILexicalBlock(scope: !2238, file: !105, line: 222, column: 5)
!2256 = !DILocation(line: 222, column: 17, scope: !2254)
!2257 = !DILocation(line: 222, column: 26, scope: !2254)
!2258 = !DILocation(line: 0, scope: !2254)
!2259 = !DILocation(line: 222, column: 5, scope: !2255)
!2260 = !DILocation(line: 224, column: 23, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2254, file: !105, line: 223, column: 5)
!2262 = !DILocation(line: 225, column: 13, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2261, file: !105, line: 225, column: 13)
!2264 = !DILocation(line: 225, column: 25, scope: !2263)
!2265 = !DILocation(line: 225, column: 13, scope: !2261)
!2266 = !DILocation(line: 227, column: 16, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !105, line: 226, column: 9)
!2268 = !DILocation(line: 228, column: 13, scope: !2267)
!2269 = !DILocation(line: 233, column: 21, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 233, column: 21)
!2271 = distinct !DILexicalBlock(scope: !2261, file: !105, line: 231, column: 9)
!2272 = !DILocation(line: 233, column: 21, scope: !2271)
!2273 = !DILocation(line: 236, column: 17, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !105, line: 234, column: 17)
!2275 = !DILocation(line: 237, column: 26, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !105, line: 237, column: 26)
!2277 = !DILocation(line: 237, column: 38, scope: !2276)
!2278 = !DILocation(line: 237, column: 45, scope: !2276)
!2279 = !DILocation(line: 237, column: 48, scope: !2276)
!2280 = !DILocation(line: 237, column: 60, scope: !2276)
!2281 = !DILocation(line: 237, column: 26, scope: !2270)
!2282 = !DILocation(line: 240, column: 17, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2276, file: !105, line: 238, column: 17)
!2284 = !DILocation(line: 241, column: 26, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2276, file: !105, line: 241, column: 26)
!2286 = !DILocation(line: 241, column: 38, scope: !2285)
!2287 = !DILocation(line: 241, column: 26, scope: !2276)
!2288 = !DILocation(line: 244, column: 17, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !105, line: 242, column: 17)
!2290 = !DILocation(line: 248, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !105, line: 246, column: 17)
!2292 = !DILocation(line: 248, column: 51, scope: !2291)
!2293 = !DILocation(line: 0, scope: !2285)
!2294 = !DILocation(line: 0, scope: !2276)
!2295 = !DILocation(line: 0, scope: !2270)
!2296 = !DILocation(line: 250, column: 17, scope: !2271)
!2297 = !DILocation(line: 250, column: 45, scope: !2271)
!2298 = !DILocation(line: 251, column: 17, scope: !2271)
!2299 = !DILocation(line: 253, column: 21, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 253, column: 21)
!2301 = !DILocation(line: 253, column: 21, scope: !2271)
!2302 = !DILocation(line: 256, column: 21, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !105, line: 254, column: 17)
!2304 = !DILocation(line: 256, column: 46, scope: !2303)
!2305 = !DILocation(line: 257, column: 17, scope: !2303)
!2306 = !DILocation(line: 258, column: 26, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2300, file: !105, line: 258, column: 26)
!2308 = !DILocation(line: 258, column: 38, scope: !2307)
!2309 = !DILocation(line: 258, column: 26, scope: !2300)
!2310 = !DILocation(line: 261, column: 21, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !105, line: 259, column: 17)
!2312 = !DILocation(line: 261, column: 46, scope: !2311)
!2313 = !DILocation(line: 262, column: 17, scope: !2311)
!2314 = !DILocation(line: 266, column: 21, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2307, file: !105, line: 264, column: 17)
!2316 = !DILocation(line: 266, column: 46, scope: !2315)
!2317 = !DILocation(line: 0, scope: !2307)
!2318 = !DILocation(line: 0, scope: !2300)
!2319 = !DILocation(line: 268, column: 17, scope: !2271)
!2320 = !DILocation(line: 270, column: 21, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 270, column: 21)
!2322 = !DILocation(line: 270, column: 33, scope: !2321)
!2323 = !DILocation(line: 270, column: 21, scope: !2271)
!2324 = !DILocation(line: 273, column: 21, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !105, line: 271, column: 17)
!2326 = !DILocation(line: 273, column: 47, scope: !2325)
!2327 = !DILocation(line: 274, column: 17, scope: !2325)
!2328 = !DILocation(line: 275, column: 27, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2321, file: !105, line: 275, column: 26)
!2330 = !DILocation(line: 275, column: 26, scope: !2321)
!2331 = !DILocation(line: 278, column: 21, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !105, line: 276, column: 17)
!2333 = !DILocation(line: 278, column: 47, scope: !2332)
!2334 = !DILocation(line: 279, column: 17, scope: !2332)
!2335 = !DILocation(line: 280, column: 17, scope: !2271)
!2336 = !DILocation(line: 282, column: 21, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 282, column: 21)
!2338 = !DILocation(line: 282, column: 33, scope: !2337)
!2339 = !DILocation(line: 282, column: 40, scope: !2337)
!2340 = !DILocation(line: 282, column: 43, scope: !2337)
!2341 = !DILocation(line: 282, column: 55, scope: !2337)
!2342 = !DILocation(line: 282, column: 21, scope: !2271)
!2343 = !DILocation(line: 285, column: 21, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2337, file: !105, line: 283, column: 17)
!2345 = !DILocation(line: 285, column: 49, scope: !2344)
!2346 = !DILocation(line: 286, column: 17, scope: !2344)
!2347 = !DILocation(line: 287, column: 27, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2337, file: !105, line: 287, column: 26)
!2349 = !DILocation(line: 287, column: 26, scope: !2337)
!2350 = !DILocation(line: 290, column: 21, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !105, line: 288, column: 17)
!2352 = !DILocation(line: 290, column: 49, scope: !2351)
!2353 = !DILocation(line: 291, column: 17, scope: !2351)
!2354 = !DILocation(line: 292, column: 17, scope: !2271)
!2355 = !DILocation(line: 294, column: 21, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 294, column: 21)
!2357 = !DILocation(line: 294, column: 33, scope: !2356)
!2358 = !DILocation(line: 294, column: 40, scope: !2356)
!2359 = !DILocation(line: 294, column: 43, scope: !2356)
!2360 = !DILocation(line: 294, column: 55, scope: !2356)
!2361 = !DILocation(line: 294, column: 21, scope: !2271)
!2362 = !DILocation(line: 297, column: 21, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2356, file: !105, line: 295, column: 17)
!2364 = !DILocation(line: 297, column: 46, scope: !2363)
!2365 = !DILocation(line: 298, column: 17, scope: !2363)
!2366 = !DILocation(line: 302, column: 21, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2356, file: !105, line: 300, column: 17)
!2368 = !DILocation(line: 302, column: 46, scope: !2367)
!2369 = !DILocation(line: 0, scope: !2356)
!2370 = !DILocation(line: 304, column: 17, scope: !2271)
!2371 = !DILocation(line: 306, column: 21, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 306, column: 21)
!2373 = !DILocation(line: 306, column: 21, scope: !2271)
!2374 = !DILocation(line: 309, column: 21, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2372, file: !105, line: 307, column: 17)
!2376 = !DILocation(line: 309, column: 52, scope: !2375)
!2377 = !DILocation(line: 310, column: 17, scope: !2375)
!2378 = !DILocation(line: 314, column: 21, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2372, file: !105, line: 312, column: 17)
!2380 = !DILocation(line: 314, column: 52, scope: !2379)
!2381 = !DILocation(line: 0, scope: !2372)
!2382 = !DILocation(line: 316, column: 17, scope: !2271)
!2383 = !DILocation(line: 318, column: 22, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2271, file: !105, line: 318, column: 21)
!2385 = !DILocation(line: 318, column: 21, scope: !2271)
!2386 = !DILocation(line: 321, column: 21, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !105, line: 319, column: 17)
!2388 = !DILocation(line: 321, column: 51, scope: !2387)
!2389 = !DILocation(line: 322, column: 17, scope: !2387)
!2390 = !DILocation(line: 323, column: 17, scope: !2271)
!2391 = !DILocation(line: 325, column: 17, scope: !2271)
!2392 = !DILocation(line: 327, column: 5, scope: !2261)
!2393 = !DILocation(line: 222, column: 46, scope: !2254)
!2394 = !DILocation(line: 222, column: 5, scope: !2254)
!2395 = distinct !{!2395, !2259, !2396}
!2396 = !DILocation(line: 327, column: 5, scope: !2255)
!2397 = !DILocation(line: 328, column: 12, scope: !2238)
!2398 = !DILocation(line: 329, column: 5, scope: !2238)
!2399 = distinct !DISubprogram(name: "ee_isdigit", scope: !105, file: !105, line: 198, type: !2400, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!64, !64}
!2402 = !{!2403, !2404}
!2403 = !DILocalVariable(name: "c", arg: 1, scope: !2399, file: !105, line: 198, type: !64)
!2404 = !DILocalVariable(name: "retval", scope: !2399, file: !105, line: 200, type: !64)
!2405 = !DILocation(line: 0, scope: !2399)
!2406 = !DILocation(line: 201, column: 16, scope: !2399)
!2407 = !DILocation(line: 201, column: 18, scope: !2399)
!2408 = !DILocation(line: 201, column: 29, scope: !2399)
!2409 = !DILocation(line: 201, column: 31, scope: !2399)
!2410 = !DILocation(line: 201, column: 26, scope: !2399)
!2411 = !DILocation(line: 201, column: 14, scope: !2399)
!2412 = !DILocation(line: 202, column: 5, scope: !2399)
!2413 = distinct !DISubprogram(name: "core_init_state", scope: !105, file: !105, line: 140, type: !2414, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !23, !12, !107}
!2416 = !{!2417, !2418, !2419, !2420, !2421, !2422, !2423}
!2417 = !DILocalVariable(name: "size", arg: 1, scope: !2413, file: !105, line: 140, type: !23)
!2418 = !DILocalVariable(name: "seed", arg: 2, scope: !2413, file: !105, line: 140, type: !12)
!2419 = !DILocalVariable(name: "p", arg: 3, scope: !2413, file: !105, line: 140, type: !107)
!2420 = !DILocalVariable(name: "total", scope: !2413, file: !105, line: 142, type: !23)
!2421 = !DILocalVariable(name: "next", scope: !2413, file: !105, line: 142, type: !23)
!2422 = !DILocalVariable(name: "i", scope: !2413, file: !105, line: 142, type: !23)
!2423 = !DILocalVariable(name: "buf", scope: !2413, file: !105, line: 143, type: !107)
!2424 = !DILocation(line: 0, scope: !2413)
!2425 = !DILocation(line: 148, column: 9, scope: !2413)
!2426 = !DILocation(line: 150, column: 5, scope: !2413)
!2427 = !DILocation(line: 149, column: 10, scope: !2413)
!2428 = !DILocation(line: 143, column: 12, scope: !2413)
!2429 = !DILocation(line: 150, column: 19, scope: !2413)
!2430 = !DILocation(line: 150, column: 26, scope: !2413)
!2431 = !DILocation(line: 150, column: 31, scope: !2413)
!2432 = !DILocation(line: 152, column: 18, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !105, line: 152, column: 13)
!2434 = distinct !DILexicalBlock(scope: !2413, file: !105, line: 151, column: 5)
!2435 = !DILocation(line: 152, column: 13, scope: !2434)
!2436 = !DILocation(line: 154, column: 18, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !105, line: 154, column: 13)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !105, line: 153, column: 9)
!2439 = !DILocation(line: 0, scope: !2437)
!2440 = !DILocation(line: 154, column: 27, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !105, line: 154, column: 13)
!2442 = !DILocation(line: 154, column: 13, scope: !2437)
!2443 = !DILocation(line: 155, column: 36, scope: !2441)
!2444 = !DILocation(line: 155, column: 21, scope: !2441)
!2445 = !DILocation(line: 155, column: 29, scope: !2441)
!2446 = !DILocation(line: 155, column: 34, scope: !2441)
!2447 = !DILocation(line: 155, column: 17, scope: !2441)
!2448 = !DILocation(line: 154, column: 36, scope: !2441)
!2449 = !DILocation(line: 154, column: 13, scope: !2441)
!2450 = distinct !{!2450, !2442, !2451}
!2451 = !DILocation(line: 155, column: 41, scope: !2437)
!2452 = !DILocation(line: 156, column: 17, scope: !2438)
!2453 = !DILocation(line: 156, column: 25, scope: !2438)
!2454 = !DILocation(line: 156, column: 30, scope: !2438)
!2455 = !DILocation(line: 157, column: 27, scope: !2438)
!2456 = !DILocation(line: 157, column: 19, scope: !2438)
!2457 = !DILocation(line: 158, column: 9, scope: !2438)
!2458 = !DILocation(line: 159, column: 13, scope: !2434)
!2459 = !DILocation(line: 160, column: 17, scope: !2434)
!2460 = !DILocation(line: 160, column: 22, scope: !2434)
!2461 = !DILocation(line: 165, column: 32, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2434, file: !105, line: 161, column: 9)
!2463 = !DILocation(line: 165, column: 37, scope: !2462)
!2464 = !DILocation(line: 165, column: 43, scope: !2462)
!2465 = !DILocation(line: 165, column: 24, scope: !2462)
!2466 = !DILocation(line: 167, column: 17, scope: !2462)
!2467 = !DILocation(line: 170, column: 34, scope: !2462)
!2468 = !DILocation(line: 170, column: 39, scope: !2462)
!2469 = !DILocation(line: 170, column: 45, scope: !2462)
!2470 = !DILocation(line: 170, column: 24, scope: !2462)
!2471 = !DILocation(line: 172, column: 17, scope: !2462)
!2472 = !DILocation(line: 175, column: 32, scope: !2462)
!2473 = !DILocation(line: 175, column: 37, scope: !2462)
!2474 = !DILocation(line: 175, column: 43, scope: !2462)
!2475 = !DILocation(line: 175, column: 24, scope: !2462)
!2476 = !DILocation(line: 177, column: 17, scope: !2462)
!2477 = !DILocation(line: 179, column: 32, scope: !2462)
!2478 = !DILocation(line: 179, column: 37, scope: !2462)
!2479 = !DILocation(line: 179, column: 43, scope: !2462)
!2480 = !DILocation(line: 179, column: 24, scope: !2462)
!2481 = !DILocation(line: 181, column: 17, scope: !2462)
!2482 = distinct !{!2482, !2426, !2483}
!2483 = !DILocation(line: 185, column: 5, scope: !2413)
!2484 = !DILocation(line: 186, column: 9, scope: !2413)
!2485 = !DILocation(line: 187, column: 5, scope: !2413)
!2486 = !DILocation(line: 187, column: 18, scope: !2413)
!2487 = !DILocation(line: 189, column: 13, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2413, file: !105, line: 188, column: 5)
!2489 = !DILocation(line: 189, column: 22, scope: !2488)
!2490 = !DILocation(line: 190, column: 14, scope: !2488)
!2491 = distinct !{!2491, !2485, !2492}
!2492 = !DILocation(line: 191, column: 5, scope: !2413)
!2493 = !DILocation(line: 195, column: 1, scope: !2413)
!2494 = distinct !DISubprogram(name: "get_seed_32", scope: !2495, file: !2495, line: 43, type: !2496, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2498)
!2495 = !DIFile(filename: "src/coremark/core_util.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!51, !43}
!2498 = !{!2499, !2500}
!2499 = !DILocalVariable(name: "i", arg: 1, scope: !2494, file: !2495, line: 43, type: !43)
!2500 = !DILocalVariable(name: "retval", scope: !2494, file: !2495, line: 45, type: !51)
!2501 = !DILocation(line: 0, scope: !2494)
!2502 = !DILocation(line: 49, column: 22, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2494, file: !2495, line: 47, column: 5)
!2504 = !DILocation(line: 50, column: 13, scope: !2503)
!2505 = !DILocation(line: 52, column: 22, scope: !2503)
!2506 = !DILocation(line: 53, column: 13, scope: !2503)
!2507 = !DILocation(line: 55, column: 22, scope: !2503)
!2508 = !DILocation(line: 56, column: 13, scope: !2503)
!2509 = !DILocation(line: 58, column: 22, scope: !2503)
!2510 = !DILocation(line: 59, column: 13, scope: !2503)
!2511 = !DILocation(line: 61, column: 22, scope: !2503)
!2512 = !DILocation(line: 62, column: 13, scope: !2503)
!2513 = !DILocation(line: 65, column: 13, scope: !2503)
!2514 = !DILocation(line: 0, scope: !2503)
!2515 = !DILocation(line: 67, column: 5, scope: !2494)
!2516 = distinct !DISubprogram(name: "crcu8", scope: !2495, file: !2495, line: 165, type: !2517, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!53, !64, !53}
!2519 = !{!2520, !2521, !2522, !2523, !2524}
!2520 = !DILocalVariable(name: "data", arg: 1, scope: !2516, file: !2495, line: 165, type: !64)
!2521 = !DILocalVariable(name: "crc", arg: 2, scope: !2516, file: !2495, line: 165, type: !53)
!2522 = !DILocalVariable(name: "i", scope: !2516, file: !2495, line: 167, type: !64)
!2523 = !DILocalVariable(name: "x16", scope: !2516, file: !2495, line: 167, type: !64)
!2524 = !DILocalVariable(name: "carry", scope: !2516, file: !2495, line: 167, type: !64)
!2525 = !DILocation(line: 0, scope: !2516)
!2526 = !DILocation(line: 169, column: 10, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2516, file: !2495, line: 169, column: 5)
!2528 = !DILocation(line: 0, scope: !2527)
!2529 = !DILocation(line: 169, column: 17, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2527, file: !2495, line: 169, column: 5)
!2531 = !DILocation(line: 169, column: 19, scope: !2530)
!2532 = !DILocation(line: 169, column: 5, scope: !2527)
!2533 = !DILocation(line: 171, column: 24, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !2495, line: 170, column: 5)
!2535 = !DILocation(line: 171, column: 29, scope: !2534)
!2536 = !DILocation(line: 171, column: 37, scope: !2534)
!2537 = !DILocation(line: 171, column: 48, scope: !2534)
!2538 = !DILocation(line: 171, column: 34, scope: !2534)
!2539 = !DILocation(line: 171, column: 15, scope: !2534)
!2540 = !DILocation(line: 172, column: 14, scope: !2534)
!2541 = !DILocation(line: 174, column: 13, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2534, file: !2495, line: 174, column: 13)
!2543 = !DILocation(line: 174, column: 17, scope: !2542)
!2544 = !DILocation(line: 174, column: 13, scope: !2534)
!2545 = !DILocation(line: 176, column: 17, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !2495, line: 175, column: 9)
!2547 = !DILocation(line: 178, column: 9, scope: !2546)
!2548 = !DILocation(line: 0, scope: !2542)
!2549 = !DILocation(line: 181, column: 13, scope: !2534)
!2550 = !DILocation(line: 182, column: 13, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2534, file: !2495, line: 182, column: 13)
!2552 = !DILocation(line: 182, column: 13, scope: !2534)
!2553 = !DILocation(line: 183, column: 17, scope: !2551)
!2554 = !DILocation(line: 183, column: 13, scope: !2551)
!2555 = !DILocation(line: 185, column: 17, scope: !2551)
!2556 = !DILocation(line: 0, scope: !2551)
!2557 = !DILocation(line: 186, column: 5, scope: !2534)
!2558 = !DILocation(line: 169, column: 25, scope: !2530)
!2559 = !DILocation(line: 169, column: 5, scope: !2530)
!2560 = distinct !{!2560, !2532, !2561}
!2561 = !DILocation(line: 186, column: 5, scope: !2527)
!2562 = !DILocation(line: 187, column: 5, scope: !2516)
!2563 = distinct !DISubprogram(name: "crcu16", scope: !2495, file: !2495, line: 190, type: !2564, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!53, !53, !53}
!2566 = !{!2567, !2568}
!2567 = !DILocalVariable(name: "newval", arg: 1, scope: !2563, file: !2495, line: 190, type: !53)
!2568 = !DILocalVariable(name: "crc", arg: 2, scope: !2563, file: !2495, line: 190, type: !53)
!2569 = !DILocation(line: 0, scope: !2563)
!2570 = !DILocation(line: 192, column: 17, scope: !2563)
!2571 = !DILocation(line: 192, column: 11, scope: !2563)
!2572 = !DILocation(line: 193, column: 25, scope: !2563)
!2573 = !DILocation(line: 193, column: 34, scope: !2563)
!2574 = !DILocation(line: 193, column: 17, scope: !2563)
!2575 = !DILocation(line: 193, column: 11, scope: !2563)
!2576 = !DILocation(line: 194, column: 5, scope: !2563)
!2577 = distinct !DISubprogram(name: "crcu32", scope: !2495, file: !2495, line: 197, type: !2578, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!53, !23, !53}
!2580 = !{!2581, !2582}
!2581 = !DILocalVariable(name: "newval", arg: 1, scope: !2577, file: !2495, line: 197, type: !23)
!2582 = !DILocalVariable(name: "crc", arg: 2, scope: !2577, file: !2495, line: 197, type: !53)
!2583 = !DILocation(line: 0, scope: !2577)
!2584 = !DILocation(line: 199, column: 17, scope: !2577)
!2585 = !DILocation(line: 199, column: 11, scope: !2577)
!2586 = !DILocation(line: 200, column: 33, scope: !2577)
!2587 = !DILocation(line: 200, column: 17, scope: !2577)
!2588 = !DILocation(line: 200, column: 11, scope: !2577)
!2589 = !DILocation(line: 201, column: 5, scope: !2577)
!2590 = distinct !DISubprogram(name: "crc16", scope: !2495, file: !2495, line: 204, type: !2591, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!53, !12, !53}
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "newval", arg: 1, scope: !2590, file: !2495, line: 204, type: !12)
!2595 = !DILocalVariable(name: "crc", arg: 2, scope: !2590, file: !2495, line: 204, type: !53)
!2596 = !DILocation(line: 0, scope: !2590)
!2597 = !DILocation(line: 206, column: 12, scope: !2590)
!2598 = !DILocation(line: 206, column: 5, scope: !2590)
!2599 = distinct !DISubprogram(name: "check_data_types", scope: !2495, file: !2495, line: 210, type: !2600, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !2601)
!2600 = !DISubroutineType(types: !101)
!2601 = !{!2602}
!2602 = !DILocalVariable(name: "retval", scope: !2599, file: !2495, line: 212, type: !64)
!2603 = !DILocation(line: 0, scope: !2599)
!2604 = !DILocation(line: 244, column: 9, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2599, file: !2495, line: 244, column: 9)
!2606 = !DILocation(line: 244, column: 16, scope: !2605)
!2607 = !DILocation(line: 244, column: 9, scope: !2599)
!2608 = !DILocation(line: 246, column: 9, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !2495, line: 245, column: 5)
!2610 = !DILocation(line: 247, column: 5, scope: !2609)
!2611 = !DILocation(line: 248, column: 5, scope: !2599)
!2612 = distinct !DISubprogram(name: "clock", scope: !125, file: !125, line: 73, type: !2613, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!137}
!2615 = !DILocation(line: 74, column: 10, scope: !2612)
!2616 = !{!2617, !2617, i64 0}
!2617 = !{!"long long", !296, i64 0}
!2618 = !DILocation(line: 74, column: 3, scope: !2612)
!2619 = distinct !DISubprogram(name: "start_time", scope: !125, file: !125, line: 90, type: !214, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2620 = !DILocation(line: 92, column: 5, scope: !2619)
!2621 = !DILocation(line: 93, column: 1, scope: !2619)
!2622 = distinct !DISubprogram(name: "stop_time", scope: !125, file: !125, line: 103, type: !214, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!2623 = !DILocation(line: 105, column: 5, scope: !2622)
!2624 = !DILocation(line: 106, column: 1, scope: !2622)
!2625 = distinct !DISubprogram(name: "get_time", scope: !125, file: !125, line: 117, type: !2626, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!117}
!2628 = !{!2629}
!2629 = !DILocalVariable(name: "elapsed", scope: !2625, file: !125, line: 119, type: !117)
!2630 = !DILocation(line: 120, column: 24, scope: !2625)
!2631 = !DILocation(line: 120, column: 11, scope: !2625)
!2632 = !DILocation(line: 0, scope: !2625)
!2633 = !DILocation(line: 121, column: 5, scope: !2625)
!2634 = distinct !DISubprogram(name: "time_in_secs", scope: !125, file: !125, line: 131, type: !2635, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!68, !117}
!2637 = !{!2638, !2639}
!2638 = !DILocalVariable(name: "ticks", arg: 1, scope: !2634, file: !125, line: 131, type: !117)
!2639 = !DILocalVariable(name: "retval", scope: !2634, file: !125, line: 133, type: !68)
!2640 = !DILocation(line: 0, scope: !2634)
!2641 = !DILocation(line: 133, column: 24, scope: !2634)
!2642 = !DILocation(line: 133, column: 41, scope: !2634)
!2643 = !DILocation(line: 134, column: 5, scope: !2634)
!2644 = distinct !DISubprogram(name: "portable_init", scope: !125, file: !125, line: 144, type: !2645, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2653)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{null, !2647, !2652, !1019}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_portable", file: !13, line: 195, baseType: !2649)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CORE_PORTABLE_S", file: !13, line: 192, size: 8, elements: !2650)
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "portable_id", scope: !2649, file: !13, line: 194, baseType: !64, size: 8)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!2653 = !{!2654, !2655, !2656}
!2654 = !DILocalVariable(name: "p", arg: 1, scope: !2644, file: !125, line: 144, type: !2647)
!2655 = !DILocalVariable(name: "argc", arg: 2, scope: !2644, file: !125, line: 144, type: !2652)
!2656 = !DILocalVariable(name: "argv", arg: 3, scope: !2644, file: !125, line: 144, type: !1019)
!2657 = !DILocation(line: 0, scope: !2644)
!2658 = !DILocation(line: 156, column: 8, scope: !2644)
!2659 = !DILocation(line: 156, column: 20, scope: !2644)
!2660 = !{!331, !296, i64 0}
!2661 = !DILocation(line: 157, column: 1, scope: !2644)
!2662 = distinct !DISubprogram(name: "portable_fini", scope: !125, file: !125, line: 162, type: !2663, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !2665)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !2647}
!2665 = !{!2666}
!2666 = !DILocalVariable(name: "p", arg: 1, scope: !2662, file: !125, line: 162, type: !2647)
!2667 = !DILocation(line: 0, scope: !2662)
!2668 = !DILocation(line: 164, column: 8, scope: !2662)
!2669 = !DILocation(line: 164, column: 20, scope: !2662)
!2670 = !DILocation(line: 165, column: 1, scope: !2662)
!2671 = distinct !DISubprogram(name: "printf_", scope: !148, file: !148, line: 862, type: !2672, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2676)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!43, !2674, null}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2676 = !{!2677, !2678, !2685, !2687}
!2677 = !DILocalVariable(name: "format", arg: 1, scope: !2671, file: !148, line: 862, type: !2674)
!2678 = !DILocalVariable(name: "va", scope: !2671, file: !148, line: 864, type: !2679)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2680, line: 14, baseType: !2681)
!2680 = !DIFile(filename: "noelle/code/llvm-9.0.1-install/lib/clang/9.0.1/include/stdarg.h", directory: "/home/vkortbeek/devel")
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, line: 864, baseType: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", file: !158, line: 864, size: 32, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2682, file: !158, line: 864, baseType: !19, size: 32)
!2685 = !DILocalVariable(name: "buffer", scope: !2671, file: !148, line: 866, type: !2686)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !1032)
!2687 = !DILocalVariable(name: "ret", scope: !2671, file: !148, line: 867, type: !2688)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2689 = !DILocation(line: 0, scope: !2671)
!2690 = !DILocation(line: 864, column: 3, scope: !2671)
!2691 = !DILocation(line: 864, column: 11, scope: !2671)
!2692 = !DILocation(line: 865, column: 3, scope: !2671)
!2693 = !DILocation(line: 866, column: 3, scope: !2671)
!2694 = !DILocation(line: 866, column: 8, scope: !2671)
!2695 = !DILocation(line: 867, column: 41, scope: !2671)
!2696 = !DILocation(line: 867, column: 19, scope: !2671)
!2697 = !DILocation(line: 868, column: 3, scope: !2671)
!2698 = !DILocation(line: 870, column: 1, scope: !2671)
!2699 = !DILocation(line: 869, column: 3, scope: !2671)
!2700 = distinct !DISubprogram(name: "_out_char", scope: !148, file: !148, line: 149, type: !155, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2701)
!2701 = !{!2702, !2703, !2704, !2705}
!2702 = !DILocalVariable(name: "character", arg: 1, scope: !2700, file: !148, line: 149, type: !67)
!2703 = !DILocalVariable(name: "buffer", arg: 2, scope: !2700, file: !148, line: 149, type: !19)
!2704 = !DILocalVariable(name: "idx", arg: 3, scope: !2700, file: !148, line: 149, type: !151)
!2705 = !DILocalVariable(name: "maxlen", arg: 4, scope: !2700, file: !148, line: 149, type: !151)
!2706 = !DILocation(line: 0, scope: !2700)
!2707 = !DILocation(line: 152, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2700, file: !148, line: 152, column: 7)
!2709 = !DILocation(line: 152, column: 7, scope: !2700)
!2710 = !DILocation(line: 153, column: 5, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !148, line: 152, column: 18)
!2712 = !DILocation(line: 154, column: 3, scope: !2711)
!2713 = !DILocation(line: 155, column: 1, scope: !2700)
!2714 = distinct !DISubprogram(name: "_vsnprintf", scope: !148, file: !148, line: 577, type: !2715, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2718)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!43, !153, !66, !2717, !2674, !2679}
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2734, !2740, !2743, !2750, !2755, !2757, !2763, !2765, !2767, !2768}
!2719 = !DILocalVariable(name: "out", arg: 1, scope: !2714, file: !148, line: 577, type: !153)
!2720 = !DILocalVariable(name: "buffer", arg: 2, scope: !2714, file: !148, line: 577, type: !66)
!2721 = !DILocalVariable(name: "maxlen", arg: 3, scope: !2714, file: !148, line: 577, type: !2717)
!2722 = !DILocalVariable(name: "format", arg: 4, scope: !2714, file: !148, line: 577, type: !2674)
!2723 = !DILocalVariable(name: "va", arg: 5, scope: !2714, file: !148, line: 577, type: !2679)
!2724 = !DILocalVariable(name: "flags", scope: !2714, file: !148, line: 579, type: !24)
!2725 = !DILocalVariable(name: "width", scope: !2714, file: !148, line: 579, type: !24)
!2726 = !DILocalVariable(name: "precision", scope: !2714, file: !148, line: 579, type: !24)
!2727 = !DILocalVariable(name: "n", scope: !2714, file: !148, line: 579, type: !24)
!2728 = !DILocalVariable(name: "idx", scope: !2714, file: !148, line: 580, type: !151)
!2729 = !DILocalVariable(name: "w", scope: !2730, file: !148, line: 620, type: !2688)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !148, line: 619, column: 30)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !148, line: 619, column: 14)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 616, column: 9)
!2733 = distinct !DILexicalBlock(scope: !2714, file: !148, line: 588, column: 3)
!2734 = !DILocalVariable(name: "prec", scope: !2735, file: !148, line: 640, type: !2688)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !148, line: 639, column: 32)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !148, line: 639, column: 16)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !148, line: 636, column: 11)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !148, line: 633, column: 25)
!2739 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 633, column: 9)
!2740 = !DILocalVariable(name: "base", scope: !2741, file: !148, line: 692, type: !24)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 690, column: 18)
!2742 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 683, column: 22)
!2743 = !DILocalVariable(name: "value", scope: !2744, file: !148, line: 726, type: !2748)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !148, line: 724, column: 40)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !148, line: 724, column: 15)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 722, column: 51)
!2747 = distinct !DILexicalBlock(scope: !2741, file: !148, line: 722, column: 13)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2750 = !DILocalVariable(name: "value", scope: !2751, file: !148, line: 731, type: !2753)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !148, line: 730, column: 40)
!2752 = distinct !DILexicalBlock(scope: !2745, file: !148, line: 730, column: 20)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!2755 = !DILocalVariable(name: "value", scope: !2756, file: !148, line: 735, type: !2688)
!2756 = distinct !DILexicalBlock(scope: !2752, file: !148, line: 734, column: 16)
!2757 = !DILocalVariable(name: "value", scope: !2758, file: !148, line: 750, type: !2762)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !148, line: 749, column: 16)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !148, line: 746, column: 20)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !148, line: 741, column: 15)
!2761 = distinct !DILexicalBlock(scope: !2747, file: !148, line: 739, column: 14)
!2762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!2763 = !DILocalVariable(name: "l", scope: !2764, file: !148, line: 777, type: !24)
!2764 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 776, column: 18)
!2765 = !DILocalVariable(name: "p", scope: !2766, file: !148, line: 797, type: !2674)
!2766 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 796, column: 18)
!2767 = !DILocalVariable(name: "l", scope: !2766, file: !148, line: 798, type: !24)
!2768 = !DILocalVariable(name: "is_ll", scope: !2769, file: !148, line: 826, type: !2770)
!2769 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 822, column: 18)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2771 = !DILocation(line: 0, scope: !2714)
!2772 = !DILocation(line: 577, column: 88, scope: !2714)
!2773 = !DILocation(line: 577, column: 104, scope: !2714)
!2774 = !DILocation(line: 582, column: 8, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2714, file: !148, line: 582, column: 7)
!2776 = !DILocation(line: 582, column: 7, scope: !2714)
!2777 = !DILocation(line: 585, column: 3, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !148, line: 582, column: 16)
!2779 = !DILocation(line: 587, column: 3, scope: !2714)
!2780 = !DILocation(line: 587, column: 11, scope: !2714)
!2781 = !DILocation(line: 587, column: 10, scope: !2714)
!2782 = !DILocation(line: 590, column: 10, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 590, column: 9)
!2784 = !DILocation(line: 590, column: 9, scope: !2783)
!2785 = !DILocation(line: 590, column: 17, scope: !2783)
!2786 = !DILocation(line: 590, column: 9, scope: !2733)
!2787 = !DILocation(line: 592, column: 12, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2783, file: !148, line: 590, column: 25)
!2789 = !DILocation(line: 592, column: 11, scope: !2788)
!2790 = !DILocation(line: 592, column: 31, scope: !2788)
!2791 = !DILocation(line: 592, column: 7, scope: !2788)
!2792 = !DILocation(line: 593, column: 13, scope: !2788)
!2793 = !DILocation(line: 594, column: 7, scope: !2788)
!2794 = distinct !{!2794, !2779, !2795}
!2795 = !DILocation(line: 850, column: 3, scope: !2714)
!2796 = !DILocation(line: 598, column: 13, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2783, file: !148, line: 596, column: 10)
!2798 = !DILocation(line: 603, column: 5, scope: !2733)
!2799 = !DILocation(line: 602, column: 11, scope: !2733)
!2800 = !DILocation(line: 604, column: 16, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 603, column: 8)
!2802 = !DILocation(line: 604, column: 15, scope: !2801)
!2803 = !DILocation(line: 605, column: 25, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2801, file: !148, line: 604, column: 24)
!2805 = !DILocation(line: 605, column: 49, scope: !2804)
!2806 = !DILocation(line: 605, column: 61, scope: !2804)
!2807 = !DILocation(line: 606, column: 25, scope: !2804)
!2808 = !DILocation(line: 606, column: 49, scope: !2804)
!2809 = !DILocation(line: 606, column: 61, scope: !2804)
!2810 = !DILocation(line: 607, column: 25, scope: !2804)
!2811 = !DILocation(line: 607, column: 49, scope: !2804)
!2812 = !DILocation(line: 607, column: 61, scope: !2804)
!2813 = !DILocation(line: 608, column: 25, scope: !2804)
!2814 = !DILocation(line: 608, column: 49, scope: !2804)
!2815 = !DILocation(line: 608, column: 61, scope: !2804)
!2816 = !DILocation(line: 609, column: 25, scope: !2804)
!2817 = !DILocation(line: 609, column: 49, scope: !2804)
!2818 = !DILocation(line: 609, column: 61, scope: !2804)
!2819 = !DILocation(line: 610, column: 61, scope: !2804)
!2820 = !DILocation(line: 0, scope: !2804)
!2821 = !DILocation(line: 0, scope: !2733)
!2822 = !DILocation(line: 612, column: 5, scope: !2801)
!2823 = distinct !{!2823, !2798, !2824}
!2824 = !DILocation(line: 612, column: 15, scope: !2733)
!2825 = !DILocation(line: 616, column: 20, scope: !2732)
!2826 = !DILocation(line: 616, column: 19, scope: !2732)
!2827 = !DILocation(line: 616, column: 9, scope: !2732)
!2828 = !DILocation(line: 616, column: 9, scope: !2733)
!2829 = !DILocation(line: 617, column: 15, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2732, file: !148, line: 616, column: 29)
!2831 = !DILocation(line: 618, column: 5, scope: !2830)
!2832 = !DILocation(line: 619, column: 15, scope: !2731)
!2833 = !DILocation(line: 619, column: 14, scope: !2731)
!2834 = !DILocation(line: 619, column: 22, scope: !2731)
!2835 = !DILocation(line: 619, column: 14, scope: !2732)
!2836 = !DILocation(line: 620, column: 21, scope: !2730)
!2837 = !DILocation(line: 0, scope: !2730)
!2838 = !DILocation(line: 621, column: 13, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2730, file: !148, line: 621, column: 11)
!2840 = !DILocation(line: 621, column: 11, scope: !2730)
!2841 = !DILocation(line: 622, column: 15, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !148, line: 621, column: 18)
!2843 = !DILocation(line: 623, column: 31, scope: !2842)
!2844 = !DILocation(line: 624, column: 7, scope: !2842)
!2845 = !DILocation(line: 0, scope: !2839)
!2846 = !DILocation(line: 628, column: 13, scope: !2730)
!2847 = !DILocation(line: 629, column: 5, scope: !2730)
!2848 = !DILocation(line: 0, scope: !2732)
!2849 = !DILocation(line: 633, column: 10, scope: !2739)
!2850 = !DILocation(line: 633, column: 9, scope: !2739)
!2851 = !DILocation(line: 633, column: 17, scope: !2739)
!2852 = !DILocation(line: 633, column: 9, scope: !2733)
!2853 = !DILocation(line: 634, column: 13, scope: !2738)
!2854 = !DILocation(line: 635, column: 13, scope: !2738)
!2855 = !DILocation(line: 636, column: 22, scope: !2737)
!2856 = !DILocation(line: 636, column: 21, scope: !2737)
!2857 = !DILocation(line: 636, column: 11, scope: !2737)
!2858 = !DILocation(line: 636, column: 11, scope: !2738)
!2859 = !DILocation(line: 637, column: 21, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2737, file: !148, line: 636, column: 31)
!2861 = !DILocation(line: 638, column: 7, scope: !2860)
!2862 = !DILocation(line: 639, column: 17, scope: !2736)
!2863 = !DILocation(line: 639, column: 16, scope: !2736)
!2864 = !DILocation(line: 639, column: 24, scope: !2736)
!2865 = !DILocation(line: 639, column: 16, scope: !2737)
!2866 = !DILocation(line: 640, column: 31, scope: !2735)
!2867 = !DILocation(line: 0, scope: !2735)
!2868 = !DILocation(line: 641, column: 26, scope: !2735)
!2869 = !DILocation(line: 641, column: 21, scope: !2735)
!2870 = !DILocation(line: 642, column: 15, scope: !2735)
!2871 = !DILocation(line: 643, column: 7, scope: !2735)
!2872 = !DILocation(line: 0, scope: !2737)
!2873 = !DILocation(line: 644, column: 5, scope: !2738)
!2874 = !DILocation(line: 647, column: 14, scope: !2733)
!2875 = !DILocation(line: 647, column: 13, scope: !2733)
!2876 = !DILocation(line: 649, column: 15, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2733, file: !148, line: 647, column: 22)
!2878 = !DILocation(line: 650, column: 15, scope: !2877)
!2879 = !DILocation(line: 651, column: 14, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !148, line: 651, column: 13)
!2881 = !DILocation(line: 651, column: 13, scope: !2880)
!2882 = !DILocation(line: 651, column: 21, scope: !2880)
!2883 = !DILocation(line: 651, column: 13, scope: !2877)
!2884 = !DILocation(line: 652, column: 17, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !148, line: 651, column: 29)
!2886 = !DILocation(line: 653, column: 17, scope: !2885)
!2887 = !DILocation(line: 654, column: 9, scope: !2885)
!2888 = !DILocation(line: 0, scope: !2877)
!2889 = !DILocation(line: 655, column: 9, scope: !2877)
!2890 = !DILocation(line: 657, column: 15, scope: !2877)
!2891 = !DILocation(line: 658, column: 15, scope: !2877)
!2892 = !DILocation(line: 659, column: 14, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2877, file: !148, line: 659, column: 13)
!2894 = !DILocation(line: 659, column: 13, scope: !2893)
!2895 = !DILocation(line: 659, column: 21, scope: !2893)
!2896 = !DILocation(line: 659, column: 13, scope: !2877)
!2897 = !DILocation(line: 660, column: 17, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2893, file: !148, line: 659, column: 29)
!2899 = !DILocation(line: 661, column: 17, scope: !2898)
!2900 = !DILocation(line: 662, column: 9, scope: !2898)
!2901 = !DILocation(line: 663, column: 9, scope: !2877)
!2902 = !DILocation(line: 666, column: 15, scope: !2877)
!2903 = !DILocation(line: 667, column: 15, scope: !2877)
!2904 = !DILocation(line: 668, column: 9, scope: !2877)
!2905 = !DILocation(line: 671, column: 15, scope: !2877)
!2906 = !DILocation(line: 672, column: 15, scope: !2877)
!2907 = !DILocation(line: 673, column: 9, scope: !2877)
!2908 = !DILocation(line: 675, column: 15, scope: !2877)
!2909 = !DILocation(line: 676, column: 15, scope: !2877)
!2910 = !DILocation(line: 677, column: 9, scope: !2877)
!2911 = !DILocation(line: 679, column: 9, scope: !2877)
!2912 = !DILocation(line: 683, column: 14, scope: !2733)
!2913 = !DILocation(line: 683, column: 13, scope: !2733)
!2914 = !DILocation(line: 693, column: 14, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2741, file: !148, line: 693, column: 13)
!2916 = !DILocation(line: 693, column: 13, scope: !2915)
!2917 = !DILocation(line: 693, column: 21, scope: !2915)
!2918 = !DILocation(line: 693, column: 28, scope: !2915)
!2919 = !DILocation(line: 693, column: 32, scope: !2915)
!2920 = !DILocation(line: 693, column: 31, scope: !2915)
!2921 = !DILocation(line: 693, column: 39, scope: !2915)
!2922 = !DILocation(line: 693, column: 13, scope: !2741)
!2923 = !DILocation(line: 0, scope: !2741)
!2924 = !DILocation(line: 695, column: 9, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2915, file: !148, line: 693, column: 47)
!2926 = !DILocation(line: 696, column: 19, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2915, file: !148, line: 696, column: 18)
!2928 = !DILocation(line: 696, column: 18, scope: !2927)
!2929 = !DILocation(line: 696, column: 26, scope: !2927)
!2930 = !DILocation(line: 696, column: 18, scope: !2915)
!2931 = !DILocation(line: 698, column: 9, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !148, line: 696, column: 34)
!2933 = !DILocation(line: 699, column: 19, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2927, file: !148, line: 699, column: 18)
!2935 = !DILocation(line: 699, column: 18, scope: !2934)
!2936 = !DILocation(line: 699, column: 26, scope: !2934)
!2937 = !DILocation(line: 699, column: 18, scope: !2927)
!2938 = !DILocation(line: 701, column: 9, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !148, line: 699, column: 34)
!2940 = !DILocation(line: 704, column: 17, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2934, file: !148, line: 702, column: 14)
!2942 = !DILocation(line: 0, scope: !2934)
!2943 = !DILocation(line: 0, scope: !2927)
!2944 = !DILocation(line: 0, scope: !2915)
!2945 = !DILocation(line: 707, column: 14, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2741, file: !148, line: 707, column: 13)
!2947 = !DILocation(line: 707, column: 13, scope: !2946)
!2948 = !DILocation(line: 707, column: 21, scope: !2946)
!2949 = !DILocation(line: 707, column: 13, scope: !2741)
!2950 = !DILocation(line: 708, column: 17, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !148, line: 707, column: 29)
!2952 = !DILocation(line: 709, column: 9, scope: !2951)
!2953 = !DILocation(line: 712, column: 15, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2741, file: !148, line: 712, column: 13)
!2955 = !DILocation(line: 712, column: 14, scope: !2954)
!2956 = !DILocation(line: 712, column: 22, scope: !2954)
!2957 = !DILocation(line: 712, column: 30, scope: !2954)
!2958 = !DILocation(line: 712, column: 35, scope: !2954)
!2959 = !DILocation(line: 712, column: 34, scope: !2954)
!2960 = !DILocation(line: 712, column: 42, scope: !2954)
!2961 = !DILocation(line: 712, column: 13, scope: !2741)
!2962 = !DILocation(line: 713, column: 17, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2954, file: !148, line: 712, column: 51)
!2964 = !DILocation(line: 714, column: 9, scope: !2963)
!2965 = !DILocation(line: 717, column: 19, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2741, file: !148, line: 717, column: 13)
!2967 = !DILocation(line: 717, column: 13, scope: !2741)
!2968 = !DILocation(line: 718, column: 17, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2966, file: !148, line: 717, column: 38)
!2970 = !DILocation(line: 719, column: 9, scope: !2969)
!2971 = !DILocation(line: 722, column: 15, scope: !2747)
!2972 = !DILocation(line: 722, column: 14, scope: !2747)
!2973 = !DILocation(line: 722, column: 22, scope: !2747)
!2974 = !DILocation(line: 722, column: 30, scope: !2747)
!2975 = !DILocation(line: 722, column: 35, scope: !2747)
!2976 = !DILocation(line: 722, column: 34, scope: !2747)
!2977 = !DILocation(line: 722, column: 42, scope: !2747)
!2978 = !DILocation(line: 722, column: 13, scope: !2741)
!2979 = !DILocation(line: 724, column: 21, scope: !2745)
!2980 = !DILocation(line: 724, column: 15, scope: !2746)
!2981 = !DILocation(line: 726, column: 37, scope: !2744)
!2982 = !DILocation(line: 0, scope: !2744)
!2983 = !DILocation(line: 727, column: 88, scope: !2744)
!2984 = !DILocation(line: 727, column: 82, scope: !2744)
!2985 = !DILocation(line: 727, column: 104, scope: !2744)
!2986 = !DILocation(line: 727, column: 120, scope: !2744)
!2987 = !DILocation(line: 727, column: 125, scope: !2744)
!2988 = !DILocation(line: 727, column: 19, scope: !2744)
!2989 = !DILocation(line: 729, column: 11, scope: !2744)
!2990 = !DILocation(line: 730, column: 26, scope: !2752)
!2991 = !DILocation(line: 730, column: 20, scope: !2745)
!2992 = !DILocation(line: 731, column: 32, scope: !2751)
!2993 = !DILocation(line: 0, scope: !2751)
!2994 = !DILocation(line: 732, column: 78, scope: !2751)
!2995 = !DILocation(line: 732, column: 72, scope: !2751)
!2996 = !DILocation(line: 732, column: 94, scope: !2751)
!2997 = !DILocation(line: 732, column: 110, scope: !2751)
!2998 = !DILocation(line: 732, column: 19, scope: !2751)
!2999 = !DILocation(line: 733, column: 11, scope: !2751)
!3000 = !DILocation(line: 735, column: 38, scope: !2756)
!3001 = !DILocation(line: 735, column: 31, scope: !2756)
!3002 = !DILocation(line: 735, column: 60, scope: !2756)
!3003 = !DILocation(line: 735, column: 54, scope: !2756)
!3004 = !DILocation(line: 735, column: 85, scope: !2756)
!3005 = !DILocation(line: 735, column: 78, scope: !2756)
!3006 = !DILocation(line: 735, column: 113, scope: !2756)
!3007 = !DILocation(line: 735, column: 102, scope: !2756)
!3008 = !DILocation(line: 735, column: 131, scope: !2756)
!3009 = !DILocation(line: 0, scope: !2756)
!3010 = !DILocation(line: 736, column: 77, scope: !2756)
!3011 = !DILocation(line: 736, column: 71, scope: !2756)
!3012 = !DILocation(line: 736, column: 93, scope: !2756)
!3013 = !DILocation(line: 736, column: 109, scope: !2756)
!3014 = !DILocation(line: 736, column: 19, scope: !2756)
!3015 = !DILocation(line: 0, scope: !2752)
!3016 = !DILocation(line: 0, scope: !2745)
!3017 = !DILocation(line: 738, column: 9, scope: !2746)
!3018 = !DILocation(line: 741, column: 21, scope: !2760)
!3019 = !DILocation(line: 741, column: 15, scope: !2761)
!3020 = !DILocation(line: 743, column: 61, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2760, file: !148, line: 741, column: 40)
!3022 = !DILocation(line: 743, column: 100, scope: !3021)
!3023 = !DILocation(line: 743, column: 19, scope: !3021)
!3024 = !DILocation(line: 745, column: 11, scope: !3021)
!3025 = !DILocation(line: 746, column: 26, scope: !2759)
!3026 = !DILocation(line: 746, column: 20, scope: !2760)
!3027 = !DILocation(line: 747, column: 56, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2759, file: !148, line: 746, column: 40)
!3029 = !DILocation(line: 747, column: 19, scope: !3028)
!3030 = !DILocation(line: 748, column: 11, scope: !3028)
!3031 = !DILocation(line: 750, column: 47, scope: !2758)
!3032 = !DILocation(line: 750, column: 40, scope: !2758)
!3033 = !DILocation(line: 750, column: 78, scope: !2758)
!3034 = !DILocation(line: 750, column: 63, scope: !2758)
!3035 = !DILocation(line: 750, column: 112, scope: !2758)
!3036 = !DILocation(line: 750, column: 105, scope: !2758)
!3037 = !DILocation(line: 750, column: 149, scope: !2758)
!3038 = !DILocation(line: 750, column: 129, scope: !2758)
!3039 = !DILocation(line: 750, column: 176, scope: !2758)
!3040 = !DILocation(line: 0, scope: !2758)
!3041 = !DILocation(line: 751, column: 19, scope: !2758)
!3042 = !DILocation(line: 0, scope: !2759)
!3043 = !DILocation(line: 0, scope: !2760)
!3044 = !DILocation(line: 0, scope: !2747)
!3045 = !DILocation(line: 754, column: 15, scope: !2741)
!3046 = !DILocation(line: 760, column: 14, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 760, column: 13)
!3048 = !DILocation(line: 760, column: 13, scope: !3047)
!3049 = !DILocation(line: 760, column: 21, scope: !3047)
!3050 = !DILocation(line: 760, column: 13, scope: !2742)
!3051 = !DILocation(line: 760, column: 35, scope: !3047)
!3052 = !DILocation(line: 760, column: 29, scope: !3047)
!3053 = !DILocation(line: 761, column: 47, scope: !2742)
!3054 = !DILocation(line: 761, column: 15, scope: !2742)
!3055 = !DILocation(line: 762, column: 15, scope: !2742)
!3056 = !DILocation(line: 763, column: 9, scope: !2742)
!3057 = !DILocation(line: 769, column: 15, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 769, column: 13)
!3059 = !DILocation(line: 769, column: 14, scope: !3058)
!3060 = !DILocation(line: 769, column: 22, scope: !3058)
!3061 = !DILocation(line: 769, column: 29, scope: !3058)
!3062 = !DILocation(line: 769, column: 33, scope: !3058)
!3063 = !DILocation(line: 769, column: 32, scope: !3058)
!3064 = !DILocation(line: 769, column: 40, scope: !3058)
!3065 = !DILocation(line: 769, column: 13, scope: !2742)
!3066 = !DILocation(line: 769, column: 55, scope: !3058)
!3067 = !DILocation(line: 769, column: 49, scope: !3058)
!3068 = !DILocation(line: 770, column: 15, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2742, file: !148, line: 770, column: 13)
!3070 = !DILocation(line: 770, column: 14, scope: !3069)
!3071 = !DILocation(line: 770, column: 22, scope: !3069)
!3072 = !DILocation(line: 770, column: 29, scope: !3069)
!3073 = !DILocation(line: 770, column: 33, scope: !3069)
!3074 = !DILocation(line: 770, column: 32, scope: !3069)
!3075 = !DILocation(line: 770, column: 40, scope: !3069)
!3076 = !DILocation(line: 770, column: 13, scope: !2742)
!3077 = !DILocation(line: 770, column: 55, scope: !3069)
!3078 = !DILocation(line: 770, column: 49, scope: !3069)
!3079 = !DILocation(line: 0, scope: !2742)
!3080 = !DILocation(line: 771, column: 47, scope: !2742)
!3081 = !DILocation(line: 771, column: 15, scope: !2742)
!3082 = !DILocation(line: 772, column: 15, scope: !2742)
!3083 = !DILocation(line: 773, column: 9, scope: !2742)
!3084 = !DILocation(line: 0, scope: !2764)
!3085 = !DILocation(line: 779, column: 21, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2764, file: !148, line: 779, column: 13)
!3087 = !DILocation(line: 779, column: 13, scope: !2764)
!3088 = !DILocation(line: 780, column: 11, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !148, line: 779, column: 36)
!3090 = !DILocation(line: 780, column: 19, scope: !3089)
!3091 = !DILocation(line: 780, column: 22, scope: !3089)
!3092 = !DILocation(line: 781, column: 33, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !148, line: 780, column: 31)
!3094 = !DILocation(line: 781, column: 13, scope: !3093)
!3095 = distinct !{!3095, !3088, !3096}
!3096 = !DILocation(line: 782, column: 11, scope: !3089)
!3097 = !DILocation(line: 783, column: 9, scope: !3089)
!3098 = !DILocation(line: 580, column: 10, scope: !2714)
!3099 = !DILocation(line: 785, column: 19, scope: !2764)
!3100 = !DILocation(line: 785, column: 13, scope: !2764)
!3101 = !DILocation(line: 785, column: 47, scope: !2764)
!3102 = !DILocation(line: 785, column: 9, scope: !2764)
!3103 = !DILocation(line: 787, column: 19, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !2764, file: !148, line: 787, column: 13)
!3105 = !DILocation(line: 787, column: 13, scope: !2764)
!3106 = !DILocation(line: 788, column: 11, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3104, file: !148, line: 787, column: 33)
!3108 = !DILocation(line: 788, column: 19, scope: !3107)
!3109 = !DILocation(line: 788, column: 22, scope: !3107)
!3110 = !DILocation(line: 789, column: 33, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !148, line: 788, column: 31)
!3112 = !DILocation(line: 789, column: 13, scope: !3111)
!3113 = distinct !{!3113, !3106, !3114}
!3114 = !DILocation(line: 790, column: 11, scope: !3107)
!3115 = !DILocation(line: 791, column: 9, scope: !3107)
!3116 = !DILocation(line: 792, column: 15, scope: !2764)
!3117 = !DILocation(line: 797, column: 25, scope: !2766)
!3118 = !DILocation(line: 0, scope: !2766)
!3119 = !DILocation(line: 798, column: 40, scope: !2766)
!3120 = !DILocation(line: 798, column: 26, scope: !2766)
!3121 = !DILocation(line: 800, column: 19, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !2766, file: !148, line: 800, column: 13)
!3123 = !DILocation(line: 800, column: 13, scope: !2766)
!3124 = !DILocation(line: 801, column: 18, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !148, line: 800, column: 38)
!3126 = !DILocation(line: 801, column: 16, scope: !3125)
!3127 = !DILocation(line: 802, column: 9, scope: !3125)
!3128 = !DILocation(line: 803, column: 21, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !2766, file: !148, line: 803, column: 13)
!3130 = !DILocation(line: 803, column: 13, scope: !2766)
!3131 = !DILocation(line: 804, column: 11, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3129, file: !148, line: 803, column: 36)
!3133 = !DILocation(line: 804, column: 19, scope: !3132)
!3134 = !DILocation(line: 804, column: 22, scope: !3132)
!3135 = !DILocation(line: 805, column: 33, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !148, line: 804, column: 31)
!3137 = !DILocation(line: 805, column: 13, scope: !3136)
!3138 = distinct !{!3138, !3131, !3139}
!3139 = !DILocation(line: 806, column: 11, scope: !3132)
!3140 = !DILocation(line: 807, column: 9, scope: !3132)
!3141 = !DILocation(line: 809, column: 9, scope: !2766)
!3142 = !DILocation(line: 809, column: 17, scope: !2766)
!3143 = !DILocation(line: 809, column: 20, scope: !2766)
!3144 = !DILocation(line: 809, column: 26, scope: !2766)
!3145 = !DILocation(line: 809, column: 38, scope: !2766)
!3146 = !DILocation(line: 809, column: 57, scope: !2766)
!3147 = !DILocation(line: 809, column: 69, scope: !2766)
!3148 = !DILocation(line: 810, column: 18, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !2766, file: !148, line: 809, column: 74)
!3150 = !DILocation(line: 810, column: 15, scope: !3149)
!3151 = !DILocation(line: 810, column: 34, scope: !3149)
!3152 = !DILocation(line: 810, column: 11, scope: !3149)
!3153 = distinct !{!3153, !3141, !3154}
!3154 = !DILocation(line: 811, column: 9, scope: !2766)
!3155 = !DILocation(line: 813, column: 19, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !2766, file: !148, line: 813, column: 13)
!3157 = !DILocation(line: 813, column: 13, scope: !2766)
!3158 = !DILocation(line: 814, column: 11, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3156, file: !148, line: 813, column: 33)
!3160 = !DILocation(line: 814, column: 19, scope: !3159)
!3161 = !DILocation(line: 814, column: 22, scope: !3159)
!3162 = !DILocation(line: 815, column: 33, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !148, line: 814, column: 31)
!3164 = !DILocation(line: 815, column: 13, scope: !3163)
!3165 = distinct !{!3165, !3158, !3166}
!3166 = !DILocation(line: 816, column: 11, scope: !3159)
!3167 = !DILocation(line: 817, column: 9, scope: !3159)
!3168 = !DILocation(line: 818, column: 15, scope: !2766)
!3169 = !DILocation(line: 824, column: 15, scope: !2769)
!3170 = !DILocation(line: 0, scope: !2769)
!3171 = !DILocation(line: 832, column: 81, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !148, line: 830, column: 14)
!3173 = distinct !DILexicalBlock(scope: !2769, file: !148, line: 827, column: 13)
!3174 = !DILocation(line: 832, column: 70, scope: !3172)
!3175 = !DILocation(line: 832, column: 17, scope: !3172)
!3176 = !DILocation(line: 836, column: 15, scope: !2769)
!3177 = !DILocation(line: 841, column: 29, scope: !2742)
!3178 = !DILocation(line: 841, column: 9, scope: !2742)
!3179 = !DILocation(line: 842, column: 15, scope: !2742)
!3180 = !DILocation(line: 843, column: 9, scope: !2742)
!3181 = !DILocation(line: 846, column: 14, scope: !2742)
!3182 = !DILocation(line: 846, column: 13, scope: !2742)
!3183 = !DILocation(line: 846, column: 33, scope: !2742)
!3184 = !DILocation(line: 846, column: 9, scope: !2742)
!3185 = !DILocation(line: 847, column: 15, scope: !2742)
!3186 = !DILocation(line: 848, column: 9, scope: !2742)
!3187 = !DILocation(line: 853, column: 28, scope: !2714)
!3188 = !DILocation(line: 853, column: 24, scope: !2714)
!3189 = !DILocation(line: 853, column: 52, scope: !2714)
!3190 = !DILocation(line: 853, column: 3, scope: !2714)
!3191 = !DILocation(line: 856, column: 3, scope: !2714)
!3192 = distinct !DISubprogram(name: "_out_null", scope: !148, file: !148, line: 142, type: !155, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3193)
!3193 = !{!3194, !3195, !3196, !3197}
!3194 = !DILocalVariable(name: "character", arg: 1, scope: !3192, file: !148, line: 142, type: !67)
!3195 = !DILocalVariable(name: "buffer", arg: 2, scope: !3192, file: !148, line: 142, type: !19)
!3196 = !DILocalVariable(name: "idx", arg: 3, scope: !3192, file: !148, line: 142, type: !151)
!3197 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3192, file: !148, line: 142, type: !151)
!3198 = !DILocation(line: 0, scope: !3192)
!3199 = !DILocation(line: 145, column: 1, scope: !3192)
!3200 = distinct !DISubprogram(name: "_is_digit", scope: !148, file: !148, line: 181, type: !3201, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!188, !67}
!3203 = !{!3204}
!3204 = !DILocalVariable(name: "ch", arg: 1, scope: !3200, file: !148, line: 181, type: !67)
!3205 = !DILocation(line: 0, scope: !3200)
!3206 = !DILocation(line: 183, column: 11, scope: !3200)
!3207 = !DILocation(line: 183, column: 14, scope: !3200)
!3208 = !DILocation(line: 183, column: 22, scope: !3200)
!3209 = !DILocation(line: 183, column: 26, scope: !3200)
!3210 = !DILocation(line: 183, column: 29, scope: !3200)
!3211 = !DILocation(line: 183, column: 3, scope: !3200)
!3212 = distinct !DISubprogram(name: "_atoi", scope: !148, file: !148, line: 188, type: !3213, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3216)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!24, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 32)
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "str", arg: 1, scope: !3212, file: !148, line: 188, type: !3215)
!3218 = !DILocalVariable(name: "i", scope: !3212, file: !148, line: 190, type: !24)
!3219 = !DILocation(line: 0, scope: !3212)
!3220 = !DILocation(line: 191, column: 3, scope: !3212)
!3221 = !DILocation(line: 191, column: 21, scope: !3212)
!3222 = !DILocation(line: 191, column: 20, scope: !3212)
!3223 = !DILocation(line: 191, column: 10, scope: !3212)
!3224 = !DILocation(line: 192, column: 11, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3212, file: !148, line: 191, column: 28)
!3226 = !DILocation(line: 192, column: 42, scope: !3225)
!3227 = !DILocation(line: 192, column: 34, scope: !3225)
!3228 = !DILocation(line: 192, column: 46, scope: !3225)
!3229 = !DILocation(line: 192, column: 17, scope: !3225)
!3230 = distinct !{!3230, !3220, !3231}
!3231 = !DILocation(line: 193, column: 3, scope: !3212)
!3232 = !DILocation(line: 194, column: 3, scope: !3212)
!3233 = distinct !DISubprogram(name: "_ntoa_long_long", scope: !148, file: !148, line: 306, type: !3234, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!151, !153, !66, !151, !151, !140, !188, !140, !24, !24, !24}
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249}
!3237 = !DILocalVariable(name: "out", arg: 1, scope: !3233, file: !148, line: 306, type: !153)
!3238 = !DILocalVariable(name: "buffer", arg: 2, scope: !3233, file: !148, line: 306, type: !66)
!3239 = !DILocalVariable(name: "idx", arg: 3, scope: !3233, file: !148, line: 306, type: !151)
!3240 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3233, file: !148, line: 306, type: !151)
!3241 = !DILocalVariable(name: "value", arg: 5, scope: !3233, file: !148, line: 306, type: !140)
!3242 = !DILocalVariable(name: "negative", arg: 6, scope: !3233, file: !148, line: 306, type: !188)
!3243 = !DILocalVariable(name: "base", arg: 7, scope: !3233, file: !148, line: 306, type: !140)
!3244 = !DILocalVariable(name: "prec", arg: 8, scope: !3233, file: !148, line: 306, type: !24)
!3245 = !DILocalVariable(name: "width", arg: 9, scope: !3233, file: !148, line: 306, type: !24)
!3246 = !DILocalVariable(name: "flags", arg: 10, scope: !3233, file: !148, line: 306, type: !24)
!3247 = !DILocalVariable(name: "buf", scope: !3233, file: !148, line: 308, type: !182)
!3248 = !DILocalVariable(name: "len", scope: !3233, file: !148, line: 309, type: !151)
!3249 = !DILocalVariable(name: "digit", scope: !3250, file: !148, line: 319, type: !2675)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !148, line: 318, column: 8)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !148, line: 317, column: 44)
!3252 = distinct !DILexicalBlock(scope: !3233, file: !148, line: 317, column: 7)
!3253 = !DILocation(line: 0, scope: !3233)
!3254 = !DILocation(line: 308, column: 3, scope: !3233)
!3255 = !DILocation(line: 308, column: 8, scope: !3233)
!3256 = !DILocation(line: 312, column: 8, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3233, file: !148, line: 312, column: 7)
!3258 = !DILocation(line: 312, column: 7, scope: !3233)
!3259 = !DILocation(line: 313, column: 11, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !148, line: 312, column: 15)
!3261 = !DILocation(line: 314, column: 3, scope: !3260)
!3262 = !DILocation(line: 317, column: 15, scope: !3252)
!3263 = !DILocation(line: 317, column: 34, scope: !3252)
!3264 = !DILocation(line: 317, column: 37, scope: !3252)
!3265 = !DILocation(line: 317, column: 7, scope: !3233)
!3266 = !DILocation(line: 318, column: 5, scope: !3251)
!3267 = !DILocation(line: 319, column: 39, scope: !3250)
!3268 = !DILocation(line: 319, column: 26, scope: !3250)
!3269 = !DILocation(line: 0, scope: !3250)
!3270 = !DILocation(line: 320, column: 20, scope: !3250)
!3271 = !DILocation(line: 320, column: 26, scope: !3250)
!3272 = !DILocation(line: 320, column: 39, scope: !3250)
!3273 = !DILocation(line: 320, column: 37, scope: !3250)
!3274 = !DILocation(line: 320, column: 54, scope: !3250)
!3275 = !DILocation(line: 320, column: 48, scope: !3250)
!3276 = !DILocation(line: 320, column: 87, scope: !3250)
!3277 = !DILocation(line: 320, column: 85, scope: !3250)
!3278 = !DILocation(line: 320, column: 93, scope: !3250)
!3279 = !DILocation(line: 320, column: 14, scope: !3250)
!3280 = !DILocation(line: 320, column: 7, scope: !3250)
!3281 = !DILocation(line: 320, column: 18, scope: !3250)
!3282 = !DILocation(line: 321, column: 13, scope: !3250)
!3283 = !DILocation(line: 322, column: 5, scope: !3250)
!3284 = !DILocation(line: 322, column: 14, scope: !3251)
!3285 = !DILocation(line: 322, column: 20, scope: !3251)
!3286 = !DILocation(line: 322, column: 28, scope: !3251)
!3287 = !DILocation(line: 0, scope: !3251)
!3288 = distinct !{!3288, !3266, !3289}
!3289 = !DILocation(line: 322, column: 54, scope: !3251)
!3290 = !DILocation(line: 323, column: 3, scope: !3251)
!3291 = !DILocation(line: 325, column: 49, scope: !3233)
!3292 = !DILocation(line: 325, column: 59, scope: !3233)
!3293 = !DILocation(line: 325, column: 69, scope: !3233)
!3294 = !DILocation(line: 325, column: 10, scope: !3233)
!3295 = !DILocation(line: 326, column: 1, scope: !3233)
!3296 = !DILocation(line: 325, column: 3, scope: !3233)
!3297 = distinct !DISubprogram(name: "_ntoa_long", scope: !148, file: !148, line: 281, type: !3298, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!151, !153, !66, !151, !151, !70, !188, !70, !24, !24, !24}
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313}
!3301 = !DILocalVariable(name: "out", arg: 1, scope: !3297, file: !148, line: 281, type: !153)
!3302 = !DILocalVariable(name: "buffer", arg: 2, scope: !3297, file: !148, line: 281, type: !66)
!3303 = !DILocalVariable(name: "idx", arg: 3, scope: !3297, file: !148, line: 281, type: !151)
!3304 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3297, file: !148, line: 281, type: !151)
!3305 = !DILocalVariable(name: "value", arg: 5, scope: !3297, file: !148, line: 281, type: !70)
!3306 = !DILocalVariable(name: "negative", arg: 6, scope: !3297, file: !148, line: 281, type: !188)
!3307 = !DILocalVariable(name: "base", arg: 7, scope: !3297, file: !148, line: 281, type: !70)
!3308 = !DILocalVariable(name: "prec", arg: 8, scope: !3297, file: !148, line: 281, type: !24)
!3309 = !DILocalVariable(name: "width", arg: 9, scope: !3297, file: !148, line: 281, type: !24)
!3310 = !DILocalVariable(name: "flags", arg: 10, scope: !3297, file: !148, line: 281, type: !24)
!3311 = !DILocalVariable(name: "buf", scope: !3297, file: !148, line: 283, type: !182)
!3312 = !DILocalVariable(name: "len", scope: !3297, file: !148, line: 284, type: !151)
!3313 = !DILocalVariable(name: "digit", scope: !3314, file: !148, line: 294, type: !2675)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !148, line: 293, column: 8)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !148, line: 292, column: 44)
!3316 = distinct !DILexicalBlock(scope: !3297, file: !148, line: 292, column: 7)
!3317 = !DILocation(line: 0, scope: !3297)
!3318 = !DILocation(line: 283, column: 3, scope: !3297)
!3319 = !DILocation(line: 283, column: 8, scope: !3297)
!3320 = !DILocation(line: 287, column: 8, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3297, file: !148, line: 287, column: 7)
!3322 = !DILocation(line: 287, column: 7, scope: !3297)
!3323 = !DILocation(line: 288, column: 11, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3321, file: !148, line: 287, column: 15)
!3325 = !DILocation(line: 289, column: 3, scope: !3324)
!3326 = !DILocation(line: 292, column: 15, scope: !3316)
!3327 = !DILocation(line: 292, column: 34, scope: !3316)
!3328 = !DILocation(line: 292, column: 37, scope: !3316)
!3329 = !DILocation(line: 292, column: 7, scope: !3297)
!3330 = !DILocation(line: 293, column: 5, scope: !3315)
!3331 = !DILocation(line: 294, column: 39, scope: !3314)
!3332 = !DILocation(line: 294, column: 26, scope: !3314)
!3333 = !DILocation(line: 0, scope: !3314)
!3334 = !DILocation(line: 295, column: 20, scope: !3314)
!3335 = !DILocation(line: 295, column: 26, scope: !3314)
!3336 = !DILocation(line: 295, column: 39, scope: !3314)
!3337 = !DILocation(line: 295, column: 37, scope: !3314)
!3338 = !DILocation(line: 295, column: 54, scope: !3314)
!3339 = !DILocation(line: 295, column: 48, scope: !3314)
!3340 = !DILocation(line: 295, column: 87, scope: !3314)
!3341 = !DILocation(line: 295, column: 85, scope: !3314)
!3342 = !DILocation(line: 295, column: 93, scope: !3314)
!3343 = !DILocation(line: 295, column: 14, scope: !3314)
!3344 = !DILocation(line: 295, column: 7, scope: !3314)
!3345 = !DILocation(line: 295, column: 18, scope: !3314)
!3346 = !DILocation(line: 296, column: 13, scope: !3314)
!3347 = !DILocation(line: 297, column: 5, scope: !3314)
!3348 = !DILocation(line: 297, column: 14, scope: !3315)
!3349 = !DILocation(line: 297, column: 20, scope: !3315)
!3350 = !DILocation(line: 297, column: 28, scope: !3315)
!3351 = !DILocation(line: 0, scope: !3315)
!3352 = distinct !{!3352, !3330, !3353}
!3353 = !DILocation(line: 297, column: 54, scope: !3315)
!3354 = !DILocation(line: 298, column: 3, scope: !3315)
!3355 = !DILocation(line: 300, column: 49, scope: !3297)
!3356 = !DILocation(line: 300, column: 59, scope: !3297)
!3357 = !DILocation(line: 300, column: 10, scope: !3297)
!3358 = !DILocation(line: 301, column: 1, scope: !3297)
!3359 = !DILocation(line: 300, column: 3, scope: !3297)
!3360 = !DILocation(line: 0, scope: !147)
!3361 = !DILocation(line: 341, column: 3, scope: !147)
!3362 = !DILocation(line: 341, column: 8, scope: !147)
!3363 = !DILocation(line: 349, column: 13, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !147, file: !148, line: 349, column: 7)
!3365 = !DILocation(line: 349, column: 7, scope: !147)
!3366 = !DILocation(line: 350, column: 12, scope: !3364)
!3367 = !DILocation(line: 350, column: 5, scope: !3364)
!3368 = !DILocation(line: 351, column: 13, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !147, file: !148, line: 351, column: 7)
!3370 = !DILocation(line: 351, column: 7, scope: !147)
!3371 = !DILocation(line: 352, column: 12, scope: !3369)
!3372 = !DILocation(line: 352, column: 5, scope: !3369)
!3373 = !DILocation(line: 353, column: 13, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !147, file: !148, line: 353, column: 7)
!3375 = !DILocation(line: 353, column: 7, scope: !147)
!3376 = !DILocation(line: 354, column: 54, scope: !3374)
!3377 = !DILocation(line: 354, column: 47, scope: !3374)
!3378 = !DILocation(line: 354, column: 93, scope: !3374)
!3379 = !DILocation(line: 354, column: 86, scope: !3374)
!3380 = !DILocation(line: 354, column: 12, scope: !3374)
!3381 = !DILocation(line: 354, column: 5, scope: !3374)
!3382 = !DILocation(line: 358, column: 14, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !147, file: !148, line: 358, column: 7)
!3384 = !DILocation(line: 358, column: 34, scope: !3383)
!3385 = !DILocation(line: 358, column: 44, scope: !3383)
!3386 = !DILocation(line: 358, column: 7, scope: !147)
!3387 = !DILocation(line: 360, column: 12, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3383, file: !148, line: 358, column: 66)
!3389 = !DILocation(line: 360, column: 5, scope: !3388)
!3390 = !DILocation(line: 368, column: 13, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !147, file: !148, line: 368, column: 7)
!3392 = !DILocation(line: 368, column: 7, scope: !147)
!3393 = !DILocation(line: 370, column: 15, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !148, line: 368, column: 18)
!3395 = !DILocation(line: 371, column: 3, scope: !3394)
!3396 = !DILocation(line: 374, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !147, file: !148, line: 374, column: 7)
!3398 = !DILocation(line: 374, column: 7, scope: !147)
!3399 = !DILocation(line: 376, column: 3, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3397, file: !148, line: 374, column: 35)
!3401 = !DILocation(line: 378, column: 3, scope: !147)
!3402 = !DILocation(line: 378, column: 15, scope: !147)
!3403 = !DILocation(line: 378, column: 42, scope: !147)
!3404 = !DILocation(line: 378, column: 51, scope: !147)
!3405 = !DILocation(line: 379, column: 12, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !147, file: !148, line: 378, column: 58)
!3407 = !DILocation(line: 379, column: 5, scope: !3406)
!3408 = !DILocation(line: 379, column: 16, scope: !3406)
!3409 = !DILocation(line: 380, column: 9, scope: !3406)
!3410 = distinct !{!3410, !3401, !3411}
!3411 = !DILocation(line: 381, column: 3, scope: !147)
!3412 = !DILocation(line: 383, column: 15, scope: !147)
!3413 = !DILocation(line: 384, column: 25, scope: !147)
!3414 = !DILocation(line: 384, column: 23, scope: !147)
!3415 = !DILocation(line: 384, column: 34, scope: !147)
!3416 = !{!3417, !3417, i64 0}
!3417 = !{!"double", !296, i64 0}
!3418 = !DILocation(line: 384, column: 32, scope: !147)
!3419 = !DILocation(line: 385, column: 24, scope: !147)
!3420 = !DILocation(line: 386, column: 16, scope: !147)
!3421 = !DILocation(line: 386, column: 14, scope: !147)
!3422 = !DILocation(line: 388, column: 12, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !147, file: !148, line: 388, column: 7)
!3424 = !DILocation(line: 388, column: 7, scope: !147)
!3425 = !DILocation(line: 389, column: 5, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3423, file: !148, line: 388, column: 19)
!3427 = !DILocation(line: 391, column: 9, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3426, file: !148, line: 391, column: 9)
!3429 = !DILocation(line: 391, column: 17, scope: !3428)
!3430 = !DILocation(line: 391, column: 14, scope: !3428)
!3431 = !DILocation(line: 391, column: 9, scope: !3426)
!3432 = !DILocation(line: 393, column: 7, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3428, file: !148, line: 391, column: 30)
!3434 = !DILocation(line: 394, column: 5, scope: !3433)
!3435 = !DILocation(line: 0, scope: !3426)
!3436 = !DILocation(line: 395, column: 3, scope: !3426)
!3437 = !DILocation(line: 396, column: 17, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3423, file: !148, line: 396, column: 12)
!3439 = !DILocation(line: 396, column: 12, scope: !3423)
!3440 = !DILocation(line: 397, column: 3, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3438, file: !148, line: 396, column: 24)
!3442 = !DILocation(line: 398, column: 18, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3438, file: !148, line: 398, column: 12)
!3444 = !DILocation(line: 398, column: 25, scope: !3443)
!3445 = !DILocation(line: 398, column: 34, scope: !3443)
!3446 = !DILocation(line: 398, column: 12, scope: !3438)
!3447 = !DILocation(line: 400, column: 5, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3443, file: !148, line: 398, column: 41)
!3449 = !DILocation(line: 401, column: 3, scope: !3448)
!3450 = !DILocation(line: 403, column: 12, scope: !194)
!3451 = !DILocation(line: 403, column: 7, scope: !147)
!3452 = !DILocation(line: 404, column: 20, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !194, file: !148, line: 403, column: 19)
!3454 = !DILocation(line: 404, column: 18, scope: !3453)
!3455 = !DILocation(line: 405, column: 17, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3453, file: !148, line: 405, column: 9)
!3457 = !DILocation(line: 405, column: 24, scope: !3456)
!3458 = !DILocation(line: 405, column: 33, scope: !3456)
!3459 = !DILocation(line: 405, column: 41, scope: !3456)
!3460 = !DILocation(line: 405, column: 51, scope: !3456)
!3461 = !DILocation(line: 405, column: 9, scope: !3453)
!3462 = !DILocation(line: 408, column: 7, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3456, file: !148, line: 405, column: 57)
!3464 = !DILocation(line: 409, column: 5, scope: !3463)
!3465 = !DILocation(line: 410, column: 3, scope: !3453)
!3466 = !DILocation(line: 0, scope: !193)
!3467 = !DILocation(line: 414, column: 5, scope: !193)
!3468 = !DILocation(line: 414, column: 16, scope: !193)
!3469 = !DILocation(line: 415, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !193, file: !148, line: 414, column: 43)
!3471 = !DILocation(line: 416, column: 39, scope: !3470)
!3472 = !DILocation(line: 416, column: 31, scope: !3470)
!3473 = !DILocation(line: 416, column: 20, scope: !3470)
!3474 = !DILocation(line: 416, column: 14, scope: !3470)
!3475 = !DILocation(line: 416, column: 7, scope: !3470)
!3476 = !DILocation(line: 416, column: 18, scope: !3470)
!3477 = !DILocation(line: 417, column: 18, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3470, file: !148, line: 417, column: 11)
!3479 = !DILocation(line: 417, column: 11, scope: !3470)
!3480 = !DILocation(line: 418, column: 9, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !148, line: 417, column: 27)
!3482 = distinct !{!3482, !3467, !3483}
!3483 = !DILocation(line: 420, column: 5, scope: !193)
!3484 = !DILocation(line: 422, column: 5, scope: !193)
!3485 = !DILocation(line: 422, column: 17, scope: !193)
!3486 = !DILocation(line: 422, column: 44, scope: !193)
!3487 = !DILocation(line: 422, column: 53, scope: !193)
!3488 = !DILocation(line: 422, column: 56, scope: !193)
!3489 = !DILocation(line: 423, column: 14, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !193, file: !148, line: 422, column: 63)
!3491 = !DILocation(line: 423, column: 7, scope: !3490)
!3492 = !DILocation(line: 423, column: 18, scope: !3490)
!3493 = distinct !{!3493, !3484, !3494}
!3494 = !DILocation(line: 424, column: 5, scope: !193)
!3495 = !DILocation(line: 425, column: 13, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !193, file: !148, line: 425, column: 9)
!3497 = !DILocation(line: 425, column: 9, scope: !193)
!3498 = !DILocation(line: 427, column: 14, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3496, file: !148, line: 425, column: 40)
!3500 = !DILocation(line: 427, column: 7, scope: !3499)
!3501 = !DILocation(line: 427, column: 18, scope: !3499)
!3502 = !DILocation(line: 428, column: 5, scope: !3499)
!3503 = !DILocation(line: 432, column: 3, scope: !147)
!3504 = !DILocation(line: 432, column: 14, scope: !147)
!3505 = !DILocation(line: 433, column: 37, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !147, file: !148, line: 432, column: 41)
!3507 = !DILocation(line: 433, column: 28, scope: !3506)
!3508 = !DILocation(line: 433, column: 18, scope: !3506)
!3509 = !DILocation(line: 433, column: 12, scope: !3506)
!3510 = !DILocation(line: 433, column: 5, scope: !3506)
!3511 = !DILocation(line: 433, column: 16, scope: !3506)
!3512 = !DILocation(line: 434, column: 17, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3506, file: !148, line: 434, column: 9)
!3514 = !DILocation(line: 434, column: 9, scope: !3506)
!3515 = !DILocation(line: 435, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3513, file: !148, line: 434, column: 25)
!3517 = distinct !{!3517, !3503, !3518}
!3518 = !DILocation(line: 437, column: 3, scope: !147)
!3519 = !DILocation(line: 440, column: 15, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !147, file: !148, line: 440, column: 7)
!3521 = !DILocation(line: 440, column: 29, scope: !3520)
!3522 = !DILocation(line: 440, column: 39, scope: !3520)
!3523 = !DILocation(line: 440, column: 7, scope: !147)
!3524 = !DILocation(line: 441, column: 9, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !148, line: 441, column: 9)
!3526 = distinct !DILexicalBlock(scope: !3520, file: !148, line: 440, column: 57)
!3527 = !DILocation(line: 441, column: 15, scope: !3525)
!3528 = !DILocation(line: 441, column: 19, scope: !3525)
!3529 = !DILocation(line: 441, column: 28, scope: !3525)
!3530 = !DILocation(line: 441, column: 38, scope: !3525)
!3531 = !DILocation(line: 441, column: 9, scope: !3526)
!3532 = !DILocation(line: 442, column: 12, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !148, line: 441, column: 70)
!3534 = !DILocation(line: 443, column: 5, scope: !3533)
!3535 = !DILocation(line: 444, column: 5, scope: !3526)
!3536 = !DILocation(line: 444, column: 17, scope: !3526)
!3537 = !DILocation(line: 444, column: 26, scope: !3526)
!3538 = !DILocation(line: 444, column: 34, scope: !3526)
!3539 = !DILocation(line: 0, scope: !3526)
!3540 = !DILocation(line: 445, column: 14, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3526, file: !148, line: 444, column: 62)
!3542 = !DILocation(line: 445, column: 7, scope: !3541)
!3543 = !DILocation(line: 445, column: 18, scope: !3541)
!3544 = distinct !{!3544, !3535, !3545}
!3545 = !DILocation(line: 446, column: 5, scope: !3526)
!3546 = !DILocation(line: 447, column: 3, scope: !3526)
!3547 = !DILocation(line: 449, column: 11, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !147, file: !148, line: 449, column: 7)
!3549 = !DILocation(line: 449, column: 7, scope: !147)
!3550 = !DILocation(line: 450, column: 9, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !148, line: 450, column: 9)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !148, line: 449, column: 38)
!3553 = !DILocation(line: 450, column: 9, scope: !3552)
!3554 = !DILocation(line: 451, column: 14, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !148, line: 450, column: 19)
!3556 = !DILocation(line: 451, column: 7, scope: !3555)
!3557 = !DILocation(line: 451, column: 18, scope: !3555)
!3558 = !DILocation(line: 452, column: 5, scope: !3555)
!3559 = !DILocation(line: 453, column: 20, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3551, file: !148, line: 453, column: 14)
!3561 = !DILocation(line: 453, column: 14, scope: !3551)
!3562 = !DILocation(line: 454, column: 14, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 453, column: 34)
!3564 = !DILocation(line: 454, column: 7, scope: !3563)
!3565 = !DILocation(line: 454, column: 18, scope: !3563)
!3566 = !DILocation(line: 455, column: 5, scope: !3563)
!3567 = !DILocation(line: 456, column: 20, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3560, file: !148, line: 456, column: 14)
!3569 = !DILocation(line: 456, column: 14, scope: !3560)
!3570 = !DILocation(line: 457, column: 14, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3568, file: !148, line: 456, column: 35)
!3572 = !DILocation(line: 457, column: 7, scope: !3571)
!3573 = !DILocation(line: 457, column: 18, scope: !3571)
!3574 = !DILocation(line: 458, column: 5, scope: !3571)
!3575 = !DILocation(line: 0, scope: !3560)
!3576 = !DILocation(line: 0, scope: !3551)
!3577 = !DILocation(line: 459, column: 3, scope: !3552)
!3578 = !DILocation(line: 461, column: 45, scope: !147)
!3579 = !DILocation(line: 461, column: 10, scope: !147)
!3580 = !DILocation(line: 462, column: 1, scope: !147)
!3581 = distinct !DISubprogram(name: "_etoa", scope: !148, file: !148, line: 467, type: !149, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3582)
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3597, !3598, !3599, !3600, !3601, !3602, !3603}
!3583 = !DILocalVariable(name: "out", arg: 1, scope: !3581, file: !148, line: 467, type: !153)
!3584 = !DILocalVariable(name: "buffer", arg: 2, scope: !3581, file: !148, line: 467, type: !66)
!3585 = !DILocalVariable(name: "idx", arg: 3, scope: !3581, file: !148, line: 467, type: !151)
!3586 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3581, file: !148, line: 467, type: !151)
!3587 = !DILocalVariable(name: "value", arg: 5, scope: !3581, file: !148, line: 467, type: !69)
!3588 = !DILocalVariable(name: "prec", arg: 6, scope: !3581, file: !148, line: 467, type: !24)
!3589 = !DILocalVariable(name: "width", arg: 7, scope: !3581, file: !148, line: 467, type: !24)
!3590 = !DILocalVariable(name: "flags", arg: 8, scope: !3581, file: !148, line: 467, type: !24)
!3591 = !DILocalVariable(name: "negative", scope: !3581, file: !148, line: 475, type: !2770)
!3592 = !DILocalVariable(name: "conv", scope: !3581, file: !148, line: 490, type: !3593)
!3593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3581, file: !148, line: 487, size: 64, elements: !3594)
!3594 = !{!3595, !3596}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "U", scope: !3593, file: !148, line: 488, baseType: !138, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !3593, file: !148, line: 489, baseType: !69, size: 64)
!3597 = !DILocalVariable(name: "exp2", scope: !3581, file: !148, line: 493, type: !43)
!3598 = !DILocalVariable(name: "expval", scope: !3581, file: !148, line: 496, type: !43)
!3599 = !DILocalVariable(name: "z", scope: !3581, file: !148, line: 499, type: !196)
!3600 = !DILocalVariable(name: "z2", scope: !3581, file: !148, line: 500, type: !196)
!3601 = !DILocalVariable(name: "minwidth", scope: !3581, file: !148, line: 511, type: !24)
!3602 = !DILocalVariable(name: "fwidth", scope: !3581, file: !148, line: 537, type: !24)
!3603 = !DILocalVariable(name: "start_idx", scope: !3581, file: !148, line: 556, type: !2717)
!3604 = !DILocation(line: 0, scope: !3581)
!3605 = !DILocation(line: 470, column: 14, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 470, column: 7)
!3607 = !DILocation(line: 470, column: 24, scope: !3606)
!3608 = !DILocation(line: 470, column: 34, scope: !3606)
!3609 = !DILocation(line: 470, column: 45, scope: !3606)
!3610 = !DILocation(line: 470, column: 55, scope: !3606)
!3611 = !DILocation(line: 470, column: 7, scope: !3581)
!3612 = !DILocation(line: 471, column: 12, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !148, line: 470, column: 68)
!3614 = !DILocation(line: 471, column: 5, scope: !3613)
!3615 = !DILocation(line: 475, column: 31, scope: !3581)
!3616 = !DILocation(line: 475, column: 14, scope: !3581)
!3617 = !DILocation(line: 476, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 476, column: 7)
!3619 = !DILocation(line: 476, column: 7, scope: !3581)
!3620 = !DILocation(line: 477, column: 13, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3618, file: !148, line: 476, column: 17)
!3622 = !DILocation(line: 478, column: 3, scope: !3621)
!3623 = !DILocation(line: 481, column: 15, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 481, column: 7)
!3625 = !DILocation(line: 481, column: 7, scope: !3581)
!3626 = !DILocation(line: 483, column: 3, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !148, line: 481, column: 35)
!3628 = !DILocation(line: 487, column: 3, scope: !3581)
!3629 = !DILocation(line: 490, column: 5, scope: !3581)
!3630 = !DILocation(line: 492, column: 8, scope: !3581)
!3631 = !DILocation(line: 492, column: 10, scope: !3581)
!3632 = !DILocation(line: 493, column: 26, scope: !3581)
!3633 = !DILocation(line: 493, column: 28, scope: !3581)
!3634 = !DILocation(line: 493, column: 36, scope: !3581)
!3635 = !DILocation(line: 493, column: 14, scope: !3581)
!3636 = !DILocation(line: 493, column: 47, scope: !3581)
!3637 = !DILocation(line: 494, column: 18, scope: !3581)
!3638 = !DILocation(line: 494, column: 20, scope: !3581)
!3639 = !DILocation(line: 494, column: 44, scope: !3581)
!3640 = !DILocation(line: 494, column: 8, scope: !3581)
!3641 = !DILocation(line: 494, column: 10, scope: !3581)
!3642 = !DILocation(line: 496, column: 40, scope: !3581)
!3643 = !DILocation(line: 496, column: 45, scope: !3581)
!3644 = !DILocation(line: 496, column: 38, scope: !3581)
!3645 = !DILocation(line: 496, column: 73, scope: !3581)
!3646 = !DILocation(line: 496, column: 75, scope: !3581)
!3647 = !DILocation(line: 496, column: 82, scope: !3581)
!3648 = !DILocation(line: 496, column: 65, scope: !3581)
!3649 = !DILocation(line: 496, column: 16, scope: !3581)
!3650 = !DILocation(line: 498, column: 16, scope: !3581)
!3651 = !DILocation(line: 498, column: 23, scope: !3581)
!3652 = !DILocation(line: 498, column: 43, scope: !3581)
!3653 = !DILocation(line: 498, column: 10, scope: !3581)
!3654 = !DILocation(line: 499, column: 21, scope: !3581)
!3655 = !DILocation(line: 499, column: 28, scope: !3581)
!3656 = !DILocation(line: 499, column: 50, scope: !3581)
!3657 = !DILocation(line: 499, column: 55, scope: !3581)
!3658 = !DILocation(line: 499, column: 48, scope: !3581)
!3659 = !DILocation(line: 500, column: 23, scope: !3581)
!3660 = !DILocation(line: 501, column: 28, scope: !3581)
!3661 = !DILocation(line: 501, column: 12, scope: !3581)
!3662 = !DILocation(line: 501, column: 36, scope: !3581)
!3663 = !DILocation(line: 501, column: 8, scope: !3581)
!3664 = !DILocation(line: 501, column: 10, scope: !3581)
!3665 = !DILocation(line: 503, column: 19, scope: !3581)
!3666 = !DILocation(line: 503, column: 28, scope: !3581)
!3667 = !DILocation(line: 503, column: 60, scope: !3581)
!3668 = !DILocation(line: 503, column: 55, scope: !3581)
!3669 = !DILocation(line: 503, column: 49, scope: !3581)
!3670 = !DILocation(line: 503, column: 43, scope: !3581)
!3671 = !DILocation(line: 503, column: 38, scope: !3581)
!3672 = !DILocation(line: 503, column: 32, scope: !3581)
!3673 = !DILocation(line: 503, column: 23, scope: !3581)
!3674 = !DILocation(line: 503, column: 15, scope: !3581)
!3675 = !DILocation(line: 503, column: 8, scope: !3581)
!3676 = !DILocation(line: 503, column: 10, scope: !3581)
!3677 = !DILocation(line: 505, column: 20, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 505, column: 7)
!3679 = !DILocation(line: 505, column: 13, scope: !3678)
!3680 = !DILocation(line: 505, column: 7, scope: !3581)
!3681 = !DILocation(line: 506, column: 11, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3678, file: !148, line: 505, column: 23)
!3683 = !DILocation(line: 507, column: 10, scope: !3682)
!3684 = !DILocation(line: 507, column: 12, scope: !3682)
!3685 = !DILocation(line: 508, column: 3, scope: !3682)
!3686 = !DILocation(line: 511, column: 36, scope: !3581)
!3687 = !DILocation(line: 511, column: 43, scope: !3581)
!3688 = !DILocation(line: 511, column: 54, scope: !3581)
!3689 = !DILocation(line: 511, column: 27, scope: !3581)
!3690 = !DILocation(line: 514, column: 13, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 514, column: 7)
!3692 = !DILocation(line: 514, column: 7, scope: !3581)
!3693 = !DILocation(line: 516, column: 16, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !148, line: 516, column: 9)
!3695 = distinct !DILexicalBlock(scope: !3691, file: !148, line: 514, column: 32)
!3696 = !DILocation(line: 516, column: 25, scope: !3694)
!3697 = !DILocation(line: 516, column: 35, scope: !3694)
!3698 = !DILocation(line: 516, column: 9, scope: !3695)
!3699 = !DILocation(line: 517, column: 21, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !148, line: 517, column: 11)
!3701 = distinct !DILexicalBlock(scope: !3694, file: !148, line: 516, column: 43)
!3702 = !DILocation(line: 517, column: 11, scope: !3701)
!3703 = !DILocation(line: 518, column: 37, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3700, file: !148, line: 517, column: 31)
!3705 = !DILocation(line: 518, column: 46, scope: !3704)
!3706 = !DILocation(line: 519, column: 7, scope: !3704)
!3707 = !DILocation(line: 0, scope: !3700)
!3708 = !DILocation(line: 523, column: 13, scope: !3701)
!3709 = !DILocation(line: 527, column: 5, scope: !3701)
!3710 = !DILocation(line: 530, column: 17, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !148, line: 530, column: 11)
!3712 = distinct !DILexicalBlock(scope: !3694, file: !148, line: 528, column: 10)
!3713 = !DILocation(line: 530, column: 22, scope: !3711)
!3714 = !DILocation(line: 530, column: 32, scope: !3711)
!3715 = !DILocation(line: 530, column: 11, scope: !3712)
!3716 = !DILocation(line: 531, column: 9, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3711, file: !148, line: 530, column: 52)
!3718 = !DILocation(line: 532, column: 7, scope: !3717)
!3719 = !DILocation(line: 0, scope: !3694)
!3720 = !DILocation(line: 534, column: 3, scope: !3695)
!3721 = !DILocation(line: 538, column: 13, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 538, column: 7)
!3723 = !DILocation(line: 538, column: 7, scope: !3581)
!3724 = !DILocation(line: 540, column: 12, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3722, file: !148, line: 538, column: 25)
!3726 = !DILocation(line: 541, column: 3, scope: !3725)
!3727 = !DILocation(line: 0, scope: !3722)
!3728 = !DILocation(line: 545, column: 14, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 545, column: 7)
!3730 = !DILocation(line: 545, column: 28, scope: !3729)
!3731 = !DILocation(line: 545, column: 31, scope: !3729)
!3732 = !DILocation(line: 545, column: 7, scope: !3581)
!3733 = !DILocation(line: 548, column: 3, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3729, file: !148, line: 545, column: 41)
!3735 = !DILocation(line: 551, column: 7, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 551, column: 7)
!3737 = !DILocation(line: 551, column: 7, scope: !3581)
!3738 = !DILocation(line: 552, column: 19, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3736, file: !148, line: 551, column: 15)
!3740 = !DILocation(line: 552, column: 11, scope: !3739)
!3741 = !DILocation(line: 553, column: 3, scope: !3739)
!3742 = !DILocation(line: 557, column: 41, scope: !3581)
!3743 = !DILocation(line: 557, column: 52, scope: !3581)
!3744 = !DILocation(line: 557, column: 88, scope: !3581)
!3745 = !DILocation(line: 557, column: 9, scope: !3581)
!3746 = !DILocation(line: 560, column: 7, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 560, column: 7)
!3748 = !DILocation(line: 560, column: 7, scope: !3581)
!3749 = !DILocation(line: 562, column: 16, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3747, file: !148, line: 560, column: 17)
!3751 = !DILocation(line: 562, column: 9, scope: !3750)
!3752 = !DILocation(line: 562, column: 59, scope: !3750)
!3753 = !DILocation(line: 562, column: 5, scope: !3750)
!3754 = !DILocation(line: 564, column: 56, scope: !3750)
!3755 = !DILocation(line: 564, column: 48, scope: !3750)
!3756 = !DILocation(line: 564, column: 63, scope: !3750)
!3757 = !DILocation(line: 564, column: 88, scope: !3750)
!3758 = !DILocation(line: 564, column: 108, scope: !3750)
!3759 = !DILocation(line: 564, column: 11, scope: !3750)
!3760 = !DILocation(line: 566, column: 15, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3750, file: !148, line: 566, column: 9)
!3762 = !DILocation(line: 566, column: 9, scope: !3750)
!3763 = !DILocation(line: 567, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3761, file: !148, line: 566, column: 29)
!3765 = !DILocation(line: 0, scope: !3750)
!3766 = !DILocation(line: 567, column: 18, scope: !3764)
!3767 = !DILocation(line: 567, column: 30, scope: !3764)
!3768 = !DILocation(line: 567, column: 59, scope: !3764)
!3769 = !DILocation(line: 567, column: 39, scope: !3764)
!3770 = distinct !{!3770, !3763, !3771}
!3771 = !DILocation(line: 567, column: 69, scope: !3764)
!3772 = !DILocation(line: 568, column: 5, scope: !3764)
!3773 = !DILocation(line: 564, column: 9, scope: !3750)
!3774 = !DILocation(line: 569, column: 3, scope: !3750)
!3775 = !DILocation(line: 571, column: 1, scope: !3581)
!3776 = distinct !DISubprogram(name: "_strnlen_s", scope: !148, file: !148, line: 171, type: !3777, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!24, !2674, !151}
!3779 = !{!3780, !3781, !3782}
!3780 = !DILocalVariable(name: "str", arg: 1, scope: !3776, file: !148, line: 171, type: !2674)
!3781 = !DILocalVariable(name: "maxsize", arg: 2, scope: !3776, file: !148, line: 171, type: !151)
!3782 = !DILocalVariable(name: "s", scope: !3776, file: !148, line: 173, type: !2674)
!3783 = !DILocation(line: 0, scope: !3776)
!3784 = !DILocation(line: 174, column: 8, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3776, file: !148, line: 174, column: 3)
!3786 = !DILocation(line: 0, scope: !3785)
!3787 = !DILocation(line: 174, column: 17, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3785, file: !148, line: 174, column: 3)
!3789 = !DILocation(line: 174, column: 20, scope: !3788)
!3790 = !DILocation(line: 174, column: 30, scope: !3788)
!3791 = !DILocation(line: 0, scope: !3788)
!3792 = !DILocation(line: 174, column: 3, scope: !3785)
!3793 = !DILocation(line: 174, column: 34, scope: !3788)
!3794 = !DILocation(line: 174, column: 3, scope: !3788)
!3795 = distinct !{!3795, !3792, !3796}
!3796 = !DILocation(line: 174, column: 38, scope: !3785)
!3797 = !DILocation(line: 175, column: 27, scope: !3776)
!3798 = !DILocation(line: 175, column: 3, scope: !3776)
!3799 = distinct !DISubprogram(name: "_out_rev", scope: !148, file: !148, line: 199, type: !3800, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!151, !153, !66, !151, !151, !2674, !151, !24, !24}
!3802 = !{!3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812}
!3803 = !DILocalVariable(name: "out", arg: 1, scope: !3799, file: !148, line: 199, type: !153)
!3804 = !DILocalVariable(name: "buffer", arg: 2, scope: !3799, file: !148, line: 199, type: !66)
!3805 = !DILocalVariable(name: "idx", arg: 3, scope: !3799, file: !148, line: 199, type: !151)
!3806 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3799, file: !148, line: 199, type: !151)
!3807 = !DILocalVariable(name: "buf", arg: 5, scope: !3799, file: !148, line: 199, type: !2674)
!3808 = !DILocalVariable(name: "len", arg: 6, scope: !3799, file: !148, line: 199, type: !151)
!3809 = !DILocalVariable(name: "width", arg: 7, scope: !3799, file: !148, line: 199, type: !24)
!3810 = !DILocalVariable(name: "flags", arg: 8, scope: !3799, file: !148, line: 199, type: !24)
!3811 = !DILocalVariable(name: "start_idx", scope: !3799, file: !148, line: 201, type: !2717)
!3812 = !DILocalVariable(name: "i", scope: !3813, file: !148, line: 205, type: !151)
!3813 = distinct !DILexicalBlock(scope: !3814, file: !148, line: 205, column: 5)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !148, line: 204, column: 58)
!3815 = distinct !DILexicalBlock(scope: !3799, file: !148, line: 204, column: 7)
!3816 = !DILocation(line: 0, scope: !3799)
!3817 = !DILocation(line: 204, column: 15, scope: !3815)
!3818 = !DILocation(line: 204, column: 29, scope: !3815)
!3819 = !DILocation(line: 204, column: 40, scope: !3815)
!3820 = !DILocation(line: 204, column: 7, scope: !3799)
!3821 = !DILocation(line: 0, scope: !3813)
!3822 = !DILocation(line: 205, column: 10, scope: !3813)
!3823 = !DILocation(line: 205, column: 28, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3813, file: !148, line: 205, column: 5)
!3825 = !DILocation(line: 205, column: 5, scope: !3813)
!3826 = !DILocation(line: 206, column: 27, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !148, line: 205, column: 42)
!3828 = !DILocation(line: 206, column: 7, scope: !3827)
!3829 = !DILocation(line: 207, column: 5, scope: !3827)
!3830 = !DILocation(line: 205, column: 38, scope: !3824)
!3831 = !DILocation(line: 205, column: 5, scope: !3824)
!3832 = distinct !{!3832, !3825, !3833}
!3833 = !DILocation(line: 207, column: 5, scope: !3813)
!3834 = !DILocation(line: 208, column: 3, scope: !3814)
!3835 = !DILocation(line: 211, column: 3, scope: !3799)
!3836 = !DILocation(line: 212, column: 13, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3799, file: !148, line: 211, column: 15)
!3838 = !DILocation(line: 212, column: 9, scope: !3837)
!3839 = !DILocation(line: 212, column: 32, scope: !3837)
!3840 = !DILocation(line: 212, column: 5, scope: !3837)
!3841 = distinct !{!3841, !3835, !3842}
!3842 = !DILocation(line: 213, column: 3, scope: !3799)
!3843 = !DILocation(line: 216, column: 13, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3799, file: !148, line: 216, column: 7)
!3845 = !DILocation(line: 216, column: 7, scope: !3799)
!3846 = !DILocation(line: 217, column: 5, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3844, file: !148, line: 216, column: 27)
!3848 = !DILocation(line: 217, column: 16, scope: !3847)
!3849 = !DILocation(line: 217, column: 28, scope: !3847)
!3850 = !DILocation(line: 218, column: 27, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3847, file: !148, line: 217, column: 37)
!3852 = !DILocation(line: 218, column: 7, scope: !3851)
!3853 = distinct !{!3853, !3846, !3854}
!3854 = !DILocation(line: 219, column: 5, scope: !3847)
!3855 = !DILocation(line: 220, column: 3, scope: !3847)
!3856 = !DILocation(line: 222, column: 3, scope: !3799)
!3857 = distinct !DISubprogram(name: "_ntoa_format", scope: !148, file: !148, line: 227, type: !3858, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3860)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!151, !153, !66, !151, !151, !66, !151, !188, !24, !24, !24, !24}
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871}
!3861 = !DILocalVariable(name: "out", arg: 1, scope: !3857, file: !148, line: 227, type: !153)
!3862 = !DILocalVariable(name: "buffer", arg: 2, scope: !3857, file: !148, line: 227, type: !66)
!3863 = !DILocalVariable(name: "idx", arg: 3, scope: !3857, file: !148, line: 227, type: !151)
!3864 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3857, file: !148, line: 227, type: !151)
!3865 = !DILocalVariable(name: "buf", arg: 5, scope: !3857, file: !148, line: 227, type: !66)
!3866 = !DILocalVariable(name: "len", arg: 6, scope: !3857, file: !148, line: 227, type: !151)
!3867 = !DILocalVariable(name: "negative", arg: 7, scope: !3857, file: !148, line: 227, type: !188)
!3868 = !DILocalVariable(name: "base", arg: 8, scope: !3857, file: !148, line: 227, type: !24)
!3869 = !DILocalVariable(name: "prec", arg: 9, scope: !3857, file: !148, line: 227, type: !24)
!3870 = !DILocalVariable(name: "width", arg: 10, scope: !3857, file: !148, line: 227, type: !24)
!3871 = !DILocalVariable(name: "flags", arg: 11, scope: !3857, file: !148, line: 227, type: !24)
!3872 = !DILocation(line: 0, scope: !3857)
!3873 = !DILocation(line: 230, column: 15, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3857, file: !148, line: 230, column: 7)
!3875 = !DILocation(line: 230, column: 7, scope: !3857)
!3876 = !DILocation(line: 231, column: 9, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !148, line: 231, column: 9)
!3878 = distinct !DILexicalBlock(scope: !3874, file: !148, line: 230, column: 30)
!3879 = !DILocation(line: 231, column: 15, scope: !3877)
!3880 = !DILocation(line: 231, column: 25, scope: !3877)
!3881 = !DILocation(line: 231, column: 42, scope: !3877)
!3882 = !DILocation(line: 231, column: 46, scope: !3877)
!3883 = !DILocation(line: 231, column: 55, scope: !3877)
!3884 = !DILocation(line: 231, column: 65, scope: !3877)
!3885 = !DILocation(line: 231, column: 9, scope: !3878)
!3886 = !DILocation(line: 232, column: 12, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3877, file: !148, line: 231, column: 97)
!3888 = !DILocation(line: 233, column: 5, scope: !3887)
!3889 = !DILocation(line: 234, column: 5, scope: !3878)
!3890 = !DILocation(line: 234, column: 17, scope: !3878)
!3891 = !DILocation(line: 234, column: 25, scope: !3878)
!3892 = !DILocation(line: 234, column: 33, scope: !3878)
!3893 = !DILocation(line: 0, scope: !3878)
!3894 = !DILocation(line: 235, column: 14, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3878, file: !148, line: 234, column: 61)
!3896 = !DILocation(line: 235, column: 7, scope: !3895)
!3897 = !DILocation(line: 235, column: 18, scope: !3895)
!3898 = distinct !{!3898, !3889, !3899}
!3899 = !DILocation(line: 236, column: 5, scope: !3878)
!3900 = !DILocation(line: 237, column: 5, scope: !3878)
!3901 = !DILocation(line: 237, column: 19, scope: !3878)
!3902 = !DILocation(line: 237, column: 36, scope: !3878)
!3903 = !DILocation(line: 237, column: 44, scope: !3878)
!3904 = !DILocation(line: 237, column: 53, scope: !3878)
!3905 = !DILocation(line: 237, column: 61, scope: !3878)
!3906 = !DILocation(line: 238, column: 14, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3878, file: !148, line: 237, column: 89)
!3908 = !DILocation(line: 238, column: 7, scope: !3907)
!3909 = !DILocation(line: 238, column: 18, scope: !3907)
!3910 = distinct !{!3910, !3900, !3911}
!3911 = !DILocation(line: 239, column: 5, scope: !3878)
!3912 = !DILocation(line: 240, column: 3, scope: !3878)
!3913 = !DILocation(line: 243, column: 13, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3857, file: !148, line: 243, column: 7)
!3915 = !DILocation(line: 243, column: 7, scope: !3857)
!3916 = !DILocation(line: 244, column: 17, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !148, line: 244, column: 9)
!3918 = distinct !DILexicalBlock(scope: !3914, file: !148, line: 243, column: 27)
!3919 = !DILocation(line: 244, column: 36, scope: !3917)
!3920 = !DILocation(line: 244, column: 39, scope: !3917)
!3921 = !DILocation(line: 244, column: 43, scope: !3917)
!3922 = !DILocation(line: 244, column: 52, scope: !3917)
!3923 = !DILocation(line: 244, column: 61, scope: !3917)
!3924 = !DILocation(line: 244, column: 69, scope: !3917)
!3925 = !DILocation(line: 244, column: 9, scope: !3918)
!3926 = !DILocation(line: 245, column: 10, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3917, file: !148, line: 244, column: 81)
!3928 = !DILocation(line: 246, column: 11, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3927, file: !148, line: 246, column: 11)
!3930 = !DILocation(line: 246, column: 15, scope: !3929)
!3931 = !DILocation(line: 246, column: 24, scope: !3929)
!3932 = !DILocation(line: 246, column: 11, scope: !3927)
!3933 = !DILocation(line: 247, column: 12, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3929, file: !148, line: 246, column: 33)
!3935 = !DILocation(line: 248, column: 7, scope: !3934)
!3936 = !DILocation(line: 0, scope: !3927)
!3937 = !DILocation(line: 249, column: 5, scope: !3927)
!3938 = !DILocation(line: 250, column: 15, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3918, file: !148, line: 250, column: 9)
!3940 = !DILocation(line: 250, column: 23, scope: !3939)
!3941 = !DILocation(line: 250, column: 34, scope: !3939)
!3942 = !DILocation(line: 250, column: 53, scope: !3939)
!3943 = !DILocation(line: 250, column: 61, scope: !3939)
!3944 = !DILocation(line: 250, column: 9, scope: !3918)
!3945 = !DILocation(line: 251, column: 14, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3939, file: !148, line: 250, column: 89)
!3947 = !DILocation(line: 251, column: 7, scope: !3946)
!3948 = !DILocation(line: 251, column: 18, scope: !3946)
!3949 = !DILocation(line: 252, column: 5, scope: !3946)
!3950 = !DILocation(line: 253, column: 20, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3939, file: !148, line: 253, column: 14)
!3952 = !DILocation(line: 253, column: 28, scope: !3951)
!3953 = !DILocation(line: 253, column: 38, scope: !3951)
!3954 = !DILocation(line: 253, column: 57, scope: !3951)
!3955 = !DILocation(line: 253, column: 65, scope: !3951)
!3956 = !DILocation(line: 253, column: 14, scope: !3939)
!3957 = !DILocation(line: 254, column: 14, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3951, file: !148, line: 253, column: 93)
!3959 = !DILocation(line: 254, column: 7, scope: !3958)
!3960 = !DILocation(line: 254, column: 18, scope: !3958)
!3961 = !DILocation(line: 255, column: 5, scope: !3958)
!3962 = !DILocation(line: 256, column: 20, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3951, file: !148, line: 256, column: 14)
!3964 = !DILocation(line: 256, column: 27, scope: !3963)
!3965 = !DILocation(line: 256, column: 35, scope: !3963)
!3966 = !DILocation(line: 256, column: 14, scope: !3951)
!3967 = !DILocation(line: 257, column: 14, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3963, file: !148, line: 256, column: 63)
!3969 = !DILocation(line: 257, column: 7, scope: !3968)
!3970 = !DILocation(line: 257, column: 18, scope: !3968)
!3971 = !DILocation(line: 258, column: 5, scope: !3968)
!3972 = !DILocation(line: 0, scope: !3951)
!3973 = !DILocation(line: 0, scope: !3939)
!3974 = !DILocation(line: 259, column: 13, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3918, file: !148, line: 259, column: 9)
!3976 = !DILocation(line: 259, column: 9, scope: !3918)
!3977 = !DILocation(line: 260, column: 14, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3975, file: !148, line: 259, column: 40)
!3979 = !DILocation(line: 260, column: 7, scope: !3978)
!3980 = !DILocation(line: 260, column: 18, scope: !3978)
!3981 = !DILocation(line: 261, column: 5, scope: !3978)
!3982 = !DILocation(line: 0, scope: !3918)
!3983 = !DILocation(line: 262, column: 3, scope: !3918)
!3984 = !DILocation(line: 264, column: 11, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3857, file: !148, line: 264, column: 7)
!3986 = !DILocation(line: 264, column: 7, scope: !3857)
!3987 = !DILocation(line: 265, column: 9, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !148, line: 265, column: 9)
!3989 = distinct !DILexicalBlock(scope: !3985, file: !148, line: 264, column: 38)
!3990 = !DILocation(line: 265, column: 9, scope: !3989)
!3991 = !DILocation(line: 266, column: 14, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3988, file: !148, line: 265, column: 19)
!3993 = !DILocation(line: 266, column: 7, scope: !3992)
!3994 = !DILocation(line: 266, column: 18, scope: !3992)
!3995 = !DILocation(line: 267, column: 5, scope: !3992)
!3996 = !DILocation(line: 268, column: 20, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3988, file: !148, line: 268, column: 14)
!3998 = !DILocation(line: 268, column: 14, scope: !3988)
!3999 = !DILocation(line: 269, column: 14, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3997, file: !148, line: 268, column: 34)
!4001 = !DILocation(line: 269, column: 7, scope: !4000)
!4002 = !DILocation(line: 269, column: 18, scope: !4000)
!4003 = !DILocation(line: 270, column: 5, scope: !4000)
!4004 = !DILocation(line: 271, column: 20, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3997, file: !148, line: 271, column: 14)
!4006 = !DILocation(line: 271, column: 14, scope: !3997)
!4007 = !DILocation(line: 272, column: 14, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4005, file: !148, line: 271, column: 35)
!4009 = !DILocation(line: 272, column: 7, scope: !4008)
!4010 = !DILocation(line: 272, column: 18, scope: !4008)
!4011 = !DILocation(line: 273, column: 5, scope: !4008)
!4012 = !DILocation(line: 0, scope: !3997)
!4013 = !DILocation(line: 0, scope: !3988)
!4014 = !DILocation(line: 274, column: 3, scope: !3989)
!4015 = !DILocation(line: 276, column: 10, scope: !3857)
!4016 = !DILocation(line: 276, column: 3, scope: !3857)
!4017 = distinct !DISubprogram(name: "sprintf_", scope: !148, file: !148, line: 873, type: !4018, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!43, !66, !2674, null}
!4020 = !{!4021, !4022, !4023, !4024}
!4021 = !DILocalVariable(name: "buffer", arg: 1, scope: !4017, file: !148, line: 873, type: !66)
!4022 = !DILocalVariable(name: "format", arg: 2, scope: !4017, file: !148, line: 873, type: !2674)
!4023 = !DILocalVariable(name: "va", scope: !4017, file: !148, line: 875, type: !2679)
!4024 = !DILocalVariable(name: "ret", scope: !4017, file: !148, line: 877, type: !2688)
!4025 = !DILocation(line: 0, scope: !4017)
!4026 = !DILocation(line: 875, column: 3, scope: !4017)
!4027 = !DILocation(line: 875, column: 11, scope: !4017)
!4028 = !DILocation(line: 876, column: 3, scope: !4017)
!4029 = !DILocation(line: 877, column: 19, scope: !4017)
!4030 = !DILocation(line: 878, column: 3, scope: !4017)
!4031 = !DILocation(line: 880, column: 1, scope: !4017)
!4032 = !DILocation(line: 879, column: 3, scope: !4017)
!4033 = distinct !DISubprogram(name: "_out_buffer", scope: !148, file: !148, line: 133, type: !155, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4034)
!4034 = !{!4035, !4036, !4037, !4038}
!4035 = !DILocalVariable(name: "character", arg: 1, scope: !4033, file: !148, line: 133, type: !67)
!4036 = !DILocalVariable(name: "buffer", arg: 2, scope: !4033, file: !148, line: 133, type: !19)
!4037 = !DILocalVariable(name: "idx", arg: 3, scope: !4033, file: !148, line: 133, type: !151)
!4038 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4033, file: !148, line: 133, type: !151)
!4039 = !DILocation(line: 0, scope: !4033)
!4040 = !DILocation(line: 135, column: 11, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4033, file: !148, line: 135, column: 7)
!4042 = !DILocation(line: 135, column: 7, scope: !4033)
!4043 = !DILocation(line: 136, column: 5, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4041, file: !148, line: 135, column: 21)
!4045 = !DILocation(line: 136, column: 26, scope: !4044)
!4046 = !DILocation(line: 137, column: 3, scope: !4044)
!4047 = !DILocation(line: 138, column: 1, scope: !4033)
!4048 = distinct !DISubprogram(name: "snprintf_", scope: !148, file: !148, line: 883, type: !4049, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!43, !66, !151, !2674, null}
!4051 = !{!4052, !4053, !4054, !4055, !4056}
!4052 = !DILocalVariable(name: "buffer", arg: 1, scope: !4048, file: !148, line: 883, type: !66)
!4053 = !DILocalVariable(name: "count", arg: 2, scope: !4048, file: !148, line: 883, type: !151)
!4054 = !DILocalVariable(name: "format", arg: 3, scope: !4048, file: !148, line: 883, type: !2674)
!4055 = !DILocalVariable(name: "va", scope: !4048, file: !148, line: 885, type: !2679)
!4056 = !DILocalVariable(name: "ret", scope: !4048, file: !148, line: 887, type: !2688)
!4057 = !DILocation(line: 0, scope: !4048)
!4058 = !DILocation(line: 885, column: 3, scope: !4048)
!4059 = !DILocation(line: 885, column: 11, scope: !4048)
!4060 = !DILocation(line: 886, column: 3, scope: !4048)
!4061 = !DILocation(line: 887, column: 19, scope: !4048)
!4062 = !DILocation(line: 888, column: 3, scope: !4048)
!4063 = !DILocation(line: 890, column: 1, scope: !4048)
!4064 = !DILocation(line: 889, column: 3, scope: !4048)
!4065 = distinct !DISubprogram(name: "vprintf_", scope: !148, file: !148, line: 893, type: !4066, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!43, !2674, !2679}
!4068 = !{!4069, !4070, !4071}
!4069 = !DILocalVariable(name: "format", arg: 1, scope: !4065, file: !148, line: 893, type: !2674)
!4070 = !DILocalVariable(name: "va", arg: 2, scope: !4065, file: !148, line: 893, type: !2679)
!4071 = !DILocalVariable(name: "buffer", scope: !4065, file: !148, line: 895, type: !2686)
!4072 = !DILocation(line: 0, scope: !4065)
!4073 = !DILocation(line: 893, column: 42, scope: !4065)
!4074 = !DILocation(line: 895, column: 3, scope: !4065)
!4075 = !DILocation(line: 895, column: 8, scope: !4065)
!4076 = !DILocation(line: 896, column: 32, scope: !4065)
!4077 = !DILocation(line: 896, column: 10, scope: !4065)
!4078 = !DILocation(line: 897, column: 1, scope: !4065)
!4079 = !DILocation(line: 896, column: 3, scope: !4065)
!4080 = distinct !DISubprogram(name: "vsnprintf_", scope: !148, file: !148, line: 900, type: !4081, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!43, !66, !151, !2674, !2679}
!4083 = !{!4084, !4085, !4086, !4087}
!4084 = !DILocalVariable(name: "buffer", arg: 1, scope: !4080, file: !148, line: 900, type: !66)
!4085 = !DILocalVariable(name: "count", arg: 2, scope: !4080, file: !148, line: 900, type: !151)
!4086 = !DILocalVariable(name: "format", arg: 3, scope: !4080, file: !148, line: 900, type: !2674)
!4087 = !DILocalVariable(name: "va", arg: 4, scope: !4080, file: !148, line: 900, type: !2679)
!4088 = !DILocation(line: 0, scope: !4080)
!4089 = !DILocation(line: 900, column: 72, scope: !4080)
!4090 = !DILocation(line: 902, column: 10, scope: !4080)
!4091 = !DILocation(line: 902, column: 3, scope: !4080)
!4092 = distinct !DISubprogram(name: "fctprintf", scope: !148, file: !148, line: 906, type: !4093, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!43, !167, !19, !2674, null}
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4102}
!4096 = !DILocalVariable(name: "out", arg: 1, scope: !4092, file: !148, line: 906, type: !167)
!4097 = !DILocalVariable(name: "arg", arg: 2, scope: !4092, file: !148, line: 906, type: !19)
!4098 = !DILocalVariable(name: "format", arg: 3, scope: !4092, file: !148, line: 906, type: !2674)
!4099 = !DILocalVariable(name: "va", scope: !4092, file: !148, line: 908, type: !2679)
!4100 = !DILocalVariable(name: "out_fct_wrap", scope: !4092, file: !148, line: 910, type: !4101)
!4101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!4102 = !DILocalVariable(name: "ret", scope: !4092, file: !148, line: 911, type: !2688)
!4103 = !DILocation(line: 0, scope: !4092)
!4104 = !DILocation(line: 908, column: 3, scope: !4092)
!4105 = !DILocation(line: 908, column: 11, scope: !4092)
!4106 = !DILocation(line: 909, column: 3, scope: !4092)
!4107 = !DILocation(line: 910, column: 3, scope: !4092)
!4108 = !DILocation(line: 910, column: 27, scope: !4092)
!4109 = !DILocation(line: 910, column: 42, scope: !4092)
!4110 = !{!4111, !329, i64 0}
!4111 = !{!"", !329, i64 0, !329, i64 4}
!4112 = !{!4111, !329, i64 4}
!4113 = !DILocation(line: 911, column: 47, scope: !4092)
!4114 = !DILocation(line: 911, column: 40, scope: !4092)
!4115 = !DILocation(line: 911, column: 19, scope: !4092)
!4116 = !DILocation(line: 912, column: 3, scope: !4092)
!4117 = !DILocation(line: 914, column: 1, scope: !4092)
!4118 = !DILocation(line: 913, column: 3, scope: !4092)
!4119 = distinct !DISubprogram(name: "_out_fct", scope: !148, file: !148, line: 159, type: !155, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4120)
!4120 = !{!4121, !4122, !4123, !4124}
!4121 = !DILocalVariable(name: "character", arg: 1, scope: !4119, file: !148, line: 159, type: !67)
!4122 = !DILocalVariable(name: "buffer", arg: 2, scope: !4119, file: !148, line: 159, type: !19)
!4123 = !DILocalVariable(name: "idx", arg: 3, scope: !4119, file: !148, line: 159, type: !151)
!4124 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4119, file: !148, line: 159, type: !151)
!4125 = !DILocation(line: 0, scope: !4119)
!4126 = !DILocation(line: 162, column: 7, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4119, file: !148, line: 162, column: 7)
!4128 = !DILocation(line: 162, column: 7, scope: !4119)
!4129 = !DILocation(line: 164, column: 6, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4127, file: !148, line: 162, column: 18)
!4131 = !DILocation(line: 164, column: 35, scope: !4130)
!4132 = !DILocation(line: 164, column: 51, scope: !4130)
!4133 = !DILocation(line: 164, column: 80, scope: !4130)
!4134 = !DILocation(line: 164, column: 5, scope: !4130)
!4135 = !DILocation(line: 165, column: 3, scope: !4130)
!4136 = !DILocation(line: 166, column: 1, scope: !4119)
!4137 = distinct !DISubprogram(name: "putc", scope: !4138, file: !4138, line: 10, type: !4139, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4141)
!4138 = !DIFile(filename: "src/icemu/printfmap.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!43, !43, !19}
!4141 = !{!4142, !4143}
!4142 = !DILocalVariable(name: "character", arg: 1, scope: !4137, file: !4138, line: 10, type: !43)
!4143 = !DILocalVariable(name: "stream", arg: 2, scope: !4137, file: !4138, line: 10, type: !19)
!4144 = !DILocation(line: 10, column: 14, scope: !4137)
!4145 = !DILocation(line: 10, column: 31, scope: !4137)
!4146 = !DILocation(line: 12, column: 11, scope: !4137)
!4147 = !DILocation(line: 13, column: 12, scope: !4137)
!4148 = !DILocation(line: 13, column: 5, scope: !4137)
!4149 = distinct !DISubprogram(name: "_putchar", scope: !4138, file: !4138, line: 17, type: !4150, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !4152)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{null, !67}
!4152 = !{!4153}
!4153 = !DILocalVariable(name: "character", arg: 1, scope: !4149, file: !4138, line: 17, type: !67)
!4154 = !DILocation(line: 17, column: 20, scope: !4149)
!4155 = !DILocation(line: 18, column: 10, scope: !4149)
!4156 = !DILocation(line: 18, column: 5, scope: !4149)
!4157 = !DILocation(line: 19, column: 1, scope: !4149)
!4158 = distinct !DISubprogram(name: "Reset_Handler", scope: !206, file: !206, line: 241, type: !214, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4159 = !DILocation(line: 246, column: 5, scope: !4158)
!4160 = !{i32 12955, i32 12997, i32 13043}
!4161 = !DILocation(line: 253, column: 5, scope: !4158)
!4162 = !{i32 13121}
!4163 = !DILocation(line: 269, column: 5, scope: !4158)
!4164 = !{i32 13474, i32 13517, i32 13555, i32 13593, i32 13618, i32 13659, i32 13700, i32 13737}
!4165 = !DILocation(line: 280, column: 5, scope: !4158)
!4166 = !{i32 13826, i32 13864, i32 13901, i32 13934, i32 13959, i32 13996, i32 14029, i32 14072}
!4167 = !DILocation(line: 293, column: 5, scope: !4158)
!4168 = !{i32 14183}
!4169 = !DILocation(line: 298, column: 5, scope: !4158)
!4170 = !{i32 14290}
!4171 = !DILocation(line: 299, column: 1, scope: !4158)
!4172 = distinct !DISubprogram(name: "NMI_Handler", scope: !206, file: !206, line: 312, type: !214, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4173 = !DILocation(line: 317, column: 5, scope: !4172)
!4174 = distinct !{!4174, !4173, !4175}
!4175 = !DILocation(line: 319, column: 5, scope: !4172)
!4176 = distinct !DISubprogram(name: "HardFault_Handler", scope: !206, file: !206, line: 330, type: !214, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4177 = !DILocation(line: 335, column: 5, scope: !4176)
!4178 = distinct !{!4178, !4177, !4179}
!4179 = !DILocation(line: 337, column: 5, scope: !4176)
!4180 = distinct !DISubprogram(name: "am_default_isr", scope: !206, file: !206, line: 348, type: !214, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!4181 = !DILocation(line: 353, column: 5, scope: !4180)
!4182 = distinct !{!4182, !4181, !4183}
!4183 = !DILocation(line: 355, column: 5, scope: !4180)
