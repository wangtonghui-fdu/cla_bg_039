; ModuleID = 'filters/video/fix_vfr_pts.c'
source_filename = "filters/video/fix_vfr_pts.c"
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

@.str = private unnamed_addr constant [12 x i8] c"fix_vfr_pts\00", align 1
@fix_vfr_pts_filter = hidden local_unnamed_addr global { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), void (i32)* null, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)* @init, i32 (i8*, %struct.cli_pic_t*, i32)* @get_frame, i32 (i8*, %struct.cli_pic_t*, i32)* @release_frame, void (i8*)* @free_filter, %struct.cli_vid_filter_t* null }, align 4

; Function Attrs: nounwind
define internal i32 @init(i8** nocapture %handle, %struct.cli_vid_filter_t* nocapture %filter, %struct.video_info_t* nocapture readonly %info, %struct.x264_param_t* nocapture readnone %param, i8* nocapture readnone %opt_string) #0 {
entry:
  %vfr = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 14
  %0 = load i32, i32* %vfr, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call noalias dereferenceable_or_null(208) i8* @calloc(i32 1, i32 208) #5
  %tobool1 = icmp eq i8* %call, null
  br i1 %tobool1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %holder_frame = getelementptr inbounds i8, i8* %call, i32 180
  %1 = bitcast i8* %holder_frame to i32*
  store i32 -1, i32* %1, align 4, !tbaa !7
  %2 = bitcast i8** %handle to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !14
  %4 = bitcast i8* %call to i32*
  store i32 %3, i32* %4, align 8, !tbaa !15
  %prev_filter = getelementptr inbounds i8, i8* %call, i32 4
  %5 = bitcast %struct.cli_vid_filter_t* %filter to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %prev_filter, i8* nonnull align 4 dereferenceable(28) %5, i32 28, i1 false), !tbaa.struct !16
  store i8* %call, i8** %handle, align 4, !tbaa !14
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %5, i8* nonnull align 4 dereferenceable(28) bitcast ({ i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }* @fix_vfr_pts_filter to i8*), i32 28, i1 false), !tbaa.struct !16
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ 0, %if.end3 ], [ -1, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
define internal i32 @get_frame(i8* %handle, %struct.cli_pic_t* nocapture %output, i32 %frame) #0 {
entry:
  %holder_frame = getelementptr inbounds i8, i8* %handle, i32 180
  %0 = bitcast i8* %holder_frame to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !7
  %cmp = icmp eq i32 %1, %frame
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %holder_ret = getelementptr inbounds i8, i8* %handle, i32 184
  %2 = bitcast i8* %holder_ret to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !17
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.end20, label %cleanup

if.else:                                          ; preds = %entry
  %cmp4 = icmp sgt i32 %1, 0
  %cmp6 = icmp slt i32 %1, %frame
  %or.cond = and i1 %cmp4, %cmp6
  br i1 %or.cond, label %land.lhs.true7, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  %.pre132 = bitcast i8* %handle to i8**
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.else
  %release_frame = getelementptr inbounds i8, i8* %handle, i32 20
  %4 = bitcast i8* %release_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %5 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %4, align 4, !tbaa !18
  %prev_hnd = bitcast i8* %handle to i8**
  %6 = load i8*, i8** %prev_hnd, align 8, !tbaa !15
  %holder = getelementptr inbounds i8, i8* %handle, i32 104
  %7 = bitcast i8* %holder to %struct.cli_pic_t*
  %call = tail call i32 %5(i8* %6, %struct.cli_pic_t* nonnull %7, i32 %1) #5
  %tobool9 = icmp eq i32 %call, 0
  br i1 %tobool9, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %land.lhs.true7
  %prev_hnd14.pre-phi = phi i8** [ %.pre132, %if.else.if.end11_crit_edge ], [ %prev_hnd, %land.lhs.true7 ]
  store i32 -1, i32* %0, align 4, !tbaa !7
  %get_frame = getelementptr inbounds i8, i8* %handle, i32 16
  %8 = bitcast i8* %get_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %9 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %8, align 4, !tbaa !19
  %10 = load i8*, i8** %prev_hnd14.pre-phi, align 8, !tbaa !15
  %holder15 = getelementptr inbounds i8, i8* %handle, i32 104
  %11 = bitcast i8* %holder15 to %struct.cli_pic_t*
  %call16 = tail call i32 %9(i8* %10, %struct.cli_pic_t* nonnull %11, i32 %frame) #5
  %tobool17 = icmp eq i32 %call16, 0
  br i1 %tobool17, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.then, %if.end11
  %holder21 = getelementptr inbounds i8, i8* %handle, i32 104
  %12 = bitcast i8* %holder21 to %struct.cli_pic_t*
  %duration = getelementptr inbounds i8, i8* %handle, i32 160
  %13 = bitcast i8* %duration to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !20
  %tobool22 = icmp eq i64 %14, 0
  br i1 %tobool22, label %if.then23, label %if.end76

if.then23:                                        ; preds = %if.end20
  %buffer_allocated = getelementptr inbounds i8, i8* %handle, i32 176
  %15 = bitcast i8* %buffer_allocated to i32*
  %16 = load i32, i32* %15, align 8, !tbaa !21
  %tobool24 = icmp eq i32 %16, 0
  br i1 %tobool24, label %if.then25, label %if.end36

if.then25:                                        ; preds = %if.then23
  %buffer = getelementptr inbounds i8, i8* %handle, i32 32
  %17 = bitcast i8* %buffer to %struct.cli_pic_t*
  %csp = bitcast i8* %holder21 to i32*
  %18 = load i32, i32* %csp, align 8, !tbaa !22
  %width = getelementptr inbounds i8, i8* %handle, i32 108
  %19 = bitcast i8* %width to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !23
  %height = getelementptr inbounds i8, i8* %handle, i32 112
  %21 = bitcast i8* %height to i32*
  %22 = load i32, i32* %21, align 8, !tbaa !24
  %call31 = tail call i32 @x264_cli_pic_alloc(%struct.cli_pic_t* nonnull %17, i32 %18, i32 %20, i32 %22) #5
  %tobool32 = icmp eq i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %cleanup

if.end34:                                         ; preds = %if.then25
  store i32 1, i32* %15, align 8, !tbaa !21
  br label %if.end36

if.end36:                                         ; preds = %if.then23, %if.end34
  %add = add nsw i32 %frame, 1
  store i32 %add, i32* %0, align 4, !tbaa !7
  %buffer38 = getelementptr inbounds i8, i8* %handle, i32 32
  %23 = bitcast i8* %buffer38 to %struct.cli_pic_t*
  %call40 = tail call i32 @x264_cli_pic_copy(%struct.cli_pic_t* nonnull %23, %struct.cli_pic_t* nonnull %12) #5
  %tobool41 = icmp eq i32 %call40, 0
  br i1 %tobool41, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end36
  %release_frame43 = getelementptr inbounds i8, i8* %handle, i32 20
  %24 = bitcast i8* %release_frame43 to i32 (i8*, %struct.cli_pic_t*, i32)**
  %25 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %24, align 4, !tbaa !18
  %prev_hnd44 = bitcast i8* %handle to i8**
  %26 = load i8*, i8** %prev_hnd44, align 8, !tbaa !15
  %call46 = tail call i32 %25(i8* %26, %struct.cli_pic_t* nonnull %12, i32 %frame) #5
  %tobool47 = icmp eq i32 %call46, 0
  br i1 %tobool47, label %if.end49, label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  %get_frame51 = getelementptr inbounds i8, i8* %handle, i32 16
  %27 = bitcast i8* %get_frame51 to i32 (i8*, %struct.cli_pic_t*, i32)**
  %28 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %27, align 4, !tbaa !19
  %29 = load i8*, i8** %prev_hnd44, align 8, !tbaa !15
  %30 = load i32, i32* %0, align 4, !tbaa !7
  %call55 = tail call i32 %28(i8* %29, %struct.cli_pic_t* nonnull %12, i32 %30) #5
  %holder_ret56 = getelementptr inbounds i8, i8* %handle, i32 184
  %31 = bitcast i8* %holder_ret56 to i32*
  store i32 %call55, i32* %31, align 8, !tbaa !17
  %tobool58 = icmp eq i32 %call55, 0
  br i1 %tobool58, label %if.then59, label %if.end49.if.end69_crit_edge

if.end49.if.end69_crit_edge:                      ; preds = %if.end49
  %last_duration70.phi.trans.insert = getelementptr inbounds i8, i8* %handle, i32 200
  %.phi.trans.insert = bitcast i8* %last_duration70.phi.trans.insert to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !tbaa !25
  br label %if.end69

if.then59:                                        ; preds = %if.end49
  %pts = getelementptr inbounds i8, i8* %handle, i32 152
  %32 = bitcast i8* %pts to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !26
  %pts62 = getelementptr inbounds i8, i8* %handle, i32 80
  %34 = bitcast i8* %pts62 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !27
  %sub = sub nsw i64 %33, %35
  %cmp63 = icmp sgt i64 %sub, 1
  %spec.select = select i1 %cmp63, i64 %sub, i64 1
  %last_duration = getelementptr inbounds i8, i8* %handle, i32 200
  %36 = bitcast i8* %last_duration to i64*
  store i64 %spec.select, i64* %36, align 8, !tbaa !25
  br label %if.end69

if.end69:                                         ; preds = %if.end49.if.end69_crit_edge, %if.then59
  %37 = phi i64 [ %.pre, %if.end49.if.end69_crit_edge ], [ %spec.select, %if.then59 ]
  %duration72 = getelementptr inbounds i8, i8* %handle, i32 88
  %38 = bitcast i8* %duration72 to i64*
  store i64 %37, i64* %38, align 8, !tbaa !28
  br label %if.end76

if.end76:                                         ; preds = %if.end20, %if.end69
  %holder21.sink = phi i8* [ %buffer38, %if.end69 ], [ %holder21, %if.end20 ]
  %39 = bitcast %struct.cli_pic_t* %output to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(72) %39, i8* nonnull align 8 dereferenceable(72) %holder21.sink, i32 72, i1 false)
  %pts77 = getelementptr inbounds i8, i8* %handle, i32 192
  %40 = bitcast i8* %pts77 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !29
  %pts78 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 1
  store i64 %41, i64* %pts78, align 8, !tbaa !30
  %duration79 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 2
  %42 = load i64, i64* %duration79, align 8, !tbaa !31
  %add81 = add nsw i64 %42, %41
  store i64 %add81, i64* %40, align 8, !tbaa !29
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %lor.lhs.false, %if.then25, %if.end11, %land.lhs.true7, %if.then, %if.end76
  %retval.0 = phi i32 [ 0, %if.end76 ], [ %3, %if.then ], [ -1, %land.lhs.true7 ], [ -1, %if.end11 ], [ -1, %if.then25 ], [ -1, %lor.lhs.false ], [ -1, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @release_frame(i8* nocapture readonly %handle, %struct.cli_pic_t* %pic, i32 %frame) #0 {
entry:
  %holder_frame = getelementptr inbounds i8, i8* %handle, i32 180
  %0 = bitcast i8* %holder_frame to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !7
  %sub = add nsw i32 %1, -1
  %cmp = icmp eq i32 %sub, %frame
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %release_frame = getelementptr inbounds i8, i8* %handle, i32 20
  %2 = bitcast i8* %release_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %3 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %2, align 4, !tbaa !18
  %prev_hnd = bitcast i8* %handle to i8**
  %4 = load i8*, i8** %prev_hnd, align 8, !tbaa !15
  %call = tail call i32 %3(i8* %4, %struct.cli_pic_t* %pic, i32 %frame) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal void @free_filter(i8* %handle) #0 {
entry:
  %free = getelementptr inbounds i8, i8* %handle, i32 24
  %0 = bitcast i8* %free to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 4, !tbaa !32
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 8, !tbaa !15
  tail call void %1(i8* %2) #5
  %buffer_allocated = getelementptr inbounds i8, i8* %handle, i32 176
  %3 = bitcast i8* %buffer_allocated to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !21
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %buffer = getelementptr inbounds i8, i8* %handle, i32 32
  %5 = bitcast i8* %buffer to %struct.cli_pic_t*
  tail call void @x264_cli_pic_clean(%struct.cli_pic_t* nonnull %5) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @free(i8* nonnull %handle) #5
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

declare dso_local i32 @x264_cli_pic_alloc(%struct.cli_pic_t*, i32, i32, i32) local_unnamed_addr #3

declare dso_local i32 @x264_cli_pic_copy(%struct.cli_pic_t*, %struct.cli_pic_t*) local_unnamed_addr #3

declare dso_local void @x264_cli_pic_clean(%struct.cli_pic_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 56}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 180}
!8 = !{!"", !9, i64 0, !10, i64 4, !11, i64 32, !11, i64 104, !4, i64 176, !4, i64 180, !4, i64 184, !13, i64 192, !13, i64 200}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"cli_vid_filter_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!11 = !{!"", !12, i64 0, !13, i64 48, !13, i64 56, !9, i64 64}
!12 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !5, i64 16, !5, i64 32}
!13 = !{!"long long", !5, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!8, !9, i64 0}
!16 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 24, i64 4, !14}
!17 = !{!8, !4, i64 184}
!18 = !{!8, !9, i64 20}
!19 = !{!8, !9, i64 16}
!20 = !{!8, !13, i64 160}
!21 = !{!8, !4, i64 176}
!22 = !{!8, !4, i64 104}
!23 = !{!8, !4, i64 108}
!24 = !{!8, !4, i64 112}
!25 = !{!8, !13, i64 200}
!26 = !{!8, !13, i64 152}
!27 = !{!8, !13, i64 80}
!28 = !{!8, !13, i64 88}
!29 = !{!8, !13, i64 192}
!30 = !{!11, !13, i64 48}
!31 = !{!11, !13, i64 56}
!32 = !{!8, !9, i64 24}
