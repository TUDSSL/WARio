; ModuleID = '/home/vkortbeek/devel/ics/test/arm-code/list-reverse/build-noelle/src/list-reverse.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-gnu"

%struct.list_head_s = type { %struct.list_head_s*, %struct.list_data_s }
%struct.list_data_s = type { i16, i16 }

@g_am_pfnVectors = dso_local local_unnamed_addr constant [48 x void ()*] [void ()* bitcast (i32* @_estack to void ()*), void ()* @Reset_Handler, void ()* @NMI_Handler, void ()* @HardFault_Handler, void ()* @MemManage_Handler, void ()* @BusFault_Handler, void ()* @UsageFault_Handler, void ()* @SecureFault_Handler, void ()* null, void ()* null, void ()* null, void ()* @SVC_Handler, void ()* @DebugMon_Handler, void ()* null, void ()* @PendSV_Handler, void ()* @SysTick_Handler, void ()* @am_brownout_isr, void ()* @am_watchdog_isr, void ()* @am_rtc_isr, void ()* @am_vcomp_isr, void ()* @am_ioslave_ios_isr, void ()* @am_ioslave_acc_isr, void ()* @am_iomaster0_isr, void ()* @am_iomaster1_isr, void ()* @am_iomaster2_isr, void ()* @am_iomaster3_isr, void ()* @am_iomaster4_isr, void ()* @am_iomaster5_isr, void ()* @am_ble_isr, void ()* @am_gpio_isr, void ()* @am_ctimer_isr, void ()* @am_uart_isr, void ()* @am_uart1_isr, void ()* @am_scard_isr, void ()* @am_adc_isr, void ()* @am_pdm0_isr, void ()* @am_mspi0_isr, void ()* @am_software0_isr, void ()* @am_stimer_isr, void ()* @am_stimer_cmpr0_isr, void ()* @am_stimer_cmpr1_isr, void ()* @am_stimer_cmpr2_isr, void ()* @am_stimer_cmpr3_isr, void ()* @am_stimer_cmpr4_isr, void ()* @am_stimer_cmpr5_isr, void ()* @am_stimer_cmpr6_isr, void ()* @am_stimer_cmpr7_isr, void ()* @am_clkgen_isr], section ".isr_vector", align 4
@_estack = external dso_local constant i32, align 4
@__Patchable = dso_local local_unnamed_addr constant [16 x i32] zeroinitializer, section ".patch", align 4

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
define dso_local arm_aapcscc i32 @main() local_unnamed_addr #0 {
  %1 = alloca [25 x %struct.list_head_s], align 4
  %2 = alloca %struct.list_head_s, align 4
  %3 = bitcast [25 x %struct.list_head_s]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %3) #6
  %4 = bitcast %struct.list_head_s* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %2, i32 0, i32 1, i32 0
  store i16 42, i16* %5, align 4, !tbaa !3
  %6 = getelementptr inbounds [25 x %struct.list_head_s], [25 x %struct.list_head_s]* %1, i32 0, i32 0
  call arm_aapcscc void @list_init(%struct.list_head_s* nonnull %6, i32 25, %struct.list_head_s* nonnull %2) #6
  call arm_aapcscc void @list_increment_data(%struct.list_head_s* nonnull %2) #6
  %7 = call arm_aapcscc %struct.list_head_s* @list_reverse(%struct.list_head_s* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree norecurse nounwind writeonly
define dso_local arm_aapcscc void @list_init(%struct.list_head_s*, i32, %struct.list_head_s* nocapture) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %6, %3
  ret void

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %15, %6 ], [ 0, %3 ]
  %8 = phi %struct.list_head_s* [ %9, %6 ], [ %2, %3 ]
  %9 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %7
  %10 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %8, i32 0, i32 0
  store %struct.list_head_s* %9, %struct.list_head_s** %10, align 4, !tbaa !10
  %11 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %7, i32 1, i32 0
  store i16 1, i16* %11, align 4, !tbaa !3
  %12 = trunc i32 %7 to i16
  %13 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %0, i32 %7, i32 1, i32 1
  store i16 %12, i16* %13, align 2, !tbaa !11
  %14 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %9, i32 0, i32 0
  store %struct.list_head_s* null, %struct.list_head_s** %14, align 4, !tbaa !10
  %15 = add nuw i32 %7, 1
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %5, label %6
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_aapcscc void @list_increment_data(%struct.list_head_s*) local_unnamed_addr #3 {
  %2 = icmp eq %struct.list_head_s* %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %3
  %4 = phi %struct.list_head_s* [ %9, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %4, i32 0, i32 1, i32 0
  %6 = load i16, i16* %5, align 4, !tbaa !3
  %7 = add i16 %6, 1
  store i16 %7, i16* %5, align 4, !tbaa !3
  %8 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %4, i32 0, i32 0
  %9 = load %struct.list_head_s*, %struct.list_head_s** %8, align 4, !tbaa !10
  %10 = icmp eq %struct.list_head_s* %9, null
  br i1 %10, label %11, label %3

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_aapcscc %struct.list_head_s* @list_reverse(%struct.list_head_s*) local_unnamed_addr #3 {
  %2 = icmp eq %struct.list_head_s* %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %15
  %4 = phi %struct.list_head_s* [ %17, %15 ], [ %0, %1 ]
  %5 = phi %struct.list_head_s* [ %13, %15 ], [ null, %1 ]
  %6 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %4, i32 0, i32 0
  %7 = load %struct.list_head_s*, %struct.list_head_s** %6, align 4, !tbaa !10
  store %struct.list_head_s* %5, %struct.list_head_s** %6, align 4, !tbaa !10
  %8 = icmp eq %struct.list_head_s* %7, null
  br i1 %8, label %9, label %11, !llvm.loop !12

9:                                                ; preds = %3, %11, %15, %1
  %10 = phi %struct.list_head_s* [ null, %1 ], [ %13, %15 ], [ %7, %11 ], [ %4, %3 ]
  ret %struct.list_head_s* %10

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %7, i32 0, i32 0
  %13 = load %struct.list_head_s*, %struct.list_head_s** %12, align 4, !tbaa !10
  store %struct.list_head_s* %4, %struct.list_head_s** %12, align 4, !tbaa !10
  %14 = icmp eq %struct.list_head_s* %13, null
  br i1 %14, label %9, label %15, !llvm.loop !12

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.list_head_s, %struct.list_head_s* %13, i32 0, i32 0
  %17 = load %struct.list_head_s*, %struct.list_head_s** %16, align 4, !tbaa !10
  store %struct.list_head_s* %7, %struct.list_head_s** %16, align 4, !tbaa !10
  %18 = icmp eq %struct.list_head_s* %17, null
  br i1 %18, label %9, label %3, !llvm.loop !14
}

; Function Attrs: naked noinline nounwind
define dso_local arm_aapcscc void @Reset_Handler() #4 {
  tail call void asm sideeffect "    ldr    r0, =0xE000ED08\0A    ldr    r1, =g_am_pfnVectors\0A    str    r1, [r0]", ""() #6, !srcloc !16
  tail call void asm sideeffect "    ldr    sp, [r1]", ""() #6, !srcloc !17
  tail call void asm sideeffect "    ldr     r0, =_init_data\0A    ldr     r1, =_sdata\0A    ldr     r2, =_edata\0Acopy_loop:\0A        ldr   r3, [r0], #4\0A        str   r3, [r1], #4\0A        cmp     r1, r2\0A        blt     copy_loop\0A", ""() #6, !srcloc !18
  tail call void asm sideeffect "    ldr     r0, =_sbss\0A    ldr     r1, =_ebss\0A    mov     r2, #0\0Azero_loop:\0A        cmp     r0, r1\0A        it      lt\0A        strlt   r2, [r0], #4\0A        blt     zero_loop", ""() #6, !srcloc !19
  tail call void asm sideeffect "    bl   main\0A", ""() #6, !srcloc !20
  tail call void asm sideeffect "    bkpt     ", ""() #6, !srcloc !21
  unreachable
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @NMI_Handler() #0 {
  br label %1

1:                                                ; preds = %0, %1
  br label %1
}

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @HardFault_Handler() #0 {
  br label %1

1:                                                ; preds = %0, %1
  br label %1
}

declare extern_weak dso_local arm_aapcscc void @SecureFault_Handler() #5

; Function Attrs: nounwind
define weak dso_local arm_aapcscc void @am_default_isr() #0 {
  br label %1

1:                                                ; preds = %0, %1
  br label %1
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nofree norecurse nounwind writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { naked noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #6 = { nounwind }

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
!10 = !{!4, !5, i64 0}
!11 = !{!4, !9, i64 6}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.count", i32 3}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{i32 12926, i32 12968, i32 13014}
!17 = !{i32 13092}
!18 = !{i32 13445, i32 13488, i32 13526, i32 13564, i32 13589, i32 13630, i32 13671, i32 13708}
!19 = !{i32 13797, i32 13835, i32 13872, i32 13905, i32 13930, i32 13967, i32 14000, i32 14043}
!20 = !{i32 14154}
!21 = !{i32 14261}
