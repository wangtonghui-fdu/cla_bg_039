; ModuleID = 'input/y4m.c'
source_filename = "input/y4m.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.cli_input_t = type { i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)*, i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)*, i32 (%struct.cli_pic_t*, i8*, i32)*, i32 (%struct.cli_pic_t*, i8*)*, void (%struct.cli_pic_t*, i8*)*, i32 (i8*)* }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_input_opt_t = type { i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.cli_pic_t = type { %struct.cli_image_t, i64, i64, i8* }
%struct.cli_image_t = type { i32, i32, i32, i32, [4 x i8*], [4 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.x264_cli_csp_t = type { i8*, i32, [4 x float], [4 x float], i32, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.cli_mmap_t = type { i64, i32 }
%struct.y4m_hnd_t = type { %struct._IO_FILE*, i32, i32, i32, i64, [3 x i64], i32, %struct.cli_mmap_t, i32 }

@y4m_input = hidden local_unnamed_addr constant %struct.cli_input_t { i32 (i8*, i8**, %struct.video_info_t*, %struct.cli_input_opt_t*)* @open_file, i32 (%struct.cli_pic_t*, i8*, i32, i32, i32)* @picture_alloc, i32 (%struct.cli_pic_t*, i8*, i32)* @read_frame, i32 (%struct.cli_pic_t*, i8*)* @release_frame, void (%struct.cli_pic_t*, i8*)* @picture_clean, i32 (i8*)* @close_file }, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"YUV4MPEG2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"y4m\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"bad sequence header magic\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"bad sequence header length\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"YSCSS=\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"COLORRANGE=\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"FULL\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"LIMITED\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"colorspace unhandled\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"unsupported bit depth `%d'\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"bad frame header length\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"empty input file\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"420\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"422\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"444\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"444alpha\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"mono%d\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"%*d%*[pP]%d\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"bad frame header magic\0A\00", align 1

; Function Attrs: nounwind
define internal i32 @open_file(i8* %psz_filename, i8** nocapture %p_handle, %struct.video_info_t* nocapture %info, %struct.cli_input_opt_t* nocapture readnone %opt) #0 {
entry:
  %file_stat.i = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  %header = alloca [266 x i8], align 1
  %tokend = alloca i8*, align 4
  %alt_bit_depth = alloca i32, align 4
  %call = tail call noalias dereferenceable_or_null(80) i8* @calloc(i32 1, i32 80) #6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %1 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %2 = getelementptr inbounds [266 x i8], [266 x i8]* %header, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 266, i8* nonnull %2) #6
  %3 = bitcast i8** %tokend to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = bitcast i32* %alt_bit_depth to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  store i32 8, i32* %alt_bit_depth, align 4, !tbaa !2
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup231, label %if.end

if.end:                                           ; preds = %entry
  %vfr = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 14
  store i32 0, i32* %vfr, align 4, !tbaa !6
  %call1 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %psz_filename, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #7
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* bitcast (%struct._IO_FILE** @stdin to i32*), align 4, !tbaa !8
  %6 = bitcast i8* %call to i32*
  store i32 %5, i32* %6, align 8, !tbaa !10
  %7 = inttoptr i32 %5 to %struct._IO_FILE*
  %.pre378 = bitcast i8* %call to %struct._IO_FILE**
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call4 = tail call %struct._IO_FILE* @fopen64(i8* %psz_filename, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #6
  %fh5 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fh5, align 8, !tbaa !10
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %fh7.pre-phi = phi %struct._IO_FILE** [ %fh5, %if.else ], [ %.pre378, %if.then3 ]
  %8 = phi %struct._IO_FILE* [ %call4, %if.else ], [ %7, %if.then3 ]
  %cmp = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp, label %cleanup231, label %for.cond

for.cond:                                         ; preds = %if.end6, %for.body
  %i.0 = phi i32 [ %add, %for.body ], [ 0, %if.end6 ]
  %exitcond377 = icmp eq i32 %i.0, 256
  br i1 %exitcond377, label %do.body, label %for.body

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fh7.pre-phi, align 8, !tbaa !10
  %call12 = tail call i32 @fgetc(%struct._IO_FILE* %9)
  %conv = trunc i32 %call12 to i8
  %arrayidx = getelementptr inbounds [266 x i8], [266 x i8]* %header, i32 0, i32 %i.0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !14
  %sext.mask = and i32 %call12, 255
  %cmp15 = icmp eq i32 %sext.mask, 10
  %add = add nuw nsw i32 %i.0, 1
  br i1 %cmp15, label %if.then17, label %for.cond

if.then17:                                        ; preds = %for.body
  %arrayidx18 = getelementptr inbounds [266 x i8], [266 x i8]* %header, i32 0, i32 %add
  store i8 32, i8* %arrayidx18, align 1, !tbaa !14
  %add19 = add nuw nsw i32 %i.0, 2
  %arrayidx20 = getelementptr inbounds [266 x i8], [266 x i8]* %header, i32 0, i32 %add19
  store i8 0, i8* %arrayidx20, align 1, !tbaa !14
  br label %do.body

do.body:                                          ; preds = %for.cond, %if.then17
  %memcmp = call i32 @memcmp(i8* nonnull dereferenceable(9) %2, i8* nonnull dereferenceable(9) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 9)
  %tobool23 = icmp eq i32 %memcmp, 0
  br i1 %tobool23, label %do.body26, label %if.then24

if.then24:                                        ; preds = %do.body
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %cleanup231

do.body26:                                        ; preds = %do.body
  %cmp27 = icmp eq i32 %i.0, 256
  br i1 %cmp27, label %if.then29, label %do.end32

if.then29:                                        ; preds = %do.body26
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %cleanup231

do.end32:                                         ; preds = %do.body26
  %add33 = add nuw nsw i32 %i.0, 1
  %arrayidx34 = getelementptr inbounds [266 x i8], [266 x i8]* %header, i32 0, i32 %add33
  %seq_header_len = getelementptr inbounds i8, i8* %call, i32 8
  %10 = bitcast i8* %seq_header_len to i32*
  store i32 %add33, i32* %10, align 8, !tbaa !15
  %cmp38369 = icmp ugt i32 %i.0, 9
  br i1 %cmp38369, label %for.body40.lr.ph, label %if.end115.thread

if.end115.thread:                                 ; preds = %do.end32
  %11 = load i32, i32* %alt_bit_depth, align 4, !tbaa !2
  %bit_depth114384 = getelementptr inbounds i8, i8* %call, i32 48
  %12 = bitcast i8* %bit_depth114384 to i32*
  store i32 %11, i32* %12, align 8, !tbaa !16
  br label %do.body130.thread

for.body40.lr.ph:                                 ; preds = %do.end32
  %add.ptr = getelementptr inbounds [266 x i8], [266 x i8]* %header, i32 0, i32 10
  %fullrange101 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 3
  %sar_width = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 8
  %sar_height = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 9
  %fps_num = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 1
  %fps_den = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 2
  %interlaced61 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 6
  %tff59 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 10
  %bit_depth = getelementptr inbounds i8, i8* %call, i32 48
  %13 = bitcast i8* %bit_depth to i32*
  %height = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 5
  %width = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  br label %for.body40

for.cond.cleanup:                                 ; preds = %for.inc108
  %cmp111 = icmp eq i32 %colorspace.1, 0
  br i1 %cmp111, label %if.end115, label %do.body121

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc108
  %colorspace.0372 = phi i32 [ 0, %for.body40.lr.ph ], [ %colorspace.1, %for.inc108 ]
  %tokstart.0371 = phi i8* [ %add.ptr, %for.body40.lr.ph ], [ %incdec.ptr109, %for.inc108 ]
  %alt_colorspace.0370 = phi i32 [ 0, %for.body40.lr.ph ], [ %alt_colorspace.2, %for.inc108 ]
  %14 = load i8, i8* %tokstart.0371, align 1, !tbaa !14
  %cmp42 = icmp eq i8 %14, 32
  br i1 %cmp42, label %for.inc108, label %if.end45

if.end45:                                         ; preds = %for.body40
  %conv41 = sext i8 %14 to i32
  %incdec.ptr = getelementptr inbounds i8, i8* %tokstart.0371, i32 1
  switch i32 %conv41, label %for.inc108 [
    i32 87, label %sw.bb
    i32 72, label %sw.bb48
    i32 67, label %sw.bb50
    i32 73, label %sw.bb53
    i32 70, label %sw.bb62
    i32 65, label %sw.bb72
    i32 88, label %sw.bb83
  ]

sw.bb:                                            ; preds = %if.end45
  %call47 = call i32 @strtol(i8* nonnull %incdec.ptr, i8** nonnull %tokend, i32 10) #6
  store i32 %call47, i32* %width, align 4, !tbaa !17
  %15 = load i8*, i8** %tokend, align 4, !tbaa !8
  br label %for.inc108

sw.bb48:                                          ; preds = %if.end45
  %call49 = call i32 @strtol(i8* nonnull %incdec.ptr, i8** nonnull %tokend, i32 10) #6
  store i32 %call49, i32* %height, align 4, !tbaa !18
  %16 = load i8*, i8** %tokend, align 4, !tbaa !8
  br label %for.inc108

sw.bb50:                                          ; preds = %if.end45
  %call51 = call fastcc i32 @parse_csp_and_depth(i8* nonnull %incdec.ptr, i32* nonnull %13)
  %call52 = call i8* @strchr(i8* nonnull %incdec.ptr, i32 32) #7
  br label %for.inc108

sw.bb53:                                          ; preds = %if.end45
  %incdec.ptr54 = getelementptr inbounds i8, i8* %tokstart.0371, i32 2
  %17 = load i8, i8* %incdec.ptr, align 1, !tbaa !14
  %conv55 = sext i8 %17 to i32
  switch i32 %conv55, label %for.inc108 [
    i32 116, label %sw.bb56
    i32 98, label %sw.bb57
    i32 109, label %sw.bb60
  ]

sw.bb56:                                          ; preds = %sw.bb53
  store i32 1, i32* %interlaced61, align 4, !tbaa !19
  store i32 1, i32* %tff59, align 4, !tbaa !20
  br label %for.inc108

sw.bb57:                                          ; preds = %sw.bb53
  store i32 1, i32* %interlaced61, align 4, !tbaa !19
  store i32 0, i32* %tff59, align 4, !tbaa !20
  br label %for.inc108

sw.bb60:                                          ; preds = %sw.bb53
  store i32 1, i32* %interlaced61, align 4, !tbaa !19
  br label %for.inc108

sw.bb62:                                          ; preds = %if.end45
  %call63 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32* nonnull %n, i32* nonnull %d) #6
  %cmp64 = icmp eq i32 %call63, 2
  %18 = load i32, i32* %n, align 4
  %tobool66 = icmp ne i32 %18, 0
  %or.cond = and i1 %cmp64, %tobool66
  %19 = load i32, i32* %d, align 4
  %tobool68 = icmp ne i32 %19, 0
  %or.cond241 = and i1 %or.cond, %tobool68
  br i1 %or.cond241, label %if.then69, label %if.end70

if.then69:                                        ; preds = %sw.bb62
  call void @x264_reduce_fraction(i32* nonnull %n, i32* nonnull %d) #6
  %20 = load i32, i32* %n, align 4, !tbaa !2
  store i32 %20, i32* %fps_num, align 4, !tbaa !21
  %21 = load i32, i32* %d, align 4, !tbaa !2
  store i32 %21, i32* %fps_den, align 4, !tbaa !22
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %sw.bb62
  %call71 = call i8* @strchr(i8* nonnull %incdec.ptr, i32 32) #7
  br label %for.inc108

sw.bb72:                                          ; preds = %if.end45
  %call73 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %incdec.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32* nonnull %n, i32* nonnull %d) #6
  %cmp74 = icmp eq i32 %call73, 2
  %22 = load i32, i32* %n, align 4
  %tobool77 = icmp ne i32 %22, 0
  %or.cond242 = and i1 %cmp74, %tobool77
  %23 = load i32, i32* %d, align 4
  %tobool79 = icmp ne i32 %23, 0
  %or.cond243 = and i1 %or.cond242, %tobool79
  br i1 %or.cond243, label %if.then80, label %if.end81

if.then80:                                        ; preds = %sw.bb72
  call void @x264_reduce_fraction(i32* nonnull %n, i32* nonnull %d) #6
  %24 = load i32, i32* %n, align 4, !tbaa !2
  store i32 %24, i32* %sar_width, align 4, !tbaa !23
  %25 = load i32, i32* %d, align 4, !tbaa !2
  store i32 %25, i32* %sar_height, align 4, !tbaa !24
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %sw.bb72
  %call82 = call i8* @strchr(i8* nonnull %incdec.ptr, i32 32) #7
  br label %for.inc108

sw.bb83:                                          ; preds = %if.end45
  %call84 = call i32 @strncmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* nonnull %incdec.ptr, i32 6) #7
  %tobool85 = icmp eq i32 %call84, 0
  br i1 %tobool85, label %if.then86, label %if.else89

if.then86:                                        ; preds = %sw.bb83
  %add.ptr87 = getelementptr inbounds i8, i8* %tokstart.0371, i32 7
  %call88 = call fastcc i32 @parse_csp_and_depth(i8* nonnull %add.ptr87, i32* nonnull %alt_bit_depth)
  br label %if.end105

if.else89:                                        ; preds = %sw.bb83
  %call90 = call i32 @strncmp(i8* nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* nonnull %incdec.ptr, i32 11) #7
  %tobool91 = icmp eq i32 %call90, 0
  br i1 %tobool91, label %if.then92, label %if.end105

if.then92:                                        ; preds = %if.else89
  %add.ptr93 = getelementptr inbounds i8, i8* %tokstart.0371, i32 12
  %call94 = call i32 @strncmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* nonnull %add.ptr93, i32 4) #7
  %tobool95 = icmp eq i32 %call94, 0
  br i1 %tobool95, label %if.then96, label %if.else97

if.then96:                                        ; preds = %if.then92
  store i32 1, i32* %fullrange101, align 4, !tbaa !25
  br label %if.end105

if.else97:                                        ; preds = %if.then92
  %call98 = call i32 @strncmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* nonnull %add.ptr93, i32 7) #7
  %tobool99 = icmp eq i32 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.end105

if.then100:                                       ; preds = %if.else97
  store i32 0, i32* %fullrange101, align 4, !tbaa !25
  br label %if.end105

if.end105:                                        ; preds = %if.else97, %if.else89, %if.then100, %if.then96, %if.then86
  %alt_colorspace.1 = phi i32 [ %alt_colorspace.0370, %if.else89 ], [ %alt_colorspace.0370, %if.else97 ], [ %alt_colorspace.0370, %if.then100 ], [ %alt_colorspace.0370, %if.then96 ], [ %call88, %if.then86 ]
  %tokstart.1 = phi i8* [ %incdec.ptr, %if.else89 ], [ %add.ptr93, %if.else97 ], [ %add.ptr93, %if.then100 ], [ %add.ptr93, %if.then96 ], [ %add.ptr87, %if.then86 ]
  %call106 = call i8* @strchr(i8* nonnull dereferenceable(1) %tokstart.1, i32 32) #7
  br label %for.inc108

for.inc108:                                       ; preds = %sw.bb, %sw.bb48, %sw.bb50, %if.end70, %if.end81, %if.end105, %if.end45, %sw.bb53, %sw.bb60, %sw.bb57, %sw.bb56, %for.body40
  %alt_colorspace.2 = phi i32 [ %alt_colorspace.0370, %for.body40 ], [ %alt_colorspace.0370, %if.end45 ], [ %alt_colorspace.1, %if.end105 ], [ %alt_colorspace.0370, %if.end81 ], [ %alt_colorspace.0370, %if.end70 ], [ %alt_colorspace.0370, %sw.bb53 ], [ %alt_colorspace.0370, %sw.bb60 ], [ %alt_colorspace.0370, %sw.bb57 ], [ %alt_colorspace.0370, %sw.bb56 ], [ %alt_colorspace.0370, %sw.bb50 ], [ %alt_colorspace.0370, %sw.bb48 ], [ %alt_colorspace.0370, %sw.bb ]
  %tokstart.2 = phi i8* [ %tokstart.0371, %for.body40 ], [ %incdec.ptr, %if.end45 ], [ %call106, %if.end105 ], [ %call82, %if.end81 ], [ %call71, %if.end70 ], [ %incdec.ptr54, %sw.bb53 ], [ %incdec.ptr54, %sw.bb60 ], [ %incdec.ptr54, %sw.bb57 ], [ %incdec.ptr54, %sw.bb56 ], [ %call52, %sw.bb50 ], [ %16, %sw.bb48 ], [ %15, %sw.bb ]
  %colorspace.1 = phi i32 [ %colorspace.0372, %for.body40 ], [ %colorspace.0372, %if.end45 ], [ %colorspace.0372, %if.end105 ], [ %colorspace.0372, %if.end81 ], [ %colorspace.0372, %if.end70 ], [ %colorspace.0372, %sw.bb53 ], [ %colorspace.0372, %sw.bb60 ], [ %colorspace.0372, %sw.bb57 ], [ %colorspace.0372, %sw.bb56 ], [ %call51, %sw.bb50 ], [ %colorspace.0372, %sw.bb48 ], [ %colorspace.0372, %sw.bb ]
  %incdec.ptr109 = getelementptr inbounds i8, i8* %tokstart.2, i32 1
  %cmp38 = icmp ult i8* %incdec.ptr109, %arrayidx34
  br i1 %cmp38, label %for.body40, label %for.cond.cleanup

if.end115:                                        ; preds = %for.cond.cleanup
  %26 = load i32, i32* %alt_bit_depth, align 4, !tbaa !2
  %bit_depth114 = getelementptr inbounds i8, i8* %call, i32 48
  %27 = bitcast i8* %bit_depth114 to i32*
  store i32 %26, i32* %27, align 8, !tbaa !16
  %cmp116 = icmp eq i32 %alt_colorspace.2, 0
  br i1 %cmp116, label %do.body130.thread, label %do.body121

do.body130.thread:                                ; preds = %if.end115, %if.end115.thread
  %28 = phi i32* [ %12, %if.end115.thread ], [ %27, %if.end115 ]
  store i32 8, i32* %28, align 8, !tbaa !16
  br label %do.end142

do.body121:                                       ; preds = %for.cond.cleanup, %if.end115
  %colorspace.3 = phi i32 [ %alt_colorspace.2, %if.end115 ], [ %colorspace.1, %for.cond.cleanup ]
  %colorspace.3.off = add i32 %colorspace.3, -1
  %29 = icmp ugt i32 %colorspace.3.off, 15
  br i1 %29, label %if.then126, label %do.body130

if.then126:                                       ; preds = %do.body121
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %cleanup231

do.body130:                                       ; preds = %do.body121
  %bit_depth131.phi.trans.insert = getelementptr inbounds i8, i8* %call, i32 48
  %.phi.trans.insert = bitcast i8* %bit_depth131.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 8, !tbaa !16
  %.off = add i32 %.pre, -8
  %30 = icmp ugt i32 %.off, 8
  br i1 %30, label %if.then138, label %do.end142

if.then138:                                       ; preds = %do.body130
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i32 %.pre) #6
  br label %cleanup231

do.end142:                                        ; preds = %do.body130.thread, %do.body130
  %colorspace.3359390 = phi i32 [ 2, %do.body130.thread ], [ %colorspace.3, %do.body130 ]
  %31 = phi i32 [ 8, %do.body130.thread ], [ %.pre, %do.body130 ]
  %.pre-phi389 = phi i32* [ %28, %do.body130.thread ], [ %.phi.trans.insert, %do.body130 ]
  %thread_safe = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 11
  store i32 1, i32* %thread_safe, align 4, !tbaa !26
  %num_frames = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 7
  store i32 0, i32* %num_frames, align 4, !tbaa !27
  %csp = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 0
  %cmp144 = icmp sgt i32 %31, 8
  %or = or i32 %colorspace.3359390, 8192
  %spec.select = select i1 %cmp144, i32 %or, i32 %colorspace.3359390
  store i32 %spec.select, i32* %csp, align 4, !tbaa !28
  %call151 = call %struct.x264_cli_csp_t* @x264_cli_get_csp(i32 %spec.select) #6
  %planes = getelementptr inbounds %struct.x264_cli_csp_t, %struct.x264_cli_csp_t* %call151, i32 0, i32 1
  %32 = load i32, i32* %planes, align 4, !tbaa !29
  %cmp153367 = icmp sgt i32 %32, 0
  br i1 %cmp153367, label %for.body155.lr.ph, label %for.end171

for.body155.lr.ph:                                ; preds = %do.end142
  %width157 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 4
  %height158 = getelementptr inbounds %struct.video_info_t, %struct.video_info_t* %info, i32 0, i32 5
  %plane_size = getelementptr inbounds i8, i8* %call, i32 24
  %33 = bitcast i8* %plane_size to [3 x i64]*
  %frame_size = getelementptr inbounds i8, i8* %call, i32 16
  %34 = bitcast i8* %frame_size to i64*
  br label %for.body155

for.body155:                                      ; preds = %for.body155.lr.ph, %for.body155
  %i.1368 = phi i32 [ 0, %for.body155.lr.ph ], [ %inc170, %for.body155 ]
  %35 = load i32, i32* %csp, align 4, !tbaa !28
  %36 = load i32, i32* %width157, align 4, !tbaa !17
  %37 = load i32, i32* %height158, align 4, !tbaa !18
  %call159 = call i64 @x264_cli_pic_plane_size(i32 %35, i32 %36, i32 %37, i32 %i.1368) #6
  %arrayidx160 = getelementptr inbounds [3 x i64], [3 x i64]* %33, i32 0, i32 %i.1368
  store i64 %call159, i64* %arrayidx160, align 8, !tbaa !31
  %38 = load i64, i64* %34, align 8, !tbaa !32
  %add163 = add nsw i64 %38, %call159
  store i64 %add163, i64* %34, align 8, !tbaa !32
  %39 = load i32, i32* %csp, align 4, !tbaa !28
  %call165 = call i32 @x264_cli_csp_depth_factor(i32 %39) #6
  %conv166 = sext i32 %call165 to i64
  %40 = load i64, i64* %arrayidx160, align 8, !tbaa !31
  %div = sdiv i64 %40, %conv166
  store i64 %div, i64* %arrayidx160, align 8, !tbaa !31
  %inc170 = add nuw nsw i32 %i.1368, 1
  %41 = load i32, i32* %planes, align 4, !tbaa !29
  %cmp153 = icmp slt i32 %inc170, %41
  br i1 %cmp153, label %for.body155, label %for.end171

for.end171:                                       ; preds = %for.body155, %do.end142
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fh7.pre-phi, align 8, !tbaa !10
  %43 = bitcast %struct.stat* %file_stat.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %43) #6
  %call.i = call i32 @fileno(%struct._IO_FILE* %42) #6
  %44 = bitcast %struct.stat* %file_stat.i to %struct.stat64*
  %call.i.i = call i32 @__fxstat64(i32 3, i32 %call.i, %struct.stat64* nonnull %44) #6
  %tobool.i = icmp eq i32 %call.i.i, 0
  %st_mode.i = getelementptr inbounds %struct.stat, %struct.stat* %file_stat.i, i32 0, i32 3
  %45 = load i32, i32* %st_mode.i, align 8
  %and.i = and i32 %45, 61440
  %cmp.i = icmp ne i32 %and.i, 32768
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %43) #6
  %tobool174 = and i1 %tobool.i, %cmp.i
  br i1 %tobool174, label %if.end229, label %if.then175

if.then175:                                       ; preds = %for.end171
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fh7.pre-phi, align 8, !tbaa !10
  %call177 = call i32 @ftell(%struct._IO_FILE* %46)
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %if.then175
  %len.0366 = phi i32 [ 1, %if.then175 ], [ %inc185, %while.body ]
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fh7.pre-phi, align 8, !tbaa !10
  %call182 = call i32 @fgetc(%struct._IO_FILE* %47)
  %cmp183 = icmp eq i32 %call182, 10
  br i1 %cmp183, label %do.body186, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc185 = add nuw nsw i32 %len.0366, 1
  %exitcond = icmp eq i32 %inc185, 257
  br i1 %exitcond, label %if.then192, label %land.rhs

do.body186:                                       ; preds = %land.rhs
  %len.0.off = add nsw i32 %len.0366, -6
  %48 = icmp ugt i32 %len.0.off, 250
  br i1 %48, label %if.then192, label %do.end195

if.then192:                                       ; preds = %while.body, %do.body186
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0)) #6
  br label %cleanup231

do.end195:                                        ; preds = %do.body186
  %frame_header_len = getelementptr inbounds i8, i8* %call, i32 12
  %49 = bitcast i8* %frame_header_len to i32*
  store i32 %len.0366, i32* %49, align 4, !tbaa !33
  %conv196 = zext i32 %len.0366 to i64
  %frame_size197 = getelementptr inbounds i8, i8* %call, i32 16
  %50 = bitcast i8* %frame_size197 to i64*
  %51 = load i64, i64* %50, align 8, !tbaa !32
  %add198 = add nsw i64 %51, %conv196
  store i64 %add198, i64* %50, align 8, !tbaa !32
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fh7.pre-phi, align 8, !tbaa !10
  %call200 = call i32 @fseek(%struct._IO_FILE* %52, i32 0, i32 2)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fh7.pre-phi, align 8, !tbaa !10
  %call202 = call i32 @ftell(%struct._IO_FILE* %53)
  %conv203 = sext i32 %call202 to i64
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %fh7.pre-phi, align 8, !tbaa !10
  %call206 = call i32 @fseek(%struct._IO_FILE* %54, i32 %call177, i32 0)
  %55 = load i32, i32* %10, align 8, !tbaa !15
  %conv208 = sext i32 %55 to i64
  %sub = sub nsw i64 %conv203, %conv208
  %56 = load i64, i64* %50, align 8, !tbaa !32
  %div210 = sdiv i64 %sub, %56
  %conv211 = trunc i64 %div210 to i32
  store i32 %conv211, i32* %num_frames, align 4, !tbaa !27
  %tobool215 = icmp eq i32 %conv211, 0
  br i1 %tobool215, label %if.then216, label %do.end219

if.then216:                                       ; preds = %do.end195
  call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %cleanup231

do.end219:                                        ; preds = %do.end195
  %57 = load i32, i32* %.pre-phi389, align 8, !tbaa !16
  %and = and i32 %57, 7
  %tobool221 = icmp eq i32 %and, 0
  br i1 %tobool221, label %if.then222, label %if.end229

if.then222:                                       ; preds = %do.end219
  %mmap = getelementptr inbounds i8, i8* %call, i32 56
  %58 = bitcast i8* %mmap to %struct.cli_mmap_t*
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fh7.pre-phi, align 8, !tbaa !10
  %call224 = call i32 @x264_cli_mmap_init(%struct.cli_mmap_t* nonnull %58, %struct._IO_FILE* %59) #6
  %tobool225 = icmp eq i32 %call224, 0
  %lnot.ext = zext i1 %tobool225 to i32
  %use_mmap = getelementptr inbounds i8, i8* %call, i32 72
  %60 = bitcast i8* %use_mmap to i32*
  store i32 %lnot.ext, i32* %60, align 8, !tbaa !34
  br label %if.end229

if.end229:                                        ; preds = %if.then222, %do.end219, %for.end171
  store i8* %call, i8** %p_handle, align 4, !tbaa !8
  br label %cleanup231

cleanup231:                                       ; preds = %if.then192, %if.then216, %if.end229, %if.end6, %entry, %if.then138, %if.then126, %if.then29, %if.then24
  %retval.3 = phi i32 [ -1, %if.then24 ], [ -1, %if.then29 ], [ -1, %if.then126 ], [ -1, %if.then138 ], [ -1, %entry ], [ -1, %if.end6 ], [ 0, %if.end229 ], [ -1, %if.then216 ], [ -1, %if.then192 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 266, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.3
}

; Function Attrs: nounwind
define internal i32 @picture_alloc(%struct.cli_pic_t* %pic, i8* nocapture readonly %handle, i32 %csp, i32 %width, i32 %height) #0 {
entry:
  %use_mmap = getelementptr inbounds i8, i8* %handle, i32 72
  %0 = bitcast i8* %use_mmap to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !34
  %tobool = icmp eq i32 %1, 0
  %cond = select i1 %tobool, i32 (%struct.cli_pic_t*, i32, i32, i32)* @x264_cli_pic_alloc, i32 (%struct.cli_pic_t*, i32, i32, i32)* @x264_cli_pic_init_noalloc
  %call = tail call i32 %cond(%struct.cli_pic_t* %pic, i32 %csp, i32 %width, i32 %height) #6, !callees !35
  ret i32 %call
}

; Function Attrs: nounwind
define internal i32 @read_frame(%struct.cli_pic_t* nocapture %pic, i8* %handle, i32 %i_frame) #0 {
entry:
  %file_stat.i = alloca %struct.stat, align 8
  %0 = bitcast i8* %handle to %struct.y4m_hnd_t*
  %use_mmap = getelementptr inbounds i8, i8* %handle, i32 72
  %1 = bitcast i8* %use_mmap to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !34
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mmap = getelementptr inbounds i8, i8* %handle, i32 56
  %3 = bitcast i8* %mmap to %struct.cli_mmap_t*
  %frame_size = getelementptr inbounds i8, i8* %handle, i32 16
  %4 = bitcast i8* %frame_size to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !32
  %conv = sext i32 %i_frame to i64
  %mul = mul nsw i64 %5, %conv
  %seq_header_len = getelementptr inbounds i8, i8* %handle, i32 8
  %6 = bitcast i8* %seq_header_len to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !15
  %conv1 = sext i32 %7 to i64
  %add = add nsw i64 %mul, %conv1
  %call = tail call i8* @x264_cli_mmap(%struct.cli_mmap_t* nonnull %3, i64 %add, i64 %5) #6
  %arrayidx = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 0
  store i8* %call, i8** %arrayidx, align 8, !tbaa !8
  %tobool6 = icmp eq i8* %call, null
  br i1 %tobool6, label %cleanup, label %if.end33

if.else:                                          ; preds = %entry
  %next_frame = getelementptr inbounds i8, i8* %handle, i32 4
  %8 = bitcast i8* %next_frame to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !36
  %cmp = icmp slt i32 %9, %i_frame
  br i1 %cmp, label %if.then9, label %if.end33

if.then9:                                         ; preds = %if.else
  %fh = bitcast i8* %handle to %struct._IO_FILE**
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8, !tbaa !10
  %11 = bitcast %struct.stat* %file_stat.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %11) #6
  %call.i = tail call i32 @fileno(%struct._IO_FILE* %10) #6
  %12 = bitcast %struct.stat* %file_stat.i to %struct.stat64*
  %call.i.i = call i32 @__fxstat64(i32 3, i32 %call.i, %struct.stat64* nonnull %12) #6
  %tobool.i = icmp eq i32 %call.i.i, 0
  %st_mode.i = getelementptr inbounds %struct.stat, %struct.stat* %file_stat.i, i32 0, i32 3
  %13 = load i32, i32* %st_mode.i, align 8
  %and.i = and i32 %13, 61440
  %cmp.i = icmp ne i32 %and.i, 32768
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %11) #6
  %tobool11 = and i1 %tobool.i, %cmp.i
  br i1 %tobool11, label %while.cond.preheader, label %if.then12

while.cond.preheader:                             ; preds = %if.then9
  %14 = load i32, i32* %8, align 4, !tbaa !36
  %cmp2464 = icmp slt i32 %14, %i_frame
  br i1 %cmp2464, label %while.body, label %if.end33

if.then12:                                        ; preds = %if.then9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8, !tbaa !10
  %frame_size14 = getelementptr inbounds i8, i8* %handle, i32 16
  %16 = bitcast i8* %frame_size14 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !32
  %seq_header_len17 = getelementptr inbounds i8, i8* %handle, i32 8
  %18 = bitcast i8* %seq_header_len17 to i32*
  %19 = load i32, i32* %18, align 8, !tbaa !15
  %20 = trunc i64 %17 to i32
  %21 = mul i32 %20, %i_frame
  %conv20 = add i32 %21, %19
  %call21 = call i32 @fseek(%struct._IO_FILE* %15, i32 %conv20, i32 0)
  br label %if.end33

while.body:                                       ; preds = %while.cond.preheader, %if.end29
  %call26 = call fastcc i32 @read_frame_internal(%struct.cli_pic_t* %pic, %struct.y4m_hnd_t* nonnull %0, i32 0)
  %tobool27 = icmp eq i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %cleanup

if.end29:                                         ; preds = %while.body
  %22 = load i32, i32* %8, align 4, !tbaa !36
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %8, align 4, !tbaa !36
  %cmp24 = icmp slt i32 %inc, %i_frame
  br i1 %cmp24, label %while.body, label %if.end33

if.end33:                                         ; preds = %if.end29, %while.cond.preheader, %if.then, %if.else, %if.then12
  %bit_depth = getelementptr inbounds i8, i8* %handle, i32 48
  %23 = bitcast i8* %bit_depth to i32*
  %24 = load i32, i32* %23, align 8, !tbaa !16
  %and = and i32 %24, 7
  %call34 = call fastcc i32 @read_frame_internal(%struct.cli_pic_t* %pic, %struct.y4m_hnd_t* nonnull %0, i32 %and)
  %tobool35 = icmp eq i32 %call34, 0
  br i1 %tobool35, label %if.end37, label %cleanup

if.end37:                                         ; preds = %if.end33
  %add38 = add nsw i32 %i_frame, 1
  %next_frame39 = getelementptr inbounds i8, i8* %handle, i32 4
  %25 = bitcast i8* %next_frame39 to i32*
  store i32 %add38, i32* %25, align 4, !tbaa !36
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end33, %if.then, %if.end37
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -1, %if.then ], [ -1, %if.end33 ], [ -1, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @release_frame(%struct.cli_pic_t* nocapture readonly %pic, i8* %handle) #0 {
entry:
  %use_mmap = getelementptr inbounds i8, i8* %handle, i32 72
  %0 = bitcast i8* %use_mmap to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !34
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %mmap = getelementptr inbounds i8, i8* %handle, i32 56
  %2 = bitcast i8* %mmap to %struct.cli_mmap_t*
  %arrayidx = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 0
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !8
  %frame_header_len = getelementptr inbounds i8, i8* %handle, i32 12
  %4 = bitcast i8* %frame_header_len to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !33
  %idx.neg = sub i32 0, %5
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 %idx.neg
  %frame_size = getelementptr inbounds i8, i8* %handle, i32 16
  %6 = bitcast i8* %frame_size to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !32
  %call = tail call i32 @x264_cli_munmap(%struct.cli_mmap_t* nonnull %2, i8* %add.ptr, i64 %7) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal void @picture_clean(%struct.cli_pic_t* %pic, i8* nocapture readonly %handle) #0 {
entry:
  %use_mmap = getelementptr inbounds i8, i8* %handle, i32 72
  %0 = bitcast i8* %use_mmap to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !34
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.cli_pic_t* %pic to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(72) %2, i8 0, i32 72, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @x264_cli_pic_clean(%struct.cli_pic_t* %pic) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
define internal i32 @close_file(i8* %handle) #0 {
entry:
  %tobool = icmp eq i8* %handle, null
  br i1 %tobool, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %fh = bitcast i8* %handle to %struct._IO_FILE**
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8, !tbaa !10
  %tobool1 = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %use_mmap = getelementptr inbounds i8, i8* %handle, i32 72
  %1 = bitcast i8* %use_mmap to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !34
  %tobool2 = icmp eq i32 %2, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %mmap = getelementptr inbounds i8, i8* %handle, i32 56
  %3 = bitcast i8* %mmap to %struct.cli_mmap_t*
  tail call void @x264_cli_mmap_close(%struct.cli_mmap_t* nonnull %3) #6
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %4 = phi %struct._IO_FILE* [ %0, %if.end ], [ %.pre, %if.then3 ]
  %call = tail call i32 @fclose(%struct._IO_FILE* %4)
  tail call void @free(i8* nonnull %handle) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #3

declare dso_local %struct._IO_FILE* @fopen64(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strncmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #3

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc i32 @parse_csp_and_depth(i8* %csp_name, i32* %bit_depth) unnamed_addr #0 {
entry:
  %call = tail call i32 @strncmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* nonnull dereferenceable(1) %csp_name, i32 4) #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end16, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* nonnull dereferenceable(1) %csp_name, i32 3) #7
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.end16, label %if.else4

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strncmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* nonnull dereferenceable(1) %csp_name, i32 3) #7
  %tobool6 = icmp eq i32 %call5, 0
  br i1 %tobool6, label %if.end16, label %if.else8

if.else8:                                         ; preds = %if.else4
  %call9 = tail call i32 @strncmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* nonnull dereferenceable(1) %csp_name, i32 3) #7
  %tobool10 = icmp eq i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.else8
  %call11 = tail call i32 @strncmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* nonnull dereferenceable(1) %csp_name, i32 8) #7
  %tobool12 = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12, i32 17, i32 12
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %if.else4, %if.else, %entry, %if.else8
  %csp.0 = phi i32 [ 17, %if.else8 ], [ 1, %entry ], [ 2, %if.else ], [ 6, %if.else4 ], [ %spec.select, %land.lhs.true ]
  %call17 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %csp_name, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32* %bit_depth) #6
  %cmp = icmp eq i32 %call17, 1
  br i1 %cmp, label %if.end22, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.end16
  %call19 = tail call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %csp_name, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32* %bit_depth) #6
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true18
  store i32 8, i32* %bit_depth, align 4, !tbaa !2
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true18, %if.end16, %if.then21
  ret i32 %csp.0
}

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) local_unnamed_addr #5

declare dso_local void @x264_reduce_fraction(i32*, i32*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.x264_cli_csp_t* @x264_cli_get_csp(i32) local_unnamed_addr #4

declare dso_local i64 @x264_cli_pic_plane_size(i32, i32, i32, i32) local_unnamed_addr #4

declare dso_local i32 @x264_cli_csp_depth_factor(i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @ftell(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @fseek(%struct._IO_FILE* nocapture, i32, i32) local_unnamed_addr #2

declare dso_local i32 @x264_cli_mmap_init(%struct.cli_mmap_t*, %struct._IO_FILE*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #5

declare dso_local i32 @x264_cli_pic_init_noalloc(%struct.cli_pic_t*, i32, i32, i32) local_unnamed_addr #4

declare dso_local i32 @x264_cli_pic_alloc(%struct.cli_pic_t*, i32, i32, i32) local_unnamed_addr #4

declare dso_local i8* @x264_cli_mmap(%struct.cli_mmap_t*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc i32 @read_frame_internal(%struct.cli_pic_t* nocapture %pic, %struct.y4m_hnd_t* nocapture readonly %h, i32 %bit_depth_uc) unnamed_addr #0 {
entry:
  %header_buf = alloca [16 x i8], align 1
  %csp = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 0
  %0 = load i32, i32* %csp, align 8, !tbaa !37
  %call = tail call i32 @x264_cli_csp_depth_factor(i32 %0) #6
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %header_buf, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #6
  %use_mmap = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 8
  %2 = load i32, i32* %use_mmap, align 8, !tbaa !34
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 0
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !8
  %frame_header_len = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 3
  %4 = load i32, i32* %frame_header_len, align 4, !tbaa !33
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 %4
  store i8* %add.ptr, i8** %arrayidx, align 8, !tbaa !8
  %cmp167 = icmp slt i32 %4, 6
  br i1 %cmp167, label %do.body, label %land.rhs

land.rhs:                                         ; preds = %if.then, %while.body
  %i.0168 = phi i32 [ %inc, %while.body ], [ 6, %if.then ]
  %sub = add nsw i32 %i.0168, -1
  %arrayidx6 = getelementptr inbounds i8, i8* %3, i32 %sub
  %5 = load i8, i8* %arrayidx6, align 1, !tbaa !14
  %cmp7 = icmp eq i8 %5, 10
  br i1 %cmp7, label %do.body, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nuw i32 %i.0168, 1
  %exitcond173 = icmp eq i32 %i.0168, %4
  br i1 %exitcond173, label %if.then12, label %land.rhs

do.body:                                          ; preds = %land.rhs, %if.then
  %i.0.lcssa = phi i32 [ 6, %if.then ], [ %i.0168, %land.rhs ]
  %cmp10 = icmp eq i32 %i.0.lcssa, %4
  br i1 %cmp10, label %do.body38, label %if.then12

if.then12:                                        ; preds = %while.body, %do.body
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0)) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %fh = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8, !tbaa !10
  %call13 = call i32 @fread(i8* nonnull %1, i32 1, i32 5, %struct._IO_FILE* %6)
  %cmp14 = icmp eq i32 %call13, 5
  br i1 %cmp14, label %land.rhs21, label %cleanup

while.cond18:                                     ; preds = %land.rhs21
  %inc28 = add nuw nsw i32 %i.1166, 1
  %exitcond = icmp eq i32 %inc28, 257
  br i1 %exitcond, label %if.then33, label %land.rhs21

land.rhs21:                                       ; preds = %if.else, %while.cond18
  %i.1166 = phi i32 [ %inc28, %while.cond18 ], [ 6, %if.else ]
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8, !tbaa !10
  %call23 = tail call i32 @fgetc(%struct._IO_FILE* %7)
  %cmp24 = icmp eq i32 %call23, 10
  br i1 %cmp24, label %do.body38, label %while.cond18

if.then33:                                        ; preds = %while.cond18
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0)) #6
  br label %cleanup

do.body38:                                        ; preds = %land.rhs21, %do.body
  %header.0 = phi i8* [ %3, %do.body ], [ %1, %land.rhs21 ]
  %call39 = call i32 @memcmp(i8* nonnull dereferenceable(5) %header.0, i8* nonnull dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 5) #7
  %tobool40 = icmp eq i32 %call39, 0
  br i1 %tobool40, label %for.cond.preheader, label %if.then41

for.cond.preheader:                               ; preds = %do.body38
  %planes = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 3
  %8 = load i32, i32* %planes, align 4, !tbaa !40
  %cmp46161 = icmp sgt i32 %8, 0
  br i1 %cmp46161, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fh72 = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 0
  %tobool82 = icmp eq i32 %bit_depth_uc, 0
  %bit_depth = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 6
  br i1 %tobool82, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc102.us
  %9 = phi i32 [ %18, %for.inc102.us ], [ %8, %for.body.lr.ph ]
  %i.2162.us = phi i32 [ %inc103.us, %for.inc102.us ], [ 0, %for.body.lr.ph ]
  %10 = load i32, i32* %use_mmap, align 8, !tbaa !34
  %tobool49.us = icmp eq i32 %10, 0
  br i1 %tobool49.us, label %if.else65.us, label %if.then50.us

if.then50.us:                                     ; preds = %for.body.us
  %tobool51.us = icmp eq i32 %i.2162.us, 0
  br i1 %tobool51.us, label %for.inc102.us, label %if.then52.us

if.then52.us:                                     ; preds = %if.then50.us
  %sub55.us = add nsw i32 %i.2162.us, -1
  %arrayidx56.us = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %sub55.us
  %11 = load i8*, i8** %arrayidx56.us, align 4, !tbaa !8
  %arrayidx59.us = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 5, i32 %sub55.us
  %12 = load i64, i64* %arrayidx59.us, align 8, !tbaa !31
  %13 = trunc i64 %12 to i32
  %idx.ext.us = mul i32 %call, %13
  %add.ptr60.us = getelementptr inbounds i8, i8* %11, i32 %idx.ext.us
  %arrayidx63.us = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %i.2162.us
  store i8* %add.ptr60.us, i8** %arrayidx63.us, align 4, !tbaa !8
  br label %for.inc102.us

if.else65.us:                                     ; preds = %for.body.us
  %arrayidx68.us = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %i.2162.us
  %14 = load i8*, i8** %arrayidx68.us, align 4, !tbaa !8
  %arrayidx70.us = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 5, i32 %i.2162.us
  %15 = load i64, i64* %arrayidx70.us, align 8, !tbaa !31
  %conv71.us = trunc i64 %15 to i32
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fh72, align 8, !tbaa !10
  %call73.us = tail call i32 @fread(i8* %14, i32 %call, i32 %conv71.us, %struct._IO_FILE* %16)
  %conv74.us = zext i32 %call73.us to i64
  %17 = load i64, i64* %arrayidx70.us, align 8, !tbaa !31
  %cmp77.us = icmp eq i64 %17, %conv74.us
  br i1 %cmp77.us, label %if.else65.us.for.inc102.us_crit_edge, label %cleanup

if.else65.us.for.inc102.us_crit_edge:             ; preds = %if.else65.us
  %.pre = load i32, i32* %planes, align 4, !tbaa !40
  br label %for.inc102.us

for.inc102.us:                                    ; preds = %if.else65.us.for.inc102.us_crit_edge, %if.then50.us, %if.then52.us
  %18 = phi i32 [ %.pre, %if.else65.us.for.inc102.us_crit_edge ], [ %9, %if.then50.us ], [ %9, %if.then52.us ]
  %inc103.us = add nuw nsw i32 %i.2162.us, 1
  %cmp46.us = icmp slt i32 %inc103.us, %18
  br i1 %cmp46.us, label %for.body.us, label %cleanup

if.then41:                                        ; preds = %do.body38
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0)) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.inc102
  %i.2162 = phi i32 [ %inc103, %for.inc102 ], [ 0, %for.body.lr.ph ]
  %19 = load i32, i32* %use_mmap, align 8, !tbaa !34
  %tobool49 = icmp eq i32 %19, 0
  br i1 %tobool49, label %if.else65, label %if.then50

if.then50:                                        ; preds = %for.body
  %tobool51 = icmp eq i32 %i.2162, 0
  br i1 %tobool51, label %if.then83, label %if.then52

if.then52:                                        ; preds = %if.then50
  %sub55 = add nsw i32 %i.2162, -1
  %arrayidx56 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %sub55
  %20 = load i8*, i8** %arrayidx56, align 4, !tbaa !8
  %arrayidx59 = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 5, i32 %sub55
  %21 = load i64, i64* %arrayidx59, align 8, !tbaa !31
  %22 = trunc i64 %21 to i32
  %idx.ext = mul i32 %call, %22
  %add.ptr60 = getelementptr inbounds i8, i8* %20, i32 %idx.ext
  %arrayidx63 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %i.2162
  store i8* %add.ptr60, i8** %arrayidx63, align 4, !tbaa !8
  br label %if.then83

if.else65:                                        ; preds = %for.body
  %arrayidx68 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %i.2162
  %23 = load i8*, i8** %arrayidx68, align 4, !tbaa !8
  %arrayidx70 = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 5, i32 %i.2162
  %24 = load i64, i64* %arrayidx70, align 8, !tbaa !31
  %conv71 = trunc i64 %24 to i32
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fh72, align 8, !tbaa !10
  %call73 = tail call i32 @fread(i8* %23, i32 %call, i32 %conv71, %struct._IO_FILE* %25)
  %conv74 = zext i32 %call73 to i64
  %26 = load i64, i64* %arrayidx70, align 8, !tbaa !31
  %cmp77 = icmp eq i64 %26, %conv74
  br i1 %cmp77, label %if.then83, label %cleanup

if.then83:                                        ; preds = %if.then52, %if.else65, %if.then50
  %arrayidx87 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %i.2162
  %27 = bitcast i8** %arrayidx87 to i16**
  %28 = load i16*, i16** %27, align 4, !tbaa !8
  %arrayidx89 = getelementptr inbounds %struct.y4m_hnd_t, %struct.y4m_hnd_t* %h, i32 0, i32 5, i32 %i.2162
  %29 = load i64, i64* %arrayidx89, align 8, !tbaa !31
  %30 = load i32, i32* %bit_depth, align 8, !tbaa !16
  %sub90 = sub nsw i32 16, %30
  %cmp92159 = icmp sgt i64 %29, 0
  br i1 %cmp92159, label %for.body94, label %for.inc102

for.body94:                                       ; preds = %if.then83, %for.body94
  %j.0160 = phi i64 [ %inc100, %for.body94 ], [ 0, %if.then83 ]
  %idxprom = trunc i64 %j.0160 to i32
  %arrayidx95 = getelementptr inbounds i16, i16* %28, i32 %idxprom
  %31 = load i16, i16* %arrayidx95, align 2, !tbaa !41
  %conv96 = zext i16 %31 to i32
  %shl = shl i32 %conv96, %sub90
  %conv97 = trunc i32 %shl to i16
  store i16 %conv97, i16* %arrayidx95, align 2, !tbaa !41
  %inc100 = add nuw nsw i64 %j.0160, 1
  %cmp92 = icmp slt i64 %inc100, %29
  br i1 %cmp92, label %for.body94, label %for.inc102

for.inc102:                                       ; preds = %for.body94, %if.then83
  %inc103 = add nuw nsw i32 %i.2162, 1
  %32 = load i32, i32* %planes, align 4, !tbaa !40
  %cmp46 = icmp slt i32 %inc103, %32
  br i1 %cmp46, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.else65, %for.inc102, %if.else65.us, %for.inc102.us, %for.cond.preheader, %if.else, %if.then41, %if.then33, %if.then12
  %retval.0 = phi i32 [ -1, %if.then12 ], [ -1, %if.then41 ], [ -1, %if.then33 ], [ -1, %if.else ], [ 0, %for.cond.preheader ], [ -1, %if.else65.us ], [ 0, %for.inc102.us ], [ -1, %if.else65 ], [ 0, %for.inc102 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fread(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #3

declare dso_local i32 @x264_cli_munmap(%struct.cli_mmap_t*, i8*, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

declare dso_local void @x264_cli_pic_clean(%struct.cli_pic_t*) local_unnamed_addr #4

declare dso_local void @x264_cli_mmap_close(%struct.cli_mmap_t*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 56}
!7 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !3, i64 52, !3, i64 56}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"", !9, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !12, i64 16, !4, i64 24, !3, i64 48, !13, i64 56, !3, i64 72}
!12 = !{!"long long", !4, i64 0}
!13 = !{!"", !12, i64 0, !3, i64 8}
!14 = !{!4, !4, i64 0}
!15 = !{!11, !3, i64 8}
!16 = !{!11, !3, i64 48}
!17 = !{!7, !3, i64 16}
!18 = !{!7, !3, i64 20}
!19 = !{!7, !3, i64 24}
!20 = !{!7, !3, i64 40}
!21 = !{!7, !3, i64 4}
!22 = !{!7, !3, i64 8}
!23 = !{!7, !3, i64 32}
!24 = !{!7, !3, i64 36}
!25 = !{!7, !3, i64 12}
!26 = !{!7, !3, i64 44}
!27 = !{!7, !3, i64 28}
!28 = !{!7, !3, i64 0}
!29 = !{!30, !3, i64 4}
!30 = !{!"", !9, i64 0, !3, i64 4, !4, i64 8, !4, i64 24, !3, i64 40, !3, i64 44}
!31 = !{!12, !12, i64 0}
!32 = !{!11, !12, i64 16}
!33 = !{!11, !3, i64 12}
!34 = !{!11, !3, i64 72}
!35 = !{i32 (%struct.cli_pic_t*, i32, i32, i32)* @x264_cli_pic_alloc, i32 (%struct.cli_pic_t*, i32, i32, i32)* @x264_cli_pic_init_noalloc}
!36 = !{!11, !3, i64 4}
!37 = !{!38, !3, i64 0}
!38 = !{!"", !39, i64 0, !12, i64 48, !12, i64 56, !9, i64 64}
!39 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !4, i64 16, !4, i64 32}
!40 = !{!38, !3, i64 12}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !4, i64 0}
