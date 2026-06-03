; ModuleID = 'filters/video/resize.c'
source_filename = "filters/video/resize.c"
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

@.str = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@resize_filter = hidden local_unnamed_addr global { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), void (i32)* null, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)* @init, i32 (i8*, %struct.cli_pic_t*, i32)* null, i32 (i8*, %struct.cli_pic_t*, i32)* null, void (i8*)* null, %struct.cli_vid_filter_t* null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"normcsp\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"not compiled with swscale support\0A\00", align 1

; Function Attrs: nounwind
define internal i32 @init(i8** nocapture readnone %handle, %struct.cli_vid_filter_t* nocapture readnone %filter, %struct.video_info_t* nocapture readonly %info, %struct.x264_param_t* nocapture readonly %param, i8* readonly %opt_string) #0 {
entry:
  %tobool = icmp eq i8* %opt_string, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %csp.i = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 0
  %0 = load i32, i32* %csp.i, align 4, !tbaa !2
  %i_csp.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 9
  %1 = load i32, i32* %i_csp.i, align 4, !tbaa !7
  %cmp.i = icmp ne i32 %0, %1
  %width.i = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  %2 = load i32, i32* %width.i, align 4, !tbaa !18
  %i_width.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 7
  %3 = load i32, i32* %i_width.i, align 4, !tbaa !19
  %cmp1.i = icmp ne i32 %2, %3
  %or321.i = or i1 %cmp.i, %cmp1.i
  %height.i = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 5
  %4 = load i32, i32* %height.i, align 4, !tbaa !20
  %i_height.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 8
  %5 = load i32, i32* %i_height.i, align 8, !tbaa !21
  %cmp4.i = icmp ne i32 %4, %5
  %or622.i = or i1 %or321.i, %cmp4.i
  %fullrange.i = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 3
  %6 = load i32, i32* %fullrange.i, align 4, !tbaa !22
  %b_fullrange.i = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 14, i32 4
  %7 = load i32, i32* %b_fullrange.i, align 8, !tbaa !23
  %cmp7.i = icmp ne i32 %6, %7
  %or923.i = or i1 %or622.i, %cmp7.i
  %or9.i = zext i1 %or923.i to i32
  br label %do.body

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* nonnull %opt_string, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #3
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.then7

if.then3:                                         ; preds = %if.else
  %csp = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 0
  %8 = load i32, i32* %csp, align 4, !tbaa !2
  %and = and i32 %8, 16384
  br label %do.body

do.body:                                          ; preds = %if.then, %if.then3
  %ret.0 = phi i32 [ %and, %if.then3 ], [ %or9.i, %if.then ]
  %tobool6 = icmp eq i32 %ret.0, 0
  br i1 %tobool6, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.else, %do.body
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then7
  %retval.0 = phi i32 [ -1, %if.then7 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #1

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 36}
!8 = !{!"x264_param_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !9, i64 56, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !10, i64 180, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !5, i64 312, !5, i64 376, !5, i64 440, !10, i64 504, !10, i64 508, !4, i64 512, !4, i64 516, !10, i64 520, !11, i64 524, !13, i64 632, !14, i64 748, !4, i64 764, !15, i64 768, !17, i64 824, !4, i64 836, !4, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !4, i64 860, !4, i64 864, !4, i64 868, !4, i64 872, !4, i64 876, !4, i64 880, !4, i64 884, !4, i64 888, !4, i64 892, !4, i64 896, !4, i64 900, !10, i64 904, !10, i64 908, !4, i64 912, !4, i64 916, !4, i64 920, !4, i64 924, !4, i64 928, !10, i64 932, !10, i64 936, !10, i64 940}
!9 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !12, i64 72, !12, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !5, i64 92, !4, i64 100, !4, i64 104}
!12 = !{!"float", !5, i64 0}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !4, i64 36, !4, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !4, i64 56, !4, i64 60, !12, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !4, i64 84, !10, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !10, i64 104, !4, i64 108, !10, i64 112}
!14 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!15 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !16, i64 40, !16, i64 48}
!16 = !{!"long long", !5, i64 0}
!17 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!18 = !{!3, !4, i64 16}
!19 = !{!8, !4, i64 28}
!20 = !{!3, !4, i64 20}
!21 = !{!8, !4, i64 32}
!22 = !{!3, !4, i64 12}
!23 = !{!8, !4, i64 72}
