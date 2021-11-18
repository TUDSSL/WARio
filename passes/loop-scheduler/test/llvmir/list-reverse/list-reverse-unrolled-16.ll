; ModuleID = 'list-reverse-norm.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-gnu"

%struct.list_head_s = type { %struct.list_head_s*, %struct.list_data_s }
%struct.list_data_s = type { i16, i16 }

@g_am_pfnVectors = dso_local constant [48 x void ()*] [void ()* bitcast (i32* @_estack to void ()*), void ()* @Reset_Handler, void ()* @NMI_Handler, void ()* @HardFault_Handler, void ()* @MemManage_Handler, void ()* @BusFault_Handler, void ()* @UsageFault_Handler, void ()* @SecureFault_Handler, void ()* null, void ()* null, void ()* null, void ()* @SVC_Handler, void ()* @DebugMon_Handler, void ()* null, void ()* @PendSV_Handler, void ()* @SysTick_Handler, void ()* @am_brownout_isr, void ()* @am_watchdog_isr, void ()* @am_rtc_isr, void ()* @am_vcomp_isr, void ()* @am_ioslave_ios_isr, void ()* @am_ioslave_acc_isr, void ()* @am_iomaster0_isr, void ()* @am_iomaster1_isr, void ()* @am_iomaster2_isr, void ()* @am_iomaster3_isr, void ()* @am_iomaster4_isr, void ()* @am_iomaster5_isr, void ()* @am_ble_isr, void ()* @am_gpio_isr, void ()* @am_ctimer_isr, void ()* @am_uart_isr, void ()* @am_uart1_isr, void ()* @am_scard_isr, void ()* @am_adc_isr, void ()* @am_pdm0_isr, void ()* @am_mspi0_isr, void ()* @am_software0_isr, void ()* @am_stimer_isr, void ()* @am_stimer_cmpr0_isr, void ()* @am_stimer_cmpr1_isr, void ()* @am_stimer_cmpr2_isr, void ()* @am_stimer_cmpr3_isr, void ()* @am_stimer_cmpr4_isr, void ()* @am_stimer_cmpr5_isr, void ()* @am_stimer_cmpr6_isr, void ()* @am_stimer_cmpr7_isr, void ()* @am_clkgen_isr], section ".isr_vector", align 4
@_estack = external dso_local constant i32, align 4
@__Patchable = dso_local constant [16 x i32] zeroinitializer, section ".patch", align 4

@MemManage_Handler = weak dso_local alias void (), void ()* @HardFault_Handler
@BusFault_Handler = weak dso_local alias void (), void ()* @HardFault_Handler
@UsageFault_Handler = weak dso_local alias void (), void ()* @HardFault_Handler
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
define dso_local arm_aapcscc i32 @main() #0 {
  %1 = alloca [25 x %struct.list_head_s], align 4
  %2 = alloca %struct.list_head_s, align 4
  %3 = bitcast [25 x %struct.list_head_s]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %3) #4
  %4 = bitcast %struct.list_head_s* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #4
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %5, i32 0, i32 0
  store i16 42, i16* %6, align 4, !tbaa !3
  %7 = getelementptr inbounds [25 x %struct.list_head_s], [25 x %struct.list_head_s]* %1, i32 0, i32 0
  call arm_aapcscc void @list_init(%struct.list_head_s* %7, i32 25, %struct.list_head_s* %2)
  call arm_aapcscc void @list_increment_data(%struct.list_head_s* %2)
  %8 = call arm_aapcscc %struct.list_head_s* @list_reverse(%struct.list_head_s* %2)
  %9 = bitcast %struct.list_head_s* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #4
  %10 = bitcast [25 x %struct.list_head_s]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %10) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define dso_local arm_aapcscc void @list_init(%struct.list_head_s*, i32, %struct.list_head_s*) #0 {
  br label %4

4:                                                ; preds = %213, %3
  %.01 = phi %struct.list_head_s* [ %2, %3 ], [ %206, %213 ], !lws_unroll_16 !10, !lws_unrolled_loop !10
  %.0 = phi i32 [ 0, %3 ], [ %214, %213 ]
  %exitcond = icmp ne i32 %.0, %1
  br i1 %exitcond, label %6, label %5

5:                                                ; preds = %200, %187, %174, %161, %148, %135, %122, %109, %96, %83, %70, %57, %44, %31, %17, %4
  br label %19

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %.0
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 0
  store %struct.list_head_s* %7, %struct.list_head_s** %8, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 0
  %10 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %11, i32 0, i32 0
  store i16 1, i16* %12, align 4, !tbaa !3
  %13 = trunc i32 %.0 to i16
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 1
  %15 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %14, i32 0, i32 1
  store i16 %13, i16* %15, align 2, !tbaa !12
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %16, align 4, !tbaa !11
  br label %17

17:                                               ; preds = %6
  %18 = add i32 %.0, 1
  %exitcond.1 = icmp ne i32 %18, %1
  br i1 %exitcond.1, label %20, label %5

19:                                               ; preds = %5
  ret void

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %18
  %22 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 0
  store %struct.list_head_s* %21, %struct.list_head_s** %22, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 0
  %24 = load %struct.list_head_s*, %struct.list_head_s** %23, align 4, !tbaa !11
  %25 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %25, i32 0, i32 0
  store i16 1, i16* %26, align 4, !tbaa !3
  %27 = trunc i32 %18 to i16
  %28 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 1
  %29 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %28, i32 0, i32 1
  store i16 %27, i16* %29, align 2, !tbaa !12
  %30 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %30, align 4, !tbaa !11
  br label %31

31:                                               ; preds = %20
  %32 = add i32 %18, 1
  %exitcond.2 = icmp ne i32 %32, %1
  br i1 %exitcond.2, label %33, label %5

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %32
  %35 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 0
  store %struct.list_head_s* %34, %struct.list_head_s** %35, align 4, !tbaa !11
  %36 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %24, i32 0, i32 0
  %37 = load %struct.list_head_s*, %struct.list_head_s** %36, align 4, !tbaa !11
  %38 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %38, i32 0, i32 0
  store i16 1, i16* %39, align 4, !tbaa !3
  %40 = trunc i32 %32 to i16
  %41 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %37, i32 0, i32 1
  %42 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %41, i32 0, i32 1
  store i16 %40, i16* %42, align 2, !tbaa !12
  %43 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %37, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %43, align 4, !tbaa !11
  br label %44

44:                                               ; preds = %33
  %45 = add i32 %32, 1
  %exitcond.3 = icmp ne i32 %45, %1
  br i1 %exitcond.3, label %46, label %5

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %45
  %48 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %37, i32 0, i32 0
  store %struct.list_head_s* %47, %struct.list_head_s** %48, align 4, !tbaa !11
  %49 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %37, i32 0, i32 0
  %50 = load %struct.list_head_s*, %struct.list_head_s** %49, align 4, !tbaa !11
  %51 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %51, i32 0, i32 0
  store i16 1, i16* %52, align 4, !tbaa !3
  %53 = trunc i32 %45 to i16
  %54 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %50, i32 0, i32 1
  %55 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %54, i32 0, i32 1
  store i16 %53, i16* %55, align 2, !tbaa !12
  %56 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %50, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %56, align 4, !tbaa !11
  br label %57

57:                                               ; preds = %46
  %58 = add i32 %45, 1
  %exitcond.4 = icmp ne i32 %58, %1
  br i1 %exitcond.4, label %59, label %5

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %58
  %61 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %50, i32 0, i32 0
  store %struct.list_head_s* %60, %struct.list_head_s** %61, align 4, !tbaa !11
  %62 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %50, i32 0, i32 0
  %63 = load %struct.list_head_s*, %struct.list_head_s** %62, align 4, !tbaa !11
  %64 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %64, i32 0, i32 0
  store i16 1, i16* %65, align 4, !tbaa !3
  %66 = trunc i32 %58 to i16
  %67 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %63, i32 0, i32 1
  %68 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %67, i32 0, i32 1
  store i16 %66, i16* %68, align 2, !tbaa !12
  %69 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %63, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %69, align 4, !tbaa !11
  br label %70

70:                                               ; preds = %59
  %71 = add i32 %58, 1
  %exitcond.5 = icmp ne i32 %71, %1
  br i1 %exitcond.5, label %72, label %5

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %71
  %74 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %63, i32 0, i32 0
  store %struct.list_head_s* %73, %struct.list_head_s** %74, align 4, !tbaa !11
  %75 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %63, i32 0, i32 0
  %76 = load %struct.list_head_s*, %struct.list_head_s** %75, align 4, !tbaa !11
  %77 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %77, i32 0, i32 0
  store i16 1, i16* %78, align 4, !tbaa !3
  %79 = trunc i32 %71 to i16
  %80 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %76, i32 0, i32 1
  %81 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %80, i32 0, i32 1
  store i16 %79, i16* %81, align 2, !tbaa !12
  %82 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %76, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %82, align 4, !tbaa !11
  br label %83

83:                                               ; preds = %72
  %84 = add i32 %71, 1
  %exitcond.6 = icmp ne i32 %84, %1
  br i1 %exitcond.6, label %85, label %5

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %84
  %87 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %76, i32 0, i32 0
  store %struct.list_head_s* %86, %struct.list_head_s** %87, align 4, !tbaa !11
  %88 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %76, i32 0, i32 0
  %89 = load %struct.list_head_s*, %struct.list_head_s** %88, align 4, !tbaa !11
  %90 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %90, i32 0, i32 0
  store i16 1, i16* %91, align 4, !tbaa !3
  %92 = trunc i32 %84 to i16
  %93 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %89, i32 0, i32 1
  %94 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %93, i32 0, i32 1
  store i16 %92, i16* %94, align 2, !tbaa !12
  %95 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %89, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %95, align 4, !tbaa !11
  br label %96

96:                                               ; preds = %85
  %97 = add i32 %84, 1
  %exitcond.7 = icmp ne i32 %97, %1
  br i1 %exitcond.7, label %98, label %5

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %97
  %100 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %89, i32 0, i32 0
  store %struct.list_head_s* %99, %struct.list_head_s** %100, align 4, !tbaa !11
  %101 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %89, i32 0, i32 0
  %102 = load %struct.list_head_s*, %struct.list_head_s** %101, align 4, !tbaa !11
  %103 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %103, i32 0, i32 0
  store i16 1, i16* %104, align 4, !tbaa !3
  %105 = trunc i32 %97 to i16
  %106 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %102, i32 0, i32 1
  %107 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %106, i32 0, i32 1
  store i16 %105, i16* %107, align 2, !tbaa !12
  %108 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %102, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %108, align 4, !tbaa !11
  br label %109

109:                                              ; preds = %98
  %110 = add i32 %97, 1
  %exitcond.8 = icmp ne i32 %110, %1
  br i1 %exitcond.8, label %111, label %5

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %110
  %113 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %102, i32 0, i32 0
  store %struct.list_head_s* %112, %struct.list_head_s** %113, align 4, !tbaa !11
  %114 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %102, i32 0, i32 0
  %115 = load %struct.list_head_s*, %struct.list_head_s** %114, align 4, !tbaa !11
  %116 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %116, i32 0, i32 0
  store i16 1, i16* %117, align 4, !tbaa !3
  %118 = trunc i32 %110 to i16
  %119 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %115, i32 0, i32 1
  %120 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %119, i32 0, i32 1
  store i16 %118, i16* %120, align 2, !tbaa !12
  %121 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %115, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %121, align 4, !tbaa !11
  br label %122

122:                                              ; preds = %111
  %123 = add i32 %110, 1
  %exitcond.9 = icmp ne i32 %123, %1
  br i1 %exitcond.9, label %124, label %5

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %123
  %126 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %115, i32 0, i32 0
  store %struct.list_head_s* %125, %struct.list_head_s** %126, align 4, !tbaa !11
  %127 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %115, i32 0, i32 0
  %128 = load %struct.list_head_s*, %struct.list_head_s** %127, align 4, !tbaa !11
  %129 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %129, i32 0, i32 0
  store i16 1, i16* %130, align 4, !tbaa !3
  %131 = trunc i32 %123 to i16
  %132 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %128, i32 0, i32 1
  %133 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %132, i32 0, i32 1
  store i16 %131, i16* %133, align 2, !tbaa !12
  %134 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %128, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %134, align 4, !tbaa !11
  br label %135

135:                                              ; preds = %124
  %136 = add i32 %123, 1
  %exitcond.10 = icmp ne i32 %136, %1
  br i1 %exitcond.10, label %137, label %5

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %136
  %139 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %128, i32 0, i32 0
  store %struct.list_head_s* %138, %struct.list_head_s** %139, align 4, !tbaa !11
  %140 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %128, i32 0, i32 0
  %141 = load %struct.list_head_s*, %struct.list_head_s** %140, align 4, !tbaa !11
  %142 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %142, i32 0, i32 0
  store i16 1, i16* %143, align 4, !tbaa !3
  %144 = trunc i32 %136 to i16
  %145 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %141, i32 0, i32 1
  %146 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %145, i32 0, i32 1
  store i16 %144, i16* %146, align 2, !tbaa !12
  %147 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %141, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %147, align 4, !tbaa !11
  br label %148

148:                                              ; preds = %137
  %149 = add i32 %136, 1
  %exitcond.11 = icmp ne i32 %149, %1
  br i1 %exitcond.11, label %150, label %5

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %149
  %152 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %141, i32 0, i32 0
  store %struct.list_head_s* %151, %struct.list_head_s** %152, align 4, !tbaa !11
  %153 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %141, i32 0, i32 0
  %154 = load %struct.list_head_s*, %struct.list_head_s** %153, align 4, !tbaa !11
  %155 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %155, i32 0, i32 0
  store i16 1, i16* %156, align 4, !tbaa !3
  %157 = trunc i32 %149 to i16
  %158 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %154, i32 0, i32 1
  %159 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %158, i32 0, i32 1
  store i16 %157, i16* %159, align 2, !tbaa !12
  %160 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %154, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %160, align 4, !tbaa !11
  br label %161

161:                                              ; preds = %150
  %162 = add i32 %149, 1
  %exitcond.12 = icmp ne i32 %162, %1
  br i1 %exitcond.12, label %163, label %5

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %162
  %165 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %154, i32 0, i32 0
  store %struct.list_head_s* %164, %struct.list_head_s** %165, align 4, !tbaa !11
  %166 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %154, i32 0, i32 0
  %167 = load %struct.list_head_s*, %struct.list_head_s** %166, align 4, !tbaa !11
  %168 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %168, i32 0, i32 0
  store i16 1, i16* %169, align 4, !tbaa !3
  %170 = trunc i32 %162 to i16
  %171 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %167, i32 0, i32 1
  %172 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %171, i32 0, i32 1
  store i16 %170, i16* %172, align 2, !tbaa !12
  %173 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %167, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %173, align 4, !tbaa !11
  br label %174

174:                                              ; preds = %163
  %175 = add i32 %162, 1
  %exitcond.13 = icmp ne i32 %175, %1
  br i1 %exitcond.13, label %176, label %5

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %175
  %178 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %167, i32 0, i32 0
  store %struct.list_head_s* %177, %struct.list_head_s** %178, align 4, !tbaa !11
  %179 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %167, i32 0, i32 0
  %180 = load %struct.list_head_s*, %struct.list_head_s** %179, align 4, !tbaa !11
  %181 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %181, i32 0, i32 0
  store i16 1, i16* %182, align 4, !tbaa !3
  %183 = trunc i32 %175 to i16
  %184 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %180, i32 0, i32 1
  %185 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %184, i32 0, i32 1
  store i16 %183, i16* %185, align 2, !tbaa !12
  %186 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %180, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %186, align 4, !tbaa !11
  br label %187

187:                                              ; preds = %176
  %188 = add i32 %175, 1
  %exitcond.14 = icmp ne i32 %188, %1
  br i1 %exitcond.14, label %189, label %5

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %188
  %191 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %180, i32 0, i32 0
  store %struct.list_head_s* %190, %struct.list_head_s** %191, align 4, !tbaa !11
  %192 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %180, i32 0, i32 0
  %193 = load %struct.list_head_s*, %struct.list_head_s** %192, align 4, !tbaa !11
  %194 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %194, i32 0, i32 0
  store i16 1, i16* %195, align 4, !tbaa !3
  %196 = trunc i32 %188 to i16
  %197 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %193, i32 0, i32 1
  %198 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %197, i32 0, i32 1
  store i16 %196, i16* %198, align 2, !tbaa !12
  %199 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %193, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %199, align 4, !tbaa !11
  br label %200

200:                                              ; preds = %189
  %201 = add i32 %188, 1
  %exitcond.15 = icmp ne i32 %201, %1
  br i1 %exitcond.15, label %202, label %5

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %201
  %204 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %193, i32 0, i32 0
  store %struct.list_head_s* %203, %struct.list_head_s** %204, align 4, !tbaa !11
  %205 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %193, i32 0, i32 0
  %206 = load %struct.list_head_s*, %struct.list_head_s** %205, align 4, !tbaa !11
  %207 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %207, i32 0, i32 0
  store i16 1, i16* %208, align 4, !tbaa !3
  %209 = trunc i32 %201 to i16
  %210 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %206, i32 0, i32 1
  %211 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %210, i32 0, i32 1
  store i16 %209, i16* %211, align 2, !tbaa !12
  %212 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %206, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %212, align 4, !tbaa !11
  br label %213

213:                                              ; preds = %202
  %214 = add i32 %201, 1
  br label %4
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @list_increment_data(%struct.list_head_s*) #0 {
  br label %2

2:                                                ; preds = %155, %1
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %163, %155 ], !lws_unroll_16 !10, !lws_unrolled_loop !10
  %3 = icmp ne %struct.list_head_s* %.0, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %5, i32 0, i32 0
  %7 = load i16, i16* %6, align 4, !tbaa !3
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %8, 1
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %6, align 4, !tbaa !3
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  %12 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !tbaa !11
  %13 = icmp ne %struct.list_head_s* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %145, %135, %125, %115, %105, %95, %85, %75, %65, %55, %45, %35, %25, %15, %4, %2
  ret void

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %12, i32 0, i32 1
  %17 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 4, !tbaa !3
  %19 = sext i16 %18 to i32
  %20 = add nsw i32 %19, 1
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %17, align 4, !tbaa !3
  %22 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %12, i32 0, i32 0
  %23 = load %struct.list_head_s*, %struct.list_head_s** %22, align 4, !tbaa !11
  %24 = icmp ne %struct.list_head_s* %23, null
  br i1 %24, label %25, label %14

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %23, i32 0, i32 1
  %27 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 4, !tbaa !3
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, 1
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %27, align 4, !tbaa !3
  %32 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %23, i32 0, i32 0
  %33 = load %struct.list_head_s*, %struct.list_head_s** %32, align 4, !tbaa !11
  %34 = icmp ne %struct.list_head_s* %33, null
  br i1 %34, label %35, label %14

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %33, i32 0, i32 1
  %37 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 4, !tbaa !3
  %39 = sext i16 %38 to i32
  %40 = add nsw i32 %39, 1
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %37, align 4, !tbaa !3
  %42 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %33, i32 0, i32 0
  %43 = load %struct.list_head_s*, %struct.list_head_s** %42, align 4, !tbaa !11
  %44 = icmp ne %struct.list_head_s* %43, null
  br i1 %44, label %45, label %14

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %43, i32 0, i32 1
  %47 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %46, i32 0, i32 0
  %48 = load i16, i16* %47, align 4, !tbaa !3
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %49, 1
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %47, align 4, !tbaa !3
  %52 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %43, i32 0, i32 0
  %53 = load %struct.list_head_s*, %struct.list_head_s** %52, align 4, !tbaa !11
  %54 = icmp ne %struct.list_head_s* %53, null
  br i1 %54, label %55, label %14

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %53, i32 0, i32 1
  %57 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 4, !tbaa !3
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %59, 1
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %57, align 4, !tbaa !3
  %62 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %53, i32 0, i32 0
  %63 = load %struct.list_head_s*, %struct.list_head_s** %62, align 4, !tbaa !11
  %64 = icmp ne %struct.list_head_s* %63, null
  br i1 %64, label %65, label %14

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %63, i32 0, i32 1
  %67 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %66, i32 0, i32 0
  %68 = load i16, i16* %67, align 4, !tbaa !3
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %69, 1
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %67, align 4, !tbaa !3
  %72 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %63, i32 0, i32 0
  %73 = load %struct.list_head_s*, %struct.list_head_s** %72, align 4, !tbaa !11
  %74 = icmp ne %struct.list_head_s* %73, null
  br i1 %74, label %75, label %14

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %73, i32 0, i32 1
  %77 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %76, i32 0, i32 0
  %78 = load i16, i16* %77, align 4, !tbaa !3
  %79 = sext i16 %78 to i32
  %80 = add nsw i32 %79, 1
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %77, align 4, !tbaa !3
  %82 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %73, i32 0, i32 0
  %83 = load %struct.list_head_s*, %struct.list_head_s** %82, align 4, !tbaa !11
  %84 = icmp ne %struct.list_head_s* %83, null
  br i1 %84, label %85, label %14

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %83, i32 0, i32 1
  %87 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %86, i32 0, i32 0
  %88 = load i16, i16* %87, align 4, !tbaa !3
  %89 = sext i16 %88 to i32
  %90 = add nsw i32 %89, 1
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %87, align 4, !tbaa !3
  %92 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %83, i32 0, i32 0
  %93 = load %struct.list_head_s*, %struct.list_head_s** %92, align 4, !tbaa !11
  %94 = icmp ne %struct.list_head_s* %93, null
  br i1 %94, label %95, label %14

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %93, i32 0, i32 1
  %97 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %96, i32 0, i32 0
  %98 = load i16, i16* %97, align 4, !tbaa !3
  %99 = sext i16 %98 to i32
  %100 = add nsw i32 %99, 1
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %97, align 4, !tbaa !3
  %102 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %93, i32 0, i32 0
  %103 = load %struct.list_head_s*, %struct.list_head_s** %102, align 4, !tbaa !11
  %104 = icmp ne %struct.list_head_s* %103, null
  br i1 %104, label %105, label %14

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %103, i32 0, i32 1
  %107 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %106, i32 0, i32 0
  %108 = load i16, i16* %107, align 4, !tbaa !3
  %109 = sext i16 %108 to i32
  %110 = add nsw i32 %109, 1
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %107, align 4, !tbaa !3
  %112 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %103, i32 0, i32 0
  %113 = load %struct.list_head_s*, %struct.list_head_s** %112, align 4, !tbaa !11
  %114 = icmp ne %struct.list_head_s* %113, null
  br i1 %114, label %115, label %14

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %113, i32 0, i32 1
  %117 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %116, i32 0, i32 0
  %118 = load i16, i16* %117, align 4, !tbaa !3
  %119 = sext i16 %118 to i32
  %120 = add nsw i32 %119, 1
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %117, align 4, !tbaa !3
  %122 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %113, i32 0, i32 0
  %123 = load %struct.list_head_s*, %struct.list_head_s** %122, align 4, !tbaa !11
  %124 = icmp ne %struct.list_head_s* %123, null
  br i1 %124, label %125, label %14

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %123, i32 0, i32 1
  %127 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %126, i32 0, i32 0
  %128 = load i16, i16* %127, align 4, !tbaa !3
  %129 = sext i16 %128 to i32
  %130 = add nsw i32 %129, 1
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* %127, align 4, !tbaa !3
  %132 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %123, i32 0, i32 0
  %133 = load %struct.list_head_s*, %struct.list_head_s** %132, align 4, !tbaa !11
  %134 = icmp ne %struct.list_head_s* %133, null
  br i1 %134, label %135, label %14

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %133, i32 0, i32 1
  %137 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %136, i32 0, i32 0
  %138 = load i16, i16* %137, align 4, !tbaa !3
  %139 = sext i16 %138 to i32
  %140 = add nsw i32 %139, 1
  %141 = trunc i32 %140 to i16
  store i16 %141, i16* %137, align 4, !tbaa !3
  %142 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %133, i32 0, i32 0
  %143 = load %struct.list_head_s*, %struct.list_head_s** %142, align 4, !tbaa !11
  %144 = icmp ne %struct.list_head_s* %143, null
  br i1 %144, label %145, label %14

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %143, i32 0, i32 1
  %147 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %146, i32 0, i32 0
  %148 = load i16, i16* %147, align 4, !tbaa !3
  %149 = sext i16 %148 to i32
  %150 = add nsw i32 %149, 1
  %151 = trunc i32 %150 to i16
  store i16 %151, i16* %147, align 4, !tbaa !3
  %152 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %143, i32 0, i32 0
  %153 = load %struct.list_head_s*, %struct.list_head_s** %152, align 4, !tbaa !11
  %154 = icmp ne %struct.list_head_s* %153, null
  br i1 %154, label %155, label %14

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %153, i32 0, i32 1
  %157 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %156, i32 0, i32 0
  %158 = load i16, i16* %157, align 4, !tbaa !3
  %159 = sext i16 %158 to i32
  %160 = add nsw i32 %159, 1
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %157, align 4, !tbaa !3
  %162 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %153, i32 0, i32 0
  %163 = load %struct.list_head_s*, %struct.list_head_s** %162, align 4, !tbaa !11
  br label %2
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @list_reverse(%struct.list_head_s*) #0 {
  br label %2

2:                                                ; preds = %80, %1
  %.01 = phi %struct.list_head_s* [ null, %1 ], [ %77, %80 ], !lws_unroll_16 !10, !lws_unrolled_loop !10
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %82, %80 ]
  %3 = icmp ne %struct.list_head_s* %.0, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  %6 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  store %struct.list_head_s* %.01, %struct.list_head_s** %7, align 4, !tbaa !11
  %8 = icmp ne %struct.list_head_s* %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15, %10, %4, %2
  %.01.lcssa = phi %struct.list_head_s* [ %.01, %2 ], [ %.0, %4 ], [ %6, %10 ], [ %12, %15 ], [ %17, %20 ], [ %22, %25 ], [ %27, %30 ], [ %32, %35 ], [ %37, %40 ], [ %42, %45 ], [ %47, %50 ], [ %52, %55 ], [ %57, %60 ], [ %62, %65 ], [ %67, %70 ], [ %72, %75 ]
  ret %struct.list_head_s* %.01.lcssa

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %6, i32 0, i32 0
  %12 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %6, i32 0, i32 0
  store %struct.list_head_s* %.0, %struct.list_head_s** %13, align 4, !tbaa !11
  %14 = icmp ne %struct.list_head_s* %12, null
  br i1 %14, label %15, label %9

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %12, i32 0, i32 0
  %17 = load %struct.list_head_s*, %struct.list_head_s** %16, align 4, !tbaa !11
  %18 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %12, i32 0, i32 0
  store %struct.list_head_s* %6, %struct.list_head_s** %18, align 4, !tbaa !11
  %19 = icmp ne %struct.list_head_s* %17, null
  br i1 %19, label %20, label %9

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 0
  %22 = load %struct.list_head_s*, %struct.list_head_s** %21, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %17, i32 0, i32 0
  store %struct.list_head_s* %12, %struct.list_head_s** %23, align 4, !tbaa !11
  %24 = icmp ne %struct.list_head_s* %22, null
  br i1 %24, label %25, label %9

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %22, i32 0, i32 0
  %27 = load %struct.list_head_s*, %struct.list_head_s** %26, align 4, !tbaa !11
  %28 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %22, i32 0, i32 0
  store %struct.list_head_s* %17, %struct.list_head_s** %28, align 4, !tbaa !11
  %29 = icmp ne %struct.list_head_s* %27, null
  br i1 %29, label %30, label %9

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %27, i32 0, i32 0
  %32 = load %struct.list_head_s*, %struct.list_head_s** %31, align 4, !tbaa !11
  %33 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %27, i32 0, i32 0
  store %struct.list_head_s* %22, %struct.list_head_s** %33, align 4, !tbaa !11
  %34 = icmp ne %struct.list_head_s* %32, null
  br i1 %34, label %35, label %9

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %32, i32 0, i32 0
  %37 = load %struct.list_head_s*, %struct.list_head_s** %36, align 4, !tbaa !11
  %38 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %32, i32 0, i32 0
  store %struct.list_head_s* %27, %struct.list_head_s** %38, align 4, !tbaa !11
  %39 = icmp ne %struct.list_head_s* %37, null
  br i1 %39, label %40, label %9

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %37, i32 0, i32 0
  %42 = load %struct.list_head_s*, %struct.list_head_s** %41, align 4, !tbaa !11
  %43 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %37, i32 0, i32 0
  store %struct.list_head_s* %32, %struct.list_head_s** %43, align 4, !tbaa !11
  %44 = icmp ne %struct.list_head_s* %42, null
  br i1 %44, label %45, label %9

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %42, i32 0, i32 0
  %47 = load %struct.list_head_s*, %struct.list_head_s** %46, align 4, !tbaa !11
  %48 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %42, i32 0, i32 0
  store %struct.list_head_s* %37, %struct.list_head_s** %48, align 4, !tbaa !11
  %49 = icmp ne %struct.list_head_s* %47, null
  br i1 %49, label %50, label %9

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %47, i32 0, i32 0
  %52 = load %struct.list_head_s*, %struct.list_head_s** %51, align 4, !tbaa !11
  %53 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %47, i32 0, i32 0
  store %struct.list_head_s* %42, %struct.list_head_s** %53, align 4, !tbaa !11
  %54 = icmp ne %struct.list_head_s* %52, null
  br i1 %54, label %55, label %9

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %52, i32 0, i32 0
  %57 = load %struct.list_head_s*, %struct.list_head_s** %56, align 4, !tbaa !11
  %58 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %52, i32 0, i32 0
  store %struct.list_head_s* %47, %struct.list_head_s** %58, align 4, !tbaa !11
  %59 = icmp ne %struct.list_head_s* %57, null
  br i1 %59, label %60, label %9

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %57, i32 0, i32 0
  %62 = load %struct.list_head_s*, %struct.list_head_s** %61, align 4, !tbaa !11
  %63 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %57, i32 0, i32 0
  store %struct.list_head_s* %52, %struct.list_head_s** %63, align 4, !tbaa !11
  %64 = icmp ne %struct.list_head_s* %62, null
  br i1 %64, label %65, label %9

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %62, i32 0, i32 0
  %67 = load %struct.list_head_s*, %struct.list_head_s** %66, align 4, !tbaa !11
  %68 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %62, i32 0, i32 0
  store %struct.list_head_s* %57, %struct.list_head_s** %68, align 4, !tbaa !11
  %69 = icmp ne %struct.list_head_s* %67, null
  br i1 %69, label %70, label %9

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %67, i32 0, i32 0
  %72 = load %struct.list_head_s*, %struct.list_head_s** %71, align 4, !tbaa !11
  %73 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %67, i32 0, i32 0
  store %struct.list_head_s* %62, %struct.list_head_s** %73, align 4, !tbaa !11
  %74 = icmp ne %struct.list_head_s* %72, null
  br i1 %74, label %75, label %9

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %72, i32 0, i32 0
  %77 = load %struct.list_head_s*, %struct.list_head_s** %76, align 4, !tbaa !11
  %78 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %72, i32 0, i32 0
  store %struct.list_head_s* %67, %struct.list_head_s** %78, align 4, !tbaa !11
  %79 = icmp ne %struct.list_head_s* %77, null
  br i1 %79, label %80, label %9

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %77, i32 0, i32 0
  %82 = load %struct.list_head_s*, %struct.list_head_s** %81, align 4, !tbaa !11
  %83 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %77, i32 0, i32 0
  store %struct.list_head_s* %72, %struct.list_head_s** %83, align 4, !tbaa !11
  br label %2
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #2 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #4, !srcloc !13
  call void asm sideeffect "    ldr    sp, [r1]", ""() #4, !srcloc !14
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #4, !srcloc !15
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #4, !srcloc !16
  call void asm sideeffect "    bl   main\0A", ""() #4, !srcloc !17
  call void asm sideeffect "    bkpt     ", ""() #4, !srcloc !18
  unreachable
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @NMI_Handler() #0 {
  br label %1

1:                                                ; preds = %1, %0
  br label %1
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @HardFault_Handler() #0 {
  br label %1

1:                                                ; preds = %1, %0
  br label %1
}

declare extern_weak dso_local arm_aapcscc void @SecureFault_Handler() #3

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 {
  br label %1

1:                                                ; preds = %1, %0
  br label %1
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { naked noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 9.0.1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!4, !9, i64 4}
!4 = !{!"list_head_s", !5, i64 0, !8, i64 4}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"list_data_s", !9, i64 0, !9, i64 2}
!9 = !{!"short", !6, i64 0}
!10 = !{!"loop_write_scheduler"}
!11 = !{!4, !5, i64 0}
!12 = !{!4, !9, i64 6}
!13 = !{i32 12926, i32 12968, i32 13014}
!14 = !{i32 13092}
!15 = !{i32 13445, i32 13488, i32 13526, i32 13564, i32 13589, i32 13630, i32 13671, i32 13708}
!16 = !{i32 13797, i32 13835, i32 13872, i32 13905, i32 13930, i32 13967, i32 14000, i32 14043}
!17 = !{i32 14154}
!18 = !{i32 14261}
