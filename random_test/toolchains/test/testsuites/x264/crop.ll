; ModuleID = 'filters/video/crop.c'
source_filename = "filters/video/crop.c"
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
%struct.x264_cli_csp_t = type { i8*, i32, [4 x float], [4 x float], i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@crop_filter = hidden local_unnamed_addr global { i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), void (i32)* @help, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)* @init, i32 (i8*, %struct.cli_pic_t*, i32)* @get_frame, i32 (i8*, %struct.cli_pic_t*, i32)* @release_frame, void (i8*)* @free_filter, %struct.cli_vid_filter_t* null }, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"invalid csp %d\0A\00", align 1
@init.optlist = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"invalid output resolution %dx%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"cropping to %dx%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s crop value not specified\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"%s crop value `%s' is less than 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s crop value `%s' is not a multiple of %d\0A\00", align 1
@str = private unnamed_addr constant [33 x i8] c"      crop:left,top,right,bottom\00", align 1
@str.13 = private unnamed_addr constant [55 x i8] c"            removes pixels from the edges of the frame\00", align 1

; Function Attrs: nofree nounwind
define internal void @help(i32 %longhelp) #0 {
entry:
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str, i32 0, i32 0))
  %tobool = icmp eq i32 %longhelp, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %puts2 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @str.13, i32 0, i32 0))
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind
define internal i32 @init(i8** nocapture %handle, %struct.cli_vid_filter_t* nocapture %filter, %struct.video_info_t* nocapture %info, %struct.x264_param_t* nocapture readnone %param, i8* %opt_string) #1 {
entry:
  %csp = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 0
  %0 = load i32, i32* %csp, align 4, !tbaa !2
  %call = tail call i32 @x264_cli_csp_is_invalid(i32 %0) #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %csp, align 4, !tbaa !2
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %1) #7
  br label %return

do.end:                                           ; preds = %entry
  %call2 = tail call noalias dereferenceable_or_null(52) i8* @calloc(i32 1, i32 52) #7
  %tobool3 = icmp eq i8* %call2, null
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %do.end
  %2 = load i32, i32* %csp, align 4, !tbaa !2
  %call7 = tail call %struct.x264_cli_csp_t* @x264_cli_get_csp(i32 %2) #7
  %csp8 = getelementptr inbounds i8, i8* %call2, i32 48
  %3 = bitcast i8* %csp8 to %struct.x264_cli_csp_t**
  store %struct.x264_cli_csp_t* %call7, %struct.x264_cli_csp_t** %3, align 4, !tbaa !7
  %call9 = tail call i8** @x264_split_options(i8* %opt_string, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @init.optlist, i32 0, i32 0)) #7
  %tobool10 = icmp eq i8** %call9, null
  br i1 %tobool10, label %return, label %if.end12

if.end12:                                         ; preds = %if.end5
  %interlaced.i = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 6
  %call.i = tail call i8* @x264_get_option(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** nonnull %call9) #7
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %if.then.i, label %do.end.i

for.cond.i:                                       ; preds = %cond.end.i
  %call.1.i = tail call i8* @x264_get_option(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8** nonnull %call9) #7
  %tobool.1.i = icmp eq i8* %call.1.i, null
  br i1 %tobool.1.i, label %if.then.i, label %do.end.1.i

if.then.i:                                        ; preds = %for.cond.2.i, %for.cond.1.i, %for.cond.i, %if.end12
  %.lcssa.i = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %if.end12 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %for.cond.i ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %for.cond.1.i ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %for.cond.2.i ]
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* nonnull %.lcssa.i) #7
  br label %handle_opts.exit.thread

do.end.i:                                         ; preds = %if.end12
  %call2.i = tail call i32 @x264_otoi(i8* nonnull %call.i, i32 -1) #7
  %arrayidx3.i = getelementptr inbounds i8, i8* %call2, i32 32
  %4 = bitcast i8* %arrayidx3.i to i32*
  store i32 %call2.i, i32* %4, align 4, !tbaa !11
  %cmp7.i = icmp slt i32 %call2.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %cond.end.i

if.then8.i:                                       ; preds = %do.end.3.i, %do.end.2.i, %do.end.1.i, %do.end.i
  %.lcssa13.i = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %do.end.i ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %do.end.1.i ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %do.end.2.i ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %do.end.3.i ]
  %call.lcssa10.i = phi i8* [ %call.i, %do.end.i ], [ %call.1.i, %do.end.1.i ], [ %call.2.i, %do.end.2.i ], [ %call.3.i, %do.end.3.i ]
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i8* nonnull %.lcssa13.i, i8* nonnull %call.lcssa10.i) #7
  br label %handle_opts.exit.thread

cond.end.i:                                       ; preds = %do.end.i
  %mod_width.i = getelementptr inbounds %struct.x264_cli_csp_t, %struct.x264_cli_csp_t* %call7, i32 0, i32 4
  %5 = load i32, i32* %mod_width.i, align 4, !tbaa !12
  %rem.i = srem i32 %call2.i, %5
  %tobool18.i = icmp eq i32 %rem.i, 0
  br i1 %tobool18.i, label %for.cond.i, label %if.then19.i

if.then19.i:                                      ; preds = %cond.end.3.i, %cond.end.2.i, %cond.end.1.i, %cond.end.i
  %cond.lcssa.i = phi i32 [ %5, %cond.end.i ], [ %shl.1.i, %cond.end.1.i ], [ %10, %cond.end.2.i ], [ %shl.3.i, %cond.end.3.i ]
  %.lcssa14.i = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %cond.end.i ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %cond.end.1.i ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %cond.end.2.i ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), %cond.end.3.i ]
  %call.lcssa11.i = phi i8* [ %call.i, %cond.end.i ], [ %call.1.i, %cond.end.1.i ], [ %call.2.i, %cond.end.2.i ], [ %call.3.i, %cond.end.3.i ]
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i8* nonnull %.lcssa14.i, i8* nonnull %call.lcssa11.i, i32 %cond.lcssa.i) #7
  br label %handle_opts.exit.thread

do.end.1.i:                                       ; preds = %for.cond.i
  %call2.1.i = tail call i32 @x264_otoi(i8* nonnull %call.1.i, i32 -1) #7
  %arrayidx3.1.i = getelementptr inbounds i8, i8* %call2, i32 36
  %6 = bitcast i8* %arrayidx3.1.i to i32*
  store i32 %call2.1.i, i32* %6, align 4, !tbaa !11
  %cmp7.1.i = icmp slt i32 %call2.1.i, 0
  br i1 %cmp7.1.i, label %if.then8.i, label %cond.end.1.i

cond.end.1.i:                                     ; preds = %do.end.1.i
  %mod_height.1.i = getelementptr inbounds %struct.x264_cli_csp_t, %struct.x264_cli_csp_t* %call7, i32 0, i32 5
  %7 = load i32, i32* %mod_height.1.i, align 4, !tbaa !14
  %8 = load i32, i32* %interlaced.i, align 4, !tbaa !15
  %shl.1.i = shl i32 %7, %8
  %rem.1.i = srem i32 %call2.1.i, %shl.1.i
  %tobool18.1.i = icmp eq i32 %rem.1.i, 0
  br i1 %tobool18.1.i, label %for.cond.1.i, label %if.then19.i

for.cond.1.i:                                     ; preds = %cond.end.1.i
  %call.2.i = tail call i8* @x264_get_option(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8** nonnull %call9) #7
  %tobool.2.i = icmp eq i8* %call.2.i, null
  br i1 %tobool.2.i, label %if.then.i, label %do.end.2.i

do.end.2.i:                                       ; preds = %for.cond.1.i
  %call2.2.i = tail call i32 @x264_otoi(i8* nonnull %call.2.i, i32 -1) #7
  %arrayidx3.2.i = getelementptr inbounds i8, i8* %call2, i32 40
  %9 = bitcast i8* %arrayidx3.2.i to i32*
  store i32 %call2.2.i, i32* %9, align 4, !tbaa !11
  %cmp7.2.i = icmp slt i32 %call2.2.i, 0
  br i1 %cmp7.2.i, label %if.then8.i, label %cond.end.2.i

cond.end.2.i:                                     ; preds = %do.end.2.i
  %10 = load i32, i32* %mod_width.i, align 4, !tbaa !12
  %rem.2.i = srem i32 %call2.2.i, %10
  %tobool18.2.i = icmp eq i32 %rem.2.i, 0
  br i1 %tobool18.2.i, label %for.cond.2.i, label %if.then19.i

for.cond.2.i:                                     ; preds = %cond.end.2.i
  %call.3.i = tail call i8* @x264_get_option(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8** nonnull %call9) #7
  %tobool.3.i = icmp eq i8* %call.3.i, null
  br i1 %tobool.3.i, label %if.then.i, label %do.end.3.i

do.end.3.i:                                       ; preds = %for.cond.2.i
  %call2.3.i = tail call i32 @x264_otoi(i8* nonnull %call.3.i, i32 -1) #7
  %arrayidx3.3.i = getelementptr inbounds i8, i8* %call2, i32 44
  %11 = bitcast i8* %arrayidx3.3.i to i32*
  store i32 %call2.3.i, i32* %11, align 4, !tbaa !11
  %cmp7.3.i = icmp slt i32 %call2.3.i, 0
  br i1 %cmp7.3.i, label %if.then8.i, label %cond.end.3.i

cond.end.3.i:                                     ; preds = %do.end.3.i
  %12 = load i32, i32* %mod_height.1.i, align 4, !tbaa !14
  %13 = load i32, i32* %interlaced.i, align 4, !tbaa !15
  %shl.3.i = shl i32 %12, %13
  %rem.3.i = srem i32 %call2.3.i, %shl.3.i
  %tobool18.3.i = icmp eq i32 %rem.3.i, 0
  br i1 %tobool18.3.i, label %if.end16, label %if.then19.i

handle_opts.exit.thread:                          ; preds = %if.then8.i, %if.then.i, %if.then19.i
  %14 = bitcast i8** %call9 to i8*
  tail call void @free(i8* %14) #7
  br label %return

if.end16:                                         ; preds = %cond.end.3.i
  %15 = bitcast i8** %call9 to i8*
  tail call void @free(i8* %15) #7
  %width = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  %16 = load i32, i32* %width, align 4, !tbaa !16
  %17 = load i32, i32* %4, align 4, !tbaa !11
  %sub = sub nsw i32 %16, %17
  %18 = load i32, i32* %9, align 4, !tbaa !11
  %sub19 = sub i32 %sub, %18
  store i32 %sub19, i32* %9, align 4, !tbaa !11
  %height = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 5
  %19 = load i32, i32* %height, align 4, !tbaa !17
  %20 = load i32, i32* %6, align 4, !tbaa !11
  %sub24 = sub nsw i32 %19, %20
  %21 = load i32, i32* %11, align 4, !tbaa !11
  %sub27 = sub i32 %sub24, %21
  store i32 %sub27, i32* %11, align 4, !tbaa !11
  %cmp = icmp slt i32 %sub19, 1
  %cmp35 = icmp slt i32 %sub27, 1
  %or.cond = or i1 %cmp, %cmp35
  br i1 %or.cond, label %if.then36, label %do.end42

if.then36:                                        ; preds = %if.end16
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i32 %sub19, i32 %sub27) #7
  br label %return

do.end42:                                         ; preds = %if.end16
  %cmp46 = icmp eq i32 %16, %sub19
  %cmp51 = icmp eq i32 %19, %sub27
  %or.cond106 = and i1 %cmp46, %cmp51
  br i1 %or.cond106, label %if.else, label %if.then52

if.then52:                                        ; preds = %do.end42
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 %sub19, i32 %sub27) #7
  store i32 %sub19, i32* %width, align 4, !tbaa !16
  store i32 %sub27, i32* %height, align 4, !tbaa !17
  %prev_filter = getelementptr inbounds i8, i8* %call2, i32 4
  %22 = bitcast %struct.cli_vid_filter_t* %filter to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %prev_filter, i8* nonnull align 4 dereferenceable(28) %22, i32 28, i1 false), !tbaa.struct !18
  %23 = bitcast i8** %handle to i32*
  %24 = load i32, i32* %23, align 4, !tbaa !19
  %25 = bitcast i8* %call2 to i32*
  store i32 %24, i32* %25, align 4, !tbaa !20
  store i8* %call2, i8** %handle, align 4, !tbaa !19
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(28) %22, i8* nonnull align 4 dereferenceable(28) bitcast ({ i8*, void (i32)*, i32 (i8**, %struct.cli_vid_filter_t*, %struct.video_info_t*, %struct.x264_param_t*, i8*)*, i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)*, void (i8*)*, %struct.cli_vid_filter_t* }* @crop_filter to i8*), i32 28, i1 false), !tbaa.struct !18
  br label %return

if.else:                                          ; preds = %do.end42
  tail call void @free(i8* nonnull %call2) #7
  br label %return

return:                                           ; preds = %handle_opts.exit.thread, %do.end, %if.then36, %if.else, %if.then52, %if.end5, %if.then
  %retval.3 = phi i32 [ -1, %if.then ], [ -1, %do.end ], [ -1, %if.end5 ], [ -1, %if.then36 ], [ 0, %if.then52 ], [ 0, %if.else ], [ -1, %handle_opts.exit.thread ]
  ret i32 %retval.3
}

; Function Attrs: nounwind
define internal i32 @get_frame(i8* nocapture readonly %handle, %struct.cli_pic_t* %output, i32 %frame) #1 {
entry:
  %get_frame = getelementptr inbounds i8, i8* %handle, i32 16
  %0 = bitcast i8* %get_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %1 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %0, align 4, !tbaa !21
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 4, !tbaa !20
  %call = tail call i32 %1(i8* %2, %struct.cli_pic_t* %output, i32 %frame) #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %handle, i32 40
  %3 = bitcast i8* %arrayidx to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !11
  %width = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 1
  store i32 %4, i32* %width, align 4, !tbaa !22
  %arrayidx2 = getelementptr inbounds i8, i8* %handle, i32 44
  %5 = bitcast i8* %arrayidx2 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !11
  %height = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 2
  store i32 %6, i32* %height, align 8, !tbaa !26
  %planes = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 3
  %7 = load i32, i32* %planes, align 4, !tbaa !27
  %cmp51 = icmp sgt i32 %7, 0
  br i1 %cmp51, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %dims = getelementptr inbounds i8, i8* %handle, i32 32
  %arrayidx8 = getelementptr inbounds i8, i8* %handle, i32 36
  %8 = bitcast i8* %arrayidx8 to i32*
  %csp = getelementptr inbounds i8, i8* %handle, i32 48
  %9 = bitcast i8* %csp to %struct.x264_cli_csp_t**
  %arrayidx14 = bitcast i8* %dims to i32*
  %csp21 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx6 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 5, i32 %i.052
  %10 = load i32, i32* %arrayidx6, align 4, !tbaa !11
  %11 = load i32, i32* %8, align 4, !tbaa !11
  %mul = mul nsw i32 %11, %10
  %conv = sitofp i32 %mul to float
  %12 = load %struct.x264_cli_csp_t*, %struct.x264_cli_csp_t** %9, align 4, !tbaa !7
  %arrayidx10 = getelementptr inbounds %struct.x264_cli_csp_t, %struct.x264_cli_csp_t* %12, i32 0, i32 3, i32 %i.052
  %13 = load float, float* %arrayidx10, align 4, !tbaa !28
  %mul11 = fmul fast float %13, %conv
  %conv12 = fptosi float %mul11 to i32
  %14 = load i32, i32* %arrayidx14, align 4, !tbaa !11
  %conv15 = sitofp i32 %14 to float
  %arrayidx18 = getelementptr inbounds %struct.x264_cli_csp_t, %struct.x264_cli_csp_t* %12, i32 0, i32 2, i32 %i.052
  %15 = load float, float* %arrayidx18, align 4, !tbaa !28
  %mul19 = fmul fast float %15, %conv15
  %16 = load i32, i32* %csp21, align 8, !tbaa !30
  %call22 = tail call i32 @x264_cli_csp_depth_factor(i32 %16) #7
  %conv23 = sitofp i32 %call22 to float
  %mul24 = fmul fast float %mul19, %conv23
  %conv25 = sitofp i32 %conv12 to float
  %add = fadd fast float %mul24, %conv25
  %conv26 = fptosi float %add to i32
  %arrayidx28 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %output, i32 0, i32 0, i32 4, i32 %i.052
  %17 = load i8*, i8** %arrayidx28, align 4, !tbaa !19
  %add.ptr = getelementptr inbounds i8, i8* %17, i32 %conv26
  store i8* %add.ptr, i8** %arrayidx28, align 4, !tbaa !19
  %inc = add nuw nsw i32 %i.052, 1
  %18 = load i32, i32* %planes, align 4, !tbaa !27
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.end ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @release_frame(i8* nocapture readonly %handle, %struct.cli_pic_t* %pic, i32 %frame) #1 {
entry:
  %release_frame = getelementptr inbounds i8, i8* %handle, i32 20
  %0 = bitcast i8* %release_frame to i32 (i8*, %struct.cli_pic_t*, i32)**
  %1 = load i32 (i8*, %struct.cli_pic_t*, i32)*, i32 (i8*, %struct.cli_pic_t*, i32)** %0, align 4, !tbaa !31
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 4, !tbaa !20
  %call = tail call i32 %1(i8* %2, %struct.cli_pic_t* %pic, i32 %frame) #7
  ret i32 %call
}

; Function Attrs: nounwind
define internal void @free_filter(i8* nocapture %handle) #1 {
entry:
  %free = getelementptr inbounds i8, i8* %handle, i32 24
  %0 = bitcast i8* %free to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 4, !tbaa !32
  %prev_hnd = bitcast i8* %handle to i8**
  %2 = load i8*, i8** %prev_hnd, align 4, !tbaa !20
  tail call void %1(i8* %2) #7
  tail call void @free(i8* %handle) #7
  ret void
}

declare dso_local i32 @x264_cli_csp_is_invalid(i32) local_unnamed_addr #2

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #3

declare dso_local %struct.x264_cli_csp_t* @x264_cli_get_csp(i32) local_unnamed_addr #2

declare dso_local i8** @x264_split_options(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

declare dso_local i8* @x264_get_option(i8*, i8**) local_unnamed_addr #2

declare dso_local i32 @x264_otoi(i8*, i32) local_unnamed_addr #2

declare dso_local i32 @x264_cli_csp_depth_factor(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #6

attributes #0 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 48}
!8 = !{!"", !9, i64 0, !10, i64 4, !5, i64 32, !9, i64 48}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"cli_vid_filter_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!11 = !{!4, !4, i64 0}
!12 = !{!13, !4, i64 40}
!13 = !{!"", !9, i64 0, !4, i64 4, !5, i64 8, !5, i64 24, !4, i64 40, !4, i64 44}
!14 = !{!13, !4, i64 44}
!15 = !{!3, !4, i64 24}
!16 = !{!3, !4, i64 16}
!17 = !{!3, !4, i64 20}
!18 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19, i64 24, i64 4, !19}
!19 = !{!9, !9, i64 0}
!20 = !{!8, !9, i64 0}
!21 = !{!8, !9, i64 16}
!22 = !{!23, !4, i64 4}
!23 = !{!"", !24, i64 0, !25, i64 48, !25, i64 56, !9, i64 64}
!24 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !5, i64 16, !5, i64 32}
!25 = !{!"long long", !5, i64 0}
!26 = !{!23, !4, i64 8}
!27 = !{!23, !4, i64 12}
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !5, i64 0}
!30 = !{!23, !4, i64 0}
!31 = !{!8, !9, i64 20}
!32 = !{!8, !9, i64 24}
