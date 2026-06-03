; ModuleID = 'output/matroska.c'
source_filename = "output/matroska.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.cli_output_t = type { i32 (i8*, i8**, %struct.cli_output_opt_t*)*, i32 (i8*, %struct.x264_param_t*)*, i32 (i8*, %struct.x264_nal_t*)*, i32 (i8*, i8*, i32, %struct.x264_picture_t*)*, i32 (i8*, i64, i64)* }
%struct.cli_output_opt_t = type { i32 }
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
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, %struct.x264_param_t*, %struct.x264_image_t, %struct.x264_image_properties_t, %struct.x264_hrd_t, %struct.x264_sei_t, i8* }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x i8*] }
%struct.x264_image_properties_t = type { float*, void (i8*)*, i8*, void (i8*)*, double, double, [3 x double], double }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_sei_t = type { i32, %struct.x264_sei_payload_t*, void (i8*)* }
%struct.x264_sei_payload_t = type { i32, i32, i8* }
%struct.mk_writer = type opaque

@mkv_output = hidden local_unnamed_addr constant %struct.cli_output_t { i32 (i8*, i8**, %struct.cli_output_opt_t*)* @open_file, i32 (i8*, %struct.x264_param_t*)* @set_param, i32 (i8*, %struct.x264_nal_t*)* @write_headers, i32 (i8*, i8*, i32, %struct.x264_picture_t*)* @write_frame, i32 (i8*, i64, i64)* @close_file }, align 4
@stereo_modes = internal unnamed_addr constant [7 x i8] c"\05\09\07\01\03\0D\00", align 1
@stereo_w_div = internal unnamed_addr constant [7 x i8] c"\01\02\01\02\01\01\01", align 1
@stereo_h_div = internal unnamed_addr constant [7 x i8] c"\01\01\02\01\02\01\01", align 1
@.str = private unnamed_addr constant [5 x i8] c"x264\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"V_MPEG4/ISO/AVC\00", align 1

; Function Attrs: nounwind
define internal i32 @open_file(i8* %psz_filename, i8** nocapture %p_handle, %struct.cli_output_opt_t* nocapture readnone %opt) #0 {
entry:
  store i8* null, i8** %p_handle, align 4, !tbaa !2
  %call = tail call noalias dereferenceable_or_null(56) i8* @calloc(i32 1, i32 56) #6
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.mk_writer* @mk_create_writer(i8* %psz_filename) #6
  %w = bitcast i8* %call to %struct.mk_writer**
  store %struct.mk_writer* %call1, %struct.mk_writer** %w, align 8, !tbaa !6
  %tobool3 = icmp eq %struct.mk_writer* %call1, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @free(i8* nonnull %call) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  store i8* %call, i8** %p_handle, align 4, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -1, %if.then4 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @set_param(i8* nocapture %handle, %struct.x264_param_t* nocapture readonly %p_param) #1 {
entry:
  %i_fps_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 64
  %0 = load i32, i32* %i_fps_num, align 8, !tbaa !10
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %b_vfr_input = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 62
  %1 = load i32, i32* %b_vfr_input, align 8, !tbaa !19
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %i_fps_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 65
  %2 = load i32, i32* %i_fps_den, align 4, !tbaa !20
  %conv = zext i32 %2 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %conv2 = zext i32 %0 to i64
  %div = udiv i64 %mul, %conv2
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true, %if.then
  %.sink = phi i64 [ %div, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %frame_duration3 = getelementptr inbounds i8, i8* %handle, i32 32
  %3 = bitcast i8* %frame_duration3 to i64*
  store i64 %.sink, i64* %3, align 8, !tbaa !21
  %i_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 7
  %4 = load i32, i32* %i_width, align 4, !tbaa !22
  %width = getelementptr inbounds i8, i8* %handle, i32 4
  %5 = bitcast i8* %width to i32*
  store i32 %4, i32* %5, align 4, !tbaa !23
  %conv4 = sext i32 %4 to i64
  %i_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 8
  %6 = load i32, i32* %i_height, align 8, !tbaa !24
  %height = getelementptr inbounds i8, i8* %handle, i32 8
  %7 = bitcast i8* %height to i32*
  store i32 %6, i32* %7, align 8, !tbaa !25
  %conv5 = sext i32 %6 to i64
  %display_size_units = getelementptr inbounds i8, i8* %handle, i32 20
  %8 = bitcast i8* %display_size_units to i32*
  store i32 0, i32* %8, align 4, !tbaa !26
  %stereo_mode = getelementptr inbounds i8, i8* %handle, i32 24
  %9 = bitcast i8* %stereo_mode to i32*
  store i32 -1, i32* %9, align 8, !tbaa !27
  %i_frame_packing = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 54
  %10 = load i32, i32* %i_frame_packing, align 4, !tbaa !28
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* @stereo_modes, i32 0, i32 %10
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %conv14 = zext i8 %12 to i32
  store i32 %conv14, i32* %9, align 8, !tbaa !27
  %arrayidx17 = getelementptr inbounds [7 x i8], [7 x i8]* @stereo_w_div, i32 0, i32 %10
  %13 = load i8, i8* %arrayidx17, align 1, !tbaa !29
  %conv18 = zext i8 %13 to i64
  %div19 = sdiv i64 %conv4, %conv18
  %arrayidx21 = getelementptr inbounds [7 x i8], [7 x i8]* @stereo_h_div, i32 0, i32 %10
  %14 = load i8, i8* %arrayidx21, align 1, !tbaa !29
  %conv22 = zext i8 %14 to i64
  %div23 = sdiv i64 %conv5, %conv22
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %if.end
  %dw.0 = phi i64 [ %div19, %if.then12 ], [ %conv4, %if.end ]
  %dh.0 = phi i64 [ %div23, %if.then12 ], [ %conv5, %if.end ]
  %i_sar_width = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 14, i32 1
  %15 = load i32, i32* %i_sar_width, align 4, !tbaa !30
  %tobool25 = icmp eq i32 %15, 0
  %extract.t112 = trunc i64 %dw.0 to i32
  %extract.t117 = trunc i64 %dh.0 to i32
  br i1 %tobool25, label %if.end62, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end24
  %i_sar_height = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 14, i32 0
  %16 = load i32, i32* %i_sar_height, align 8, !tbaa !31
  %tobool28 = icmp eq i32 %16, 0
  %cmp34 = icmp eq i32 %15, %16
  %or.cond118 = or i1 %tobool28, %cmp34
  br i1 %or.cond118, label %if.end62, label %if.then36

if.then36:                                        ; preds = %land.lhs.true26
  %cmp41 = icmp sgt i32 %15, %16
  br i1 %cmp41, label %if.then43, label %if.else52

if.then43:                                        ; preds = %if.then36
  %conv46 = sext i32 %15 to i64
  %mul47 = mul nsw i64 %dw.0, %conv46
  %conv50 = sext i32 %16 to i64
  %div51 = sdiv i64 %mul47, %conv50
  %extract.t = trunc i64 %div51 to i32
  br label %if.end62

if.else52:                                        ; preds = %if.then36
  %conv55 = sext i32 %16 to i64
  %mul56 = mul nsw i64 %dh.0, %conv55
  %conv59 = sext i32 %15 to i64
  %div60 = sdiv i64 %mul56, %conv59
  %extract.t114 = trunc i64 %div60 to i32
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true26, %if.end24, %if.then43, %if.else52
  %dw.1.off0 = phi i32 [ %extract.t, %if.then43 ], [ %extract.t112, %if.else52 ], [ %extract.t112, %land.lhs.true26 ], [ %extract.t112, %if.end24 ]
  %dh.1.off0 = phi i32 [ %extract.t117, %if.then43 ], [ %extract.t114, %if.else52 ], [ %extract.t117, %land.lhs.true26 ], [ %extract.t117, %if.end24 ]
  %d_width = getelementptr inbounds i8, i8* %handle, i32 12
  %17 = bitcast i8* %d_width to i32*
  store i32 %dw.1.off0, i32* %17, align 4, !tbaa !32
  %d_height = getelementptr inbounds i8, i8* %handle, i32 16
  %18 = bitcast i8* %d_height to i32*
  store i32 %dh.1.off0, i32* %18, align 8, !tbaa !33
  %i_timebase_num = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 66
  %19 = load i32, i32* %i_timebase_num, align 8, !tbaa !34
  %i_timebase_num65 = getelementptr inbounds i8, i8* %handle, i32 44
  %20 = bitcast i8* %i_timebase_num65 to i32*
  store i32 %19, i32* %20, align 4, !tbaa !35
  %i_timebase_den = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %p_param, i32 0, i32 67
  %21 = load i32, i32* %i_timebase_den, align 4, !tbaa !36
  %i_timebase_den66 = getelementptr inbounds i8, i8* %handle, i32 48
  %22 = bitcast i8* %i_timebase_den66 to i32*
  store i32 %21, i32* %22, align 8, !tbaa !37
  ret i32 0
}

; Function Attrs: nounwind
define internal i32 @write_headers(i8* nocapture %handle, %struct.x264_nal_t* nocapture readonly %p_nal) #0 {
entry:
  %i_payload = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 0, i32 5
  %0 = load i32, i32* %i_payload, align 4, !tbaa !38
  %sub = add nsw i32 %0, -4
  %i_payload2 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 1, i32 5
  %1 = load i32, i32* %i_payload2, align 4, !tbaa !38
  %sub3 = add nsw i32 %1, -4
  %i_payload5 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 2, i32 5
  %2 = load i32, i32* %i_payload5, align 4, !tbaa !38
  %p_payload = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 0, i32 6
  %3 = load i8*, i8** %p_payload, align 4, !tbaa !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 4
  %p_payload8 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 1, i32 6
  %4 = load i8*, i8** %p_payload8, align 4, !tbaa !40
  %add.ptr9 = getelementptr inbounds i8, i8* %4, i32 4
  %p_payload11 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 2, i32 6
  %5 = load i8*, i8** %p_payload11, align 4, !tbaa !40
  %width = getelementptr inbounds i8, i8* %handle, i32 4
  %6 = bitcast i8* %width to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !23
  %tobool = icmp eq i32 %7, 0
  br i1 %tobool, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds i8, i8* %handle, i32 8
  %8 = bitcast i8* %height to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !25
  %tobool12 = icmp eq i32 %9, 0
  br i1 %tobool12, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %d_width = getelementptr inbounds i8, i8* %handle, i32 12
  %10 = bitcast i8* %d_width to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !32
  %tobool14 = icmp eq i32 %11, 0
  br i1 %tobool14, label %cleanup, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %d_height = getelementptr inbounds i8, i8* %handle, i32 16
  %12 = bitcast i8* %d_height to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !33
  %tobool16 = icmp eq i32 %13, 0
  br i1 %tobool16, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false15
  %add18 = add nsw i32 %0, 7
  %add19 = add nsw i32 %add18, %sub3
  %call = tail call noalias i8* @malloc(i32 %add19) #6
  %tobool20 = icmp eq i8* %call, null
  br i1 %tobool20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end
  %add = add nsw i32 %0, 4
  store i8 1, i8* %call, align 1, !tbaa !29
  %arrayidx24 = getelementptr inbounds i8, i8* %3, i32 5
  %14 = load i8, i8* %arrayidx24, align 1, !tbaa !29
  %arrayidx25 = getelementptr inbounds i8, i8* %call, i32 1
  store i8 %14, i8* %arrayidx25, align 1, !tbaa !29
  %arrayidx26 = getelementptr inbounds i8, i8* %3, i32 6
  %15 = load i8, i8* %arrayidx26, align 1, !tbaa !29
  %arrayidx27 = getelementptr inbounds i8, i8* %call, i32 2
  store i8 %15, i8* %arrayidx27, align 1, !tbaa !29
  %arrayidx28 = getelementptr inbounds i8, i8* %3, i32 7
  %16 = load i8, i8* %arrayidx28, align 1, !tbaa !29
  %arrayidx29 = getelementptr inbounds i8, i8* %call, i32 3
  store i8 %16, i8* %arrayidx29, align 1, !tbaa !29
  %arrayidx30 = getelementptr inbounds i8, i8* %call, i32 4
  store i8 -1, i8* %arrayidx30, align 1, !tbaa !29
  %arrayidx31 = getelementptr inbounds i8, i8* %call, i32 5
  store i8 -31, i8* %arrayidx31, align 1, !tbaa !29
  %17 = lshr i32 %sub, 8
  %conv = trunc i32 %17 to i8
  %arrayidx32 = getelementptr inbounds i8, i8* %call, i32 6
  store i8 %conv, i8* %arrayidx32, align 1, !tbaa !29
  %conv33 = trunc i32 %sub to i8
  %arrayidx34 = getelementptr inbounds i8, i8* %call, i32 7
  store i8 %conv33, i8* %arrayidx34, align 1, !tbaa !29
  %add.ptr35 = getelementptr inbounds i8, i8* %call, i32 8
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr35, i8* nonnull align 1 %add.ptr, i32 %sub, i1 false)
  %arrayidx37 = getelementptr inbounds i8, i8* %call, i32 %add
  store i8 1, i8* %arrayidx37, align 1, !tbaa !29
  %18 = lshr i32 %sub3, 8
  %conv39 = trunc i32 %18 to i8
  %add40 = add nsw i32 %0, 5
  %arrayidx41 = getelementptr inbounds i8, i8* %call, i32 %add40
  store i8 %conv39, i8* %arrayidx41, align 1, !tbaa !29
  %conv42 = trunc i32 %sub3 to i8
  %add43 = add nsw i32 %0, 6
  %arrayidx44 = getelementptr inbounds i8, i8* %call, i32 %add43
  store i8 %conv42, i8* %arrayidx44, align 1, !tbaa !29
  %add.ptr45 = getelementptr inbounds i8, i8* %call, i32 11
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i32 %sub
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr46, i8* nonnull align 1 %add.ptr9, i32 %sub3, i1 false)
  %w = bitcast i8* %handle to %struct.mk_writer**
  %19 = load %struct.mk_writer*, %struct.mk_writer** %w, align 8, !tbaa !6
  %frame_duration = getelementptr inbounds i8, i8* %handle, i32 32
  %20 = bitcast i8* %frame_duration to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !21
  %display_size_units = getelementptr inbounds i8, i8* %handle, i32 20
  %22 = bitcast i8* %display_size_units to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !26
  %stereo_mode = getelementptr inbounds i8, i8* %handle, i32 24
  %24 = bitcast i8* %stereo_mode to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !27
  %call51 = tail call i32 @mk_write_header(%struct.mk_writer* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* nonnull %call, i32 %add19, i64 %21, i64 50000, i32 %7, i32 %9, i32 %11, i32 %13, i32 %23, i32 %25) #6
  tail call void @free(i8* nonnull %call) #6
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.end22
  %26 = getelementptr inbounds i8, i8* %handle, i32 40
  %27 = load i8, i8* %26, align 8, !tbaa !41
  %tobool55 = icmp eq i8 %27, 0
  br i1 %tobool55, label %if.then56, label %if.end64

if.then56:                                        ; preds = %if.end54
  %28 = load %struct.mk_writer*, %struct.mk_writer** %w, align 8, !tbaa !6
  %call58 = tail call i32 @mk_start_frame(%struct.mk_writer* %28) #6
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %cleanup, label %if.end62

if.end62:                                         ; preds = %if.then56
  store i8 1, i8* %26, align 8, !tbaa !41
  br label %if.end64

if.end64:                                         ; preds = %if.end54, %if.end62
  %29 = load %struct.mk_writer*, %struct.mk_writer** %w, align 8, !tbaa !6
  %call66 = tail call i32 @mk_add_frame_data(%struct.mk_writer* %29, i8* %5, i32 %2) #6
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %cleanup, label %if.end70

if.end70:                                         ; preds = %if.end64
  %add71 = add nsw i32 %2, %sub
  %add72 = add nsw i32 %add71, %sub3
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then56, %if.end22, %if.end, %entry, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false15, %if.end70
  %retval.0 = phi i32 [ %add72, %if.end70 ], [ -1, %lor.lhs.false15 ], [ -1, %lor.lhs.false13 ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ -1, %if.end ], [ %call51, %if.end22 ], [ -1, %if.then56 ], [ -1, %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal i32 @write_frame(i8* nocapture %handle, i8* %p_nalu, i32 %i_size, %struct.x264_picture_t* nocapture readonly %p_picture) #0 {
entry:
  %0 = getelementptr inbounds i8, i8* %handle, i32 40
  %1 = load i8, i8* %0, align 8, !tbaa !41
  %tobool = icmp eq i8 %1, 0
  %w = bitcast i8* %handle to %struct.mk_writer**
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load %struct.mk_writer*, %struct.mk_writer** %w, align 8, !tbaa !6
  %call = tail call i32 @mk_start_frame(%struct.mk_writer* %2) #6
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup22, label %if.end

if.end:                                           ; preds = %if.then
  store i8 1, i8* %0, align 8, !tbaa !41
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %3 = load %struct.mk_writer*, %struct.mk_writer** %w, align 8, !tbaa !6
  %call5 = tail call i32 @mk_add_frame_data(%struct.mk_writer* %3, i8* %p_nalu, i32 %i_size) #6
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup22, label %if.end8

if.end8:                                          ; preds = %if.end3
  %i_pts = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %p_picture, i32 0, i32 4
  %4 = load i64, i64* %i_pts, align 8, !tbaa !42
  %conv = sitofp i64 %4 to double
  %mul = fmul fast double %conv, 1.000000e+09
  %i_timebase_num = getelementptr inbounds i8, i8* %handle, i32 44
  %5 = bitcast i8* %i_timebase_num to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !35
  %conv9 = uitofp i32 %6 to double
  %mul10 = fmul fast double %mul, %conv9
  %i_timebase_den = getelementptr inbounds i8, i8* %handle, i32 48
  %7 = bitcast i8* %i_timebase_den to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !37
  %conv11 = uitofp i32 %8 to double
  %div = fdiv fast double %mul10, %conv11
  %add = fadd fast double %div, 5.000000e-01
  %conv12 = fptosi double %add to i64
  store i8 0, i8* %0, align 8, !tbaa !41
  %9 = load %struct.mk_writer*, %struct.mk_writer** %w, align 8, !tbaa !6
  %b_keyframe = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %p_picture, i32 0, i32 3
  %10 = load i32, i32* %b_keyframe, align 4, !tbaa !49
  %i_type = getelementptr inbounds %struct.x264_picture_t, %struct.x264_picture_t* %p_picture, i32 0, i32 0
  %11 = load i32, i32* %i_type, align 8, !tbaa !50
  %cmp15 = icmp eq i32 %11, 5
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @mk_set_frame_flags(%struct.mk_writer* %9, i64 %conv12, i32 %10, i32 %conv16) #6
  %cmp18.inv = icmp sgt i32 %call17, -1
  %.i_size = select i1 %cmp18.inv, i32 %i_size, i32 -1
  br label %cleanup22

cleanup22:                                        ; preds = %if.end3, %if.then, %if.end8
  %retval.1 = phi i32 [ %.i_size, %if.end8 ], [ -1, %if.then ], [ -1, %if.end3 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
define internal i32 @close_file(i8* nocapture %handle, i64 %largest_pts, i64 %second_largest_pts) #0 {
entry:
  %i_timebase_den = getelementptr inbounds i8, i8* %handle, i32 48
  %0 = bitcast i8* %i_timebase_den to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !37
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %sub = sub nsw i64 %largest_pts, %second_largest_pts
  %i_timebase_num = getelementptr inbounds i8, i8* %handle, i32 44
  %2 = bitcast i8* %i_timebase_num to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !35
  %conv = zext i32 %3 to i64
  %mul = mul nsw i64 %sub, %conv
  %conv2 = zext i32 %1 to i64
  %div = sdiv i64 %mul, %conv2
  %conv3 = sitofp i64 %div to double
  %add = fadd fast double %conv3, 5.000000e-01
  %conv4 = fptosi double %add to i64
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %conv4, %cond.true ], [ 0, %entry ]
  %w = bitcast i8* %handle to %struct.mk_writer**
  %4 = load %struct.mk_writer*, %struct.mk_writer** %w, align 8, !tbaa !6
  %call = tail call i32 @mk_close(%struct.mk_writer* %4, i64 %cond) #6
  tail call void @free(i8* nonnull %handle) #6
  ret i32 %call
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #2

declare dso_local %struct.mk_writer* @mk_create_writer(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

declare dso_local i32 @mk_write_header(%struct.mk_writer*, i8*, i8*, i8*, i32, i64, i64, i32, i32, i32, i32, i32, i32) local_unnamed_addr #3

declare dso_local i32 @mk_start_frame(%struct.mk_writer*) local_unnamed_addr #3

declare dso_local i32 @mk_add_frame_data(%struct.mk_writer*, i8*, i32) local_unnamed_addr #3

declare dso_local i32 @mk_set_frame_flags(%struct.mk_writer*, i64, i32, i32) local_unnamed_addr #3

declare dso_local i32 @mk_close(%struct.mk_writer*, i64) local_unnamed_addr #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 0}
!7 = !{!"", !3, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !9, i64 32, !4, i64 40, !8, i64 44, !8, i64 48}
!8 = !{!"int", !4, i64 0}
!9 = !{!"long long", !4, i64 0}
!10 = !{!11, !8, i64 864}
!11 = !{!"x264_param_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !12, i64 56, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !3, i64 180, !4, i64 184, !4, i64 200, !4, i64 216, !4, i64 232, !4, i64 248, !4, i64 312, !4, i64 376, !4, i64 440, !3, i64 504, !3, i64 508, !8, i64 512, !8, i64 516, !3, i64 520, !13, i64 524, !15, i64 632, !16, i64 748, !8, i64 764, !17, i64 768, !18, i64 824, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !8, i64 856, !8, i64 860, !8, i64 864, !8, i64 868, !8, i64 872, !8, i64 876, !8, i64 880, !8, i64 884, !8, i64 888, !8, i64 892, !8, i64 896, !8, i64 900, !3, i64 904, !3, i64 908, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !3, i64 932, !3, i64 936, !3, i64 940}
!12 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!13 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !14, i64 72, !14, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !4, i64 92, !8, i64 100, !8, i64 104}
!14 = !{!"float", !4, i64 0}
!15 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !8, i64 36, !8, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !8, i64 56, !8, i64 60, !14, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !3, i64 80, !8, i64 84, !3, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !3, i64 104, !8, i64 108, !3, i64 112}
!16 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!17 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 40, !9, i64 48}
!18 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!19 = !{!11, !8, i64 856}
!20 = !{!11, !8, i64 868}
!21 = !{!7, !9, i64 32}
!22 = !{!11, !8, i64 28}
!23 = !{!7, !8, i64 4}
!24 = !{!11, !8, i64 32}
!25 = !{!7, !8, i64 8}
!26 = !{!7, !8, i64 20}
!27 = !{!7, !8, i64 24}
!28 = !{!11, !8, i64 764}
!29 = !{!4, !4, i64 0}
!30 = !{!11, !8, i64 60}
!31 = !{!11, !8, i64 56}
!32 = !{!7, !8, i64 12}
!33 = !{!7, !8, i64 16}
!34 = !{!11, !8, i64 872}
!35 = !{!7, !8, i64 44}
!36 = !{!11, !8, i64 876}
!37 = !{!7, !8, i64 48}
!38 = !{!39, !8, i64 20}
!39 = !{!"x264_nal_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !3, i64 24, !8, i64 28}
!40 = !{!39, !3, i64 24}
!41 = !{!7, !4, i64 40}
!42 = !{!43, !9, i64 16}
!43 = !{!"x264_picture_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !9, i64 24, !3, i64 32, !44, i64 36, !45, i64 80, !47, i64 144, !48, i64 176, !3, i64 188}
!44 = !{!"x264_image_t", !8, i64 0, !8, i64 4, !4, i64 8, !4, i64 24}
!45 = !{!"x264_image_properties_t", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !46, i64 16, !46, i64 24, !4, i64 32, !46, i64 56}
!46 = !{!"double", !4, i64 0}
!47 = !{!"x264_hrd_t", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!48 = !{!"x264_sei_t", !8, i64 0, !3, i64 4, !3, i64 8}
!49 = !{!43, !8, i64 12}
!50 = !{!43, !8, i64 0}
