; ModuleID = 'filters/video/select_every.c'
source_filename = "filters/video/select_every.c"
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

@.str = private unnamed_addr constant [13 x i8] c"select_every\00", align 1
@select_every_filter = hidden local_unnamed_addr global { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), void (i32)* @help, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)* @init, i32 (i8*, %struct.cli_pic_t*, i32)* @get_frame, i32 (i8*, %struct.cli_pic_t*, i32)* @release_frame, void (i8*)* @free_filter, %struct.cli_vid_filter_t* null }, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid step `%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"invalid offset `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"max pattern size %d reached\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"no step size provided\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"no offsets supplied\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cache_%d\00", align 1
@str = private unnamed_addr constant [38 x i8] c"      select_every:step,offset1[,...]\00", align 1
@str.10 = private unnamed_addr constant [237 x i8] c"            apply a selection pattern to input frames\0A            step: the number of frames in the pattern\0A            offsets: the offset into the step to select a frame\0A            see: http://avisynth.nl/index.php/Select#SelectEvery\00", align 1

; Function Attrs: nofree nounwind
define internal void @help(i32 %longhelp) #0 {
entry:
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @str, i32 0, i32 0))
  %tobool = icmp eq i32 %longhelp, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %puts2 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([237 x i8], [237 x i8]* @str.10, i32 0, i32 0))
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind
define internal i32 @init(i8** %handle, %struct.cli_vid_filter_t* %filter, %struct.video_info_t* %info, %struct.x264_param_t* %param, i8* %opt_string) #1 {
entry:
  %offsets = alloca [100 x i32], align 4
  %saveptr = alloca i8*, align 4
  %name = alloca [20 x i8], align 1
  %call = tail call noalias dereferenceable_or_null(56) i8* @malloc(i32 56) #7
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup124, label %if.end

if.end:                                           ; preds = %entry
  %pattern_len = getelementptr inbounds i8, i8* %call, i32 36
  %0 = bitcast i8* %pattern_len to i32*
  store i32 0, i32* %0, align 4, !tbaa !2
  %step_size = getelementptr inbounds i8, i8* %call, i32 40
  %1 = bitcast i8* %step_size to i32*
  store i32 0, i32* %1, align 8, !tbaa !10
  %2 = bitcast [100 x i32]* %offsets to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %2) #7
  %3 = bitcast i8** %saveptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  store i8* null, i8** %saveptr, align 4, !tbaa !11
  %call1209 = call i8* @strtok_r(i8* %opt_string, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** nonnull %saveptr) #7
  %tobool2210 = icmp eq i8* %call1209, null
  br i1 %tobool2210, label %do.body30.thread, label %for.body.preheader

do.body30.thread:                                 ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  br label %if.then33

for.body.preheader:                               ; preds = %if.end
  %phitmp = icmp eq i8* %opt_string, null
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %call1212 = phi i8* [ %call1, %for.inc ], [ %call1209, %for.body.preheader ]
  %p.0211 = phi i1 [ true, %for.inc ], [ %phitmp, %for.body.preheader ]
  %call3 = call i32 @x264_otoi(i8* nonnull %call1212, i32 -1) #7
  br i1 %p.0211, label %do.body10, label %do.body

do.body:                                          ; preds = %for.body
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %if.then6, label %do.end

if.then6:                                         ; preds = %do.body
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* nonnull %call1212) #7
  br label %cleanup26

do.end:                                           ; preds = %do.body
  store i32 %call3, i32* %1, align 8, !tbaa !10
  br label %for.inc

do.body10:                                        ; preds = %for.body
  %cmp11 = icmp slt i32 %call3, 0
  br i1 %cmp11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body10
  %4 = load i32, i32* %1, align 8, !tbaa !10
  %cmp13 = icmp slt i32 %call3, %4
  br i1 %cmp13, label %do.body18, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %do.body10
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* nonnull %call1212) #7
  br label %cleanup26

do.body18:                                        ; preds = %lor.lhs.false
  %5 = load i32, i32* %0, align 4, !tbaa !2
  %cmp20 = icmp sgt i32 %5, 99
  br i1 %cmp20, label %if.then21, label %do.end24

if.then21:                                        ; preds = %do.body18
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 100) #7
  br label %cleanup26

do.end24:                                         ; preds = %do.body18
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %0, align 4, !tbaa !2
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %offsets, i32 0, i32 %5
  store i32 %call3, i32* %arrayidx, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.end24
  %call1 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** nonnull %saveptr) #7
  %tobool2 = icmp eq i8* %call1, null
  br i1 %tobool2, label %do.body30, label %for.body

cleanup26:                                        ; preds = %if.then6, %if.then14, %if.then21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  br label %cleanup123

do.body30:                                        ; preds = %for.inc
  %.pre = load i32, i32* %1, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  %tobool32 = icmp eq i32 %.pre, 0
  br i1 %tobool32, label %if.then33, label %do.body37

if.then33:                                        ; preds = %do.body30.thread, %do.body30
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0)) #7
  br label %cleanup123

do.body37:                                        ; preds = %do.body30
  %6 = load i32, i32* %0, align 4, !tbaa !2
  %tobool39 = icmp eq i32 %6, 0
  br i1 %tobool39, label %if.then40, label %do.end43

if.then40:                                        ; preds = %do.body37
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0)) #7
  br label %cleanup123

do.end43:                                         ; preds = %do.body37
  %mul = shl i32 %6, 2
  %call45 = call noalias i8* @malloc(i32 %mul) #7
  %pattern = getelementptr inbounds i8, i8* %call, i32 32
  %7 = bitcast i8* %pattern to i8**
  store i8* %call45, i8** %7, align 8, !tbaa !13
  %tobool47 = icmp eq i8* %call45, null
  br i1 %tobool47, label %cleanup123, label %if.end49

if.end49:                                         ; preds = %do.end43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 %call45, i8* nonnull align 4 %2, i32 %mul, i1 false)
  br label %for.cond55

for.cond55:                                       ; preds = %if.end76, %if.end49
  %max_rewind.0 = phi i32 [ 0, %if.end49 ], [ %max_rewind.1, %if.end76 ]
  %min.0 = phi i32 [ %.pre, %if.end49 ], [ %min.0., %if.end76 ]
  %i.0.in = phi i32 [ %6, %if.end49 ], [ %i.0, %if.end76 ]
  %i.0 = add nsw i32 %i.0.in, -1
  %cmp56 = icmp sgt i32 %i.0.in, 0
  br i1 %cmp56, label %for.body58, label %cleanup82

for.body58:                                       ; preds = %for.cond55
  %arrayidx59 = getelementptr inbounds [100 x i32], [100 x i32]* %offsets, i32 0, i32 %i.0
  %8 = load i32, i32* %arrayidx59, align 4, !tbaa !12
  %cmp60 = icmp slt i32 %min.0, %8
  %min.0. = select i1 %cmp60, i32 %min.0, i32 %8
  %tobool62 = icmp eq i32 %i.0, 0
  br i1 %tobool62, label %if.end76, label %if.then63

if.then63:                                        ; preds = %for.body58
  %sub64 = add nsw i32 %i.0.in, -2
  %arrayidx65 = getelementptr inbounds [100 x i32], [100 x i32]* %offsets, i32 0, i32 %sub64
  %9 = load i32, i32* %arrayidx65, align 4, !tbaa !12
  %sub66 = sub nsw i32 %9, %min.0.
  %add = add nsw i32 %sub66, 1
  %cmp67 = icmp sgt i32 %max_rewind.0, %add
  %max_rewind.0.add = select i1 %cmp67, i32 %max_rewind.0, i32 %add
  br label %if.end76

if.end76:                                         ; preds = %for.body58, %if.then63
  %max_rewind.1 = phi i32 [ %max_rewind.0.add, %if.then63 ], [ %max_rewind.0, %for.body58 ]
  %cmp78 = icmp eq i32 %max_rewind.1, %.pre
  br i1 %cmp78, label %cleanup82, label %for.cond55

cleanup82:                                        ; preds = %if.end76, %for.cond55
  %max_rewind.2 = phi i32 [ %max_rewind.0, %for.cond55 ], [ %.pre, %if.end76 ]
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #7
  %i_bitdepth = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 10
  %11 = load i32, i32* %i_bitdepth, align 8, !tbaa !14
  %call85 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %10, i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %11) #7
  %12 = inttoptr i32 %max_rewind.2 to i8*
  %call87 = call i32 @x264_init_vid_filter(i8* nonnull %10, i8** %handle, %struct.cli_vid_filter_t* %filter, %struct.video_info_t* %info, %struct.x264_param_t* %param, i8* %12) #7
  %tobool88 = icmp eq i32 %call87, 0
  br i1 %tobool88, label %if.end90, label %cleanup120

if.end90:                                         ; preds = %cleanup82
  %cmp93 = icmp eq i32 %.pre, %6
  br i1 %cmp93, label %if.end117, label %if.then94

if.then94:                                        ; preds = %if.end90
  %num_frames = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 7
  %13 = load i32, i32* %num_frames, align 4, !tbaa !23
  %conv = sext i32 %13 to i64
  %conv96 = sext i32 %6 to i64
  %mul97 = mul nsw i64 %conv, %conv96
  %conv99 = sext i32 %.pre to i64
  %div = udiv i64 %mul97, %conv99
  %conv100 = trunc i64 %div to i32
  store i32 %conv100, i32* %num_frames, align 4, !tbaa !23
  %fps_den = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 2
  %14 = load i32, i32* %fps_den, align 4, !tbaa !25
  %mul103 = mul i32 %14, %.pre
  store i32 %mul103, i32* %fps_den, align 4, !tbaa !25
  %fps_num = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 1
  %15 = load i32, i32* %fps_num, align 4, !tbaa !26
  %mul105 = mul i32 %15, %6
  store i32 %mul105, i32* %fps_num, align 4, !tbaa !26
  call void @x264_reduce_fraction(i32* nonnull %fps_num, i32* nonnull %fps_den) #7
  %vfr = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 14
  %16 = load i32, i32* %vfr, align 4, !tbaa !27
  %tobool108 = icmp eq i32 %16, 0
  br i1 %tobool108, label %if.end117, label %if.then109

if.then109:                                       ; preds = %if.then94
  %17 = load i32, i32* %0, align 4, !tbaa !2
  %timebase_den = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 13
  %18 = load i32, i32* %timebase_den, align 4, !tbaa !28
  %mul111 = mul i32 %18, %17
  store i32 %mul111, i32* %timebase_den, align 4, !tbaa !28
  %19 = load i32, i32* %1, align 8, !tbaa !10
  %timebase_num = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 12
  %20 = load i32, i32* %timebase_num, align 4, !tbaa !29
  %mul113 = mul i32 %20, %19
  store i32 %mul113, i32* %timebase_num, align 4, !tbaa !29
  call void @x264_reduce_fraction(i32* nonnull %timebase_num, i32* nonnull %timebase_den) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then94, %if.end90, %if.then109
  %pts = getelementptr inbounds i8, i8* %call, i32 48
  %21 = bitcast i8* %pts to i64*
  store i64 0, i64* %21, align 8, !tbaa !30
  %vfr118 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 14
  %22 = load i32, i32* %vfr118, align 4, !tbaa !27
  %vfr119 = getelementptr inbounds i8, i8* %call, i32 44
  %23 = bitcast i8* %vfr119 to i32*
  store i32 %22, i32* %23, align 4, !tbaa !31
  %prev_filter = getelementptr inbounds i8, i8* %call, i32 4
  %24 = bitcast %struct.cli_vid_filter_t* %filter to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %prev_filter, i8* nonnull align 4 dereferenceable(28) %24, i32 28, i1 false), !tbaa.struct !32
  %25 = bitcast i8** %handle to i32*
  %26 = load i32, i32* %25, align 4, !tbaa !11
  %27 = bitcast i8* %call to i32*
  store i32 %26, i32* %27, align 8, !tbaa !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %24, i8* nonnull align 4 dereferenceable(28) bitcast ({ i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }* @select_every_filter to i8*), i32 28, i1 false), !tbaa.struct !32
  store i8* %call, i8** %handle, align 4, !tbaa !11
  br label %cleanup120

cleanup120:                                       ; preds = %cleanup82, %if.end117
  %retval.3 = phi i32 [ 0, %if.end117 ], [ -1, %cleanup82 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #7
  br label %cleanup123

cleanup123:                                       ; preds = %cleanup26, %do.end43, %cleanup120, %if.then40, %if.then33
  %retval.4 = phi i32 [ %retval.3, %cleanup120 ], [ -1, %if.then40 ], [ -1, %if.then33 ], [ -1, %cleanup26 ], [ -1, %do.end43 ]
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %2) #7
  br label %cleanup124

cleanup124:                                       ; preds = %entry, %cleanup123
  %retval.5 = phi i32 [ %retval.4, %cleanup123 ], [ -1, %entry ]
  ret i32 %retval.5
}

; Function Attrs: nounwind
define internal i32 @get_frame(i8* nocapture %handle, %struct.cli_pic_t* %output, i32 %frame) #1 {
entry:
  %pattern = getelementptr inbounds i8, i8* %handle, i32 32
  %0 = bitcast i8* %pattern to i32**
  %1 = load i32*, i32** %0, align 8, !tbaa !13
  %pattern_len = getelementptr inbounds i8, i8* %handle, i32 36
  %2 = bitcast i8* %pattern_len to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !2
  %div = sdiv i32 %frame, %3
  %4 = mul i32 %div, %3
  %rem.decomposed = sub i32 %frame, %4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 %rem.decomposed
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %step_size = getelementptr inbounds i8, i8* %handle, i32 40
  %6 = bitcast i8* %step_size to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !10
  %mul = mul nsw i32 %7, %div
  %add = add nsw i32 %mul, %5
  %get_frame = getelementptr inbounds i8, i8* %handle, i32 16
  %8 = bitcast i8* %get_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %9 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %8, align 4, !tbaa !34
  %prev_hnd = bitcast i8* %handle to i8**
  %10 = load i8*, i8** %prev_hnd, align 8, !tbaa !33
  %call = tail call i32 %9(i8* %10, %struct.cli_pic_t* %output, i32 %add) #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %vfr = getelementptr inbounds i8, i8* %handle, i32 44
  %11 = bitcast i8* %vfr to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !31
  %tobool2 = icmp eq i32 %12, 0
  br i1 %tobool2, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %pts = getelementptr inbounds i8, i8* %handle, i32 48
  %13 = bitcast i8* %pts to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !30
  %pts4 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 1
  store i64 %14, i64* %pts4, align 8, !tbaa !35
  %duration = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 2
  %15 = load i64, i64* %duration, align 8, !tbaa !38
  %add6 = add nsw i64 %15, %14
  store i64 %add6, i64* %13, align 8, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.end ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @release_frame(i8* nocapture readonly %handle, %struct.cli_pic_t* %pic, i32 %frame) #1 {
entry:
  %pattern = getelementptr inbounds i8, i8* %handle, i32 32
  %0 = bitcast i8* %pattern to i32**
  %1 = load i32*, i32** %0, align 8, !tbaa !13
  %pattern_len = getelementptr inbounds i8, i8* %handle, i32 36
  %2 = bitcast i8* %pattern_len to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !2
  %div = sdiv i32 %frame, %3
  %4 = mul i32 %div, %3
  %rem.decomposed = sub i32 %frame, %4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 %rem.decomposed
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %step_size = getelementptr inbounds i8, i8* %handle, i32 40
  %6 = bitcast i8* %step_size to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !10
  %mul = mul nsw i32 %7, %div
  %add = add nsw i32 %mul, %5
  %release_frame = getelementptr inbounds i8, i8* %handle, i32 20
  %8 = bitcast i8* %release_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %9 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %8, align 4, !tbaa !39
  %prev_hnd = bitcast i8* %handle to i8**
  %10 = load i8*, i8** %prev_hnd, align 8, !tbaa !33
  %call = tail call i32 %9(i8* %10, %struct.cli_pic_t* %pic, i32 %add) #7
  ret i32 %call
}

; Function Attrs: nounwind
define internal void @free_filter(i8* nocapture %handle) #1 {
entry:
  %free = getelementptr inbounds i8, i8* %handle, i32 24
  %0 = bitcast i8* %free to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 4, !tbaa !40
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 8, !tbaa !33
  tail call void %1(i8* %2) #7
  %pattern = getelementptr inbounds i8, i8* %handle, i32 32
  %3 = bitcast i8* %pattern to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !13
  tail call void @free(i8* %4) #7
  tail call void @free(i8* %handle) #7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i8* @strtok_r(i8*, i8* nocapture readonly, i8**) local_unnamed_addr #3

declare dso_local i32 @x264_otoi(i8*, i32) local_unnamed_addr #4

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

declare dso_local i32 @x264_init_vid_filter(i8*, i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*) local_unnamed_addr #4

declare dso_local void @x264_reduce_fraction(i32*, i32*) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #6

attributes #0 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !8, i64 36}
!3 = !{!"", !4, i64 0, !7, i64 4, !4, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !9, i64 48}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"cli_vid_filter_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24}
!8 = !{!"int", !5, i64 0}
!9 = !{!"long long", !5, i64 0}
!10 = !{!3, !8, i64 40}
!11 = !{!4, !4, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!3, !4, i64 32}
!14 = !{!15, !8, i64 40}
!15 = !{!"x264_param_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !16, i64 56, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !4, i64 180, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !5, i64 312, !5, i64 376, !5, i64 440, !4, i64 504, !4, i64 508, !8, i64 512, !8, i64 516, !4, i64 520, !17, i64 524, !19, i64 632, !20, i64 748, !8, i64 764, !21, i64 768, !22, i64 824, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !8, i64 856, !8, i64 860, !8, i64 864, !8, i64 868, !8, i64 872, !8, i64 876, !8, i64 880, !8, i64 884, !8, i64 888, !8, i64 892, !8, i64 896, !8, i64 900, !4, i64 904, !4, i64 908, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !4, i64 932, !4, i64 936, !4, i64 940}
!16 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!17 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !18, i64 72, !18, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !5, i64 92, !8, i64 100, !8, i64 104}
!18 = !{!"float", !5, i64 0}
!19 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !8, i64 36, !8, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !8, i64 56, !8, i64 60, !18, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !4, i64 80, !8, i64 84, !4, i64 88, !18, i64 92, !18, i64 96, !18, i64 100, !4, i64 104, !8, i64 108, !4, i64 112}
!20 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!21 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 40, !9, i64 48}
!22 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!23 = !{!24, !8, i64 28}
!24 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56}
!25 = !{!24, !8, i64 8}
!26 = !{!24, !8, i64 4}
!27 = !{!24, !8, i64 56}
!28 = !{!24, !8, i64 52}
!29 = !{!24, !8, i64 48}
!30 = !{!3, !9, i64 48}
!31 = !{!3, !8, i64 44}
!32 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 4, !11}
!33 = !{!3, !4, i64 0}
!34 = !{!3, !4, i64 16}
!35 = !{!36, !9, i64 48}
!36 = !{!"", !37, i64 0, !9, i64 48, !9, i64 56, !4, i64 64}
!37 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !5, i64 16, !5, i64 32}
!38 = !{!36, !9, i64 56}
!39 = !{!3, !4, i64 20}
!40 = !{!3, !4, i64 24}
