; ModuleID = 'input/input.c'
source_filename = "input/input.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_cli_csp_t = type { i8*, i32, [4 x float], [4 x float], i32, i32 }
%struct.cli_pic_t = type { %struct.cli_image_t, i64, i64, i8* }
%struct.cli_image_t = type { i32, i32, i32, i32, [4 x i8*], [4 x i32] }
%struct.cli_mmap_t = type { i64, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"i400\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"i420\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"yv12\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"nv12\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"nv21\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"i422\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"yv16\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"nv16\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"yuyv\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"uyvy\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"i444\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"yv24\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"bgr\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"bgra\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@x264_cli_csps = hidden constant [17 x %struct.x264_cli_csp_t] [%struct.x264_cli_csp_t zeroinitializer, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i32 1, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 3, [4 x float] [float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00], i32 2, i32 2 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 3, [4 x float] [float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00], i32 2, i32 2 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2, [4 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00], i32 2, i32 2 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 2, [4 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00], i32 2, i32 2 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 3, [4 x float] [float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], i32 2, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 3, [4 x float] [float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], i32 2, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 2, [4 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], i32 2, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 1, [4 x float] [float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i32 2, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 1, [4 x float] [float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i32 2, i32 1 }, %struct.x264_cli_csp_t zeroinitializer, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 3, [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], i32 1, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 3, [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], i32 1, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 1, [4 x float] [float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i32 1, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 1, [4 x float] [float 4.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i32 1, i32 1 }, %struct.x264_cli_csp_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 1, [4 x float] [float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], i32 1, i32 1 }], align 4

; Function Attrs: norecurse nounwind readnone
define hidden i32 @x264_cli_csp_is_invalid(i32 %csp) local_unnamed_addr #0 {
entry:
  %and = and i32 %csp, 255
  %0 = add nsw i32 %and, -1
  %1 = icmp ugt i32 %0, 15
  %cmp3 = icmp eq i32 %and, 11
  %or.cond5 = or i1 %cmp3, %1
  %and4 = lshr i32 %csp, 14
  %and4.lobit = and i32 %and4, 1
  %2 = select i1 %or.cond5, i32 1, i32 %and4.lobit
  ret i32 %2
}

; Function Attrs: norecurse nounwind readnone
define hidden i32 @x264_cli_csp_depth_factor(i32 %csp) local_unnamed_addr #0 {
entry:
  %and.i = and i32 %csp, 255
  %0 = add nsw i32 %and.i, -1
  %1 = icmp ult i32 %0, 16
  %cmp3.i = icmp ne i32 %and.i, 11
  %and4.lobit.i = and i32 %csp, 16384
  %tobool3 = icmp eq i32 %and4.lobit.i, 0
  %not.or.cond5.i = and i1 %cmp3.i, %1
  %tobool = and i1 %tobool3, %not.or.cond5.i
  %and = and i32 %csp, 8192
  %tobool1 = icmp eq i32 %and, 0
  %cond = select i1 %tobool1, i32 1, i32 2
  %retval.0 = select i1 %tobool, i32 %cond, i32 0
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind readnone
define hidden i64 @x264_cli_pic_plane_size(i32 %csp, i32 %width, i32 %height, i32 %plane) local_unnamed_addr #0 {
entry:
  %and.i = and i32 %csp, 255
  %0 = add nsw i32 %and.i, -1
  %1 = icmp ugt i32 %0, 15
  %cmp3.i = icmp eq i32 %and.i, 11
  %or.cond5.i = or i1 %cmp3.i, %1
  %and4.lobit.i = and i32 %csp, 16384
  %tobool29 = icmp ne i32 %and4.lobit.i, 0
  %tobool = or i1 %tobool29, %or.cond5.i
  %cmp = icmp slt i32 %plane, 0
  %or.cond = or i1 %cmp, %tobool
  br i1 %or.cond, label %cleanup, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %entry
  %planes = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 1
  %2 = load i32, i32* %planes, align 4, !tbaa !2
  %cmp2 = icmp sgt i32 %2, %plane
  br i1 %cmp2, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %conv = sext i32 %width to i64
  %conv3 = sext i32 %height to i64
  %mul = mul nsw i64 %conv3, %conv
  %arrayidx6 = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 2, i32 %plane
  %3 = load float, float* %arrayidx6, align 4, !tbaa !8
  %arrayidx9 = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 3, i32 %plane
  %4 = load float, float* %arrayidx9, align 4, !tbaa !8
  %conv11 = sitofp i64 %mul to float
  %mul10 = fmul fast float %3, %conv11
  %mul12 = fmul fast float %mul10, %4
  %conv13 = fptosi float %mul12 to i64
  %and.i28 = and i32 %csp, 8192
  %tobool1.i = icmp eq i32 %and.i28, 0
  %cond.i = select i1 %tobool1.i, i32 1, i32 2
  %conv15 = zext i32 %cond.i to i64
  %mul16 = mul nsw i64 %conv15, %conv13
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false1, %if.end
  %retval.0 = phi i64 [ %mul16, %if.end ], [ 0, %lor.lhs.false1 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: norecurse nounwind readnone
define hidden i64 @x264_cli_pic_size(i32 %csp, i32 %width, i32 %height) local_unnamed_addr #0 {
entry:
  %and.i = and i32 %csp, 255
  %0 = add nsw i32 %and.i, -1
  %1 = icmp ugt i32 %0, 15
  %cmp3.i = icmp eq i32 %and.i, 11
  %or.cond5.i = or i1 %cmp3.i, %1
  %and4.lobit.i = and i32 %csp, 16384
  %tobool10 = icmp eq i32 %and4.lobit.i, 0
  %not.or.cond5.i.demorgan = or i1 %cmp3.i, %1
  %not.or.cond5.i = xor i1 %not.or.cond5.i.demorgan, true
  %tobool = and i1 %tobool10, %not.or.cond5.i
  br i1 %tobool, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %entry
  %trunc = trunc i32 %csp to i8
  switch i8 %trunc, label %for.body.lr.ph [
    i8 11, label %return
    i8 0, label %return
  ]

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %planes = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 1
  %conv.i = sext i32 %width to i64
  %conv3.i = sext i32 %height to i64
  %mul.i = mul nsw i64 %conv3.i, %conv.i
  %conv11.i = sitofp i64 %mul.i to float
  %and.i28.i = and i32 %csp, 8192
  %tobool1.i.i = icmp eq i32 %and.i28.i, 0
  %cond.i.i = select i1 %tobool1.i.i, i32 1, i32 2
  %conv15.i = zext i32 %cond.i.i to i64
  %2 = load i32, i32* %planes, align 4, !tbaa !2
  br i1 %or.cond5.i, label %return, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.013 = phi i32 [ %inc, %for.body ], [ 0, %for.body.lr.ph ]
  %size.012 = phi i64 [ %add, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx6.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 2, i32 %i.013
  %3 = load float, float* %arrayidx6.i, align 4, !tbaa !8
  %arrayidx9.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 3, i32 %i.013
  %4 = load float, float* %arrayidx9.i, align 4, !tbaa !8
  %mul10.i = fmul fast float %3, %conv11.i
  %mul12.i = fmul fast float %mul10.i, %4
  %conv13.i = fptosi float %mul12.i to i64
  %mul16.i = mul nsw i64 %conv13.i, %conv15.i
  %add = add nsw i64 %mul16.i, %size.012
  %inc = add nuw nsw i32 %i.013, 1
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %for.body, label %return

return:                                           ; preds = %for.body, %for.cond.preheader, %for.cond.preheader, %for.body.lr.ph, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.body.lr.ph ], [ 0, %for.cond.preheader ], [ %add, %for.body ]
  ret i64 %retval.0
}

; Function Attrs: nounwind
define hidden i32 @x264_cli_pic_alloc(%struct.cli_pic_t* nocapture %pic, i32 %csp, i32 %width, i32 %height) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.cli_pic_t* %pic to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(72) %0, i8 0, i32 72, i1 false) #4
  %and.i = and i32 %csp, 255
  %1 = add nsw i32 %and.i, -1
  %2 = icmp ult i32 %1, 16
  %cmp3.i.i = icmp ne i32 %and.i, 11
  %and4.lobit.i.i = and i32 %csp, 16384
  %tobool91.i = icmp eq i32 %and4.lobit.i.i, 0
  %not.or.cond5.i.i = and i1 %cmp3.i.i, %2
  %tobool.i = and i1 %tobool91.i, %not.or.cond5.i.i
  br i1 %tobool.i, label %if.else.i, label %if.end.i

if.else.i:                                        ; preds = %entry
  %planes1.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 1
  %3 = load i32, i32* %planes1.i, align 4, !tbaa !2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry
  %4 = phi i32 [ %3, %if.else.i ], [ 0, %entry ]
  %5 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 3
  store i32 %4, i32* %5, align 4
  %csp5.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 0
  store i32 %csp, i32* %csp5.i, align 8, !tbaa !10
  %width7.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 1
  store i32 %width, i32* %width7.i, align 4, !tbaa !14
  %height9.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 2
  store i32 %height, i32* %height9.i, align 8, !tbaa !15
  %conv25.i = sitofp i32 %height to float
  %cmp92.i = icmp sgt i32 %4, 0
  br i1 %cmp92.i, label %for.body.lr.ph.i, label %cli_pic_init_internal.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv.i = sitofp i32 %width to float
  %and.i83.i = and i32 %csp, 8192
  %tobool1.i.i = icmp eq i32 %and.i83.i, 0
  %cond.i.i = select i1 %tobool1.i.i, i32 1, i32 2
  %retval.0.i.i = select i1 %tobool.i, i32 %cond.i.i, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %i.093.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %for.body.lr.ph.i ]
  %arrayidx14.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 2, i32 %i.093.i
  %6 = load float, float* %arrayidx14.i, align 4, !tbaa !8
  %mul.i = fmul fast float %6, %conv.i
  %conv15.i = fptosi float %mul.i to i32
  %mul17.i = mul nsw i32 %retval.0.i.i, %conv15.i
  %arrayidx22.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 5, i32 %i.093.i
  store i32 %mul17.i, i32* %arrayidx22.i, align 4, !tbaa !16
  %arrayidx28.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 3, i32 %i.093.i
  %7 = load float, float* %arrayidx28.i, align 4, !tbaa !8
  %mul29.i = fmul fast float %7, %conv25.i
  %conv30.i = fptosi float %mul29.i to i64
  %conv31.i = sext i32 %mul17.i to i64
  %mul32.i = mul nsw i64 %conv30.i, %conv31.i
  %call33.i = tail call i8* @x264_malloc(i64 %mul32.i) #4
  %arrayidx35.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %i.093.i
  store i8* %call33.i, i8** %arrayidx35.i, align 4, !tbaa !17
  %tobool39.i = icmp eq i8* %call33.i, null
  br i1 %tobool39.i, label %cli_pic_init_internal.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.093.i, 1
  %8 = load i32, i32* %5, align 4, !tbaa !18
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i, label %cli_pic_init_internal.exit

cli_pic_init_internal.exit:                       ; preds = %for.body.i, %for.inc.i, %if.end.i
  %9 = phi i32 [ 0, %if.end.i ], [ 0, %for.inc.i ], [ -1, %for.body.i ]
  ret i32 %9
}

; Function Attrs: nounwind
define hidden i32 @x264_cli_pic_alloc_aligned(%struct.cli_pic_t* nocapture %pic, i32 %csp, i32 %width, i32 %height) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.cli_pic_t* %pic to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(72) %0, i8 0, i32 72, i1 false) #4
  %and.i = and i32 %csp, 255
  %1 = add nsw i32 %and.i, -1
  %2 = icmp ult i32 %1, 16
  %cmp3.i.i = icmp ne i32 %and.i, 11
  %and4.lobit.i.i = and i32 %csp, 16384
  %tobool91.i = icmp eq i32 %and4.lobit.i.i, 0
  %not.or.cond5.i.i = and i1 %cmp3.i.i, %2
  %tobool.i = and i1 %tobool91.i, %not.or.cond5.i.i
  br i1 %tobool.i, label %if.else.i, label %if.end.i

if.else.i:                                        ; preds = %entry
  %planes1.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 1
  %3 = load i32, i32* %planes1.i, align 4, !tbaa !2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry
  %4 = phi i32 [ %3, %if.else.i ], [ 0, %entry ]
  %5 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 3
  store i32 %4, i32* %5, align 4
  %csp5.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 0
  store i32 %csp, i32* %csp5.i, align 8, !tbaa !10
  %width7.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 1
  store i32 %width, i32* %width7.i, align 4, !tbaa !14
  %height9.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 2
  store i32 %height, i32* %height9.i, align 8, !tbaa !15
  %conv25.i = sitofp i32 %height to float
  %cmp92.i = icmp sgt i32 %4, 0
  br i1 %cmp92.i, label %for.body.lr.ph.i, label %cli_pic_init_internal.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv.i = sitofp i32 %width to float
  %and.i83.i = and i32 %csp, 8192
  %tobool1.i.i = icmp eq i32 %and.i83.i, 0
  %cond.i.i = select i1 %tobool1.i.i, i32 1, i32 2
  %retval.0.i.i = select i1 %tobool.i, i32 %cond.i.i, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %i.093.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %for.body.lr.ph.i ]
  %arrayidx14.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 2, i32 %i.093.i
  %6 = load float, float* %arrayidx14.i, align 4, !tbaa !8
  %mul.i = fmul fast float %6, %conv.i
  %conv15.i = fptosi float %mul.i to i32
  %mul17.i = mul nsw i32 %retval.0.i.i, %conv15.i
  %add.i = add nsw i32 %mul17.i, 63
  %and19.i = and i32 %add.i, -64
  %arrayidx22.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 5, i32 %i.093.i
  store i32 %and19.i, i32* %arrayidx22.i, align 4, !tbaa !16
  %arrayidx28.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 3, i32 %i.093.i
  %7 = load float, float* %arrayidx28.i, align 4, !tbaa !8
  %mul29.i = fmul fast float %7, %conv25.i
  %conv30.i = fptosi float %mul29.i to i64
  %conv31.i = sext i32 %and19.i to i64
  %mul32.i = mul nsw i64 %conv31.i, %conv30.i
  %call33.i = tail call i8* @x264_malloc(i64 %mul32.i) #4
  %arrayidx35.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %i.093.i
  store i8* %call33.i, i8** %arrayidx35.i, align 4, !tbaa !17
  %tobool39.i = icmp eq i8* %call33.i, null
  br i1 %tobool39.i, label %cli_pic_init_internal.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.093.i, 1
  %8 = load i32, i32* %5, align 4, !tbaa !18
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i, label %cli_pic_init_internal.exit

cli_pic_init_internal.exit:                       ; preds = %for.body.i, %for.inc.i, %if.end.i
  %9 = phi i32 [ 0, %if.end.i ], [ 0, %for.inc.i ], [ -1, %for.body.i ]
  ret i32 %9
}

; Function Attrs: nounwind
define hidden i32 @x264_cli_pic_init_noalloc(%struct.cli_pic_t* nocapture %pic, i32 %csp, i32 %width, i32 %height) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.cli_pic_t* %pic to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(72) %0, i8 0, i32 72, i1 false) #4
  %and.i = and i32 %csp, 255
  %1 = add nsw i32 %and.i, -1
  %2 = icmp ult i32 %1, 16
  %cmp3.i.i = icmp ne i32 %and.i, 11
  %and4.lobit.i.i = and i32 %csp, 16384
  %tobool91.i = icmp eq i32 %and4.lobit.i.i, 0
  %not.or.cond5.i.i = and i1 %cmp3.i.i, %2
  %tobool.i = and i1 %tobool91.i, %not.or.cond5.i.i
  br i1 %tobool.i, label %if.else.i, label %if.end.i

if.else.i:                                        ; preds = %entry
  %planes1.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 1
  %3 = load i32, i32* %planes1.i, align 4, !tbaa !2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry
  %4 = phi i32 [ %3, %if.else.i ], [ 0, %entry ]
  %5 = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 3
  store i32 %4, i32* %5, align 4
  %csp5.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 0
  store i32 %csp, i32* %csp5.i, align 8, !tbaa !10
  %width7.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 1
  store i32 %width, i32* %width7.i, align 4, !tbaa !14
  %height9.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 2
  store i32 %height, i32* %height9.i, align 8, !tbaa !15
  %cmp92.i = icmp sgt i32 %4, 0
  br i1 %cmp92.i, label %for.body.lr.ph.i, label %cli_pic_init_internal.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv.i = sitofp i32 %width to float
  %and.i83.i = and i32 %csp, 8192
  %tobool1.i.i = icmp eq i32 %and.i83.i, 0
  %cond.i.i = select i1 %tobool1.i.i, i32 1, i32 2
  %retval.0.i.i = select i1 %tobool.i, i32 %cond.i.i, i32 0
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.body.us.i, %for.body.lr.ph.i
  %i.093.us.i = phi i32 [ %inc.us.i, %for.body.us.i ], [ 0, %for.body.lr.ph.i ]
  %arrayidx14.us.i = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i, i32 2, i32 %i.093.us.i
  %6 = load float, float* %arrayidx14.us.i, align 4, !tbaa !8
  %mul.us.i = fmul fast float %6, %conv.i
  %conv15.us.i = fptosi float %mul.us.i to i32
  %mul17.us.i = mul nsw i32 %retval.0.i.i, %conv15.us.i
  %arrayidx22.us.i = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 5, i32 %i.093.us.i
  store i32 %mul17.us.i, i32* %arrayidx22.us.i, align 4, !tbaa !16
  %inc.us.i = add nuw nsw i32 %i.093.us.i, 1
  %exitcond = icmp eq i32 %inc.us.i, %4
  br i1 %exitcond, label %cli_pic_init_internal.exit, label %for.body.us.i

cli_pic_init_internal.exit:                       ; preds = %for.body.us.i, %if.end.i
  ret i32 0
}

; Function Attrs: nounwind
define hidden void @x264_cli_pic_clean(%struct.cli_pic_t* nocapture %pic) local_unnamed_addr #1 {
entry:
  %planes = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 3
  %0 = load i32, i32* %planes, align 4, !tbaa !18
  %cmp7 = icmp sgt i32 %0, 0
  br i1 %cmp7, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %1 = bitcast %struct.cli_pic_t* %pic to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(72) %1, i8 0, i32 72, i1 false)
  ret void

for.body:                                         ; preds = %entry, %for.body
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.cli_pic_t, %struct.cli_pic_t* %pic, i32 0, i32 0, i32 4, i32 %i.08
  %2 = load i8*, i8** %arrayidx, align 4, !tbaa !17
  tail call void @x264_free(i8* %2) #4
  %inc = add nuw nsw i32 %i.08, 1
  %3 = load i32, i32* %planes, align 4, !tbaa !18
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

declare dso_local void @x264_free(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: norecurse nounwind readnone
define hidden %struct.x264_cli_csp_t* @x264_cli_get_csp(i32 %csp) local_unnamed_addr #0 {
entry:
  %and.i = and i32 %csp, 255
  %0 = add nsw i32 %and.i, -1
  %1 = icmp ult i32 %0, 16
  %cmp3.i = icmp ne i32 %and.i, 11
  %and4.lobit.i = and i32 %csp, 16384
  %tobool2 = icmp eq i32 %and4.lobit.i, 0
  %not.or.cond5.i = and i1 %cmp3.i, %1
  %tobool = and i1 %tobool2, %not.or.cond5.i
  %add.ptr = getelementptr inbounds [17 x %struct.x264_cli_csp_t], [17 x %struct.x264_cli_csp_t]* @x264_cli_csps, i32 0, i32 %and.i
  %retval.0 = select i1 %tobool, %struct.x264_cli_csp_t* %add.ptr, %struct.x264_cli_csp_t* null
  ret %struct.x264_cli_csp_t* %retval.0
}

; Function Attrs: norecurse nounwind readnone
define hidden i32 @x264_cli_mmap_init(%struct.cli_mmap_t* nocapture readnone %h, %struct._IO_FILE* nocapture readnone %fh) local_unnamed_addr #0 {
entry:
  ret i32 -1
}

; Function Attrs: norecurse nounwind readnone
define hidden noalias i8* @x264_cli_mmap(%struct.cli_mmap_t* nocapture readnone %h, i64 %offset, i64 %size) local_unnamed_addr #0 {
entry:
  ret i8* null
}

; Function Attrs: norecurse nounwind readnone
define hidden i32 @x264_cli_munmap(%struct.cli_mmap_t* nocapture readnone %h, i8* nocapture readnone %addr, i64 %size) local_unnamed_addr #0 {
entry:
  ret i32 -1
}

; Function Attrs: norecurse nounwind readnone
define hidden void @x264_cli_mmap_close(%struct.cli_mmap_t* nocapture %h) local_unnamed_addr #0 {
entry:
  ret void
}

declare dso_local i8* @x264_malloc(i64) local_unnamed_addr #2

attributes #0 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !7, i64 4}
!3 = !{!"", !4, i64 0, !7, i64 4, !5, i64 8, !5, i64 24, !7, i64 40, !7, i64 44}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!11, !7, i64 0}
!11 = !{!"", !12, i64 0, !13, i64 48, !13, i64 56, !4, i64 64}
!12 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !5, i64 16, !5, i64 32}
!13 = !{!"long long", !5, i64 0}
!14 = !{!11, !7, i64 4}
!15 = !{!11, !7, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!11, !7, i64 12}
