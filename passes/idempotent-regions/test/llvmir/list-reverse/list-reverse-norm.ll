; ModuleID = '/home/vkortbeek/devel/intermittent-compiler/intermittent-compiler-collection/passes/idempotent-regions/test/arm-code/list-reverse/build-noelle/src/list-reverse-ics-loop-unroll.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-gnu"

%struct.list_head_s = type { %struct.list_head_s*, %struct.list_data_s }
%struct.list_data_s = type { i16, i16 }
%struct.__va_list = type { i8* }
%union.anon = type { i64 }
%struct.out_fct_wrap_type = type { void (i8, i8*)*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"Initial list\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Reversed order\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Node %d has data %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1.13 = private unnamed_addr constant [5 x i8] c"fni-\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fni+\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fni\00", align 1
@_ftoa.pow10 = internal constant [10 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09], align 8
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
  call void @llvm.lifetime.start.p0i8(i64 200, i8* %3) #2
  %4 = bitcast %struct.list_head_s* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %5, i32 0, i32 0
  store i16 42, i16* %6, align 4, !tbaa !3
  %7 = getelementptr inbounds [25 x %struct.list_head_s], [25 x %struct.list_head_s]* %1, i32 0, i32 0
  call arm_aapcscc void @list_init(%struct.list_head_s* %7, i32 25, %struct.list_head_s* %2)
  call arm_aapcscc void @list_increment_data(%struct.list_head_s* %2)
  %8 = getelementptr [14 x i8], [14 x i8]* @.str, i32 0, i32 0
  %9 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %8)
  call arm_aapcscc void @list_print(%struct.list_head_s* %2)
  %10 = call arm_aapcscc %struct.list_head_s* @list_reverse(%struct.list_head_s* %2)
  %11 = getelementptr [16 x i8], [16 x i8]* @.str.1, i32 0, i32 0
  %12 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %11)
  call arm_aapcscc void @list_print(%struct.list_head_s* %10)
  %13 = bitcast %struct.list_head_s* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %13) #2
  %14 = bitcast [25 x %struct.list_head_s]* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 200, i8* %14) #2
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define dso_local arm_aapcscc void @list_init(%struct.list_head_s*, i32, %struct.list_head_s*) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %.01 = phi %struct.list_head_s* [ %2, %3 ], [ %10, %17 ]
  %.0 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %exitcond = icmp ne i32 %.0, %1
  br i1 %exitcond, label %6, label %5

5:                                                ; preds = %4
  br label %19

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %.0
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 0
  store %struct.list_head_s* %7, %struct.list_head_s** %8, align 4, !tbaa !10
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.01, i32 0, i32 0
  %10 = load %struct.list_head_s*, %struct.list_head_s** %9, align 4, !tbaa !10
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %11, i32 0, i32 0
  store i16 1, i16* %12, align 4, !tbaa !3
  %13 = trunc i32 %.0 to i16
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 1
  %15 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %14, i32 0, i32 1
  store i16 %13, i16* %15, align 2, !tbaa !11
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %10, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %16, align 4, !tbaa !10
  br label %17

17:                                               ; preds = %6
  %18 = add i32 %.0, 1
  br label %4

19:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @list_increment_data(%struct.list_head_s*) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %12, %4 ]
  %3 = icmp ne %struct.list_head_s* %.0, null
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %5, i32 0, i32 0
  %7 = load i16, i16* %6, align 4, !tbaa !3
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %8, 1
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %6, align 4, !tbaa !3
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  %12 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !tbaa !10
  br label %2

13:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_aapcscc %struct.list_head_s* @list_reverse(%struct.list_head_s*) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.01 = phi %struct.list_head_s* [ null, %1 ], [ %6, %10 ], !ics_unroll_2 !12
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %12, %10 ]
  %3 = icmp ne %struct.list_head_s* %.0, null
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %2
  %.01.lcssa3 = phi %struct.list_head_s* [ %.01, %2 ]
  br label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  %6 = load %struct.list_head_s*, %struct.list_head_s** %5, align 4, !tbaa !10
  %7 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  store %struct.list_head_s* %.01, %struct.list_head_s** %7, align 4, !tbaa !10
  %8 = icmp ne %struct.list_head_s* %6, null
  br i1 %8, label %10, label %._crit_edge1

._crit_edge1:                                     ; preds = %4
  %.0.lcssa2 = phi %struct.list_head_s* [ %.0, %4 ]
  br label %9

9:                                                ; preds = %._crit_edge1, %._crit_edge
  %.01.lcssa = phi %struct.list_head_s* [ %.01.lcssa3, %._crit_edge ], [ %.0.lcssa2, %._crit_edge1 ]
  ret %struct.list_head_s* %.01.lcssa

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %6, i32 0, i32 0
  %12 = load %struct.list_head_s*, %struct.list_head_s** %11, align 4, !tbaa !10
  %13 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %6, i32 0, i32 0
  store %struct.list_head_s* %.0, %struct.list_head_s** %13, align 4, !tbaa !10
  br label %2
}

; Function Attrs: nounwind
define dso_local arm_aapcscc void @list_print(%struct.list_head_s*) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi %struct.list_head_s* [ %0, %1 ], [ %16, %4 ]
  %3 = icmp ne %struct.list_head_s* %.0, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 2, !tbaa !11
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.list_data_s, %struct.list_data_s* %9, i32 0, i32 0
  %11 = load i16, i16* %10, align 4, !tbaa !3
  %12 = sext i16 %11 to i32
  %13 = getelementptr [21 x i8], [21 x i8]* @.str.9, i32 0, i32 0
  %14 = call arm_aapcscc i32 (i8*, ...) @printf_(i8* %13, i32 %8, i32 %12)
  %15 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %.0, i32 0, i32 0
  %16 = load %struct.list_head_s*, %struct.list_head_s** %15, align 4, !tbaa !10
  br label %2

17:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @printf_(i8*, ...) #0 {
  %2 = alloca %struct.__va_list, align 4
  %3 = alloca [1 x i8], align 1
  %4 = bitcast %struct.__va_list* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = bitcast %struct.__va_list* %2 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = bitcast [1 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %6) #2
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %2, i32 0, i32 0
  %9 = bitcast i8** %8 to [1 x i32]*
  %10 = load [1 x i32], [1 x i32]* %9, align 4
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %7, i32 -1, i8* %0, [1 x i32] %10)
  %12 = bitcast %struct.__va_list* %2 to i8*
  call void @llvm.va_end(i8* %12)
  %13 = bitcast [1 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #2
  %14 = bitcast %struct.__va_list* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #2
  ret i32 %11
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_char(i8 zeroext, i8*, i32, i32) #3 {
  %5 = icmp ne i8 %0, 0
  br i1 %5, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %4
  br label %7

6:                                                ; preds = %4
  call arm_aapcscc void @_putchar(i8 zeroext %0)
  br label %7

7:                                                ; preds = %6, %._crit_edge
  ret void
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32]) #0 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca i8*, align 4
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %6, i32 0, i32 0
  %9 = bitcast i8** %8 to [1 x i32]*
  store [1 x i32] %4, [1 x i32]* %9, align 4
  store i8* %3, i8** %7, align 4, !tbaa !13
  %10 = icmp ne i8* %1, null
  br i1 %10, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %5
  br label %12

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %._crit_edge
  %.0 = phi void (i8, i8*, i32, i32)* [ %0, %._crit_edge ], [ @_out_null, %11 ]
  br label %13

13:                                               ; preds = %.backedge, %12
  %.018 = phi i32 [ 0, %12 ], [ %.018.be, %.backedge ]
  %14 = load i8*, i8** %7, align 4, !tbaa !13
  %15 = load i8, i8* %14, align 1, !tbaa !14
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %543

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 4, !tbaa !13
  %19 = load i8, i8* %18, align 1, !tbaa !14
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 4, !tbaa !13
  %24 = load i8, i8* %23, align 1, !tbaa !14
  %25 = add i32 %.018, 1
  call arm_aapcscc void %.0(i8 zeroext %24, i8* %1, i32 %.018, i32 %2)
  %26 = load i8*, i8** %7, align 4, !tbaa !13
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 4, !tbaa !13
  br label %.backedge

.backedge:                                        ; preds = %542, %22
  %.018.be = phi i32 [ %25, %22 ], [ %.1533, %542 ]
  br label %13

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 4, !tbaa !13
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 4, !tbaa !13
  br label %31

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %._crit_edge124, %31
  %.03 = phi i32 [ 0, %31 ], [ %.14, %._crit_edge124 ]
  %33 = load i8*, i8** %7, align 4, !tbaa !13
  %34 = load i8, i8* %33, align 1, !tbaa !14
  %35 = zext i8 %34 to i32
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
  %37 = or i32 %.03, 1
  %38 = load i8*, i8** %7, align 4, !tbaa !13
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 4, !tbaa !13
  br label %57

40:                                               ; preds = %LeafBlock44
  %41 = or i32 %.03, 2
  %42 = load i8*, i8** %7, align 4, !tbaa !13
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 4, !tbaa !13
  br label %57

44:                                               ; preds = %LeafBlock42
  %45 = or i32 %.03, 4
  %46 = load i8*, i8** %7, align 4, !tbaa !13
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 4, !tbaa !13
  br label %57

48:                                               ; preds = %LeafBlock
  %49 = or i32 %.03, 8
  %50 = load i8*, i8** %7, align 4, !tbaa !13
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 4, !tbaa !13
  br label %57

52:                                               ; preds = %LeafBlock40
  %53 = or i32 %.03, 16
  %54 = load i8*, i8** %7, align 4, !tbaa !13
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 4, !tbaa !13
  br label %57

NewDefault:                                       ; preds = %LeafBlock.NewDefault_crit_edge, %LeafBlock40.NewDefault_crit_edge, %LeafBlock42.NewDefault_crit_edge, %LeafBlock44.NewDefault_crit_edge, %LeafBlock46.NewDefault_crit_edge
  br label %56

56:                                               ; preds = %NewDefault
  br label %57

57:                                               ; preds = %56, %52, %48, %44, %40, %36
  %.017 = phi i32 [ 0, %56 ], [ 1, %52 ], [ 1, %48 ], [ 1, %44 ], [ 1, %40 ], [ 1, %36 ]
  %.14 = phi i32 [ %.03, %56 ], [ %53, %52 ], [ %49, %48 ], [ %45, %44 ], [ %41, %40 ], [ %37, %36 ]
  br label %58

58:                                               ; preds = %57
  %59 = icmp ne i32 %.017, 0
  br i1 %59, label %._crit_edge124, label %60

._crit_edge124:                                   ; preds = %58
  br label %32

60:                                               ; preds = %58
  %.14.lcssa = phi i32 [ %.14, %58 ]
  %61 = load i8*, i8** %7, align 4, !tbaa !13
  %62 = load i8, i8* %61, align 1, !tbaa !14
  %63 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %62)
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call arm_aapcscc i32 @_atoi(i8** %7)
  br label %86

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 4, !tbaa !13
  %68 = load i8, i8* %67, align 1, !tbaa !14
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 42
  br i1 %70, label %71, label %._crit_edge125

._crit_edge125:                                   ; preds = %66
  br label %85

71:                                               ; preds = %66
  %72 = bitcast %struct.__va_list* %6 to i8**
  %73 = load i8*, i8** %72, align 4
  %74 = getelementptr inbounds i8, i8* %73, i32 4
  store i8* %74, i8** %72, align 4
  %75 = bitcast i8* %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = or i32 %.14.lcssa, 2
  %80 = sub nsw i32 0, %76
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %78
  %.08 = phi i32 [ %80, %78 ], [ %76, %81 ]
  %.25 = phi i32 [ %79, %78 ], [ %.14.lcssa, %81 ]
  %83 = load i8*, i8** %7, align 4, !tbaa !13
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 4, !tbaa !13
  br label %85

85:                                               ; preds = %82, %._crit_edge125
  %.19 = phi i32 [ %.08, %82 ], [ 0, %._crit_edge125 ]
  %.36 = phi i32 [ %.25, %82 ], [ %.14.lcssa, %._crit_edge125 ]
  br label %86

86:                                               ; preds = %85, %64
  %.210 = phi i32 [ %65, %64 ], [ %.19, %85 ]
  %.4 = phi i32 [ %.14.lcssa, %64 ], [ %.36, %85 ]
  %87 = load i8*, i8** %7, align 4, !tbaa !13
  %88 = load i8, i8* %87, align 1, !tbaa !14
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %91, label %._crit_edge126

._crit_edge126:                                   ; preds = %86
  br label %120

91:                                               ; preds = %86
  %92 = or i32 %.4, 1024
  %93 = load i8*, i8** %7, align 4, !tbaa !13
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 4, !tbaa !13
  %95 = load i8*, i8** %7, align 4, !tbaa !13
  %96 = load i8, i8* %95, align 1, !tbaa !14
  %97 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %96)
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call arm_aapcscc i32 @_atoi(i8** %7)
  br label %119

100:                                              ; preds = %91
  %101 = load i8*, i8** %7, align 4, !tbaa !13
  %102 = load i8, i8* %101, align 1, !tbaa !14
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 42
  br i1 %104, label %105, label %._crit_edge127

._crit_edge127:                                   ; preds = %100
  br label %118

105:                                              ; preds = %100
  %106 = bitcast %struct.__va_list* %6 to i8**
  %107 = load i8*, i8** %106, align 4
  %108 = getelementptr inbounds i8, i8* %107, i32 4
  store i8* %108, i8** %106, align 4
  %109 = bitcast i8* %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %114

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %112
  %115 = phi i32 [ %110, %112 ], [ 0, %113 ]
  %116 = load i8*, i8** %7, align 4, !tbaa !13
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %7, align 4, !tbaa !13
  br label %118

118:                                              ; preds = %114, %._crit_edge127
  %.011 = phi i32 [ %115, %114 ], [ 0, %._crit_edge127 ]
  br label %119

119:                                              ; preds = %118, %98
  %.112 = phi i32 [ %99, %98 ], [ %.011, %118 ]
  br label %120

120:                                              ; preds = %119, %._crit_edge126
  %.213 = phi i32 [ %.112, %119 ], [ 0, %._crit_edge126 ]
  %.5 = phi i32 [ %92, %119 ], [ %.4, %._crit_edge126 ]
  %121 = load i8*, i8** %7, align 4, !tbaa !13
  %122 = load i8, i8* %121, align 1, !tbaa !14
  %123 = zext i8 %122 to i32
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
  %125 = or i32 %.5, 256
  %126 = load i8*, i8** %7, align 4, !tbaa !13
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 4, !tbaa !13
  %128 = load i8*, i8** %7, align 4, !tbaa !13
  %129 = load i8, i8* %128, align 1, !tbaa !14
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 108
  br i1 %131, label %132, label %._crit_edge128

._crit_edge128:                                   ; preds = %124
  br label %136

132:                                              ; preds = %124
  %133 = or i32 %125, 512
  %134 = load i8*, i8** %7, align 4, !tbaa !13
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 4, !tbaa !13
  br label %136

136:                                              ; preds = %132, %._crit_edge128
  %.6 = phi i32 [ %133, %132 ], [ %125, %._crit_edge128 ]
  br label %163

137:                                              ; preds = %LeafBlock55
  %138 = or i32 %.5, 128
  %139 = load i8*, i8** %7, align 4, !tbaa !13
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %7, align 4, !tbaa !13
  %141 = load i8*, i8** %7, align 4, !tbaa !13
  %142 = load i8, i8* %141, align 1, !tbaa !14
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 104
  br i1 %144, label %145, label %._crit_edge129

._crit_edge129:                                   ; preds = %137
  br label %149

145:                                              ; preds = %137
  %146 = or i32 %138, 64
  %147 = load i8*, i8** %7, align 4, !tbaa !13
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 4, !tbaa !13
  br label %149

149:                                              ; preds = %145, %._crit_edge129
  %.7 = phi i32 [ %146, %145 ], [ %138, %._crit_edge129 ]
  br label %163

150:                                              ; preds = %LeafBlock63
  %151 = or i32 %.5, 256
  %152 = load i8*, i8** %7, align 4, !tbaa !13
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %7, align 4, !tbaa !13
  br label %163

154:                                              ; preds = %LeafBlock57
  %155 = or i32 %.5, 512
  %156 = load i8*, i8** %7, align 4, !tbaa !13
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 4, !tbaa !13
  br label %163

158:                                              ; preds = %LeafBlock65
  %159 = or i32 %.5, 256
  %160 = load i8*, i8** %7, align 4, !tbaa !13
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %7, align 4, !tbaa !13
  br label %163

NewDefault54:                                     ; preds = %LeafBlock55.NewDefault54_crit_edge, %LeafBlock57.NewDefault54_crit_edge, %LeafBlock61.NewDefault54_crit_edge, %LeafBlock63.NewDefault54_crit_edge, %LeafBlock65.NewDefault54_crit_edge
  br label %162

162:                                              ; preds = %NewDefault54
  br label %163

163:                                              ; preds = %162, %158, %154, %150, %149, %136
  %.8 = phi i32 [ %.5, %162 ], [ %159, %158 ], [ %155, %154 ], [ %151, %150 ], [ %.7, %149 ], [ %.6, %136 ]
  %164 = load i8*, i8** %7, align 4, !tbaa !13
  %165 = load i8, i8* %164, align 1, !tbaa !14
  %166 = zext i8 %165 to i32
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
  %168 = load i8*, i8** %7, align 4, !tbaa !13
  %169 = load i8, i8* %168, align 1, !tbaa !14
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 120
  br i1 %171, label %._crit_edge131, label %172

._crit_edge131:                                   ; preds = %167
  br label %177

172:                                              ; preds = %167
  %173 = load i8*, i8** %7, align 4, !tbaa !13
  %174 = load i8, i8* %173, align 1, !tbaa !14
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 88
  br i1 %176, label %._crit_edge132, label %178

._crit_edge132:                                   ; preds = %172
  br label %177

177:                                              ; preds = %._crit_edge132, %._crit_edge131
  br label %194

178:                                              ; preds = %172
  %179 = load i8*, i8** %7, align 4, !tbaa !13
  %180 = load i8, i8* %179, align 1, !tbaa !14
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 111
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %193

184:                                              ; preds = %178
  %185 = load i8*, i8** %7, align 4, !tbaa !13
  %186 = load i8, i8* %185, align 1, !tbaa !14
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %187, 98
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %192

190:                                              ; preds = %184
  %191 = and i32 %.8, -17
  br label %192

192:                                              ; preds = %190, %189
  %.037 = phi i32 [ 2, %189 ], [ 10, %190 ]
  %.9 = phi i32 [ %.8, %189 ], [ %191, %190 ]
  br label %193

193:                                              ; preds = %192, %183
  %.138 = phi i32 [ 8, %183 ], [ %.037, %192 ]
  %.10 = phi i32 [ %.8, %183 ], [ %.9, %192 ]
  br label %194

194:                                              ; preds = %193, %177
  %.239 = phi i32 [ 16, %177 ], [ %.138, %193 ]
  %.11 = phi i32 [ %.8, %177 ], [ %.10, %193 ]
  %195 = load i8*, i8** %7, align 4, !tbaa !13
  %196 = load i8, i8* %195, align 1, !tbaa !14
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 88
  br i1 %198, label %199, label %._crit_edge133

._crit_edge133:                                   ; preds = %194
  br label %201

199:                                              ; preds = %194
  %200 = or i32 %.11, 32
  br label %201

201:                                              ; preds = %199, %._crit_edge133
  %.12 = phi i32 [ %200, %199 ], [ %.11, %._crit_edge133 ]
  %202 = load i8*, i8** %7, align 4, !tbaa !13
  %203 = load i8, i8* %202, align 1, !tbaa !14
  %204 = zext i8 %203 to i32
  %205 = icmp ne i32 %204, 105
  br i1 %205, label %206, label %._crit_edge134

._crit_edge134:                                   ; preds = %201
  br label %213

206:                                              ; preds = %201
  %207 = load i8*, i8** %7, align 4, !tbaa !13
  %208 = load i8, i8* %207, align 1, !tbaa !14
  %209 = zext i8 %208 to i32
  %210 = icmp ne i32 %209, 100
  br i1 %210, label %211, label %._crit_edge135

._crit_edge135:                                   ; preds = %206
  br label %213

211:                                              ; preds = %206
  %212 = and i32 %.12, -13
  br label %213

213:                                              ; preds = %211, %._crit_edge135, %._crit_edge134
  %.13 = phi i32 [ %212, %211 ], [ %.12, %._crit_edge135 ], [ %.12, %._crit_edge134 ]
  %214 = and i32 %.13, 1024
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %._crit_edge136

._crit_edge136:                                   ; preds = %213
  br label %218

216:                                              ; preds = %213
  %217 = and i32 %.13, -2
  br label %218

218:                                              ; preds = %216, %._crit_edge136
  %.147 = phi i32 [ %217, %216 ], [ %.13, %._crit_edge136 ]
  %219 = load i8*, i8** %7, align 4, !tbaa !13
  %220 = load i8, i8* %219, align 1, !tbaa !14
  %221 = zext i8 %220 to i32
  %222 = icmp eq i32 %221, 105
  br i1 %222, label %._crit_edge137, label %223

._crit_edge137:                                   ; preds = %218
  br label %228

223:                                              ; preds = %218
  %224 = load i8*, i8** %7, align 4, !tbaa !13
  %225 = load i8, i8* %224, align 1, !tbaa !14
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 100
  br i1 %227, label %._crit_edge138, label %309

._crit_edge138:                                   ; preds = %223
  br label %228

228:                                              ; preds = %._crit_edge138, %._crit_edge137
  %229 = and i32 %.147, 512
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %250

231:                                              ; preds = %228
  %232 = bitcast %struct.__va_list* %6 to i8**
  %233 = load i8*, i8** %232, align 4
  %234 = ptrtoint i8* %233 to i32
  %235 = add i32 %234, 7
  %236 = and i32 %235, -8
  %237 = inttoptr i32 %236 to i8*
  %238 = getelementptr inbounds i8, i8* %237, i32 8
  store i8* %238, i8** %232, align 4
  %239 = bitcast i8* %237 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %231
  br label %245

243:                                              ; preds = %231
  %244 = sub nsw i64 0, %240
  br label %245

245:                                              ; preds = %243, %242
  %246 = phi i64 [ %240, %242 ], [ %244, %243 ]
  %247 = icmp slt i64 %240, 0
  %248 = zext i32 %.239 to i64
  %249 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %246, i1 zeroext %247, i64 %248, i32 %.213, i32 %.210, i32 %.147)
  br label %308

250:                                              ; preds = %228
  %251 = and i32 %.147, 256
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %250
  %254 = bitcast %struct.__va_list* %6 to i8**
  %255 = load i8*, i8** %254, align 4
  %256 = getelementptr inbounds i8, i8* %255, i32 4
  store i8* %256, i8** %254, align 4
  %257 = bitcast i8* %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %263

261:                                              ; preds = %253
  %262 = sub nsw i32 0, %258
  br label %263

263:                                              ; preds = %261, %260
  %264 = phi i32 [ %258, %260 ], [ %262, %261 ]
  %265 = icmp slt i32 %258, 0
  %266 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %264, i1 zeroext %265, i32 %.239, i32 %.213, i32 %.210, i32 %.147)
  br label %307

267:                                              ; preds = %250
  %268 = and i32 %.147, 64
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %267
  %271 = bitcast %struct.__va_list* %6 to i8**
  %272 = load i8*, i8** %271, align 4
  %273 = getelementptr inbounds i8, i8* %272, i32 4
  store i8* %273, i8** %271, align 4
  %274 = bitcast i8* %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = trunc i32 %275 to i8
  %277 = zext i8 %276 to i32
  br label %297

278:                                              ; preds = %267
  %279 = and i32 %.147, 128
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %278
  %282 = bitcast %struct.__va_list* %6 to i8**
  %283 = load i8*, i8** %282, align 4
  %284 = getelementptr inbounds i8, i8* %283, i32 4
  store i8* %284, i8** %282, align 4
  %285 = bitcast i8* %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = trunc i32 %286 to i16
  %288 = sext i16 %287 to i32
  br label %295

289:                                              ; preds = %278
  %290 = bitcast %struct.__va_list* %6 to i8**
  %291 = load i8*, i8** %290, align 4
  %292 = getelementptr inbounds i8, i8* %291, i32 4
  store i8* %292, i8** %290, align 4
  %293 = bitcast i8* %291 to i32*
  %294 = load i32, i32* %293, align 4
  br label %295

295:                                              ; preds = %289, %281
  %296 = phi i32 [ %288, %281 ], [ %294, %289 ]
  br label %297

297:                                              ; preds = %295, %270
  %298 = phi i32 [ %277, %270 ], [ %296, %295 ]
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  br label %303

301:                                              ; preds = %297
  %302 = sub nsw i32 0, %298
  br label %303

303:                                              ; preds = %301, %300
  %304 = phi i32 [ %298, %300 ], [ %302, %301 ]
  %305 = icmp slt i32 %298, 0
  %306 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %304, i1 zeroext %305, i32 %.239, i32 %.213, i32 %.210, i32 %.147)
  br label %307

307:                                              ; preds = %303, %263
  %.119 = phi i32 [ %266, %263 ], [ %306, %303 ]
  br label %308

308:                                              ; preds = %307, %245
  %.220 = phi i32 [ %249, %245 ], [ %.119, %307 ]
  br label %369

309:                                              ; preds = %223
  %310 = and i32 %.147, 512
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %324

312:                                              ; preds = %309
  %313 = bitcast %struct.__va_list* %6 to i8**
  %314 = load i8*, i8** %313, align 4
  %315 = ptrtoint i8* %314 to i32
  %316 = add i32 %315, 7
  %317 = and i32 %316, -8
  %318 = inttoptr i32 %317 to i8*
  %319 = getelementptr inbounds i8, i8* %318, i32 8
  store i8* %319, i8** %313, align 4
  %320 = bitcast i8* %318 to i64*
  %321 = load i64, i64* %320, align 8
  %322 = zext i32 %.239 to i64
  %323 = call arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i64 %321, i1 zeroext false, i64 %322, i32 %.213, i32 %.210, i32 %.147)
  br label %368

324:                                              ; preds = %309
  %325 = and i32 %.147, 256
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %324
  %328 = bitcast %struct.__va_list* %6 to i8**
  %329 = load i8*, i8** %328, align 4
  %330 = getelementptr inbounds i8, i8* %329, i32 4
  store i8* %330, i8** %328, align 4
  %331 = bitcast i8* %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %332, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147)
  br label %367

334:                                              ; preds = %324
  %335 = and i32 %.147, 64
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %334
  %338 = bitcast %struct.__va_list* %6 to i8**
  %339 = load i8*, i8** %338, align 4
  %340 = getelementptr inbounds i8, i8* %339, i32 4
  store i8* %340, i8** %338, align 4
  %341 = bitcast i8* %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = trunc i32 %342 to i8
  %344 = zext i8 %343 to i32
  br label %364

345:                                              ; preds = %334
  %346 = and i32 %.147, 128
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %345
  %349 = bitcast %struct.__va_list* %6 to i8**
  %350 = load i8*, i8** %349, align 4
  %351 = getelementptr inbounds i8, i8* %350, i32 4
  store i8* %351, i8** %349, align 4
  %352 = bitcast i8* %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = trunc i32 %353 to i16
  %355 = zext i16 %354 to i32
  br label %362

356:                                              ; preds = %345
  %357 = bitcast %struct.__va_list* %6 to i8**
  %358 = load i8*, i8** %357, align 4
  %359 = getelementptr inbounds i8, i8* %358, i32 4
  store i8* %359, i8** %357, align 4
  %360 = bitcast i8* %358 to i32*
  %361 = load i32, i32* %360, align 4
  br label %362

362:                                              ; preds = %356, %348
  %363 = phi i32 [ %355, %348 ], [ %361, %356 ]
  br label %364

364:                                              ; preds = %362, %337
  %365 = phi i32 [ %344, %337 ], [ %363, %362 ]
  %366 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %365, i1 zeroext false, i32 %.239, i32 %.213, i32 %.210, i32 %.147)
  br label %367

367:                                              ; preds = %364, %327
  %.321 = phi i32 [ %333, %327 ], [ %366, %364 ]
  br label %368

368:                                              ; preds = %367, %312
  %.422 = phi i32 [ %323, %312 ], [ %.321, %367 ]
  br label %369

369:                                              ; preds = %368, %308
  %.523 = phi i32 [ %.220, %308 ], [ %.422, %368 ]
  %370 = load i8*, i8** %7, align 4, !tbaa !13
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %7, align 4, !tbaa !13
  br label %542

372:                                              ; preds = %NodeBlock80._crit_edge, %NodeBlock94._crit_edge130
  %373 = load i8*, i8** %7, align 4, !tbaa !13
  %374 = load i8, i8* %373, align 1, !tbaa !14
  %375 = zext i8 %374 to i32
  %376 = icmp eq i32 %375, 70
  br i1 %376, label %377, label %._crit_edge139

._crit_edge139:                                   ; preds = %372
  br label %379

377:                                              ; preds = %372
  %378 = or i32 %.8, 32
  br label %379

379:                                              ; preds = %377, %._crit_edge139
  %.15 = phi i32 [ %378, %377 ], [ %.8, %._crit_edge139 ]
  %380 = bitcast %struct.__va_list* %6 to i8**
  %381 = load i8*, i8** %380, align 4
  %382 = ptrtoint i8* %381 to i32
  %383 = add i32 %382, 7
  %384 = and i32 %383, -8
  %385 = inttoptr i32 %384 to i8*
  %386 = getelementptr inbounds i8, i8* %385, i32 8
  store i8* %386, i8** %380, align 4
  %387 = bitcast i8* %385 to double*
  %388 = load double, double* %387, align 8
  %389 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %388, i32 %.213, i32 %.210, i32 %.15)
  %390 = load i8*, i8** %7, align 4, !tbaa !13
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** %7, align 4, !tbaa !13
  br label %542

392:                                              ; preds = %NodeBlock76._crit_edge, %LeafBlock78._crit_edge, %NodeBlock94._crit_edge, %LeafBlock96._crit_edge
  %393 = load i8*, i8** %7, align 4, !tbaa !13
  %394 = load i8, i8* %393, align 1, !tbaa !14
  %395 = zext i8 %394 to i32
  %396 = icmp eq i32 %395, 103
  br i1 %396, label %._crit_edge140, label %397

._crit_edge140:                                   ; preds = %392
  br label %402

397:                                              ; preds = %392
  %398 = load i8*, i8** %7, align 4, !tbaa !13
  %399 = load i8, i8* %398, align 1, !tbaa !14
  %400 = zext i8 %399 to i32
  %401 = icmp eq i32 %400, 71
  br i1 %401, label %._crit_edge141, label %._crit_edge142

._crit_edge142:                                   ; preds = %397
  br label %404

._crit_edge141:                                   ; preds = %397
  br label %402

402:                                              ; preds = %._crit_edge141, %._crit_edge140
  %403 = or i32 %.8, 2048
  br label %404

404:                                              ; preds = %402, %._crit_edge142
  %.16 = phi i32 [ %403, %402 ], [ %.8, %._crit_edge142 ]
  %405 = load i8*, i8** %7, align 4, !tbaa !13
  %406 = load i8, i8* %405, align 1, !tbaa !14
  %407 = zext i8 %406 to i32
  %408 = icmp eq i32 %407, 69
  br i1 %408, label %._crit_edge143, label %409

._crit_edge143:                                   ; preds = %404
  br label %414

409:                                              ; preds = %404
  %410 = load i8*, i8** %7, align 4, !tbaa !13
  %411 = load i8, i8* %410, align 1, !tbaa !14
  %412 = zext i8 %411 to i32
  %413 = icmp eq i32 %412, 71
  br i1 %413, label %._crit_edge144, label %._crit_edge145

._crit_edge145:                                   ; preds = %409
  br label %416

._crit_edge144:                                   ; preds = %409
  br label %414

414:                                              ; preds = %._crit_edge144, %._crit_edge143
  %415 = or i32 %.16, 32
  br label %416

416:                                              ; preds = %414, %._crit_edge145
  %.17 = phi i32 [ %415, %414 ], [ %.16, %._crit_edge145 ]
  %417 = bitcast %struct.__va_list* %6 to i8**
  %418 = load i8*, i8** %417, align 4
  %419 = ptrtoint i8* %418 to i32
  %420 = add i32 %419, 7
  %421 = and i32 %420, -8
  %422 = inttoptr i32 %421 to i8*
  %423 = getelementptr inbounds i8, i8* %422, i32 8
  store i8* %423, i8** %417, align 4
  %424 = bitcast i8* %422 to double*
  %425 = load double, double* %424, align 8
  %426 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, double %425, i32 %.213, i32 %.210, i32 %.17)
  %427 = load i8*, i8** %7, align 4, !tbaa !13
  %428 = getelementptr inbounds i8, i8* %427, i32 1
  store i8* %428, i8** %7, align 4, !tbaa !13
  br label %542

429:                                              ; preds = %NodeBlock88
  %430 = and i32 %.8, 2
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %._crit_edge146, label %432

._crit_edge146:                                   ; preds = %429
  br label %439

432:                                              ; preds = %429
  br label %433

433:                                              ; preds = %436, %432
  %.034 = phi i32 [ 1, %432 ], [ %434, %436 ]
  %.624 = phi i32 [ %.018, %432 ], [ %437, %436 ]
  %434 = add i32 %.034, 1
  %435 = icmp ult i32 %.034, %.210
  br i1 %435, label %436, label %438

436:                                              ; preds = %433
  %437 = add i32 %.624, 1
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.624, i32 %2)
  br label %433

438:                                              ; preds = %433
  %.624.lcssa = phi i32 [ %.624, %433 ]
  %.lcssa153 = phi i32 [ %434, %433 ]
  br label %439

439:                                              ; preds = %438, %._crit_edge146
  %.135 = phi i32 [ 1, %._crit_edge146 ], [ %.lcssa153, %438 ]
  %.725 = phi i32 [ %.018, %._crit_edge146 ], [ %.624.lcssa, %438 ]
  %440 = bitcast %struct.__va_list* %6 to i8**
  %441 = load i8*, i8** %440, align 4
  %442 = getelementptr inbounds i8, i8* %441, i32 4
  store i8* %442, i8** %440, align 4
  %443 = bitcast i8* %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = trunc i32 %444 to i8
  %446 = add i32 %.725, 1
  call arm_aapcscc void %.0(i8 zeroext %445, i8* %1, i32 %.725, i32 %2)
  %447 = and i32 %.8, 2
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %._crit_edge147

._crit_edge147:                                   ; preds = %439
  br label %456

449:                                              ; preds = %439
  br label %450

450:                                              ; preds = %453, %449
  %.236 = phi i32 [ %.135, %449 ], [ %451, %453 ]
  %.826 = phi i32 [ %446, %449 ], [ %454, %453 ]
  %451 = add i32 %.236, 1
  %452 = icmp ult i32 %.236, %.210
  br i1 %452, label %453, label %455

453:                                              ; preds = %450
  %454 = add i32 %.826, 1
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.826, i32 %2)
  br label %450

455:                                              ; preds = %450
  %.826.lcssa = phi i32 [ %.826, %450 ]
  br label %456

456:                                              ; preds = %455, %._crit_edge147
  %.927 = phi i32 [ %.826.lcssa, %455 ], [ %446, %._crit_edge147 ]
  %457 = load i8*, i8** %7, align 4, !tbaa !13
  %458 = getelementptr inbounds i8, i8* %457, i32 1
  store i8* %458, i8** %7, align 4, !tbaa !13
  br label %542

459:                                              ; preds = %LeafBlock108
  %460 = bitcast %struct.__va_list* %6 to i8**
  %461 = load i8*, i8** %460, align 4
  %462 = getelementptr inbounds i8, i8* %461, i32 4
  store i8* %462, i8** %460, align 4
  %463 = bitcast i8* %461 to i8**
  %464 = load i8*, i8** %463, align 4
  %465 = icmp ne i32 %.213, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %459
  br label %468

467:                                              ; preds = %459
  br label %468

468:                                              ; preds = %467, %466
  %469 = phi i32 [ %.213, %466 ], [ -1, %467 ]
  %470 = call arm_aapcscc i32 @_strnlen_s(i8* %464, i32 %469)
  %471 = and i32 %.8, 1024
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %._crit_edge148

._crit_edge148:                                   ; preds = %468
  br label %479

473:                                              ; preds = %468
  %474 = icmp ult i32 %470, %.213
  br i1 %474, label %475, label %476

475:                                              ; preds = %473
  br label %477

476:                                              ; preds = %473
  br label %477

477:                                              ; preds = %476, %475
  %478 = phi i32 [ %470, %475 ], [ %.213, %476 ]
  br label %479

479:                                              ; preds = %477, %._crit_edge148
  %.01 = phi i32 [ %478, %477 ], [ %470, %._crit_edge148 ]
  %480 = and i32 %.8, 2
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %._crit_edge149, label %482

._crit_edge149:                                   ; preds = %479
  br label %489

482:                                              ; preds = %479
  br label %483

483:                                              ; preds = %486, %482
  %.1028 = phi i32 [ %.018, %482 ], [ %487, %486 ]
  %.1 = phi i32 [ %.01, %482 ], [ %484, %486 ]
  %484 = add i32 %.1, 1
  %485 = icmp ult i32 %.1, %.210
  br i1 %485, label %486, label %488

486:                                              ; preds = %483
  %487 = add i32 %.1028, 1
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1028, i32 %2)
  br label %483

488:                                              ; preds = %483
  %.1028.lcssa = phi i32 [ %.1028, %483 ]
  %.lcssa = phi i32 [ %484, %483 ]
  br label %489

489:                                              ; preds = %488, %._crit_edge149
  %.1129 = phi i32 [ %.018, %._crit_edge149 ], [ %.1028.lcssa, %488 ]
  %.2 = phi i32 [ %.01, %._crit_edge149 ], [ %.lcssa, %488 ]
  br label %490

490:                                              ; preds = %504, %489
  %.1230 = phi i32 [ %.1129, %489 ], [ %507, %504 ]
  %.314 = phi i32 [ %.213, %489 ], [ %.516, %504 ]
  %.02 = phi i8* [ %464, %489 ], [ %505, %504 ]
  %491 = load i8, i8* %.02, align 1, !tbaa !14
  %492 = zext i8 %491 to i32
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %._crit_edge150

._crit_edge150:                                   ; preds = %490
  br label %502

494:                                              ; preds = %490
  %495 = and i32 %.8, 1024
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %._crit_edge151

._crit_edge151:                                   ; preds = %494
  br label %500

497:                                              ; preds = %494
  %498 = add i32 %.314, -1
  %499 = icmp ne i32 %.314, 0
  br label %500

500:                                              ; preds = %497, %._crit_edge151
  %.415 = phi i32 [ %498, %497 ], [ %.314, %._crit_edge151 ]
  %501 = phi i1 [ true, %._crit_edge151 ], [ %499, %497 ]
  br label %502

502:                                              ; preds = %500, %._crit_edge150
  %.516 = phi i32 [ %.415, %500 ], [ %.314, %._crit_edge150 ]
  %503 = phi i1 [ false, %._crit_edge150 ], [ %501, %500 ]
  br i1 %503, label %504, label %508

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %.02, i32 1
  %506 = load i8, i8* %.02, align 1, !tbaa !14
  %507 = add i32 %.1230, 1
  call arm_aapcscc void %.0(i8 zeroext %506, i8* %1, i32 %.1230, i32 %2)
  br label %490

508:                                              ; preds = %502
  %.1230.lcssa = phi i32 [ %.1230, %502 ]
  %509 = and i32 %.8, 2
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %._crit_edge152

._crit_edge152:                                   ; preds = %508
  br label %518

511:                                              ; preds = %508
  br label %512

512:                                              ; preds = %515, %511
  %.1331 = phi i32 [ %.1230.lcssa, %511 ], [ %516, %515 ]
  %.3 = phi i32 [ %.2, %511 ], [ %513, %515 ]
  %513 = add i32 %.3, 1
  %514 = icmp ult i32 %.3, %.210
  br i1 %514, label %515, label %517

515:                                              ; preds = %512
  %516 = add i32 %.1331, 1
  call arm_aapcscc void %.0(i8 zeroext 32, i8* %1, i32 %.1331, i32 %2)
  br label %512

517:                                              ; preds = %512
  %.1331.lcssa = phi i32 [ %.1331, %512 ]
  br label %518

518:                                              ; preds = %517, %._crit_edge152
  %.1432 = phi i32 [ %.1331.lcssa, %517 ], [ %.1230.lcssa, %._crit_edge152 ]
  %519 = load i8*, i8** %7, align 4, !tbaa !13
  %520 = getelementptr inbounds i8, i8* %519, i32 1
  store i8* %520, i8** %7, align 4, !tbaa !13
  br label %542

521:                                              ; preds = %LeafBlock104
  %522 = or i32 %.8, 33
  %523 = bitcast %struct.__va_list* %6 to i8**
  %524 = load i8*, i8** %523, align 4
  %525 = getelementptr inbounds i8, i8* %524, i32 4
  store i8* %525, i8** %523, align 4
  %526 = bitcast i8* %524 to i8**
  %527 = load i8*, i8** %526, align 4
  %528 = ptrtoint i8* %527 to i32
  %529 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %.0, i8* %1, i32 %.018, i32 %2, i32 %528, i1 zeroext false, i32 16, i32 %.213, i32 8, i32 %522)
  %530 = load i8*, i8** %7, align 4, !tbaa !13
  %531 = getelementptr inbounds i8, i8* %530, i32 1
  store i8* %531, i8** %7, align 4, !tbaa !13
  br label %542

532:                                              ; preds = %LeafBlock74
  %533 = add i32 %.018, 1
  call arm_aapcscc void %.0(i8 zeroext 37, i8* %1, i32 %.018, i32 %2)
  %534 = load i8*, i8** %7, align 4, !tbaa !13
  %535 = getelementptr inbounds i8, i8* %534, i32 1
  store i8* %535, i8** %7, align 4, !tbaa !13
  br label %542

NewDefault73:                                     ; preds = %LeafBlock74.NewDefault73_crit_edge, %LeafBlock78.NewDefault73_crit_edge, %LeafBlock84.NewDefault73_crit_edge, %LeafBlock96.NewDefault73_crit_edge, %LeafBlock98.NewDefault73_crit_edge, %LeafBlock104.NewDefault73_crit_edge, %LeafBlock108.NewDefault73_crit_edge, %LeafBlock110.NewDefault73_crit_edge, %LeafBlock112.NewDefault73_crit_edge
  br label %536

536:                                              ; preds = %NewDefault73
  %537 = load i8*, i8** %7, align 4, !tbaa !13
  %538 = load i8, i8* %537, align 1, !tbaa !14
  %539 = add i32 %.018, 1
  call arm_aapcscc void %.0(i8 zeroext %538, i8* %1, i32 %.018, i32 %2)
  %540 = load i8*, i8** %7, align 4, !tbaa !13
  %541 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %541, i8** %7, align 4, !tbaa !13
  br label %542

542:                                              ; preds = %536, %532, %521, %518, %456, %416, %379, %369
  %.1533 = phi i32 [ %539, %536 ], [ %533, %532 ], [ %529, %521 ], [ %.1432, %518 ], [ %.927, %456 ], [ %426, %416 ], [ %389, %379 ], [ %.523, %369 ]
  br label %.backedge

543:                                              ; preds = %13
  %.018.lcssa = phi i32 [ %.018, %13 ]
  %544 = icmp ult i32 %.018.lcssa, %2
  br i1 %544, label %545, label %546

545:                                              ; preds = %543
  br label %548

546:                                              ; preds = %543
  %547 = sub i32 %2, 1
  br label %548

548:                                              ; preds = %546, %545
  %549 = phi i32 [ %.018.lcssa, %545 ], [ %547, %546 ]
  call arm_aapcscc void %.0(i8 zeroext 0, i8* %1, i32 %549, i32 %2)
  ret i32 %.018.lcssa
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_null(i8 zeroext, i8*, i32, i32) #3 {
  ret void
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc zeroext i1 @_is_digit(i8 zeroext) #3 {
  %2 = zext i8 %0 to i32
  %3 = icmp sge i32 %2, 48
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = zext i8 %0 to i32
  %6 = icmp sle i32 %5, 57
  br label %7

7:                                                ; preds = %4, %._crit_edge
  %8 = phi i1 [ false, %._crit_edge ], [ %6, %4 ]
  ret i1 %8
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_atoi(i8**) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %.0 = phi i32 [ 0, %1 ], [ %13, %6 ]
  %3 = load i8*, i8** %0, align 4, !tbaa !13
  %4 = load i8, i8* %3, align 1, !tbaa !14
  %5 = call arm_aapcscc zeroext i1 @_is_digit(i8 zeroext %4)
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = mul i32 %.0, 10
  %8 = load i8*, i8** %0, align 4, !tbaa !13
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %0, align 4, !tbaa !13
  %10 = load i8, i8* %8, align 1, !tbaa !14
  %11 = zext i8 %10 to i32
  %12 = sub nsw i32 %11, 48
  %13 = add i32 %7, %12
  br label %2

14:                                               ; preds = %2
  %.0.lcssa = phi i32 [ %.0, %2 ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i64, i1 zeroext, i64, i32, i32, i32) #0 {
  %11 = alloca [32 x i8], align 1
  %12 = zext i1 %5 to i8
  %13 = bitcast [32 x i8]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #2
  %14 = icmp ne i64 %4, 0
  br i1 %14, label %._crit_edge, label %15

._crit_edge:                                      ; preds = %10
  br label %17

15:                                               ; preds = %10
  %16 = and i32 %9, -17
  br label %17

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  %18 = and i32 %.01, 1024
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %._crit_edge3

._crit_edge3:                                     ; preds = %17
  br label %22

20:                                               ; preds = %17
  %21 = icmp ne i64 %4, 0
  br i1 %21, label %._crit_edge4, label %._crit_edge5

._crit_edge5:                                     ; preds = %20
  br label %52

._crit_edge4:                                     ; preds = %20
  br label %22

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i64 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ]
  %24 = urem i64 %.02, %6
  %25 = trunc i64 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32
  %30 = add nsw i32 48, %29
  br label %39

31:                                               ; preds = %23
  %32 = and i32 %.01, 32
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 65, i32 97
  %36 = zext i8 %25 to i32
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 10
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ]
  %41 = trunc i32 %40 to i8
  %42 = add i32 %.0, 1
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0
  store i8 %41, i8* %43, align 1, !tbaa !14
  %44 = udiv i64 %.02, %6
  br label %45

45:                                               ; preds = %39
  %46 = icmp ne i64 %44, 0
  br i1 %46, label %47, label %._crit_edge6

._crit_edge6:                                     ; preds = %45
  br label %49

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ]
  br i1 %50, label %._crit_edge7, label %51

._crit_edge7:                                     ; preds = %49
  br label %23

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ]
  br label %52

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ]
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0
  %54 = trunc i8 %12 to i1
  %55 = trunc i64 %6 to i32
  %56 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %55, i32 %7, i32 %8, i32 %.01)
  %57 = bitcast [32 x i8]* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %57) #2
  ret i32 %56
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)*, i8*, i32, i32, i32, i1 zeroext, i32, i32, i32, i32) #0 {
  %11 = alloca [32 x i8], align 1
  %12 = zext i1 %5 to i8
  %13 = bitcast [32 x i8]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %13) #2
  %14 = icmp ne i32 %4, 0
  br i1 %14, label %._crit_edge, label %15

._crit_edge:                                      ; preds = %10
  br label %17

15:                                               ; preds = %10
  %16 = and i32 %9, -17
  br label %17

17:                                               ; preds = %15, %._crit_edge
  %.01 = phi i32 [ %9, %._crit_edge ], [ %16, %15 ]
  %18 = and i32 %.01, 1024
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %._crit_edge3

._crit_edge3:                                     ; preds = %17
  br label %22

20:                                               ; preds = %17
  %21 = icmp ne i32 %4, 0
  br i1 %21, label %._crit_edge4, label %._crit_edge5

._crit_edge5:                                     ; preds = %20
  br label %52

._crit_edge4:                                     ; preds = %20
  br label %22

22:                                               ; preds = %._crit_edge4, %._crit_edge3
  br label %23

23:                                               ; preds = %._crit_edge7, %22
  %.02 = phi i32 [ %4, %22 ], [ %44, %._crit_edge7 ]
  %.0 = phi i32 [ 0, %22 ], [ %42, %._crit_edge7 ]
  %24 = urem i32 %.02, %6
  %25 = trunc i32 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = zext i8 %25 to i32
  %30 = add nsw i32 48, %29
  br label %39

31:                                               ; preds = %23
  %32 = and i32 %.01, 32
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 65, i32 97
  %36 = zext i8 %25 to i32
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 10
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %30, %28 ], [ %38, %31 ]
  %41 = trunc i32 %40 to i8
  %42 = add i32 %.0, 1
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %.0
  store i8 %41, i8* %43, align 1, !tbaa !14
  %44 = udiv i32 %.02, %6
  br label %45

45:                                               ; preds = %39
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %._crit_edge6

._crit_edge6:                                     ; preds = %45
  br label %49

47:                                               ; preds = %45
  %48 = icmp ult i32 %42, 32
  br label %49

49:                                               ; preds = %47, %._crit_edge6
  %50 = phi i1 [ false, %._crit_edge6 ], [ %48, %47 ]
  br i1 %50, label %._crit_edge7, label %51

._crit_edge7:                                     ; preds = %49
  br label %23

51:                                               ; preds = %49
  %.lcssa = phi i32 [ %42, %49 ]
  br label %52

52:                                               ; preds = %51, %._crit_edge5
  %.1 = phi i32 [ %.lcssa, %51 ], [ 0, %._crit_edge5 ]
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0
  %54 = trunc i8 %12 to i1
  %55 = call arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %53, i32 %.1, i1 zeroext %54, i32 %6, i32 %7, i32 %8, i32 %.01)
  %56 = bitcast [32 x i8]* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %56) #2
  ret i32 %55
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 {
  %9 = alloca [32 x i8], align 1
  %10 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #2
  %11 = fcmp une double %4, %4
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr [4 x i8], [4 x i8]* @.str.12, i32 0, i32 0
  %14 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %13, i32 3, i32 %6, i32 %7)
  br label %200

15:                                               ; preds = %8
  %16 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr [5 x i8], [5 x i8]* @.str.1.13, i32 0, i32 0
  %19 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %18, i32 4, i32 %6, i32 %7)
  br label %200

20:                                               ; preds = %15
  %21 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = and i32 %7, 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = getelementptr [5 x i8], [5 x i8]* @.str.2, i32 0, i32 0
  %27 = getelementptr [4 x i8], [4 x i8]* @.str.3, i32 0, i32 0
  %28 = select i1 %24, i8* %26, i8* %27
  %29 = and i32 %7, 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 4, i32 3
  %33 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %28, i32 %32, i32 %6, i32 %7)
  br label %200

34:                                               ; preds = %20
  %35 = fcmp ogt double %4, 1.000000e+09
  br i1 %35, label %._crit_edge, label %36

._crit_edge:                                      ; preds = %34
  br label %38

36:                                               ; preds = %34
  %37 = fcmp olt double %4, -1.000000e+09
  br i1 %37, label %._crit_edge23, label %40

._crit_edge23:                                    ; preds = %36
  br label %38

38:                                               ; preds = %._crit_edge23, %._crit_edge
  %39 = call arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7)
  br label %200

40:                                               ; preds = %36
  %41 = fcmp olt double %4, 0.000000e+00
  br i1 %41, label %42, label %._crit_edge24

._crit_edge24:                                    ; preds = %40
  br label %44

42:                                               ; preds = %40
  %43 = fsub double 0.000000e+00, %4
  br label %44

44:                                               ; preds = %42, %._crit_edge24
  %.012 = phi double [ %43, %42 ], [ %4, %._crit_edge24 ]
  %.011 = phi i8 [ 1, %42 ], [ 0, %._crit_edge24 ]
  %45 = and i32 %7, 1024
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %._crit_edge25, label %47

._crit_edge25:                                    ; preds = %44
  br label %48

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %._crit_edge25
  %.013 = phi i32 [ %5, %._crit_edge25 ], [ 6, %47 ]
  br label %49

49:                                               ; preds = %55, %48
  %.017 = phi i32 [ 0, %48 ], [ %56, %55 ]
  %.114 = phi i32 [ %.013, %48 ], [ %58, %55 ]
  %50 = icmp ult i32 %.017, 32
  br i1 %50, label %51, label %._crit_edge26

._crit_edge26:                                    ; preds = %49
  br label %53

51:                                               ; preds = %49
  %52 = icmp ugt i32 %.114, 9
  br label %53

53:                                               ; preds = %51, %._crit_edge26
  %54 = phi i1 [ false, %._crit_edge26 ], [ %52, %51 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = add i32 %.017, 1
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.017
  store i8 48, i8* %57, align 1, !tbaa !14
  %58 = add i32 %.114, -1
  br label %49

59:                                               ; preds = %53
  %.017.lcssa = phi i32 [ %.017, %53 ]
  %.114.lcssa = phi i32 [ %.114, %53 ]
  %60 = fptosi double %.012 to i32
  %61 = sitofp i32 %60 to double
  %62 = fsub double %.012, %61
  %63 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa
  %64 = load double, double* %63, align 8, !tbaa !15
  %65 = fmul double %62, %64
  %66 = fptoui double %65 to i32
  %67 = uitofp i32 %66 to double
  %68 = fsub double %65, %67
  %69 = fcmp ogt double %68, 5.000000e-01
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = add i32 %66, 1
  %72 = uitofp i32 %71 to double
  %73 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %.114.lcssa
  %74 = load double, double* %73, align 8, !tbaa !15
  %75 = fcmp oge double %72, %74
  br i1 %75, label %76, label %._crit_edge27

._crit_edge27:                                    ; preds = %70
  br label %78

76:                                               ; preds = %70
  %77 = add nsw i32 %60, 1
  br label %78

78:                                               ; preds = %76, %._crit_edge27
  %.06 = phi i32 [ %77, %76 ], [ %60, %._crit_edge27 ]
  %.02 = phi i32 [ 0, %76 ], [ %71, %._crit_edge27 ]
  br label %91

79:                                               ; preds = %59
  %80 = fcmp olt double %68, 5.000000e-01
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %90

82:                                               ; preds = %79
  %83 = icmp eq i32 %66, 0
  br i1 %83, label %._crit_edge28, label %84

._crit_edge28:                                    ; preds = %82
  br label %87

84:                                               ; preds = %82
  %85 = and i32 %66, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %._crit_edge29, label %._crit_edge30

._crit_edge30:                                    ; preds = %84
  br label %89

._crit_edge29:                                    ; preds = %84
  br label %87

87:                                               ; preds = %._crit_edge29, %._crit_edge28
  %88 = add i32 %66, 1
  br label %89

89:                                               ; preds = %87, %._crit_edge30
  %.13 = phi i32 [ %88, %87 ], [ %66, %._crit_edge30 ]
  br label %90

90:                                               ; preds = %89, %81
  %.24 = phi i32 [ %66, %81 ], [ %.13, %89 ]
  br label %91

91:                                               ; preds = %90, %78
  %.17 = phi i32 [ %.06, %78 ], [ %60, %90 ]
  %.35 = phi i32 [ %.02, %78 ], [ %.24, %90 ]
  %92 = icmp eq i32 %.114.lcssa, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %91
  %94 = sitofp i32 %.17 to double
  %95 = fsub double %.012, %94
  %96 = fcmp olt double %95, 5.000000e-01
  br i1 %96, label %97, label %._crit_edge31

._crit_edge31:                                    ; preds = %93
  br label %99

97:                                               ; preds = %93
  %98 = fcmp ogt double %95, 5.000000e-01
  br i1 %98, label %._crit_edge32, label %._crit_edge33

._crit_edge33:                                    ; preds = %97
  br label %104

._crit_edge32:                                    ; preds = %97
  br label %99

99:                                               ; preds = %._crit_edge32, %._crit_edge31
  %100 = and i32 %.17, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %._crit_edge34

._crit_edge34:                                    ; preds = %99
  br label %104

102:                                              ; preds = %99
  %103 = add nsw i32 %.17, 1
  br label %104

104:                                              ; preds = %102, %._crit_edge34, %._crit_edge33
  %.28 = phi i32 [ %103, %102 ], [ %.17, %._crit_edge34 ], [ %.17, %._crit_edge33 ]
  br label %136

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %118, %105
  %.118 = phi i32 [ %.017.lcssa, %105 ], [ %113, %118 ]
  %.4 = phi i32 [ %.35, %105 ], [ %115, %118 ]
  %.01 = phi i32 [ %.114.lcssa, %105 ], [ %109, %118 ]
  %107 = icmp ult i32 %.118, 32
  br i1 %107, label %108, label %._crit_edge35

._crit_edge35:                                    ; preds = %106
  %.118.lcssa = phi i32 [ %.118, %106 ]
  %.01.lcssa = phi i32 [ %.01, %106 ]
  br label %119

108:                                              ; preds = %106
  %109 = add i32 %.01, -1
  %110 = urem i32 %.4, 10
  %111 = add i32 48, %110
  %112 = trunc i32 %111 to i8
  %113 = add i32 %.118, 1
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.118
  store i8 %112, i8* %114, align 1, !tbaa !14
  %115 = udiv i32 %.4, 10
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %108
  %.lcssa52 = phi i32 [ %109, %108 ]
  %.lcssa51 = phi i32 [ %113, %108 ]
  br label %119

118:                                              ; preds = %108
  br label %106

119:                                              ; preds = %117, %._crit_edge35
  %.219 = phi i32 [ %.lcssa51, %117 ], [ %.118.lcssa, %._crit_edge35 ]
  %.1 = phi i32 [ %.lcssa52, %117 ], [ %.01.lcssa, %._crit_edge35 ]
  br label %120

120:                                              ; preds = %127, %119
  %.320 = phi i32 [ %.219, %119 ], [ %128, %127 ]
  %.2 = phi i32 [ %.1, %119 ], [ %.3, %127 ]
  %121 = icmp ult i32 %.320, 32
  br i1 %121, label %122, label %._crit_edge36

._crit_edge36:                                    ; preds = %120
  br label %125

122:                                              ; preds = %120
  %123 = add i32 %.2, -1
  %124 = icmp ugt i32 %.2, 0
  br label %125

125:                                              ; preds = %122, %._crit_edge36
  %.3 = phi i32 [ %123, %122 ], [ %.2, %._crit_edge36 ]
  %126 = phi i1 [ false, %._crit_edge36 ], [ %124, %122 ]
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = add i32 %.320, 1
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320
  store i8 48, i8* %129, align 1, !tbaa !14
  br label %120

130:                                              ; preds = %125
  %.320.lcssa = phi i32 [ %.320, %125 ]
  %131 = icmp ult i32 %.320.lcssa, 32
  br i1 %131, label %132, label %._crit_edge37

._crit_edge37:                                    ; preds = %130
  br label %135

132:                                              ; preds = %130
  %133 = add i32 %.320.lcssa, 1
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.320.lcssa
  store i8 46, i8* %134, align 1, !tbaa !14
  br label %135

135:                                              ; preds = %132, %._crit_edge37
  %.421 = phi i32 [ %133, %132 ], [ %.320.lcssa, %._crit_edge37 ]
  br label %136

136:                                              ; preds = %135, %104
  %.5 = phi i32 [ %.017.lcssa, %104 ], [ %.421, %135 ]
  %.39 = phi i32 [ %.28, %104 ], [ %.17, %135 ]
  br label %137

137:                                              ; preds = %148, %136
  %.6 = phi i32 [ %.5, %136 ], [ %143, %148 ]
  %.410 = phi i32 [ %.39, %136 ], [ %145, %148 ]
  %138 = icmp ult i32 %.6, 32
  br i1 %138, label %139, label %._crit_edge38

._crit_edge38:                                    ; preds = %137
  %.6.lcssa = phi i32 [ %.6, %137 ]
  br label %149

139:                                              ; preds = %137
  %140 = srem i32 %.410, 10
  %141 = add nsw i32 48, %140
  %142 = trunc i32 %141 to i8
  %143 = add i32 %.6, 1
  %144 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.6
  store i8 %142, i8* %144, align 1, !tbaa !14
  %145 = sdiv i32 %.410, 10
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %139
  %.lcssa = phi i32 [ %143, %139 ]
  br label %149

148:                                              ; preds = %139
  br label %137

149:                                              ; preds = %147, %._crit_edge38
  %.7 = phi i32 [ %.lcssa, %147 ], [ %.6.lcssa, %._crit_edge38 ]
  %150 = and i32 %7, 2
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %._crit_edge39, label %152

._crit_edge39:                                    ; preds = %149
  br label %175

152:                                              ; preds = %149
  %153 = and i32 %7, 1
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %._crit_edge40

._crit_edge40:                                    ; preds = %152
  br label %175

155:                                              ; preds = %152
  %156 = icmp ne i32 %6, 0
  br i1 %156, label %157, label %._crit_edge41

._crit_edge41:                                    ; preds = %155
  br label %164

157:                                              ; preds = %155
  %158 = trunc i8 %.011 to i1
  br i1 %158, label %._crit_edge42, label %159

._crit_edge42:                                    ; preds = %157
  br label %162

159:                                              ; preds = %157
  %160 = and i32 %7, 12
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %._crit_edge43, label %._crit_edge44

._crit_edge44:                                    ; preds = %159
  br label %164

._crit_edge43:                                    ; preds = %159
  br label %162

162:                                              ; preds = %._crit_edge43, %._crit_edge42
  %163 = add i32 %6, -1
  br label %164

164:                                              ; preds = %162, %._crit_edge44, %._crit_edge41
  %.015 = phi i32 [ %163, %162 ], [ %6, %._crit_edge44 ], [ %6, %._crit_edge41 ]
  br label %165

165:                                              ; preds = %171, %164
  %.8 = phi i32 [ %.7, %164 ], [ %172, %171 ]
  %166 = icmp ult i32 %.8, %.015
  br i1 %166, label %167, label %._crit_edge45

._crit_edge45:                                    ; preds = %165
  br label %169

167:                                              ; preds = %165
  %168 = icmp ult i32 %.8, 32
  br label %169

169:                                              ; preds = %167, %._crit_edge45
  %170 = phi i1 [ false, %._crit_edge45 ], [ %168, %167 ]
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = add i32 %.8, 1
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.8
  store i8 48, i8* %173, align 1, !tbaa !14
  br label %165

174:                                              ; preds = %169
  %.8.lcssa = phi i32 [ %.8, %169 ]
  br label %175

175:                                              ; preds = %174, %._crit_edge40, %._crit_edge39
  %.9 = phi i32 [ %.7, %._crit_edge39 ], [ %.8.lcssa, %174 ], [ %.7, %._crit_edge40 ]
  %.116 = phi i32 [ %6, %._crit_edge39 ], [ %.015, %174 ], [ %6, %._crit_edge40 ]
  %176 = icmp ult i32 %.9, 32
  br i1 %176, label %177, label %._crit_edge46

._crit_edge46:                                    ; preds = %175
  br label %197

177:                                              ; preds = %175
  %178 = trunc i8 %.011 to i1
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = add i32 %.9, 1
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9
  store i8 45, i8* %181, align 1, !tbaa !14
  br label %196

182:                                              ; preds = %177
  %183 = and i32 %7, 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = add i32 %.9, 1
  %187 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9
  store i8 43, i8* %187, align 1, !tbaa !14
  br label %195

188:                                              ; preds = %182
  %189 = and i32 %7, 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %._crit_edge47

._crit_edge47:                                    ; preds = %188
  br label %194

191:                                              ; preds = %188
  %192 = add i32 %.9, 1
  %193 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %.9
  store i8 32, i8* %193, align 1, !tbaa !14
  br label %194

194:                                              ; preds = %191, %._crit_edge47
  %.10 = phi i32 [ %192, %191 ], [ %.9, %._crit_edge47 ]
  br label %195

195:                                              ; preds = %194, %185
  %.11 = phi i32 [ %186, %185 ], [ %.10, %194 ]
  br label %196

196:                                              ; preds = %195, %179
  %.12 = phi i32 [ %180, %179 ], [ %.11, %195 ]
  br label %197

197:                                              ; preds = %196, %._crit_edge46
  %.1322 = phi i32 [ %.12, %196 ], [ %.9, %._crit_edge46 ]
  %198 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0
  %199 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %198, i32 %.1322, i32 %.116, i32 %7)
  br label %200

200:                                              ; preds = %197, %38, %22, %17, %12
  %.0 = phi i32 [ %14, %12 ], [ %19, %17 ], [ %33, %22 ], [ %39, %38 ], [ %199, %197 ]
  %201 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %201) #2
  ret i32 %.0
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_etoa(void (i8, i8*, i32, i32)*, i8*, i32, i32, double, i32, i32, i32) #0 {
  %9 = alloca %union.anon, align 8
  %10 = fcmp une double %4, %4
  br i1 %10, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %8
  br label %15

11:                                               ; preds = %8
  %12 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF
  br i1 %12, label %._crit_edge16, label %13

._crit_edge16:                                    ; preds = %11
  br label %15

13:                                               ; preds = %11
  %14 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF
  br i1 %14, label %._crit_edge17, label %17

._crit_edge17:                                    ; preds = %13
  br label %15

15:                                               ; preds = %._crit_edge17, %._crit_edge16, %._crit_edge
  %16 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6, i32 %7)
  br label %171

17:                                               ; preds = %13
  %18 = fcmp olt double %4, 0.000000e+00
  %19 = zext i1 %18 to i8
  %20 = trunc i8 %19 to i1
  br i1 %20, label %21, label %._crit_edge18

._crit_edge18:                                    ; preds = %17
  br label %23

21:                                               ; preds = %17
  %22 = fsub double -0.000000e+00, %4
  br label %23

23:                                               ; preds = %21, %._crit_edge18
  %.09 = phi double [ %22, %21 ], [ %4, %._crit_edge18 ]
  %24 = and i32 %7, 1024
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %._crit_edge19, label %26

._crit_edge19:                                    ; preds = %23
  br label %27

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %._crit_edge19
  %.011 = phi i32 [ %5, %._crit_edge19 ], [ 6, %26 ]
  %28 = bitcast %union.anon* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #2
  %29 = bitcast %union.anon* %9 to double*
  store double %.09, double* %29, align 8, !tbaa !14
  %30 = bitcast %union.anon* %9 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !14
  %32 = lshr i64 %31, 52
  %33 = and i64 %32, 2047
  %34 = trunc i64 %33 to i32
  %35 = sub nsw i32 %34, 1023
  %36 = bitcast %union.anon* %9 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !14
  %38 = and i64 %37, 4503599627370495
  %39 = or i64 %38, 4607182418800017408
  %40 = bitcast %union.anon* %9 to i64*
  store i64 %39, i64* %40, align 8, !tbaa !14
  %41 = sitofp i32 %35 to double
  %42 = fmul double %41, 0x3FD34413509F79FB
  %43 = fadd double 0x3FC68A288B60C8B3, %42
  %44 = bitcast %union.anon* %9 to double*
  %45 = load double, double* %44, align 8, !tbaa !14
  %46 = fsub double %45, 1.500000e+00
  %47 = fmul double %46, 0x3FD287A7636F4361
  %48 = fadd double %43, %47
  %49 = fptosi double %48 to i32
  %50 = sitofp i32 %49 to double
  %51 = fmul double %50, 0x400A934F0979A371
  %52 = fadd double %51, 5.000000e-01
  %53 = fptosi double %52 to i32
  %54 = sitofp i32 %49 to double
  %55 = fmul double %54, 0x40026BB1BBB55516
  %56 = sitofp i32 %53 to double
  %57 = fmul double %56, 0x3FE62E42FEFA39EF
  %58 = fsub double %55, %57
  %59 = fmul double %58, %58
  %60 = add nsw i32 %53, 1023
  %61 = sext i32 %60 to i64
  %62 = shl i64 %61, 52
  %63 = bitcast %union.anon* %9 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !14
  %64 = fmul double 2.000000e+00, %58
  %65 = fsub double 2.000000e+00, %58
  %66 = fdiv double %59, 1.400000e+01
  %67 = fadd double 1.000000e+01, %66
  %68 = fdiv double %59, %67
  %69 = fadd double 6.000000e+00, %68
  %70 = fdiv double %59, %69
  %71 = fadd double %65, %70
  %72 = fdiv double %64, %71
  %73 = fadd double 1.000000e+00, %72
  %74 = bitcast %union.anon* %9 to double*
  %75 = load double, double* %74, align 8, !tbaa !14
  %76 = fmul double %75, %73
  store double %76, double* %74, align 8, !tbaa !14
  %77 = bitcast %union.anon* %9 to double*
  %78 = load double, double* %77, align 8, !tbaa !14
  %79 = fcmp olt double %.09, %78
  br i1 %79, label %80, label %._crit_edge20

._crit_edge20:                                    ; preds = %27
  br label %85

80:                                               ; preds = %27
  %81 = add nsw i32 %49, -1
  %82 = bitcast %union.anon* %9 to double*
  %83 = load double, double* %82, align 8, !tbaa !14
  %84 = fdiv double %83, 1.000000e+01
  store double %84, double* %82, align 8, !tbaa !14
  br label %85

85:                                               ; preds = %80, %._crit_edge20
  %.06 = phi i32 [ %81, %80 ], [ %49, %._crit_edge20 ]
  %86 = icmp slt i32 %.06, 100
  br i1 %86, label %87, label %._crit_edge21

._crit_edge21:                                    ; preds = %85
  br label %89

87:                                               ; preds = %85
  %88 = icmp sgt i32 %.06, -100
  br label %89

89:                                               ; preds = %87, %._crit_edge21
  %90 = phi i1 [ false, %._crit_edge21 ], [ %88, %87 ]
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 4, i32 5
  %93 = and i32 %7, 2048
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %._crit_edge22

._crit_edge22:                                    ; preds = %89
  br label %116

95:                                               ; preds = %89
  %96 = fcmp oge double %.09, 1.000000e-04
  br i1 %96, label %97, label %._crit_edge23

._crit_edge23:                                    ; preds = %95
  br label %107

97:                                               ; preds = %95
  %98 = fcmp olt double %.09, 1.000000e+06
  br i1 %98, label %99, label %._crit_edge24

._crit_edge24:                                    ; preds = %97
  br label %107

99:                                               ; preds = %97
  %100 = icmp sgt i32 %.011, %.06
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = sub nsw i32 %.011, %.06
  %103 = sub nsw i32 %102, 1
  br label %105

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %101
  %.112 = phi i32 [ %103, %101 ], [ 0, %104 ]
  %106 = or i32 %7, 1024
  br label %115

107:                                              ; preds = %._crit_edge24, %._crit_edge23
  %108 = icmp ugt i32 %.011, 0
  br i1 %108, label %109, label %._crit_edge25

._crit_edge25:                                    ; preds = %107
  br label %114

109:                                              ; preds = %107
  %110 = and i32 %7, 1024
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %._crit_edge26

._crit_edge26:                                    ; preds = %109
  br label %114

112:                                              ; preds = %109
  %113 = add i32 %.011, -1
  br label %114

114:                                              ; preds = %112, %._crit_edge26, %._crit_edge25
  %.213 = phi i32 [ %113, %112 ], [ %.011, %._crit_edge26 ], [ %.011, %._crit_edge25 ]
  br label %115

115:                                              ; preds = %114, %105
  %.014 = phi i32 [ %106, %105 ], [ %7, %114 ]
  %.3 = phi i32 [ %.112, %105 ], [ %.213, %114 ]
  %.17 = phi i32 [ 0, %105 ], [ %.06, %114 ]
  %.02 = phi i32 [ 0, %105 ], [ %92, %114 ]
  br label %116

116:                                              ; preds = %115, %._crit_edge22
  %.115 = phi i32 [ %.014, %115 ], [ %7, %._crit_edge22 ]
  %.4 = phi i32 [ %.3, %115 ], [ %.011, %._crit_edge22 ]
  %.28 = phi i32 [ %.17, %115 ], [ %.06, %._crit_edge22 ]
  %.13 = phi i32 [ %.02, %115 ], [ %92, %._crit_edge22 ]
  %117 = icmp ugt i32 %6, %.13
  br i1 %117, label %118, label %120

118:                                              ; preds = %116
  %119 = sub i32 %6, %.13
  br label %121

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %118
  %.01 = phi i32 [ %119, %118 ], [ 0, %120 ]
  %122 = and i32 %.115, 2
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %._crit_edge27

._crit_edge27:                                    ; preds = %121
  br label %127

124:                                              ; preds = %121
  %125 = icmp ne i32 %.13, 0
  br i1 %125, label %126, label %._crit_edge28

._crit_edge28:                                    ; preds = %124
  br label %127

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %126, %._crit_edge28, %._crit_edge27
  %.1 = phi i32 [ 0, %126 ], [ %.01, %._crit_edge28 ], [ %.01, %._crit_edge27 ]
  %128 = icmp ne i32 %.28, 0
  br i1 %128, label %129, label %._crit_edge29

._crit_edge29:                                    ; preds = %127
  br label %133

129:                                              ; preds = %127
  %130 = bitcast %union.anon* %9 to double*
  %131 = load double, double* %130, align 8, !tbaa !14
  %132 = fdiv double %.09, %131
  br label %133

133:                                              ; preds = %129, %._crit_edge29
  %.110 = phi double [ %132, %129 ], [ %.09, %._crit_edge29 ]
  %134 = trunc i8 %19 to i1
  br i1 %134, label %135, label %137

135:                                              ; preds = %133
  %136 = fsub double -0.000000e+00, %.110
  br label %138

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi double [ %136, %135 ], [ %.110, %137 ]
  %140 = and i32 %.115, -2049
  %141 = call arm_aapcscc i32 @_ftoa(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, double %139, i32 %.4, i32 %.1, i32 %140)
  %142 = icmp ne i32 %.13, 0
  br i1 %142, label %143, label %._crit_edge30

._crit_edge30:                                    ; preds = %138
  br label %169

143:                                              ; preds = %138
  %144 = and i32 %.115, 32
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 69, i32 101
  %148 = trunc i32 %147 to i8
  %149 = add i32 %141, 1
  call arm_aapcscc void %0(i8 zeroext %148, i8* %1, i32 %141, i32 %3)
  %150 = icmp slt i32 %.28, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = sub nsw i32 0, %.28
  br label %154

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ %.28, %153 ]
  %156 = icmp slt i32 %.28, 0
  %157 = sub i32 %.13, 1
  %158 = call arm_aapcscc i32 @_ntoa_long(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %149, i32 %3, i32 %155, i1 zeroext %156, i32 10, i32 0, i32 %157, i32 5)
  %159 = and i32 %.115, 2
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %._crit_edge31

._crit_edge31:                                    ; preds = %154
  br label %168

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %165, %161
  %.04 = phi i32 [ %158, %161 ], [ %166, %165 ]
  %163 = sub i32 %.04, %2
  %164 = icmp ult i32 %163, %6
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = add i32 %.04, 1
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.04, i32 %3)
  br label %162

167:                                              ; preds = %162
  %.04.lcssa = phi i32 [ %.04, %162 ]
  br label %168

168:                                              ; preds = %167, %._crit_edge31
  %.15 = phi i32 [ %.04.lcssa, %167 ], [ %158, %._crit_edge31 ]
  br label %169

169:                                              ; preds = %168, %._crit_edge30
  %.2 = phi i32 [ %.15, %168 ], [ %141, %._crit_edge30 ]
  %170 = bitcast %union.anon* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170) #2
  br label %171

171:                                              ; preds = %169, %15
  %.0 = phi i32 [ %16, %15 ], [ %.2, %169 ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc i32 @_strnlen_s(i8*, i32) #3 {
  br label %3

3:                                                ; preds = %13, %2
  %.01 = phi i32 [ %1, %2 ], [ %.1, %13 ]
  %.0 = phi i8* [ %0, %2 ], [ %14, %13 ]
  %4 = load i8, i8* %.0, align 1, !tbaa !14
  %5 = zext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %3
  br label %10

7:                                                ; preds = %3
  %8 = add i32 %.01, -1
  %9 = icmp ne i32 %.01, 0
  br label %10

10:                                               ; preds = %7, %._crit_edge
  %.1 = phi i32 [ %8, %7 ], [ %.01, %._crit_edge ]
  %11 = phi i1 [ false, %._crit_edge ], [ %9, %7 ]
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.0, i32 1
  br label %3

15:                                               ; preds = %10
  %.0.lcssa = phi i8* [ %.0, %10 ]
  %16 = ptrtoint i8* %.0.lcssa to i32
  %17 = ptrtoint i8* %0 to i32
  %18 = sub i32 %16, %17
  ret i32 %18
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i32, i32) #0 {
  %9 = and i32 %7, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %8
  br label %23

11:                                               ; preds = %8
  %12 = and i32 %7, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %._crit_edge3, label %14

._crit_edge3:                                     ; preds = %11
  br label %23

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %20, %14
  %.02 = phi i32 [ %2, %14 ], [ %19, %20 ]
  %.0 = phi i32 [ %5, %14 ], [ %21, %20 ]
  %16 = icmp ult i32 %.0, %6
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  %.02.lcssa = phi i32 [ %.02, %15 ]
  br label %22

18:                                               ; preds = %15
  %19 = add i32 %.02, 1
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.02, i32 %3)
  br label %20

20:                                               ; preds = %18
  %21 = add i32 %.0, 1
  br label %15

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %._crit_edge3, %._crit_edge
  %.1 = phi i32 [ %2, %._crit_edge ], [ %2, %._crit_edge3 ], [ %.02.lcssa, %22 ]
  br label %24

24:                                               ; preds = %26, %23
  %.2 = phi i32 [ %.1, %23 ], [ %30, %26 ]
  %.01 = phi i32 [ %5, %23 ], [ %27, %26 ]
  %25 = icmp ne i32 %.01, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = add i32 %.01, -1
  %28 = getelementptr inbounds i8, i8* %4, i32 %27
  %29 = load i8, i8* %28, align 1, !tbaa !14
  %30 = add i32 %.2, 1
  call arm_aapcscc void %0(i8 zeroext %29, i8* %1, i32 %.2, i32 %3)
  br label %24

31:                                               ; preds = %24
  %.2.lcssa = phi i32 [ %.2, %24 ]
  %32 = and i32 %7, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %._crit_edge4

._crit_edge4:                                     ; preds = %31
  br label %41

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %38, %34
  %.3 = phi i32 [ %.2.lcssa, %34 ], [ %39, %38 ]
  %36 = sub i32 %.3, %2
  %37 = icmp ult i32 %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = add i32 %.3, 1
  call arm_aapcscc void %0(i8 zeroext 32, i8* %1, i32 %.3, i32 %3)
  br label %35

40:                                               ; preds = %35
  %.3.lcssa = phi i32 [ %.3, %35 ]
  br label %41

41:                                               ; preds = %40, %._crit_edge4
  %.4 = phi i32 [ %.3.lcssa, %40 ], [ %.2.lcssa, %._crit_edge4 ]
  ret i32 %.4
}

; Function Attrs: nounwind
define internal arm_aapcscc i32 @_ntoa_format(void (i8, i8*, i32, i32)*, i8*, i32, i32, i8*, i32, i1 zeroext, i32, i32, i32, i32) #0 {
  %12 = zext i1 %6 to i8
  %13 = and i32 %10, 2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %._crit_edge, label %15

._crit_edge:                                      ; preds = %11
  br label %51

15:                                               ; preds = %11
  %16 = icmp ne i32 %9, 0
  br i1 %16, label %17, label %._crit_edge4

._crit_edge4:                                     ; preds = %15
  br label %27

17:                                               ; preds = %15
  %18 = and i32 %10, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %._crit_edge5

._crit_edge5:                                     ; preds = %17
  br label %27

20:                                               ; preds = %17
  %21 = trunc i8 %12 to i1
  br i1 %21, label %._crit_edge6, label %22

._crit_edge6:                                     ; preds = %20
  br label %25

22:                                               ; preds = %20
  %23 = and i32 %10, 12
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %._crit_edge7, label %._crit_edge8

._crit_edge8:                                     ; preds = %22
  br label %27

._crit_edge7:                                     ; preds = %22
  br label %25

25:                                               ; preds = %._crit_edge7, %._crit_edge6
  %26 = add i32 %9, -1
  br label %27

27:                                               ; preds = %25, %._crit_edge8, %._crit_edge5, %._crit_edge4
  %.0 = phi i32 [ %26, %25 ], [ %9, %._crit_edge8 ], [ %9, %._crit_edge5 ], [ %9, %._crit_edge4 ]
  br label %28

28:                                               ; preds = %34, %27
  %.01 = phi i32 [ %5, %27 ], [ %35, %34 ]
  %29 = icmp ult i32 %.01, %8
  br i1 %29, label %30, label %._crit_edge9

._crit_edge9:                                     ; preds = %28
  br label %32

30:                                               ; preds = %28
  %31 = icmp ult i32 %.01, 32
  br label %32

32:                                               ; preds = %30, %._crit_edge9
  %33 = phi i1 [ false, %._crit_edge9 ], [ %31, %30 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = add i32 %.01, 1
  %36 = getelementptr inbounds i8, i8* %4, i32 %.01
  store i8 48, i8* %36, align 1, !tbaa !14
  br label %28

37:                                               ; preds = %32
  %.01.lcssa = phi i32 [ %.01, %32 ]
  br label %38

38:                                               ; preds = %47, %37
  %.12 = phi i32 [ %.01.lcssa, %37 ], [ %48, %47 ]
  %39 = and i32 %10, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %._crit_edge10

._crit_edge10:                                    ; preds = %38
  br label %45

41:                                               ; preds = %38
  %42 = icmp ult i32 %.12, %.0
  br i1 %42, label %43, label %._crit_edge11

._crit_edge11:                                    ; preds = %41
  br label %45

43:                                               ; preds = %41
  %44 = icmp ult i32 %.12, 32
  br label %45

45:                                               ; preds = %43, %._crit_edge11, %._crit_edge10
  %46 = phi i1 [ false, %._crit_edge11 ], [ false, %._crit_edge10 ], [ %44, %43 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = add i32 %.12, 1
  %49 = getelementptr inbounds i8, i8* %4, i32 %.12
  store i8 48, i8* %49, align 1, !tbaa !14
  br label %38

50:                                               ; preds = %45
  %.12.lcssa = phi i32 [ %.12, %45 ]
  br label %51

51:                                               ; preds = %50, %._crit_edge
  %.2 = phi i32 [ %5, %._crit_edge ], [ %.12.lcssa, %50 ]
  %.1 = phi i32 [ %9, %._crit_edge ], [ %.0, %50 ]
  %52 = and i32 %10, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %._crit_edge12

._crit_edge12:                                    ; preds = %51
  br label %106

54:                                               ; preds = %51
  %55 = and i32 %10, 1024
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %._crit_edge13, label %57

._crit_edge13:                                    ; preds = %54
  br label %71

57:                                               ; preds = %54
  %58 = icmp ne i32 %.2, 0
  br i1 %58, label %59, label %._crit_edge14

._crit_edge14:                                    ; preds = %57
  br label %71

59:                                               ; preds = %57
  %60 = icmp eq i32 %.2, %8
  br i1 %60, label %._crit_edge15, label %61

._crit_edge15:                                    ; preds = %59
  br label %63

61:                                               ; preds = %59
  %62 = icmp eq i32 %.2, %.1
  br i1 %62, label %._crit_edge16, label %._crit_edge17

._crit_edge17:                                    ; preds = %61
  br label %71

._crit_edge16:                                    ; preds = %61
  br label %63

63:                                               ; preds = %._crit_edge16, %._crit_edge15
  %64 = add i32 %.2, -1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %._crit_edge18

._crit_edge18:                                    ; preds = %63
  br label %70

66:                                               ; preds = %63
  %67 = icmp eq i32 %7, 16
  br i1 %67, label %68, label %._crit_edge19

._crit_edge19:                                    ; preds = %66
  br label %70

68:                                               ; preds = %66
  %69 = add i32 %64, -1
  br label %70

70:                                               ; preds = %68, %._crit_edge19, %._crit_edge18
  %.3 = phi i32 [ %69, %68 ], [ %64, %._crit_edge19 ], [ %64, %._crit_edge18 ]
  br label %71

71:                                               ; preds = %70, %._crit_edge17, %._crit_edge14, %._crit_edge13
  %.4 = phi i32 [ %.2, %._crit_edge13 ], [ %.3, %70 ], [ %.2, %._crit_edge17 ], [ %.2, %._crit_edge14 ]
  %72 = icmp eq i32 %7, 16
  br i1 %72, label %73, label %._crit_edge20

._crit_edge20:                                    ; preds = %71
  br label %81

73:                                               ; preds = %71
  %74 = and i32 %10, 32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %._crit_edge21, label %76

._crit_edge21:                                    ; preds = %73
  br label %81

76:                                               ; preds = %73
  %77 = icmp ult i32 %.4, 32
  br i1 %77, label %78, label %._crit_edge22

._crit_edge22:                                    ; preds = %76
  br label %81

78:                                               ; preds = %76
  %79 = add i32 %.4, 1
  %80 = getelementptr inbounds i8, i8* %4, i32 %.4
  store i8 120, i8* %80, align 1, !tbaa !14
  br label %100

81:                                               ; preds = %._crit_edge22, %._crit_edge21, %._crit_edge20
  %82 = icmp eq i32 %7, 16
  br i1 %82, label %83, label %._crit_edge23

._crit_edge23:                                    ; preds = %81
  br label %91

83:                                               ; preds = %81
  %84 = and i32 %10, 32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %._crit_edge24

._crit_edge24:                                    ; preds = %83
  br label %91

86:                                               ; preds = %83
  %87 = icmp ult i32 %.4, 32
  br i1 %87, label %88, label %._crit_edge25

._crit_edge25:                                    ; preds = %86
  br label %91

88:                                               ; preds = %86
  %89 = add i32 %.4, 1
  %90 = getelementptr inbounds i8, i8* %4, i32 %.4
  store i8 88, i8* %90, align 1, !tbaa !14
  br label %99

91:                                               ; preds = %._crit_edge25, %._crit_edge24, %._crit_edge23
  %92 = icmp eq i32 %7, 2
  br i1 %92, label %93, label %._crit_edge26

._crit_edge26:                                    ; preds = %91
  br label %98

93:                                               ; preds = %91
  %94 = icmp ult i32 %.4, 32
  br i1 %94, label %95, label %._crit_edge27

._crit_edge27:                                    ; preds = %93
  br label %98

95:                                               ; preds = %93
  %96 = add i32 %.4, 1
  %97 = getelementptr inbounds i8, i8* %4, i32 %.4
  store i8 98, i8* %97, align 1, !tbaa !14
  br label %98

98:                                               ; preds = %95, %._crit_edge27, %._crit_edge26
  %.5 = phi i32 [ %96, %95 ], [ %.4, %._crit_edge27 ], [ %.4, %._crit_edge26 ]
  br label %99

99:                                               ; preds = %98, %88
  %.6 = phi i32 [ %89, %88 ], [ %.5, %98 ]
  br label %100

100:                                              ; preds = %99, %78
  %.7 = phi i32 [ %.6, %99 ], [ %79, %78 ]
  %101 = icmp ult i32 %.7, 32
  br i1 %101, label %102, label %._crit_edge28

._crit_edge28:                                    ; preds = %100
  br label %105

102:                                              ; preds = %100
  %103 = add i32 %.7, 1
  %104 = getelementptr inbounds i8, i8* %4, i32 %.7
  store i8 48, i8* %104, align 1, !tbaa !14
  br label %105

105:                                              ; preds = %102, %._crit_edge28
  %.8 = phi i32 [ %103, %102 ], [ %.7, %._crit_edge28 ]
  br label %106

106:                                              ; preds = %105, %._crit_edge12
  %.9 = phi i32 [ %.8, %105 ], [ %.2, %._crit_edge12 ]
  %107 = icmp ult i32 %.9, 32
  br i1 %107, label %108, label %._crit_edge29

._crit_edge29:                                    ; preds = %106
  br label %128

108:                                              ; preds = %106
  %109 = trunc i8 %12 to i1
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = add i32 %.9, 1
  %112 = getelementptr inbounds i8, i8* %4, i32 %.9
  store i8 45, i8* %112, align 1, !tbaa !14
  br label %127

113:                                              ; preds = %108
  %114 = and i32 %10, 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = add i32 %.9, 1
  %118 = getelementptr inbounds i8, i8* %4, i32 %.9
  store i8 43, i8* %118, align 1, !tbaa !14
  br label %126

119:                                              ; preds = %113
  %120 = and i32 %10, 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %._crit_edge30

._crit_edge30:                                    ; preds = %119
  br label %125

122:                                              ; preds = %119
  %123 = add i32 %.9, 1
  %124 = getelementptr inbounds i8, i8* %4, i32 %.9
  store i8 32, i8* %124, align 1, !tbaa !14
  br label %125

125:                                              ; preds = %122, %._crit_edge30
  %.10 = phi i32 [ %123, %122 ], [ %.9, %._crit_edge30 ]
  br label %126

126:                                              ; preds = %125, %116
  %.11 = phi i32 [ %117, %116 ], [ %.10, %125 ]
  br label %127

127:                                              ; preds = %126, %110
  %.123 = phi i32 [ %111, %110 ], [ %.11, %126 ]
  br label %128

128:                                              ; preds = %127, %._crit_edge29
  %.13 = phi i32 [ %.123, %127 ], [ %.9, %._crit_edge29 ]
  %129 = call arm_aapcscc i32 @_out_rev(void (i8, i8*, i32, i32)* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %.13, i32 %.1, i32 %10)
  ret i32 %129
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @sprintf_(i8*, i8*, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  %4 = bitcast %struct.__va_list* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #2
  %5 = bitcast %struct.__va_list* %3 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %7 = bitcast i8** %6 to [1 x i32]*
  %8 = load [1 x i32], [1 x i32]* %7, align 4
  %9 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 -1, i8* %1, [1 x i32] %8)
  %10 = bitcast %struct.__va_list* %3 to i8*
  call void @llvm.va_end(i8* %10)
  %11 = bitcast %struct.__va_list* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #2
  ret i32 %9
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_buffer(i8 zeroext, i8*, i32, i32) #3 {
  %5 = icmp ult i32 %2, %3
  br i1 %5, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %4
  br label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %1, i32 %2
  store i8 %0, i8* %7, align 1, !tbaa !14
  br label %8

8:                                                ; preds = %6, %._crit_edge
  ret void
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @snprintf_(i8*, i32, i8*, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  %5 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #2
  %6 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %8 = bitcast i8** %7 to [1 x i32]*
  %9 = load [1 x i32], [1 x i32]* %8, align 4
  %10 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %9)
  %11 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.va_end(i8* %11)
  %12 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #2
  ret i32 %10
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vprintf_(i8*, [1 x i32]) #0 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %6 = bitcast i8** %5 to [1 x i32]*
  store [1 x i32] %1, [1 x i32]* %6, align 4
  %7 = bitcast [1 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #2
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i32 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %3, i32 0, i32 0
  %10 = bitcast i8** %9 to [1 x i32]*
  %11 = load [1 x i32], [1 x i32]* %10, align 4
  %12 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_char, i8* %8, i32 -1, i8* %0, [1 x i32] %11)
  %13 = bitcast [1 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %13) #2
  ret i32 %12
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @vsnprintf_(i8*, i32, i8*, [1 x i32]) #0 {
  %5 = alloca %struct.__va_list, align 4
  %6 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0
  %7 = bitcast i8** %6 to [1 x i32]*
  store [1 x i32] %3, [1 x i32]* %7, align 4
  %8 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %5, i32 0, i32 0
  %9 = bitcast i8** %8 to [1 x i32]*
  %10 = load [1 x i32], [1 x i32]* %9, align 4
  %11 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_buffer, i8* %0, i32 %1, i8* %2, [1 x i32] %10)
  ret i32 %11
}

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @fctprintf(void (i8, i8*)*, i8*, i8*, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.out_fct_wrap_type, align 4
  %6 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #2
  %7 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = bitcast %struct.out_fct_wrap_type* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #2
  %9 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 0
  store void (i8, i8*)* %0, void (i8, i8*)** %9, align 4, !tbaa !17
  %10 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 1
  store i8* %1, i8** %10, align 4, !tbaa !19
  %11 = ptrtoint %struct.out_fct_wrap_type* %5 to i32
  %12 = inttoptr i32 %11 to i8*
  %13 = getelementptr inbounds %struct.__va_list, %struct.__va_list* %4, i32 0, i32 0
  %14 = bitcast i8** %13 to [1 x i32]*
  %15 = load [1 x i32], [1 x i32]* %14, align 4
  %16 = call arm_aapcscc i32 @_vsnprintf(void (i8, i8*, i32, i32)* @_out_fct, i8* %12, i32 -1, i8* %2, [1 x i32] %15)
  %17 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.va_end(i8* %17)
  %18 = bitcast %struct.out_fct_wrap_type* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #2
  %19 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #2
  ret i32 %16
}

; Function Attrs: inlinehint nounwind
define internal arm_aapcscc void @_out_fct(i8 zeroext, i8*, i32, i32) #3 {
  %5 = icmp ne i8 %0, 0
  br i1 %5, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %4
  br label %13

6:                                                ; preds = %4
  %7 = bitcast i8* %1 to %struct.out_fct_wrap_type*
  %8 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %7, i32 0, i32 0
  %9 = load void (i8, i8*)*, void (i8, i8*)** %8, align 4, !tbaa !17
  %10 = bitcast i8* %1 to %struct.out_fct_wrap_type*
  %11 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 4, !tbaa !19
  call arm_aapcscc void %9(i8 zeroext %0, i8* %12)
  br label %13

13:                                               ; preds = %6, %._crit_edge
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc i32 @putc(i32, i8*) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store i32 %0, i32* %3, align 4, !tbaa !20
  store i8* %1, i8** %4, align 4, !tbaa !13
  %5 = load i8*, i8** %4, align 4, !tbaa !13
  %6 = load i32, i32* %3, align 4, !tbaa !20
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcscc void @_putchar(i8 zeroext) #4 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1, !tbaa !14
  %3 = load i8, i8* %2, align 1, !tbaa !14
  %4 = zext i8 %3 to i32
  %5 = call arm_aapcscc i32 @putc(i32 %4, i8* %2)
  ret void
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #5 {
  call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #2, !srcloc !22
  call void asm sideeffect "    ldr    sp, [r1]", ""() #2, !srcloc !23
  call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #2, !srcloc !24
  call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #2, !srcloc !25
  call void asm sideeffect "    bl   main\0A", ""() #2, !srcloc !26
  call void asm sideeffect "    bkpt     ", ""() #2, !srcloc !27
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

declare extern_weak dso_local arm_aapcscc void @SecureFault_Handler() #6

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 {
  br label %1

1:                                                ; preds = %1, %0
  br label %1
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #5 = { naked noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }

!llvm.ident = !{!0, !0, !0, !0, !0}
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
!10 = !{!4, !5, i64 0}
!11 = !{!4, !9, i64 6}
!12 = !{!"ics_unroll"}
!13 = !{!5, !5, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!18, !5, i64 0}
!18 = !{!"", !5, i64 0, !5, i64 4}
!19 = !{!18, !5, i64 4}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !6, i64 0}
!22 = !{i32 12926, i32 12968, i32 13014}
!23 = !{i32 13092}
!24 = !{i32 13445, i32 13488, i32 13526, i32 13564, i32 13589, i32 13630, i32 13671, i32 13708}
!25 = !{i32 13797, i32 13835, i32 13872, i32 13905, i32 13930, i32 13967, i32 14000, i32 14043}
!26 = !{i32 14154}
!27 = !{i32 14261}
