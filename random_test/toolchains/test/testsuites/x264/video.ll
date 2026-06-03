; ModuleID = 'filters/video/video.c'
source_filename = "filters/video/video.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.cli_vid_filter_t = type { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }
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

@source_filter = external dso_local global %struct.cli_vid_filter_t, align 4
@first_filter = internal unnamed_addr global %struct.cli_vid_filter_t* null, align 4
@cache_8_filter = external dso_local global %struct.cli_vid_filter_t, align 4
@depth_8_filter = external dso_local global %struct.cli_vid_filter_t, align 4
@crop_filter = external dso_local global %struct.cli_vid_filter_t, align 4
@fix_vfr_pts_filter = external dso_local global %struct.cli_vid_filter_t, align 4
@resize_filter = external dso_local global %struct.cli_vid_filter_t, align 4
@select_every_filter = external dso_local global %struct.cli_vid_filter_t, align 4
@.str = private unnamed_addr constant [5 x i8] c"x264\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid filter `%s'\0A\00", align 1

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_register_vid_filters() local_unnamed_addr #0 {
entry:
  store %struct.cli_vid_filter_t* @source_filter, %struct.cli_vid_filter_t** @first_filter, align 4, !tbaa !2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %entry
  %filter_i.0.i = phi %struct.cli_vid_filter_t* [ @source_filter, %entry ], [ %0, %while.cond.i ]
  %next.i = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i, i32 0, i32 6
  %0 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** %next.i, align 4, !tbaa !6
  %tobool.i = icmp eq %struct.cli_vid_filter_t* %0, null
  br i1 %tobool.i, label %register_vid_filter.exit, label %while.cond.i

register_vid_filter.exit:                         ; preds = %while.cond.i
  %next.i.le = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i, i32 0, i32 6
  store %struct.cli_vid_filter_t* @cache_8_filter, %struct.cli_vid_filter_t** %next.i.le, align 4, !tbaa !6
  store %struct.cli_vid_filter_t* null, %struct.cli_vid_filter_t** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @cache_8_filter, i32 0, i32 6), align 4, !tbaa !6
  br label %while.cond.i28

while.cond.i28:                                   ; preds = %while.cond.i28, %register_vid_filter.exit
  %filter_i.0.i25 = phi %struct.cli_vid_filter_t* [ @source_filter, %register_vid_filter.exit ], [ %1, %while.cond.i28 ]
  %next.i26 = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i25, i32 0, i32 6
  %1 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** %next.i26, align 4, !tbaa !6
  %tobool.i27 = icmp eq %struct.cli_vid_filter_t* %1, null
  br i1 %tobool.i27, label %register_vid_filter.exit30, label %while.cond.i28

register_vid_filter.exit30:                       ; preds = %while.cond.i28
  %next.i26.le = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i25, i32 0, i32 6
  store %struct.cli_vid_filter_t* @depth_8_filter, %struct.cli_vid_filter_t** %next.i26.le, align 4, !tbaa !6
  store %struct.cli_vid_filter_t* null, %struct.cli_vid_filter_t** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @depth_8_filter, i32 0, i32 6), align 4, !tbaa !6
  br label %while.cond.i22

while.cond.i22:                                   ; preds = %while.cond.i22, %register_vid_filter.exit30
  %filter_i.0.i19 = phi %struct.cli_vid_filter_t* [ @source_filter, %register_vid_filter.exit30 ], [ %2, %while.cond.i22 ]
  %next.i20 = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i19, i32 0, i32 6
  %2 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** %next.i20, align 4, !tbaa !6
  %tobool.i21 = icmp eq %struct.cli_vid_filter_t* %2, null
  br i1 %tobool.i21, label %register_vid_filter.exit24, label %while.cond.i22

register_vid_filter.exit24:                       ; preds = %while.cond.i22
  %next.i20.le = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i19, i32 0, i32 6
  store %struct.cli_vid_filter_t* @crop_filter, %struct.cli_vid_filter_t** %next.i20.le, align 4, !tbaa !6
  store %struct.cli_vid_filter_t* null, %struct.cli_vid_filter_t** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @crop_filter, i32 0, i32 6), align 4, !tbaa !6
  br label %while.cond.i16

while.cond.i16:                                   ; preds = %while.cond.i16, %register_vid_filter.exit24
  %filter_i.0.i13 = phi %struct.cli_vid_filter_t* [ @source_filter, %register_vid_filter.exit24 ], [ %3, %while.cond.i16 ]
  %next.i14 = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i13, i32 0, i32 6
  %3 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** %next.i14, align 4, !tbaa !6
  %tobool.i15 = icmp eq %struct.cli_vid_filter_t* %3, null
  br i1 %tobool.i15, label %register_vid_filter.exit18, label %while.cond.i16

register_vid_filter.exit18:                       ; preds = %while.cond.i16
  %next.i14.le = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i13, i32 0, i32 6
  store %struct.cli_vid_filter_t* @fix_vfr_pts_filter, %struct.cli_vid_filter_t** %next.i14.le, align 4, !tbaa !6
  store %struct.cli_vid_filter_t* null, %struct.cli_vid_filter_t** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @fix_vfr_pts_filter, i32 0, i32 6), align 4, !tbaa !6
  br label %while.cond.i10

while.cond.i10:                                   ; preds = %while.cond.i10, %register_vid_filter.exit18
  %filter_i.0.i7 = phi %struct.cli_vid_filter_t* [ @source_filter, %register_vid_filter.exit18 ], [ %4, %while.cond.i10 ]
  %next.i8 = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i7, i32 0, i32 6
  %4 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** %next.i8, align 4, !tbaa !6
  %tobool.i9 = icmp eq %struct.cli_vid_filter_t* %4, null
  br i1 %tobool.i9, label %register_vid_filter.exit12, label %while.cond.i10

register_vid_filter.exit12:                       ; preds = %while.cond.i10
  %next.i8.le = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i7, i32 0, i32 6
  store %struct.cli_vid_filter_t* @resize_filter, %struct.cli_vid_filter_t** %next.i8.le, align 4, !tbaa !6
  store %struct.cli_vid_filter_t* null, %struct.cli_vid_filter_t** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @resize_filter, i32 0, i32 6), align 4, !tbaa !6
  br label %while.cond.i4

while.cond.i4:                                    ; preds = %while.cond.i4, %register_vid_filter.exit12
  %filter_i.0.i1 = phi %struct.cli_vid_filter_t* [ @source_filter, %register_vid_filter.exit12 ], [ %5, %while.cond.i4 ]
  %next.i2 = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i1, i32 0, i32 6
  %5 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** %next.i2, align 4, !tbaa !6
  %tobool.i3 = icmp eq %struct.cli_vid_filter_t* %5, null
  br i1 %tobool.i3, label %register_vid_filter.exit6, label %while.cond.i4

register_vid_filter.exit6:                        ; preds = %while.cond.i4
  %next.i2.le = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.0.i1, i32 0, i32 6
  store %struct.cli_vid_filter_t* @select_every_filter, %struct.cli_vid_filter_t** %next.i2.le, align 4, !tbaa !6
  store %struct.cli_vid_filter_t* null, %struct.cli_vid_filter_t** getelementptr inbounds (%struct.cli_vid_filter_t, %struct.cli_vid_filter_t* @select_every_filter, i32 0, i32 6), align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_init_vid_filter(i8* %name, i8** %handle, %struct.cli_vid_filter_t* %filter, %struct.video_info_t* %info, %struct.x264_param_t* %param, i8* %opt_string) local_unnamed_addr #1 {
entry:
  %filter_i.015 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** @first_filter, align 4, !tbaa !2
  %tobool16 = icmp eq %struct.cli_vid_filter_t* %filter_i.015, null
  br i1 %tobool16, label %if.then, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %filter_i.017 = phi %struct.cli_vid_filter_t* [ %filter_i.0, %while.body ], [ %filter_i.015, %entry ]
  %name1 = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.017, i32 0, i32 0
  %0 = load i8*, i8** %name1, align 4, !tbaa !8
  %call = tail call i32 @strcasecmp(i8* %name, i8* %0) #4
  %tobool2 = icmp eq i32 %call, 0
  br i1 %tobool2, label %do.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.017, i32 0, i32 6
  %filter_i.0 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** %next, align 4, !tbaa !2
  %tobool = icmp eq %struct.cli_vid_filter_t* %filter_i.0, null
  br i1 %tobool, label %if.then, label %land.rhs

if.then:                                          ; preds = %while.body, %entry
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %name) #5
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  %init = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.017, i32 0, i32 2
  %1 = load i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)** %init, align 4, !tbaa !9
  %call4 = tail call i32 %1(i8** %handle, %struct.cli_vid_filter_t* %filter, %struct.video_info_t* %info, %struct.x264_param_t* %param, i8* %opt_string) #5
  %tobool5 = icmp ne i32 %call4, 0
  %. = sext i1 %tobool5 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %., %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcasecmp(i8* nocapture, i8* nocapture) local_unnamed_addr #2

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
define hidden void @x264_vid_filter_help(i32 %longhelp) local_unnamed_addr #1 {
entry:
  %filter_i.07 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** @first_filter, align 4, !tbaa !2
  %tobool8 = icmp eq %struct.cli_vid_filter_t* %filter_i.07, null
  br i1 %tobool8, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  ret void

for.body:                                         ; preds = %entry, %for.inc
  %filter_i.09 = phi %struct.cli_vid_filter_t* [ %filter_i.0, %for.inc ], [ %filter_i.07, %entry ]
  %help = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.09, i32 0, i32 1
  %0 = load void (i32)*, void (i32)** %help, align 4, !tbaa !10
  %tobool1 = icmp eq void (i32)* %0, null
  br i1 %tobool1, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  tail call void %0(i32 %longhelp) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.cli_vid_filter_t, %struct.cli_vid_filter_t* %filter_i.09, i32 0, i32 6
  %filter_i.0 = load %struct.cli_vid_filter_t*, %struct.cli_vid_filter_t** %next, align 4, !tbaa !2
  %tobool = icmp eq %struct.cli_vid_filter_t* %filter_i.0, null
  br i1 %tobool, label %for.cond.cleanup, label %for.body
}

attributes #0 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 24}
!7 = !{!"cli_vid_filter_t", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24}
!8 = !{!7, !3, i64 0}
!9 = !{!7, !3, i64 8}
!10 = !{!7, !3, i64 4}
