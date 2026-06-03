; ModuleID = 'filters/video/source.c'
source_filename = "filters/video/source.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], void (i8*, i32, i8*, i8*)*, i8*, i32, i32, i8*, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, void (i8*)*, void (%struct.x264_t*, %struct.x264_nal_t*, i8*)*, i8* }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, i32, float, i32, i32, i32, i8*, i32, i8*, float, float, float, %struct.x264_zone_t*, i32, i8* }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, %struct.x264_param_t* }
%struct.anon.2 = type { i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.anon.4 = type { i32, i32, i32 }
%struct.x264_t = type opaque
%struct.x264_nal_t = type { i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.cli_pic_t = type { %struct.cli_image_t, i64, i64, i8* }
%struct.cli_image_t = type { i32, i32, i32, i32, [4 x i8*], [4 x i32] }
%struct.cli_vid_filter_t = type { i8*, void (i32)*, {}*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }
%struct.cli_input_t = type { i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)*, i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)*, i32 (%struct.cli_pic_t*, i8*, i32)*, i32 (%struct.cli_pic_t*, i8*)*, void (%struct.cli_pic_t*, i8*)*, i32 (i8*)* }
%struct.cli_input_opt_t = type { i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@source_filter = hidden local_unnamed_addr global { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), void (i32)* null, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)* @init, i32 (i8*, %struct.cli_pic_t*, i32)* @get_frame, i32 (i8*, %struct.cli_pic_t*, i32)* @release_frame, void (i8*)* @free_filter, %struct.cli_vid_filter_t* null }, align 4
@cli_input = external dso_local local_unnamed_addr global %struct.cli_input_t, align 4

; Function Attrs: nounwind
define internal i32 @init(i8** nocapture %handle, %struct.cli_vid_filter_t* nocapture %filter, %struct.video_info_t* nocapture readonly %info, %struct.x264_param_t* nocapture readnone %param, i8* nocapture readnone %opt_string) #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(80) i8* @calloc(i32 1, i32 80) #4
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cur_frame = getelementptr inbounds i8, i8* %call, i32 76
  %0 = bitcast i8* %cur_frame to i32*
  store i32 -1, i32* %0, align 4, !tbaa !2
  %1 = load i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)*, i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @cli_input, i32 0, i32 1), align 4, !tbaa !11
  %pic = bitcast i8* %call to %struct.cli_pic_t*
  %2 = load i8*, i8** %handle, align 4, !tbaa !13
  %csp = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 0
  %3 = load i32, i32* %csp, align 4, !tbaa !14
  %width = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  %4 = load i32, i32* %width, align 4, !tbaa !16
  %height = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 5
  %5 = load i32, i32* %height, align 4, !tbaa !17
  %call1 = tail call i32 %1(%struct.cli_pic_t* nonnull %pic, i8* %2, i32 %3, i32 %4, i32 %5) #4
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = bitcast i8** %handle to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !13
  %hin = getelementptr inbounds i8, i8* %call, i32 72
  %8 = bitcast i8* %hin to i32*
  store i32 %7, i32* %8, align 8, !tbaa !18
  store i8* %call, i8** %handle, align 4, !tbaa !13
  %9 = bitcast %struct.cli_vid_filter_t* %filter to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %9, i8* nonnull align 4 dereferenceable(28) bitcast ({ i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }* @source_filter to i8*), i32 28, i1 false), !tbaa.struct !19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @get_frame(i8* %handle, %struct.cli_pic_t* nocapture %output, i32 %frame) #0 {
entry:
  %cur_frame = getelementptr inbounds i8, i8* %handle, i32 76
  %0 = bitcast i8* %cur_frame to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !2
  %cmp = icmp slt i32 %1, %frame
  br i1 %cmp, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32 (%struct.cli_pic_t*, i8*, i32)*, i32 (%struct.cli_pic_t*, i8*, i32)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @cli_input, i32 0, i32 2), align 4, !tbaa !20
  %pic = bitcast i8* %handle to %struct.cli_pic_t*
  %hin = getelementptr inbounds i8, i8* %handle, i32 72
  %3 = bitcast i8* %hin to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !18
  %call = tail call i32 %2(%struct.cli_pic_t* %pic, i8* %4, i32 %frame) #4
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 %frame, i32* %0, align 4, !tbaa !2
  %5 = bitcast %struct.cli_pic_t* %output to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(72) %5, i8* nonnull align 8 dereferenceable(72) %handle, i32 72, i1 false), !tbaa.struct !21
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @release_frame(i8* %handle, %struct.cli_pic_t* nocapture readnone %pic, i32 %frame) #0 {
entry:
  %0 = load i32 (%struct.cli_pic_t*, i8*)*, i32 (%struct.cli_pic_t*, i8*)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @cli_input, i32 0, i32 3), align 4, !tbaa !25
  %tobool = icmp eq i32 (%struct.cli_pic_t*, i8*)* %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pic1 = bitcast i8* %handle to %struct.cli_pic_t*
  %hin = getelementptr inbounds i8, i8* %handle, i32 72
  %1 = bitcast i8* %hin to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !18
  %call = tail call i32 %0(%struct.cli_pic_t* %pic1, i8* %2) #4
  %tobool2 = icmp eq i32 %call, 0
  br i1 %tobool2, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal void @free_filter(i8* %handle) #0 {
entry:
  %0 = load void (%struct.cli_pic_t*, i8*)*, void (%struct.cli_pic_t*, i8*)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @cli_input, i32 0, i32 4), align 4, !tbaa !26
  %pic = bitcast i8* %handle to %struct.cli_pic_t*
  %hin = getelementptr inbounds i8, i8* %handle, i32 72
  %1 = bitcast i8* %hin to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !18
  tail call void %0(%struct.cli_pic_t* %pic, i8* %2) #4
  %3 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.cli_input_t, %struct.cli_input_t* @cli_input, i32 0, i32 5), align 4, !tbaa !27
  %4 = load i8*, i8** %1, align 8, !tbaa !18
  %call = tail call i32 %3(i8* %4) #4
  tail call void @free(i8* %handle) #4
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !6, i64 76}
!3 = !{!"", !4, i64 0, !10, i64 72, !6, i64 76}
!4 = !{!"", !5, i64 0, !9, i64 48, !9, i64 56, !10, i64 64}
!5 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 32}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long long", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 4}
!12 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!13 = !{!10, !10, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56}
!16 = !{!15, !6, i64 16}
!17 = !{!15, !6, i64 20}
!18 = !{!3, !10, i64 72}
!19 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13, i64 24, i64 4, !13}
!20 = !{!12, !10, i64 8}
!21 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22, i64 16, i64 16, !23, i64 32, i64 16, !23, i64 48, i64 8, !24, i64 56, i64 8, !24, i64 64, i64 4, !13}
!22 = !{!6, !6, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!12, !10, i64 12}
!26 = !{!12, !10, i64 16}
!27 = !{!12, !10, i64 20}
