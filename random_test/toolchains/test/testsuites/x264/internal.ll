; ModuleID = 'filters/video/internal.c'
source_filename = "filters/video/internal.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_cli_csp_t = type { i8*, i32, [4 x float], [4 x float], i32, i32 }
%struct.cli_pic_t = type { %struct.cli_image_t, i64, i64, i8* }
%struct.cli_image_t = type { i32, i32, i32, i32, [4 x i8*], [4 x i32] }

@.str = private unnamed_addr constant [5 x i8] c"x264\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid colorspace arg %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"incompatible frame properties\0A\00", align 1
@x264_cli_csps = external dso_local local_unnamed_addr constant [0 x %struct.x264_cli_csp_t], align 4

; Function Attrs: nounwind
define hidden void @x264_cli_plane_copy(i8* nocapture %dst, i32 %i_dst, i8* nocapture readonly %src, i32 %i_src, i32 %w, i32 %h) local_unnamed_addr #0 {
entry:
  %tobool4 = icmp eq i32 %h, 0
  br i1 %tobool4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %h.addr.07 = phi i32 [ %dec, %while.body ], [ %h, %entry ]
  %dst.addr.06 = phi i8* [ %add.ptr, %while.body ], [ %dst, %entry ]
  %src.addr.05 = phi i8* [ %add.ptr1, %while.body ], [ %src, %entry ]
  %dec = add nsw i32 %h.addr.07, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %dst.addr.06, i8* align 1 %src.addr.05, i32 %w, i1 false)
  %add.ptr = getelementptr inbounds i8, i8* %dst.addr.06, i32 %i_dst
  %add.ptr1 = getelementptr inbounds i8, i8* %src.addr.05, i32 %i_src
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind
define hidden i32 @x264_cli_pic_copy(%struct.cli_pic_t* nocapture %out, %struct.cli_pic_t* nocapture readonly %in) local_unnamed_addr #0 {
entry:
  %csp1 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %in, i32 0, i32 0, i32 0
  %0 = load i32, i32* %csp1, align 8, !tbaa !2
  %and = and i32 %0, 255
  %call = tail call i32 @x264_cli_csp_is_invalid(i32 %0) #3
  %tobool = icmp eq i32 %call, 0
  %1 = load i32, i32* %csp1, align 8, !tbaa !2
  br i1 %tobool, label %do.body6, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %1) #3
  br label %cleanup

do.body6:                                         ; preds = %entry
  %csp10 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 0, i32 0
  %2 = load i32, i32* %csp10, align 8, !tbaa !2
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %do.body6
  %height = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %in, i32 0, i32 0, i32 2
  %3 = load i32, i32* %height, align 8, !tbaa !10
  %height13 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 0, i32 2
  %4 = load i32, i32* %height13, align 8, !tbaa !10
  %cmp14 = icmp eq i32 %3, %4
  br i1 %cmp14, label %lor.lhs.false15, label %if.then20

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %in, i32 0, i32 0, i32 1
  %5 = load i32, i32* %width, align 4, !tbaa !11
  %width18 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 0, i32 1
  %6 = load i32, i32* %width18, align 4, !tbaa !11
  %cmp19 = icmp eq i32 %5, %6
  br i1 %cmp19, label %do.end23, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %do.body6
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %cleanup

do.end23:                                         ; preds = %lor.lhs.false15
  %duration = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %in, i32 0, i32 2
  %7 = load i64, i64* %duration, align 8, !tbaa !12
  %duration24 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 2
  store i64 %7, i64* %duration24, align 8, !tbaa !12
  %pts = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %in, i32 0, i32 1
  %8 = load i64, i64* %pts, align 8, !tbaa !13
  %pts25 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 1
  store i64 %8, i64* %pts25, align 8, !tbaa !13
  %opaque = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %in, i32 0, i32 3
  %9 = bitcast i8** %opaque to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !14
  %opaque26 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 3
  %11 = bitcast i8** %opaque26 to i32*
  store i32 %10, i32* %11, align 8, !tbaa !14
  %planes = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 0, i32 3
  %12 = load i32, i32* %planes, align 4, !tbaa !15
  %cmp2891 = icmp sgt i32 %12, 0
  br i1 %cmp2891, label %for.body, label %cleanup

for.body:                                         ; preds = %do.end23, %x264_cli_plane_copy.exit.for.body_crit_edge
  %13 = phi i32 [ %.pre94, %x264_cli_plane_copy.exit.for.body_crit_edge ], [ %1, %do.end23 ]
  %14 = phi i32 [ %.pre93, %x264_cli_plane_copy.exit.for.body_crit_edge ], [ %5, %do.end23 ]
  %15 = phi i32 [ %.pre, %x264_cli_plane_copy.exit.for.body_crit_edge ], [ %3, %do.end23 ]
  %i.092 = phi i32 [ %inc, %x264_cli_plane_copy.exit.for.body_crit_edge ], [ 0, %do.end23 ]
  %conv = sitofp i32 %15 to float
  %arrayidx33 = getelementptr inbounds [0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and, i32 3, i32 %i.092
  %16 = load float, float* %arrayidx33, align 4, !tbaa !16
  %mul = fmul fast float %16, %conv
  %conv34 = fptosi float %mul to i32
  %conv38 = sitofp i32 %14 to float
  %arrayidx41 = getelementptr inbounds [0 x %struct.x264_cli_csp_t], [0 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and, i32 2, i32 %i.092
  %17 = load float, float* %arrayidx41, align 4, !tbaa !16
  %mul42 = fmul fast float %17, %conv38
  %conv43 = fptosi float %mul42 to i32
  %call46 = tail call i32 @x264_cli_csp_depth_factor(i32 %13) #3
  %mul47 = mul nsw i32 %call46, %conv43
  %arrayidx51 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 0, i32 5, i32 %i.092
  %18 = load i32, i32* %arrayidx51, align 4, !tbaa !18
  %arrayidx57 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %in, i32 0, i32 0, i32 5, i32 %i.092
  %19 = load i32, i32* %arrayidx57, align 4, !tbaa !18
  %tobool4.i = icmp eq i32 %conv34, 0
  br i1 %tobool4.i, label %x264_cli_plane_copy.exit, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %for.body
  %arrayidx54 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %in, i32 0, i32 0, i32 4, i32 %i.092
  %20 = load i8*, i8** %arrayidx54, align 4, !tbaa !19
  %arrayidx49 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %out, i32 0, i32 0, i32 4, i32 %i.092
  %21 = load i8*, i8** %arrayidx49, align 4, !tbaa !19
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %h.addr.07.i = phi i32 [ %dec.i, %while.body.i ], [ %conv34, %while.body.i.preheader ]
  %dst.addr.06.i = phi i8* [ %add.ptr.i, %while.body.i ], [ %21, %while.body.i.preheader ]
  %src.addr.05.i = phi i8* [ %add.ptr1.i, %while.body.i ], [ %20, %while.body.i.preheader ]
  %dec.i = add nsw i32 %h.addr.07.i, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %dst.addr.06.i, i8* align 1 %src.addr.05.i, i32 %mul47, i1 false) #3
  %add.ptr.i = getelementptr inbounds i8, i8* %dst.addr.06.i, i32 %18
  %add.ptr1.i = getelementptr inbounds i8, i8* %src.addr.05.i, i32 %19
  %tobool.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.i, label %x264_cli_plane_copy.exit, label %while.body.i

x264_cli_plane_copy.exit:                         ; preds = %while.body.i, %for.body
  %inc = add nuw nsw i32 %i.092, 1
  %22 = load i32, i32* %planes, align 4, !tbaa !15
  %cmp28 = icmp slt i32 %inc, %22
  br i1 %cmp28, label %x264_cli_plane_copy.exit.for.body_crit_edge, label %cleanup

x264_cli_plane_copy.exit.for.body_crit_edge:      ; preds = %x264_cli_plane_copy.exit
  %.pre = load i32, i32* %height, align 8, !tbaa !10
  %.pre93 = load i32, i32* %width, align 4, !tbaa !11
  %.pre94 = load i32, i32* %csp1, align 8, !tbaa !2
  br label %for.body

cleanup:                                          ; preds = %x264_cli_plane_copy.exit, %do.end23, %if.then20, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then20 ], [ 0, %do.end23 ], [ 0, %x264_cli_plane_copy.exit ]
  ret i32 %retval.0
}

declare dso_local i32 @x264_cli_csp_is_invalid(i32) local_unnamed_addr #2

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @x264_cli_csp_depth_factor(i32) local_unnamed_addr #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !5, i64 0}
!3 = !{!"", !4, i64 0, !8, i64 48, !8, i64 56, !9, i64 64}
!4 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !6, i64 16, !6, i64 32}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"long long", !6, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!3, !5, i64 8}
!11 = !{!3, !5, i64 4}
!12 = !{!3, !8, i64 56}
!13 = !{!3, !8, i64 48}
!14 = !{!3, !9, i64 64}
!15 = !{!3, !5, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !6, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!9, !9, i64 0}
