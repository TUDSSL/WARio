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
  %3 = alloca i16, align 2
  %4 = alloca i16*, align 4
  %5 = alloca %struct.RESULTS_S*, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store i16* %0, i16** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %4, metadata !283, metadata !DIExpression()), !dbg !296
  store %struct.RESULTS_S* %1, %struct.RESULTS_S** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.RESULTS_S** %5, metadata !284, metadata !DIExpression()), !dbg !297
  %12 = bitcast i16* %6 to i8*, !dbg !298
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %12) #4, !dbg !298
  call void @llvm.dbg.declare(metadata i16* %6, metadata !285, metadata !DIExpression()), !dbg !299
  %13 = load i16*, i16** %4, align 4, !dbg !300, !tbaa !292
  %14 = load i16, i16* %13, align 2, !dbg !301, !tbaa !302
  store i16 %14, i16* %6, align 2, !dbg !299, !tbaa !302
  %15 = bitcast i16* %7 to i8*, !dbg !304
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %15) #4, !dbg !304
  call void @llvm.dbg.declare(metadata i16* %7, metadata !286, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %8) #4, !dbg !306
  call void @llvm.dbg.declare(metadata i8* %8, metadata !287, metadata !DIExpression()), !dbg !307
  %16 = load i16, i16* %6, align 2, !dbg !308, !tbaa !302
  %17 = sext i16 %16 to i32, !dbg !308
  %18 = ashr i32 %17, 7, !dbg !309
  %19 = and i32 %18, 1, !dbg !310
  %20 = trunc i32 %19 to i8, !dbg !311
  store i8 %20, i8* %8, align 1, !dbg !307, !tbaa !312
  %21 = load i8, i8* %8, align 1, !dbg !313, !tbaa !312
  %22 = icmp ne i8 %21, 0, !dbg !313
  br i1 %22, label %23, label %28, !dbg !314

23:                                               ; preds = %2
  %24 = load i16, i16* %6, align 2, !dbg !315, !tbaa !302
  %25 = sext i16 %24 to i32, !dbg !315
  %26 = and i32 %25, 127, !dbg !316
  %27 = trunc i32 %26 to i16, !dbg !317
  store i16 %27, i16* %3, align 2, !dbg !318
  store i32 1, i32* %9, align 4
  br label %127, !dbg !318

28:                                               ; preds = %2
  %29 = bitcast i16* %10 to i8*, !dbg !319
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %29) #4, !dbg !319
  call void @llvm.dbg.declare(metadata i16* %10, metadata !288, metadata !DIExpression()), !dbg !320
  %30 = load i16, i16* %6, align 2, !dbg !321, !tbaa !302
  %31 = sext i16 %30 to i32, !dbg !321
  %32 = and i32 %31, 7, !dbg !322
  %33 = trunc i32 %32 to i16, !dbg !321
  store i16 %33, i16* %10, align 2, !dbg !320, !tbaa !302
  %34 = bitcast i16* %11 to i8*, !dbg !323
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %34) #4, !dbg !323
  call void @llvm.dbg.declare(metadata i16* %11, metadata !291, metadata !DIExpression()), !dbg !324
  %35 = load i16, i16* %6, align 2, !dbg !325, !tbaa !302
  %36 = sext i16 %35 to i32, !dbg !325
  %37 = ashr i32 %36, 3, !dbg !326
  %38 = and i32 %37, 15, !dbg !327
  %39 = trunc i32 %38 to i16, !dbg !328
  store i16 %39, i16* %11, align 2, !dbg !324, !tbaa !302
  %40 = load i16, i16* %11, align 2, !dbg !329, !tbaa !302
  %41 = sext i16 %40 to i32, !dbg !329
  %42 = shl i32 %41, 4, !dbg !330
  %43 = load i16, i16* %11, align 2, !dbg !331, !tbaa !302
  %44 = sext i16 %43 to i32, !dbg !331
  %45 = or i32 %44, %42, !dbg !331
  %46 = trunc i32 %45 to i16, !dbg !331
  store i16 %46, i16* %11, align 2, !dbg !331, !tbaa !302
  %47 = load i16, i16* %10, align 2, !dbg !332, !tbaa !302
  %48 = sext i16 %47 to i32, !dbg !332
  switch i32 %48, label %101 [
    i32 0, label %49
    i32 1, label %83
  ], !dbg !333

49:                                               ; preds = %28
  %50 = load i16, i16* %11, align 2, !dbg !334, !tbaa !302
  %51 = sext i16 %50 to i32, !dbg !334
  %52 = icmp slt i32 %51, 34, !dbg !337
  br i1 %52, label %53, label %54, !dbg !338

53:                                               ; preds = %49
  store i16 34, i16* %11, align 2, !dbg !339, !tbaa !302
  br label %54, !dbg !340

54:                                               ; preds = %53, %49
  %55 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !341, !tbaa !292
  %56 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %55, i32 0, i32 4, !dbg !342
  %57 = load i32, i32* %56, align 4, !dbg !342, !tbaa !343
  %58 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !348, !tbaa !292
  %59 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %58, i32 0, i32 3, !dbg !349
  %60 = getelementptr inbounds [4 x i8*], [4 x i8*]* %59, i32 0, i32 3, !dbg !348
  %61 = load i8*, i8** %60, align 4, !dbg !348, !tbaa !292
  %62 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !350, !tbaa !292
  %63 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %62, i32 0, i32 0, !dbg !351
  %64 = load i16, i16* %63, align 4, !dbg !351, !tbaa !352
  %65 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !353, !tbaa !292
  %66 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %65, i32 0, i32 1, !dbg !354
  %67 = load i16, i16* %66, align 2, !dbg !354, !tbaa !355
  %68 = load i16, i16* %11, align 2, !dbg !356, !tbaa !302
  %69 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !357, !tbaa !292
  %70 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %69, i32 0, i32 9, !dbg !358
  %71 = load i16, i16* %70, align 4, !dbg !358, !tbaa !359
  %72 = call arm_aapcscc zeroext i16 @core_bench_state(i32 %57, i8* %61, i16 signext %64, i16 signext %67, i16 signext %68, i16 zeroext %71), !dbg !360
  store i16 %72, i16* %7, align 2, !dbg !361, !tbaa !302
  %73 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !362, !tbaa !292
  %74 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %73, i32 0, i32 12, !dbg !364
  %75 = load i16, i16* %74, align 2, !dbg !364, !tbaa !365
  %76 = zext i16 %75 to i32, !dbg !362
  %77 = icmp eq i32 %76, 0, !dbg !366
  br i1 %77, label %78, label %82, !dbg !367

78:                                               ; preds = %54
  %79 = load i16, i16* %7, align 2, !dbg !368, !tbaa !302
  %80 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !369, !tbaa !292
  %81 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %80, i32 0, i32 12, !dbg !370
  store i16 %79, i16* %81, align 2, !dbg !371, !tbaa !365
  br label %82, !dbg !369

82:                                               ; preds = %78, %54
  br label %103, !dbg !372

83:                                               ; preds = %28
  %84 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !373, !tbaa !292
  %85 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %84, i32 0, i32 8, !dbg !374
  %86 = load i16, i16* %11, align 2, !dbg !375, !tbaa !302
  %87 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !376, !tbaa !292
  %88 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %87, i32 0, i32 9, !dbg !377
  %89 = load i16, i16* %88, align 4, !dbg !377, !tbaa !359
  %90 = call arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S* %85, i16 signext %86, i16 zeroext %89), !dbg !378
  store i16 %90, i16* %7, align 2, !dbg !379, !tbaa !302
  %91 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !380, !tbaa !292
  %92 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %91, i32 0, i32 11, !dbg !382
  %93 = load i16, i16* %92, align 4, !dbg !382, !tbaa !383
  %94 = zext i16 %93 to i32, !dbg !380
  %95 = icmp eq i32 %94, 0, !dbg !384
  br i1 %95, label %96, label %100, !dbg !385

96:                                               ; preds = %83
  %97 = load i16, i16* %7, align 2, !dbg !386, !tbaa !302
  %98 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !387, !tbaa !292
  %99 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %98, i32 0, i32 11, !dbg !388
  store i16 %97, i16* %99, align 4, !dbg !389, !tbaa !383
  br label %100, !dbg !387

100:                                              ; preds = %96, %83
  br label %103, !dbg !390

101:                                              ; preds = %28
  %102 = load i16, i16* %6, align 2, !dbg !391, !tbaa !302
  store i16 %102, i16* %7, align 2, !dbg !392, !tbaa !302
  br label %103, !dbg !393

103:                                              ; preds = %101, %100, %82
  %104 = load i16, i16* %7, align 2, !dbg !394, !tbaa !302
  %105 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !395, !tbaa !292
  %106 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %105, i32 0, i32 9, !dbg !396
  %107 = load i16, i16* %106, align 4, !dbg !396, !tbaa !359
  %108 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %104, i16 zeroext %107), !dbg !397
  %109 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !398, !tbaa !292
  %110 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %109, i32 0, i32 9, !dbg !399
  store i16 %108, i16* %110, align 4, !dbg !400, !tbaa !359
  %111 = load i16, i16* %7, align 2, !dbg !401, !tbaa !302
  %112 = sext i16 %111 to i32, !dbg !401
  %113 = and i32 %112, 127, !dbg !401
  %114 = trunc i32 %113 to i16, !dbg !401
  store i16 %114, i16* %7, align 2, !dbg !401, !tbaa !302
  %115 = load i16, i16* %6, align 2, !dbg !402, !tbaa !302
  %116 = sext i16 %115 to i32, !dbg !402
  %117 = and i32 %116, 65280, !dbg !403
  %118 = or i32 %117, 128, !dbg !404
  %119 = load i16, i16* %7, align 2, !dbg !405, !tbaa !302
  %120 = sext i16 %119 to i32, !dbg !405
  %121 = or i32 %118, %120, !dbg !406
  %122 = trunc i32 %121 to i16, !dbg !407
  %123 = load i16*, i16** %4, align 4, !dbg !408, !tbaa !292
  store i16 %122, i16* %123, align 2, !dbg !409, !tbaa !302
  %124 = load i16, i16* %7, align 2, !dbg !410, !tbaa !302
  store i16 %124, i16* %3, align 2, !dbg !411
  store i32 1, i32* %9, align 4
  %125 = bitcast i16* %11 to i8*, !dbg !412
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %125) #4, !dbg !412
  %126 = bitcast i16* %10 to i8*, !dbg !412
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %126) #4, !dbg !412
  br label %127

127:                                              ; preds = %103, %23
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %8) #4, !dbg !413
  %128 = bitcast i16* %7 to i8*, !dbg !413
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %128) #4, !dbg !413
  %129 = bitcast i16* %6 to i8*, !dbg !413
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %129) #4, !dbg !413
  %130 = load i16, i16* %3, align 2, !dbg !413
  ret i16 %130, !dbg !413
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @cmp_complex(%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*) #0 !dbg !414 {
  %4 = alloca %struct.list_data_s*, align 4
  %5 = alloca %struct.list_data_s*, align 4
  %6 = alloca %struct.RESULTS_S*, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.list_data_s* %0, %struct.list_data_s** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %4, metadata !418, metadata !DIExpression()), !dbg !423
  store %struct.list_data_s* %1, %struct.list_data_s** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %5, metadata !419, metadata !DIExpression()), !dbg !424
  store %struct.RESULTS_S* %2, %struct.RESULTS_S** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.RESULTS_S** %6, metadata !420, metadata !DIExpression()), !dbg !425
  %9 = bitcast i16* %7 to i8*, !dbg !426
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %9) #4, !dbg !426
  call void @llvm.dbg.declare(metadata i16* %7, metadata !421, metadata !DIExpression()), !dbg !427
  %10 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !428, !tbaa !292
  %11 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %10, i32 0, i32 0, !dbg !429
  %12 = load %struct.RESULTS_S*, %struct.RESULTS_S** %6, align 4, !dbg !430, !tbaa !292
  %13 = call arm_aapcscc signext i16 @calc_func(i16* %11, %struct.RESULTS_S* %12), !dbg !431
  store i16 %13, i16* %7, align 2, !dbg !427, !tbaa !302
  %14 = bitcast i16* %8 to i8*, !dbg !432
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %14) #4, !dbg !432
  call void @llvm.dbg.declare(metadata i16* %8, metadata !422, metadata !DIExpression()), !dbg !433
  %15 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !434, !tbaa !292
  %16 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %15, i32 0, i32 0, !dbg !435
  %17 = load %struct.RESULTS_S*, %struct.RESULTS_S** %6, align 4, !dbg !436, !tbaa !292
  %18 = call arm_aapcscc signext i16 @calc_func(i16* %16, %struct.RESULTS_S* %17), !dbg !437
  store i16 %18, i16* %8, align 2, !dbg !433, !tbaa !302
  %19 = load i16, i16* %7, align 2, !dbg !438, !tbaa !302
  %20 = sext i16 %19 to i32, !dbg !438
  %21 = load i16, i16* %8, align 2, !dbg !439, !tbaa !302
  %22 = sext i16 %21 to i32, !dbg !439
  %23 = sub nsw i32 %20, %22, !dbg !440
  %24 = bitcast i16* %8 to i8*, !dbg !441
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %24) #4, !dbg !441
  %25 = bitcast i16* %7 to i8*, !dbg !441
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %25) #4, !dbg !441
  ret i32 %23, !dbg !442
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @cmp_idx(%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*) #0 !dbg !443 {
  %4 = alloca %struct.list_data_s*, align 4
  %5 = alloca %struct.list_data_s*, align 4
  %6 = alloca %struct.RESULTS_S*, align 4
  store %struct.list_data_s* %0, %struct.list_data_s** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %4, metadata !445, metadata !DIExpression()), !dbg !448
  store %struct.list_data_s* %1, %struct.list_data_s** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %5, metadata !446, metadata !DIExpression()), !dbg !449
  store %struct.RESULTS_S* %2, %struct.RESULTS_S** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.RESULTS_S** %6, metadata !447, metadata !DIExpression()), !dbg !450
  %7 = load %struct.RESULTS_S*, %struct.RESULTS_S** %6, align 4, !dbg !451, !tbaa !292
  %8 = icmp eq %struct.RESULTS_S* %7, null, !dbg !453
  br i1 %8, label %9, label %40, !dbg !454

9:                                                ; preds = %3
  %10 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !455, !tbaa !292
  %11 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %10, i32 0, i32 0, !dbg !457
  %12 = load i16, i16* %11, align 2, !dbg !457, !tbaa !458
  %13 = sext i16 %12 to i32, !dbg !455
  %14 = and i32 %13, 65280, !dbg !460
  %15 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !461, !tbaa !292
  %16 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %15, i32 0, i32 0, !dbg !462
  %17 = load i16, i16* %16, align 2, !dbg !462, !tbaa !458
  %18 = sext i16 %17 to i32, !dbg !461
  %19 = ashr i32 %18, 8, !dbg !463
  %20 = and i32 255, %19, !dbg !464
  %21 = or i32 %14, %20, !dbg !465
  %22 = trunc i32 %21 to i16, !dbg !466
  %23 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !467, !tbaa !292
  %24 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %23, i32 0, i32 0, !dbg !468
  store i16 %22, i16* %24, align 2, !dbg !469, !tbaa !458
  %25 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !470, !tbaa !292
  %26 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %25, i32 0, i32 0, !dbg !471
  %27 = load i16, i16* %26, align 2, !dbg !471, !tbaa !458
  %28 = sext i16 %27 to i32, !dbg !470
  %29 = and i32 %28, 65280, !dbg !472
  %30 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !473, !tbaa !292
  %31 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %30, i32 0, i32 0, !dbg !474
  %32 = load i16, i16* %31, align 2, !dbg !474, !tbaa !458
  %33 = sext i16 %32 to i32, !dbg !473
  %34 = ashr i32 %33, 8, !dbg !475
  %35 = and i32 255, %34, !dbg !476
  %36 = or i32 %29, %35, !dbg !477
  %37 = trunc i32 %36 to i16, !dbg !478
  %38 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !479, !tbaa !292
  %39 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %38, i32 0, i32 0, !dbg !480
  store i16 %37, i16* %39, align 2, !dbg !481, !tbaa !458
  br label %40, !dbg !482

40:                                               ; preds = %9, %3
  %41 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !483, !tbaa !292
  %42 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %41, i32 0, i32 1, !dbg !484
  %43 = load i16, i16* %42, align 2, !dbg !484, !tbaa !485
  %44 = sext i16 %43 to i32, !dbg !483
  %45 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !486, !tbaa !292
  %46 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %45, i32 0, i32 1, !dbg !487
  %47 = load i16, i16* %46, align 2, !dbg !487, !tbaa !485
  %48 = sext i16 %47 to i32, !dbg !486
  %49 = sub nsw i32 %44, %48, !dbg !488
  ret i32 %49, !dbg !489
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @copy_info(%struct.list_data_s*, %struct.list_data_s*) #0 !dbg !490 {
  %3 = alloca %struct.list_data_s*, align 4
  %4 = alloca %struct.list_data_s*, align 4
  store %struct.list_data_s* %0, %struct.list_data_s** %3, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %3, metadata !494, metadata !DIExpression()), !dbg !496
  store %struct.list_data_s* %1, %struct.list_data_s** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %4, metadata !495, metadata !DIExpression()), !dbg !497
  %5 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !498, !tbaa !292
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %5, i32 0, i32 0, !dbg !499
  %7 = load i16, i16* %6, align 2, !dbg !499, !tbaa !458
  %8 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !500, !tbaa !292
  %9 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %8, i32 0, i32 0, !dbg !501
  store i16 %7, i16* %9, align 2, !dbg !502, !tbaa !458
  %10 = load %struct.list_data_s*, %struct.list_data_s** %4, align 4, !dbg !503, !tbaa !292
  %11 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %10, i32 0, i32 1, !dbg !504
  %12 = load i16, i16* %11, align 2, !dbg !504, !tbaa !485
  %13 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !505, !tbaa !292
  %14 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %13, i32 0, i32 1, !dbg !506
  store i16 %12, i16* %14, align 2, !dbg !507, !tbaa !485
  ret void, !dbg !508
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S*, i16 signext) #0 !dbg !509 {
  %3 = alloca %struct.RESULTS_S*, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.list_head_s*, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.list_head_s*, align 4
  %11 = alloca %struct.list_head_s*, align 4
  %12 = alloca %struct.list_head_s*, align 4
  %13 = alloca %struct.list_data_s, align 2
  %14 = alloca i16, align 2
  store %struct.RESULTS_S* %0, %struct.RESULTS_S** %3, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.RESULTS_S** %3, metadata !513, metadata !DIExpression()), !dbg !527
  store i16 %1, i16* %4, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %4, metadata !514, metadata !DIExpression()), !dbg !528
  %15 = bitcast i16* %5 to i8*, !dbg !529
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %15) #4, !dbg !529
  call void @llvm.dbg.declare(metadata i16* %5, metadata !515, metadata !DIExpression()), !dbg !530
  store i16 0, i16* %5, align 2, !dbg !530, !tbaa !302
  %16 = bitcast i16* %6 to i8*, !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %16) #4, !dbg !531
  call void @llvm.dbg.declare(metadata i16* %6, metadata !516, metadata !DIExpression()), !dbg !532
  store i16 0, i16* %6, align 2, !dbg !532, !tbaa !302
  %17 = bitcast i16* %7 to i8*, !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %17) #4, !dbg !531
  call void @llvm.dbg.declare(metadata i16* %7, metadata !517, metadata !DIExpression()), !dbg !533
  store i16 0, i16* %7, align 2, !dbg !533, !tbaa !302
  %18 = bitcast %struct.list_head_s** %8 to i8*, !dbg !534
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !534
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %8, metadata !518, metadata !DIExpression()), !dbg !535
  %19 = load %struct.RESULTS_S*, %struct.RESULTS_S** %3, align 4, !dbg !536, !tbaa !292
  %20 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %19, i32 0, i32 7, !dbg !537
  %21 = load %struct.list_head_s*, %struct.list_head_s** %20, align 4, !dbg !537, !tbaa !538
  store %struct.list_head_s* %21, %struct.list_head_s** %8, align 4, !dbg !535, !tbaa !292
  %22 = bitcast i16* %9 to i8*, !dbg !539
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %22) #4, !dbg !539
  call void @llvm.dbg.declare(metadata i16* %9, metadata !521, metadata !DIExpression()), !dbg !540
  %23 = load %struct.RESULTS_S*, %struct.RESULTS_S** %3, align 4, !dbg !541, !tbaa !292
  %24 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %23, i32 0, i32 2, !dbg !542
  %25 = load i16, i16* %24, align 4, !dbg !542, !tbaa !543
  store i16 %25, i16* %9, align 2, !dbg !540, !tbaa !302
  %26 = bitcast %struct.list_head_s** %10 to i8*, !dbg !544
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #4, !dbg !544
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %10, metadata !522, metadata !DIExpression()), !dbg !545
  %27 = bitcast %struct.list_head_s** %11 to i8*, !dbg !546
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %27) #4, !dbg !546
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %11, metadata !523, metadata !DIExpression()), !dbg !547
  %28 = bitcast %struct.list_head_s** %12 to i8*, !dbg !546
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #4, !dbg !546
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %12, metadata !524, metadata !DIExpression()), !dbg !548
  %29 = bitcast %struct.list_data_s* %13 to i8*, !dbg !549
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #4, !dbg !549
  call void @llvm.dbg.declare(metadata %struct.list_data_s* %13, metadata !525, metadata !DIExpression()), !dbg !550
  %30 = bitcast i16* %14 to i8*, !dbg !551
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %30) #4, !dbg !551
  call void @llvm.dbg.declare(metadata i16* %14, metadata !526, metadata !DIExpression()), !dbg !552
  %31 = load i16, i16* %4, align 2, !dbg !553, !tbaa !302
  %32 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %13, i32 0, i32 1, !dbg !554
  store i16 %31, i16* %32, align 2, !dbg !555, !tbaa !485
  store i16 0, i16* %14, align 2, !dbg !556, !tbaa !302
  br label %33, !dbg !558

33:                                               ; preds = %125, %2
  %34 = load i16, i16* %14, align 2, !dbg !559, !tbaa !302
  %35 = sext i16 %34 to i32, !dbg !559
  %36 = load i16, i16* %9, align 2, !dbg !561, !tbaa !302
  %37 = sext i16 %36 to i32, !dbg !561
  %38 = icmp slt i32 %35, %37, !dbg !562
  br i1 %38, label %39, label %128, !dbg !563

39:                                               ; preds = %33
  %40 = load i16, i16* %14, align 2, !dbg !564, !tbaa !302
  %41 = sext i16 %40 to i32, !dbg !564
  %42 = and i32 %41, 255, !dbg !566
  %43 = trunc i32 %42 to i16, !dbg !567
  %44 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %13, i32 0, i32 0, !dbg !568
  store i16 %43, i16* %44, align 2, !dbg !569, !tbaa !458
  %45 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !570, !tbaa !292
  %46 = call arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s* %45, %struct.list_data_s* %13), !dbg !571
  store %struct.list_head_s* %46, %struct.list_head_s** %10, align 4, !dbg !572, !tbaa !292
  %47 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !573, !tbaa !292
  %48 = call arm_aapcscc %struct.list_head_s* @core_list_reverse(%struct.list_head_s* %47), !dbg !574
  store %struct.list_head_s* %48, %struct.list_head_s** %8, align 4, !dbg !575, !tbaa !292
  %49 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !576, !tbaa !292
  %50 = icmp eq %struct.list_head_s* %49, null, !dbg !578
  br i1 %50, label %51, label %68, !dbg !579

51:                                               ; preds = %39
  %52 = load i16, i16* %7, align 2, !dbg !580, !tbaa !302
  %53 = add i16 %52, 1, !dbg !580
  store i16 %53, i16* %7, align 2, !dbg !580, !tbaa !302
  %54 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !582, !tbaa !292
  %55 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %54, i32 0, i32 0, !dbg !583
  %56 = load %struct.list_head_s*, %struct.list_head_s** %55, align 4, !dbg !583, !tbaa !584
  %57 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %56, i32 0, i32 1, !dbg !586
  %58 = load %struct.list_data_s*, %struct.list_data_s** %57, align 4, !dbg !586, !tbaa !587
  %59 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %58, i32 0, i32 0, !dbg !588
  %60 = load i16, i16* %59, align 2, !dbg !588, !tbaa !458
  %61 = sext i16 %60 to i32, !dbg !582
  %62 = ashr i32 %61, 8, !dbg !589
  %63 = and i32 %62, 1, !dbg !590
  %64 = load i16, i16* %5, align 2, !dbg !591, !tbaa !302
  %65 = zext i16 %64 to i32, !dbg !591
  %66 = add nsw i32 %65, %63, !dbg !591
  %67 = trunc i32 %66 to i16, !dbg !591
  store i16 %67, i16* %5, align 2, !dbg !591, !tbaa !302
  br label %115, !dbg !592

68:                                               ; preds = %39
  %69 = load i16, i16* %6, align 2, !dbg !593, !tbaa !302
  %70 = add i16 %69, 1, !dbg !593
  store i16 %70, i16* %6, align 2, !dbg !593, !tbaa !302
  %71 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !595, !tbaa !292
  %72 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %71, i32 0, i32 1, !dbg !597
  %73 = load %struct.list_data_s*, %struct.list_data_s** %72, align 4, !dbg !597, !tbaa !587
  %74 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %73, i32 0, i32 0, !dbg !598
  %75 = load i16, i16* %74, align 2, !dbg !598, !tbaa !458
  %76 = sext i16 %75 to i32, !dbg !595
  %77 = and i32 %76, 1, !dbg !599
  %78 = icmp ne i32 %77, 0, !dbg !599
  br i1 %78, label %79, label %92, !dbg !600

79:                                               ; preds = %68
  %80 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !601, !tbaa !292
  %81 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %80, i32 0, i32 1, !dbg !602
  %82 = load %struct.list_data_s*, %struct.list_data_s** %81, align 4, !dbg !602, !tbaa !587
  %83 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %82, i32 0, i32 0, !dbg !603
  %84 = load i16, i16* %83, align 2, !dbg !603, !tbaa !458
  %85 = sext i16 %84 to i32, !dbg !601
  %86 = ashr i32 %85, 9, !dbg !604
  %87 = and i32 %86, 1, !dbg !605
  %88 = load i16, i16* %5, align 2, !dbg !606, !tbaa !302
  %89 = zext i16 %88 to i32, !dbg !606
  %90 = add nsw i32 %89, %87, !dbg !606
  %91 = trunc i32 %90 to i16, !dbg !606
  store i16 %91, i16* %5, align 2, !dbg !606, !tbaa !302
  br label %92, !dbg !607

92:                                               ; preds = %79, %68
  %93 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !608, !tbaa !292
  %94 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %93, i32 0, i32 0, !dbg !610
  %95 = load %struct.list_head_s*, %struct.list_head_s** %94, align 4, !dbg !610, !tbaa !584
  %96 = icmp ne %struct.list_head_s* %95, null, !dbg !611
  br i1 %96, label %97, label %114, !dbg !612

97:                                               ; preds = %92
  %98 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !613, !tbaa !292
  %99 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %98, i32 0, i32 0, !dbg !615
  %100 = load %struct.list_head_s*, %struct.list_head_s** %99, align 4, !dbg !615, !tbaa !584
  store %struct.list_head_s* %100, %struct.list_head_s** %11, align 4, !dbg !616, !tbaa !292
  %101 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !617, !tbaa !292
  %102 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %101, i32 0, i32 0, !dbg !618
  %103 = load %struct.list_head_s*, %struct.list_head_s** %102, align 4, !dbg !618, !tbaa !584
  %104 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !619, !tbaa !292
  %105 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %104, i32 0, i32 0, !dbg !620
  store %struct.list_head_s* %103, %struct.list_head_s** %105, align 4, !dbg !621, !tbaa !584
  %106 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !622, !tbaa !292
  %107 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %106, i32 0, i32 0, !dbg !623
  %108 = load %struct.list_head_s*, %struct.list_head_s** %107, align 4, !dbg !623, !tbaa !584
  %109 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !624, !tbaa !292
  %110 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %109, i32 0, i32 0, !dbg !625
  store %struct.list_head_s* %108, %struct.list_head_s** %110, align 4, !dbg !626, !tbaa !584
  %111 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !627, !tbaa !292
  %112 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !628, !tbaa !292
  %113 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %112, i32 0, i32 0, !dbg !629
  store %struct.list_head_s* %111, %struct.list_head_s** %113, align 4, !dbg !630, !tbaa !584
  br label %114, !dbg !631

114:                                              ; preds = %97, %92
  br label %115

115:                                              ; preds = %114, %51
  %116 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %13, i32 0, i32 1, !dbg !632
  %117 = load i16, i16* %116, align 2, !dbg !632, !tbaa !485
  %118 = sext i16 %117 to i32, !dbg !634
  %119 = icmp sge i32 %118, 0, !dbg !635
  br i1 %119, label %120, label %124, !dbg !636

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %13, i32 0, i32 1, !dbg !637
  %122 = load i16, i16* %121, align 2, !dbg !638, !tbaa !485
  %123 = add i16 %122, 1, !dbg !638
  store i16 %123, i16* %121, align 2, !dbg !638, !tbaa !485
  br label %124, !dbg !639

124:                                              ; preds = %120, %115
  br label %125, !dbg !640

125:                                              ; preds = %124
  %126 = load i16, i16* %14, align 2, !dbg !641, !tbaa !302
  %127 = add i16 %126, 1, !dbg !641
  store i16 %127, i16* %14, align 2, !dbg !641, !tbaa !302
  br label %33, !dbg !642, !llvm.loop !643

128:                                              ; preds = %33
  %129 = load i16, i16* %6, align 2, !dbg !645, !tbaa !302
  %130 = zext i16 %129 to i32, !dbg !645
  %131 = mul nsw i32 %130, 4, !dbg !646
  %132 = load i16, i16* %7, align 2, !dbg !647, !tbaa !302
  %133 = zext i16 %132 to i32, !dbg !647
  %134 = sub nsw i32 %131, %133, !dbg !648
  %135 = load i16, i16* %5, align 2, !dbg !649, !tbaa !302
  %136 = zext i16 %135 to i32, !dbg !649
  %137 = add nsw i32 %136, %134, !dbg !649
  %138 = trunc i32 %137 to i16, !dbg !649
  store i16 %138, i16* %5, align 2, !dbg !649, !tbaa !302
  %139 = load i16, i16* %4, align 2, !dbg !650, !tbaa !302
  %140 = sext i16 %139 to i32, !dbg !650
  %141 = icmp sgt i32 %140, 0, !dbg !652
  br i1 %141, label %142, label %146, !dbg !653

142:                                              ; preds = %128
  %143 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !654, !tbaa !292
  %144 = load %struct.RESULTS_S*, %struct.RESULTS_S** %3, align 4, !dbg !655, !tbaa !292
  %145 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %143, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_complex, %struct.RESULTS_S* %144), !dbg !656
  store %struct.list_head_s* %145, %struct.list_head_s** %8, align 4, !dbg !657, !tbaa !292
  br label %146, !dbg !658

146:                                              ; preds = %142, %128
  %147 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !659, !tbaa !292
  %148 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %147, i32 0, i32 0, !dbg !660
  %149 = load %struct.list_head_s*, %struct.list_head_s** %148, align 4, !dbg !660, !tbaa !584
  %150 = call arm_aapcscc %struct.list_head_s* @core_list_remove(%struct.list_head_s* %149), !dbg !661
  store %struct.list_head_s* %150, %struct.list_head_s** %12, align 4, !dbg !662, !tbaa !292
  %151 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !663, !tbaa !292
  %152 = call arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s* %151, %struct.list_data_s* %13), !dbg !664
  store %struct.list_head_s* %152, %struct.list_head_s** %11, align 4, !dbg !665, !tbaa !292
  %153 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !666, !tbaa !292
  %154 = icmp ne %struct.list_head_s* %153, null, !dbg !666
  br i1 %154, label %159, label %155, !dbg !668

155:                                              ; preds = %146
  %156 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !669, !tbaa !292
  %157 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %156, i32 0, i32 0, !dbg !670
  %158 = load %struct.list_head_s*, %struct.list_head_s** %157, align 4, !dbg !670, !tbaa !584
  store %struct.list_head_s* %158, %struct.list_head_s** %11, align 4, !dbg !671, !tbaa !292
  br label %159, !dbg !672

159:                                              ; preds = %155, %146
  br label %160, !dbg !673

160:                                              ; preds = %163, %159
  %161 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !674, !tbaa !292
  %162 = icmp ne %struct.list_head_s* %161, null, !dbg !673
  br i1 %162, label %163, label %174, !dbg !673

163:                                              ; preds = %160
  %164 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !675, !tbaa !292
  %165 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %164, i32 0, i32 1, !dbg !677
  %166 = load %struct.list_data_s*, %struct.list_data_s** %165, align 4, !dbg !677, !tbaa !587
  %167 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %166, i32 0, i32 0, !dbg !678
  %168 = load i16, i16* %167, align 2, !dbg !678, !tbaa !458
  %169 = load i16, i16* %5, align 2, !dbg !679, !tbaa !302
  %170 = call arm_aapcscc zeroext i16 @crc16(i16 signext %168, i16 zeroext %169), !dbg !680
  store i16 %170, i16* %5, align 2, !dbg !681, !tbaa !302
  %171 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !682, !tbaa !292
  %172 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %171, i32 0, i32 0, !dbg !683
  %173 = load %struct.list_head_s*, %struct.list_head_s** %172, align 4, !dbg !683, !tbaa !584
  store %struct.list_head_s* %173, %struct.list_head_s** %11, align 4, !dbg !684, !tbaa !292
  br label %160, !dbg !673, !llvm.loop !685

174:                                              ; preds = %160
  %175 = load %struct.list_head_s*, %struct.list_head_s** %12, align 4, !dbg !687, !tbaa !292
  %176 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !688, !tbaa !292
  %177 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %176, i32 0, i32 0, !dbg !689
  %178 = load %struct.list_head_s*, %struct.list_head_s** %177, align 4, !dbg !689, !tbaa !584
  %179 = call arm_aapcscc %struct.list_head_s* @core_list_undo_remove(%struct.list_head_s* %175, %struct.list_head_s* %178), !dbg !690
  store %struct.list_head_s* %179, %struct.list_head_s** %12, align 4, !dbg !691, !tbaa !292
  %180 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !692, !tbaa !292
  %181 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %180, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_idx, %struct.RESULTS_S* null), !dbg !693
  store %struct.list_head_s* %181, %struct.list_head_s** %8, align 4, !dbg !694, !tbaa !292
  %182 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !695, !tbaa !292
  %183 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %182, i32 0, i32 0, !dbg !696
  %184 = load %struct.list_head_s*, %struct.list_head_s** %183, align 4, !dbg !696, !tbaa !584
  store %struct.list_head_s* %184, %struct.list_head_s** %11, align 4, !dbg !697, !tbaa !292
  br label %185, !dbg !698

185:                                              ; preds = %188, %174
  %186 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !699, !tbaa !292
  %187 = icmp ne %struct.list_head_s* %186, null, !dbg !698
  br i1 %187, label %188, label %199, !dbg !698

188:                                              ; preds = %185
  %189 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !700, !tbaa !292
  %190 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %189, i32 0, i32 1, !dbg !702
  %191 = load %struct.list_data_s*, %struct.list_data_s** %190, align 4, !dbg !702, !tbaa !587
  %192 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %191, i32 0, i32 0, !dbg !703
  %193 = load i16, i16* %192, align 2, !dbg !703, !tbaa !458
  %194 = load i16, i16* %5, align 2, !dbg !704, !tbaa !302
  %195 = call arm_aapcscc zeroext i16 @crc16(i16 signext %193, i16 zeroext %194), !dbg !705
  store i16 %195, i16* %5, align 2, !dbg !706, !tbaa !302
  %196 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !dbg !707, !tbaa !292
  %197 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %196, i32 0, i32 0, !dbg !708
  %198 = load %struct.list_head_s*, %struct.list_head_s** %197, align 4, !dbg !708, !tbaa !584
  store %struct.list_head_s* %198, %struct.list_head_s** %11, align 4, !dbg !709, !tbaa !292
  br label %185, !dbg !698, !llvm.loop !710

199:                                              ; preds = %185
  %200 = load i16, i16* %5, align 2, !dbg !712, !tbaa !302
  %201 = bitcast i16* %14 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %201) #4, !dbg !713
  %202 = bitcast %struct.list_data_s* %13 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %202) #4, !dbg !713
  %203 = bitcast %struct.list_head_s** %12 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %203) #4, !dbg !713
  %204 = bitcast %struct.list_head_s** %11 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %204) #4, !dbg !713
  %205 = bitcast %struct.list_head_s** %10 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %205) #4, !dbg !713
  %206 = bitcast i16* %9 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %206) #4, !dbg !713
  %207 = bitcast %struct.list_head_s** %8 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %207) #4, !dbg !713
  %208 = bitcast i16* %7 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %208) #4, !dbg !713
  %209 = bitcast i16* %6 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %209) #4, !dbg !713
  %210 = bitcast i16* %5 to i8*, !dbg !713
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %210) #4, !dbg !713
  ret i16 %200, !dbg !714
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_find(%struct.list_head_s*, %struct.list_data_s*) #0 !dbg !715 {
  %3 = alloca %struct.list_head_s*, align 4
  %4 = alloca %struct.list_head_s*, align 4
  %5 = alloca %struct.list_data_s*, align 4
  store %struct.list_head_s* %0, %struct.list_head_s** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %4, metadata !719, metadata !DIExpression()), !dbg !721
  store %struct.list_data_s* %1, %struct.list_data_s** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %5, metadata !720, metadata !DIExpression()), !dbg !722
  %6 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !723, !tbaa !292
  %7 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %6, i32 0, i32 1, !dbg !725
  %8 = load i16, i16* %7, align 2, !dbg !725, !tbaa !485
  %9 = sext i16 %8 to i32, !dbg !723
  %10 = icmp sge i32 %9, 0, !dbg !726
  br i1 %10, label %11, label %35, !dbg !727

11:                                               ; preds = %2
  br label %12, !dbg !728

12:                                               ; preds = %29, %11
  %13 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !730, !tbaa !292
  %14 = icmp ne %struct.list_head_s* %13, null, !dbg !730
  br i1 %14, label %15, label %27, !dbg !731

15:                                               ; preds = %12
  %16 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !732, !tbaa !292
  %17 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %16, i32 0, i32 1, !dbg !733
  %18 = load %struct.list_data_s*, %struct.list_data_s** %17, align 4, !dbg !733, !tbaa !587
  %19 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %18, i32 0, i32 1, !dbg !734
  %20 = load i16, i16* %19, align 2, !dbg !734, !tbaa !485
  %21 = sext i16 %20 to i32, !dbg !732
  %22 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !735, !tbaa !292
  %23 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %22, i32 0, i32 1, !dbg !736
  %24 = load i16, i16* %23, align 2, !dbg !736, !tbaa !485
  %25 = sext i16 %24 to i32, !dbg !735
  %26 = icmp ne i32 %21, %25, !dbg !737
  br label %27

27:                                               ; preds = %15, %12
  %28 = phi i1 [ false, %12 ], [ %26, %15 ], !dbg !738
  br i1 %28, label %29, label %33, !dbg !728

29:                                               ; preds = %27
  %30 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !739, !tbaa !292
  %31 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %30, i32 0, i32 0, !dbg !740
  %32 = load %struct.list_head_s*, %struct.list_head_s** %31, align 4, !dbg !740, !tbaa !584
  store %struct.list_head_s* %32, %struct.list_head_s** %4, align 4, !dbg !741, !tbaa !292
  br label %12, !dbg !728, !llvm.loop !742

33:                                               ; preds = %27
  %34 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !743, !tbaa !292
  store %struct.list_head_s* %34, %struct.list_head_s** %3, align 4, !dbg !744
  br label %60, !dbg !744

35:                                               ; preds = %2
  br label %36, !dbg !745

36:                                               ; preds = %54, %35
  %37 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !747, !tbaa !292
  %38 = icmp ne %struct.list_head_s* %37, null, !dbg !747
  br i1 %38, label %39, label %52, !dbg !748

39:                                               ; preds = %36
  %40 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !749, !tbaa !292
  %41 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %40, i32 0, i32 1, !dbg !750
  %42 = load %struct.list_data_s*, %struct.list_data_s** %41, align 4, !dbg !750, !tbaa !587
  %43 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %42, i32 0, i32 0, !dbg !751
  %44 = load i16, i16* %43, align 2, !dbg !751, !tbaa !458
  %45 = sext i16 %44 to i32, !dbg !749
  %46 = and i32 %45, 255, !dbg !752
  %47 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !753, !tbaa !292
  %48 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %47, i32 0, i32 0, !dbg !754
  %49 = load i16, i16* %48, align 2, !dbg !754, !tbaa !458
  %50 = sext i16 %49 to i32, !dbg !753
  %51 = icmp ne i32 %46, %50, !dbg !755
  br label %52

52:                                               ; preds = %39, %36
  %53 = phi i1 [ false, %36 ], [ %51, %39 ], !dbg !756
  br i1 %53, label %54, label %58, !dbg !745

54:                                               ; preds = %52
  %55 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !757, !tbaa !292
  %56 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %55, i32 0, i32 0, !dbg !758
  %57 = load %struct.list_head_s*, %struct.list_head_s** %56, align 4, !dbg !758, !tbaa !584
  store %struct.list_head_s* %57, %struct.list_head_s** %4, align 4, !dbg !759, !tbaa !292
  br label %36, !dbg !745, !llvm.loop !760

58:                                               ; preds = %52
  %59 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !761, !tbaa !292
  store %struct.list_head_s* %59, %struct.list_head_s** %3, align 4, !dbg !762
  br label %60, !dbg !762

60:                                               ; preds = %58, %33
  %61 = load %struct.list_head_s*, %struct.list_head_s** %3, align 4, !dbg !763
  ret %struct.list_head_s* %61, !dbg !763
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_reverse(%struct.list_head_s*) #0 !dbg !764 {
  %2 = alloca %struct.list_head_s*, align 4
  %3 = alloca %struct.list_head_s*, align 4
  %4 = alloca %struct.list_head_s*, align 4
  store %struct.list_head_s* %0, %struct.list_head_s** %2, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %2, metadata !768, metadata !DIExpression()), !dbg !771
  %5 = bitcast %struct.list_head_s** %3 to i8*, !dbg !772
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !772
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %3, metadata !769, metadata !DIExpression()), !dbg !773
  store %struct.list_head_s* null, %struct.list_head_s** %3, align 4, !dbg !773, !tbaa !292
  %6 = bitcast %struct.list_head_s** %4 to i8*, !dbg !772
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !772
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %4, metadata !770, metadata !DIExpression()), !dbg !774
  br label %7, !dbg !775

7:                                                ; preds = %10, %1
  %8 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !776, !tbaa !292
  %9 = icmp ne %struct.list_head_s* %8, null, !dbg !775
  br i1 %9, label %10, label %19, !dbg !775

10:                                               ; preds = %7
  %11 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !777, !tbaa !292
  %12 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %11, i32 0, i32 0, !dbg !779
  %13 = load %struct.list_head_s*, %struct.list_head_s** %12, align 4, !dbg !779, !tbaa !584
  store %struct.list_head_s* %13, %struct.list_head_s** %4, align 4, !dbg !780, !tbaa !292
  %14 = load %struct.list_head_s*, %struct.list_head_s** %3, align 4, !dbg !781, !tbaa !292
  %15 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !782, !tbaa !292
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %15, i32 0, i32 0, !dbg !783
  store %struct.list_head_s* %14, %struct.list_head_s** %16, align 4, !dbg !784, !tbaa !584
  %17 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !785, !tbaa !292
  store %struct.list_head_s* %17, %struct.list_head_s** %3, align 4, !dbg !786, !tbaa !292
  %18 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !787, !tbaa !292
  store %struct.list_head_s* %18, %struct.list_head_s** %2, align 4, !dbg !788, !tbaa !292
  br label %7, !dbg !775, !llvm.loop !789

19:                                               ; preds = %7
  %20 = load %struct.list_head_s*, %struct.list_head_s** %3, align 4, !dbg !791, !tbaa !292
  %21 = bitcast %struct.list_head_s** %4 to i8*, !dbg !792
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !792
  %22 = bitcast %struct.list_head_s** %3 to i8*, !dbg !792
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !792
  ret %struct.list_head_s* %20, !dbg !793
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s*, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)*, %struct.RESULTS_S*) #0 !dbg !794 {
  %4 = alloca %struct.list_head_s*, align 4
  %5 = alloca i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)*, align 4
  %6 = alloca %struct.RESULTS_S*, align 4
  %7 = alloca %struct.list_head_s*, align 4
  %8 = alloca %struct.list_head_s*, align 4
  %9 = alloca %struct.list_head_s*, align 4
  %10 = alloca %struct.list_head_s*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.list_head_s* %0, %struct.list_head_s** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %4, metadata !800, metadata !DIExpression()), !dbg !812
  store i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* %1, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)** %5, metadata !801, metadata !DIExpression()), !dbg !813
  store %struct.RESULTS_S* %2, %struct.RESULTS_S** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.RESULTS_S** %6, metadata !802, metadata !DIExpression()), !dbg !814
  %16 = bitcast %struct.list_head_s** %7 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !815
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %7, metadata !803, metadata !DIExpression()), !dbg !816
  %17 = bitcast %struct.list_head_s** %8 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !815
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %8, metadata !804, metadata !DIExpression()), !dbg !817
  %18 = bitcast %struct.list_head_s** %9 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !815
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %9, metadata !805, metadata !DIExpression()), !dbg !818
  %19 = bitcast %struct.list_head_s** %10 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !815
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %10, metadata !806, metadata !DIExpression()), !dbg !819
  %20 = bitcast i32* %11 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %11, metadata !807, metadata !DIExpression()), !dbg !821
  %21 = bitcast i32* %12 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %12, metadata !808, metadata !DIExpression()), !dbg !822
  %22 = bitcast i32* %13 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #4, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %13, metadata !809, metadata !DIExpression()), !dbg !823
  %23 = bitcast i32* %14 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #4, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %14, metadata !810, metadata !DIExpression()), !dbg !824
  %24 = bitcast i32* %15 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #4, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %15, metadata !811, metadata !DIExpression()), !dbg !825
  store i32 1, i32* %11, align 4, !dbg !826, !tbaa !827
  br label %25, !dbg !828

25:                                               ; preds = %146, %3
  br label %26, !dbg !828

26:                                               ; preds = %25
  %27 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !829, !tbaa !292
  store %struct.list_head_s* %27, %struct.list_head_s** %7, align 4, !dbg !831, !tbaa !292
  store %struct.list_head_s* null, %struct.list_head_s** %4, align 4, !dbg !832, !tbaa !292
  store %struct.list_head_s* null, %struct.list_head_s** %10, align 4, !dbg !833, !tbaa !292
  store i32 0, i32* %12, align 4, !dbg !834, !tbaa !827
  br label %28, !dbg !835

28:                                               ; preds = %128, %26
  %29 = load %struct.list_head_s*, %struct.list_head_s** %7, align 4, !dbg !836, !tbaa !292
  %30 = icmp ne %struct.list_head_s* %29, null, !dbg !835
  br i1 %30, label %31, label %130, !dbg !835

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4, !dbg !837, !tbaa !827
  %33 = add nsw i32 %32, 1, !dbg !837
  store i32 %33, i32* %12, align 4, !dbg !837, !tbaa !827
  %34 = load %struct.list_head_s*, %struct.list_head_s** %7, align 4, !dbg !839, !tbaa !292
  store %struct.list_head_s* %34, %struct.list_head_s** %8, align 4, !dbg !840, !tbaa !292
  store i32 0, i32* %13, align 4, !dbg !841, !tbaa !827
  store i32 0, i32* %15, align 4, !dbg !842, !tbaa !827
  br label %35, !dbg !844

35:                                               ; preds = %49, %31
  %36 = load i32, i32* %15, align 4, !dbg !845, !tbaa !827
  %37 = load i32, i32* %11, align 4, !dbg !847, !tbaa !827
  %38 = icmp slt i32 %36, %37, !dbg !848
  br i1 %38, label %39, label %52, !dbg !849

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4, !dbg !850, !tbaa !827
  %41 = add nsw i32 %40, 1, !dbg !850
  store i32 %41, i32* %13, align 4, !dbg !850, !tbaa !827
  %42 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !852, !tbaa !292
  %43 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %42, i32 0, i32 0, !dbg !853
  %44 = load %struct.list_head_s*, %struct.list_head_s** %43, align 4, !dbg !853, !tbaa !584
  store %struct.list_head_s* %44, %struct.list_head_s** %8, align 4, !dbg !854, !tbaa !292
  %45 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !855, !tbaa !292
  %46 = icmp ne %struct.list_head_s* %45, null, !dbg !855
  br i1 %46, label %48, label %47, !dbg !857

47:                                               ; preds = %39
  br label %52, !dbg !858

48:                                               ; preds = %39
  br label %49, !dbg !859

49:                                               ; preds = %48
  %50 = load i32, i32* %15, align 4, !dbg !860, !tbaa !827
  %51 = add nsw i32 %50, 1, !dbg !860
  store i32 %51, i32* %15, align 4, !dbg !860, !tbaa !827
  br label %35, !dbg !861, !llvm.loop !862

52:                                               ; preds = %47, %35
  %53 = load i32, i32* %11, align 4, !dbg !864, !tbaa !827
  store i32 %53, i32* %14, align 4, !dbg !865, !tbaa !827
  br label %54, !dbg !866

54:                                               ; preds = %126, %52
  %55 = load i32, i32* %13, align 4, !dbg !867, !tbaa !827
  %56 = icmp sgt i32 %55, 0, !dbg !868
  br i1 %56, label %65, label %57, !dbg !869

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4, !dbg !870, !tbaa !827
  %59 = icmp sgt i32 %58, 0, !dbg !871
  br i1 %59, label %60, label %63, !dbg !872

60:                                               ; preds = %57
  %61 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !873, !tbaa !292
  %62 = icmp ne %struct.list_head_s* %61, null, !dbg !872
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ], !dbg !874
  br label %65, !dbg !869

65:                                               ; preds = %63, %54
  %66 = phi i1 [ true, %54 ], [ %64, %63 ]
  br i1 %66, label %67, label %128, !dbg !866

67:                                               ; preds = %65
  %68 = load i32, i32* %13, align 4, !dbg !875, !tbaa !827
  %69 = icmp eq i32 %68, 0, !dbg !878
  br i1 %69, label %70, label %77, !dbg !879

70:                                               ; preds = %67
  %71 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !880, !tbaa !292
  store %struct.list_head_s* %71, %struct.list_head_s** %9, align 4, !dbg !882, !tbaa !292
  %72 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !883, !tbaa !292
  %73 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %72, i32 0, i32 0, !dbg !884
  %74 = load %struct.list_head_s*, %struct.list_head_s** %73, align 4, !dbg !884, !tbaa !584
  store %struct.list_head_s* %74, %struct.list_head_s** %8, align 4, !dbg !885, !tbaa !292
  %75 = load i32, i32* %14, align 4, !dbg !886, !tbaa !827
  %76 = add nsw i32 %75, -1, !dbg !886
  store i32 %76, i32* %14, align 4, !dbg !886, !tbaa !827
  br label %117, !dbg !887

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4, !dbg !888, !tbaa !827
  %79 = icmp eq i32 %78, 0, !dbg !890
  br i1 %79, label %83, label %80, !dbg !891

80:                                               ; preds = %77
  %81 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !892, !tbaa !292
  %82 = icmp ne %struct.list_head_s* %81, null, !dbg !892
  br i1 %82, label %90, label %83, !dbg !893

83:                                               ; preds = %80, %77
  %84 = load %struct.list_head_s*, %struct.list_head_s** %7, align 4, !dbg !894, !tbaa !292
  store %struct.list_head_s* %84, %struct.list_head_s** %9, align 4, !dbg !896, !tbaa !292
  %85 = load %struct.list_head_s*, %struct.list_head_s** %7, align 4, !dbg !897, !tbaa !292
  %86 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %85, i32 0, i32 0, !dbg !898
  %87 = load %struct.list_head_s*, %struct.list_head_s** %86, align 4, !dbg !898, !tbaa !584
  store %struct.list_head_s* %87, %struct.list_head_s** %7, align 4, !dbg !899, !tbaa !292
  %88 = load i32, i32* %13, align 4, !dbg !900, !tbaa !827
  %89 = add nsw i32 %88, -1, !dbg !900
  store i32 %89, i32* %13, align 4, !dbg !900, !tbaa !827
  br label %116, !dbg !901

90:                                               ; preds = %80
  %91 = load i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)*, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)** %5, align 4, !dbg !902, !tbaa !292
  %92 = load %struct.list_head_s*, %struct.list_head_s** %7, align 4, !dbg !904, !tbaa !292
  %93 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %92, i32 0, i32 1, !dbg !905
  %94 = load %struct.list_data_s*, %struct.list_data_s** %93, align 4, !dbg !905, !tbaa !587
  %95 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !906, !tbaa !292
  %96 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %95, i32 0, i32 1, !dbg !907
  %97 = load %struct.list_data_s*, %struct.list_data_s** %96, align 4, !dbg !907, !tbaa !587
  %98 = load %struct.RESULTS_S*, %struct.RESULTS_S** %6, align 4, !dbg !908, !tbaa !292
  %99 = call arm_aapcscc i32 %91(%struct.list_data_s* %94, %struct.list_data_s* %97, %struct.RESULTS_S* %98), !dbg !902
  %100 = icmp sle i32 %99, 0, !dbg !909
  br i1 %100, label %101, label %108, !dbg !910

101:                                              ; preds = %90
  %102 = load %struct.list_head_s*, %struct.list_head_s** %7, align 4, !dbg !911, !tbaa !292
  store %struct.list_head_s* %102, %struct.list_head_s** %9, align 4, !dbg !913, !tbaa !292
  %103 = load %struct.list_head_s*, %struct.list_head_s** %7, align 4, !dbg !914, !tbaa !292
  %104 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %103, i32 0, i32 0, !dbg !915
  %105 = load %struct.list_head_s*, %struct.list_head_s** %104, align 4, !dbg !915, !tbaa !584
  store %struct.list_head_s* %105, %struct.list_head_s** %7, align 4, !dbg !916, !tbaa !292
  %106 = load i32, i32* %13, align 4, !dbg !917, !tbaa !827
  %107 = add nsw i32 %106, -1, !dbg !917
  store i32 %107, i32* %13, align 4, !dbg !917, !tbaa !827
  br label %115, !dbg !918

108:                                              ; preds = %90
  %109 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !919, !tbaa !292
  store %struct.list_head_s* %109, %struct.list_head_s** %9, align 4, !dbg !921, !tbaa !292
  %110 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !922, !tbaa !292
  %111 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %110, i32 0, i32 0, !dbg !923
  %112 = load %struct.list_head_s*, %struct.list_head_s** %111, align 4, !dbg !923, !tbaa !584
  store %struct.list_head_s* %112, %struct.list_head_s** %8, align 4, !dbg !924, !tbaa !292
  %113 = load i32, i32* %14, align 4, !dbg !925, !tbaa !827
  %114 = add nsw i32 %113, -1, !dbg !925
  store i32 %114, i32* %14, align 4, !dbg !925, !tbaa !827
  br label %115

115:                                              ; preds = %108, %101
  br label %116

116:                                              ; preds = %115, %83
  br label %117

117:                                              ; preds = %116, %70
  %118 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !926, !tbaa !292
  %119 = icmp ne %struct.list_head_s* %118, null, !dbg !926
  br i1 %119, label %120, label %124, !dbg !928

120:                                              ; preds = %117
  %121 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !dbg !929, !tbaa !292
  %122 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !931, !tbaa !292
  %123 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %122, i32 0, i32 0, !dbg !932
  store %struct.list_head_s* %121, %struct.list_head_s** %123, align 4, !dbg !933, !tbaa !584
  br label %126, !dbg !934

124:                                              ; preds = %117
  %125 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !dbg !935, !tbaa !292
  store %struct.list_head_s* %125, %struct.list_head_s** %4, align 4, !dbg !937, !tbaa !292
  br label %126

126:                                              ; preds = %124, %120
  %127 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !dbg !938, !tbaa !292
  store %struct.list_head_s* %127, %struct.list_head_s** %10, align 4, !dbg !939, !tbaa !292
  br label %54, !dbg !866, !llvm.loop !940

128:                                              ; preds = %65
  %129 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !942, !tbaa !292
  store %struct.list_head_s* %129, %struct.list_head_s** %7, align 4, !dbg !943, !tbaa !292
  br label %28, !dbg !835, !llvm.loop !944

130:                                              ; preds = %28
  %131 = load %struct.list_head_s*, %struct.list_head_s** %10, align 4, !dbg !946, !tbaa !292
  %132 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %131, i32 0, i32 0, !dbg !947
  store %struct.list_head_s* null, %struct.list_head_s** %132, align 4, !dbg !948, !tbaa !584
  %133 = load i32, i32* %12, align 4, !dbg !949, !tbaa !827
  %134 = icmp sle i32 %133, 1, !dbg !951
  br i1 %134, label %135, label %146, !dbg !952

135:                                              ; preds = %130
  %136 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !953, !tbaa !292
  %137 = bitcast i32* %15 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %137) #4, !dbg !954
  %138 = bitcast i32* %14 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %138) #4, !dbg !954
  %139 = bitcast i32* %13 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %139) #4, !dbg !954
  %140 = bitcast i32* %12 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #4, !dbg !954
  %141 = bitcast i32* %11 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #4, !dbg !954
  %142 = bitcast %struct.list_head_s** %10 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #4, !dbg !954
  %143 = bitcast %struct.list_head_s** %9 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #4, !dbg !954
  %144 = bitcast %struct.list_head_s** %8 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %144) #4, !dbg !954
  %145 = bitcast %struct.list_head_s** %7 to i8*, !dbg !954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %145) #4, !dbg !954
  ret %struct.list_head_s* %136, !dbg !955

146:                                              ; preds = %130
  %147 = load i32, i32* %11, align 4, !dbg !956, !tbaa !827
  %148 = mul nsw i32 %147, 2, !dbg !956
  store i32 %148, i32* %11, align 4, !dbg !956, !tbaa !827
  br label %25, !dbg !828, !llvm.loop !957
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_remove(%struct.list_head_s*) #0 !dbg !959 {
  %2 = alloca %struct.list_head_s*, align 4
  %3 = alloca %struct.list_data_s*, align 4
  %4 = alloca %struct.list_head_s*, align 4
  store %struct.list_head_s* %0, %struct.list_head_s** %2, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %2, metadata !961, metadata !DIExpression()), !dbg !964
  %5 = bitcast %struct.list_data_s** %3 to i8*, !dbg !965
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !965
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %3, metadata !962, metadata !DIExpression()), !dbg !966
  %6 = bitcast %struct.list_head_s** %4 to i8*, !dbg !967
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !967
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %4, metadata !963, metadata !DIExpression()), !dbg !968
  %7 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !969, !tbaa !292
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %7, i32 0, i32 0, !dbg !970
  %9 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !970, !tbaa !584
  store %struct.list_head_s* %9, %struct.list_head_s** %4, align 4, !dbg !968, !tbaa !292
  %10 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !971, !tbaa !292
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 1, !dbg !972
  %12 = load %struct.list_data_s*, %struct.list_data_s** %11, align 4, !dbg !972, !tbaa !587
  store %struct.list_data_s* %12, %struct.list_data_s** %3, align 4, !dbg !973, !tbaa !292
  %13 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !974, !tbaa !292
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %13, i32 0, i32 1, !dbg !975
  %15 = load %struct.list_data_s*, %struct.list_data_s** %14, align 4, !dbg !975, !tbaa !587
  %16 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !976, !tbaa !292
  %17 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %16, i32 0, i32 1, !dbg !977
  store %struct.list_data_s* %15, %struct.list_data_s** %17, align 4, !dbg !978, !tbaa !587
  %18 = load %struct.list_data_s*, %struct.list_data_s** %3, align 4, !dbg !979, !tbaa !292
  %19 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !980, !tbaa !292
  %20 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %19, i32 0, i32 1, !dbg !981
  store %struct.list_data_s* %18, %struct.list_data_s** %20, align 4, !dbg !982, !tbaa !587
  %21 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !983, !tbaa !292
  %22 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %21, i32 0, i32 0, !dbg !984
  %23 = load %struct.list_head_s*, %struct.list_head_s** %22, align 4, !dbg !984, !tbaa !584
  %24 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %23, i32 0, i32 0, !dbg !985
  %25 = load %struct.list_head_s*, %struct.list_head_s** %24, align 4, !dbg !985, !tbaa !584
  %26 = load %struct.list_head_s*, %struct.list_head_s** %2, align 4, !dbg !986, !tbaa !292
  %27 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %26, i32 0, i32 0, !dbg !987
  store %struct.list_head_s* %25, %struct.list_head_s** %27, align 4, !dbg !988, !tbaa !584
  %28 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !989, !tbaa !292
  %29 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %28, i32 0, i32 0, !dbg !990
  store %struct.list_head_s* null, %struct.list_head_s** %29, align 4, !dbg !991, !tbaa !584
  %30 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !992, !tbaa !292
  %31 = bitcast %struct.list_head_s** %4 to i8*, !dbg !993
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !993
  %32 = bitcast %struct.list_data_s** %3 to i8*, !dbg !993
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !993
  ret %struct.list_head_s* %30, !dbg !994
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_undo_remove(%struct.list_head_s*, %struct.list_head_s*) #0 !dbg !995 {
  %3 = alloca %struct.list_head_s*, align 4
  %4 = alloca %struct.list_head_s*, align 4
  %5 = alloca %struct.list_data_s*, align 4
  store %struct.list_head_s* %0, %struct.list_head_s** %3, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %3, metadata !999, metadata !DIExpression()), !dbg !1002
  store %struct.list_head_s* %1, %struct.list_head_s** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %4, metadata !1000, metadata !DIExpression()), !dbg !1003
  %6 = bitcast %struct.list_data_s** %5 to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !1004
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %5, metadata !1001, metadata !DIExpression()), !dbg !1005
  %7 = load %struct.list_head_s*, %struct.list_head_s** %3, align 4, !dbg !1006, !tbaa !292
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %7, i32 0, i32 1, !dbg !1007
  %9 = load %struct.list_data_s*, %struct.list_data_s** %8, align 4, !dbg !1007, !tbaa !587
  store %struct.list_data_s* %9, %struct.list_data_s** %5, align 4, !dbg !1008, !tbaa !292
  %10 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !1009, !tbaa !292
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 1, !dbg !1010
  %12 = load %struct.list_data_s*, %struct.list_data_s** %11, align 4, !dbg !1010, !tbaa !587
  %13 = load %struct.list_head_s*, %struct.list_head_s** %3, align 4, !dbg !1011, !tbaa !292
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %13, i32 0, i32 1, !dbg !1012
  store %struct.list_data_s* %12, %struct.list_data_s** %14, align 4, !dbg !1013, !tbaa !587
  %15 = load %struct.list_data_s*, %struct.list_data_s** %5, align 4, !dbg !1014, !tbaa !292
  %16 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !1015, !tbaa !292
  %17 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %16, i32 0, i32 1, !dbg !1016
  store %struct.list_data_s* %15, %struct.list_data_s** %17, align 4, !dbg !1017, !tbaa !587
  %18 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !1018, !tbaa !292
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %18, i32 0, i32 0, !dbg !1019
  %20 = load %struct.list_head_s*, %struct.list_head_s** %19, align 4, !dbg !1019, !tbaa !584
  %21 = load %struct.list_head_s*, %struct.list_head_s** %3, align 4, !dbg !1020, !tbaa !292
  %22 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %21, i32 0, i32 0, !dbg !1021
  store %struct.list_head_s* %20, %struct.list_head_s** %22, align 4, !dbg !1022, !tbaa !584
  %23 = load %struct.list_head_s*, %struct.list_head_s** %3, align 4, !dbg !1023, !tbaa !292
  %24 = load %struct.list_head_s*, %struct.list_head_s** %4, align 4, !dbg !1024, !tbaa !292
  %25 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 0, !dbg !1025
  store %struct.list_head_s* %23, %struct.list_head_s** %25, align 4, !dbg !1026, !tbaa !584
  %26 = load %struct.list_head_s*, %struct.list_head_s** %3, align 4, !dbg !1027, !tbaa !292
  %27 = bitcast %struct.list_data_s** %5 to i8*, !dbg !1028
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !1028
  ret %struct.list_head_s* %26, !dbg !1029
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_init(i32, %struct.list_head_s*, i16 signext) #0 !dbg !1030 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head_s*, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head_s*, align 4
  %10 = alloca %struct.list_data_s*, align 4
  %11 = alloca %struct.list_data_s*, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.list_head_s*, align 4
  %14 = alloca %struct.list_head_s*, align 4
  %15 = alloca %struct.list_data_s, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  store i32 %0, i32* %4, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1034, metadata !DIExpression()), !dbg !1055
  store %struct.list_head_s* %1, %struct.list_head_s** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %5, metadata !1035, metadata !DIExpression()), !dbg !1056
  store i16 %2, i16* %6, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %6, metadata !1036, metadata !DIExpression()), !dbg !1057
  %19 = bitcast i32* %7 to i8*, !dbg !1058
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !1058
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1037, metadata !DIExpression()), !dbg !1059
  store i32 20, i32* %7, align 4, !dbg !1059, !tbaa !827
  %20 = bitcast i32* %8 to i8*, !dbg !1060
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !1060
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1038, metadata !DIExpression()), !dbg !1061
  %21 = load i32, i32* %4, align 4, !dbg !1062, !tbaa !827
  %22 = load i32, i32* %7, align 4, !dbg !1063, !tbaa !827
  %23 = udiv i32 %21, %22, !dbg !1064
  %24 = sub i32 %23, 2, !dbg !1065
  store i32 %24, i32* %8, align 4, !dbg !1061, !tbaa !827
  %25 = bitcast %struct.list_head_s** %9 to i8*, !dbg !1066
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #4, !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %9, metadata !1039, metadata !DIExpression()), !dbg !1067
  %26 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !dbg !1068, !tbaa !292
  %27 = load i32, i32* %8, align 4, !dbg !1069, !tbaa !827
  %28 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %26, i32 %27, !dbg !1070
  store %struct.list_head_s* %28, %struct.list_head_s** %9, align 4, !dbg !1067, !tbaa !292
  %29 = bitcast %struct.list_data_s** %10 to i8*, !dbg !1071
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #4, !dbg !1071
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %10, metadata !1040, metadata !DIExpression()), !dbg !1072
  %30 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !dbg !1073, !tbaa !292
  %31 = bitcast %struct.list_head_s* %30 to %struct.list_data_s*, !dbg !1074
  store %struct.list_data_s* %31, %struct.list_data_s** %10, align 4, !dbg !1072, !tbaa !292
  %32 = bitcast %struct.list_data_s** %11 to i8*, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #4, !dbg !1075
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %11, metadata !1041, metadata !DIExpression()), !dbg !1076
  %33 = load %struct.list_data_s*, %struct.list_data_s** %10, align 4, !dbg !1077, !tbaa !292
  %34 = load i32, i32* %8, align 4, !dbg !1078, !tbaa !827
  %35 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %33, i32 %34, !dbg !1079
  store %struct.list_data_s* %35, %struct.list_data_s** %11, align 4, !dbg !1076, !tbaa !292
  %36 = bitcast i32* %12 to i8*, !dbg !1080
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %36) #4, !dbg !1080
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1042, metadata !DIExpression()), !dbg !1081
  %37 = bitcast %struct.list_head_s** %13 to i8*, !dbg !1082
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #4, !dbg !1082
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %13, metadata !1043, metadata !DIExpression()), !dbg !1083
  %38 = bitcast %struct.list_head_s** %14 to i8*, !dbg !1082
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #4, !dbg !1082
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %14, metadata !1044, metadata !DIExpression()), !dbg !1084
  %39 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !dbg !1085, !tbaa !292
  store %struct.list_head_s* %39, %struct.list_head_s** %14, align 4, !dbg !1084, !tbaa !292
  %40 = bitcast %struct.list_data_s* %15 to i8*, !dbg !1086
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #4, !dbg !1086
  call void @llvm.dbg.declare(metadata %struct.list_data_s* %15, metadata !1045, metadata !DIExpression()), !dbg !1087
  %41 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1088, !tbaa !292
  %42 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %41, i32 0, i32 0, !dbg !1089
  store %struct.list_head_s* null, %struct.list_head_s** %42, align 4, !dbg !1090, !tbaa !584
  %43 = load %struct.list_data_s*, %struct.list_data_s** %10, align 4, !dbg !1091, !tbaa !292
  %44 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1092, !tbaa !292
  %45 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %44, i32 0, i32 1, !dbg !1093
  store %struct.list_data_s* %43, %struct.list_data_s** %45, align 4, !dbg !1094, !tbaa !587
  %46 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1095, !tbaa !292
  %47 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %46, i32 0, i32 1, !dbg !1096
  %48 = load %struct.list_data_s*, %struct.list_data_s** %47, align 4, !dbg !1096, !tbaa !587
  %49 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %48, i32 0, i32 1, !dbg !1097
  store i16 0, i16* %49, align 2, !dbg !1098, !tbaa !485
  %50 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1099, !tbaa !292
  %51 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %50, i32 0, i32 1, !dbg !1100
  %52 = load %struct.list_data_s*, %struct.list_data_s** %51, align 4, !dbg !1100, !tbaa !587
  %53 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %52, i32 0, i32 0, !dbg !1101
  store i16 -32640, i16* %53, align 2, !dbg !1102, !tbaa !458
  %54 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !dbg !1103, !tbaa !292
  %55 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %54, i32 1, !dbg !1103
  store %struct.list_head_s* %55, %struct.list_head_s** %5, align 4, !dbg !1103, !tbaa !292
  %56 = load %struct.list_data_s*, %struct.list_data_s** %10, align 4, !dbg !1104, !tbaa !292
  %57 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %56, i32 1, !dbg !1104
  store %struct.list_data_s* %57, %struct.list_data_s** %10, align 4, !dbg !1104, !tbaa !292
  %58 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %15, i32 0, i32 1, !dbg !1105
  store i16 32767, i16* %58, align 2, !dbg !1106, !tbaa !485
  %59 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %15, i32 0, i32 0, !dbg !1107
  store i16 -1, i16* %59, align 2, !dbg !1108, !tbaa !458
  %60 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1109, !tbaa !292
  %61 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !dbg !1110, !tbaa !292
  %62 = load %struct.list_data_s*, %struct.list_data_s** %11, align 4, !dbg !1111, !tbaa !292
  %63 = call arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s* %60, %struct.list_data_s* %15, %struct.list_head_s** %5, %struct.list_data_s** %10, %struct.list_head_s* %61, %struct.list_data_s* %62), !dbg !1112
  store i32 0, i32* %12, align 4, !dbg !1113, !tbaa !827
  br label %64, !dbg !1114

64:                                               ; preds = %100, %3
  %65 = load i32, i32* %12, align 4, !dbg !1115, !tbaa !827
  %66 = load i32, i32* %8, align 4, !dbg !1116, !tbaa !827
  %67 = icmp ult i32 %65, %66, !dbg !1117
  br i1 %67, label %68, label %103, !dbg !1118

68:                                               ; preds = %64
  %69 = bitcast i16* %16 to i8*, !dbg !1119
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %69) #4, !dbg !1119
  call void @llvm.dbg.declare(metadata i16* %16, metadata !1046, metadata !DIExpression()), !dbg !1120
  %70 = load i16, i16* %6, align 2, !dbg !1121, !tbaa !302
  %71 = sext i16 %70 to i32, !dbg !1121
  %72 = load i32, i32* %12, align 4, !dbg !1122, !tbaa !827
  %73 = xor i32 %71, %72, !dbg !1123
  %74 = trunc i32 %73 to i16, !dbg !1124
  %75 = zext i16 %74 to i32, !dbg !1124
  %76 = and i32 %75, 15, !dbg !1125
  %77 = trunc i32 %76 to i16, !dbg !1126
  store i16 %77, i16* %16, align 2, !dbg !1120, !tbaa !302
  %78 = bitcast i16* %17 to i8*, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %78) #4, !dbg !1127
  call void @llvm.dbg.declare(metadata i16* %17, metadata !1050, metadata !DIExpression()), !dbg !1128
  %79 = load i16, i16* %16, align 2, !dbg !1129, !tbaa !302
  %80 = zext i16 %79 to i32, !dbg !1129
  %81 = shl i32 %80, 3, !dbg !1130
  %82 = load i32, i32* %12, align 4, !dbg !1131, !tbaa !827
  %83 = and i32 %82, 7, !dbg !1132
  %84 = or i32 %81, %83, !dbg !1133
  %85 = trunc i32 %84 to i16, !dbg !1134
  store i16 %85, i16* %17, align 2, !dbg !1128, !tbaa !302
  %86 = load i16, i16* %17, align 2, !dbg !1135, !tbaa !302
  %87 = zext i16 %86 to i32, !dbg !1135
  %88 = shl i32 %87, 8, !dbg !1136
  %89 = load i16, i16* %17, align 2, !dbg !1137, !tbaa !302
  %90 = zext i16 %89 to i32, !dbg !1137
  %91 = or i32 %88, %90, !dbg !1138
  %92 = trunc i32 %91 to i16, !dbg !1139
  %93 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %15, i32 0, i32 0, !dbg !1140
  store i16 %92, i16* %93, align 2, !dbg !1141, !tbaa !458
  %94 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1142, !tbaa !292
  %95 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !dbg !1143, !tbaa !292
  %96 = load %struct.list_data_s*, %struct.list_data_s** %11, align 4, !dbg !1144, !tbaa !292
  %97 = call arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s* %94, %struct.list_data_s* %15, %struct.list_head_s** %5, %struct.list_data_s** %10, %struct.list_head_s* %95, %struct.list_data_s* %96), !dbg !1145
  %98 = bitcast i16* %17 to i8*, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %98) #4, !dbg !1146
  %99 = bitcast i16* %16 to i8*, !dbg !1146
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %99) #4, !dbg !1146
  br label %100, !dbg !1147

100:                                              ; preds = %68
  %101 = load i32, i32* %12, align 4, !dbg !1148, !tbaa !827
  %102 = add i32 %101, 1, !dbg !1148
  store i32 %102, i32* %12, align 4, !dbg !1148, !tbaa !827
  br label %64, !dbg !1149, !llvm.loop !1150

103:                                              ; preds = %64
  %104 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1152, !tbaa !292
  %105 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %104, i32 0, i32 0, !dbg !1153
  %106 = load %struct.list_head_s*, %struct.list_head_s** %105, align 4, !dbg !1153, !tbaa !584
  store %struct.list_head_s* %106, %struct.list_head_s** %13, align 4, !dbg !1154, !tbaa !292
  store i32 1, i32* %12, align 4, !dbg !1155, !tbaa !827
  br label %107, !dbg !1156

107:                                              ; preds = %146, %103
  %108 = load %struct.list_head_s*, %struct.list_head_s** %13, align 4, !dbg !1157, !tbaa !292
  %109 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %108, i32 0, i32 0, !dbg !1158
  %110 = load %struct.list_head_s*, %struct.list_head_s** %109, align 4, !dbg !1158, !tbaa !584
  %111 = icmp ne %struct.list_head_s* %110, null, !dbg !1159
  br i1 %111, label %112, label %150, !dbg !1156

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4, !dbg !1160, !tbaa !827
  %114 = load i32, i32* %8, align 4, !dbg !1161, !tbaa !827
  %115 = udiv i32 %114, 5, !dbg !1162
  %116 = icmp ult i32 %113, %115, !dbg !1163
  br i1 %116, label %117, label %125, !dbg !1164

117:                                              ; preds = %112
  %118 = load i32, i32* %12, align 4, !dbg !1165, !tbaa !827
  %119 = add i32 %118, 1, !dbg !1165
  store i32 %119, i32* %12, align 4, !dbg !1165, !tbaa !827
  %120 = trunc i32 %118 to i16, !dbg !1166
  %121 = load %struct.list_head_s*, %struct.list_head_s** %13, align 4, !dbg !1167, !tbaa !292
  %122 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %121, i32 0, i32 1, !dbg !1168
  %123 = load %struct.list_data_s*, %struct.list_data_s** %122, align 4, !dbg !1168, !tbaa !587
  %124 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %123, i32 0, i32 1, !dbg !1169
  store i16 %120, i16* %124, align 2, !dbg !1170, !tbaa !485
  br label %146, !dbg !1167

125:                                              ; preds = %112
  %126 = bitcast i16* %18 to i8*, !dbg !1171
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %126) #4, !dbg !1171
  call void @llvm.dbg.declare(metadata i16* %18, metadata !1051, metadata !DIExpression()), !dbg !1172
  %127 = load i32, i32* %12, align 4, !dbg !1173, !tbaa !827
  %128 = add i32 %127, 1, !dbg !1173
  store i32 %128, i32* %12, align 4, !dbg !1173, !tbaa !827
  %129 = load i16, i16* %6, align 2, !dbg !1174, !tbaa !302
  %130 = sext i16 %129 to i32, !dbg !1174
  %131 = xor i32 %127, %130, !dbg !1175
  %132 = trunc i32 %131 to i16, !dbg !1176
  store i16 %132, i16* %18, align 2, !dbg !1172, !tbaa !302
  %133 = load i32, i32* %12, align 4, !dbg !1177, !tbaa !827
  %134 = and i32 %133, 7, !dbg !1178
  %135 = shl i32 %134, 8, !dbg !1179
  %136 = load i16, i16* %18, align 2, !dbg !1180, !tbaa !302
  %137 = zext i16 %136 to i32, !dbg !1180
  %138 = or i32 %135, %137, !dbg !1181
  %139 = and i32 16383, %138, !dbg !1182
  %140 = trunc i32 %139 to i16, !dbg !1183
  %141 = load %struct.list_head_s*, %struct.list_head_s** %13, align 4, !dbg !1184, !tbaa !292
  %142 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %141, i32 0, i32 1, !dbg !1185
  %143 = load %struct.list_data_s*, %struct.list_data_s** %142, align 4, !dbg !1185, !tbaa !587
  %144 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %143, i32 0, i32 1, !dbg !1186
  store i16 %140, i16* %144, align 2, !dbg !1187, !tbaa !485
  %145 = bitcast i16* %18 to i8*, !dbg !1188
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %145) #4, !dbg !1188
  br label %146

146:                                              ; preds = %125, %117
  %147 = load %struct.list_head_s*, %struct.list_head_s** %13, align 4, !dbg !1189, !tbaa !292
  %148 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %147, i32 0, i32 0, !dbg !1190
  %149 = load %struct.list_head_s*, %struct.list_head_s** %148, align 4, !dbg !1190, !tbaa !584
  store %struct.list_head_s* %149, %struct.list_head_s** %13, align 4, !dbg !1191, !tbaa !292
  br label %107, !dbg !1156, !llvm.loop !1192

150:                                              ; preds = %107
  %151 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1194, !tbaa !292
  %152 = call arm_aapcscc %struct.list_head_s* @core_list_mergesort(%struct.list_head_s* %151, i32 (%struct.list_data_s*, %struct.list_data_s*, %struct.RESULTS_S*)* @cmp_idx, %struct.RESULTS_S* null), !dbg !1195
  store %struct.list_head_s* %152, %struct.list_head_s** %14, align 4, !dbg !1196, !tbaa !292
  %153 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1197, !tbaa !292
  %154 = bitcast %struct.list_data_s* %15 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %154) #4, !dbg !1198
  %155 = bitcast %struct.list_head_s** %14 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %155) #4, !dbg !1198
  %156 = bitcast %struct.list_head_s** %13 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %156) #4, !dbg !1198
  %157 = bitcast i32* %12 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %157) #4, !dbg !1198
  %158 = bitcast %struct.list_data_s** %11 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %158) #4, !dbg !1198
  %159 = bitcast %struct.list_data_s** %10 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %159) #4, !dbg !1198
  %160 = bitcast %struct.list_head_s** %9 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %160) #4, !dbg !1198
  %161 = bitcast i32* %8 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %161) #4, !dbg !1198
  %162 = bitcast i32* %7 to i8*, !dbg !1198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %162) #4, !dbg !1198
  ret %struct.list_head_s* %153, !dbg !1199
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @core_list_insert_new(%struct.list_head_s*, %struct.list_data_s*, %struct.list_head_s**, %struct.list_data_s**, %struct.list_head_s*, %struct.list_data_s*) #0 !dbg !1200 {
  %7 = alloca %struct.list_head_s*, align 4
  %8 = alloca %struct.list_head_s*, align 4
  %9 = alloca %struct.list_data_s*, align 4
  %10 = alloca %struct.list_head_s**, align 4
  %11 = alloca %struct.list_data_s**, align 4
  %12 = alloca %struct.list_head_s*, align 4
  %13 = alloca %struct.list_data_s*, align 4
  %14 = alloca %struct.list_head_s*, align 4
  %15 = alloca i32, align 4
  store %struct.list_head_s* %0, %struct.list_head_s** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %8, metadata !1206, metadata !DIExpression()), !dbg !1213
  store %struct.list_data_s* %1, %struct.list_data_s** %9, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %9, metadata !1207, metadata !DIExpression()), !dbg !1214
  store %struct.list_head_s** %2, %struct.list_head_s*** %10, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s*** %10, metadata !1208, metadata !DIExpression()), !dbg !1215
  store %struct.list_data_s** %3, %struct.list_data_s*** %11, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s*** %11, metadata !1209, metadata !DIExpression()), !dbg !1216
  store %struct.list_head_s* %4, %struct.list_head_s** %12, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %12, metadata !1210, metadata !DIExpression()), !dbg !1217
  store %struct.list_data_s* %5, %struct.list_data_s** %13, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.list_data_s** %13, metadata !1211, metadata !DIExpression()), !dbg !1218
  %16 = bitcast %struct.list_head_s** %14 to i8*, !dbg !1219
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !1219
  call void @llvm.dbg.declare(metadata %struct.list_head_s** %14, metadata !1212, metadata !DIExpression()), !dbg !1220
  %17 = load %struct.list_head_s**, %struct.list_head_s*** %10, align 4, !dbg !1221, !tbaa !292
  %18 = load %struct.list_head_s*, %struct.list_head_s** %17, align 4, !dbg !1223, !tbaa !292
  %19 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %18, i32 1, !dbg !1224
  %20 = load %struct.list_head_s*, %struct.list_head_s** %12, align 4, !dbg !1225, !tbaa !292
  %21 = icmp uge %struct.list_head_s* %19, %20, !dbg !1226
  br i1 %21, label %22, label %23, !dbg !1227

22:                                               ; preds = %6
  store %struct.list_head_s* null, %struct.list_head_s** %7, align 4, !dbg !1228
  store i32 1, i32* %15, align 4
  br label %56, !dbg !1228

23:                                               ; preds = %6
  %24 = load %struct.list_data_s**, %struct.list_data_s*** %11, align 4, !dbg !1229, !tbaa !292
  %25 = load %struct.list_data_s*, %struct.list_data_s** %24, align 4, !dbg !1231, !tbaa !292
  %26 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %25, i32 1, !dbg !1232
  %27 = load %struct.list_data_s*, %struct.list_data_s** %13, align 4, !dbg !1233, !tbaa !292
  %28 = icmp uge %struct.list_data_s* %26, %27, !dbg !1234
  br i1 %28, label %29, label %30, !dbg !1235

29:                                               ; preds = %23
  store %struct.list_head_s* null, %struct.list_head_s** %7, align 4, !dbg !1236
  store i32 1, i32* %15, align 4
  br label %56, !dbg !1236

30:                                               ; preds = %23
  %31 = load %struct.list_head_s**, %struct.list_head_s*** %10, align 4, !dbg !1237, !tbaa !292
  %32 = load %struct.list_head_s*, %struct.list_head_s** %31, align 4, !dbg !1238, !tbaa !292
  store %struct.list_head_s* %32, %struct.list_head_s** %14, align 4, !dbg !1239, !tbaa !292
  %33 = load %struct.list_head_s**, %struct.list_head_s*** %10, align 4, !dbg !1240, !tbaa !292
  %34 = load %struct.list_head_s*, %struct.list_head_s** %33, align 4, !dbg !1241, !tbaa !292
  %35 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %34, i32 1, !dbg !1241
  store %struct.list_head_s* %35, %struct.list_head_s** %33, align 4, !dbg !1241, !tbaa !292
  %36 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !1242, !tbaa !292
  %37 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %36, i32 0, i32 0, !dbg !1243
  %38 = load %struct.list_head_s*, %struct.list_head_s** %37, align 4, !dbg !1243, !tbaa !584
  %39 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1244, !tbaa !292
  %40 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %39, i32 0, i32 0, !dbg !1245
  store %struct.list_head_s* %38, %struct.list_head_s** %40, align 4, !dbg !1246, !tbaa !584
  %41 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1247, !tbaa !292
  %42 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !dbg !1248, !tbaa !292
  %43 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %42, i32 0, i32 0, !dbg !1249
  store %struct.list_head_s* %41, %struct.list_head_s** %43, align 4, !dbg !1250, !tbaa !584
  %44 = load %struct.list_data_s**, %struct.list_data_s*** %11, align 4, !dbg !1251, !tbaa !292
  %45 = load %struct.list_data_s*, %struct.list_data_s** %44, align 4, !dbg !1252, !tbaa !292
  %46 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1253, !tbaa !292
  %47 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %46, i32 0, i32 1, !dbg !1254
  store %struct.list_data_s* %45, %struct.list_data_s** %47, align 4, !dbg !1255, !tbaa !587
  %48 = load %struct.list_data_s**, %struct.list_data_s*** %11, align 4, !dbg !1256, !tbaa !292
  %49 = load %struct.list_data_s*, %struct.list_data_s** %48, align 4, !dbg !1257, !tbaa !292
  %50 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %49, i32 1, !dbg !1257
  store %struct.list_data_s* %50, %struct.list_data_s** %48, align 4, !dbg !1257, !tbaa !292
  %51 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1258, !tbaa !292
  %52 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %51, i32 0, i32 1, !dbg !1259
  %53 = load %struct.list_data_s*, %struct.list_data_s** %52, align 4, !dbg !1259, !tbaa !587
  %54 = load %struct.list_data_s*, %struct.list_data_s** %9, align 4, !dbg !1260, !tbaa !292
  call arm_aapcscc void @copy_info(%struct.list_data_s* %53, %struct.list_data_s* %54), !dbg !1261
  %55 = load %struct.list_head_s*, %struct.list_head_s** %14, align 4, !dbg !1262, !tbaa !292
  store %struct.list_head_s* %55, %struct.list_head_s** %7, align 4, !dbg !1263
  store i32 1, i32* %15, align 4
  br label %56, !dbg !1263

56:                                               ; preds = %30, %29, %22
  %57 = bitcast %struct.list_head_s** %14 to i8*, !dbg !1264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !1264
  %58 = load %struct.list_head_s*, %struct.list_head_s** %7, align 4, !dbg !1264
  ret %struct.list_head_s* %58, !dbg !1264
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i8* @iterate(i8*) #0 !dbg !1265 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.RESULTS_S*, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1269, metadata !DIExpression()), !dbg !1274
  %7 = bitcast i32* %3 to i8*, !dbg !1275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !1275
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1270, metadata !DIExpression()), !dbg !1276
  %8 = bitcast i16* %4 to i8*, !dbg !1277
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %8) #4, !dbg !1277
  call void @llvm.dbg.declare(metadata i16* %4, metadata !1271, metadata !DIExpression()), !dbg !1278
  %9 = bitcast %struct.RESULTS_S** %5 to i8*, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !1279
  call void @llvm.dbg.declare(metadata %struct.RESULTS_S** %5, metadata !1272, metadata !DIExpression()), !dbg !1280
  %10 = load i8*, i8** %2, align 4, !dbg !1281, !tbaa !292
  %11 = bitcast i8* %10 to %struct.RESULTS_S*, !dbg !1282
  store %struct.RESULTS_S* %11, %struct.RESULTS_S** %5, align 4, !dbg !1280, !tbaa !292
  %12 = bitcast i32* %6 to i8*, !dbg !1283
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !1283
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1273, metadata !DIExpression()), !dbg !1284
  %13 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1285, !tbaa !292
  %14 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %13, i32 0, i32 5, !dbg !1286
  %15 = load i32, i32* %14, align 4, !dbg !1286, !tbaa !1287
  store i32 %15, i32* %6, align 4, !dbg !1284, !tbaa !827
  %16 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1288, !tbaa !292
  %17 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %16, i32 0, i32 9, !dbg !1289
  store i16 0, i16* %17, align 4, !dbg !1290, !tbaa !359
  %18 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1291, !tbaa !292
  %19 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %18, i32 0, i32 10, !dbg !1292
  store i16 0, i16* %19, align 2, !dbg !1293, !tbaa !1294
  %20 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1295, !tbaa !292
  %21 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %20, i32 0, i32 11, !dbg !1296
  store i16 0, i16* %21, align 4, !dbg !1297, !tbaa !383
  %22 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1298, !tbaa !292
  %23 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %22, i32 0, i32 12, !dbg !1299
  store i16 0, i16* %23, align 2, !dbg !1300, !tbaa !365
  store i32 0, i32* %3, align 4, !dbg !1301, !tbaa !827
  br label %24, !dbg !1303

24:                                               ; preds = %56, %1
  %25 = load i32, i32* %3, align 4, !dbg !1304, !tbaa !827
  %26 = load i32, i32* %6, align 4, !dbg !1306, !tbaa !827
  %27 = icmp ult i32 %25, %26, !dbg !1307
  br i1 %27, label %28, label %59, !dbg !1308

28:                                               ; preds = %24
  %29 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1309, !tbaa !292
  %30 = call arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S* %29, i16 signext 1), !dbg !1311
  store i16 %30, i16* %4, align 2, !dbg !1312, !tbaa !302
  %31 = load i16, i16* %4, align 2, !dbg !1313, !tbaa !302
  %32 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1314, !tbaa !292
  %33 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %32, i32 0, i32 9, !dbg !1315
  %34 = load i16, i16* %33, align 4, !dbg !1315, !tbaa !359
  %35 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %31, i16 zeroext %34), !dbg !1316
  %36 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1317, !tbaa !292
  %37 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %36, i32 0, i32 9, !dbg !1318
  store i16 %35, i16* %37, align 4, !dbg !1319, !tbaa !359
  %38 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1320, !tbaa !292
  %39 = call arm_aapcscc zeroext i16 @core_bench_list(%struct.RESULTS_S* %38, i16 signext -1), !dbg !1321
  store i16 %39, i16* %4, align 2, !dbg !1322, !tbaa !302
  %40 = load i16, i16* %4, align 2, !dbg !1323, !tbaa !302
  %41 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1324, !tbaa !292
  %42 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %41, i32 0, i32 9, !dbg !1325
  %43 = load i16, i16* %42, align 4, !dbg !1325, !tbaa !359
  %44 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %40, i16 zeroext %43), !dbg !1326
  %45 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1327, !tbaa !292
  %46 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %45, i32 0, i32 9, !dbg !1328
  store i16 %44, i16* %46, align 4, !dbg !1329, !tbaa !359
  %47 = load i32, i32* %3, align 4, !dbg !1330, !tbaa !827
  %48 = icmp eq i32 %47, 0, !dbg !1332
  br i1 %48, label %49, label %55, !dbg !1333

49:                                               ; preds = %28
  %50 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1334, !tbaa !292
  %51 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %50, i32 0, i32 9, !dbg !1335
  %52 = load i16, i16* %51, align 4, !dbg !1335, !tbaa !359
  %53 = load %struct.RESULTS_S*, %struct.RESULTS_S** %5, align 4, !dbg !1336, !tbaa !292
  %54 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %53, i32 0, i32 10, !dbg !1337
  store i16 %52, i16* %54, align 2, !dbg !1338, !tbaa !1294
  br label %55, !dbg !1336

55:                                               ; preds = %49, %28
  br label %56, !dbg !1339

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4, !dbg !1340, !tbaa !827
  %58 = add i32 %57, 1, !dbg !1340
  store i32 %58, i32* %3, align 4, !dbg !1340, !tbaa !827
  br label %24, !dbg !1341, !llvm.loop !1342

59:                                               ; preds = %24
  %60 = bitcast i32* %6 to i8*, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !1344
  %61 = bitcast %struct.RESULTS_S** %5 to i8*, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4, !dbg !1344
  %62 = bitcast i16* %4 to i8*, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %62) #4, !dbg !1344
  %63 = bitcast i32* %3 to i8*, !dbg !1344
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4, !dbg !1344
  ret i8* null, !dbg !1345
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @main(i32, i8**) #0 !dbg !1346 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca [1 x %struct.RESULTS_S], align 4
  %14 = alloca [2000 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1351, metadata !DIExpression()), !dbg !1376
  store i8** %1, i8*** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1352, metadata !DIExpression()), !dbg !1377
  %18 = bitcast i16* %6 to i8*, !dbg !1378
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %18) #4, !dbg !1378
  call void @llvm.dbg.declare(metadata i16* %6, metadata !1353, metadata !DIExpression()), !dbg !1379
  %19 = bitcast i16* %7 to i8*, !dbg !1378
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %19) #4, !dbg !1378
  call void @llvm.dbg.declare(metadata i16* %7, metadata !1354, metadata !DIExpression()), !dbg !1380
  store i16 0, i16* %7, align 2, !dbg !1380, !tbaa !302
  %20 = bitcast i16* %8 to i8*, !dbg !1378
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %20) #4, !dbg !1378
  call void @llvm.dbg.declare(metadata i16* %8, metadata !1355, metadata !DIExpression()), !dbg !1381
  store i16 0, i16* %8, align 2, !dbg !1381, !tbaa !302
  %21 = bitcast i16* %9 to i8*, !dbg !1382
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %21) #4, !dbg !1382
  call void @llvm.dbg.declare(metadata i16* %9, metadata !1356, metadata !DIExpression()), !dbg !1383
  store i16 -1, i16* %9, align 2, !dbg !1383, !tbaa !302
  %22 = bitcast i16* %10 to i8*, !dbg !1382
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %22) #4, !dbg !1382
  call void @llvm.dbg.declare(metadata i16* %10, metadata !1357, metadata !DIExpression()), !dbg !1384
  store i16 0, i16* %10, align 2, !dbg !1384, !tbaa !302
  %23 = bitcast i16* %11 to i8*, !dbg !1385
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %23) #4, !dbg !1385
  call void @llvm.dbg.declare(metadata i16* %11, metadata !1358, metadata !DIExpression()), !dbg !1386
  store i16 0, i16* %11, align 2, !dbg !1386, !tbaa !302
  %24 = bitcast i32* %12 to i8*, !dbg !1387
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #4, !dbg !1387
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1359, metadata !DIExpression()), !dbg !1388
  %25 = bitcast [1 x %struct.RESULTS_S]* %13 to i8*, !dbg !1389
  call void @llvm.lifetime.start.p0i8(i64 68, i8* %25) #4, !dbg !1389
  call void @llvm.dbg.declare(metadata [1 x %struct.RESULTS_S]* %13, metadata !1360, metadata !DIExpression()), !dbg !1390
  %26 = bitcast [2000 x i8]* %14 to i8*, !dbg !1391
  call void @llvm.lifetime.start.p0i8(i64 2000, i8* %26) #4, !dbg !1391
  call void @llvm.dbg.declare(metadata [2000 x i8]* %14, metadata !1364, metadata !DIExpression()), !dbg !1392
  %27 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1393
  %28 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %27, i32 0, i32 14, !dbg !1394
  %29 = load i8**, i8*** %5, align 4, !dbg !1395, !tbaa !292
  call arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S* %28, i32* %4, i8** %29), !dbg !1396
  %30 = call arm_aapcscc i32 @get_seed_32(i32 1), !dbg !1397
  %31 = trunc i32 %30 to i16, !dbg !1397
  %32 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1398
  %33 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %32, i32 0, i32 0, !dbg !1399
  store i16 %31, i16* %33, align 4, !dbg !1400, !tbaa !352
  %34 = call arm_aapcscc i32 @get_seed_32(i32 2), !dbg !1401
  %35 = trunc i32 %34 to i16, !dbg !1401
  %36 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1402
  %37 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %36, i32 0, i32 1, !dbg !1403
  store i16 %35, i16* %37, align 2, !dbg !1404, !tbaa !355
  %38 = call arm_aapcscc i32 @get_seed_32(i32 3), !dbg !1405
  %39 = trunc i32 %38 to i16, !dbg !1405
  %40 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1406
  %41 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %40, i32 0, i32 2, !dbg !1407
  store i16 %39, i16* %41, align 4, !dbg !1408, !tbaa !543
  %42 = call arm_aapcscc i32 @get_seed_32(i32 4), !dbg !1409
  %43 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1410
  %44 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %43, i32 0, i32 5, !dbg !1411
  store i32 %42, i32* %44, align 4, !dbg !1412, !tbaa !1287
  %45 = call arm_aapcscc i32 @get_seed_32(i32 5), !dbg !1413
  %46 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1414
  %47 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %46, i32 0, i32 6, !dbg !1415
  store i32 %45, i32* %47, align 4, !dbg !1416, !tbaa !1417
  %48 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1418
  %49 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %48, i32 0, i32 6, !dbg !1420
  %50 = load i32, i32* %49, align 4, !dbg !1420, !tbaa !1417
  %51 = icmp eq i32 %50, 0, !dbg !1421
  br i1 %51, label %52, label %55, !dbg !1422

52:                                               ; preds = %2
  %53 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1423
  %54 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %53, i32 0, i32 6, !dbg !1425
  store i32 7, i32* %54, align 4, !dbg !1426, !tbaa !1417
  br label %55, !dbg !1427

55:                                               ; preds = %52, %2
  %56 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1428
  %57 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %56, i32 0, i32 0, !dbg !1430
  %58 = load i16, i16* %57, align 4, !dbg !1430, !tbaa !352
  %59 = sext i16 %58 to i32, !dbg !1428
  %60 = icmp eq i32 %59, 0, !dbg !1431
  br i1 %60, label %61, label %80, !dbg !1432

61:                                               ; preds = %55
  %62 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1433
  %63 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %62, i32 0, i32 1, !dbg !1434
  %64 = load i16, i16* %63, align 2, !dbg !1434, !tbaa !355
  %65 = sext i16 %64 to i32, !dbg !1433
  %66 = icmp eq i32 %65, 0, !dbg !1435
  br i1 %66, label %67, label %80, !dbg !1436

67:                                               ; preds = %61
  %68 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1437
  %69 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %68, i32 0, i32 2, !dbg !1438
  %70 = load i16, i16* %69, align 4, !dbg !1438, !tbaa !543
  %71 = sext i16 %70 to i32, !dbg !1437
  %72 = icmp eq i32 %71, 0, !dbg !1439
  br i1 %72, label %73, label %80, !dbg !1440

73:                                               ; preds = %67
  %74 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1441
  %75 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %74, i32 0, i32 0, !dbg !1443
  store i16 0, i16* %75, align 4, !dbg !1444, !tbaa !352
  %76 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1445
  %77 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %76, i32 0, i32 1, !dbg !1446
  store i16 0, i16* %77, align 2, !dbg !1447, !tbaa !355
  %78 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1448
  %79 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %78, i32 0, i32 2, !dbg !1449
  store i16 102, i16* %79, align 4, !dbg !1450, !tbaa !543
  br label %80, !dbg !1451

80:                                               ; preds = %73, %67, %61, %55
  %81 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1452
  %82 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %81, i32 0, i32 0, !dbg !1454
  %83 = load i16, i16* %82, align 4, !dbg !1454, !tbaa !352
  %84 = sext i16 %83 to i32, !dbg !1452
  %85 = icmp eq i32 %84, 1, !dbg !1455
  br i1 %85, label %86, label %105, !dbg !1456

86:                                               ; preds = %80
  %87 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1457
  %88 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %87, i32 0, i32 1, !dbg !1458
  %89 = load i16, i16* %88, align 2, !dbg !1458, !tbaa !355
  %90 = sext i16 %89 to i32, !dbg !1457
  %91 = icmp eq i32 %90, 0, !dbg !1459
  br i1 %91, label %92, label %105, !dbg !1460

92:                                               ; preds = %86
  %93 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1461
  %94 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %93, i32 0, i32 2, !dbg !1462
  %95 = load i16, i16* %94, align 4, !dbg !1462, !tbaa !543
  %96 = sext i16 %95 to i32, !dbg !1461
  %97 = icmp eq i32 %96, 0, !dbg !1463
  br i1 %97, label %98, label %105, !dbg !1464

98:                                               ; preds = %92
  %99 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1465
  %100 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %99, i32 0, i32 0, !dbg !1467
  store i16 13333, i16* %100, align 4, !dbg !1468, !tbaa !352
  %101 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1469
  %102 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %101, i32 0, i32 1, !dbg !1470
  store i16 13333, i16* %102, align 2, !dbg !1471, !tbaa !355
  %103 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1472
  %104 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %103, i32 0, i32 2, !dbg !1473
  store i16 102, i16* %104, align 4, !dbg !1474, !tbaa !543
  br label %105, !dbg !1475

105:                                              ; preds = %98, %92, %86, %80
  store i16 0, i16* %6, align 2, !dbg !1476, !tbaa !302
  br label %106, !dbg !1478

106:                                              ; preds = %158, %105
  %107 = load i16, i16* %6, align 2, !dbg !1479, !tbaa !302
  %108 = zext i16 %107 to i32, !dbg !1479
  %109 = icmp slt i32 %108, 1, !dbg !1481
  br i1 %109, label %110, label %161, !dbg !1482

110:                                              ; preds = %106
  %111 = getelementptr inbounds [2000 x i8], [2000 x i8]* %14, i32 0, i32 0, !dbg !1483
  %112 = load i16, i16* %6, align 2, !dbg !1485, !tbaa !302
  %113 = zext i16 %112 to i32, !dbg !1485
  %114 = mul nsw i32 %113, 2, !dbg !1486
  %115 = mul nsw i32 %114, 1000, !dbg !1487
  %116 = getelementptr inbounds i8, i8* %111, i32 %115, !dbg !1488
  %117 = load i16, i16* %6, align 2, !dbg !1489, !tbaa !302
  %118 = zext i16 %117 to i32, !dbg !1490
  %119 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %118, !dbg !1490
  %120 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %119, i32 0, i32 3, !dbg !1491
  %121 = getelementptr inbounds [4 x i8*], [4 x i8*]* %120, i32 0, i32 0, !dbg !1490
  store i8* %116, i8** %121, align 4, !dbg !1492, !tbaa !292
  %122 = load i16, i16* %6, align 2, !dbg !1493, !tbaa !302
  %123 = zext i16 %122 to i32, !dbg !1494
  %124 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %123, !dbg !1494
  %125 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %124, i32 0, i32 4, !dbg !1495
  store i32 2000, i32* %125, align 4, !dbg !1496, !tbaa !343
  %126 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1497
  %127 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %126, i32 0, i32 0, !dbg !1498
  %128 = load i16, i16* %127, align 4, !dbg !1498, !tbaa !352
  %129 = load i16, i16* %6, align 2, !dbg !1499, !tbaa !302
  %130 = zext i16 %129 to i32, !dbg !1500
  %131 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %130, !dbg !1500
  %132 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %131, i32 0, i32 0, !dbg !1501
  store i16 %128, i16* %132, align 4, !dbg !1502, !tbaa !352
  %133 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1503
  %134 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %133, i32 0, i32 1, !dbg !1504
  %135 = load i16, i16* %134, align 2, !dbg !1504, !tbaa !355
  %136 = load i16, i16* %6, align 2, !dbg !1505, !tbaa !302
  %137 = zext i16 %136 to i32, !dbg !1506
  %138 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %137, !dbg !1506
  %139 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %138, i32 0, i32 1, !dbg !1507
  store i16 %135, i16* %139, align 2, !dbg !1508, !tbaa !355
  %140 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1509
  %141 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %140, i32 0, i32 2, !dbg !1510
  %142 = load i16, i16* %141, align 4, !dbg !1510, !tbaa !543
  %143 = load i16, i16* %6, align 2, !dbg !1511, !tbaa !302
  %144 = zext i16 %143 to i32, !dbg !1512
  %145 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %144, !dbg !1512
  %146 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %145, i32 0, i32 2, !dbg !1513
  store i16 %142, i16* %146, align 4, !dbg !1514, !tbaa !543
  %147 = load i16, i16* %6, align 2, !dbg !1515, !tbaa !302
  %148 = zext i16 %147 to i32, !dbg !1516
  %149 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %148, !dbg !1516
  %150 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %149, i32 0, i32 13, !dbg !1517
  store i16 0, i16* %150, align 4, !dbg !1518, !tbaa !1519
  %151 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1520
  %152 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %151, i32 0, i32 6, !dbg !1521
  %153 = load i32, i32* %152, align 4, !dbg !1521, !tbaa !1417
  %154 = load i16, i16* %6, align 2, !dbg !1522, !tbaa !302
  %155 = zext i16 %154 to i32, !dbg !1523
  %156 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %155, !dbg !1523
  %157 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %156, i32 0, i32 6, !dbg !1524
  store i32 %153, i32* %157, align 4, !dbg !1525, !tbaa !1417
  br label %158, !dbg !1526

158:                                              ; preds = %110
  %159 = load i16, i16* %6, align 2, !dbg !1527, !tbaa !302
  %160 = add i16 %159, 1, !dbg !1527
  store i16 %160, i16* %6, align 2, !dbg !1527, !tbaa !302
  br label %106, !dbg !1528, !llvm.loop !1529

161:                                              ; preds = %106
  store i16 0, i16* %6, align 2, !dbg !1531, !tbaa !302
  br label %162, !dbg !1533

162:                                              ; preds = %179, %161
  %163 = load i16, i16* %6, align 2, !dbg !1534, !tbaa !302
  %164 = zext i16 %163 to i32, !dbg !1534
  %165 = icmp slt i32 %164, 3, !dbg !1536
  br i1 %165, label %166, label %182, !dbg !1537

166:                                              ; preds = %162
  %167 = load i16, i16* %6, align 2, !dbg !1538, !tbaa !302
  %168 = zext i16 %167 to i32, !dbg !1541
  %169 = shl i32 1, %168, !dbg !1542
  %170 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1543
  %171 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %170, i32 0, i32 6, !dbg !1544
  %172 = load i32, i32* %171, align 4, !dbg !1544, !tbaa !1417
  %173 = and i32 %169, %172, !dbg !1545
  %174 = icmp ne i32 %173, 0, !dbg !1545
  br i1 %174, label %175, label %178, !dbg !1546

175:                                              ; preds = %166
  %176 = load i16, i16* %8, align 2, !dbg !1547, !tbaa !302
  %177 = add i16 %176, 1, !dbg !1547
  store i16 %177, i16* %8, align 2, !dbg !1547, !tbaa !302
  br label %178, !dbg !1548

178:                                              ; preds = %175, %166
  br label %179, !dbg !1549

179:                                              ; preds = %178
  %180 = load i16, i16* %6, align 2, !dbg !1550, !tbaa !302
  %181 = add i16 %180, 1, !dbg !1550
  store i16 %181, i16* %6, align 2, !dbg !1550, !tbaa !302
  br label %162, !dbg !1551, !llvm.loop !1552

182:                                              ; preds = %162
  store i16 0, i16* %6, align 2, !dbg !1554, !tbaa !302
  br label %183, !dbg !1556

183:                                              ; preds = %200, %182
  %184 = load i16, i16* %6, align 2, !dbg !1557, !tbaa !302
  %185 = zext i16 %184 to i32, !dbg !1557
  %186 = icmp slt i32 %185, 1, !dbg !1559
  br i1 %186, label %187, label %203, !dbg !1560

187:                                              ; preds = %183
  %188 = load i16, i16* %6, align 2, !dbg !1561, !tbaa !302
  %189 = zext i16 %188 to i32, !dbg !1562
  %190 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %189, !dbg !1562
  %191 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %190, i32 0, i32 4, !dbg !1563
  %192 = load i32, i32* %191, align 4, !dbg !1563, !tbaa !343
  %193 = load i16, i16* %8, align 2, !dbg !1564, !tbaa !302
  %194 = zext i16 %193 to i32, !dbg !1564
  %195 = udiv i32 %192, %194, !dbg !1565
  %196 = load i16, i16* %6, align 2, !dbg !1566, !tbaa !302
  %197 = zext i16 %196 to i32, !dbg !1567
  %198 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %197, !dbg !1567
  %199 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %198, i32 0, i32 4, !dbg !1568
  store i32 %195, i32* %199, align 4, !dbg !1569, !tbaa !343
  br label %200, !dbg !1567

200:                                              ; preds = %187
  %201 = load i16, i16* %6, align 2, !dbg !1570, !tbaa !302
  %202 = add i16 %201, 1, !dbg !1570
  store i16 %202, i16* %6, align 2, !dbg !1570, !tbaa !302
  br label %183, !dbg !1571, !llvm.loop !1572

203:                                              ; preds = %183
  store i16 0, i16* %6, align 2, !dbg !1574, !tbaa !302
  br label %204, !dbg !1575

204:                                              ; preds = %250, %203
  %205 = load i16, i16* %6, align 2, !dbg !1576, !tbaa !302
  %206 = zext i16 %205 to i32, !dbg !1576
  %207 = icmp slt i32 %206, 3, !dbg !1577
  br i1 %207, label %208, label %253, !dbg !1578

208:                                              ; preds = %204
  %209 = bitcast i32* %15 to i8*, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %209) #4, !dbg !1579
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1368, metadata !DIExpression()), !dbg !1580
  %210 = load i16, i16* %6, align 2, !dbg !1581, !tbaa !302
  %211 = zext i16 %210 to i32, !dbg !1583
  %212 = shl i32 1, %211, !dbg !1584
  %213 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1585
  %214 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %213, i32 0, i32 6, !dbg !1586
  %215 = load i32, i32* %214, align 4, !dbg !1586, !tbaa !1417
  %216 = and i32 %212, %215, !dbg !1587
  %217 = icmp ne i32 %216, 0, !dbg !1587
  br i1 %217, label %218, label %248, !dbg !1588

218:                                              ; preds = %208
  store i32 0, i32* %15, align 4, !dbg !1589, !tbaa !827
  br label %219, !dbg !1592

219:                                              ; preds = %242, %218
  %220 = load i32, i32* %15, align 4, !dbg !1593, !tbaa !827
  %221 = icmp ult i32 %220, 1, !dbg !1595
  br i1 %221, label %222, label %245, !dbg !1596

222:                                              ; preds = %219
  %223 = load i32, i32* %15, align 4, !dbg !1597, !tbaa !827
  %224 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %223, !dbg !1598
  %225 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %224, i32 0, i32 3, !dbg !1599
  %226 = getelementptr inbounds [4 x i8*], [4 x i8*]* %225, i32 0, i32 0, !dbg !1598
  %227 = load i8*, i8** %226, align 4, !dbg !1598, !tbaa !292
  %228 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1600
  %229 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %228, i32 0, i32 4, !dbg !1601
  %230 = load i32, i32* %229, align 4, !dbg !1601, !tbaa !343
  %231 = load i16, i16* %7, align 2, !dbg !1602, !tbaa !302
  %232 = zext i16 %231 to i32, !dbg !1602
  %233 = mul i32 %230, %232, !dbg !1603
  %234 = getelementptr inbounds i8, i8* %227, i32 %233, !dbg !1604
  %235 = load i32, i32* %15, align 4, !dbg !1605, !tbaa !827
  %236 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %235, !dbg !1606
  %237 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %236, i32 0, i32 3, !dbg !1607
  %238 = load i16, i16* %6, align 2, !dbg !1608, !tbaa !302
  %239 = zext i16 %238 to i32, !dbg !1608
  %240 = add nsw i32 %239, 1, !dbg !1609
  %241 = getelementptr inbounds [4 x i8*], [4 x i8*]* %237, i32 0, i32 %240, !dbg !1606
  store i8* %234, i8** %241, align 4, !dbg !1610, !tbaa !292
  br label %242, !dbg !1606

242:                                              ; preds = %222
  %243 = load i32, i32* %15, align 4, !dbg !1611, !tbaa !827
  %244 = add i32 %243, 1, !dbg !1611
  store i32 %244, i32* %15, align 4, !dbg !1611, !tbaa !827
  br label %219, !dbg !1612, !llvm.loop !1613

245:                                              ; preds = %219
  %246 = load i16, i16* %7, align 2, !dbg !1615, !tbaa !302
  %247 = add i16 %246, 1, !dbg !1615
  store i16 %247, i16* %7, align 2, !dbg !1615, !tbaa !302
  br label %248, !dbg !1616

248:                                              ; preds = %245, %208
  %249 = bitcast i32* %15 to i8*, !dbg !1617
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %249) #4, !dbg !1617
  br label %250, !dbg !1618

250:                                              ; preds = %248
  %251 = load i16, i16* %6, align 2, !dbg !1619, !tbaa !302
  %252 = add i16 %251, 1, !dbg !1619
  store i16 %252, i16* %6, align 2, !dbg !1619, !tbaa !302
  br label %204, !dbg !1620, !llvm.loop !1621

253:                                              ; preds = %204
  store i16 0, i16* %6, align 2, !dbg !1623, !tbaa !302
  br label %254, !dbg !1625

254:                                              ; preds = %348, %253
  %255 = load i16, i16* %6, align 2, !dbg !1626, !tbaa !302
  %256 = zext i16 %255 to i32, !dbg !1626
  %257 = icmp slt i32 %256, 1, !dbg !1628
  br i1 %257, label %258, label %351, !dbg !1629

258:                                              ; preds = %254
  %259 = load i16, i16* %6, align 2, !dbg !1630, !tbaa !302
  %260 = zext i16 %259 to i32, !dbg !1633
  %261 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %260, !dbg !1633
  %262 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %261, i32 0, i32 6, !dbg !1634
  %263 = load i32, i32* %262, align 4, !dbg !1634, !tbaa !1417
  %264 = and i32 %263, 1, !dbg !1635
  %265 = icmp ne i32 %264, 0, !dbg !1635
  br i1 %265, label %266, label %287, !dbg !1636

266:                                              ; preds = %258
  %267 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1637
  %268 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %267, i32 0, i32 4, !dbg !1639
  %269 = load i32, i32* %268, align 4, !dbg !1639, !tbaa !343
  %270 = load i16, i16* %6, align 2, !dbg !1640, !tbaa !302
  %271 = zext i16 %270 to i32, !dbg !1641
  %272 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %271, !dbg !1641
  %273 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %272, i32 0, i32 3, !dbg !1642
  %274 = getelementptr inbounds [4 x i8*], [4 x i8*]* %273, i32 0, i32 1, !dbg !1641
  %275 = load i8*, i8** %274, align 4, !dbg !1641, !tbaa !292
  %276 = bitcast i8* %275 to %struct.list_head_s*, !dbg !1641
  %277 = load i16, i16* %6, align 2, !dbg !1643, !tbaa !302
  %278 = zext i16 %277 to i32, !dbg !1644
  %279 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %278, !dbg !1644
  %280 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %279, i32 0, i32 0, !dbg !1645
  %281 = load i16, i16* %280, align 4, !dbg !1645, !tbaa !352
  %282 = call arm_aapcscc %struct.list_head_s* @core_list_init(i32 %269, %struct.list_head_s* %276, i16 signext %281), !dbg !1646
  %283 = load i16, i16* %6, align 2, !dbg !1647, !tbaa !302
  %284 = zext i16 %283 to i32, !dbg !1648
  %285 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %284, !dbg !1648
  %286 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %285, i32 0, i32 7, !dbg !1649
  store %struct.list_head_s* %282, %struct.list_head_s** %286, align 4, !dbg !1650, !tbaa !538
  br label %287, !dbg !1651

287:                                              ; preds = %266, %258
  %288 = load i16, i16* %6, align 2, !dbg !1652, !tbaa !302
  %289 = zext i16 %288 to i32, !dbg !1654
  %290 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %289, !dbg !1654
  %291 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %290, i32 0, i32 6, !dbg !1655
  %292 = load i32, i32* %291, align 4, !dbg !1655, !tbaa !1417
  %293 = and i32 %292, 2, !dbg !1656
  %294 = icmp ne i32 %293, 0, !dbg !1656
  br i1 %294, label %295, label %324, !dbg !1657

295:                                              ; preds = %287
  %296 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1658
  %297 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %296, i32 0, i32 4, !dbg !1660
  %298 = load i32, i32* %297, align 4, !dbg !1660, !tbaa !343
  %299 = load i16, i16* %6, align 2, !dbg !1661, !tbaa !302
  %300 = zext i16 %299 to i32, !dbg !1662
  %301 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %300, !dbg !1662
  %302 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %301, i32 0, i32 3, !dbg !1663
  %303 = getelementptr inbounds [4 x i8*], [4 x i8*]* %302, i32 0, i32 2, !dbg !1662
  %304 = load i8*, i8** %303, align 4, !dbg !1662, !tbaa !292
  %305 = load i16, i16* %6, align 2, !dbg !1664, !tbaa !302
  %306 = zext i16 %305 to i32, !dbg !1665
  %307 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %306, !dbg !1665
  %308 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %307, i32 0, i32 0, !dbg !1666
  %309 = load i16, i16* %308, align 4, !dbg !1666, !tbaa !352
  %310 = sext i16 %309 to i32, !dbg !1667
  %311 = load i16, i16* %6, align 2, !dbg !1668, !tbaa !302
  %312 = zext i16 %311 to i32, !dbg !1669
  %313 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %312, !dbg !1669
  %314 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %313, i32 0, i32 1, !dbg !1670
  %315 = load i16, i16* %314, align 2, !dbg !1670, !tbaa !355
  %316 = sext i16 %315 to i32, !dbg !1671
  %317 = shl i32 %316, 16, !dbg !1672
  %318 = or i32 %310, %317, !dbg !1673
  %319 = load i16, i16* %6, align 2, !dbg !1674, !tbaa !302
  %320 = zext i16 %319 to i32, !dbg !1675
  %321 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %320, !dbg !1675
  %322 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %321, i32 0, i32 8, !dbg !1676
  %323 = call arm_aapcscc i32 @core_init_matrix(i32 %298, i8* %304, i32 %318, %struct.MAT_PARAMS_S* %322), !dbg !1677
  br label %324, !dbg !1678

324:                                              ; preds = %295, %287
  %325 = load i16, i16* %6, align 2, !dbg !1679, !tbaa !302
  %326 = zext i16 %325 to i32, !dbg !1681
  %327 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %326, !dbg !1681
  %328 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %327, i32 0, i32 6, !dbg !1682
  %329 = load i32, i32* %328, align 4, !dbg !1682, !tbaa !1417
  %330 = and i32 %329, 4, !dbg !1683
  %331 = icmp ne i32 %330, 0, !dbg !1683
  br i1 %331, label %332, label %347, !dbg !1684

332:                                              ; preds = %324
  %333 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1685
  %334 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %333, i32 0, i32 4, !dbg !1687
  %335 = load i32, i32* %334, align 4, !dbg !1687, !tbaa !343
  %336 = load i16, i16* %6, align 2, !dbg !1688, !tbaa !302
  %337 = zext i16 %336 to i32, !dbg !1689
  %338 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %337, !dbg !1689
  %339 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %338, i32 0, i32 0, !dbg !1690
  %340 = load i16, i16* %339, align 4, !dbg !1690, !tbaa !352
  %341 = load i16, i16* %6, align 2, !dbg !1691, !tbaa !302
  %342 = zext i16 %341 to i32, !dbg !1692
  %343 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %342, !dbg !1692
  %344 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %343, i32 0, i32 3, !dbg !1693
  %345 = getelementptr inbounds [4 x i8*], [4 x i8*]* %344, i32 0, i32 3, !dbg !1692
  %346 = load i8*, i8** %345, align 4, !dbg !1692, !tbaa !292
  call arm_aapcscc void @core_init_state(i32 %335, i16 signext %340, i8* %346), !dbg !1694
  br label %347, !dbg !1695

347:                                              ; preds = %332, %324
  br label %348, !dbg !1696

348:                                              ; preds = %347
  %349 = load i16, i16* %6, align 2, !dbg !1697, !tbaa !302
  %350 = add i16 %349, 1, !dbg !1697
  store i16 %350, i16* %6, align 2, !dbg !1697, !tbaa !302
  br label %254, !dbg !1698, !llvm.loop !1699

351:                                              ; preds = %254
  %352 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1701
  %353 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %352, i32 0, i32 5, !dbg !1702
  %354 = load i32, i32* %353, align 4, !dbg !1702, !tbaa !1287
  %355 = icmp eq i32 %354, 0, !dbg !1703
  br i1 %355, label %356, label %390, !dbg !1704

356:                                              ; preds = %351
  %357 = bitcast double* %16 to i8*, !dbg !1705
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %357) #4, !dbg !1705
  call void @llvm.dbg.declare(metadata double* %16, metadata !1372, metadata !DIExpression()), !dbg !1706
  store double 0.000000e+00, double* %16, align 8, !dbg !1706, !tbaa !1707
  %358 = bitcast i32* %17 to i8*, !dbg !1709
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %358) #4, !dbg !1709
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1375, metadata !DIExpression()), !dbg !1710
  %359 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1711
  %360 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %359, i32 0, i32 5, !dbg !1712
  store i32 1, i32* %360, align 4, !dbg !1713, !tbaa !1287
  br label %361, !dbg !1714

361:                                              ; preds = %364, %356
  %362 = load double, double* %16, align 8, !dbg !1715, !tbaa !1707
  %363 = fcmp olt double %362, 1.000000e+00, !dbg !1716
  br i1 %363, label %364, label %374, !dbg !1714

364:                                              ; preds = %361
  %365 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1717
  %366 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %365, i32 0, i32 5, !dbg !1719
  %367 = load i32, i32* %366, align 4, !dbg !1720, !tbaa !1287
  %368 = mul i32 %367, 10, !dbg !1720
  store i32 %368, i32* %366, align 4, !dbg !1720, !tbaa !1287
  call arm_aapcscc void @start_time(), !dbg !1721
  %369 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1722
  %370 = bitcast %struct.RESULTS_S* %369 to i8*, !dbg !1723
  %371 = call arm_aapcscc i8* @iterate(i8* %370), !dbg !1724
  call arm_aapcscc void @stop_time(), !dbg !1725
  %372 = call arm_aapcscc i32 @get_time(), !dbg !1726
  %373 = call arm_aapcscc double @time_in_secs(i32 %372), !dbg !1727
  store double %373, double* %16, align 8, !dbg !1728, !tbaa !1707
  br label %361, !dbg !1714, !llvm.loop !1729

374:                                              ; preds = %361
  %375 = load double, double* %16, align 8, !dbg !1731, !tbaa !1707
  %376 = fptoui double %375 to i32, !dbg !1732
  store i32 %376, i32* %17, align 4, !dbg !1733, !tbaa !827
  %377 = load i32, i32* %17, align 4, !dbg !1734, !tbaa !827
  %378 = icmp eq i32 %377, 0, !dbg !1736
  br i1 %378, label %379, label %380, !dbg !1737

379:                                              ; preds = %374
  store i32 1, i32* %17, align 4, !dbg !1738, !tbaa !827
  br label %380, !dbg !1739

380:                                              ; preds = %379, %374
  %381 = load i32, i32* %17, align 4, !dbg !1740, !tbaa !827
  %382 = udiv i32 10, %381, !dbg !1741
  %383 = add i32 1, %382, !dbg !1742
  %384 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1743
  %385 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %384, i32 0, i32 5, !dbg !1744
  %386 = load i32, i32* %385, align 4, !dbg !1745, !tbaa !1287
  %387 = mul i32 %386, %383, !dbg !1745
  store i32 %387, i32* %385, align 4, !dbg !1745, !tbaa !1287
  %388 = bitcast i32* %17 to i8*, !dbg !1746
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %388) #4, !dbg !1746
  %389 = bitcast double* %16 to i8*, !dbg !1746
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %389) #4, !dbg !1746
  br label %390, !dbg !1747

390:                                              ; preds = %380, %351
  call arm_aapcscc void @start_time(), !dbg !1748
  %391 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1749
  %392 = bitcast %struct.RESULTS_S* %391 to i8*, !dbg !1750
  %393 = call arm_aapcscc i8* @iterate(i8* %392), !dbg !1751
  call arm_aapcscc void @stop_time(), !dbg !1752
  %394 = call arm_aapcscc i32 @get_time(), !dbg !1753
  store i32 %394, i32* %12, align 4, !dbg !1754, !tbaa !827
  %395 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1755
  %396 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %395, i32 0, i32 0, !dbg !1756
  %397 = load i16, i16* %396, align 4, !dbg !1756, !tbaa !352
  %398 = load i16, i16* %11, align 2, !dbg !1757, !tbaa !302
  %399 = call arm_aapcscc zeroext i16 @crc16(i16 signext %397, i16 zeroext %398), !dbg !1758
  store i16 %399, i16* %11, align 2, !dbg !1759, !tbaa !302
  %400 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1760
  %401 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %400, i32 0, i32 1, !dbg !1761
  %402 = load i16, i16* %401, align 2, !dbg !1761, !tbaa !355
  %403 = load i16, i16* %11, align 2, !dbg !1762, !tbaa !302
  %404 = call arm_aapcscc zeroext i16 @crc16(i16 signext %402, i16 zeroext %403), !dbg !1763
  store i16 %404, i16* %11, align 2, !dbg !1764, !tbaa !302
  %405 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1765
  %406 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %405, i32 0, i32 2, !dbg !1766
  %407 = load i16, i16* %406, align 4, !dbg !1766, !tbaa !543
  %408 = load i16, i16* %11, align 2, !dbg !1767, !tbaa !302
  %409 = call arm_aapcscc zeroext i16 @crc16(i16 signext %407, i16 zeroext %408), !dbg !1768
  store i16 %409, i16* %11, align 2, !dbg !1769, !tbaa !302
  %410 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1770
  %411 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %410, i32 0, i32 4, !dbg !1771
  %412 = load i32, i32* %411, align 4, !dbg !1771, !tbaa !343
  %413 = trunc i32 %412 to i16, !dbg !1770
  %414 = load i16, i16* %11, align 2, !dbg !1772, !tbaa !302
  %415 = call arm_aapcscc zeroext i16 @crc16(i16 signext %413, i16 zeroext %414), !dbg !1773
  store i16 %415, i16* %11, align 2, !dbg !1774, !tbaa !302
  %416 = load i16, i16* %11, align 2, !dbg !1775, !tbaa !302
  %417 = zext i16 %416 to i32, !dbg !1775
  switch i32 %417, label %428 [
    i32 35330, label %418
    i32 31493, label %420
    i32 20143, label %422
    i32 59893, label %424
    i32 6386, label %426
  ], !dbg !1776

418:                                              ; preds = %390
  store i16 0, i16* %9, align 2, !dbg !1777, !tbaa !302
  %419 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0)), !dbg !1779
  br label %429, !dbg !1780

420:                                              ; preds = %390
  store i16 1, i16* %9, align 2, !dbg !1781, !tbaa !302
  %421 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0)), !dbg !1782
  br label %429, !dbg !1783

422:                                              ; preds = %390
  store i16 2, i16* %9, align 2, !dbg !1784, !tbaa !302
  %423 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0)), !dbg !1785
  br label %429, !dbg !1786

424:                                              ; preds = %390
  store i16 3, i16* %9, align 2, !dbg !1787, !tbaa !302
  %425 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0)), !dbg !1788
  br label %429, !dbg !1789

426:                                              ; preds = %390
  store i16 4, i16* %9, align 2, !dbg !1790, !tbaa !302
  %427 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0)), !dbg !1791
  br label %429, !dbg !1792

428:                                              ; preds = %390
  store i16 -1, i16* %10, align 2, !dbg !1793, !tbaa !302
  br label %429, !dbg !1794

429:                                              ; preds = %428, %426, %424, %422, %420, %418
  %430 = load i16, i16* %9, align 2, !dbg !1795, !tbaa !302
  %431 = sext i16 %430 to i32, !dbg !1795
  %432 = icmp sge i32 %431, 0, !dbg !1797
  br i1 %432, label %433, label %584, !dbg !1798

433:                                              ; preds = %429
  store i16 0, i16* %6, align 2, !dbg !1799, !tbaa !302
  br label %434, !dbg !1802

434:                                              ; preds = %580, %433
  %435 = load i16, i16* %6, align 2, !dbg !1803, !tbaa !302
  %436 = zext i16 %435 to i32, !dbg !1803
  %437 = load i32, i32* @default_num_contexts, align 4, !dbg !1805, !tbaa !827
  %438 = icmp ult i32 %436, %437, !dbg !1806
  br i1 %438, label %439, label %583, !dbg !1807

439:                                              ; preds = %434
  %440 = load i16, i16* %6, align 2, !dbg !1808, !tbaa !302
  %441 = zext i16 %440 to i32, !dbg !1810
  %442 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %441, !dbg !1810
  %443 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %442, i32 0, i32 13, !dbg !1811
  store i16 0, i16* %443, align 4, !dbg !1812, !tbaa !1519
  %444 = load i16, i16* %6, align 2, !dbg !1813, !tbaa !302
  %445 = zext i16 %444 to i32, !dbg !1815
  %446 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %445, !dbg !1815
  %447 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %446, i32 0, i32 6, !dbg !1816
  %448 = load i32, i32* %447, align 4, !dbg !1816, !tbaa !1417
  %449 = and i32 %448, 1, !dbg !1817
  %450 = icmp ne i32 %449, 0, !dbg !1817
  br i1 %450, label %451, label %485, !dbg !1818

451:                                              ; preds = %439
  %452 = load i16, i16* %6, align 2, !dbg !1819, !tbaa !302
  %453 = zext i16 %452 to i32, !dbg !1820
  %454 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %453, !dbg !1820
  %455 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %454, i32 0, i32 10, !dbg !1821
  %456 = load i16, i16* %455, align 2, !dbg !1821, !tbaa !1294
  %457 = zext i16 %456 to i32, !dbg !1820
  %458 = load i16, i16* %9, align 2, !dbg !1822, !tbaa !302
  %459 = sext i16 %458 to i32, !dbg !1823
  %460 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %459, !dbg !1823
  %461 = load i16, i16* %460, align 2, !dbg !1823, !tbaa !302
  %462 = zext i16 %461 to i32, !dbg !1823
  %463 = icmp ne i32 %457, %462, !dbg !1824
  br i1 %463, label %464, label %485, !dbg !1825

464:                                              ; preds = %451
  %465 = load i16, i16* %6, align 2, !dbg !1826, !tbaa !302
  %466 = zext i16 %465 to i32, !dbg !1826
  %467 = load i16, i16* %6, align 2, !dbg !1828, !tbaa !302
  %468 = zext i16 %467 to i32, !dbg !1829
  %469 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %468, !dbg !1829
  %470 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %469, i32 0, i32 10, !dbg !1830
  %471 = load i16, i16* %470, align 2, !dbg !1830, !tbaa !1294
  %472 = zext i16 %471 to i32, !dbg !1829
  %473 = load i16, i16* %9, align 2, !dbg !1831, !tbaa !302
  %474 = sext i16 %473 to i32, !dbg !1832
  %475 = getelementptr inbounds [5 x i16], [5 x i16]* @list_known_crc, i32 0, i32 %474, !dbg !1832
  %476 = load i16, i16* %475, align 2, !dbg !1832, !tbaa !302
  %477 = zext i16 %476 to i32, !dbg !1832
  %478 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i32 %466, i32 %472, i32 %477), !dbg !1833
  %479 = load i16, i16* %6, align 2, !dbg !1834, !tbaa !302
  %480 = zext i16 %479 to i32, !dbg !1835
  %481 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %480, !dbg !1835
  %482 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %481, i32 0, i32 13, !dbg !1836
  %483 = load i16, i16* %482, align 4, !dbg !1837, !tbaa !1519
  %484 = add i16 %483, 1, !dbg !1837
  store i16 %484, i16* %482, align 4, !dbg !1837, !tbaa !1519
  br label %485, !dbg !1838

485:                                              ; preds = %464, %451, %439
  %486 = load i16, i16* %6, align 2, !dbg !1839, !tbaa !302
  %487 = zext i16 %486 to i32, !dbg !1841
  %488 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %487, !dbg !1841
  %489 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %488, i32 0, i32 6, !dbg !1842
  %490 = load i32, i32* %489, align 4, !dbg !1842, !tbaa !1417
  %491 = and i32 %490, 2, !dbg !1843
  %492 = icmp ne i32 %491, 0, !dbg !1843
  br i1 %492, label %493, label %527, !dbg !1844

493:                                              ; preds = %485
  %494 = load i16, i16* %6, align 2, !dbg !1845, !tbaa !302
  %495 = zext i16 %494 to i32, !dbg !1846
  %496 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %495, !dbg !1846
  %497 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %496, i32 0, i32 11, !dbg !1847
  %498 = load i16, i16* %497, align 4, !dbg !1847, !tbaa !383
  %499 = zext i16 %498 to i32, !dbg !1846
  %500 = load i16, i16* %9, align 2, !dbg !1848, !tbaa !302
  %501 = sext i16 %500 to i32, !dbg !1849
  %502 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %501, !dbg !1849
  %503 = load i16, i16* %502, align 2, !dbg !1849, !tbaa !302
  %504 = zext i16 %503 to i32, !dbg !1849
  %505 = icmp ne i32 %499, %504, !dbg !1850
  br i1 %505, label %506, label %527, !dbg !1851

506:                                              ; preds = %493
  %507 = load i16, i16* %6, align 2, !dbg !1852, !tbaa !302
  %508 = zext i16 %507 to i32, !dbg !1852
  %509 = load i16, i16* %6, align 2, !dbg !1854, !tbaa !302
  %510 = zext i16 %509 to i32, !dbg !1855
  %511 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %510, !dbg !1855
  %512 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %511, i32 0, i32 11, !dbg !1856
  %513 = load i16, i16* %512, align 4, !dbg !1856, !tbaa !383
  %514 = zext i16 %513 to i32, !dbg !1855
  %515 = load i16, i16* %9, align 2, !dbg !1857, !tbaa !302
  %516 = sext i16 %515 to i32, !dbg !1858
  %517 = getelementptr inbounds [5 x i16], [5 x i16]* @matrix_known_crc, i32 0, i32 %516, !dbg !1858
  %518 = load i16, i16* %517, align 2, !dbg !1858, !tbaa !302
  %519 = zext i16 %518 to i32, !dbg !1858
  %520 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i32 %508, i32 %514, i32 %519), !dbg !1859
  %521 = load i16, i16* %6, align 2, !dbg !1860, !tbaa !302
  %522 = zext i16 %521 to i32, !dbg !1861
  %523 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %522, !dbg !1861
  %524 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %523, i32 0, i32 13, !dbg !1862
  %525 = load i16, i16* %524, align 4, !dbg !1863, !tbaa !1519
  %526 = add i16 %525, 1, !dbg !1863
  store i16 %526, i16* %524, align 4, !dbg !1863, !tbaa !1519
  br label %527, !dbg !1864

527:                                              ; preds = %506, %493, %485
  %528 = load i16, i16* %6, align 2, !dbg !1865, !tbaa !302
  %529 = zext i16 %528 to i32, !dbg !1867
  %530 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %529, !dbg !1867
  %531 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %530, i32 0, i32 6, !dbg !1868
  %532 = load i32, i32* %531, align 4, !dbg !1868, !tbaa !1417
  %533 = and i32 %532, 4, !dbg !1869
  %534 = icmp ne i32 %533, 0, !dbg !1869
  br i1 %534, label %535, label %569, !dbg !1870

535:                                              ; preds = %527
  %536 = load i16, i16* %6, align 2, !dbg !1871, !tbaa !302
  %537 = zext i16 %536 to i32, !dbg !1872
  %538 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %537, !dbg !1872
  %539 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %538, i32 0, i32 12, !dbg !1873
  %540 = load i16, i16* %539, align 2, !dbg !1873, !tbaa !365
  %541 = zext i16 %540 to i32, !dbg !1872
  %542 = load i16, i16* %9, align 2, !dbg !1874, !tbaa !302
  %543 = sext i16 %542 to i32, !dbg !1875
  %544 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %543, !dbg !1875
  %545 = load i16, i16* %544, align 2, !dbg !1875, !tbaa !302
  %546 = zext i16 %545 to i32, !dbg !1875
  %547 = icmp ne i32 %541, %546, !dbg !1876
  br i1 %547, label %548, label %569, !dbg !1877

548:                                              ; preds = %535
  %549 = load i16, i16* %6, align 2, !dbg !1878, !tbaa !302
  %550 = zext i16 %549 to i32, !dbg !1878
  %551 = load i16, i16* %6, align 2, !dbg !1880, !tbaa !302
  %552 = zext i16 %551 to i32, !dbg !1881
  %553 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %552, !dbg !1881
  %554 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %553, i32 0, i32 12, !dbg !1882
  %555 = load i16, i16* %554, align 2, !dbg !1882, !tbaa !365
  %556 = zext i16 %555 to i32, !dbg !1881
  %557 = load i16, i16* %9, align 2, !dbg !1883, !tbaa !302
  %558 = sext i16 %557 to i32, !dbg !1884
  %559 = getelementptr inbounds [5 x i16], [5 x i16]* @state_known_crc, i32 0, i32 %558, !dbg !1884
  %560 = load i16, i16* %559, align 2, !dbg !1884, !tbaa !302
  %561 = zext i16 %560 to i32, !dbg !1884
  %562 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), i32 %550, i32 %556, i32 %561), !dbg !1885
  %563 = load i16, i16* %6, align 2, !dbg !1886, !tbaa !302
  %564 = zext i16 %563 to i32, !dbg !1887
  %565 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %564, !dbg !1887
  %566 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %565, i32 0, i32 13, !dbg !1888
  %567 = load i16, i16* %566, align 4, !dbg !1889, !tbaa !1519
  %568 = add i16 %567, 1, !dbg !1889
  store i16 %568, i16* %566, align 4, !dbg !1889, !tbaa !1519
  br label %569, !dbg !1890

569:                                              ; preds = %548, %535, %527
  %570 = load i16, i16* %6, align 2, !dbg !1891, !tbaa !302
  %571 = zext i16 %570 to i32, !dbg !1892
  %572 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %571, !dbg !1892
  %573 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %572, i32 0, i32 13, !dbg !1893
  %574 = load i16, i16* %573, align 4, !dbg !1893, !tbaa !1519
  %575 = sext i16 %574 to i32, !dbg !1892
  %576 = load i16, i16* %10, align 2, !dbg !1894, !tbaa !302
  %577 = sext i16 %576 to i32, !dbg !1894
  %578 = add nsw i32 %577, %575, !dbg !1894
  %579 = trunc i32 %578 to i16, !dbg !1894
  store i16 %579, i16* %10, align 2, !dbg !1894, !tbaa !302
  br label %580, !dbg !1895

580:                                              ; preds = %569
  %581 = load i16, i16* %6, align 2, !dbg !1896, !tbaa !302
  %582 = add i16 %581, 1, !dbg !1896
  store i16 %582, i16* %6, align 2, !dbg !1896, !tbaa !302
  br label %434, !dbg !1897, !llvm.loop !1898

583:                                              ; preds = %434
  br label %584, !dbg !1900

584:                                              ; preds = %583, %429
  %585 = call arm_aapcscc zeroext i8 @check_data_types(), !dbg !1901
  %586 = zext i8 %585 to i32, !dbg !1901
  %587 = load i16, i16* %10, align 2, !dbg !1902, !tbaa !302
  %588 = sext i16 %587 to i32, !dbg !1902
  %589 = add nsw i32 %588, %586, !dbg !1902
  %590 = trunc i32 %589 to i16, !dbg !1902
  store i16 %590, i16* %10, align 2, !dbg !1902, !tbaa !302
  %591 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1903
  %592 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %591, i32 0, i32 4, !dbg !1904
  %593 = load i32, i32* %592, align 4, !dbg !1904, !tbaa !343
  %594 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %593), !dbg !1905
  %595 = load i32, i32* %12, align 4, !dbg !1906, !tbaa !827
  %596 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 %595), !dbg !1907
  %597 = load i32, i32* %12, align 4, !dbg !1908, !tbaa !827
  %598 = call arm_aapcscc double @time_in_secs(i32 %597), !dbg !1909
  %599 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), double %598), !dbg !1910
  %600 = load i32, i32* %12, align 4, !dbg !1911, !tbaa !827
  %601 = call arm_aapcscc double @time_in_secs(i32 %600), !dbg !1913
  %602 = fcmp ogt double %601, 0.000000e+00, !dbg !1914
  br i1 %602, label %603, label %614, !dbg !1915

603:                                              ; preds = %584
  %604 = load i32, i32* @default_num_contexts, align 4, !dbg !1916, !tbaa !827
  %605 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1917
  %606 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %605, i32 0, i32 5, !dbg !1918
  %607 = load i32, i32* %606, align 4, !dbg !1918, !tbaa !1287
  %608 = mul i32 %604, %607, !dbg !1919
  %609 = uitofp i32 %608 to double, !dbg !1916
  %610 = load i32, i32* %12, align 4, !dbg !1920, !tbaa !827
  %611 = call arm_aapcscc double @time_in_secs(i32 %610), !dbg !1921
  %612 = fdiv double %609, %611, !dbg !1922
  %613 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), double %612), !dbg !1923
  br label %614, !dbg !1923

614:                                              ; preds = %603, %584
  %615 = load i32, i32* %12, align 4, !dbg !1924, !tbaa !827
  %616 = call arm_aapcscc double @time_in_secs(i32 %615), !dbg !1926
  %617 = fcmp olt double %616, 1.000000e+01, !dbg !1927
  br i1 %617, label %618, label %622, !dbg !1928

618:                                              ; preds = %614
  %619 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i32 0, i32 0)), !dbg !1929
  %620 = load i16, i16* %10, align 2, !dbg !1931, !tbaa !302
  %621 = add i16 %620, 1, !dbg !1931
  store i16 %621, i16* %10, align 2, !dbg !1931, !tbaa !302
  br label %622, !dbg !1932

622:                                              ; preds = %618, %614
  %623 = load i32, i32* @default_num_contexts, align 4, !dbg !1933, !tbaa !827
  %624 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1934
  %625 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %624, i32 0, i32 5, !dbg !1935
  %626 = load i32, i32* %625, align 4, !dbg !1935, !tbaa !1287
  %627 = mul i32 %623, %626, !dbg !1936
  %628 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32 %627), !dbg !1937
  %629 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)), !dbg !1938
  %630 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !1939
  %631 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)), !dbg !1940
  %632 = load i16, i16* %11, align 2, !dbg !1941, !tbaa !302
  %633 = zext i16 %632 to i32, !dbg !1941
  %634 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i32 %633), !dbg !1942
  %635 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1943
  %636 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %635, i32 0, i32 6, !dbg !1945
  %637 = load i32, i32* %636, align 4, !dbg !1945, !tbaa !1417
  %638 = and i32 %637, 1, !dbg !1946
  %639 = icmp ne i32 %638, 0, !dbg !1946
  br i1 %639, label %640, label %660, !dbg !1947

640:                                              ; preds = %622
  store i16 0, i16* %6, align 2, !dbg !1948, !tbaa !302
  br label %641, !dbg !1950

641:                                              ; preds = %656, %640
  %642 = load i16, i16* %6, align 2, !dbg !1951, !tbaa !302
  %643 = zext i16 %642 to i32, !dbg !1951
  %644 = load i32, i32* @default_num_contexts, align 4, !dbg !1953, !tbaa !827
  %645 = icmp ult i32 %643, %644, !dbg !1954
  br i1 %645, label %646, label %659, !dbg !1955

646:                                              ; preds = %641
  %647 = load i16, i16* %6, align 2, !dbg !1956, !tbaa !302
  %648 = zext i16 %647 to i32, !dbg !1956
  %649 = load i16, i16* %6, align 2, !dbg !1957, !tbaa !302
  %650 = zext i16 %649 to i32, !dbg !1958
  %651 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %650, !dbg !1958
  %652 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %651, i32 0, i32 10, !dbg !1959
  %653 = load i16, i16* %652, align 2, !dbg !1959, !tbaa !1294
  %654 = zext i16 %653 to i32, !dbg !1958
  %655 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i32 %648, i32 %654), !dbg !1960
  br label %656, !dbg !1960

656:                                              ; preds = %646
  %657 = load i16, i16* %6, align 2, !dbg !1961, !tbaa !302
  %658 = add i16 %657, 1, !dbg !1961
  store i16 %658, i16* %6, align 2, !dbg !1961, !tbaa !302
  br label %641, !dbg !1962, !llvm.loop !1963

659:                                              ; preds = %641
  br label %660, !dbg !1964

660:                                              ; preds = %659, %622
  %661 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1965
  %662 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %661, i32 0, i32 6, !dbg !1967
  %663 = load i32, i32* %662, align 4, !dbg !1967, !tbaa !1417
  %664 = and i32 %663, 2, !dbg !1968
  %665 = icmp ne i32 %664, 0, !dbg !1968
  br i1 %665, label %666, label %686, !dbg !1969

666:                                              ; preds = %660
  store i16 0, i16* %6, align 2, !dbg !1970, !tbaa !302
  br label %667, !dbg !1972

667:                                              ; preds = %682, %666
  %668 = load i16, i16* %6, align 2, !dbg !1973, !tbaa !302
  %669 = zext i16 %668 to i32, !dbg !1973
  %670 = load i32, i32* @default_num_contexts, align 4, !dbg !1975, !tbaa !827
  %671 = icmp ult i32 %669, %670, !dbg !1976
  br i1 %671, label %672, label %685, !dbg !1977

672:                                              ; preds = %667
  %673 = load i16, i16* %6, align 2, !dbg !1978, !tbaa !302
  %674 = zext i16 %673 to i32, !dbg !1978
  %675 = load i16, i16* %6, align 2, !dbg !1979, !tbaa !302
  %676 = zext i16 %675 to i32, !dbg !1980
  %677 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %676, !dbg !1980
  %678 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %677, i32 0, i32 11, !dbg !1981
  %679 = load i16, i16* %678, align 4, !dbg !1981, !tbaa !383
  %680 = zext i16 %679 to i32, !dbg !1980
  %681 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i32 %674, i32 %680), !dbg !1982
  br label %682, !dbg !1982

682:                                              ; preds = %672
  %683 = load i16, i16* %6, align 2, !dbg !1983, !tbaa !302
  %684 = add i16 %683, 1, !dbg !1983
  store i16 %684, i16* %6, align 2, !dbg !1983, !tbaa !302
  br label %667, !dbg !1984, !llvm.loop !1985

685:                                              ; preds = %667
  br label %686, !dbg !1986

686:                                              ; preds = %685, %660
  %687 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !1987
  %688 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %687, i32 0, i32 6, !dbg !1989
  %689 = load i32, i32* %688, align 4, !dbg !1989, !tbaa !1417
  %690 = and i32 %689, 4, !dbg !1990
  %691 = icmp ne i32 %690, 0, !dbg !1990
  br i1 %691, label %692, label %712, !dbg !1991

692:                                              ; preds = %686
  store i16 0, i16* %6, align 2, !dbg !1992, !tbaa !302
  br label %693, !dbg !1994

693:                                              ; preds = %708, %692
  %694 = load i16, i16* %6, align 2, !dbg !1995, !tbaa !302
  %695 = zext i16 %694 to i32, !dbg !1995
  %696 = load i32, i32* @default_num_contexts, align 4, !dbg !1997, !tbaa !827
  %697 = icmp ult i32 %695, %696, !dbg !1998
  br i1 %697, label %698, label %711, !dbg !1999

698:                                              ; preds = %693
  %699 = load i16, i16* %6, align 2, !dbg !2000, !tbaa !302
  %700 = zext i16 %699 to i32, !dbg !2000
  %701 = load i16, i16* %6, align 2, !dbg !2001, !tbaa !302
  %702 = zext i16 %701 to i32, !dbg !2002
  %703 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %702, !dbg !2002
  %704 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %703, i32 0, i32 12, !dbg !2003
  %705 = load i16, i16* %704, align 2, !dbg !2003, !tbaa !365
  %706 = zext i16 %705 to i32, !dbg !2002
  %707 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), i32 %700, i32 %706), !dbg !2004
  br label %708, !dbg !2004

708:                                              ; preds = %698
  %709 = load i16, i16* %6, align 2, !dbg !2005, !tbaa !302
  %710 = add i16 %709, 1, !dbg !2005
  store i16 %710, i16* %6, align 2, !dbg !2005, !tbaa !302
  br label %693, !dbg !2006, !llvm.loop !2007

711:                                              ; preds = %693
  br label %712, !dbg !2008

712:                                              ; preds = %711, %686
  store i16 0, i16* %6, align 2, !dbg !2009, !tbaa !302
  br label %713, !dbg !2011

713:                                              ; preds = %728, %712
  %714 = load i16, i16* %6, align 2, !dbg !2012, !tbaa !302
  %715 = zext i16 %714 to i32, !dbg !2012
  %716 = load i32, i32* @default_num_contexts, align 4, !dbg !2014, !tbaa !827
  %717 = icmp ult i32 %715, %716, !dbg !2015
  br i1 %717, label %718, label %731, !dbg !2016

718:                                              ; preds = %713
  %719 = load i16, i16* %6, align 2, !dbg !2017, !tbaa !302
  %720 = zext i16 %719 to i32, !dbg !2017
  %721 = load i16, i16* %6, align 2, !dbg !2018, !tbaa !302
  %722 = zext i16 %721 to i32, !dbg !2019
  %723 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 %722, !dbg !2019
  %724 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %723, i32 0, i32 9, !dbg !2020
  %725 = load i16, i16* %724, align 4, !dbg !2020, !tbaa !359
  %726 = zext i16 %725 to i32, !dbg !2019
  %727 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i32 %720, i32 %726), !dbg !2021
  br label %728, !dbg !2021

728:                                              ; preds = %718
  %729 = load i16, i16* %6, align 2, !dbg !2022, !tbaa !302
  %730 = add i16 %729, 1, !dbg !2022
  store i16 %730, i16* %6, align 2, !dbg !2022, !tbaa !302
  br label %713, !dbg !2023, !llvm.loop !2024

731:                                              ; preds = %713
  %732 = load i16, i16* %10, align 2, !dbg !2026, !tbaa !302
  %733 = sext i16 %732 to i32, !dbg !2026
  %734 = icmp eq i32 %733, 0, !dbg !2028
  br i1 %734, label %735, label %754, !dbg !2029

735:                                              ; preds = %731
  %736 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.28, i32 0, i32 0)), !dbg !2030
  %737 = load i16, i16* %9, align 2, !dbg !2032, !tbaa !302
  %738 = sext i16 %737 to i32, !dbg !2032
  %739 = icmp eq i32 %738, 3, !dbg !2034
  br i1 %739, label %740, label %753, !dbg !2035

740:                                              ; preds = %735
  %741 = load i32, i32* @default_num_contexts, align 4, !dbg !2036, !tbaa !827
  %742 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !2038
  %743 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %742, i32 0, i32 5, !dbg !2039
  %744 = load i32, i32* %743, align 4, !dbg !2039, !tbaa !1287
  %745 = mul i32 %741, %744, !dbg !2040
  %746 = uitofp i32 %745 to double, !dbg !2036
  %747 = load i32, i32* %12, align 4, !dbg !2041, !tbaa !827
  %748 = call arm_aapcscc double @time_in_secs(i32 %747), !dbg !2042
  %749 = fdiv double %746, %748, !dbg !2043
  %750 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), double %749, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !2044
  %751 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)), !dbg !2045
  %752 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)), !dbg !2046
  br label %753, !dbg !2047

753:                                              ; preds = %740, %735
  br label %754, !dbg !2048

754:                                              ; preds = %753, %731
  %755 = load i16, i16* %10, align 2, !dbg !2049, !tbaa !302
  %756 = sext i16 %755 to i32, !dbg !2049
  %757 = icmp sgt i32 %756, 0, !dbg !2051
  br i1 %757, label %758, label %760, !dbg !2052

758:                                              ; preds = %754
  %759 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0)), !dbg !2053
  br label %760, !dbg !2053

760:                                              ; preds = %758, %754
  %761 = load i16, i16* %10, align 2, !dbg !2054, !tbaa !302
  %762 = sext i16 %761 to i32, !dbg !2054
  %763 = icmp slt i32 %762, 0, !dbg !2056
  br i1 %763, label %764, label %766, !dbg !2057

764:                                              ; preds = %760
  %765 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.33, i32 0, i32 0)), !dbg !2058
  br label %766, !dbg !2058

766:                                              ; preds = %764, %760
  %767 = getelementptr inbounds [1 x %struct.RESULTS_S], [1 x %struct.RESULTS_S]* %13, i32 0, i32 0, !dbg !2059
  %768 = getelementptr inbounds %struct.RESULTS_S, %struct.RESULTS_S* %767, i32 0, i32 14, !dbg !2060
  call arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S* %768), !dbg !2061
  %769 = bitcast [2000 x i8]* %14 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 2000, i8* %769) #4, !dbg !2062
  %770 = bitcast [1 x %struct.RESULTS_S]* %13 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 68, i8* %770) #4, !dbg !2062
  %771 = bitcast i32* %12 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %771) #4, !dbg !2062
  %772 = bitcast i16* %11 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %772) #4, !dbg !2062
  %773 = bitcast i16* %10 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %773) #4, !dbg !2062
  %774 = bitcast i16* %9 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %774) #4, !dbg !2062
  %775 = bitcast i16* %8 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %775) #4, !dbg !2062
  %776 = bitcast i16* %7 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %776) #4, !dbg !2062
  %777 = bitcast i16* %6 to i8*, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %777) #4, !dbg !2062
  ret i32 0, !dbg !2063
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_matrix(%struct.MAT_PARAMS_S*, i16 signext, i16 zeroext) #0 !dbg !2064 {
  %4 = alloca %struct.MAT_PARAMS_S*, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 4
  %9 = alloca i16*, align 4
  %10 = alloca i16*, align 4
  %11 = alloca i16, align 2
  store %struct.MAT_PARAMS_S* %0, %struct.MAT_PARAMS_S** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.MAT_PARAMS_S** %4, metadata !2077, metadata !DIExpression()), !dbg !2085
  store i16 %1, i16* %5, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %5, metadata !2078, metadata !DIExpression()), !dbg !2086
  store i16 %2, i16* %6, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %6, metadata !2079, metadata !DIExpression()), !dbg !2087
  %12 = bitcast i32* %7 to i8*, !dbg !2088
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2088
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2080, metadata !DIExpression()), !dbg !2089
  %13 = load %struct.MAT_PARAMS_S*, %struct.MAT_PARAMS_S** %4, align 4, !dbg !2090, !tbaa !292
  %14 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %13, i32 0, i32 0, !dbg !2091
  %15 = load i32, i32* %14, align 4, !dbg !2091, !tbaa !2092
  store i32 %15, i32* %7, align 4, !dbg !2089, !tbaa !827
  %16 = bitcast i32** %8 to i8*, !dbg !2093
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !2093
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2081, metadata !DIExpression()), !dbg !2094
  %17 = load %struct.MAT_PARAMS_S*, %struct.MAT_PARAMS_S** %4, align 4, !dbg !2095, !tbaa !292
  %18 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %17, i32 0, i32 3, !dbg !2096
  %19 = load i32*, i32** %18, align 4, !dbg !2096, !tbaa !2097
  store i32* %19, i32** %8, align 4, !dbg !2094, !tbaa !292
  %20 = bitcast i16** %9 to i8*, !dbg !2098
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !2098
  call void @llvm.dbg.declare(metadata i16** %9, metadata !2082, metadata !DIExpression()), !dbg !2099
  %21 = load %struct.MAT_PARAMS_S*, %struct.MAT_PARAMS_S** %4, align 4, !dbg !2100, !tbaa !292
  %22 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %21, i32 0, i32 1, !dbg !2101
  %23 = load i16*, i16** %22, align 4, !dbg !2101, !tbaa !2102
  store i16* %23, i16** %9, align 4, !dbg !2099, !tbaa !292
  %24 = bitcast i16** %10 to i8*, !dbg !2103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #4, !dbg !2103
  call void @llvm.dbg.declare(metadata i16** %10, metadata !2083, metadata !DIExpression()), !dbg !2104
  %25 = load %struct.MAT_PARAMS_S*, %struct.MAT_PARAMS_S** %4, align 4, !dbg !2105, !tbaa !292
  %26 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %25, i32 0, i32 2, !dbg !2106
  %27 = load i16*, i16** %26, align 4, !dbg !2106, !tbaa !2107
  store i16* %27, i16** %10, align 4, !dbg !2104, !tbaa !292
  %28 = bitcast i16* %11 to i8*, !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %28) #4, !dbg !2108
  call void @llvm.dbg.declare(metadata i16* %11, metadata !2084, metadata !DIExpression()), !dbg !2109
  %29 = load i16, i16* %5, align 2, !dbg !2110, !tbaa !302
  store i16 %29, i16* %11, align 2, !dbg !2109, !tbaa !302
  %30 = load i32, i32* %7, align 4, !dbg !2111, !tbaa !827
  %31 = load i32*, i32** %8, align 4, !dbg !2112, !tbaa !292
  %32 = load i16*, i16** %9, align 4, !dbg !2113, !tbaa !292
  %33 = load i16*, i16** %10, align 4, !dbg !2114, !tbaa !292
  %34 = load i16, i16* %11, align 2, !dbg !2115, !tbaa !302
  %35 = call arm_aapcscc signext i16 @matrix_test(i32 %30, i32* %31, i16* %32, i16* %33, i16 signext %34), !dbg !2116
  %36 = load i16, i16* %6, align 2, !dbg !2117, !tbaa !302
  %37 = call arm_aapcscc zeroext i16 @crc16(i16 signext %35, i16 zeroext %36), !dbg !2118
  store i16 %37, i16* %6, align 2, !dbg !2119, !tbaa !302
  %38 = load i16, i16* %6, align 2, !dbg !2120, !tbaa !302
  %39 = bitcast i16* %11 to i8*, !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %39) #4, !dbg !2121
  %40 = bitcast i16** %10 to i8*, !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !2121
  %41 = bitcast i16** %9 to i8*, !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !2121
  %42 = bitcast i32** %8 to i8*, !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !2121
  %43 = bitcast i32* %7 to i8*, !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !2121
  ret i16 %38, !dbg !2122
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_test(i32, i32*, i16*, i16*, i16 signext) #0 !dbg !2123 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 4
  %8 = alloca i16*, align 4
  %9 = alloca i16*, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i32 %0, i32* %6, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2127, metadata !DIExpression()), !dbg !2134
  store i32* %1, i32** %7, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2128, metadata !DIExpression()), !dbg !2135
  store i16* %2, i16** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %8, metadata !2129, metadata !DIExpression()), !dbg !2136
  store i16* %3, i16** %9, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %9, metadata !2130, metadata !DIExpression()), !dbg !2137
  store i16 %4, i16* %10, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %10, metadata !2131, metadata !DIExpression()), !dbg !2138
  %13 = bitcast i16* %11 to i8*, !dbg !2139
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %13) #4, !dbg !2139
  call void @llvm.dbg.declare(metadata i16* %11, metadata !2132, metadata !DIExpression()), !dbg !2140
  store i16 0, i16* %11, align 2, !dbg !2140, !tbaa !302
  %14 = bitcast i16* %12 to i8*, !dbg !2141
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %14) #4, !dbg !2141
  call void @llvm.dbg.declare(metadata i16* %12, metadata !2133, metadata !DIExpression()), !dbg !2142
  %15 = load i16, i16* %10, align 2, !dbg !2143, !tbaa !302
  %16 = sext i16 %15 to i32, !dbg !2143
  %17 = or i32 61440, %16, !dbg !2143
  %18 = trunc i32 %17 to i16, !dbg !2143
  store i16 %18, i16* %12, align 2, !dbg !2142, !tbaa !302
  %19 = load i32, i32* %6, align 4, !dbg !2144, !tbaa !827
  %20 = load i16*, i16** %8, align 4, !dbg !2145, !tbaa !292
  %21 = load i16, i16* %10, align 2, !dbg !2146, !tbaa !302
  call arm_aapcscc void @matrix_add_const(i32 %19, i16* %20, i16 signext %21), !dbg !2147
  %22 = load i32, i32* %6, align 4, !dbg !2148, !tbaa !827
  %23 = load i32*, i32** %7, align 4, !dbg !2149, !tbaa !292
  %24 = load i16*, i16** %8, align 4, !dbg !2150, !tbaa !292
  %25 = load i16, i16* %10, align 2, !dbg !2151, !tbaa !302
  call arm_aapcscc void @matrix_mul_const(i32 %22, i32* %23, i16* %24, i16 signext %25), !dbg !2152
  %26 = load i32, i32* %6, align 4, !dbg !2153, !tbaa !827
  %27 = load i32*, i32** %7, align 4, !dbg !2154, !tbaa !292
  %28 = load i16, i16* %12, align 2, !dbg !2155, !tbaa !302
  %29 = call arm_aapcscc signext i16 @matrix_sum(i32 %26, i32* %27, i16 signext %28), !dbg !2156
  %30 = load i16, i16* %11, align 2, !dbg !2157, !tbaa !302
  %31 = call arm_aapcscc zeroext i16 @crc16(i16 signext %29, i16 zeroext %30), !dbg !2158
  store i16 %31, i16* %11, align 2, !dbg !2159, !tbaa !302
  %32 = load i32, i32* %6, align 4, !dbg !2160, !tbaa !827
  %33 = load i32*, i32** %7, align 4, !dbg !2161, !tbaa !292
  %34 = load i16*, i16** %8, align 4, !dbg !2162, !tbaa !292
  %35 = load i16*, i16** %9, align 4, !dbg !2163, !tbaa !292
  call arm_aapcscc void @matrix_mul_vect(i32 %32, i32* %33, i16* %34, i16* %35), !dbg !2164
  %36 = load i32, i32* %6, align 4, !dbg !2165, !tbaa !827
  %37 = load i32*, i32** %7, align 4, !dbg !2166, !tbaa !292
  %38 = load i16, i16* %12, align 2, !dbg !2167, !tbaa !302
  %39 = call arm_aapcscc signext i16 @matrix_sum(i32 %36, i32* %37, i16 signext %38), !dbg !2168
  %40 = load i16, i16* %11, align 2, !dbg !2169, !tbaa !302
  %41 = call arm_aapcscc zeroext i16 @crc16(i16 signext %39, i16 zeroext %40), !dbg !2170
  store i16 %41, i16* %11, align 2, !dbg !2171, !tbaa !302
  %42 = load i32, i32* %6, align 4, !dbg !2172, !tbaa !827
  %43 = load i32*, i32** %7, align 4, !dbg !2173, !tbaa !292
  %44 = load i16*, i16** %8, align 4, !dbg !2174, !tbaa !292
  %45 = load i16*, i16** %9, align 4, !dbg !2175, !tbaa !292
  call arm_aapcscc void @matrix_mul_matrix(i32 %42, i32* %43, i16* %44, i16* %45), !dbg !2176
  %46 = load i32, i32* %6, align 4, !dbg !2177, !tbaa !827
  %47 = load i32*, i32** %7, align 4, !dbg !2178, !tbaa !292
  %48 = load i16, i16* %12, align 2, !dbg !2179, !tbaa !302
  %49 = call arm_aapcscc signext i16 @matrix_sum(i32 %46, i32* %47, i16 signext %48), !dbg !2180
  %50 = load i16, i16* %11, align 2, !dbg !2181, !tbaa !302
  %51 = call arm_aapcscc zeroext i16 @crc16(i16 signext %49, i16 zeroext %50), !dbg !2182
  store i16 %51, i16* %11, align 2, !dbg !2183, !tbaa !302
  %52 = load i32, i32* %6, align 4, !dbg !2184, !tbaa !827
  %53 = load i32*, i32** %7, align 4, !dbg !2185, !tbaa !292
  %54 = load i16*, i16** %8, align 4, !dbg !2186, !tbaa !292
  %55 = load i16*, i16** %9, align 4, !dbg !2187, !tbaa !292
  call arm_aapcscc void @matrix_mul_matrix_bitextract(i32 %52, i32* %53, i16* %54, i16* %55), !dbg !2188
  %56 = load i32, i32* %6, align 4, !dbg !2189, !tbaa !827
  %57 = load i32*, i32** %7, align 4, !dbg !2190, !tbaa !292
  %58 = load i16, i16* %12, align 2, !dbg !2191, !tbaa !302
  %59 = call arm_aapcscc signext i16 @matrix_sum(i32 %56, i32* %57, i16 signext %58), !dbg !2192
  %60 = load i16, i16* %11, align 2, !dbg !2193, !tbaa !302
  %61 = call arm_aapcscc zeroext i16 @crc16(i16 signext %59, i16 zeroext %60), !dbg !2194
  store i16 %61, i16* %11, align 2, !dbg !2195, !tbaa !302
  %62 = load i32, i32* %6, align 4, !dbg !2196, !tbaa !827
  %63 = load i16*, i16** %8, align 4, !dbg !2197, !tbaa !292
  %64 = load i16, i16* %10, align 2, !dbg !2198, !tbaa !302
  %65 = sext i16 %64 to i32, !dbg !2198
  %66 = sub nsw i32 0, %65, !dbg !2199
  %67 = trunc i32 %66 to i16, !dbg !2199
  call arm_aapcscc void @matrix_add_const(i32 %62, i16* %63, i16 signext %67), !dbg !2200
  %68 = load i16, i16* %11, align 2, !dbg !2201, !tbaa !302
  %69 = bitcast i16* %12 to i8*, !dbg !2202
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %69) #4, !dbg !2202
  %70 = bitcast i16* %11 to i8*, !dbg !2202
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %70) #4, !dbg !2202
  ret i16 %68, !dbg !2203
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_add_const(i32, i16*, i16 signext) #0 !dbg !2204 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2208, metadata !DIExpression()), !dbg !2213
  store i16* %1, i16** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %5, metadata !2209, metadata !DIExpression()), !dbg !2214
  store i16 %2, i16* %6, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %6, metadata !2210, metadata !DIExpression()), !dbg !2215
  %9 = bitcast i32* %7 to i8*, !dbg !2216
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !2216
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2211, metadata !DIExpression()), !dbg !2217
  %10 = bitcast i32* %8 to i8*, !dbg !2216
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !2216
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2212, metadata !DIExpression()), !dbg !2218
  store i32 0, i32* %7, align 4, !dbg !2219, !tbaa !827
  br label %11, !dbg !2221

11:                                               ; preds = %38, %3
  %12 = load i32, i32* %7, align 4, !dbg !2222, !tbaa !827
  %13 = load i32, i32* %4, align 4, !dbg !2224, !tbaa !827
  %14 = icmp ult i32 %12, %13, !dbg !2225
  br i1 %14, label %15, label %41, !dbg !2226

15:                                               ; preds = %11
  store i32 0, i32* %8, align 4, !dbg !2227, !tbaa !827
  br label %16, !dbg !2230

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %8, align 4, !dbg !2231, !tbaa !827
  %18 = load i32, i32* %4, align 4, !dbg !2233, !tbaa !827
  %19 = icmp ult i32 %17, %18, !dbg !2234
  br i1 %19, label %20, label %37, !dbg !2235

20:                                               ; preds = %16
  %21 = load i16, i16* %6, align 2, !dbg !2236, !tbaa !302
  %22 = sext i16 %21 to i32, !dbg !2236
  %23 = load i16*, i16** %5, align 4, !dbg !2238, !tbaa !292
  %24 = load i32, i32* %7, align 4, !dbg !2239, !tbaa !827
  %25 = load i32, i32* %4, align 4, !dbg !2240, !tbaa !827
  %26 = mul i32 %24, %25, !dbg !2241
  %27 = load i32, i32* %8, align 4, !dbg !2242, !tbaa !827
  %28 = add i32 %26, %27, !dbg !2243
  %29 = getelementptr inbounds i16, i16* %23, i32 %28, !dbg !2238
  %30 = load i16, i16* %29, align 2, !dbg !2244, !tbaa !302
  %31 = sext i16 %30 to i32, !dbg !2244
  %32 = add nsw i32 %31, %22, !dbg !2244
  %33 = trunc i32 %32 to i16, !dbg !2244
  store i16 %33, i16* %29, align 2, !dbg !2244, !tbaa !302
  br label %34, !dbg !2245

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4, !dbg !2246, !tbaa !827
  %36 = add i32 %35, 1, !dbg !2246
  store i32 %36, i32* %8, align 4, !dbg !2246, !tbaa !827
  br label %16, !dbg !2247, !llvm.loop !2248

37:                                               ; preds = %16
  br label %38, !dbg !2250

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4, !dbg !2251, !tbaa !827
  %40 = add i32 %39, 1, !dbg !2251
  store i32 %40, i32* %7, align 4, !dbg !2251, !tbaa !827
  br label %11, !dbg !2252, !llvm.loop !2253

41:                                               ; preds = %11
  %42 = bitcast i32* %8 to i8*, !dbg !2255
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !2255
  %43 = bitcast i32* %7 to i8*, !dbg !2255
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !2255
  ret void, !dbg !2255
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_const(i32, i32*, i16*, i16 signext) #0 !dbg !2256 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i16*, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2260, metadata !DIExpression()), !dbg !2266
  store i32* %1, i32** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2261, metadata !DIExpression()), !dbg !2267
  store i16* %2, i16** %7, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %7, metadata !2262, metadata !DIExpression()), !dbg !2268
  store i16 %3, i16* %8, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %8, metadata !2263, metadata !DIExpression()), !dbg !2269
  %11 = bitcast i32* %9 to i8*, !dbg !2270
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !2270
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2264, metadata !DIExpression()), !dbg !2271
  %12 = bitcast i32* %10 to i8*, !dbg !2270
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2270
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2265, metadata !DIExpression()), !dbg !2272
  store i32 0, i32* %9, align 4, !dbg !2273, !tbaa !827
  br label %13, !dbg !2275

13:                                               ; preds = %46, %4
  %14 = load i32, i32* %9, align 4, !dbg !2276, !tbaa !827
  %15 = load i32, i32* %5, align 4, !dbg !2278, !tbaa !827
  %16 = icmp ult i32 %14, %15, !dbg !2279
  br i1 %16, label %17, label %49, !dbg !2280

17:                                               ; preds = %13
  store i32 0, i32* %10, align 4, !dbg !2281, !tbaa !827
  br label %18, !dbg !2284

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %10, align 4, !dbg !2285, !tbaa !827
  %20 = load i32, i32* %5, align 4, !dbg !2287, !tbaa !827
  %21 = icmp ult i32 %19, %20, !dbg !2288
  br i1 %21, label %22, label %45, !dbg !2289

22:                                               ; preds = %18
  %23 = load i16*, i16** %7, align 4, !dbg !2290, !tbaa !292
  %24 = load i32, i32* %9, align 4, !dbg !2292, !tbaa !827
  %25 = load i32, i32* %5, align 4, !dbg !2293, !tbaa !827
  %26 = mul i32 %24, %25, !dbg !2294
  %27 = load i32, i32* %10, align 4, !dbg !2295, !tbaa !827
  %28 = add i32 %26, %27, !dbg !2296
  %29 = getelementptr inbounds i16, i16* %23, i32 %28, !dbg !2290
  %30 = load i16, i16* %29, align 2, !dbg !2290, !tbaa !302
  %31 = sext i16 %30 to i32, !dbg !2297
  %32 = load i16, i16* %8, align 2, !dbg !2298, !tbaa !302
  %33 = sext i16 %32 to i32, !dbg !2299
  %34 = mul nsw i32 %31, %33, !dbg !2300
  %35 = load i32*, i32** %6, align 4, !dbg !2301, !tbaa !292
  %36 = load i32, i32* %9, align 4, !dbg !2302, !tbaa !827
  %37 = load i32, i32* %5, align 4, !dbg !2303, !tbaa !827
  %38 = mul i32 %36, %37, !dbg !2304
  %39 = load i32, i32* %10, align 4, !dbg !2305, !tbaa !827
  %40 = add i32 %38, %39, !dbg !2306
  %41 = getelementptr inbounds i32, i32* %35, i32 %40, !dbg !2301
  store i32 %34, i32* %41, align 4, !dbg !2307, !tbaa !827
  br label %42, !dbg !2308

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4, !dbg !2309, !tbaa !827
  %44 = add i32 %43, 1, !dbg !2309
  store i32 %44, i32* %10, align 4, !dbg !2309, !tbaa !827
  br label %18, !dbg !2310, !llvm.loop !2311

45:                                               ; preds = %18
  br label %46, !dbg !2313

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4, !dbg !2314, !tbaa !827
  %48 = add i32 %47, 1, !dbg !2314
  store i32 %48, i32* %9, align 4, !dbg !2314, !tbaa !827
  br label %13, !dbg !2315, !llvm.loop !2316

49:                                               ; preds = %13
  %50 = bitcast i32* %10 to i8*, !dbg !2318
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !2318
  %51 = bitcast i32* %9 to i8*, !dbg !2318
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !2318
  ret void, !dbg !2318
}

; Function Attrs: nounwind
define dso_local arm_aapcscc signext i16 @matrix_sum(i32, i32*, i16 signext) #0 !dbg !2319 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2323, metadata !DIExpression()), !dbg !2332
  store i32* %1, i32** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2324, metadata !DIExpression()), !dbg !2333
  store i16 %2, i16* %6, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %6, metadata !2325, metadata !DIExpression()), !dbg !2334
  %13 = bitcast i32* %7 to i8*, !dbg !2335
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !2335
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2326, metadata !DIExpression()), !dbg !2336
  store i32 0, i32* %7, align 4, !dbg !2336, !tbaa !827
  %14 = bitcast i32* %8 to i8*, !dbg !2335
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !2335
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2327, metadata !DIExpression()), !dbg !2337
  store i32 0, i32* %8, align 4, !dbg !2337, !tbaa !827
  %15 = bitcast i32* %9 to i8*, !dbg !2335
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !2335
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2328, metadata !DIExpression()), !dbg !2338
  store i32 0, i32* %9, align 4, !dbg !2338, !tbaa !827
  %16 = bitcast i16* %10 to i8*, !dbg !2339
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %16) #4, !dbg !2339
  call void @llvm.dbg.declare(metadata i16* %10, metadata !2329, metadata !DIExpression()), !dbg !2340
  store i16 0, i16* %10, align 2, !dbg !2340, !tbaa !302
  %17 = bitcast i32* %11 to i8*, !dbg !2341
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !2341
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2330, metadata !DIExpression()), !dbg !2342
  %18 = bitcast i32* %12 to i8*, !dbg !2341
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !2341
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2331, metadata !DIExpression()), !dbg !2343
  store i32 0, i32* %11, align 4, !dbg !2344, !tbaa !827
  br label %19, !dbg !2346

19:                                               ; preds = %65, %3
  %20 = load i32, i32* %11, align 4, !dbg !2347, !tbaa !827
  %21 = load i32, i32* %4, align 4, !dbg !2349, !tbaa !827
  %22 = icmp ult i32 %20, %21, !dbg !2350
  br i1 %22, label %23, label %68, !dbg !2351

23:                                               ; preds = %19
  store i32 0, i32* %12, align 4, !dbg !2352, !tbaa !827
  br label %24, !dbg !2355

24:                                               ; preds = %61, %23
  %25 = load i32, i32* %12, align 4, !dbg !2356, !tbaa !827
  %26 = load i32, i32* %4, align 4, !dbg !2358, !tbaa !827
  %27 = icmp ult i32 %25, %26, !dbg !2359
  br i1 %27, label %28, label %64, !dbg !2360

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 4, !dbg !2361, !tbaa !292
  %30 = load i32, i32* %11, align 4, !dbg !2363, !tbaa !827
  %31 = load i32, i32* %4, align 4, !dbg !2364, !tbaa !827
  %32 = mul i32 %30, %31, !dbg !2365
  %33 = load i32, i32* %12, align 4, !dbg !2366, !tbaa !827
  %34 = add i32 %32, %33, !dbg !2367
  %35 = getelementptr inbounds i32, i32* %29, i32 %34, !dbg !2361
  %36 = load i32, i32* %35, align 4, !dbg !2361, !tbaa !827
  store i32 %36, i32* %9, align 4, !dbg !2368, !tbaa !827
  %37 = load i32, i32* %9, align 4, !dbg !2369, !tbaa !827
  %38 = load i32, i32* %7, align 4, !dbg !2370, !tbaa !827
  %39 = add nsw i32 %38, %37, !dbg !2370
  store i32 %39, i32* %7, align 4, !dbg !2370, !tbaa !827
  %40 = load i32, i32* %7, align 4, !dbg !2371, !tbaa !827
  %41 = load i16, i16* %6, align 2, !dbg !2373, !tbaa !302
  %42 = sext i16 %41 to i32, !dbg !2373
  %43 = icmp sgt i32 %40, %42, !dbg !2374
  br i1 %43, label %44, label %49, !dbg !2375

44:                                               ; preds = %28
  %45 = load i16, i16* %10, align 2, !dbg !2376, !tbaa !302
  %46 = sext i16 %45 to i32, !dbg !2376
  %47 = add nsw i32 %46, 10, !dbg !2376
  %48 = trunc i32 %47 to i16, !dbg !2376
  store i16 %48, i16* %10, align 2, !dbg !2376, !tbaa !302
  store i32 0, i32* %7, align 4, !dbg !2378, !tbaa !827
  br label %59, !dbg !2379

49:                                               ; preds = %28
  %50 = load i32, i32* %9, align 4, !dbg !2380, !tbaa !827
  %51 = load i32, i32* %8, align 4, !dbg !2382, !tbaa !827
  %52 = icmp sgt i32 %50, %51, !dbg !2383
  %53 = zext i1 %52 to i64, !dbg !2384
  %54 = select i1 %52, i32 1, i32 0, !dbg !2384
  %55 = load i16, i16* %10, align 2, !dbg !2385, !tbaa !302
  %56 = sext i16 %55 to i32, !dbg !2385
  %57 = add nsw i32 %56, %54, !dbg !2385
  %58 = trunc i32 %57 to i16, !dbg !2385
  store i16 %58, i16* %10, align 2, !dbg !2385, !tbaa !302
  br label %59

59:                                               ; preds = %49, %44
  %60 = load i32, i32* %9, align 4, !dbg !2386, !tbaa !827
  store i32 %60, i32* %8, align 4, !dbg !2387, !tbaa !827
  br label %61, !dbg !2388

61:                                               ; preds = %59
  %62 = load i32, i32* %12, align 4, !dbg !2389, !tbaa !827
  %63 = add i32 %62, 1, !dbg !2389
  store i32 %63, i32* %12, align 4, !dbg !2389, !tbaa !827
  br label %24, !dbg !2390, !llvm.loop !2391

64:                                               ; preds = %24
  br label %65, !dbg !2393

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4, !dbg !2394, !tbaa !827
  %67 = add i32 %66, 1, !dbg !2394
  store i32 %67, i32* %11, align 4, !dbg !2394, !tbaa !827
  br label %19, !dbg !2395, !llvm.loop !2396

68:                                               ; preds = %19
  %69 = load i16, i16* %10, align 2, !dbg !2398, !tbaa !302
  %70 = bitcast i32* %12 to i8*, !dbg !2399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #4, !dbg !2399
  %71 = bitcast i32* %11 to i8*, !dbg !2399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #4, !dbg !2399
  %72 = bitcast i16* %10 to i8*, !dbg !2399
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %72) #4, !dbg !2399
  %73 = bitcast i32* %9 to i8*, !dbg !2399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #4, !dbg !2399
  %74 = bitcast i32* %8 to i8*, !dbg !2399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #4, !dbg !2399
  %75 = bitcast i32* %7 to i8*, !dbg !2399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #4, !dbg !2399
  ret i16 %69, !dbg !2400
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_vect(i32, i32*, i16*, i16*) #0 !dbg !2401 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i16*, align 4
  %8 = alloca i16*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2405, metadata !DIExpression()), !dbg !2411
  store i32* %1, i32** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2406, metadata !DIExpression()), !dbg !2412
  store i16* %2, i16** %7, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %7, metadata !2407, metadata !DIExpression()), !dbg !2413
  store i16* %3, i16** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %8, metadata !2408, metadata !DIExpression()), !dbg !2414
  %11 = bitcast i32* %9 to i8*, !dbg !2415
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !2415
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2409, metadata !DIExpression()), !dbg !2416
  %12 = bitcast i32* %10 to i8*, !dbg !2415
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2415
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2410, metadata !DIExpression()), !dbg !2417
  store i32 0, i32* %9, align 4, !dbg !2418, !tbaa !827
  br label %13, !dbg !2420

13:                                               ; preds = %50, %4
  %14 = load i32, i32* %9, align 4, !dbg !2421, !tbaa !827
  %15 = load i32, i32* %5, align 4, !dbg !2423, !tbaa !827
  %16 = icmp ult i32 %14, %15, !dbg !2424
  br i1 %16, label %17, label %53, !dbg !2425

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 4, !dbg !2426, !tbaa !292
  %19 = load i32, i32* %9, align 4, !dbg !2428, !tbaa !827
  %20 = getelementptr inbounds i32, i32* %18, i32 %19, !dbg !2426
  store i32 0, i32* %20, align 4, !dbg !2429, !tbaa !827
  store i32 0, i32* %10, align 4, !dbg !2430, !tbaa !827
  br label %21, !dbg !2432

21:                                               ; preds = %46, %17
  %22 = load i32, i32* %10, align 4, !dbg !2433, !tbaa !827
  %23 = load i32, i32* %5, align 4, !dbg !2435, !tbaa !827
  %24 = icmp ult i32 %22, %23, !dbg !2436
  br i1 %24, label %25, label %49, !dbg !2437

25:                                               ; preds = %21
  %26 = load i16*, i16** %7, align 4, !dbg !2438, !tbaa !292
  %27 = load i32, i32* %9, align 4, !dbg !2440, !tbaa !827
  %28 = load i32, i32* %5, align 4, !dbg !2441, !tbaa !827
  %29 = mul i32 %27, %28, !dbg !2442
  %30 = load i32, i32* %10, align 4, !dbg !2443, !tbaa !827
  %31 = add i32 %29, %30, !dbg !2444
  %32 = getelementptr inbounds i16, i16* %26, i32 %31, !dbg !2438
  %33 = load i16, i16* %32, align 2, !dbg !2438, !tbaa !302
  %34 = sext i16 %33 to i32, !dbg !2445
  %35 = load i16*, i16** %8, align 4, !dbg !2446, !tbaa !292
  %36 = load i32, i32* %10, align 4, !dbg !2447, !tbaa !827
  %37 = getelementptr inbounds i16, i16* %35, i32 %36, !dbg !2446
  %38 = load i16, i16* %37, align 2, !dbg !2446, !tbaa !302
  %39 = sext i16 %38 to i32, !dbg !2448
  %40 = mul nsw i32 %34, %39, !dbg !2449
  %41 = load i32*, i32** %6, align 4, !dbg !2450, !tbaa !292
  %42 = load i32, i32* %9, align 4, !dbg !2451, !tbaa !827
  %43 = getelementptr inbounds i32, i32* %41, i32 %42, !dbg !2450
  %44 = load i32, i32* %43, align 4, !dbg !2452, !tbaa !827
  %45 = add nsw i32 %44, %40, !dbg !2452
  store i32 %45, i32* %43, align 4, !dbg !2452, !tbaa !827
  br label %46, !dbg !2453

46:                                               ; preds = %25
  %47 = load i32, i32* %10, align 4, !dbg !2454, !tbaa !827
  %48 = add i32 %47, 1, !dbg !2454
  store i32 %48, i32* %10, align 4, !dbg !2454, !tbaa !827
  br label %21, !dbg !2455, !llvm.loop !2456

49:                                               ; preds = %21
  br label %50, !dbg !2458

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4, !dbg !2459, !tbaa !827
  %52 = add i32 %51, 1, !dbg !2459
  store i32 %52, i32* %9, align 4, !dbg !2459, !tbaa !827
  br label %13, !dbg !2460, !llvm.loop !2461

53:                                               ; preds = %13
  %54 = bitcast i32* %10 to i8*, !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !2463
  %55 = bitcast i32* %9 to i8*, !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !2463
  ret void, !dbg !2463
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix(i32, i32*, i16*, i16*) #0 !dbg !2464 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i16*, align 4
  %8 = alloca i16*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2466, metadata !DIExpression()), !dbg !2473
  store i32* %1, i32** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2467, metadata !DIExpression()), !dbg !2474
  store i16* %2, i16** %7, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %7, metadata !2468, metadata !DIExpression()), !dbg !2475
  store i16* %3, i16** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %8, metadata !2469, metadata !DIExpression()), !dbg !2476
  %12 = bitcast i32* %9 to i8*, !dbg !2477
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !2477
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2470, metadata !DIExpression()), !dbg !2478
  %13 = bitcast i32* %10 to i8*, !dbg !2477
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !2477
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2471, metadata !DIExpression()), !dbg !2479
  %14 = bitcast i32* %11 to i8*, !dbg !2477
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !2477
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2472, metadata !DIExpression()), !dbg !2480
  store i32 0, i32* %9, align 4, !dbg !2481, !tbaa !827
  br label %15, !dbg !2483

15:                                               ; preds = %73, %4
  %16 = load i32, i32* %9, align 4, !dbg !2484, !tbaa !827
  %17 = load i32, i32* %5, align 4, !dbg !2486, !tbaa !827
  %18 = icmp ult i32 %16, %17, !dbg !2487
  br i1 %18, label %19, label %76, !dbg !2488

19:                                               ; preds = %15
  store i32 0, i32* %10, align 4, !dbg !2489, !tbaa !827
  br label %20, !dbg !2492

20:                                               ; preds = %69, %19
  %21 = load i32, i32* %10, align 4, !dbg !2493, !tbaa !827
  %22 = load i32, i32* %5, align 4, !dbg !2495, !tbaa !827
  %23 = icmp ult i32 %21, %22, !dbg !2496
  br i1 %23, label %24, label %72, !dbg !2497

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 4, !dbg !2498, !tbaa !292
  %26 = load i32, i32* %9, align 4, !dbg !2500, !tbaa !827
  %27 = load i32, i32* %5, align 4, !dbg !2501, !tbaa !827
  %28 = mul i32 %26, %27, !dbg !2502
  %29 = load i32, i32* %10, align 4, !dbg !2503, !tbaa !827
  %30 = add i32 %28, %29, !dbg !2504
  %31 = getelementptr inbounds i32, i32* %25, i32 %30, !dbg !2498
  store i32 0, i32* %31, align 4, !dbg !2505, !tbaa !827
  store i32 0, i32* %11, align 4, !dbg !2506, !tbaa !827
  br label %32, !dbg !2508

32:                                               ; preds = %65, %24
  %33 = load i32, i32* %11, align 4, !dbg !2509, !tbaa !827
  %34 = load i32, i32* %5, align 4, !dbg !2511, !tbaa !827
  %35 = icmp ult i32 %33, %34, !dbg !2512
  br i1 %35, label %36, label %68, !dbg !2513

36:                                               ; preds = %32
  %37 = load i16*, i16** %7, align 4, !dbg !2514, !tbaa !292
  %38 = load i32, i32* %9, align 4, !dbg !2516, !tbaa !827
  %39 = load i32, i32* %5, align 4, !dbg !2517, !tbaa !827
  %40 = mul i32 %38, %39, !dbg !2518
  %41 = load i32, i32* %11, align 4, !dbg !2519, !tbaa !827
  %42 = add i32 %40, %41, !dbg !2520
  %43 = getelementptr inbounds i16, i16* %37, i32 %42, !dbg !2514
  %44 = load i16, i16* %43, align 2, !dbg !2514, !tbaa !302
  %45 = sext i16 %44 to i32, !dbg !2521
  %46 = load i16*, i16** %8, align 4, !dbg !2522, !tbaa !292
  %47 = load i32, i32* %11, align 4, !dbg !2523, !tbaa !827
  %48 = load i32, i32* %5, align 4, !dbg !2524, !tbaa !827
  %49 = mul i32 %47, %48, !dbg !2525
  %50 = load i32, i32* %10, align 4, !dbg !2526, !tbaa !827
  %51 = add i32 %49, %50, !dbg !2527
  %52 = getelementptr inbounds i16, i16* %46, i32 %51, !dbg !2522
  %53 = load i16, i16* %52, align 2, !dbg !2522, !tbaa !302
  %54 = sext i16 %53 to i32, !dbg !2528
  %55 = mul nsw i32 %45, %54, !dbg !2529
  %56 = load i32*, i32** %6, align 4, !dbg !2530, !tbaa !292
  %57 = load i32, i32* %9, align 4, !dbg !2531, !tbaa !827
  %58 = load i32, i32* %5, align 4, !dbg !2532, !tbaa !827
  %59 = mul i32 %57, %58, !dbg !2533
  %60 = load i32, i32* %10, align 4, !dbg !2534, !tbaa !827
  %61 = add i32 %59, %60, !dbg !2535
  %62 = getelementptr inbounds i32, i32* %56, i32 %61, !dbg !2530
  %63 = load i32, i32* %62, align 4, !dbg !2536, !tbaa !827
  %64 = add nsw i32 %63, %55, !dbg !2536
  store i32 %64, i32* %62, align 4, !dbg !2536, !tbaa !827
  br label %65, !dbg !2537

65:                                               ; preds = %36
  %66 = load i32, i32* %11, align 4, !dbg !2538, !tbaa !827
  %67 = add i32 %66, 1, !dbg !2538
  store i32 %67, i32* %11, align 4, !dbg !2538, !tbaa !827
  br label %32, !dbg !2539, !llvm.loop !2540

68:                                               ; preds = %32
  br label %69, !dbg !2542

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4, !dbg !2543, !tbaa !827
  %71 = add i32 %70, 1, !dbg !2543
  store i32 %71, i32* %10, align 4, !dbg !2543, !tbaa !827
  br label %20, !dbg !2544, !llvm.loop !2545

72:                                               ; preds = %20
  br label %73, !dbg !2547

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4, !dbg !2548, !tbaa !827
  %75 = add i32 %74, 1, !dbg !2548
  store i32 %75, i32* %9, align 4, !dbg !2548, !tbaa !827
  br label %15, !dbg !2549, !llvm.loop !2550

76:                                               ; preds = %15
  %77 = bitcast i32* %11 to i8*, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #4, !dbg !2552
  %78 = bitcast i32* %10 to i8*, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #4, !dbg !2552
  %79 = bitcast i32* %9 to i8*, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #4, !dbg !2552
  ret void, !dbg !2552
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @matrix_mul_matrix_bitextract(i32, i32*, i16*, i16*) #0 !dbg !2553 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i16*, align 4
  %8 = alloca i16*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2555, metadata !DIExpression()), !dbg !2572
  store i32* %1, i32** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2556, metadata !DIExpression()), !dbg !2573
  store i16* %2, i16** %7, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %7, metadata !2557, metadata !DIExpression()), !dbg !2574
  store i16* %3, i16** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i16** %8, metadata !2558, metadata !DIExpression()), !dbg !2575
  %13 = bitcast i32* %9 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !2576
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2559, metadata !DIExpression()), !dbg !2577
  %14 = bitcast i32* %10 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !2576
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2560, metadata !DIExpression()), !dbg !2578
  %15 = bitcast i32* %11 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !2576
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2561, metadata !DIExpression()), !dbg !2579
  store i32 0, i32* %9, align 4, !dbg !2580, !tbaa !827
  br label %16, !dbg !2581

16:                                               ; preds = %83, %4
  %17 = load i32, i32* %9, align 4, !dbg !2582, !tbaa !827
  %18 = load i32, i32* %5, align 4, !dbg !2583, !tbaa !827
  %19 = icmp ult i32 %17, %18, !dbg !2584
  br i1 %19, label %20, label %86, !dbg !2585

20:                                               ; preds = %16
  store i32 0, i32* %10, align 4, !dbg !2586, !tbaa !827
  br label %21, !dbg !2587

21:                                               ; preds = %79, %20
  %22 = load i32, i32* %10, align 4, !dbg !2588, !tbaa !827
  %23 = load i32, i32* %5, align 4, !dbg !2589, !tbaa !827
  %24 = icmp ult i32 %22, %23, !dbg !2590
  br i1 %24, label %25, label %82, !dbg !2591

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 4, !dbg !2592, !tbaa !292
  %27 = load i32, i32* %9, align 4, !dbg !2593, !tbaa !827
  %28 = load i32, i32* %5, align 4, !dbg !2594, !tbaa !827
  %29 = mul i32 %27, %28, !dbg !2595
  %30 = load i32, i32* %10, align 4, !dbg !2596, !tbaa !827
  %31 = add i32 %29, %30, !dbg !2597
  %32 = getelementptr inbounds i32, i32* %26, i32 %31, !dbg !2592
  store i32 0, i32* %32, align 4, !dbg !2598, !tbaa !827
  store i32 0, i32* %11, align 4, !dbg !2599, !tbaa !827
  br label %33, !dbg !2600

33:                                               ; preds = %75, %25
  %34 = load i32, i32* %11, align 4, !dbg !2601, !tbaa !827
  %35 = load i32, i32* %5, align 4, !dbg !2602, !tbaa !827
  %36 = icmp ult i32 %34, %35, !dbg !2603
  br i1 %36, label %37, label %78, !dbg !2604

37:                                               ; preds = %33
  %38 = bitcast i32* %12 to i8*, !dbg !2605
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #4, !dbg !2605
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2562, metadata !DIExpression()), !dbg !2606
  %39 = load i16*, i16** %7, align 4, !dbg !2607, !tbaa !292
  %40 = load i32, i32* %9, align 4, !dbg !2608, !tbaa !827
  %41 = load i32, i32* %5, align 4, !dbg !2609, !tbaa !827
  %42 = mul i32 %40, %41, !dbg !2610
  %43 = load i32, i32* %11, align 4, !dbg !2611, !tbaa !827
  %44 = add i32 %42, %43, !dbg !2612
  %45 = getelementptr inbounds i16, i16* %39, i32 %44, !dbg !2607
  %46 = load i16, i16* %45, align 2, !dbg !2607, !tbaa !302
  %47 = sext i16 %46 to i32, !dbg !2613
  %48 = load i16*, i16** %8, align 4, !dbg !2614, !tbaa !292
  %49 = load i32, i32* %11, align 4, !dbg !2615, !tbaa !827
  %50 = load i32, i32* %5, align 4, !dbg !2616, !tbaa !827
  %51 = mul i32 %49, %50, !dbg !2617
  %52 = load i32, i32* %10, align 4, !dbg !2618, !tbaa !827
  %53 = add i32 %51, %52, !dbg !2619
  %54 = getelementptr inbounds i16, i16* %48, i32 %53, !dbg !2614
  %55 = load i16, i16* %54, align 2, !dbg !2614, !tbaa !302
  %56 = sext i16 %55 to i32, !dbg !2620
  %57 = mul nsw i32 %47, %56, !dbg !2621
  store i32 %57, i32* %12, align 4, !dbg !2606, !tbaa !827
  %58 = load i32, i32* %12, align 4, !dbg !2622, !tbaa !827
  %59 = ashr i32 %58, 2, !dbg !2622
  %60 = and i32 %59, 15, !dbg !2622
  %61 = load i32, i32* %12, align 4, !dbg !2623, !tbaa !827
  %62 = ashr i32 %61, 5, !dbg !2623
  %63 = and i32 %62, 127, !dbg !2623
  %64 = mul i32 %60, %63, !dbg !2624
  %65 = load i32*, i32** %6, align 4, !dbg !2625, !tbaa !292
  %66 = load i32, i32* %9, align 4, !dbg !2626, !tbaa !827
  %67 = load i32, i32* %5, align 4, !dbg !2627, !tbaa !827
  %68 = mul i32 %66, %67, !dbg !2628
  %69 = load i32, i32* %10, align 4, !dbg !2629, !tbaa !827
  %70 = add i32 %68, %69, !dbg !2630
  %71 = getelementptr inbounds i32, i32* %65, i32 %70, !dbg !2625
  %72 = load i32, i32* %71, align 4, !dbg !2631, !tbaa !827
  %73 = add i32 %72, %64, !dbg !2631
  store i32 %73, i32* %71, align 4, !dbg !2631, !tbaa !827
  %74 = bitcast i32* %12 to i8*, !dbg !2632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #4, !dbg !2632
  br label %75, !dbg !2633

75:                                               ; preds = %37
  %76 = load i32, i32* %11, align 4, !dbg !2634, !tbaa !827
  %77 = add i32 %76, 1, !dbg !2634
  store i32 %77, i32* %11, align 4, !dbg !2634, !tbaa !827
  br label %33, !dbg !2635, !llvm.loop !2636

78:                                               ; preds = %33
  br label %79, !dbg !2638

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4, !dbg !2639, !tbaa !827
  %81 = add i32 %80, 1, !dbg !2639
  store i32 %81, i32* %10, align 4, !dbg !2639, !tbaa !827
  br label %21, !dbg !2640, !llvm.loop !2641

82:                                               ; preds = %21
  br label %83, !dbg !2643

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4, !dbg !2644, !tbaa !827
  %85 = add i32 %84, 1, !dbg !2644
  store i32 %85, i32* %9, align 4, !dbg !2644, !tbaa !827
  br label %16, !dbg !2645, !llvm.loop !2646

86:                                               ; preds = %16
  %87 = bitcast i32* %11 to i8*, !dbg !2648
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #4, !dbg !2648
  %88 = bitcast i32* %10 to i8*, !dbg !2648
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #4, !dbg !2648
  %89 = bitcast i32* %9 to i8*, !dbg !2648
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #4, !dbg !2648
  ret void, !dbg !2648
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_init_matrix(i32, i8*, i32, %struct.MAT_PARAMS_S*) #0 !dbg !2649 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.MAT_PARAMS_S*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16*, align 4
  %11 = alloca i16*, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2653, metadata !DIExpression()), !dbg !2664
  store i8* %1, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2654, metadata !DIExpression()), !dbg !2665
  store i32 %2, i32* %7, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2655, metadata !DIExpression()), !dbg !2666
  store %struct.MAT_PARAMS_S* %3, %struct.MAT_PARAMS_S** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.MAT_PARAMS_S** %8, metadata !2656, metadata !DIExpression()), !dbg !2667
  %16 = bitcast i32* %9 to i8*, !dbg !2668
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !2668
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2657, metadata !DIExpression()), !dbg !2669
  store i32 0, i32* %9, align 4, !dbg !2669, !tbaa !827
  %17 = bitcast i16** %10 to i8*, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !2670
  call void @llvm.dbg.declare(metadata i16** %10, metadata !2658, metadata !DIExpression()), !dbg !2671
  %18 = bitcast i16** %11 to i8*, !dbg !2672
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !2672
  call void @llvm.dbg.declare(metadata i16** %11, metadata !2659, metadata !DIExpression()), !dbg !2673
  %19 = bitcast i32* %12 to i8*, !dbg !2674
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !2674
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2660, metadata !DIExpression()), !dbg !2675
  store i32 1, i32* %12, align 4, !dbg !2675, !tbaa !827
  %20 = bitcast i16* %13 to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %20) #4, !dbg !2676
  call void @llvm.dbg.declare(metadata i16* %13, metadata !2661, metadata !DIExpression()), !dbg !2677
  %21 = bitcast i32* %14 to i8*, !dbg !2678
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !2678
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2662, metadata !DIExpression()), !dbg !2679
  store i32 0, i32* %14, align 4, !dbg !2679, !tbaa !827
  %22 = bitcast i32* %15 to i8*, !dbg !2678
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #4, !dbg !2678
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2663, metadata !DIExpression()), !dbg !2680
  store i32 0, i32* %15, align 4, !dbg !2680, !tbaa !827
  %23 = load i32, i32* %7, align 4, !dbg !2681, !tbaa !827
  %24 = icmp eq i32 %23, 0, !dbg !2683
  br i1 %24, label %25, label %26, !dbg !2684

25:                                               ; preds = %4
  store i32 1, i32* %7, align 4, !dbg !2685, !tbaa !827
  br label %26, !dbg !2686

26:                                               ; preds = %25, %4
  br label %27, !dbg !2687

27:                                               ; preds = %31, %26
  %28 = load i32, i32* %15, align 4, !dbg !2688, !tbaa !827
  %29 = load i32, i32* %5, align 4, !dbg !2689, !tbaa !827
  %30 = icmp ult i32 %28, %29, !dbg !2690
  br i1 %30, label %31, label %39, !dbg !2687

31:                                               ; preds = %27
  %32 = load i32, i32* %14, align 4, !dbg !2691, !tbaa !827
  %33 = add i32 %32, 1, !dbg !2691
  store i32 %33, i32* %14, align 4, !dbg !2691, !tbaa !827
  %34 = load i32, i32* %14, align 4, !dbg !2693, !tbaa !827
  %35 = load i32, i32* %14, align 4, !dbg !2694, !tbaa !827
  %36 = mul i32 %34, %35, !dbg !2695
  %37 = mul i32 %36, 2, !dbg !2696
  %38 = mul i32 %37, 4, !dbg !2697
  store i32 %38, i32* %15, align 4, !dbg !2698, !tbaa !827
  br label %27, !dbg !2687, !llvm.loop !2699

39:                                               ; preds = %27
  %40 = load i32, i32* %14, align 4, !dbg !2701, !tbaa !827
  %41 = sub i32 %40, 1, !dbg !2702
  store i32 %41, i32* %9, align 4, !dbg !2703, !tbaa !827
  %42 = load i8*, i8** %6, align 4, !dbg !2704, !tbaa !292
  %43 = ptrtoint i8* %42 to i32, !dbg !2704
  %44 = sub i32 %43, 1, !dbg !2704
  %45 = and i32 %44, -4, !dbg !2704
  %46 = add i32 4, %45, !dbg !2704
  %47 = inttoptr i32 %46 to i8*, !dbg !2704
  %48 = bitcast i8* %47 to i16*, !dbg !2705
  store i16* %48, i16** %10, align 4, !dbg !2706, !tbaa !292
  %49 = load i16*, i16** %10, align 4, !dbg !2707, !tbaa !292
  %50 = load i32, i32* %9, align 4, !dbg !2708, !tbaa !827
  %51 = load i32, i32* %9, align 4, !dbg !2709, !tbaa !827
  %52 = mul i32 %50, %51, !dbg !2710
  %53 = getelementptr inbounds i16, i16* %49, i32 %52, !dbg !2711
  store i16* %53, i16** %11, align 4, !dbg !2712, !tbaa !292
  store i32 0, i32* %14, align 4, !dbg !2713, !tbaa !827
  br label %54, !dbg !2715

54:                                               ; preds = %107, %39
  %55 = load i32, i32* %14, align 4, !dbg !2716, !tbaa !827
  %56 = load i32, i32* %9, align 4, !dbg !2718, !tbaa !827
  %57 = icmp ult i32 %55, %56, !dbg !2719
  br i1 %57, label %58, label %110, !dbg !2720

58:                                               ; preds = %54
  store i32 0, i32* %15, align 4, !dbg !2721, !tbaa !827
  br label %59, !dbg !2724

59:                                               ; preds = %103, %58
  %60 = load i32, i32* %15, align 4, !dbg !2725, !tbaa !827
  %61 = load i32, i32* %9, align 4, !dbg !2727, !tbaa !827
  %62 = icmp ult i32 %60, %61, !dbg !2728
  br i1 %62, label %63, label %106, !dbg !2729

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4, !dbg !2730, !tbaa !827
  %65 = load i32, i32* %7, align 4, !dbg !2732, !tbaa !827
  %66 = mul nsw i32 %64, %65, !dbg !2733
  %67 = srem i32 %66, 65536, !dbg !2734
  store i32 %67, i32* %7, align 4, !dbg !2735, !tbaa !827
  %68 = load i32, i32* %7, align 4, !dbg !2736, !tbaa !827
  %69 = load i32, i32* %12, align 4, !dbg !2737, !tbaa !827
  %70 = add nsw i32 %68, %69, !dbg !2738
  %71 = trunc i32 %70 to i16, !dbg !2739
  store i16 %71, i16* %13, align 2, !dbg !2740, !tbaa !302
  %72 = load i16, i16* %13, align 2, !dbg !2741, !tbaa !302
  %73 = sext i16 %72 to i32, !dbg !2741
  %74 = and i32 %73, 65535, !dbg !2741
  %75 = trunc i32 %74 to i16, !dbg !2741
  store i16 %75, i16* %13, align 2, !dbg !2742, !tbaa !302
  %76 = load i16, i16* %13, align 2, !dbg !2743, !tbaa !302
  %77 = load i16*, i16** %11, align 4, !dbg !2744, !tbaa !292
  %78 = load i32, i32* %14, align 4, !dbg !2745, !tbaa !827
  %79 = load i32, i32* %9, align 4, !dbg !2746, !tbaa !827
  %80 = mul i32 %78, %79, !dbg !2747
  %81 = load i32, i32* %15, align 4, !dbg !2748, !tbaa !827
  %82 = add i32 %80, %81, !dbg !2749
  %83 = getelementptr inbounds i16, i16* %77, i32 %82, !dbg !2744
  store i16 %76, i16* %83, align 2, !dbg !2750, !tbaa !302
  %84 = load i16, i16* %13, align 2, !dbg !2751, !tbaa !302
  %85 = sext i16 %84 to i32, !dbg !2751
  %86 = load i32, i32* %12, align 4, !dbg !2752, !tbaa !827
  %87 = add nsw i32 %85, %86, !dbg !2753
  %88 = trunc i32 %87 to i16, !dbg !2754
  store i16 %88, i16* %13, align 2, !dbg !2755, !tbaa !302
  %89 = load i16, i16* %13, align 2, !dbg !2756, !tbaa !302
  %90 = sext i16 %89 to i32, !dbg !2756
  %91 = and i32 %90, 255, !dbg !2756
  %92 = trunc i32 %91 to i16, !dbg !2756
  store i16 %92, i16* %13, align 2, !dbg !2757, !tbaa !302
  %93 = load i16, i16* %13, align 2, !dbg !2758, !tbaa !302
  %94 = load i16*, i16** %10, align 4, !dbg !2759, !tbaa !292
  %95 = load i32, i32* %14, align 4, !dbg !2760, !tbaa !827
  %96 = load i32, i32* %9, align 4, !dbg !2761, !tbaa !827
  %97 = mul i32 %95, %96, !dbg !2762
  %98 = load i32, i32* %15, align 4, !dbg !2763, !tbaa !827
  %99 = add i32 %97, %98, !dbg !2764
  %100 = getelementptr inbounds i16, i16* %94, i32 %99, !dbg !2759
  store i16 %93, i16* %100, align 2, !dbg !2765, !tbaa !302
  %101 = load i32, i32* %12, align 4, !dbg !2766, !tbaa !827
  %102 = add nsw i32 %101, 1, !dbg !2766
  store i32 %102, i32* %12, align 4, !dbg !2766, !tbaa !827
  br label %103, !dbg !2767

103:                                              ; preds = %63
  %104 = load i32, i32* %15, align 4, !dbg !2768, !tbaa !827
  %105 = add i32 %104, 1, !dbg !2768
  store i32 %105, i32* %15, align 4, !dbg !2768, !tbaa !827
  br label %59, !dbg !2769, !llvm.loop !2770

106:                                              ; preds = %59
  br label %107, !dbg !2772

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4, !dbg !2773, !tbaa !827
  %109 = add i32 %108, 1, !dbg !2773
  store i32 %109, i32* %14, align 4, !dbg !2773, !tbaa !827
  br label %54, !dbg !2774, !llvm.loop !2775

110:                                              ; preds = %54
  %111 = load i16*, i16** %10, align 4, !dbg !2777, !tbaa !292
  %112 = load %struct.MAT_PARAMS_S*, %struct.MAT_PARAMS_S** %8, align 4, !dbg !2778, !tbaa !292
  %113 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %112, i32 0, i32 1, !dbg !2779
  store i16* %111, i16** %113, align 4, !dbg !2780, !tbaa !2102
  %114 = load i16*, i16** %11, align 4, !dbg !2781, !tbaa !292
  %115 = load %struct.MAT_PARAMS_S*, %struct.MAT_PARAMS_S** %8, align 4, !dbg !2782, !tbaa !292
  %116 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %115, i32 0, i32 2, !dbg !2783
  store i16* %114, i16** %116, align 4, !dbg !2784, !tbaa !2107
  %117 = load i16*, i16** %11, align 4, !dbg !2785, !tbaa !292
  %118 = load i32, i32* %9, align 4, !dbg !2785, !tbaa !827
  %119 = load i32, i32* %9, align 4, !dbg !2785, !tbaa !827
  %120 = mul i32 %118, %119, !dbg !2785
  %121 = getelementptr inbounds i16, i16* %117, i32 %120, !dbg !2785
  %122 = ptrtoint i16* %121 to i32, !dbg !2785
  %123 = sub i32 %122, 1, !dbg !2785
  %124 = and i32 %123, -4, !dbg !2785
  %125 = add i32 4, %124, !dbg !2785
  %126 = inttoptr i32 %125 to i8*, !dbg !2785
  %127 = bitcast i8* %126 to i32*, !dbg !2786
  %128 = load %struct.MAT_PARAMS_S*, %struct.MAT_PARAMS_S** %8, align 4, !dbg !2787, !tbaa !292
  %129 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %128, i32 0, i32 3, !dbg !2788
  store i32* %127, i32** %129, align 4, !dbg !2789, !tbaa !2097
  %130 = load i32, i32* %9, align 4, !dbg !2790, !tbaa !827
  %131 = load %struct.MAT_PARAMS_S*, %struct.MAT_PARAMS_S** %8, align 4, !dbg !2791, !tbaa !292
  %132 = getelementptr inbounds %struct.MAT_PARAMS_S, %struct.MAT_PARAMS_S* %131, i32 0, i32 0, !dbg !2792
  store i32 %130, i32* %132, align 4, !dbg !2793, !tbaa !2092
  %133 = load i32, i32* %9, align 4, !dbg !2794, !tbaa !827
  %134 = bitcast i32* %15 to i8*, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %134) #4, !dbg !2795
  %135 = bitcast i32* %14 to i8*, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %135) #4, !dbg !2795
  %136 = bitcast i16* %13 to i8*, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %136) #4, !dbg !2795
  %137 = bitcast i32* %12 to i8*, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %137) #4, !dbg !2795
  %138 = bitcast i16** %11 to i8*, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %138) #4, !dbg !2795
  %139 = bitcast i16** %10 to i8*, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %139) #4, !dbg !2795
  %140 = bitcast i32* %9 to i8*, !dbg !2795
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #4, !dbg !2795
  ret i32 %133, !dbg !2796
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @core_bench_state(i32, i8*, i16 signext, i16 signext, i16 signext, i16 zeroext) #0 !dbg !2797 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca [8 x i32], align 4
  %14 = alloca [8 x i32], align 4
  %15 = alloca i8*, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2801, metadata !DIExpression()), !dbg !2818
  store i8* %1, i8** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2802, metadata !DIExpression()), !dbg !2819
  store i16 %2, i16* %9, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %9, metadata !2803, metadata !DIExpression()), !dbg !2820
  store i16 %3, i16* %10, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %10, metadata !2804, metadata !DIExpression()), !dbg !2821
  store i16 %4, i16* %11, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %11, metadata !2805, metadata !DIExpression()), !dbg !2822
  store i16 %5, i16* %12, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %12, metadata !2806, metadata !DIExpression()), !dbg !2823
  %19 = bitcast [8 x i32]* %13 to i8*, !dbg !2824
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %19) #4, !dbg !2824
  call void @llvm.dbg.declare(metadata [8 x i32]* %13, metadata !2807, metadata !DIExpression()), !dbg !2825
  %20 = bitcast [8 x i32]* %14 to i8*, !dbg !2826
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %20) #4, !dbg !2826
  call void @llvm.dbg.declare(metadata [8 x i32]* %14, metadata !2811, metadata !DIExpression()), !dbg !2827
  %21 = bitcast i8** %15 to i8*, !dbg !2828
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !2828
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2812, metadata !DIExpression()), !dbg !2829
  %22 = load i8*, i8** %8, align 4, !dbg !2830, !tbaa !292
  store i8* %22, i8** %15, align 4, !dbg !2829, !tbaa !292
  %23 = bitcast i32* %16 to i8*, !dbg !2831
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #4, !dbg !2831
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2813, metadata !DIExpression()), !dbg !2832
  store i32 0, i32* %16, align 4, !dbg !2833, !tbaa !827
  br label %24, !dbg !2835

24:                                               ; preds = %32, %6
  %25 = load i32, i32* %16, align 4, !dbg !2836, !tbaa !827
  %26 = icmp ult i32 %25, 8, !dbg !2838
  br i1 %26, label %27, label %35, !dbg !2839

27:                                               ; preds = %24
  %28 = load i32, i32* %16, align 4, !dbg !2840, !tbaa !827
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i32 0, i32 %28, !dbg !2842
  store i32 0, i32* %29, align 4, !dbg !2843, !tbaa !827
  %30 = load i32, i32* %16, align 4, !dbg !2844, !tbaa !827
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i32 0, i32 %30, !dbg !2845
  store i32 0, i32* %31, align 4, !dbg !2846, !tbaa !827
  br label %32, !dbg !2847

32:                                               ; preds = %27
  %33 = load i32, i32* %16, align 4, !dbg !2848, !tbaa !827
  %34 = add i32 %33, 1, !dbg !2848
  store i32 %34, i32* %16, align 4, !dbg !2848, !tbaa !827
  br label %24, !dbg !2849, !llvm.loop !2850

35:                                               ; preds = %24
  br label %36, !dbg !2852

36:                                               ; preds = %41, %35
  %37 = load i8*, i8** %15, align 4, !dbg !2853, !tbaa !292
  %38 = load i8, i8* %37, align 1, !dbg !2854, !tbaa !312
  %39 = zext i8 %38 to i32, !dbg !2854
  %40 = icmp ne i32 %39, 0, !dbg !2855
  br i1 %40, label %41, label %50, !dbg !2852

41:                                               ; preds = %36
  %42 = bitcast i32* %17 to i8*, !dbg !2856
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #4, !dbg !2856
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2814, metadata !DIExpression()), !dbg !2857
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i32 0, i32 0, !dbg !2858
  %44 = call arm_aapcscc i32 @core_state_transition(i8** %15, i32* %43), !dbg !2859
  store i32 %44, i32* %17, align 4, !dbg !2857, !tbaa !312
  %45 = load i32, i32* %17, align 4, !dbg !2860, !tbaa !312
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i32 0, i32 %45, !dbg !2861
  %47 = load i32, i32* %46, align 4, !dbg !2862, !tbaa !827
  %48 = add i32 %47, 1, !dbg !2862
  store i32 %48, i32* %46, align 4, !dbg !2862, !tbaa !827
  %49 = bitcast i32* %17 to i8*, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !2863
  br label %36, !dbg !2852, !llvm.loop !2864

50:                                               ; preds = %36
  %51 = load i8*, i8** %8, align 4, !dbg !2865, !tbaa !292
  store i8* %51, i8** %15, align 4, !dbg !2866, !tbaa !292
  br label %52, !dbg !2867

52:                                               ; preds = %72, %50
  %53 = load i8*, i8** %15, align 4, !dbg !2868, !tbaa !292
  %54 = load i8*, i8** %8, align 4, !dbg !2869, !tbaa !292
  %55 = load i32, i32* %7, align 4, !dbg !2870, !tbaa !827
  %56 = getelementptr inbounds i8, i8* %54, i32 %55, !dbg !2871
  %57 = icmp ult i8* %53, %56, !dbg !2872
  br i1 %57, label %58, label %77, !dbg !2867

58:                                               ; preds = %52
  %59 = load i8*, i8** %15, align 4, !dbg !2873, !tbaa !292
  %60 = load i8, i8* %59, align 1, !dbg !2876, !tbaa !312
  %61 = zext i8 %60 to i32, !dbg !2876
  %62 = icmp ne i32 %61, 44, !dbg !2877
  br i1 %62, label %63, label %72, !dbg !2878

63:                                               ; preds = %58
  %64 = load i16, i16* %9, align 2, !dbg !2879, !tbaa !302
  %65 = trunc i16 %64 to i8, !dbg !2880
  %66 = zext i8 %65 to i32, !dbg !2880
  %67 = load i8*, i8** %15, align 4, !dbg !2881, !tbaa !292
  %68 = load i8, i8* %67, align 1, !dbg !2882, !tbaa !312
  %69 = zext i8 %68 to i32, !dbg !2882
  %70 = xor i32 %69, %66, !dbg !2882
  %71 = trunc i32 %70 to i8, !dbg !2882
  store i8 %71, i8* %67, align 1, !dbg !2882, !tbaa !312
  br label %72, !dbg !2883

72:                                               ; preds = %63, %58
  %73 = load i16, i16* %11, align 2, !dbg !2884, !tbaa !302
  %74 = sext i16 %73 to i32, !dbg !2884
  %75 = load i8*, i8** %15, align 4, !dbg !2885, !tbaa !292
  %76 = getelementptr inbounds i8, i8* %75, i32 %74, !dbg !2885
  store i8* %76, i8** %15, align 4, !dbg !2885, !tbaa !292
  br label %52, !dbg !2867, !llvm.loop !2886

77:                                               ; preds = %52
  %78 = load i8*, i8** %8, align 4, !dbg !2888, !tbaa !292
  store i8* %78, i8** %15, align 4, !dbg !2889, !tbaa !292
  br label %79, !dbg !2890

79:                                               ; preds = %84, %77
  %80 = load i8*, i8** %15, align 4, !dbg !2891, !tbaa !292
  %81 = load i8, i8* %80, align 1, !dbg !2892, !tbaa !312
  %82 = zext i8 %81 to i32, !dbg !2892
  %83 = icmp ne i32 %82, 0, !dbg !2893
  br i1 %83, label %84, label %93, !dbg !2890

84:                                               ; preds = %79
  %85 = bitcast i32* %18 to i8*, !dbg !2894
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %85) #4, !dbg !2894
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2816, metadata !DIExpression()), !dbg !2895
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i32 0, i32 0, !dbg !2896
  %87 = call arm_aapcscc i32 @core_state_transition(i8** %15, i32* %86), !dbg !2897
  store i32 %87, i32* %18, align 4, !dbg !2895, !tbaa !312
  %88 = load i32, i32* %18, align 4, !dbg !2898, !tbaa !312
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i32 0, i32 %88, !dbg !2899
  %90 = load i32, i32* %89, align 4, !dbg !2900, !tbaa !827
  %91 = add i32 %90, 1, !dbg !2900
  store i32 %91, i32* %89, align 4, !dbg !2900, !tbaa !827
  %92 = bitcast i32* %18 to i8*, !dbg !2901
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #4, !dbg !2901
  br label %79, !dbg !2890, !llvm.loop !2902

93:                                               ; preds = %79
  %94 = load i8*, i8** %8, align 4, !dbg !2903, !tbaa !292
  store i8* %94, i8** %15, align 4, !dbg !2904, !tbaa !292
  br label %95, !dbg !2905

95:                                               ; preds = %115, %93
  %96 = load i8*, i8** %15, align 4, !dbg !2906, !tbaa !292
  %97 = load i8*, i8** %8, align 4, !dbg !2907, !tbaa !292
  %98 = load i32, i32* %7, align 4, !dbg !2908, !tbaa !827
  %99 = getelementptr inbounds i8, i8* %97, i32 %98, !dbg !2909
  %100 = icmp ult i8* %96, %99, !dbg !2910
  br i1 %100, label %101, label %120, !dbg !2905

101:                                              ; preds = %95
  %102 = load i8*, i8** %15, align 4, !dbg !2911, !tbaa !292
  %103 = load i8, i8* %102, align 1, !dbg !2914, !tbaa !312
  %104 = zext i8 %103 to i32, !dbg !2914
  %105 = icmp ne i32 %104, 44, !dbg !2915
  br i1 %105, label %106, label %115, !dbg !2916

106:                                              ; preds = %101
  %107 = load i16, i16* %10, align 2, !dbg !2917, !tbaa !302
  %108 = trunc i16 %107 to i8, !dbg !2918
  %109 = zext i8 %108 to i32, !dbg !2918
  %110 = load i8*, i8** %15, align 4, !dbg !2919, !tbaa !292
  %111 = load i8, i8* %110, align 1, !dbg !2920, !tbaa !312
  %112 = zext i8 %111 to i32, !dbg !2920
  %113 = xor i32 %112, %109, !dbg !2920
  %114 = trunc i32 %113 to i8, !dbg !2920
  store i8 %114, i8* %110, align 1, !dbg !2920, !tbaa !312
  br label %115, !dbg !2921

115:                                              ; preds = %106, %101
  %116 = load i16, i16* %11, align 2, !dbg !2922, !tbaa !302
  %117 = sext i16 %116 to i32, !dbg !2922
  %118 = load i8*, i8** %15, align 4, !dbg !2923, !tbaa !292
  %119 = getelementptr inbounds i8, i8* %118, i32 %117, !dbg !2923
  store i8* %119, i8** %15, align 4, !dbg !2923, !tbaa !292
  br label %95, !dbg !2905, !llvm.loop !2924

120:                                              ; preds = %95
  store i32 0, i32* %16, align 4, !dbg !2926, !tbaa !827
  br label %121, !dbg !2928

121:                                              ; preds = %135, %120
  %122 = load i32, i32* %16, align 4, !dbg !2929, !tbaa !827
  %123 = icmp ult i32 %122, 8, !dbg !2931
  br i1 %123, label %124, label %138, !dbg !2932

124:                                              ; preds = %121
  %125 = load i32, i32* %16, align 4, !dbg !2933, !tbaa !827
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i32 0, i32 %125, !dbg !2935
  %127 = load i32, i32* %126, align 4, !dbg !2935, !tbaa !827
  %128 = load i16, i16* %12, align 2, !dbg !2936, !tbaa !302
  %129 = call arm_aapcscc zeroext i16 @crcu32(i32 %127, i16 zeroext %128), !dbg !2937
  store i16 %129, i16* %12, align 2, !dbg !2938, !tbaa !302
  %130 = load i32, i32* %16, align 4, !dbg !2939, !tbaa !827
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i32 0, i32 %130, !dbg !2940
  %132 = load i32, i32* %131, align 4, !dbg !2940, !tbaa !827
  %133 = load i16, i16* %12, align 2, !dbg !2941, !tbaa !302
  %134 = call arm_aapcscc zeroext i16 @crcu32(i32 %132, i16 zeroext %133), !dbg !2942
  store i16 %134, i16* %12, align 2, !dbg !2943, !tbaa !302
  br label %135, !dbg !2944

135:                                              ; preds = %124
  %136 = load i32, i32* %16, align 4, !dbg !2945, !tbaa !827
  %137 = add i32 %136, 1, !dbg !2945
  store i32 %137, i32* %16, align 4, !dbg !2945, !tbaa !827
  br label %121, !dbg !2946, !llvm.loop !2947

138:                                              ; preds = %121
  %139 = load i16, i16* %12, align 2, !dbg !2949, !tbaa !302
  %140 = bitcast i32* %16 to i8*, !dbg !2950
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #4, !dbg !2950
  %141 = bitcast i8** %15 to i8*, !dbg !2950
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #4, !dbg !2950
  %142 = bitcast [8 x i32]* %14 to i8*, !dbg !2950
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %142) #4, !dbg !2950
  %143 = bitcast [8 x i32]* %13 to i8*, !dbg !2950
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %143) #4, !dbg !2950
  ret i16 %139, !dbg !2951
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @core_state_transition(i8**, i32*) #0 !dbg !2952 {
  %3 = alloca i8**, align 4
  %4 = alloca i32*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2958, metadata !DIExpression()), !dbg !2963
  store i32* %1, i32** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2959, metadata !DIExpression()), !dbg !2964
  %8 = bitcast i8** %5 to i8*, !dbg !2965
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !2965
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2960, metadata !DIExpression()), !dbg !2966
  %9 = load i8**, i8*** %3, align 4, !dbg !2967, !tbaa !292
  %10 = load i8*, i8** %9, align 4, !dbg !2968, !tbaa !292
  store i8* %10, i8** %5, align 4, !dbg !2966, !tbaa !292
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #4, !dbg !2969
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2961, metadata !DIExpression()), !dbg !2970
  %11 = bitcast i32* %7 to i8*, !dbg !2971
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !2971
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2962, metadata !DIExpression()), !dbg !2972
  store i32 0, i32* %7, align 4, !dbg !2972, !tbaa !312
  br label %12, !dbg !2973

12:                                               ; preds = %179, %2
  %13 = load i8*, i8** %5, align 4, !dbg !2974, !tbaa !292
  %14 = load i8, i8* %13, align 1, !dbg !2977, !tbaa !312
  %15 = zext i8 %14 to i32, !dbg !2977
  %16 = icmp ne i32 %15, 0, !dbg !2977
  br i1 %16, label %17, label %20, !dbg !2978

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4, !dbg !2979, !tbaa !312
  %19 = icmp ne i32 %18, 1, !dbg !2980
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i1 [ false, %12 ], [ %19, %17 ], !dbg !2981
  br i1 %21, label %22, label %182, !dbg !2982

22:                                               ; preds = %20
  %23 = load i8*, i8** %5, align 4, !dbg !2983, !tbaa !292
  %24 = load i8, i8* %23, align 1, !dbg !2985, !tbaa !312
  store i8 %24, i8* %6, align 1, !dbg !2986, !tbaa !312
  %25 = load i8, i8* %6, align 1, !dbg !2987, !tbaa !312
  %26 = zext i8 %25 to i32, !dbg !2987
  %27 = icmp eq i32 %26, 44, !dbg !2989
  br i1 %27, label %28, label %31, !dbg !2990

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 4, !dbg !2991, !tbaa !292
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !2991
  store i8* %30, i8** %5, align 4, !dbg !2991, !tbaa !292
  br label %182, !dbg !2993

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4, !dbg !2994, !tbaa !312
  switch i32 %32, label %177 [
    i32 0, label %33
    i32 2, label %64
    i32 4, label %89
    i32 5, label %109
    i32 3, label %133
    i32 6, label %152
    i32 7, label %167
  ], !dbg !2995

33:                                               ; preds = %31
  %34 = load i8, i8* %6, align 1, !dbg !2996, !tbaa !312
  %35 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %34), !dbg !2999
  %36 = icmp ne i8 %35, 0, !dbg !2999
  br i1 %36, label %37, label %38, !dbg !3000

37:                                               ; preds = %33
  store i32 4, i32* %7, align 4, !dbg !3001, !tbaa !312
  br label %59, !dbg !3003

38:                                               ; preds = %33
  %39 = load i8, i8* %6, align 1, !dbg !3004, !tbaa !312
  %40 = zext i8 %39 to i32, !dbg !3004
  %41 = icmp eq i32 %40, 43, !dbg !3006
  br i1 %41, label %46, label %42, !dbg !3007

42:                                               ; preds = %38
  %43 = load i8, i8* %6, align 1, !dbg !3008, !tbaa !312
  %44 = zext i8 %43 to i32, !dbg !3008
  %45 = icmp eq i32 %44, 45, !dbg !3009
  br i1 %45, label %46, label %47, !dbg !3010

46:                                               ; preds = %42, %38
  store i32 2, i32* %7, align 4, !dbg !3011, !tbaa !312
  br label %58, !dbg !3013

47:                                               ; preds = %42
  %48 = load i8, i8* %6, align 1, !dbg !3014, !tbaa !312
  %49 = zext i8 %48 to i32, !dbg !3014
  %50 = icmp eq i32 %49, 46, !dbg !3016
  br i1 %50, label %51, label %52, !dbg !3017

51:                                               ; preds = %47
  store i32 5, i32* %7, align 4, !dbg !3018, !tbaa !312
  br label %57, !dbg !3020

52:                                               ; preds = %47
  store i32 1, i32* %7, align 4, !dbg !3021, !tbaa !312
  %53 = load i32*, i32** %4, align 4, !dbg !3023, !tbaa !292
  %54 = getelementptr inbounds i32, i32* %53, i32 1, !dbg !3023
  %55 = load i32, i32* %54, align 4, !dbg !3024, !tbaa !827
  %56 = add i32 %55, 1, !dbg !3024
  store i32 %56, i32* %54, align 4, !dbg !3024, !tbaa !827
  br label %57

57:                                               ; preds = %52, %51
  br label %58

58:                                               ; preds = %57, %46
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32*, i32** %4, align 4, !dbg !3025, !tbaa !292
  %61 = getelementptr inbounds i32, i32* %60, i32 0, !dbg !3025
  %62 = load i32, i32* %61, align 4, !dbg !3026, !tbaa !827
  %63 = add i32 %62, 1, !dbg !3026
  store i32 %63, i32* %61, align 4, !dbg !3026, !tbaa !827
  br label %178, !dbg !3027

64:                                               ; preds = %31
  %65 = load i8, i8* %6, align 1, !dbg !3028, !tbaa !312
  %66 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %65), !dbg !3030
  %67 = icmp ne i8 %66, 0, !dbg !3030
  br i1 %67, label %68, label %73, !dbg !3031

68:                                               ; preds = %64
  store i32 4, i32* %7, align 4, !dbg !3032, !tbaa !312
  %69 = load i32*, i32** %4, align 4, !dbg !3034, !tbaa !292
  %70 = getelementptr inbounds i32, i32* %69, i32 2, !dbg !3034
  %71 = load i32, i32* %70, align 4, !dbg !3035, !tbaa !827
  %72 = add i32 %71, 1, !dbg !3035
  store i32 %72, i32* %70, align 4, !dbg !3035, !tbaa !827
  br label %88, !dbg !3036

73:                                               ; preds = %64
  %74 = load i8, i8* %6, align 1, !dbg !3037, !tbaa !312
  %75 = zext i8 %74 to i32, !dbg !3037
  %76 = icmp eq i32 %75, 46, !dbg !3039
  br i1 %76, label %77, label %82, !dbg !3040

77:                                               ; preds = %73
  store i32 5, i32* %7, align 4, !dbg !3041, !tbaa !312
  %78 = load i32*, i32** %4, align 4, !dbg !3043, !tbaa !292
  %79 = getelementptr inbounds i32, i32* %78, i32 2, !dbg !3043
  %80 = load i32, i32* %79, align 4, !dbg !3044, !tbaa !827
  %81 = add i32 %80, 1, !dbg !3044
  store i32 %81, i32* %79, align 4, !dbg !3044, !tbaa !827
  br label %87, !dbg !3045

82:                                               ; preds = %73
  store i32 1, i32* %7, align 4, !dbg !3046, !tbaa !312
  %83 = load i32*, i32** %4, align 4, !dbg !3048, !tbaa !292
  %84 = getelementptr inbounds i32, i32* %83, i32 2, !dbg !3048
  %85 = load i32, i32* %84, align 4, !dbg !3049, !tbaa !827
  %86 = add i32 %85, 1, !dbg !3049
  store i32 %86, i32* %84, align 4, !dbg !3049, !tbaa !827
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %68
  br label %178, !dbg !3050

89:                                               ; preds = %31
  %90 = load i8, i8* %6, align 1, !dbg !3051, !tbaa !312
  %91 = zext i8 %90 to i32, !dbg !3051
  %92 = icmp eq i32 %91, 46, !dbg !3053
  br i1 %92, label %93, label %98, !dbg !3054

93:                                               ; preds = %89
  store i32 5, i32* %7, align 4, !dbg !3055, !tbaa !312
  %94 = load i32*, i32** %4, align 4, !dbg !3057, !tbaa !292
  %95 = getelementptr inbounds i32, i32* %94, i32 4, !dbg !3057
  %96 = load i32, i32* %95, align 4, !dbg !3058, !tbaa !827
  %97 = add i32 %96, 1, !dbg !3058
  store i32 %97, i32* %95, align 4, !dbg !3058, !tbaa !827
  br label %108, !dbg !3059

98:                                               ; preds = %89
  %99 = load i8, i8* %6, align 1, !dbg !3060, !tbaa !312
  %100 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %99), !dbg !3062
  %101 = icmp ne i8 %100, 0, !dbg !3062
  br i1 %101, label %107, label %102, !dbg !3063

102:                                              ; preds = %98
  store i32 1, i32* %7, align 4, !dbg !3064, !tbaa !312
  %103 = load i32*, i32** %4, align 4, !dbg !3066, !tbaa !292
  %104 = getelementptr inbounds i32, i32* %103, i32 4, !dbg !3066
  %105 = load i32, i32* %104, align 4, !dbg !3067, !tbaa !827
  %106 = add i32 %105, 1, !dbg !3067
  store i32 %106, i32* %104, align 4, !dbg !3067, !tbaa !827
  br label %107, !dbg !3068

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107, %93
  br label %178, !dbg !3069

109:                                              ; preds = %31
  %110 = load i8, i8* %6, align 1, !dbg !3070, !tbaa !312
  %111 = zext i8 %110 to i32, !dbg !3070
  %112 = icmp eq i32 %111, 69, !dbg !3072
  br i1 %112, label %117, label %113, !dbg !3073

113:                                              ; preds = %109
  %114 = load i8, i8* %6, align 1, !dbg !3074, !tbaa !312
  %115 = zext i8 %114 to i32, !dbg !3074
  %116 = icmp eq i32 %115, 101, !dbg !3075
  br i1 %116, label %117, label %122, !dbg !3076

117:                                              ; preds = %113, %109
  store i32 3, i32* %7, align 4, !dbg !3077, !tbaa !312
  %118 = load i32*, i32** %4, align 4, !dbg !3079, !tbaa !292
  %119 = getelementptr inbounds i32, i32* %118, i32 5, !dbg !3079
  %120 = load i32, i32* %119, align 4, !dbg !3080, !tbaa !827
  %121 = add i32 %120, 1, !dbg !3080
  store i32 %121, i32* %119, align 4, !dbg !3080, !tbaa !827
  br label %132, !dbg !3081

122:                                              ; preds = %113
  %123 = load i8, i8* %6, align 1, !dbg !3082, !tbaa !312
  %124 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %123), !dbg !3084
  %125 = icmp ne i8 %124, 0, !dbg !3084
  br i1 %125, label %131, label %126, !dbg !3085

126:                                              ; preds = %122
  store i32 1, i32* %7, align 4, !dbg !3086, !tbaa !312
  %127 = load i32*, i32** %4, align 4, !dbg !3088, !tbaa !292
  %128 = getelementptr inbounds i32, i32* %127, i32 5, !dbg !3088
  %129 = load i32, i32* %128, align 4, !dbg !3089, !tbaa !827
  %130 = add i32 %129, 1, !dbg !3089
  store i32 %130, i32* %128, align 4, !dbg !3089, !tbaa !827
  br label %131, !dbg !3090

131:                                              ; preds = %126, %122
  br label %132

132:                                              ; preds = %131, %117
  br label %178, !dbg !3091

133:                                              ; preds = %31
  %134 = load i8, i8* %6, align 1, !dbg !3092, !tbaa !312
  %135 = zext i8 %134 to i32, !dbg !3092
  %136 = icmp eq i32 %135, 43, !dbg !3094
  br i1 %136, label %141, label %137, !dbg !3095

137:                                              ; preds = %133
  %138 = load i8, i8* %6, align 1, !dbg !3096, !tbaa !312
  %139 = zext i8 %138 to i32, !dbg !3096
  %140 = icmp eq i32 %139, 45, !dbg !3097
  br i1 %140, label %141, label %146, !dbg !3098

141:                                              ; preds = %137, %133
  store i32 6, i32* %7, align 4, !dbg !3099, !tbaa !312
  %142 = load i32*, i32** %4, align 4, !dbg !3101, !tbaa !292
  %143 = getelementptr inbounds i32, i32* %142, i32 3, !dbg !3101
  %144 = load i32, i32* %143, align 4, !dbg !3102, !tbaa !827
  %145 = add i32 %144, 1, !dbg !3102
  store i32 %145, i32* %143, align 4, !dbg !3102, !tbaa !827
  br label %151, !dbg !3103

146:                                              ; preds = %137
  store i32 1, i32* %7, align 4, !dbg !3104, !tbaa !312
  %147 = load i32*, i32** %4, align 4, !dbg !3106, !tbaa !292
  %148 = getelementptr inbounds i32, i32* %147, i32 3, !dbg !3106
  %149 = load i32, i32* %148, align 4, !dbg !3107, !tbaa !827
  %150 = add i32 %149, 1, !dbg !3107
  store i32 %150, i32* %148, align 4, !dbg !3107, !tbaa !827
  br label %151

151:                                              ; preds = %146, %141
  br label %178, !dbg !3108

152:                                              ; preds = %31
  %153 = load i8, i8* %6, align 1, !dbg !3109, !tbaa !312
  %154 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %153), !dbg !3111
  %155 = icmp ne i8 %154, 0, !dbg !3111
  br i1 %155, label %156, label %161, !dbg !3112

156:                                              ; preds = %152
  store i32 7, i32* %7, align 4, !dbg !3113, !tbaa !312
  %157 = load i32*, i32** %4, align 4, !dbg !3115, !tbaa !292
  %158 = getelementptr inbounds i32, i32* %157, i32 6, !dbg !3115
  %159 = load i32, i32* %158, align 4, !dbg !3116, !tbaa !827
  %160 = add i32 %159, 1, !dbg !3116
  store i32 %160, i32* %158, align 4, !dbg !3116, !tbaa !827
  br label %166, !dbg !3117

161:                                              ; preds = %152
  store i32 1, i32* %7, align 4, !dbg !3118, !tbaa !312
  %162 = load i32*, i32** %4, align 4, !dbg !3120, !tbaa !292
  %163 = getelementptr inbounds i32, i32* %162, i32 6, !dbg !3120
  %164 = load i32, i32* %163, align 4, !dbg !3121, !tbaa !827
  %165 = add i32 %164, 1, !dbg !3121
  store i32 %165, i32* %163, align 4, !dbg !3121, !tbaa !827
  br label %166

166:                                              ; preds = %161, %156
  br label %178, !dbg !3122

167:                                              ; preds = %31
  %168 = load i8, i8* %6, align 1, !dbg !3123, !tbaa !312
  %169 = call arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext %168), !dbg !3125
  %170 = icmp ne i8 %169, 0, !dbg !3125
  br i1 %170, label %176, label %171, !dbg !3126

171:                                              ; preds = %167
  store i32 1, i32* %7, align 4, !dbg !3127, !tbaa !312
  %172 = load i32*, i32** %4, align 4, !dbg !3129, !tbaa !292
  %173 = getelementptr inbounds i32, i32* %172, i32 1, !dbg !3129
  %174 = load i32, i32* %173, align 4, !dbg !3130, !tbaa !827
  %175 = add i32 %174, 1, !dbg !3130
  store i32 %175, i32* %173, align 4, !dbg !3130, !tbaa !827
  br label %176, !dbg !3131

176:                                              ; preds = %171, %167
  br label %178, !dbg !3132

177:                                              ; preds = %31
  br label %178, !dbg !3133

178:                                              ; preds = %177, %176, %166, %151, %132, %108, %88, %59
  br label %179, !dbg !3134

179:                                              ; preds = %178
  %180 = load i8*, i8** %5, align 4, !dbg !3135, !tbaa !292
  %181 = getelementptr inbounds i8, i8* %180, i32 1, !dbg !3135
  store i8* %181, i8** %5, align 4, !dbg !3135, !tbaa !292
  br label %12, !dbg !3136, !llvm.loop !3137

182:                                              ; preds = %28, %20
  %183 = load i8*, i8** %5, align 4, !dbg !3139, !tbaa !292
  %184 = load i8**, i8*** %3, align 4, !dbg !3140, !tbaa !292
  store i8* %183, i8** %184, align 4, !dbg !3141, !tbaa !292
  %185 = load i32, i32* %7, align 4, !dbg !3142, !tbaa !312
  %186 = bitcast i32* %7 to i8*, !dbg !3143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %186) #4, !dbg !3143
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #4, !dbg !3143
  %187 = bitcast i8** %5 to i8*, !dbg !3143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %187) #4, !dbg !3143
  ret i32 %185, !dbg !3144
}

; Function Attrs: nounwind
define internal arm_aapcscc zeroext i8 @ee_isdigit(i8 zeroext) #0 !dbg !3145 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !312
  call void @llvm.dbg.declare(metadata i8* %2, metadata !3149, metadata !DIExpression()), !dbg !3151
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %3) #4, !dbg !3152
  call void @llvm.dbg.declare(metadata i8* %3, metadata !3150, metadata !DIExpression()), !dbg !3153
  %4 = load i8, i8* %2, align 1, !dbg !3154, !tbaa !312
  %5 = zext i8 %4 to i32, !dbg !3154
  %6 = icmp sge i32 %5, 48, !dbg !3155
  %7 = zext i1 %6 to i32, !dbg !3155
  %8 = load i8, i8* %2, align 1, !dbg !3156, !tbaa !312
  %9 = zext i8 %8 to i32, !dbg !3156
  %10 = icmp sle i32 %9, 57, !dbg !3157
  %11 = zext i1 %10 to i32, !dbg !3157
  %12 = and i32 %7, %11, !dbg !3158
  %13 = icmp ne i32 %12, 0, !dbg !3159
  %14 = zext i1 %13 to i64, !dbg !3159
  %15 = select i1 %13, i32 1, i32 0, !dbg !3159
  %16 = trunc i32 %15 to i8, !dbg !3159
  store i8 %16, i8* %3, align 1, !dbg !3160, !tbaa !312
  %17 = load i8, i8* %3, align 1, !dbg !3161, !tbaa !312
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %3) #4, !dbg !3162
  ret i8 %17, !dbg !3163
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @core_init_state(i32, i16 signext, i8*) #0 !dbg !3164 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 4
  store i32 %0, i32* %4, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3168, metadata !DIExpression()), !dbg !3175
  store i16 %1, i16* %5, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %5, metadata !3169, metadata !DIExpression()), !dbg !3176
  store i8* %2, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3170, metadata !DIExpression()), !dbg !3177
  %11 = bitcast i32* %7 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !3178
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3171, metadata !DIExpression()), !dbg !3179
  store i32 0, i32* %7, align 4, !dbg !3179, !tbaa !827
  %12 = bitcast i32* %8 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !3178
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3172, metadata !DIExpression()), !dbg !3180
  store i32 0, i32* %8, align 4, !dbg !3180, !tbaa !827
  %13 = bitcast i32* %9 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !3178
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3173, metadata !DIExpression()), !dbg !3181
  %14 = bitcast i8** %10 to i8*, !dbg !3182
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !3182
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3174, metadata !DIExpression()), !dbg !3183
  store i8* null, i8** %10, align 4, !dbg !3183, !tbaa !292
  %15 = load i32, i32* %4, align 4, !dbg !3184, !tbaa !827
  %16 = add i32 %15, -1, !dbg !3184
  store i32 %16, i32* %4, align 4, !dbg !3184, !tbaa !827
  store i32 0, i32* %8, align 4, !dbg !3185, !tbaa !827
  br label %17, !dbg !3186

17:                                               ; preds = %90, %3
  %18 = load i32, i32* %7, align 4, !dbg !3187, !tbaa !827
  %19 = load i32, i32* %8, align 4, !dbg !3188, !tbaa !827
  %20 = add i32 %18, %19, !dbg !3189
  %21 = add i32 %20, 1, !dbg !3190
  %22 = load i32, i32* %4, align 4, !dbg !3191, !tbaa !827
  %23 = icmp ult i32 %21, %22, !dbg !3192
  br i1 %23, label %24, label %91, !dbg !3186

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4, !dbg !3193, !tbaa !827
  %26 = icmp ugt i32 %25, 0, !dbg !3196
  br i1 %26, label %27, label %55, !dbg !3197

27:                                               ; preds = %24
  store i32 0, i32* %9, align 4, !dbg !3198, !tbaa !827
  br label %28, !dbg !3201

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %9, align 4, !dbg !3202, !tbaa !827
  %30 = load i32, i32* %8, align 4, !dbg !3204, !tbaa !827
  %31 = icmp ult i32 %29, %30, !dbg !3205
  br i1 %31, label %32, label %45, !dbg !3206

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 4, !dbg !3207, !tbaa !292
  %34 = load i32, i32* %9, align 4, !dbg !3208, !tbaa !827
  %35 = getelementptr inbounds i8, i8* %33, i32 %34, !dbg !3207
  %36 = load i8, i8* %35, align 1, !dbg !3207, !tbaa !312
  %37 = load i8*, i8** %6, align 4, !dbg !3209, !tbaa !292
  %38 = load i32, i32* %7, align 4, !dbg !3210, !tbaa !827
  %39 = getelementptr inbounds i8, i8* %37, i32 %38, !dbg !3211
  %40 = load i32, i32* %9, align 4, !dbg !3212, !tbaa !827
  %41 = getelementptr inbounds i8, i8* %39, i32 %40, !dbg !3213
  store i8 %36, i8* %41, align 1, !dbg !3214, !tbaa !312
  br label %42, !dbg !3215

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4, !dbg !3216, !tbaa !827
  %44 = add i32 %43, 1, !dbg !3216
  store i32 %44, i32* %9, align 4, !dbg !3216, !tbaa !827
  br label %28, !dbg !3217, !llvm.loop !3218

45:                                               ; preds = %28
  %46 = load i8*, i8** %6, align 4, !dbg !3220, !tbaa !292
  %47 = load i32, i32* %7, align 4, !dbg !3221, !tbaa !827
  %48 = getelementptr inbounds i8, i8* %46, i32 %47, !dbg !3222
  %49 = load i32, i32* %9, align 4, !dbg !3223, !tbaa !827
  %50 = getelementptr inbounds i8, i8* %48, i32 %49, !dbg !3224
  store i8 44, i8* %50, align 1, !dbg !3225, !tbaa !312
  %51 = load i32, i32* %8, align 4, !dbg !3226, !tbaa !827
  %52 = add i32 %51, 1, !dbg !3227
  %53 = load i32, i32* %7, align 4, !dbg !3228, !tbaa !827
  %54 = add i32 %53, %52, !dbg !3228
  store i32 %54, i32* %7, align 4, !dbg !3228, !tbaa !827
  br label %55, !dbg !3229

55:                                               ; preds = %45, %24
  %56 = load i16, i16* %5, align 2, !dbg !3230, !tbaa !302
  %57 = add i16 %56, 1, !dbg !3230
  store i16 %57, i16* %5, align 2, !dbg !3230, !tbaa !302
  %58 = load i16, i16* %5, align 2, !dbg !3231, !tbaa !302
  %59 = sext i16 %58 to i32, !dbg !3231
  %60 = and i32 %59, 7, !dbg !3232
  switch i32 %60, label %89 [
    i32 0, label %61
    i32 1, label %61
    i32 2, label %61
    i32 3, label %68
    i32 4, label %68
    i32 5, label %75
    i32 6, label %75
    i32 7, label %82
  ], !dbg !3233

61:                                               ; preds = %55, %55, %55
  %62 = load i16, i16* %5, align 2, !dbg !3234, !tbaa !302
  %63 = sext i16 %62 to i32, !dbg !3234
  %64 = ashr i32 %63, 3, !dbg !3236
  %65 = and i32 %64, 3, !dbg !3237
  %66 = getelementptr inbounds [4 x i8*], [4 x i8*]* @intpat, i32 0, i32 %65, !dbg !3238
  %67 = load i8*, i8** %66, align 4, !dbg !3238, !tbaa !292
  store i8* %67, i8** %10, align 4, !dbg !3239, !tbaa !292
  store i32 4, i32* %8, align 4, !dbg !3240, !tbaa !827
  br label %90, !dbg !3241

68:                                               ; preds = %55, %55
  %69 = load i16, i16* %5, align 2, !dbg !3242, !tbaa !302
  %70 = sext i16 %69 to i32, !dbg !3242
  %71 = ashr i32 %70, 3, !dbg !3243
  %72 = and i32 %71, 3, !dbg !3244
  %73 = getelementptr inbounds [4 x i8*], [4 x i8*]* @floatpat, i32 0, i32 %72, !dbg !3245
  %74 = load i8*, i8** %73, align 4, !dbg !3245, !tbaa !292
  store i8* %74, i8** %10, align 4, !dbg !3246, !tbaa !292
  store i32 8, i32* %8, align 4, !dbg !3247, !tbaa !827
  br label %90, !dbg !3248

75:                                               ; preds = %55, %55
  %76 = load i16, i16* %5, align 2, !dbg !3249, !tbaa !302
  %77 = sext i16 %76 to i32, !dbg !3249
  %78 = ashr i32 %77, 3, !dbg !3250
  %79 = and i32 %78, 3, !dbg !3251
  %80 = getelementptr inbounds [4 x i8*], [4 x i8*]* @scipat, i32 0, i32 %79, !dbg !3252
  %81 = load i8*, i8** %80, align 4, !dbg !3252, !tbaa !292
  store i8* %81, i8** %10, align 4, !dbg !3253, !tbaa !292
  store i32 8, i32* %8, align 4, !dbg !3254, !tbaa !827
  br label %90, !dbg !3255

82:                                               ; preds = %55
  %83 = load i16, i16* %5, align 2, !dbg !3256, !tbaa !302
  %84 = sext i16 %83 to i32, !dbg !3256
  %85 = ashr i32 %84, 3, !dbg !3257
  %86 = and i32 %85, 3, !dbg !3258
  %87 = getelementptr inbounds [4 x i8*], [4 x i8*]* @errpat, i32 0, i32 %86, !dbg !3259
  %88 = load i8*, i8** %87, align 4, !dbg !3259, !tbaa !292
  store i8* %88, i8** %10, align 4, !dbg !3260, !tbaa !292
  store i32 8, i32* %8, align 4, !dbg !3261, !tbaa !827
  br label %90, !dbg !3262

89:                                               ; preds = %55
  br label %90, !dbg !3263

90:                                               ; preds = %89, %82, %75, %68, %61
  br label %17, !dbg !3186, !llvm.loop !3264

91:                                               ; preds = %17
  %92 = load i32, i32* %4, align 4, !dbg !3266, !tbaa !827
  %93 = add i32 %92, 1, !dbg !3266
  store i32 %93, i32* %4, align 4, !dbg !3266, !tbaa !827
  br label %94, !dbg !3267

94:                                               ; preds = %98, %91
  %95 = load i32, i32* %7, align 4, !dbg !3268, !tbaa !827
  %96 = load i32, i32* %4, align 4, !dbg !3269, !tbaa !827
  %97 = icmp ult i32 %95, %96, !dbg !3270
  br i1 %97, label %98, label %104, !dbg !3267

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 4, !dbg !3271, !tbaa !292
  %100 = load i32, i32* %7, align 4, !dbg !3273, !tbaa !827
  %101 = getelementptr inbounds i8, i8* %99, i32 %100, !dbg !3274
  store i8 0, i8* %101, align 1, !dbg !3275, !tbaa !312
  %102 = load i32, i32* %7, align 4, !dbg !3276, !tbaa !827
  %103 = add i32 %102, 1, !dbg !3276
  store i32 %103, i32* %7, align 4, !dbg !3276, !tbaa !827
  br label %94, !dbg !3267, !llvm.loop !3277

104:                                              ; preds = %94
  %105 = bitcast i8** %10 to i8*, !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #4, !dbg !3279
  %106 = bitcast i32* %9 to i8*, !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #4, !dbg !3279
  %107 = bitcast i32* %8 to i8*, !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %107) #4, !dbg !3279
  %108 = bitcast i32* %7 to i8*, !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %108) #4, !dbg !3279
  ret void, !dbg !3279
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_seed_32(i32) #0 !dbg !3280 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3285, metadata !DIExpression()), !dbg !3287
  %4 = bitcast i32* %3 to i8*, !dbg !3288
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !3288
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3286, metadata !DIExpression()), !dbg !3289
  %5 = load i32, i32* %2, align 4, !dbg !3290, !tbaa !827
  switch i32 %5, label %16 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
  ], !dbg !3291

6:                                                ; preds = %1
  %7 = load volatile i32, i32* @seed1_volatile, align 4, !dbg !3292, !tbaa !827
  store i32 %7, i32* %3, align 4, !dbg !3294, !tbaa !827
  br label %17, !dbg !3295

8:                                                ; preds = %1
  %9 = load volatile i32, i32* @seed2_volatile, align 4, !dbg !3296, !tbaa !827
  store i32 %9, i32* %3, align 4, !dbg !3297, !tbaa !827
  br label %17, !dbg !3298

10:                                               ; preds = %1
  %11 = load volatile i32, i32* @seed3_volatile, align 4, !dbg !3299, !tbaa !827
  store i32 %11, i32* %3, align 4, !dbg !3300, !tbaa !827
  br label %17, !dbg !3301

12:                                               ; preds = %1
  %13 = load volatile i32, i32* @seed4_volatile, align 4, !dbg !3302, !tbaa !827
  store i32 %13, i32* %3, align 4, !dbg !3303, !tbaa !827
  br label %17, !dbg !3304

14:                                               ; preds = %1
  %15 = load volatile i32, i32* @seed5_volatile, align 4, !dbg !3305, !tbaa !827
  store i32 %15, i32* %3, align 4, !dbg !3306, !tbaa !827
  br label %17, !dbg !3307

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4, !dbg !3308, !tbaa !827
  br label %17, !dbg !3309

17:                                               ; preds = %16, %14, %12, %10, %8, %6
  %18 = load i32, i32* %3, align 4, !dbg !3310, !tbaa !827
  %19 = bitcast i32* %3 to i8*, !dbg !3311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !3311
  ret i32 %18, !dbg !3312
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu8(i8 zeroext, i16 zeroext) #0 !dbg !3313 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8 %0, i8* %3, align 1, !tbaa !312
  call void @llvm.dbg.declare(metadata i8* %3, metadata !3317, metadata !DIExpression()), !dbg !3322
  store i16 %1, i16* %4, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %4, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %5) #4, !dbg !3324
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3319, metadata !DIExpression()), !dbg !3325
  store i8 0, i8* %5, align 1, !dbg !3325, !tbaa !312
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #4, !dbg !3324
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3320, metadata !DIExpression()), !dbg !3326
  store i8 0, i8* %6, align 1, !dbg !3326, !tbaa !312
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #4, !dbg !3324
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3321, metadata !DIExpression()), !dbg !3327
  store i8 0, i8* %7, align 1, !dbg !3327, !tbaa !312
  store i8 0, i8* %5, align 1, !dbg !3328, !tbaa !312
  br label %8, !dbg !3330

8:                                                ; preds = %53, %2
  %9 = load i8, i8* %5, align 1, !dbg !3331, !tbaa !312
  %10 = zext i8 %9 to i32, !dbg !3331
  %11 = icmp slt i32 %10, 8, !dbg !3333
  br i1 %11, label %12, label %56, !dbg !3334

12:                                               ; preds = %8
  %13 = load i8, i8* %3, align 1, !dbg !3335, !tbaa !312
  %14 = zext i8 %13 to i32, !dbg !3335
  %15 = and i32 %14, 1, !dbg !3337
  %16 = load i16, i16* %4, align 2, !dbg !3338, !tbaa !302
  %17 = trunc i16 %16 to i8, !dbg !3339
  %18 = zext i8 %17 to i32, !dbg !3339
  %19 = and i32 %18, 1, !dbg !3340
  %20 = xor i32 %15, %19, !dbg !3341
  %21 = trunc i32 %20 to i8, !dbg !3342
  store i8 %21, i8* %6, align 1, !dbg !3343, !tbaa !312
  %22 = load i8, i8* %3, align 1, !dbg !3344, !tbaa !312
  %23 = zext i8 %22 to i32, !dbg !3344
  %24 = ashr i32 %23, 1, !dbg !3344
  %25 = trunc i32 %24 to i8, !dbg !3344
  store i8 %25, i8* %3, align 1, !dbg !3344, !tbaa !312
  %26 = load i8, i8* %6, align 1, !dbg !3345, !tbaa !312
  %27 = zext i8 %26 to i32, !dbg !3345
  %28 = icmp eq i32 %27, 1, !dbg !3347
  br i1 %28, label %29, label %34, !dbg !3348

29:                                               ; preds = %12
  %30 = load i16, i16* %4, align 2, !dbg !3349, !tbaa !302
  %31 = zext i16 %30 to i32, !dbg !3349
  %32 = xor i32 %31, 16386, !dbg !3349
  %33 = trunc i32 %32 to i16, !dbg !3349
  store i16 %33, i16* %4, align 2, !dbg !3349, !tbaa !302
  store i8 1, i8* %7, align 1, !dbg !3351, !tbaa !312
  br label %35, !dbg !3352

34:                                               ; preds = %12
  store i8 0, i8* %7, align 1, !dbg !3353, !tbaa !312
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i16, i16* %4, align 2, !dbg !3354, !tbaa !302
  %37 = zext i16 %36 to i32, !dbg !3354
  %38 = ashr i32 %37, 1, !dbg !3354
  %39 = trunc i32 %38 to i16, !dbg !3354
  store i16 %39, i16* %4, align 2, !dbg !3354, !tbaa !302
  %40 = load i8, i8* %7, align 1, !dbg !3355, !tbaa !312
  %41 = icmp ne i8 %40, 0, !dbg !3355
  br i1 %41, label %42, label %47, !dbg !3357

42:                                               ; preds = %35
  %43 = load i16, i16* %4, align 2, !dbg !3358, !tbaa !302
  %44 = zext i16 %43 to i32, !dbg !3358
  %45 = or i32 %44, 32768, !dbg !3358
  %46 = trunc i32 %45 to i16, !dbg !3358
  store i16 %46, i16* %4, align 2, !dbg !3358, !tbaa !302
  br label %52, !dbg !3359

47:                                               ; preds = %35
  %48 = load i16, i16* %4, align 2, !dbg !3360, !tbaa !302
  %49 = zext i16 %48 to i32, !dbg !3360
  %50 = and i32 %49, 32767, !dbg !3360
  %51 = trunc i32 %50 to i16, !dbg !3360
  store i16 %51, i16* %4, align 2, !dbg !3360, !tbaa !302
  br label %52

52:                                               ; preds = %47, %42
  br label %53, !dbg !3361

53:                                               ; preds = %52
  %54 = load i8, i8* %5, align 1, !dbg !3362, !tbaa !312
  %55 = add i8 %54, 1, !dbg !3362
  store i8 %55, i8* %5, align 1, !dbg !3362, !tbaa !312
  br label %8, !dbg !3363, !llvm.loop !3364

56:                                               ; preds = %8
  %57 = load i16, i16* %4, align 2, !dbg !3366, !tbaa !302
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %7) #4, !dbg !3367
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #4, !dbg !3367
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %5) #4, !dbg !3367
  ret i16 %57, !dbg !3368
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu16(i16 zeroext, i16 zeroext) #0 !dbg !3369 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %3, metadata !3373, metadata !DIExpression()), !dbg !3375
  store i16 %1, i16* %4, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %4, metadata !3374, metadata !DIExpression()), !dbg !3376
  %5 = load i16, i16* %3, align 2, !dbg !3377, !tbaa !302
  %6 = trunc i16 %5 to i8, !dbg !3378
  %7 = load i16, i16* %4, align 2, !dbg !3379, !tbaa !302
  %8 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %6, i16 zeroext %7), !dbg !3380
  store i16 %8, i16* %4, align 2, !dbg !3381, !tbaa !302
  %9 = load i16, i16* %3, align 2, !dbg !3382, !tbaa !302
  %10 = zext i16 %9 to i32, !dbg !3383
  %11 = ashr i32 %10, 8, !dbg !3384
  %12 = trunc i32 %11 to i8, !dbg !3385
  %13 = load i16, i16* %4, align 2, !dbg !3386, !tbaa !302
  %14 = call arm_aapcscc zeroext i16 @crcu8(i8 zeroext %12, i16 zeroext %13), !dbg !3387
  store i16 %14, i16* %4, align 2, !dbg !3388, !tbaa !302
  %15 = load i16, i16* %4, align 2, !dbg !3389, !tbaa !302
  ret i16 %15, !dbg !3390
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crcu32(i32, i16 zeroext) #0 !dbg !3391 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store i32 %0, i32* %3, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3395, metadata !DIExpression()), !dbg !3397
  store i16 %1, i16* %4, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %4, metadata !3396, metadata !DIExpression()), !dbg !3398
  %5 = load i32, i32* %3, align 4, !dbg !3399, !tbaa !827
  %6 = trunc i32 %5 to i16, !dbg !3400
  %7 = load i16, i16* %4, align 2, !dbg !3401, !tbaa !302
  %8 = call arm_aapcscc zeroext i16 @crc16(i16 signext %6, i16 zeroext %7), !dbg !3402
  store i16 %8, i16* %4, align 2, !dbg !3403, !tbaa !302
  %9 = load i32, i32* %3, align 4, !dbg !3404, !tbaa !827
  %10 = lshr i32 %9, 16, !dbg !3405
  %11 = trunc i32 %10 to i16, !dbg !3406
  %12 = load i16, i16* %4, align 2, !dbg !3407, !tbaa !302
  %13 = call arm_aapcscc zeroext i16 @crc16(i16 signext %11, i16 zeroext %12), !dbg !3408
  store i16 %13, i16* %4, align 2, !dbg !3409, !tbaa !302
  %14 = load i16, i16* %4, align 2, !dbg !3410, !tbaa !302
  ret i16 %14, !dbg !3411
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i16 @crc16(i16 signext, i16 zeroext) #0 !dbg !3412 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %3, metadata !3416, metadata !DIExpression()), !dbg !3418
  store i16 %1, i16* %4, align 2, !tbaa !302
  call void @llvm.dbg.declare(metadata i16* %4, metadata !3417, metadata !DIExpression()), !dbg !3419
  %5 = load i16, i16* %3, align 2, !dbg !3420, !tbaa !302
  %6 = load i16, i16* %4, align 2, !dbg !3421, !tbaa !302
  %7 = call arm_aapcscc zeroext i16 @crcu16(i16 zeroext %5, i16 zeroext %6), !dbg !3422
  ret i16 %7, !dbg !3423
}

; Function Attrs: nounwind
define dso_local arm_aapcscc zeroext i8 @check_data_types() #0 !dbg !3424 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #4, !dbg !3428
  call void @llvm.dbg.declare(metadata i8* %1, metadata !3427, metadata !DIExpression()), !dbg !3429
  store i8 0, i8* %1, align 1, !dbg !3429, !tbaa !312
  %2 = load i8, i8* %1, align 1, !dbg !3430, !tbaa !312
  %3 = zext i8 %2 to i32, !dbg !3430
  %4 = icmp sgt i32 %3, 0, !dbg !3432
  br i1 %4, label %5, label %7, !dbg !3433

5:                                                ; preds = %0
  %6 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.48, i32 0, i32 0)), !dbg !3434
  br label %7, !dbg !3436

7:                                                ; preds = %5, %0
  %8 = load i8, i8* %1, align 1, !dbg !3437, !tbaa !312
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #4, !dbg !3438
  ret i8 %8, !dbg !3439
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i64 @clock() #3 !dbg !3440 {
  %1 = load volatile i64, i64* @dummy, align 8, !dbg !3443, !tbaa !3444
  ret i64 %1, !dbg !3446
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @start_time() #0 !dbg !3447 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !3448
  store volatile i64 %1, i64* @start_time_val, align 8, !dbg !3448, !tbaa !3444
  ret void, !dbg !3449
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @stop_time() #0 !dbg !3450 {
  %1 = call arm_aapcscc i64 @clock(), !dbg !3451
  store volatile i64 %1, i64* @stop_time_val, align 8, !dbg !3451, !tbaa !3444
  ret void, !dbg !3452
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @get_time() #0 !dbg !3453 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3458
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !3458
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3457, metadata !DIExpression()), !dbg !3459
  %3 = load volatile i64, i64* @stop_time_val, align 8, !dbg !3460, !tbaa !3444
  %4 = load volatile i64, i64* @start_time_val, align 8, !dbg !3460, !tbaa !3444
  %5 = sub i64 %3, %4, !dbg !3460
  %6 = trunc i64 %5 to i32, !dbg !3461
  store i32 %6, i32* %1, align 4, !dbg !3459, !tbaa !827
  %7 = load i32, i32* %1, align 4, !dbg !3462, !tbaa !827
  %8 = bitcast i32* %1 to i8*, !dbg !3463
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !3463
  ret i32 %7, !dbg !3464
}

; Function Attrs: nounwind
define dso_local arm_aapcscc double @time_in_secs(i32) #0 !dbg !3465 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 %0, i32* %2, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3469, metadata !DIExpression()), !dbg !3471
  %4 = bitcast double* %3 to i8*, !dbg !3472
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4, !dbg !3472
  call void @llvm.dbg.declare(metadata double* %3, metadata !3470, metadata !DIExpression()), !dbg !3473
  %5 = load i32, i32* %2, align 4, !dbg !3474, !tbaa !827
  %6 = uitofp i32 %5 to double, !dbg !3475
  %7 = fdiv double %6, 1.000000e+07, !dbg !3476
  store double %7, double* %3, align 8, !dbg !3473, !tbaa !1707
  %8 = load double, double* %3, align 8, !dbg !3477, !tbaa !1707
  %9 = bitcast double* %3 to i8*, !dbg !3478
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #4, !dbg !3478
  ret double %8, !dbg !3479
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_init(%struct.CORE_PORTABLE_S*, i32*, i8**) #0 !dbg !3480 {
  %4 = alloca %struct.CORE_PORTABLE_S*, align 4
  %5 = alloca i32*, align 4
  %6 = alloca i8**, align 4
  store %struct.CORE_PORTABLE_S* %0, %struct.CORE_PORTABLE_S** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.CORE_PORTABLE_S** %4, metadata !3490, metadata !DIExpression()), !dbg !3493
  store i32* %1, i32** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3491, metadata !DIExpression()), !dbg !3494
  store i8** %2, i8*** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !3492, metadata !DIExpression()), !dbg !3495
  %7 = load %struct.CORE_PORTABLE_S*, %struct.CORE_PORTABLE_S** %4, align 4, !dbg !3496, !tbaa !292
  %8 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %7, i32 0, i32 0, !dbg !3497
  store i8 1, i8* %8, align 1, !dbg !3498, !tbaa !3499
  ret void, !dbg !3500
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @portable_fini(%struct.CORE_PORTABLE_S*) #0 !dbg !3501 {
  %2 = alloca %struct.CORE_PORTABLE_S*, align 4
  store %struct.CORE_PORTABLE_S* %0, %struct.CORE_PORTABLE_S** %2, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata %struct.CORE_PORTABLE_S** %2, metadata !3505, metadata !DIExpression()), !dbg !3506
  %3 = load %struct.CORE_PORTABLE_S*, %struct.CORE_PORTABLE_S** %2, align 4, !dbg !3507, !tbaa !292
  %4 = getelementptr inbounds %struct.CORE_PORTABLE_S, %struct.CORE_PORTABLE_S* %3, i32 0, i32 0, !dbg !3508
  store i8 0, i8* %4, align 1, !dbg !3509, !tbaa !3499
  ret void, !dbg !3510
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @printf_(i8*, ...) #0 !dbg !3511 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3517, metadata !DIExpression()), !dbg !3529
  %6 = bitcast %struct.__va_list* %3 to i8*, !dbg !3530
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !3530
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !3518, metadata !DIExpression()), !dbg !3531
  %7 = bitcast %struct.__va_list* %3 to i8*, !dbg !3532
  call void @llvm.va_start(i8* %7), !dbg !3532
  %8 = bitcast [1 x i8]* %4 to i8*, !dbg !3533
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %8) #4, !dbg !3533
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !3525, metadata !DIExpression()), !dbg !3534
  %9 = bitcast i32* %5 to i8*, !dbg !3535
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !3535
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3527, metadata !DIExpression()), !dbg !3536
  %10 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0, !dbg !3537
  %11 = load i8*, i8** %2, align 4, !dbg !3538, !tbaa !292
  %12 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !3539
  %13 = bitcast i8** %12 to [1 x i32]*, !dbg !3539
  %14 = load [1 x i32], [1 x i32]* %13, align 4, !dbg !3539
  %15 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %10, i32 -1, i8* %11, [1 x i32] %14), !dbg !3539
  store i32 %15, i32* %5, align 4, !dbg !3536, !tbaa !827
  %16 = bitcast %struct.__va_list* %3 to i8*, !dbg !3540
  call void @llvm.va_end(i8* %16), !dbg !3540
  %17 = load i32, i32* %5, align 4, !dbg !3541, !tbaa !827
  %18 = bitcast i32* %5 to i8*, !dbg !3542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !3542
  %19 = bitcast [1 x i8]* %4 to i8*, !dbg !3542
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %19) #4, !dbg !3542
  %20 = bitcast %struct.__va_list* %3 to i8*, !dbg !3542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !3542
  ret i32 %17, !dbg !3543
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_char(i8 zeroext, i8*, i32, i32) #5 !dbg !3544 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1, !tbaa !312
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3546, metadata !DIExpression()), !dbg !3550
  store i8* %1, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3547, metadata !DIExpression()), !dbg !3551
  store i32 %2, i32* %7, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3548, metadata !DIExpression()), !dbg !3552
  store i32 %3, i32* %8, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3549, metadata !DIExpression()), !dbg !3553
  %9 = load i8*, i8** %6, align 4, !dbg !3554, !tbaa !292
  %10 = load i32, i32* %7, align 4, !dbg !3555, !tbaa !827
  %11 = load i32, i32* %8, align 4, !dbg !3556, !tbaa !827
  %12 = load i8, i8* %5, align 1, !dbg !3557, !tbaa !312
  %13 = icmp ne i8 %12, 0, !dbg !3557
  br i1 %13, label %14, label %16, !dbg !3559

14:                                               ; preds = %4
  %15 = load i8, i8* %5, align 1, !dbg !3560, !tbaa !312
  call arm_aapcscc void @_putchar(i8 zeroext %15), !dbg !3562
  br label %16, !dbg !3563

16:                                               ; preds = %14, %4
  ret void, !dbg !3564
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32]) #0 !dbg !3565 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca void (i8, i8*, i32, i32)*, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %6, i32 0, i32 0
  %28 = bitcast i8** %27 to [1 x i32]*
  store [1 x i32] %4, [1 x i32]* %28, align 4
  store void (i8, i8*, i32, i32)* %0, void (i8, i8*, i32, i32)** %7, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata void (i8, i8*, i32, i32)** %7, metadata !3570, metadata !DIExpression()), !dbg !3622
  store i8* %1, i8** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3571, metadata !DIExpression()), !dbg !3623
  store i32 %2, i32* %9, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3572, metadata !DIExpression()), !dbg !3624
  store i8* %3, i8** %10, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3573, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.declare(metadata %struct.__va_list* %6, metadata !3574, metadata !DIExpression()), !dbg !3626
  %29 = bitcast i32* %11 to i8*, !dbg !3627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #4, !dbg !3627
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3575, metadata !DIExpression()), !dbg !3628
  %30 = bitcast i32* %12 to i8*, !dbg !3627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %30) #4, !dbg !3627
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3576, metadata !DIExpression()), !dbg !3629
  %31 = bitcast i32* %13 to i8*, !dbg !3627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %31) #4, !dbg !3627
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3577, metadata !DIExpression()), !dbg !3630
  %32 = bitcast i32* %14 to i8*, !dbg !3627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %32) #4, !dbg !3627
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3578, metadata !DIExpression()), !dbg !3631
  %33 = bitcast i32* %15 to i8*, !dbg !3632
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %33) #4, !dbg !3632
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3579, metadata !DIExpression()), !dbg !3633
  store i32 0, i32* %15, align 4, !dbg !3633, !tbaa !827
  %34 = load i8*, i8** %8, align 4, !dbg !3634, !tbaa !292
  %35 = icmp ne i8* %34, null, !dbg !3634
  br i1 %35, label %37, label %36, !dbg !3636

36:                                               ; preds = %5
  store void (i8, i8*, i32, i32)* @_out_null, void (i8, i8*, i32, i32)** %7, align 4, !dbg !3637, !tbaa !292
  br label %37, !dbg !3639

37:                                               ; preds = %36, %5
  br label %38, !dbg !3640

38:                                               ; preds = %766, %47, %37
  %39 = load i8*, i8** %10, align 4, !dbg !3641, !tbaa !292
  %40 = load i8, i8* %39, align 1, !dbg !3642, !tbaa !312
  %41 = icmp ne i8 %40, 0, !dbg !3640
  br i1 %41, label %42, label %767, !dbg !3640

42:                                               ; preds = %38
  %43 = load i8*, i8** %10, align 4, !dbg !3643, !tbaa !292
  %44 = load i8, i8* %43, align 1, !dbg !3645, !tbaa !312
  %45 = zext i8 %44 to i32, !dbg !3645
  %46 = icmp ne i32 %45, 37, !dbg !3646
  br i1 %46, label %47, label %57, !dbg !3647

47:                                               ; preds = %42
  %48 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !3648, !tbaa !292
  %49 = load i8*, i8** %10, align 4, !dbg !3650, !tbaa !292
  %50 = load i8, i8* %49, align 1, !dbg !3651, !tbaa !312
  %51 = load i8*, i8** %8, align 4, !dbg !3652, !tbaa !292
  %52 = load i32, i32* %15, align 4, !dbg !3653, !tbaa !827
  %53 = add i32 %52, 1, !dbg !3653
  store i32 %53, i32* %15, align 4, !dbg !3653, !tbaa !827
  %54 = load i32, i32* %9, align 4, !dbg !3654, !tbaa !827
  call arm_aapcscc void %48(i8 zeroext %50, i8* %51, i32 %52, i32 %54), !dbg !3648
  %55 = load i8*, i8** %10, align 4, !dbg !3655, !tbaa !292
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !3655
  store i8* %56, i8** %10, align 4, !dbg !3655, !tbaa !292
  br label %38, !dbg !3656, !llvm.loop !3657

57:                                               ; preds = %42
  %58 = load i8*, i8** %10, align 4, !dbg !3659, !tbaa !292
  %59 = getelementptr inbounds i8, i8* %58, i32 1, !dbg !3659
  store i8* %59, i8** %10, align 4, !dbg !3659, !tbaa !292
  br label %60

60:                                               ; preds = %57
  store i32 0, i32* %11, align 4, !dbg !3661, !tbaa !827
  br label %61, !dbg !3662

61:                                               ; preds = %92, %60
  %62 = load i8*, i8** %10, align 4, !dbg !3663, !tbaa !292
  %63 = load i8, i8* %62, align 1, !dbg !3665, !tbaa !312
  %64 = zext i8 %63 to i32, !dbg !3665
  switch i32 %64, label %90 [
    i32 48, label %65
    i32 45, label %70
    i32 43, label %75
    i32 32, label %80
    i32 35, label %85
  ], !dbg !3666

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4, !dbg !3667, !tbaa !827
  %67 = or i32 %66, 1, !dbg !3667
  store i32 %67, i32* %11, align 4, !dbg !3667, !tbaa !827
  %68 = load i8*, i8** %10, align 4, !dbg !3669, !tbaa !292
  %69 = getelementptr inbounds i8, i8* %68, i32 1, !dbg !3669
  store i8* %69, i8** %10, align 4, !dbg !3669, !tbaa !292
  store i32 1, i32* %14, align 4, !dbg !3670, !tbaa !827
  br label %91, !dbg !3671

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4, !dbg !3672, !tbaa !827
  %72 = or i32 %71, 2, !dbg !3672
  store i32 %72, i32* %11, align 4, !dbg !3672, !tbaa !827
  %73 = load i8*, i8** %10, align 4, !dbg !3673, !tbaa !292
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !3673
  store i8* %74, i8** %10, align 4, !dbg !3673, !tbaa !292
  store i32 1, i32* %14, align 4, !dbg !3674, !tbaa !827
  br label %91, !dbg !3675

75:                                               ; preds = %61
  %76 = load i32, i32* %11, align 4, !dbg !3676, !tbaa !827
  %77 = or i32 %76, 4, !dbg !3676
  store i32 %77, i32* %11, align 4, !dbg !3676, !tbaa !827
  %78 = load i8*, i8** %10, align 4, !dbg !3677, !tbaa !292
  %79 = getelementptr inbounds i8, i8* %78, i32 1, !dbg !3677
  store i8* %79, i8** %10, align 4, !dbg !3677, !tbaa !292
  store i32 1, i32* %14, align 4, !dbg !3678, !tbaa !827
  br label %91, !dbg !3679

80:                                               ; preds = %61
  %81 = load i32, i32* %11, align 4, !dbg !3680, !tbaa !827
  %82 = or i32 %81, 8, !dbg !3680
  store i32 %82, i32* %11, align 4, !dbg !3680, !tbaa !827
  %83 = load i8*, i8** %10, align 4, !dbg !3681, !tbaa !292
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !3681
  store i8* %84, i8** %10, align 4, !dbg !3681, !tbaa !292
  store i32 1, i32* %14, align 4, !dbg !3682, !tbaa !827
  br label %91, !dbg !3683

85:                                               ; preds = %61
  %86 = load i32, i32* %11, align 4, !dbg !3684, !tbaa !827
  %87 = or i32 %86, 16, !dbg !3684
  store i32 %87, i32* %11, align 4, !dbg !3684, !tbaa !827
  %88 = load i8*, i8** %10, align 4, !dbg !3685, !tbaa !292
  %89 = getelementptr inbounds i8, i8* %88, i32 1, !dbg !3685
  store i8* %89, i8** %10, align 4, !dbg !3685, !tbaa !292
  store i32 1, i32* %14, align 4, !dbg !3686, !tbaa !827
  br label %91, !dbg !3687

90:                                               ; preds = %61
  store i32 0, i32* %14, align 4, !dbg !3688, !tbaa !827
  br label %91, !dbg !3689

91:                                               ; preds = %90, %85, %80, %75, %70, %65
  br label %92, !dbg !3690

92:                                               ; preds = %91
  %93 = load i32, i32* %14, align 4, !dbg !3691, !tbaa !827
  %94 = icmp ne i32 %93, 0, !dbg !3690
  br i1 %94, label %61, label %95, !dbg !3690, !llvm.loop !3692

95:                                               ; preds = %92
  store i32 0, i32* %12, align 4, !dbg !3694, !tbaa !827
  %96 = load i8*, i8** %10, align 4, !dbg !3695, !tbaa !292
  %97 = load i8, i8* %96, align 1, !dbg !3696, !tbaa !312
  %98 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %97), !dbg !3697
  br i1 %98, label %99, label %101, !dbg !3698

99:                                               ; preds = %95
  %100 = call arm_aapcscc i32 @_atoi(i8** %10), !dbg !3699
  store i32 %100, i32* %12, align 4, !dbg !3701, !tbaa !827
  br label %127, !dbg !3702

101:                                              ; preds = %95
  %102 = load i8*, i8** %10, align 4, !dbg !3703, !tbaa !292
  %103 = load i8, i8* %102, align 1, !dbg !3704, !tbaa !312
  %104 = zext i8 %103 to i32, !dbg !3704
  %105 = icmp eq i32 %104, 42, !dbg !3705
  br i1 %105, label %106, label %126, !dbg !3706

106:                                              ; preds = %101
  %107 = bitcast i32* %16 to i8*, !dbg !3707
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %107) #4, !dbg !3707
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3580, metadata !DIExpression()), !dbg !3708
  %108 = bitcast %struct.__va_list* %6 to i8**, !dbg !3709
  %109 = load i8*, i8** %108, align 4, !dbg !3709
  %110 = getelementptr inbounds i8, i8* %109, i32 4, !dbg !3709
  store i8* %110, i8** %108, align 4, !dbg !3709
  %111 = bitcast i8* %109 to i32*, !dbg !3709
  %112 = load i32, i32* %111, align 4, !dbg !3709
  store i32 %112, i32* %16, align 4, !dbg !3708, !tbaa !827
  %113 = load i32, i32* %16, align 4, !dbg !3710, !tbaa !827
  %114 = icmp slt i32 %113, 0, !dbg !3712
  br i1 %114, label %115, label %120, !dbg !3713

115:                                              ; preds = %106
  %116 = load i32, i32* %11, align 4, !dbg !3714, !tbaa !827
  %117 = or i32 %116, 2, !dbg !3714
  store i32 %117, i32* %11, align 4, !dbg !3714, !tbaa !827
  %118 = load i32, i32* %16, align 4, !dbg !3716, !tbaa !827
  %119 = sub nsw i32 0, %118, !dbg !3717
  store i32 %119, i32* %12, align 4, !dbg !3718, !tbaa !827
  br label %122, !dbg !3719

120:                                              ; preds = %106
  %121 = load i32, i32* %16, align 4, !dbg !3720, !tbaa !827
  store i32 %121, i32* %12, align 4, !dbg !3722, !tbaa !827
  br label %122

122:                                              ; preds = %120, %115
  %123 = load i8*, i8** %10, align 4, !dbg !3723, !tbaa !292
  %124 = getelementptr inbounds i8, i8* %123, i32 1, !dbg !3723
  store i8* %124, i8** %10, align 4, !dbg !3723, !tbaa !292
  %125 = bitcast i32* %16 to i8*, !dbg !3724
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %125) #4, !dbg !3724
  br label %126, !dbg !3725

126:                                              ; preds = %122, %101
  br label %127

127:                                              ; preds = %126, %99
  store i32 0, i32* %13, align 4, !dbg !3726, !tbaa !827
  %128 = load i8*, i8** %10, align 4, !dbg !3727, !tbaa !292
  %129 = load i8, i8* %128, align 1, !dbg !3728, !tbaa !312
  %130 = zext i8 %129 to i32, !dbg !3728
  %131 = icmp eq i32 %130, 46, !dbg !3729
  br i1 %131, label %132, label %166, !dbg !3730

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4, !dbg !3731, !tbaa !827
  %134 = or i32 %133, 1024, !dbg !3731
  store i32 %134, i32* %11, align 4, !dbg !3731, !tbaa !827
  %135 = load i8*, i8** %10, align 4, !dbg !3732, !tbaa !292
  %136 = getelementptr inbounds i8, i8* %135, i32 1, !dbg !3732
  store i8* %136, i8** %10, align 4, !dbg !3732, !tbaa !292
  %137 = load i8*, i8** %10, align 4, !dbg !3733, !tbaa !292
  %138 = load i8, i8* %137, align 1, !dbg !3734, !tbaa !312
  %139 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %138), !dbg !3735
  br i1 %139, label %140, label %142, !dbg !3736

140:                                              ; preds = %132
  %141 = call arm_aapcscc i32 @_atoi(i8** %10), !dbg !3737
  store i32 %141, i32* %13, align 4, !dbg !3739, !tbaa !827
  br label %165, !dbg !3740

142:                                              ; preds = %132
  %143 = load i8*, i8** %10, align 4, !dbg !3741, !tbaa !292
  %144 = load i8, i8* %143, align 1, !dbg !3742, !tbaa !312
  %145 = zext i8 %144 to i32, !dbg !3742
  %146 = icmp eq i32 %145, 42, !dbg !3743
  br i1 %146, label %147, label %164, !dbg !3744

147:                                              ; preds = %142
  %148 = bitcast i32* %17 to i8*, !dbg !3745
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %148) #4, !dbg !3745
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3585, metadata !DIExpression()), !dbg !3746
  %149 = bitcast %struct.__va_list* %6 to i8**, !dbg !3747
  %150 = load i8*, i8** %149, align 4, !dbg !3747
  %151 = getelementptr inbounds i8, i8* %150, i32 4, !dbg !3747
  store i8* %151, i8** %149, align 4, !dbg !3747
  %152 = bitcast i8* %150 to i32*, !dbg !3747
  %153 = load i32, i32* %152, align 4, !dbg !3747
  store i32 %153, i32* %17, align 4, !dbg !3746, !tbaa !827
  %154 = load i32, i32* %17, align 4, !dbg !3748, !tbaa !827
  %155 = icmp sgt i32 %154, 0, !dbg !3749
  br i1 %155, label %156, label %158, !dbg !3748

156:                                              ; preds = %147
  %157 = load i32, i32* %17, align 4, !dbg !3750, !tbaa !827
  br label %159, !dbg !3748

158:                                              ; preds = %147
  br label %159, !dbg !3748

159:                                              ; preds = %158, %156
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ], !dbg !3748
  store i32 %160, i32* %13, align 4, !dbg !3751, !tbaa !827
  %161 = load i8*, i8** %10, align 4, !dbg !3752, !tbaa !292
  %162 = getelementptr inbounds i8, i8* %161, i32 1, !dbg !3752
  store i8* %162, i8** %10, align 4, !dbg !3752, !tbaa !292
  %163 = bitcast i32* %17 to i8*, !dbg !3753
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %163) #4, !dbg !3753
  br label %164, !dbg !3754

164:                                              ; preds = %159, %142
  br label %165

165:                                              ; preds = %164, %140
  br label %166, !dbg !3755

166:                                              ; preds = %165, %127
  %167 = load i8*, i8** %10, align 4, !dbg !3756, !tbaa !292
  %168 = load i8, i8* %167, align 1, !dbg !3757, !tbaa !312
  %169 = zext i8 %168 to i32, !dbg !3757
  switch i32 %169, label %215 [
    i32 108, label %170
    i32 104, label %185
    i32 116, label %200
    i32 106, label %205
    i32 122, label %210
  ], !dbg !3758

170:                                              ; preds = %166
  %171 = load i32, i32* %11, align 4, !dbg !3759, !tbaa !827
  %172 = or i32 %171, 256, !dbg !3759
  store i32 %172, i32* %11, align 4, !dbg !3759, !tbaa !827
  %173 = load i8*, i8** %10, align 4, !dbg !3761, !tbaa !292
  %174 = getelementptr inbounds i8, i8* %173, i32 1, !dbg !3761
  store i8* %174, i8** %10, align 4, !dbg !3761, !tbaa !292
  %175 = load i8*, i8** %10, align 4, !dbg !3762, !tbaa !292
  %176 = load i8, i8* %175, align 1, !dbg !3764, !tbaa !312
  %177 = zext i8 %176 to i32, !dbg !3764
  %178 = icmp eq i32 %177, 108, !dbg !3765
  br i1 %178, label %179, label %184, !dbg !3766

179:                                              ; preds = %170
  %180 = load i32, i32* %11, align 4, !dbg !3767, !tbaa !827
  %181 = or i32 %180, 512, !dbg !3767
  store i32 %181, i32* %11, align 4, !dbg !3767, !tbaa !827
  %182 = load i8*, i8** %10, align 4, !dbg !3769, !tbaa !292
  %183 = getelementptr inbounds i8, i8* %182, i32 1, !dbg !3769
  store i8* %183, i8** %10, align 4, !dbg !3769, !tbaa !292
  br label %184, !dbg !3770

184:                                              ; preds = %179, %170
  br label %216, !dbg !3771

185:                                              ; preds = %166
  %186 = load i32, i32* %11, align 4, !dbg !3772, !tbaa !827
  %187 = or i32 %186, 128, !dbg !3772
  store i32 %187, i32* %11, align 4, !dbg !3772, !tbaa !827
  %188 = load i8*, i8** %10, align 4, !dbg !3773, !tbaa !292
  %189 = getelementptr inbounds i8, i8* %188, i32 1, !dbg !3773
  store i8* %189, i8** %10, align 4, !dbg !3773, !tbaa !292
  %190 = load i8*, i8** %10, align 4, !dbg !3774, !tbaa !292
  %191 = load i8, i8* %190, align 1, !dbg !3776, !tbaa !312
  %192 = zext i8 %191 to i32, !dbg !3776
  %193 = icmp eq i32 %192, 104, !dbg !3777
  br i1 %193, label %194, label %199, !dbg !3778

194:                                              ; preds = %185
  %195 = load i32, i32* %11, align 4, !dbg !3779, !tbaa !827
  %196 = or i32 %195, 64, !dbg !3779
  store i32 %196, i32* %11, align 4, !dbg !3779, !tbaa !827
  %197 = load i8*, i8** %10, align 4, !dbg !3781, !tbaa !292
  %198 = getelementptr inbounds i8, i8* %197, i32 1, !dbg !3781
  store i8* %198, i8** %10, align 4, !dbg !3781, !tbaa !292
  br label %199, !dbg !3782

199:                                              ; preds = %194, %185
  br label %216, !dbg !3783

200:                                              ; preds = %166
  %201 = load i32, i32* %11, align 4, !dbg !3784, !tbaa !827
  %202 = or i32 %201, 256, !dbg !3784
  store i32 %202, i32* %11, align 4, !dbg !3784, !tbaa !827
  %203 = load i8*, i8** %10, align 4, !dbg !3785, !tbaa !292
  %204 = getelementptr inbounds i8, i8* %203, i32 1, !dbg !3785
  store i8* %204, i8** %10, align 4, !dbg !3785, !tbaa !292
  br label %216, !dbg !3786

205:                                              ; preds = %166
  %206 = load i32, i32* %11, align 4, !dbg !3787, !tbaa !827
  %207 = or i32 %206, 512, !dbg !3787
  store i32 %207, i32* %11, align 4, !dbg !3787, !tbaa !827
  %208 = load i8*, i8** %10, align 4, !dbg !3788, !tbaa !292
  %209 = getelementptr inbounds i8, i8* %208, i32 1, !dbg !3788
  store i8* %209, i8** %10, align 4, !dbg !3788, !tbaa !292
  br label %216, !dbg !3789

210:                                              ; preds = %166
  %211 = load i32, i32* %11, align 4, !dbg !3790, !tbaa !827
  %212 = or i32 %211, 256, !dbg !3790
  store i32 %212, i32* %11, align 4, !dbg !3790, !tbaa !827
  %213 = load i8*, i8** %10, align 4, !dbg !3791, !tbaa !292
  %214 = getelementptr inbounds i8, i8* %213, i32 1, !dbg !3791
  store i8* %214, i8** %10, align 4, !dbg !3791, !tbaa !292
  br label %216, !dbg !3792

215:                                              ; preds = %166
  br label %216, !dbg !3793

216:                                              ; preds = %215, %210, %205, %200, %199, %184
  %217 = load i8*, i8** %10, align 4, !dbg !3794, !tbaa !292
  %218 = load i8, i8* %217, align 1, !dbg !3795, !tbaa !312
  %219 = zext i8 %218 to i32, !dbg !3795
  switch i32 %219, label %756 [
    i32 100, label %220
    i32 105, label %220
    i32 117, label %220
    i32 120, label %220
    i32 88, label %220
    i32 111, label %220
    i32 98, label %220
    i32 102, label %509
    i32 70, label %509
    i32 101, label %537
    i32 69, label %537
    i32 103, label %537
    i32 71, label %537
    i32 99, label %583
    i32 115, label %633
    i32 112, label %729
    i32 37, label %748
  ], !dbg !3796

220:                                              ; preds = %216, %216, %216, %216, %216, %216, %216
  %221 = bitcast i32* %18 to i8*, !dbg !3797
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %221) #4, !dbg !3797
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3591, metadata !DIExpression()), !dbg !3798
  %222 = load i8*, i8** %10, align 4, !dbg !3799, !tbaa !292
  %223 = load i8, i8* %222, align 1, !dbg !3801, !tbaa !312
  %224 = zext i8 %223 to i32, !dbg !3801
  %225 = icmp eq i32 %224, 120, !dbg !3802
  br i1 %225, label %231, label %226, !dbg !3803

226:                                              ; preds = %220
  %227 = load i8*, i8** %10, align 4, !dbg !3804, !tbaa !292
  %228 = load i8, i8* %227, align 1, !dbg !3805, !tbaa !312
  %229 = zext i8 %228 to i32, !dbg !3805
  %230 = icmp eq i32 %229, 88, !dbg !3806
  br i1 %230, label %231, label %232, !dbg !3807

231:                                              ; preds = %226, %220
  store i32 16, i32* %18, align 4, !dbg !3808, !tbaa !827
  br label %249, !dbg !3810

232:                                              ; preds = %226
  %233 = load i8*, i8** %10, align 4, !dbg !3811, !tbaa !292
  %234 = load i8, i8* %233, align 1, !dbg !3813, !tbaa !312
  %235 = zext i8 %234 to i32, !dbg !3813
  %236 = icmp eq i32 %235, 111, !dbg !3814
  br i1 %236, label %237, label %238, !dbg !3815

237:                                              ; preds = %232
  store i32 8, i32* %18, align 4, !dbg !3816, !tbaa !827
  br label %248, !dbg !3818

238:                                              ; preds = %232
  %239 = load i8*, i8** %10, align 4, !dbg !3819, !tbaa !292
  %240 = load i8, i8* %239, align 1, !dbg !3821, !tbaa !312
  %241 = zext i8 %240 to i32, !dbg !3821
  %242 = icmp eq i32 %241, 98, !dbg !3822
  br i1 %242, label %243, label %244, !dbg !3823

243:                                              ; preds = %238
  store i32 2, i32* %18, align 4, !dbg !3824, !tbaa !827
  br label %247, !dbg !3826

244:                                              ; preds = %238
  store i32 10, i32* %18, align 4, !dbg !3827, !tbaa !827
  %245 = load i32, i32* %11, align 4, !dbg !3829, !tbaa !827
  %246 = and i32 %245, -17, !dbg !3829
  store i32 %246, i32* %11, align 4, !dbg !3829, !tbaa !827
  br label %247

247:                                              ; preds = %244, %243
  br label %248

248:                                              ; preds = %247, %237
  br label %249

249:                                              ; preds = %248, %231
  %250 = load i8*, i8** %10, align 4, !dbg !3830, !tbaa !292
  %251 = load i8, i8* %250, align 1, !dbg !3832, !tbaa !312
  %252 = zext i8 %251 to i32, !dbg !3832
  %253 = icmp eq i32 %252, 88, !dbg !3833
  br i1 %253, label %254, label %257, !dbg !3834

254:                                              ; preds = %249
  %255 = load i32, i32* %11, align 4, !dbg !3835, !tbaa !827
  %256 = or i32 %255, 32, !dbg !3835
  store i32 %256, i32* %11, align 4, !dbg !3835, !tbaa !827
  br label %257, !dbg !3837

257:                                              ; preds = %254, %249
  %258 = load i8*, i8** %10, align 4, !dbg !3838, !tbaa !292
  %259 = load i8, i8* %258, align 1, !dbg !3840, !tbaa !312
  %260 = zext i8 %259 to i32, !dbg !3840
  %261 = icmp ne i32 %260, 105, !dbg !3841
  br i1 %261, label %262, label %270, !dbg !3842

262:                                              ; preds = %257
  %263 = load i8*, i8** %10, align 4, !dbg !3843, !tbaa !292
  %264 = load i8, i8* %263, align 1, !dbg !3844, !tbaa !312
  %265 = zext i8 %264 to i32, !dbg !3844
  %266 = icmp ne i32 %265, 100, !dbg !3845
  br i1 %266, label %267, label %270, !dbg !3846

267:                                              ; preds = %262
  %268 = load i32, i32* %11, align 4, !dbg !3847, !tbaa !827
  %269 = and i32 %268, -13, !dbg !3847
  store i32 %269, i32* %11, align 4, !dbg !3847, !tbaa !827
  br label %270, !dbg !3849

270:                                              ; preds = %267, %262, %257
  %271 = load i32, i32* %11, align 4, !dbg !3850, !tbaa !827
  %272 = and i32 %271, 1024, !dbg !3852
  %273 = icmp ne i32 %272, 0, !dbg !3852
  br i1 %273, label %274, label %277, !dbg !3853

274:                                              ; preds = %270
  %275 = load i32, i32* %11, align 4, !dbg !3854, !tbaa !827
  %276 = and i32 %275, -2, !dbg !3854
  store i32 %276, i32* %11, align 4, !dbg !3854, !tbaa !827
  br label %277, !dbg !3856

277:                                              ; preds = %274, %270
  %278 = load i8*, i8** %10, align 4, !dbg !3857, !tbaa !292
  %279 = load i8, i8* %278, align 1, !dbg !3858, !tbaa !312
  %280 = zext i8 %279 to i32, !dbg !3858
  %281 = icmp eq i32 %280, 105, !dbg !3859
  br i1 %281, label %287, label %282, !dbg !3860

282:                                              ; preds = %277
  %283 = load i8*, i8** %10, align 4, !dbg !3861, !tbaa !292
  %284 = load i8, i8* %283, align 1, !dbg !3862, !tbaa !312
  %285 = zext i8 %284 to i32, !dbg !3862
  %286 = icmp eq i32 %285, 100, !dbg !3863
  br i1 %286, label %287, label %414, !dbg !3864

287:                                              ; preds = %282, %277
  %288 = load i32, i32* %11, align 4, !dbg !3865, !tbaa !827
  %289 = and i32 %288, 512, !dbg !3866
  %290 = icmp ne i32 %289, 0, !dbg !3866
  br i1 %290, label %291, label %324, !dbg !3867

291:                                              ; preds = %287
  %292 = bitcast i64* %19 to i8*, !dbg !3868
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %292) #4, !dbg !3868
  call void @llvm.dbg.declare(metadata i64* %19, metadata !3594, metadata !DIExpression()), !dbg !3869
  %293 = bitcast %struct.__va_list* %6 to i8**, !dbg !3870
  %294 = load i8*, i8** %293, align 4, !dbg !3870
  %295 = ptrtoint i8* %294 to i32, !dbg !3870
  %296 = add i32 %295, 7, !dbg !3870
  %297 = and i32 %296, -8, !dbg !3870
  %298 = inttoptr i32 %297 to i8*, !dbg !3870
  %299 = getelementptr inbounds i8, i8* %298, i32 8, !dbg !3870
  store i8* %299, i8** %293, align 4, !dbg !3870
  %300 = bitcast i8* %298 to i64*, !dbg !3870
  %301 = load i64, i64* %300, align 8, !dbg !3870
  store i64 %301, i64* %19, align 8, !dbg !3869, !tbaa !3444
  %302 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !3871, !tbaa !292
  %303 = load i8*, i8** %8, align 4, !dbg !3872, !tbaa !292
  %304 = load i32, i32* %15, align 4, !dbg !3873, !tbaa !827
  %305 = load i32, i32* %9, align 4, !dbg !3874, !tbaa !827
  %306 = load i64, i64* %19, align 8, !dbg !3875, !tbaa !3444
  %307 = icmp sgt i64 %306, 0, !dbg !3876
  br i1 %307, label %308, label %310, !dbg !3875

308:                                              ; preds = %291
  %309 = load i64, i64* %19, align 8, !dbg !3877, !tbaa !3444
  br label %313, !dbg !3875

310:                                              ; preds = %291
  %311 = load i64, i64* %19, align 8, !dbg !3878, !tbaa !3444
  %312 = sub nsw i64 0, %311, !dbg !3879
  br label %313, !dbg !3875

313:                                              ; preds = %310, %308
  %314 = phi i64 [ %309, %308 ], [ %312, %310 ], !dbg !3875
  %315 = load i64, i64* %19, align 8, !dbg !3880, !tbaa !3444
  %316 = icmp slt i64 %315, 0, !dbg !3881
  %317 = load i32, i32* %18, align 4, !dbg !3882, !tbaa !827
  %318 = zext i32 %317 to i64, !dbg !3882
  %319 = load i32, i32* %13, align 4, !dbg !3883, !tbaa !827
  %320 = load i32, i32* %12, align 4, !dbg !3884, !tbaa !827
  %321 = load i32, i32* %11, align 4, !dbg !3885, !tbaa !827
  %322 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %302, i8* %303, i32 %304, i32 %305, i64 %314, i1 zeroext %316, i64 %318, i32 %319, i32 %320, i32 %321), !dbg !3886
  store i32 %322, i32* %15, align 4, !dbg !3887, !tbaa !827
  %323 = bitcast i64* %19 to i8*, !dbg !3888
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %323) #4, !dbg !3888
  br label %413, !dbg !3889

324:                                              ; preds = %287
  %325 = load i32, i32* %11, align 4, !dbg !3890, !tbaa !827
  %326 = and i32 %325, 256, !dbg !3891
  %327 = icmp ne i32 %326, 0, !dbg !3891
  br i1 %327, label %328, label %356, !dbg !3892

328:                                              ; preds = %324
  %329 = bitcast i32* %20 to i8*, !dbg !3893
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %329) #4, !dbg !3893
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3601, metadata !DIExpression()), !dbg !3894
  %330 = bitcast %struct.__va_list* %6 to i8**, !dbg !3895
  %331 = load i8*, i8** %330, align 4, !dbg !3895
  %332 = getelementptr inbounds i8, i8* %331, i32 4, !dbg !3895
  store i8* %332, i8** %330, align 4, !dbg !3895
  %333 = bitcast i8* %331 to i32*, !dbg !3895
  %334 = load i32, i32* %333, align 4, !dbg !3895
  store i32 %334, i32* %20, align 4, !dbg !3894, !tbaa !3896
  %335 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !3898, !tbaa !292
  %336 = load i8*, i8** %8, align 4, !dbg !3899, !tbaa !292
  %337 = load i32, i32* %15, align 4, !dbg !3900, !tbaa !827
  %338 = load i32, i32* %9, align 4, !dbg !3901, !tbaa !827
  %339 = load i32, i32* %20, align 4, !dbg !3902, !tbaa !3896
  %340 = icmp sgt i32 %339, 0, !dbg !3903
  br i1 %340, label %341, label %343, !dbg !3902

341:                                              ; preds = %328
  %342 = load i32, i32* %20, align 4, !dbg !3904, !tbaa !3896
  br label %346, !dbg !3902

343:                                              ; preds = %328
  %344 = load i32, i32* %20, align 4, !dbg !3905, !tbaa !3896
  %345 = sub nsw i32 0, %344, !dbg !3906
  br label %346, !dbg !3902

346:                                              ; preds = %343, %341
  %347 = phi i32 [ %342, %341 ], [ %345, %343 ], !dbg !3902
  %348 = load i32, i32* %20, align 4, !dbg !3907, !tbaa !3896
  %349 = icmp slt i32 %348, 0, !dbg !3908
  %350 = load i32, i32* %18, align 4, !dbg !3909, !tbaa !827
  %351 = load i32, i32* %13, align 4, !dbg !3910, !tbaa !827
  %352 = load i32, i32* %12, align 4, !dbg !3911, !tbaa !827
  %353 = load i32, i32* %11, align 4, !dbg !3912, !tbaa !827
  %354 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %335, i8* %336, i32 %337, i32 %338, i32 %347, i1 zeroext %349, i32 %350, i32 %351, i32 %352, i32 %353), !dbg !3913
  store i32 %354, i32* %15, align 4, !dbg !3914, !tbaa !827
  %355 = bitcast i32* %20 to i8*, !dbg !3915
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %355) #4, !dbg !3915
  br label %412, !dbg !3916

356:                                              ; preds = %324
  %357 = bitcast i32* %21 to i8*, !dbg !3917
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %357) #4, !dbg !3917
  call void @llvm.dbg.declare(metadata i32* %21, metadata !3606, metadata !DIExpression()), !dbg !3918
  %358 = load i32, i32* %11, align 4, !dbg !3919, !tbaa !827
  %359 = and i32 %358, 64, !dbg !3920
  %360 = icmp ne i32 %359, 0, !dbg !3920
  br i1 %360, label %361, label %369, !dbg !3921

361:                                              ; preds = %356
  %362 = bitcast %struct.__va_list* %6 to i8**, !dbg !3922
  %363 = load i8*, i8** %362, align 4, !dbg !3922
  %364 = getelementptr inbounds i8, i8* %363, i32 4, !dbg !3922
  store i8* %364, i8** %362, align 4, !dbg !3922
  %365 = bitcast i8* %363 to i32*, !dbg !3922
  %366 = load i32, i32* %365, align 4, !dbg !3922
  %367 = trunc i32 %366 to i8, !dbg !3923
  %368 = zext i8 %367 to i32, !dbg !3923
  br label %389, !dbg !3921

369:                                              ; preds = %356
  %370 = load i32, i32* %11, align 4, !dbg !3924, !tbaa !827
  %371 = and i32 %370, 128, !dbg !3925
  %372 = icmp ne i32 %371, 0, !dbg !3925
  br i1 %372, label %373, label %381, !dbg !3926

373:                                              ; preds = %369
  %374 = bitcast %struct.__va_list* %6 to i8**, !dbg !3927
  %375 = load i8*, i8** %374, align 4, !dbg !3927
  %376 = getelementptr inbounds i8, i8* %375, i32 4, !dbg !3927
  store i8* %376, i8** %374, align 4, !dbg !3927
  %377 = bitcast i8* %375 to i32*, !dbg !3927
  %378 = load i32, i32* %377, align 4, !dbg !3927
  %379 = trunc i32 %378 to i16, !dbg !3928
  %380 = sext i16 %379 to i32, !dbg !3928
  br label %387, !dbg !3926

381:                                              ; preds = %369
  %382 = bitcast %struct.__va_list* %6 to i8**, !dbg !3929
  %383 = load i8*, i8** %382, align 4, !dbg !3929
  %384 = getelementptr inbounds i8, i8* %383, i32 4, !dbg !3929
  store i8* %384, i8** %382, align 4, !dbg !3929
  %385 = bitcast i8* %383 to i32*, !dbg !3929
  %386 = load i32, i32* %385, align 4, !dbg !3929
  br label %387, !dbg !3926

387:                                              ; preds = %381, %373
  %388 = phi i32 [ %380, %373 ], [ %386, %381 ], !dbg !3926
  br label %389, !dbg !3921

389:                                              ; preds = %387, %361
  %390 = phi i32 [ %368, %361 ], [ %388, %387 ], !dbg !3921
  store i32 %390, i32* %21, align 4, !dbg !3918, !tbaa !827
  %391 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !3930, !tbaa !292
  %392 = load i8*, i8** %8, align 4, !dbg !3931, !tbaa !292
  %393 = load i32, i32* %15, align 4, !dbg !3932, !tbaa !827
  %394 = load i32, i32* %9, align 4, !dbg !3933, !tbaa !827
  %395 = load i32, i32* %21, align 4, !dbg !3934, !tbaa !827
  %396 = icmp sgt i32 %395, 0, !dbg !3935
  br i1 %396, label %397, label %399, !dbg !3934

397:                                              ; preds = %389
  %398 = load i32, i32* %21, align 4, !dbg !3936, !tbaa !827
  br label %402, !dbg !3934

399:                                              ; preds = %389
  %400 = load i32, i32* %21, align 4, !dbg !3937, !tbaa !827
  %401 = sub nsw i32 0, %400, !dbg !3938
  br label %402, !dbg !3934

402:                                              ; preds = %399, %397
  %403 = phi i32 [ %398, %397 ], [ %401, %399 ], !dbg !3934
  %404 = load i32, i32* %21, align 4, !dbg !3939, !tbaa !827
  %405 = icmp slt i32 %404, 0, !dbg !3940
  %406 = load i32, i32* %18, align 4, !dbg !3941, !tbaa !827
  %407 = load i32, i32* %13, align 4, !dbg !3942, !tbaa !827
  %408 = load i32, i32* %12, align 4, !dbg !3943, !tbaa !827
  %409 = load i32, i32* %11, align 4, !dbg !3944, !tbaa !827
  %410 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %391, i8* %392, i32 %393, i32 %394, i32 %403, i1 zeroext %405, i32 %406, i32 %407, i32 %408, i32 %409), !dbg !3945
  store i32 %410, i32* %15, align 4, !dbg !3946, !tbaa !827
  %411 = bitcast i32* %21 to i8*, !dbg !3947
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %411) #4, !dbg !3947
  br label %412

412:                                              ; preds = %402, %346
  br label %413

413:                                              ; preds = %412, %313
  br label %505, !dbg !3948

414:                                              ; preds = %282
  %415 = load i32, i32* %11, align 4, !dbg !3949, !tbaa !827
  %416 = and i32 %415, 512, !dbg !3950
  %417 = icmp ne i32 %416, 0, !dbg !3950
  br i1 %417, label %418, label %438, !dbg !3951

418:                                              ; preds = %414
  %419 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !3952, !tbaa !292
  %420 = load i8*, i8** %8, align 4, !dbg !3954, !tbaa !292
  %421 = load i32, i32* %15, align 4, !dbg !3955, !tbaa !827
  %422 = load i32, i32* %9, align 4, !dbg !3956, !tbaa !827
  %423 = bitcast %struct.__va_list* %6 to i8**, !dbg !3957
  %424 = load i8*, i8** %423, align 4, !dbg !3957
  %425 = ptrtoint i8* %424 to i32, !dbg !3957
  %426 = add i32 %425, 7, !dbg !3957
  %427 = and i32 %426, -8, !dbg !3957
  %428 = inttoptr i32 %427 to i8*, !dbg !3957
  %429 = getelementptr inbounds i8, i8* %428, i32 8, !dbg !3957
  store i8* %429, i8** %423, align 4, !dbg !3957
  %430 = bitcast i8* %428 to i64*, !dbg !3957
  %431 = load i64, i64* %430, align 8, !dbg !3957
  %432 = load i32, i32* %18, align 4, !dbg !3958, !tbaa !827
  %433 = zext i32 %432 to i64, !dbg !3958
  %434 = load i32, i32* %13, align 4, !dbg !3959, !tbaa !827
  %435 = load i32, i32* %12, align 4, !dbg !3960, !tbaa !827
  %436 = load i32, i32* %11, align 4, !dbg !3961, !tbaa !827
  %437 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %419, i8* %420, i32 %421, i32 %422, i64 %431, i1 zeroext false, i64 %433, i32 %434, i32 %435, i32 %436), !dbg !3962
  store i32 %437, i32* %15, align 4, !dbg !3963, !tbaa !827
  br label %504, !dbg !3964

438:                                              ; preds = %414
  %439 = load i32, i32* %11, align 4, !dbg !3965, !tbaa !827
  %440 = and i32 %439, 256, !dbg !3966
  %441 = icmp ne i32 %440, 0, !dbg !3966
  br i1 %441, label %442, label %457, !dbg !3967

442:                                              ; preds = %438
  %443 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !3968, !tbaa !292
  %444 = load i8*, i8** %8, align 4, !dbg !3970, !tbaa !292
  %445 = load i32, i32* %15, align 4, !dbg !3971, !tbaa !827
  %446 = load i32, i32* %9, align 4, !dbg !3972, !tbaa !827
  %447 = bitcast %struct.__va_list* %6 to i8**, !dbg !3973
  %448 = load i8*, i8** %447, align 4, !dbg !3973
  %449 = getelementptr inbounds i8, i8* %448, i32 4, !dbg !3973
  store i8* %449, i8** %447, align 4, !dbg !3973
  %450 = bitcast i8* %448 to i32*, !dbg !3973
  %451 = load i32, i32* %450, align 4, !dbg !3973
  %452 = load i32, i32* %18, align 4, !dbg !3974, !tbaa !827
  %453 = load i32, i32* %13, align 4, !dbg !3975, !tbaa !827
  %454 = load i32, i32* %12, align 4, !dbg !3976, !tbaa !827
  %455 = load i32, i32* %11, align 4, !dbg !3977, !tbaa !827
  %456 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %443, i8* %444, i32 %445, i32 %446, i32 %451, i1 zeroext false, i32 %452, i32 %453, i32 %454, i32 %455), !dbg !3978
  store i32 %456, i32* %15, align 4, !dbg !3979, !tbaa !827
  br label %503, !dbg !3980

457:                                              ; preds = %438
  %458 = bitcast i32* %22 to i8*, !dbg !3981
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %458) #4, !dbg !3981
  call void @llvm.dbg.declare(metadata i32* %22, metadata !3608, metadata !DIExpression()), !dbg !3982
  %459 = load i32, i32* %11, align 4, !dbg !3983, !tbaa !827
  %460 = and i32 %459, 64, !dbg !3984
  %461 = icmp ne i32 %460, 0, !dbg !3984
  br i1 %461, label %462, label %470, !dbg !3985

462:                                              ; preds = %457
  %463 = bitcast %struct.__va_list* %6 to i8**, !dbg !3986
  %464 = load i8*, i8** %463, align 4, !dbg !3986
  %465 = getelementptr inbounds i8, i8* %464, i32 4, !dbg !3986
  store i8* %465, i8** %463, align 4, !dbg !3986
  %466 = bitcast i8* %464 to i32*, !dbg !3986
  %467 = load i32, i32* %466, align 4, !dbg !3986
  %468 = trunc i32 %467 to i8, !dbg !3987
  %469 = zext i8 %468 to i32, !dbg !3987
  br label %490, !dbg !3985

470:                                              ; preds = %457
  %471 = load i32, i32* %11, align 4, !dbg !3988, !tbaa !827
  %472 = and i32 %471, 128, !dbg !3989
  %473 = icmp ne i32 %472, 0, !dbg !3989
  br i1 %473, label %474, label %482, !dbg !3990

474:                                              ; preds = %470
  %475 = bitcast %struct.__va_list* %6 to i8**, !dbg !3991
  %476 = load i8*, i8** %475, align 4, !dbg !3991
  %477 = getelementptr inbounds i8, i8* %476, i32 4, !dbg !3991
  store i8* %477, i8** %475, align 4, !dbg !3991
  %478 = bitcast i8* %476 to i32*, !dbg !3991
  %479 = load i32, i32* %478, align 4, !dbg !3991
  %480 = trunc i32 %479 to i16, !dbg !3992
  %481 = zext i16 %480 to i32, !dbg !3992
  br label %488, !dbg !3990

482:                                              ; preds = %470
  %483 = bitcast %struct.__va_list* %6 to i8**, !dbg !3993
  %484 = load i8*, i8** %483, align 4, !dbg !3993
  %485 = getelementptr inbounds i8, i8* %484, i32 4, !dbg !3993
  store i8* %485, i8** %483, align 4, !dbg !3993
  %486 = bitcast i8* %484 to i32*, !dbg !3993
  %487 = load i32, i32* %486, align 4, !dbg !3993
  br label %488, !dbg !3990

488:                                              ; preds = %482, %474
  %489 = phi i32 [ %481, %474 ], [ %487, %482 ], !dbg !3990
  br label %490, !dbg !3985

490:                                              ; preds = %488, %462
  %491 = phi i32 [ %469, %462 ], [ %489, %488 ], !dbg !3985
  store i32 %491, i32* %22, align 4, !dbg !3982, !tbaa !827
  %492 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !3994, !tbaa !292
  %493 = load i8*, i8** %8, align 4, !dbg !3995, !tbaa !292
  %494 = load i32, i32* %15, align 4, !dbg !3996, !tbaa !827
  %495 = load i32, i32* %9, align 4, !dbg !3997, !tbaa !827
  %496 = load i32, i32* %22, align 4, !dbg !3998, !tbaa !827
  %497 = load i32, i32* %18, align 4, !dbg !3999, !tbaa !827
  %498 = load i32, i32* %13, align 4, !dbg !4000, !tbaa !827
  %499 = load i32, i32* %12, align 4, !dbg !4001, !tbaa !827
  %500 = load i32, i32* %11, align 4, !dbg !4002, !tbaa !827
  %501 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %492, i8* %493, i32 %494, i32 %495, i32 %496, i1 zeroext false, i32 %497, i32 %498, i32 %499, i32 %500), !dbg !4003
  store i32 %501, i32* %15, align 4, !dbg !4004, !tbaa !827
  %502 = bitcast i32* %22 to i8*, !dbg !4005
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %502) #4, !dbg !4005
  br label %503

503:                                              ; preds = %490, %442
  br label %504

504:                                              ; preds = %503, %418
  br label %505

505:                                              ; preds = %504, %413
  %506 = load i8*, i8** %10, align 4, !dbg !4006, !tbaa !292
  %507 = getelementptr inbounds i8, i8* %506, i32 1, !dbg !4006
  store i8* %507, i8** %10, align 4, !dbg !4006, !tbaa !292
  %508 = bitcast i32* %18 to i8*, !dbg !4007
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %508) #4, !dbg !4007
  br label %766

509:                                              ; preds = %216, %216
  %510 = load i8*, i8** %10, align 4, !dbg !4008, !tbaa !292
  %511 = load i8, i8* %510, align 1, !dbg !4010, !tbaa !312
  %512 = zext i8 %511 to i32, !dbg !4010
  %513 = icmp eq i32 %512, 70, !dbg !4011
  br i1 %513, label %514, label %517, !dbg !4012

514:                                              ; preds = %509
  %515 = load i32, i32* %11, align 4, !dbg !4013, !tbaa !827
  %516 = or i32 %515, 32, !dbg !4013
  store i32 %516, i32* %11, align 4, !dbg !4013, !tbaa !827
  br label %517, !dbg !4014

517:                                              ; preds = %514, %509
  %518 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4015, !tbaa !292
  %519 = load i8*, i8** %8, align 4, !dbg !4016, !tbaa !292
  %520 = load i32, i32* %15, align 4, !dbg !4017, !tbaa !827
  %521 = load i32, i32* %9, align 4, !dbg !4018, !tbaa !827
  %522 = bitcast %struct.__va_list* %6 to i8**, !dbg !4019
  %523 = load i8*, i8** %522, align 4, !dbg !4019
  %524 = ptrtoint i8* %523 to i32, !dbg !4019
  %525 = add i32 %524, 7, !dbg !4019
  %526 = and i32 %525, -8, !dbg !4019
  %527 = inttoptr i32 %526 to i8*, !dbg !4019
  %528 = getelementptr inbounds i8, i8* %527, i32 8, !dbg !4019
  store i8* %528, i8** %522, align 4, !dbg !4019
  %529 = bitcast i8* %527 to double*, !dbg !4019
  %530 = load double, double* %529, align 8, !dbg !4019
  %531 = load i32, i32* %13, align 4, !dbg !4020, !tbaa !827
  %532 = load i32, i32* %12, align 4, !dbg !4021, !tbaa !827
  %533 = load i32, i32* %11, align 4, !dbg !4022, !tbaa !827
  %534 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %518, i8* %519, i32 %520, i32 %521, double %530, i32 %531, i32 %532, i32 %533), !dbg !4023
  store i32 %534, i32* %15, align 4, !dbg !4024, !tbaa !827
  %535 = load i8*, i8** %10, align 4, !dbg !4025, !tbaa !292
  %536 = getelementptr inbounds i8, i8* %535, i32 1, !dbg !4025
  store i8* %536, i8** %10, align 4, !dbg !4025, !tbaa !292
  br label %766, !dbg !4026

537:                                              ; preds = %216, %216, %216, %216
  %538 = load i8*, i8** %10, align 4, !dbg !4027, !tbaa !292
  %539 = load i8, i8* %538, align 1, !dbg !4029, !tbaa !312
  %540 = zext i8 %539 to i32, !dbg !4029
  %541 = icmp eq i32 %540, 103, !dbg !4030
  br i1 %541, label %547, label %542, !dbg !4031

542:                                              ; preds = %537
  %543 = load i8*, i8** %10, align 4, !dbg !4032, !tbaa !292
  %544 = load i8, i8* %543, align 1, !dbg !4033, !tbaa !312
  %545 = zext i8 %544 to i32, !dbg !4033
  %546 = icmp eq i32 %545, 71, !dbg !4034
  br i1 %546, label %547, label %550, !dbg !4035

547:                                              ; preds = %542, %537
  %548 = load i32, i32* %11, align 4, !dbg !4036, !tbaa !827
  %549 = or i32 %548, 2048, !dbg !4036
  store i32 %549, i32* %11, align 4, !dbg !4036, !tbaa !827
  br label %550, !dbg !4037

550:                                              ; preds = %547, %542
  %551 = load i8*, i8** %10, align 4, !dbg !4038, !tbaa !292
  %552 = load i8, i8* %551, align 1, !dbg !4040, !tbaa !312
  %553 = zext i8 %552 to i32, !dbg !4040
  %554 = icmp eq i32 %553, 69, !dbg !4041
  br i1 %554, label %560, label %555, !dbg !4042

555:                                              ; preds = %550
  %556 = load i8*, i8** %10, align 4, !dbg !4043, !tbaa !292
  %557 = load i8, i8* %556, align 1, !dbg !4044, !tbaa !312
  %558 = zext i8 %557 to i32, !dbg !4044
  %559 = icmp eq i32 %558, 71, !dbg !4045
  br i1 %559, label %560, label %563, !dbg !4046

560:                                              ; preds = %555, %550
  %561 = load i32, i32* %11, align 4, !dbg !4047, !tbaa !827
  %562 = or i32 %561, 32, !dbg !4047
  store i32 %562, i32* %11, align 4, !dbg !4047, !tbaa !827
  br label %563, !dbg !4048

563:                                              ; preds = %560, %555
  %564 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4049, !tbaa !292
  %565 = load i8*, i8** %8, align 4, !dbg !4050, !tbaa !292
  %566 = load i32, i32* %15, align 4, !dbg !4051, !tbaa !827
  %567 = load i32, i32* %9, align 4, !dbg !4052, !tbaa !827
  %568 = bitcast %struct.__va_list* %6 to i8**, !dbg !4053
  %569 = load i8*, i8** %568, align 4, !dbg !4053
  %570 = ptrtoint i8* %569 to i32, !dbg !4053
  %571 = add i32 %570, 7, !dbg !4053
  %572 = and i32 %571, -8, !dbg !4053
  %573 = inttoptr i32 %572 to i8*, !dbg !4053
  %574 = getelementptr inbounds i8, i8* %573, i32 8, !dbg !4053
  store i8* %574, i8** %568, align 4, !dbg !4053
  %575 = bitcast i8* %573 to double*, !dbg !4053
  %576 = load double, double* %575, align 8, !dbg !4053
  %577 = load i32, i32* %13, align 4, !dbg !4054, !tbaa !827
  %578 = load i32, i32* %12, align 4, !dbg !4055, !tbaa !827
  %579 = load i32, i32* %11, align 4, !dbg !4056, !tbaa !827
  %580 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %564, i8* %565, i32 %566, i32 %567, double %576, i32 %577, i32 %578, i32 %579), !dbg !4057
  store i32 %580, i32* %15, align 4, !dbg !4058, !tbaa !827
  %581 = load i8*, i8** %10, align 4, !dbg !4059, !tbaa !292
  %582 = getelementptr inbounds i8, i8* %581, i32 1, !dbg !4059
  store i8* %582, i8** %10, align 4, !dbg !4059, !tbaa !292
  br label %766, !dbg !4060

583:                                              ; preds = %216
  %584 = bitcast i32* %23 to i8*, !dbg !4061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %584) #4, !dbg !4061
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3614, metadata !DIExpression()), !dbg !4062
  store i32 1, i32* %23, align 4, !dbg !4062, !tbaa !827
  %585 = load i32, i32* %11, align 4, !dbg !4063, !tbaa !827
  %586 = and i32 %585, 2, !dbg !4065
  %587 = icmp ne i32 %586, 0, !dbg !4065
  br i1 %587, label %601, label %588, !dbg !4066

588:                                              ; preds = %583
  br label %589, !dbg !4067

589:                                              ; preds = %594, %588
  %590 = load i32, i32* %23, align 4, !dbg !4069, !tbaa !827
  %591 = add i32 %590, 1, !dbg !4069
  store i32 %591, i32* %23, align 4, !dbg !4069, !tbaa !827
  %592 = load i32, i32* %12, align 4, !dbg !4070, !tbaa !827
  %593 = icmp ult i32 %590, %592, !dbg !4071
  br i1 %593, label %594, label %600, !dbg !4067

594:                                              ; preds = %589
  %595 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4072, !tbaa !292
  %596 = load i8*, i8** %8, align 4, !dbg !4074, !tbaa !292
  %597 = load i32, i32* %15, align 4, !dbg !4075, !tbaa !827
  %598 = add i32 %597, 1, !dbg !4075
  store i32 %598, i32* %15, align 4, !dbg !4075, !tbaa !827
  %599 = load i32, i32* %9, align 4, !dbg !4076, !tbaa !827
  call arm_aapcscc void %595(i8 zeroext 32, i8* %596, i32 %597, i32 %599), !dbg !4072
  br label %589, !dbg !4067, !llvm.loop !4077

600:                                              ; preds = %589
  br label %601, !dbg !4079

601:                                              ; preds = %600, %583
  %602 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4080, !tbaa !292
  %603 = bitcast %struct.__va_list* %6 to i8**, !dbg !4081
  %604 = load i8*, i8** %603, align 4, !dbg !4081
  %605 = getelementptr inbounds i8, i8* %604, i32 4, !dbg !4081
  store i8* %605, i8** %603, align 4, !dbg !4081
  %606 = bitcast i8* %604 to i32*, !dbg !4081
  %607 = load i32, i32* %606, align 4, !dbg !4081
  %608 = trunc i32 %607 to i8, !dbg !4082
  %609 = load i8*, i8** %8, align 4, !dbg !4083, !tbaa !292
  %610 = load i32, i32* %15, align 4, !dbg !4084, !tbaa !827
  %611 = add i32 %610, 1, !dbg !4084
  store i32 %611, i32* %15, align 4, !dbg !4084, !tbaa !827
  %612 = load i32, i32* %9, align 4, !dbg !4085, !tbaa !827
  call arm_aapcscc void %602(i8 zeroext %608, i8* %609, i32 %610, i32 %612), !dbg !4080
  %613 = load i32, i32* %11, align 4, !dbg !4086, !tbaa !827
  %614 = and i32 %613, 2, !dbg !4088
  %615 = icmp ne i32 %614, 0, !dbg !4088
  br i1 %615, label %616, label %629, !dbg !4089

616:                                              ; preds = %601
  br label %617, !dbg !4090

617:                                              ; preds = %622, %616
  %618 = load i32, i32* %23, align 4, !dbg !4092, !tbaa !827
  %619 = add i32 %618, 1, !dbg !4092
  store i32 %619, i32* %23, align 4, !dbg !4092, !tbaa !827
  %620 = load i32, i32* %12, align 4, !dbg !4093, !tbaa !827
  %621 = icmp ult i32 %618, %620, !dbg !4094
  br i1 %621, label %622, label %628, !dbg !4090

622:                                              ; preds = %617
  %623 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4095, !tbaa !292
  %624 = load i8*, i8** %8, align 4, !dbg !4097, !tbaa !292
  %625 = load i32, i32* %15, align 4, !dbg !4098, !tbaa !827
  %626 = add i32 %625, 1, !dbg !4098
  store i32 %626, i32* %15, align 4, !dbg !4098, !tbaa !827
  %627 = load i32, i32* %9, align 4, !dbg !4099, !tbaa !827
  call arm_aapcscc void %623(i8 zeroext 32, i8* %624, i32 %625, i32 %627), !dbg !4095
  br label %617, !dbg !4090, !llvm.loop !4100

628:                                              ; preds = %617
  br label %629, !dbg !4102

629:                                              ; preds = %628, %601
  %630 = load i8*, i8** %10, align 4, !dbg !4103, !tbaa !292
  %631 = getelementptr inbounds i8, i8* %630, i32 1, !dbg !4103
  store i8* %631, i8** %10, align 4, !dbg !4103, !tbaa !292
  %632 = bitcast i32* %23 to i8*, !dbg !4104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %632) #4, !dbg !4104
  br label %766

633:                                              ; preds = %216
  %634 = bitcast i8** %24 to i8*, !dbg !4105
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %634) #4, !dbg !4105
  call void @llvm.dbg.declare(metadata i8** %24, metadata !3616, metadata !DIExpression()), !dbg !4106
  %635 = bitcast %struct.__va_list* %6 to i8**, !dbg !4107
  %636 = load i8*, i8** %635, align 4, !dbg !4107
  %637 = getelementptr inbounds i8, i8* %636, i32 4, !dbg !4107
  store i8* %637, i8** %635, align 4, !dbg !4107
  %638 = bitcast i8* %636 to i8**, !dbg !4107
  %639 = load i8*, i8** %638, align 4, !dbg !4107
  store i8* %639, i8** %24, align 4, !dbg !4106, !tbaa !292
  %640 = bitcast i32* %25 to i8*, !dbg !4108
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %640) #4, !dbg !4108
  call void @llvm.dbg.declare(metadata i32* %25, metadata !3618, metadata !DIExpression()), !dbg !4109
  %641 = load i8*, i8** %24, align 4, !dbg !4110, !tbaa !292
  %642 = load i32, i32* %13, align 4, !dbg !4111, !tbaa !827
  %643 = icmp ne i32 %642, 0, !dbg !4111
  br i1 %643, label %644, label %646, !dbg !4111

644:                                              ; preds = %633
  %645 = load i32, i32* %13, align 4, !dbg !4112, !tbaa !827
  br label %647, !dbg !4111

646:                                              ; preds = %633
  br label %647, !dbg !4111

647:                                              ; preds = %646, %644
  %648 = phi i32 [ %645, %644 ], [ -1, %646 ], !dbg !4111
  %649 = call arm_aapcscc i32 @_strnlen_s(i8* %641, i32 %648), !dbg !4113
  store i32 %649, i32* %25, align 4, !dbg !4109, !tbaa !827
  %650 = load i32, i32* %11, align 4, !dbg !4114, !tbaa !827
  %651 = and i32 %650, 1024, !dbg !4116
  %652 = icmp ne i32 %651, 0, !dbg !4116
  br i1 %652, label %653, label %663, !dbg !4117

653:                                              ; preds = %647
  %654 = load i32, i32* %25, align 4, !dbg !4118, !tbaa !827
  %655 = load i32, i32* %13, align 4, !dbg !4120, !tbaa !827
  %656 = icmp ult i32 %654, %655, !dbg !4121
  br i1 %656, label %657, label %659, !dbg !4118

657:                                              ; preds = %653
  %658 = load i32, i32* %25, align 4, !dbg !4122, !tbaa !827
  br label %661, !dbg !4118

659:                                              ; preds = %653
  %660 = load i32, i32* %13, align 4, !dbg !4123, !tbaa !827
  br label %661, !dbg !4118

661:                                              ; preds = %659, %657
  %662 = phi i32 [ %658, %657 ], [ %660, %659 ], !dbg !4118
  store i32 %662, i32* %25, align 4, !dbg !4124, !tbaa !827
  br label %663, !dbg !4125

663:                                              ; preds = %661, %647
  %664 = load i32, i32* %11, align 4, !dbg !4126, !tbaa !827
  %665 = and i32 %664, 2, !dbg !4128
  %666 = icmp ne i32 %665, 0, !dbg !4128
  br i1 %666, label %680, label %667, !dbg !4129

667:                                              ; preds = %663
  br label %668, !dbg !4130

668:                                              ; preds = %673, %667
  %669 = load i32, i32* %25, align 4, !dbg !4132, !tbaa !827
  %670 = add i32 %669, 1, !dbg !4132
  store i32 %670, i32* %25, align 4, !dbg !4132, !tbaa !827
  %671 = load i32, i32* %12, align 4, !dbg !4133, !tbaa !827
  %672 = icmp ult i32 %669, %671, !dbg !4134
  br i1 %672, label %673, label %679, !dbg !4130

673:                                              ; preds = %668
  %674 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4135, !tbaa !292
  %675 = load i8*, i8** %8, align 4, !dbg !4137, !tbaa !292
  %676 = load i32, i32* %15, align 4, !dbg !4138, !tbaa !827
  %677 = add i32 %676, 1, !dbg !4138
  store i32 %677, i32* %15, align 4, !dbg !4138, !tbaa !827
  %678 = load i32, i32* %9, align 4, !dbg !4139, !tbaa !827
  call arm_aapcscc void %674(i8 zeroext 32, i8* %675, i32 %676, i32 %678), !dbg !4135
  br label %668, !dbg !4130, !llvm.loop !4140

679:                                              ; preds = %668
  br label %680, !dbg !4142

680:                                              ; preds = %679, %663
  br label %681, !dbg !4143

681:                                              ; preds = %698, %680
  %682 = load i8*, i8** %24, align 4, !dbg !4144, !tbaa !292
  %683 = load i8, i8* %682, align 1, !dbg !4145, !tbaa !312
  %684 = zext i8 %683 to i32, !dbg !4145
  %685 = icmp ne i32 %684, 0, !dbg !4146
  br i1 %685, label %686, label %696, !dbg !4147

686:                                              ; preds = %681
  %687 = load i32, i32* %11, align 4, !dbg !4148, !tbaa !827
  %688 = and i32 %687, 1024, !dbg !4149
  %689 = icmp ne i32 %688, 0, !dbg !4149
  br i1 %689, label %690, label %694, !dbg !4150

690:                                              ; preds = %686
  %691 = load i32, i32* %13, align 4, !dbg !4151, !tbaa !827
  %692 = add i32 %691, -1, !dbg !4151
  store i32 %692, i32* %13, align 4, !dbg !4151, !tbaa !827
  %693 = icmp ne i32 %691, 0, !dbg !4150
  br label %694, !dbg !4150

694:                                              ; preds = %690, %686
  %695 = phi i1 [ true, %686 ], [ %693, %690 ]
  br label %696

696:                                              ; preds = %694, %681
  %697 = phi i1 [ false, %681 ], [ %695, %694 ], !dbg !4152
  br i1 %697, label %698, label %707, !dbg !4143

698:                                              ; preds = %696
  %699 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4153, !tbaa !292
  %700 = load i8*, i8** %24, align 4, !dbg !4155, !tbaa !292
  %701 = getelementptr inbounds i8, i8* %700, i32 1, !dbg !4155
  store i8* %701, i8** %24, align 4, !dbg !4155, !tbaa !292
  %702 = load i8, i8* %700, align 1, !dbg !4156, !tbaa !312
  %703 = load i8*, i8** %8, align 4, !dbg !4157, !tbaa !292
  %704 = load i32, i32* %15, align 4, !dbg !4158, !tbaa !827
  %705 = add i32 %704, 1, !dbg !4158
  store i32 %705, i32* %15, align 4, !dbg !4158, !tbaa !827
  %706 = load i32, i32* %9, align 4, !dbg !4159, !tbaa !827
  call arm_aapcscc void %699(i8 zeroext %702, i8* %703, i32 %704, i32 %706), !dbg !4153
  br label %681, !dbg !4143, !llvm.loop !4160

707:                                              ; preds = %696
  %708 = load i32, i32* %11, align 4, !dbg !4162, !tbaa !827
  %709 = and i32 %708, 2, !dbg !4164
  %710 = icmp ne i32 %709, 0, !dbg !4164
  br i1 %710, label %711, label %724, !dbg !4165

711:                                              ; preds = %707
  br label %712, !dbg !4166

712:                                              ; preds = %717, %711
  %713 = load i32, i32* %25, align 4, !dbg !4168, !tbaa !827
  %714 = add i32 %713, 1, !dbg !4168
  store i32 %714, i32* %25, align 4, !dbg !4168, !tbaa !827
  %715 = load i32, i32* %12, align 4, !dbg !4169, !tbaa !827
  %716 = icmp ult i32 %713, %715, !dbg !4170
  br i1 %716, label %717, label %723, !dbg !4166

717:                                              ; preds = %712
  %718 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4171, !tbaa !292
  %719 = load i8*, i8** %8, align 4, !dbg !4173, !tbaa !292
  %720 = load i32, i32* %15, align 4, !dbg !4174, !tbaa !827
  %721 = add i32 %720, 1, !dbg !4174
  store i32 %721, i32* %15, align 4, !dbg !4174, !tbaa !827
  %722 = load i32, i32* %9, align 4, !dbg !4175, !tbaa !827
  call arm_aapcscc void %718(i8 zeroext 32, i8* %719, i32 %720, i32 %722), !dbg !4171
  br label %712, !dbg !4166, !llvm.loop !4176

723:                                              ; preds = %712
  br label %724, !dbg !4178

724:                                              ; preds = %723, %707
  %725 = load i8*, i8** %10, align 4, !dbg !4179, !tbaa !292
  %726 = getelementptr inbounds i8, i8* %725, i32 1, !dbg !4179
  store i8* %726, i8** %10, align 4, !dbg !4179, !tbaa !292
  %727 = bitcast i32* %25 to i8*, !dbg !4180
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %727) #4, !dbg !4180
  %728 = bitcast i8** %24 to i8*, !dbg !4180
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %728) #4, !dbg !4180
  br label %766

729:                                              ; preds = %216
  store i32 8, i32* %12, align 4, !dbg !4181, !tbaa !827
  %730 = load i32, i32* %11, align 4, !dbg !4182, !tbaa !827
  %731 = or i32 %730, 33, !dbg !4182
  store i32 %731, i32* %11, align 4, !dbg !4182, !tbaa !827
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %26) #4, !dbg !4183
  call void @llvm.dbg.declare(metadata i8* %26, metadata !3619, metadata !DIExpression()), !dbg !4184
  store i8 0, i8* %26, align 1, !dbg !4184, !tbaa !4185
  %732 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4187, !tbaa !292
  %733 = load i8*, i8** %8, align 4, !dbg !4190, !tbaa !292
  %734 = load i32, i32* %15, align 4, !dbg !4191, !tbaa !827
  %735 = load i32, i32* %9, align 4, !dbg !4192, !tbaa !827
  %736 = bitcast %struct.__va_list* %6 to i8**, !dbg !4193
  %737 = load i8*, i8** %736, align 4, !dbg !4193
  %738 = getelementptr inbounds i8, i8* %737, i32 4, !dbg !4193
  store i8* %738, i8** %736, align 4, !dbg !4193
  %739 = bitcast i8* %737 to i8**, !dbg !4193
  %740 = load i8*, i8** %739, align 4, !dbg !4193
  %741 = ptrtoint i8* %740 to i32, !dbg !4194
  %742 = load i32, i32* %13, align 4, !dbg !4195, !tbaa !827
  %743 = load i32, i32* %12, align 4, !dbg !4196, !tbaa !827
  %744 = load i32, i32* %11, align 4, !dbg !4197, !tbaa !827
  %745 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %732, i8* %733, i32 %734, i32 %735, i32 %741, i1 zeroext false, i32 16, i32 %742, i32 %743, i32 %744), !dbg !4198
  store i32 %745, i32* %15, align 4, !dbg !4199, !tbaa !827
  %746 = load i8*, i8** %10, align 4, !dbg !4200, !tbaa !292
  %747 = getelementptr inbounds i8, i8* %746, i32 1, !dbg !4200
  store i8* %747, i8** %10, align 4, !dbg !4200, !tbaa !292
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %26) #4, !dbg !4201
  br label %766

748:                                              ; preds = %216
  %749 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4202, !tbaa !292
  %750 = load i8*, i8** %8, align 4, !dbg !4203, !tbaa !292
  %751 = load i32, i32* %15, align 4, !dbg !4204, !tbaa !827
  %752 = add i32 %751, 1, !dbg !4204
  store i32 %752, i32* %15, align 4, !dbg !4204, !tbaa !827
  %753 = load i32, i32* %9, align 4, !dbg !4205, !tbaa !827
  call arm_aapcscc void %749(i8 zeroext 37, i8* %750, i32 %751, i32 %753), !dbg !4202
  %754 = load i8*, i8** %10, align 4, !dbg !4206, !tbaa !292
  %755 = getelementptr inbounds i8, i8* %754, i32 1, !dbg !4206
  store i8* %755, i8** %10, align 4, !dbg !4206, !tbaa !292
  br label %766, !dbg !4207

756:                                              ; preds = %216
  %757 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4208, !tbaa !292
  %758 = load i8*, i8** %10, align 4, !dbg !4209, !tbaa !292
  %759 = load i8, i8* %758, align 1, !dbg !4210, !tbaa !312
  %760 = load i8*, i8** %8, align 4, !dbg !4211, !tbaa !292
  %761 = load i32, i32* %15, align 4, !dbg !4212, !tbaa !827
  %762 = add i32 %761, 1, !dbg !4212
  store i32 %762, i32* %15, align 4, !dbg !4212, !tbaa !827
  %763 = load i32, i32* %9, align 4, !dbg !4213, !tbaa !827
  call arm_aapcscc void %757(i8 zeroext %759, i8* %760, i32 %761, i32 %763), !dbg !4208
  %764 = load i8*, i8** %10, align 4, !dbg !4214, !tbaa !292
  %765 = getelementptr inbounds i8, i8* %764, i32 1, !dbg !4214
  store i8* %765, i8** %10, align 4, !dbg !4214, !tbaa !292
  br label %766, !dbg !4215

766:                                              ; preds = %756, %748, %729, %724, %629, %563, %517, %505
  br label %38, !dbg !3640, !llvm.loop !3657

767:                                              ; preds = %38
  %768 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %7, align 4, !dbg !4216, !tbaa !292
  %769 = load i8*, i8** %8, align 4, !dbg !4217, !tbaa !292
  %770 = load i32, i32* %15, align 4, !dbg !4218, !tbaa !827
  %771 = load i32, i32* %9, align 4, !dbg !4219, !tbaa !827
  %772 = icmp ult i32 %770, %771, !dbg !4220
  br i1 %772, label %773, label %775, !dbg !4218

773:                                              ; preds = %767
  %774 = load i32, i32* %15, align 4, !dbg !4221, !tbaa !827
  br label %778, !dbg !4218

775:                                              ; preds = %767
  %776 = load i32, i32* %9, align 4, !dbg !4222, !tbaa !827
  %777 = sub i32 %776, 1, !dbg !4223
  br label %778, !dbg !4218

778:                                              ; preds = %775, %773
  %779 = phi i32 [ %774, %773 ], [ %777, %775 ], !dbg !4218
  %780 = load i32, i32* %9, align 4, !dbg !4224, !tbaa !827
  call arm_aapcscc void %768(i8 zeroext 0, i8* %769, i32 %779, i32 %780), !dbg !4216
  %781 = load i32, i32* %15, align 4, !dbg !4225, !tbaa !827
  %782 = bitcast i32* %15 to i8*, !dbg !4226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %782) #4, !dbg !4226
  %783 = bitcast i32* %14 to i8*, !dbg !4226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %783) #4, !dbg !4226
  %784 = bitcast i32* %13 to i8*, !dbg !4226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %784) #4, !dbg !4226
  %785 = bitcast i32* %12 to i8*, !dbg !4226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %785) #4, !dbg !4226
  %786 = bitcast i32* %11 to i8*, !dbg !4226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %786) #4, !dbg !4226
  ret i32 %781, !dbg !4227
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_null(i8 zeroext, i8*, i32, i32) #5 !dbg !4228 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1, !tbaa !312
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4230, metadata !DIExpression()), !dbg !4234
  store i8* %1, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4231, metadata !DIExpression()), !dbg !4235
  store i32 %2, i32* %7, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4232, metadata !DIExpression()), !dbg !4236
  store i32 %3, i32* %8, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4233, metadata !DIExpression()), !dbg !4237
  %9 = load i8, i8* %5, align 1, !dbg !4238, !tbaa !312
  %10 = load i8*, i8** %6, align 4, !dbg !4239, !tbaa !292
  %11 = load i32, i32* %7, align 4, !dbg !4240, !tbaa !827
  %12 = load i32, i32* %8, align 4, !dbg !4241, !tbaa !827
  ret void, !dbg !4242
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc zeroext i1 @_is_digit(i8 zeroext) #5 !dbg !4243 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !312
  call void @llvm.dbg.declare(metadata i8* %2, metadata !4247, metadata !DIExpression()), !dbg !4248
  %3 = load i8, i8* %2, align 1, !dbg !4249, !tbaa !312
  %4 = zext i8 %3 to i32, !dbg !4249
  %5 = icmp sge i32 %4, 48, !dbg !4250
  br i1 %5, label %6, label %10, !dbg !4251

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1, !dbg !4252, !tbaa !312
  %8 = zext i8 %7 to i32, !dbg !4252
  %9 = icmp sle i32 %8, 57, !dbg !4253
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ], !dbg !4254
  ret i1 %11, !dbg !4255
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_atoi(i8**) #0 !dbg !4256 {
  %2 = alloca i8**, align 4
  %3 = alloca i32, align 4
  store i8** %0, i8*** %2, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !4261, metadata !DIExpression()), !dbg !4263
  %4 = bitcast i32* %3 to i8*, !dbg !4264
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !4264
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4262, metadata !DIExpression()), !dbg !4265
  store i32 0, i32* %3, align 4, !dbg !4265, !tbaa !827
  br label %5, !dbg !4266

5:                                                ; preds = %10, %1
  %6 = load i8**, i8*** %2, align 4, !dbg !4267, !tbaa !292
  %7 = load i8*, i8** %6, align 4, !dbg !4268, !tbaa !292
  %8 = load i8, i8* %7, align 1, !dbg !4269, !tbaa !312
  %9 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %8), !dbg !4270
  br i1 %9, label %10, label %20, !dbg !4266

10:                                               ; preds = %5
  %11 = load i32, i32* %3, align 4, !dbg !4271, !tbaa !827
  %12 = mul i32 %11, 10, !dbg !4273
  %13 = load i8**, i8*** %2, align 4, !dbg !4274, !tbaa !292
  %14 = load i8*, i8** %13, align 4, !dbg !4275, !tbaa !292
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !4275
  store i8* %15, i8** %13, align 4, !dbg !4275, !tbaa !292
  %16 = load i8, i8* %14, align 1, !dbg !4276, !tbaa !312
  %17 = zext i8 %16 to i32, !dbg !4276
  %18 = sub nsw i32 %17, 48, !dbg !4277
  %19 = add i32 %12, %18, !dbg !4278
  store i32 %19, i32* %3, align 4, !dbg !4279, !tbaa !827
  br label %5, !dbg !4266, !llvm.loop !4280

20:                                               ; preds = %5
  %21 = load i32, i32* %3, align 4, !dbg !4282, !tbaa !827
  %22 = bitcast i32* %3 to i8*, !dbg !4283
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !4283
  ret i32 %21, !dbg !4284
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i64, i1 zeroext, i64, i32, i32, i32) #0 !dbg !4285 {
  %11 = alloca void (i8, i8*, i32, i32)*, align 4
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [32 x i8], align 1
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  store void (i8, i8*, i32, i32)* %0, void (i8, i8*, i32, i32)** %11, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata void (i8, i8*, i32, i32)** %11, metadata !4289, metadata !DIExpression()), !dbg !4305
  store i8* %1, i8** %12, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4290, metadata !DIExpression()), !dbg !4306
  store i32 %2, i32* %13, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4291, metadata !DIExpression()), !dbg !4307
  store i32 %3, i32* %14, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4292, metadata !DIExpression()), !dbg !4308
  store i64 %4, i64* %15, align 8, !tbaa !3444
  call void @llvm.dbg.declare(metadata i64* %15, metadata !4293, metadata !DIExpression()), !dbg !4309
  %24 = zext i1 %5 to i8
  store i8 %24, i8* %16, align 1, !tbaa !4185
  call void @llvm.dbg.declare(metadata i8* %16, metadata !4294, metadata !DIExpression()), !dbg !4310
  store i64 %6, i64* %17, align 8, !tbaa !3444
  call void @llvm.dbg.declare(metadata i64* %17, metadata !4295, metadata !DIExpression()), !dbg !4311
  store i32 %7, i32* %18, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4296, metadata !DIExpression()), !dbg !4312
  store i32 %8, i32* %19, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4297, metadata !DIExpression()), !dbg !4313
  store i32 %9, i32* %20, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4298, metadata !DIExpression()), !dbg !4314
  %25 = bitcast [32 x i8]* %21 to i8*, !dbg !4315
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %25) #4, !dbg !4315
  call void @llvm.dbg.declare(metadata [32 x i8]* %21, metadata !4299, metadata !DIExpression()), !dbg !4316
  %26 = bitcast i32* %22 to i8*, !dbg !4317
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #4, !dbg !4317
  call void @llvm.dbg.declare(metadata i32* %22, metadata !4300, metadata !DIExpression()), !dbg !4318
  store i32 0, i32* %22, align 4, !dbg !4318, !tbaa !827
  %27 = load i64, i64* %15, align 8, !dbg !4319, !tbaa !3444
  %28 = icmp ne i64 %27, 0, !dbg !4319
  br i1 %28, label %32, label %29, !dbg !4321

29:                                               ; preds = %10
  %30 = load i32, i32* %20, align 4, !dbg !4322, !tbaa !827
  %31 = and i32 %30, -17, !dbg !4322
  store i32 %31, i32* %20, align 4, !dbg !4322, !tbaa !827
  br label %32, !dbg !4324

32:                                               ; preds = %29, %10
  %33 = load i32, i32* %20, align 4, !dbg !4325, !tbaa !827
  %34 = and i32 %33, 1024, !dbg !4326
  %35 = icmp ne i32 %34, 0, !dbg !4326
  br i1 %35, label %36, label %39, !dbg !4327

36:                                               ; preds = %32
  %37 = load i64, i64* %15, align 8, !dbg !4328, !tbaa !3444
  %38 = icmp ne i64 %37, 0, !dbg !4328
  br i1 %38, label %39, label %80, !dbg !4329

39:                                               ; preds = %36, %32
  br label %40, !dbg !4330

40:                                               ; preds = %77, %39
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #4, !dbg !4331
  call void @llvm.dbg.declare(metadata i8* %23, metadata !4301, metadata !DIExpression()), !dbg !4332
  %41 = load i64, i64* %15, align 8, !dbg !4333, !tbaa !3444
  %42 = load i64, i64* %17, align 8, !dbg !4334, !tbaa !3444
  %43 = urem i64 %41, %42, !dbg !4335
  %44 = trunc i64 %43 to i8, !dbg !4336
  store i8 %44, i8* %23, align 1, !dbg !4332, !tbaa !312
  %45 = load i8, i8* %23, align 1, !dbg !4337, !tbaa !312
  %46 = zext i8 %45 to i32, !dbg !4337
  %47 = icmp slt i32 %46, 10, !dbg !4338
  br i1 %47, label %48, label %52, !dbg !4337

48:                                               ; preds = %40
  %49 = load i8, i8* %23, align 1, !dbg !4339, !tbaa !312
  %50 = zext i8 %49 to i32, !dbg !4339
  %51 = add nsw i32 48, %50, !dbg !4340
  br label %62, !dbg !4337

52:                                               ; preds = %40
  %53 = load i32, i32* %20, align 4, !dbg !4341, !tbaa !827
  %54 = and i32 %53, 32, !dbg !4342
  %55 = icmp ne i32 %54, 0, !dbg !4341
  %56 = zext i1 %55 to i64, !dbg !4341
  %57 = select i1 %55, i32 65, i32 97, !dbg !4341
  %58 = load i8, i8* %23, align 1, !dbg !4343, !tbaa !312
  %59 = zext i8 %58 to i32, !dbg !4343
  %60 = add nsw i32 %57, %59, !dbg !4344
  %61 = sub nsw i32 %60, 10, !dbg !4345
  br label %62, !dbg !4337

62:                                               ; preds = %52, %48
  %63 = phi i32 [ %51, %48 ], [ %61, %52 ], !dbg !4337
  %64 = trunc i32 %63 to i8, !dbg !4337
  %65 = load i32, i32* %22, align 4, !dbg !4346, !tbaa !827
  %66 = add i32 %65, 1, !dbg !4346
  store i32 %66, i32* %22, align 4, !dbg !4346, !tbaa !827
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i32 0, i32 %65, !dbg !4347
  store i8 %64, i8* %67, align 1, !dbg !4348, !tbaa !312
  %68 = load i64, i64* %17, align 8, !dbg !4349, !tbaa !3444
  %69 = load i64, i64* %15, align 8, !dbg !4350, !tbaa !3444
  %70 = udiv i64 %69, %68, !dbg !4350
  store i64 %70, i64* %15, align 8, !dbg !4350, !tbaa !3444
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %23) #4, !dbg !4351
  br label %71, !dbg !4352

71:                                               ; preds = %62
  %72 = load i64, i64* %15, align 8, !dbg !4353, !tbaa !3444
  %73 = icmp ne i64 %72, 0, !dbg !4353
  br i1 %73, label %74, label %77, !dbg !4354

74:                                               ; preds = %71
  %75 = load i32, i32* %22, align 4, !dbg !4355, !tbaa !827
  %76 = icmp ult i32 %75, 32, !dbg !4356
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ], !dbg !4357
  br i1 %78, label %40, label %79, !dbg !4352, !llvm.loop !4358

79:                                               ; preds = %77
  br label %80, !dbg !4360

80:                                               ; preds = %79, %36
  %81 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %11, align 4, !dbg !4361, !tbaa !292
  %82 = load i8*, i8** %12, align 4, !dbg !4362, !tbaa !292
  %83 = load i32, i32* %13, align 4, !dbg !4363, !tbaa !827
  %84 = load i32, i32* %14, align 4, !dbg !4364, !tbaa !827
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i32 0, i32 0, !dbg !4365
  %86 = load i32, i32* %22, align 4, !dbg !4366, !tbaa !827
  %87 = load i8, i8* %16, align 1, !dbg !4367, !tbaa !4185, !range !4368
  %88 = trunc i8 %87 to i1, !dbg !4367
  %89 = load i64, i64* %17, align 8, !dbg !4369, !tbaa !3444
  %90 = trunc i64 %89 to i32, !dbg !4370
  %91 = load i32, i32* %18, align 4, !dbg !4371, !tbaa !827
  %92 = load i32, i32* %19, align 4, !dbg !4372, !tbaa !827
  %93 = load i32, i32* %20, align 4, !dbg !4373, !tbaa !827
  %94 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %81, i8* %82, i32 %83, i32 %84, i8* %85, i32 %86, i1 zeroext %88, i32 %90, i32 %91, i32 %92, i32 %93), !dbg !4374
  %95 = bitcast i32* %22 to i8*, !dbg !4375
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #4, !dbg !4375
  %96 = bitcast [32 x i8]* %21 to i8*, !dbg !4375
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %96) #4, !dbg !4375
  ret i32 %94, !dbg !4376
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !4377 {
  %11 = alloca void (i8, i8*, i32, i32)*, align 4
  %12 = alloca i8*, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [32 x i8], align 1
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  store void (i8, i8*, i32, i32)* %0, void (i8, i8*, i32, i32)** %11, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata void (i8, i8*, i32, i32)** %11, metadata !4381, metadata !DIExpression()), !dbg !4397
  store i8* %1, i8** %12, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4382, metadata !DIExpression()), !dbg !4398
  store i32 %2, i32* %13, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4383, metadata !DIExpression()), !dbg !4399
  store i32 %3, i32* %14, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4384, metadata !DIExpression()), !dbg !4400
  store i32 %4, i32* %15, align 4, !tbaa !3896
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4385, metadata !DIExpression()), !dbg !4401
  %24 = zext i1 %5 to i8
  store i8 %24, i8* %16, align 1, !tbaa !4185
  call void @llvm.dbg.declare(metadata i8* %16, metadata !4386, metadata !DIExpression()), !dbg !4402
  store i32 %6, i32* %17, align 4, !tbaa !3896
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4387, metadata !DIExpression()), !dbg !4403
  store i32 %7, i32* %18, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4388, metadata !DIExpression()), !dbg !4404
  store i32 %8, i32* %19, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4389, metadata !DIExpression()), !dbg !4405
  store i32 %9, i32* %20, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4390, metadata !DIExpression()), !dbg !4406
  %25 = bitcast [32 x i8]* %21 to i8*, !dbg !4407
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %25) #4, !dbg !4407
  call void @llvm.dbg.declare(metadata [32 x i8]* %21, metadata !4391, metadata !DIExpression()), !dbg !4408
  %26 = bitcast i32* %22 to i8*, !dbg !4409
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #4, !dbg !4409
  call void @llvm.dbg.declare(metadata i32* %22, metadata !4392, metadata !DIExpression()), !dbg !4410
  store i32 0, i32* %22, align 4, !dbg !4410, !tbaa !827
  %27 = load i32, i32* %15, align 4, !dbg !4411, !tbaa !3896
  %28 = icmp ne i32 %27, 0, !dbg !4411
  br i1 %28, label %32, label %29, !dbg !4413

29:                                               ; preds = %10
  %30 = load i32, i32* %20, align 4, !dbg !4414, !tbaa !827
  %31 = and i32 %30, -17, !dbg !4414
  store i32 %31, i32* %20, align 4, !dbg !4414, !tbaa !827
  br label %32, !dbg !4416

32:                                               ; preds = %29, %10
  %33 = load i32, i32* %20, align 4, !dbg !4417, !tbaa !827
  %34 = and i32 %33, 1024, !dbg !4418
  %35 = icmp ne i32 %34, 0, !dbg !4418
  br i1 %35, label %36, label %39, !dbg !4419

36:                                               ; preds = %32
  %37 = load i32, i32* %15, align 4, !dbg !4420, !tbaa !3896
  %38 = icmp ne i32 %37, 0, !dbg !4420
  br i1 %38, label %39, label %80, !dbg !4421

39:                                               ; preds = %36, %32
  br label %40, !dbg !4422

40:                                               ; preds = %77, %39
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %23) #4, !dbg !4423
  call void @llvm.dbg.declare(metadata i8* %23, metadata !4393, metadata !DIExpression()), !dbg !4424
  %41 = load i32, i32* %15, align 4, !dbg !4425, !tbaa !3896
  %42 = load i32, i32* %17, align 4, !dbg !4426, !tbaa !3896
  %43 = urem i32 %41, %42, !dbg !4427
  %44 = trunc i32 %43 to i8, !dbg !4428
  store i8 %44, i8* %23, align 1, !dbg !4424, !tbaa !312
  %45 = load i8, i8* %23, align 1, !dbg !4429, !tbaa !312
  %46 = zext i8 %45 to i32, !dbg !4429
  %47 = icmp slt i32 %46, 10, !dbg !4430
  br i1 %47, label %48, label %52, !dbg !4429

48:                                               ; preds = %40
  %49 = load i8, i8* %23, align 1, !dbg !4431, !tbaa !312
  %50 = zext i8 %49 to i32, !dbg !4431
  %51 = add nsw i32 48, %50, !dbg !4432
  br label %62, !dbg !4429

52:                                               ; preds = %40
  %53 = load i32, i32* %20, align 4, !dbg !4433, !tbaa !827
  %54 = and i32 %53, 32, !dbg !4434
  %55 = icmp ne i32 %54, 0, !dbg !4433
  %56 = zext i1 %55 to i64, !dbg !4433
  %57 = select i1 %55, i32 65, i32 97, !dbg !4433
  %58 = load i8, i8* %23, align 1, !dbg !4435, !tbaa !312
  %59 = zext i8 %58 to i32, !dbg !4435
  %60 = add nsw i32 %57, %59, !dbg !4436
  %61 = sub nsw i32 %60, 10, !dbg !4437
  br label %62, !dbg !4429

62:                                               ; preds = %52, %48
  %63 = phi i32 [ %51, %48 ], [ %61, %52 ], !dbg !4429
  %64 = trunc i32 %63 to i8, !dbg !4429
  %65 = load i32, i32* %22, align 4, !dbg !4438, !tbaa !827
  %66 = add i32 %65, 1, !dbg !4438
  store i32 %66, i32* %22, align 4, !dbg !4438, !tbaa !827
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i32 0, i32 %65, !dbg !4439
  store i8 %64, i8* %67, align 1, !dbg !4440, !tbaa !312
  %68 = load i32, i32* %17, align 4, !dbg !4441, !tbaa !3896
  %69 = load i32, i32* %15, align 4, !dbg !4442, !tbaa !3896
  %70 = udiv i32 %69, %68, !dbg !4442
  store i32 %70, i32* %15, align 4, !dbg !4442, !tbaa !3896
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %23) #4, !dbg !4443
  br label %71, !dbg !4444

71:                                               ; preds = %62
  %72 = load i32, i32* %15, align 4, !dbg !4445, !tbaa !3896
  %73 = icmp ne i32 %72, 0, !dbg !4445
  br i1 %73, label %74, label %77, !dbg !4446

74:                                               ; preds = %71
  %75 = load i32, i32* %22, align 4, !dbg !4447, !tbaa !827
  %76 = icmp ult i32 %75, 32, !dbg !4448
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ], !dbg !4449
  br i1 %78, label %40, label %79, !dbg !4444, !llvm.loop !4450

79:                                               ; preds = %77
  br label %80, !dbg !4452

80:                                               ; preds = %79, %36
  %81 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %11, align 4, !dbg !4453, !tbaa !292
  %82 = load i8*, i8** %12, align 4, !dbg !4454, !tbaa !292
  %83 = load i32, i32* %13, align 4, !dbg !4455, !tbaa !827
  %84 = load i32, i32* %14, align 4, !dbg !4456, !tbaa !827
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i32 0, i32 0, !dbg !4457
  %86 = load i32, i32* %22, align 4, !dbg !4458, !tbaa !827
  %87 = load i8, i8* %16, align 1, !dbg !4459, !tbaa !4185, !range !4368
  %88 = trunc i8 %87 to i1, !dbg !4459
  %89 = load i32, i32* %17, align 4, !dbg !4460, !tbaa !3896
  %90 = load i32, i32* %18, align 4, !dbg !4461, !tbaa !827
  %91 = load i32, i32* %19, align 4, !dbg !4462, !tbaa !827
  %92 = load i32, i32* %20, align 4, !dbg !4463, !tbaa !827
  %93 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %81, i8* %82, i32 %83, i32 %84, i8* %85, i32 %86, i1 zeroext %88, i32 %89, i32 %90, i32 %91, i32 %92), !dbg !4464
  %94 = bitcast i32* %22 to i8*, !dbg !4465
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %94) #4, !dbg !4465
  %95 = bitcast [32 x i8]* %21 to i8*, !dbg !4465
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %95) #4, !dbg !4465
  ret i32 %93, !dbg !4466
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !147 {
  %9 = alloca i32, align 4
  %10 = alloca void (i8, i8*, i32, i32)*, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [32 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store void (i8, i8*, i32, i32)* %0, void (i8, i8*, i32, i32)** %10, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata void (i8, i8*, i32, i32)** %10, metadata !173, metadata !DIExpression()), !dbg !4467
  store i8* %1, i8** %11, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %11, metadata !174, metadata !DIExpression()), !dbg !4468
  store i32 %2, i32* %12, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %12, metadata !175, metadata !DIExpression()), !dbg !4469
  store i32 %3, i32* %13, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %13, metadata !176, metadata !DIExpression()), !dbg !4470
  store double %4, double* %14, align 8, !tbaa !1707
  call void @llvm.dbg.declare(metadata double* %14, metadata !177, metadata !DIExpression()), !dbg !4471
  store i32 %5, i32* %15, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %15, metadata !178, metadata !DIExpression()), !dbg !4472
  store i32 %6, i32* %16, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %16, metadata !179, metadata !DIExpression()), !dbg !4473
  store i32 %7, i32* %17, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %17, metadata !180, metadata !DIExpression()), !dbg !4474
  %27 = bitcast [32 x i8]* %18 to i8*, !dbg !4475
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %27) #4, !dbg !4475
  call void @llvm.dbg.declare(metadata [32 x i8]* %18, metadata !181, metadata !DIExpression()), !dbg !4476
  %28 = bitcast i32* %19 to i8*, !dbg !4477
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #4, !dbg !4477
  call void @llvm.dbg.declare(metadata i32* %19, metadata !185, metadata !DIExpression()), !dbg !4478
  store i32 0, i32* %19, align 4, !dbg !4478, !tbaa !827
  %29 = bitcast double* %20 to i8*, !dbg !4479
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #4, !dbg !4479
  call void @llvm.dbg.declare(metadata double* %20, metadata !186, metadata !DIExpression()), !dbg !4480
  store double 0.000000e+00, double* %20, align 8, !dbg !4480, !tbaa !1707
  %30 = load double, double* %14, align 8, !dbg !4481, !tbaa !1707
  %31 = load double, double* %14, align 8, !dbg !4483, !tbaa !1707
  %32 = fcmp une double %30, %31, !dbg !4484
  br i1 %32, label %33, label %41, !dbg !4485

33:                                               ; preds = %8
  %34 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !4486, !tbaa !292
  %35 = load i8*, i8** %11, align 4, !dbg !4487, !tbaa !292
  %36 = load i32, i32* %12, align 4, !dbg !4488, !tbaa !827
  %37 = load i32, i32* %13, align 4, !dbg !4489, !tbaa !827
  %38 = load i32, i32* %16, align 4, !dbg !4490, !tbaa !827
  %39 = load i32, i32* %17, align 4, !dbg !4491, !tbaa !827
  %40 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %34, i8* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32 3, i32 %38, i32 %39), !dbg !4492
  store i32 %40, i32* %9, align 4, !dbg !4493
  store i32 1, i32* %21, align 4
  br label %326, !dbg !4493

41:                                               ; preds = %8
  %42 = load double, double* %14, align 8, !dbg !4494, !tbaa !1707
  %43 = fcmp olt double %42, 0xFFEFFFFFFFFFFFFF, !dbg !4496
  br i1 %43, label %44, label %52, !dbg !4497

44:                                               ; preds = %41
  %45 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !4498, !tbaa !292
  %46 = load i8*, i8** %11, align 4, !dbg !4499, !tbaa !292
  %47 = load i32, i32* %12, align 4, !dbg !4500, !tbaa !827
  %48 = load i32, i32* %13, align 4, !dbg !4501, !tbaa !827
  %49 = load i32, i32* %16, align 4, !dbg !4502, !tbaa !827
  %50 = load i32, i32* %17, align 4, !dbg !4503, !tbaa !827
  %51 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %45, i8* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.76, i32 0, i32 0), i32 4, i32 %49, i32 %50), !dbg !4504
  store i32 %51, i32* %9, align 4, !dbg !4505
  store i32 1, i32* %21, align 4
  br label %326, !dbg !4505

52:                                               ; preds = %41
  %53 = load double, double* %14, align 8, !dbg !4506, !tbaa !1707
  %54 = fcmp ogt double %53, 0x7FEFFFFFFFFFFFFF, !dbg !4508
  br i1 %54, label %55, label %73, !dbg !4509

55:                                               ; preds = %52
  %56 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !4510, !tbaa !292
  %57 = load i8*, i8** %11, align 4, !dbg !4511, !tbaa !292
  %58 = load i32, i32* %12, align 4, !dbg !4512, !tbaa !827
  %59 = load i32, i32* %13, align 4, !dbg !4513, !tbaa !827
  %60 = load i32, i32* %17, align 4, !dbg !4514, !tbaa !827
  %61 = and i32 %60, 4, !dbg !4515
  %62 = icmp ne i32 %61, 0, !dbg !4516
  %63 = zext i1 %62 to i64, !dbg !4516
  %64 = select i1 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.77, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.78, i32 0, i32 0), !dbg !4516
  %65 = load i32, i32* %17, align 4, !dbg !4517, !tbaa !827
  %66 = and i32 %65, 4, !dbg !4518
  %67 = icmp ne i32 %66, 0, !dbg !4519
  %68 = zext i1 %67 to i64, !dbg !4519
  %69 = select i1 %67, i32 4, i32 3, !dbg !4519
  %70 = load i32, i32* %16, align 4, !dbg !4520, !tbaa !827
  %71 = load i32, i32* %17, align 4, !dbg !4521, !tbaa !827
  %72 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %56, i8* %57, i32 %58, i32 %59, i8* %64, i32 %69, i32 %70, i32 %71), !dbg !4522
  store i32 %72, i32* %9, align 4, !dbg !4523
  store i32 1, i32* %21, align 4
  br label %326, !dbg !4523

73:                                               ; preds = %52
  %74 = load double, double* %14, align 8, !dbg !4524, !tbaa !1707
  %75 = fcmp ogt double %74, 1.000000e+09, !dbg !4526
  br i1 %75, label %79, label %76, !dbg !4527

76:                                               ; preds = %73
  %77 = load double, double* %14, align 8, !dbg !4528, !tbaa !1707
  %78 = fcmp olt double %77, -1.000000e+09, !dbg !4529
  br i1 %78, label %79, label %89, !dbg !4530

79:                                               ; preds = %76, %73
  %80 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !4531, !tbaa !292
  %81 = load i8*, i8** %11, align 4, !dbg !4533, !tbaa !292
  %82 = load i32, i32* %12, align 4, !dbg !4534, !tbaa !827
  %83 = load i32, i32* %13, align 4, !dbg !4535, !tbaa !827
  %84 = load double, double* %14, align 8, !dbg !4536, !tbaa !1707
  %85 = load i32, i32* %15, align 4, !dbg !4537, !tbaa !827
  %86 = load i32, i32* %16, align 4, !dbg !4538, !tbaa !827
  %87 = load i32, i32* %17, align 4, !dbg !4539, !tbaa !827
  %88 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %80, i8* %81, i32 %82, i32 %83, double %84, i32 %85, i32 %86, i32 %87), !dbg !4540
  store i32 %88, i32* %9, align 4, !dbg !4541
  store i32 1, i32* %21, align 4
  br label %326, !dbg !4541

89:                                               ; preds = %76
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %22) #4, !dbg !4542
  call void @llvm.dbg.declare(metadata i8* %22, metadata !187, metadata !DIExpression()), !dbg !4543
  store i8 0, i8* %22, align 1, !dbg !4543, !tbaa !4185
  %90 = load double, double* %14, align 8, !dbg !4544, !tbaa !1707
  %91 = fcmp olt double %90, 0.000000e+00, !dbg !4546
  br i1 %91, label %92, label %95, !dbg !4547

92:                                               ; preds = %89
  store i8 1, i8* %22, align 1, !dbg !4548, !tbaa !4185
  %93 = load double, double* %14, align 8, !dbg !4550, !tbaa !1707
  %94 = fsub double 0.000000e+00, %93, !dbg !4551
  store double %94, double* %14, align 8, !dbg !4552, !tbaa !1707
  br label %95, !dbg !4553

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %17, align 4, !dbg !4554, !tbaa !827
  %97 = and i32 %96, 1024, !dbg !4556
  %98 = icmp ne i32 %97, 0, !dbg !4556
  br i1 %98, label %100, label %99, !dbg !4557

99:                                               ; preds = %95
  store i32 6, i32* %15, align 4, !dbg !4558, !tbaa !827
  br label %100, !dbg !4560

100:                                              ; preds = %99, %95
  br label %101, !dbg !4561

101:                                              ; preds = %109, %100
  %102 = load i32, i32* %19, align 4, !dbg !4562, !tbaa !827
  %103 = icmp ult i32 %102, 32, !dbg !4563
  br i1 %103, label %104, label %107, !dbg !4564

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4, !dbg !4565, !tbaa !827
  %106 = icmp ugt i32 %105, 9, !dbg !4566
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi i1 [ false, %101 ], [ %106, %104 ], !dbg !4567
  br i1 %108, label %109, label %115, !dbg !4561

109:                                              ; preds = %107
  %110 = load i32, i32* %19, align 4, !dbg !4568, !tbaa !827
  %111 = add i32 %110, 1, !dbg !4568
  store i32 %111, i32* %19, align 4, !dbg !4568, !tbaa !827
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %110, !dbg !4570
  store i8 48, i8* %112, align 1, !dbg !4571, !tbaa !312
  %113 = load i32, i32* %15, align 4, !dbg !4572, !tbaa !827
  %114 = add i32 %113, -1, !dbg !4572
  store i32 %114, i32* %15, align 4, !dbg !4572, !tbaa !827
  br label %101, !dbg !4561, !llvm.loop !4573

115:                                              ; preds = %107
  %116 = bitcast i32* %23 to i8*, !dbg !4575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %116) #4, !dbg !4575
  call void @llvm.dbg.declare(metadata i32* %23, metadata !189, metadata !DIExpression()), !dbg !4576
  %117 = load double, double* %14, align 8, !dbg !4577, !tbaa !1707
  %118 = fptosi double %117 to i32, !dbg !4578
  store i32 %118, i32* %23, align 4, !dbg !4576, !tbaa !827
  %119 = bitcast double* %24 to i8*, !dbg !4579
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %119) #4, !dbg !4579
  call void @llvm.dbg.declare(metadata double* %24, metadata !190, metadata !DIExpression()), !dbg !4580
  %120 = load double, double* %14, align 8, !dbg !4581, !tbaa !1707
  %121 = load i32, i32* %23, align 4, !dbg !4582, !tbaa !827
  %122 = sitofp i32 %121 to double, !dbg !4582
  %123 = fsub double %120, %122, !dbg !4583
  %124 = load i32, i32* %15, align 4, !dbg !4584, !tbaa !827
  %125 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %124, !dbg !4585
  %126 = load double, double* %125, align 8, !dbg !4585, !tbaa !1707
  %127 = fmul double %123, %126, !dbg !4586
  store double %127, double* %24, align 8, !dbg !4580, !tbaa !1707
  %128 = bitcast i32* %25 to i8*, !dbg !4587
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %128) #4, !dbg !4587
  call void @llvm.dbg.declare(metadata i32* %25, metadata !191, metadata !DIExpression()), !dbg !4588
  %129 = load double, double* %24, align 8, !dbg !4589, !tbaa !1707
  %130 = fptoui double %129 to i32, !dbg !4590
  store i32 %130, i32* %25, align 4, !dbg !4588, !tbaa !3896
  %131 = load double, double* %24, align 8, !dbg !4591, !tbaa !1707
  %132 = load i32, i32* %25, align 4, !dbg !4592, !tbaa !3896
  %133 = uitofp i32 %132 to double, !dbg !4592
  %134 = fsub double %131, %133, !dbg !4593
  store double %134, double* %20, align 8, !dbg !4594, !tbaa !1707
  %135 = load double, double* %20, align 8, !dbg !4595, !tbaa !1707
  %136 = fcmp ogt double %135, 5.000000e-01, !dbg !4597
  br i1 %136, label %137, label %150, !dbg !4598

137:                                              ; preds = %115
  %138 = load i32, i32* %25, align 4, !dbg !4599, !tbaa !3896
  %139 = add i32 %138, 1, !dbg !4599
  store i32 %139, i32* %25, align 4, !dbg !4599, !tbaa !3896
  %140 = load i32, i32* %25, align 4, !dbg !4601, !tbaa !3896
  %141 = uitofp i32 %140 to double, !dbg !4601
  %142 = load i32, i32* %15, align 4, !dbg !4603, !tbaa !827
  %143 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %142, !dbg !4604
  %144 = load double, double* %143, align 8, !dbg !4604, !tbaa !1707
  %145 = fcmp oge double %141, %144, !dbg !4605
  br i1 %145, label %146, label %149, !dbg !4606

146:                                              ; preds = %137
  store i32 0, i32* %25, align 4, !dbg !4607, !tbaa !3896
  %147 = load i32, i32* %23, align 4, !dbg !4609, !tbaa !827
  %148 = add nsw i32 %147, 1, !dbg !4609
  store i32 %148, i32* %23, align 4, !dbg !4609, !tbaa !827
  br label %149, !dbg !4610

149:                                              ; preds = %146, %137
  br label %166, !dbg !4611

150:                                              ; preds = %115
  %151 = load double, double* %20, align 8, !dbg !4612, !tbaa !1707
  %152 = fcmp olt double %151, 5.000000e-01, !dbg !4614
  br i1 %152, label %153, label %154, !dbg !4615

153:                                              ; preds = %150
  br label %165, !dbg !4616

154:                                              ; preds = %150
  %155 = load i32, i32* %25, align 4, !dbg !4618, !tbaa !3896
  %156 = icmp eq i32 %155, 0, !dbg !4620
  br i1 %156, label %161, label %157, !dbg !4621

157:                                              ; preds = %154
  %158 = load i32, i32* %25, align 4, !dbg !4622, !tbaa !3896
  %159 = and i32 %158, 1, !dbg !4623
  %160 = icmp ne i32 %159, 0, !dbg !4623
  br i1 %160, label %161, label %164, !dbg !4624

161:                                              ; preds = %157, %154
  %162 = load i32, i32* %25, align 4, !dbg !4625, !tbaa !3896
  %163 = add i32 %162, 1, !dbg !4625
  store i32 %163, i32* %25, align 4, !dbg !4625, !tbaa !3896
  br label %164, !dbg !4627

164:                                              ; preds = %161, %157
  br label %165

165:                                              ; preds = %164, %153
  br label %166

166:                                              ; preds = %165, %149
  %167 = load i32, i32* %15, align 4, !dbg !4628, !tbaa !827
  %168 = icmp eq i32 %167, 0, !dbg !4629
  br i1 %168, label %169, label %187, !dbg !4630

169:                                              ; preds = %166
  %170 = load double, double* %14, align 8, !dbg !4631, !tbaa !1707
  %171 = load i32, i32* %23, align 4, !dbg !4633, !tbaa !827
  %172 = sitofp i32 %171 to double, !dbg !4634
  %173 = fsub double %170, %172, !dbg !4635
  store double %173, double* %20, align 8, !dbg !4636, !tbaa !1707
  %174 = load double, double* %20, align 8, !dbg !4637, !tbaa !1707
  %175 = fcmp olt double %174, 5.000000e-01, !dbg !4639
  br i1 %175, label %176, label %179, !dbg !4640

176:                                              ; preds = %169
  %177 = load double, double* %20, align 8, !dbg !4641, !tbaa !1707
  %178 = fcmp ogt double %177, 5.000000e-01, !dbg !4642
  br i1 %178, label %179, label %186, !dbg !4643

179:                                              ; preds = %176, %169
  %180 = load i32, i32* %23, align 4, !dbg !4644, !tbaa !827
  %181 = and i32 %180, 1, !dbg !4645
  %182 = icmp ne i32 %181, 0, !dbg !4645
  br i1 %182, label %183, label %186, !dbg !4646

183:                                              ; preds = %179
  %184 = load i32, i32* %23, align 4, !dbg !4647, !tbaa !827
  %185 = add nsw i32 %184, 1, !dbg !4647
  store i32 %185, i32* %23, align 4, !dbg !4647, !tbaa !827
  br label %186, !dbg !4649

186:                                              ; preds = %183, %179, %176
  br label %231, !dbg !4650

187:                                              ; preds = %166
  %188 = bitcast i32* %26 to i8*, !dbg !4651
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %188) #4, !dbg !4651
  call void @llvm.dbg.declare(metadata i32* %26, metadata !192, metadata !DIExpression()), !dbg !4652
  %189 = load i32, i32* %15, align 4, !dbg !4653, !tbaa !827
  store i32 %189, i32* %26, align 4, !dbg !4652, !tbaa !827
  br label %190, !dbg !4654

190:                                              ; preds = %207, %187
  %191 = load i32, i32* %19, align 4, !dbg !4655, !tbaa !827
  %192 = icmp ult i32 %191, 32, !dbg !4656
  br i1 %192, label %193, label %208, !dbg !4654

193:                                              ; preds = %190
  %194 = load i32, i32* %26, align 4, !dbg !4657, !tbaa !827
  %195 = add i32 %194, -1, !dbg !4657
  store i32 %195, i32* %26, align 4, !dbg !4657, !tbaa !827
  %196 = load i32, i32* %25, align 4, !dbg !4659, !tbaa !3896
  %197 = urem i32 %196, 10, !dbg !4660
  %198 = add i32 48, %197, !dbg !4661
  %199 = trunc i32 %198 to i8, !dbg !4662
  %200 = load i32, i32* %19, align 4, !dbg !4663, !tbaa !827
  %201 = add i32 %200, 1, !dbg !4663
  store i32 %201, i32* %19, align 4, !dbg !4663, !tbaa !827
  %202 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %200, !dbg !4664
  store i8 %199, i8* %202, align 1, !dbg !4665, !tbaa !312
  %203 = load i32, i32* %25, align 4, !dbg !4666, !tbaa !3896
  %204 = udiv i32 %203, 10, !dbg !4666
  store i32 %204, i32* %25, align 4, !dbg !4666, !tbaa !3896
  %205 = icmp ne i32 %204, 0, !dbg !4666
  br i1 %205, label %207, label %206, !dbg !4668

206:                                              ; preds = %193
  br label %208, !dbg !4669

207:                                              ; preds = %193
  br label %190, !dbg !4654, !llvm.loop !4671

208:                                              ; preds = %206, %190
  br label %209, !dbg !4673

209:                                              ; preds = %218, %208
  %210 = load i32, i32* %19, align 4, !dbg !4674, !tbaa !827
  %211 = icmp ult i32 %210, 32, !dbg !4675
  br i1 %211, label %212, label %216, !dbg !4676

212:                                              ; preds = %209
  %213 = load i32, i32* %26, align 4, !dbg !4677, !tbaa !827
  %214 = add i32 %213, -1, !dbg !4677
  store i32 %214, i32* %26, align 4, !dbg !4677, !tbaa !827
  %215 = icmp ugt i32 %213, 0, !dbg !4678
  br label %216

216:                                              ; preds = %212, %209
  %217 = phi i1 [ false, %209 ], [ %215, %212 ], !dbg !4679
  br i1 %217, label %218, label %222, !dbg !4673

218:                                              ; preds = %216
  %219 = load i32, i32* %19, align 4, !dbg !4680, !tbaa !827
  %220 = add i32 %219, 1, !dbg !4680
  store i32 %220, i32* %19, align 4, !dbg !4680, !tbaa !827
  %221 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %219, !dbg !4682
  store i8 48, i8* %221, align 1, !dbg !4683, !tbaa !312
  br label %209, !dbg !4673, !llvm.loop !4684

222:                                              ; preds = %216
  %223 = load i32, i32* %19, align 4, !dbg !4686, !tbaa !827
  %224 = icmp ult i32 %223, 32, !dbg !4688
  br i1 %224, label %225, label %229, !dbg !4689

225:                                              ; preds = %222
  %226 = load i32, i32* %19, align 4, !dbg !4690, !tbaa !827
  %227 = add i32 %226, 1, !dbg !4690
  store i32 %227, i32* %19, align 4, !dbg !4690, !tbaa !827
  %228 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %226, !dbg !4692
  store i8 46, i8* %228, align 1, !dbg !4693, !tbaa !312
  br label %229, !dbg !4694

229:                                              ; preds = %225, %222
  %230 = bitcast i32* %26 to i8*, !dbg !4695
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %230) #4, !dbg !4695
  br label %231

231:                                              ; preds = %229, %186
  br label %232, !dbg !4696

232:                                              ; preds = %247, %231
  %233 = load i32, i32* %19, align 4, !dbg !4697, !tbaa !827
  %234 = icmp ult i32 %233, 32, !dbg !4698
  br i1 %234, label %235, label %248, !dbg !4696

235:                                              ; preds = %232
  %236 = load i32, i32* %23, align 4, !dbg !4699, !tbaa !827
  %237 = srem i32 %236, 10, !dbg !4701
  %238 = add nsw i32 48, %237, !dbg !4702
  %239 = trunc i32 %238 to i8, !dbg !4703
  %240 = load i32, i32* %19, align 4, !dbg !4704, !tbaa !827
  %241 = add i32 %240, 1, !dbg !4704
  store i32 %241, i32* %19, align 4, !dbg !4704, !tbaa !827
  %242 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %240, !dbg !4705
  store i8 %239, i8* %242, align 1, !dbg !4706, !tbaa !312
  %243 = load i32, i32* %23, align 4, !dbg !4707, !tbaa !827
  %244 = sdiv i32 %243, 10, !dbg !4707
  store i32 %244, i32* %23, align 4, !dbg !4707, !tbaa !827
  %245 = icmp ne i32 %244, 0, !dbg !4707
  br i1 %245, label %247, label %246, !dbg !4709

246:                                              ; preds = %235
  br label %248, !dbg !4710

247:                                              ; preds = %235
  br label %232, !dbg !4696, !llvm.loop !4712

248:                                              ; preds = %246, %232
  %249 = load i32, i32* %17, align 4, !dbg !4714, !tbaa !827
  %250 = and i32 %249, 2, !dbg !4716
  %251 = icmp ne i32 %250, 0, !dbg !4716
  br i1 %251, label %284, label %252, !dbg !4717

252:                                              ; preds = %248
  %253 = load i32, i32* %17, align 4, !dbg !4718, !tbaa !827
  %254 = and i32 %253, 1, !dbg !4719
  %255 = icmp ne i32 %254, 0, !dbg !4719
  br i1 %255, label %256, label %284, !dbg !4720

256:                                              ; preds = %252
  %257 = load i32, i32* %16, align 4, !dbg !4721, !tbaa !827
  %258 = icmp ne i32 %257, 0, !dbg !4721
  br i1 %258, label %259, label %269, !dbg !4724

259:                                              ; preds = %256
  %260 = load i8, i8* %22, align 1, !dbg !4725, !tbaa !4185, !range !4368
  %261 = trunc i8 %260 to i1, !dbg !4725
  br i1 %261, label %266, label %262, !dbg !4726

262:                                              ; preds = %259
  %263 = load i32, i32* %17, align 4, !dbg !4727, !tbaa !827
  %264 = and i32 %263, 12, !dbg !4728
  %265 = icmp ne i32 %264, 0, !dbg !4728
  br i1 %265, label %266, label %269, !dbg !4729

266:                                              ; preds = %262, %259
  %267 = load i32, i32* %16, align 4, !dbg !4730, !tbaa !827
  %268 = add i32 %267, -1, !dbg !4730
  store i32 %268, i32* %16, align 4, !dbg !4730, !tbaa !827
  br label %269, !dbg !4732

269:                                              ; preds = %266, %262, %256
  br label %270, !dbg !4733

270:                                              ; preds = %279, %269
  %271 = load i32, i32* %19, align 4, !dbg !4734, !tbaa !827
  %272 = load i32, i32* %16, align 4, !dbg !4735, !tbaa !827
  %273 = icmp ult i32 %271, %272, !dbg !4736
  br i1 %273, label %274, label %277, !dbg !4737

274:                                              ; preds = %270
  %275 = load i32, i32* %19, align 4, !dbg !4738, !tbaa !827
  %276 = icmp ult i32 %275, 32, !dbg !4739
  br label %277

277:                                              ; preds = %274, %270
  %278 = phi i1 [ false, %270 ], [ %276, %274 ], !dbg !4740
  br i1 %278, label %279, label %283, !dbg !4733

279:                                              ; preds = %277
  %280 = load i32, i32* %19, align 4, !dbg !4741, !tbaa !827
  %281 = add i32 %280, 1, !dbg !4741
  store i32 %281, i32* %19, align 4, !dbg !4741, !tbaa !827
  %282 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %280, !dbg !4743
  store i8 48, i8* %282, align 1, !dbg !4744, !tbaa !312
  br label %270, !dbg !4733, !llvm.loop !4745

283:                                              ; preds = %277
  br label %284, !dbg !4747

284:                                              ; preds = %283, %252, %248
  %285 = load i32, i32* %19, align 4, !dbg !4748, !tbaa !827
  %286 = icmp ult i32 %285, 32, !dbg !4750
  br i1 %286, label %287, label %313, !dbg !4751

287:                                              ; preds = %284
  %288 = load i8, i8* %22, align 1, !dbg !4752, !tbaa !4185, !range !4368
  %289 = trunc i8 %288 to i1, !dbg !4752
  br i1 %289, label %290, label %294, !dbg !4755

290:                                              ; preds = %287
  %291 = load i32, i32* %19, align 4, !dbg !4756, !tbaa !827
  %292 = add i32 %291, 1, !dbg !4756
  store i32 %292, i32* %19, align 4, !dbg !4756, !tbaa !827
  %293 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %291, !dbg !4758
  store i8 45, i8* %293, align 1, !dbg !4759, !tbaa !312
  br label %312, !dbg !4760

294:                                              ; preds = %287
  %295 = load i32, i32* %17, align 4, !dbg !4761, !tbaa !827
  %296 = and i32 %295, 4, !dbg !4763
  %297 = icmp ne i32 %296, 0, !dbg !4763
  br i1 %297, label %298, label %302, !dbg !4764

298:                                              ; preds = %294
  %299 = load i32, i32* %19, align 4, !dbg !4765, !tbaa !827
  %300 = add i32 %299, 1, !dbg !4765
  store i32 %300, i32* %19, align 4, !dbg !4765, !tbaa !827
  %301 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %299, !dbg !4767
  store i8 43, i8* %301, align 1, !dbg !4768, !tbaa !312
  br label %311, !dbg !4769

302:                                              ; preds = %294
  %303 = load i32, i32* %17, align 4, !dbg !4770, !tbaa !827
  %304 = and i32 %303, 8, !dbg !4772
  %305 = icmp ne i32 %304, 0, !dbg !4772
  br i1 %305, label %306, label %310, !dbg !4773

306:                                              ; preds = %302
  %307 = load i32, i32* %19, align 4, !dbg !4774, !tbaa !827
  %308 = add i32 %307, 1, !dbg !4774
  store i32 %308, i32* %19, align 4, !dbg !4774, !tbaa !827
  %309 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 %307, !dbg !4776
  store i8 32, i8* %309, align 1, !dbg !4777, !tbaa !312
  br label %310, !dbg !4778

310:                                              ; preds = %306, %302
  br label %311

311:                                              ; preds = %310, %298
  br label %312

312:                                              ; preds = %311, %290
  br label %313, !dbg !4779

313:                                              ; preds = %312, %284
  %314 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !4780, !tbaa !292
  %315 = load i8*, i8** %11, align 4, !dbg !4781, !tbaa !292
  %316 = load i32, i32* %12, align 4, !dbg !4782, !tbaa !827
  %317 = load i32, i32* %13, align 4, !dbg !4783, !tbaa !827
  %318 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 0, !dbg !4784
  %319 = load i32, i32* %19, align 4, !dbg !4785, !tbaa !827
  %320 = load i32, i32* %16, align 4, !dbg !4786, !tbaa !827
  %321 = load i32, i32* %17, align 4, !dbg !4787, !tbaa !827
  %322 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %314, i8* %315, i32 %316, i32 %317, i8* %318, i32 %319, i32 %320, i32 %321), !dbg !4788
  store i32 %322, i32* %9, align 4, !dbg !4789
  store i32 1, i32* %21, align 4
  %323 = bitcast i32* %25 to i8*, !dbg !4790
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %323) #4, !dbg !4790
  %324 = bitcast double* %24 to i8*, !dbg !4790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %324) #4, !dbg !4790
  %325 = bitcast i32* %23 to i8*, !dbg !4790
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %325) #4, !dbg !4790
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %22) #4, !dbg !4790
  br label %326

326:                                              ; preds = %313, %79, %55, %44, %33
  %327 = bitcast double* %20 to i8*, !dbg !4790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %327) #4, !dbg !4790
  %328 = bitcast i32* %19 to i8*, !dbg !4790
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %328) #4, !dbg !4790
  %329 = bitcast [32 x i8]* %18 to i8*, !dbg !4790
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %329) #4, !dbg !4790
  %330 = load i32, i32* %9, align 4, !dbg !4790
  ret i32 %330, !dbg !4790
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 !dbg !4791 {
  %9 = alloca i32, align 4
  %10 = alloca void (i8, i8*, i32, i32)*, align 4
  %11 = alloca i8*, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %union.anon, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store void (i8, i8*, i32, i32)* %0, void (i8, i8*, i32, i32)** %10, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata void (i8, i8*, i32, i32)** %10, metadata !4793, metadata !DIExpression()), !dbg !4814
  store i8* %1, i8** %11, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4794, metadata !DIExpression()), !dbg !4815
  store i32 %2, i32* %12, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4795, metadata !DIExpression()), !dbg !4816
  store i32 %3, i32* %13, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4796, metadata !DIExpression()), !dbg !4817
  store double %4, double* %14, align 8, !tbaa !1707
  call void @llvm.dbg.declare(metadata double* %14, metadata !4797, metadata !DIExpression()), !dbg !4818
  store i32 %5, i32* %15, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4798, metadata !DIExpression()), !dbg !4819
  store i32 %6, i32* %16, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4799, metadata !DIExpression()), !dbg !4820
  store i32 %7, i32* %17, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4800, metadata !DIExpression()), !dbg !4821
  %27 = load double, double* %14, align 8, !dbg !4822, !tbaa !1707
  %28 = load double, double* %14, align 8, !dbg !4824, !tbaa !1707
  %29 = fcmp une double %27, %28, !dbg !4825
  br i1 %29, label %36, label %30, !dbg !4826

30:                                               ; preds = %8
  %31 = load double, double* %14, align 8, !dbg !4827, !tbaa !1707
  %32 = fcmp ogt double %31, 0x7FEFFFFFFFFFFFFF, !dbg !4828
  br i1 %32, label %36, label %33, !dbg !4829

33:                                               ; preds = %30
  %34 = load double, double* %14, align 8, !dbg !4830, !tbaa !1707
  %35 = fcmp olt double %34, 0xFFEFFFFFFFFFFFFF, !dbg !4831
  br i1 %35, label %36, label %46, !dbg !4832

36:                                               ; preds = %33, %30, %8
  %37 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !4833, !tbaa !292
  %38 = load i8*, i8** %11, align 4, !dbg !4835, !tbaa !292
  %39 = load i32, i32* %12, align 4, !dbg !4836, !tbaa !827
  %40 = load i32, i32* %13, align 4, !dbg !4837, !tbaa !827
  %41 = load double, double* %14, align 8, !dbg !4838, !tbaa !1707
  %42 = load i32, i32* %15, align 4, !dbg !4839, !tbaa !827
  %43 = load i32, i32* %16, align 4, !dbg !4840, !tbaa !827
  %44 = load i32, i32* %17, align 4, !dbg !4841, !tbaa !827
  %45 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %37, i8* %38, i32 %39, i32 %40, double %41, i32 %42, i32 %43, i32 %44), !dbg !4842
  store i32 %45, i32* %9, align 4, !dbg !4843
  br label %290, !dbg !4843

46:                                               ; preds = %33
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %18) #4, !dbg !4844
  call void @llvm.dbg.declare(metadata i8* %18, metadata !4801, metadata !DIExpression()), !dbg !4845
  %47 = load double, double* %14, align 8, !dbg !4846, !tbaa !1707
  %48 = fcmp olt double %47, 0.000000e+00, !dbg !4847
  %49 = zext i1 %48 to i8, !dbg !4845
  store i8 %49, i8* %18, align 1, !dbg !4845, !tbaa !4185
  %50 = load i8, i8* %18, align 1, !dbg !4848, !tbaa !4185, !range !4368
  %51 = trunc i8 %50 to i1, !dbg !4848
  br i1 %51, label %52, label %55, !dbg !4850

52:                                               ; preds = %46
  %53 = load double, double* %14, align 8, !dbg !4851, !tbaa !1707
  %54 = fsub double -0.000000e+00, %53, !dbg !4853
  store double %54, double* %14, align 8, !dbg !4854, !tbaa !1707
  br label %55, !dbg !4855

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %17, align 4, !dbg !4856, !tbaa !827
  %57 = and i32 %56, 1024, !dbg !4858
  %58 = icmp ne i32 %57, 0, !dbg !4858
  br i1 %58, label %60, label %59, !dbg !4859

59:                                               ; preds = %55
  store i32 6, i32* %15, align 4, !dbg !4860, !tbaa !827
  br label %60, !dbg !4862

60:                                               ; preds = %59, %55
  %61 = bitcast %union.anon* %19 to i8*, !dbg !4863
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %61) #4, !dbg !4863
  call void @llvm.dbg.declare(metadata %union.anon* %19, metadata !4802, metadata !DIExpression()), !dbg !4864
  %62 = load double, double* %14, align 8, !dbg !4865, !tbaa !1707
  %63 = bitcast %union.anon* %19 to double*, !dbg !4866
  store double %62, double* %63, align 8, !dbg !4867, !tbaa !312
  %64 = bitcast i32* %20 to i8*, !dbg !4868
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %64) #4, !dbg !4868
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4807, metadata !DIExpression()), !dbg !4869
  %65 = bitcast %union.anon* %19 to i64*, !dbg !4870
  %66 = load i64, i64* %65, align 8, !dbg !4870, !tbaa !312
  %67 = lshr i64 %66, 52, !dbg !4871
  %68 = and i64 %67, 2047, !dbg !4872
  %69 = trunc i64 %68 to i32, !dbg !4873
  %70 = sub nsw i32 %69, 1023, !dbg !4874
  store i32 %70, i32* %20, align 4, !dbg !4869, !tbaa !827
  %71 = bitcast %union.anon* %19 to i64*, !dbg !4875
  %72 = load i64, i64* %71, align 8, !dbg !4875, !tbaa !312
  %73 = and i64 %72, 4503599627370495, !dbg !4876
  %74 = or i64 %73, 4607182418800017408, !dbg !4877
  %75 = bitcast %union.anon* %19 to i64*, !dbg !4878
  store i64 %74, i64* %75, align 8, !dbg !4879, !tbaa !312
  %76 = bitcast i32* %21 to i8*, !dbg !4880
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %76) #4, !dbg !4880
  call void @llvm.dbg.declare(metadata i32* %21, metadata !4808, metadata !DIExpression()), !dbg !4881
  %77 = load i32, i32* %20, align 4, !dbg !4882, !tbaa !827
  %78 = sitofp i32 %77 to double, !dbg !4882
  %79 = fmul double %78, 0x3FD34413509F79FB, !dbg !4883
  %80 = fadd double 0x3FC68A288B60C8B3, %79, !dbg !4884
  %81 = bitcast %union.anon* %19 to double*, !dbg !4885
  %82 = load double, double* %81, align 8, !dbg !4885, !tbaa !312
  %83 = fsub double %82, 1.500000e+00, !dbg !4886
  %84 = fmul double %83, 0x3FD287A7636F4361, !dbg !4887
  %85 = fadd double %80, %84, !dbg !4888
  %86 = fptosi double %85 to i32, !dbg !4889
  store i32 %86, i32* %21, align 4, !dbg !4881, !tbaa !827
  %87 = load i32, i32* %21, align 4, !dbg !4890, !tbaa !827
  %88 = sitofp i32 %87 to double, !dbg !4890
  %89 = fmul double %88, 0x400A934F0979A371, !dbg !4891
  %90 = fadd double %89, 5.000000e-01, !dbg !4892
  %91 = fptosi double %90 to i32, !dbg !4893
  store i32 %91, i32* %20, align 4, !dbg !4894, !tbaa !827
  %92 = bitcast double* %22 to i8*, !dbg !4895
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %92) #4, !dbg !4895
  call void @llvm.dbg.declare(metadata double* %22, metadata !4809, metadata !DIExpression()), !dbg !4896
  %93 = load i32, i32* %21, align 4, !dbg !4897, !tbaa !827
  %94 = sitofp i32 %93 to double, !dbg !4897
  %95 = fmul double %94, 0x40026BB1BBB55516, !dbg !4898
  %96 = load i32, i32* %20, align 4, !dbg !4899, !tbaa !827
  %97 = sitofp i32 %96 to double, !dbg !4899
  %98 = fmul double %97, 0x3FE62E42FEFA39EF, !dbg !4900
  %99 = fsub double %95, %98, !dbg !4901
  store double %99, double* %22, align 8, !dbg !4896, !tbaa !1707
  %100 = bitcast double* %23 to i8*, !dbg !4902
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %100) #4, !dbg !4902
  call void @llvm.dbg.declare(metadata double* %23, metadata !4810, metadata !DIExpression()), !dbg !4903
  %101 = load double, double* %22, align 8, !dbg !4904, !tbaa !1707
  %102 = load double, double* %22, align 8, !dbg !4905, !tbaa !1707
  %103 = fmul double %101, %102, !dbg !4906
  store double %103, double* %23, align 8, !dbg !4903, !tbaa !1707
  %104 = load i32, i32* %20, align 4, !dbg !4907, !tbaa !827
  %105 = add nsw i32 %104, 1023, !dbg !4908
  %106 = sext i32 %105 to i64, !dbg !4909
  %107 = shl i64 %106, 52, !dbg !4910
  %108 = bitcast %union.anon* %19 to i64*, !dbg !4911
  store i64 %107, i64* %108, align 8, !dbg !4912, !tbaa !312
  %109 = load double, double* %22, align 8, !dbg !4913, !tbaa !1707
  %110 = fmul double 2.000000e+00, %109, !dbg !4914
  %111 = load double, double* %22, align 8, !dbg !4915, !tbaa !1707
  %112 = fsub double 2.000000e+00, %111, !dbg !4916
  %113 = load double, double* %23, align 8, !dbg !4917, !tbaa !1707
  %114 = load double, double* %23, align 8, !dbg !4918, !tbaa !1707
  %115 = load double, double* %23, align 8, !dbg !4919, !tbaa !1707
  %116 = fdiv double %115, 1.400000e+01, !dbg !4920
  %117 = fadd double 1.000000e+01, %116, !dbg !4921
  %118 = fdiv double %114, %117, !dbg !4922
  %119 = fadd double 6.000000e+00, %118, !dbg !4923
  %120 = fdiv double %113, %119, !dbg !4924
  %121 = fadd double %112, %120, !dbg !4925
  %122 = fdiv double %110, %121, !dbg !4926
  %123 = fadd double 1.000000e+00, %122, !dbg !4927
  %124 = bitcast %union.anon* %19 to double*, !dbg !4928
  %125 = load double, double* %124, align 8, !dbg !4929, !tbaa !312
  %126 = fmul double %125, %123, !dbg !4929
  store double %126, double* %124, align 8, !dbg !4929, !tbaa !312
  %127 = load double, double* %14, align 8, !dbg !4930, !tbaa !1707
  %128 = bitcast %union.anon* %19 to double*, !dbg !4932
  %129 = load double, double* %128, align 8, !dbg !4932, !tbaa !312
  %130 = fcmp olt double %127, %129, !dbg !4933
  br i1 %130, label %131, label %137, !dbg !4934

131:                                              ; preds = %60
  %132 = load i32, i32* %21, align 4, !dbg !4935, !tbaa !827
  %133 = add nsw i32 %132, -1, !dbg !4935
  store i32 %133, i32* %21, align 4, !dbg !4935, !tbaa !827
  %134 = bitcast %union.anon* %19 to double*, !dbg !4937
  %135 = load double, double* %134, align 8, !dbg !4938, !tbaa !312
  %136 = fdiv double %135, 1.000000e+01, !dbg !4938
  store double %136, double* %134, align 8, !dbg !4938, !tbaa !312
  br label %137, !dbg !4939

137:                                              ; preds = %131, %60
  %138 = bitcast i32* %24 to i8*, !dbg !4940
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %138) #4, !dbg !4940
  call void @llvm.dbg.declare(metadata i32* %24, metadata !4811, metadata !DIExpression()), !dbg !4941
  %139 = load i32, i32* %21, align 4, !dbg !4942, !tbaa !827
  %140 = icmp slt i32 %139, 100, !dbg !4943
  br i1 %140, label %141, label %144, !dbg !4944

141:                                              ; preds = %137
  %142 = load i32, i32* %21, align 4, !dbg !4945, !tbaa !827
  %143 = icmp sgt i32 %142, -100, !dbg !4946
  br label %144

144:                                              ; preds = %141, %137
  %145 = phi i1 [ false, %137 ], [ %143, %141 ], !dbg !4947
  %146 = zext i1 %145 to i64, !dbg !4948
  %147 = select i1 %145, i32 4, i32 5, !dbg !4948
  store i32 %147, i32* %24, align 4, !dbg !4941, !tbaa !827
  %148 = load i32, i32* %17, align 4, !dbg !4949, !tbaa !827
  %149 = and i32 %148, 2048, !dbg !4951
  %150 = icmp ne i32 %149, 0, !dbg !4951
  br i1 %150, label %151, label %182, !dbg !4952

151:                                              ; preds = %144
  %152 = load double, double* %14, align 8, !dbg !4953, !tbaa !1707
  %153 = fcmp oge double %152, 1.000000e-04, !dbg !4956
  br i1 %153, label %154, label %170, !dbg !4957

154:                                              ; preds = %151
  %155 = load double, double* %14, align 8, !dbg !4958, !tbaa !1707
  %156 = fcmp olt double %155, 1.000000e+06, !dbg !4959
  br i1 %156, label %157, label %170, !dbg !4960

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4, !dbg !4961, !tbaa !827
  %159 = load i32, i32* %21, align 4, !dbg !4964, !tbaa !827
  %160 = icmp sgt i32 %158, %159, !dbg !4965
  br i1 %160, label %161, label %166, !dbg !4966

161:                                              ; preds = %157
  %162 = load i32, i32* %15, align 4, !dbg !4967, !tbaa !827
  %163 = load i32, i32* %21, align 4, !dbg !4969, !tbaa !827
  %164 = sub nsw i32 %162, %163, !dbg !4970
  %165 = sub nsw i32 %164, 1, !dbg !4971
  store i32 %165, i32* %15, align 4, !dbg !4972, !tbaa !827
  br label %167, !dbg !4973

166:                                              ; preds = %157
  store i32 0, i32* %15, align 4, !dbg !4974, !tbaa !827
  br label %167

167:                                              ; preds = %166, %161
  %168 = load i32, i32* %17, align 4, !dbg !4976, !tbaa !827
  %169 = or i32 %168, 1024, !dbg !4976
  store i32 %169, i32* %17, align 4, !dbg !4976, !tbaa !827
  store i32 0, i32* %24, align 4, !dbg !4977, !tbaa !827
  store i32 0, i32* %21, align 4, !dbg !4978, !tbaa !827
  br label %181, !dbg !4979

170:                                              ; preds = %154, %151
  %171 = load i32, i32* %15, align 4, !dbg !4980, !tbaa !827
  %172 = icmp ugt i32 %171, 0, !dbg !4983
  br i1 %172, label %173, label %180, !dbg !4984

173:                                              ; preds = %170
  %174 = load i32, i32* %17, align 4, !dbg !4985, !tbaa !827
  %175 = and i32 %174, 1024, !dbg !4986
  %176 = icmp ne i32 %175, 0, !dbg !4986
  br i1 %176, label %177, label %180, !dbg !4987

177:                                              ; preds = %173
  %178 = load i32, i32* %15, align 4, !dbg !4988, !tbaa !827
  %179 = add i32 %178, -1, !dbg !4988
  store i32 %179, i32* %15, align 4, !dbg !4988, !tbaa !827
  br label %180, !dbg !4990

180:                                              ; preds = %177, %173, %170
  br label %181

181:                                              ; preds = %180, %167
  br label %182, !dbg !4991

182:                                              ; preds = %181, %144
  %183 = bitcast i32* %25 to i8*, !dbg !4992
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %183) #4, !dbg !4992
  call void @llvm.dbg.declare(metadata i32* %25, metadata !4812, metadata !DIExpression()), !dbg !4993
  %184 = load i32, i32* %16, align 4, !dbg !4994, !tbaa !827
  store i32 %184, i32* %25, align 4, !dbg !4993, !tbaa !827
  %185 = load i32, i32* %16, align 4, !dbg !4995, !tbaa !827
  %186 = load i32, i32* %24, align 4, !dbg !4997, !tbaa !827
  %187 = icmp ugt i32 %185, %186, !dbg !4998
  br i1 %187, label %188, label %192, !dbg !4999

188:                                              ; preds = %182
  %189 = load i32, i32* %24, align 4, !dbg !5000, !tbaa !827
  %190 = load i32, i32* %25, align 4, !dbg !5002, !tbaa !827
  %191 = sub i32 %190, %189, !dbg !5002
  store i32 %191, i32* %25, align 4, !dbg !5002, !tbaa !827
  br label %193, !dbg !5003

192:                                              ; preds = %182
  store i32 0, i32* %25, align 4, !dbg !5004, !tbaa !827
  br label %193

193:                                              ; preds = %192, %188
  %194 = load i32, i32* %17, align 4, !dbg !5006, !tbaa !827
  %195 = and i32 %194, 2, !dbg !5008
  %196 = icmp ne i32 %195, 0, !dbg !5008
  br i1 %196, label %197, label %201, !dbg !5009

197:                                              ; preds = %193
  %198 = load i32, i32* %24, align 4, !dbg !5010, !tbaa !827
  %199 = icmp ne i32 %198, 0, !dbg !5010
  br i1 %199, label %200, label %201, !dbg !5011

200:                                              ; preds = %197
  store i32 0, i32* %25, align 4, !dbg !5012, !tbaa !827
  br label %201, !dbg !5014

201:                                              ; preds = %200, %197, %193
  %202 = load i32, i32* %21, align 4, !dbg !5015, !tbaa !827
  %203 = icmp ne i32 %202, 0, !dbg !5015
  br i1 %203, label %204, label %209, !dbg !5017

204:                                              ; preds = %201
  %205 = bitcast %union.anon* %19 to double*, !dbg !5018
  %206 = load double, double* %205, align 8, !dbg !5018, !tbaa !312
  %207 = load double, double* %14, align 8, !dbg !5020, !tbaa !1707
  %208 = fdiv double %207, %206, !dbg !5020
  store double %208, double* %14, align 8, !dbg !5020, !tbaa !1707
  br label %209, !dbg !5021

209:                                              ; preds = %204, %201
  %210 = bitcast i32* %26 to i8*, !dbg !5022
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %210) #4, !dbg !5022
  call void @llvm.dbg.declare(metadata i32* %26, metadata !4813, metadata !DIExpression()), !dbg !5023
  %211 = load i32, i32* %12, align 4, !dbg !5024, !tbaa !827
  store i32 %211, i32* %26, align 4, !dbg !5023, !tbaa !827
  %212 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !5025, !tbaa !292
  %213 = load i8*, i8** %11, align 4, !dbg !5026, !tbaa !292
  %214 = load i32, i32* %12, align 4, !dbg !5027, !tbaa !827
  %215 = load i32, i32* %13, align 4, !dbg !5028, !tbaa !827
  %216 = load i8, i8* %18, align 1, !dbg !5029, !tbaa !4185, !range !4368
  %217 = trunc i8 %216 to i1, !dbg !5029
  br i1 %217, label %218, label %221, !dbg !5029

218:                                              ; preds = %209
  %219 = load double, double* %14, align 8, !dbg !5030, !tbaa !1707
  %220 = fsub double -0.000000e+00, %219, !dbg !5031
  br label %223, !dbg !5029

221:                                              ; preds = %209
  %222 = load double, double* %14, align 8, !dbg !5032, !tbaa !1707
  br label %223, !dbg !5029

223:                                              ; preds = %221, %218
  %224 = phi double [ %220, %218 ], [ %222, %221 ], !dbg !5029
  %225 = load i32, i32* %15, align 4, !dbg !5033, !tbaa !827
  %226 = load i32, i32* %25, align 4, !dbg !5034, !tbaa !827
  %227 = load i32, i32* %17, align 4, !dbg !5035, !tbaa !827
  %228 = and i32 %227, -2049, !dbg !5036
  %229 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %212, i8* %213, i32 %214, i32 %215, double %224, i32 %225, i32 %226, i32 %228), !dbg !5037
  store i32 %229, i32* %12, align 4, !dbg !5038, !tbaa !827
  %230 = load i32, i32* %24, align 4, !dbg !5039, !tbaa !827
  %231 = icmp ne i32 %230, 0, !dbg !5039
  br i1 %231, label %232, label %280, !dbg !5041

232:                                              ; preds = %223
  %233 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !5042, !tbaa !292
  %234 = load i32, i32* %17, align 4, !dbg !5044, !tbaa !827
  %235 = and i32 %234, 32, !dbg !5045
  %236 = icmp ne i32 %235, 0, !dbg !5046
  %237 = zext i1 %236 to i64, !dbg !5046
  %238 = select i1 %236, i32 69, i32 101, !dbg !5046
  %239 = trunc i32 %238 to i8, !dbg !5046
  %240 = load i8*, i8** %11, align 4, !dbg !5047, !tbaa !292
  %241 = load i32, i32* %12, align 4, !dbg !5048, !tbaa !827
  %242 = add i32 %241, 1, !dbg !5048
  store i32 %242, i32* %12, align 4, !dbg !5048, !tbaa !827
  %243 = load i32, i32* %13, align 4, !dbg !5049, !tbaa !827
  call arm_aapcscc void %233(i8 zeroext %239, i8* %240, i32 %241, i32 %243), !dbg !5042
  %244 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !5050, !tbaa !292
  %245 = load i8*, i8** %11, align 4, !dbg !5051, !tbaa !292
  %246 = load i32, i32* %12, align 4, !dbg !5052, !tbaa !827
  %247 = load i32, i32* %13, align 4, !dbg !5053, !tbaa !827
  %248 = load i32, i32* %21, align 4, !dbg !5054, !tbaa !827
  %249 = icmp slt i32 %248, 0, !dbg !5055
  br i1 %249, label %250, label %253, !dbg !5056

250:                                              ; preds = %232
  %251 = load i32, i32* %21, align 4, !dbg !5057, !tbaa !827
  %252 = sub nsw i32 0, %251, !dbg !5058
  br label %255, !dbg !5056

253:                                              ; preds = %232
  %254 = load i32, i32* %21, align 4, !dbg !5059, !tbaa !827
  br label %255, !dbg !5056

255:                                              ; preds = %253, %250
  %256 = phi i32 [ %252, %250 ], [ %254, %253 ], !dbg !5056
  %257 = load i32, i32* %21, align 4, !dbg !5060, !tbaa !827
  %258 = icmp slt i32 %257, 0, !dbg !5061
  %259 = load i32, i32* %24, align 4, !dbg !5062, !tbaa !827
  %260 = sub i32 %259, 1, !dbg !5063
  %261 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %244, i8* %245, i32 %246, i32 %247, i32 %256, i1 zeroext %258, i32 10, i32 0, i32 %260, i32 5), !dbg !5064
  store i32 %261, i32* %12, align 4, !dbg !5065, !tbaa !827
  %262 = load i32, i32* %17, align 4, !dbg !5066, !tbaa !827
  %263 = and i32 %262, 2, !dbg !5068
  %264 = icmp ne i32 %263, 0, !dbg !5068
  br i1 %264, label %265, label %279, !dbg !5069

265:                                              ; preds = %255
  br label %266, !dbg !5070

266:                                              ; preds = %272, %265
  %267 = load i32, i32* %12, align 4, !dbg !5072, !tbaa !827
  %268 = load i32, i32* %26, align 4, !dbg !5073, !tbaa !827
  %269 = sub i32 %267, %268, !dbg !5074
  %270 = load i32, i32* %16, align 4, !dbg !5075, !tbaa !827
  %271 = icmp ult i32 %269, %270, !dbg !5076
  br i1 %271, label %272, label %278, !dbg !5070

272:                                              ; preds = %266
  %273 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %10, align 4, !dbg !5077, !tbaa !292
  %274 = load i8*, i8** %11, align 4, !dbg !5078, !tbaa !292
  %275 = load i32, i32* %12, align 4, !dbg !5079, !tbaa !827
  %276 = add i32 %275, 1, !dbg !5079
  store i32 %276, i32* %12, align 4, !dbg !5079, !tbaa !827
  %277 = load i32, i32* %13, align 4, !dbg !5080, !tbaa !827
  call arm_aapcscc void %273(i8 zeroext 32, i8* %274, i32 %275, i32 %277), !dbg !5077
  br label %266, !dbg !5070, !llvm.loop !5081

278:                                              ; preds = %266
  br label %279, !dbg !5083

279:                                              ; preds = %278, %255
  br label %280, !dbg !5084

280:                                              ; preds = %279, %223
  %281 = load i32, i32* %12, align 4, !dbg !5085, !tbaa !827
  store i32 %281, i32* %9, align 4, !dbg !5086
  %282 = bitcast i32* %26 to i8*, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %282) #4, !dbg !5087
  %283 = bitcast i32* %25 to i8*, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %283) #4, !dbg !5087
  %284 = bitcast i32* %24 to i8*, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %284) #4, !dbg !5087
  %285 = bitcast double* %23 to i8*, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %285) #4, !dbg !5087
  %286 = bitcast double* %22 to i8*, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %286) #4, !dbg !5087
  %287 = bitcast i32* %21 to i8*, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %287) #4, !dbg !5087
  %288 = bitcast i32* %20 to i8*, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %288) #4, !dbg !5087
  %289 = bitcast %union.anon* %19 to i8*, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %289) #4, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %18) #4, !dbg !5087
  br label %290

290:                                              ; preds = %280, %36
  %291 = load i32, i32* %9, align 4, !dbg !5087
  ret i32 %291, !dbg !5087
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @_strnlen_s(i8*, i32) #5 !dbg !5088 {
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  store i8* %0, i8** %3, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5092, metadata !DIExpression()), !dbg !5095
  store i32 %1, i32* %4, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5093, metadata !DIExpression()), !dbg !5096
  %6 = bitcast i8** %5 to i8*, !dbg !5097
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !5097
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5094, metadata !DIExpression()), !dbg !5098
  %7 = load i8*, i8** %3, align 4, !dbg !5099, !tbaa !292
  store i8* %7, i8** %5, align 4, !dbg !5101, !tbaa !292
  br label %8, !dbg !5102

8:                                                ; preds = %20, %2
  %9 = load i8*, i8** %5, align 4, !dbg !5103, !tbaa !292
  %10 = load i8, i8* %9, align 1, !dbg !5105, !tbaa !312
  %11 = zext i8 %10 to i32, !dbg !5105
  %12 = icmp ne i32 %11, 0, !dbg !5105
  br i1 %12, label %13, label %17, !dbg !5106

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4, !dbg !5107, !tbaa !827
  %15 = add i32 %14, -1, !dbg !5107
  store i32 %15, i32* %4, align 4, !dbg !5107, !tbaa !827
  %16 = icmp ne i32 %14, 0, !dbg !5106
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i1 [ false, %8 ], [ %16, %13 ], !dbg !5108
  br i1 %18, label %19, label %23, !dbg !5109

19:                                               ; preds = %17
  br label %20, !dbg !5109

20:                                               ; preds = %19
  %21 = load i8*, i8** %5, align 4, !dbg !5110, !tbaa !292
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !5110
  store i8* %22, i8** %5, align 4, !dbg !5110, !tbaa !292
  br label %8, !dbg !5111, !llvm.loop !5112

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 4, !dbg !5114, !tbaa !292
  %25 = load i8*, i8** %3, align 4, !dbg !5115, !tbaa !292
  %26 = ptrtoint i8* %24 to i32, !dbg !5116
  %27 = ptrtoint i8* %25 to i32, !dbg !5116
  %28 = sub i32 %26, %27, !dbg !5116
  %29 = bitcast i8** %5 to i8*, !dbg !5117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !5117
  ret i32 %28, !dbg !5118
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i32, i32) #0 !dbg !5119 {
  %9 = alloca void (i8, i8*, i32, i32)*, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store void (i8, i8*, i32, i32)* %0, void (i8, i8*, i32, i32)** %9, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata void (i8, i8*, i32, i32)** %9, metadata !5123, metadata !DIExpression()), !dbg !5136
  store i8* %1, i8** %10, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %10, metadata !5124, metadata !DIExpression()), !dbg !5137
  store i32 %2, i32* %11, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %11, metadata !5125, metadata !DIExpression()), !dbg !5138
  store i32 %3, i32* %12, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %12, metadata !5126, metadata !DIExpression()), !dbg !5139
  store i8* %4, i8** %13, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %13, metadata !5127, metadata !DIExpression()), !dbg !5140
  store i32 %5, i32* %14, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %14, metadata !5128, metadata !DIExpression()), !dbg !5141
  store i32 %6, i32* %15, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %15, metadata !5129, metadata !DIExpression()), !dbg !5142
  store i32 %7, i32* %16, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %16, metadata !5130, metadata !DIExpression()), !dbg !5143
  %19 = bitcast i32* %17 to i8*, !dbg !5144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !5144
  call void @llvm.dbg.declare(metadata i32* %17, metadata !5131, metadata !DIExpression()), !dbg !5145
  %20 = load i32, i32* %11, align 4, !dbg !5146, !tbaa !827
  store i32 %20, i32* %17, align 4, !dbg !5145, !tbaa !827
  %21 = load i32, i32* %16, align 4, !dbg !5147, !tbaa !827
  %22 = and i32 %21, 2, !dbg !5148
  %23 = icmp ne i32 %22, 0, !dbg !5148
  br i1 %23, label %47, label %24, !dbg !5149

24:                                               ; preds = %8
  %25 = load i32, i32* %16, align 4, !dbg !5150, !tbaa !827
  %26 = and i32 %25, 1, !dbg !5151
  %27 = icmp ne i32 %26, 0, !dbg !5151
  br i1 %27, label %47, label %28, !dbg !5152

28:                                               ; preds = %24
  %29 = bitcast i32* %18 to i8*, !dbg !5153
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #4, !dbg !5153
  call void @llvm.dbg.declare(metadata i32* %18, metadata !5132, metadata !DIExpression()), !dbg !5154
  %30 = load i32, i32* %14, align 4, !dbg !5155, !tbaa !827
  store i32 %30, i32* %18, align 4, !dbg !5154, !tbaa !827
  br label %31, !dbg !5153

31:                                               ; preds = %43, %28
  %32 = load i32, i32* %18, align 4, !dbg !5156, !tbaa !827
  %33 = load i32, i32* %15, align 4, !dbg !5158, !tbaa !827
  %34 = icmp ult i32 %32, %33, !dbg !5159
  br i1 %34, label %37, label %35, !dbg !5160

35:                                               ; preds = %31
  %36 = bitcast i32* %18 to i8*, !dbg !5161
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !5161
  br label %46

37:                                               ; preds = %31
  %38 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %9, align 4, !dbg !5162, !tbaa !292
  %39 = load i8*, i8** %10, align 4, !dbg !5164, !tbaa !292
  %40 = load i32, i32* %11, align 4, !dbg !5165, !tbaa !827
  %41 = add i32 %40, 1, !dbg !5165
  store i32 %41, i32* %11, align 4, !dbg !5165, !tbaa !827
  %42 = load i32, i32* %12, align 4, !dbg !5166, !tbaa !827
  call arm_aapcscc void %38(i8 zeroext 32, i8* %39, i32 %40, i32 %42), !dbg !5162
  br label %43, !dbg !5167

43:                                               ; preds = %37
  %44 = load i32, i32* %18, align 4, !dbg !5168, !tbaa !827
  %45 = add i32 %44, 1, !dbg !5168
  store i32 %45, i32* %18, align 4, !dbg !5168, !tbaa !827
  br label %31, !dbg !5161, !llvm.loop !5169

46:                                               ; preds = %35
  br label %47, !dbg !5171

47:                                               ; preds = %46, %24, %8
  br label %48, !dbg !5172

48:                                               ; preds = %51, %47
  %49 = load i32, i32* %14, align 4, !dbg !5173, !tbaa !827
  %50 = icmp ne i32 %49, 0, !dbg !5172
  br i1 %50, label %51, label %62, !dbg !5172

51:                                               ; preds = %48
  %52 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %9, align 4, !dbg !5174, !tbaa !292
  %53 = load i8*, i8** %13, align 4, !dbg !5176, !tbaa !292
  %54 = load i32, i32* %14, align 4, !dbg !5177, !tbaa !827
  %55 = add i32 %54, -1, !dbg !5177
  store i32 %55, i32* %14, align 4, !dbg !5177, !tbaa !827
  %56 = getelementptr inbounds i8, i8* %53, i32 %55, !dbg !5176
  %57 = load i8, i8* %56, align 1, !dbg !5176, !tbaa !312
  %58 = load i8*, i8** %10, align 4, !dbg !5178, !tbaa !292
  %59 = load i32, i32* %11, align 4, !dbg !5179, !tbaa !827
  %60 = add i32 %59, 1, !dbg !5179
  store i32 %60, i32* %11, align 4, !dbg !5179, !tbaa !827
  %61 = load i32, i32* %12, align 4, !dbg !5180, !tbaa !827
  call arm_aapcscc void %52(i8 zeroext %57, i8* %58, i32 %59, i32 %61), !dbg !5174
  br label %48, !dbg !5172, !llvm.loop !5181

62:                                               ; preds = %48
  %63 = load i32, i32* %16, align 4, !dbg !5183, !tbaa !827
  %64 = and i32 %63, 2, !dbg !5185
  %65 = icmp ne i32 %64, 0, !dbg !5185
  br i1 %65, label %66, label %80, !dbg !5186

66:                                               ; preds = %62
  br label %67, !dbg !5187

67:                                               ; preds = %73, %66
  %68 = load i32, i32* %11, align 4, !dbg !5189, !tbaa !827
  %69 = load i32, i32* %17, align 4, !dbg !5190, !tbaa !827
  %70 = sub i32 %68, %69, !dbg !5191
  %71 = load i32, i32* %15, align 4, !dbg !5192, !tbaa !827
  %72 = icmp ult i32 %70, %71, !dbg !5193
  br i1 %72, label %73, label %79, !dbg !5187

73:                                               ; preds = %67
  %74 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %9, align 4, !dbg !5194, !tbaa !292
  %75 = load i8*, i8** %10, align 4, !dbg !5196, !tbaa !292
  %76 = load i32, i32* %11, align 4, !dbg !5197, !tbaa !827
  %77 = add i32 %76, 1, !dbg !5197
  store i32 %77, i32* %11, align 4, !dbg !5197, !tbaa !827
  %78 = load i32, i32* %12, align 4, !dbg !5198, !tbaa !827
  call arm_aapcscc void %74(i8 zeroext 32, i8* %75, i32 %76, i32 %78), !dbg !5194
  br label %67, !dbg !5187, !llvm.loop !5199

79:                                               ; preds = %67
  br label %80, !dbg !5201

80:                                               ; preds = %79, %62
  %81 = load i32, i32* %11, align 4, !dbg !5202, !tbaa !827
  %82 = bitcast i32* %17 to i8*, !dbg !5203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #4, !dbg !5203
  ret i32 %81, !dbg !5204
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i1 zeroext, i32, i32, i32, i32) #0 !dbg !5205 {
  %12 = alloca void (i8, i8*, i32, i32)*, align 4
  %13 = alloca i8*, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store void (i8, i8*, i32, i32)* %0, void (i8, i8*, i32, i32)** %12, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata void (i8, i8*, i32, i32)** %12, metadata !5209, metadata !DIExpression()), !dbg !5220
  store i8* %1, i8** %13, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %13, metadata !5210, metadata !DIExpression()), !dbg !5221
  store i32 %2, i32* %14, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %14, metadata !5211, metadata !DIExpression()), !dbg !5222
  store i32 %3, i32* %15, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %15, metadata !5212, metadata !DIExpression()), !dbg !5223
  store i8* %4, i8** %16, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %16, metadata !5213, metadata !DIExpression()), !dbg !5224
  store i32 %5, i32* %17, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %17, metadata !5214, metadata !DIExpression()), !dbg !5225
  %23 = zext i1 %6 to i8
  store i8 %23, i8* %18, align 1, !tbaa !4185
  call void @llvm.dbg.declare(metadata i8* %18, metadata !5215, metadata !DIExpression()), !dbg !5226
  store i32 %7, i32* %19, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %19, metadata !5216, metadata !DIExpression()), !dbg !5227
  store i32 %8, i32* %20, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %20, metadata !5217, metadata !DIExpression()), !dbg !5228
  store i32 %9, i32* %21, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %21, metadata !5218, metadata !DIExpression()), !dbg !5229
  store i32 %10, i32* %22, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %22, metadata !5219, metadata !DIExpression()), !dbg !5230
  %24 = load i32, i32* %22, align 4, !dbg !5231, !tbaa !827
  %25 = and i32 %24, 2, !dbg !5233
  %26 = icmp ne i32 %25, 0, !dbg !5233
  br i1 %26, label %79, label %27, !dbg !5234

27:                                               ; preds = %11
  %28 = load i32, i32* %21, align 4, !dbg !5235, !tbaa !827
  %29 = icmp ne i32 %28, 0, !dbg !5235
  br i1 %29, label %30, label %44, !dbg !5238

30:                                               ; preds = %27
  %31 = load i32, i32* %22, align 4, !dbg !5239, !tbaa !827
  %32 = and i32 %31, 1, !dbg !5240
  %33 = icmp ne i32 %32, 0, !dbg !5240
  br i1 %33, label %34, label %44, !dbg !5241

34:                                               ; preds = %30
  %35 = load i8, i8* %18, align 1, !dbg !5242, !tbaa !4185, !range !4368
  %36 = trunc i8 %35 to i1, !dbg !5242
  br i1 %36, label %41, label %37, !dbg !5243

37:                                               ; preds = %34
  %38 = load i32, i32* %22, align 4, !dbg !5244, !tbaa !827
  %39 = and i32 %38, 12, !dbg !5245
  %40 = icmp ne i32 %39, 0, !dbg !5245
  br i1 %40, label %41, label %44, !dbg !5246

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %21, align 4, !dbg !5247, !tbaa !827
  %43 = add i32 %42, -1, !dbg !5247
  store i32 %43, i32* %21, align 4, !dbg !5247, !tbaa !827
  br label %44, !dbg !5249

44:                                               ; preds = %41, %37, %30, %27
  br label %45, !dbg !5250

45:                                               ; preds = %54, %44
  %46 = load i32, i32* %17, align 4, !dbg !5251, !tbaa !827
  %47 = load i32, i32* %20, align 4, !dbg !5252, !tbaa !827
  %48 = icmp ult i32 %46, %47, !dbg !5253
  br i1 %48, label %49, label %52, !dbg !5254

49:                                               ; preds = %45
  %50 = load i32, i32* %17, align 4, !dbg !5255, !tbaa !827
  %51 = icmp ult i32 %50, 32, !dbg !5256
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ], !dbg !5257
  br i1 %53, label %54, label %59, !dbg !5250

54:                                               ; preds = %52
  %55 = load i8*, i8** %16, align 4, !dbg !5258, !tbaa !292
  %56 = load i32, i32* %17, align 4, !dbg !5260, !tbaa !827
  %57 = add i32 %56, 1, !dbg !5260
  store i32 %57, i32* %17, align 4, !dbg !5260, !tbaa !827
  %58 = getelementptr inbounds i8, i8* %55, i32 %56, !dbg !5258
  store i8 48, i8* %58, align 1, !dbg !5261, !tbaa !312
  br label %45, !dbg !5250, !llvm.loop !5262

59:                                               ; preds = %52
  br label %60, !dbg !5264

60:                                               ; preds = %73, %59
  %61 = load i32, i32* %22, align 4, !dbg !5265, !tbaa !827
  %62 = and i32 %61, 1, !dbg !5266
  %63 = icmp ne i32 %62, 0, !dbg !5266
  br i1 %63, label %64, label %71, !dbg !5267

64:                                               ; preds = %60
  %65 = load i32, i32* %17, align 4, !dbg !5268, !tbaa !827
  %66 = load i32, i32* %21, align 4, !dbg !5269, !tbaa !827
  %67 = icmp ult i32 %65, %66, !dbg !5270
  br i1 %67, label %68, label %71, !dbg !5271

68:                                               ; preds = %64
  %69 = load i32, i32* %17, align 4, !dbg !5272, !tbaa !827
  %70 = icmp ult i32 %69, 32, !dbg !5273
  br label %71

71:                                               ; preds = %68, %64, %60
  %72 = phi i1 [ false, %64 ], [ false, %60 ], [ %70, %68 ], !dbg !5257
  br i1 %72, label %73, label %78, !dbg !5264

73:                                               ; preds = %71
  %74 = load i8*, i8** %16, align 4, !dbg !5274, !tbaa !292
  %75 = load i32, i32* %17, align 4, !dbg !5276, !tbaa !827
  %76 = add i32 %75, 1, !dbg !5276
  store i32 %76, i32* %17, align 4, !dbg !5276, !tbaa !827
  %77 = getelementptr inbounds i8, i8* %74, i32 %75, !dbg !5274
  store i8 48, i8* %77, align 1, !dbg !5277, !tbaa !312
  br label %60, !dbg !5264, !llvm.loop !5278

78:                                               ; preds = %71
  br label %79, !dbg !5280

79:                                               ; preds = %78, %11
  %80 = load i32, i32* %22, align 4, !dbg !5281, !tbaa !827
  %81 = and i32 %80, 16, !dbg !5283
  %82 = icmp ne i32 %81, 0, !dbg !5283
  br i1 %82, label %83, label %162, !dbg !5284

83:                                               ; preds = %79
  %84 = load i32, i32* %22, align 4, !dbg !5285, !tbaa !827
  %85 = and i32 %84, 1024, !dbg !5288
  %86 = icmp ne i32 %85, 0, !dbg !5288
  br i1 %86, label %110, label %87, !dbg !5289

87:                                               ; preds = %83
  %88 = load i32, i32* %17, align 4, !dbg !5290, !tbaa !827
  %89 = icmp ne i32 %88, 0, !dbg !5290
  br i1 %89, label %90, label %110, !dbg !5291

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4, !dbg !5292, !tbaa !827
  %92 = load i32, i32* %20, align 4, !dbg !5293, !tbaa !827
  %93 = icmp eq i32 %91, %92, !dbg !5294
  br i1 %93, label %98, label %94, !dbg !5295

94:                                               ; preds = %90
  %95 = load i32, i32* %17, align 4, !dbg !5296, !tbaa !827
  %96 = load i32, i32* %21, align 4, !dbg !5297, !tbaa !827
  %97 = icmp eq i32 %95, %96, !dbg !5298
  br i1 %97, label %98, label %110, !dbg !5299

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %17, align 4, !dbg !5300, !tbaa !827
  %100 = add i32 %99, -1, !dbg !5300
  store i32 %100, i32* %17, align 4, !dbg !5300, !tbaa !827
  %101 = load i32, i32* %17, align 4, !dbg !5302, !tbaa !827
  %102 = icmp ne i32 %101, 0, !dbg !5302
  br i1 %102, label %103, label %109, !dbg !5304

103:                                              ; preds = %98
  %104 = load i32, i32* %19, align 4, !dbg !5305, !tbaa !827
  %105 = icmp eq i32 %104, 16, !dbg !5306
  br i1 %105, label %106, label %109, !dbg !5307

106:                                              ; preds = %103
  %107 = load i32, i32* %17, align 4, !dbg !5308, !tbaa !827
  %108 = add i32 %107, -1, !dbg !5308
  store i32 %108, i32* %17, align 4, !dbg !5308, !tbaa !827
  br label %109, !dbg !5310

109:                                              ; preds = %106, %103, %98
  br label %110, !dbg !5311

110:                                              ; preds = %109, %94, %87, %83
  %111 = load i32, i32* %19, align 4, !dbg !5312, !tbaa !827
  %112 = icmp eq i32 %111, 16, !dbg !5314
  br i1 %112, label %113, label %125, !dbg !5315

113:                                              ; preds = %110
  %114 = load i32, i32* %22, align 4, !dbg !5316, !tbaa !827
  %115 = and i32 %114, 32, !dbg !5317
  %116 = icmp ne i32 %115, 0, !dbg !5317
  br i1 %116, label %125, label %117, !dbg !5318

117:                                              ; preds = %113
  %118 = load i32, i32* %17, align 4, !dbg !5319, !tbaa !827
  %119 = icmp ult i32 %118, 32, !dbg !5320
  br i1 %119, label %120, label %125, !dbg !5321

120:                                              ; preds = %117
  %121 = load i8*, i8** %16, align 4, !dbg !5322, !tbaa !292
  %122 = load i32, i32* %17, align 4, !dbg !5324, !tbaa !827
  %123 = add i32 %122, 1, !dbg !5324
  store i32 %123, i32* %17, align 4, !dbg !5324, !tbaa !827
  %124 = getelementptr inbounds i8, i8* %121, i32 %122, !dbg !5322
  store i8 120, i8* %124, align 1, !dbg !5325, !tbaa !312
  br label %153, !dbg !5326

125:                                              ; preds = %117, %113, %110
  %126 = load i32, i32* %19, align 4, !dbg !5327, !tbaa !827
  %127 = icmp eq i32 %126, 16, !dbg !5329
  br i1 %127, label %128, label %140, !dbg !5330

128:                                              ; preds = %125
  %129 = load i32, i32* %22, align 4, !dbg !5331, !tbaa !827
  %130 = and i32 %129, 32, !dbg !5332
  %131 = icmp ne i32 %130, 0, !dbg !5332
  br i1 %131, label %132, label %140, !dbg !5333

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4, !dbg !5334, !tbaa !827
  %134 = icmp ult i32 %133, 32, !dbg !5335
  br i1 %134, label %135, label %140, !dbg !5336

135:                                              ; preds = %132
  %136 = load i8*, i8** %16, align 4, !dbg !5337, !tbaa !292
  %137 = load i32, i32* %17, align 4, !dbg !5339, !tbaa !827
  %138 = add i32 %137, 1, !dbg !5339
  store i32 %138, i32* %17, align 4, !dbg !5339, !tbaa !827
  %139 = getelementptr inbounds i8, i8* %136, i32 %137, !dbg !5337
  store i8 88, i8* %139, align 1, !dbg !5340, !tbaa !312
  br label %152, !dbg !5341

140:                                              ; preds = %132, %128, %125
  %141 = load i32, i32* %19, align 4, !dbg !5342, !tbaa !827
  %142 = icmp eq i32 %141, 2, !dbg !5344
  br i1 %142, label %143, label %151, !dbg !5345

143:                                              ; preds = %140
  %144 = load i32, i32* %17, align 4, !dbg !5346, !tbaa !827
  %145 = icmp ult i32 %144, 32, !dbg !5347
  br i1 %145, label %146, label %151, !dbg !5348

146:                                              ; preds = %143
  %147 = load i8*, i8** %16, align 4, !dbg !5349, !tbaa !292
  %148 = load i32, i32* %17, align 4, !dbg !5351, !tbaa !827
  %149 = add i32 %148, 1, !dbg !5351
  store i32 %149, i32* %17, align 4, !dbg !5351, !tbaa !827
  %150 = getelementptr inbounds i8, i8* %147, i32 %148, !dbg !5349
  store i8 98, i8* %150, align 1, !dbg !5352, !tbaa !312
  br label %151, !dbg !5353

151:                                              ; preds = %146, %143, %140
  br label %152

152:                                              ; preds = %151, %135
  br label %153

153:                                              ; preds = %152, %120
  %154 = load i32, i32* %17, align 4, !dbg !5354, !tbaa !827
  %155 = icmp ult i32 %154, 32, !dbg !5356
  br i1 %155, label %156, label %161, !dbg !5357

156:                                              ; preds = %153
  %157 = load i8*, i8** %16, align 4, !dbg !5358, !tbaa !292
  %158 = load i32, i32* %17, align 4, !dbg !5360, !tbaa !827
  %159 = add i32 %158, 1, !dbg !5360
  store i32 %159, i32* %17, align 4, !dbg !5360, !tbaa !827
  %160 = getelementptr inbounds i8, i8* %157, i32 %158, !dbg !5358
  store i8 48, i8* %160, align 1, !dbg !5361, !tbaa !312
  br label %161, !dbg !5362

161:                                              ; preds = %156, %153
  br label %162, !dbg !5363

162:                                              ; preds = %161, %79
  %163 = load i32, i32* %17, align 4, !dbg !5364, !tbaa !827
  %164 = icmp ult i32 %163, 32, !dbg !5366
  br i1 %164, label %165, label %194, !dbg !5367

165:                                              ; preds = %162
  %166 = load i8, i8* %18, align 1, !dbg !5368, !tbaa !4185, !range !4368
  %167 = trunc i8 %166 to i1, !dbg !5368
  br i1 %167, label %168, label %173, !dbg !5371

168:                                              ; preds = %165
  %169 = load i8*, i8** %16, align 4, !dbg !5372, !tbaa !292
  %170 = load i32, i32* %17, align 4, !dbg !5374, !tbaa !827
  %171 = add i32 %170, 1, !dbg !5374
  store i32 %171, i32* %17, align 4, !dbg !5374, !tbaa !827
  %172 = getelementptr inbounds i8, i8* %169, i32 %170, !dbg !5372
  store i8 45, i8* %172, align 1, !dbg !5375, !tbaa !312
  br label %193, !dbg !5376

173:                                              ; preds = %165
  %174 = load i32, i32* %22, align 4, !dbg !5377, !tbaa !827
  %175 = and i32 %174, 4, !dbg !5379
  %176 = icmp ne i32 %175, 0, !dbg !5379
  br i1 %176, label %177, label %182, !dbg !5380

177:                                              ; preds = %173
  %178 = load i8*, i8** %16, align 4, !dbg !5381, !tbaa !292
  %179 = load i32, i32* %17, align 4, !dbg !5383, !tbaa !827
  %180 = add i32 %179, 1, !dbg !5383
  store i32 %180, i32* %17, align 4, !dbg !5383, !tbaa !827
  %181 = getelementptr inbounds i8, i8* %178, i32 %179, !dbg !5381
  store i8 43, i8* %181, align 1, !dbg !5384, !tbaa !312
  br label %192, !dbg !5385

182:                                              ; preds = %173
  %183 = load i32, i32* %22, align 4, !dbg !5386, !tbaa !827
  %184 = and i32 %183, 8, !dbg !5388
  %185 = icmp ne i32 %184, 0, !dbg !5388
  br i1 %185, label %186, label %191, !dbg !5389

186:                                              ; preds = %182
  %187 = load i8*, i8** %16, align 4, !dbg !5390, !tbaa !292
  %188 = load i32, i32* %17, align 4, !dbg !5392, !tbaa !827
  %189 = add i32 %188, 1, !dbg !5392
  store i32 %189, i32* %17, align 4, !dbg !5392, !tbaa !827
  %190 = getelementptr inbounds i8, i8* %187, i32 %188, !dbg !5390
  store i8 32, i8* %190, align 1, !dbg !5393, !tbaa !312
  br label %191, !dbg !5394

191:                                              ; preds = %186, %182
  br label %192

192:                                              ; preds = %191, %177
  br label %193

193:                                              ; preds = %192, %168
  br label %194, !dbg !5395

194:                                              ; preds = %193, %162
  %195 = load void (i8, i8*, i32, i32)*, void (i8, i8*, i32, i32)** %12, align 4, !dbg !5396, !tbaa !292
  %196 = load i8*, i8** %13, align 4, !dbg !5397, !tbaa !292
  %197 = load i32, i32* %14, align 4, !dbg !5398, !tbaa !827
  %198 = load i32, i32* %15, align 4, !dbg !5399, !tbaa !827
  %199 = load i8*, i8** %16, align 4, !dbg !5400, !tbaa !292
  %200 = load i32, i32* %17, align 4, !dbg !5401, !tbaa !827
  %201 = load i32, i32* %21, align 4, !dbg !5402, !tbaa !827
  %202 = load i32, i32* %22, align 4, !dbg !5403, !tbaa !827
  %203 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %195, i8* %196, i32 %197, i32 %198, i8* %199, i32 %200, i32 %201, i32 %202), !dbg !5404
  ret i32 %203, !dbg !5405
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @sprintf_(i8*, i8*, ...) #0 !dbg !5406 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5410, metadata !DIExpression()), !dbg !5414
  store i8* %1, i8** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5411, metadata !DIExpression()), !dbg !5415
  %7 = bitcast %struct.__va_list* %5 to i8*, !dbg !5416
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !5416
  call void @llvm.dbg.declare(metadata %struct.__va_list* %5, metadata !5412, metadata !DIExpression()), !dbg !5417
  %8 = bitcast %struct.__va_list* %5 to i8*, !dbg !5418
  call void @llvm.va_start(i8* %8), !dbg !5418
  %9 = bitcast i32* %6 to i8*, !dbg !5419
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !5419
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5413, metadata !DIExpression()), !dbg !5420
  %10 = load i8*, i8** %3, align 4, !dbg !5421, !tbaa !292
  %11 = load i8*, i8** %4, align 4, !dbg !5422, !tbaa !292
  %12 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0, !dbg !5423
  %13 = bitcast i8** %12 to [1 x i32]*, !dbg !5423
  %14 = load [1 x i32], [1 x i32]* %13, align 4, !dbg !5423
  %15 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %10, i32 -1, i8* %11, [1 x i32] %14), !dbg !5423
  store i32 %15, i32* %6, align 4, !dbg !5420, !tbaa !827
  %16 = bitcast %struct.__va_list* %5 to i8*, !dbg !5424
  call void @llvm.va_end(i8* %16), !dbg !5424
  %17 = load i32, i32* %6, align 4, !dbg !5425, !tbaa !827
  %18 = bitcast i32* %6 to i8*, !dbg !5426
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !5426
  %19 = bitcast %struct.__va_list* %5 to i8*, !dbg !5426
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !5426
  ret i32 %17, !dbg !5427
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_buffer(i8 zeroext, i8*, i32, i32) #5 !dbg !5428 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1, !tbaa !312
  call void @llvm.dbg.declare(metadata i8* %5, metadata !5430, metadata !DIExpression()), !dbg !5434
  store i8* %1, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5431, metadata !DIExpression()), !dbg !5435
  store i32 %2, i32* %7, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5432, metadata !DIExpression()), !dbg !5436
  store i32 %3, i32* %8, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5433, metadata !DIExpression()), !dbg !5437
  %9 = load i32, i32* %7, align 4, !dbg !5438, !tbaa !827
  %10 = load i32, i32* %8, align 4, !dbg !5440, !tbaa !827
  %11 = icmp ult i32 %9, %10, !dbg !5441
  br i1 %11, label %12, label %17, !dbg !5442

12:                                               ; preds = %4
  %13 = load i8, i8* %5, align 1, !dbg !5443, !tbaa !312
  %14 = load i8*, i8** %6, align 4, !dbg !5445, !tbaa !292
  %15 = load i32, i32* %7, align 4, !dbg !5446, !tbaa !827
  %16 = getelementptr inbounds i8, i8* %14, i32 %15, !dbg !5447
  store i8 %13, i8* %16, align 1, !dbg !5448, !tbaa !312
  br label %17, !dbg !5449

17:                                               ; preds = %12, %4
  ret void, !dbg !5450
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @snprintf_(i8*, i32, i8*, ...) #0 !dbg !5451 {
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca %struct.__va_list, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5455, metadata !DIExpression()), !dbg !5460
  store i32 %1, i32* %5, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5456, metadata !DIExpression()), !dbg !5461
  store i8* %2, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5457, metadata !DIExpression()), !dbg !5462
  %9 = bitcast %struct.__va_list* %7 to i8*, !dbg !5463
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !5463
  call void @llvm.dbg.declare(metadata %struct.__va_list* %7, metadata !5458, metadata !DIExpression()), !dbg !5464
  %10 = bitcast %struct.__va_list* %7 to i8*, !dbg !5465
  call void @llvm.va_start(i8* %10), !dbg !5465
  %11 = bitcast i32* %8 to i8*, !dbg !5466
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !5466
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5459, metadata !DIExpression()), !dbg !5467
  %12 = load i8*, i8** %4, align 4, !dbg !5468, !tbaa !292
  %13 = load i32, i32* %5, align 4, !dbg !5469, !tbaa !827
  %14 = load i8*, i8** %6, align 4, !dbg !5470, !tbaa !292
  %15 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %7, i32 0, i32 0, !dbg !5471
  %16 = bitcast i8** %15 to [1 x i32]*, !dbg !5471
  %17 = load [1 x i32], [1 x i32]* %16, align 4, !dbg !5471
  %18 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %12, i32 %13, i8* %14, [1 x i32] %17), !dbg !5471
  store i32 %18, i32* %8, align 4, !dbg !5467, !tbaa !827
  %19 = bitcast %struct.__va_list* %7 to i8*, !dbg !5472
  call void @llvm.va_end(i8* %19), !dbg !5472
  %20 = load i32, i32* %8, align 4, !dbg !5473, !tbaa !827
  %21 = bitcast i32* %8 to i8*, !dbg !5474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !5474
  %22 = bitcast %struct.__va_list* %7 to i8*, !dbg !5474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !5474
  ret i32 %20, !dbg !5475
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vprintf_(i8*, [1 x i32]) #0 !dbg !5476 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca i8*, align 4
  %5 = alloca [1 x i8], align 1
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %7 = bitcast i8** %6 to [1 x i32]*
  store [1 x i32] %1, [1 x i32]* %7, align 4
  store i8* %0, i8** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5480, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.declare(metadata %struct.__va_list* %3, metadata !5481, metadata !DIExpression()), !dbg !5484
  %8 = bitcast [1 x i8]* %5 to i8*, !dbg !5485
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %8) #4, !dbg !5485
  call void @llvm.dbg.declare(metadata [1 x i8]* %5, metadata !5482, metadata !DIExpression()), !dbg !5486
  %9 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i32 0, i32 0, !dbg !5487
  %10 = load i8*, i8** %4, align 4, !dbg !5488, !tbaa !292
  %11 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0, !dbg !5489
  %12 = bitcast i8** %11 to [1 x i32]*, !dbg !5489
  %13 = load [1 x i32], [1 x i32]* %12, align 4, !dbg !5489
  %14 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %9, i32 -1, i8* %10, [1 x i32] %13), !dbg !5489
  %15 = bitcast [1 x i8]* %5 to i8*, !dbg !5490
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %15) #4, !dbg !5490
  ret i32 %14, !dbg !5491
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vsnprintf_(i8*, i32, i8*, [1 x i32]) #0 !dbg !5492 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0
  %10 = bitcast i8** %9 to [1 x i32]*
  store [1 x i32] %3, [1 x i32]* %10, align 4
  store i8* %0, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5496, metadata !DIExpression()), !dbg !5500
  store i32 %1, i32* %7, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5497, metadata !DIExpression()), !dbg !5501
  store i8* %2, i8** %8, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5498, metadata !DIExpression()), !dbg !5502
  call void @llvm.dbg.declare(metadata %struct.__va_list* %5, metadata !5499, metadata !DIExpression()), !dbg !5503
  %11 = load i8*, i8** %6, align 4, !dbg !5504, !tbaa !292
  %12 = load i32, i32* %7, align 4, !dbg !5505, !tbaa !827
  %13 = load i8*, i8** %8, align 4, !dbg !5506, !tbaa !292
  %14 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0, !dbg !5507
  %15 = bitcast i8** %14 to [1 x i32]*, !dbg !5507
  %16 = load [1 x i32], [1 x i32]* %15, align 4, !dbg !5507
  %17 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %11, i32 %12, i8* %13, [1 x i32] %16), !dbg !5507
  ret i32 %17, !dbg !5508
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @fctprintf(void (i8, i8*)*, i8*, i8*, ...) #0 !dbg !5509 {
  %4 = alloca void (i8, i8*)*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca %struct.__va_list, align 4
  %8 = alloca %struct.out_fct_wrap_type, align 4
  %9 = alloca i32, align 4
  store void (i8, i8*)* %0, void (i8, i8*)** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata void (i8, i8*)** %4, metadata !5513, metadata !DIExpression()), !dbg !5520
  store i8* %1, i8** %5, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5514, metadata !DIExpression()), !dbg !5521
  store i8* %2, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5515, metadata !DIExpression()), !dbg !5522
  %10 = bitcast %struct.__va_list* %7 to i8*, !dbg !5523
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !5523
  call void @llvm.dbg.declare(metadata %struct.__va_list* %7, metadata !5516, metadata !DIExpression()), !dbg !5524
  %11 = bitcast %struct.__va_list* %7 to i8*, !dbg !5525
  call void @llvm.va_start(i8* %11), !dbg !5525
  %12 = bitcast %struct.out_fct_wrap_type* %8 to i8*, !dbg !5526
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #4, !dbg !5526
  call void @llvm.dbg.declare(metadata %struct.out_fct_wrap_type* %8, metadata !5517, metadata !DIExpression()), !dbg !5527
  %13 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %8, i32 0, i32 0, !dbg !5528
  %14 = load void (i8, i8*)*, void (i8, i8*)** %4, align 4, !dbg !5529, !tbaa !292
  store void (i8, i8*)* %14, void (i8, i8*)** %13, align 4, !dbg !5528, !tbaa !5530
  %15 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %8, i32 0, i32 1, !dbg !5528
  %16 = load i8*, i8** %5, align 4, !dbg !5532, !tbaa !292
  store i8* %16, i8** %15, align 4, !dbg !5528, !tbaa !5533
  %17 = bitcast i32* %9 to i8*, !dbg !5534
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !5534
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5519, metadata !DIExpression()), !dbg !5535
  %18 = ptrtoint %struct.out_fct_wrap_type* %8 to i32, !dbg !5536
  %19 = inttoptr i32 %18 to i8*, !dbg !5537
  %20 = load i8*, i8** %6, align 4, !dbg !5538, !tbaa !292
  %21 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %7, i32 0, i32 0, !dbg !5539
  %22 = bitcast i8** %21 to [1 x i32]*, !dbg !5539
  %23 = load [1 x i32], [1 x i32]* %22, align 4, !dbg !5539
  %24 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_fct, i8* %19, i32 -1, i8* %20, [1 x i32] %23), !dbg !5539
  store i32 %24, i32* %9, align 4, !dbg !5535, !tbaa !827
  %25 = bitcast %struct.__va_list* %7 to i8*, !dbg !5540
  call void @llvm.va_end(i8* %25), !dbg !5540
  %26 = load i32, i32* %9, align 4, !dbg !5541, !tbaa !827
  %27 = bitcast i32* %9 to i8*, !dbg !5542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !5542
  %28 = bitcast %struct.out_fct_wrap_type* %8 to i8*, !dbg !5542
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #4, !dbg !5542
  %29 = bitcast %struct.__va_list* %7 to i8*, !dbg !5542
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !5542
  ret i32 %26, !dbg !5543
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_fct(i8 zeroext, i8*, i32, i32) #5 !dbg !5544 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1, !tbaa !312
  call void @llvm.dbg.declare(metadata i8* %5, metadata !5546, metadata !DIExpression()), !dbg !5550
  store i8* %1, i8** %6, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5547, metadata !DIExpression()), !dbg !5551
  store i32 %2, i32* %7, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5548, metadata !DIExpression()), !dbg !5552
  store i32 %3, i32* %8, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5549, metadata !DIExpression()), !dbg !5553
  %9 = load i32, i32* %7, align 4, !dbg !5554, !tbaa !827
  %10 = load i32, i32* %8, align 4, !dbg !5555, !tbaa !827
  %11 = load i8, i8* %5, align 1, !dbg !5556, !tbaa !312
  %12 = icmp ne i8 %11, 0, !dbg !5556
  br i1 %12, label %13, label %23, !dbg !5558

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 4, !dbg !5559, !tbaa !292
  %15 = bitcast i8* %14 to %struct.out_fct_wrap_type*, !dbg !5561
  %16 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %15, i32 0, i32 0, !dbg !5562
  %17 = load void (i8, i8*)*, void (i8, i8*)** %16, align 4, !dbg !5562, !tbaa !5530
  %18 = load i8, i8* %5, align 1, !dbg !5563, !tbaa !312
  %19 = load i8*, i8** %6, align 4, !dbg !5564, !tbaa !292
  %20 = bitcast i8* %19 to %struct.out_fct_wrap_type*, !dbg !5565
  %21 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %20, i32 0, i32 1, !dbg !5566
  %22 = load i8*, i8** %21, align 4, !dbg !5566, !tbaa !5533
  call arm_aapcscc void %17(i8 zeroext %18, i8* %22), !dbg !5567
  br label %23, !dbg !5568

23:                                               ; preds = %13, %4
  ret void, !dbg !5569
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @putc(i32, i8*) #3 !dbg !5570 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4, !tbaa !827
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5575, metadata !DIExpression()), !dbg !5577
  store i8* %1, i8** %4, align 4, !tbaa !292
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5576, metadata !DIExpression()), !dbg !5578
  %5 = load i8*, i8** %4, align 4, !dbg !5579, !tbaa !292
  %6 = load i32, i32* %3, align 4, !dbg !5580, !tbaa !827
  ret i32 %6, !dbg !5581
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_putchar(i8 zeroext) #3 !dbg !5582 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !312
  call void @llvm.dbg.declare(metadata i8* %2, metadata !5586, metadata !DIExpression()), !dbg !5587
  %3 = load i8, i8* %2, align 1, !dbg !5588, !tbaa !312
  %4 = zext i8 %3 to i32, !dbg !5588
  %5 = call arm_aapcscc i32 @putc(i32 %4, i8* %2), !dbg !5589
  ret void, !dbg !5590
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #6 !dbg !5591 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #4, !dbg !5592, !srcloc !5593
  call void asm sideeffect "    ldr    sp, [r1]", ""() #4, !dbg !5594, !srcloc !5595
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #4, !dbg !5596, !srcloc !5597
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #4, !dbg !5598, !srcloc !5599
  call void asm sideeffect "    bl   main\0A", ""() #4, !dbg !5600, !srcloc !5601
  call void asm sideeffect "    bkpt     ", ""() #4, !dbg !5602, !srcloc !5603
  unreachable, !dbg !5604
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @NMI_Handler() #0 !dbg !5605 {
  br label %1, !dbg !5606

1:                                                ; preds = %0, %1
  br label %1, !dbg !5606, !llvm.loop !5607
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @HardFault_Handler() #0 !dbg !5609 {
  br label %1, !dbg !5610

1:                                                ; preds = %0, %1
  br label %1, !dbg !5610, !llvm.loop !5611
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 !dbg !5613 {
  br label %1, !dbg !5614

1:                                                ; preds = %0, %1
  br label %1, !dbg !5614, !llvm.loop !5615
}

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
!292 = !{!293, !293, i64 0}
!293 = !{!"any pointer", !294, i64 0}
!294 = !{!"omnipotent char", !295, i64 0}
!295 = !{!"Simple C/C++ TBAA"}
!296 = !DILocation(line: 70, column: 19, scope: !241)
!297 = !DILocation(line: 70, column: 40, scope: !241)
!298 = !DILocation(line: 72, column: 5, scope: !241)
!299 = !DILocation(line: 72, column: 12, scope: !241)
!300 = !DILocation(line: 72, column: 20, scope: !241)
!301 = !DILocation(line: 72, column: 19, scope: !241)
!302 = !{!303, !303, i64 0}
!303 = !{!"short", !294, i64 0}
!304 = !DILocation(line: 73, column: 5, scope: !241)
!305 = !DILocation(line: 73, column: 12, scope: !241)
!306 = !DILocation(line: 74, column: 5, scope: !241)
!307 = !DILocation(line: 74, column: 12, scope: !241)
!308 = !DILocation(line: 75, column: 12, scope: !241)
!309 = !DILocation(line: 75, column: 17, scope: !241)
!310 = !DILocation(line: 76, column: 11, scope: !241)
!311 = !DILocation(line: 75, column: 11, scope: !241)
!312 = !{!294, !294, i64 0}
!313 = !DILocation(line: 77, column: 9, scope: !290)
!314 = !DILocation(line: 77, column: 9, scope: !241)
!315 = !DILocation(line: 78, column: 17, scope: !290)
!316 = !DILocation(line: 78, column: 22, scope: !290)
!317 = !DILocation(line: 78, column: 16, scope: !290)
!318 = !DILocation(line: 78, column: 9, scope: !290)
!319 = !DILocation(line: 81, column: 9, scope: !289)
!320 = !DILocation(line: 81, column: 16, scope: !289)
!321 = !DILocation(line: 81, column: 23, scope: !289)
!322 = !DILocation(line: 81, column: 28, scope: !289)
!323 = !DILocation(line: 82, column: 9, scope: !289)
!324 = !DILocation(line: 82, column: 16, scope: !289)
!325 = !DILocation(line: 83, column: 17, scope: !289)
!326 = !DILocation(line: 83, column: 22, scope: !289)
!327 = !DILocation(line: 84, column: 16, scope: !289)
!328 = !DILocation(line: 83, column: 15, scope: !289)
!329 = !DILocation(line: 85, column: 18, scope: !289)
!330 = !DILocation(line: 85, column: 24, scope: !289)
!331 = !DILocation(line: 85, column: 15, scope: !289)
!332 = !DILocation(line: 86, column: 17, scope: !289)
!333 = !DILocation(line: 86, column: 9, scope: !289)
!334 = !DILocation(line: 89, column: 21, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !242, line: 89, column: 21)
!336 = distinct !DILexicalBlock(scope: !289, file: !242, line: 87, column: 9)
!337 = !DILocation(line: 89, column: 27, scope: !335)
!338 = !DILocation(line: 89, column: 21, scope: !336)
!339 = !DILocation(line: 90, column: 27, scope: !335)
!340 = !DILocation(line: 90, column: 21, scope: !335)
!341 = !DILocation(line: 91, column: 43, scope: !336)
!342 = !DILocation(line: 91, column: 48, scope: !336)
!343 = !{!344, !345, i64 24}
!344 = !{!"RESULTS_S", !303, i64 0, !303, i64 2, !303, i64 4, !294, i64 8, !345, i64 24, !345, i64 28, !345, i64 32, !293, i64 36, !346, i64 40, !303, i64 56, !303, i64 58, !303, i64 60, !303, i64 62, !303, i64 64, !347, i64 66}
!345 = !{!"int", !294, i64 0}
!346 = !{!"MAT_PARAMS_S", !345, i64 0, !293, i64 4, !293, i64 8, !293, i64 12}
!347 = !{!"CORE_PORTABLE_S", !294, i64 0}
!348 = !DILocation(line: 92, column: 43, scope: !336)
!349 = !DILocation(line: 92, column: 48, scope: !336)
!350 = !DILocation(line: 93, column: 43, scope: !336)
!351 = !DILocation(line: 93, column: 48, scope: !336)
!352 = !{!344, !303, i64 0}
!353 = !DILocation(line: 94, column: 43, scope: !336)
!354 = !DILocation(line: 94, column: 48, scope: !336)
!355 = !{!344, !303, i64 2}
!356 = !DILocation(line: 95, column: 43, scope: !336)
!357 = !DILocation(line: 96, column: 43, scope: !336)
!358 = !DILocation(line: 96, column: 48, scope: !336)
!359 = !{!344, !303, i64 56}
!360 = !DILocation(line: 91, column: 26, scope: !336)
!361 = !DILocation(line: 91, column: 24, scope: !336)
!362 = !DILocation(line: 97, column: 21, scope: !363)
!363 = distinct !DILexicalBlock(scope: !336, file: !242, line: 97, column: 21)
!364 = !DILocation(line: 97, column: 26, scope: !363)
!365 = !{!344, !303, i64 62}
!366 = !DILocation(line: 97, column: 35, scope: !363)
!367 = !DILocation(line: 97, column: 21, scope: !336)
!368 = !DILocation(line: 98, column: 37, scope: !363)
!369 = !DILocation(line: 98, column: 21, scope: !363)
!370 = !DILocation(line: 98, column: 26, scope: !363)
!371 = !DILocation(line: 98, column: 35, scope: !363)
!372 = !DILocation(line: 99, column: 17, scope: !336)
!373 = !DILocation(line: 101, column: 46, scope: !336)
!374 = !DILocation(line: 101, column: 51, scope: !336)
!375 = !DILocation(line: 101, column: 57, scope: !336)
!376 = !DILocation(line: 101, column: 64, scope: !336)
!377 = !DILocation(line: 101, column: 69, scope: !336)
!378 = !DILocation(line: 101, column: 26, scope: !336)
!379 = !DILocation(line: 101, column: 24, scope: !336)
!380 = !DILocation(line: 102, column: 21, scope: !381)
!381 = distinct !DILexicalBlock(scope: !336, file: !242, line: 102, column: 21)
!382 = !DILocation(line: 102, column: 26, scope: !381)
!383 = !{!344, !303, i64 60}
!384 = !DILocation(line: 102, column: 36, scope: !381)
!385 = !DILocation(line: 102, column: 21, scope: !336)
!386 = !DILocation(line: 103, column: 38, scope: !381)
!387 = !DILocation(line: 103, column: 21, scope: !381)
!388 = !DILocation(line: 103, column: 26, scope: !381)
!389 = !DILocation(line: 103, column: 36, scope: !381)
!390 = !DILocation(line: 104, column: 17, scope: !336)
!391 = !DILocation(line: 106, column: 26, scope: !336)
!392 = !DILocation(line: 106, column: 24, scope: !336)
!393 = !DILocation(line: 107, column: 17, scope: !336)
!394 = !DILocation(line: 109, column: 27, scope: !289)
!395 = !DILocation(line: 109, column: 35, scope: !289)
!396 = !DILocation(line: 109, column: 40, scope: !289)
!397 = !DILocation(line: 109, column: 20, scope: !289)
!398 = !DILocation(line: 109, column: 9, scope: !289)
!399 = !DILocation(line: 109, column: 14, scope: !289)
!400 = !DILocation(line: 109, column: 18, scope: !289)
!401 = !DILocation(line: 110, column: 16, scope: !289)
!402 = !DILocation(line: 111, column: 19, scope: !289)
!403 = !DILocation(line: 111, column: 24, scope: !289)
!404 = !DILocation(line: 111, column: 34, scope: !289)
!405 = !DILocation(line: 111, column: 45, scope: !289)
!406 = !DILocation(line: 111, column: 43, scope: !289)
!407 = !DILocation(line: 111, column: 18, scope: !289)
!408 = !DILocation(line: 111, column: 10, scope: !289)
!409 = !DILocation(line: 111, column: 16, scope: !289)
!410 = !DILocation(line: 112, column: 16, scope: !289)
!411 = !DILocation(line: 112, column: 9, scope: !289)
!412 = !DILocation(line: 113, column: 5, scope: !290)
!413 = !DILocation(line: 114, column: 1, scope: !241)
!414 = distinct !DISubprogram(name: "cmp_complex", scope: !242, file: !242, line: 121, type: !415, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{!51, !221, !221, !246}
!417 = !{!418, !419, !420, !421, !422}
!418 = !DILocalVariable(name: "a", arg: 1, scope: !414, file: !242, line: 121, type: !221)
!419 = !DILocalVariable(name: "b", arg: 2, scope: !414, file: !242, line: 121, type: !221)
!420 = !DILocalVariable(name: "res", arg: 3, scope: !414, file: !242, line: 121, type: !246)
!421 = !DILocalVariable(name: "val1", scope: !414, file: !242, line: 123, type: !12)
!422 = !DILocalVariable(name: "val2", scope: !414, file: !242, line: 124, type: !12)
!423 = !DILocation(line: 121, column: 24, scope: !414)
!424 = !DILocation(line: 121, column: 38, scope: !414)
!425 = !DILocation(line: 121, column: 55, scope: !414)
!426 = !DILocation(line: 123, column: 5, scope: !414)
!427 = !DILocation(line: 123, column: 12, scope: !414)
!428 = !DILocation(line: 123, column: 31, scope: !414)
!429 = !DILocation(line: 123, column: 34, scope: !414)
!430 = !DILocation(line: 123, column: 43, scope: !414)
!431 = !DILocation(line: 123, column: 19, scope: !414)
!432 = !DILocation(line: 124, column: 5, scope: !414)
!433 = !DILocation(line: 124, column: 12, scope: !414)
!434 = !DILocation(line: 124, column: 31, scope: !414)
!435 = !DILocation(line: 124, column: 34, scope: !414)
!436 = !DILocation(line: 124, column: 43, scope: !414)
!437 = !DILocation(line: 124, column: 19, scope: !414)
!438 = !DILocation(line: 125, column: 12, scope: !414)
!439 = !DILocation(line: 125, column: 19, scope: !414)
!440 = !DILocation(line: 125, column: 17, scope: !414)
!441 = !DILocation(line: 126, column: 1, scope: !414)
!442 = !DILocation(line: 125, column: 5, scope: !414)
!443 = distinct !DISubprogram(name: "cmp_idx", scope: !242, file: !242, line: 134, type: !415, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !444)
!444 = !{!445, !446, !447}
!445 = !DILocalVariable(name: "a", arg: 1, scope: !443, file: !242, line: 134, type: !221)
!446 = !DILocalVariable(name: "b", arg: 2, scope: !443, file: !242, line: 134, type: !221)
!447 = !DILocalVariable(name: "res", arg: 3, scope: !443, file: !242, line: 134, type: !246)
!448 = !DILocation(line: 134, column: 20, scope: !443)
!449 = !DILocation(line: 134, column: 34, scope: !443)
!450 = !DILocation(line: 134, column: 51, scope: !443)
!451 = !DILocation(line: 136, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !443, file: !242, line: 136, column: 9)
!453 = !DILocation(line: 136, column: 13, scope: !452)
!454 = !DILocation(line: 136, column: 9, scope: !443)
!455 = !DILocation(line: 138, column: 22, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !242, line: 137, column: 5)
!457 = !DILocation(line: 138, column: 25, scope: !456)
!458 = !{!459, !303, i64 0}
!459 = !{!"list_data_s", !303, i64 0, !303, i64 2}
!460 = !DILocation(line: 138, column: 32, scope: !456)
!461 = !DILocation(line: 138, column: 55, scope: !456)
!462 = !DILocation(line: 138, column: 58, scope: !456)
!463 = !DILocation(line: 138, column: 65, scope: !456)
!464 = !DILocation(line: 138, column: 52, scope: !456)
!465 = !DILocation(line: 138, column: 42, scope: !456)
!466 = !DILocation(line: 138, column: 21, scope: !456)
!467 = !DILocation(line: 138, column: 9, scope: !456)
!468 = !DILocation(line: 138, column: 12, scope: !456)
!469 = !DILocation(line: 138, column: 19, scope: !456)
!470 = !DILocation(line: 139, column: 22, scope: !456)
!471 = !DILocation(line: 139, column: 25, scope: !456)
!472 = !DILocation(line: 139, column: 32, scope: !456)
!473 = !DILocation(line: 139, column: 55, scope: !456)
!474 = !DILocation(line: 139, column: 58, scope: !456)
!475 = !DILocation(line: 139, column: 65, scope: !456)
!476 = !DILocation(line: 139, column: 52, scope: !456)
!477 = !DILocation(line: 139, column: 42, scope: !456)
!478 = !DILocation(line: 139, column: 21, scope: !456)
!479 = !DILocation(line: 139, column: 9, scope: !456)
!480 = !DILocation(line: 139, column: 12, scope: !456)
!481 = !DILocation(line: 139, column: 19, scope: !456)
!482 = !DILocation(line: 140, column: 5, scope: !456)
!483 = !DILocation(line: 141, column: 12, scope: !443)
!484 = !DILocation(line: 141, column: 15, scope: !443)
!485 = !{!459, !303, i64 2}
!486 = !DILocation(line: 141, column: 21, scope: !443)
!487 = !DILocation(line: 141, column: 24, scope: !443)
!488 = !DILocation(line: 141, column: 19, scope: !443)
!489 = !DILocation(line: 141, column: 5, scope: !443)
!490 = distinct !DISubprogram(name: "copy_info", scope: !242, file: !242, line: 145, type: !491, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !221, !221}
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "to", arg: 1, scope: !490, file: !242, line: 145, type: !221)
!495 = !DILocalVariable(name: "from", arg: 2, scope: !490, file: !242, line: 145, type: !221)
!496 = !DILocation(line: 145, column: 22, scope: !490)
!497 = !DILocation(line: 145, column: 37, scope: !490)
!498 = !DILocation(line: 147, column: 18, scope: !490)
!499 = !DILocation(line: 147, column: 24, scope: !490)
!500 = !DILocation(line: 147, column: 5, scope: !490)
!501 = !DILocation(line: 147, column: 9, scope: !490)
!502 = !DILocation(line: 147, column: 16, scope: !490)
!503 = !DILocation(line: 148, column: 18, scope: !490)
!504 = !DILocation(line: 148, column: 24, scope: !490)
!505 = !DILocation(line: 148, column: 5, scope: !490)
!506 = !DILocation(line: 148, column: 9, scope: !490)
!507 = !DILocation(line: 148, column: 16, scope: !490)
!508 = !DILocation(line: 149, column: 1, scope: !490)
!509 = distinct !DISubprogram(name: "core_bench_list", scope: !242, file: !242, line: 159, type: !510, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!53, !246, !12}
!512 = !{!513, !514, !515, !516, !517, !518, !521, !522, !523, !524, !525, !526}
!513 = !DILocalVariable(name: "res", arg: 1, scope: !509, file: !242, line: 159, type: !246)
!514 = !DILocalVariable(name: "finder_idx", arg: 2, scope: !509, file: !242, line: 159, type: !12)
!515 = !DILocalVariable(name: "retval", scope: !509, file: !242, line: 161, type: !53)
!516 = !DILocalVariable(name: "found", scope: !509, file: !242, line: 162, type: !53)
!517 = !DILocalVariable(name: "missed", scope: !509, file: !242, line: 162, type: !53)
!518 = !DILocalVariable(name: "list", scope: !509, file: !242, line: 163, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head", file: !8, line: 101, baseType: !259)
!521 = !DILocalVariable(name: "find_num", scope: !509, file: !242, line: 164, type: !12)
!522 = !DILocalVariable(name: "this_find", scope: !509, file: !242, line: 165, type: !519)
!523 = !DILocalVariable(name: "finder", scope: !509, file: !242, line: 166, type: !519)
!524 = !DILocalVariable(name: "remover", scope: !509, file: !242, line: 166, type: !519)
!525 = !DILocalVariable(name: "info", scope: !509, file: !242, line: 167, type: !222)
!526 = !DILocalVariable(name: "i", scope: !509, file: !242, line: 168, type: !12)
!527 = !DILocation(line: 159, column: 31, scope: !509)
!528 = !DILocation(line: 159, column: 43, scope: !509)
!529 = !DILocation(line: 161, column: 5, scope: !509)
!530 = !DILocation(line: 161, column: 16, scope: !509)
!531 = !DILocation(line: 162, column: 5, scope: !509)
!532 = !DILocation(line: 162, column: 16, scope: !509)
!533 = !DILocation(line: 162, column: 27, scope: !509)
!534 = !DILocation(line: 163, column: 5, scope: !509)
!535 = !DILocation(line: 163, column: 16, scope: !509)
!536 = !DILocation(line: 163, column: 27, scope: !509)
!537 = !DILocation(line: 163, column: 32, scope: !509)
!538 = !{!344, !293, i64 36}
!539 = !DILocation(line: 164, column: 5, scope: !509)
!540 = !DILocation(line: 164, column: 16, scope: !509)
!541 = !DILocation(line: 164, column: 27, scope: !509)
!542 = !DILocation(line: 164, column: 32, scope: !509)
!543 = !{!344, !303, i64 4}
!544 = !DILocation(line: 165, column: 5, scope: !509)
!545 = !DILocation(line: 165, column: 16, scope: !509)
!546 = !DILocation(line: 166, column: 5, scope: !509)
!547 = !DILocation(line: 166, column: 16, scope: !509)
!548 = !DILocation(line: 166, column: 25, scope: !509)
!549 = !DILocation(line: 167, column: 5, scope: !509)
!550 = !DILocation(line: 167, column: 16, scope: !509)
!551 = !DILocation(line: 168, column: 5, scope: !509)
!552 = !DILocation(line: 168, column: 16, scope: !509)
!553 = !DILocation(line: 170, column: 16, scope: !509)
!554 = !DILocation(line: 170, column: 10, scope: !509)
!555 = !DILocation(line: 170, column: 14, scope: !509)
!556 = !DILocation(line: 173, column: 12, scope: !557)
!557 = distinct !DILexicalBlock(scope: !509, file: !242, line: 173, column: 5)
!558 = !DILocation(line: 173, column: 10, scope: !557)
!559 = !DILocation(line: 173, column: 17, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !242, line: 173, column: 5)
!561 = !DILocation(line: 173, column: 21, scope: !560)
!562 = !DILocation(line: 173, column: 19, scope: !560)
!563 = !DILocation(line: 173, column: 5, scope: !557)
!564 = !DILocation(line: 175, column: 24, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !242, line: 174, column: 5)
!566 = !DILocation(line: 175, column: 26, scope: !565)
!567 = !DILocation(line: 175, column: 23, scope: !565)
!568 = !DILocation(line: 175, column: 14, scope: !565)
!569 = !DILocation(line: 175, column: 21, scope: !565)
!570 = !DILocation(line: 176, column: 38, scope: !565)
!571 = !DILocation(line: 176, column: 23, scope: !565)
!572 = !DILocation(line: 176, column: 21, scope: !565)
!573 = !DILocation(line: 177, column: 41, scope: !565)
!574 = !DILocation(line: 177, column: 23, scope: !565)
!575 = !DILocation(line: 177, column: 21, scope: !565)
!576 = !DILocation(line: 178, column: 13, scope: !577)
!577 = distinct !DILexicalBlock(scope: !565, file: !242, line: 178, column: 13)
!578 = !DILocation(line: 178, column: 23, scope: !577)
!579 = !DILocation(line: 178, column: 13, scope: !565)
!580 = !DILocation(line: 180, column: 19, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !242, line: 179, column: 9)
!582 = !DILocation(line: 181, column: 24, scope: !581)
!583 = !DILocation(line: 181, column: 30, scope: !581)
!584 = !{!585, !293, i64 0}
!585 = !{!"list_head_s", !293, i64 0, !293, i64 4}
!586 = !DILocation(line: 181, column: 36, scope: !581)
!587 = !{!585, !293, i64 4}
!588 = !DILocation(line: 181, column: 42, scope: !581)
!589 = !DILocation(line: 181, column: 49, scope: !581)
!590 = !DILocation(line: 181, column: 55, scope: !581)
!591 = !DILocation(line: 181, column: 20, scope: !581)
!592 = !DILocation(line: 182, column: 9, scope: !581)
!593 = !DILocation(line: 185, column: 18, scope: !594)
!594 = distinct !DILexicalBlock(scope: !577, file: !242, line: 184, column: 9)
!595 = !DILocation(line: 186, column: 17, scope: !596)
!596 = distinct !DILexicalBlock(scope: !594, file: !242, line: 186, column: 17)
!597 = !DILocation(line: 186, column: 28, scope: !596)
!598 = !DILocation(line: 186, column: 34, scope: !596)
!599 = !DILocation(line: 186, column: 41, scope: !596)
!600 = !DILocation(line: 186, column: 17, scope: !594)
!601 = !DILocation(line: 187, column: 28, scope: !596)
!602 = !DILocation(line: 187, column: 39, scope: !596)
!603 = !DILocation(line: 187, column: 45, scope: !596)
!604 = !DILocation(line: 187, column: 52, scope: !596)
!605 = !DILocation(line: 187, column: 58, scope: !596)
!606 = !DILocation(line: 187, column: 24, scope: !596)
!607 = !DILocation(line: 187, column: 17, scope: !596)
!608 = !DILocation(line: 189, column: 17, scope: !609)
!609 = distinct !DILexicalBlock(scope: !594, file: !242, line: 189, column: 17)
!610 = !DILocation(line: 189, column: 28, scope: !609)
!611 = !DILocation(line: 189, column: 33, scope: !609)
!612 = !DILocation(line: 189, column: 17, scope: !594)
!613 = !DILocation(line: 191, column: 35, scope: !614)
!614 = distinct !DILexicalBlock(scope: !609, file: !242, line: 190, column: 13)
!615 = !DILocation(line: 191, column: 46, scope: !614)
!616 = !DILocation(line: 191, column: 33, scope: !614)
!617 = !DILocation(line: 192, column: 35, scope: !614)
!618 = !DILocation(line: 192, column: 43, scope: !614)
!619 = !DILocation(line: 192, column: 17, scope: !614)
!620 = !DILocation(line: 192, column: 28, scope: !614)
!621 = !DILocation(line: 192, column: 33, scope: !614)
!622 = !DILocation(line: 193, column: 35, scope: !614)
!623 = !DILocation(line: 193, column: 41, scope: !614)
!624 = !DILocation(line: 193, column: 17, scope: !614)
!625 = !DILocation(line: 193, column: 25, scope: !614)
!626 = !DILocation(line: 193, column: 33, scope: !614)
!627 = !DILocation(line: 194, column: 35, scope: !614)
!628 = !DILocation(line: 194, column: 17, scope: !614)
!629 = !DILocation(line: 194, column: 23, scope: !614)
!630 = !DILocation(line: 194, column: 33, scope: !614)
!631 = !DILocation(line: 195, column: 13, scope: !614)
!632 = !DILocation(line: 197, column: 18, scope: !633)
!633 = distinct !DILexicalBlock(scope: !565, file: !242, line: 197, column: 13)
!634 = !DILocation(line: 197, column: 13, scope: !633)
!635 = !DILocation(line: 197, column: 22, scope: !633)
!636 = !DILocation(line: 197, column: 13, scope: !565)
!637 = !DILocation(line: 198, column: 18, scope: !633)
!638 = !DILocation(line: 198, column: 21, scope: !633)
!639 = !DILocation(line: 198, column: 13, scope: !633)
!640 = !DILocation(line: 202, column: 5, scope: !565)
!641 = !DILocation(line: 173, column: 32, scope: !560)
!642 = !DILocation(line: 173, column: 5, scope: !560)
!643 = distinct !{!643, !563, !644}
!644 = !DILocation(line: 202, column: 5, scope: !557)
!645 = !DILocation(line: 203, column: 15, scope: !509)
!646 = !DILocation(line: 203, column: 21, scope: !509)
!647 = !DILocation(line: 203, column: 27, scope: !509)
!648 = !DILocation(line: 203, column: 25, scope: !509)
!649 = !DILocation(line: 203, column: 12, scope: !509)
!650 = !DILocation(line: 205, column: 9, scope: !651)
!651 = distinct !DILexicalBlock(scope: !509, file: !242, line: 205, column: 9)
!652 = !DILocation(line: 205, column: 20, scope: !651)
!653 = !DILocation(line: 205, column: 9, scope: !509)
!654 = !DILocation(line: 206, column: 36, scope: !651)
!655 = !DILocation(line: 206, column: 55, scope: !651)
!656 = !DILocation(line: 206, column: 16, scope: !651)
!657 = !DILocation(line: 206, column: 14, scope: !651)
!658 = !DILocation(line: 206, column: 9, scope: !651)
!659 = !DILocation(line: 207, column: 32, scope: !509)
!660 = !DILocation(line: 207, column: 38, scope: !509)
!661 = !DILocation(line: 207, column: 15, scope: !509)
!662 = !DILocation(line: 207, column: 13, scope: !509)
!663 = !DILocation(line: 210, column: 29, scope: !509)
!664 = !DILocation(line: 210, column: 14, scope: !509)
!665 = !DILocation(line: 210, column: 12, scope: !509)
!666 = !DILocation(line: 211, column: 10, scope: !667)
!667 = distinct !DILexicalBlock(scope: !509, file: !242, line: 211, column: 9)
!668 = !DILocation(line: 211, column: 9, scope: !509)
!669 = !DILocation(line: 212, column: 18, scope: !667)
!670 = !DILocation(line: 212, column: 24, scope: !667)
!671 = !DILocation(line: 212, column: 16, scope: !667)
!672 = !DILocation(line: 212, column: 9, scope: !667)
!673 = !DILocation(line: 213, column: 5, scope: !509)
!674 = !DILocation(line: 213, column: 12, scope: !509)
!675 = !DILocation(line: 215, column: 24, scope: !676)
!676 = distinct !DILexicalBlock(scope: !509, file: !242, line: 214, column: 5)
!677 = !DILocation(line: 215, column: 30, scope: !676)
!678 = !DILocation(line: 215, column: 36, scope: !676)
!679 = !DILocation(line: 215, column: 44, scope: !676)
!680 = !DILocation(line: 215, column: 18, scope: !676)
!681 = !DILocation(line: 215, column: 16, scope: !676)
!682 = !DILocation(line: 216, column: 18, scope: !676)
!683 = !DILocation(line: 216, column: 26, scope: !676)
!684 = !DILocation(line: 216, column: 16, scope: !676)
!685 = distinct !{!685, !673, !686}
!686 = !DILocation(line: 217, column: 5, scope: !509)
!687 = !DILocation(line: 221, column: 37, scope: !509)
!688 = !DILocation(line: 221, column: 46, scope: !509)
!689 = !DILocation(line: 221, column: 52, scope: !509)
!690 = !DILocation(line: 221, column: 15, scope: !509)
!691 = !DILocation(line: 221, column: 13, scope: !509)
!692 = !DILocation(line: 223, column: 32, scope: !509)
!693 = !DILocation(line: 223, column: 12, scope: !509)
!694 = !DILocation(line: 223, column: 10, scope: !509)
!695 = !DILocation(line: 225, column: 14, scope: !509)
!696 = !DILocation(line: 225, column: 20, scope: !509)
!697 = !DILocation(line: 225, column: 12, scope: !509)
!698 = !DILocation(line: 226, column: 5, scope: !509)
!699 = !DILocation(line: 226, column: 12, scope: !509)
!700 = !DILocation(line: 228, column: 24, scope: !701)
!701 = distinct !DILexicalBlock(scope: !509, file: !242, line: 227, column: 5)
!702 = !DILocation(line: 228, column: 30, scope: !701)
!703 = !DILocation(line: 228, column: 36, scope: !701)
!704 = !DILocation(line: 228, column: 44, scope: !701)
!705 = !DILocation(line: 228, column: 18, scope: !701)
!706 = !DILocation(line: 228, column: 16, scope: !701)
!707 = !DILocation(line: 229, column: 18, scope: !701)
!708 = !DILocation(line: 229, column: 26, scope: !701)
!709 = !DILocation(line: 229, column: 16, scope: !701)
!710 = distinct !{!710, !698, !711}
!711 = !DILocation(line: 230, column: 5, scope: !509)
!712 = !DILocation(line: 234, column: 12, scope: !509)
!713 = !DILocation(line: 235, column: 1, scope: !509)
!714 = !DILocation(line: 234, column: 5, scope: !509)
!715 = distinct !DISubprogram(name: "core_list_find", scope: !242, file: !242, line: 435, type: !716, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{!519, !519, !221}
!718 = !{!719, !720}
!719 = !DILocalVariable(name: "list", arg: 1, scope: !715, file: !242, line: 435, type: !519)
!720 = !DILocalVariable(name: "info", arg: 2, scope: !715, file: !242, line: 435, type: !221)
!721 = !DILocation(line: 435, column: 27, scope: !715)
!722 = !DILocation(line: 435, column: 44, scope: !715)
!723 = !DILocation(line: 437, column: 9, scope: !724)
!724 = distinct !DILexicalBlock(scope: !715, file: !242, line: 437, column: 9)
!725 = !DILocation(line: 437, column: 15, scope: !724)
!726 = !DILocation(line: 437, column: 19, scope: !724)
!727 = !DILocation(line: 437, column: 9, scope: !715)
!728 = !DILocation(line: 439, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !724, file: !242, line: 438, column: 5)
!730 = !DILocation(line: 439, column: 16, scope: !729)
!731 = !DILocation(line: 439, column: 21, scope: !729)
!732 = !DILocation(line: 439, column: 25, scope: !729)
!733 = !DILocation(line: 439, column: 31, scope: !729)
!734 = !DILocation(line: 439, column: 37, scope: !729)
!735 = !DILocation(line: 439, column: 44, scope: !729)
!736 = !DILocation(line: 439, column: 50, scope: !729)
!737 = !DILocation(line: 439, column: 41, scope: !729)
!738 = !DILocation(line: 0, scope: !729)
!739 = !DILocation(line: 440, column: 20, scope: !729)
!740 = !DILocation(line: 440, column: 26, scope: !729)
!741 = !DILocation(line: 440, column: 18, scope: !729)
!742 = distinct !{!742, !728, !740}
!743 = !DILocation(line: 441, column: 16, scope: !729)
!744 = !DILocation(line: 441, column: 9, scope: !729)
!745 = !DILocation(line: 445, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !724, file: !242, line: 444, column: 5)
!747 = !DILocation(line: 445, column: 16, scope: !746)
!748 = !DILocation(line: 445, column: 21, scope: !746)
!749 = !DILocation(line: 445, column: 26, scope: !746)
!750 = !DILocation(line: 445, column: 32, scope: !746)
!751 = !DILocation(line: 445, column: 38, scope: !746)
!752 = !DILocation(line: 445, column: 45, scope: !746)
!753 = !DILocation(line: 445, column: 56, scope: !746)
!754 = !DILocation(line: 445, column: 62, scope: !746)
!755 = !DILocation(line: 445, column: 53, scope: !746)
!756 = !DILocation(line: 0, scope: !746)
!757 = !DILocation(line: 446, column: 20, scope: !746)
!758 = !DILocation(line: 446, column: 26, scope: !746)
!759 = !DILocation(line: 446, column: 18, scope: !746)
!760 = distinct !{!760, !745, !758}
!761 = !DILocation(line: 447, column: 16, scope: !746)
!762 = !DILocation(line: 447, column: 9, scope: !746)
!763 = !DILocation(line: 449, column: 1, scope: !715)
!764 = distinct !DISubprogram(name: "core_list_reverse", scope: !242, file: !242, line: 465, type: !765, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!519, !519}
!767 = !{!768, !769, !770}
!768 = !DILocalVariable(name: "list", arg: 1, scope: !764, file: !242, line: 465, type: !519)
!769 = !DILocalVariable(name: "next", scope: !764, file: !242, line: 467, type: !519)
!770 = !DILocalVariable(name: "tmp", scope: !764, file: !242, line: 467, type: !519)
!771 = !DILocation(line: 465, column: 30, scope: !764)
!772 = !DILocation(line: 467, column: 5, scope: !764)
!773 = !DILocation(line: 467, column: 16, scope: !764)
!774 = !DILocation(line: 467, column: 30, scope: !764)
!775 = !DILocation(line: 468, column: 5, scope: !764)
!776 = !DILocation(line: 468, column: 12, scope: !764)
!777 = !DILocation(line: 470, column: 22, scope: !778)
!778 = distinct !DILexicalBlock(scope: !764, file: !242, line: 469, column: 5)
!779 = !DILocation(line: 470, column: 28, scope: !778)
!780 = !DILocation(line: 470, column: 20, scope: !778)
!781 = !DILocation(line: 471, column: 22, scope: !778)
!782 = !DILocation(line: 471, column: 9, scope: !778)
!783 = !DILocation(line: 471, column: 15, scope: !778)
!784 = !DILocation(line: 471, column: 20, scope: !778)
!785 = !DILocation(line: 472, column: 22, scope: !778)
!786 = !DILocation(line: 472, column: 20, scope: !778)
!787 = !DILocation(line: 473, column: 22, scope: !778)
!788 = !DILocation(line: 473, column: 20, scope: !778)
!789 = distinct !{!789, !775, !790}
!790 = !DILocation(line: 474, column: 5, scope: !764)
!791 = !DILocation(line: 475, column: 12, scope: !764)
!792 = !DILocation(line: 476, column: 1, scope: !764)
!793 = !DILocation(line: 475, column: 5, scope: !764)
!794 = distinct !DISubprogram(name: "core_list_mergesort", scope: !242, file: !242, line: 500, type: !795, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !799)
!795 = !DISubroutineType(types: !796)
!796 = !{!519, !519, !797, !246}
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_cmp", file: !242, line: 64, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 32)
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!800 = !DILocalVariable(name: "list", arg: 1, scope: !794, file: !242, line: 500, type: !519)
!801 = !DILocalVariable(name: "cmp", arg: 2, scope: !794, file: !242, line: 500, type: !797)
!802 = !DILocalVariable(name: "res", arg: 3, scope: !794, file: !242, line: 500, type: !246)
!803 = !DILocalVariable(name: "p", scope: !794, file: !242, line: 502, type: !519)
!804 = !DILocalVariable(name: "q", scope: !794, file: !242, line: 502, type: !519)
!805 = !DILocalVariable(name: "e", scope: !794, file: !242, line: 502, type: !519)
!806 = !DILocalVariable(name: "tail", scope: !794, file: !242, line: 502, type: !519)
!807 = !DILocalVariable(name: "insize", scope: !794, file: !242, line: 503, type: !51)
!808 = !DILocalVariable(name: "nmerges", scope: !794, file: !242, line: 503, type: !51)
!809 = !DILocalVariable(name: "psize", scope: !794, file: !242, line: 503, type: !51)
!810 = !DILocalVariable(name: "qsize", scope: !794, file: !242, line: 503, type: !51)
!811 = !DILocalVariable(name: "i", scope: !794, file: !242, line: 503, type: !51)
!812 = !DILocation(line: 500, column: 32, scope: !794)
!813 = !DILocation(line: 500, column: 47, scope: !794)
!814 = !DILocation(line: 500, column: 66, scope: !794)
!815 = !DILocation(line: 502, column: 5, scope: !794)
!816 = !DILocation(line: 502, column: 16, scope: !794)
!817 = !DILocation(line: 502, column: 20, scope: !794)
!818 = !DILocation(line: 502, column: 24, scope: !794)
!819 = !DILocation(line: 502, column: 28, scope: !794)
!820 = !DILocation(line: 503, column: 5, scope: !794)
!821 = !DILocation(line: 503, column: 16, scope: !794)
!822 = !DILocation(line: 503, column: 24, scope: !794)
!823 = !DILocation(line: 503, column: 33, scope: !794)
!824 = !DILocation(line: 503, column: 40, scope: !794)
!825 = !DILocation(line: 503, column: 47, scope: !794)
!826 = !DILocation(line: 505, column: 12, scope: !794)
!827 = !{!345, !345, i64 0}
!828 = !DILocation(line: 507, column: 5, scope: !794)
!829 = !DILocation(line: 509, column: 16, scope: !830)
!830 = distinct !DILexicalBlock(scope: !794, file: !242, line: 508, column: 5)
!831 = !DILocation(line: 509, column: 14, scope: !830)
!832 = !DILocation(line: 510, column: 14, scope: !830)
!833 = !DILocation(line: 511, column: 14, scope: !830)
!834 = !DILocation(line: 513, column: 17, scope: !830)
!835 = !DILocation(line: 515, column: 9, scope: !830)
!836 = !DILocation(line: 515, column: 16, scope: !830)
!837 = !DILocation(line: 517, column: 20, scope: !838)
!838 = distinct !DILexicalBlock(scope: !830, file: !242, line: 516, column: 9)
!839 = !DILocation(line: 519, column: 21, scope: !838)
!840 = !DILocation(line: 519, column: 19, scope: !838)
!841 = !DILocation(line: 520, column: 19, scope: !838)
!842 = !DILocation(line: 521, column: 20, scope: !843)
!843 = distinct !DILexicalBlock(scope: !838, file: !242, line: 521, column: 13)
!844 = !DILocation(line: 521, column: 18, scope: !843)
!845 = !DILocation(line: 521, column: 25, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !242, line: 521, column: 13)
!847 = !DILocation(line: 521, column: 29, scope: !846)
!848 = !DILocation(line: 521, column: 27, scope: !846)
!849 = !DILocation(line: 521, column: 13, scope: !843)
!850 = !DILocation(line: 523, column: 22, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !242, line: 522, column: 13)
!852 = !DILocation(line: 524, column: 21, scope: !851)
!853 = !DILocation(line: 524, column: 24, scope: !851)
!854 = !DILocation(line: 524, column: 19, scope: !851)
!855 = !DILocation(line: 525, column: 22, scope: !856)
!856 = distinct !DILexicalBlock(scope: !851, file: !242, line: 525, column: 21)
!857 = !DILocation(line: 525, column: 21, scope: !851)
!858 = !DILocation(line: 526, column: 21, scope: !856)
!859 = !DILocation(line: 527, column: 13, scope: !851)
!860 = !DILocation(line: 521, column: 38, scope: !846)
!861 = !DILocation(line: 521, column: 13, scope: !846)
!862 = distinct !{!862, !849, !863}
!863 = !DILocation(line: 527, column: 13, scope: !843)
!864 = !DILocation(line: 530, column: 21, scope: !838)
!865 = !DILocation(line: 530, column: 19, scope: !838)
!866 = !DILocation(line: 533, column: 13, scope: !838)
!867 = !DILocation(line: 533, column: 20, scope: !838)
!868 = !DILocation(line: 533, column: 26, scope: !838)
!869 = !DILocation(line: 533, column: 30, scope: !838)
!870 = !DILocation(line: 533, column: 34, scope: !838)
!871 = !DILocation(line: 533, column: 40, scope: !838)
!872 = !DILocation(line: 533, column: 44, scope: !838)
!873 = !DILocation(line: 533, column: 47, scope: !838)
!874 = !DILocation(line: 0, scope: !838)
!875 = !DILocation(line: 537, column: 21, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !242, line: 537, column: 21)
!877 = distinct !DILexicalBlock(scope: !838, file: !242, line: 534, column: 13)
!878 = !DILocation(line: 537, column: 27, scope: !876)
!879 = !DILocation(line: 537, column: 21, scope: !877)
!880 = !DILocation(line: 540, column: 25, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !242, line: 538, column: 17)
!882 = !DILocation(line: 540, column: 23, scope: !881)
!883 = !DILocation(line: 541, column: 25, scope: !881)
!884 = !DILocation(line: 541, column: 28, scope: !881)
!885 = !DILocation(line: 541, column: 23, scope: !881)
!886 = !DILocation(line: 542, column: 26, scope: !881)
!887 = !DILocation(line: 543, column: 17, scope: !881)
!888 = !DILocation(line: 544, column: 26, scope: !889)
!889 = distinct !DILexicalBlock(scope: !876, file: !242, line: 544, column: 26)
!890 = !DILocation(line: 544, column: 32, scope: !889)
!891 = !DILocation(line: 544, column: 37, scope: !889)
!892 = !DILocation(line: 544, column: 41, scope: !889)
!893 = !DILocation(line: 544, column: 26, scope: !876)
!894 = !DILocation(line: 547, column: 25, scope: !895)
!895 = distinct !DILexicalBlock(scope: !889, file: !242, line: 545, column: 17)
!896 = !DILocation(line: 547, column: 23, scope: !895)
!897 = !DILocation(line: 548, column: 25, scope: !895)
!898 = !DILocation(line: 548, column: 28, scope: !895)
!899 = !DILocation(line: 548, column: 23, scope: !895)
!900 = !DILocation(line: 549, column: 26, scope: !895)
!901 = !DILocation(line: 550, column: 17, scope: !895)
!902 = !DILocation(line: 551, column: 26, scope: !903)
!903 = distinct !DILexicalBlock(scope: !889, file: !242, line: 551, column: 26)
!904 = !DILocation(line: 551, column: 30, scope: !903)
!905 = !DILocation(line: 551, column: 33, scope: !903)
!906 = !DILocation(line: 551, column: 39, scope: !903)
!907 = !DILocation(line: 551, column: 42, scope: !903)
!908 = !DILocation(line: 551, column: 48, scope: !903)
!909 = !DILocation(line: 551, column: 53, scope: !903)
!910 = !DILocation(line: 551, column: 26, scope: !889)
!911 = !DILocation(line: 555, column: 25, scope: !912)
!912 = distinct !DILexicalBlock(scope: !903, file: !242, line: 552, column: 17)
!913 = !DILocation(line: 555, column: 23, scope: !912)
!914 = !DILocation(line: 556, column: 25, scope: !912)
!915 = !DILocation(line: 556, column: 28, scope: !912)
!916 = !DILocation(line: 556, column: 23, scope: !912)
!917 = !DILocation(line: 557, column: 26, scope: !912)
!918 = !DILocation(line: 558, column: 17, scope: !912)
!919 = !DILocation(line: 562, column: 25, scope: !920)
!920 = distinct !DILexicalBlock(scope: !903, file: !242, line: 560, column: 17)
!921 = !DILocation(line: 562, column: 23, scope: !920)
!922 = !DILocation(line: 563, column: 25, scope: !920)
!923 = !DILocation(line: 563, column: 28, scope: !920)
!924 = !DILocation(line: 563, column: 23, scope: !920)
!925 = !DILocation(line: 564, column: 26, scope: !920)
!926 = !DILocation(line: 568, column: 21, scope: !927)
!927 = distinct !DILexicalBlock(scope: !877, file: !242, line: 568, column: 21)
!928 = !DILocation(line: 568, column: 21, scope: !877)
!929 = !DILocation(line: 570, column: 34, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !242, line: 569, column: 17)
!931 = !DILocation(line: 570, column: 21, scope: !930)
!932 = !DILocation(line: 570, column: 27, scope: !930)
!933 = !DILocation(line: 570, column: 32, scope: !930)
!934 = !DILocation(line: 571, column: 17, scope: !930)
!935 = !DILocation(line: 574, column: 28, scope: !936)
!936 = distinct !DILexicalBlock(scope: !927, file: !242, line: 573, column: 17)
!937 = !DILocation(line: 574, column: 26, scope: !936)
!938 = !DILocation(line: 576, column: 24, scope: !877)
!939 = !DILocation(line: 576, column: 22, scope: !877)
!940 = distinct !{!940, !866, !941}
!941 = !DILocation(line: 577, column: 13, scope: !838)
!942 = !DILocation(line: 580, column: 17, scope: !838)
!943 = !DILocation(line: 580, column: 15, scope: !838)
!944 = distinct !{!944, !835, !945}
!945 = !DILocation(line: 581, column: 9, scope: !830)
!946 = !DILocation(line: 583, column: 9, scope: !830)
!947 = !DILocation(line: 583, column: 15, scope: !830)
!948 = !DILocation(line: 583, column: 20, scope: !830)
!949 = !DILocation(line: 586, column: 13, scope: !950)
!950 = distinct !DILexicalBlock(scope: !830, file: !242, line: 586, column: 13)
!951 = !DILocation(line: 586, column: 21, scope: !950)
!952 = !DILocation(line: 586, column: 13, scope: !830)
!953 = !DILocation(line: 587, column: 20, scope: !950)
!954 = !DILocation(line: 595, column: 1, scope: !794)
!955 = !DILocation(line: 587, column: 13, scope: !950)
!956 = !DILocation(line: 590, column: 16, scope: !830)
!957 = distinct !{!957, !828, !958}
!958 = !DILocation(line: 591, column: 5, scope: !794)
!959 = distinct !DISubprogram(name: "core_list_remove", scope: !242, file: !242, line: 377, type: !765, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !960)
!960 = !{!961, !962, !963}
!961 = !DILocalVariable(name: "item", arg: 1, scope: !959, file: !242, line: 377, type: !519)
!962 = !DILocalVariable(name: "tmp", scope: !959, file: !242, line: 379, type: !221)
!963 = !DILocalVariable(name: "ret", scope: !959, file: !242, line: 380, type: !519)
!964 = !DILocation(line: 377, column: 29, scope: !959)
!965 = !DILocation(line: 379, column: 5, scope: !959)
!966 = !DILocation(line: 379, column: 16, scope: !959)
!967 = !DILocation(line: 380, column: 5, scope: !959)
!968 = !DILocation(line: 380, column: 16, scope: !959)
!969 = !DILocation(line: 380, column: 22, scope: !959)
!970 = !DILocation(line: 380, column: 28, scope: !959)
!971 = !DILocation(line: 382, column: 18, scope: !959)
!972 = !DILocation(line: 382, column: 24, scope: !959)
!973 = !DILocation(line: 382, column: 16, scope: !959)
!974 = !DILocation(line: 383, column: 18, scope: !959)
!975 = !DILocation(line: 383, column: 23, scope: !959)
!976 = !DILocation(line: 383, column: 5, scope: !959)
!977 = !DILocation(line: 383, column: 11, scope: !959)
!978 = !DILocation(line: 383, column: 16, scope: !959)
!979 = !DILocation(line: 384, column: 18, scope: !959)
!980 = !DILocation(line: 384, column: 5, scope: !959)
!981 = !DILocation(line: 384, column: 10, scope: !959)
!982 = !DILocation(line: 384, column: 16, scope: !959)
!983 = !DILocation(line: 386, column: 18, scope: !959)
!984 = !DILocation(line: 386, column: 24, scope: !959)
!985 = !DILocation(line: 386, column: 30, scope: !959)
!986 = !DILocation(line: 386, column: 5, scope: !959)
!987 = !DILocation(line: 386, column: 11, scope: !959)
!988 = !DILocation(line: 386, column: 16, scope: !959)
!989 = !DILocation(line: 387, column: 5, scope: !959)
!990 = !DILocation(line: 387, column: 10, scope: !959)
!991 = !DILocation(line: 387, column: 16, scope: !959)
!992 = !DILocation(line: 388, column: 12, scope: !959)
!993 = !DILocation(line: 389, column: 1, scope: !959)
!994 = !DILocation(line: 388, column: 5, scope: !959)
!995 = distinct !DISubprogram(name: "core_list_undo_remove", scope: !242, file: !242, line: 408, type: !996, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!519, !519, !519}
!998 = !{!999, !1000, !1001}
!999 = !DILocalVariable(name: "item_removed", arg: 1, scope: !995, file: !242, line: 408, type: !519)
!1000 = !DILocalVariable(name: "item_modified", arg: 2, scope: !995, file: !242, line: 408, type: !519)
!1001 = !DILocalVariable(name: "tmp", scope: !995, file: !242, line: 410, type: !221)
!1002 = !DILocation(line: 408, column: 34, scope: !995)
!1003 = !DILocation(line: 408, column: 59, scope: !995)
!1004 = !DILocation(line: 410, column: 5, scope: !995)
!1005 = !DILocation(line: 410, column: 16, scope: !995)
!1006 = !DILocation(line: 412, column: 27, scope: !995)
!1007 = !DILocation(line: 412, column: 41, scope: !995)
!1008 = !DILocation(line: 412, column: 25, scope: !995)
!1009 = !DILocation(line: 413, column: 27, scope: !995)
!1010 = !DILocation(line: 413, column: 42, scope: !995)
!1011 = !DILocation(line: 413, column: 5, scope: !995)
!1012 = !DILocation(line: 413, column: 19, scope: !995)
!1013 = !DILocation(line: 413, column: 25, scope: !995)
!1014 = !DILocation(line: 414, column: 27, scope: !995)
!1015 = !DILocation(line: 414, column: 5, scope: !995)
!1016 = !DILocation(line: 414, column: 20, scope: !995)
!1017 = !DILocation(line: 414, column: 25, scope: !995)
!1018 = !DILocation(line: 416, column: 27, scope: !995)
!1019 = !DILocation(line: 416, column: 42, scope: !995)
!1020 = !DILocation(line: 416, column: 5, scope: !995)
!1021 = !DILocation(line: 416, column: 19, scope: !995)
!1022 = !DILocation(line: 416, column: 25, scope: !995)
!1023 = !DILocation(line: 417, column: 27, scope: !995)
!1024 = !DILocation(line: 417, column: 5, scope: !995)
!1025 = !DILocation(line: 417, column: 20, scope: !995)
!1026 = !DILocation(line: 417, column: 25, scope: !995)
!1027 = !DILocation(line: 418, column: 12, scope: !995)
!1028 = !DILocation(line: 419, column: 1, scope: !995)
!1029 = !DILocation(line: 418, column: 5, scope: !995)
!1030 = distinct !DISubprogram(name: "core_list_init", scope: !242, file: !242, line: 251, type: !1031, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!519, !23, !519, !12}
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1050, !1051}
!1034 = !DILocalVariable(name: "blksize", arg: 1, scope: !1030, file: !242, line: 251, type: !23)
!1035 = !DILocalVariable(name: "memblock", arg: 2, scope: !1030, file: !242, line: 251, type: !519)
!1036 = !DILocalVariable(name: "seed", arg: 3, scope: !1030, file: !242, line: 251, type: !12)
!1037 = !DILocalVariable(name: "per_item", scope: !1030, file: !242, line: 254, type: !23)
!1038 = !DILocalVariable(name: "size", scope: !1030, file: !242, line: 255, type: !23)
!1039 = !DILocalVariable(name: "memblock_end", scope: !1030, file: !242, line: 258, type: !519)
!1040 = !DILocalVariable(name: "datablock", scope: !1030, file: !242, line: 259, type: !221)
!1041 = !DILocalVariable(name: "datablock_end", scope: !1030, file: !242, line: 260, type: !221)
!1042 = !DILocalVariable(name: "i", scope: !1030, file: !242, line: 262, type: !23)
!1043 = !DILocalVariable(name: "finder", scope: !1030, file: !242, line: 263, type: !519)
!1044 = !DILocalVariable(name: "list", scope: !1030, file: !242, line: 263, type: !519)
!1045 = !DILocalVariable(name: "info", scope: !1030, file: !242, line: 264, type: !222)
!1046 = !DILocalVariable(name: "datpat", scope: !1047, file: !242, line: 281, type: !53)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !242, line: 280, column: 5)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !242, line: 279, column: 5)
!1049 = distinct !DILexicalBlock(scope: !1030, file: !242, line: 279, column: 5)
!1050 = !DILocalVariable(name: "dat", scope: !1047, file: !242, line: 282, type: !53)
!1051 = !DILocalVariable(name: "pat", scope: !1052, file: !242, line: 298, type: !53)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !242, line: 297, column: 9)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !242, line: 294, column: 13)
!1054 = distinct !DILexicalBlock(scope: !1030, file: !242, line: 293, column: 5)
!1055 = !DILocation(line: 251, column: 23, scope: !1030)
!1056 = !DILocation(line: 251, column: 43, scope: !1030)
!1057 = !DILocation(line: 251, column: 60, scope: !1030)
!1058 = !DILocation(line: 254, column: 5, scope: !1030)
!1059 = !DILocation(line: 254, column: 12, scope: !1030)
!1060 = !DILocation(line: 255, column: 5, scope: !1030)
!1061 = !DILocation(line: 255, column: 12, scope: !1030)
!1062 = !DILocation(line: 255, column: 24, scope: !1030)
!1063 = !DILocation(line: 255, column: 34, scope: !1030)
!1064 = !DILocation(line: 255, column: 32, scope: !1030)
!1065 = !DILocation(line: 256, column: 19, scope: !1030)
!1066 = !DILocation(line: 258, column: 5, scope: !1030)
!1067 = !DILocation(line: 258, column: 16, scope: !1030)
!1068 = !DILocation(line: 258, column: 32, scope: !1030)
!1069 = !DILocation(line: 258, column: 43, scope: !1030)
!1070 = !DILocation(line: 258, column: 41, scope: !1030)
!1071 = !DILocation(line: 259, column: 5, scope: !1030)
!1072 = !DILocation(line: 259, column: 16, scope: !1030)
!1073 = !DILocation(line: 259, column: 46, scope: !1030)
!1074 = !DILocation(line: 259, column: 32, scope: !1030)
!1075 = !DILocation(line: 260, column: 5, scope: !1030)
!1076 = !DILocation(line: 260, column: 16, scope: !1030)
!1077 = !DILocation(line: 260, column: 32, scope: !1030)
!1078 = !DILocation(line: 260, column: 44, scope: !1030)
!1079 = !DILocation(line: 260, column: 42, scope: !1030)
!1080 = !DILocation(line: 262, column: 5, scope: !1030)
!1081 = !DILocation(line: 262, column: 16, scope: !1030)
!1082 = !DILocation(line: 263, column: 5, scope: !1030)
!1083 = !DILocation(line: 263, column: 16, scope: !1030)
!1084 = !DILocation(line: 263, column: 25, scope: !1030)
!1085 = !DILocation(line: 263, column: 32, scope: !1030)
!1086 = !DILocation(line: 264, column: 5, scope: !1030)
!1087 = !DILocation(line: 264, column: 16, scope: !1030)
!1088 = !DILocation(line: 267, column: 5, scope: !1030)
!1089 = !DILocation(line: 267, column: 11, scope: !1030)
!1090 = !DILocation(line: 267, column: 24, scope: !1030)
!1091 = !DILocation(line: 268, column: 26, scope: !1030)
!1092 = !DILocation(line: 268, column: 5, scope: !1030)
!1093 = !DILocation(line: 268, column: 11, scope: !1030)
!1094 = !DILocation(line: 268, column: 24, scope: !1030)
!1095 = !DILocation(line: 269, column: 5, scope: !1030)
!1096 = !DILocation(line: 269, column: 11, scope: !1030)
!1097 = !DILocation(line: 269, column: 17, scope: !1030)
!1098 = !DILocation(line: 269, column: 24, scope: !1030)
!1099 = !DILocation(line: 270, column: 5, scope: !1030)
!1100 = !DILocation(line: 270, column: 11, scope: !1030)
!1101 = !DILocation(line: 270, column: 17, scope: !1030)
!1102 = !DILocation(line: 270, column: 24, scope: !1030)
!1103 = !DILocation(line: 271, column: 13, scope: !1030)
!1104 = !DILocation(line: 272, column: 14, scope: !1030)
!1105 = !DILocation(line: 273, column: 10, scope: !1030)
!1106 = !DILocation(line: 273, column: 17, scope: !1030)
!1107 = !DILocation(line: 274, column: 10, scope: !1030)
!1108 = !DILocation(line: 274, column: 17, scope: !1030)
!1109 = !DILocation(line: 276, column: 9, scope: !1030)
!1110 = !DILocation(line: 276, column: 45, scope: !1030)
!1111 = !DILocation(line: 276, column: 59, scope: !1030)
!1112 = !DILocation(line: 275, column: 5, scope: !1030)
!1113 = !DILocation(line: 279, column: 12, scope: !1049)
!1114 = !DILocation(line: 279, column: 10, scope: !1049)
!1115 = !DILocation(line: 279, column: 17, scope: !1048)
!1116 = !DILocation(line: 279, column: 21, scope: !1048)
!1117 = !DILocation(line: 279, column: 19, scope: !1048)
!1118 = !DILocation(line: 279, column: 5, scope: !1049)
!1119 = !DILocation(line: 281, column: 9, scope: !1047)
!1120 = !DILocation(line: 281, column: 16, scope: !1047)
!1121 = !DILocation(line: 281, column: 35, scope: !1047)
!1122 = !DILocation(line: 281, column: 42, scope: !1047)
!1123 = !DILocation(line: 281, column: 40, scope: !1047)
!1124 = !DILocation(line: 281, column: 26, scope: !1047)
!1125 = !DILocation(line: 281, column: 45, scope: !1047)
!1126 = !DILocation(line: 281, column: 25, scope: !1047)
!1127 = !DILocation(line: 282, column: 9, scope: !1047)
!1128 = !DILocation(line: 282, column: 16, scope: !1047)
!1129 = !DILocation(line: 283, column: 16, scope: !1047)
!1130 = !DILocation(line: 283, column: 23, scope: !1047)
!1131 = !DILocation(line: 283, column: 32, scope: !1047)
!1132 = !DILocation(line: 283, column: 34, scope: !1047)
!1133 = !DILocation(line: 283, column: 29, scope: !1047)
!1134 = !DILocation(line: 283, column: 15, scope: !1047)
!1135 = !DILocation(line: 284, column: 24, scope: !1047)
!1136 = !DILocation(line: 284, column: 28, scope: !1047)
!1137 = !DILocation(line: 284, column: 36, scope: !1047)
!1138 = !DILocation(line: 284, column: 34, scope: !1047)
!1139 = !DILocation(line: 284, column: 23, scope: !1047)
!1140 = !DILocation(line: 284, column: 14, scope: !1047)
!1141 = !DILocation(line: 284, column: 21, scope: !1047)
!1142 = !DILocation(line: 287, column: 13, scope: !1047)
!1143 = !DILocation(line: 287, column: 49, scope: !1047)
!1144 = !DILocation(line: 287, column: 63, scope: !1047)
!1145 = !DILocation(line: 286, column: 9, scope: !1047)
!1146 = !DILocation(line: 288, column: 5, scope: !1048)
!1147 = !DILocation(line: 288, column: 5, scope: !1047)
!1148 = !DILocation(line: 279, column: 28, scope: !1048)
!1149 = !DILocation(line: 279, column: 5, scope: !1048)
!1150 = distinct !{!1150, !1118, !1151}
!1151 = !DILocation(line: 288, column: 5, scope: !1049)
!1152 = !DILocation(line: 290, column: 14, scope: !1030)
!1153 = !DILocation(line: 290, column: 20, scope: !1030)
!1154 = !DILocation(line: 290, column: 12, scope: !1030)
!1155 = !DILocation(line: 291, column: 12, scope: !1030)
!1156 = !DILocation(line: 292, column: 5, scope: !1030)
!1157 = !DILocation(line: 292, column: 12, scope: !1030)
!1158 = !DILocation(line: 292, column: 20, scope: !1030)
!1159 = !DILocation(line: 292, column: 25, scope: !1030)
!1160 = !DILocation(line: 294, column: 13, scope: !1053)
!1161 = !DILocation(line: 294, column: 17, scope: !1053)
!1162 = !DILocation(line: 294, column: 22, scope: !1053)
!1163 = !DILocation(line: 294, column: 15, scope: !1053)
!1164 = !DILocation(line: 294, column: 13, scope: !1054)
!1165 = !DILocation(line: 295, column: 34, scope: !1053)
!1166 = !DILocation(line: 295, column: 33, scope: !1053)
!1167 = !DILocation(line: 295, column: 13, scope: !1053)
!1168 = !DILocation(line: 295, column: 21, scope: !1053)
!1169 = !DILocation(line: 295, column: 27, scope: !1053)
!1170 = !DILocation(line: 295, column: 31, scope: !1053)
!1171 = !DILocation(line: 298, column: 13, scope: !1052)
!1172 = !DILocation(line: 298, column: 20, scope: !1052)
!1173 = !DILocation(line: 298, column: 36, scope: !1052)
!1174 = !DILocation(line: 298, column: 41, scope: !1052)
!1175 = !DILocation(line: 298, column: 39, scope: !1052)
!1176 = !DILocation(line: 298, column: 26, scope: !1052)
!1177 = !DILocation(line: 300, column: 38, scope: !1052)
!1178 = !DILocation(line: 300, column: 40, scope: !1052)
!1179 = !DILocation(line: 300, column: 48, scope: !1052)
!1180 = !DILocation(line: 301, column: 38, scope: !1052)
!1181 = !DILocation(line: 301, column: 36, scope: !1052)
!1182 = !DILocation(line: 300, column: 33, scope: !1052)
!1183 = !DILocation(line: 299, column: 33, scope: !1052)
!1184 = !DILocation(line: 299, column: 13, scope: !1052)
!1185 = !DILocation(line: 299, column: 21, scope: !1052)
!1186 = !DILocation(line: 299, column: 27, scope: !1052)
!1187 = !DILocation(line: 299, column: 31, scope: !1052)
!1188 = !DILocation(line: 303, column: 9, scope: !1053)
!1189 = !DILocation(line: 304, column: 18, scope: !1054)
!1190 = !DILocation(line: 304, column: 26, scope: !1054)
!1191 = !DILocation(line: 304, column: 16, scope: !1054)
!1192 = distinct !{!1192, !1156, !1193}
!1193 = !DILocation(line: 305, column: 5, scope: !1030)
!1194 = !DILocation(line: 306, column: 32, scope: !1030)
!1195 = !DILocation(line: 306, column: 12, scope: !1030)
!1196 = !DILocation(line: 306, column: 10, scope: !1030)
!1197 = !DILocation(line: 318, column: 12, scope: !1030)
!1198 = !DILocation(line: 319, column: 1, scope: !1030)
!1199 = !DILocation(line: 318, column: 5, scope: !1030)
!1200 = distinct !DISubprogram(name: "core_list_insert_new", scope: !242, file: !242, line: 336, type: !1201, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1205)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!519, !519, !221, !1203, !1204, !519, !221}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1206 = !DILocalVariable(name: "insert_point", arg: 1, scope: !1200, file: !242, line: 336, type: !519)
!1207 = !DILocalVariable(name: "info", arg: 2, scope: !1200, file: !242, line: 337, type: !221)
!1208 = !DILocalVariable(name: "memblock", arg: 3, scope: !1200, file: !242, line: 338, type: !1203)
!1209 = !DILocalVariable(name: "datablock", arg: 4, scope: !1200, file: !242, line: 339, type: !1204)
!1210 = !DILocalVariable(name: "memblock_end", arg: 5, scope: !1200, file: !242, line: 340, type: !519)
!1211 = !DILocalVariable(name: "datablock_end", arg: 6, scope: !1200, file: !242, line: 341, type: !221)
!1212 = !DILocalVariable(name: "newitem", scope: !1200, file: !242, line: 343, type: !519)
!1213 = !DILocation(line: 336, column: 34, scope: !1200)
!1214 = !DILocation(line: 337, column: 34, scope: !1200)
!1215 = !DILocation(line: 338, column: 34, scope: !1200)
!1216 = !DILocation(line: 339, column: 34, scope: !1200)
!1217 = !DILocation(line: 340, column: 34, scope: !1200)
!1218 = !DILocation(line: 341, column: 34, scope: !1200)
!1219 = !DILocation(line: 343, column: 5, scope: !1200)
!1220 = !DILocation(line: 343, column: 16, scope: !1200)
!1221 = !DILocation(line: 345, column: 11, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1200, file: !242, line: 345, column: 9)
!1223 = !DILocation(line: 345, column: 10, scope: !1222)
!1224 = !DILocation(line: 345, column: 20, scope: !1222)
!1225 = !DILocation(line: 345, column: 28, scope: !1222)
!1226 = !DILocation(line: 345, column: 25, scope: !1222)
!1227 = !DILocation(line: 345, column: 9, scope: !1200)
!1228 = !DILocation(line: 346, column: 9, scope: !1222)
!1229 = !DILocation(line: 347, column: 11, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1200, file: !242, line: 347, column: 9)
!1231 = !DILocation(line: 347, column: 10, scope: !1230)
!1232 = !DILocation(line: 347, column: 21, scope: !1230)
!1233 = !DILocation(line: 347, column: 29, scope: !1230)
!1234 = !DILocation(line: 347, column: 26, scope: !1230)
!1235 = !DILocation(line: 347, column: 9, scope: !1200)
!1236 = !DILocation(line: 348, column: 9, scope: !1230)
!1237 = !DILocation(line: 350, column: 16, scope: !1200)
!1238 = !DILocation(line: 350, column: 15, scope: !1200)
!1239 = !DILocation(line: 350, column: 13, scope: !1200)
!1240 = !DILocation(line: 351, column: 7, scope: !1200)
!1241 = !DILocation(line: 351, column: 16, scope: !1200)
!1242 = !DILocation(line: 352, column: 26, scope: !1200)
!1243 = !DILocation(line: 352, column: 40, scope: !1200)
!1244 = !DILocation(line: 352, column: 5, scope: !1200)
!1245 = !DILocation(line: 352, column: 14, scope: !1200)
!1246 = !DILocation(line: 352, column: 24, scope: !1200)
!1247 = !DILocation(line: 353, column: 26, scope: !1200)
!1248 = !DILocation(line: 353, column: 5, scope: !1200)
!1249 = !DILocation(line: 353, column: 19, scope: !1200)
!1250 = !DILocation(line: 353, column: 24, scope: !1200)
!1251 = !DILocation(line: 355, column: 22, scope: !1200)
!1252 = !DILocation(line: 355, column: 21, scope: !1200)
!1253 = !DILocation(line: 355, column: 5, scope: !1200)
!1254 = !DILocation(line: 355, column: 14, scope: !1200)
!1255 = !DILocation(line: 355, column: 19, scope: !1200)
!1256 = !DILocation(line: 356, column: 7, scope: !1200)
!1257 = !DILocation(line: 356, column: 17, scope: !1200)
!1258 = !DILocation(line: 357, column: 15, scope: !1200)
!1259 = !DILocation(line: 357, column: 24, scope: !1200)
!1260 = !DILocation(line: 357, column: 30, scope: !1200)
!1261 = !DILocation(line: 357, column: 5, scope: !1200)
!1262 = !DILocation(line: 359, column: 12, scope: !1200)
!1263 = !DILocation(line: 359, column: 5, scope: !1200)
!1264 = !DILocation(line: 360, column: 1, scope: !1200)
!1265 = distinct !DISubprogram(name: "iterate", scope: !74, file: !74, line: 52, type: !1266, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1268)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!19, !19}
!1268 = !{!1269, !1270, !1271, !1272, !1273}
!1269 = !DILocalVariable(name: "pres", arg: 1, scope: !1265, file: !74, line: 52, type: !19)
!1270 = !DILocalVariable(name: "i", scope: !1265, file: !74, line: 54, type: !23)
!1271 = !DILocalVariable(name: "crc", scope: !1265, file: !74, line: 55, type: !53)
!1272 = !DILocalVariable(name: "res", scope: !1265, file: !74, line: 56, type: !6)
!1273 = !DILocalVariable(name: "iterations", scope: !1265, file: !74, line: 57, type: !23)
!1274 = !DILocation(line: 52, column: 15, scope: !1265)
!1275 = !DILocation(line: 54, column: 5, scope: !1265)
!1276 = !DILocation(line: 54, column: 19, scope: !1265)
!1277 = !DILocation(line: 55, column: 5, scope: !1265)
!1278 = !DILocation(line: 55, column: 19, scope: !1265)
!1279 = !DILocation(line: 56, column: 5, scope: !1265)
!1280 = !DILocation(line: 56, column: 19, scope: !1265)
!1281 = !DILocation(line: 56, column: 48, scope: !1265)
!1282 = !DILocation(line: 56, column: 32, scope: !1265)
!1283 = !DILocation(line: 57, column: 5, scope: !1265)
!1284 = !DILocation(line: 57, column: 19, scope: !1265)
!1285 = !DILocation(line: 57, column: 32, scope: !1265)
!1286 = !DILocation(line: 57, column: 37, scope: !1265)
!1287 = !{!344, !345, i64 28}
!1288 = !DILocation(line: 58, column: 5, scope: !1265)
!1289 = !DILocation(line: 58, column: 10, scope: !1265)
!1290 = !DILocation(line: 58, column: 30, scope: !1265)
!1291 = !DILocation(line: 59, column: 5, scope: !1265)
!1292 = !DILocation(line: 59, column: 10, scope: !1265)
!1293 = !DILocation(line: 59, column: 30, scope: !1265)
!1294 = !{!344, !303, i64 58}
!1295 = !DILocation(line: 60, column: 5, scope: !1265)
!1296 = !DILocation(line: 60, column: 10, scope: !1265)
!1297 = !DILocation(line: 60, column: 30, scope: !1265)
!1298 = !DILocation(line: 61, column: 5, scope: !1265)
!1299 = !DILocation(line: 61, column: 10, scope: !1265)
!1300 = !DILocation(line: 61, column: 30, scope: !1265)
!1301 = !DILocation(line: 63, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1265, file: !74, line: 63, column: 5)
!1303 = !DILocation(line: 63, column: 10, scope: !1302)
!1304 = !DILocation(line: 63, column: 17, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !74, line: 63, column: 5)
!1306 = !DILocation(line: 63, column: 21, scope: !1305)
!1307 = !DILocation(line: 63, column: 19, scope: !1305)
!1308 = !DILocation(line: 63, column: 5, scope: !1302)
!1309 = !DILocation(line: 65, column: 36, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !74, line: 64, column: 5)
!1311 = !DILocation(line: 65, column: 20, scope: !1310)
!1312 = !DILocation(line: 65, column: 18, scope: !1310)
!1313 = !DILocation(line: 66, column: 27, scope: !1310)
!1314 = !DILocation(line: 66, column: 32, scope: !1310)
!1315 = !DILocation(line: 66, column: 37, scope: !1310)
!1316 = !DILocation(line: 66, column: 20, scope: !1310)
!1317 = !DILocation(line: 66, column: 9, scope: !1310)
!1318 = !DILocation(line: 66, column: 14, scope: !1310)
!1319 = !DILocation(line: 66, column: 18, scope: !1310)
!1320 = !DILocation(line: 67, column: 36, scope: !1310)
!1321 = !DILocation(line: 67, column: 20, scope: !1310)
!1322 = !DILocation(line: 67, column: 18, scope: !1310)
!1323 = !DILocation(line: 68, column: 27, scope: !1310)
!1324 = !DILocation(line: 68, column: 32, scope: !1310)
!1325 = !DILocation(line: 68, column: 37, scope: !1310)
!1326 = !DILocation(line: 68, column: 20, scope: !1310)
!1327 = !DILocation(line: 68, column: 9, scope: !1310)
!1328 = !DILocation(line: 68, column: 14, scope: !1310)
!1329 = !DILocation(line: 68, column: 18, scope: !1310)
!1330 = !DILocation(line: 69, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1310, file: !74, line: 69, column: 13)
!1332 = !DILocation(line: 69, column: 15, scope: !1331)
!1333 = !DILocation(line: 69, column: 13, scope: !1310)
!1334 = !DILocation(line: 70, column: 28, scope: !1331)
!1335 = !DILocation(line: 70, column: 33, scope: !1331)
!1336 = !DILocation(line: 70, column: 13, scope: !1331)
!1337 = !DILocation(line: 70, column: 18, scope: !1331)
!1338 = !DILocation(line: 70, column: 26, scope: !1331)
!1339 = !DILocation(line: 71, column: 5, scope: !1310)
!1340 = !DILocation(line: 63, column: 34, scope: !1305)
!1341 = !DILocation(line: 63, column: 5, scope: !1305)
!1342 = distinct !{!1342, !1308, !1343}
!1343 = !DILocation(line: 71, column: 5, scope: !1302)
!1344 = !DILocation(line: 73, column: 1, scope: !1265)
!1345 = !DILocation(line: 72, column: 5, scope: !1265)
!1346 = distinct !DISubprogram(name: "main", scope: !74, file: !74, line: 115, type: !1347, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1350)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!43, !43, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1364, !1368, !1372, !1375}
!1351 = !DILocalVariable(name: "argc", arg: 1, scope: !1346, file: !74, line: 115, type: !43)
!1352 = !DILocalVariable(name: "argv", arg: 2, scope: !1346, file: !74, line: 115, type: !1349)
!1353 = !DILocalVariable(name: "i", scope: !1346, file: !74, line: 118, type: !53)
!1354 = !DILocalVariable(name: "j", scope: !1346, file: !74, line: 118, type: !53)
!1355 = !DILocalVariable(name: "num_algorithms", scope: !1346, file: !74, line: 118, type: !53)
!1356 = !DILocalVariable(name: "known_id", scope: !1346, file: !74, line: 119, type: !12)
!1357 = !DILocalVariable(name: "total_errors", scope: !1346, file: !74, line: 119, type: !12)
!1358 = !DILocalVariable(name: "seedcrc", scope: !1346, file: !74, line: 120, type: !53)
!1359 = !DILocalVariable(name: "total_time", scope: !1346, file: !74, line: 121, type: !117)
!1360 = !DILocalVariable(name: "results", scope: !1346, file: !74, line: 122, type: !1361)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 544, elements: !1362)
!1362 = !{!1363}
!1363 = !DISubrange(count: 1)
!1364 = !DILocalVariable(name: "stack_memblock", scope: !1346, file: !74, line: 124, type: !1365)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 16000, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 2000)
!1368 = !DILocalVariable(name: "ctx", scope: !1369, file: !74, line: 209, type: !23)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !74, line: 208, column: 5)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !74, line: 207, column: 5)
!1371 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 207, column: 5)
!1372 = !DILocalVariable(name: "secs_passed", scope: !1373, file: !74, line: 244, type: !68)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !74, line: 243, column: 5)
!1374 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 242, column: 9)
!1375 = !DILocalVariable(name: "divisor", scope: !1373, file: !74, line: 245, type: !23)
!1376 = !DILocation(line: 115, column: 10, scope: !1346)
!1377 = !DILocation(line: 115, column: 22, scope: !1346)
!1378 = !DILocation(line: 118, column: 5, scope: !1346)
!1379 = !DILocation(line: 118, column: 18, scope: !1346)
!1380 = !DILocation(line: 118, column: 21, scope: !1346)
!1381 = !DILocation(line: 118, column: 28, scope: !1346)
!1382 = !DILocation(line: 119, column: 5, scope: !1346)
!1383 = !DILocation(line: 119, column: 18, scope: !1346)
!1384 = !DILocation(line: 119, column: 33, scope: !1346)
!1385 = !DILocation(line: 120, column: 5, scope: !1346)
!1386 = !DILocation(line: 120, column: 18, scope: !1346)
!1387 = !DILocation(line: 121, column: 5, scope: !1346)
!1388 = !DILocation(line: 121, column: 18, scope: !1346)
!1389 = !DILocation(line: 122, column: 5, scope: !1346)
!1390 = !DILocation(line: 122, column: 18, scope: !1346)
!1391 = !DILocation(line: 124, column: 5, scope: !1346)
!1392 = !DILocation(line: 124, column: 11, scope: !1346)
!1393 = !DILocation(line: 127, column: 21, scope: !1346)
!1394 = !DILocation(line: 127, column: 32, scope: !1346)
!1395 = !DILocation(line: 127, column: 46, scope: !1346)
!1396 = !DILocation(line: 127, column: 5, scope: !1346)
!1397 = !DILocation(line: 134, column: 29, scope: !1346)
!1398 = !DILocation(line: 134, column: 5, scope: !1346)
!1399 = !DILocation(line: 134, column: 16, scope: !1346)
!1400 = !DILocation(line: 134, column: 27, scope: !1346)
!1401 = !DILocation(line: 135, column: 29, scope: !1346)
!1402 = !DILocation(line: 135, column: 5, scope: !1346)
!1403 = !DILocation(line: 135, column: 16, scope: !1346)
!1404 = !DILocation(line: 135, column: 27, scope: !1346)
!1405 = !DILocation(line: 136, column: 29, scope: !1346)
!1406 = !DILocation(line: 136, column: 5, scope: !1346)
!1407 = !DILocation(line: 136, column: 16, scope: !1346)
!1408 = !DILocation(line: 136, column: 27, scope: !1346)
!1409 = !DILocation(line: 137, column: 29, scope: !1346)
!1410 = !DILocation(line: 137, column: 5, scope: !1346)
!1411 = !DILocation(line: 137, column: 16, scope: !1346)
!1412 = !DILocation(line: 137, column: 27, scope: !1346)
!1413 = !DILocation(line: 141, column: 24, scope: !1346)
!1414 = !DILocation(line: 141, column: 5, scope: !1346)
!1415 = !DILocation(line: 141, column: 16, scope: !1346)
!1416 = !DILocation(line: 141, column: 22, scope: !1346)
!1417 = !{!344, !345, i64 32}
!1418 = !DILocation(line: 142, column: 9, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 142, column: 9)
!1420 = !DILocation(line: 142, column: 20, scope: !1419)
!1421 = !DILocation(line: 142, column: 26, scope: !1419)
!1422 = !DILocation(line: 142, column: 9, scope: !1346)
!1423 = !DILocation(line: 144, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !74, line: 143, column: 5)
!1425 = !DILocation(line: 144, column: 20, scope: !1424)
!1426 = !DILocation(line: 144, column: 26, scope: !1424)
!1427 = !DILocation(line: 145, column: 5, scope: !1424)
!1428 = !DILocation(line: 147, column: 10, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 147, column: 9)
!1430 = !DILocation(line: 147, column: 21, scope: !1429)
!1431 = !DILocation(line: 147, column: 27, scope: !1429)
!1432 = !DILocation(line: 147, column: 33, scope: !1429)
!1433 = !DILocation(line: 147, column: 37, scope: !1429)
!1434 = !DILocation(line: 147, column: 48, scope: !1429)
!1435 = !DILocation(line: 147, column: 54, scope: !1429)
!1436 = !DILocation(line: 148, column: 9, scope: !1429)
!1437 = !DILocation(line: 148, column: 13, scope: !1429)
!1438 = !DILocation(line: 148, column: 24, scope: !1429)
!1439 = !DILocation(line: 148, column: 30, scope: !1429)
!1440 = !DILocation(line: 147, column: 9, scope: !1346)
!1441 = !DILocation(line: 150, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1429, file: !74, line: 149, column: 5)
!1443 = !DILocation(line: 150, column: 20, scope: !1442)
!1444 = !DILocation(line: 150, column: 26, scope: !1442)
!1445 = !DILocation(line: 151, column: 9, scope: !1442)
!1446 = !DILocation(line: 151, column: 20, scope: !1442)
!1447 = !DILocation(line: 151, column: 26, scope: !1442)
!1448 = !DILocation(line: 152, column: 9, scope: !1442)
!1449 = !DILocation(line: 152, column: 20, scope: !1442)
!1450 = !DILocation(line: 152, column: 26, scope: !1442)
!1451 = !DILocation(line: 153, column: 5, scope: !1442)
!1452 = !DILocation(line: 154, column: 10, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 154, column: 9)
!1454 = !DILocation(line: 154, column: 21, scope: !1453)
!1455 = !DILocation(line: 154, column: 27, scope: !1453)
!1456 = !DILocation(line: 154, column: 33, scope: !1453)
!1457 = !DILocation(line: 154, column: 37, scope: !1453)
!1458 = !DILocation(line: 154, column: 48, scope: !1453)
!1459 = !DILocation(line: 154, column: 54, scope: !1453)
!1460 = !DILocation(line: 155, column: 9, scope: !1453)
!1461 = !DILocation(line: 155, column: 13, scope: !1453)
!1462 = !DILocation(line: 155, column: 24, scope: !1453)
!1463 = !DILocation(line: 155, column: 30, scope: !1453)
!1464 = !DILocation(line: 154, column: 9, scope: !1346)
!1465 = !DILocation(line: 157, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1453, file: !74, line: 156, column: 5)
!1467 = !DILocation(line: 157, column: 20, scope: !1466)
!1468 = !DILocation(line: 157, column: 26, scope: !1466)
!1469 = !DILocation(line: 158, column: 9, scope: !1466)
!1470 = !DILocation(line: 158, column: 20, scope: !1466)
!1471 = !DILocation(line: 158, column: 26, scope: !1466)
!1472 = !DILocation(line: 159, column: 9, scope: !1466)
!1473 = !DILocation(line: 159, column: 20, scope: !1466)
!1474 = !DILocation(line: 159, column: 26, scope: !1466)
!1475 = !DILocation(line: 160, column: 5, scope: !1466)
!1476 = !DILocation(line: 184, column: 8, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 184, column: 1)
!1478 = !DILocation(line: 184, column: 6, scope: !1477)
!1479 = !DILocation(line: 184, column: 13, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !74, line: 184, column: 1)
!1481 = !DILocation(line: 184, column: 15, scope: !1480)
!1482 = !DILocation(line: 184, column: 1, scope: !1477)
!1483 = !DILocation(line: 186, column: 30, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !74, line: 185, column: 1)
!1485 = !DILocation(line: 186, column: 47, scope: !1484)
!1486 = !DILocation(line: 186, column: 49, scope: !1484)
!1487 = !DILocation(line: 186, column: 51, scope: !1484)
!1488 = !DILocation(line: 186, column: 45, scope: !1484)
!1489 = !DILocation(line: 186, column: 13, scope: !1484)
!1490 = !DILocation(line: 186, column: 5, scope: !1484)
!1491 = !DILocation(line: 186, column: 16, scope: !1484)
!1492 = !DILocation(line: 186, column: 28, scope: !1484)
!1493 = !DILocation(line: 187, column: 13, scope: !1484)
!1494 = !DILocation(line: 187, column: 5, scope: !1484)
!1495 = !DILocation(line: 187, column: 16, scope: !1484)
!1496 = !DILocation(line: 187, column: 28, scope: !1484)
!1497 = !DILocation(line: 188, column: 30, scope: !1484)
!1498 = !DILocation(line: 188, column: 41, scope: !1484)
!1499 = !DILocation(line: 188, column: 13, scope: !1484)
!1500 = !DILocation(line: 188, column: 5, scope: !1484)
!1501 = !DILocation(line: 188, column: 16, scope: !1484)
!1502 = !DILocation(line: 188, column: 28, scope: !1484)
!1503 = !DILocation(line: 189, column: 30, scope: !1484)
!1504 = !DILocation(line: 189, column: 41, scope: !1484)
!1505 = !DILocation(line: 189, column: 13, scope: !1484)
!1506 = !DILocation(line: 189, column: 5, scope: !1484)
!1507 = !DILocation(line: 189, column: 16, scope: !1484)
!1508 = !DILocation(line: 189, column: 28, scope: !1484)
!1509 = !DILocation(line: 190, column: 30, scope: !1484)
!1510 = !DILocation(line: 190, column: 41, scope: !1484)
!1511 = !DILocation(line: 190, column: 13, scope: !1484)
!1512 = !DILocation(line: 190, column: 5, scope: !1484)
!1513 = !DILocation(line: 190, column: 16, scope: !1484)
!1514 = !DILocation(line: 190, column: 28, scope: !1484)
!1515 = !DILocation(line: 191, column: 13, scope: !1484)
!1516 = !DILocation(line: 191, column: 5, scope: !1484)
!1517 = !DILocation(line: 191, column: 16, scope: !1484)
!1518 = !DILocation(line: 191, column: 28, scope: !1484)
!1519 = !{!344, !303, i64 64}
!1520 = !DILocation(line: 192, column: 30, scope: !1484)
!1521 = !DILocation(line: 192, column: 41, scope: !1484)
!1522 = !DILocation(line: 192, column: 13, scope: !1484)
!1523 = !DILocation(line: 192, column: 5, scope: !1484)
!1524 = !DILocation(line: 192, column: 16, scope: !1484)
!1525 = !DILocation(line: 192, column: 28, scope: !1484)
!1526 = !DILocation(line: 193, column: 1, scope: !1484)
!1527 = !DILocation(line: 184, column: 31, scope: !1480)
!1528 = !DILocation(line: 184, column: 1, scope: !1480)
!1529 = distinct !{!1529, !1482, !1530}
!1530 = !DILocation(line: 193, column: 1, scope: !1477)
!1531 = !DILocation(line: 199, column: 12, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 199, column: 5)
!1533 = !DILocation(line: 199, column: 10, scope: !1532)
!1534 = !DILocation(line: 199, column: 17, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !74, line: 199, column: 5)
!1536 = !DILocation(line: 199, column: 19, scope: !1535)
!1537 = !DILocation(line: 199, column: 5, scope: !1532)
!1538 = !DILocation(line: 201, column: 27, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !74, line: 201, column: 13)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !74, line: 200, column: 5)
!1541 = !DILocation(line: 201, column: 19, scope: !1539)
!1542 = !DILocation(line: 201, column: 16, scope: !1539)
!1543 = !DILocation(line: 201, column: 32, scope: !1539)
!1544 = !DILocation(line: 201, column: 43, scope: !1539)
!1545 = !DILocation(line: 201, column: 30, scope: !1539)
!1546 = !DILocation(line: 201, column: 13, scope: !1540)
!1547 = !DILocation(line: 202, column: 27, scope: !1539)
!1548 = !DILocation(line: 202, column: 13, scope: !1539)
!1549 = !DILocation(line: 203, column: 5, scope: !1540)
!1550 = !DILocation(line: 199, column: 38, scope: !1535)
!1551 = !DILocation(line: 199, column: 5, scope: !1535)
!1552 = distinct !{!1552, !1537, !1553}
!1553 = !DILocation(line: 203, column: 5, scope: !1532)
!1554 = !DILocation(line: 204, column: 12, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 204, column: 5)
!1556 = !DILocation(line: 204, column: 10, scope: !1555)
!1557 = !DILocation(line: 204, column: 17, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !74, line: 204, column: 5)
!1559 = !DILocation(line: 204, column: 19, scope: !1558)
!1560 = !DILocation(line: 204, column: 5, scope: !1555)
!1561 = !DILocation(line: 205, column: 35, scope: !1558)
!1562 = !DILocation(line: 205, column: 27, scope: !1558)
!1563 = !DILocation(line: 205, column: 38, scope: !1558)
!1564 = !DILocation(line: 205, column: 45, scope: !1558)
!1565 = !DILocation(line: 205, column: 43, scope: !1558)
!1566 = !DILocation(line: 205, column: 17, scope: !1558)
!1567 = !DILocation(line: 205, column: 9, scope: !1558)
!1568 = !DILocation(line: 205, column: 20, scope: !1558)
!1569 = !DILocation(line: 205, column: 25, scope: !1558)
!1570 = !DILocation(line: 204, column: 35, scope: !1558)
!1571 = !DILocation(line: 204, column: 5, scope: !1558)
!1572 = distinct !{!1572, !1560, !1573}
!1573 = !DILocation(line: 205, column: 45, scope: !1555)
!1574 = !DILocation(line: 207, column: 12, scope: !1371)
!1575 = !DILocation(line: 207, column: 10, scope: !1371)
!1576 = !DILocation(line: 207, column: 17, scope: !1370)
!1577 = !DILocation(line: 207, column: 19, scope: !1370)
!1578 = !DILocation(line: 207, column: 5, scope: !1371)
!1579 = !DILocation(line: 209, column: 9, scope: !1369)
!1580 = !DILocation(line: 209, column: 16, scope: !1369)
!1581 = !DILocation(line: 210, column: 27, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1369, file: !74, line: 210, column: 13)
!1583 = !DILocation(line: 210, column: 19, scope: !1582)
!1584 = !DILocation(line: 210, column: 16, scope: !1582)
!1585 = !DILocation(line: 210, column: 32, scope: !1582)
!1586 = !DILocation(line: 210, column: 43, scope: !1582)
!1587 = !DILocation(line: 210, column: 30, scope: !1582)
!1588 = !DILocation(line: 210, column: 13, scope: !1369)
!1589 = !DILocation(line: 212, column: 22, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !74, line: 212, column: 13)
!1591 = distinct !DILexicalBlock(scope: !1582, file: !74, line: 211, column: 9)
!1592 = !DILocation(line: 212, column: 18, scope: !1590)
!1593 = !DILocation(line: 212, column: 27, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !74, line: 212, column: 13)
!1595 = !DILocation(line: 212, column: 31, scope: !1594)
!1596 = !DILocation(line: 212, column: 13, scope: !1590)
!1597 = !DILocation(line: 214, column: 40, scope: !1594)
!1598 = !DILocation(line: 214, column: 32, scope: !1594)
!1599 = !DILocation(line: 214, column: 45, scope: !1594)
!1600 = !DILocation(line: 214, column: 60, scope: !1594)
!1601 = !DILocation(line: 214, column: 71, scope: !1594)
!1602 = !DILocation(line: 214, column: 78, scope: !1594)
!1603 = !DILocation(line: 214, column: 76, scope: !1594)
!1604 = !DILocation(line: 214, column: 58, scope: !1594)
!1605 = !DILocation(line: 213, column: 25, scope: !1594)
!1606 = !DILocation(line: 213, column: 17, scope: !1594)
!1607 = !DILocation(line: 213, column: 30, scope: !1594)
!1608 = !DILocation(line: 213, column: 39, scope: !1594)
!1609 = !DILocation(line: 213, column: 41, scope: !1594)
!1610 = !DILocation(line: 214, column: 21, scope: !1594)
!1611 = !DILocation(line: 212, column: 49, scope: !1594)
!1612 = !DILocation(line: 212, column: 13, scope: !1594)
!1613 = distinct !{!1613, !1596, !1614}
!1614 = !DILocation(line: 214, column: 78, scope: !1590)
!1615 = !DILocation(line: 215, column: 14, scope: !1591)
!1616 = !DILocation(line: 216, column: 9, scope: !1591)
!1617 = !DILocation(line: 217, column: 5, scope: !1370)
!1618 = !DILocation(line: 217, column: 5, scope: !1369)
!1619 = !DILocation(line: 207, column: 38, scope: !1370)
!1620 = !DILocation(line: 207, column: 5, scope: !1370)
!1621 = distinct !{!1621, !1578, !1622}
!1622 = !DILocation(line: 217, column: 5, scope: !1371)
!1623 = !DILocation(line: 219, column: 12, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 219, column: 5)
!1625 = !DILocation(line: 219, column: 10, scope: !1624)
!1626 = !DILocation(line: 219, column: 17, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !74, line: 219, column: 5)
!1628 = !DILocation(line: 219, column: 19, scope: !1627)
!1629 = !DILocation(line: 219, column: 5, scope: !1624)
!1630 = !DILocation(line: 221, column: 21, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !74, line: 221, column: 13)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !74, line: 220, column: 5)
!1633 = !DILocation(line: 221, column: 13, scope: !1631)
!1634 = !DILocation(line: 221, column: 24, scope: !1631)
!1635 = !DILocation(line: 221, column: 30, scope: !1631)
!1636 = !DILocation(line: 221, column: 13, scope: !1632)
!1637 = !DILocation(line: 224, column: 17, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1631, file: !74, line: 222, column: 9)
!1639 = !DILocation(line: 224, column: 28, scope: !1638)
!1640 = !DILocation(line: 224, column: 42, scope: !1638)
!1641 = !DILocation(line: 224, column: 34, scope: !1638)
!1642 = !DILocation(line: 224, column: 45, scope: !1638)
!1643 = !DILocation(line: 224, column: 66, scope: !1638)
!1644 = !DILocation(line: 224, column: 58, scope: !1638)
!1645 = !DILocation(line: 224, column: 69, scope: !1638)
!1646 = !DILocation(line: 223, column: 31, scope: !1638)
!1647 = !DILocation(line: 223, column: 21, scope: !1638)
!1648 = !DILocation(line: 223, column: 13, scope: !1638)
!1649 = !DILocation(line: 223, column: 24, scope: !1638)
!1650 = !DILocation(line: 223, column: 29, scope: !1638)
!1651 = !DILocation(line: 225, column: 9, scope: !1638)
!1652 = !DILocation(line: 226, column: 21, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1632, file: !74, line: 226, column: 13)
!1654 = !DILocation(line: 226, column: 13, scope: !1653)
!1655 = !DILocation(line: 226, column: 24, scope: !1653)
!1656 = !DILocation(line: 226, column: 30, scope: !1653)
!1657 = !DILocation(line: 226, column: 13, scope: !1632)
!1658 = !DILocation(line: 228, column: 30, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1653, file: !74, line: 227, column: 9)
!1660 = !DILocation(line: 228, column: 41, scope: !1659)
!1661 = !DILocation(line: 229, column: 38, scope: !1659)
!1662 = !DILocation(line: 229, column: 30, scope: !1659)
!1663 = !DILocation(line: 229, column: 41, scope: !1659)
!1664 = !DILocation(line: 230, column: 46, scope: !1659)
!1665 = !DILocation(line: 230, column: 38, scope: !1659)
!1666 = !DILocation(line: 230, column: 49, scope: !1659)
!1667 = !DILocation(line: 230, column: 30, scope: !1659)
!1668 = !DILocation(line: 231, column: 54, scope: !1659)
!1669 = !DILocation(line: 231, column: 46, scope: !1659)
!1670 = !DILocation(line: 231, column: 57, scope: !1659)
!1671 = !DILocation(line: 231, column: 38, scope: !1659)
!1672 = !DILocation(line: 231, column: 64, scope: !1659)
!1673 = !DILocation(line: 231, column: 34, scope: !1659)
!1674 = !DILocation(line: 232, column: 40, scope: !1659)
!1675 = !DILocation(line: 232, column: 32, scope: !1659)
!1676 = !DILocation(line: 232, column: 43, scope: !1659)
!1677 = !DILocation(line: 228, column: 13, scope: !1659)
!1678 = !DILocation(line: 233, column: 9, scope: !1659)
!1679 = !DILocation(line: 234, column: 21, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1632, file: !74, line: 234, column: 13)
!1681 = !DILocation(line: 234, column: 13, scope: !1680)
!1682 = !DILocation(line: 234, column: 24, scope: !1680)
!1683 = !DILocation(line: 234, column: 30, scope: !1680)
!1684 = !DILocation(line: 234, column: 13, scope: !1632)
!1685 = !DILocation(line: 237, column: 17, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1680, file: !74, line: 235, column: 9)
!1687 = !DILocation(line: 237, column: 28, scope: !1686)
!1688 = !DILocation(line: 237, column: 42, scope: !1686)
!1689 = !DILocation(line: 237, column: 34, scope: !1686)
!1690 = !DILocation(line: 237, column: 45, scope: !1686)
!1691 = !DILocation(line: 237, column: 60, scope: !1686)
!1692 = !DILocation(line: 237, column: 52, scope: !1686)
!1693 = !DILocation(line: 237, column: 63, scope: !1686)
!1694 = !DILocation(line: 236, column: 13, scope: !1686)
!1695 = !DILocation(line: 238, column: 9, scope: !1686)
!1696 = !DILocation(line: 239, column: 5, scope: !1632)
!1697 = !DILocation(line: 219, column: 35, scope: !1627)
!1698 = !DILocation(line: 219, column: 5, scope: !1627)
!1699 = distinct !{!1699, !1629, !1700}
!1700 = !DILocation(line: 239, column: 5, scope: !1624)
!1701 = !DILocation(line: 242, column: 9, scope: !1374)
!1702 = !DILocation(line: 242, column: 20, scope: !1374)
!1703 = !DILocation(line: 242, column: 31, scope: !1374)
!1704 = !DILocation(line: 242, column: 9, scope: !1346)
!1705 = !DILocation(line: 244, column: 9, scope: !1373)
!1706 = !DILocation(line: 244, column: 18, scope: !1373)
!1707 = !{!1708, !1708, i64 0}
!1708 = !{!"double", !294, i64 0}
!1709 = !DILocation(line: 245, column: 9, scope: !1373)
!1710 = !DILocation(line: 245, column: 18, scope: !1373)
!1711 = !DILocation(line: 246, column: 9, scope: !1373)
!1712 = !DILocation(line: 246, column: 20, scope: !1373)
!1713 = !DILocation(line: 246, column: 31, scope: !1373)
!1714 = !DILocation(line: 247, column: 9, scope: !1373)
!1715 = !DILocation(line: 247, column: 16, scope: !1373)
!1716 = !DILocation(line: 247, column: 28, scope: !1373)
!1717 = !DILocation(line: 249, column: 13, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1373, file: !74, line: 248, column: 9)
!1719 = !DILocation(line: 249, column: 24, scope: !1718)
!1720 = !DILocation(line: 249, column: 35, scope: !1718)
!1721 = !DILocation(line: 250, column: 13, scope: !1718)
!1722 = !DILocation(line: 251, column: 22, scope: !1718)
!1723 = !DILocation(line: 251, column: 21, scope: !1718)
!1724 = !DILocation(line: 251, column: 13, scope: !1718)
!1725 = !DILocation(line: 252, column: 13, scope: !1718)
!1726 = !DILocation(line: 253, column: 40, scope: !1718)
!1727 = !DILocation(line: 253, column: 27, scope: !1718)
!1728 = !DILocation(line: 253, column: 25, scope: !1718)
!1729 = distinct !{!1729, !1714, !1730}
!1730 = !DILocation(line: 254, column: 9, scope: !1373)
!1731 = !DILocation(line: 257, column: 27, scope: !1373)
!1732 = !DILocation(line: 257, column: 19, scope: !1373)
!1733 = !DILocation(line: 257, column: 17, scope: !1373)
!1734 = !DILocation(line: 258, column: 13, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1373, file: !74, line: 258, column: 13)
!1736 = !DILocation(line: 258, column: 21, scope: !1735)
!1737 = !DILocation(line: 258, column: 13, scope: !1373)
!1738 = !DILocation(line: 261, column: 21, scope: !1735)
!1739 = !DILocation(line: 261, column: 13, scope: !1735)
!1740 = !DILocation(line: 262, column: 43, scope: !1373)
!1741 = !DILocation(line: 262, column: 41, scope: !1373)
!1742 = !DILocation(line: 262, column: 36, scope: !1373)
!1743 = !DILocation(line: 262, column: 9, scope: !1373)
!1744 = !DILocation(line: 262, column: 20, scope: !1373)
!1745 = !DILocation(line: 262, column: 31, scope: !1373)
!1746 = !DILocation(line: 263, column: 5, scope: !1374)
!1747 = !DILocation(line: 263, column: 5, scope: !1373)
!1748 = !DILocation(line: 265, column: 5, scope: !1346)
!1749 = !DILocation(line: 282, column: 14, scope: !1346)
!1750 = !DILocation(line: 282, column: 13, scope: !1346)
!1751 = !DILocation(line: 282, column: 5, scope: !1346)
!1752 = !DILocation(line: 284, column: 5, scope: !1346)
!1753 = !DILocation(line: 285, column: 18, scope: !1346)
!1754 = !DILocation(line: 285, column: 16, scope: !1346)
!1755 = !DILocation(line: 287, column: 21, scope: !1346)
!1756 = !DILocation(line: 287, column: 32, scope: !1346)
!1757 = !DILocation(line: 287, column: 39, scope: !1346)
!1758 = !DILocation(line: 287, column: 15, scope: !1346)
!1759 = !DILocation(line: 287, column: 13, scope: !1346)
!1760 = !DILocation(line: 288, column: 21, scope: !1346)
!1761 = !DILocation(line: 288, column: 32, scope: !1346)
!1762 = !DILocation(line: 288, column: 39, scope: !1346)
!1763 = !DILocation(line: 288, column: 15, scope: !1346)
!1764 = !DILocation(line: 288, column: 13, scope: !1346)
!1765 = !DILocation(line: 289, column: 21, scope: !1346)
!1766 = !DILocation(line: 289, column: 32, scope: !1346)
!1767 = !DILocation(line: 289, column: 39, scope: !1346)
!1768 = !DILocation(line: 289, column: 15, scope: !1346)
!1769 = !DILocation(line: 289, column: 13, scope: !1346)
!1770 = !DILocation(line: 290, column: 21, scope: !1346)
!1771 = !DILocation(line: 290, column: 32, scope: !1346)
!1772 = !DILocation(line: 290, column: 38, scope: !1346)
!1773 = !DILocation(line: 290, column: 15, scope: !1346)
!1774 = !DILocation(line: 290, column: 13, scope: !1346)
!1775 = !DILocation(line: 292, column: 13, scope: !1346)
!1776 = !DILocation(line: 292, column: 5, scope: !1346)
!1777 = !DILocation(line: 295, column: 22, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 293, column: 5)
!1779 = !DILocation(line: 296, column: 13, scope: !1778)
!1780 = !DILocation(line: 297, column: 13, scope: !1778)
!1781 = !DILocation(line: 300, column: 22, scope: !1778)
!1782 = !DILocation(line: 301, column: 13, scope: !1778)
!1783 = !DILocation(line: 302, column: 13, scope: !1778)
!1784 = !DILocation(line: 305, column: 22, scope: !1778)
!1785 = !DILocation(line: 306, column: 13, scope: !1778)
!1786 = !DILocation(line: 307, column: 13, scope: !1778)
!1787 = !DILocation(line: 309, column: 22, scope: !1778)
!1788 = !DILocation(line: 310, column: 13, scope: !1778)
!1789 = !DILocation(line: 311, column: 13, scope: !1778)
!1790 = !DILocation(line: 314, column: 22, scope: !1778)
!1791 = !DILocation(line: 315, column: 13, scope: !1778)
!1792 = !DILocation(line: 316, column: 13, scope: !1778)
!1793 = !DILocation(line: 318, column: 26, scope: !1778)
!1794 = !DILocation(line: 319, column: 13, scope: !1778)
!1795 = !DILocation(line: 321, column: 9, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 321, column: 9)
!1797 = !DILocation(line: 321, column: 18, scope: !1796)
!1798 = !DILocation(line: 321, column: 9, scope: !1346)
!1799 = !DILocation(line: 323, column: 16, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !74, line: 323, column: 9)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !74, line: 322, column: 5)
!1802 = !DILocation(line: 323, column: 14, scope: !1800)
!1803 = !DILocation(line: 323, column: 21, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !74, line: 323, column: 9)
!1805 = !DILocation(line: 323, column: 25, scope: !1804)
!1806 = !DILocation(line: 323, column: 23, scope: !1804)
!1807 = !DILocation(line: 323, column: 9, scope: !1800)
!1808 = !DILocation(line: 325, column: 21, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1804, file: !74, line: 324, column: 9)
!1810 = !DILocation(line: 325, column: 13, scope: !1809)
!1811 = !DILocation(line: 325, column: 24, scope: !1809)
!1812 = !DILocation(line: 325, column: 28, scope: !1809)
!1813 = !DILocation(line: 326, column: 26, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !74, line: 326, column: 17)
!1815 = !DILocation(line: 326, column: 18, scope: !1814)
!1816 = !DILocation(line: 326, column: 29, scope: !1814)
!1817 = !DILocation(line: 326, column: 35, scope: !1814)
!1818 = !DILocation(line: 327, column: 17, scope: !1814)
!1819 = !DILocation(line: 327, column: 29, scope: !1814)
!1820 = !DILocation(line: 327, column: 21, scope: !1814)
!1821 = !DILocation(line: 327, column: 32, scope: !1814)
!1822 = !DILocation(line: 327, column: 58, scope: !1814)
!1823 = !DILocation(line: 327, column: 43, scope: !1814)
!1824 = !DILocation(line: 327, column: 40, scope: !1814)
!1825 = !DILocation(line: 326, column: 17, scope: !1809)
!1826 = !DILocation(line: 330, column: 27, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1814, file: !74, line: 328, column: 13)
!1828 = !DILocation(line: 331, column: 35, scope: !1827)
!1829 = !DILocation(line: 331, column: 27, scope: !1827)
!1830 = !DILocation(line: 331, column: 38, scope: !1827)
!1831 = !DILocation(line: 332, column: 42, scope: !1827)
!1832 = !DILocation(line: 332, column: 27, scope: !1827)
!1833 = !DILocation(line: 329, column: 17, scope: !1827)
!1834 = !DILocation(line: 333, column: 25, scope: !1827)
!1835 = !DILocation(line: 333, column: 17, scope: !1827)
!1836 = !DILocation(line: 333, column: 28, scope: !1827)
!1837 = !DILocation(line: 333, column: 31, scope: !1827)
!1838 = !DILocation(line: 334, column: 13, scope: !1827)
!1839 = !DILocation(line: 335, column: 26, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1809, file: !74, line: 335, column: 17)
!1841 = !DILocation(line: 335, column: 18, scope: !1840)
!1842 = !DILocation(line: 335, column: 29, scope: !1840)
!1843 = !DILocation(line: 335, column: 35, scope: !1840)
!1844 = !DILocation(line: 336, column: 17, scope: !1840)
!1845 = !DILocation(line: 336, column: 29, scope: !1840)
!1846 = !DILocation(line: 336, column: 21, scope: !1840)
!1847 = !DILocation(line: 336, column: 32, scope: !1840)
!1848 = !DILocation(line: 336, column: 62, scope: !1840)
!1849 = !DILocation(line: 336, column: 45, scope: !1840)
!1850 = !DILocation(line: 336, column: 42, scope: !1840)
!1851 = !DILocation(line: 335, column: 17, scope: !1809)
!1852 = !DILocation(line: 339, column: 27, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1840, file: !74, line: 337, column: 13)
!1854 = !DILocation(line: 340, column: 35, scope: !1853)
!1855 = !DILocation(line: 340, column: 27, scope: !1853)
!1856 = !DILocation(line: 340, column: 38, scope: !1853)
!1857 = !DILocation(line: 341, column: 44, scope: !1853)
!1858 = !DILocation(line: 341, column: 27, scope: !1853)
!1859 = !DILocation(line: 338, column: 17, scope: !1853)
!1860 = !DILocation(line: 342, column: 25, scope: !1853)
!1861 = !DILocation(line: 342, column: 17, scope: !1853)
!1862 = !DILocation(line: 342, column: 28, scope: !1853)
!1863 = !DILocation(line: 342, column: 31, scope: !1853)
!1864 = !DILocation(line: 343, column: 13, scope: !1853)
!1865 = !DILocation(line: 344, column: 26, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1809, file: !74, line: 344, column: 17)
!1867 = !DILocation(line: 344, column: 18, scope: !1866)
!1868 = !DILocation(line: 344, column: 29, scope: !1866)
!1869 = !DILocation(line: 344, column: 35, scope: !1866)
!1870 = !DILocation(line: 345, column: 17, scope: !1866)
!1871 = !DILocation(line: 345, column: 29, scope: !1866)
!1872 = !DILocation(line: 345, column: 21, scope: !1866)
!1873 = !DILocation(line: 345, column: 32, scope: !1866)
!1874 = !DILocation(line: 345, column: 60, scope: !1866)
!1875 = !DILocation(line: 345, column: 44, scope: !1866)
!1876 = !DILocation(line: 345, column: 41, scope: !1866)
!1877 = !DILocation(line: 344, column: 17, scope: !1809)
!1878 = !DILocation(line: 348, column: 27, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1866, file: !74, line: 346, column: 13)
!1880 = !DILocation(line: 349, column: 35, scope: !1879)
!1881 = !DILocation(line: 349, column: 27, scope: !1879)
!1882 = !DILocation(line: 349, column: 38, scope: !1879)
!1883 = !DILocation(line: 350, column: 43, scope: !1879)
!1884 = !DILocation(line: 350, column: 27, scope: !1879)
!1885 = !DILocation(line: 347, column: 17, scope: !1879)
!1886 = !DILocation(line: 351, column: 25, scope: !1879)
!1887 = !DILocation(line: 351, column: 17, scope: !1879)
!1888 = !DILocation(line: 351, column: 28, scope: !1879)
!1889 = !DILocation(line: 351, column: 31, scope: !1879)
!1890 = !DILocation(line: 352, column: 13, scope: !1879)
!1891 = !DILocation(line: 353, column: 37, scope: !1809)
!1892 = !DILocation(line: 353, column: 29, scope: !1809)
!1893 = !DILocation(line: 353, column: 40, scope: !1809)
!1894 = !DILocation(line: 353, column: 26, scope: !1809)
!1895 = !DILocation(line: 354, column: 9, scope: !1809)
!1896 = !DILocation(line: 323, column: 48, scope: !1804)
!1897 = !DILocation(line: 323, column: 9, scope: !1804)
!1898 = distinct !{!1898, !1807, !1899}
!1899 = !DILocation(line: 354, column: 9, scope: !1800)
!1900 = !DILocation(line: 355, column: 5, scope: !1801)
!1901 = !DILocation(line: 356, column: 21, scope: !1346)
!1902 = !DILocation(line: 356, column: 18, scope: !1346)
!1903 = !DILocation(line: 358, column: 58, scope: !1346)
!1904 = !DILocation(line: 358, column: 69, scope: !1346)
!1905 = !DILocation(line: 358, column: 5, scope: !1346)
!1906 = !DILocation(line: 359, column: 58, scope: !1346)
!1907 = !DILocation(line: 359, column: 5, scope: !1346)
!1908 = !DILocation(line: 361, column: 55, scope: !1346)
!1909 = !DILocation(line: 361, column: 42, scope: !1346)
!1910 = !DILocation(line: 361, column: 5, scope: !1346)
!1911 = !DILocation(line: 362, column: 22, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 362, column: 9)
!1913 = !DILocation(line: 362, column: 9, scope: !1912)
!1914 = !DILocation(line: 362, column: 34, scope: !1912)
!1915 = !DILocation(line: 362, column: 9, scope: !1346)
!1916 = !DILocation(line: 364, column: 19, scope: !1912)
!1917 = !DILocation(line: 364, column: 42, scope: !1912)
!1918 = !DILocation(line: 364, column: 53, scope: !1912)
!1919 = !DILocation(line: 364, column: 40, scope: !1912)
!1920 = !DILocation(line: 365, column: 38, scope: !1912)
!1921 = !DILocation(line: 365, column: 25, scope: !1912)
!1922 = !DILocation(line: 365, column: 23, scope: !1912)
!1923 = !DILocation(line: 363, column: 9, scope: !1912)
!1924 = !DILocation(line: 373, column: 22, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 373, column: 9)
!1926 = !DILocation(line: 373, column: 9, scope: !1925)
!1927 = !DILocation(line: 373, column: 34, scope: !1925)
!1928 = !DILocation(line: 373, column: 9, scope: !1346)
!1929 = !DILocation(line: 375, column: 9, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1925, file: !74, line: 374, column: 5)
!1931 = !DILocation(line: 377, column: 21, scope: !1930)
!1932 = !DILocation(line: 378, column: 5, scope: !1930)
!1933 = !DILocation(line: 381, column: 30, scope: !1346)
!1934 = !DILocation(line: 381, column: 53, scope: !1346)
!1935 = !DILocation(line: 381, column: 64, scope: !1346)
!1936 = !DILocation(line: 381, column: 51, scope: !1346)
!1937 = !DILocation(line: 380, column: 5, scope: !1346)
!1938 = !DILocation(line: 382, column: 5, scope: !1346)
!1939 = !DILocation(line: 383, column: 5, scope: !1346)
!1940 = !DILocation(line: 387, column: 5, scope: !1346)
!1941 = !DILocation(line: 389, column: 46, scope: !1346)
!1942 = !DILocation(line: 389, column: 5, scope: !1346)
!1943 = !DILocation(line: 390, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 390, column: 9)
!1945 = !DILocation(line: 390, column: 20, scope: !1944)
!1946 = !DILocation(line: 390, column: 26, scope: !1944)
!1947 = !DILocation(line: 390, column: 9, scope: !1346)
!1948 = !DILocation(line: 391, column: 16, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !74, line: 391, column: 9)
!1950 = !DILocation(line: 391, column: 14, scope: !1949)
!1951 = !DILocation(line: 391, column: 21, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !74, line: 391, column: 9)
!1953 = !DILocation(line: 391, column: 25, scope: !1952)
!1954 = !DILocation(line: 391, column: 23, scope: !1952)
!1955 = !DILocation(line: 391, column: 9, scope: !1949)
!1956 = !DILocation(line: 392, column: 55, scope: !1952)
!1957 = !DILocation(line: 392, column: 66, scope: !1952)
!1958 = !DILocation(line: 392, column: 58, scope: !1952)
!1959 = !DILocation(line: 392, column: 69, scope: !1952)
!1960 = !DILocation(line: 392, column: 13, scope: !1952)
!1961 = !DILocation(line: 391, column: 48, scope: !1952)
!1962 = !DILocation(line: 391, column: 9, scope: !1952)
!1963 = distinct !{!1963, !1955, !1964}
!1964 = !DILocation(line: 392, column: 76, scope: !1949)
!1965 = !DILocation(line: 393, column: 9, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 393, column: 9)
!1967 = !DILocation(line: 393, column: 20, scope: !1966)
!1968 = !DILocation(line: 393, column: 26, scope: !1966)
!1969 = !DILocation(line: 393, column: 9, scope: !1346)
!1970 = !DILocation(line: 394, column: 16, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1966, file: !74, line: 394, column: 9)
!1972 = !DILocation(line: 394, column: 14, scope: !1971)
!1973 = !DILocation(line: 394, column: 21, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !74, line: 394, column: 9)
!1975 = !DILocation(line: 394, column: 25, scope: !1974)
!1976 = !DILocation(line: 394, column: 23, scope: !1974)
!1977 = !DILocation(line: 394, column: 9, scope: !1971)
!1978 = !DILocation(line: 395, column: 55, scope: !1974)
!1979 = !DILocation(line: 395, column: 66, scope: !1974)
!1980 = !DILocation(line: 395, column: 58, scope: !1974)
!1981 = !DILocation(line: 395, column: 69, scope: !1974)
!1982 = !DILocation(line: 395, column: 13, scope: !1974)
!1983 = !DILocation(line: 394, column: 48, scope: !1974)
!1984 = !DILocation(line: 394, column: 9, scope: !1974)
!1985 = distinct !{!1985, !1977, !1986}
!1986 = !DILocation(line: 395, column: 78, scope: !1971)
!1987 = !DILocation(line: 396, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 396, column: 9)
!1989 = !DILocation(line: 396, column: 20, scope: !1988)
!1990 = !DILocation(line: 396, column: 26, scope: !1988)
!1991 = !DILocation(line: 396, column: 9, scope: !1346)
!1992 = !DILocation(line: 397, column: 16, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !74, line: 397, column: 9)
!1994 = !DILocation(line: 397, column: 14, scope: !1993)
!1995 = !DILocation(line: 397, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !74, line: 397, column: 9)
!1997 = !DILocation(line: 397, column: 25, scope: !1996)
!1998 = !DILocation(line: 397, column: 23, scope: !1996)
!1999 = !DILocation(line: 397, column: 9, scope: !1993)
!2000 = !DILocation(line: 398, column: 55, scope: !1996)
!2001 = !DILocation(line: 398, column: 66, scope: !1996)
!2002 = !DILocation(line: 398, column: 58, scope: !1996)
!2003 = !DILocation(line: 398, column: 69, scope: !1996)
!2004 = !DILocation(line: 398, column: 13, scope: !1996)
!2005 = !DILocation(line: 397, column: 48, scope: !1996)
!2006 = !DILocation(line: 397, column: 9, scope: !1996)
!2007 = distinct !{!2007, !1999, !2008}
!2008 = !DILocation(line: 398, column: 77, scope: !1993)
!2009 = !DILocation(line: 399, column: 12, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 399, column: 5)
!2011 = !DILocation(line: 399, column: 10, scope: !2010)
!2012 = !DILocation(line: 399, column: 17, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !74, line: 399, column: 5)
!2014 = !DILocation(line: 399, column: 21, scope: !2013)
!2015 = !DILocation(line: 399, column: 19, scope: !2013)
!2016 = !DILocation(line: 399, column: 5, scope: !2010)
!2017 = !DILocation(line: 400, column: 51, scope: !2013)
!2018 = !DILocation(line: 400, column: 62, scope: !2013)
!2019 = !DILocation(line: 400, column: 54, scope: !2013)
!2020 = !DILocation(line: 400, column: 65, scope: !2013)
!2021 = !DILocation(line: 400, column: 9, scope: !2013)
!2022 = !DILocation(line: 399, column: 44, scope: !2013)
!2023 = !DILocation(line: 399, column: 5, scope: !2013)
!2024 = distinct !{!2024, !2016, !2025}
!2025 = !DILocation(line: 400, column: 68, scope: !2010)
!2026 = !DILocation(line: 401, column: 9, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 401, column: 9)
!2028 = !DILocation(line: 401, column: 22, scope: !2027)
!2029 = !DILocation(line: 401, column: 9, scope: !1346)
!2030 = !DILocation(line: 403, column: 9, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !74, line: 402, column: 5)
!2032 = !DILocation(line: 407, column: 13, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2031, file: !74, line: 407, column: 13)
!2034 = !DILocation(line: 407, column: 22, scope: !2033)
!2035 = !DILocation(line: 407, column: 13, scope: !2031)
!2036 = !DILocation(line: 410, column: 23, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !74, line: 408, column: 9)
!2038 = !DILocation(line: 410, column: 46, scope: !2037)
!2039 = !DILocation(line: 410, column: 57, scope: !2037)
!2040 = !DILocation(line: 410, column: 44, scope: !2037)
!2041 = !DILocation(line: 411, column: 42, scope: !2037)
!2042 = !DILocation(line: 411, column: 29, scope: !2037)
!2043 = !DILocation(line: 411, column: 27, scope: !2037)
!2044 = !DILocation(line: 409, column: 13, scope: !2037)
!2045 = !DILocation(line: 415, column: 13, scope: !2037)
!2046 = !DILocation(line: 423, column: 13, scope: !2037)
!2047 = !DILocation(line: 424, column: 9, scope: !2037)
!2048 = !DILocation(line: 426, column: 5, scope: !2031)
!2049 = !DILocation(line: 427, column: 9, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 427, column: 9)
!2051 = !DILocation(line: 427, column: 22, scope: !2050)
!2052 = !DILocation(line: 427, column: 9, scope: !1346)
!2053 = !DILocation(line: 428, column: 9, scope: !2050)
!2054 = !DILocation(line: 429, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1346, file: !74, line: 429, column: 9)
!2056 = !DILocation(line: 429, column: 22, scope: !2055)
!2057 = !DILocation(line: 429, column: 9, scope: !1346)
!2058 = !DILocation(line: 430, column: 9, scope: !2055)
!2059 = !DILocation(line: 439, column: 21, scope: !1346)
!2060 = !DILocation(line: 439, column: 32, scope: !1346)
!2061 = !DILocation(line: 439, column: 5, scope: !1346)
!2062 = !DILocation(line: 442, column: 1, scope: !1346)
!2063 = !DILocation(line: 441, column: 5, scope: !1346)
!2064 = distinct !DISubprogram(name: "core_bench_matrix", scope: !2065, file: !2065, line: 92, type: !2066, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2076)
!2065 = !DIFile(filename: "src/coremark/core_matrix.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!53, !2068, !12, !53}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_params", file: !8, line: 119, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MAT_PARAMS_S", file: !8, line: 113, size: 128, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !2070, file: !8, line: 115, baseType: !43, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !2070, file: !8, line: 116, baseType: !45, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !2070, file: !8, line: 117, baseType: !45, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !2070, file: !8, line: 118, baseType: !49, size: 32, offset: 96)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084}
!2077 = !DILocalVariable(name: "p", arg: 1, scope: !2064, file: !2065, line: 92, type: !2068)
!2078 = !DILocalVariable(name: "seed", arg: 2, scope: !2064, file: !2065, line: 92, type: !12)
!2079 = !DILocalVariable(name: "crc", arg: 3, scope: !2064, file: !2065, line: 92, type: !53)
!2080 = !DILocalVariable(name: "N", scope: !2064, file: !2065, line: 94, type: !23)
!2081 = !DILocalVariable(name: "C", scope: !2064, file: !2065, line: 95, type: !49)
!2082 = !DILocalVariable(name: "A", scope: !2064, file: !2065, line: 96, type: !45)
!2083 = !DILocalVariable(name: "B", scope: !2064, file: !2065, line: 97, type: !45)
!2084 = !DILocalVariable(name: "val", scope: !2064, file: !2065, line: 98, type: !46)
!2085 = !DILocation(line: 92, column: 31, scope: !2064)
!2086 = !DILocation(line: 92, column: 41, scope: !2064)
!2087 = !DILocation(line: 92, column: 54, scope: !2064)
!2088 = !DILocation(line: 94, column: 5, scope: !2064)
!2089 = !DILocation(line: 94, column: 13, scope: !2064)
!2090 = !DILocation(line: 94, column: 19, scope: !2064)
!2091 = !DILocation(line: 94, column: 22, scope: !2064)
!2092 = !{!346, !345, i64 0}
!2093 = !DILocation(line: 95, column: 5, scope: !2064)
!2094 = !DILocation(line: 95, column: 13, scope: !2064)
!2095 = !DILocation(line: 95, column: 19, scope: !2064)
!2096 = !DILocation(line: 95, column: 22, scope: !2064)
!2097 = !{!346, !293, i64 12}
!2098 = !DILocation(line: 96, column: 5, scope: !2064)
!2099 = !DILocation(line: 96, column: 13, scope: !2064)
!2100 = !DILocation(line: 96, column: 19, scope: !2064)
!2101 = !DILocation(line: 96, column: 22, scope: !2064)
!2102 = !{!346, !293, i64 4}
!2103 = !DILocation(line: 97, column: 5, scope: !2064)
!2104 = !DILocation(line: 97, column: 13, scope: !2064)
!2105 = !DILocation(line: 97, column: 19, scope: !2064)
!2106 = !DILocation(line: 97, column: 22, scope: !2064)
!2107 = !{!346, !293, i64 8}
!2108 = !DILocation(line: 98, column: 5, scope: !2064)
!2109 = !DILocation(line: 98, column: 13, scope: !2064)
!2110 = !DILocation(line: 98, column: 27, scope: !2064)
!2111 = !DILocation(line: 100, column: 29, scope: !2064)
!2112 = !DILocation(line: 100, column: 32, scope: !2064)
!2113 = !DILocation(line: 100, column: 35, scope: !2064)
!2114 = !DILocation(line: 100, column: 38, scope: !2064)
!2115 = !DILocation(line: 100, column: 41, scope: !2064)
!2116 = !DILocation(line: 100, column: 17, scope: !2064)
!2117 = !DILocation(line: 100, column: 47, scope: !2064)
!2118 = !DILocation(line: 100, column: 11, scope: !2064)
!2119 = !DILocation(line: 100, column: 9, scope: !2064)
!2120 = !DILocation(line: 102, column: 12, scope: !2064)
!2121 = !DILocation(line: 103, column: 1, scope: !2064)
!2122 = !DILocation(line: 102, column: 5, scope: !2064)
!2123 = distinct !DISubprogram(name: "matrix_test", scope: !2065, file: !2065, line: 130, type: !2124, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!12, !23, !49, !45, !45, !46}
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2127 = !DILocalVariable(name: "N", arg: 1, scope: !2123, file: !2065, line: 130, type: !23)
!2128 = !DILocalVariable(name: "C", arg: 2, scope: !2123, file: !2065, line: 130, type: !49)
!2129 = !DILocalVariable(name: "A", arg: 3, scope: !2123, file: !2065, line: 130, type: !45)
!2130 = !DILocalVariable(name: "B", arg: 4, scope: !2123, file: !2065, line: 130, type: !45)
!2131 = !DILocalVariable(name: "val", arg: 5, scope: !2123, file: !2065, line: 130, type: !46)
!2132 = !DILocalVariable(name: "crc", scope: !2123, file: !2065, line: 132, type: !53)
!2133 = !DILocalVariable(name: "clipval", scope: !2123, file: !2065, line: 133, type: !46)
!2134 = !DILocation(line: 130, column: 20, scope: !2123)
!2135 = !DILocation(line: 130, column: 31, scope: !2123)
!2136 = !DILocation(line: 130, column: 42, scope: !2123)
!2137 = !DILocation(line: 130, column: 53, scope: !2123)
!2138 = !DILocation(line: 130, column: 63, scope: !2123)
!2139 = !DILocation(line: 132, column: 5, scope: !2123)
!2140 = !DILocation(line: 132, column: 12, scope: !2123)
!2141 = !DILocation(line: 133, column: 5, scope: !2123)
!2142 = !DILocation(line: 133, column: 12, scope: !2123)
!2143 = !DILocation(line: 133, column: 22, scope: !2123)
!2144 = !DILocation(line: 135, column: 22, scope: !2123)
!2145 = !DILocation(line: 135, column: 25, scope: !2123)
!2146 = !DILocation(line: 135, column: 28, scope: !2123)
!2147 = !DILocation(line: 135, column: 5, scope: !2123)
!2148 = !DILocation(line: 139, column: 22, scope: !2123)
!2149 = !DILocation(line: 139, column: 25, scope: !2123)
!2150 = !DILocation(line: 139, column: 28, scope: !2123)
!2151 = !DILocation(line: 139, column: 31, scope: !2123)
!2152 = !DILocation(line: 139, column: 5, scope: !2123)
!2153 = !DILocation(line: 140, column: 28, scope: !2123)
!2154 = !DILocation(line: 140, column: 31, scope: !2123)
!2155 = !DILocation(line: 140, column: 34, scope: !2123)
!2156 = !DILocation(line: 140, column: 17, scope: !2123)
!2157 = !DILocation(line: 140, column: 44, scope: !2123)
!2158 = !DILocation(line: 140, column: 11, scope: !2123)
!2159 = !DILocation(line: 140, column: 9, scope: !2123)
!2160 = !DILocation(line: 144, column: 21, scope: !2123)
!2161 = !DILocation(line: 144, column: 24, scope: !2123)
!2162 = !DILocation(line: 144, column: 27, scope: !2123)
!2163 = !DILocation(line: 144, column: 30, scope: !2123)
!2164 = !DILocation(line: 144, column: 5, scope: !2123)
!2165 = !DILocation(line: 145, column: 28, scope: !2123)
!2166 = !DILocation(line: 145, column: 31, scope: !2123)
!2167 = !DILocation(line: 145, column: 34, scope: !2123)
!2168 = !DILocation(line: 145, column: 17, scope: !2123)
!2169 = !DILocation(line: 145, column: 44, scope: !2123)
!2170 = !DILocation(line: 145, column: 11, scope: !2123)
!2171 = !DILocation(line: 145, column: 9, scope: !2123)
!2172 = !DILocation(line: 149, column: 23, scope: !2123)
!2173 = !DILocation(line: 149, column: 26, scope: !2123)
!2174 = !DILocation(line: 149, column: 29, scope: !2123)
!2175 = !DILocation(line: 149, column: 32, scope: !2123)
!2176 = !DILocation(line: 149, column: 5, scope: !2123)
!2177 = !DILocation(line: 150, column: 28, scope: !2123)
!2178 = !DILocation(line: 150, column: 31, scope: !2123)
!2179 = !DILocation(line: 150, column: 34, scope: !2123)
!2180 = !DILocation(line: 150, column: 17, scope: !2123)
!2181 = !DILocation(line: 150, column: 44, scope: !2123)
!2182 = !DILocation(line: 150, column: 11, scope: !2123)
!2183 = !DILocation(line: 150, column: 9, scope: !2123)
!2184 = !DILocation(line: 154, column: 34, scope: !2123)
!2185 = !DILocation(line: 154, column: 37, scope: !2123)
!2186 = !DILocation(line: 154, column: 40, scope: !2123)
!2187 = !DILocation(line: 154, column: 43, scope: !2123)
!2188 = !DILocation(line: 154, column: 5, scope: !2123)
!2189 = !DILocation(line: 155, column: 28, scope: !2123)
!2190 = !DILocation(line: 155, column: 31, scope: !2123)
!2191 = !DILocation(line: 155, column: 34, scope: !2123)
!2192 = !DILocation(line: 155, column: 17, scope: !2123)
!2193 = !DILocation(line: 155, column: 44, scope: !2123)
!2194 = !DILocation(line: 155, column: 11, scope: !2123)
!2195 = !DILocation(line: 155, column: 9, scope: !2123)
!2196 = !DILocation(line: 160, column: 22, scope: !2123)
!2197 = !DILocation(line: 160, column: 25, scope: !2123)
!2198 = !DILocation(line: 160, column: 29, scope: !2123)
!2199 = !DILocation(line: 160, column: 28, scope: !2123)
!2200 = !DILocation(line: 160, column: 5, scope: !2123)
!2201 = !DILocation(line: 161, column: 12, scope: !2123)
!2202 = !DILocation(line: 162, column: 1, scope: !2123)
!2203 = !DILocation(line: 161, column: 5, scope: !2123)
!2204 = distinct !DISubprogram(name: "matrix_add_const", scope: !2065, file: !2065, line: 285, type: !2205, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !23, !45, !46}
!2207 = !{!2208, !2209, !2210, !2211, !2212}
!2208 = !DILocalVariable(name: "N", arg: 1, scope: !2204, file: !2065, line: 285, type: !23)
!2209 = !DILocalVariable(name: "A", arg: 2, scope: !2204, file: !2065, line: 285, type: !45)
!2210 = !DILocalVariable(name: "val", arg: 3, scope: !2204, file: !2065, line: 285, type: !46)
!2211 = !DILocalVariable(name: "i", scope: !2204, file: !2065, line: 287, type: !23)
!2212 = !DILocalVariable(name: "j", scope: !2204, file: !2065, line: 287, type: !23)
!2213 = !DILocation(line: 285, column: 25, scope: !2204)
!2214 = !DILocation(line: 285, column: 36, scope: !2204)
!2215 = !DILocation(line: 285, column: 46, scope: !2204)
!2216 = !DILocation(line: 287, column: 5, scope: !2204)
!2217 = !DILocation(line: 287, column: 12, scope: !2204)
!2218 = !DILocation(line: 287, column: 15, scope: !2204)
!2219 = !DILocation(line: 288, column: 12, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2204, file: !2065, line: 288, column: 5)
!2221 = !DILocation(line: 288, column: 10, scope: !2220)
!2222 = !DILocation(line: 288, column: 17, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2220, file: !2065, line: 288, column: 5)
!2224 = !DILocation(line: 288, column: 21, scope: !2223)
!2225 = !DILocation(line: 288, column: 19, scope: !2223)
!2226 = !DILocation(line: 288, column: 5, scope: !2220)
!2227 = !DILocation(line: 290, column: 16, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !2065, line: 290, column: 9)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !2065, line: 289, column: 5)
!2230 = !DILocation(line: 290, column: 14, scope: !2228)
!2231 = !DILocation(line: 290, column: 21, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !2065, line: 290, column: 9)
!2233 = !DILocation(line: 290, column: 25, scope: !2232)
!2234 = !DILocation(line: 290, column: 23, scope: !2232)
!2235 = !DILocation(line: 290, column: 9, scope: !2228)
!2236 = !DILocation(line: 292, column: 29, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !2065, line: 291, column: 9)
!2238 = !DILocation(line: 292, column: 13, scope: !2237)
!2239 = !DILocation(line: 292, column: 15, scope: !2237)
!2240 = !DILocation(line: 292, column: 19, scope: !2237)
!2241 = !DILocation(line: 292, column: 17, scope: !2237)
!2242 = !DILocation(line: 292, column: 23, scope: !2237)
!2243 = !DILocation(line: 292, column: 21, scope: !2237)
!2244 = !DILocation(line: 292, column: 26, scope: !2237)
!2245 = !DILocation(line: 293, column: 9, scope: !2237)
!2246 = !DILocation(line: 290, column: 29, scope: !2232)
!2247 = !DILocation(line: 290, column: 9, scope: !2232)
!2248 = distinct !{!2248, !2235, !2249}
!2249 = !DILocation(line: 293, column: 9, scope: !2228)
!2250 = !DILocation(line: 294, column: 5, scope: !2229)
!2251 = !DILocation(line: 288, column: 25, scope: !2223)
!2252 = !DILocation(line: 288, column: 5, scope: !2223)
!2253 = distinct !{!2253, !2226, !2254}
!2254 = !DILocation(line: 294, column: 5, scope: !2220)
!2255 = !DILocation(line: 295, column: 1, scope: !2204)
!2256 = distinct !DISubprogram(name: "matrix_mul_const", scope: !2065, file: !2065, line: 269, type: !2257, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !23, !49, !45, !46}
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265}
!2260 = !DILocalVariable(name: "N", arg: 1, scope: !2256, file: !2065, line: 269, type: !23)
!2261 = !DILocalVariable(name: "C", arg: 2, scope: !2256, file: !2065, line: 269, type: !49)
!2262 = !DILocalVariable(name: "A", arg: 3, scope: !2256, file: !2065, line: 269, type: !45)
!2263 = !DILocalVariable(name: "val", arg: 4, scope: !2256, file: !2065, line: 269, type: !46)
!2264 = !DILocalVariable(name: "i", scope: !2256, file: !2065, line: 271, type: !23)
!2265 = !DILocalVariable(name: "j", scope: !2256, file: !2065, line: 271, type: !23)
!2266 = !DILocation(line: 269, column: 25, scope: !2256)
!2267 = !DILocation(line: 269, column: 36, scope: !2256)
!2268 = !DILocation(line: 269, column: 47, scope: !2256)
!2269 = !DILocation(line: 269, column: 57, scope: !2256)
!2270 = !DILocation(line: 271, column: 5, scope: !2256)
!2271 = !DILocation(line: 271, column: 12, scope: !2256)
!2272 = !DILocation(line: 271, column: 15, scope: !2256)
!2273 = !DILocation(line: 272, column: 12, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2256, file: !2065, line: 272, column: 5)
!2275 = !DILocation(line: 272, column: 10, scope: !2274)
!2276 = !DILocation(line: 272, column: 17, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !2065, line: 272, column: 5)
!2278 = !DILocation(line: 272, column: 21, scope: !2277)
!2279 = !DILocation(line: 272, column: 19, scope: !2277)
!2280 = !DILocation(line: 272, column: 5, scope: !2274)
!2281 = !DILocation(line: 274, column: 16, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !2065, line: 274, column: 9)
!2283 = distinct !DILexicalBlock(scope: !2277, file: !2065, line: 273, column: 5)
!2284 = !DILocation(line: 274, column: 14, scope: !2282)
!2285 = !DILocation(line: 274, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !2065, line: 274, column: 9)
!2287 = !DILocation(line: 274, column: 25, scope: !2286)
!2288 = !DILocation(line: 274, column: 23, scope: !2286)
!2289 = !DILocation(line: 274, column: 9, scope: !2282)
!2290 = !DILocation(line: 276, column: 36, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2286, file: !2065, line: 275, column: 9)
!2292 = !DILocation(line: 276, column: 38, scope: !2291)
!2293 = !DILocation(line: 276, column: 42, scope: !2291)
!2294 = !DILocation(line: 276, column: 40, scope: !2291)
!2295 = !DILocation(line: 276, column: 46, scope: !2291)
!2296 = !DILocation(line: 276, column: 44, scope: !2291)
!2297 = !DILocation(line: 276, column: 28, scope: !2291)
!2298 = !DILocation(line: 276, column: 59, scope: !2291)
!2299 = !DILocation(line: 276, column: 51, scope: !2291)
!2300 = !DILocation(line: 276, column: 49, scope: !2291)
!2301 = !DILocation(line: 276, column: 13, scope: !2291)
!2302 = !DILocation(line: 276, column: 15, scope: !2291)
!2303 = !DILocation(line: 276, column: 19, scope: !2291)
!2304 = !DILocation(line: 276, column: 17, scope: !2291)
!2305 = !DILocation(line: 276, column: 23, scope: !2291)
!2306 = !DILocation(line: 276, column: 21, scope: !2291)
!2307 = !DILocation(line: 276, column: 26, scope: !2291)
!2308 = !DILocation(line: 277, column: 9, scope: !2291)
!2309 = !DILocation(line: 274, column: 29, scope: !2286)
!2310 = !DILocation(line: 274, column: 9, scope: !2286)
!2311 = distinct !{!2311, !2289, !2312}
!2312 = !DILocation(line: 277, column: 9, scope: !2282)
!2313 = !DILocation(line: 278, column: 5, scope: !2283)
!2314 = !DILocation(line: 272, column: 25, scope: !2277)
!2315 = !DILocation(line: 272, column: 5, scope: !2277)
!2316 = distinct !{!2316, !2280, !2317}
!2317 = !DILocation(line: 278, column: 5, scope: !2274)
!2318 = !DILocation(line: 279, column: 1, scope: !2256)
!2319 = distinct !DISubprogram(name: "matrix_sum", scope: !2065, file: !2065, line: 238, type: !2320, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!12, !23, !49, !46}
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2323 = !DILocalVariable(name: "N", arg: 1, scope: !2319, file: !2065, line: 238, type: !23)
!2324 = !DILocalVariable(name: "C", arg: 2, scope: !2319, file: !2065, line: 238, type: !49)
!2325 = !DILocalVariable(name: "clipval", arg: 3, scope: !2319, file: !2065, line: 238, type: !46)
!2326 = !DILocalVariable(name: "tmp", scope: !2319, file: !2065, line: 240, type: !50)
!2327 = !DILocalVariable(name: "prev", scope: !2319, file: !2065, line: 240, type: !50)
!2328 = !DILocalVariable(name: "cur", scope: !2319, file: !2065, line: 240, type: !50)
!2329 = !DILocalVariable(name: "ret", scope: !2319, file: !2065, line: 241, type: !12)
!2330 = !DILocalVariable(name: "i", scope: !2319, file: !2065, line: 242, type: !23)
!2331 = !DILocalVariable(name: "j", scope: !2319, file: !2065, line: 242, type: !23)
!2332 = !DILocation(line: 238, column: 19, scope: !2319)
!2333 = !DILocation(line: 238, column: 30, scope: !2319)
!2334 = !DILocation(line: 238, column: 40, scope: !2319)
!2335 = !DILocation(line: 240, column: 5, scope: !2319)
!2336 = !DILocation(line: 240, column: 12, scope: !2319)
!2337 = !DILocation(line: 240, column: 21, scope: !2319)
!2338 = !DILocation(line: 240, column: 31, scope: !2319)
!2339 = !DILocation(line: 241, column: 5, scope: !2319)
!2340 = !DILocation(line: 241, column: 12, scope: !2319)
!2341 = !DILocation(line: 242, column: 5, scope: !2319)
!2342 = !DILocation(line: 242, column: 12, scope: !2319)
!2343 = !DILocation(line: 242, column: 15, scope: !2319)
!2344 = !DILocation(line: 243, column: 12, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2319, file: !2065, line: 243, column: 5)
!2346 = !DILocation(line: 243, column: 10, scope: !2345)
!2347 = !DILocation(line: 243, column: 17, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !2065, line: 243, column: 5)
!2349 = !DILocation(line: 243, column: 21, scope: !2348)
!2350 = !DILocation(line: 243, column: 19, scope: !2348)
!2351 = !DILocation(line: 243, column: 5, scope: !2345)
!2352 = !DILocation(line: 245, column: 16, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !2065, line: 245, column: 9)
!2354 = distinct !DILexicalBlock(scope: !2348, file: !2065, line: 244, column: 5)
!2355 = !DILocation(line: 245, column: 14, scope: !2353)
!2356 = !DILocation(line: 245, column: 21, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !2065, line: 245, column: 9)
!2358 = !DILocation(line: 245, column: 25, scope: !2357)
!2359 = !DILocation(line: 245, column: 23, scope: !2357)
!2360 = !DILocation(line: 245, column: 9, scope: !2353)
!2361 = !DILocation(line: 247, column: 19, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !2065, line: 246, column: 9)
!2363 = !DILocation(line: 247, column: 21, scope: !2362)
!2364 = !DILocation(line: 247, column: 25, scope: !2362)
!2365 = !DILocation(line: 247, column: 23, scope: !2362)
!2366 = !DILocation(line: 247, column: 29, scope: !2362)
!2367 = !DILocation(line: 247, column: 27, scope: !2362)
!2368 = !DILocation(line: 247, column: 17, scope: !2362)
!2369 = !DILocation(line: 248, column: 20, scope: !2362)
!2370 = !DILocation(line: 248, column: 17, scope: !2362)
!2371 = !DILocation(line: 249, column: 17, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2362, file: !2065, line: 249, column: 17)
!2373 = !DILocation(line: 249, column: 23, scope: !2372)
!2374 = !DILocation(line: 249, column: 21, scope: !2372)
!2375 = !DILocation(line: 249, column: 17, scope: !2362)
!2376 = !DILocation(line: 251, column: 21, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !2065, line: 250, column: 13)
!2378 = !DILocation(line: 252, column: 21, scope: !2377)
!2379 = !DILocation(line: 253, column: 13, scope: !2377)
!2380 = !DILocation(line: 256, column: 25, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2372, file: !2065, line: 255, column: 13)
!2382 = !DILocation(line: 256, column: 31, scope: !2381)
!2383 = !DILocation(line: 256, column: 29, scope: !2381)
!2384 = !DILocation(line: 256, column: 24, scope: !2381)
!2385 = !DILocation(line: 256, column: 21, scope: !2381)
!2386 = !DILocation(line: 258, column: 20, scope: !2362)
!2387 = !DILocation(line: 258, column: 18, scope: !2362)
!2388 = !DILocation(line: 259, column: 9, scope: !2362)
!2389 = !DILocation(line: 245, column: 29, scope: !2357)
!2390 = !DILocation(line: 245, column: 9, scope: !2357)
!2391 = distinct !{!2391, !2360, !2392}
!2392 = !DILocation(line: 259, column: 9, scope: !2353)
!2393 = !DILocation(line: 260, column: 5, scope: !2354)
!2394 = !DILocation(line: 243, column: 25, scope: !2348)
!2395 = !DILocation(line: 243, column: 5, scope: !2348)
!2396 = distinct !{!2396, !2351, !2397}
!2397 = !DILocation(line: 260, column: 5, scope: !2345)
!2398 = !DILocation(line: 261, column: 12, scope: !2319)
!2399 = !DILocation(line: 262, column: 1, scope: !2319)
!2400 = !DILocation(line: 261, column: 5, scope: !2319)
!2401 = distinct !DISubprogram(name: "matrix_mul_vect", scope: !2065, file: !2065, line: 303, type: !2402, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !23, !49, !45, !45}
!2404 = !{!2405, !2406, !2407, !2408, !2409, !2410}
!2405 = !DILocalVariable(name: "N", arg: 1, scope: !2401, file: !2065, line: 303, type: !23)
!2406 = !DILocalVariable(name: "C", arg: 2, scope: !2401, file: !2065, line: 303, type: !49)
!2407 = !DILocalVariable(name: "A", arg: 3, scope: !2401, file: !2065, line: 303, type: !45)
!2408 = !DILocalVariable(name: "B", arg: 4, scope: !2401, file: !2065, line: 303, type: !45)
!2409 = !DILocalVariable(name: "i", scope: !2401, file: !2065, line: 305, type: !23)
!2410 = !DILocalVariable(name: "j", scope: !2401, file: !2065, line: 305, type: !23)
!2411 = !DILocation(line: 303, column: 24, scope: !2401)
!2412 = !DILocation(line: 303, column: 35, scope: !2401)
!2413 = !DILocation(line: 303, column: 46, scope: !2401)
!2414 = !DILocation(line: 303, column: 57, scope: !2401)
!2415 = !DILocation(line: 305, column: 5, scope: !2401)
!2416 = !DILocation(line: 305, column: 12, scope: !2401)
!2417 = !DILocation(line: 305, column: 15, scope: !2401)
!2418 = !DILocation(line: 306, column: 12, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2401, file: !2065, line: 306, column: 5)
!2420 = !DILocation(line: 306, column: 10, scope: !2419)
!2421 = !DILocation(line: 306, column: 17, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !2065, line: 306, column: 5)
!2423 = !DILocation(line: 306, column: 21, scope: !2422)
!2424 = !DILocation(line: 306, column: 19, scope: !2422)
!2425 = !DILocation(line: 306, column: 5, scope: !2419)
!2426 = !DILocation(line: 308, column: 9, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !2065, line: 307, column: 5)
!2428 = !DILocation(line: 308, column: 11, scope: !2427)
!2429 = !DILocation(line: 308, column: 14, scope: !2427)
!2430 = !DILocation(line: 309, column: 16, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !2065, line: 309, column: 9)
!2432 = !DILocation(line: 309, column: 14, scope: !2431)
!2433 = !DILocation(line: 309, column: 21, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2431, file: !2065, line: 309, column: 9)
!2435 = !DILocation(line: 309, column: 25, scope: !2434)
!2436 = !DILocation(line: 309, column: 23, scope: !2434)
!2437 = !DILocation(line: 309, column: 9, scope: !2431)
!2438 = !DILocation(line: 311, column: 29, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2434, file: !2065, line: 310, column: 9)
!2440 = !DILocation(line: 311, column: 31, scope: !2439)
!2441 = !DILocation(line: 311, column: 35, scope: !2439)
!2442 = !DILocation(line: 311, column: 33, scope: !2439)
!2443 = !DILocation(line: 311, column: 39, scope: !2439)
!2444 = !DILocation(line: 311, column: 37, scope: !2439)
!2445 = !DILocation(line: 311, column: 21, scope: !2439)
!2446 = !DILocation(line: 311, column: 52, scope: !2439)
!2447 = !DILocation(line: 311, column: 54, scope: !2439)
!2448 = !DILocation(line: 311, column: 44, scope: !2439)
!2449 = !DILocation(line: 311, column: 42, scope: !2439)
!2450 = !DILocation(line: 311, column: 13, scope: !2439)
!2451 = !DILocation(line: 311, column: 15, scope: !2439)
!2452 = !DILocation(line: 311, column: 18, scope: !2439)
!2453 = !DILocation(line: 312, column: 9, scope: !2439)
!2454 = !DILocation(line: 309, column: 29, scope: !2434)
!2455 = !DILocation(line: 309, column: 9, scope: !2434)
!2456 = distinct !{!2456, !2437, !2457}
!2457 = !DILocation(line: 312, column: 9, scope: !2431)
!2458 = !DILocation(line: 313, column: 5, scope: !2427)
!2459 = !DILocation(line: 306, column: 25, scope: !2422)
!2460 = !DILocation(line: 306, column: 5, scope: !2422)
!2461 = distinct !{!2461, !2425, !2462}
!2462 = !DILocation(line: 313, column: 5, scope: !2419)
!2463 = !DILocation(line: 314, column: 1, scope: !2401)
!2464 = distinct !DISubprogram(name: "matrix_mul_matrix", scope: !2065, file: !2065, line: 322, type: !2402, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2465)
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2466 = !DILocalVariable(name: "N", arg: 1, scope: !2464, file: !2065, line: 322, type: !23)
!2467 = !DILocalVariable(name: "C", arg: 2, scope: !2464, file: !2065, line: 322, type: !49)
!2468 = !DILocalVariable(name: "A", arg: 3, scope: !2464, file: !2065, line: 322, type: !45)
!2469 = !DILocalVariable(name: "B", arg: 4, scope: !2464, file: !2065, line: 322, type: !45)
!2470 = !DILocalVariable(name: "i", scope: !2464, file: !2065, line: 324, type: !23)
!2471 = !DILocalVariable(name: "j", scope: !2464, file: !2065, line: 324, type: !23)
!2472 = !DILocalVariable(name: "k", scope: !2464, file: !2065, line: 324, type: !23)
!2473 = !DILocation(line: 322, column: 26, scope: !2464)
!2474 = !DILocation(line: 322, column: 37, scope: !2464)
!2475 = !DILocation(line: 322, column: 48, scope: !2464)
!2476 = !DILocation(line: 322, column: 59, scope: !2464)
!2477 = !DILocation(line: 324, column: 5, scope: !2464)
!2478 = !DILocation(line: 324, column: 12, scope: !2464)
!2479 = !DILocation(line: 324, column: 15, scope: !2464)
!2480 = !DILocation(line: 324, column: 18, scope: !2464)
!2481 = !DILocation(line: 325, column: 12, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2464, file: !2065, line: 325, column: 5)
!2483 = !DILocation(line: 325, column: 10, scope: !2482)
!2484 = !DILocation(line: 325, column: 17, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !2065, line: 325, column: 5)
!2486 = !DILocation(line: 325, column: 21, scope: !2485)
!2487 = !DILocation(line: 325, column: 19, scope: !2485)
!2488 = !DILocation(line: 325, column: 5, scope: !2482)
!2489 = !DILocation(line: 327, column: 16, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !2065, line: 327, column: 9)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !2065, line: 326, column: 5)
!2492 = !DILocation(line: 327, column: 14, scope: !2490)
!2493 = !DILocation(line: 327, column: 21, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !2065, line: 327, column: 9)
!2495 = !DILocation(line: 327, column: 25, scope: !2494)
!2496 = !DILocation(line: 327, column: 23, scope: !2494)
!2497 = !DILocation(line: 327, column: 9, scope: !2490)
!2498 = !DILocation(line: 329, column: 13, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2494, file: !2065, line: 328, column: 9)
!2500 = !DILocation(line: 329, column: 15, scope: !2499)
!2501 = !DILocation(line: 329, column: 19, scope: !2499)
!2502 = !DILocation(line: 329, column: 17, scope: !2499)
!2503 = !DILocation(line: 329, column: 23, scope: !2499)
!2504 = !DILocation(line: 329, column: 21, scope: !2499)
!2505 = !DILocation(line: 329, column: 26, scope: !2499)
!2506 = !DILocation(line: 330, column: 20, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2499, file: !2065, line: 330, column: 13)
!2508 = !DILocation(line: 330, column: 18, scope: !2507)
!2509 = !DILocation(line: 330, column: 25, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !2065, line: 330, column: 13)
!2511 = !DILocation(line: 330, column: 29, scope: !2510)
!2512 = !DILocation(line: 330, column: 27, scope: !2510)
!2513 = !DILocation(line: 330, column: 13, scope: !2507)
!2514 = !DILocation(line: 332, column: 41, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !2065, line: 331, column: 13)
!2516 = !DILocation(line: 332, column: 43, scope: !2515)
!2517 = !DILocation(line: 332, column: 47, scope: !2515)
!2518 = !DILocation(line: 332, column: 45, scope: !2515)
!2519 = !DILocation(line: 332, column: 51, scope: !2515)
!2520 = !DILocation(line: 332, column: 49, scope: !2515)
!2521 = !DILocation(line: 332, column: 33, scope: !2515)
!2522 = !DILocation(line: 332, column: 64, scope: !2515)
!2523 = !DILocation(line: 332, column: 66, scope: !2515)
!2524 = !DILocation(line: 332, column: 70, scope: !2515)
!2525 = !DILocation(line: 332, column: 68, scope: !2515)
!2526 = !DILocation(line: 332, column: 74, scope: !2515)
!2527 = !DILocation(line: 332, column: 72, scope: !2515)
!2528 = !DILocation(line: 332, column: 56, scope: !2515)
!2529 = !DILocation(line: 332, column: 54, scope: !2515)
!2530 = !DILocation(line: 332, column: 17, scope: !2515)
!2531 = !DILocation(line: 332, column: 19, scope: !2515)
!2532 = !DILocation(line: 332, column: 23, scope: !2515)
!2533 = !DILocation(line: 332, column: 21, scope: !2515)
!2534 = !DILocation(line: 332, column: 27, scope: !2515)
!2535 = !DILocation(line: 332, column: 25, scope: !2515)
!2536 = !DILocation(line: 332, column: 30, scope: !2515)
!2537 = !DILocation(line: 333, column: 13, scope: !2515)
!2538 = !DILocation(line: 330, column: 33, scope: !2510)
!2539 = !DILocation(line: 330, column: 13, scope: !2510)
!2540 = distinct !{!2540, !2513, !2541}
!2541 = !DILocation(line: 333, column: 13, scope: !2507)
!2542 = !DILocation(line: 334, column: 9, scope: !2499)
!2543 = !DILocation(line: 327, column: 29, scope: !2494)
!2544 = !DILocation(line: 327, column: 9, scope: !2494)
!2545 = distinct !{!2545, !2497, !2546}
!2546 = !DILocation(line: 334, column: 9, scope: !2490)
!2547 = !DILocation(line: 335, column: 5, scope: !2491)
!2548 = !DILocation(line: 325, column: 25, scope: !2485)
!2549 = !DILocation(line: 325, column: 5, scope: !2485)
!2550 = distinct !{!2550, !2488, !2551}
!2551 = !DILocation(line: 335, column: 5, scope: !2482)
!2552 = !DILocation(line: 336, column: 1, scope: !2464)
!2553 = distinct !DISubprogram(name: "matrix_mul_matrix_bitextract", scope: !2065, file: !2065, line: 344, type: !2402, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2555 = !DILocalVariable(name: "N", arg: 1, scope: !2553, file: !2065, line: 344, type: !23)
!2556 = !DILocalVariable(name: "C", arg: 2, scope: !2553, file: !2065, line: 344, type: !49)
!2557 = !DILocalVariable(name: "A", arg: 3, scope: !2553, file: !2065, line: 344, type: !45)
!2558 = !DILocalVariable(name: "B", arg: 4, scope: !2553, file: !2065, line: 344, type: !45)
!2559 = !DILocalVariable(name: "i", scope: !2553, file: !2065, line: 346, type: !23)
!2560 = !DILocalVariable(name: "j", scope: !2553, file: !2065, line: 346, type: !23)
!2561 = !DILocalVariable(name: "k", scope: !2553, file: !2065, line: 346, type: !23)
!2562 = !DILocalVariable(name: "tmp", scope: !2563, file: !2065, line: 354, type: !50)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !2065, line: 353, column: 13)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !2065, line: 352, column: 13)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !2065, line: 352, column: 13)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !2065, line: 350, column: 9)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !2065, line: 349, column: 9)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !2065, line: 349, column: 9)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !2065, line: 348, column: 5)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !2065, line: 347, column: 5)
!2571 = distinct !DILexicalBlock(scope: !2553, file: !2065, line: 347, column: 5)
!2572 = !DILocation(line: 344, column: 37, scope: !2553)
!2573 = !DILocation(line: 344, column: 48, scope: !2553)
!2574 = !DILocation(line: 344, column: 59, scope: !2553)
!2575 = !DILocation(line: 344, column: 70, scope: !2553)
!2576 = !DILocation(line: 346, column: 5, scope: !2553)
!2577 = !DILocation(line: 346, column: 12, scope: !2553)
!2578 = !DILocation(line: 346, column: 15, scope: !2553)
!2579 = !DILocation(line: 346, column: 18, scope: !2553)
!2580 = !DILocation(line: 347, column: 12, scope: !2571)
!2581 = !DILocation(line: 347, column: 10, scope: !2571)
!2582 = !DILocation(line: 347, column: 17, scope: !2570)
!2583 = !DILocation(line: 347, column: 21, scope: !2570)
!2584 = !DILocation(line: 347, column: 19, scope: !2570)
!2585 = !DILocation(line: 347, column: 5, scope: !2571)
!2586 = !DILocation(line: 349, column: 16, scope: !2568)
!2587 = !DILocation(line: 349, column: 14, scope: !2568)
!2588 = !DILocation(line: 349, column: 21, scope: !2567)
!2589 = !DILocation(line: 349, column: 25, scope: !2567)
!2590 = !DILocation(line: 349, column: 23, scope: !2567)
!2591 = !DILocation(line: 349, column: 9, scope: !2568)
!2592 = !DILocation(line: 351, column: 13, scope: !2566)
!2593 = !DILocation(line: 351, column: 15, scope: !2566)
!2594 = !DILocation(line: 351, column: 19, scope: !2566)
!2595 = !DILocation(line: 351, column: 17, scope: !2566)
!2596 = !DILocation(line: 351, column: 23, scope: !2566)
!2597 = !DILocation(line: 351, column: 21, scope: !2566)
!2598 = !DILocation(line: 351, column: 26, scope: !2566)
!2599 = !DILocation(line: 352, column: 20, scope: !2565)
!2600 = !DILocation(line: 352, column: 18, scope: !2565)
!2601 = !DILocation(line: 352, column: 25, scope: !2564)
!2602 = !DILocation(line: 352, column: 29, scope: !2564)
!2603 = !DILocation(line: 352, column: 27, scope: !2564)
!2604 = !DILocation(line: 352, column: 13, scope: !2565)
!2605 = !DILocation(line: 354, column: 17, scope: !2563)
!2606 = !DILocation(line: 354, column: 24, scope: !2563)
!2607 = !DILocation(line: 354, column: 38, scope: !2563)
!2608 = !DILocation(line: 354, column: 40, scope: !2563)
!2609 = !DILocation(line: 354, column: 44, scope: !2563)
!2610 = !DILocation(line: 354, column: 42, scope: !2563)
!2611 = !DILocation(line: 354, column: 48, scope: !2563)
!2612 = !DILocation(line: 354, column: 46, scope: !2563)
!2613 = !DILocation(line: 354, column: 30, scope: !2563)
!2614 = !DILocation(line: 354, column: 61, scope: !2563)
!2615 = !DILocation(line: 354, column: 63, scope: !2563)
!2616 = !DILocation(line: 354, column: 67, scope: !2563)
!2617 = !DILocation(line: 354, column: 65, scope: !2563)
!2618 = !DILocation(line: 354, column: 71, scope: !2563)
!2619 = !DILocation(line: 354, column: 69, scope: !2563)
!2620 = !DILocation(line: 354, column: 53, scope: !2563)
!2621 = !DILocation(line: 354, column: 51, scope: !2563)
!2622 = !DILocation(line: 355, column: 33, scope: !2563)
!2623 = !DILocation(line: 355, column: 58, scope: !2563)
!2624 = !DILocation(line: 355, column: 56, scope: !2563)
!2625 = !DILocation(line: 355, column: 17, scope: !2563)
!2626 = !DILocation(line: 355, column: 19, scope: !2563)
!2627 = !DILocation(line: 355, column: 23, scope: !2563)
!2628 = !DILocation(line: 355, column: 21, scope: !2563)
!2629 = !DILocation(line: 355, column: 27, scope: !2563)
!2630 = !DILocation(line: 355, column: 25, scope: !2563)
!2631 = !DILocation(line: 355, column: 30, scope: !2563)
!2632 = !DILocation(line: 356, column: 13, scope: !2564)
!2633 = !DILocation(line: 356, column: 13, scope: !2563)
!2634 = !DILocation(line: 352, column: 33, scope: !2564)
!2635 = !DILocation(line: 352, column: 13, scope: !2564)
!2636 = distinct !{!2636, !2604, !2637}
!2637 = !DILocation(line: 356, column: 13, scope: !2565)
!2638 = !DILocation(line: 357, column: 9, scope: !2566)
!2639 = !DILocation(line: 349, column: 29, scope: !2567)
!2640 = !DILocation(line: 349, column: 9, scope: !2567)
!2641 = distinct !{!2641, !2591, !2642}
!2642 = !DILocation(line: 357, column: 9, scope: !2568)
!2643 = !DILocation(line: 358, column: 5, scope: !2569)
!2644 = !DILocation(line: 347, column: 25, scope: !2570)
!2645 = !DILocation(line: 347, column: 5, scope: !2570)
!2646 = distinct !{!2646, !2585, !2647}
!2647 = !DILocation(line: 358, column: 5, scope: !2571)
!2648 = !DILocation(line: 359, column: 1, scope: !2553)
!2649 = distinct !DISubprogram(name: "core_init_matrix", scope: !2065, file: !2065, line: 181, type: !2650, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!23, !23, !19, !51, !2068}
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2653 = !DILocalVariable(name: "blksize", arg: 1, scope: !2649, file: !2065, line: 181, type: !23)
!2654 = !DILocalVariable(name: "memblk", arg: 2, scope: !2649, file: !2065, line: 181, type: !19)
!2655 = !DILocalVariable(name: "seed", arg: 3, scope: !2649, file: !2065, line: 181, type: !51)
!2656 = !DILocalVariable(name: "p", arg: 4, scope: !2649, file: !2065, line: 181, type: !2068)
!2657 = !DILocalVariable(name: "N", scope: !2649, file: !2065, line: 183, type: !23)
!2658 = !DILocalVariable(name: "A", scope: !2649, file: !2065, line: 184, type: !45)
!2659 = !DILocalVariable(name: "B", scope: !2649, file: !2065, line: 185, type: !45)
!2660 = !DILocalVariable(name: "order", scope: !2649, file: !2065, line: 186, type: !51)
!2661 = !DILocalVariable(name: "val", scope: !2649, file: !2065, line: 187, type: !46)
!2662 = !DILocalVariable(name: "i", scope: !2649, file: !2065, line: 188, type: !23)
!2663 = !DILocalVariable(name: "j", scope: !2649, file: !2065, line: 188, type: !23)
!2664 = !DILocation(line: 181, column: 25, scope: !2649)
!2665 = !DILocation(line: 181, column: 40, scope: !2649)
!2666 = !DILocation(line: 181, column: 55, scope: !2649)
!2667 = !DILocation(line: 181, column: 73, scope: !2649)
!2668 = !DILocation(line: 183, column: 5, scope: !2649)
!2669 = !DILocation(line: 183, column: 13, scope: !2649)
!2670 = !DILocation(line: 184, column: 5, scope: !2649)
!2671 = !DILocation(line: 184, column: 13, scope: !2649)
!2672 = !DILocation(line: 185, column: 5, scope: !2649)
!2673 = !DILocation(line: 185, column: 13, scope: !2649)
!2674 = !DILocation(line: 186, column: 5, scope: !2649)
!2675 = !DILocation(line: 186, column: 13, scope: !2649)
!2676 = !DILocation(line: 187, column: 5, scope: !2649)
!2677 = !DILocation(line: 187, column: 13, scope: !2649)
!2678 = !DILocation(line: 188, column: 5, scope: !2649)
!2679 = !DILocation(line: 188, column: 13, scope: !2649)
!2680 = !DILocation(line: 188, column: 20, scope: !2649)
!2681 = !DILocation(line: 189, column: 9, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2649, file: !2065, line: 189, column: 9)
!2683 = !DILocation(line: 189, column: 14, scope: !2682)
!2684 = !DILocation(line: 189, column: 9, scope: !2649)
!2685 = !DILocation(line: 190, column: 14, scope: !2682)
!2686 = !DILocation(line: 190, column: 9, scope: !2682)
!2687 = !DILocation(line: 191, column: 5, scope: !2649)
!2688 = !DILocation(line: 191, column: 12, scope: !2649)
!2689 = !DILocation(line: 191, column: 16, scope: !2649)
!2690 = !DILocation(line: 191, column: 14, scope: !2649)
!2691 = !DILocation(line: 193, column: 10, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2649, file: !2065, line: 192, column: 5)
!2693 = !DILocation(line: 194, column: 13, scope: !2692)
!2694 = !DILocation(line: 194, column: 17, scope: !2692)
!2695 = !DILocation(line: 194, column: 15, scope: !2692)
!2696 = !DILocation(line: 194, column: 19, scope: !2692)
!2697 = !DILocation(line: 194, column: 23, scope: !2692)
!2698 = !DILocation(line: 194, column: 11, scope: !2692)
!2699 = distinct !{!2699, !2687, !2700}
!2700 = !DILocation(line: 195, column: 5, scope: !2649)
!2701 = !DILocation(line: 196, column: 9, scope: !2649)
!2702 = !DILocation(line: 196, column: 11, scope: !2649)
!2703 = !DILocation(line: 196, column: 7, scope: !2649)
!2704 = !DILocation(line: 197, column: 19, scope: !2649)
!2705 = !DILocation(line: 197, column: 9, scope: !2649)
!2706 = !DILocation(line: 197, column: 7, scope: !2649)
!2707 = !DILocation(line: 198, column: 9, scope: !2649)
!2708 = !DILocation(line: 198, column: 13, scope: !2649)
!2709 = !DILocation(line: 198, column: 17, scope: !2649)
!2710 = !DILocation(line: 198, column: 15, scope: !2649)
!2711 = !DILocation(line: 198, column: 11, scope: !2649)
!2712 = !DILocation(line: 198, column: 7, scope: !2649)
!2713 = !DILocation(line: 200, column: 12, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2649, file: !2065, line: 200, column: 5)
!2715 = !DILocation(line: 200, column: 10, scope: !2714)
!2716 = !DILocation(line: 200, column: 17, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !2065, line: 200, column: 5)
!2718 = !DILocation(line: 200, column: 21, scope: !2717)
!2719 = !DILocation(line: 200, column: 19, scope: !2717)
!2720 = !DILocation(line: 200, column: 5, scope: !2714)
!2721 = !DILocation(line: 202, column: 16, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !2065, line: 202, column: 9)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !2065, line: 201, column: 5)
!2724 = !DILocation(line: 202, column: 14, scope: !2722)
!2725 = !DILocation(line: 202, column: 21, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !2065, line: 202, column: 9)
!2727 = !DILocation(line: 202, column: 25, scope: !2726)
!2728 = !DILocation(line: 202, column: 23, scope: !2726)
!2729 = !DILocation(line: 202, column: 9, scope: !2722)
!2730 = !DILocation(line: 204, column: 30, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2726, file: !2065, line: 203, column: 9)
!2732 = !DILocation(line: 204, column: 38, scope: !2731)
!2733 = !DILocation(line: 204, column: 36, scope: !2731)
!2734 = !DILocation(line: 204, column: 44, scope: !2731)
!2735 = !DILocation(line: 204, column: 26, scope: !2731)
!2736 = !DILocation(line: 205, column: 29, scope: !2731)
!2737 = !DILocation(line: 205, column: 36, scope: !2731)
!2738 = !DILocation(line: 205, column: 34, scope: !2731)
!2739 = !DILocation(line: 205, column: 28, scope: !2731)
!2740 = !DILocation(line: 205, column: 26, scope: !2731)
!2741 = !DILocation(line: 206, column: 28, scope: !2731)
!2742 = !DILocation(line: 206, column: 26, scope: !2731)
!2743 = !DILocation(line: 207, column: 28, scope: !2731)
!2744 = !DILocation(line: 207, column: 13, scope: !2731)
!2745 = !DILocation(line: 207, column: 15, scope: !2731)
!2746 = !DILocation(line: 207, column: 19, scope: !2731)
!2747 = !DILocation(line: 207, column: 17, scope: !2731)
!2748 = !DILocation(line: 207, column: 23, scope: !2731)
!2749 = !DILocation(line: 207, column: 21, scope: !2731)
!2750 = !DILocation(line: 207, column: 26, scope: !2731)
!2751 = !DILocation(line: 208, column: 29, scope: !2731)
!2752 = !DILocation(line: 208, column: 35, scope: !2731)
!2753 = !DILocation(line: 208, column: 33, scope: !2731)
!2754 = !DILocation(line: 208, column: 28, scope: !2731)
!2755 = !DILocation(line: 208, column: 26, scope: !2731)
!2756 = !DILocation(line: 209, column: 28, scope: !2731)
!2757 = !DILocation(line: 209, column: 26, scope: !2731)
!2758 = !DILocation(line: 210, column: 28, scope: !2731)
!2759 = !DILocation(line: 210, column: 13, scope: !2731)
!2760 = !DILocation(line: 210, column: 15, scope: !2731)
!2761 = !DILocation(line: 210, column: 19, scope: !2731)
!2762 = !DILocation(line: 210, column: 17, scope: !2731)
!2763 = !DILocation(line: 210, column: 23, scope: !2731)
!2764 = !DILocation(line: 210, column: 21, scope: !2731)
!2765 = !DILocation(line: 210, column: 26, scope: !2731)
!2766 = !DILocation(line: 211, column: 18, scope: !2731)
!2767 = !DILocation(line: 212, column: 9, scope: !2731)
!2768 = !DILocation(line: 202, column: 29, scope: !2726)
!2769 = !DILocation(line: 202, column: 9, scope: !2726)
!2770 = distinct !{!2770, !2729, !2771}
!2771 = !DILocation(line: 212, column: 9, scope: !2722)
!2772 = !DILocation(line: 213, column: 5, scope: !2723)
!2773 = !DILocation(line: 200, column: 25, scope: !2717)
!2774 = !DILocation(line: 200, column: 5, scope: !2717)
!2775 = distinct !{!2775, !2720, !2776}
!2776 = !DILocation(line: 213, column: 5, scope: !2714)
!2777 = !DILocation(line: 215, column: 12, scope: !2649)
!2778 = !DILocation(line: 215, column: 5, scope: !2649)
!2779 = !DILocation(line: 215, column: 8, scope: !2649)
!2780 = !DILocation(line: 215, column: 10, scope: !2649)
!2781 = !DILocation(line: 216, column: 12, scope: !2649)
!2782 = !DILocation(line: 216, column: 5, scope: !2649)
!2783 = !DILocation(line: 216, column: 8, scope: !2649)
!2784 = !DILocation(line: 216, column: 10, scope: !2649)
!2785 = !DILocation(line: 217, column: 22, scope: !2649)
!2786 = !DILocation(line: 217, column: 12, scope: !2649)
!2787 = !DILocation(line: 217, column: 5, scope: !2649)
!2788 = !DILocation(line: 217, column: 8, scope: !2649)
!2789 = !DILocation(line: 217, column: 10, scope: !2649)
!2790 = !DILocation(line: 218, column: 12, scope: !2649)
!2791 = !DILocation(line: 218, column: 5, scope: !2649)
!2792 = !DILocation(line: 218, column: 8, scope: !2649)
!2793 = !DILocation(line: 218, column: 10, scope: !2649)
!2794 = !DILocation(line: 223, column: 12, scope: !2649)
!2795 = !DILocation(line: 224, column: 1, scope: !2649)
!2796 = !DILocation(line: 223, column: 5, scope: !2649)
!2797 = distinct !DISubprogram(name: "core_bench_state", scope: !105, file: !105, line: 46, type: !2798, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!53, !23, !107, !12, !12, !12, !53}
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2807, !2811, !2812, !2813, !2814, !2816}
!2801 = !DILocalVariable(name: "blksize", arg: 1, scope: !2797, file: !105, line: 46, type: !23)
!2802 = !DILocalVariable(name: "memblock", arg: 2, scope: !2797, file: !105, line: 47, type: !107)
!2803 = !DILocalVariable(name: "seed1", arg: 3, scope: !2797, file: !105, line: 48, type: !12)
!2804 = !DILocalVariable(name: "seed2", arg: 4, scope: !2797, file: !105, line: 49, type: !12)
!2805 = !DILocalVariable(name: "step", arg: 5, scope: !2797, file: !105, line: 50, type: !12)
!2806 = !DILocalVariable(name: "crc", arg: 6, scope: !2797, file: !105, line: 51, type: !53)
!2807 = !DILocalVariable(name: "final_counts", scope: !2797, file: !105, line: 53, type: !2808)
!2808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !2809)
!2809 = !{!2810}
!2810 = !DISubrange(count: 8)
!2811 = !DILocalVariable(name: "track_counts", scope: !2797, file: !105, line: 54, type: !2808)
!2812 = !DILocalVariable(name: "p", scope: !2797, file: !105, line: 55, type: !107)
!2813 = !DILocalVariable(name: "i", scope: !2797, file: !105, line: 56, type: !23)
!2814 = !DILocalVariable(name: "fstate", scope: !2815, file: !105, line: 68, type: !90)
!2815 = distinct !DILexicalBlock(scope: !2797, file: !105, line: 67, column: 5)
!2816 = !DILocalVariable(name: "fstate", scope: !2817, file: !105, line: 88, type: !90)
!2817 = distinct !DILexicalBlock(scope: !2797, file: !105, line: 87, column: 5)
!2818 = !DILocation(line: 46, column: 25, scope: !2797)
!2819 = !DILocation(line: 47, column: 25, scope: !2797)
!2820 = !DILocation(line: 48, column: 25, scope: !2797)
!2821 = !DILocation(line: 49, column: 25, scope: !2797)
!2822 = !DILocation(line: 50, column: 25, scope: !2797)
!2823 = !DILocation(line: 51, column: 25, scope: !2797)
!2824 = !DILocation(line: 53, column: 5, scope: !2797)
!2825 = !DILocation(line: 53, column: 12, scope: !2797)
!2826 = !DILocation(line: 54, column: 5, scope: !2797)
!2827 = !DILocation(line: 54, column: 12, scope: !2797)
!2828 = !DILocation(line: 55, column: 5, scope: !2797)
!2829 = !DILocation(line: 55, column: 12, scope: !2797)
!2830 = !DILocation(line: 55, column: 16, scope: !2797)
!2831 = !DILocation(line: 56, column: 5, scope: !2797)
!2832 = !DILocation(line: 56, column: 12, scope: !2797)
!2833 = !DILocation(line: 61, column: 12, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2797, file: !105, line: 61, column: 5)
!2835 = !DILocation(line: 61, column: 10, scope: !2834)
!2836 = !DILocation(line: 61, column: 17, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2834, file: !105, line: 61, column: 5)
!2838 = !DILocation(line: 61, column: 19, scope: !2837)
!2839 = !DILocation(line: 61, column: 5, scope: !2834)
!2840 = !DILocation(line: 63, column: 40, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !105, line: 62, column: 5)
!2842 = !DILocation(line: 63, column: 27, scope: !2841)
!2843 = !DILocation(line: 63, column: 43, scope: !2841)
!2844 = !DILocation(line: 63, column: 22, scope: !2841)
!2845 = !DILocation(line: 63, column: 9, scope: !2841)
!2846 = !DILocation(line: 63, column: 25, scope: !2841)
!2847 = !DILocation(line: 64, column: 5, scope: !2841)
!2848 = !DILocation(line: 61, column: 39, scope: !2837)
!2849 = !DILocation(line: 61, column: 5, scope: !2837)
!2850 = distinct !{!2850, !2839, !2851}
!2851 = !DILocation(line: 64, column: 5, scope: !2834)
!2852 = !DILocation(line: 66, column: 5, scope: !2797)
!2853 = !DILocation(line: 66, column: 13, scope: !2797)
!2854 = !DILocation(line: 66, column: 12, scope: !2797)
!2855 = !DILocation(line: 66, column: 15, scope: !2797)
!2856 = !DILocation(line: 68, column: 9, scope: !2815)
!2857 = !DILocation(line: 68, column: 25, scope: !2815)
!2858 = !DILocation(line: 68, column: 60, scope: !2815)
!2859 = !DILocation(line: 68, column: 34, scope: !2815)
!2860 = !DILocation(line: 69, column: 22, scope: !2815)
!2861 = !DILocation(line: 69, column: 9, scope: !2815)
!2862 = !DILocation(line: 69, column: 29, scope: !2815)
!2863 = !DILocation(line: 75, column: 5, scope: !2797)
!2864 = distinct !{!2864, !2852, !2863}
!2865 = !DILocation(line: 77, column: 9, scope: !2797)
!2866 = !DILocation(line: 77, column: 7, scope: !2797)
!2867 = !DILocation(line: 78, column: 5, scope: !2797)
!2868 = !DILocation(line: 78, column: 12, scope: !2797)
!2869 = !DILocation(line: 78, column: 17, scope: !2797)
!2870 = !DILocation(line: 78, column: 28, scope: !2797)
!2871 = !DILocation(line: 78, column: 26, scope: !2797)
!2872 = !DILocation(line: 78, column: 14, scope: !2797)
!2873 = !DILocation(line: 80, column: 14, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !105, line: 80, column: 13)
!2875 = distinct !DILexicalBlock(scope: !2797, file: !105, line: 79, column: 5)
!2876 = !DILocation(line: 80, column: 13, scope: !2874)
!2877 = !DILocation(line: 80, column: 16, scope: !2874)
!2878 = !DILocation(line: 80, column: 13, scope: !2875)
!2879 = !DILocation(line: 81, column: 26, scope: !2874)
!2880 = !DILocation(line: 81, column: 19, scope: !2874)
!2881 = !DILocation(line: 81, column: 14, scope: !2874)
!2882 = !DILocation(line: 81, column: 16, scope: !2874)
!2883 = !DILocation(line: 81, column: 13, scope: !2874)
!2884 = !DILocation(line: 82, column: 14, scope: !2875)
!2885 = !DILocation(line: 82, column: 11, scope: !2875)
!2886 = distinct !{!2886, !2867, !2887}
!2887 = !DILocation(line: 83, column: 5, scope: !2797)
!2888 = !DILocation(line: 84, column: 9, scope: !2797)
!2889 = !DILocation(line: 84, column: 7, scope: !2797)
!2890 = !DILocation(line: 86, column: 5, scope: !2797)
!2891 = !DILocation(line: 86, column: 13, scope: !2797)
!2892 = !DILocation(line: 86, column: 12, scope: !2797)
!2893 = !DILocation(line: 86, column: 15, scope: !2797)
!2894 = !DILocation(line: 88, column: 9, scope: !2817)
!2895 = !DILocation(line: 88, column: 25, scope: !2817)
!2896 = !DILocation(line: 88, column: 60, scope: !2817)
!2897 = !DILocation(line: 88, column: 34, scope: !2817)
!2898 = !DILocation(line: 89, column: 22, scope: !2817)
!2899 = !DILocation(line: 89, column: 9, scope: !2817)
!2900 = !DILocation(line: 89, column: 29, scope: !2817)
!2901 = !DILocation(line: 95, column: 5, scope: !2797)
!2902 = distinct !{!2902, !2890, !2901}
!2903 = !DILocation(line: 97, column: 9, scope: !2797)
!2904 = !DILocation(line: 97, column: 7, scope: !2797)
!2905 = !DILocation(line: 98, column: 5, scope: !2797)
!2906 = !DILocation(line: 98, column: 12, scope: !2797)
!2907 = !DILocation(line: 98, column: 17, scope: !2797)
!2908 = !DILocation(line: 98, column: 28, scope: !2797)
!2909 = !DILocation(line: 98, column: 26, scope: !2797)
!2910 = !DILocation(line: 98, column: 14, scope: !2797)
!2911 = !DILocation(line: 100, column: 14, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !105, line: 100, column: 13)
!2913 = distinct !DILexicalBlock(scope: !2797, file: !105, line: 99, column: 5)
!2914 = !DILocation(line: 100, column: 13, scope: !2912)
!2915 = !DILocation(line: 100, column: 16, scope: !2912)
!2916 = !DILocation(line: 100, column: 13, scope: !2913)
!2917 = !DILocation(line: 101, column: 26, scope: !2912)
!2918 = !DILocation(line: 101, column: 19, scope: !2912)
!2919 = !DILocation(line: 101, column: 14, scope: !2912)
!2920 = !DILocation(line: 101, column: 16, scope: !2912)
!2921 = !DILocation(line: 101, column: 13, scope: !2912)
!2922 = !DILocation(line: 102, column: 14, scope: !2913)
!2923 = !DILocation(line: 102, column: 11, scope: !2913)
!2924 = distinct !{!2924, !2905, !2925}
!2925 = !DILocation(line: 103, column: 5, scope: !2797)
!2926 = !DILocation(line: 105, column: 12, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2797, file: !105, line: 105, column: 5)
!2928 = !DILocation(line: 105, column: 10, scope: !2927)
!2929 = !DILocation(line: 105, column: 17, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !105, line: 105, column: 5)
!2931 = !DILocation(line: 105, column: 19, scope: !2930)
!2932 = !DILocation(line: 105, column: 5, scope: !2927)
!2933 = !DILocation(line: 107, column: 35, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !105, line: 106, column: 5)
!2935 = !DILocation(line: 107, column: 22, scope: !2934)
!2936 = !DILocation(line: 107, column: 39, scope: !2934)
!2937 = !DILocation(line: 107, column: 15, scope: !2934)
!2938 = !DILocation(line: 107, column: 13, scope: !2934)
!2939 = !DILocation(line: 108, column: 35, scope: !2934)
!2940 = !DILocation(line: 108, column: 22, scope: !2934)
!2941 = !DILocation(line: 108, column: 39, scope: !2934)
!2942 = !DILocation(line: 108, column: 15, scope: !2934)
!2943 = !DILocation(line: 108, column: 13, scope: !2934)
!2944 = !DILocation(line: 109, column: 5, scope: !2934)
!2945 = !DILocation(line: 105, column: 39, scope: !2930)
!2946 = !DILocation(line: 105, column: 5, scope: !2930)
!2947 = distinct !{!2947, !2932, !2948}
!2948 = !DILocation(line: 109, column: 5, scope: !2927)
!2949 = !DILocation(line: 110, column: 12, scope: !2797)
!2950 = !DILocation(line: 111, column: 1, scope: !2797)
!2951 = !DILocation(line: 110, column: 5, scope: !2797)
!2952 = distinct !DISubprogram(name: "core_state_transition", scope: !105, file: !105, line: 217, type: !2953, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !2957)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!90, !2955, !2956}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!2957 = !{!2958, !2959, !2960, !2961, !2962}
!2958 = !DILocalVariable(name: "instr", arg: 1, scope: !2952, file: !105, line: 217, type: !2955)
!2959 = !DILocalVariable(name: "transition_count", arg: 2, scope: !2952, file: !105, line: 217, type: !2956)
!2960 = !DILocalVariable(name: "str", scope: !2952, file: !105, line: 219, type: !107)
!2961 = !DILocalVariable(name: "NEXT_SYMBOL", scope: !2952, file: !105, line: 220, type: !64)
!2962 = !DILocalVariable(name: "state", scope: !2952, file: !105, line: 221, type: !90)
!2963 = !DILocation(line: 217, column: 31, scope: !2952)
!2964 = !DILocation(line: 217, column: 46, scope: !2952)
!2965 = !DILocation(line: 219, column: 5, scope: !2952)
!2966 = !DILocation(line: 219, column: 21, scope: !2952)
!2967 = !DILocation(line: 219, column: 28, scope: !2952)
!2968 = !DILocation(line: 219, column: 27, scope: !2952)
!2969 = !DILocation(line: 220, column: 5, scope: !2952)
!2970 = !DILocation(line: 220, column: 21, scope: !2952)
!2971 = !DILocation(line: 221, column: 5, scope: !2952)
!2972 = !DILocation(line: 221, column: 21, scope: !2952)
!2973 = !DILocation(line: 222, column: 5, scope: !2952)
!2974 = !DILocation(line: 222, column: 13, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !105, line: 222, column: 5)
!2976 = distinct !DILexicalBlock(scope: !2952, file: !105, line: 222, column: 5)
!2977 = !DILocation(line: 222, column: 12, scope: !2975)
!2978 = !DILocation(line: 222, column: 17, scope: !2975)
!2979 = !DILocation(line: 222, column: 20, scope: !2975)
!2980 = !DILocation(line: 222, column: 26, scope: !2975)
!2981 = !DILocation(line: 0, scope: !2975)
!2982 = !DILocation(line: 222, column: 5, scope: !2976)
!2983 = !DILocation(line: 224, column: 24, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2975, file: !105, line: 223, column: 5)
!2985 = !DILocation(line: 224, column: 23, scope: !2984)
!2986 = !DILocation(line: 224, column: 21, scope: !2984)
!2987 = !DILocation(line: 225, column: 13, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !105, line: 225, column: 13)
!2989 = !DILocation(line: 225, column: 25, scope: !2988)
!2990 = !DILocation(line: 225, column: 13, scope: !2984)
!2991 = !DILocation(line: 227, column: 16, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !105, line: 226, column: 9)
!2993 = !DILocation(line: 228, column: 13, scope: !2992)
!2994 = !DILocation(line: 230, column: 17, scope: !2984)
!2995 = !DILocation(line: 230, column: 9, scope: !2984)
!2996 = !DILocation(line: 233, column: 32, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !105, line: 233, column: 21)
!2998 = distinct !DILexicalBlock(scope: !2984, file: !105, line: 231, column: 9)
!2999 = !DILocation(line: 233, column: 21, scope: !2997)
!3000 = !DILocation(line: 233, column: 21, scope: !2998)
!3001 = !DILocation(line: 235, column: 27, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2997, file: !105, line: 234, column: 17)
!3003 = !DILocation(line: 236, column: 17, scope: !3002)
!3004 = !DILocation(line: 237, column: 26, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2997, file: !105, line: 237, column: 26)
!3006 = !DILocation(line: 237, column: 38, scope: !3005)
!3007 = !DILocation(line: 237, column: 45, scope: !3005)
!3008 = !DILocation(line: 237, column: 48, scope: !3005)
!3009 = !DILocation(line: 237, column: 60, scope: !3005)
!3010 = !DILocation(line: 237, column: 26, scope: !2997)
!3011 = !DILocation(line: 239, column: 27, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3005, file: !105, line: 238, column: 17)
!3013 = !DILocation(line: 240, column: 17, scope: !3012)
!3014 = !DILocation(line: 241, column: 26, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3005, file: !105, line: 241, column: 26)
!3016 = !DILocation(line: 241, column: 38, scope: !3015)
!3017 = !DILocation(line: 241, column: 26, scope: !3005)
!3018 = !DILocation(line: 243, column: 27, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3015, file: !105, line: 242, column: 17)
!3020 = !DILocation(line: 244, column: 17, scope: !3019)
!3021 = !DILocation(line: 247, column: 27, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3015, file: !105, line: 246, column: 17)
!3023 = !DILocation(line: 248, column: 21, scope: !3022)
!3024 = !DILocation(line: 248, column: 51, scope: !3022)
!3025 = !DILocation(line: 250, column: 17, scope: !2998)
!3026 = !DILocation(line: 250, column: 45, scope: !2998)
!3027 = !DILocation(line: 251, column: 17, scope: !2998)
!3028 = !DILocation(line: 253, column: 32, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2998, file: !105, line: 253, column: 21)
!3030 = !DILocation(line: 253, column: 21, scope: !3029)
!3031 = !DILocation(line: 253, column: 21, scope: !2998)
!3032 = !DILocation(line: 255, column: 27, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !105, line: 254, column: 17)
!3034 = !DILocation(line: 256, column: 21, scope: !3033)
!3035 = !DILocation(line: 256, column: 46, scope: !3033)
!3036 = !DILocation(line: 257, column: 17, scope: !3033)
!3037 = !DILocation(line: 258, column: 26, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3029, file: !105, line: 258, column: 26)
!3039 = !DILocation(line: 258, column: 38, scope: !3038)
!3040 = !DILocation(line: 258, column: 26, scope: !3029)
!3041 = !DILocation(line: 260, column: 27, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3038, file: !105, line: 259, column: 17)
!3043 = !DILocation(line: 261, column: 21, scope: !3042)
!3044 = !DILocation(line: 261, column: 46, scope: !3042)
!3045 = !DILocation(line: 262, column: 17, scope: !3042)
!3046 = !DILocation(line: 265, column: 27, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3038, file: !105, line: 264, column: 17)
!3048 = !DILocation(line: 266, column: 21, scope: !3047)
!3049 = !DILocation(line: 266, column: 46, scope: !3047)
!3050 = !DILocation(line: 268, column: 17, scope: !2998)
!3051 = !DILocation(line: 270, column: 21, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2998, file: !105, line: 270, column: 21)
!3053 = !DILocation(line: 270, column: 33, scope: !3052)
!3054 = !DILocation(line: 270, column: 21, scope: !2998)
!3055 = !DILocation(line: 272, column: 27, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !105, line: 271, column: 17)
!3057 = !DILocation(line: 273, column: 21, scope: !3056)
!3058 = !DILocation(line: 273, column: 47, scope: !3056)
!3059 = !DILocation(line: 274, column: 17, scope: !3056)
!3060 = !DILocation(line: 275, column: 38, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3052, file: !105, line: 275, column: 26)
!3062 = !DILocation(line: 275, column: 27, scope: !3061)
!3063 = !DILocation(line: 275, column: 26, scope: !3052)
!3064 = !DILocation(line: 277, column: 27, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !105, line: 276, column: 17)
!3066 = !DILocation(line: 278, column: 21, scope: !3065)
!3067 = !DILocation(line: 278, column: 47, scope: !3065)
!3068 = !DILocation(line: 279, column: 17, scope: !3065)
!3069 = !DILocation(line: 280, column: 17, scope: !2998)
!3070 = !DILocation(line: 282, column: 21, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !2998, file: !105, line: 282, column: 21)
!3072 = !DILocation(line: 282, column: 33, scope: !3071)
!3073 = !DILocation(line: 282, column: 40, scope: !3071)
!3074 = !DILocation(line: 282, column: 43, scope: !3071)
!3075 = !DILocation(line: 282, column: 55, scope: !3071)
!3076 = !DILocation(line: 282, column: 21, scope: !2998)
!3077 = !DILocation(line: 284, column: 27, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3071, file: !105, line: 283, column: 17)
!3079 = !DILocation(line: 285, column: 21, scope: !3078)
!3080 = !DILocation(line: 285, column: 49, scope: !3078)
!3081 = !DILocation(line: 286, column: 17, scope: !3078)
!3082 = !DILocation(line: 287, column: 38, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3071, file: !105, line: 287, column: 26)
!3084 = !DILocation(line: 287, column: 27, scope: !3083)
!3085 = !DILocation(line: 287, column: 26, scope: !3071)
!3086 = !DILocation(line: 289, column: 27, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !105, line: 288, column: 17)
!3088 = !DILocation(line: 290, column: 21, scope: !3087)
!3089 = !DILocation(line: 290, column: 49, scope: !3087)
!3090 = !DILocation(line: 291, column: 17, scope: !3087)
!3091 = !DILocation(line: 292, column: 17, scope: !2998)
!3092 = !DILocation(line: 294, column: 21, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2998, file: !105, line: 294, column: 21)
!3094 = !DILocation(line: 294, column: 33, scope: !3093)
!3095 = !DILocation(line: 294, column: 40, scope: !3093)
!3096 = !DILocation(line: 294, column: 43, scope: !3093)
!3097 = !DILocation(line: 294, column: 55, scope: !3093)
!3098 = !DILocation(line: 294, column: 21, scope: !2998)
!3099 = !DILocation(line: 296, column: 27, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3093, file: !105, line: 295, column: 17)
!3101 = !DILocation(line: 297, column: 21, scope: !3100)
!3102 = !DILocation(line: 297, column: 46, scope: !3100)
!3103 = !DILocation(line: 298, column: 17, scope: !3100)
!3104 = !DILocation(line: 301, column: 27, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3093, file: !105, line: 300, column: 17)
!3106 = !DILocation(line: 302, column: 21, scope: !3105)
!3107 = !DILocation(line: 302, column: 46, scope: !3105)
!3108 = !DILocation(line: 304, column: 17, scope: !2998)
!3109 = !DILocation(line: 306, column: 32, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2998, file: !105, line: 306, column: 21)
!3111 = !DILocation(line: 306, column: 21, scope: !3110)
!3112 = !DILocation(line: 306, column: 21, scope: !2998)
!3113 = !DILocation(line: 308, column: 27, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !105, line: 307, column: 17)
!3115 = !DILocation(line: 309, column: 21, scope: !3114)
!3116 = !DILocation(line: 309, column: 52, scope: !3114)
!3117 = !DILocation(line: 310, column: 17, scope: !3114)
!3118 = !DILocation(line: 313, column: 27, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3110, file: !105, line: 312, column: 17)
!3120 = !DILocation(line: 314, column: 21, scope: !3119)
!3121 = !DILocation(line: 314, column: 52, scope: !3119)
!3122 = !DILocation(line: 316, column: 17, scope: !2998)
!3123 = !DILocation(line: 318, column: 33, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !2998, file: !105, line: 318, column: 21)
!3125 = !DILocation(line: 318, column: 22, scope: !3124)
!3126 = !DILocation(line: 318, column: 21, scope: !2998)
!3127 = !DILocation(line: 320, column: 27, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3124, file: !105, line: 319, column: 17)
!3129 = !DILocation(line: 321, column: 21, scope: !3128)
!3130 = !DILocation(line: 321, column: 51, scope: !3128)
!3131 = !DILocation(line: 322, column: 17, scope: !3128)
!3132 = !DILocation(line: 323, column: 17, scope: !2998)
!3133 = !DILocation(line: 325, column: 17, scope: !2998)
!3134 = !DILocation(line: 327, column: 5, scope: !2984)
!3135 = !DILocation(line: 222, column: 46, scope: !2975)
!3136 = !DILocation(line: 222, column: 5, scope: !2975)
!3137 = distinct !{!3137, !2982, !3138}
!3138 = !DILocation(line: 327, column: 5, scope: !2976)
!3139 = !DILocation(line: 328, column: 14, scope: !2952)
!3140 = !DILocation(line: 328, column: 6, scope: !2952)
!3141 = !DILocation(line: 328, column: 12, scope: !2952)
!3142 = !DILocation(line: 329, column: 12, scope: !2952)
!3143 = !DILocation(line: 330, column: 1, scope: !2952)
!3144 = !DILocation(line: 329, column: 5, scope: !2952)
!3145 = distinct !DISubprogram(name: "ee_isdigit", scope: !105, file: !105, line: 198, type: !3146, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!64, !64}
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "c", arg: 1, scope: !3145, file: !105, line: 198, type: !64)
!3150 = !DILocalVariable(name: "retval", scope: !3145, file: !105, line: 200, type: !64)
!3151 = !DILocation(line: 198, column: 18, scope: !3145)
!3152 = !DILocation(line: 200, column: 5, scope: !3145)
!3153 = !DILocation(line: 200, column: 11, scope: !3145)
!3154 = !DILocation(line: 201, column: 16, scope: !3145)
!3155 = !DILocation(line: 201, column: 18, scope: !3145)
!3156 = !DILocation(line: 201, column: 29, scope: !3145)
!3157 = !DILocation(line: 201, column: 31, scope: !3145)
!3158 = !DILocation(line: 201, column: 26, scope: !3145)
!3159 = !DILocation(line: 201, column: 14, scope: !3145)
!3160 = !DILocation(line: 201, column: 12, scope: !3145)
!3161 = !DILocation(line: 202, column: 12, scope: !3145)
!3162 = !DILocation(line: 203, column: 1, scope: !3145)
!3163 = !DILocation(line: 202, column: 5, scope: !3145)
!3164 = distinct !DISubprogram(name: "core_init_state", scope: !105, file: !105, line: 140, type: !3165, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !23, !12, !107}
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174}
!3168 = !DILocalVariable(name: "size", arg: 1, scope: !3164, file: !105, line: 140, type: !23)
!3169 = !DILocalVariable(name: "seed", arg: 2, scope: !3164, file: !105, line: 140, type: !12)
!3170 = !DILocalVariable(name: "p", arg: 3, scope: !3164, file: !105, line: 140, type: !107)
!3171 = !DILocalVariable(name: "total", scope: !3164, file: !105, line: 142, type: !23)
!3172 = !DILocalVariable(name: "next", scope: !3164, file: !105, line: 142, type: !23)
!3173 = !DILocalVariable(name: "i", scope: !3164, file: !105, line: 142, type: !23)
!3174 = !DILocalVariable(name: "buf", scope: !3164, file: !105, line: 143, type: !107)
!3175 = !DILocation(line: 140, column: 24, scope: !3164)
!3176 = !DILocation(line: 140, column: 37, scope: !3164)
!3177 = !DILocation(line: 140, column: 50, scope: !3164)
!3178 = !DILocation(line: 142, column: 5, scope: !3164)
!3179 = !DILocation(line: 142, column: 12, scope: !3164)
!3180 = !DILocation(line: 142, column: 23, scope: !3164)
!3181 = !DILocation(line: 142, column: 33, scope: !3164)
!3182 = !DILocation(line: 143, column: 5, scope: !3164)
!3183 = !DILocation(line: 143, column: 12, scope: !3164)
!3184 = !DILocation(line: 148, column: 9, scope: !3164)
!3185 = !DILocation(line: 149, column: 10, scope: !3164)
!3186 = !DILocation(line: 150, column: 5, scope: !3164)
!3187 = !DILocation(line: 150, column: 13, scope: !3164)
!3188 = !DILocation(line: 150, column: 21, scope: !3164)
!3189 = !DILocation(line: 150, column: 19, scope: !3164)
!3190 = !DILocation(line: 150, column: 26, scope: !3164)
!3191 = !DILocation(line: 150, column: 33, scope: !3164)
!3192 = !DILocation(line: 150, column: 31, scope: !3164)
!3193 = !DILocation(line: 152, column: 13, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !105, line: 152, column: 13)
!3195 = distinct !DILexicalBlock(scope: !3164, file: !105, line: 151, column: 5)
!3196 = !DILocation(line: 152, column: 18, scope: !3194)
!3197 = !DILocation(line: 152, column: 13, scope: !3195)
!3198 = !DILocation(line: 154, column: 20, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !105, line: 154, column: 13)
!3200 = distinct !DILexicalBlock(scope: !3194, file: !105, line: 153, column: 9)
!3201 = !DILocation(line: 154, column: 18, scope: !3199)
!3202 = !DILocation(line: 154, column: 25, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3199, file: !105, line: 154, column: 13)
!3204 = !DILocation(line: 154, column: 29, scope: !3203)
!3205 = !DILocation(line: 154, column: 27, scope: !3203)
!3206 = !DILocation(line: 154, column: 13, scope: !3199)
!3207 = !DILocation(line: 155, column: 36, scope: !3203)
!3208 = !DILocation(line: 155, column: 40, scope: !3203)
!3209 = !DILocation(line: 155, column: 19, scope: !3203)
!3210 = !DILocation(line: 155, column: 23, scope: !3203)
!3211 = !DILocation(line: 155, column: 21, scope: !3203)
!3212 = !DILocation(line: 155, column: 31, scope: !3203)
!3213 = !DILocation(line: 155, column: 29, scope: !3203)
!3214 = !DILocation(line: 155, column: 34, scope: !3203)
!3215 = !DILocation(line: 155, column: 17, scope: !3203)
!3216 = !DILocation(line: 154, column: 36, scope: !3203)
!3217 = !DILocation(line: 154, column: 13, scope: !3203)
!3218 = distinct !{!3218, !3206, !3219}
!3219 = !DILocation(line: 155, column: 41, scope: !3199)
!3220 = !DILocation(line: 156, column: 15, scope: !3200)
!3221 = !DILocation(line: 156, column: 19, scope: !3200)
!3222 = !DILocation(line: 156, column: 17, scope: !3200)
!3223 = !DILocation(line: 156, column: 27, scope: !3200)
!3224 = !DILocation(line: 156, column: 25, scope: !3200)
!3225 = !DILocation(line: 156, column: 30, scope: !3200)
!3226 = !DILocation(line: 157, column: 22, scope: !3200)
!3227 = !DILocation(line: 157, column: 27, scope: !3200)
!3228 = !DILocation(line: 157, column: 19, scope: !3200)
!3229 = !DILocation(line: 158, column: 9, scope: !3200)
!3230 = !DILocation(line: 159, column: 13, scope: !3195)
!3231 = !DILocation(line: 160, column: 17, scope: !3195)
!3232 = !DILocation(line: 160, column: 22, scope: !3195)
!3233 = !DILocation(line: 160, column: 9, scope: !3195)
!3234 = !DILocation(line: 165, column: 32, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3195, file: !105, line: 161, column: 9)
!3236 = !DILocation(line: 165, column: 37, scope: !3235)
!3237 = !DILocation(line: 165, column: 43, scope: !3235)
!3238 = !DILocation(line: 165, column: 24, scope: !3235)
!3239 = !DILocation(line: 165, column: 22, scope: !3235)
!3240 = !DILocation(line: 166, column: 22, scope: !3235)
!3241 = !DILocation(line: 167, column: 17, scope: !3235)
!3242 = !DILocation(line: 170, column: 34, scope: !3235)
!3243 = !DILocation(line: 170, column: 39, scope: !3235)
!3244 = !DILocation(line: 170, column: 45, scope: !3235)
!3245 = !DILocation(line: 170, column: 24, scope: !3235)
!3246 = !DILocation(line: 170, column: 22, scope: !3235)
!3247 = !DILocation(line: 171, column: 22, scope: !3235)
!3248 = !DILocation(line: 172, column: 17, scope: !3235)
!3249 = !DILocation(line: 175, column: 32, scope: !3235)
!3250 = !DILocation(line: 175, column: 37, scope: !3235)
!3251 = !DILocation(line: 175, column: 43, scope: !3235)
!3252 = !DILocation(line: 175, column: 24, scope: !3235)
!3253 = !DILocation(line: 175, column: 22, scope: !3235)
!3254 = !DILocation(line: 176, column: 22, scope: !3235)
!3255 = !DILocation(line: 177, column: 17, scope: !3235)
!3256 = !DILocation(line: 179, column: 32, scope: !3235)
!3257 = !DILocation(line: 179, column: 37, scope: !3235)
!3258 = !DILocation(line: 179, column: 43, scope: !3235)
!3259 = !DILocation(line: 179, column: 24, scope: !3235)
!3260 = !DILocation(line: 179, column: 22, scope: !3235)
!3261 = !DILocation(line: 180, column: 22, scope: !3235)
!3262 = !DILocation(line: 181, column: 17, scope: !3235)
!3263 = !DILocation(line: 183, column: 17, scope: !3235)
!3264 = distinct !{!3264, !3186, !3265}
!3265 = !DILocation(line: 185, column: 5, scope: !3164)
!3266 = !DILocation(line: 186, column: 9, scope: !3164)
!3267 = !DILocation(line: 187, column: 5, scope: !3164)
!3268 = !DILocation(line: 187, column: 12, scope: !3164)
!3269 = !DILocation(line: 187, column: 20, scope: !3164)
!3270 = !DILocation(line: 187, column: 18, scope: !3164)
!3271 = !DILocation(line: 189, column: 11, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3164, file: !105, line: 188, column: 5)
!3273 = !DILocation(line: 189, column: 15, scope: !3272)
!3274 = !DILocation(line: 189, column: 13, scope: !3272)
!3275 = !DILocation(line: 189, column: 22, scope: !3272)
!3276 = !DILocation(line: 190, column: 14, scope: !3272)
!3277 = distinct !{!3277, !3267, !3278}
!3278 = !DILocation(line: 191, column: 5, scope: !3164)
!3279 = !DILocation(line: 195, column: 1, scope: !3164)
!3280 = distinct !DISubprogram(name: "get_seed_32", scope: !3281, file: !3281, line: 43, type: !3282, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3284)
!3281 = !DIFile(filename: "src/coremark/core_util.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!51, !43}
!3284 = !{!3285, !3286}
!3285 = !DILocalVariable(name: "i", arg: 1, scope: !3280, file: !3281, line: 43, type: !43)
!3286 = !DILocalVariable(name: "retval", scope: !3280, file: !3281, line: 45, type: !51)
!3287 = !DILocation(line: 43, column: 17, scope: !3280)
!3288 = !DILocation(line: 45, column: 5, scope: !3280)
!3289 = !DILocation(line: 45, column: 12, scope: !3280)
!3290 = !DILocation(line: 46, column: 13, scope: !3280)
!3291 = !DILocation(line: 46, column: 5, scope: !3280)
!3292 = !DILocation(line: 49, column: 22, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3280, file: !3281, line: 47, column: 5)
!3294 = !DILocation(line: 49, column: 20, scope: !3293)
!3295 = !DILocation(line: 50, column: 13, scope: !3293)
!3296 = !DILocation(line: 52, column: 22, scope: !3293)
!3297 = !DILocation(line: 52, column: 20, scope: !3293)
!3298 = !DILocation(line: 53, column: 13, scope: !3293)
!3299 = !DILocation(line: 55, column: 22, scope: !3293)
!3300 = !DILocation(line: 55, column: 20, scope: !3293)
!3301 = !DILocation(line: 56, column: 13, scope: !3293)
!3302 = !DILocation(line: 58, column: 22, scope: !3293)
!3303 = !DILocation(line: 58, column: 20, scope: !3293)
!3304 = !DILocation(line: 59, column: 13, scope: !3293)
!3305 = !DILocation(line: 61, column: 22, scope: !3293)
!3306 = !DILocation(line: 61, column: 20, scope: !3293)
!3307 = !DILocation(line: 62, column: 13, scope: !3293)
!3308 = !DILocation(line: 64, column: 20, scope: !3293)
!3309 = !DILocation(line: 65, column: 13, scope: !3293)
!3310 = !DILocation(line: 67, column: 12, scope: !3280)
!3311 = !DILocation(line: 68, column: 1, scope: !3280)
!3312 = !DILocation(line: 67, column: 5, scope: !3280)
!3313 = distinct !DISubprogram(name: "crcu8", scope: !3281, file: !3281, line: 165, type: !3314, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!53, !64, !53}
!3316 = !{!3317, !3318, !3319, !3320, !3321}
!3317 = !DILocalVariable(name: "data", arg: 1, scope: !3313, file: !3281, line: 165, type: !64)
!3318 = !DILocalVariable(name: "crc", arg: 2, scope: !3313, file: !3281, line: 165, type: !53)
!3319 = !DILocalVariable(name: "i", scope: !3313, file: !3281, line: 167, type: !64)
!3320 = !DILocalVariable(name: "x16", scope: !3313, file: !3281, line: 167, type: !64)
!3321 = !DILocalVariable(name: "carry", scope: !3313, file: !3281, line: 167, type: !64)
!3322 = !DILocation(line: 165, column: 13, scope: !3313)
!3323 = !DILocation(line: 165, column: 26, scope: !3313)
!3324 = !DILocation(line: 167, column: 5, scope: !3313)
!3325 = !DILocation(line: 167, column: 11, scope: !3313)
!3326 = !DILocation(line: 167, column: 18, scope: !3313)
!3327 = !DILocation(line: 167, column: 27, scope: !3313)
!3328 = !DILocation(line: 169, column: 12, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3313, file: !3281, line: 169, column: 5)
!3330 = !DILocation(line: 169, column: 10, scope: !3329)
!3331 = !DILocation(line: 169, column: 17, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !3281, line: 169, column: 5)
!3333 = !DILocation(line: 169, column: 19, scope: !3332)
!3334 = !DILocation(line: 169, column: 5, scope: !3329)
!3335 = !DILocation(line: 171, column: 24, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !3281, line: 170, column: 5)
!3337 = !DILocation(line: 171, column: 29, scope: !3336)
!3338 = !DILocation(line: 171, column: 44, scope: !3336)
!3339 = !DILocation(line: 171, column: 37, scope: !3336)
!3340 = !DILocation(line: 171, column: 48, scope: !3336)
!3341 = !DILocation(line: 171, column: 34, scope: !3336)
!3342 = !DILocation(line: 171, column: 15, scope: !3336)
!3343 = !DILocation(line: 171, column: 13, scope: !3336)
!3344 = !DILocation(line: 172, column: 14, scope: !3336)
!3345 = !DILocation(line: 174, column: 13, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3336, file: !3281, line: 174, column: 13)
!3347 = !DILocation(line: 174, column: 17, scope: !3346)
!3348 = !DILocation(line: 174, column: 13, scope: !3336)
!3349 = !DILocation(line: 176, column: 17, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !3281, line: 175, column: 9)
!3351 = !DILocation(line: 177, column: 19, scope: !3350)
!3352 = !DILocation(line: 178, column: 9, scope: !3350)
!3353 = !DILocation(line: 180, column: 19, scope: !3346)
!3354 = !DILocation(line: 181, column: 13, scope: !3336)
!3355 = !DILocation(line: 182, column: 13, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3336, file: !3281, line: 182, column: 13)
!3357 = !DILocation(line: 182, column: 13, scope: !3336)
!3358 = !DILocation(line: 183, column: 17, scope: !3356)
!3359 = !DILocation(line: 183, column: 13, scope: !3356)
!3360 = !DILocation(line: 185, column: 17, scope: !3356)
!3361 = !DILocation(line: 186, column: 5, scope: !3336)
!3362 = !DILocation(line: 169, column: 25, scope: !3332)
!3363 = !DILocation(line: 169, column: 5, scope: !3332)
!3364 = distinct !{!3364, !3334, !3365}
!3365 = !DILocation(line: 186, column: 5, scope: !3329)
!3366 = !DILocation(line: 187, column: 12, scope: !3313)
!3367 = !DILocation(line: 188, column: 1, scope: !3313)
!3368 = !DILocation(line: 187, column: 5, scope: !3313)
!3369 = distinct !DISubprogram(name: "crcu16", scope: !3281, file: !3281, line: 190, type: !3370, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!53, !53, !53}
!3372 = !{!3373, !3374}
!3373 = !DILocalVariable(name: "newval", arg: 1, scope: !3369, file: !3281, line: 190, type: !53)
!3374 = !DILocalVariable(name: "crc", arg: 2, scope: !3369, file: !3281, line: 190, type: !53)
!3375 = !DILocation(line: 190, column: 15, scope: !3369)
!3376 = !DILocation(line: 190, column: 30, scope: !3369)
!3377 = !DILocation(line: 192, column: 25, scope: !3369)
!3378 = !DILocation(line: 192, column: 17, scope: !3369)
!3379 = !DILocation(line: 192, column: 34, scope: !3369)
!3380 = !DILocation(line: 192, column: 11, scope: !3369)
!3381 = !DILocation(line: 192, column: 9, scope: !3369)
!3382 = !DILocation(line: 193, column: 26, scope: !3369)
!3383 = !DILocation(line: 193, column: 25, scope: !3369)
!3384 = !DILocation(line: 193, column: 34, scope: !3369)
!3385 = !DILocation(line: 193, column: 17, scope: !3369)
!3386 = !DILocation(line: 193, column: 41, scope: !3369)
!3387 = !DILocation(line: 193, column: 11, scope: !3369)
!3388 = !DILocation(line: 193, column: 9, scope: !3369)
!3389 = !DILocation(line: 194, column: 12, scope: !3369)
!3390 = !DILocation(line: 194, column: 5, scope: !3369)
!3391 = distinct !DISubprogram(name: "crcu32", scope: !3281, file: !3281, line: 197, type: !3392, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!53, !23, !53}
!3394 = !{!3395, !3396}
!3395 = !DILocalVariable(name: "newval", arg: 1, scope: !3391, file: !3281, line: 197, type: !23)
!3396 = !DILocalVariable(name: "crc", arg: 2, scope: !3391, file: !3281, line: 197, type: !53)
!3397 = !DILocation(line: 197, column: 15, scope: !3391)
!3398 = !DILocation(line: 197, column: 30, scope: !3391)
!3399 = !DILocation(line: 199, column: 25, scope: !3391)
!3400 = !DILocation(line: 199, column: 17, scope: !3391)
!3401 = !DILocation(line: 199, column: 33, scope: !3391)
!3402 = !DILocation(line: 199, column: 11, scope: !3391)
!3403 = !DILocation(line: 199, column: 9, scope: !3391)
!3404 = !DILocation(line: 200, column: 26, scope: !3391)
!3405 = !DILocation(line: 200, column: 33, scope: !3391)
!3406 = !DILocation(line: 200, column: 17, scope: !3391)
!3407 = !DILocation(line: 200, column: 41, scope: !3391)
!3408 = !DILocation(line: 200, column: 11, scope: !3391)
!3409 = !DILocation(line: 200, column: 9, scope: !3391)
!3410 = !DILocation(line: 201, column: 12, scope: !3391)
!3411 = !DILocation(line: 201, column: 5, scope: !3391)
!3412 = distinct !DISubprogram(name: "crc16", scope: !3281, file: !3281, line: 204, type: !3413, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!53, !12, !53}
!3415 = !{!3416, !3417}
!3416 = !DILocalVariable(name: "newval", arg: 1, scope: !3412, file: !3281, line: 204, type: !12)
!3417 = !DILocalVariable(name: "crc", arg: 2, scope: !3412, file: !3281, line: 204, type: !53)
!3418 = !DILocation(line: 204, column: 14, scope: !3412)
!3419 = !DILocation(line: 204, column: 29, scope: !3412)
!3420 = !DILocation(line: 206, column: 27, scope: !3412)
!3421 = !DILocation(line: 206, column: 35, scope: !3412)
!3422 = !DILocation(line: 206, column: 12, scope: !3412)
!3423 = !DILocation(line: 206, column: 5, scope: !3412)
!3424 = distinct !DISubprogram(name: "check_data_types", scope: !3281, file: !3281, line: 210, type: !3425, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !231, retainedNodes: !3426)
!3425 = !DISubroutineType(types: !101)
!3426 = !{!3427}
!3427 = !DILocalVariable(name: "retval", scope: !3424, file: !3281, line: 212, type: !64)
!3428 = !DILocation(line: 212, column: 5, scope: !3424)
!3429 = !DILocation(line: 212, column: 11, scope: !3424)
!3430 = !DILocation(line: 244, column: 9, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3424, file: !3281, line: 244, column: 9)
!3432 = !DILocation(line: 244, column: 16, scope: !3431)
!3433 = !DILocation(line: 244, column: 9, scope: !3424)
!3434 = !DILocation(line: 246, column: 9, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3431, file: !3281, line: 245, column: 5)
!3436 = !DILocation(line: 247, column: 5, scope: !3435)
!3437 = !DILocation(line: 248, column: 12, scope: !3424)
!3438 = !DILocation(line: 249, column: 1, scope: !3424)
!3439 = !DILocation(line: 248, column: 5, scope: !3424)
!3440 = distinct !DISubprogram(name: "clock", scope: !125, file: !125, line: 73, type: !3441, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!137}
!3443 = !DILocation(line: 74, column: 10, scope: !3440)
!3444 = !{!3445, !3445, i64 0}
!3445 = !{!"long long", !294, i64 0}
!3446 = !DILocation(line: 74, column: 3, scope: !3440)
!3447 = distinct !DISubprogram(name: "start_time", scope: !125, file: !125, line: 90, type: !214, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!3448 = !DILocation(line: 92, column: 5, scope: !3447)
!3449 = !DILocation(line: 93, column: 1, scope: !3447)
!3450 = distinct !DISubprogram(name: "stop_time", scope: !125, file: !125, line: 103, type: !214, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !4)
!3451 = !DILocation(line: 105, column: 5, scope: !3450)
!3452 = !DILocation(line: 106, column: 1, scope: !3450)
!3453 = distinct !DISubprogram(name: "get_time", scope: !125, file: !125, line: 117, type: !3454, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!117}
!3456 = !{!3457}
!3457 = !DILocalVariable(name: "elapsed", scope: !3453, file: !125, line: 119, type: !117)
!3458 = !DILocation(line: 119, column: 5, scope: !3453)
!3459 = !DILocation(line: 119, column: 16, scope: !3453)
!3460 = !DILocation(line: 120, column: 24, scope: !3453)
!3461 = !DILocation(line: 120, column: 11, scope: !3453)
!3462 = !DILocation(line: 121, column: 12, scope: !3453)
!3463 = !DILocation(line: 122, column: 1, scope: !3453)
!3464 = !DILocation(line: 121, column: 5, scope: !3453)
!3465 = distinct !DISubprogram(name: "time_in_secs", scope: !125, file: !125, line: 131, type: !3466, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!68, !117}
!3468 = !{!3469, !3470}
!3469 = !DILocalVariable(name: "ticks", arg: 1, scope: !3465, file: !125, line: 131, type: !117)
!3470 = !DILocalVariable(name: "retval", scope: !3465, file: !125, line: 133, type: !68)
!3471 = !DILocation(line: 131, column: 25, scope: !3465)
!3472 = !DILocation(line: 133, column: 5, scope: !3465)
!3473 = !DILocation(line: 133, column: 14, scope: !3465)
!3474 = !DILocation(line: 133, column: 34, scope: !3465)
!3475 = !DILocation(line: 133, column: 24, scope: !3465)
!3476 = !DILocation(line: 133, column: 41, scope: !3465)
!3477 = !DILocation(line: 134, column: 12, scope: !3465)
!3478 = !DILocation(line: 135, column: 1, scope: !3465)
!3479 = !DILocation(line: 134, column: 5, scope: !3465)
!3480 = distinct !DISubprogram(name: "portable_init", scope: !125, file: !125, line: 144, type: !3481, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !3489)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !3483, !3488, !1349}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "core_portable", file: !13, line: 195, baseType: !3485)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CORE_PORTABLE_S", file: !13, line: 192, size: 8, elements: !3486)
!3486 = !{!3487}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "portable_id", scope: !3485, file: !13, line: 194, baseType: !64, size: 8)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!3489 = !{!3490, !3491, !3492}
!3490 = !DILocalVariable(name: "p", arg: 1, scope: !3480, file: !125, line: 144, type: !3483)
!3491 = !DILocalVariable(name: "argc", arg: 2, scope: !3480, file: !125, line: 144, type: !3488)
!3492 = !DILocalVariable(name: "argv", arg: 3, scope: !3480, file: !125, line: 144, type: !1349)
!3493 = !DILocation(line: 144, column: 30, scope: !3480)
!3494 = !DILocation(line: 144, column: 38, scope: !3480)
!3495 = !DILocation(line: 144, column: 50, scope: !3480)
!3496 = !DILocation(line: 156, column: 5, scope: !3480)
!3497 = !DILocation(line: 156, column: 8, scope: !3480)
!3498 = !DILocation(line: 156, column: 20, scope: !3480)
!3499 = !{!347, !294, i64 0}
!3500 = !DILocation(line: 157, column: 1, scope: !3480)
!3501 = distinct !DISubprogram(name: "portable_fini", scope: !125, file: !125, line: 162, type: !3502, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !114, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{null, !3483}
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "p", arg: 1, scope: !3501, file: !125, line: 162, type: !3483)
!3506 = !DILocation(line: 162, column: 30, scope: !3501)
!3507 = !DILocation(line: 164, column: 5, scope: !3501)
!3508 = !DILocation(line: 164, column: 8, scope: !3501)
!3509 = !DILocation(line: 164, column: 20, scope: !3501)
!3510 = !DILocation(line: 165, column: 1, scope: !3501)
!3511 = distinct !DISubprogram(name: "printf_", scope: !148, file: !148, line: 862, type: !3512, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3516)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!43, !3514, null}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!3516 = !{!3517, !3518, !3525, !3527}
!3517 = !DILocalVariable(name: "format", arg: 1, scope: !3511, file: !148, line: 862, type: !3514)
!3518 = !DILocalVariable(name: "va", scope: !3511, file: !148, line: 864, type: !3519)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3520, line: 14, baseType: !3521)
!3520 = !DIFile(filename: "noelle/code/llvm-9.0.1-install/lib/clang/9.0.1/include/stdarg.h", directory: "/home/vkortbeek/devel")
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, line: 864, baseType: !3522)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", file: !158, line: 864, size: 32, elements: !3523)
!3523 = !{!3524}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3522, file: !158, line: 864, baseType: !19, size: 32)
!3525 = !DILocalVariable(name: "buffer", scope: !3511, file: !148, line: 866, type: !3526)
!3526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !1362)
!3527 = !DILocalVariable(name: "ret", scope: !3511, file: !148, line: 867, type: !3528)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3529 = !DILocation(line: 862, column: 25, scope: !3511)
!3530 = !DILocation(line: 864, column: 3, scope: !3511)
!3531 = !DILocation(line: 864, column: 11, scope: !3511)
!3532 = !DILocation(line: 865, column: 3, scope: !3511)
!3533 = !DILocation(line: 866, column: 3, scope: !3511)
!3534 = !DILocation(line: 866, column: 8, scope: !3511)
!3535 = !DILocation(line: 867, column: 3, scope: !3511)
!3536 = !DILocation(line: 867, column: 13, scope: !3511)
!3537 = !DILocation(line: 867, column: 41, scope: !3511)
!3538 = !DILocation(line: 867, column: 61, scope: !3511)
!3539 = !DILocation(line: 867, column: 19, scope: !3511)
!3540 = !DILocation(line: 868, column: 3, scope: !3511)
!3541 = !DILocation(line: 869, column: 10, scope: !3511)
!3542 = !DILocation(line: 870, column: 1, scope: !3511)
!3543 = !DILocation(line: 869, column: 3, scope: !3511)
!3544 = distinct !DISubprogram(name: "_out_char", scope: !148, file: !148, line: 149, type: !155, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3545)
!3545 = !{!3546, !3547, !3548, !3549}
!3546 = !DILocalVariable(name: "character", arg: 1, scope: !3544, file: !148, line: 149, type: !67)
!3547 = !DILocalVariable(name: "buffer", arg: 2, scope: !3544, file: !148, line: 149, type: !19)
!3548 = !DILocalVariable(name: "idx", arg: 3, scope: !3544, file: !148, line: 149, type: !151)
!3549 = !DILocalVariable(name: "maxlen", arg: 4, scope: !3544, file: !148, line: 149, type: !151)
!3550 = !DILocation(line: 149, column: 35, scope: !3544)
!3551 = !DILocation(line: 149, column: 52, scope: !3544)
!3552 = !DILocation(line: 149, column: 67, scope: !3544)
!3553 = !DILocation(line: 149, column: 79, scope: !3544)
!3554 = !DILocation(line: 151, column: 9, scope: !3544)
!3555 = !DILocation(line: 151, column: 23, scope: !3544)
!3556 = !DILocation(line: 151, column: 34, scope: !3544)
!3557 = !DILocation(line: 152, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3544, file: !148, line: 152, column: 7)
!3559 = !DILocation(line: 152, column: 7, scope: !3544)
!3560 = !DILocation(line: 153, column: 14, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3558, file: !148, line: 152, column: 18)
!3562 = !DILocation(line: 153, column: 5, scope: !3561)
!3563 = !DILocation(line: 154, column: 3, scope: !3561)
!3564 = !DILocation(line: 155, column: 1, scope: !3544)
!3565 = distinct !DISubprogram(name: "_vsnprintf", scope: !148, file: !148, line: 577, type: !3566, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !3569)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!43, !153, !66, !3568, !3514, !3519}
!3568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3585, !3591, !3594, !3601, !3606, !3608, !3614, !3616, !3618, !3619}
!3570 = !DILocalVariable(name: "out", arg: 1, scope: !3565, file: !148, line: 577, type: !153)
!3571 = !DILocalVariable(name: "buffer", arg: 2, scope: !3565, file: !148, line: 577, type: !66)
!3572 = !DILocalVariable(name: "maxlen", arg: 3, scope: !3565, file: !148, line: 577, type: !3568)
!3573 = !DILocalVariable(name: "format", arg: 4, scope: !3565, file: !148, line: 577, type: !3514)
!3574 = !DILocalVariable(name: "va", arg: 5, scope: !3565, file: !148, line: 577, type: !3519)
!3575 = !DILocalVariable(name: "flags", scope: !3565, file: !148, line: 579, type: !24)
!3576 = !DILocalVariable(name: "width", scope: !3565, file: !148, line: 579, type: !24)
!3577 = !DILocalVariable(name: "precision", scope: !3565, file: !148, line: 579, type: !24)
!3578 = !DILocalVariable(name: "n", scope: !3565, file: !148, line: 579, type: !24)
!3579 = !DILocalVariable(name: "idx", scope: !3565, file: !148, line: 580, type: !151)
!3580 = !DILocalVariable(name: "w", scope: !3581, file: !148, line: 620, type: !3528)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !148, line: 619, column: 30)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !148, line: 619, column: 14)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !148, line: 616, column: 9)
!3584 = distinct !DILexicalBlock(scope: !3565, file: !148, line: 588, column: 3)
!3585 = !DILocalVariable(name: "prec", scope: !3586, file: !148, line: 640, type: !3528)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !148, line: 639, column: 32)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !148, line: 639, column: 16)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !148, line: 636, column: 11)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !148, line: 633, column: 25)
!3590 = distinct !DILexicalBlock(scope: !3584, file: !148, line: 633, column: 9)
!3591 = !DILocalVariable(name: "base", scope: !3592, file: !148, line: 692, type: !24)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !148, line: 690, column: 18)
!3593 = distinct !DILexicalBlock(scope: !3584, file: !148, line: 683, column: 22)
!3594 = !DILocalVariable(name: "value", scope: !3595, file: !148, line: 726, type: !3599)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !148, line: 724, column: 40)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !148, line: 724, column: 15)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !148, line: 722, column: 51)
!3598 = distinct !DILexicalBlock(scope: !3592, file: !148, line: 722, column: 13)
!3599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3600)
!3600 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!3601 = !DILocalVariable(name: "value", scope: !3602, file: !148, line: 731, type: !3604)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !148, line: 730, column: 40)
!3603 = distinct !DILexicalBlock(scope: !3596, file: !148, line: 730, column: 20)
!3604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3605)
!3605 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!3606 = !DILocalVariable(name: "value", scope: !3607, file: !148, line: 735, type: !3528)
!3607 = distinct !DILexicalBlock(scope: !3603, file: !148, line: 734, column: 16)
!3608 = !DILocalVariable(name: "value", scope: !3609, file: !148, line: 750, type: !3613)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !148, line: 749, column: 16)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !148, line: 746, column: 20)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !148, line: 741, column: 15)
!3612 = distinct !DILexicalBlock(scope: !3598, file: !148, line: 739, column: 14)
!3613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!3614 = !DILocalVariable(name: "l", scope: !3615, file: !148, line: 777, type: !24)
!3615 = distinct !DILexicalBlock(scope: !3593, file: !148, line: 776, column: 18)
!3616 = !DILocalVariable(name: "p", scope: !3617, file: !148, line: 797, type: !3514)
!3617 = distinct !DILexicalBlock(scope: !3593, file: !148, line: 796, column: 18)
!3618 = !DILocalVariable(name: "l", scope: !3617, file: !148, line: 798, type: !24)
!3619 = !DILocalVariable(name: "is_ll", scope: !3620, file: !148, line: 826, type: !3621)
!3620 = distinct !DILexicalBlock(scope: !3593, file: !148, line: 822, column: 18)
!3621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!3622 = !DILocation(line: 577, column: 36, scope: !3565)
!3623 = !DILocation(line: 577, column: 47, scope: !3565)
!3624 = !DILocation(line: 577, column: 68, scope: !3565)
!3625 = !DILocation(line: 577, column: 88, scope: !3565)
!3626 = !DILocation(line: 577, column: 104, scope: !3565)
!3627 = !DILocation(line: 579, column: 3, scope: !3565)
!3628 = !DILocation(line: 579, column: 16, scope: !3565)
!3629 = !DILocation(line: 579, column: 23, scope: !3565)
!3630 = !DILocation(line: 579, column: 30, scope: !3565)
!3631 = !DILocation(line: 579, column: 41, scope: !3565)
!3632 = !DILocation(line: 580, column: 3, scope: !3565)
!3633 = !DILocation(line: 580, column: 10, scope: !3565)
!3634 = !DILocation(line: 582, column: 8, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3565, file: !148, line: 582, column: 7)
!3636 = !DILocation(line: 582, column: 7, scope: !3565)
!3637 = !DILocation(line: 584, column: 9, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3635, file: !148, line: 582, column: 16)
!3639 = !DILocation(line: 585, column: 3, scope: !3638)
!3640 = !DILocation(line: 587, column: 3, scope: !3565)
!3641 = !DILocation(line: 587, column: 11, scope: !3565)
!3642 = !DILocation(line: 587, column: 10, scope: !3565)
!3643 = !DILocation(line: 590, column: 10, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3584, file: !148, line: 590, column: 9)
!3645 = !DILocation(line: 590, column: 9, scope: !3644)
!3646 = !DILocation(line: 590, column: 17, scope: !3644)
!3647 = !DILocation(line: 590, column: 9, scope: !3584)
!3648 = !DILocation(line: 592, column: 7, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3644, file: !148, line: 590, column: 25)
!3650 = !DILocation(line: 592, column: 12, scope: !3649)
!3651 = !DILocation(line: 592, column: 11, scope: !3649)
!3652 = !DILocation(line: 592, column: 20, scope: !3649)
!3653 = !DILocation(line: 592, column: 31, scope: !3649)
!3654 = !DILocation(line: 592, column: 35, scope: !3649)
!3655 = !DILocation(line: 593, column: 13, scope: !3649)
!3656 = !DILocation(line: 594, column: 7, scope: !3649)
!3657 = distinct !{!3657, !3640, !3658}
!3658 = !DILocation(line: 850, column: 3, scope: !3565)
!3659 = !DILocation(line: 598, column: 13, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3644, file: !148, line: 596, column: 10)
!3661 = !DILocation(line: 602, column: 11, scope: !3584)
!3662 = !DILocation(line: 603, column: 5, scope: !3584)
!3663 = !DILocation(line: 604, column: 16, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3584, file: !148, line: 603, column: 8)
!3665 = !DILocation(line: 604, column: 15, scope: !3664)
!3666 = !DILocation(line: 604, column: 7, scope: !3664)
!3667 = !DILocation(line: 605, column: 25, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3664, file: !148, line: 604, column: 24)
!3669 = !DILocation(line: 605, column: 49, scope: !3668)
!3670 = !DILocation(line: 605, column: 55, scope: !3668)
!3671 = !DILocation(line: 605, column: 61, scope: !3668)
!3672 = !DILocation(line: 606, column: 25, scope: !3668)
!3673 = !DILocation(line: 606, column: 49, scope: !3668)
!3674 = !DILocation(line: 606, column: 55, scope: !3668)
!3675 = !DILocation(line: 606, column: 61, scope: !3668)
!3676 = !DILocation(line: 607, column: 25, scope: !3668)
!3677 = !DILocation(line: 607, column: 49, scope: !3668)
!3678 = !DILocation(line: 607, column: 55, scope: !3668)
!3679 = !DILocation(line: 607, column: 61, scope: !3668)
!3680 = !DILocation(line: 608, column: 25, scope: !3668)
!3681 = !DILocation(line: 608, column: 49, scope: !3668)
!3682 = !DILocation(line: 608, column: 55, scope: !3668)
!3683 = !DILocation(line: 608, column: 61, scope: !3668)
!3684 = !DILocation(line: 609, column: 25, scope: !3668)
!3685 = !DILocation(line: 609, column: 49, scope: !3668)
!3686 = !DILocation(line: 609, column: 55, scope: !3668)
!3687 = !DILocation(line: 609, column: 61, scope: !3668)
!3688 = !DILocation(line: 610, column: 55, scope: !3668)
!3689 = !DILocation(line: 610, column: 61, scope: !3668)
!3690 = !DILocation(line: 612, column: 5, scope: !3664)
!3691 = !DILocation(line: 612, column: 14, scope: !3584)
!3692 = distinct !{!3692, !3662, !3693}
!3693 = !DILocation(line: 612, column: 15, scope: !3584)
!3694 = !DILocation(line: 615, column: 11, scope: !3584)
!3695 = !DILocation(line: 616, column: 20, scope: !3583)
!3696 = !DILocation(line: 616, column: 19, scope: !3583)
!3697 = !DILocation(line: 616, column: 9, scope: !3583)
!3698 = !DILocation(line: 616, column: 9, scope: !3584)
!3699 = !DILocation(line: 617, column: 15, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3583, file: !148, line: 616, column: 29)
!3701 = !DILocation(line: 617, column: 13, scope: !3700)
!3702 = !DILocation(line: 618, column: 5, scope: !3700)
!3703 = !DILocation(line: 619, column: 15, scope: !3582)
!3704 = !DILocation(line: 619, column: 14, scope: !3582)
!3705 = !DILocation(line: 619, column: 22, scope: !3582)
!3706 = !DILocation(line: 619, column: 14, scope: !3583)
!3707 = !DILocation(line: 620, column: 7, scope: !3581)
!3708 = !DILocation(line: 620, column: 17, scope: !3581)
!3709 = !DILocation(line: 620, column: 21, scope: !3581)
!3710 = !DILocation(line: 621, column: 11, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3581, file: !148, line: 621, column: 11)
!3712 = !DILocation(line: 621, column: 13, scope: !3711)
!3713 = !DILocation(line: 621, column: 11, scope: !3581)
!3714 = !DILocation(line: 622, column: 15, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3711, file: !148, line: 621, column: 18)
!3716 = !DILocation(line: 623, column: 32, scope: !3715)
!3717 = !DILocation(line: 623, column: 31, scope: !3715)
!3718 = !DILocation(line: 623, column: 15, scope: !3715)
!3719 = !DILocation(line: 624, column: 7, scope: !3715)
!3720 = !DILocation(line: 626, column: 31, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3711, file: !148, line: 625, column: 12)
!3722 = !DILocation(line: 626, column: 15, scope: !3721)
!3723 = !DILocation(line: 628, column: 13, scope: !3581)
!3724 = !DILocation(line: 629, column: 5, scope: !3582)
!3725 = !DILocation(line: 629, column: 5, scope: !3581)
!3726 = !DILocation(line: 632, column: 15, scope: !3584)
!3727 = !DILocation(line: 633, column: 10, scope: !3590)
!3728 = !DILocation(line: 633, column: 9, scope: !3590)
!3729 = !DILocation(line: 633, column: 17, scope: !3590)
!3730 = !DILocation(line: 633, column: 9, scope: !3584)
!3731 = !DILocation(line: 634, column: 13, scope: !3589)
!3732 = !DILocation(line: 635, column: 13, scope: !3589)
!3733 = !DILocation(line: 636, column: 22, scope: !3588)
!3734 = !DILocation(line: 636, column: 21, scope: !3588)
!3735 = !DILocation(line: 636, column: 11, scope: !3588)
!3736 = !DILocation(line: 636, column: 11, scope: !3589)
!3737 = !DILocation(line: 637, column: 21, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3588, file: !148, line: 636, column: 31)
!3739 = !DILocation(line: 637, column: 19, scope: !3738)
!3740 = !DILocation(line: 638, column: 7, scope: !3738)
!3741 = !DILocation(line: 639, column: 17, scope: !3587)
!3742 = !DILocation(line: 639, column: 16, scope: !3587)
!3743 = !DILocation(line: 639, column: 24, scope: !3587)
!3744 = !DILocation(line: 639, column: 16, scope: !3588)
!3745 = !DILocation(line: 640, column: 9, scope: !3586)
!3746 = !DILocation(line: 640, column: 19, scope: !3586)
!3747 = !DILocation(line: 640, column: 31, scope: !3586)
!3748 = !DILocation(line: 641, column: 21, scope: !3586)
!3749 = !DILocation(line: 641, column: 26, scope: !3586)
!3750 = !DILocation(line: 641, column: 46, scope: !3586)
!3751 = !DILocation(line: 641, column: 19, scope: !3586)
!3752 = !DILocation(line: 642, column: 15, scope: !3586)
!3753 = !DILocation(line: 643, column: 7, scope: !3587)
!3754 = !DILocation(line: 643, column: 7, scope: !3586)
!3755 = !DILocation(line: 644, column: 5, scope: !3589)
!3756 = !DILocation(line: 647, column: 14, scope: !3584)
!3757 = !DILocation(line: 647, column: 13, scope: !3584)
!3758 = !DILocation(line: 647, column: 5, scope: !3584)
!3759 = !DILocation(line: 649, column: 15, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3584, file: !148, line: 647, column: 22)
!3761 = !DILocation(line: 650, column: 15, scope: !3760)
!3762 = !DILocation(line: 651, column: 14, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !148, line: 651, column: 13)
!3764 = !DILocation(line: 651, column: 13, scope: !3763)
!3765 = !DILocation(line: 651, column: 21, scope: !3763)
!3766 = !DILocation(line: 651, column: 13, scope: !3760)
!3767 = !DILocation(line: 652, column: 17, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3763, file: !148, line: 651, column: 29)
!3769 = !DILocation(line: 653, column: 17, scope: !3768)
!3770 = !DILocation(line: 654, column: 9, scope: !3768)
!3771 = !DILocation(line: 655, column: 9, scope: !3760)
!3772 = !DILocation(line: 657, column: 15, scope: !3760)
!3773 = !DILocation(line: 658, column: 15, scope: !3760)
!3774 = !DILocation(line: 659, column: 14, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3760, file: !148, line: 659, column: 13)
!3776 = !DILocation(line: 659, column: 13, scope: !3775)
!3777 = !DILocation(line: 659, column: 21, scope: !3775)
!3778 = !DILocation(line: 659, column: 13, scope: !3760)
!3779 = !DILocation(line: 660, column: 17, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3775, file: !148, line: 659, column: 29)
!3781 = !DILocation(line: 661, column: 17, scope: !3780)
!3782 = !DILocation(line: 662, column: 9, scope: !3780)
!3783 = !DILocation(line: 663, column: 9, scope: !3760)
!3784 = !DILocation(line: 666, column: 15, scope: !3760)
!3785 = !DILocation(line: 667, column: 15, scope: !3760)
!3786 = !DILocation(line: 668, column: 9, scope: !3760)
!3787 = !DILocation(line: 671, column: 15, scope: !3760)
!3788 = !DILocation(line: 672, column: 15, scope: !3760)
!3789 = !DILocation(line: 673, column: 9, scope: !3760)
!3790 = !DILocation(line: 675, column: 15, scope: !3760)
!3791 = !DILocation(line: 676, column: 15, scope: !3760)
!3792 = !DILocation(line: 677, column: 9, scope: !3760)
!3793 = !DILocation(line: 679, column: 9, scope: !3760)
!3794 = !DILocation(line: 683, column: 14, scope: !3584)
!3795 = !DILocation(line: 683, column: 13, scope: !3584)
!3796 = !DILocation(line: 683, column: 5, scope: !3584)
!3797 = !DILocation(line: 692, column: 9, scope: !3592)
!3798 = !DILocation(line: 692, column: 22, scope: !3592)
!3799 = !DILocation(line: 693, column: 14, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3592, file: !148, line: 693, column: 13)
!3801 = !DILocation(line: 693, column: 13, scope: !3800)
!3802 = !DILocation(line: 693, column: 21, scope: !3800)
!3803 = !DILocation(line: 693, column: 28, scope: !3800)
!3804 = !DILocation(line: 693, column: 32, scope: !3800)
!3805 = !DILocation(line: 693, column: 31, scope: !3800)
!3806 = !DILocation(line: 693, column: 39, scope: !3800)
!3807 = !DILocation(line: 693, column: 13, scope: !3592)
!3808 = !DILocation(line: 694, column: 16, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3800, file: !148, line: 693, column: 47)
!3810 = !DILocation(line: 695, column: 9, scope: !3809)
!3811 = !DILocation(line: 696, column: 19, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3800, file: !148, line: 696, column: 18)
!3813 = !DILocation(line: 696, column: 18, scope: !3812)
!3814 = !DILocation(line: 696, column: 26, scope: !3812)
!3815 = !DILocation(line: 696, column: 18, scope: !3800)
!3816 = !DILocation(line: 697, column: 16, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3812, file: !148, line: 696, column: 34)
!3818 = !DILocation(line: 698, column: 9, scope: !3817)
!3819 = !DILocation(line: 699, column: 19, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3812, file: !148, line: 699, column: 18)
!3821 = !DILocation(line: 699, column: 18, scope: !3820)
!3822 = !DILocation(line: 699, column: 26, scope: !3820)
!3823 = !DILocation(line: 699, column: 18, scope: !3812)
!3824 = !DILocation(line: 700, column: 16, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3820, file: !148, line: 699, column: 34)
!3826 = !DILocation(line: 701, column: 9, scope: !3825)
!3827 = !DILocation(line: 703, column: 16, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3820, file: !148, line: 702, column: 14)
!3829 = !DILocation(line: 704, column: 17, scope: !3828)
!3830 = !DILocation(line: 707, column: 14, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3592, file: !148, line: 707, column: 13)
!3832 = !DILocation(line: 707, column: 13, scope: !3831)
!3833 = !DILocation(line: 707, column: 21, scope: !3831)
!3834 = !DILocation(line: 707, column: 13, scope: !3592)
!3835 = !DILocation(line: 708, column: 17, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3831, file: !148, line: 707, column: 29)
!3837 = !DILocation(line: 709, column: 9, scope: !3836)
!3838 = !DILocation(line: 712, column: 15, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3592, file: !148, line: 712, column: 13)
!3840 = !DILocation(line: 712, column: 14, scope: !3839)
!3841 = !DILocation(line: 712, column: 22, scope: !3839)
!3842 = !DILocation(line: 712, column: 30, scope: !3839)
!3843 = !DILocation(line: 712, column: 35, scope: !3839)
!3844 = !DILocation(line: 712, column: 34, scope: !3839)
!3845 = !DILocation(line: 712, column: 42, scope: !3839)
!3846 = !DILocation(line: 712, column: 13, scope: !3592)
!3847 = !DILocation(line: 713, column: 17, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3839, file: !148, line: 712, column: 51)
!3849 = !DILocation(line: 714, column: 9, scope: !3848)
!3850 = !DILocation(line: 717, column: 13, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3592, file: !148, line: 717, column: 13)
!3852 = !DILocation(line: 717, column: 19, scope: !3851)
!3853 = !DILocation(line: 717, column: 13, scope: !3592)
!3854 = !DILocation(line: 718, column: 17, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3851, file: !148, line: 717, column: 38)
!3856 = !DILocation(line: 719, column: 9, scope: !3855)
!3857 = !DILocation(line: 722, column: 15, scope: !3598)
!3858 = !DILocation(line: 722, column: 14, scope: !3598)
!3859 = !DILocation(line: 722, column: 22, scope: !3598)
!3860 = !DILocation(line: 722, column: 30, scope: !3598)
!3861 = !DILocation(line: 722, column: 35, scope: !3598)
!3862 = !DILocation(line: 722, column: 34, scope: !3598)
!3863 = !DILocation(line: 722, column: 42, scope: !3598)
!3864 = !DILocation(line: 722, column: 13, scope: !3592)
!3865 = !DILocation(line: 724, column: 15, scope: !3596)
!3866 = !DILocation(line: 724, column: 21, scope: !3596)
!3867 = !DILocation(line: 724, column: 15, scope: !3597)
!3868 = !DILocation(line: 726, column: 13, scope: !3595)
!3869 = !DILocation(line: 726, column: 29, scope: !3595)
!3870 = !DILocation(line: 726, column: 37, scope: !3595)
!3871 = !DILocation(line: 727, column: 35, scope: !3595)
!3872 = !DILocation(line: 727, column: 40, scope: !3595)
!3873 = !DILocation(line: 727, column: 48, scope: !3595)
!3874 = !DILocation(line: 727, column: 53, scope: !3595)
!3875 = !DILocation(line: 727, column: 82, scope: !3595)
!3876 = !DILocation(line: 727, column: 88, scope: !3595)
!3877 = !DILocation(line: 727, column: 94, scope: !3595)
!3878 = !DILocation(line: 727, column: 106, scope: !3595)
!3879 = !DILocation(line: 727, column: 104, scope: !3595)
!3880 = !DILocation(line: 727, column: 114, scope: !3595)
!3881 = !DILocation(line: 727, column: 120, scope: !3595)
!3882 = !DILocation(line: 727, column: 125, scope: !3595)
!3883 = !DILocation(line: 727, column: 131, scope: !3595)
!3884 = !DILocation(line: 727, column: 142, scope: !3595)
!3885 = !DILocation(line: 727, column: 149, scope: !3595)
!3886 = !DILocation(line: 727, column: 19, scope: !3595)
!3887 = !DILocation(line: 727, column: 17, scope: !3595)
!3888 = !DILocation(line: 729, column: 11, scope: !3596)
!3889 = !DILocation(line: 729, column: 11, scope: !3595)
!3890 = !DILocation(line: 730, column: 20, scope: !3603)
!3891 = !DILocation(line: 730, column: 26, scope: !3603)
!3892 = !DILocation(line: 730, column: 20, scope: !3596)
!3893 = !DILocation(line: 731, column: 13, scope: !3602)
!3894 = !DILocation(line: 731, column: 24, scope: !3602)
!3895 = !DILocation(line: 731, column: 32, scope: !3602)
!3896 = !{!3897, !3897, i64 0}
!3897 = !{!"long", !294, i64 0}
!3898 = !DILocation(line: 732, column: 30, scope: !3602)
!3899 = !DILocation(line: 732, column: 35, scope: !3602)
!3900 = !DILocation(line: 732, column: 43, scope: !3602)
!3901 = !DILocation(line: 732, column: 48, scope: !3602)
!3902 = !DILocation(line: 732, column: 72, scope: !3602)
!3903 = !DILocation(line: 732, column: 78, scope: !3602)
!3904 = !DILocation(line: 732, column: 84, scope: !3602)
!3905 = !DILocation(line: 732, column: 96, scope: !3602)
!3906 = !DILocation(line: 732, column: 94, scope: !3602)
!3907 = !DILocation(line: 732, column: 104, scope: !3602)
!3908 = !DILocation(line: 732, column: 110, scope: !3602)
!3909 = !DILocation(line: 732, column: 115, scope: !3602)
!3910 = !DILocation(line: 732, column: 121, scope: !3602)
!3911 = !DILocation(line: 732, column: 132, scope: !3602)
!3912 = !DILocation(line: 732, column: 139, scope: !3602)
!3913 = !DILocation(line: 732, column: 19, scope: !3602)
!3914 = !DILocation(line: 732, column: 17, scope: !3602)
!3915 = !DILocation(line: 733, column: 11, scope: !3603)
!3916 = !DILocation(line: 733, column: 11, scope: !3602)
!3917 = !DILocation(line: 735, column: 13, scope: !3607)
!3918 = !DILocation(line: 735, column: 23, scope: !3607)
!3919 = !DILocation(line: 735, column: 32, scope: !3607)
!3920 = !DILocation(line: 735, column: 38, scope: !3607)
!3921 = !DILocation(line: 735, column: 31, scope: !3607)
!3922 = !DILocation(line: 735, column: 60, scope: !3607)
!3923 = !DILocation(line: 735, column: 54, scope: !3607)
!3924 = !DILocation(line: 735, column: 79, scope: !3607)
!3925 = !DILocation(line: 735, column: 85, scope: !3607)
!3926 = !DILocation(line: 735, column: 78, scope: !3607)
!3927 = !DILocation(line: 735, column: 113, scope: !3607)
!3928 = !DILocation(line: 735, column: 102, scope: !3607)
!3929 = !DILocation(line: 735, column: 131, scope: !3607)
!3930 = !DILocation(line: 736, column: 30, scope: !3607)
!3931 = !DILocation(line: 736, column: 35, scope: !3607)
!3932 = !DILocation(line: 736, column: 43, scope: !3607)
!3933 = !DILocation(line: 736, column: 48, scope: !3607)
!3934 = !DILocation(line: 736, column: 71, scope: !3607)
!3935 = !DILocation(line: 736, column: 77, scope: !3607)
!3936 = !DILocation(line: 736, column: 83, scope: !3607)
!3937 = !DILocation(line: 736, column: 95, scope: !3607)
!3938 = !DILocation(line: 736, column: 93, scope: !3607)
!3939 = !DILocation(line: 736, column: 103, scope: !3607)
!3940 = !DILocation(line: 736, column: 109, scope: !3607)
!3941 = !DILocation(line: 736, column: 114, scope: !3607)
!3942 = !DILocation(line: 736, column: 120, scope: !3607)
!3943 = !DILocation(line: 736, column: 131, scope: !3607)
!3944 = !DILocation(line: 736, column: 138, scope: !3607)
!3945 = !DILocation(line: 736, column: 19, scope: !3607)
!3946 = !DILocation(line: 736, column: 17, scope: !3607)
!3947 = !DILocation(line: 737, column: 11, scope: !3603)
!3948 = !DILocation(line: 738, column: 9, scope: !3597)
!3949 = !DILocation(line: 741, column: 15, scope: !3611)
!3950 = !DILocation(line: 741, column: 21, scope: !3611)
!3951 = !DILocation(line: 741, column: 15, scope: !3612)
!3952 = !DILocation(line: 743, column: 35, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3611, file: !148, line: 741, column: 40)
!3954 = !DILocation(line: 743, column: 40, scope: !3953)
!3955 = !DILocation(line: 743, column: 48, scope: !3953)
!3956 = !DILocation(line: 743, column: 53, scope: !3953)
!3957 = !DILocation(line: 743, column: 61, scope: !3953)
!3958 = !DILocation(line: 743, column: 100, scope: !3953)
!3959 = !DILocation(line: 743, column: 106, scope: !3953)
!3960 = !DILocation(line: 743, column: 117, scope: !3953)
!3961 = !DILocation(line: 743, column: 124, scope: !3953)
!3962 = !DILocation(line: 743, column: 19, scope: !3953)
!3963 = !DILocation(line: 743, column: 17, scope: !3953)
!3964 = !DILocation(line: 745, column: 11, scope: !3953)
!3965 = !DILocation(line: 746, column: 20, scope: !3610)
!3966 = !DILocation(line: 746, column: 26, scope: !3610)
!3967 = !DILocation(line: 746, column: 20, scope: !3611)
!3968 = !DILocation(line: 747, column: 30, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3610, file: !148, line: 746, column: 40)
!3970 = !DILocation(line: 747, column: 35, scope: !3969)
!3971 = !DILocation(line: 747, column: 43, scope: !3969)
!3972 = !DILocation(line: 747, column: 48, scope: !3969)
!3973 = !DILocation(line: 747, column: 56, scope: !3969)
!3974 = !DILocation(line: 747, column: 90, scope: !3969)
!3975 = !DILocation(line: 747, column: 96, scope: !3969)
!3976 = !DILocation(line: 747, column: 107, scope: !3969)
!3977 = !DILocation(line: 747, column: 114, scope: !3969)
!3978 = !DILocation(line: 747, column: 19, scope: !3969)
!3979 = !DILocation(line: 747, column: 17, scope: !3969)
!3980 = !DILocation(line: 748, column: 11, scope: !3969)
!3981 = !DILocation(line: 750, column: 13, scope: !3609)
!3982 = !DILocation(line: 750, column: 32, scope: !3609)
!3983 = !DILocation(line: 750, column: 41, scope: !3609)
!3984 = !DILocation(line: 750, column: 47, scope: !3609)
!3985 = !DILocation(line: 750, column: 40, scope: !3609)
!3986 = !DILocation(line: 750, column: 78, scope: !3609)
!3987 = !DILocation(line: 750, column: 63, scope: !3609)
!3988 = !DILocation(line: 750, column: 106, scope: !3609)
!3989 = !DILocation(line: 750, column: 112, scope: !3609)
!3990 = !DILocation(line: 750, column: 105, scope: !3609)
!3991 = !DILocation(line: 750, column: 149, scope: !3609)
!3992 = !DILocation(line: 750, column: 129, scope: !3609)
!3993 = !DILocation(line: 750, column: 176, scope: !3609)
!3994 = !DILocation(line: 751, column: 30, scope: !3609)
!3995 = !DILocation(line: 751, column: 35, scope: !3609)
!3996 = !DILocation(line: 751, column: 43, scope: !3609)
!3997 = !DILocation(line: 751, column: 48, scope: !3609)
!3998 = !DILocation(line: 751, column: 56, scope: !3609)
!3999 = !DILocation(line: 751, column: 70, scope: !3609)
!4000 = !DILocation(line: 751, column: 76, scope: !3609)
!4001 = !DILocation(line: 751, column: 87, scope: !3609)
!4002 = !DILocation(line: 751, column: 94, scope: !3609)
!4003 = !DILocation(line: 751, column: 19, scope: !3609)
!4004 = !DILocation(line: 751, column: 17, scope: !3609)
!4005 = !DILocation(line: 752, column: 11, scope: !3610)
!4006 = !DILocation(line: 754, column: 15, scope: !3592)
!4007 = !DILocation(line: 756, column: 7, scope: !3593)
!4008 = !DILocation(line: 760, column: 14, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3593, file: !148, line: 760, column: 13)
!4010 = !DILocation(line: 760, column: 13, scope: !4009)
!4011 = !DILocation(line: 760, column: 21, scope: !4009)
!4012 = !DILocation(line: 760, column: 13, scope: !3593)
!4013 = !DILocation(line: 760, column: 35, scope: !4009)
!4014 = !DILocation(line: 760, column: 29, scope: !4009)
!4015 = !DILocation(line: 761, column: 21, scope: !3593)
!4016 = !DILocation(line: 761, column: 26, scope: !3593)
!4017 = !DILocation(line: 761, column: 34, scope: !3593)
!4018 = !DILocation(line: 761, column: 39, scope: !3593)
!4019 = !DILocation(line: 761, column: 47, scope: !3593)
!4020 = !DILocation(line: 761, column: 67, scope: !3593)
!4021 = !DILocation(line: 761, column: 78, scope: !3593)
!4022 = !DILocation(line: 761, column: 85, scope: !3593)
!4023 = !DILocation(line: 761, column: 15, scope: !3593)
!4024 = !DILocation(line: 761, column: 13, scope: !3593)
!4025 = !DILocation(line: 762, column: 15, scope: !3593)
!4026 = !DILocation(line: 763, column: 9, scope: !3593)
!4027 = !DILocation(line: 769, column: 15, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3593, file: !148, line: 769, column: 13)
!4029 = !DILocation(line: 769, column: 14, scope: !4028)
!4030 = !DILocation(line: 769, column: 22, scope: !4028)
!4031 = !DILocation(line: 769, column: 29, scope: !4028)
!4032 = !DILocation(line: 769, column: 33, scope: !4028)
!4033 = !DILocation(line: 769, column: 32, scope: !4028)
!4034 = !DILocation(line: 769, column: 40, scope: !4028)
!4035 = !DILocation(line: 769, column: 13, scope: !3593)
!4036 = !DILocation(line: 769, column: 55, scope: !4028)
!4037 = !DILocation(line: 769, column: 49, scope: !4028)
!4038 = !DILocation(line: 770, column: 15, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3593, file: !148, line: 770, column: 13)
!4040 = !DILocation(line: 770, column: 14, scope: !4039)
!4041 = !DILocation(line: 770, column: 22, scope: !4039)
!4042 = !DILocation(line: 770, column: 29, scope: !4039)
!4043 = !DILocation(line: 770, column: 33, scope: !4039)
!4044 = !DILocation(line: 770, column: 32, scope: !4039)
!4045 = !DILocation(line: 770, column: 40, scope: !4039)
!4046 = !DILocation(line: 770, column: 13, scope: !3593)
!4047 = !DILocation(line: 770, column: 55, scope: !4039)
!4048 = !DILocation(line: 770, column: 49, scope: !4039)
!4049 = !DILocation(line: 771, column: 21, scope: !3593)
!4050 = !DILocation(line: 771, column: 26, scope: !3593)
!4051 = !DILocation(line: 771, column: 34, scope: !3593)
!4052 = !DILocation(line: 771, column: 39, scope: !3593)
!4053 = !DILocation(line: 771, column: 47, scope: !3593)
!4054 = !DILocation(line: 771, column: 67, scope: !3593)
!4055 = !DILocation(line: 771, column: 78, scope: !3593)
!4056 = !DILocation(line: 771, column: 85, scope: !3593)
!4057 = !DILocation(line: 771, column: 15, scope: !3593)
!4058 = !DILocation(line: 771, column: 13, scope: !3593)
!4059 = !DILocation(line: 772, column: 15, scope: !3593)
!4060 = !DILocation(line: 773, column: 9, scope: !3593)
!4061 = !DILocation(line: 777, column: 9, scope: !3615)
!4062 = !DILocation(line: 777, column: 22, scope: !3615)
!4063 = !DILocation(line: 779, column: 15, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !3615, file: !148, line: 779, column: 13)
!4065 = !DILocation(line: 779, column: 21, scope: !4064)
!4066 = !DILocation(line: 779, column: 13, scope: !3615)
!4067 = !DILocation(line: 780, column: 11, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4064, file: !148, line: 779, column: 36)
!4069 = !DILocation(line: 780, column: 19, scope: !4068)
!4070 = !DILocation(line: 780, column: 24, scope: !4068)
!4071 = !DILocation(line: 780, column: 22, scope: !4068)
!4072 = !DILocation(line: 781, column: 13, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4068, file: !148, line: 780, column: 31)
!4074 = !DILocation(line: 781, column: 22, scope: !4073)
!4075 = !DILocation(line: 781, column: 33, scope: !4073)
!4076 = !DILocation(line: 781, column: 37, scope: !4073)
!4077 = distinct !{!4077, !4067, !4078}
!4078 = !DILocation(line: 782, column: 11, scope: !4068)
!4079 = !DILocation(line: 783, column: 9, scope: !4068)
!4080 = !DILocation(line: 785, column: 9, scope: !3615)
!4081 = !DILocation(line: 785, column: 19, scope: !3615)
!4082 = !DILocation(line: 785, column: 13, scope: !3615)
!4083 = !DILocation(line: 785, column: 36, scope: !3615)
!4084 = !DILocation(line: 785, column: 47, scope: !3615)
!4085 = !DILocation(line: 785, column: 51, scope: !3615)
!4086 = !DILocation(line: 787, column: 13, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !3615, file: !148, line: 787, column: 13)
!4088 = !DILocation(line: 787, column: 19, scope: !4087)
!4089 = !DILocation(line: 787, column: 13, scope: !3615)
!4090 = !DILocation(line: 788, column: 11, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4087, file: !148, line: 787, column: 33)
!4092 = !DILocation(line: 788, column: 19, scope: !4091)
!4093 = !DILocation(line: 788, column: 24, scope: !4091)
!4094 = !DILocation(line: 788, column: 22, scope: !4091)
!4095 = !DILocation(line: 789, column: 13, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4091, file: !148, line: 788, column: 31)
!4097 = !DILocation(line: 789, column: 22, scope: !4096)
!4098 = !DILocation(line: 789, column: 33, scope: !4096)
!4099 = !DILocation(line: 789, column: 37, scope: !4096)
!4100 = distinct !{!4100, !4090, !4101}
!4101 = !DILocation(line: 790, column: 11, scope: !4091)
!4102 = !DILocation(line: 791, column: 9, scope: !4091)
!4103 = !DILocation(line: 792, column: 15, scope: !3615)
!4104 = !DILocation(line: 794, column: 7, scope: !3593)
!4105 = !DILocation(line: 797, column: 9, scope: !3617)
!4106 = !DILocation(line: 797, column: 21, scope: !3617)
!4107 = !DILocation(line: 797, column: 25, scope: !3617)
!4108 = !DILocation(line: 798, column: 9, scope: !3617)
!4109 = !DILocation(line: 798, column: 22, scope: !3617)
!4110 = !DILocation(line: 798, column: 37, scope: !3617)
!4111 = !DILocation(line: 798, column: 40, scope: !3617)
!4112 = !DILocation(line: 798, column: 52, scope: !3617)
!4113 = !DILocation(line: 798, column: 26, scope: !3617)
!4114 = !DILocation(line: 800, column: 13, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !3617, file: !148, line: 800, column: 13)
!4116 = !DILocation(line: 800, column: 19, scope: !4115)
!4117 = !DILocation(line: 800, column: 13, scope: !3617)
!4118 = !DILocation(line: 801, column: 16, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4115, file: !148, line: 800, column: 38)
!4120 = !DILocation(line: 801, column: 20, scope: !4119)
!4121 = !DILocation(line: 801, column: 18, scope: !4119)
!4122 = !DILocation(line: 801, column: 32, scope: !4119)
!4123 = !DILocation(line: 801, column: 36, scope: !4119)
!4124 = !DILocation(line: 801, column: 13, scope: !4119)
!4125 = !DILocation(line: 802, column: 9, scope: !4119)
!4126 = !DILocation(line: 803, column: 15, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !3617, file: !148, line: 803, column: 13)
!4128 = !DILocation(line: 803, column: 21, scope: !4127)
!4129 = !DILocation(line: 803, column: 13, scope: !3617)
!4130 = !DILocation(line: 804, column: 11, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !148, line: 803, column: 36)
!4132 = !DILocation(line: 804, column: 19, scope: !4131)
!4133 = !DILocation(line: 804, column: 24, scope: !4131)
!4134 = !DILocation(line: 804, column: 22, scope: !4131)
!4135 = !DILocation(line: 805, column: 13, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4131, file: !148, line: 804, column: 31)
!4137 = !DILocation(line: 805, column: 22, scope: !4136)
!4138 = !DILocation(line: 805, column: 33, scope: !4136)
!4139 = !DILocation(line: 805, column: 37, scope: !4136)
!4140 = distinct !{!4140, !4130, !4141}
!4141 = !DILocation(line: 806, column: 11, scope: !4131)
!4142 = !DILocation(line: 807, column: 9, scope: !4131)
!4143 = !DILocation(line: 809, column: 9, scope: !3617)
!4144 = !DILocation(line: 809, column: 18, scope: !3617)
!4145 = !DILocation(line: 809, column: 17, scope: !3617)
!4146 = !DILocation(line: 809, column: 20, scope: !3617)
!4147 = !DILocation(line: 809, column: 26, scope: !3617)
!4148 = !DILocation(line: 809, column: 32, scope: !3617)
!4149 = !DILocation(line: 809, column: 38, scope: !3617)
!4150 = !DILocation(line: 809, column: 57, scope: !3617)
!4151 = !DILocation(line: 809, column: 69, scope: !3617)
!4152 = !DILocation(line: 0, scope: !3617)
!4153 = !DILocation(line: 810, column: 11, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !3617, file: !148, line: 809, column: 74)
!4155 = !DILocation(line: 810, column: 18, scope: !4154)
!4156 = !DILocation(line: 810, column: 15, scope: !4154)
!4157 = !DILocation(line: 810, column: 23, scope: !4154)
!4158 = !DILocation(line: 810, column: 34, scope: !4154)
!4159 = !DILocation(line: 810, column: 38, scope: !4154)
!4160 = distinct !{!4160, !4143, !4161}
!4161 = !DILocation(line: 811, column: 9, scope: !3617)
!4162 = !DILocation(line: 813, column: 13, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !3617, file: !148, line: 813, column: 13)
!4164 = !DILocation(line: 813, column: 19, scope: !4163)
!4165 = !DILocation(line: 813, column: 13, scope: !3617)
!4166 = !DILocation(line: 814, column: 11, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4163, file: !148, line: 813, column: 33)
!4168 = !DILocation(line: 814, column: 19, scope: !4167)
!4169 = !DILocation(line: 814, column: 24, scope: !4167)
!4170 = !DILocation(line: 814, column: 22, scope: !4167)
!4171 = !DILocation(line: 815, column: 13, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4167, file: !148, line: 814, column: 31)
!4173 = !DILocation(line: 815, column: 22, scope: !4172)
!4174 = !DILocation(line: 815, column: 33, scope: !4172)
!4175 = !DILocation(line: 815, column: 37, scope: !4172)
!4176 = distinct !{!4176, !4166, !4177}
!4177 = !DILocation(line: 816, column: 11, scope: !4167)
!4178 = !DILocation(line: 817, column: 9, scope: !4167)
!4179 = !DILocation(line: 818, column: 15, scope: !3617)
!4180 = !DILocation(line: 820, column: 7, scope: !3593)
!4181 = !DILocation(line: 823, column: 15, scope: !3620)
!4182 = !DILocation(line: 824, column: 15, scope: !3620)
!4183 = !DILocation(line: 826, column: 9, scope: !3620)
!4184 = !DILocation(line: 826, column: 20, scope: !3620)
!4185 = !{!4186, !4186, i64 0}
!4186 = !{!"_Bool", !294, i64 0}
!4187 = !DILocation(line: 832, column: 28, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !148, line: 830, column: 14)
!4189 = distinct !DILexicalBlock(scope: !3620, file: !148, line: 827, column: 13)
!4190 = !DILocation(line: 832, column: 33, scope: !4188)
!4191 = !DILocation(line: 832, column: 41, scope: !4188)
!4192 = !DILocation(line: 832, column: 46, scope: !4188)
!4193 = !DILocation(line: 832, column: 81, scope: !4188)
!4194 = !DILocation(line: 832, column: 70, scope: !4188)
!4195 = !DILocation(line: 832, column: 113, scope: !4188)
!4196 = !DILocation(line: 832, column: 124, scope: !4188)
!4197 = !DILocation(line: 832, column: 131, scope: !4188)
!4198 = !DILocation(line: 832, column: 17, scope: !4188)
!4199 = !DILocation(line: 832, column: 15, scope: !4188)
!4200 = !DILocation(line: 836, column: 15, scope: !3620)
!4201 = !DILocation(line: 838, column: 7, scope: !3593)
!4202 = !DILocation(line: 841, column: 9, scope: !3593)
!4203 = !DILocation(line: 841, column: 18, scope: !3593)
!4204 = !DILocation(line: 841, column: 29, scope: !3593)
!4205 = !DILocation(line: 841, column: 33, scope: !3593)
!4206 = !DILocation(line: 842, column: 15, scope: !3593)
!4207 = !DILocation(line: 843, column: 9, scope: !3593)
!4208 = !DILocation(line: 846, column: 9, scope: !3593)
!4209 = !DILocation(line: 846, column: 14, scope: !3593)
!4210 = !DILocation(line: 846, column: 13, scope: !3593)
!4211 = !DILocation(line: 846, column: 22, scope: !3593)
!4212 = !DILocation(line: 846, column: 33, scope: !3593)
!4213 = !DILocation(line: 846, column: 37, scope: !3593)
!4214 = !DILocation(line: 847, column: 15, scope: !3593)
!4215 = !DILocation(line: 848, column: 9, scope: !3593)
!4216 = !DILocation(line: 853, column: 3, scope: !3565)
!4217 = !DILocation(line: 853, column: 16, scope: !3565)
!4218 = !DILocation(line: 853, column: 24, scope: !3565)
!4219 = !DILocation(line: 853, column: 30, scope: !3565)
!4220 = !DILocation(line: 853, column: 28, scope: !3565)
!4221 = !DILocation(line: 853, column: 39, scope: !3565)
!4222 = !DILocation(line: 853, column: 45, scope: !3565)
!4223 = !DILocation(line: 853, column: 52, scope: !3565)
!4224 = !DILocation(line: 853, column: 58, scope: !3565)
!4225 = !DILocation(line: 856, column: 15, scope: !3565)
!4226 = !DILocation(line: 857, column: 1, scope: !3565)
!4227 = !DILocation(line: 856, column: 3, scope: !3565)
!4228 = distinct !DISubprogram(name: "_out_null", scope: !148, file: !148, line: 142, type: !155, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4229)
!4229 = !{!4230, !4231, !4232, !4233}
!4230 = !DILocalVariable(name: "character", arg: 1, scope: !4228, file: !148, line: 142, type: !67)
!4231 = !DILocalVariable(name: "buffer", arg: 2, scope: !4228, file: !148, line: 142, type: !19)
!4232 = !DILocalVariable(name: "idx", arg: 3, scope: !4228, file: !148, line: 142, type: !151)
!4233 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4228, file: !148, line: 142, type: !151)
!4234 = !DILocation(line: 142, column: 35, scope: !4228)
!4235 = !DILocation(line: 142, column: 52, scope: !4228)
!4236 = !DILocation(line: 142, column: 67, scope: !4228)
!4237 = !DILocation(line: 142, column: 79, scope: !4228)
!4238 = !DILocation(line: 144, column: 9, scope: !4228)
!4239 = !DILocation(line: 144, column: 26, scope: !4228)
!4240 = !DILocation(line: 144, column: 40, scope: !4228)
!4241 = !DILocation(line: 144, column: 51, scope: !4228)
!4242 = !DILocation(line: 145, column: 1, scope: !4228)
!4243 = distinct !DISubprogram(name: "_is_digit", scope: !148, file: !148, line: 181, type: !4244, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4246)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!188, !67}
!4246 = !{!4247}
!4247 = !DILocalVariable(name: "ch", arg: 1, scope: !4243, file: !148, line: 181, type: !67)
!4248 = !DILocation(line: 181, column: 35, scope: !4243)
!4249 = !DILocation(line: 183, column: 11, scope: !4243)
!4250 = !DILocation(line: 183, column: 14, scope: !4243)
!4251 = !DILocation(line: 183, column: 22, scope: !4243)
!4252 = !DILocation(line: 183, column: 26, scope: !4243)
!4253 = !DILocation(line: 183, column: 29, scope: !4243)
!4254 = !DILocation(line: 0, scope: !4243)
!4255 = !DILocation(line: 183, column: 3, scope: !4243)
!4256 = distinct !DISubprogram(name: "_atoi", scope: !148, file: !148, line: 188, type: !4257, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4260)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!24, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 32)
!4260 = !{!4261, !4262}
!4261 = !DILocalVariable(name: "str", arg: 1, scope: !4256, file: !148, line: 188, type: !4259)
!4262 = !DILocalVariable(name: "i", scope: !4256, file: !148, line: 190, type: !24)
!4263 = !DILocation(line: 188, column: 40, scope: !4256)
!4264 = !DILocation(line: 190, column: 3, scope: !4256)
!4265 = !DILocation(line: 190, column: 16, scope: !4256)
!4266 = !DILocation(line: 191, column: 3, scope: !4256)
!4267 = !DILocation(line: 191, column: 22, scope: !4256)
!4268 = !DILocation(line: 191, column: 21, scope: !4256)
!4269 = !DILocation(line: 191, column: 20, scope: !4256)
!4270 = !DILocation(line: 191, column: 10, scope: !4256)
!4271 = !DILocation(line: 192, column: 9, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4256, file: !148, line: 191, column: 28)
!4273 = !DILocation(line: 192, column: 11, scope: !4272)
!4274 = !DILocation(line: 192, column: 38, scope: !4272)
!4275 = !DILocation(line: 192, column: 42, scope: !4272)
!4276 = !DILocation(line: 192, column: 34, scope: !4272)
!4277 = !DILocation(line: 192, column: 46, scope: !4272)
!4278 = !DILocation(line: 192, column: 17, scope: !4272)
!4279 = !DILocation(line: 192, column: 7, scope: !4272)
!4280 = distinct !{!4280, !4266, !4281}
!4281 = !DILocation(line: 193, column: 3, scope: !4256)
!4282 = !DILocation(line: 194, column: 10, scope: !4256)
!4283 = !DILocation(line: 195, column: 1, scope: !4256)
!4284 = !DILocation(line: 194, column: 3, scope: !4256)
!4285 = distinct !DISubprogram(name: "_ntoa_long_long", scope: !148, file: !148, line: 306, type: !4286, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!151, !153, !66, !151, !151, !140, !188, !140, !24, !24, !24}
!4288 = !{!4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301}
!4289 = !DILocalVariable(name: "out", arg: 1, scope: !4285, file: !148, line: 306, type: !153)
!4290 = !DILocalVariable(name: "buffer", arg: 2, scope: !4285, file: !148, line: 306, type: !66)
!4291 = !DILocalVariable(name: "idx", arg: 3, scope: !4285, file: !148, line: 306, type: !151)
!4292 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4285, file: !148, line: 306, type: !151)
!4293 = !DILocalVariable(name: "value", arg: 5, scope: !4285, file: !148, line: 306, type: !140)
!4294 = !DILocalVariable(name: "negative", arg: 6, scope: !4285, file: !148, line: 306, type: !188)
!4295 = !DILocalVariable(name: "base", arg: 7, scope: !4285, file: !148, line: 306, type: !140)
!4296 = !DILocalVariable(name: "prec", arg: 8, scope: !4285, file: !148, line: 306, type: !24)
!4297 = !DILocalVariable(name: "width", arg: 9, scope: !4285, file: !148, line: 306, type: !24)
!4298 = !DILocalVariable(name: "flags", arg: 10, scope: !4285, file: !148, line: 306, type: !24)
!4299 = !DILocalVariable(name: "buf", scope: !4285, file: !148, line: 308, type: !182)
!4300 = !DILocalVariable(name: "len", scope: !4285, file: !148, line: 309, type: !151)
!4301 = !DILocalVariable(name: "digit", scope: !4302, file: !148, line: 319, type: !3515)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !148, line: 318, column: 8)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !148, line: 317, column: 44)
!4304 = distinct !DILexicalBlock(scope: !4285, file: !148, line: 317, column: 7)
!4305 = !DILocation(line: 306, column: 44, scope: !4285)
!4306 = !DILocation(line: 306, column: 55, scope: !4285)
!4307 = !DILocation(line: 306, column: 70, scope: !4285)
!4308 = !DILocation(line: 306, column: 82, scope: !4285)
!4309 = !DILocation(line: 306, column: 109, scope: !4285)
!4310 = !DILocation(line: 306, column: 121, scope: !4285)
!4311 = !DILocation(line: 306, column: 150, scope: !4285)
!4312 = !DILocation(line: 306, column: 169, scope: !4285)
!4313 = !DILocation(line: 306, column: 188, scope: !4285)
!4314 = !DILocation(line: 306, column: 208, scope: !4285)
!4315 = !DILocation(line: 308, column: 3, scope: !4285)
!4316 = !DILocation(line: 308, column: 8, scope: !4285)
!4317 = !DILocation(line: 309, column: 3, scope: !4285)
!4318 = !DILocation(line: 309, column: 10, scope: !4285)
!4319 = !DILocation(line: 312, column: 8, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4285, file: !148, line: 312, column: 7)
!4321 = !DILocation(line: 312, column: 7, scope: !4285)
!4322 = !DILocation(line: 313, column: 11, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4320, file: !148, line: 312, column: 15)
!4324 = !DILocation(line: 314, column: 3, scope: !4323)
!4325 = !DILocation(line: 317, column: 9, scope: !4304)
!4326 = !DILocation(line: 317, column: 15, scope: !4304)
!4327 = !DILocation(line: 317, column: 34, scope: !4304)
!4328 = !DILocation(line: 317, column: 37, scope: !4304)
!4329 = !DILocation(line: 317, column: 7, scope: !4285)
!4330 = !DILocation(line: 318, column: 5, scope: !4303)
!4331 = !DILocation(line: 319, column: 7, scope: !4302)
!4332 = !DILocation(line: 319, column: 18, scope: !4302)
!4333 = !DILocation(line: 319, column: 33, scope: !4302)
!4334 = !DILocation(line: 319, column: 41, scope: !4302)
!4335 = !DILocation(line: 319, column: 39, scope: !4302)
!4336 = !DILocation(line: 319, column: 26, scope: !4302)
!4337 = !DILocation(line: 320, column: 20, scope: !4302)
!4338 = !DILocation(line: 320, column: 26, scope: !4302)
!4339 = !DILocation(line: 320, column: 39, scope: !4302)
!4340 = !DILocation(line: 320, column: 37, scope: !4302)
!4341 = !DILocation(line: 320, column: 48, scope: !4302)
!4342 = !DILocation(line: 320, column: 54, scope: !4302)
!4343 = !DILocation(line: 320, column: 87, scope: !4302)
!4344 = !DILocation(line: 320, column: 85, scope: !4302)
!4345 = !DILocation(line: 320, column: 93, scope: !4302)
!4346 = !DILocation(line: 320, column: 14, scope: !4302)
!4347 = !DILocation(line: 320, column: 7, scope: !4302)
!4348 = !DILocation(line: 320, column: 18, scope: !4302)
!4349 = !DILocation(line: 321, column: 16, scope: !4302)
!4350 = !DILocation(line: 321, column: 13, scope: !4302)
!4351 = !DILocation(line: 322, column: 5, scope: !4303)
!4352 = !DILocation(line: 322, column: 5, scope: !4302)
!4353 = !DILocation(line: 322, column: 14, scope: !4303)
!4354 = !DILocation(line: 322, column: 20, scope: !4303)
!4355 = !DILocation(line: 322, column: 24, scope: !4303)
!4356 = !DILocation(line: 322, column: 28, scope: !4303)
!4357 = !DILocation(line: 0, scope: !4303)
!4358 = distinct !{!4358, !4330, !4359}
!4359 = !DILocation(line: 322, column: 54, scope: !4303)
!4360 = !DILocation(line: 323, column: 3, scope: !4303)
!4361 = !DILocation(line: 325, column: 23, scope: !4285)
!4362 = !DILocation(line: 325, column: 28, scope: !4285)
!4363 = !DILocation(line: 325, column: 36, scope: !4285)
!4364 = !DILocation(line: 325, column: 41, scope: !4285)
!4365 = !DILocation(line: 325, column: 49, scope: !4285)
!4366 = !DILocation(line: 325, column: 54, scope: !4285)
!4367 = !DILocation(line: 325, column: 59, scope: !4285)
!4368 = !{i8 0, i8 2}
!4369 = !DILocation(line: 325, column: 83, scope: !4285)
!4370 = !DILocation(line: 325, column: 69, scope: !4285)
!4371 = !DILocation(line: 325, column: 89, scope: !4285)
!4372 = !DILocation(line: 325, column: 95, scope: !4285)
!4373 = !DILocation(line: 325, column: 102, scope: !4285)
!4374 = !DILocation(line: 325, column: 10, scope: !4285)
!4375 = !DILocation(line: 326, column: 1, scope: !4285)
!4376 = !DILocation(line: 325, column: 3, scope: !4285)
!4377 = distinct !DISubprogram(name: "_ntoa_long", scope: !148, file: !148, line: 281, type: !4378, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!151, !153, !66, !151, !151, !70, !188, !70, !24, !24, !24}
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4381 = !DILocalVariable(name: "out", arg: 1, scope: !4377, file: !148, line: 281, type: !153)
!4382 = !DILocalVariable(name: "buffer", arg: 2, scope: !4377, file: !148, line: 281, type: !66)
!4383 = !DILocalVariable(name: "idx", arg: 3, scope: !4377, file: !148, line: 281, type: !151)
!4384 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4377, file: !148, line: 281, type: !151)
!4385 = !DILocalVariable(name: "value", arg: 5, scope: !4377, file: !148, line: 281, type: !70)
!4386 = !DILocalVariable(name: "negative", arg: 6, scope: !4377, file: !148, line: 281, type: !188)
!4387 = !DILocalVariable(name: "base", arg: 7, scope: !4377, file: !148, line: 281, type: !70)
!4388 = !DILocalVariable(name: "prec", arg: 8, scope: !4377, file: !148, line: 281, type: !24)
!4389 = !DILocalVariable(name: "width", arg: 9, scope: !4377, file: !148, line: 281, type: !24)
!4390 = !DILocalVariable(name: "flags", arg: 10, scope: !4377, file: !148, line: 281, type: !24)
!4391 = !DILocalVariable(name: "buf", scope: !4377, file: !148, line: 283, type: !182)
!4392 = !DILocalVariable(name: "len", scope: !4377, file: !148, line: 284, type: !151)
!4393 = !DILocalVariable(name: "digit", scope: !4394, file: !148, line: 294, type: !3515)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !148, line: 293, column: 8)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !148, line: 292, column: 44)
!4396 = distinct !DILexicalBlock(scope: !4377, file: !148, line: 292, column: 7)
!4397 = !DILocation(line: 281, column: 39, scope: !4377)
!4398 = !DILocation(line: 281, column: 50, scope: !4377)
!4399 = !DILocation(line: 281, column: 65, scope: !4377)
!4400 = !DILocation(line: 281, column: 77, scope: !4377)
!4401 = !DILocation(line: 281, column: 99, scope: !4377)
!4402 = !DILocation(line: 281, column: 111, scope: !4377)
!4403 = !DILocation(line: 281, column: 135, scope: !4377)
!4404 = !DILocation(line: 281, column: 154, scope: !4377)
!4405 = !DILocation(line: 281, column: 173, scope: !4377)
!4406 = !DILocation(line: 281, column: 193, scope: !4377)
!4407 = !DILocation(line: 283, column: 3, scope: !4377)
!4408 = !DILocation(line: 283, column: 8, scope: !4377)
!4409 = !DILocation(line: 284, column: 3, scope: !4377)
!4410 = !DILocation(line: 284, column: 10, scope: !4377)
!4411 = !DILocation(line: 287, column: 8, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4377, file: !148, line: 287, column: 7)
!4413 = !DILocation(line: 287, column: 7, scope: !4377)
!4414 = !DILocation(line: 288, column: 11, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4412, file: !148, line: 287, column: 15)
!4416 = !DILocation(line: 289, column: 3, scope: !4415)
!4417 = !DILocation(line: 292, column: 9, scope: !4396)
!4418 = !DILocation(line: 292, column: 15, scope: !4396)
!4419 = !DILocation(line: 292, column: 34, scope: !4396)
!4420 = !DILocation(line: 292, column: 37, scope: !4396)
!4421 = !DILocation(line: 292, column: 7, scope: !4377)
!4422 = !DILocation(line: 293, column: 5, scope: !4395)
!4423 = !DILocation(line: 294, column: 7, scope: !4394)
!4424 = !DILocation(line: 294, column: 18, scope: !4394)
!4425 = !DILocation(line: 294, column: 33, scope: !4394)
!4426 = !DILocation(line: 294, column: 41, scope: !4394)
!4427 = !DILocation(line: 294, column: 39, scope: !4394)
!4428 = !DILocation(line: 294, column: 26, scope: !4394)
!4429 = !DILocation(line: 295, column: 20, scope: !4394)
!4430 = !DILocation(line: 295, column: 26, scope: !4394)
!4431 = !DILocation(line: 295, column: 39, scope: !4394)
!4432 = !DILocation(line: 295, column: 37, scope: !4394)
!4433 = !DILocation(line: 295, column: 48, scope: !4394)
!4434 = !DILocation(line: 295, column: 54, scope: !4394)
!4435 = !DILocation(line: 295, column: 87, scope: !4394)
!4436 = !DILocation(line: 295, column: 85, scope: !4394)
!4437 = !DILocation(line: 295, column: 93, scope: !4394)
!4438 = !DILocation(line: 295, column: 14, scope: !4394)
!4439 = !DILocation(line: 295, column: 7, scope: !4394)
!4440 = !DILocation(line: 295, column: 18, scope: !4394)
!4441 = !DILocation(line: 296, column: 16, scope: !4394)
!4442 = !DILocation(line: 296, column: 13, scope: !4394)
!4443 = !DILocation(line: 297, column: 5, scope: !4395)
!4444 = !DILocation(line: 297, column: 5, scope: !4394)
!4445 = !DILocation(line: 297, column: 14, scope: !4395)
!4446 = !DILocation(line: 297, column: 20, scope: !4395)
!4447 = !DILocation(line: 297, column: 24, scope: !4395)
!4448 = !DILocation(line: 297, column: 28, scope: !4395)
!4449 = !DILocation(line: 0, scope: !4395)
!4450 = distinct !{!4450, !4422, !4451}
!4451 = !DILocation(line: 297, column: 54, scope: !4395)
!4452 = !DILocation(line: 298, column: 3, scope: !4395)
!4453 = !DILocation(line: 300, column: 23, scope: !4377)
!4454 = !DILocation(line: 300, column: 28, scope: !4377)
!4455 = !DILocation(line: 300, column: 36, scope: !4377)
!4456 = !DILocation(line: 300, column: 41, scope: !4377)
!4457 = !DILocation(line: 300, column: 49, scope: !4377)
!4458 = !DILocation(line: 300, column: 54, scope: !4377)
!4459 = !DILocation(line: 300, column: 59, scope: !4377)
!4460 = !DILocation(line: 300, column: 83, scope: !4377)
!4461 = !DILocation(line: 300, column: 89, scope: !4377)
!4462 = !DILocation(line: 300, column: 95, scope: !4377)
!4463 = !DILocation(line: 300, column: 102, scope: !4377)
!4464 = !DILocation(line: 300, column: 10, scope: !4377)
!4465 = !DILocation(line: 301, column: 1, scope: !4377)
!4466 = !DILocation(line: 300, column: 3, scope: !4377)
!4467 = !DILocation(line: 339, column: 34, scope: !147)
!4468 = !DILocation(line: 339, column: 45, scope: !147)
!4469 = !DILocation(line: 339, column: 60, scope: !147)
!4470 = !DILocation(line: 339, column: 72, scope: !147)
!4471 = !DILocation(line: 339, column: 87, scope: !147)
!4472 = !DILocation(line: 339, column: 107, scope: !147)
!4473 = !DILocation(line: 339, column: 126, scope: !147)
!4474 = !DILocation(line: 339, column: 146, scope: !147)
!4475 = !DILocation(line: 341, column: 3, scope: !147)
!4476 = !DILocation(line: 341, column: 8, scope: !147)
!4477 = !DILocation(line: 342, column: 3, scope: !147)
!4478 = !DILocation(line: 342, column: 10, scope: !147)
!4479 = !DILocation(line: 343, column: 3, scope: !147)
!4480 = !DILocation(line: 343, column: 10, scope: !147)
!4481 = !DILocation(line: 349, column: 7, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !147, file: !148, line: 349, column: 7)
!4483 = !DILocation(line: 349, column: 16, scope: !4482)
!4484 = !DILocation(line: 349, column: 13, scope: !4482)
!4485 = !DILocation(line: 349, column: 7, scope: !147)
!4486 = !DILocation(line: 350, column: 21, scope: !4482)
!4487 = !DILocation(line: 350, column: 26, scope: !4482)
!4488 = !DILocation(line: 350, column: 34, scope: !4482)
!4489 = !DILocation(line: 350, column: 39, scope: !4482)
!4490 = !DILocation(line: 350, column: 57, scope: !4482)
!4491 = !DILocation(line: 350, column: 64, scope: !4482)
!4492 = !DILocation(line: 350, column: 12, scope: !4482)
!4493 = !DILocation(line: 350, column: 5, scope: !4482)
!4494 = !DILocation(line: 351, column: 7, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !147, file: !148, line: 351, column: 7)
!4496 = !DILocation(line: 351, column: 13, scope: !4495)
!4497 = !DILocation(line: 351, column: 7, scope: !147)
!4498 = !DILocation(line: 352, column: 21, scope: !4495)
!4499 = !DILocation(line: 352, column: 26, scope: !4495)
!4500 = !DILocation(line: 352, column: 34, scope: !4495)
!4501 = !DILocation(line: 352, column: 39, scope: !4495)
!4502 = !DILocation(line: 352, column: 58, scope: !4495)
!4503 = !DILocation(line: 352, column: 65, scope: !4495)
!4504 = !DILocation(line: 352, column: 12, scope: !4495)
!4505 = !DILocation(line: 352, column: 5, scope: !4495)
!4506 = !DILocation(line: 353, column: 7, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !147, file: !148, line: 353, column: 7)
!4508 = !DILocation(line: 353, column: 13, scope: !4507)
!4509 = !DILocation(line: 353, column: 7, scope: !147)
!4510 = !DILocation(line: 354, column: 21, scope: !4507)
!4511 = !DILocation(line: 354, column: 26, scope: !4507)
!4512 = !DILocation(line: 354, column: 34, scope: !4507)
!4513 = !DILocation(line: 354, column: 39, scope: !4507)
!4514 = !DILocation(line: 354, column: 48, scope: !4507)
!4515 = !DILocation(line: 354, column: 54, scope: !4507)
!4516 = !DILocation(line: 354, column: 47, scope: !4507)
!4517 = !DILocation(line: 354, column: 87, scope: !4507)
!4518 = !DILocation(line: 354, column: 93, scope: !4507)
!4519 = !DILocation(line: 354, column: 86, scope: !4507)
!4520 = !DILocation(line: 354, column: 118, scope: !4507)
!4521 = !DILocation(line: 354, column: 125, scope: !4507)
!4522 = !DILocation(line: 354, column: 12, scope: !4507)
!4523 = !DILocation(line: 354, column: 5, scope: !4507)
!4524 = !DILocation(line: 358, column: 8, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !147, file: !148, line: 358, column: 7)
!4526 = !DILocation(line: 358, column: 14, scope: !4525)
!4527 = !DILocation(line: 358, column: 34, scope: !4525)
!4528 = !DILocation(line: 358, column: 38, scope: !4525)
!4529 = !DILocation(line: 358, column: 44, scope: !4525)
!4530 = !DILocation(line: 358, column: 7, scope: !147)
!4531 = !DILocation(line: 360, column: 18, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4525, file: !148, line: 358, column: 66)
!4533 = !DILocation(line: 360, column: 23, scope: !4532)
!4534 = !DILocation(line: 360, column: 31, scope: !4532)
!4535 = !DILocation(line: 360, column: 36, scope: !4532)
!4536 = !DILocation(line: 360, column: 44, scope: !4532)
!4537 = !DILocation(line: 360, column: 51, scope: !4532)
!4538 = !DILocation(line: 360, column: 57, scope: !4532)
!4539 = !DILocation(line: 360, column: 64, scope: !4532)
!4540 = !DILocation(line: 360, column: 12, scope: !4532)
!4541 = !DILocation(line: 360, column: 5, scope: !4532)
!4542 = !DILocation(line: 367, column: 3, scope: !147)
!4543 = !DILocation(line: 367, column: 8, scope: !147)
!4544 = !DILocation(line: 368, column: 7, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !147, file: !148, line: 368, column: 7)
!4546 = !DILocation(line: 368, column: 13, scope: !4545)
!4547 = !DILocation(line: 368, column: 7, scope: !147)
!4548 = !DILocation(line: 369, column: 14, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4545, file: !148, line: 368, column: 18)
!4550 = !DILocation(line: 370, column: 17, scope: !4549)
!4551 = !DILocation(line: 370, column: 15, scope: !4549)
!4552 = !DILocation(line: 370, column: 11, scope: !4549)
!4553 = !DILocation(line: 371, column: 3, scope: !4549)
!4554 = !DILocation(line: 374, column: 9, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !147, file: !148, line: 374, column: 7)
!4556 = !DILocation(line: 374, column: 15, scope: !4555)
!4557 = !DILocation(line: 374, column: 7, scope: !147)
!4558 = !DILocation(line: 375, column: 10, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4555, file: !148, line: 374, column: 35)
!4560 = !DILocation(line: 376, column: 3, scope: !4559)
!4561 = !DILocation(line: 378, column: 3, scope: !147)
!4562 = !DILocation(line: 378, column: 11, scope: !147)
!4563 = !DILocation(line: 378, column: 15, scope: !147)
!4564 = !DILocation(line: 378, column: 42, scope: !147)
!4565 = !DILocation(line: 378, column: 46, scope: !147)
!4566 = !DILocation(line: 378, column: 51, scope: !147)
!4567 = !DILocation(line: 0, scope: !147)
!4568 = !DILocation(line: 379, column: 12, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !147, file: !148, line: 378, column: 58)
!4570 = !DILocation(line: 379, column: 5, scope: !4569)
!4571 = !DILocation(line: 379, column: 16, scope: !4569)
!4572 = !DILocation(line: 380, column: 9, scope: !4569)
!4573 = distinct !{!4573, !4561, !4574}
!4574 = !DILocation(line: 381, column: 3, scope: !147)
!4575 = !DILocation(line: 383, column: 3, scope: !147)
!4576 = !DILocation(line: 383, column: 7, scope: !147)
!4577 = !DILocation(line: 383, column: 20, scope: !147)
!4578 = !DILocation(line: 383, column: 15, scope: !147)
!4579 = !DILocation(line: 384, column: 3, scope: !147)
!4580 = !DILocation(line: 384, column: 10, scope: !147)
!4581 = !DILocation(line: 384, column: 17, scope: !147)
!4582 = !DILocation(line: 384, column: 25, scope: !147)
!4583 = !DILocation(line: 384, column: 23, scope: !147)
!4584 = !DILocation(line: 384, column: 40, scope: !147)
!4585 = !DILocation(line: 384, column: 34, scope: !147)
!4586 = !DILocation(line: 384, column: 32, scope: !147)
!4587 = !DILocation(line: 385, column: 3, scope: !147)
!4588 = !DILocation(line: 385, column: 17, scope: !147)
!4589 = !DILocation(line: 385, column: 39, scope: !147)
!4590 = !DILocation(line: 385, column: 24, scope: !147)
!4591 = !DILocation(line: 386, column: 10, scope: !147)
!4592 = !DILocation(line: 386, column: 16, scope: !147)
!4593 = !DILocation(line: 386, column: 14, scope: !147)
!4594 = !DILocation(line: 386, column: 8, scope: !147)
!4595 = !DILocation(line: 388, column: 7, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !147, file: !148, line: 388, column: 7)
!4597 = !DILocation(line: 388, column: 12, scope: !4596)
!4598 = !DILocation(line: 388, column: 7, scope: !147)
!4599 = !DILocation(line: 389, column: 5, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4596, file: !148, line: 388, column: 19)
!4601 = !DILocation(line: 391, column: 9, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4600, file: !148, line: 391, column: 9)
!4603 = !DILocation(line: 391, column: 23, scope: !4602)
!4604 = !DILocation(line: 391, column: 17, scope: !4602)
!4605 = !DILocation(line: 391, column: 14, scope: !4602)
!4606 = !DILocation(line: 391, column: 9, scope: !4600)
!4607 = !DILocation(line: 392, column: 12, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4602, file: !148, line: 391, column: 30)
!4609 = !DILocation(line: 393, column: 7, scope: !4608)
!4610 = !DILocation(line: 394, column: 5, scope: !4608)
!4611 = !DILocation(line: 395, column: 3, scope: !4600)
!4612 = !DILocation(line: 396, column: 12, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4596, file: !148, line: 396, column: 12)
!4614 = !DILocation(line: 396, column: 17, scope: !4613)
!4615 = !DILocation(line: 396, column: 12, scope: !4596)
!4616 = !DILocation(line: 397, column: 3, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4613, file: !148, line: 396, column: 24)
!4618 = !DILocation(line: 398, column: 13, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4613, file: !148, line: 398, column: 12)
!4620 = !DILocation(line: 398, column: 18, scope: !4619)
!4621 = !DILocation(line: 398, column: 25, scope: !4619)
!4622 = !DILocation(line: 398, column: 29, scope: !4619)
!4623 = !DILocation(line: 398, column: 34, scope: !4619)
!4624 = !DILocation(line: 398, column: 12, scope: !4613)
!4625 = !DILocation(line: 400, column: 5, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4619, file: !148, line: 398, column: 41)
!4627 = !DILocation(line: 401, column: 3, scope: !4626)
!4628 = !DILocation(line: 403, column: 7, scope: !194)
!4629 = !DILocation(line: 403, column: 12, scope: !194)
!4630 = !DILocation(line: 403, column: 7, scope: !147)
!4631 = !DILocation(line: 404, column: 12, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !194, file: !148, line: 403, column: 19)
!4633 = !DILocation(line: 404, column: 28, scope: !4632)
!4634 = !DILocation(line: 404, column: 20, scope: !4632)
!4635 = !DILocation(line: 404, column: 18, scope: !4632)
!4636 = !DILocation(line: 404, column: 10, scope: !4632)
!4637 = !DILocation(line: 405, column: 12, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4632, file: !148, line: 405, column: 9)
!4639 = !DILocation(line: 405, column: 17, scope: !4638)
!4640 = !DILocation(line: 405, column: 24, scope: !4638)
!4641 = !DILocation(line: 405, column: 28, scope: !4638)
!4642 = !DILocation(line: 405, column: 33, scope: !4638)
!4643 = !DILocation(line: 405, column: 41, scope: !4638)
!4644 = !DILocation(line: 405, column: 45, scope: !4638)
!4645 = !DILocation(line: 405, column: 51, scope: !4638)
!4646 = !DILocation(line: 405, column: 9, scope: !4632)
!4647 = !DILocation(line: 408, column: 7, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4638, file: !148, line: 405, column: 57)
!4649 = !DILocation(line: 409, column: 5, scope: !4648)
!4650 = !DILocation(line: 410, column: 3, scope: !4632)
!4651 = !DILocation(line: 412, column: 5, scope: !193)
!4652 = !DILocation(line: 412, column: 18, scope: !193)
!4653 = !DILocation(line: 412, column: 26, scope: !193)
!4654 = !DILocation(line: 414, column: 5, scope: !193)
!4655 = !DILocation(line: 414, column: 12, scope: !193)
!4656 = !DILocation(line: 414, column: 16, scope: !193)
!4657 = !DILocation(line: 415, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !193, file: !148, line: 414, column: 43)
!4659 = !DILocation(line: 416, column: 34, scope: !4658)
!4660 = !DILocation(line: 416, column: 39, scope: !4658)
!4661 = !DILocation(line: 416, column: 31, scope: !4658)
!4662 = !DILocation(line: 416, column: 20, scope: !4658)
!4663 = !DILocation(line: 416, column: 14, scope: !4658)
!4664 = !DILocation(line: 416, column: 7, scope: !4658)
!4665 = !DILocation(line: 416, column: 18, scope: !4658)
!4666 = !DILocation(line: 417, column: 18, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4658, file: !148, line: 417, column: 11)
!4668 = !DILocation(line: 417, column: 11, scope: !4658)
!4669 = !DILocation(line: 418, column: 9, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4667, file: !148, line: 417, column: 27)
!4671 = distinct !{!4671, !4654, !4672}
!4672 = !DILocation(line: 420, column: 5, scope: !193)
!4673 = !DILocation(line: 422, column: 5, scope: !193)
!4674 = !DILocation(line: 422, column: 13, scope: !193)
!4675 = !DILocation(line: 422, column: 17, scope: !193)
!4676 = !DILocation(line: 422, column: 44, scope: !193)
!4677 = !DILocation(line: 422, column: 53, scope: !193)
!4678 = !DILocation(line: 422, column: 56, scope: !193)
!4679 = !DILocation(line: 0, scope: !193)
!4680 = !DILocation(line: 423, column: 14, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !193, file: !148, line: 422, column: 63)
!4682 = !DILocation(line: 423, column: 7, scope: !4681)
!4683 = !DILocation(line: 423, column: 18, scope: !4681)
!4684 = distinct !{!4684, !4673, !4685}
!4685 = !DILocation(line: 424, column: 5, scope: !193)
!4686 = !DILocation(line: 425, column: 9, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !193, file: !148, line: 425, column: 9)
!4688 = !DILocation(line: 425, column: 13, scope: !4687)
!4689 = !DILocation(line: 425, column: 9, scope: !193)
!4690 = !DILocation(line: 427, column: 14, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4687, file: !148, line: 425, column: 40)
!4692 = !DILocation(line: 427, column: 7, scope: !4691)
!4693 = !DILocation(line: 427, column: 18, scope: !4691)
!4694 = !DILocation(line: 428, column: 5, scope: !4691)
!4695 = !DILocation(line: 429, column: 3, scope: !194)
!4696 = !DILocation(line: 432, column: 3, scope: !147)
!4697 = !DILocation(line: 432, column: 10, scope: !147)
!4698 = !DILocation(line: 432, column: 14, scope: !147)
!4699 = !DILocation(line: 433, column: 31, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !147, file: !148, line: 432, column: 41)
!4701 = !DILocation(line: 433, column: 37, scope: !4700)
!4702 = !DILocation(line: 433, column: 28, scope: !4700)
!4703 = !DILocation(line: 433, column: 18, scope: !4700)
!4704 = !DILocation(line: 433, column: 12, scope: !4700)
!4705 = !DILocation(line: 433, column: 5, scope: !4700)
!4706 = !DILocation(line: 433, column: 16, scope: !4700)
!4707 = !DILocation(line: 434, column: 17, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4700, file: !148, line: 434, column: 9)
!4709 = !DILocation(line: 434, column: 9, scope: !4700)
!4710 = !DILocation(line: 435, column: 7, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4708, file: !148, line: 434, column: 25)
!4712 = distinct !{!4712, !4696, !4713}
!4713 = !DILocation(line: 437, column: 3, scope: !147)
!4714 = !DILocation(line: 440, column: 9, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !147, file: !148, line: 440, column: 7)
!4716 = !DILocation(line: 440, column: 15, scope: !4715)
!4717 = !DILocation(line: 440, column: 29, scope: !4715)
!4718 = !DILocation(line: 440, column: 33, scope: !4715)
!4719 = !DILocation(line: 440, column: 39, scope: !4715)
!4720 = !DILocation(line: 440, column: 7, scope: !147)
!4721 = !DILocation(line: 441, column: 9, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !148, line: 441, column: 9)
!4723 = distinct !DILexicalBlock(scope: !4715, file: !148, line: 440, column: 57)
!4724 = !DILocation(line: 441, column: 15, scope: !4722)
!4725 = !DILocation(line: 441, column: 19, scope: !4722)
!4726 = !DILocation(line: 441, column: 28, scope: !4722)
!4727 = !DILocation(line: 441, column: 32, scope: !4722)
!4728 = !DILocation(line: 441, column: 38, scope: !4722)
!4729 = !DILocation(line: 441, column: 9, scope: !4723)
!4730 = !DILocation(line: 442, column: 12, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4722, file: !148, line: 441, column: 70)
!4732 = !DILocation(line: 443, column: 5, scope: !4731)
!4733 = !DILocation(line: 444, column: 5, scope: !4723)
!4734 = !DILocation(line: 444, column: 13, scope: !4723)
!4735 = !DILocation(line: 444, column: 19, scope: !4723)
!4736 = !DILocation(line: 444, column: 17, scope: !4723)
!4737 = !DILocation(line: 444, column: 26, scope: !4723)
!4738 = !DILocation(line: 444, column: 30, scope: !4723)
!4739 = !DILocation(line: 444, column: 34, scope: !4723)
!4740 = !DILocation(line: 0, scope: !4723)
!4741 = !DILocation(line: 445, column: 14, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4723, file: !148, line: 444, column: 62)
!4743 = !DILocation(line: 445, column: 7, scope: !4742)
!4744 = !DILocation(line: 445, column: 18, scope: !4742)
!4745 = distinct !{!4745, !4733, !4746}
!4746 = !DILocation(line: 446, column: 5, scope: !4723)
!4747 = !DILocation(line: 447, column: 3, scope: !4723)
!4748 = !DILocation(line: 449, column: 7, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !147, file: !148, line: 449, column: 7)
!4750 = !DILocation(line: 449, column: 11, scope: !4749)
!4751 = !DILocation(line: 449, column: 7, scope: !147)
!4752 = !DILocation(line: 450, column: 9, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !148, line: 450, column: 9)
!4754 = distinct !DILexicalBlock(scope: !4749, file: !148, line: 449, column: 38)
!4755 = !DILocation(line: 450, column: 9, scope: !4754)
!4756 = !DILocation(line: 451, column: 14, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !148, line: 450, column: 19)
!4758 = !DILocation(line: 451, column: 7, scope: !4757)
!4759 = !DILocation(line: 451, column: 18, scope: !4757)
!4760 = !DILocation(line: 452, column: 5, scope: !4757)
!4761 = !DILocation(line: 453, column: 14, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4753, file: !148, line: 453, column: 14)
!4763 = !DILocation(line: 453, column: 20, scope: !4762)
!4764 = !DILocation(line: 453, column: 14, scope: !4753)
!4765 = !DILocation(line: 454, column: 14, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4762, file: !148, line: 453, column: 34)
!4767 = !DILocation(line: 454, column: 7, scope: !4766)
!4768 = !DILocation(line: 454, column: 18, scope: !4766)
!4769 = !DILocation(line: 455, column: 5, scope: !4766)
!4770 = !DILocation(line: 456, column: 14, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4762, file: !148, line: 456, column: 14)
!4772 = !DILocation(line: 456, column: 20, scope: !4771)
!4773 = !DILocation(line: 456, column: 14, scope: !4762)
!4774 = !DILocation(line: 457, column: 14, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4771, file: !148, line: 456, column: 35)
!4776 = !DILocation(line: 457, column: 7, scope: !4775)
!4777 = !DILocation(line: 457, column: 18, scope: !4775)
!4778 = !DILocation(line: 458, column: 5, scope: !4775)
!4779 = !DILocation(line: 459, column: 3, scope: !4754)
!4780 = !DILocation(line: 461, column: 19, scope: !147)
!4781 = !DILocation(line: 461, column: 24, scope: !147)
!4782 = !DILocation(line: 461, column: 32, scope: !147)
!4783 = !DILocation(line: 461, column: 37, scope: !147)
!4784 = !DILocation(line: 461, column: 45, scope: !147)
!4785 = !DILocation(line: 461, column: 50, scope: !147)
!4786 = !DILocation(line: 461, column: 55, scope: !147)
!4787 = !DILocation(line: 461, column: 62, scope: !147)
!4788 = !DILocation(line: 461, column: 10, scope: !147)
!4789 = !DILocation(line: 461, column: 3, scope: !147)
!4790 = !DILocation(line: 462, column: 1, scope: !147)
!4791 = distinct !DISubprogram(name: "_etoa", scope: !148, file: !148, line: 467, type: !149, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !4792)
!4792 = !{!4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4807, !4808, !4809, !4810, !4811, !4812, !4813}
!4793 = !DILocalVariable(name: "out", arg: 1, scope: !4791, file: !148, line: 467, type: !153)
!4794 = !DILocalVariable(name: "buffer", arg: 2, scope: !4791, file: !148, line: 467, type: !66)
!4795 = !DILocalVariable(name: "idx", arg: 3, scope: !4791, file: !148, line: 467, type: !151)
!4796 = !DILocalVariable(name: "maxlen", arg: 4, scope: !4791, file: !148, line: 467, type: !151)
!4797 = !DILocalVariable(name: "value", arg: 5, scope: !4791, file: !148, line: 467, type: !69)
!4798 = !DILocalVariable(name: "prec", arg: 6, scope: !4791, file: !148, line: 467, type: !24)
!4799 = !DILocalVariable(name: "width", arg: 7, scope: !4791, file: !148, line: 467, type: !24)
!4800 = !DILocalVariable(name: "flags", arg: 8, scope: !4791, file: !148, line: 467, type: !24)
!4801 = !DILocalVariable(name: "negative", scope: !4791, file: !148, line: 475, type: !3621)
!4802 = !DILocalVariable(name: "conv", scope: !4791, file: !148, line: 490, type: !4803)
!4803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4791, file: !148, line: 487, size: 64, elements: !4804)
!4804 = !{!4805, !4806}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "U", scope: !4803, file: !148, line: 488, baseType: !138, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "F", scope: !4803, file: !148, line: 489, baseType: !69, size: 64)
!4807 = !DILocalVariable(name: "exp2", scope: !4791, file: !148, line: 493, type: !43)
!4808 = !DILocalVariable(name: "expval", scope: !4791, file: !148, line: 496, type: !43)
!4809 = !DILocalVariable(name: "z", scope: !4791, file: !148, line: 499, type: !196)
!4810 = !DILocalVariable(name: "z2", scope: !4791, file: !148, line: 500, type: !196)
!4811 = !DILocalVariable(name: "minwidth", scope: !4791, file: !148, line: 511, type: !24)
!4812 = !DILocalVariable(name: "fwidth", scope: !4791, file: !148, line: 537, type: !24)
!4813 = !DILocalVariable(name: "start_idx", scope: !4791, file: !148, line: 556, type: !3568)
!4814 = !DILocation(line: 467, column: 34, scope: !4791)
!4815 = !DILocation(line: 467, column: 45, scope: !4791)
!4816 = !DILocation(line: 467, column: 60, scope: !4791)
!4817 = !DILocation(line: 467, column: 72, scope: !4791)
!4818 = !DILocation(line: 467, column: 87, scope: !4791)
!4819 = !DILocation(line: 467, column: 107, scope: !4791)
!4820 = !DILocation(line: 467, column: 126, scope: !4791)
!4821 = !DILocation(line: 467, column: 146, scope: !4791)
!4822 = !DILocation(line: 470, column: 8, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 470, column: 7)
!4824 = !DILocation(line: 470, column: 17, scope: !4823)
!4825 = !DILocation(line: 470, column: 14, scope: !4823)
!4826 = !DILocation(line: 470, column: 24, scope: !4823)
!4827 = !DILocation(line: 470, column: 28, scope: !4823)
!4828 = !DILocation(line: 470, column: 34, scope: !4823)
!4829 = !DILocation(line: 470, column: 45, scope: !4823)
!4830 = !DILocation(line: 470, column: 49, scope: !4823)
!4831 = !DILocation(line: 470, column: 55, scope: !4823)
!4832 = !DILocation(line: 470, column: 7, scope: !4791)
!4833 = !DILocation(line: 471, column: 18, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4823, file: !148, line: 470, column: 68)
!4835 = !DILocation(line: 471, column: 23, scope: !4834)
!4836 = !DILocation(line: 471, column: 31, scope: !4834)
!4837 = !DILocation(line: 471, column: 36, scope: !4834)
!4838 = !DILocation(line: 471, column: 44, scope: !4834)
!4839 = !DILocation(line: 471, column: 51, scope: !4834)
!4840 = !DILocation(line: 471, column: 57, scope: !4834)
!4841 = !DILocation(line: 471, column: 64, scope: !4834)
!4842 = !DILocation(line: 471, column: 12, scope: !4834)
!4843 = !DILocation(line: 471, column: 5, scope: !4834)
!4844 = !DILocation(line: 475, column: 3, scope: !4791)
!4845 = !DILocation(line: 475, column: 14, scope: !4791)
!4846 = !DILocation(line: 475, column: 25, scope: !4791)
!4847 = !DILocation(line: 475, column: 31, scope: !4791)
!4848 = !DILocation(line: 476, column: 7, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 476, column: 7)
!4850 = !DILocation(line: 476, column: 7, scope: !4791)
!4851 = !DILocation(line: 477, column: 14, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4849, file: !148, line: 476, column: 17)
!4853 = !DILocation(line: 477, column: 13, scope: !4852)
!4854 = !DILocation(line: 477, column: 11, scope: !4852)
!4855 = !DILocation(line: 478, column: 3, scope: !4852)
!4856 = !DILocation(line: 481, column: 9, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 481, column: 7)
!4858 = !DILocation(line: 481, column: 15, scope: !4857)
!4859 = !DILocation(line: 481, column: 7, scope: !4791)
!4860 = !DILocation(line: 482, column: 10, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4857, file: !148, line: 481, column: 35)
!4862 = !DILocation(line: 483, column: 3, scope: !4861)
!4863 = !DILocation(line: 487, column: 3, scope: !4791)
!4864 = !DILocation(line: 490, column: 5, scope: !4791)
!4865 = !DILocation(line: 492, column: 12, scope: !4791)
!4866 = !DILocation(line: 492, column: 8, scope: !4791)
!4867 = !DILocation(line: 492, column: 10, scope: !4791)
!4868 = !DILocation(line: 493, column: 3, scope: !4791)
!4869 = !DILocation(line: 493, column: 7, scope: !4791)
!4870 = !DILocation(line: 493, column: 26, scope: !4791)
!4871 = !DILocation(line: 493, column: 28, scope: !4791)
!4872 = !DILocation(line: 493, column: 36, scope: !4791)
!4873 = !DILocation(line: 493, column: 14, scope: !4791)
!4874 = !DILocation(line: 493, column: 47, scope: !4791)
!4875 = !DILocation(line: 494, column: 18, scope: !4791)
!4876 = !DILocation(line: 494, column: 20, scope: !4791)
!4877 = !DILocation(line: 494, column: 44, scope: !4791)
!4878 = !DILocation(line: 494, column: 8, scope: !4791)
!4879 = !DILocation(line: 494, column: 10, scope: !4791)
!4880 = !DILocation(line: 496, column: 3, scope: !4791)
!4881 = !DILocation(line: 496, column: 7, scope: !4791)
!4882 = !DILocation(line: 496, column: 40, scope: !4791)
!4883 = !DILocation(line: 496, column: 45, scope: !4791)
!4884 = !DILocation(line: 496, column: 38, scope: !4791)
!4885 = !DILocation(line: 496, column: 73, scope: !4791)
!4886 = !DILocation(line: 496, column: 75, scope: !4791)
!4887 = !DILocation(line: 496, column: 82, scope: !4791)
!4888 = !DILocation(line: 496, column: 65, scope: !4791)
!4889 = !DILocation(line: 496, column: 16, scope: !4791)
!4890 = !DILocation(line: 498, column: 16, scope: !4791)
!4891 = !DILocation(line: 498, column: 23, scope: !4791)
!4892 = !DILocation(line: 498, column: 43, scope: !4791)
!4893 = !DILocation(line: 498, column: 10, scope: !4791)
!4894 = !DILocation(line: 498, column: 8, scope: !4791)
!4895 = !DILocation(line: 499, column: 3, scope: !4791)
!4896 = !DILocation(line: 499, column: 16, scope: !4791)
!4897 = !DILocation(line: 499, column: 21, scope: !4791)
!4898 = !DILocation(line: 499, column: 28, scope: !4791)
!4899 = !DILocation(line: 499, column: 50, scope: !4791)
!4900 = !DILocation(line: 499, column: 55, scope: !4791)
!4901 = !DILocation(line: 499, column: 48, scope: !4791)
!4902 = !DILocation(line: 500, column: 3, scope: !4791)
!4903 = !DILocation(line: 500, column: 16, scope: !4791)
!4904 = !DILocation(line: 500, column: 21, scope: !4791)
!4905 = !DILocation(line: 500, column: 25, scope: !4791)
!4906 = !DILocation(line: 500, column: 23, scope: !4791)
!4907 = !DILocation(line: 501, column: 23, scope: !4791)
!4908 = !DILocation(line: 501, column: 28, scope: !4791)
!4909 = !DILocation(line: 501, column: 12, scope: !4791)
!4910 = !DILocation(line: 501, column: 36, scope: !4791)
!4911 = !DILocation(line: 501, column: 8, scope: !4791)
!4912 = !DILocation(line: 501, column: 10, scope: !4791)
!4913 = !DILocation(line: 503, column: 21, scope: !4791)
!4914 = !DILocation(line: 503, column: 19, scope: !4791)
!4915 = !DILocation(line: 503, column: 30, scope: !4791)
!4916 = !DILocation(line: 503, column: 28, scope: !4791)
!4917 = !DILocation(line: 503, column: 35, scope: !4791)
!4918 = !DILocation(line: 503, column: 46, scope: !4791)
!4919 = !DILocation(line: 503, column: 57, scope: !4791)
!4920 = !DILocation(line: 503, column: 60, scope: !4791)
!4921 = !DILocation(line: 503, column: 55, scope: !4791)
!4922 = !DILocation(line: 503, column: 49, scope: !4791)
!4923 = !DILocation(line: 503, column: 43, scope: !4791)
!4924 = !DILocation(line: 503, column: 38, scope: !4791)
!4925 = !DILocation(line: 503, column: 32, scope: !4791)
!4926 = !DILocation(line: 503, column: 23, scope: !4791)
!4927 = !DILocation(line: 503, column: 15, scope: !4791)
!4928 = !DILocation(line: 503, column: 8, scope: !4791)
!4929 = !DILocation(line: 503, column: 10, scope: !4791)
!4930 = !DILocation(line: 505, column: 7, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 505, column: 7)
!4932 = !DILocation(line: 505, column: 20, scope: !4931)
!4933 = !DILocation(line: 505, column: 13, scope: !4931)
!4934 = !DILocation(line: 505, column: 7, scope: !4791)
!4935 = !DILocation(line: 506, column: 11, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4931, file: !148, line: 505, column: 23)
!4937 = !DILocation(line: 507, column: 10, scope: !4936)
!4938 = !DILocation(line: 507, column: 12, scope: !4936)
!4939 = !DILocation(line: 508, column: 3, scope: !4936)
!4940 = !DILocation(line: 511, column: 3, scope: !4791)
!4941 = !DILocation(line: 511, column: 16, scope: !4791)
!4942 = !DILocation(line: 511, column: 29, scope: !4791)
!4943 = !DILocation(line: 511, column: 36, scope: !4791)
!4944 = !DILocation(line: 511, column: 43, scope: !4791)
!4945 = !DILocation(line: 511, column: 47, scope: !4791)
!4946 = !DILocation(line: 511, column: 54, scope: !4791)
!4947 = !DILocation(line: 0, scope: !4791)
!4948 = !DILocation(line: 511, column: 27, scope: !4791)
!4949 = !DILocation(line: 514, column: 7, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 514, column: 7)
!4951 = !DILocation(line: 514, column: 13, scope: !4950)
!4952 = !DILocation(line: 514, column: 7, scope: !4791)
!4953 = !DILocation(line: 516, column: 10, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !148, line: 516, column: 9)
!4955 = distinct !DILexicalBlock(scope: !4950, file: !148, line: 514, column: 32)
!4956 = !DILocation(line: 516, column: 16, scope: !4954)
!4957 = !DILocation(line: 516, column: 25, scope: !4954)
!4958 = !DILocation(line: 516, column: 29, scope: !4954)
!4959 = !DILocation(line: 516, column: 35, scope: !4954)
!4960 = !DILocation(line: 516, column: 9, scope: !4955)
!4961 = !DILocation(line: 517, column: 16, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !148, line: 517, column: 11)
!4963 = distinct !DILexicalBlock(scope: !4954, file: !148, line: 516, column: 43)
!4964 = !DILocation(line: 517, column: 23, scope: !4962)
!4965 = !DILocation(line: 517, column: 21, scope: !4962)
!4966 = !DILocation(line: 517, column: 11, scope: !4963)
!4967 = !DILocation(line: 518, column: 32, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4962, file: !148, line: 517, column: 31)
!4969 = !DILocation(line: 518, column: 39, scope: !4968)
!4970 = !DILocation(line: 518, column: 37, scope: !4968)
!4971 = !DILocation(line: 518, column: 46, scope: !4968)
!4972 = !DILocation(line: 518, column: 14, scope: !4968)
!4973 = !DILocation(line: 519, column: 7, scope: !4968)
!4974 = !DILocation(line: 521, column: 14, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4962, file: !148, line: 520, column: 12)
!4976 = !DILocation(line: 523, column: 13, scope: !4963)
!4977 = !DILocation(line: 525, column: 16, scope: !4963)
!4978 = !DILocation(line: 526, column: 16, scope: !4963)
!4979 = !DILocation(line: 527, column: 5, scope: !4963)
!4980 = !DILocation(line: 530, column: 12, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !148, line: 530, column: 11)
!4982 = distinct !DILexicalBlock(scope: !4954, file: !148, line: 528, column: 10)
!4983 = !DILocation(line: 530, column: 17, scope: !4981)
!4984 = !DILocation(line: 530, column: 22, scope: !4981)
!4985 = !DILocation(line: 530, column: 26, scope: !4981)
!4986 = !DILocation(line: 530, column: 32, scope: !4981)
!4987 = !DILocation(line: 530, column: 11, scope: !4982)
!4988 = !DILocation(line: 531, column: 9, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4981, file: !148, line: 530, column: 52)
!4990 = !DILocation(line: 532, column: 7, scope: !4989)
!4991 = !DILocation(line: 534, column: 3, scope: !4955)
!4992 = !DILocation(line: 537, column: 3, scope: !4791)
!4993 = !DILocation(line: 537, column: 16, scope: !4791)
!4994 = !DILocation(line: 537, column: 25, scope: !4791)
!4995 = !DILocation(line: 538, column: 7, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 538, column: 7)
!4997 = !DILocation(line: 538, column: 15, scope: !4996)
!4998 = !DILocation(line: 538, column: 13, scope: !4996)
!4999 = !DILocation(line: 538, column: 7, scope: !4791)
!5000 = !DILocation(line: 540, column: 15, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4996, file: !148, line: 538, column: 25)
!5002 = !DILocation(line: 540, column: 12, scope: !5001)
!5003 = !DILocation(line: 541, column: 3, scope: !5001)
!5004 = !DILocation(line: 543, column: 12, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4996, file: !148, line: 541, column: 10)
!5006 = !DILocation(line: 545, column: 8, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 545, column: 7)
!5008 = !DILocation(line: 545, column: 14, scope: !5007)
!5009 = !DILocation(line: 545, column: 28, scope: !5007)
!5010 = !DILocation(line: 545, column: 31, scope: !5007)
!5011 = !DILocation(line: 545, column: 7, scope: !4791)
!5012 = !DILocation(line: 547, column: 12, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5007, file: !148, line: 545, column: 41)
!5014 = !DILocation(line: 548, column: 3, scope: !5013)
!5015 = !DILocation(line: 551, column: 7, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 551, column: 7)
!5017 = !DILocation(line: 551, column: 7, scope: !4791)
!5018 = !DILocation(line: 552, column: 19, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5016, file: !148, line: 551, column: 15)
!5020 = !DILocation(line: 552, column: 11, scope: !5019)
!5021 = !DILocation(line: 553, column: 3, scope: !5019)
!5022 = !DILocation(line: 556, column: 3, scope: !4791)
!5023 = !DILocation(line: 556, column: 16, scope: !4791)
!5024 = !DILocation(line: 556, column: 28, scope: !4791)
!5025 = !DILocation(line: 557, column: 15, scope: !4791)
!5026 = !DILocation(line: 557, column: 20, scope: !4791)
!5027 = !DILocation(line: 557, column: 28, scope: !4791)
!5028 = !DILocation(line: 557, column: 33, scope: !4791)
!5029 = !DILocation(line: 557, column: 41, scope: !4791)
!5030 = !DILocation(line: 557, column: 53, scope: !4791)
!5031 = !DILocation(line: 557, column: 52, scope: !4791)
!5032 = !DILocation(line: 557, column: 61, scope: !4791)
!5033 = !DILocation(line: 557, column: 68, scope: !4791)
!5034 = !DILocation(line: 557, column: 74, scope: !4791)
!5035 = !DILocation(line: 557, column: 82, scope: !4791)
!5036 = !DILocation(line: 557, column: 88, scope: !4791)
!5037 = !DILocation(line: 557, column: 9, scope: !4791)
!5038 = !DILocation(line: 557, column: 7, scope: !4791)
!5039 = !DILocation(line: 560, column: 7, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !4791, file: !148, line: 560, column: 7)
!5041 = !DILocation(line: 560, column: 7, scope: !4791)
!5042 = !DILocation(line: 562, column: 5, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5040, file: !148, line: 560, column: 17)
!5044 = !DILocation(line: 562, column: 10, scope: !5043)
!5045 = !DILocation(line: 562, column: 16, scope: !5043)
!5046 = !DILocation(line: 562, column: 9, scope: !5043)
!5047 = !DILocation(line: 562, column: 48, scope: !5043)
!5048 = !DILocation(line: 562, column: 59, scope: !5043)
!5049 = !DILocation(line: 562, column: 63, scope: !5043)
!5050 = !DILocation(line: 564, column: 22, scope: !5043)
!5051 = !DILocation(line: 564, column: 27, scope: !5043)
!5052 = !DILocation(line: 564, column: 35, scope: !5043)
!5053 = !DILocation(line: 564, column: 40, scope: !5043)
!5054 = !DILocation(line: 564, column: 49, scope: !5043)
!5055 = !DILocation(line: 564, column: 56, scope: !5043)
!5056 = !DILocation(line: 564, column: 48, scope: !5043)
!5057 = !DILocation(line: 564, column: 64, scope: !5043)
!5058 = !DILocation(line: 564, column: 63, scope: !5043)
!5059 = !DILocation(line: 564, column: 73, scope: !5043)
!5060 = !DILocation(line: 564, column: 81, scope: !5043)
!5061 = !DILocation(line: 564, column: 88, scope: !5043)
!5062 = !DILocation(line: 564, column: 100, scope: !5043)
!5063 = !DILocation(line: 564, column: 108, scope: !5043)
!5064 = !DILocation(line: 564, column: 11, scope: !5043)
!5065 = !DILocation(line: 564, column: 9, scope: !5043)
!5066 = !DILocation(line: 566, column: 9, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5043, file: !148, line: 566, column: 9)
!5068 = !DILocation(line: 566, column: 15, scope: !5067)
!5069 = !DILocation(line: 566, column: 9, scope: !5043)
!5070 = !DILocation(line: 567, column: 7, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5067, file: !148, line: 566, column: 29)
!5072 = !DILocation(line: 567, column: 14, scope: !5071)
!5073 = !DILocation(line: 567, column: 20, scope: !5071)
!5074 = !DILocation(line: 567, column: 18, scope: !5071)
!5075 = !DILocation(line: 567, column: 32, scope: !5071)
!5076 = !DILocation(line: 567, column: 30, scope: !5071)
!5077 = !DILocation(line: 567, column: 39, scope: !5071)
!5078 = !DILocation(line: 567, column: 48, scope: !5071)
!5079 = !DILocation(line: 567, column: 59, scope: !5071)
!5080 = !DILocation(line: 567, column: 63, scope: !5071)
!5081 = distinct !{!5081, !5070, !5082}
!5082 = !DILocation(line: 567, column: 69, scope: !5071)
!5083 = !DILocation(line: 568, column: 5, scope: !5071)
!5084 = !DILocation(line: 569, column: 3, scope: !5043)
!5085 = !DILocation(line: 570, column: 10, scope: !4791)
!5086 = !DILocation(line: 570, column: 3, scope: !4791)
!5087 = !DILocation(line: 571, column: 1, scope: !4791)
!5088 = distinct !DISubprogram(name: "_strnlen_s", scope: !148, file: !148, line: 171, type: !5089, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5091)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!24, !3514, !151}
!5091 = !{!5092, !5093, !5094}
!5092 = !DILocalVariable(name: "str", arg: 1, scope: !5088, file: !148, line: 171, type: !3514)
!5093 = !DILocalVariable(name: "maxsize", arg: 2, scope: !5088, file: !148, line: 171, type: !151)
!5094 = !DILocalVariable(name: "s", scope: !5088, file: !148, line: 173, type: !3514)
!5095 = !DILocation(line: 171, column: 51, scope: !5088)
!5096 = !DILocation(line: 171, column: 63, scope: !5088)
!5097 = !DILocation(line: 173, column: 3, scope: !5088)
!5098 = !DILocation(line: 173, column: 15, scope: !5088)
!5099 = !DILocation(line: 174, column: 12, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5088, file: !148, line: 174, column: 3)
!5101 = !DILocation(line: 174, column: 10, scope: !5100)
!5102 = !DILocation(line: 174, column: 8, scope: !5100)
!5103 = !DILocation(line: 174, column: 18, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5100, file: !148, line: 174, column: 3)
!5105 = !DILocation(line: 174, column: 17, scope: !5104)
!5106 = !DILocation(line: 174, column: 20, scope: !5104)
!5107 = !DILocation(line: 174, column: 30, scope: !5104)
!5108 = !DILocation(line: 0, scope: !5104)
!5109 = !DILocation(line: 174, column: 3, scope: !5100)
!5110 = !DILocation(line: 174, column: 34, scope: !5104)
!5111 = !DILocation(line: 174, column: 3, scope: !5104)
!5112 = distinct !{!5112, !5109, !5113}
!5113 = !DILocation(line: 174, column: 38, scope: !5100)
!5114 = !DILocation(line: 175, column: 25, scope: !5088)
!5115 = !DILocation(line: 175, column: 29, scope: !5088)
!5116 = !DILocation(line: 175, column: 27, scope: !5088)
!5117 = !DILocation(line: 176, column: 1, scope: !5088)
!5118 = !DILocation(line: 175, column: 3, scope: !5088)
!5119 = distinct !DISubprogram(name: "_out_rev", scope: !148, file: !148, line: 199, type: !5120, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5122)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!151, !153, !66, !151, !151, !3514, !151, !24, !24}
!5122 = !{!5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132}
!5123 = !DILocalVariable(name: "out", arg: 1, scope: !5119, file: !148, line: 199, type: !153)
!5124 = !DILocalVariable(name: "buffer", arg: 2, scope: !5119, file: !148, line: 199, type: !66)
!5125 = !DILocalVariable(name: "idx", arg: 3, scope: !5119, file: !148, line: 199, type: !151)
!5126 = !DILocalVariable(name: "maxlen", arg: 4, scope: !5119, file: !148, line: 199, type: !151)
!5127 = !DILocalVariable(name: "buf", arg: 5, scope: !5119, file: !148, line: 199, type: !3514)
!5128 = !DILocalVariable(name: "len", arg: 6, scope: !5119, file: !148, line: 199, type: !151)
!5129 = !DILocalVariable(name: "width", arg: 7, scope: !5119, file: !148, line: 199, type: !24)
!5130 = !DILocalVariable(name: "flags", arg: 8, scope: !5119, file: !148, line: 199, type: !24)
!5131 = !DILocalVariable(name: "start_idx", scope: !5119, file: !148, line: 201, type: !3568)
!5132 = !DILocalVariable(name: "i", scope: !5133, file: !148, line: 205, type: !151)
!5133 = distinct !DILexicalBlock(scope: !5134, file: !148, line: 205, column: 5)
!5134 = distinct !DILexicalBlock(scope: !5135, file: !148, line: 204, column: 58)
!5135 = distinct !DILexicalBlock(scope: !5119, file: !148, line: 204, column: 7)
!5136 = !DILocation(line: 199, column: 37, scope: !5119)
!5137 = !DILocation(line: 199, column: 48, scope: !5119)
!5138 = !DILocation(line: 199, column: 63, scope: !5119)
!5139 = !DILocation(line: 199, column: 75, scope: !5119)
!5140 = !DILocation(line: 199, column: 95, scope: !5119)
!5141 = !DILocation(line: 199, column: 107, scope: !5119)
!5142 = !DILocation(line: 199, column: 125, scope: !5119)
!5143 = !DILocation(line: 199, column: 145, scope: !5119)
!5144 = !DILocation(line: 201, column: 3, scope: !5119)
!5145 = !DILocation(line: 201, column: 16, scope: !5119)
!5146 = !DILocation(line: 201, column: 28, scope: !5119)
!5147 = !DILocation(line: 204, column: 9, scope: !5135)
!5148 = !DILocation(line: 204, column: 15, scope: !5135)
!5149 = !DILocation(line: 204, column: 29, scope: !5135)
!5150 = !DILocation(line: 204, column: 34, scope: !5135)
!5151 = !DILocation(line: 204, column: 40, scope: !5135)
!5152 = !DILocation(line: 204, column: 7, scope: !5119)
!5153 = !DILocation(line: 205, column: 10, scope: !5133)
!5154 = !DILocation(line: 205, column: 17, scope: !5133)
!5155 = !DILocation(line: 205, column: 21, scope: !5133)
!5156 = !DILocation(line: 205, column: 26, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5133, file: !148, line: 205, column: 5)
!5158 = !DILocation(line: 205, column: 30, scope: !5157)
!5159 = !DILocation(line: 205, column: 28, scope: !5157)
!5160 = !DILocation(line: 205, column: 5, scope: !5133)
!5161 = !DILocation(line: 205, column: 5, scope: !5157)
!5162 = !DILocation(line: 206, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5157, file: !148, line: 205, column: 42)
!5164 = !DILocation(line: 206, column: 16, scope: !5163)
!5165 = !DILocation(line: 206, column: 27, scope: !5163)
!5166 = !DILocation(line: 206, column: 31, scope: !5163)
!5167 = !DILocation(line: 207, column: 5, scope: !5163)
!5168 = !DILocation(line: 205, column: 38, scope: !5157)
!5169 = distinct !{!5169, !5160, !5170}
!5170 = !DILocation(line: 207, column: 5, scope: !5133)
!5171 = !DILocation(line: 208, column: 3, scope: !5134)
!5172 = !DILocation(line: 211, column: 3, scope: !5119)
!5173 = !DILocation(line: 211, column: 10, scope: !5119)
!5174 = !DILocation(line: 212, column: 5, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5119, file: !148, line: 211, column: 15)
!5176 = !DILocation(line: 212, column: 9, scope: !5175)
!5177 = !DILocation(line: 212, column: 13, scope: !5175)
!5178 = !DILocation(line: 212, column: 21, scope: !5175)
!5179 = !DILocation(line: 212, column: 32, scope: !5175)
!5180 = !DILocation(line: 212, column: 36, scope: !5175)
!5181 = distinct !{!5181, !5172, !5182}
!5182 = !DILocation(line: 213, column: 3, scope: !5119)
!5183 = !DILocation(line: 216, column: 7, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5119, file: !148, line: 216, column: 7)
!5185 = !DILocation(line: 216, column: 13, scope: !5184)
!5186 = !DILocation(line: 216, column: 7, scope: !5119)
!5187 = !DILocation(line: 217, column: 5, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5184, file: !148, line: 216, column: 27)
!5189 = !DILocation(line: 217, column: 12, scope: !5188)
!5190 = !DILocation(line: 217, column: 18, scope: !5188)
!5191 = !DILocation(line: 217, column: 16, scope: !5188)
!5192 = !DILocation(line: 217, column: 30, scope: !5188)
!5193 = !DILocation(line: 217, column: 28, scope: !5188)
!5194 = !DILocation(line: 218, column: 7, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5188, file: !148, line: 217, column: 37)
!5196 = !DILocation(line: 218, column: 16, scope: !5195)
!5197 = !DILocation(line: 218, column: 27, scope: !5195)
!5198 = !DILocation(line: 218, column: 31, scope: !5195)
!5199 = distinct !{!5199, !5187, !5200}
!5200 = !DILocation(line: 219, column: 5, scope: !5188)
!5201 = !DILocation(line: 220, column: 3, scope: !5188)
!5202 = !DILocation(line: 222, column: 10, scope: !5119)
!5203 = !DILocation(line: 223, column: 1, scope: !5119)
!5204 = !DILocation(line: 222, column: 3, scope: !5119)
!5205 = distinct !DISubprogram(name: "_ntoa_format", scope: !148, file: !148, line: 227, type: !5206, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5208)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!151, !153, !66, !151, !151, !66, !151, !188, !24, !24, !24, !24}
!5208 = !{!5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219}
!5209 = !DILocalVariable(name: "out", arg: 1, scope: !5205, file: !148, line: 227, type: !153)
!5210 = !DILocalVariable(name: "buffer", arg: 2, scope: !5205, file: !148, line: 227, type: !66)
!5211 = !DILocalVariable(name: "idx", arg: 3, scope: !5205, file: !148, line: 227, type: !151)
!5212 = !DILocalVariable(name: "maxlen", arg: 4, scope: !5205, file: !148, line: 227, type: !151)
!5213 = !DILocalVariable(name: "buf", arg: 5, scope: !5205, file: !148, line: 227, type: !66)
!5214 = !DILocalVariable(name: "len", arg: 6, scope: !5205, file: !148, line: 227, type: !151)
!5215 = !DILocalVariable(name: "negative", arg: 7, scope: !5205, file: !148, line: 227, type: !188)
!5216 = !DILocalVariable(name: "base", arg: 8, scope: !5205, file: !148, line: 227, type: !24)
!5217 = !DILocalVariable(name: "prec", arg: 9, scope: !5205, file: !148, line: 227, type: !24)
!5218 = !DILocalVariable(name: "width", arg: 10, scope: !5205, file: !148, line: 227, type: !24)
!5219 = !DILocalVariable(name: "flags", arg: 11, scope: !5205, file: !148, line: 227, type: !24)
!5220 = !DILocation(line: 227, column: 41, scope: !5205)
!5221 = !DILocation(line: 227, column: 52, scope: !5205)
!5222 = !DILocation(line: 227, column: 67, scope: !5205)
!5223 = !DILocation(line: 227, column: 79, scope: !5205)
!5224 = !DILocation(line: 227, column: 93, scope: !5205)
!5225 = !DILocation(line: 227, column: 105, scope: !5205)
!5226 = !DILocation(line: 227, column: 115, scope: !5205)
!5227 = !DILocation(line: 227, column: 138, scope: !5205)
!5228 = !DILocation(line: 227, column: 157, scope: !5205)
!5229 = !DILocation(line: 227, column: 176, scope: !5205)
!5230 = !DILocation(line: 227, column: 196, scope: !5205)
!5231 = !DILocation(line: 230, column: 9, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5205, file: !148, line: 230, column: 7)
!5233 = !DILocation(line: 230, column: 15, scope: !5232)
!5234 = !DILocation(line: 230, column: 7, scope: !5205)
!5235 = !DILocation(line: 231, column: 9, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5237, file: !148, line: 231, column: 9)
!5237 = distinct !DILexicalBlock(scope: !5232, file: !148, line: 230, column: 30)
!5238 = !DILocation(line: 231, column: 15, scope: !5236)
!5239 = !DILocation(line: 231, column: 19, scope: !5236)
!5240 = !DILocation(line: 231, column: 25, scope: !5236)
!5241 = !DILocation(line: 231, column: 42, scope: !5236)
!5242 = !DILocation(line: 231, column: 46, scope: !5236)
!5243 = !DILocation(line: 231, column: 55, scope: !5236)
!5244 = !DILocation(line: 231, column: 59, scope: !5236)
!5245 = !DILocation(line: 231, column: 65, scope: !5236)
!5246 = !DILocation(line: 231, column: 9, scope: !5237)
!5247 = !DILocation(line: 232, column: 12, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5236, file: !148, line: 231, column: 97)
!5249 = !DILocation(line: 233, column: 5, scope: !5248)
!5250 = !DILocation(line: 234, column: 5, scope: !5237)
!5251 = !DILocation(line: 234, column: 13, scope: !5237)
!5252 = !DILocation(line: 234, column: 19, scope: !5237)
!5253 = !DILocation(line: 234, column: 17, scope: !5237)
!5254 = !DILocation(line: 234, column: 25, scope: !5237)
!5255 = !DILocation(line: 234, column: 29, scope: !5237)
!5256 = !DILocation(line: 234, column: 33, scope: !5237)
!5257 = !DILocation(line: 0, scope: !5237)
!5258 = !DILocation(line: 235, column: 7, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5237, file: !148, line: 234, column: 61)
!5260 = !DILocation(line: 235, column: 14, scope: !5259)
!5261 = !DILocation(line: 235, column: 18, scope: !5259)
!5262 = distinct !{!5262, !5250, !5263}
!5263 = !DILocation(line: 236, column: 5, scope: !5237)
!5264 = !DILocation(line: 237, column: 5, scope: !5237)
!5265 = !DILocation(line: 237, column: 13, scope: !5237)
!5266 = !DILocation(line: 237, column: 19, scope: !5237)
!5267 = !DILocation(line: 237, column: 36, scope: !5237)
!5268 = !DILocation(line: 237, column: 40, scope: !5237)
!5269 = !DILocation(line: 237, column: 46, scope: !5237)
!5270 = !DILocation(line: 237, column: 44, scope: !5237)
!5271 = !DILocation(line: 237, column: 53, scope: !5237)
!5272 = !DILocation(line: 237, column: 57, scope: !5237)
!5273 = !DILocation(line: 237, column: 61, scope: !5237)
!5274 = !DILocation(line: 238, column: 7, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5237, file: !148, line: 237, column: 89)
!5276 = !DILocation(line: 238, column: 14, scope: !5275)
!5277 = !DILocation(line: 238, column: 18, scope: !5275)
!5278 = distinct !{!5278, !5264, !5279}
!5279 = !DILocation(line: 239, column: 5, scope: !5237)
!5280 = !DILocation(line: 240, column: 3, scope: !5237)
!5281 = !DILocation(line: 243, column: 7, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5205, file: !148, line: 243, column: 7)
!5283 = !DILocation(line: 243, column: 13, scope: !5282)
!5284 = !DILocation(line: 243, column: 7, scope: !5205)
!5285 = !DILocation(line: 244, column: 11, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5287, file: !148, line: 244, column: 9)
!5287 = distinct !DILexicalBlock(scope: !5282, file: !148, line: 243, column: 27)
!5288 = !DILocation(line: 244, column: 17, scope: !5286)
!5289 = !DILocation(line: 244, column: 36, scope: !5286)
!5290 = !DILocation(line: 244, column: 39, scope: !5286)
!5291 = !DILocation(line: 244, column: 43, scope: !5286)
!5292 = !DILocation(line: 244, column: 48, scope: !5286)
!5293 = !DILocation(line: 244, column: 55, scope: !5286)
!5294 = !DILocation(line: 244, column: 52, scope: !5286)
!5295 = !DILocation(line: 244, column: 61, scope: !5286)
!5296 = !DILocation(line: 244, column: 65, scope: !5286)
!5297 = !DILocation(line: 244, column: 72, scope: !5286)
!5298 = !DILocation(line: 244, column: 69, scope: !5286)
!5299 = !DILocation(line: 244, column: 9, scope: !5287)
!5300 = !DILocation(line: 245, column: 10, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5286, file: !148, line: 244, column: 81)
!5302 = !DILocation(line: 246, column: 11, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5301, file: !148, line: 246, column: 11)
!5304 = !DILocation(line: 246, column: 15, scope: !5303)
!5305 = !DILocation(line: 246, column: 19, scope: !5303)
!5306 = !DILocation(line: 246, column: 24, scope: !5303)
!5307 = !DILocation(line: 246, column: 11, scope: !5301)
!5308 = !DILocation(line: 247, column: 12, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5303, file: !148, line: 246, column: 33)
!5310 = !DILocation(line: 248, column: 7, scope: !5309)
!5311 = !DILocation(line: 249, column: 5, scope: !5301)
!5312 = !DILocation(line: 250, column: 10, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5287, file: !148, line: 250, column: 9)
!5314 = !DILocation(line: 250, column: 15, scope: !5313)
!5315 = !DILocation(line: 250, column: 23, scope: !5313)
!5316 = !DILocation(line: 250, column: 28, scope: !5313)
!5317 = !DILocation(line: 250, column: 34, scope: !5313)
!5318 = !DILocation(line: 250, column: 53, scope: !5313)
!5319 = !DILocation(line: 250, column: 57, scope: !5313)
!5320 = !DILocation(line: 250, column: 61, scope: !5313)
!5321 = !DILocation(line: 250, column: 9, scope: !5287)
!5322 = !DILocation(line: 251, column: 7, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5313, file: !148, line: 250, column: 89)
!5324 = !DILocation(line: 251, column: 14, scope: !5323)
!5325 = !DILocation(line: 251, column: 18, scope: !5323)
!5326 = !DILocation(line: 252, column: 5, scope: !5323)
!5327 = !DILocation(line: 253, column: 15, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5313, file: !148, line: 253, column: 14)
!5329 = !DILocation(line: 253, column: 20, scope: !5328)
!5330 = !DILocation(line: 253, column: 28, scope: !5328)
!5331 = !DILocation(line: 253, column: 32, scope: !5328)
!5332 = !DILocation(line: 253, column: 38, scope: !5328)
!5333 = !DILocation(line: 253, column: 57, scope: !5328)
!5334 = !DILocation(line: 253, column: 61, scope: !5328)
!5335 = !DILocation(line: 253, column: 65, scope: !5328)
!5336 = !DILocation(line: 253, column: 14, scope: !5313)
!5337 = !DILocation(line: 254, column: 7, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5328, file: !148, line: 253, column: 93)
!5339 = !DILocation(line: 254, column: 14, scope: !5338)
!5340 = !DILocation(line: 254, column: 18, scope: !5338)
!5341 = !DILocation(line: 255, column: 5, scope: !5338)
!5342 = !DILocation(line: 256, column: 15, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5328, file: !148, line: 256, column: 14)
!5344 = !DILocation(line: 256, column: 20, scope: !5343)
!5345 = !DILocation(line: 256, column: 27, scope: !5343)
!5346 = !DILocation(line: 256, column: 31, scope: !5343)
!5347 = !DILocation(line: 256, column: 35, scope: !5343)
!5348 = !DILocation(line: 256, column: 14, scope: !5328)
!5349 = !DILocation(line: 257, column: 7, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5343, file: !148, line: 256, column: 63)
!5351 = !DILocation(line: 257, column: 14, scope: !5350)
!5352 = !DILocation(line: 257, column: 18, scope: !5350)
!5353 = !DILocation(line: 258, column: 5, scope: !5350)
!5354 = !DILocation(line: 259, column: 9, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5287, file: !148, line: 259, column: 9)
!5356 = !DILocation(line: 259, column: 13, scope: !5355)
!5357 = !DILocation(line: 259, column: 9, scope: !5287)
!5358 = !DILocation(line: 260, column: 7, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5355, file: !148, line: 259, column: 40)
!5360 = !DILocation(line: 260, column: 14, scope: !5359)
!5361 = !DILocation(line: 260, column: 18, scope: !5359)
!5362 = !DILocation(line: 261, column: 5, scope: !5359)
!5363 = !DILocation(line: 262, column: 3, scope: !5287)
!5364 = !DILocation(line: 264, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5205, file: !148, line: 264, column: 7)
!5366 = !DILocation(line: 264, column: 11, scope: !5365)
!5367 = !DILocation(line: 264, column: 7, scope: !5205)
!5368 = !DILocation(line: 265, column: 9, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5370, file: !148, line: 265, column: 9)
!5370 = distinct !DILexicalBlock(scope: !5365, file: !148, line: 264, column: 38)
!5371 = !DILocation(line: 265, column: 9, scope: !5370)
!5372 = !DILocation(line: 266, column: 7, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5369, file: !148, line: 265, column: 19)
!5374 = !DILocation(line: 266, column: 14, scope: !5373)
!5375 = !DILocation(line: 266, column: 18, scope: !5373)
!5376 = !DILocation(line: 267, column: 5, scope: !5373)
!5377 = !DILocation(line: 268, column: 14, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5369, file: !148, line: 268, column: 14)
!5379 = !DILocation(line: 268, column: 20, scope: !5378)
!5380 = !DILocation(line: 268, column: 14, scope: !5369)
!5381 = !DILocation(line: 269, column: 7, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5378, file: !148, line: 268, column: 34)
!5383 = !DILocation(line: 269, column: 14, scope: !5382)
!5384 = !DILocation(line: 269, column: 18, scope: !5382)
!5385 = !DILocation(line: 270, column: 5, scope: !5382)
!5386 = !DILocation(line: 271, column: 14, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5378, file: !148, line: 271, column: 14)
!5388 = !DILocation(line: 271, column: 20, scope: !5387)
!5389 = !DILocation(line: 271, column: 14, scope: !5378)
!5390 = !DILocation(line: 272, column: 7, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5387, file: !148, line: 271, column: 35)
!5392 = !DILocation(line: 272, column: 14, scope: !5391)
!5393 = !DILocation(line: 272, column: 18, scope: !5391)
!5394 = !DILocation(line: 273, column: 5, scope: !5391)
!5395 = !DILocation(line: 274, column: 3, scope: !5370)
!5396 = !DILocation(line: 276, column: 19, scope: !5205)
!5397 = !DILocation(line: 276, column: 24, scope: !5205)
!5398 = !DILocation(line: 276, column: 32, scope: !5205)
!5399 = !DILocation(line: 276, column: 37, scope: !5205)
!5400 = !DILocation(line: 276, column: 45, scope: !5205)
!5401 = !DILocation(line: 276, column: 50, scope: !5205)
!5402 = !DILocation(line: 276, column: 55, scope: !5205)
!5403 = !DILocation(line: 276, column: 62, scope: !5205)
!5404 = !DILocation(line: 276, column: 10, scope: !5205)
!5405 = !DILocation(line: 276, column: 3, scope: !5205)
!5406 = distinct !DISubprogram(name: "sprintf_", scope: !148, file: !148, line: 873, type: !5407, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5409)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!43, !66, !3514, null}
!5409 = !{!5410, !5411, !5412, !5413}
!5410 = !DILocalVariable(name: "buffer", arg: 1, scope: !5406, file: !148, line: 873, type: !66)
!5411 = !DILocalVariable(name: "format", arg: 2, scope: !5406, file: !148, line: 873, type: !3514)
!5412 = !DILocalVariable(name: "va", scope: !5406, file: !148, line: 875, type: !3519)
!5413 = !DILocalVariable(name: "ret", scope: !5406, file: !148, line: 877, type: !3528)
!5414 = !DILocation(line: 873, column: 20, scope: !5406)
!5415 = !DILocation(line: 873, column: 40, scope: !5406)
!5416 = !DILocation(line: 875, column: 3, scope: !5406)
!5417 = !DILocation(line: 875, column: 11, scope: !5406)
!5418 = !DILocation(line: 876, column: 3, scope: !5406)
!5419 = !DILocation(line: 877, column: 3, scope: !5406)
!5420 = !DILocation(line: 877, column: 13, scope: !5406)
!5421 = !DILocation(line: 877, column: 43, scope: !5406)
!5422 = !DILocation(line: 877, column: 63, scope: !5406)
!5423 = !DILocation(line: 877, column: 19, scope: !5406)
!5424 = !DILocation(line: 878, column: 3, scope: !5406)
!5425 = !DILocation(line: 879, column: 10, scope: !5406)
!5426 = !DILocation(line: 880, column: 1, scope: !5406)
!5427 = !DILocation(line: 879, column: 3, scope: !5406)
!5428 = distinct !DISubprogram(name: "_out_buffer", scope: !148, file: !148, line: 133, type: !155, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5429)
!5429 = !{!5430, !5431, !5432, !5433}
!5430 = !DILocalVariable(name: "character", arg: 1, scope: !5428, file: !148, line: 133, type: !67)
!5431 = !DILocalVariable(name: "buffer", arg: 2, scope: !5428, file: !148, line: 133, type: !19)
!5432 = !DILocalVariable(name: "idx", arg: 3, scope: !5428, file: !148, line: 133, type: !151)
!5433 = !DILocalVariable(name: "maxlen", arg: 4, scope: !5428, file: !148, line: 133, type: !151)
!5434 = !DILocation(line: 133, column: 37, scope: !5428)
!5435 = !DILocation(line: 133, column: 54, scope: !5428)
!5436 = !DILocation(line: 133, column: 69, scope: !5428)
!5437 = !DILocation(line: 133, column: 81, scope: !5428)
!5438 = !DILocation(line: 135, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5428, file: !148, line: 135, column: 7)
!5440 = !DILocation(line: 135, column: 13, scope: !5439)
!5441 = !DILocation(line: 135, column: 11, scope: !5439)
!5442 = !DILocation(line: 135, column: 7, scope: !5428)
!5443 = !DILocation(line: 136, column: 28, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5439, file: !148, line: 135, column: 21)
!5445 = !DILocation(line: 136, column: 13, scope: !5444)
!5446 = !DILocation(line: 136, column: 21, scope: !5444)
!5447 = !DILocation(line: 136, column: 5, scope: !5444)
!5448 = !DILocation(line: 136, column: 26, scope: !5444)
!5449 = !DILocation(line: 137, column: 3, scope: !5444)
!5450 = !DILocation(line: 138, column: 1, scope: !5428)
!5451 = distinct !DISubprogram(name: "snprintf_", scope: !148, file: !148, line: 883, type: !5452, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5454)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!43, !66, !151, !3514, null}
!5454 = !{!5455, !5456, !5457, !5458, !5459}
!5455 = !DILocalVariable(name: "buffer", arg: 1, scope: !5451, file: !148, line: 883, type: !66)
!5456 = !DILocalVariable(name: "count", arg: 2, scope: !5451, file: !148, line: 883, type: !151)
!5457 = !DILocalVariable(name: "format", arg: 3, scope: !5451, file: !148, line: 883, type: !3514)
!5458 = !DILocalVariable(name: "va", scope: !5451, file: !148, line: 885, type: !3519)
!5459 = !DILocalVariable(name: "ret", scope: !5451, file: !148, line: 887, type: !3528)
!5460 = !DILocation(line: 883, column: 21, scope: !5451)
!5461 = !DILocation(line: 883, column: 36, scope: !5451)
!5462 = !DILocation(line: 883, column: 55, scope: !5451)
!5463 = !DILocation(line: 885, column: 3, scope: !5451)
!5464 = !DILocation(line: 885, column: 11, scope: !5451)
!5465 = !DILocation(line: 886, column: 3, scope: !5451)
!5466 = !DILocation(line: 887, column: 3, scope: !5451)
!5467 = !DILocation(line: 887, column: 13, scope: !5451)
!5468 = !DILocation(line: 887, column: 43, scope: !5451)
!5469 = !DILocation(line: 887, column: 51, scope: !5451)
!5470 = !DILocation(line: 887, column: 58, scope: !5451)
!5471 = !DILocation(line: 887, column: 19, scope: !5451)
!5472 = !DILocation(line: 888, column: 3, scope: !5451)
!5473 = !DILocation(line: 889, column: 10, scope: !5451)
!5474 = !DILocation(line: 890, column: 1, scope: !5451)
!5475 = !DILocation(line: 889, column: 3, scope: !5451)
!5476 = distinct !DISubprogram(name: "vprintf_", scope: !148, file: !148, line: 893, type: !5477, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5479)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!43, !3514, !3519}
!5479 = !{!5480, !5481, !5482}
!5480 = !DILocalVariable(name: "format", arg: 1, scope: !5476, file: !148, line: 893, type: !3514)
!5481 = !DILocalVariable(name: "va", arg: 2, scope: !5476, file: !148, line: 893, type: !3519)
!5482 = !DILocalVariable(name: "buffer", scope: !5476, file: !148, line: 895, type: !3526)
!5483 = !DILocation(line: 893, column: 26, scope: !5476)
!5484 = !DILocation(line: 893, column: 42, scope: !5476)
!5485 = !DILocation(line: 895, column: 3, scope: !5476)
!5486 = !DILocation(line: 895, column: 8, scope: !5476)
!5487 = !DILocation(line: 896, column: 32, scope: !5476)
!5488 = !DILocation(line: 896, column: 52, scope: !5476)
!5489 = !DILocation(line: 896, column: 10, scope: !5476)
!5490 = !DILocation(line: 897, column: 1, scope: !5476)
!5491 = !DILocation(line: 896, column: 3, scope: !5476)
!5492 = distinct !DISubprogram(name: "vsnprintf_", scope: !148, file: !148, line: 900, type: !5493, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5495)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!43, !66, !151, !3514, !3519}
!5495 = !{!5496, !5497, !5498, !5499}
!5496 = !DILocalVariable(name: "buffer", arg: 1, scope: !5492, file: !148, line: 900, type: !66)
!5497 = !DILocalVariable(name: "count", arg: 2, scope: !5492, file: !148, line: 900, type: !151)
!5498 = !DILocalVariable(name: "format", arg: 3, scope: !5492, file: !148, line: 900, type: !3514)
!5499 = !DILocalVariable(name: "va", arg: 4, scope: !5492, file: !148, line: 900, type: !3519)
!5500 = !DILocation(line: 900, column: 22, scope: !5492)
!5501 = !DILocation(line: 900, column: 37, scope: !5492)
!5502 = !DILocation(line: 900, column: 56, scope: !5492)
!5503 = !DILocation(line: 900, column: 72, scope: !5492)
!5504 = !DILocation(line: 902, column: 34, scope: !5492)
!5505 = !DILocation(line: 902, column: 42, scope: !5492)
!5506 = !DILocation(line: 902, column: 49, scope: !5492)
!5507 = !DILocation(line: 902, column: 10, scope: !5492)
!5508 = !DILocation(line: 902, column: 3, scope: !5492)
!5509 = distinct !DISubprogram(name: "fctprintf", scope: !148, file: !148, line: 906, type: !5510, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5512)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!43, !167, !19, !3514, null}
!5512 = !{!5513, !5514, !5515, !5516, !5517, !5519}
!5513 = !DILocalVariable(name: "out", arg: 1, scope: !5509, file: !148, line: 906, type: !167)
!5514 = !DILocalVariable(name: "arg", arg: 2, scope: !5509, file: !148, line: 906, type: !19)
!5515 = !DILocalVariable(name: "format", arg: 3, scope: !5509, file: !148, line: 906, type: !3514)
!5516 = !DILocalVariable(name: "va", scope: !5509, file: !148, line: 908, type: !3519)
!5517 = !DILocalVariable(name: "out_fct_wrap", scope: !5509, file: !148, line: 910, type: !5518)
!5518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!5519 = !DILocalVariable(name: "ret", scope: !5509, file: !148, line: 911, type: !3528)
!5520 = !DILocation(line: 906, column: 22, scope: !5509)
!5521 = !DILocation(line: 906, column: 61, scope: !5509)
!5522 = !DILocation(line: 906, column: 78, scope: !5509)
!5523 = !DILocation(line: 908, column: 3, scope: !5509)
!5524 = !DILocation(line: 908, column: 11, scope: !5509)
!5525 = !DILocation(line: 909, column: 3, scope: !5509)
!5526 = !DILocation(line: 910, column: 3, scope: !5509)
!5527 = !DILocation(line: 910, column: 27, scope: !5509)
!5528 = !DILocation(line: 910, column: 42, scope: !5509)
!5529 = !DILocation(line: 910, column: 44, scope: !5509)
!5530 = !{!5531, !293, i64 0}
!5531 = !{!"", !293, i64 0, !293, i64 4}
!5532 = !DILocation(line: 910, column: 49, scope: !5509)
!5533 = !{!5531, !293, i64 4}
!5534 = !DILocation(line: 911, column: 3, scope: !5509)
!5535 = !DILocation(line: 911, column: 13, scope: !5509)
!5536 = !DILocation(line: 911, column: 47, scope: !5509)
!5537 = !DILocation(line: 911, column: 40, scope: !5509)
!5538 = !DILocation(line: 911, column: 85, scope: !5509)
!5539 = !DILocation(line: 911, column: 19, scope: !5509)
!5540 = !DILocation(line: 912, column: 3, scope: !5509)
!5541 = !DILocation(line: 913, column: 10, scope: !5509)
!5542 = !DILocation(line: 914, column: 1, scope: !5509)
!5543 = !DILocation(line: 913, column: 3, scope: !5509)
!5544 = distinct !DISubprogram(name: "_out_fct", scope: !148, file: !148, line: 159, type: !155, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !5545)
!5545 = !{!5546, !5547, !5548, !5549}
!5546 = !DILocalVariable(name: "character", arg: 1, scope: !5544, file: !148, line: 159, type: !67)
!5547 = !DILocalVariable(name: "buffer", arg: 2, scope: !5544, file: !148, line: 159, type: !19)
!5548 = !DILocalVariable(name: "idx", arg: 3, scope: !5544, file: !148, line: 159, type: !151)
!5549 = !DILocalVariable(name: "maxlen", arg: 4, scope: !5544, file: !148, line: 159, type: !151)
!5550 = !DILocation(line: 159, column: 34, scope: !5544)
!5551 = !DILocation(line: 159, column: 51, scope: !5544)
!5552 = !DILocation(line: 159, column: 66, scope: !5544)
!5553 = !DILocation(line: 159, column: 78, scope: !5544)
!5554 = !DILocation(line: 161, column: 9, scope: !5544)
!5555 = !DILocation(line: 161, column: 20, scope: !5544)
!5556 = !DILocation(line: 162, column: 7, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5544, file: !148, line: 162, column: 7)
!5558 = !DILocation(line: 162, column: 7, scope: !5544)
!5559 = !DILocation(line: 164, column: 26, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5557, file: !148, line: 162, column: 18)
!5561 = !DILocation(line: 164, column: 6, scope: !5560)
!5562 = !DILocation(line: 164, column: 35, scope: !5560)
!5563 = !DILocation(line: 164, column: 39, scope: !5560)
!5564 = !DILocation(line: 164, column: 71, scope: !5560)
!5565 = !DILocation(line: 164, column: 51, scope: !5560)
!5566 = !DILocation(line: 164, column: 80, scope: !5560)
!5567 = !DILocation(line: 164, column: 5, scope: !5560)
!5568 = !DILocation(line: 165, column: 3, scope: !5560)
!5569 = !DILocation(line: 166, column: 1, scope: !5544)
!5570 = distinct !DISubprogram(name: "putc", scope: !5571, file: !5571, line: 10, type: !5572, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !5574)
!5571 = !DIFile(filename: "src/icemu/printfmap.c", directory: "/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/coremark")
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!43, !43, !19}
!5574 = !{!5575, !5576}
!5575 = !DILocalVariable(name: "character", arg: 1, scope: !5570, file: !5571, line: 10, type: !43)
!5576 = !DILocalVariable(name: "stream", arg: 2, scope: !5570, file: !5571, line: 10, type: !19)
!5577 = !DILocation(line: 10, column: 14, scope: !5570)
!5578 = !DILocation(line: 10, column: 31, scope: !5570)
!5579 = !DILocation(line: 12, column: 11, scope: !5570)
!5580 = !DILocation(line: 13, column: 12, scope: !5570)
!5581 = !DILocation(line: 13, column: 5, scope: !5570)
!5582 = distinct !DISubprogram(name: "_putchar", scope: !5571, file: !5571, line: 17, type: !5583, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !5585)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !67}
!5585 = !{!5586}
!5586 = !DILocalVariable(name: "character", arg: 1, scope: !5582, file: !5571, line: 17, type: !67)
!5587 = !DILocation(line: 17, column: 20, scope: !5582)
!5588 = !DILocation(line: 18, column: 10, scope: !5582)
!5589 = !DILocation(line: 18, column: 5, scope: !5582)
!5590 = !DILocation(line: 19, column: 1, scope: !5582)
!5591 = distinct !DISubprogram(name: "Reset_Handler", scope: !206, file: !206, line: 241, type: !214, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!5592 = !DILocation(line: 246, column: 5, scope: !5591)
!5593 = !{i32 12955, i32 12997, i32 13043}
!5594 = !DILocation(line: 253, column: 5, scope: !5591)
!5595 = !{i32 13121}
!5596 = !DILocation(line: 269, column: 5, scope: !5591)
!5597 = !{i32 13474, i32 13517, i32 13555, i32 13593, i32 13618, i32 13659, i32 13700, i32 13737}
!5598 = !DILocation(line: 280, column: 5, scope: !5591)
!5599 = !{i32 13826, i32 13864, i32 13901, i32 13934, i32 13959, i32 13996, i32 14029, i32 14072}
!5600 = !DILocation(line: 293, column: 5, scope: !5591)
!5601 = !{i32 14183}
!5602 = !DILocation(line: 298, column: 5, scope: !5591)
!5603 = !{i32 14290}
!5604 = !DILocation(line: 299, column: 1, scope: !5591)
!5605 = distinct !DISubprogram(name: "NMI_Handler", scope: !206, file: !206, line: 312, type: !214, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!5606 = !DILocation(line: 317, column: 5, scope: !5605)
!5607 = distinct !{!5607, !5606, !5608}
!5608 = !DILocation(line: 319, column: 5, scope: !5605)
!5609 = distinct !DISubprogram(name: "HardFault_Handler", scope: !206, file: !206, line: 330, type: !214, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!5610 = !DILocation(line: 335, column: 5, scope: !5609)
!5611 = distinct !{!5611, !5610, !5612}
!5612 = !DILocation(line: 337, column: 5, scope: !5609)
!5613 = distinct !DISubprogram(name: "am_default_isr", scope: !206, file: !206, line: 348, type: !214, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !4)
!5614 = !DILocation(line: 353, column: 5, scope: !5613)
!5615 = distinct !{!5615, !5614, !5616}
!5616 = !DILocation(line: 355, column: 5, scope: !5613)
