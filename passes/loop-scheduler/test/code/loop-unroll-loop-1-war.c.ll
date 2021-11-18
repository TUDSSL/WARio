; ModuleID = 'loop-1-war.c.ll'
source_filename = "loop-1-war.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-unknown-none-gnu"

@war_1 = common dso_local global i32 0, align 4

; Function Attrs: nounwind
define dso_local arm_aapcscc i32 @main() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.01 = phi i32 [ undef, %0 ], [ %9, %10 ], !lws_unroll_2 !3, !lws_unrolled_loop !3
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %exitcond = icmp ne i32 %.0, 10
  br i1 %exitcond, label %3, label %2

2:                                                ; preds = %5, %1
  %.01.lcssa = phi i32 [ %.01, %1 ], [ %4, %5 ]
  br label %7

3:                                                ; preds = %1
  %4 = load i32, i32* @war_1, align 4, !tbaa !4
  store i32 1, i32* @war_1, align 4, !tbaa !4
  br label %5

5:                                                ; preds = %3
  %6 = add nuw nsw i32 %.0, 1
  %exitcond.1 = icmp ne i32 %6, 10
  br i1 %exitcond.1, label %8, label %2

7:                                                ; preds = %2
  ret i32 %.01.lcssa

8:                                                ; preds = %5
  %9 = load i32, i32* @war_1, align 4, !tbaa !4
  store i32 1, i32* @war_1, align 4, !tbaa !4
  br label %10

10:                                               ; preds = %8
  %11 = add nuw nsw i32 %6, 1
  br label %1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp2d16,-vfp2d16sp,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 9.0.1 (git@github.com:iiKoe/intermittent-compiler-collection.git af1caf2de6fe76757474fd2ca382d573c8b029d7)"}
!3 = !{!"loop_write_scheduler"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
