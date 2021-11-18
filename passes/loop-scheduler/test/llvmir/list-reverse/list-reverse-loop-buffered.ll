; ModuleID = 'list-reverse-unrolled-norm.ll'
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

4:                                                ; preds = %54, %3
  %.01 = phi %struct.list_head_s* [ %2, %3 ], [ %47, %54 ], !lws_unroll_3 !10, !lws_unrolled_loop !10, !ics_resolved_load_use !11
  %.0 = phi i32 [ 0, %3 ], [ %55, %54 ]
  %exitcond = icmp ne i32 %.0, %1
  br i1 %exitcond, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %4
  br label %5

5:                                                ; preds = %._crit_edge2, %._crit_edge1, %._crit_edge
  br label %19

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %.0
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 0
  store %struct.list_head_s* %7, %struct.list_head_s** %8, align 4, !tbaa !12
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 0
  %10 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !tbaa !12
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %11, i32 0, i32 0
  store i16 1, i16* %12, align 4, !tbaa !3
  %13 = trunc i32 %.0 to i16
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 1
  %15 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %14, i32 0, i32 1
  store i16 %13, i16* %15, align 2, !tbaa !13
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 0
  br label %17

17:                                               ; preds = %6
  %18 = add i32 %.0, 1
  %exitcond.1 = icmp ne i32 %18, %1
  br i1 %exitcond.1, label %20, label %._crit_edge1

._crit_edge1:                                     ; preds = %17
  store %struct.list_head_s* null, %struct.list_head_s** %16, align 4, !tbaa !12, !lwc_write_early_exit !14
  br label %5

19:                                               ; preds = %5
  ret void

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %18
  %22 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 0
  %23 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 0
  %24 = load %struct.list_head_s*, %struct.list_head_s** %23, align 4, !tbaa !12, !ics_resolved_load !11
  %25 = icmp eq %struct.list_head_s** %23, %16, !ics_resolved_load_icmp !11
  %26 = select i1 %25, %struct.list_head_s* null, %struct.list_head_s* %24, !ics_resolved_load_select !11
  %27 = icmp eq %struct.list_head_s** %23, %22, !ics_resolved_load_icmp !11
  %28 = select i1 %27, %struct.list_head_s* %21, %struct.list_head_s* %26, !ics_resolved_load_select !11
  %29 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %28, i32 0, i32 1, !ics_resolved_load_use !11
  %30 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %29, i32 0, i32 0
  store i16 1, i16* %30, align 4, !tbaa !3
  %31 = trunc i32 %18 to i16
  %32 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %28, i32 0, i32 1, !ics_resolved_load_use !11
  %33 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %32, i32 0, i32 1
  store i16 %31, i16* %33, align 2, !tbaa !13
  %34 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %28, i32 0, i32 0, !ics_resolved_load_use !11
  br label %35

35:                                               ; preds = %20
  %36 = add i32 %18, 1
  %exitcond.2 = icmp ne i32 %36, %1
  br i1 %exitcond.2, label %37, label %._crit_edge2

._crit_edge2:                                     ; preds = %35
  store %struct.list_head_s* null, %struct.list_head_s** %16, align 4, !tbaa !12, !lwc_write_early_exit !14
  store %struct.list_head_s* %21, %struct.list_head_s** %22, align 4, !tbaa !12, !lwc_write_early_exit !14
  store %struct.list_head_s* null, %struct.list_head_s** %34, align 4, !tbaa !12, !lwc_write_early_exit !14
  br label %5

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %36
  %39 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %28, i32 0, i32 0, !ics_resolved_load_use !11
  %40 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %28, i32 0, i32 0, !ics_resolved_load_use !11
  %41 = load %struct.list_head_s*, %struct.list_head_s** %40, align 4, !tbaa !12, !ics_resolved_load !11
  %42 = icmp eq %struct.list_head_s** %40, %16, !ics_resolved_load_icmp !11
  %43 = select i1 %42, %struct.list_head_s* null, %struct.list_head_s* %41, !ics_resolved_load_select !11
  %44 = icmp eq %struct.list_head_s** %40, %34, !ics_resolved_load_icmp !11
  %45 = select i1 %44, %struct.list_head_s* null, %struct.list_head_s* %43, !ics_resolved_load_select !11
  %46 = icmp eq %struct.list_head_s** %40, %39, !ics_resolved_load_icmp !11
  %47 = select i1 %46, %struct.list_head_s* %38, %struct.list_head_s* %45, !ics_resolved_load_select !11
  %48 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %47, i32 0, i32 1, !ics_resolved_load_use !11
  %49 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %48, i32 0, i32 0
  store i16 1, i16* %49, align 4, !tbaa !3
  %50 = trunc i32 %36 to i16
  %51 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %47, i32 0, i32 1, !ics_resolved_load_use !11
  %52 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %51, i32 0, i32 1
  store i16 %50, i16* %52, align 2, !tbaa !13
  %53 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %47, i32 0, i32 0, !ics_resolved_load_use !11
  br label %54

54:                                               ; preds = %37
  %55 = add i32 %36, 1
  store %struct.list_head_s* null, %struct.list_head_s** %16, align 4, !tbaa !12, !lwc_moved_write !14
  store %struct.list_head_s* %21, %struct.list_head_s** %22, align 4, !tbaa !12, !lwc_moved_write !14
  store %struct.list_head_s* null, %struct.list_head_s** %34, align 4, !tbaa !12, !lwc_moved_write !14
  store %struct.list_head_s* %38, %struct.list_head_s** %39, align 4, !tbaa !12, !lwc_moved_write !14
  store %struct.list_head_s* null, %struct.list_head_s** %53, align 4, !tbaa !12, !lwc_moved_write !14
  br label %4
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @list_increment_data(%struct.list_head_s*) #0 {
  br label %2

2:                                                ; preds = %27, %1
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %39, %27 ], !lws_unroll_3 !10, !lws_unrolled_loop !10
  %3 = icmp ne %struct.list_head_s* %.0, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %2
  br label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %5, i32 0, i32 0
  %7 = load i16, i16* %6, align 4, !tbaa !3
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %8, 1
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  %12 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !tbaa !12
  %13 = icmp ne %struct.list_head_s* %12, null
  br i1 %13, label %15, label %._crit_edge1

._crit_edge1:                                     ; preds = %4
  store i16 %10, i16* %6, align 4, !tbaa !3, !lwc_write_early_exit !14
  br label %14

14:                                               ; preds = %._crit_edge2, %._crit_edge1, %._crit_edge
  ret void

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %12, i32 0, i32 1
  %17 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 4, !tbaa !3, !ics_resolved_load !11
  %19 = icmp eq i16* %17, %6, !ics_resolved_load_icmp !11
  %20 = select i1 %19, i16 %10, i16 %18, !ics_resolved_load_select !11
  %21 = sext i16 %20 to i32, !ics_resolved_load_use !11
  %22 = add nsw i32 %21, 1
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %12, i32 0, i32 0
  %25 = load %struct.list_head_s*, %struct.list_head_s** %24, align 4, !tbaa !12
  %26 = icmp ne %struct.list_head_s* %25, null
  br i1 %26, label %27, label %._crit_edge2

._crit_edge2:                                     ; preds = %15
  store i16 %10, i16* %6, align 4, !tbaa !3, !lwc_write_early_exit !14
  store i16 %23, i16* %17, align 4, !tbaa !3, !lwc_write_early_exit !14
  br label %14

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %25, i32 0, i32 1
  %29 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 4, !tbaa !3, !ics_resolved_load !11
  %31 = icmp eq i16* %29, %6, !ics_resolved_load_icmp !11
  %32 = select i1 %31, i16 %10, i16 %30, !ics_resolved_load_select !11
  %33 = icmp eq i16* %29, %17, !ics_resolved_load_icmp !11
  %34 = select i1 %33, i16 %23, i16 %32, !ics_resolved_load_select !11
  %35 = sext i16 %34 to i32, !ics_resolved_load_use !11
  %36 = add nsw i32 %35, 1
  %37 = trunc i32 %36 to i16
  store i16 %10, i16* %6, align 4, !tbaa !3, !lwc_moved_write !14
  store i16 %23, i16* %17, align 4, !tbaa !3, !lwc_moved_write !14
  store i16 %37, i16* %29, align 4, !tbaa !3
  %38 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %25, i32 0, i32 0
  %39 = load %struct.list_head_s*, %struct.list_head_s** %38, align 4, !tbaa !12
  br label %2
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @list_reverse(%struct.list_head_s*) #0 {
  br label %2

2:                                                ; preds = %17, %1
  %.01 = phi %struct.list_head_s* [ null, %1 ], [ %14, %17 ], !lws_unroll_3 !10, !lws_unrolled_loop !10, !ics_resolved_load_use !11
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %23, %17 ], !ics_resolved_load_use !11
  %3 = icmp ne %struct.list_head_s* %.0, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %2
  %.01.lcssa5 = phi %struct.list_head_s* [ %.01, %2 ]
  br label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  %6 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  %8 = icmp ne %struct.list_head_s* %6, null
  br i1 %8, label %10, label %._crit_edge1

._crit_edge1:                                     ; preds = %4
  %.0.lcssa3 = phi %struct.list_head_s* [ %.0, %4 ]
  store %struct.list_head_s* %.01, %struct.list_head_s** %7, align 4, !tbaa !12, !lwc_write_early_exit !14
  br label %9

9:                                                ; preds = %._crit_edge2, %._crit_edge1, %._crit_edge
  %.01.lcssa = phi %struct.list_head_s* [ %.01.lcssa5, %._crit_edge ], [ %.0.lcssa3, %._crit_edge1 ], [ %.lcssa8, %._crit_edge2 ]
  ret %struct.list_head_s* %.01.lcssa

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %6, i32 0, i32 0
  %12 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !tbaa !12, !ics_resolved_load !11
  %13 = icmp eq %struct.list_head_s** %11, %7, !ics_resolved_load_icmp !11
  %14 = select i1 %13, %struct.list_head_s* %.01, %struct.list_head_s* %12, !ics_resolved_load_select !11
  %15 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %6, i32 0, i32 0
  %16 = icmp ne %struct.list_head_s* %14, null, !ics_resolved_load_use !11
  br i1 %16, label %17, label %._crit_edge2

._crit_edge2:                                     ; preds = %10
  %.lcssa8 = phi %struct.list_head_s* [ %6, %10 ]
  store %struct.list_head_s* %.01, %struct.list_head_s** %7, align 4, !tbaa !12, !lwc_write_early_exit !14
  store %struct.list_head_s* %.0, %struct.list_head_s** %15, align 4, !tbaa !12, !lwc_write_early_exit !14
  br label %9

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %14, i32 0, i32 0, !ics_resolved_load_use !11
  %19 = load %struct.list_head_s*, %struct.list_head_s** %18, align 4, !tbaa !12, !ics_resolved_load !11
  %20 = icmp eq %struct.list_head_s** %18, %7, !ics_resolved_load_icmp !11
  %21 = select i1 %20, %struct.list_head_s* %.01, %struct.list_head_s* %19, !ics_resolved_load_select !11
  %22 = icmp eq %struct.list_head_s** %18, %15, !ics_resolved_load_icmp !11
  %23 = select i1 %22, %struct.list_head_s* %.0, %struct.list_head_s* %21, !ics_resolved_load_select !11
  %24 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %14, i32 0, i32 0, !ics_resolved_load_use !11
  store %struct.list_head_s* %.01, %struct.list_head_s** %7, align 4, !tbaa !12, !lwc_moved_write !14
  store %struct.list_head_s* %.0, %struct.list_head_s** %15, align 4, !tbaa !12, !lwc_moved_write !14
  store %struct.list_head_s* %6, %struct.list_head_s** %24, align 4, !tbaa !12
  br label %2
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #2 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #4, !srcloc !15
  call void asm sideeffect "    ldr    sp, [r1]", ""() #4, !srcloc !16
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #4, !srcloc !17
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #4, !srcloc !18
  call void asm sideeffect "    bl   main\0A", ""() #4, !srcloc !19
  call void asm sideeffect "    bkpt     ", ""() #4, !srcloc !20
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
!11 = !{!"ics_scheduler"}
!12 = !{!4, !5, i64 0}
!13 = !{!4, !9, i64 6}
!14 = !{!"lwc_scheduler"}
!15 = !{i32 12926, i32 12968, i32 13014}
!16 = !{i32 13092}
!17 = !{i32 13445, i32 13488, i32 13526, i32 13564, i32 13589, i32 13630, i32 13671, i32 13708}
!18 = !{i32 13797, i32 13835, i32 13872, i32 13905, i32 13930, i32 13967, i32 14000, i32 14043}
!19 = !{i32 14154}
!20 = !{i32 14261}
