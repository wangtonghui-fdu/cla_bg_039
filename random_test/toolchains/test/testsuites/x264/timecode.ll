; ModuleID = 'input/timecode.c'
source_filename = "input/timecode.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.cli_input_t = type { i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)*, i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)*, i32 (%struct.cli_pic_t*, i8*, i32)*, i32 (%struct.cli_pic_t*, i8*)*, void (%struct.cli_pic_t*, i8*)*, i32 (i8*)* }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_input_opt_t = type { i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.cli_pic_t = type { %struct.cli_image_t, i64, i64, i8* }
%struct.cli_image_t = type { i32, i32, i32, i32, [4 x i8*], [4 x i32] }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.timecode_hnd_t = type { %struct.cli_input_t, i8*, i32, i32, i64, i64, i32, i64*, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }

@timecode_input = hidden local_unnamed_addr constant %struct.cli_input_t { i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)* @open_file, i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)* @picture_alloc, i32 (%struct.cli_pic_t*, i8*, i32)* @read_frame, i32 (%struct.cli_pic_t*, i8*)* @release_frame, void (%struct.cli_pic_t*, i8*)* @picture_clean, i32 (i8*)* @close_file }, align 4
@.str = private unnamed_addr constant [9 x i8] c"timecode\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@cli_input = external dso_local local_unnamed_addr global %struct.cli_input_t, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%llu/%llu\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"timebase you specified exceeds H.264 maximum\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"can't open `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"tcfile input incompatible with non-regular file `%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"# timecode format v%d\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"# timestamp format v%d\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"unsupported timecode format\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"assume %lf\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Assume %lf\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"tcfile parsing error: assumed fps not found\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"invalid assumed fps %.6f\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"# TDecimate Mode 3:  Last Frame = %d\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"%d,%d,%lf\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"invalid input tcfile\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"invalid input tcfile at line %d: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"input tcfile doesn't have any timecodes!\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"invalid input tcfile for frame 0\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"invalid input tcfile for frame %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"failed to read input tcfile for frame %d\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"automatic timebase generation %llu/%llu\0A\00", align 1
@.str.24 = private unnamed_addr constant [99 x i8] c"automatic timebase generation failed.\0A                  Specify an appropriate timebase manually.\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"invalid timebase or timecode for frame %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [108 x i8] c"tcfile fps correction failed.\0A                  Specify an appropriate timebase manually or remake tcfile.\0A\00", align 1
@.str.27 = private unnamed_addr constant [84 x i8] c"automatic timebase generation failed.\0A                  Specify timebase manually.\0A\00", align 1
@.str.28 = private unnamed_addr constant [101 x i8] c"input timecode file missing data for frame %d and later\0A                 assuming constant fps %.6f\0A\00", align 1

; Function Attrs: nounwind
define internal i32 @open_file(i8* %psz_filename, i8** nocapture %p_handle, %struct.video_info_t* nocapture %info, %struct.cli_input_opt_t* nocapture readonly %opt) #0 {
entry:
  %buff.i = alloca [256 x i8], align 4
  %tcfv.i = alloca i32, align 4
  %seq_fps.i = alloca double, align 8
  %start.i = alloca i32, align 4
  %end.i = alloca i32, align 4
  %file_stat.i = alloca %struct.stat, align 8
  %call = tail call noalias dereferenceable_or_null(80) i8* @malloc(i32 80) #6
  %0 = bitcast i8* %call to %struct.timecode_hnd_t*
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(24) %call, i8* nonnull align 4 dereferenceable(24) bitcast (%struct.cli_input_t* @cli_input to i8*), i32 24, i1 false), !tbaa.struct !2
  %1 = bitcast i8** %p_handle to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !3
  %p_handle1 = getelementptr inbounds i8, i8* %call, i32 24
  %3 = bitcast i8* %p_handle1 to i32*
  store i32 %2, i32* %3, align 8, !tbaa !7
  %pts = getelementptr inbounds i8, i8* %call, i32 60
  %4 = bitcast i8* %pts to i64**
  store i64* null, i64** %4, align 4, !tbaa !13
  %timebase = getelementptr inbounds %struct.cli_input_opt_t, %struct.cli_input_opt_t* %opt, i32 0, i32 5
  %5 = load i8*, i8** %timebase, align 4, !tbaa !14
  %tobool2 = icmp eq i8* %5, null
  br i1 %tobool2, label %if.end23, label %if.then3

if.then3:                                         ; preds = %do.end
  %timebase_num = getelementptr inbounds i8, i8* %call, i32 40
  %6 = bitcast i8* %timebase_num to i64*
  %timebase_den = getelementptr inbounds i8, i8* %call, i32 48
  %7 = bitcast i8* %timebase_den to i64*
  %call5 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* nonnull %timebase_num, i8* nonnull %timebase_den) #6
  %cmp = icmp eq i32 %call5, 1
  br i1 %cmp, label %lor.lhs.false.thread, label %do.body12

lor.lhs.false.thread:                             ; preds = %if.then3
  %8 = load i8*, i8** %timebase, align 4, !tbaa !14
  %call8 = tail call i32 @strtoul(i8* nocapture %8, i8** null, i32 10) #6
  %conv = zext i32 %call8 to i64
  store i64 %conv, i64* %6, align 8, !tbaa !16
  store i64 0, i64* %7, align 8, !tbaa !17
  br label %if.end23

do.body12:                                        ; preds = %if.then3
  %.pr = load i64, i64* %6, align 8, !tbaa !16
  %cmp14 = icmp ugt i64 %.pr, 4294967295
  br i1 %cmp14, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body12
  %.pr115 = load i64, i64* %7, align 8, !tbaa !17
  %cmp17 = icmp ugt i64 %.pr115, 4294967295
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %lor.lhs.false, %do.body12
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false.thread, %do.end, %lor.lhs.false
  %ret.0 = phi i32 [ %call5, %lor.lhs.false ], [ 0, %do.end ], [ 1, %lor.lhs.false.thread ]
  %tobool24 = icmp eq i32 %ret.0, 0
  %lnot.ext = zext i1 %tobool24 to i32
  %auto_timebase_num = getelementptr inbounds i8, i8* %call, i32 28
  %9 = bitcast i8* %auto_timebase_num to i32*
  store i32 %lnot.ext, i32* %9, align 4, !tbaa !18
  %cmp25 = icmp slt i32 %ret.0, 2
  %conv26 = zext i1 %cmp25 to i32
  %auto_timebase_den = getelementptr inbounds i8, i8* %call, i32 32
  %10 = bitcast i8* %auto_timebase_den to i32*
  store i32 %conv26, i32* %10, align 8, !tbaa !19
  br i1 %tobool24, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end23
  %fps_den = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 2
  %11 = load i32, i32* %fps_den, align 4, !tbaa !20
  %conv30 = zext i32 %11 to i64
  %timebase_num31 = getelementptr inbounds i8, i8* %call, i32 40
  %12 = bitcast i8* %timebase_num31 to i64*
  store i64 %conv30, i64* %12, align 8, !tbaa !16
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end23
  br i1 %cmp25, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  %timebase_den36 = getelementptr inbounds i8, i8* %call, i32 48
  %13 = bitcast i8* %timebase_den36 to i64*
  store i64 0, i64* %13, align 8, !tbaa !17
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %if.then35
  %call38 = tail call %struct._IO_FILE* @fopen64(i8* %psz_filename, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #6
  %tobool40 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %tobool40, label %if.then41, label %do.end44

if.then41:                                        ; preds = %if.end37
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* %psz_filename) #6
  br label %cleanup

do.end44:                                         ; preds = %if.end37
  %14 = bitcast %struct.stat* %file_stat.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %14) #6
  %call.i = tail call i32 @fileno(%struct._IO_FILE* nonnull %call38) #6
  %15 = bitcast %struct.stat* %file_stat.i to %struct.stat64*
  %call.i.i = call i32 @__fxstat64(i32 3, i32 %call.i, %struct.stat64* nonnull %15) #6
  %tobool.i = icmp eq i32 %call.i.i, 0
  %st_mode.i = getelementptr inbounds %struct.stat, %struct.stat* %file_stat.i, i32 0, i32 3
  %16 = load i32, i32* %st_mode.i, align 8
  %and.i = and i32 %16, 61440
  %cmp.i = icmp ne i32 %and.i, 32768
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %14) #6
  %tobool46 = and i1 %tobool.i, %cmp.i
  br i1 %tobool46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %do.end44
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* %psz_filename) #6
  %call48 = call i32 @fclose(%struct._IO_FILE* nonnull %call38)
  br label %cleanup

if.end49:                                         ; preds = %do.end44
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %buff.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %17) #6
  %18 = bitcast i32* %tcfv.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #6
  %call.i112 = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* nonnull %call38) #6
  %cmp.i113 = icmp eq i8* %call.i112, null
  br i1 %cmp.i113, label %if.then.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end49
  %call2.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32* nonnull %tcfv.i) #6
  %cmp3.i = icmp eq i32 %call2.i, 1
  br i1 %cmp3.i, label %lor.lhs.false.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %call5.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32* nonnull %tcfv.i) #6
  %cmp6.i = icmp eq i32 %call5.i, 1
  br i1 %cmp6.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %lor.rhs.i, %land.rhs.i
  %19 = load i32, i32* %tcfv.i, align 4, !tbaa !22
  %20 = add i32 %19, -1
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %lor.rhs.i, %if.end49
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0)) #6
  br label %if.then53

do.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp9.i = icmp eq i32 %19, 1
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %do.end.i
  %22 = bitcast double* %seq_fps.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #6
  %23 = bitcast i32* %start.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #6
  %24 = bitcast i32* %end.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #6
  store i32 -1, i32* %end.i, align 4, !tbaa !22
  %assume_fps11.i = getelementptr inbounds i8, i8* %call, i32 64
  %25 = bitcast i8* %assume_fps11.i to double*
  store double 0.000000e+00, double* %25, align 8, !tbaa !23
  %call131111.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* nonnull %call38) #6
  %cmp141112.i = icmp eq i8* %call131111.i, null
  br i1 %cmp141112.i, label %do.body45.i, label %for.body.i

for.body.i:                                       ; preds = %if.then10.i, %for.inc.i
  %num.01113.i = phi i32 [ %inc.i, %for.inc.i ], [ 2, %if.then10.i ]
  %26 = load i8, i8* %17, align 4, !tbaa !24
  switch i8 %26, label %do.body29.i [
    i8 35, label %for.inc.i
    i8 10, label %for.inc.i
    i8 13, label %for.inc.i
  ]

do.body29.i:                                      ; preds = %for.body.i
  %call32.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* nonnull %assume_fps11.i) #6
  %cmp33.i = icmp eq i32 %call32.i, 1
  br i1 %cmp33.i, label %do.body45.i, label %land.lhs.true35.i

land.lhs.true35.i:                                ; preds = %do.body29.i
  %call38.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* nonnull %assume_fps11.i) #6
  %cmp39.i = icmp eq i32 %call38.i, 1
  br i1 %cmp39.i, label %do.body45.i, label %if.then41.i

if.then41.i:                                      ; preds = %land.lhs.true35.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %cleanup384.thread.i

for.inc.i:                                        ; preds = %for.body.i, %for.body.i, %for.body.i
  %inc.i = add nuw nsw i32 %num.01113.i, 1
  %call13.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp14.i = icmp eq i8* %call13.i, null
  br i1 %cmp14.i, label %do.body45.i, label %for.body.i

do.body45.i:                                      ; preds = %for.inc.i, %land.lhs.true35.i, %do.body29.i, %if.then10.i
  %num.01052.i = phi i32 [ %num.01113.i, %land.lhs.true35.i ], [ %num.01113.i, %do.body29.i ], [ 2, %if.then10.i ], [ %inc.i, %for.inc.i ]
  %27 = load double, double* %25, align 8, !tbaa !23
  %cmp47.i = fcmp fast ugt double %27, 0.000000e+00
  br i1 %cmp47.i, label %do.end53.i, label %if.then49.i

if.then49.i:                                      ; preds = %do.body45.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), double %27) #6
  br label %cleanup384.thread.i

do.end53.i:                                       ; preds = %do.body45.i
  %call54.i = call i32 @ftell(%struct._IO_FILE* %call38) #6
  %stored_pts_num.i = getelementptr inbounds i8, i8* %call, i32 56
  %28 = bitcast i8* %stored_pts_num.i to i32*
  store i32 0, i32* %28, align 8, !tbaa !25
  %call581102.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp591103.i = icmp eq i8* %call581102.i, null
  br i1 %cmp591103.i, label %for.end122.i, label %for.body61.i

for.body61.i:                                     ; preds = %do.end53.i, %for.inc120.i
  %num.11108.i = phi i32 [ %inc121.i, %for.inc120.i ], [ %num.01052.i, %do.end53.i ]
  %seq_num.01106.i = phi i32 [ %seq_num.1.i, %for.inc120.i ], [ 0, %do.end53.i ]
  %prev_end.01105.i = phi i32 [ %prev_end.1.i, %for.inc120.i ], [ -1, %do.end53.i ]
  %prev_start.01104.i = phi i32 [ %prev_start.1.i, %for.inc120.i ], [ -1, %do.end53.i ]
  %29 = load i8, i8* %17, align 4, !tbaa !24
  switch i8 %29, label %if.end84.i [
    i8 35, label %if.then76.i
    i8 10, label %if.then76.i
    i8 13, label %if.then76.i
  ]

if.then76.i:                                      ; preds = %for.body61.i, %for.body61.i, %for.body61.i
  %call78.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i32* nonnull %end.i) #6
  %cmp79.i = icmp eq i32 %call78.i, 1
  br i1 %cmp79.i, label %if.then81.i, label %for.inc120.i

if.then81.i:                                      ; preds = %if.then76.i
  %30 = load i32, i32* %end.i, align 4, !tbaa !22
  %add.i = add nsw i32 %30, 1
  store i32 %add.i, i32* %28, align 8, !tbaa !25
  br label %for.inc120.i

if.end84.i:                                       ; preds = %for.body61.i
  %call86.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32* nonnull %start.i, i32* nonnull %end.i, double* nonnull %seq_fps.i) #6
  switch i32 %call86.i, label %if.then93.i [
    i32 -1, label %do.body97.i
    i32 3, label %do.body97.i
  ]

if.then93.i:                                      ; preds = %if.end84.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #6
  br label %cleanup384.thread.i

do.body97.i:                                      ; preds = %if.end84.i, %if.end84.i
  %31 = load i32, i32* %start.i, align 4, !tbaa !22
  %32 = load i32, i32* %end.i, align 4, !tbaa !22
  %cmp98.i = icmp sle i32 %31, %32
  %cmp101.i = icmp sgt i32 %31, %prev_start.01104.i
  %or.cond.i = and i1 %cmp101.i, %cmp98.i
  br i1 %or.cond.i, label %lor.lhs.false103.i, label %if.then109.i

lor.lhs.false103.i:                               ; preds = %do.body97.i
  %cmp104.i = icmp sle i32 %32, %prev_end.01105.i
  %33 = load double, double* %seq_fps.i, align 8
  %cmp107.i = fcmp fast ole double %33, 0.000000e+00
  %or.cond715.i = or i1 %cmp104.i, %cmp107.i
  br i1 %or.cond715.i, label %if.then109.i, label %do.end113.i

if.then109.i:                                     ; preds = %lor.lhs.false103.i, %do.body97.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i32 %num.11108.i, i8* nonnull %17) #6
  br label %cleanup384.thread.i

do.end113.i:                                      ; preds = %lor.lhs.false103.i
  %34 = load i32, i32* %10, align 8, !tbaa !19
  %tobool114.i = icmp eq i32 %34, 0
  br i1 %tobool114.i, label %lor.lhs.false115.i, label %if.then117.i

lor.lhs.false115.i:                               ; preds = %do.end113.i
  %35 = load i32, i32* %9, align 4, !tbaa !18
  %tobool116.i = icmp eq i32 %35, 0
  br i1 %tobool116.i, label %for.inc120.i, label %if.then117.i

if.then117.i:                                     ; preds = %lor.lhs.false115.i, %do.end113.i
  %inc118.i = add nsw i32 %seq_num.01106.i, 1
  br label %for.inc120.i

for.inc120.i:                                     ; preds = %if.then117.i, %lor.lhs.false115.i, %if.then81.i, %if.then76.i
  %prev_start.1.i = phi i32 [ %prev_start.01104.i, %if.then81.i ], [ %prev_start.01104.i, %if.then76.i ], [ %31, %if.then117.i ], [ %31, %lor.lhs.false115.i ]
  %prev_end.1.i = phi i32 [ %prev_end.01105.i, %if.then81.i ], [ %prev_end.01105.i, %if.then76.i ], [ %32, %if.then117.i ], [ %32, %lor.lhs.false115.i ]
  %seq_num.1.i = phi i32 [ %seq_num.01106.i, %if.then81.i ], [ %seq_num.01106.i, %if.then76.i ], [ %inc118.i, %if.then117.i ], [ %seq_num.01106.i, %lor.lhs.false115.i ]
  %inc121.i = add nuw nsw i32 %num.11108.i, 1
  %call58.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp59.i = icmp eq i8* %call58.i, null
  br i1 %cmp59.i, label %for.end122.i, label %for.body61.i

for.end122.i:                                     ; preds = %for.inc120.i, %do.end53.i
  %seq_num.0.lcssa.i = phi i32 [ 0, %do.end53.i ], [ %seq_num.1.i, %for.inc120.i ]
  %36 = load i32, i32* %28, align 8, !tbaa !25
  %tobool124.i = icmp eq i32 %36, 0
  br i1 %tobool124.i, label %if.then125.i, label %if.end128.i

if.then125.i:                                     ; preds = %for.end122.i
  %37 = load i32, i32* %end.i, align 4, !tbaa !22
  %add126.i = add nsw i32 %37, 2
  store i32 %add126.i, i32* %28, align 8, !tbaa !25
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then125.i, %for.end122.i
  %38 = phi i32 [ %36, %for.end122.i ], [ %add126.i, %if.then125.i ]
  %call131.i = call i32 @fseek(%struct._IO_FILE* %call38, i32 %call54.i, i32 0) #6
  %mul.i = shl i32 %38, 3
  %call132.i = call noalias i8* @malloc(i32 %mul.i) #6
  %39 = bitcast i8* %call132.i to double*
  %tobool133.i = icmp eq i8* %call132.i, null
  br i1 %tobool133.i, label %cleanup384.thread.i, label %if.end135.i

if.end135.i:                                      ; preds = %if.end128.i
  %40 = load i32, i32* %10, align 8, !tbaa !19
  %tobool137.i = icmp eq i32 %40, 0
  br i1 %tobool137.i, label %lor.lhs.false138.i, label %if.then141.i

lor.lhs.false138.i:                               ; preds = %if.end135.i
  %41 = load i32, i32* %9, align 4, !tbaa !18
  %tobool140.i = icmp eq i32 %41, 0
  br i1 %tobool140.i, label %if.end148.i, label %if.then141.i

if.then141.i:                                     ; preds = %lor.lhs.false138.i, %if.end135.i
  %add142.i = shl i32 %seq_num.0.lcssa.i, 3
  %mul143.i = add i32 %add142.i, 8
  %call144.i = call noalias i8* @malloc(i32 %mul143.i) #6
  %42 = bitcast i8* %call144.i to double*
  %tobool145.i = icmp eq i8* %call144.i, null
  br i1 %tobool145.i, label %cleanup384.thread1024.i, label %if.end148.i

if.end148.i:                                      ; preds = %if.then141.i, %lor.lhs.false138.i
  %fpss.0.i = phi double* [ %42, %if.then141.i ], [ null, %lor.lhs.false138.i ]
  %43 = load double, double* %25, align 8, !tbaa !23
  %call150.i = call fast fastcc double @correct_fps(double %43, %struct.timecode_hnd_t* nonnull %0) #6
  %cmp151.i = fcmp fast olt double %call150.i, 0.000000e+00
  br i1 %cmp151.i, label %cleanup384.thread1024.i, label %if.end154.i

if.end154.i:                                      ; preds = %if.end148.i
  store double 0.000000e+00, double* %39, align 8, !tbaa !26
  %sub.i = add i32 %38, -1
  %cmp1571095.i = icmp sgt i32 %38, 1
  br i1 %cmp1571095.i, label %land.rhs159.lr.ph.lr.ph.i, label %for.end244.i

land.rhs159.lr.ph.lr.ph.i:                        ; preds = %if.end154.i
  %div.i = fdiv fast double 1.000000e+00, %call150.i
  br label %land.rhs159.us.preheader.i

land.rhs159.us.preheader.i:                       ; preds = %if.end243.i, %land.rhs159.lr.ph.lr.ph.i
  %num.2.ph1097.i = phi i32 [ 0, %land.rhs159.lr.ph.lr.ph.i ], [ %num.5.i, %if.end243.i ]
  %seq_num.2.ph1096.i = phi i32 [ 0, %land.rhs159.lr.ph.lr.ph.i ], [ %seq_num.4.i, %if.end243.i ]
  %call161.us.i144 = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp162.us.i145 = icmp eq i8* %call161.us.i144, null
  br i1 %cmp162.us.i145, label %for.end244.i, label %for.body166.us.i

for.body166.us.i:                                 ; preds = %land.rhs159.us.preheader.i, %if.then181.us.i
  %44 = load i8, i8* %17, align 4, !tbaa !24
  switch i8 %44, label %if.end182.i [
    i8 35, label %if.then181.us.i
    i8 10, label %if.then181.us.i
    i8 13, label %if.then181.us.i
  ]

if.then181.us.i:                                  ; preds = %for.body166.us.i, %for.body166.us.i, %for.body166.us.i
  %call161.us.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp162.us.i = icmp eq i8* %call161.us.i, null
  br i1 %cmp162.us.i, label %for.end244.i, label %for.body166.us.i

if.end182.i:                                      ; preds = %for.body166.us.i
  %call184.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32* nonnull %start.i, i32* nonnull %end.i, double* nonnull %seq_fps.i) #6
  %cmp185.i = icmp eq i32 %call184.i, 3
  br i1 %cmp185.i, label %if.end182.if.end189_crit_edge.i, label %if.then187.i

if.end182.if.end189_crit_edge.i:                  ; preds = %if.end182.i
  %.pre1167.i = load i32, i32* %start.i, align 4, !tbaa !22
  br label %if.end189.i

if.then187.i:                                     ; preds = %if.end182.i
  store i32 %sub.i, i32* %end.i, align 4, !tbaa !22
  store i32 %sub.i, i32* %start.i, align 4, !tbaa !22
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.then187.i, %if.end182.if.end189_crit_edge.i
  %45 = phi i32 [ %.pre1167.i, %if.end182.if.end189_crit_edge.i ], [ %sub.i, %if.then187.i ]
  %cmp1911086.i = icmp slt i32 %num.2.ph1097.i, %45
  %cmp1951087.i = icmp slt i32 %num.2.ph1097.i, %sub.i
  %46 = and i1 %cmp1951087.i, %cmp1911086.i
  br i1 %46, label %for.body199.lr.ph.i, label %for.end206.i

for.body199.lr.ph.i:                              ; preds = %if.end189.i
  %arrayidx200.phi.trans.insert.i = getelementptr inbounds double, double* %39, i32 %num.2.ph1097.i
  %.pre1168.i = load double, double* %arrayidx200.phi.trans.insert.i, align 8, !tbaa !26
  br label %for.body199.i

for.body199.i:                                    ; preds = %for.body199.i, %for.body199.lr.ph.i
  %47 = phi double [ %.pre1168.i, %for.body199.lr.ph.i ], [ %add201.i, %for.body199.i ]
  %num.31088.i = phi i32 [ %num.2.ph1097.i, %for.body199.lr.ph.i ], [ %add202.i, %for.body199.i ]
  %add201.i = fadd fast double %47, %div.i
  %add202.i = add nsw i32 %num.31088.i, 1
  %arrayidx203.i = getelementptr inbounds double, double* %39, i32 %add202.i
  store double %add201.i, double* %arrayidx203.i, align 8, !tbaa !26
  %cmp191.i = icmp slt i32 %add202.i, %45
  %cmp195.i = icmp slt i32 %add202.i, %sub.i
  %48 = and i1 %cmp195.i, %cmp191.i
  br i1 %48, label %for.body199.i, label %for.end206.i

for.end206.i:                                     ; preds = %for.body199.i, %if.end189.i
  %num.3.lcssa.i = phi i32 [ %num.2.ph1097.i, %if.end189.i ], [ %add202.i, %for.body199.i ]
  %cmp195.lcssa.i = phi i1 [ %cmp1951087.i, %if.end189.i ], [ %cmp195.i, %for.body199.i ]
  br i1 %cmp195.lcssa.i, label %if.then210.i, label %if.end243.i

if.then210.i:                                     ; preds = %for.end206.i
  %49 = load i32, i32* %10, align 8, !tbaa !19
  %tobool212.i = icmp eq i32 %49, 0
  br i1 %tobool212.i, label %lor.lhs.false213.i, label %if.then216.i

lor.lhs.false213.i:                               ; preds = %if.then210.i
  %50 = load i32, i32* %9, align 4, !tbaa !18
  %tobool215.i = icmp eq i32 %50, 0
  br i1 %tobool215.i, label %lor.lhs.false213.if.end219_crit_edge.i, label %if.then216.i

lor.lhs.false213.if.end219_crit_edge.i:           ; preds = %lor.lhs.false213.i
  %.pre1169.i = load double, double* %seq_fps.i, align 8, !tbaa !26
  br label %if.end219.i

if.then216.i:                                     ; preds = %lor.lhs.false213.i, %if.then210.i
  %51 = load double, double* %seq_fps.i, align 8, !tbaa !26
  %inc217.i = add nsw i32 %seq_num.2.ph1096.i, 1
  %arrayidx218.i = getelementptr inbounds double, double* %fpss.0.i, i32 %seq_num.2.ph1096.i
  store double %51, double* %arrayidx218.i, align 8, !tbaa !26
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.then216.i, %lor.lhs.false213.if.end219_crit_edge.i
  %52 = phi double [ %51, %if.then216.i ], [ %.pre1169.i, %lor.lhs.false213.if.end219_crit_edge.i ]
  %seq_num.3.i = phi i32 [ %inc217.i, %if.then216.i ], [ %seq_num.2.ph1096.i, %lor.lhs.false213.if.end219_crit_edge.i ]
  %call220.i = call fast fastcc double @correct_fps(double %52, %struct.timecode_hnd_t* nonnull %0) #6
  store double %call220.i, double* %seq_fps.i, align 8, !tbaa !26
  %cmp221.i = fcmp fast olt double %call220.i, 0.000000e+00
  br i1 %cmp221.i, label %cleanup384.thread1024.i, label %if.end224.i

if.end224.i:                                      ; preds = %if.end219.i
  %53 = load i32, i32* %start.i, align 4, !tbaa !22
  %54 = load i32, i32* %end.i, align 4, !tbaa !22
  %cmp2261091.i = icmp sle i32 %53, %54
  %cmp2301092.i = icmp slt i32 %53, %sub.i
  %55 = and i1 %cmp2301092.i, %cmp2261091.i
  br i1 %55, label %for.body234.lr.ph.i, label %if.end243.i

for.body234.lr.ph.i:                              ; preds = %if.end224.i
  %div236.i = fdiv fast double 1.000000e+00, %call220.i
  %arrayidx235.phi.trans.insert.i = getelementptr inbounds double, double* %39, i32 %53
  %.pre1170.i = load double, double* %arrayidx235.phi.trans.insert.i, align 8, !tbaa !26
  br label %for.body234.i

for.body234.i:                                    ; preds = %for.body234.i, %for.body234.lr.ph.i
  %56 = phi double [ %.pre1170.i, %for.body234.lr.ph.i ], [ %add237.i, %for.body234.i ]
  %num.41093.i = phi i32 [ %53, %for.body234.lr.ph.i ], [ %add238.i, %for.body234.i ]
  %add237.i = fadd fast double %56, %div236.i
  %add238.i = add nsw i32 %num.41093.i, 1
  %arrayidx239.i = getelementptr inbounds double, double* %39, i32 %add238.i
  store double %add237.i, double* %arrayidx239.i, align 8, !tbaa !26
  %cmp226.i = icmp slt i32 %num.41093.i, %54
  %cmp230.i = icmp slt i32 %add238.i, %sub.i
  %57 = and i1 %cmp226.i, %cmp230.i
  br i1 %57, label %for.body234.i, label %if.end243.i

if.end243.i:                                      ; preds = %for.body234.i, %if.end224.i, %for.end206.i
  %seq_num.4.i = phi i32 [ %seq_num.2.ph1096.i, %for.end206.i ], [ %seq_num.3.i, %if.end224.i ], [ %seq_num.3.i, %for.body234.i ]
  %num.5.i = phi i32 [ %num.3.lcssa.i, %for.end206.i ], [ %53, %if.end224.i ], [ %add238.i, %for.body234.i ]
  %cmp157.i = icmp slt i32 %num.5.i, %sub.i
  br i1 %cmp157.i, label %land.rhs159.us.preheader.i, label %for.end244.i

for.end244.i:                                     ; preds = %if.end243.i, %land.rhs159.us.preheader.i, %if.then181.us.i, %if.end154.i
  %seq_num.2.ph.lcssa.i = phi i32 [ 0, %if.end154.i ], [ %seq_num.2.ph1096.i, %if.then181.us.i ], [ %seq_num.2.ph1096.i, %land.rhs159.us.preheader.i ], [ %seq_num.4.i, %if.end243.i ]
  %num.2.ph.lcssa.i = phi i32 [ 0, %if.end154.i ], [ %num.2.ph1097.i, %if.then181.us.i ], [ %num.2.ph1097.i, %land.rhs159.us.preheader.i ], [ %num.5.i, %if.end243.i ]
  %cmp2471075.i = icmp slt i32 %num.2.ph.lcssa.i, %sub.i
  br i1 %cmp2471075.i, label %for.body249.lr.ph.i, label %for.end257.i

for.body249.lr.ph.i:                              ; preds = %for.end244.i
  %div251.i = fdiv fast double 1.000000e+00, %call150.i
  %arrayidx250.phi.trans.insert.i = getelementptr inbounds double, double* %39, i32 %num.2.ph.lcssa.i
  %.pre1171.i = load double, double* %arrayidx250.phi.trans.insert.i, align 8, !tbaa !26
  br label %for.body249.i

for.body249.i:                                    ; preds = %for.body249.i, %for.body249.lr.ph.i
  %58 = phi double [ %.pre1171.i, %for.body249.lr.ph.i ], [ %add252.i, %for.body249.i ]
  %num.61076.i = phi i32 [ %num.2.ph.lcssa.i, %for.body249.lr.ph.i ], [ %add253.i, %for.body249.i ]
  %add252.i = fadd fast double %58, %div251.i
  %add253.i = add nsw i32 %num.61076.i, 1
  %arrayidx254.i = getelementptr inbounds double, double* %39, i32 %add253.i
  store double %add252.i, double* %arrayidx254.i, align 8, !tbaa !26
  %exitcond1161.i = icmp eq i32 %add253.i, %sub.i
  br i1 %exitcond1161.i, label %for.end257.i, label %for.body249.i

for.end257.i:                                     ; preds = %for.body249.i, %for.end244.i
  %59 = load i32, i32* %10, align 8, !tbaa !19
  %tobool259.i = icmp eq i32 %59, 0
  br i1 %tobool259.i, label %lor.lhs.false260.i, label %if.then379.i

lor.lhs.false260.i:                               ; preds = %for.end257.i
  %60 = load i32, i32* %9, align 4, !tbaa !18
  %tobool262.i = icmp eq i32 %60, 0
  br i1 %tobool262.i, label %if.end377.i, label %if.then272.i

if.then272.i:                                     ; preds = %lor.lhs.false260.i
  %61 = load double, double* %25, align 8, !tbaa !23
  %arrayidx265.i = getelementptr inbounds double, double* %fpss.0.i, i32 %seq_num.2.ph.lcssa.i
  store double %61, double* %arrayidx265.i, align 8, !tbaa !26
  %timebase_num.i.i = getelementptr inbounds i8, i8* %call, i32 40
  %62 = bitcast i8* %timebase_num.i.i to i64*
  store i64 0, i64* %62, align 8, !tbaa !16
  %timebase_den.i.i = getelementptr inbounds i8, i8* %call, i32 48
  %63 = bitcast i8* %timebase_den.i.i to i64*
  store i64 1000000000, i64* %63, align 8, !tbaa !17
  %cmp42.i.i = icmp sgt i32 %seq_num.2.ph.lcssa.i, -1
  br i1 %cmp42.i.i, label %for.body.i.i, label %if.end278.i

for.cond.i.i:                                     ; preds = %cond.end.i.i
  %inc.i.i = add nuw nsw i32 %num.043.i.i, 1
  %exitcond.i.i = icmp eq i32 %num.043.i.i, %seq_num.2.ph.lcssa.i
  br i1 %exitcond.i.i, label %if.end278.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %if.then272.i, %for.cond.i.i
  %64 = phi i64 [ %cond.i.i, %for.cond.i.i ], [ 0, %if.then272.i ]
  %num.043.i.i = phi i32 [ %inc.i.i, %for.cond.i.i ], [ 0, %if.then272.i ]
  %arrayidx.i.i = getelementptr inbounds double, double* %fpss.0.i, i32 %num.043.i.i
  %65 = load double, double* %arrayidx.i.i, align 8, !tbaa !26
  %66 = call fast double @llvm.log10.f64(double %65) #6
  %67 = call fast double @llvm.floor.f64(double %66) #6
  %68 = call fast double @llvm.pow.f64(double 1.000000e+01, double %67) #6
  %69 = fmul fast double %68, 1.000000e+09
  %div.i.i = fdiv fast double %69, %65
  %70 = call fast double @llvm.round.f64(double %div.i.i) #6
  %div1.i.i = fdiv fast double %70, %68
  %conv.i.i = fptoui double %div1.i.i to i64
  %tobool.i.i = icmp eq i64 %conv.i.i, 0
  br i1 %tobool.i.i, label %cond.end.thread.i.i, label %land.lhs.true.i.i

cond.end.thread.i.i:                              ; preds = %for.body.i.i
  store i64 0, i64* %62, align 8, !tbaa !16
  br label %cleanup.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %tobool3.i.i = icmp eq i64 %64, 0
  br i1 %tobool3.i.i, label %cond.end.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %land.lhs.true.i.i, %while.body.i.i.i
  %a.addr.0.i.i.i = phi i64 [ %b.addr.0.i.i.i, %while.body.i.i.i ], [ %64, %land.lhs.true.i.i ]
  %b.addr.0.i.i.i = phi i64 [ %rem.i.i.i, %while.body.i.i.i ], [ %conv.i.i, %land.lhs.true.i.i ]
  %rem.i.i.i = urem i64 %a.addr.0.i.i.i, %b.addr.0.i.i.i
  %tobool.i.i.i = icmp eq i64 %rem.i.i.i, 0
  br i1 %tobool.i.i.i, label %cond.end.i.i, label %while.body.i.i.i

cond.end.i.i:                                     ; preds = %while.body.i.i.i, %land.lhs.true.i.i
  %cond.i.i = phi i64 [ %conv.i.i, %land.lhs.true.i.i ], [ %b.addr.0.i.i.i, %while.body.i.i.i ]
  store i64 %cond.i.i, i64* %62, align 8, !tbaa !16
  %71 = add i64 %cond.i.i, -1
  %72 = icmp ugt i64 %71, 4294967294
  br i1 %72, label %cleanup.i, label %for.cond.i.i

if.end278.i:                                      ; preds = %for.cond.i.i, %if.then272.i
  %call280.i = call i32 @fseek(%struct._IO_FILE* %call38, i32 %call54.i, i32 0) #6
  %73 = load double, double* %25, align 8, !tbaa !23
  %74 = call fast double @llvm.log10.f64(double %73) #6
  %75 = call fast double @llvm.floor.f64(double %74) #6
  %mul1180.i = fmul fast double %75, 0x400A934F0979A371
  %exp2.i = call fast double @llvm.exp2.f64(double %mul1180.i) #6
  %76 = fmul fast double %exp2.i, 1.000000e+09
  %div283.i = fdiv fast double %76, %73
  %77 = call fast double @llvm.round.f64(double %div283.i) #6
  %div285.i = fdiv fast double %76, %77
  br i1 %cmp1571095.i, label %land.rhs290.lr.ph.lr.ph.i, label %for.end361.i

land.rhs290.lr.ph.lr.ph.i:                        ; preds = %if.end278.i
  %div336.i = fdiv fast double 1.000000e+00, %div285.i
  br label %land.rhs290.us.preheader.i

for.cond286.loopexit.i:                           ; preds = %for.body352.i, %for.cond343.preheader.i
  %num.9.lcssa.i = phi i32 [ %79, %for.cond343.preheader.i ], [ %add356.i, %for.body352.i ]
  %cmp288.i = icmp slt i32 %num.9.lcssa.i, %sub.i
  br i1 %cmp288.i, label %land.rhs290.us.preheader.i, label %for.end361.i

land.rhs290.us.preheader.i:                       ; preds = %for.cond286.loopexit.i, %land.rhs290.lr.ph.lr.ph.i
  %num.7.ph1072.i = phi i32 [ 0, %land.rhs290.lr.ph.lr.ph.i ], [ %num.9.lcssa.i, %for.cond286.loopexit.i ]
  %call292.us.i141 = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp293.us.i142 = icmp eq i8* %call292.us.i141, null
  br i1 %cmp293.us.i142, label %for.end361.i, label %for.body297.us.i

for.body297.us.i:                                 ; preds = %land.rhs290.us.preheader.i, %if.then312.us.i
  %78 = load i8, i8* %17, align 4, !tbaa !24
  switch i8 %78, label %if.end313.i [
    i8 35, label %if.then312.us.i
    i8 10, label %if.then312.us.i
    i8 13, label %if.then312.us.i
  ]

if.then312.us.i:                                  ; preds = %for.body297.us.i, %for.body297.us.i, %for.body297.us.i
  %call292.us.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp293.us.i = icmp eq i8* %call292.us.i, null
  br i1 %cmp293.us.i, label %for.end361.i, label %for.body297.us.i

if.end313.i:                                      ; preds = %for.body297.us.i
  %call315.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32* nonnull %start.i, i32* nonnull %end.i, double* nonnull %seq_fps.i) #6
  %cmp316.i = icmp eq i32 %call315.i, 3
  br i1 %cmp316.i, label %if.end313.if.end320_crit_edge.i, label %if.then318.i

if.end313.if.end320_crit_edge.i:                  ; preds = %if.end313.i
  %.pre1173.i = load i32, i32* %start.i, align 4, !tbaa !22
  br label %if.end320.i

if.then318.i:                                     ; preds = %if.end313.i
  store i32 %sub.i, i32* %end.i, align 4, !tbaa !22
  store i32 %sub.i, i32* %start.i, align 4, !tbaa !22
  br label %if.end320.i

if.end320.i:                                      ; preds = %if.then318.i, %if.end313.if.end320_crit_edge.i
  %79 = phi i32 [ %.pre1173.i, %if.end313.if.end320_crit_edge.i ], [ %sub.i, %if.then318.i ]
  %80 = load double, double* %seq_fps.i, align 8, !tbaa !26
  %81 = call fast double @llvm.log10.f64(double %80) #6
  %82 = call fast double @llvm.floor.f64(double %81) #6
  %mul1181.i = fmul fast double %82, 0x400A934F0979A371
  %exp21182.i = call fast double @llvm.exp2.f64(double %mul1181.i) #6
  %83 = fmul fast double %exp21182.i, 1.000000e+09
  %div322.i = fdiv fast double %83, %80
  %84 = call fast double @llvm.round.f64(double %div322.i) #6
  %div324.i = fdiv fast double %83, %84
  store double %div324.i, double* %seq_fps.i, align 8, !tbaa !26
  %cmp3261063.i = icmp slt i32 %num.7.ph1072.i, %79
  %cmp3301064.i = icmp slt i32 %num.7.ph1072.i, %sub.i
  %85 = and i1 %cmp3301064.i, %cmp3261063.i
  br i1 %85, label %for.body334.lr.ph.i, label %for.cond343.preheader.i

for.body334.lr.ph.i:                              ; preds = %if.end320.i
  %arrayidx335.phi.trans.insert.i = getelementptr inbounds double, double* %39, i32 %num.7.ph1072.i
  %.pre1174.i = load double, double* %arrayidx335.phi.trans.insert.i, align 8, !tbaa !26
  br label %for.body334.i

for.cond343.preheader.i:                          ; preds = %for.body334.i, %if.end320.i
  %86 = load i32, i32* %end.i, align 4, !tbaa !22
  %cmp3441067.i = icmp sle i32 %79, %86
  %cmp3481068.i = icmp slt i32 %79, %sub.i
  %87 = and i1 %cmp3481068.i, %cmp3441067.i
  br i1 %87, label %for.body352.lr.ph.i, label %for.cond286.loopexit.i

for.body352.lr.ph.i:                              ; preds = %for.cond343.preheader.i
  %div354.i = fdiv fast double 1.000000e+00, %div324.i
  %arrayidx353.phi.trans.insert.i = getelementptr inbounds double, double* %39, i32 %79
  %.pre1175.i = load double, double* %arrayidx353.phi.trans.insert.i, align 8, !tbaa !26
  br label %for.body352.i

for.body334.i:                                    ; preds = %for.body334.i, %for.body334.lr.ph.i
  %88 = phi double [ %.pre1174.i, %for.body334.lr.ph.i ], [ %add337.i, %for.body334.i ]
  %num.81065.i = phi i32 [ %num.7.ph1072.i, %for.body334.lr.ph.i ], [ %add338.i, %for.body334.i ]
  %add337.i = fadd fast double %88, %div336.i
  %add338.i = add nsw i32 %num.81065.i, 1
  %arrayidx339.i = getelementptr inbounds double, double* %39, i32 %add338.i
  store double %add337.i, double* %arrayidx339.i, align 8, !tbaa !26
  %cmp326.i = icmp slt i32 %add338.i, %79
  %cmp330.i = icmp slt i32 %add338.i, %sub.i
  %89 = and i1 %cmp330.i, %cmp326.i
  br i1 %89, label %for.body334.i, label %for.cond343.preheader.i

for.body352.i:                                    ; preds = %for.body352.i, %for.body352.lr.ph.i
  %90 = phi double [ %.pre1175.i, %for.body352.lr.ph.i ], [ %add355.i, %for.body352.i ]
  %num.91069.i = phi i32 [ %79, %for.body352.lr.ph.i ], [ %add356.i, %for.body352.i ]
  %add355.i = fadd fast double %90, %div354.i
  %add356.i = add nsw i32 %num.91069.i, 1
  %arrayidx357.i = getelementptr inbounds double, double* %39, i32 %add356.i
  store double %add355.i, double* %arrayidx357.i, align 8, !tbaa !26
  %cmp344.i = icmp slt i32 %num.91069.i, %86
  %cmp348.i = icmp slt i32 %add356.i, %sub.i
  %91 = and i1 %cmp344.i, %cmp348.i
  br i1 %91, label %for.body352.i, label %for.cond286.loopexit.i

for.end361.i:                                     ; preds = %for.cond286.loopexit.i, %land.rhs290.us.preheader.i, %if.then312.us.i, %if.end278.i
  %num.7.ph.lcssa.i = phi i32 [ 0, %if.end278.i ], [ %num.7.ph1072.i, %if.then312.us.i ], [ %num.7.ph1072.i, %land.rhs290.us.preheader.i ], [ %num.9.lcssa.i, %for.cond286.loopexit.i ]
  %cmp3641059.i = icmp slt i32 %num.7.ph.lcssa.i, %sub.i
  br i1 %cmp3641059.i, label %for.body366.lr.ph.i, label %if.end377.i

for.body366.lr.ph.i:                              ; preds = %for.end361.i
  %div368.i = fdiv fast double 1.000000e+00, %div285.i
  %arrayidx367.phi.trans.insert.i = getelementptr inbounds double, double* %39, i32 %num.7.ph.lcssa.i
  %.pre1176.i = load double, double* %arrayidx367.phi.trans.insert.i, align 8, !tbaa !26
  br label %for.body366.i

for.body366.i:                                    ; preds = %for.body366.i, %for.body366.lr.ph.i
  %92 = phi double [ %.pre1176.i, %for.body366.lr.ph.i ], [ %add369.i, %for.body366.i ]
  %num.101060.i = phi i32 [ %num.7.ph.lcssa.i, %for.body366.lr.ph.i ], [ %add370.i, %for.body366.i ]
  %add369.i = fadd fast double %92, %div368.i
  %add370.i = add nsw i32 %num.101060.i, 1
  %arrayidx371.i = getelementptr inbounds double, double* %39, i32 %add370.i
  store double %add369.i, double* %arrayidx371.i, align 8, !tbaa !26
  %exitcond1160.i = icmp eq i32 %add370.i, %sub.i
  br i1 %exitcond1160.i, label %if.end377.i, label %for.body366.i

cleanup.i:                                        ; preds = %cond.end.i.i, %cond.end.thread.i.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.27, i32 0, i32 0)) #6
  br label %cleanup384.thread1024.i

if.end377.i:                                      ; preds = %for.body366.i, %for.end361.i, %lor.lhs.false260.i
  %assume_fps.1.i = phi double [ %div285.i, %for.end361.i ], [ %call150.i, %lor.lhs.false260.i ], [ %div285.i, %for.body366.i ]
  %tobool378.i = icmp eq double* %fpss.0.i, null
  br i1 %tobool378.i, label %cleanup384.i, label %if.then379.i

if.then379.i:                                     ; preds = %if.end377.i, %for.end257.i
  %assume_fps.11194.i = phi double [ %assume_fps.1.i, %if.end377.i ], [ %call150.i, %for.end257.i ]
  %93 = bitcast double* %fpss.0.i to i8*
  call void @free(i8* %93) #6
  br label %cleanup384.i

cleanup384.thread.i:                              ; preds = %if.end128.i, %if.then109.i, %if.then93.i, %if.then49.i, %if.then41.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #6
  br label %if.then53

cleanup384.thread1024.i:                          ; preds = %if.end219.i, %cleanup.i, %if.end148.i, %if.then141.i
  %fpss.2.ph.i = phi double* [ %fpss.0.i, %if.end148.i ], [ null, %if.then141.i ], [ %fpss.0.i, %cleanup.i ], [ %fpss.0.i, %if.end219.i ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #6
  br label %if.then700.i

cleanup384.i:                                     ; preds = %if.then379.i, %if.end377.i
  %assume_fps.11195.i = phi double [ %assume_fps.11194.i, %if.then379.i ], [ %assume_fps.1.i, %if.end377.i ]
  store double %assume_fps.11195.i, double* %25, align 8, !tbaa !23
  %arrayidx383.i = getelementptr inbounds double, double* %39, i32 %sub.i
  %94 = load double, double* %arrayidx383.i, align 8, !tbaa !26
  %last_timecode.i = getelementptr inbounds i8, i8* %call, i32 72
  %95 = bitcast i8* %last_timecode.i to double*
  store double %94, double* %95, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #6
  br label %if.end628.i

if.else.i:                                        ; preds = %do.end.i
  %call394.i = call i32 @ftell(%struct._IO_FILE* nonnull %call38) #6
  %stored_pts_num396.i = getelementptr inbounds i8, i8* %call, i32 56
  %96 = bitcast i8* %stored_pts_num396.i to i32*
  store i32 0, i32* %96, align 8, !tbaa !25
  %call39811341138.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* nonnull %call38) #6
  %cmp39911351139.i = icmp eq i8* %call39811341138.i, null
  br i1 %cmp39911351139.i, label %while.end.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.else.i, %if.end421.i
  %file_pos393.0.off0.ph1140.i = phi i32 [ %file_pos393.1.off0.i, %if.end421.i ], [ %call394.i, %if.else.i ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end422.i, %while.body.lr.ph.i
  %97 = load i8, i8* %17, align 4, !tbaa !24
  switch i8 %97, label %if.end422.i [
    i8 35, label %if.then415.i
    i8 10, label %if.then415.i
    i8 13, label %if.then415.i
  ]

if.then415.i:                                     ; preds = %while.body.i, %while.body.i, %while.body.i
  %98 = load i32, i32* %96, align 8, !tbaa !25
  %tobool417.i = icmp eq i32 %98, 0
  br i1 %tobool417.i, label %if.then418.i, label %if.end421.i

if.then418.i:                                     ; preds = %if.then415.i
  %call419.i = call i32 @ftell(%struct._IO_FILE* %call38) #6
  br label %if.end421.i

if.end421.i:                                      ; preds = %if.then418.i, %if.then415.i
  %file_pos393.1.off0.i = phi i32 [ %file_pos393.0.off0.ph1140.i, %if.then415.i ], [ %call419.i, %if.then418.i ]
  %call3981134.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp3991135.i = icmp eq i8* %call3981134.i, null
  br i1 %cmp3991135.i, label %while.end.i, label %while.body.lr.ph.i

if.end422.i:                                      ; preds = %while.body.i
  %99 = load i32, i32* %96, align 8, !tbaa !25
  %inc424.i = add nsw i32 %99, 1
  store i32 %inc424.i, i32* %96, align 8, !tbaa !25
  %call398.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp399.i = icmp eq i8* %call398.i, null
  br i1 %cmp399.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %if.end421.i, %if.end422.i, %if.else.i
  %file_pos393.0.off0.ph.lcssa.i = phi i32 [ %call394.i, %if.else.i ], [ %file_pos393.0.off0.ph1140.i, %if.end422.i ], [ %file_pos393.1.off0.i, %if.end421.i ]
  %100 = load i32, i32* %96, align 8, !tbaa !25
  %tobool427.i = icmp eq i32 %100, 0
  br i1 %tobool427.i, label %if.then428.i, label %do.end431.i

if.then428.i:                                     ; preds = %while.end.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %if.then53

do.end431.i:                                      ; preds = %while.end.i
  %call433.i = call i32 @fseek(%struct._IO_FILE* %call38, i32 %file_pos393.0.off0.ph.lcssa.i, i32 0) #6
  %mul434.i = shl i32 %100, 3
  %call435.i = call noalias i8* @malloc(i32 %mul434.i) #6
  %101 = bitcast i8* %call435.i to double*
  %tobool436.i = icmp eq i8* %call435.i, null
  br i1 %tobool436.i, label %if.then53, label %if.end438.i

if.end438.i:                                      ; preds = %do.end431.i
  %call440.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp441.i = icmp eq i8* %call440.i, null
  br i1 %cmp441.i, label %do.body504.i, label %if.then443.i

if.then443.i:                                     ; preds = %if.end438.i
  %call446.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* nonnull %call435.i) #6
  %102 = load double, double* %101, align 8, !tbaa !26
  %mul448.i = fmul fast double %102, 1.000000e-03
  store double %mul448.i, double* %101, align 8, !tbaa !26
  %cmp450.i = icmp eq i32 %call446.i, 1
  br i1 %cmp450.i, label %for.cond456.preheader.i, label %if.then452.i

for.cond456.preheader.i:                          ; preds = %if.then443.i
  %cmp4571130.i = icmp sgt i32 %100, 1
  br i1 %cmp4571130.i, label %land.rhs459.lr.ph.i, label %do.body504.i

if.then452.i:                                     ; preds = %if.then443.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0)) #6
  br label %if.then53

for.body466.i:                                    ; preds = %land.rhs459.lr.ph.split.i
  %103 = load i8, i8* %17, align 4, !tbaa !24
  switch i8 %103, label %if.end482.i [
    i8 35, label %do.body504.i
    i8 10, label %do.body504.i
    i8 13, label %do.body504.i
  ]

if.end482.i:                                      ; preds = %for.body466.us.i, %for.body466.i
  %arrayidx484.i = getelementptr inbounds double, double* %101, i32 %num.11.ph1131.i
  %call485.i = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), double* nonnull %arrayidx484.i) #6
  %104 = load double, double* %arrayidx484.i, align 8, !tbaa !26
  %mul487.i = fmul fast double %104, 1.000000e-03
  store double %mul487.i, double* %arrayidx484.i, align 8, !tbaa !26
  %cmp489.i = icmp eq i32 %call485.i, 1
  br i1 %cmp489.i, label %lor.lhs.false491.i, label %if.then497.i

lor.lhs.false491.i:                               ; preds = %if.end482.i
  %sub493.i = add nsw i32 %num.11.ph1131.i, -1
  %arrayidx494.i = getelementptr inbounds double, double* %101, i32 %sub493.i
  %105 = load double, double* %arrayidx494.i, align 8, !tbaa !26
  %cmp495.i = fcmp fast ugt double %mul487.i, %105
  br i1 %cmp495.i, label %do.end500.i, label %if.then497.i

if.then497.i:                                     ; preds = %lor.lhs.false491.i, %if.end482.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), i32 %num.11.ph1131.i) #6
  br label %if.then53

do.end500.i:                                      ; preds = %lor.lhs.false491.i
  %inc501.i = add nuw nsw i32 %num.11.ph1131.i, 1
  %cmp457.i = icmp slt i32 %inc501.i, %100
  %exitcond1163.i = icmp eq i32 %inc501.i, %100
  br i1 %exitcond1163.i, label %do.end510.i, label %land.rhs459.lr.ph.i

land.rhs459.lr.ph.i:                              ; preds = %for.cond456.preheader.i, %do.end500.i
  %cmp4571132.i = phi i1 [ %cmp457.i, %do.end500.i ], [ true, %for.cond456.preheader.i ]
  %num.11.ph1131.i = phi i32 [ %inc501.i, %do.end500.i ], [ 1, %for.cond456.preheader.i ]
  %call461.us.i150 = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp462.us.i151 = icmp eq i8* %call461.us.i150, null
  br i1 %cmp4571132.i, label %land.rhs459.us.i.preheader, label %land.rhs459.lr.ph.split.i

land.rhs459.us.i.preheader:                       ; preds = %land.rhs459.lr.ph.i
  br i1 %cmp462.us.i151, label %do.body504.i, label %for.body466.us.i

for.body466.us.i:                                 ; preds = %land.rhs459.us.i.preheader, %if.then481.us.i
  %106 = load i8, i8* %17, align 4, !tbaa !24
  switch i8 %106, label %if.end482.i [
    i8 35, label %if.then481.us.i
    i8 10, label %if.then481.us.i
    i8 13, label %if.then481.us.i
  ]

if.then481.us.i:                                  ; preds = %for.body466.us.i, %for.body466.us.i, %for.body466.us.i
  %call461.us.i = call i8* @fgets(i8* nonnull %17, i32 256, %struct._IO_FILE* %call38) #6
  %cmp462.us.i = icmp eq i8* %call461.us.i, null
  br i1 %cmp462.us.i, label %do.body504.i, label %for.body466.us.i

land.rhs459.lr.ph.split.i:                        ; preds = %land.rhs459.lr.ph.i
  br i1 %cmp462.us.i151, label %do.body504.i, label %for.body466.i

do.body504.i:                                     ; preds = %land.rhs459.lr.ph.split.i, %for.body466.i, %for.body466.i, %for.body466.i, %land.rhs459.us.i.preheader, %if.then481.us.i, %for.cond456.preheader.i, %if.end438.i
  %num.12.i = phi i32 [ 0, %if.end438.i ], [ 1, %for.cond456.preheader.i ], [ %num.11.ph1131.i, %if.then481.us.i ], [ %num.11.ph1131.i, %land.rhs459.us.i.preheader ], [ %num.11.ph1131.i, %for.body466.i ], [ %num.11.ph1131.i, %for.body466.i ], [ %num.11.ph1131.i, %for.body466.i ], [ %num.11.ph1131.i, %land.rhs459.lr.ph.split.i ]
  %cmp505.i = icmp slt i32 %num.12.i, %100
  br i1 %cmp505.i, label %if.then507.i, label %do.end510.i

if.then507.i:                                     ; preds = %do.body504.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i32 %num.12.i) #6
  br label %if.then53

do.end510.i:                                      ; preds = %do.end500.i, %do.body504.i
  %cmp511.i = icmp eq i32 %100, 1
  br i1 %cmp511.i, label %if.end603.thread.i, label %if.else515.i

if.end603.thread.i:                               ; preds = %do.end510.i
  %fps_num.i = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 1
  %107 = load i32, i32* %fps_num.i, align 4, !tbaa !28
  %conv514.i = zext i32 %107 to i64
  %timebase_den.i = getelementptr inbounds i8, i8* %call, i32 48
  %108 = bitcast i8* %timebase_den.i to i64*
  store i64 %conv514.i, i64* %108, align 8, !tbaa !17
  br label %if.else614.i

if.else515.i:                                     ; preds = %do.end510.i
  %109 = load i32, i32* %10, align 8, !tbaa !19
  %tobool517.i = icmp eq i32 %109, 0
  br i1 %tobool517.i, label %if.end603.i, label %if.then518.i

if.then518.i:                                     ; preds = %if.else515.i
  %sub519.i = add i32 %100, -1
  %mul520.i = shl i32 %sub519.i, 3
  %call521.i = call noalias i8* @malloc(i32 %mul520.i) #6
  %110 = bitcast i8* %call521.i to double*
  %tobool522.i = icmp eq i8* %call521.i, null
  br i1 %tobool522.i, label %if.then700.thread.i, label %for.cond525.preheader.i

for.cond525.preheader.i:                          ; preds = %if.then518.i
  %cmp5271125.i = icmp sgt i32 %100, 1
  br i1 %cmp5271125.i, label %for.body529.lr.ph.i, label %if.end601.i

for.body529.lr.ph.i:                              ; preds = %for.cond525.preheader.i
  %timebase_num.i = getelementptr inbounds i8, i8* %call, i32 40
  %111 = bitcast i8* %timebase_num.i to i64*
  %timebase_den5711030.i = getelementptr inbounds i8, i8* %call, i32 48
  %112 = bitcast i8* %timebase_den5711030.i to i64*
  %.pre.i = load double, double* %101, align 8, !tbaa !26
  br label %for.body529.i

for.body529.i:                                    ; preds = %for.inc586.i, %for.body529.lr.ph.i
  %113 = phi i32 [ %109, %for.body529.lr.ph.i ], [ %126, %for.inc586.i ]
  %114 = phi i32 [ %109, %for.body529.lr.ph.i ], [ %127, %for.inc586.i ]
  %115 = phi double [ %.pre.i, %for.body529.lr.ph.i ], [ %116, %for.inc586.i ]
  %num.131126.i = phi i32 [ 0, %for.body529.lr.ph.i ], [ %add530.i, %for.inc586.i ]
  %add530.i = add nuw nsw i32 %num.131126.i, 1
  %arrayidx531.i = getelementptr inbounds double, double* %101, i32 %add530.i
  %116 = load double, double* %arrayidx531.i, align 8, !tbaa !26
  %sub533.i = fsub fast double %116, %115
  %div534.i = fdiv fast double 1.000000e+00, %sub533.i
  %arrayidx535.i = getelementptr inbounds double, double* %110, i32 %num.131126.i
  store double %div534.i, double* %arrayidx535.i, align 8, !tbaa !26
  %tobool537.i = icmp eq i32 %114, 0
  br i1 %tobool537.i, label %for.inc586.i, label %if.then538.i

if.then538.i:                                     ; preds = %for.body529.i
  %117 = call fast double @llvm.log10.f64(double %div534.i) #6
  %118 = call fast double @llvm.floor.f64(double %117) #6
  %119 = call fast double @llvm.pow.f64(double 1.000000e+01, double %118) #6
  %div.i1012.i = fdiv fast double %div534.i, %119
  %120 = load i64, i64* %111, align 8, !tbaa !16
  %conv5471116.i = uitofp i64 %120 to double
  %mul5481117.i = fmul fast double %div.i1012.i, %conv5471116.i
  %121 = call fast double @llvm.round.f64(double %mul5481117.i) #6
  %mul5491118.i = fmul fast double %121, %119
  %conv5501119.i = fptoui double %mul5491118.i to i64
  %cmp5511120.i = icmp ugt i64 %conv5501119.i, 4294967295
  br i1 %cmp5511120.i, label %land.lhs.true566.i, label %lor.lhs.false553.i

while.cond543.i:                                  ; preds = %lor.lhs.false553.i
  %conv545.i = zext i32 %inc563.i to i64
  %mul546.i = mul i64 %120, %conv545.i
  %conv547.i = uitofp i64 %mul546.i to double
  %mul548.i = fmul fast double %div.i1012.i, %conv547.i
  %122 = call fast double @llvm.round.f64(double %mul548.i) #6
  %mul549.i = fmul fast double %122, %119
  %conv550.i = fptoui double %mul549.i to i64
  %cmp551.i = icmp ugt i64 %conv550.i, 4294967295
  br i1 %cmp551.i, label %land.lhs.true566.i, label %lor.lhs.false553.i

lor.lhs.false553.i:                               ; preds = %if.then538.i, %while.cond543.i
  %conv5501123.i = phi i64 [ %conv550.i, %while.cond543.i ], [ %conv5501119.i, %if.then538.i ]
  %conv5471122.i = phi double [ %conv547.i, %while.cond543.i ], [ %conv5471116.i, %if.then538.i ]
  %i.01121.i = phi i32 [ %inc563.i, %while.cond543.i ], [ 1, %if.then538.i ]
  %conv554.i = uitofp i64 %conv5501123.i to double
  %123 = fmul fast double %conv5471122.i, %119
  %div557.i = fdiv fast double %conv554.i, %123
  %sub558.i = fsub fast double %div557.i, %div.i1012.i
  %124 = call fast double @llvm.fabs.f64(double %sub558.i) #6
  %cmp559.i = fcmp fast olt double %124, 5.000000e-06
  %inc563.i = add nuw nsw i32 %i.01121.i, 1
  br i1 %cmp559.i, label %while.end564.i, label %while.cond543.i

while.end564.i:                                   ; preds = %lor.lhs.false553.i
  %tobool565.i = icmp eq i64 %conv5501123.i, 0
  br i1 %tobool565.i, label %cond.end.thread.i, label %land.lhs.true566.i

cond.end.thread.i:                                ; preds = %while.end564.i
  store i64 0, i64* %112, align 8, !tbaa !17
  br label %for.inc586.i

land.lhs.true566.i:                               ; preds = %while.cond543.i, %while.end564.i, %if.then538.i
  %conv5501054.i = phi i64 [ %conv5501123.i, %while.end564.i ], [ %conv5501119.i, %if.then538.i ], [ %conv550.i, %while.cond543.i ]
  %125 = load i64, i64* %112, align 8, !tbaa !17
  %tobool568.i = icmp eq i64 %125, 0
  br i1 %tobool568.i, label %cond.end.i, label %while.body.i.i1010.i

while.body.i.i1010.i:                             ; preds = %land.lhs.true566.i, %while.body.i.i1010.i
  %a.addr.0.i.i1006.i = phi i64 [ %b.addr.0.i.i1007.i, %while.body.i.i1010.i ], [ %125, %land.lhs.true566.i ]
  %b.addr.0.i.i1007.i = phi i64 [ %rem.i.i1008.i, %while.body.i.i1010.i ], [ %conv5501054.i, %land.lhs.true566.i ]
  %rem.i.i1008.i = urem i64 %a.addr.0.i.i1006.i, %b.addr.0.i.i1007.i
  %tobool.i.i1009.i = icmp eq i64 %rem.i.i1008.i, 0
  br i1 %tobool.i.i1009.i, label %lcm.exit.i, label %while.body.i.i1010.i

lcm.exit.i:                                       ; preds = %while.body.i.i1010.i
  %div.i1011.i = udiv i64 %125, %b.addr.0.i.i1007.i
  %mul.i.i = mul i64 %div.i1011.i, %conv5501054.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lcm.exit.i, %land.lhs.true566.i
  %cond.i = phi i64 [ %mul.i.i, %lcm.exit.i ], [ %conv5501054.i, %land.lhs.true566.i ]
  store i64 %cond.i, i64* %112, align 8, !tbaa !17
  %cmp573.i = icmp ugt i64 %cond.i, 4294967295
  br i1 %cmp573.i, label %if.then575.i, label %for.inc586.i

if.then575.i:                                     ; preds = %cond.end.i
  store i32 0, i32* %10, align 8, !tbaa !19
  br label %for.inc586.i

for.inc586.i:                                     ; preds = %if.then575.i, %cond.end.i, %cond.end.thread.i, %for.body529.i
  %126 = phi i32 [ 0, %if.then575.i ], [ %113, %cond.end.i ], [ %113, %cond.end.thread.i ], [ %113, %for.body529.i ]
  %127 = phi i32 [ 0, %if.then575.i ], [ %114, %cond.end.i ], [ %114, %cond.end.thread.i ], [ 0, %for.body529.i ]
  %exitcond1162.i = icmp eq i32 %add530.i, %sub519.i
  br i1 %exitcond1162.i, label %for.end588.i, label %for.body529.i

for.end588.i:                                     ; preds = %for.inc586.i
  %128 = load i32, i32* %9, align 4, !tbaa !18
  %tobool590.i = icmp ne i32 %128, 0
  %tobool593.i = icmp eq i32 %126, 0
  %or.cond1220.i = and i1 %tobool593.i, %tobool590.i
  br i1 %or.cond1220.i, label %for.body.i991.i.preheader, label %if.end601.i

for.body.i991.i.preheader:                        ; preds = %for.end588.i
  store i64 0, i64* %111, align 8, !tbaa !16
  store i64 1000000000, i64* %112, align 8, !tbaa !17
  br label %for.body.i991.i

for.cond.i984.i:                                  ; preds = %cond.end.i1002.i
  %exitcond.i983.i = icmp eq i32 %inc.i1001.i, %sub519.i
  br i1 %exitcond.i983.i, label %if.end601.i, label %for.body.i991.i

for.body.i991.i:                                  ; preds = %for.body.i991.i.preheader, %for.cond.i984.i
  %129 = phi i64 [ %cond.i1000.i, %for.cond.i984.i ], [ 0, %for.body.i991.i.preheader ]
  %num.043.i985.i = phi i32 [ %inc.i1001.i, %for.cond.i984.i ], [ 0, %for.body.i991.i.preheader ]
  %arrayidx.i986.i = getelementptr inbounds double, double* %110, i32 %num.043.i985.i
  %130 = load double, double* %arrayidx.i986.i, align 8, !tbaa !26
  %131 = call fast double @llvm.log10.f64(double %130) #6
  %132 = call fast double @llvm.floor.f64(double %131) #6
  %133 = call fast double @llvm.pow.f64(double 1.000000e+01, double %132) #6
  %134 = fmul fast double %133, 1.000000e+09
  %div.i987.i = fdiv fast double %134, %130
  %135 = call fast double @llvm.round.f64(double %div.i987.i) #6
  %div1.i988.i = fdiv fast double %135, %133
  %conv.i989.i = fptoui double %div1.i988.i to i64
  %tobool.i990.i = icmp eq i64 %conv.i989.i, 0
  br i1 %tobool.i990.i, label %cond.end.thread.i992.i, label %land.lhs.true.i994.i

cond.end.thread.i992.i:                           ; preds = %for.body.i991.i
  store i64 0, i64* %111, align 8, !tbaa !16
  br label %try_mkv_timebase_den.exit1004.i

land.lhs.true.i994.i:                             ; preds = %for.body.i991.i
  %tobool3.i993.i = icmp eq i64 %129, 0
  br i1 %tobool3.i993.i, label %cond.end.i1002.i, label %while.body.i.i999.i

while.body.i.i999.i:                              ; preds = %land.lhs.true.i994.i, %while.body.i.i999.i
  %a.addr.0.i.i995.i = phi i64 [ %b.addr.0.i.i996.i, %while.body.i.i999.i ], [ %129, %land.lhs.true.i994.i ]
  %b.addr.0.i.i996.i = phi i64 [ %rem.i.i997.i, %while.body.i.i999.i ], [ %conv.i989.i, %land.lhs.true.i994.i ]
  %rem.i.i997.i = urem i64 %a.addr.0.i.i995.i, %b.addr.0.i.i996.i
  %tobool.i.i998.i = icmp eq i64 %rem.i.i997.i, 0
  br i1 %tobool.i.i998.i, label %cond.end.i1002.i, label %while.body.i.i999.i

cond.end.i1002.i:                                 ; preds = %while.body.i.i999.i, %land.lhs.true.i994.i
  %cond.i1000.i = phi i64 [ %conv.i989.i, %land.lhs.true.i994.i ], [ %b.addr.0.i.i996.i, %while.body.i.i999.i ]
  store i64 %cond.i1000.i, i64* %111, align 8, !tbaa !16
  %136 = add i64 %cond.i1000.i, -1
  %137 = icmp ugt i64 %136, 4294967294
  %inc.i1001.i = add nuw nsw i32 %num.043.i985.i, 1
  br i1 %137, label %try_mkv_timebase_den.exit1004.i, label %for.cond.i984.i

try_mkv_timebase_den.exit1004.i:                  ; preds = %cond.end.i1002.i, %cond.end.thread.i992.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.27, i32 0, i32 0)) #6
  br label %if.then700.i

if.end601.i:                                      ; preds = %for.cond.i984.i, %for.cond525.preheader.i, %for.end588.i
  call void @free(i8* %call521.i) #6
  br label %if.end603.i

if.end603.i:                                      ; preds = %if.end601.i, %if.else515.i
  %cmp604.i = icmp sgt i32 %100, 1
  br i1 %cmp604.i, label %if.then606.i, label %if.end603.if.else614_crit_edge.i

if.end603.if.else614_crit_edge.i:                 ; preds = %if.end603.i
  %fps_num615.phi.trans.insert.i = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 1
  %.pre1164.i = load i32, i32* %fps_num615.phi.trans.insert.i, align 4, !tbaa !28
  br label %if.else614.i

if.then606.i:                                     ; preds = %if.end603.i
  %sub607.i = add nsw i32 %100, -1
  %arrayidx608.i = getelementptr inbounds double, double* %101, i32 %sub607.i
  %138 = load double, double* %arrayidx608.i, align 8, !tbaa !26
  %sub609.i = add nsw i32 %100, -2
  %arrayidx610.i = getelementptr inbounds double, double* %101, i32 %sub609.i
  %139 = load double, double* %arrayidx610.i, align 8, !tbaa !26
  %sub611.i = fsub fast double %138, %139
  %div612.i = fdiv fast double 1.000000e+00, %sub611.i
  %assume_fps613.i = getelementptr inbounds i8, i8* %call, i32 64
  %140 = bitcast i8* %assume_fps613.i to double*
  store double %div612.i, double* %140, align 8, !tbaa !23
  br label %cleanup625.i

if.else614.i:                                     ; preds = %if.end603.if.else614_crit_edge.i, %if.end603.thread.i
  %141 = phi i32 [ %.pre1164.i, %if.end603.if.else614_crit_edge.i ], [ %107, %if.end603.thread.i ]
  %conv616.i = uitofp i32 %141 to double
  %fps_den617.i = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 2
  %142 = load i32, i32* %fps_den617.i, align 4, !tbaa !20
  %conv618.i = uitofp i32 %142 to double
  %div619.i = fdiv fast double %conv616.i, %conv618.i
  %assume_fps620.i = getelementptr inbounds i8, i8* %call, i32 64
  %143 = bitcast i8* %assume_fps620.i to double*
  store double %div619.i, double* %143, align 8, !tbaa !23
  %.pre1165.i = add nsw i32 %100, -1
  %arrayidx623.phi.trans.insert.i = getelementptr inbounds double, double* %101, i32 %.pre1165.i
  %.pre1166.i = load double, double* %arrayidx623.phi.trans.insert.i, align 8, !tbaa !26
  br label %cleanup625.i

cleanup625.i:                                     ; preds = %if.else614.i, %if.then606.i
  %144 = phi double [ %138, %if.then606.i ], [ %.pre1166.i, %if.else614.i ]
  %last_timecode624.i = getelementptr inbounds i8, i8* %call, i32 72
  %145 = bitcast i8* %last_timecode624.i to double*
  store double %144, double* %145, align 8, !tbaa !27
  br label %if.end628.i

if.end628.i:                                      ; preds = %cleanup625.i, %cleanup384.i
  %timecodes.2.i = phi double* [ %39, %cleanup384.i ], [ %101, %cleanup625.i ]
  %146 = load i32, i32* %10, align 8, !tbaa !19
  %tobool630.i = icmp eq i32 %146, 0
  br i1 %tobool630.i, label %lor.lhs.false631.i, label %if.then634.i

lor.lhs.false631.i:                               ; preds = %if.end628.i
  %147 = load i32, i32* %9, align 4, !tbaa !18
  %tobool633.i = icmp eq i32 %147, 0
  br i1 %tobool633.i, label %do.body646.i, label %if.then634.i

if.then634.i:                                     ; preds = %lor.lhs.false631.i, %if.end628.i
  %timebase_num636.i = getelementptr inbounds i8, i8* %call, i32 40
  %148 = bitcast i8* %timebase_num636.i to i64*
  %149 = load i64, i64* %148, align 8, !tbaa !16
  %timebase_den637.i = getelementptr inbounds i8, i8* %call, i32 48
  %150 = bitcast i8* %timebase_den637.i to i64*
  %151 = load i64, i64* %150, align 8, !tbaa !17
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.then634.i
  %a.addr.0.i.i = phi i64 [ %149, %if.then634.i ], [ %b.addr.0.i.i, %while.body.i.i ]
  %b.addr.0.i.i = phi i64 [ %151, %if.then634.i ], [ %rem.i.i, %while.body.i.i ]
  %rem.i.i = urem i64 %a.addr.0.i.i, %b.addr.0.i.i
  %tobool.i979.i = icmp eq i64 %rem.i.i, 0
  br i1 %tobool.i979.i, label %gcd.exit.i, label %while.body.i.i

gcd.exit.i:                                       ; preds = %while.body.i.i
  %div640.i = udiv i64 %149, %b.addr.0.i.i
  store i64 %div640.i, i64* %148, align 8, !tbaa !16
  %div642.i = udiv i64 %151, %b.addr.0.i.i
  store i64 %div642.i, i64* %150, align 8, !tbaa !17
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i64 %div640.i, i64 %div642.i) #6
  br label %if.end657.i

do.body646.i:                                     ; preds = %lor.lhs.false631.i
  %timebase_den647.i = getelementptr inbounds i8, i8* %call, i32 48
  %152 = bitcast i8* %timebase_den647.i to i64*
  %153 = load i64, i64* %152, align 8, !tbaa !17
  %154 = add i64 %153, -1
  %155 = icmp ugt i64 %154, 4294967294
  br i1 %155, label %if.then653.i, label %if.end657.i

if.then653.i:                                     ; preds = %do.body646.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.24, i32 0, i32 0)) #6
  br label %if.then53

if.end657.i:                                      ; preds = %do.body646.i, %gcd.exit.i
  %stored_pts_num658.i = getelementptr inbounds i8, i8* %call, i32 56
  %156 = bitcast i8* %stored_pts_num658.i to i32*
  %157 = load i32, i32* %156, align 8, !tbaa !25
  %mul659.i = shl i32 %157, 3
  %call660.i = call noalias i8* @malloc(i32 %mul659.i) #6
  %158 = bitcast i8* %pts to i8**
  store i8* %call660.i, i8** %158, align 4, !tbaa !13
  %tobool662.i = icmp eq i8* %call660.i, null
  %159 = bitcast i8* %call660.i to i64*
  br i1 %tobool662.i, label %if.then700.thread.i, label %for.cond665.preheader.i

for.cond665.preheader.i:                          ; preds = %if.end657.i
  %cmp6671056.i = icmp sgt i32 %157, 0
  br i1 %cmp6671056.i, label %for.body669.lr.ph.i, label %if.end60

for.body669.lr.ph.i:                              ; preds = %for.cond665.preheader.i
  %timebase_den671.i = getelementptr inbounds i8, i8* %call, i32 48
  %160 = bitcast i8* %timebase_den671.i to i64*
  %timebase_num673.i = getelementptr inbounds i8, i8* %call, i32 40
  %161 = bitcast i8* %timebase_num673.i to i64*
  %.pre1177.i = load i64, i64* %160, align 8, !tbaa !17
  %.pre1178.i = load i64, i64* %161, align 8, !tbaa !16
  %conv672.i = uitofp i64 %.pre1177.i to double
  %conv674.i = uitofp i64 %.pre1178.i to double
  %162 = fdiv fast double 1.000000e+00, %conv674.i
  br label %for.body669.i

for.body669.i:                                    ; preds = %for.inc696.i, %for.body669.lr.ph.i
  %num.141057.i = phi i32 [ 0, %for.body669.lr.ph.i ], [ %inc697.i, %for.inc696.i ]
  %arrayidx670.i = getelementptr inbounds double, double* %timecodes.2.i, i32 %num.141057.i
  %163 = load double, double* %arrayidx670.i, align 8, !tbaa !26
  %164 = fmul fast double %163, %conv672.i
  %165 = fmul fast double %164, %162
  %add677.i = fadd fast double %165, 5.000000e-01
  %conv678.i = fptosi double %add677.i to i64
  %arrayidx680.i = getelementptr inbounds i64, i64* %159, i32 %num.141057.i
  store i64 %conv678.i, i64* %arrayidx680.i, align 8, !tbaa !29
  %cmp682.i = icmp eq i32 %num.141057.i, 0
  br i1 %cmp682.i, label %for.inc696.i, label %land.lhs.true684.i

land.lhs.true684.i:                               ; preds = %for.body669.i
  %sub688.i = add nsw i32 %num.141057.i, -1
  %arrayidx689.i = getelementptr inbounds i64, i64* %159, i32 %sub688.i
  %166 = load i64, i64* %arrayidx689.i, align 8, !tbaa !29
  %cmp690.i = icmp slt i64 %166, %conv678.i
  br i1 %cmp690.i, label %for.inc696.i, label %if.then692.i

if.then692.i:                                     ; preds = %land.lhs.true684.i
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i32 0, i32 0), i32 %num.141057.i) #6
  br label %if.then53

for.inc696.i:                                     ; preds = %land.lhs.true684.i, %for.body669.i
  %inc697.i = add nuw nsw i32 %num.141057.i, 1
  %exitcond.i = icmp eq i32 %inc697.i, %157
  br i1 %exitcond.i, label %if.end60, label %for.body669.i

if.then700.thread.i:                              ; preds = %if.end657.i, %if.then518.i
  %timecodes.3.ph.i = phi double* [ %101, %if.then518.i ], [ %timecodes.2.i, %if.end657.i ]
  %167 = bitcast double* %timecodes.3.ph.i to i8*
  call void @free(i8* %167) #6
  br label %if.then53

if.then700.i:                                     ; preds = %try_mkv_timebase_den.exit1004.i, %cleanup384.thread1024.i
  %fpss.6.i = phi double* [ %fpss.2.ph.i, %cleanup384.thread1024.i ], [ %110, %try_mkv_timebase_den.exit1004.i ]
  %168 = phi i8* [ %call132.i, %cleanup384.thread1024.i ], [ %call435.i, %try_mkv_timebase_den.exit1004.i ]
  call void @free(i8* %168) #6
  %tobool702.i = icmp eq double* %fpss.6.i, null
  br i1 %tobool702.i, label %if.then53, label %if.then703.i

if.then703.i:                                     ; preds = %if.then700.i
  %169 = bitcast double* %fpss.6.i to i8*
  call void @free(i8* %169) #6
  br label %if.then53

if.then53:                                        ; preds = %if.then.i, %if.then692.i, %if.then653.i, %if.then700.i, %if.then703.i, %cleanup384.thread.i, %if.then452.i, %if.then497.i, %if.then507.i, %if.then428.i, %do.end431.i, %if.then700.thread.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #6
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %17) #6
  %170 = load i64*, i64** %4, align 4, !tbaa !13
  %tobool55 = icmp eq i64* %170, null
  br i1 %tobool55, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.then53
  %171 = bitcast i64* %170 to i8*
  call void @free(i8* %171) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.then56
  %call59 = call i32 @fclose(%struct._IO_FILE* nonnull %call38)
  br label %cleanup

if.end60:                                         ; preds = %for.inc696.i, %for.cond665.preheader.i
  %172 = bitcast double* %timecodes.2.i to i8*
  call void @free(i8* %172) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #6
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %17) #6
  %call61 = call i32 @fclose(%struct._IO_FILE* nonnull %call38)
  %timebase_num62 = getelementptr inbounds i8, i8* %call, i32 40
  %173 = bitcast i8* %timebase_num62 to i64*
  %174 = load i64, i64* %173, align 8, !tbaa !16
  %conv63 = trunc i64 %174 to i32
  %timebase_num64 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 12
  store i32 %conv63, i32* %timebase_num64, align 4, !tbaa !30
  %timebase_den65 = getelementptr inbounds i8, i8* %call, i32 48
  %175 = bitcast i8* %timebase_den65 to i64*
  %176 = load i64, i64* %175, align 8, !tbaa !17
  %conv66 = trunc i64 %176 to i32
  %timebase_den67 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 13
  store i32 %conv66, i32* %timebase_den67, align 4, !tbaa !31
  %vfr = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 14
  store i32 1, i32* %vfr, align 4, !tbaa !32
  store i8* %call, i8** %p_handle, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end58, %if.then47, %if.then41, %if.then19, %if.then
  %retval.0 = phi i32 [ -1, %if.then19 ], [ -1, %if.end58 ], [ 0, %if.end60 ], [ -1, %if.then47 ], [ -1, %if.then41 ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @picture_alloc(%struct.cli_pic_t* %pic, i8* nocapture readonly %handle, i32 %csp, i32 %width, i32 %height) #0 {
entry:
  %picture_alloc = getelementptr inbounds i8, i8* %handle, i32 4
  %0 = bitcast i8* %picture_alloc to i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)**
  %1 = load i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)*, i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)** %0, align 4, !tbaa !33
  %p_handle = getelementptr inbounds i8, i8* %handle, i32 24
  %2 = bitcast i8* %p_handle to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !7
  %call = tail call i32 %1(%struct.cli_pic_t* %pic, i8* %3, i32 %csp, i32 %width, i32 %height) #6
  ret i32 %call
}

; Function Attrs: nounwind
define internal i32 @read_frame(%struct.cli_pic_t* %pic, i8* nocapture %handle, i32 %frame) #0 {
entry:
  %0 = bitcast i8* %handle to %struct.timecode_hnd_t*
  %read_frame = getelementptr inbounds i8, i8* %handle, i32 8
  %1 = bitcast i8* %read_frame to i32 (%struct.cli_pic_t*, i8*, i32)**
  %2 = load i32 (%struct.cli_pic_t*, i8*, i32)*, i32 (%struct.cli_pic_t*, i8*, i32)** %1, align 8, !tbaa !34
  %p_handle = getelementptr inbounds i8, i8* %handle, i32 24
  %3 = bitcast i8* %p_handle to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !7
  %call = tail call i32 %2(%struct.cli_pic_t* %pic, i8* %4, i32 %frame) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i64 @get_frame_pts(%struct.timecode_hnd_t* %0, i32 %frame, i32 1)
  %pts = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 1
  store i64 %call1, i64* %pts, align 8, !tbaa !35
  %add = add nsw i32 %frame, 1
  %call2 = tail call fastcc i64 @get_frame_pts(%struct.timecode_hnd_t* %0, i32 %add, i32 0)
  %5 = load i64, i64* %pts, align 8, !tbaa !35
  %sub = sub nsw i64 %call2, %5
  %duration = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 2
  store i64 %sub, i64* %duration, align 8, !tbaa !38
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @release_frame(%struct.cli_pic_t* %pic, i8* nocapture readonly %handle) #0 {
entry:
  %release_frame = getelementptr inbounds i8, i8* %handle, i32 12
  %0 = bitcast i8* %release_frame to i32 (%struct.cli_pic_t*, i8*)**
  %1 = load i32 (%struct.cli_pic_t*, i8*)*, i32 (%struct.cli_pic_t*, i8*)** %0, align 4, !tbaa !39
  %tobool = icmp eq i32 (%struct.cli_pic_t*, i8*)* %1, null
  br i1 %tobool, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %p_handle = getelementptr inbounds i8, i8* %handle, i32 24
  %2 = bitcast i8* %p_handle to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !7
  %call = tail call i32 %1(%struct.cli_pic_t* %pic, i8* %3) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal void @picture_clean(%struct.cli_pic_t* %pic, i8* nocapture readonly %handle) #0 {
entry:
  %picture_clean = getelementptr inbounds i8, i8* %handle, i32 16
  %0 = bitcast i8* %picture_clean to void (%struct.cli_pic_t*, i8*)**
  %1 = load void (%struct.cli_pic_t*, i8*)*, void (%struct.cli_pic_t*, i8*)** %0, align 8, !tbaa !40
  %p_handle = getelementptr inbounds i8, i8* %handle, i32 24
  %2 = bitcast i8* %p_handle to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !7
  tail call void %1(%struct.cli_pic_t* %pic, i8* %3) #6
  ret void
}

; Function Attrs: nounwind
define internal i32 @close_file(i8* nocapture %handle) #0 {
entry:
  %pts = getelementptr inbounds i8, i8* %handle, i32 60
  %0 = bitcast i8* %pts to i64**
  %1 = load i64*, i64** %0, align 4, !tbaa !13
  %tobool = icmp eq i64* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i64* %1 to i8*
  tail call void @free(i8* %2) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %close_file = getelementptr inbounds i8, i8* %handle, i32 20
  %3 = bitcast i8* %close_file to i32 (i8*)**
  %4 = load i32 (i8*)*, i32 (i8*)** %3, align 4, !tbaa !41
  %p_handle = getelementptr inbounds i8, i8* %handle, i32 24
  %5 = bitcast i8* %p_handle to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !7
  %call = tail call i32 %4(i8* %6) #6
  tail call void @free(i8* nonnull %handle) #6
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i32) local_unnamed_addr #2

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

declare dso_local %struct._IO_FILE* @fopen64(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @ftell(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @fseek(%struct._IO_FILE* nocapture, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc double @correct_fps(double %fps, %struct.timecode_hnd_t* nocapture %h) unnamed_addr #0 {
entry:
  %0 = tail call fast double @llvm.log10.f64(double %fps) #6
  %1 = tail call fast double @llvm.floor.f64(double %0) #6
  %2 = tail call fast double @llvm.pow.f64(double 1.000000e+01, double %1) #6
  %div.i = fdiv fast double %fps, %2
  %timebase_num = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 4
  %3 = load i64, i64* %timebase_num, align 8, !tbaa !16
  %conv155 = uitofp i64 %3 to double
  %mul256 = fmul fast double %div.i, %conv155
  %4 = tail call fast double @llvm.round.f64(double %mul256)
  %mul357 = fmul fast double %4, %2
  %conv458 = fptoui double %mul357 to i64
  %cmp59 = icmp ugt i64 %conv458, 4294967295
  br i1 %cmp59, label %if.then, label %do.end.preheader

do.end.preheader:                                 ; preds = %entry
  %5 = fdiv fast double 1.000000e+00, %2
  br label %do.end

while.cond:                                       ; preds = %do.end
  %conv = zext i32 %inc to i64
  %mul = mul i64 %3, %conv
  %conv1 = uitofp i64 %mul to double
  %mul2 = fmul fast double %div.i, %conv1
  %6 = tail call fast double @llvm.round.f64(double %mul2)
  %mul3 = fmul fast double %6, %2
  %conv4 = fptoui double %mul3 to i64
  %cmp = icmp ugt i64 %conv4, 4294967295
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %while.cond, %entry
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.26, i32 0, i32 0)) #6
  br label %cleanup

do.end:                                           ; preds = %do.end.preheader, %while.cond
  %conv462 = phi i64 [ %conv4, %while.cond ], [ %conv458, %do.end.preheader ]
  %conv161 = phi double [ %conv1, %while.cond ], [ %conv155, %do.end.preheader ]
  %i.060 = phi i32 [ %inc, %while.cond ], [ 1, %do.end.preheader ]
  %conv6 = uitofp i64 %conv462 to double
  %div = fdiv fast double %conv6, %conv161
  %7 = fmul fast double %div, %5
  %sub = fsub fast double %7, %div.i
  %8 = tail call fast double @llvm.fabs.f64(double %sub)
  %cmp9 = fcmp fast olt double %8, 5.000000e-06
  %inc = add nuw nsw i32 %i.060, 1
  br i1 %cmp9, label %while.end, label %while.cond

while.end:                                        ; preds = %do.end
  %auto_timebase_den = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 3
  %9 = load i32, i32* %auto_timebase_den, align 8, !tbaa !19
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %cleanup, label %if.then13

if.then13:                                        ; preds = %while.end
  %timebase_den = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 5
  %10 = load i64, i64* %timebase_den, align 8, !tbaa !17
  %tobool14 = icmp eq i64 %10, 0
  br i1 %tobool14, label %cond.end.thread, label %while.body.i.i

cond.end.thread:                                  ; preds = %if.then13
  store i64 %conv462, i64* %timebase_den, align 8, !tbaa !17
  br label %cleanup

while.body.i.i:                                   ; preds = %if.then13, %while.body.i.i
  %a.addr.0.i.i = phi i64 [ %b.addr.0.i.i, %while.body.i.i ], [ %10, %if.then13 ]
  %b.addr.0.i.i = phi i64 [ %rem.i.i, %while.body.i.i ], [ %conv462, %if.then13 ]
  %rem.i.i = urem i64 %a.addr.0.i.i, %b.addr.0.i.i
  %tobool.i.i = icmp eq i64 %rem.i.i, 0
  br i1 %tobool.i.i, label %cond.end, label %while.body.i.i

cond.end:                                         ; preds = %while.body.i.i
  %div.i50 = udiv i64 %10, %b.addr.0.i.i
  %mul.i = mul i64 %div.i50, %conv462
  store i64 %mul.i, i64* %timebase_den, align 8, !tbaa !17
  %cmp19 = icmp ugt i64 %mul.i, 4294967295
  br i1 %cmp19, label %if.then21, label %cleanup

if.then21:                                        ; preds = %cond.end
  store i32 0, i32* %auto_timebase_den, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %cond.end.thread, %if.then21, %cond.end, %while.end, %if.then
  %retval.0 = phi double [ -1.000000e+00, %if.then ], [ %div, %while.end ], [ %div, %cond.end ], [ %div, %if.then21 ], [ %div, %cond.end.thread ]
  ret double %retval.0
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.round.f64(double) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.log10.f64(double) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #5

; Function Attrs: nounwind
define internal fastcc i64 @get_frame_pts(%struct.timecode_hnd_t* nocapture %h, i32 %frame, i32 %real_frame) unnamed_addr #0 {
entry:
  %stored_pts_num = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 6
  %0 = load i32, i32* %stored_pts_num, align 8, !tbaa !25
  %cmp = icmp sgt i32 %0, %frame
  %pts = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 7
  %1 = load i64*, i64** %pts, align 4, !tbaa !13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i64, i64* %1, i32 %frame
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !29
  br label %return

if.else:                                          ; preds = %entry
  %tobool = icmp ne i64* %1, null
  %tobool2 = icmp ne i32 %real_frame, 0
  %or.cond = and i1 %tobool2, %tobool
  br i1 %or.cond, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %assume_fps = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 8
  %3 = load double, double* %assume_fps, align 8, !tbaa !23
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.28, i32 0, i32 0), i32 %frame, double %3) #6
  %4 = bitcast i64** %pts to i8**
  %5 = load i8*, i8** %4, align 4, !tbaa !13
  tail call void @free(i8* %5) #6
  store i64* null, i64** %pts, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  %last_timecode = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 9
  %6 = load double, double* %last_timecode, align 8, !tbaa !27
  %assume_fps6 = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 8
  %7 = load double, double* %assume_fps6, align 8, !tbaa !23
  %div = fdiv fast double 1.000000e+00, %7
  %add = fadd fast double %div, %6
  br i1 %tobool2, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  store double %add, double* %last_timecode, align 8, !tbaa !27
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %timebase_den = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 5
  %8 = load i64, i64* %timebase_den, align 8, !tbaa !17
  %conv = uitofp i64 %8 to double
  %timebase_num = getelementptr inbounds %struct.timecode_hnd_t, %struct.timecode_hnd_t* %h, i32 0, i32 4
  %9 = load i64, i64* %timebase_num, align 8, !tbaa !16
  %conv11 = uitofp i64 %9 to double
  %10 = fmul fast double %add, %conv
  %mul = fdiv fast double %10, %conv11
  %add13 = fadd fast double %mul, 5.000000e-01
  %conv14 = fptosi double %add13 to i64
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %retval.0 = phi i64 [ %2, %if.then ], [ %conv14, %if.end10 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 24}
!8 = !{!"", !9, i64 0, !4, i64 24, !10, i64 28, !10, i64 32, !11, i64 40, !11, i64 48, !10, i64 56, !4, i64 60, !12, i64 64, !12, i64 72}
!9 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!10 = !{!"int", !5, i64 0}
!11 = !{!"long long", !5, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!8, !4, i64 60}
!14 = !{!15, !4, i64 20}
!15 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !10, i64 16, !4, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40}
!16 = !{!8, !11, i64 40}
!17 = !{!8, !11, i64 48}
!18 = !{!8, !10, i64 28}
!19 = !{!8, !10, i64 32}
!20 = !{!21, !10, i64 8}
!21 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56}
!22 = !{!10, !10, i64 0}
!23 = !{!8, !12, i64 64}
!24 = !{!5, !5, i64 0}
!25 = !{!8, !10, i64 56}
!26 = !{!12, !12, i64 0}
!27 = !{!8, !12, i64 72}
!28 = !{!21, !10, i64 4}
!29 = !{!11, !11, i64 0}
!30 = !{!21, !10, i64 48}
!31 = !{!21, !10, i64 52}
!32 = !{!21, !10, i64 56}
!33 = !{!8, !4, i64 4}
!34 = !{!8, !4, i64 8}
!35 = !{!36, !11, i64 48}
!36 = !{!"", !37, i64 0, !11, i64 48, !11, i64 56, !4, i64 64}
!37 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 32}
!38 = !{!36, !11, i64 56}
!39 = !{!8, !4, i64 12}
!40 = !{!8, !4, i64 16}
!41 = !{!8, !4, i64 20}
