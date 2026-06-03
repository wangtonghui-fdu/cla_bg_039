; ModuleID = 'common/osdep.c'
source_filename = "common/osdep.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.timeval = type { i32, i32 }

; Function Attrs: nounwind
define hidden i64 @x264_mdate() local_unnamed_addr #0 {
entry:
  %tv_date = alloca %struct.timeval, align 4
  %0 = bitcast %struct.timeval* %tv_date to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %call = call i32 @gettimeofday(%struct.timeval* nonnull %tv_date, i8* null) #3
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv_date, i32 0, i32 0
  %1 = load i32, i32* %tv_sec, align 4, !tbaa !2
  %conv = sext i32 %1 to i64
  %mul = mul nsw i64 %conv, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv_date, i32 0, i32 1
  %2 = load i32, i32* %tv_usec, align 4, !tbaa !7
  %conv1 = sext i32 %2 to i64
  %add = add nsw i64 %mul, %conv1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i64 %add
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* nocapture, i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"timeval", !4, i64 0, !4, i64 4}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 4}
