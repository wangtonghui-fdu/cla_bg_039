; ModuleID = 'common/dct.c'
source_filename = "common/dct.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_dct_function_t = type { void (i16*, i8*, i8*)*, void (i8*, i16*)*, void ([16 x i16]*, i8*, i8*)*, void (i16*, i8*, i8*)*, void (i8*, [16 x i16]*)*, void (i8*, i16*)*, void (i16*, i8*, i8*)*, void ([16 x i16]*, i8*, i8*)*, void (i8*, [16 x i16]*)*, void (i8*, i16*)*, void (i16*, i8*, i8*)*, void (i8*, i16*)*, void ([64 x i16]*, i8*, i8*)*, void (i8*, [64 x i16]*)*, void (i16*)*, void (i16*)*, void (i16*, [16 x i16]*)* }
%struct.x264_zigzag_function_t = type { void (i16*, i16*)*, void (i16*, i16*)*, i32 (i16*, i8*, i8*)*, i32 (i16*, i8*, i8*)*, i32 (i16*, i8*, i8*, i16*)*, void (i16*, i16*, i8*)* }

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_dct_init(i32 %cpu, %struct.x264_dct_function_t* nocapture %dctf) local_unnamed_addr #0 {
entry:
  %sub4x4_dct = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 0
  store void (i16*, i8*, i8*)* @sub4x4_dct, void (i16*, i8*, i8*)** %sub4x4_dct, align 4, !tbaa !2
  %add4x4_idct = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 1
  store void (i8*, i16*)* @add4x4_idct, void (i8*, i16*)** %add4x4_idct, align 4, !tbaa !7
  %sub8x8_dct = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 2
  store void ([16 x i16]*, i8*, i8*)* @sub8x8_dct, void ([16 x i16]*, i8*, i8*)** %sub8x8_dct, align 4, !tbaa !8
  %sub8x8_dct_dc = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 3
  store void (i16*, i8*, i8*)* @sub8x8_dct_dc, void (i16*, i8*, i8*)** %sub8x8_dct_dc, align 4, !tbaa !9
  %add8x8_idct = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 4
  store void (i8*, [16 x i16]*)* @add8x8_idct, void (i8*, [16 x i16]*)** %add8x8_idct, align 4, !tbaa !10
  %add8x8_idct_dc = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 5
  store void (i8*, i16*)* @add8x8_idct_dc, void (i8*, i16*)** %add8x8_idct_dc, align 4, !tbaa !11
  %sub8x16_dct_dc = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 6
  store void (i16*, i8*, i8*)* @sub8x16_dct_dc, void (i16*, i8*, i8*)** %sub8x16_dct_dc, align 4, !tbaa !12
  %sub16x16_dct = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 7
  store void ([16 x i16]*, i8*, i8*)* @sub16x16_dct, void ([16 x i16]*, i8*, i8*)** %sub16x16_dct, align 4, !tbaa !13
  %add16x16_idct = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 8
  store void (i8*, [16 x i16]*)* @add16x16_idct, void (i8*, [16 x i16]*)** %add16x16_idct, align 4, !tbaa !14
  %add16x16_idct_dc = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 9
  store void (i8*, i16*)* @add16x16_idct_dc, void (i8*, i16*)** %add16x16_idct_dc, align 4, !tbaa !15
  %sub8x8_dct8 = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 10
  store void (i16*, i8*, i8*)* @sub8x8_dct8, void (i16*, i8*, i8*)** %sub8x8_dct8, align 4, !tbaa !16
  %add8x8_idct8 = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 11
  store void (i8*, i16*)* @add8x8_idct8, void (i8*, i16*)** %add8x8_idct8, align 4, !tbaa !17
  %sub16x16_dct8 = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 12
  store void ([64 x i16]*, i8*, i8*)* @sub16x16_dct8, void ([64 x i16]*, i8*, i8*)** %sub16x16_dct8, align 4, !tbaa !18
  %add16x16_idct8 = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 13
  store void (i8*, [64 x i16]*)* @add16x16_idct8, void (i8*, [64 x i16]*)** %add16x16_idct8, align 4, !tbaa !19
  %dct4x4dc = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 14
  store void (i16*)* @dct4x4dc, void (i16*)** %dct4x4dc, align 4, !tbaa !20
  %idct4x4dc = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 15
  store void (i16*)* @idct4x4dc, void (i16*)** %idct4x4dc, align 4, !tbaa !21
  %dct2x4dc = getelementptr inbounds %struct.x264_dct_function_t, %struct.x264_dct_function_t* %dctf, i32 0, i32 16
  store void (i16*, [16 x i16]*)* @dct2x4dc, void (i16*, [16 x i16]*)** %dct2x4dc, align 4, !tbaa !22
  ret void
}

; Function Attrs: nounwind
define internal void @sub4x4_dct(i16* nocapture %dct, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2) #1 {
entry:
  %d = alloca [16 x i16], align 4
  %tmp = alloca [16 x i16], align 4
  %0 = bitcast [16 x i16]* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %1 = bitcast [16 x i16]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #5
  %2 = load i8, i8* %pix1, align 1, !tbaa !23
  %conv.us.i = zext i8 %2 to i16
  %3 = load i8, i8* %pix2, align 1, !tbaa !23
  %conv6.us.i = zext i8 %3 to i16
  %sub.us.i = sub nsw i16 %conv.us.i, %conv6.us.i
  %arrayidx8.us.i = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 0
  store i16 %sub.us.i, i16* %arrayidx8.us.i, align 4, !tbaa !24
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %4 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !23
  %conv.us.i.1 = zext i8 %4 to i16
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %5 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !23
  %conv6.us.i.1 = zext i8 %5 to i16
  %sub.us.i.1 = sub nsw i16 %conv.us.i.1, %conv6.us.i.1
  %arrayidx8.us.i.1 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 1
  store i16 %sub.us.i.1, i16* %arrayidx8.us.i.1, align 2, !tbaa !24
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %6 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !23
  %conv.us.i.2 = zext i8 %6 to i16
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %7 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !23
  %conv6.us.i.2 = zext i8 %7 to i16
  %sub.us.i.2 = sub nsw i16 %conv.us.i.2, %conv6.us.i.2
  %arrayidx8.us.i.2 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 2
  store i16 %sub.us.i.2, i16* %arrayidx8.us.i.2, align 4, !tbaa !24
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %8 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !23
  %conv.us.i.3 = zext i8 %8 to i16
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %9 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !23
  %conv6.us.i.3 = zext i8 %9 to i16
  %sub.us.i.3 = sub nsw i16 %conv.us.i.3, %conv6.us.i.3
  %arrayidx8.us.i.3 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 3
  store i16 %sub.us.i.3, i16* %arrayidx8.us.i.3, align 2, !tbaa !24
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix1, i32 16
  %add.ptr9.us.i = getelementptr inbounds i8, i8* %pix2, i32 32
  %10 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !23
  %conv.us.i.1170 = zext i8 %10 to i16
  %11 = load i8, i8* %add.ptr9.us.i, align 1, !tbaa !23
  %conv6.us.i.1171 = zext i8 %11 to i16
  %sub.us.i.1172 = sub nsw i16 %conv.us.i.1170, %conv6.us.i.1171
  %arrayidx8.us.i.1173 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 4
  store i16 %sub.us.i.1172, i16* %arrayidx8.us.i.1173, align 4, !tbaa !24
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %pix1, i32 17
  %12 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !23
  %conv.us.i.1.1 = zext i8 %12 to i16
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %pix2, i32 33
  %13 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !23
  %conv6.us.i.1.1 = zext i8 %13 to i16
  %sub.us.i.1.1 = sub nsw i16 %conv.us.i.1.1, %conv6.us.i.1.1
  %arrayidx8.us.i.1.1 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 5
  store i16 %sub.us.i.1.1, i16* %arrayidx8.us.i.1.1, align 2, !tbaa !24
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, i8* %pix1, i32 18
  %14 = load i8, i8* %arrayidx.us.i.2.1, align 1, !tbaa !23
  %conv.us.i.2.1 = zext i8 %14 to i16
  %arrayidx5.us.i.2.1 = getelementptr inbounds i8, i8* %pix2, i32 34
  %15 = load i8, i8* %arrayidx5.us.i.2.1, align 1, !tbaa !23
  %conv6.us.i.2.1 = zext i8 %15 to i16
  %sub.us.i.2.1 = sub nsw i16 %conv.us.i.2.1, %conv6.us.i.2.1
  %arrayidx8.us.i.2.1 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 6
  store i16 %sub.us.i.2.1, i16* %arrayidx8.us.i.2.1, align 4, !tbaa !24
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, i8* %pix1, i32 19
  %16 = load i8, i8* %arrayidx.us.i.3.1, align 1, !tbaa !23
  %conv.us.i.3.1 = zext i8 %16 to i16
  %arrayidx5.us.i.3.1 = getelementptr inbounds i8, i8* %pix2, i32 35
  %17 = load i8, i8* %arrayidx5.us.i.3.1, align 1, !tbaa !23
  %conv6.us.i.3.1 = zext i8 %17 to i16
  %sub.us.i.3.1 = sub nsw i16 %conv.us.i.3.1, %conv6.us.i.3.1
  %arrayidx8.us.i.3.1 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 7
  store i16 %sub.us.i.3.1, i16* %arrayidx8.us.i.3.1, align 2, !tbaa !24
  %add.ptr.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 32
  %add.ptr9.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 64
  %18 = load i8, i8* %add.ptr.us.i.1, align 1, !tbaa !23
  %conv.us.i.2174 = zext i8 %18 to i16
  %19 = load i8, i8* %add.ptr9.us.i.1, align 1, !tbaa !23
  %conv6.us.i.2175 = zext i8 %19 to i16
  %sub.us.i.2176 = sub nsw i16 %conv.us.i.2174, %conv6.us.i.2175
  %arrayidx8.us.i.2177 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 8
  store i16 %sub.us.i.2176, i16* %arrayidx8.us.i.2177, align 4, !tbaa !24
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, i8* %pix1, i32 33
  %20 = load i8, i8* %arrayidx.us.i.1.2, align 1, !tbaa !23
  %conv.us.i.1.2 = zext i8 %20 to i16
  %arrayidx5.us.i.1.2 = getelementptr inbounds i8, i8* %pix2, i32 65
  %21 = load i8, i8* %arrayidx5.us.i.1.2, align 1, !tbaa !23
  %conv6.us.i.1.2 = zext i8 %21 to i16
  %sub.us.i.1.2 = sub nsw i16 %conv.us.i.1.2, %conv6.us.i.1.2
  %arrayidx8.us.i.1.2 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 9
  store i16 %sub.us.i.1.2, i16* %arrayidx8.us.i.1.2, align 2, !tbaa !24
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, i8* %pix1, i32 34
  %22 = load i8, i8* %arrayidx.us.i.2.2, align 1, !tbaa !23
  %conv.us.i.2.2 = zext i8 %22 to i16
  %arrayidx5.us.i.2.2 = getelementptr inbounds i8, i8* %pix2, i32 66
  %23 = load i8, i8* %arrayidx5.us.i.2.2, align 1, !tbaa !23
  %conv6.us.i.2.2 = zext i8 %23 to i16
  %sub.us.i.2.2 = sub nsw i16 %conv.us.i.2.2, %conv6.us.i.2.2
  %arrayidx8.us.i.2.2 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 10
  store i16 %sub.us.i.2.2, i16* %arrayidx8.us.i.2.2, align 4, !tbaa !24
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, i8* %pix1, i32 35
  %24 = load i8, i8* %arrayidx.us.i.3.2, align 1, !tbaa !23
  %conv.us.i.3.2 = zext i8 %24 to i16
  %arrayidx5.us.i.3.2 = getelementptr inbounds i8, i8* %pix2, i32 67
  %25 = load i8, i8* %arrayidx5.us.i.3.2, align 1, !tbaa !23
  %conv6.us.i.3.2 = zext i8 %25 to i16
  %sub.us.i.3.2 = sub nsw i16 %conv.us.i.3.2, %conv6.us.i.3.2
  %arrayidx8.us.i.3.2 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 11
  store i16 %sub.us.i.3.2, i16* %arrayidx8.us.i.3.2, align 2, !tbaa !24
  %add.ptr.us.i.2 = getelementptr inbounds i8, i8* %pix1, i32 48
  %add.ptr9.us.i.2 = getelementptr inbounds i8, i8* %pix2, i32 96
  %26 = load i8, i8* %add.ptr.us.i.2, align 1, !tbaa !23
  %conv.us.i.3178 = zext i8 %26 to i16
  %27 = load i8, i8* %add.ptr9.us.i.2, align 1, !tbaa !23
  %conv6.us.i.3179 = zext i8 %27 to i16
  %sub.us.i.3180 = sub nsw i16 %conv.us.i.3178, %conv6.us.i.3179
  %arrayidx8.us.i.3181 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 12
  store i16 %sub.us.i.3180, i16* %arrayidx8.us.i.3181, align 4, !tbaa !24
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, i8* %pix1, i32 49
  %28 = load i8, i8* %arrayidx.us.i.1.3, align 1, !tbaa !23
  %conv.us.i.1.3 = zext i8 %28 to i16
  %arrayidx5.us.i.1.3 = getelementptr inbounds i8, i8* %pix2, i32 97
  %29 = load i8, i8* %arrayidx5.us.i.1.3, align 1, !tbaa !23
  %conv6.us.i.1.3 = zext i8 %29 to i16
  %sub.us.i.1.3 = sub nsw i16 %conv.us.i.1.3, %conv6.us.i.1.3
  %arrayidx8.us.i.1.3 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 13
  store i16 %sub.us.i.1.3, i16* %arrayidx8.us.i.1.3, align 2, !tbaa !24
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, i8* %pix1, i32 50
  %30 = load i8, i8* %arrayidx.us.i.2.3, align 1, !tbaa !23
  %conv.us.i.2.3 = zext i8 %30 to i16
  %arrayidx5.us.i.2.3 = getelementptr inbounds i8, i8* %pix2, i32 98
  %31 = load i8, i8* %arrayidx5.us.i.2.3, align 1, !tbaa !23
  %conv6.us.i.2.3 = zext i8 %31 to i16
  %sub.us.i.2.3 = sub nsw i16 %conv.us.i.2.3, %conv6.us.i.2.3
  %arrayidx8.us.i.2.3 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 14
  store i16 %sub.us.i.2.3, i16* %arrayidx8.us.i.2.3, align 4, !tbaa !24
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, i8* %pix1, i32 51
  %32 = load i8, i8* %arrayidx.us.i.3.3, align 1, !tbaa !23
  %conv.us.i.3.3 = zext i8 %32 to i16
  %arrayidx5.us.i.3.3 = getelementptr inbounds i8, i8* %pix2, i32 99
  %33 = load i8, i8* %arrayidx5.us.i.3.3, align 1, !tbaa !23
  %conv6.us.i.3.3 = zext i8 %33 to i16
  %sub.us.i.3.3 = sub nsw i16 %conv.us.i.3.3, %conv6.us.i.3.3
  %arrayidx8.us.i.3.3 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 15
  store i16 %sub.us.i.3.3, i16* %arrayidx8.us.i.3.3, align 2, !tbaa !24
  %34 = load i16, i16* %arrayidx8.us.i, align 4, !tbaa !24
  %conv = sext i16 %34 to i32
  %35 = load i16, i16* %arrayidx8.us.i.3, align 2, !tbaa !24
  %conv4 = sext i16 %35 to i32
  %add5 = add nsw i32 %conv4, %conv
  %36 = load i16, i16* %arrayidx8.us.i.1, align 2, !tbaa !24
  %conv9 = sext i16 %36 to i32
  %37 = load i16, i16* %arrayidx8.us.i.2, align 4, !tbaa !24
  %conv13 = sext i16 %37 to i32
  %add14 = add nsw i32 %conv13, %conv9
  %sub = sub nsw i32 %conv, %conv4
  %sub31 = sub nsw i32 %conv9, %conv13
  %add32 = add nsw i32 %add14, %add5
  %conv33 = trunc i32 %add32 to i16
  %arrayidx35 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 0
  store i16 %conv33, i16* %arrayidx35, align 4, !tbaa !24
  %mul36 = shl nsw i32 %sub, 1
  %add37 = add nsw i32 %sub31, %mul36
  %conv38 = trunc i32 %add37 to i16
  %arrayidx40 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 4
  store i16 %conv38, i16* %arrayidx40, align 4, !tbaa !24
  %sub41 = sub nsw i32 %add5, %add14
  %conv42 = trunc i32 %sub41 to i16
  %arrayidx44 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 8
  store i16 %conv42, i16* %arrayidx44, align 4, !tbaa !24
  %mul45 = shl nsw i32 %sub31, 1
  %sub46 = sub nsw i32 %sub, %mul45
  %conv47 = trunc i32 %sub46 to i16
  %arrayidx49 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 12
  store i16 %conv47, i16* %arrayidx49, align 4, !tbaa !24
  %38 = load i16, i16* %arrayidx8.us.i.1173, align 4, !tbaa !24
  %conv.1 = sext i16 %38 to i32
  %39 = load i16, i16* %arrayidx8.us.i.3.1, align 2, !tbaa !24
  %conv4.1 = sext i16 %39 to i32
  %add5.1 = add nsw i32 %conv4.1, %conv.1
  %40 = load i16, i16* %arrayidx8.us.i.1.1, align 2, !tbaa !24
  %conv9.1 = sext i16 %40 to i32
  %41 = load i16, i16* %arrayidx8.us.i.2.1, align 4, !tbaa !24
  %conv13.1 = sext i16 %41 to i32
  %add14.1 = add nsw i32 %conv13.1, %conv9.1
  %sub.1 = sub nsw i32 %conv.1, %conv4.1
  %sub31.1 = sub nsw i32 %conv9.1, %conv13.1
  %add32.1 = add nsw i32 %add14.1, %add5.1
  %conv33.1 = trunc i32 %add32.1 to i16
  %arrayidx35.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 1
  store i16 %conv33.1, i16* %arrayidx35.1, align 2, !tbaa !24
  %mul36.1 = shl nsw i32 %sub.1, 1
  %add37.1 = add nsw i32 %sub31.1, %mul36.1
  %conv38.1 = trunc i32 %add37.1 to i16
  %arrayidx40.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 5
  store i16 %conv38.1, i16* %arrayidx40.1, align 2, !tbaa !24
  %sub41.1 = sub nsw i32 %add5.1, %add14.1
  %conv42.1 = trunc i32 %sub41.1 to i16
  %arrayidx44.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 9
  store i16 %conv42.1, i16* %arrayidx44.1, align 2, !tbaa !24
  %mul45.1 = shl nsw i32 %sub31.1, 1
  %sub46.1 = sub nsw i32 %sub.1, %mul45.1
  %conv47.1 = trunc i32 %sub46.1 to i16
  %arrayidx49.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 13
  store i16 %conv47.1, i16* %arrayidx49.1, align 2, !tbaa !24
  %42 = load i16, i16* %arrayidx8.us.i.2177, align 4, !tbaa !24
  %conv.2 = sext i16 %42 to i32
  %conv4.2 = sext i16 %sub.us.i.3.2 to i32
  %add5.2 = add nsw i32 %conv4.2, %conv.2
  %43 = load i16, i16* %arrayidx8.us.i.1.2, align 2, !tbaa !24
  %conv9.2 = sext i16 %43 to i32
  %44 = load i16, i16* %arrayidx8.us.i.2.2, align 4, !tbaa !24
  %conv13.2 = sext i16 %44 to i32
  %add14.2 = add nsw i32 %conv13.2, %conv9.2
  %sub.2 = sub nsw i32 %conv.2, %conv4.2
  %sub31.2 = sub nsw i32 %conv9.2, %conv13.2
  %add32.2 = add nsw i32 %add14.2, %add5.2
  %conv33.2 = trunc i32 %add32.2 to i16
  %arrayidx35.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 2
  store i16 %conv33.2, i16* %arrayidx35.2, align 4, !tbaa !24
  %mul36.2 = shl nsw i32 %sub.2, 1
  %add37.2 = add nsw i32 %sub31.2, %mul36.2
  %conv38.2 = trunc i32 %add37.2 to i16
  %arrayidx40.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 6
  store i16 %conv38.2, i16* %arrayidx40.2, align 4, !tbaa !24
  %sub41.2 = sub nsw i32 %add5.2, %add14.2
  %conv42.2 = trunc i32 %sub41.2 to i16
  %arrayidx44.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 10
  store i16 %conv42.2, i16* %arrayidx44.2, align 4, !tbaa !24
  %mul45.2 = shl nsw i32 %sub31.2, 1
  %sub46.2 = sub nsw i32 %sub.2, %mul45.2
  %conv47.2 = trunc i32 %sub46.2 to i16
  %arrayidx49.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 14
  store i16 %conv47.2, i16* %arrayidx49.2, align 4, !tbaa !24
  %45 = load i16, i16* %arrayidx8.us.i.3181, align 4, !tbaa !24
  %conv.3 = sext i16 %45 to i32
  %conv4.3 = sext i16 %sub.us.i.3.3 to i32
  %add5.3 = add nsw i32 %conv4.3, %conv.3
  %46 = load i16, i16* %arrayidx8.us.i.1.3, align 2, !tbaa !24
  %conv9.3 = sext i16 %46 to i32
  %47 = load i16, i16* %arrayidx8.us.i.2.3, align 4, !tbaa !24
  %conv13.3 = sext i16 %47 to i32
  %add14.3 = add nsw i32 %conv13.3, %conv9.3
  %sub.3 = sub nsw i32 %conv.3, %conv4.3
  %sub31.3 = sub nsw i32 %conv9.3, %conv13.3
  %add32.3 = add nsw i32 %add14.3, %add5.3
  %conv33.3 = trunc i32 %add32.3 to i16
  %arrayidx35.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 3
  store i16 %conv33.3, i16* %arrayidx35.3, align 2, !tbaa !24
  %mul36.3 = shl nsw i32 %sub.3, 1
  %add37.3 = add nsw i32 %sub31.3, %mul36.3
  %conv38.3 = trunc i32 %add37.3 to i16
  %arrayidx40.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 7
  store i16 %conv38.3, i16* %arrayidx40.3, align 2, !tbaa !24
  %sub41.3 = sub nsw i32 %add5.3, %add14.3
  %conv42.3 = trunc i32 %sub41.3 to i16
  %arrayidx44.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 11
  store i16 %conv42.3, i16* %arrayidx44.3, align 2, !tbaa !24
  %mul45.3 = shl nsw i32 %sub31.3, 1
  %sub46.3 = sub nsw i32 %sub.3, %mul45.3
  %conv47.3 = trunc i32 %sub46.3 to i16
  %arrayidx49.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 15
  store i16 %conv47.3, i16* %arrayidx49.3, align 2, !tbaa !24
  %48 = load i16, i16* %arrayidx35, align 4, !tbaa !24
  %conv60 = sext i16 %48 to i32
  %sext = shl i32 %add32.3, 16
  %conv64 = ashr exact i32 %sext, 16
  %add65 = add nsw i32 %conv64, %conv60
  %sext182 = shl i32 %add32.1, 16
  %conv70 = ashr exact i32 %sext182, 16
  %sext183 = shl i32 %add32.2, 16
  %conv74 = ashr exact i32 %sext183, 16
  %add75 = add nsw i32 %conv74, %conv70
  %sub85 = sub nsw i32 %conv60, %conv64
  %sub95 = sub nsw i32 %conv70, %conv74
  %add96 = add nsw i32 %add75, %add65
  %conv97 = trunc i32 %add96 to i16
  store i16 %conv97, i16* %dct, align 2, !tbaa !24
  %mul101 = shl nsw i32 %sub85, 1
  %add102 = add nsw i32 %sub95, %mul101
  %conv103 = trunc i32 %add102 to i16
  %arrayidx106 = getelementptr inbounds i16, i16* %dct, i32 1
  store i16 %conv103, i16* %arrayidx106, align 2, !tbaa !24
  %sub107 = sub nsw i32 %add65, %add75
  %conv108 = trunc i32 %sub107 to i16
  %arrayidx111 = getelementptr inbounds i16, i16* %dct, i32 2
  store i16 %conv108, i16* %arrayidx111, align 2, !tbaa !24
  %mul112 = shl nsw i32 %sub95, 1
  %sub113 = sub nsw i32 %sub85, %mul112
  %conv114 = trunc i32 %sub113 to i16
  %arrayidx117 = getelementptr inbounds i16, i16* %dct, i32 3
  store i16 %conv114, i16* %arrayidx117, align 2, !tbaa !24
  %49 = load i16, i16* %arrayidx40, align 4, !tbaa !24
  %conv60.1 = sext i16 %49 to i32
  %sext184 = shl i32 %add37.3, 16
  %conv64.1 = ashr exact i32 %sext184, 16
  %add65.1 = add nsw i32 %conv64.1, %conv60.1
  %sext185 = shl i32 %add37.1, 16
  %conv70.1 = ashr exact i32 %sext185, 16
  %sext186 = shl i32 %add37.2, 16
  %conv74.1 = ashr exact i32 %sext186, 16
  %add75.1 = add nsw i32 %conv74.1, %conv70.1
  %sub85.1 = sub nsw i32 %conv60.1, %conv64.1
  %sub95.1 = sub nsw i32 %conv70.1, %conv74.1
  %add96.1 = add nsw i32 %add75.1, %add65.1
  %conv97.1 = trunc i32 %add96.1 to i16
  %arrayidx100.1 = getelementptr inbounds i16, i16* %dct, i32 4
  store i16 %conv97.1, i16* %arrayidx100.1, align 2, !tbaa !24
  %mul101.1 = shl nsw i32 %sub85.1, 1
  %add102.1 = add nsw i32 %sub95.1, %mul101.1
  %conv103.1 = trunc i32 %add102.1 to i16
  %arrayidx106.1 = getelementptr inbounds i16, i16* %dct, i32 5
  store i16 %conv103.1, i16* %arrayidx106.1, align 2, !tbaa !24
  %sub107.1 = sub nsw i32 %add65.1, %add75.1
  %conv108.1 = trunc i32 %sub107.1 to i16
  %arrayidx111.1 = getelementptr inbounds i16, i16* %dct, i32 6
  store i16 %conv108.1, i16* %arrayidx111.1, align 2, !tbaa !24
  %mul112.1 = shl nsw i32 %sub95.1, 1
  %sub113.1 = sub nsw i32 %sub85.1, %mul112.1
  %conv114.1 = trunc i32 %sub113.1 to i16
  %arrayidx117.1 = getelementptr inbounds i16, i16* %dct, i32 7
  store i16 %conv114.1, i16* %arrayidx117.1, align 2, !tbaa !24
  %50 = load i16, i16* %arrayidx44, align 4, !tbaa !24
  %conv60.2 = sext i16 %50 to i32
  %sext187 = shl i32 %sub41.3, 16
  %conv64.2 = ashr exact i32 %sext187, 16
  %add65.2 = add nsw i32 %conv64.2, %conv60.2
  %51 = load i16, i16* %arrayidx44.1, align 2, !tbaa !24
  %conv70.2 = sext i16 %51 to i32
  %sext188 = shl i32 %sub41.2, 16
  %conv74.2 = ashr exact i32 %sext188, 16
  %add75.2 = add nsw i32 %conv74.2, %conv70.2
  %sub85.2 = sub nsw i32 %conv60.2, %conv64.2
  %sub95.2 = sub nsw i32 %conv70.2, %conv74.2
  %add96.2 = add nsw i32 %add75.2, %add65.2
  %conv97.2 = trunc i32 %add96.2 to i16
  %arrayidx100.2 = getelementptr inbounds i16, i16* %dct, i32 8
  store i16 %conv97.2, i16* %arrayidx100.2, align 2, !tbaa !24
  %mul101.2 = shl nsw i32 %sub85.2, 1
  %add102.2 = add nsw i32 %sub95.2, %mul101.2
  %conv103.2 = trunc i32 %add102.2 to i16
  %arrayidx106.2 = getelementptr inbounds i16, i16* %dct, i32 9
  store i16 %conv103.2, i16* %arrayidx106.2, align 2, !tbaa !24
  %sub107.2 = sub nsw i32 %add65.2, %add75.2
  %conv108.2 = trunc i32 %sub107.2 to i16
  %arrayidx111.2 = getelementptr inbounds i16, i16* %dct, i32 10
  store i16 %conv108.2, i16* %arrayidx111.2, align 2, !tbaa !24
  %mul112.2 = shl nsw i32 %sub95.2, 1
  %sub113.2 = sub nsw i32 %sub85.2, %mul112.2
  %conv114.2 = trunc i32 %sub113.2 to i16
  %arrayidx117.2 = getelementptr inbounds i16, i16* %dct, i32 11
  store i16 %conv114.2, i16* %arrayidx117.2, align 2, !tbaa !24
  %52 = load i16, i16* %arrayidx49, align 4, !tbaa !24
  %conv60.3 = sext i16 %52 to i32
  %sext189 = shl i32 %sub46.3, 16
  %conv64.3 = ashr exact i32 %sext189, 16
  %add65.3 = add nsw i32 %conv64.3, %conv60.3
  %53 = load i16, i16* %arrayidx49.1, align 2, !tbaa !24
  %conv70.3 = sext i16 %53 to i32
  %54 = load i16, i16* %arrayidx49.2, align 4, !tbaa !24
  %conv74.3 = sext i16 %54 to i32
  %add75.3 = add nsw i32 %conv74.3, %conv70.3
  %sub85.3 = sub nsw i32 %conv60.3, %conv64.3
  %sub95.3 = sub nsw i32 %conv70.3, %conv74.3
  %add96.3 = add nsw i32 %add75.3, %add65.3
  %conv97.3 = trunc i32 %add96.3 to i16
  %arrayidx100.3 = getelementptr inbounds i16, i16* %dct, i32 12
  store i16 %conv97.3, i16* %arrayidx100.3, align 2, !tbaa !24
  %mul101.3 = shl nsw i32 %sub85.3, 1
  %add102.3 = add nsw i32 %sub95.3, %mul101.3
  %conv103.3 = trunc i32 %add102.3 to i16
  %arrayidx106.3 = getelementptr inbounds i16, i16* %dct, i32 13
  store i16 %conv103.3, i16* %arrayidx106.3, align 2, !tbaa !24
  %sub107.3 = sub nsw i32 %add65.3, %add75.3
  %conv108.3 = trunc i32 %sub107.3 to i16
  %arrayidx111.3 = getelementptr inbounds i16, i16* %dct, i32 14
  store i16 %conv108.3, i16* %arrayidx111.3, align 2, !tbaa !24
  %mul112.3 = shl nsw i32 %sub95.3, 1
  %sub113.3 = sub nsw i32 %sub85.3, %mul112.3
  %conv114.3 = trunc i32 %sub113.3 to i16
  %arrayidx117.3 = getelementptr inbounds i16, i16* %dct, i32 15
  store i16 %conv114.3, i16* %arrayidx117.3, align 2, !tbaa !24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret void
}

; Function Attrs: nounwind
define internal void @add4x4_idct(i8* nocapture %p_dst, i16* nocapture readonly %dct) #1 {
entry:
  %d = alloca [16 x i16], align 4
  %tmp = alloca [16 x i16], align 4
  %0 = bitcast [16 x i16]* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %1 = bitcast [16 x i16]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #5
  %2 = load i16, i16* %dct, align 2, !tbaa !24
  %conv = sext i16 %2 to i32
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 8
  %3 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %conv3 = sext i16 %3 to i32
  %add4 = add nsw i32 %conv3, %conv
  %sub = sub nsw i32 %conv, %conv3
  %arrayidx12 = getelementptr inbounds i16, i16* %dct, i32 4
  %4 = load i16, i16* %arrayidx12, align 2, !tbaa !24
  %conv13 = sext i16 %4 to i32
  %arrayidx15 = getelementptr inbounds i16, i16* %dct, i32 12
  %5 = load i16, i16* %arrayidx15, align 2, !tbaa !24
  %conv16 = sext i16 %5 to i32
  %shr = ashr i32 %conv16, 1
  %add17 = add nsw i32 %shr, %conv13
  %shr21 = ashr i32 %conv13, 1
  %sub25 = sub nsw i32 %shr21, %conv16
  %add26 = add nsw i32 %add17, %add4
  %conv27 = trunc i32 %add26 to i16
  %arrayidx29 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 0
  store i16 %conv27, i16* %arrayidx29, align 4, !tbaa !24
  %add30 = add nsw i32 %sub25, %sub
  %conv31 = trunc i32 %add30 to i16
  %arrayidx34 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 1
  store i16 %conv31, i16* %arrayidx34, align 2, !tbaa !24
  %sub35 = sub nsw i32 %sub, %sub25
  %conv36 = trunc i32 %sub35 to i16
  %arrayidx39 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 2
  store i16 %conv36, i16* %arrayidx39, align 4, !tbaa !24
  %sub40 = sub nsw i32 %add4, %add17
  %conv41 = trunc i32 %sub40 to i16
  %arrayidx44 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 3
  store i16 %conv41, i16* %arrayidx44, align 2, !tbaa !24
  %arrayidx.1 = getelementptr inbounds i16, i16* %dct, i32 1
  %6 = load i16, i16* %arrayidx.1, align 2, !tbaa !24
  %conv.1 = sext i16 %6 to i32
  %arrayidx2.1 = getelementptr inbounds i16, i16* %dct, i32 9
  %7 = load i16, i16* %arrayidx2.1, align 2, !tbaa !24
  %conv3.1 = sext i16 %7 to i32
  %add4.1 = add nsw i32 %conv3.1, %conv.1
  %sub.1 = sub nsw i32 %conv.1, %conv3.1
  %arrayidx12.1 = getelementptr inbounds i16, i16* %dct, i32 5
  %8 = load i16, i16* %arrayidx12.1, align 2, !tbaa !24
  %conv13.1 = sext i16 %8 to i32
  %arrayidx15.1 = getelementptr inbounds i16, i16* %dct, i32 13
  %9 = load i16, i16* %arrayidx15.1, align 2, !tbaa !24
  %conv16.1 = sext i16 %9 to i32
  %shr.1 = ashr i32 %conv16.1, 1
  %add17.1 = add nsw i32 %shr.1, %conv13.1
  %shr21.1 = ashr i32 %conv13.1, 1
  %sub25.1 = sub nsw i32 %shr21.1, %conv16.1
  %add26.1 = add nsw i32 %add17.1, %add4.1
  %conv27.1 = trunc i32 %add26.1 to i16
  %arrayidx29.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 4
  store i16 %conv27.1, i16* %arrayidx29.1, align 4, !tbaa !24
  %add30.1 = add nsw i32 %sub25.1, %sub.1
  %conv31.1 = trunc i32 %add30.1 to i16
  %arrayidx34.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 5
  store i16 %conv31.1, i16* %arrayidx34.1, align 2, !tbaa !24
  %sub35.1 = sub nsw i32 %sub.1, %sub25.1
  %conv36.1 = trunc i32 %sub35.1 to i16
  %arrayidx39.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 6
  store i16 %conv36.1, i16* %arrayidx39.1, align 4, !tbaa !24
  %sub40.1 = sub nsw i32 %add4.1, %add17.1
  %conv41.1 = trunc i32 %sub40.1 to i16
  %arrayidx44.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 7
  store i16 %conv41.1, i16* %arrayidx44.1, align 2, !tbaa !24
  %arrayidx.2 = getelementptr inbounds i16, i16* %dct, i32 2
  %10 = load i16, i16* %arrayidx.2, align 2, !tbaa !24
  %conv.2 = sext i16 %10 to i32
  %arrayidx2.2 = getelementptr inbounds i16, i16* %dct, i32 10
  %11 = load i16, i16* %arrayidx2.2, align 2, !tbaa !24
  %conv3.2 = sext i16 %11 to i32
  %add4.2 = add nsw i32 %conv3.2, %conv.2
  %sub.2 = sub nsw i32 %conv.2, %conv3.2
  %arrayidx12.2 = getelementptr inbounds i16, i16* %dct, i32 6
  %12 = load i16, i16* %arrayidx12.2, align 2, !tbaa !24
  %conv13.2 = sext i16 %12 to i32
  %arrayidx15.2 = getelementptr inbounds i16, i16* %dct, i32 14
  %13 = load i16, i16* %arrayidx15.2, align 2, !tbaa !24
  %conv16.2 = sext i16 %13 to i32
  %shr.2 = ashr i32 %conv16.2, 1
  %add17.2 = add nsw i32 %shr.2, %conv13.2
  %shr21.2 = ashr i32 %conv13.2, 1
  %sub25.2 = sub nsw i32 %shr21.2, %conv16.2
  %add26.2 = add nsw i32 %add17.2, %add4.2
  %conv27.2 = trunc i32 %add26.2 to i16
  %arrayidx29.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 8
  store i16 %conv27.2, i16* %arrayidx29.2, align 4, !tbaa !24
  %add30.2 = add nsw i32 %sub25.2, %sub.2
  %conv31.2 = trunc i32 %add30.2 to i16
  %arrayidx34.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 9
  store i16 %conv31.2, i16* %arrayidx34.2, align 2, !tbaa !24
  %sub35.2 = sub nsw i32 %sub.2, %sub25.2
  %conv36.2 = trunc i32 %sub35.2 to i16
  %arrayidx39.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 10
  store i16 %conv36.2, i16* %arrayidx39.2, align 4, !tbaa !24
  %sub40.2 = sub nsw i32 %add4.2, %add17.2
  %conv41.2 = trunc i32 %sub40.2 to i16
  %arrayidx44.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 11
  store i16 %conv41.2, i16* %arrayidx44.2, align 2, !tbaa !24
  %arrayidx.3 = getelementptr inbounds i16, i16* %dct, i32 3
  %14 = load i16, i16* %arrayidx.3, align 2, !tbaa !24
  %conv.3 = sext i16 %14 to i32
  %arrayidx2.3 = getelementptr inbounds i16, i16* %dct, i32 11
  %15 = load i16, i16* %arrayidx2.3, align 2, !tbaa !24
  %conv3.3 = sext i16 %15 to i32
  %add4.3 = add nsw i32 %conv3.3, %conv.3
  %sub.3 = sub nsw i32 %conv.3, %conv3.3
  %arrayidx12.3 = getelementptr inbounds i16, i16* %dct, i32 7
  %16 = load i16, i16* %arrayidx12.3, align 2, !tbaa !24
  %conv13.3 = sext i16 %16 to i32
  %arrayidx15.3 = getelementptr inbounds i16, i16* %dct, i32 15
  %17 = load i16, i16* %arrayidx15.3, align 2, !tbaa !24
  %conv16.3 = sext i16 %17 to i32
  %shr.3 = ashr i32 %conv16.3, 1
  %add17.3 = add nsw i32 %shr.3, %conv13.3
  %shr21.3 = ashr i32 %conv13.3, 1
  %sub25.3 = sub nsw i32 %shr21.3, %conv16.3
  %add26.3 = add nsw i32 %add17.3, %add4.3
  %conv27.3 = trunc i32 %add26.3 to i16
  %arrayidx29.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 12
  store i16 %conv27.3, i16* %arrayidx29.3, align 4, !tbaa !24
  %add30.3 = add nsw i32 %sub25.3, %sub.3
  %conv31.3 = trunc i32 %add30.3 to i16
  %arrayidx34.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 13
  store i16 %conv31.3, i16* %arrayidx34.3, align 2, !tbaa !24
  %sub35.3 = sub nsw i32 %sub.3, %sub25.3
  %conv36.3 = trunc i32 %sub35.3 to i16
  %arrayidx39.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 14
  store i16 %conv36.3, i16* %arrayidx39.3, align 4, !tbaa !24
  %sub40.3 = sub nsw i32 %add4.3, %add17.3
  %conv41.3 = trunc i32 %sub40.3 to i16
  %arrayidx44.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 15
  store i16 %conv41.3, i16* %arrayidx44.3, align 2, !tbaa !24
  %18 = load i16, i16* %arrayidx29, align 4, !tbaa !24
  %conv54 = sext i16 %18 to i32
  %sext = shl i32 %add26.2, 16
  %conv57 = ashr exact i32 %sext, 16
  %add58 = add nsw i32 %conv57, %conv54
  %sub66 = sub nsw i32 %conv54, %conv57
  %sext229 = shl i32 %add26.1, 16
  %conv70 = ashr exact i32 %sext229, 16
  %sext230 = shl i32 %add26.3, 16
  %conv73 = ashr exact i32 %sext230, 16
  %shr74 = ashr i32 %sext230, 17
  %add75 = add nsw i32 %shr74, %conv70
  %shr80 = ashr i32 %sext229, 17
  %sub84 = sub nsw i32 %shr80, %conv73
  %add85 = add nsw i32 %add58, 32
  %add86 = add nsw i32 %add85, %add75
  %19 = lshr i32 %add86, 6
  %conv88 = trunc i32 %19 to i16
  %arrayidx90 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 0
  store i16 %conv88, i16* %arrayidx90, align 4, !tbaa !24
  %add91 = add nsw i32 %sub66, 32
  %add92 = add nsw i32 %add91, %sub84
  %20 = lshr i32 %add92, 6
  %conv94 = trunc i32 %20 to i16
  %arrayidx96 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 4
  store i16 %conv94, i16* %arrayidx96, align 4, !tbaa !24
  %add98 = sub nsw i32 %add91, %sub84
  %21 = lshr i32 %add98, 6
  %conv100 = trunc i32 %21 to i16
  %arrayidx102 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 8
  store i16 %conv100, i16* %arrayidx102, align 4, !tbaa !24
  %add104 = sub nsw i32 %add85, %add75
  %22 = lshr i32 %add104, 6
  %conv106 = trunc i32 %22 to i16
  %arrayidx108 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 12
  store i16 %conv106, i16* %arrayidx108, align 4, !tbaa !24
  %23 = load i16, i16* %arrayidx34, align 2, !tbaa !24
  %conv54.1 = sext i16 %23 to i32
  %sext231 = shl i32 %add30.2, 16
  %conv57.1 = ashr exact i32 %sext231, 16
  %add58.1 = add nsw i32 %conv57.1, %conv54.1
  %sub66.1 = sub nsw i32 %conv54.1, %conv57.1
  %24 = load i16, i16* %arrayidx34.1, align 2, !tbaa !24
  %conv70.1 = sext i16 %24 to i32
  %sext232 = shl i32 %add30.3, 16
  %conv73.1 = ashr exact i32 %sext232, 16
  %shr74.1 = ashr i32 %sext232, 17
  %add75.1 = add nsw i32 %shr74.1, %conv70.1
  %shr80.1 = ashr i32 %conv70.1, 1
  %sub84.1 = sub nsw i32 %shr80.1, %conv73.1
  %add85.1 = add nsw i32 %add58.1, 32
  %add86.1 = add nsw i32 %add85.1, %add75.1
  %25 = lshr i32 %add86.1, 6
  %conv88.1 = trunc i32 %25 to i16
  %arrayidx90.1 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 1
  store i16 %conv88.1, i16* %arrayidx90.1, align 2, !tbaa !24
  %add91.1 = add nsw i32 %sub66.1, 32
  %add92.1 = add nsw i32 %add91.1, %sub84.1
  %26 = lshr i32 %add92.1, 6
  %conv94.1 = trunc i32 %26 to i16
  %arrayidx96.1 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 5
  store i16 %conv94.1, i16* %arrayidx96.1, align 2, !tbaa !24
  %add98.1 = sub nsw i32 %add91.1, %sub84.1
  %27 = lshr i32 %add98.1, 6
  %conv100.1 = trunc i32 %27 to i16
  %arrayidx102.1 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 9
  store i16 %conv100.1, i16* %arrayidx102.1, align 2, !tbaa !24
  %add104.1 = sub nsw i32 %add85.1, %add75.1
  %28 = lshr i32 %add104.1, 6
  %conv106.1 = trunc i32 %28 to i16
  %arrayidx108.1 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 13
  store i16 %conv106.1, i16* %arrayidx108.1, align 2, !tbaa !24
  %29 = load i16, i16* %arrayidx39, align 4, !tbaa !24
  %conv54.2 = sext i16 %29 to i32
  %30 = load i16, i16* %arrayidx39.2, align 4, !tbaa !24
  %conv57.2 = sext i16 %30 to i32
  %add58.2 = add nsw i32 %conv57.2, %conv54.2
  %sub66.2 = sub nsw i32 %conv54.2, %conv57.2
  %31 = load i16, i16* %arrayidx39.1, align 4, !tbaa !24
  %conv70.2 = sext i16 %31 to i32
  %sext233 = shl i32 %sub35.3, 16
  %conv73.2 = ashr exact i32 %sext233, 16
  %shr74.2 = ashr i32 %sext233, 17
  %add75.2 = add nsw i32 %shr74.2, %conv70.2
  %shr80.2 = ashr i32 %conv70.2, 1
  %sub84.2 = sub nsw i32 %shr80.2, %conv73.2
  %add85.2 = add nsw i32 %add58.2, 32
  %add86.2 = add nsw i32 %add85.2, %add75.2
  %32 = lshr i32 %add86.2, 6
  %conv88.2 = trunc i32 %32 to i16
  %arrayidx90.2 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 2
  store i16 %conv88.2, i16* %arrayidx90.2, align 4, !tbaa !24
  %add91.2 = add nsw i32 %sub66.2, 32
  %add92.2 = add nsw i32 %add91.2, %sub84.2
  %33 = lshr i32 %add92.2, 6
  %conv94.2 = trunc i32 %33 to i16
  %arrayidx96.2 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 6
  store i16 %conv94.2, i16* %arrayidx96.2, align 4, !tbaa !24
  %add98.2 = sub nsw i32 %add91.2, %sub84.2
  %34 = lshr i32 %add98.2, 6
  %conv100.2 = trunc i32 %34 to i16
  %arrayidx102.2 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 10
  store i16 %conv100.2, i16* %arrayidx102.2, align 4, !tbaa !24
  %add104.2 = sub nsw i32 %add85.2, %add75.2
  %35 = lshr i32 %add104.2, 6
  %conv106.2 = trunc i32 %35 to i16
  %arrayidx108.2 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 14
  store i16 %conv106.2, i16* %arrayidx108.2, align 4, !tbaa !24
  %36 = load i16, i16* %arrayidx44, align 2, !tbaa !24
  %conv54.3 = sext i16 %36 to i32
  %37 = load i16, i16* %arrayidx44.2, align 2, !tbaa !24
  %conv57.3 = sext i16 %37 to i32
  %add58.3 = add nsw i32 %conv57.3, %conv54.3
  %sub66.3 = sub nsw i32 %conv54.3, %conv57.3
  %38 = load i16, i16* %arrayidx44.1, align 2, !tbaa !24
  %conv70.3 = sext i16 %38 to i32
  %39 = load i16, i16* %arrayidx44.3, align 2, !tbaa !24
  %conv73.3 = sext i16 %39 to i32
  %shr74.3 = ashr i32 %conv73.3, 1
  %add75.3 = add nsw i32 %shr74.3, %conv70.3
  %shr80.3 = ashr i32 %conv70.3, 1
  %sub84.3 = sub nsw i32 %shr80.3, %conv73.3
  %add85.3 = add nsw i32 %add58.3, 32
  %add86.3 = add nsw i32 %add85.3, %add75.3
  %40 = lshr i32 %add86.3, 6
  %conv88.3 = trunc i32 %40 to i16
  %arrayidx90.3 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 3
  store i16 %conv88.3, i16* %arrayidx90.3, align 2, !tbaa !24
  %add91.3 = add nsw i32 %sub66.3, 32
  %add92.3 = add nsw i32 %add91.3, %sub84.3
  %41 = lshr i32 %add92.3, 6
  %conv94.3 = trunc i32 %41 to i16
  %arrayidx96.3 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 7
  store i16 %conv94.3, i16* %arrayidx96.3, align 2, !tbaa !24
  %add98.3 = sub nsw i32 %add91.3, %sub84.3
  %42 = lshr i32 %add98.3, 6
  %conv100.3 = trunc i32 %42 to i16
  %arrayidx102.3 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 11
  store i16 %conv100.3, i16* %arrayidx102.3, align 2, !tbaa !24
  %add104.3 = sub nsw i32 %add85.3, %add75.3
  %43 = lshr i32 %add104.3, 6
  %conv106.3 = trunc i32 %43 to i16
  %arrayidx108.3 = getelementptr inbounds [16 x i16], [16 x i16]* %d, i32 0, i32 15
  store i16 %conv106.3, i16* %arrayidx108.3, align 2, !tbaa !24
  %44 = load i8, i8* %p_dst, align 1, !tbaa !23
  %conv123 = zext i8 %44 to i32
  %45 = load i16, i16* %arrayidx90, align 4, !tbaa !24
  %conv127 = sext i16 %45 to i32
  %add128 = add nsw i32 %conv127, %conv123
  %tobool.i = icmp ugt i32 %add128, 255
  %sub.i = sub nsw i32 0, %add128
  %shr.i = ashr i32 %sub.i, 31
  %cond.i = select i1 %tobool.i, i32 %shr.i, i32 %add128
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, i8* %p_dst, align 1, !tbaa !23
  %arrayidx122.1 = getelementptr inbounds i8, i8* %p_dst, i32 1
  %46 = load i8, i8* %arrayidx122.1, align 1, !tbaa !23
  %conv123.1 = zext i8 %46 to i32
  %47 = load i16, i16* %arrayidx90.1, align 2, !tbaa !24
  %conv127.1 = sext i16 %47 to i32
  %add128.1 = add nsw i32 %conv127.1, %conv123.1
  %tobool.i.1 = icmp ugt i32 %add128.1, 255
  %sub.i.1 = sub nsw i32 0, %add128.1
  %shr.i.1 = ashr i32 %sub.i.1, 31
  %cond.i.1 = select i1 %tobool.i.1, i32 %shr.i.1, i32 %add128.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  store i8 %conv.i.1, i8* %arrayidx122.1, align 1, !tbaa !23
  %arrayidx122.2 = getelementptr inbounds i8, i8* %p_dst, i32 2
  %48 = load i8, i8* %arrayidx122.2, align 1, !tbaa !23
  %conv123.2 = zext i8 %48 to i32
  %sext234 = shl i32 %32, 16
  %conv127.2 = ashr exact i32 %sext234, 16
  %add128.2 = add nsw i32 %conv127.2, %conv123.2
  %tobool.i.2 = icmp ugt i32 %add128.2, 255
  %sub.i.2 = sub nsw i32 0, %add128.2
  %shr.i.2 = ashr i32 %sub.i.2, 31
  %cond.i.2 = select i1 %tobool.i.2, i32 %shr.i.2, i32 %add128.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  store i8 %conv.i.2, i8* %arrayidx122.2, align 1, !tbaa !23
  %arrayidx122.3 = getelementptr inbounds i8, i8* %p_dst, i32 3
  %49 = load i8, i8* %arrayidx122.3, align 1, !tbaa !23
  %conv123.3 = zext i8 %49 to i32
  %sext235 = shl i32 %40, 16
  %conv127.3 = ashr exact i32 %sext235, 16
  %add128.3 = add nsw i32 %conv127.3, %conv123.3
  %tobool.i.3 = icmp ugt i32 %add128.3, 255
  %sub.i.3 = sub nsw i32 0, %add128.3
  %shr.i.3 = ashr i32 %sub.i.3, 31
  %cond.i.3 = select i1 %tobool.i.3, i32 %shr.i.3, i32 %add128.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  store i8 %conv.i.3, i8* %arrayidx122.3, align 1, !tbaa !23
  %add.ptr = getelementptr inbounds i8, i8* %p_dst, i32 32
  %50 = load i8, i8* %add.ptr, align 1, !tbaa !23
  %conv123.1202 = zext i8 %50 to i32
  %51 = load i16, i16* %arrayidx96, align 4, !tbaa !24
  %conv127.1204 = sext i16 %51 to i32
  %add128.1205 = add nsw i32 %conv127.1204, %conv123.1202
  %tobool.i.1206 = icmp ugt i32 %add128.1205, 255
  %sub.i.1207 = sub nsw i32 0, %add128.1205
  %shr.i.1208 = ashr i32 %sub.i.1207, 31
  %cond.i.1209 = select i1 %tobool.i.1206, i32 %shr.i.1208, i32 %add128.1205
  %conv.i.1210 = trunc i32 %cond.i.1209 to i8
  store i8 %conv.i.1210, i8* %add.ptr, align 1, !tbaa !23
  %arrayidx122.1.1 = getelementptr inbounds i8, i8* %p_dst, i32 33
  %52 = load i8, i8* %arrayidx122.1.1, align 1, !tbaa !23
  %conv123.1.1 = zext i8 %52 to i32
  %53 = load i16, i16* %arrayidx96.1, align 2, !tbaa !24
  %conv127.1.1 = sext i16 %53 to i32
  %add128.1.1 = add nsw i32 %conv127.1.1, %conv123.1.1
  %tobool.i.1.1 = icmp ugt i32 %add128.1.1, 255
  %sub.i.1.1 = sub nsw i32 0, %add128.1.1
  %shr.i.1.1 = ashr i32 %sub.i.1.1, 31
  %cond.i.1.1 = select i1 %tobool.i.1.1, i32 %shr.i.1.1, i32 %add128.1.1
  %conv.i.1.1 = trunc i32 %cond.i.1.1 to i8
  store i8 %conv.i.1.1, i8* %arrayidx122.1.1, align 1, !tbaa !23
  %arrayidx122.2.1 = getelementptr inbounds i8, i8* %p_dst, i32 34
  %54 = load i8, i8* %arrayidx122.2.1, align 1, !tbaa !23
  %conv123.2.1 = zext i8 %54 to i32
  %55 = load i16, i16* %arrayidx96.2, align 4, !tbaa !24
  %conv127.2.1 = sext i16 %55 to i32
  %add128.2.1 = add nsw i32 %conv127.2.1, %conv123.2.1
  %tobool.i.2.1 = icmp ugt i32 %add128.2.1, 255
  %sub.i.2.1 = sub nsw i32 0, %add128.2.1
  %shr.i.2.1 = ashr i32 %sub.i.2.1, 31
  %cond.i.2.1 = select i1 %tobool.i.2.1, i32 %shr.i.2.1, i32 %add128.2.1
  %conv.i.2.1 = trunc i32 %cond.i.2.1 to i8
  store i8 %conv.i.2.1, i8* %arrayidx122.2.1, align 1, !tbaa !23
  %arrayidx122.3.1 = getelementptr inbounds i8, i8* %p_dst, i32 35
  %56 = load i8, i8* %arrayidx122.3.1, align 1, !tbaa !23
  %conv123.3.1 = zext i8 %56 to i32
  %sext236 = shl i32 %41, 16
  %conv127.3.1 = ashr exact i32 %sext236, 16
  %add128.3.1 = add nsw i32 %conv127.3.1, %conv123.3.1
  %tobool.i.3.1 = icmp ugt i32 %add128.3.1, 255
  %sub.i.3.1 = sub nsw i32 0, %add128.3.1
  %shr.i.3.1 = ashr i32 %sub.i.3.1, 31
  %cond.i.3.1 = select i1 %tobool.i.3.1, i32 %shr.i.3.1, i32 %add128.3.1
  %conv.i.3.1 = trunc i32 %cond.i.3.1 to i8
  store i8 %conv.i.3.1, i8* %arrayidx122.3.1, align 1, !tbaa !23
  %add.ptr.1 = getelementptr inbounds i8, i8* %p_dst, i32 64
  %57 = load i8, i8* %add.ptr.1, align 1, !tbaa !23
  %conv123.2211 = zext i8 %57 to i32
  %58 = load i16, i16* %arrayidx102, align 4, !tbaa !24
  %conv127.2213 = sext i16 %58 to i32
  %add128.2214 = add nsw i32 %conv127.2213, %conv123.2211
  %tobool.i.2215 = icmp ugt i32 %add128.2214, 255
  %sub.i.2216 = sub nsw i32 0, %add128.2214
  %shr.i.2217 = ashr i32 %sub.i.2216, 31
  %cond.i.2218 = select i1 %tobool.i.2215, i32 %shr.i.2217, i32 %add128.2214
  %conv.i.2219 = trunc i32 %cond.i.2218 to i8
  store i8 %conv.i.2219, i8* %add.ptr.1, align 1, !tbaa !23
  %arrayidx122.1.2 = getelementptr inbounds i8, i8* %p_dst, i32 65
  %59 = load i8, i8* %arrayidx122.1.2, align 1, !tbaa !23
  %conv123.1.2 = zext i8 %59 to i32
  %60 = load i16, i16* %arrayidx102.1, align 2, !tbaa !24
  %conv127.1.2 = sext i16 %60 to i32
  %add128.1.2 = add nsw i32 %conv127.1.2, %conv123.1.2
  %tobool.i.1.2 = icmp ugt i32 %add128.1.2, 255
  %sub.i.1.2 = sub nsw i32 0, %add128.1.2
  %shr.i.1.2 = ashr i32 %sub.i.1.2, 31
  %cond.i.1.2 = select i1 %tobool.i.1.2, i32 %shr.i.1.2, i32 %add128.1.2
  %conv.i.1.2 = trunc i32 %cond.i.1.2 to i8
  store i8 %conv.i.1.2, i8* %arrayidx122.1.2, align 1, !tbaa !23
  %arrayidx122.2.2 = getelementptr inbounds i8, i8* %p_dst, i32 66
  %61 = load i8, i8* %arrayidx122.2.2, align 1, !tbaa !23
  %conv123.2.2 = zext i8 %61 to i32
  %62 = load i16, i16* %arrayidx102.2, align 4, !tbaa !24
  %conv127.2.2 = sext i16 %62 to i32
  %add128.2.2 = add nsw i32 %conv127.2.2, %conv123.2.2
  %tobool.i.2.2 = icmp ugt i32 %add128.2.2, 255
  %sub.i.2.2 = sub nsw i32 0, %add128.2.2
  %shr.i.2.2 = ashr i32 %sub.i.2.2, 31
  %cond.i.2.2 = select i1 %tobool.i.2.2, i32 %shr.i.2.2, i32 %add128.2.2
  %conv.i.2.2 = trunc i32 %cond.i.2.2 to i8
  store i8 %conv.i.2.2, i8* %arrayidx122.2.2, align 1, !tbaa !23
  %arrayidx122.3.2 = getelementptr inbounds i8, i8* %p_dst, i32 67
  %63 = load i8, i8* %arrayidx122.3.2, align 1, !tbaa !23
  %conv123.3.2 = zext i8 %63 to i32
  %64 = load i16, i16* %arrayidx102.3, align 2, !tbaa !24
  %conv127.3.2 = sext i16 %64 to i32
  %add128.3.2 = add nsw i32 %conv127.3.2, %conv123.3.2
  %tobool.i.3.2 = icmp ugt i32 %add128.3.2, 255
  %sub.i.3.2 = sub nsw i32 0, %add128.3.2
  %shr.i.3.2 = ashr i32 %sub.i.3.2, 31
  %cond.i.3.2 = select i1 %tobool.i.3.2, i32 %shr.i.3.2, i32 %add128.3.2
  %conv.i.3.2 = trunc i32 %cond.i.3.2 to i8
  store i8 %conv.i.3.2, i8* %arrayidx122.3.2, align 1, !tbaa !23
  %add.ptr.2 = getelementptr inbounds i8, i8* %p_dst, i32 96
  %65 = load i8, i8* %add.ptr.2, align 1, !tbaa !23
  %conv123.3220 = zext i8 %65 to i32
  %66 = load i16, i16* %arrayidx108, align 4, !tbaa !24
  %conv127.3222 = sext i16 %66 to i32
  %add128.3223 = add nsw i32 %conv127.3222, %conv123.3220
  %tobool.i.3224 = icmp ugt i32 %add128.3223, 255
  %sub.i.3225 = sub nsw i32 0, %add128.3223
  %shr.i.3226 = ashr i32 %sub.i.3225, 31
  %cond.i.3227 = select i1 %tobool.i.3224, i32 %shr.i.3226, i32 %add128.3223
  %conv.i.3228 = trunc i32 %cond.i.3227 to i8
  store i8 %conv.i.3228, i8* %add.ptr.2, align 1, !tbaa !23
  %arrayidx122.1.3 = getelementptr inbounds i8, i8* %p_dst, i32 97
  %67 = load i8, i8* %arrayidx122.1.3, align 1, !tbaa !23
  %conv123.1.3 = zext i8 %67 to i32
  %68 = load i16, i16* %arrayidx108.1, align 2, !tbaa !24
  %conv127.1.3 = sext i16 %68 to i32
  %add128.1.3 = add nsw i32 %conv127.1.3, %conv123.1.3
  %tobool.i.1.3 = icmp ugt i32 %add128.1.3, 255
  %sub.i.1.3 = sub nsw i32 0, %add128.1.3
  %shr.i.1.3 = ashr i32 %sub.i.1.3, 31
  %cond.i.1.3 = select i1 %tobool.i.1.3, i32 %shr.i.1.3, i32 %add128.1.3
  %conv.i.1.3 = trunc i32 %cond.i.1.3 to i8
  store i8 %conv.i.1.3, i8* %arrayidx122.1.3, align 1, !tbaa !23
  %arrayidx122.2.3 = getelementptr inbounds i8, i8* %p_dst, i32 98
  %69 = load i8, i8* %arrayidx122.2.3, align 1, !tbaa !23
  %conv123.2.3 = zext i8 %69 to i32
  %70 = load i16, i16* %arrayidx108.2, align 4, !tbaa !24
  %conv127.2.3 = sext i16 %70 to i32
  %add128.2.3 = add nsw i32 %conv127.2.3, %conv123.2.3
  %tobool.i.2.3 = icmp ugt i32 %add128.2.3, 255
  %sub.i.2.3 = sub nsw i32 0, %add128.2.3
  %shr.i.2.3 = ashr i32 %sub.i.2.3, 31
  %cond.i.2.3 = select i1 %tobool.i.2.3, i32 %shr.i.2.3, i32 %add128.2.3
  %conv.i.2.3 = trunc i32 %cond.i.2.3 to i8
  store i8 %conv.i.2.3, i8* %arrayidx122.2.3, align 1, !tbaa !23
  %arrayidx122.3.3 = getelementptr inbounds i8, i8* %p_dst, i32 99
  %71 = load i8, i8* %arrayidx122.3.3, align 1, !tbaa !23
  %conv123.3.3 = zext i8 %71 to i32
  %72 = load i16, i16* %arrayidx108.3, align 2, !tbaa !24
  %conv127.3.3 = sext i16 %72 to i32
  %add128.3.3 = add nsw i32 %conv127.3.3, %conv123.3.3
  %tobool.i.3.3 = icmp ugt i32 %add128.3.3, 255
  %sub.i.3.3 = sub nsw i32 0, %add128.3.3
  %shr.i.3.3 = ashr i32 %sub.i.3.3, 31
  %cond.i.3.3 = select i1 %tobool.i.3.3, i32 %shr.i.3.3, i32 %add128.3.3
  %conv.i.3.3 = trunc i32 %cond.i.3.3 to i8
  store i8 %conv.i.3.3, i8* %arrayidx122.3.3, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret void
}

; Function Attrs: nounwind
define internal void @sub8x8_dct([16 x i16]* nocapture %dct, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2) #1 {
entry:
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 0
  tail call void @sub4x4_dct(i16* %arraydecay, i8* %pix1, i8* %pix2)
  %arraydecay4 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 1, i32 0
  %arrayidx5 = getelementptr inbounds i8, i8* %pix1, i32 4
  %arrayidx6 = getelementptr inbounds i8, i8* %pix2, i32 4
  tail call void @sub4x4_dct(i16* nonnull %arraydecay4, i8* nonnull %arrayidx5, i8* nonnull %arrayidx6)
  %arraydecay8 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 2, i32 0
  %arrayidx9 = getelementptr inbounds i8, i8* %pix1, i32 64
  %arrayidx10 = getelementptr inbounds i8, i8* %pix2, i32 128
  tail call void @sub4x4_dct(i16* nonnull %arraydecay8, i8* nonnull %arrayidx9, i8* nonnull %arrayidx10)
  %arraydecay12 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 3, i32 0
  %arrayidx13 = getelementptr inbounds i8, i8* %pix1, i32 68
  %arrayidx14 = getelementptr inbounds i8, i8* %pix2, i32 132
  tail call void @sub4x4_dct(i16* nonnull %arraydecay12, i8* nonnull %arrayidx13, i8* nonnull %arrayidx14)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @sub8x8_dct_dc(i16* nocapture %dct, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2) #2 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !23
  %conv.i = zext i8 %0 to i16
  %arrayidx1.i = getelementptr inbounds i8, i8* %pix1, i32 1
  %1 = load i8, i8* %arrayidx1.i, align 1, !tbaa !23
  %conv2.i = zext i8 %1 to i16
  %arrayidx3.i = getelementptr inbounds i8, i8* %pix1, i32 2
  %2 = load i8, i8* %arrayidx3.i, align 1, !tbaa !23
  %conv4.i = zext i8 %2 to i16
  %arrayidx6.i = getelementptr inbounds i8, i8* %pix1, i32 3
  %3 = load i8, i8* %arrayidx6.i, align 1, !tbaa !23
  %conv7.i = zext i8 %3 to i16
  %4 = load i8, i8* %pix2, align 1, !tbaa !23
  %conv10.i = zext i8 %4 to i16
  %arrayidx11.i = getelementptr inbounds i8, i8* %pix2, i32 1
  %5 = load i8, i8* %arrayidx11.i, align 1, !tbaa !23
  %conv12.i = zext i8 %5 to i16
  %arrayidx14.i = getelementptr inbounds i8, i8* %pix2, i32 2
  %6 = load i8, i8* %arrayidx14.i, align 1, !tbaa !23
  %conv15.i = zext i8 %6 to i16
  %arrayidx17.i = getelementptr inbounds i8, i8* %pix2, i32 3
  %7 = load i8, i8* %arrayidx17.i, align 1, !tbaa !23
  %conv18.i = zext i8 %7 to i16
  %add5.i = add nuw nsw i16 %conv2.i, %conv.i
  %add8.i = add nuw nsw i16 %add5.i, %conv4.i
  %sub.i = add nuw nsw i16 %add8.i, %conv7.i
  %sub13.i = sub nsw i16 %sub.i, %conv10.i
  %sub16.i = sub nsw i16 %sub13.i, %conv12.i
  %sub19.i = sub nsw i16 %sub16.i, %conv15.i
  %add20.i = sub nsw i16 %sub19.i, %conv18.i
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1, i32 16
  %add.ptr21.i = getelementptr inbounds i8, i8* %pix2, i32 32
  %8 = load i8, i8* %add.ptr.i, align 1, !tbaa !23
  %conv.1.i = zext i8 %8 to i16
  %arrayidx1.1.i = getelementptr inbounds i8, i8* %pix1, i32 17
  %9 = load i8, i8* %arrayidx1.1.i, align 1, !tbaa !23
  %conv2.1.i = zext i8 %9 to i16
  %arrayidx3.1.i = getelementptr inbounds i8, i8* %pix1, i32 18
  %10 = load i8, i8* %arrayidx3.1.i, align 1, !tbaa !23
  %conv4.1.i = zext i8 %10 to i16
  %arrayidx6.1.i = getelementptr inbounds i8, i8* %pix1, i32 19
  %11 = load i8, i8* %arrayidx6.1.i, align 1, !tbaa !23
  %conv7.1.i = zext i8 %11 to i16
  %12 = load i8, i8* %add.ptr21.i, align 1, !tbaa !23
  %conv10.1.i = zext i8 %12 to i16
  %arrayidx11.1.i = getelementptr inbounds i8, i8* %pix2, i32 33
  %13 = load i8, i8* %arrayidx11.1.i, align 1, !tbaa !23
  %conv12.1.i = zext i8 %13 to i16
  %arrayidx14.1.i = getelementptr inbounds i8, i8* %pix2, i32 34
  %14 = load i8, i8* %arrayidx14.1.i, align 1, !tbaa !23
  %conv15.1.i = zext i8 %14 to i16
  %arrayidx17.1.i = getelementptr inbounds i8, i8* %pix2, i32 35
  %15 = load i8, i8* %arrayidx17.1.i, align 1, !tbaa !23
  %conv18.1.i = zext i8 %15 to i16
  %add.1.i = add nsw i16 %add20.i, %conv.1.i
  %add5.1.i = add nsw i16 %add.1.i, %conv2.1.i
  %add8.1.i = add nsw i16 %add5.1.i, %conv4.1.i
  %sub.1.i = add nsw i16 %add8.1.i, %conv7.1.i
  %sub13.1.i = sub nsw i16 %sub.1.i, %conv10.1.i
  %sub16.1.i = sub nsw i16 %sub13.1.i, %conv12.1.i
  %sub19.1.i = sub nsw i16 %sub16.1.i, %conv15.1.i
  %add20.1.i = sub nsw i16 %sub19.1.i, %conv18.1.i
  %add.ptr.1.i = getelementptr inbounds i8, i8* %pix1, i32 32
  %add.ptr21.1.i = getelementptr inbounds i8, i8* %pix2, i32 64
  %16 = load i8, i8* %add.ptr.1.i, align 1, !tbaa !23
  %conv.2.i = zext i8 %16 to i16
  %arrayidx1.2.i = getelementptr inbounds i8, i8* %pix1, i32 33
  %17 = load i8, i8* %arrayidx1.2.i, align 1, !tbaa !23
  %conv2.2.i = zext i8 %17 to i16
  %arrayidx3.2.i = getelementptr inbounds i8, i8* %pix1, i32 34
  %18 = load i8, i8* %arrayidx3.2.i, align 1, !tbaa !23
  %conv4.2.i = zext i8 %18 to i16
  %arrayidx6.2.i = getelementptr inbounds i8, i8* %pix1, i32 35
  %19 = load i8, i8* %arrayidx6.2.i, align 1, !tbaa !23
  %conv7.2.i = zext i8 %19 to i16
  %20 = load i8, i8* %add.ptr21.1.i, align 1, !tbaa !23
  %conv10.2.i = zext i8 %20 to i16
  %arrayidx11.2.i = getelementptr inbounds i8, i8* %pix2, i32 65
  %21 = load i8, i8* %arrayidx11.2.i, align 1, !tbaa !23
  %conv12.2.i = zext i8 %21 to i16
  %arrayidx14.2.i = getelementptr inbounds i8, i8* %pix2, i32 66
  %22 = load i8, i8* %arrayidx14.2.i, align 1, !tbaa !23
  %conv15.2.i = zext i8 %22 to i16
  %arrayidx17.2.i = getelementptr inbounds i8, i8* %pix2, i32 67
  %23 = load i8, i8* %arrayidx17.2.i, align 1, !tbaa !23
  %conv18.2.i = zext i8 %23 to i16
  %add.2.i = add nsw i16 %add20.1.i, %conv.2.i
  %add5.2.i = add nsw i16 %add.2.i, %conv2.2.i
  %add8.2.i = add nsw i16 %add5.2.i, %conv4.2.i
  %sub.2.i = add nsw i16 %add8.2.i, %conv7.2.i
  %sub13.2.i = sub nsw i16 %sub.2.i, %conv10.2.i
  %sub16.2.i = sub nsw i16 %sub13.2.i, %conv12.2.i
  %sub19.2.i = sub nsw i16 %sub16.2.i, %conv15.2.i
  %add20.2.i = sub nsw i16 %sub19.2.i, %conv18.2.i
  %add.ptr.2.i = getelementptr inbounds i8, i8* %pix1, i32 48
  %add.ptr21.2.i = getelementptr inbounds i8, i8* %pix2, i32 96
  %24 = load i8, i8* %add.ptr.2.i, align 1, !tbaa !23
  %conv.3.i = zext i8 %24 to i16
  %arrayidx1.3.i = getelementptr inbounds i8, i8* %pix1, i32 49
  %25 = load i8, i8* %arrayidx1.3.i, align 1, !tbaa !23
  %conv2.3.i = zext i8 %25 to i16
  %arrayidx3.3.i = getelementptr inbounds i8, i8* %pix1, i32 50
  %26 = load i8, i8* %arrayidx3.3.i, align 1, !tbaa !23
  %conv4.3.i = zext i8 %26 to i16
  %arrayidx6.3.i = getelementptr inbounds i8, i8* %pix1, i32 51
  %27 = load i8, i8* %arrayidx6.3.i, align 1, !tbaa !23
  %conv7.3.i = zext i8 %27 to i16
  %28 = load i8, i8* %add.ptr21.2.i, align 1, !tbaa !23
  %conv10.3.i = zext i8 %28 to i16
  %arrayidx11.3.i = getelementptr inbounds i8, i8* %pix2, i32 97
  %29 = load i8, i8* %arrayidx11.3.i, align 1, !tbaa !23
  %conv12.3.i = zext i8 %29 to i16
  %arrayidx14.3.i = getelementptr inbounds i8, i8* %pix2, i32 98
  %30 = load i8, i8* %arrayidx14.3.i, align 1, !tbaa !23
  %conv15.3.i = zext i8 %30 to i16
  %arrayidx17.3.i = getelementptr inbounds i8, i8* %pix2, i32 99
  %31 = load i8, i8* %arrayidx17.3.i, align 1, !tbaa !23
  %conv18.3.i = zext i8 %31 to i16
  %add.3.i = add nsw i16 %add20.2.i, %conv.3.i
  %add5.3.i = add nsw i16 %add.3.i, %conv2.3.i
  %add8.3.i = add nsw i16 %add5.3.i, %conv4.3.i
  %sub.3.i = add nsw i16 %add8.3.i, %conv7.3.i
  %sub13.3.i = sub nsw i16 %sub.3.i, %conv10.3.i
  %sub16.3.i = sub nsw i16 %sub13.3.i, %conv12.3.i
  %sub19.3.i = sub nsw i16 %sub16.3.i, %conv15.3.i
  %add20.3.i = sub nsw i16 %sub19.3.i, %conv18.3.i
  store i16 %add20.3.i, i16* %dct, align 2, !tbaa !24
  %arrayidx3 = getelementptr inbounds i8, i8* %pix1, i32 4
  %arrayidx4 = getelementptr inbounds i8, i8* %pix2, i32 4
  %32 = load i8, i8* %arrayidx3, align 1, !tbaa !23
  %conv.i263 = zext i8 %32 to i16
  %arrayidx1.i264 = getelementptr inbounds i8, i8* %pix1, i32 5
  %33 = load i8, i8* %arrayidx1.i264, align 1, !tbaa !23
  %conv2.i265 = zext i8 %33 to i16
  %arrayidx3.i266 = getelementptr inbounds i8, i8* %pix1, i32 6
  %34 = load i8, i8* %arrayidx3.i266, align 1, !tbaa !23
  %conv4.i267 = zext i8 %34 to i16
  %arrayidx6.i268 = getelementptr inbounds i8, i8* %pix1, i32 7
  %35 = load i8, i8* %arrayidx6.i268, align 1, !tbaa !23
  %conv7.i269 = zext i8 %35 to i16
  %36 = load i8, i8* %arrayidx4, align 1, !tbaa !23
  %conv10.i270 = zext i8 %36 to i16
  %arrayidx11.i271 = getelementptr inbounds i8, i8* %pix2, i32 5
  %37 = load i8, i8* %arrayidx11.i271, align 1, !tbaa !23
  %conv12.i272 = zext i8 %37 to i16
  %arrayidx14.i273 = getelementptr inbounds i8, i8* %pix2, i32 6
  %38 = load i8, i8* %arrayidx14.i273, align 1, !tbaa !23
  %conv15.i274 = zext i8 %38 to i16
  %arrayidx17.i275 = getelementptr inbounds i8, i8* %pix2, i32 7
  %39 = load i8, i8* %arrayidx17.i275, align 1, !tbaa !23
  %conv18.i276 = zext i8 %39 to i16
  %add5.i277 = add nuw nsw i16 %conv2.i265, %conv.i263
  %add8.i278 = add nuw nsw i16 %add5.i277, %conv4.i267
  %sub.i279 = add nuw nsw i16 %add8.i278, %conv7.i269
  %sub13.i280 = sub nsw i16 %sub.i279, %conv10.i270
  %sub16.i281 = sub nsw i16 %sub13.i280, %conv12.i272
  %sub19.i282 = sub nsw i16 %sub16.i281, %conv15.i274
  %add20.i283 = sub nsw i16 %sub19.i282, %conv18.i276
  %add.ptr.i284 = getelementptr inbounds i8, i8* %pix1, i32 20
  %add.ptr21.i285 = getelementptr inbounds i8, i8* %pix2, i32 36
  %40 = load i8, i8* %add.ptr.i284, align 1, !tbaa !23
  %conv.1.i286 = zext i8 %40 to i16
  %arrayidx1.1.i287 = getelementptr inbounds i8, i8* %pix1, i32 21
  %41 = load i8, i8* %arrayidx1.1.i287, align 1, !tbaa !23
  %conv2.1.i288 = zext i8 %41 to i16
  %arrayidx3.1.i289 = getelementptr inbounds i8, i8* %pix1, i32 22
  %42 = load i8, i8* %arrayidx3.1.i289, align 1, !tbaa !23
  %conv4.1.i290 = zext i8 %42 to i16
  %arrayidx6.1.i291 = getelementptr inbounds i8, i8* %pix1, i32 23
  %43 = load i8, i8* %arrayidx6.1.i291, align 1, !tbaa !23
  %conv7.1.i292 = zext i8 %43 to i16
  %44 = load i8, i8* %add.ptr21.i285, align 1, !tbaa !23
  %conv10.1.i293 = zext i8 %44 to i16
  %arrayidx11.1.i294 = getelementptr inbounds i8, i8* %pix2, i32 37
  %45 = load i8, i8* %arrayidx11.1.i294, align 1, !tbaa !23
  %conv12.1.i295 = zext i8 %45 to i16
  %arrayidx14.1.i296 = getelementptr inbounds i8, i8* %pix2, i32 38
  %46 = load i8, i8* %arrayidx14.1.i296, align 1, !tbaa !23
  %conv15.1.i297 = zext i8 %46 to i16
  %arrayidx17.1.i298 = getelementptr inbounds i8, i8* %pix2, i32 39
  %47 = load i8, i8* %arrayidx17.1.i298, align 1, !tbaa !23
  %conv18.1.i299 = zext i8 %47 to i16
  %add.1.i300 = add nsw i16 %add20.i283, %conv.1.i286
  %add5.1.i301 = add nsw i16 %add.1.i300, %conv2.1.i288
  %add8.1.i302 = add nsw i16 %add5.1.i301, %conv4.1.i290
  %sub.1.i303 = add nsw i16 %add8.1.i302, %conv7.1.i292
  %sub13.1.i304 = sub nsw i16 %sub.1.i303, %conv10.1.i293
  %sub16.1.i305 = sub nsw i16 %sub13.1.i304, %conv12.1.i295
  %sub19.1.i306 = sub nsw i16 %sub16.1.i305, %conv15.1.i297
  %add20.1.i307 = sub nsw i16 %sub19.1.i306, %conv18.1.i299
  %add.ptr.1.i308 = getelementptr inbounds i8, i8* %pix1, i32 36
  %add.ptr21.1.i309 = getelementptr inbounds i8, i8* %pix2, i32 68
  %48 = load i8, i8* %add.ptr.1.i308, align 1, !tbaa !23
  %conv.2.i310 = zext i8 %48 to i16
  %arrayidx1.2.i311 = getelementptr inbounds i8, i8* %pix1, i32 37
  %49 = load i8, i8* %arrayidx1.2.i311, align 1, !tbaa !23
  %conv2.2.i312 = zext i8 %49 to i16
  %arrayidx3.2.i313 = getelementptr inbounds i8, i8* %pix1, i32 38
  %50 = load i8, i8* %arrayidx3.2.i313, align 1, !tbaa !23
  %conv4.2.i314 = zext i8 %50 to i16
  %arrayidx6.2.i315 = getelementptr inbounds i8, i8* %pix1, i32 39
  %51 = load i8, i8* %arrayidx6.2.i315, align 1, !tbaa !23
  %conv7.2.i316 = zext i8 %51 to i16
  %52 = load i8, i8* %add.ptr21.1.i309, align 1, !tbaa !23
  %conv10.2.i317 = zext i8 %52 to i16
  %arrayidx11.2.i318 = getelementptr inbounds i8, i8* %pix2, i32 69
  %53 = load i8, i8* %arrayidx11.2.i318, align 1, !tbaa !23
  %conv12.2.i319 = zext i8 %53 to i16
  %arrayidx14.2.i320 = getelementptr inbounds i8, i8* %pix2, i32 70
  %54 = load i8, i8* %arrayidx14.2.i320, align 1, !tbaa !23
  %conv15.2.i321 = zext i8 %54 to i16
  %arrayidx17.2.i322 = getelementptr inbounds i8, i8* %pix2, i32 71
  %55 = load i8, i8* %arrayidx17.2.i322, align 1, !tbaa !23
  %conv18.2.i323 = zext i8 %55 to i16
  %add.2.i324 = add nsw i16 %add20.1.i307, %conv.2.i310
  %add5.2.i325 = add nsw i16 %add.2.i324, %conv2.2.i312
  %add8.2.i326 = add nsw i16 %add5.2.i325, %conv4.2.i314
  %sub.2.i327 = add nsw i16 %add8.2.i326, %conv7.2.i316
  %sub13.2.i328 = sub nsw i16 %sub.2.i327, %conv10.2.i317
  %sub16.2.i329 = sub nsw i16 %sub13.2.i328, %conv12.2.i319
  %sub19.2.i330 = sub nsw i16 %sub16.2.i329, %conv15.2.i321
  %add20.2.i331 = sub nsw i16 %sub19.2.i330, %conv18.2.i323
  %add.ptr.2.i332 = getelementptr inbounds i8, i8* %pix1, i32 52
  %add.ptr21.2.i333 = getelementptr inbounds i8, i8* %pix2, i32 100
  %56 = load i8, i8* %add.ptr.2.i332, align 1, !tbaa !23
  %conv.3.i334 = zext i8 %56 to i16
  %arrayidx1.3.i335 = getelementptr inbounds i8, i8* %pix1, i32 53
  %57 = load i8, i8* %arrayidx1.3.i335, align 1, !tbaa !23
  %conv2.3.i336 = zext i8 %57 to i16
  %arrayidx3.3.i337 = getelementptr inbounds i8, i8* %pix1, i32 54
  %58 = load i8, i8* %arrayidx3.3.i337, align 1, !tbaa !23
  %conv4.3.i338 = zext i8 %58 to i16
  %arrayidx6.3.i339 = getelementptr inbounds i8, i8* %pix1, i32 55
  %59 = load i8, i8* %arrayidx6.3.i339, align 1, !tbaa !23
  %conv7.3.i340 = zext i8 %59 to i16
  %60 = load i8, i8* %add.ptr21.2.i333, align 1, !tbaa !23
  %conv10.3.i341 = zext i8 %60 to i16
  %arrayidx11.3.i342 = getelementptr inbounds i8, i8* %pix2, i32 101
  %61 = load i8, i8* %arrayidx11.3.i342, align 1, !tbaa !23
  %conv12.3.i343 = zext i8 %61 to i16
  %arrayidx14.3.i344 = getelementptr inbounds i8, i8* %pix2, i32 102
  %62 = load i8, i8* %arrayidx14.3.i344, align 1, !tbaa !23
  %conv15.3.i345 = zext i8 %62 to i16
  %arrayidx17.3.i346 = getelementptr inbounds i8, i8* %pix2, i32 103
  %63 = load i8, i8* %arrayidx17.3.i346, align 1, !tbaa !23
  %conv18.3.i347 = zext i8 %63 to i16
  %add.3.i348 = add nsw i16 %add20.2.i331, %conv.3.i334
  %add5.3.i349 = add nsw i16 %add.3.i348, %conv2.3.i336
  %add8.3.i350 = add nsw i16 %add5.3.i349, %conv4.3.i338
  %sub.3.i351 = add nsw i16 %add8.3.i350, %conv7.3.i340
  %sub13.3.i352 = sub nsw i16 %sub.3.i351, %conv10.3.i341
  %sub16.3.i353 = sub nsw i16 %sub13.3.i352, %conv12.3.i343
  %sub19.3.i354 = sub nsw i16 %sub16.3.i353, %conv15.3.i345
  %add20.3.i355 = sub nsw i16 %sub19.3.i354, %conv18.3.i347
  %arrayidx7 = getelementptr inbounds i16, i16* %dct, i32 1
  store i16 %add20.3.i355, i16* %arrayidx7, align 2, !tbaa !24
  %arrayidx8 = getelementptr inbounds i8, i8* %pix1, i32 64
  %arrayidx9 = getelementptr inbounds i8, i8* %pix2, i32 128
  %64 = load i8, i8* %arrayidx8, align 1, !tbaa !23
  %conv.i170 = zext i8 %64 to i16
  %arrayidx1.i171 = getelementptr inbounds i8, i8* %pix1, i32 65
  %65 = load i8, i8* %arrayidx1.i171, align 1, !tbaa !23
  %conv2.i172 = zext i8 %65 to i16
  %arrayidx3.i173 = getelementptr inbounds i8, i8* %pix1, i32 66
  %66 = load i8, i8* %arrayidx3.i173, align 1, !tbaa !23
  %conv4.i174 = zext i8 %66 to i16
  %arrayidx6.i175 = getelementptr inbounds i8, i8* %pix1, i32 67
  %67 = load i8, i8* %arrayidx6.i175, align 1, !tbaa !23
  %conv7.i176 = zext i8 %67 to i16
  %68 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10.i177 = zext i8 %68 to i16
  %arrayidx11.i178 = getelementptr inbounds i8, i8* %pix2, i32 129
  %69 = load i8, i8* %arrayidx11.i178, align 1, !tbaa !23
  %conv12.i179 = zext i8 %69 to i16
  %arrayidx14.i180 = getelementptr inbounds i8, i8* %pix2, i32 130
  %70 = load i8, i8* %arrayidx14.i180, align 1, !tbaa !23
  %conv15.i181 = zext i8 %70 to i16
  %arrayidx17.i182 = getelementptr inbounds i8, i8* %pix2, i32 131
  %71 = load i8, i8* %arrayidx17.i182, align 1, !tbaa !23
  %conv18.i183 = zext i8 %71 to i16
  %add5.i184 = add nuw nsw i16 %conv2.i172, %conv.i170
  %add8.i185 = add nuw nsw i16 %add5.i184, %conv4.i174
  %sub.i186 = add nuw nsw i16 %add8.i185, %conv7.i176
  %sub13.i187 = sub nsw i16 %sub.i186, %conv10.i177
  %sub16.i188 = sub nsw i16 %sub13.i187, %conv12.i179
  %sub19.i189 = sub nsw i16 %sub16.i188, %conv15.i181
  %add20.i190 = sub nsw i16 %sub19.i189, %conv18.i183
  %add.ptr.i191 = getelementptr inbounds i8, i8* %pix1, i32 80
  %add.ptr21.i192 = getelementptr inbounds i8, i8* %pix2, i32 160
  %72 = load i8, i8* %add.ptr.i191, align 1, !tbaa !23
  %conv.1.i193 = zext i8 %72 to i16
  %arrayidx1.1.i194 = getelementptr inbounds i8, i8* %pix1, i32 81
  %73 = load i8, i8* %arrayidx1.1.i194, align 1, !tbaa !23
  %conv2.1.i195 = zext i8 %73 to i16
  %arrayidx3.1.i196 = getelementptr inbounds i8, i8* %pix1, i32 82
  %74 = load i8, i8* %arrayidx3.1.i196, align 1, !tbaa !23
  %conv4.1.i197 = zext i8 %74 to i16
  %arrayidx6.1.i198 = getelementptr inbounds i8, i8* %pix1, i32 83
  %75 = load i8, i8* %arrayidx6.1.i198, align 1, !tbaa !23
  %conv7.1.i199 = zext i8 %75 to i16
  %76 = load i8, i8* %add.ptr21.i192, align 1, !tbaa !23
  %conv10.1.i200 = zext i8 %76 to i16
  %arrayidx11.1.i201 = getelementptr inbounds i8, i8* %pix2, i32 161
  %77 = load i8, i8* %arrayidx11.1.i201, align 1, !tbaa !23
  %conv12.1.i202 = zext i8 %77 to i16
  %arrayidx14.1.i203 = getelementptr inbounds i8, i8* %pix2, i32 162
  %78 = load i8, i8* %arrayidx14.1.i203, align 1, !tbaa !23
  %conv15.1.i204 = zext i8 %78 to i16
  %arrayidx17.1.i205 = getelementptr inbounds i8, i8* %pix2, i32 163
  %79 = load i8, i8* %arrayidx17.1.i205, align 1, !tbaa !23
  %conv18.1.i206 = zext i8 %79 to i16
  %add.1.i207 = add nsw i16 %add20.i190, %conv.1.i193
  %add5.1.i208 = add nsw i16 %add.1.i207, %conv2.1.i195
  %add8.1.i209 = add nsw i16 %add5.1.i208, %conv4.1.i197
  %sub.1.i210 = add nsw i16 %add8.1.i209, %conv7.1.i199
  %sub13.1.i211 = sub nsw i16 %sub.1.i210, %conv10.1.i200
  %sub16.1.i212 = sub nsw i16 %sub13.1.i211, %conv12.1.i202
  %sub19.1.i213 = sub nsw i16 %sub16.1.i212, %conv15.1.i204
  %add20.1.i214 = sub nsw i16 %sub19.1.i213, %conv18.1.i206
  %add.ptr.1.i215 = getelementptr inbounds i8, i8* %pix1, i32 96
  %add.ptr21.1.i216 = getelementptr inbounds i8, i8* %pix2, i32 192
  %80 = load i8, i8* %add.ptr.1.i215, align 1, !tbaa !23
  %conv.2.i217 = zext i8 %80 to i16
  %arrayidx1.2.i218 = getelementptr inbounds i8, i8* %pix1, i32 97
  %81 = load i8, i8* %arrayidx1.2.i218, align 1, !tbaa !23
  %conv2.2.i219 = zext i8 %81 to i16
  %arrayidx3.2.i220 = getelementptr inbounds i8, i8* %pix1, i32 98
  %82 = load i8, i8* %arrayidx3.2.i220, align 1, !tbaa !23
  %conv4.2.i221 = zext i8 %82 to i16
  %arrayidx6.2.i222 = getelementptr inbounds i8, i8* %pix1, i32 99
  %83 = load i8, i8* %arrayidx6.2.i222, align 1, !tbaa !23
  %conv7.2.i223 = zext i8 %83 to i16
  %84 = load i8, i8* %add.ptr21.1.i216, align 1, !tbaa !23
  %conv10.2.i224 = zext i8 %84 to i16
  %arrayidx11.2.i225 = getelementptr inbounds i8, i8* %pix2, i32 193
  %85 = load i8, i8* %arrayidx11.2.i225, align 1, !tbaa !23
  %conv12.2.i226 = zext i8 %85 to i16
  %arrayidx14.2.i227 = getelementptr inbounds i8, i8* %pix2, i32 194
  %86 = load i8, i8* %arrayidx14.2.i227, align 1, !tbaa !23
  %conv15.2.i228 = zext i8 %86 to i16
  %arrayidx17.2.i229 = getelementptr inbounds i8, i8* %pix2, i32 195
  %87 = load i8, i8* %arrayidx17.2.i229, align 1, !tbaa !23
  %conv18.2.i230 = zext i8 %87 to i16
  %add.2.i231 = add nsw i16 %add20.1.i214, %conv.2.i217
  %add5.2.i232 = add nsw i16 %add.2.i231, %conv2.2.i219
  %add8.2.i233 = add nsw i16 %add5.2.i232, %conv4.2.i221
  %sub.2.i234 = add nsw i16 %add8.2.i233, %conv7.2.i223
  %sub13.2.i235 = sub nsw i16 %sub.2.i234, %conv10.2.i224
  %sub16.2.i236 = sub nsw i16 %sub13.2.i235, %conv12.2.i226
  %sub19.2.i237 = sub nsw i16 %sub16.2.i236, %conv15.2.i228
  %add20.2.i238 = sub nsw i16 %sub19.2.i237, %conv18.2.i230
  %add.ptr.2.i239 = getelementptr inbounds i8, i8* %pix1, i32 112
  %add.ptr21.2.i240 = getelementptr inbounds i8, i8* %pix2, i32 224
  %88 = load i8, i8* %add.ptr.2.i239, align 1, !tbaa !23
  %conv.3.i241 = zext i8 %88 to i16
  %arrayidx1.3.i242 = getelementptr inbounds i8, i8* %pix1, i32 113
  %89 = load i8, i8* %arrayidx1.3.i242, align 1, !tbaa !23
  %conv2.3.i243 = zext i8 %89 to i16
  %arrayidx3.3.i244 = getelementptr inbounds i8, i8* %pix1, i32 114
  %90 = load i8, i8* %arrayidx3.3.i244, align 1, !tbaa !23
  %conv4.3.i245 = zext i8 %90 to i16
  %arrayidx6.3.i246 = getelementptr inbounds i8, i8* %pix1, i32 115
  %91 = load i8, i8* %arrayidx6.3.i246, align 1, !tbaa !23
  %conv7.3.i247 = zext i8 %91 to i16
  %92 = load i8, i8* %add.ptr21.2.i240, align 1, !tbaa !23
  %conv10.3.i248 = zext i8 %92 to i16
  %arrayidx11.3.i249 = getelementptr inbounds i8, i8* %pix2, i32 225
  %93 = load i8, i8* %arrayidx11.3.i249, align 1, !tbaa !23
  %conv12.3.i250 = zext i8 %93 to i16
  %arrayidx14.3.i251 = getelementptr inbounds i8, i8* %pix2, i32 226
  %94 = load i8, i8* %arrayidx14.3.i251, align 1, !tbaa !23
  %conv15.3.i252 = zext i8 %94 to i16
  %arrayidx17.3.i253 = getelementptr inbounds i8, i8* %pix2, i32 227
  %95 = load i8, i8* %arrayidx17.3.i253, align 1, !tbaa !23
  %conv18.3.i254 = zext i8 %95 to i16
  %add.3.i255 = add nsw i16 %add20.2.i238, %conv.3.i241
  %add5.3.i256 = add nsw i16 %add.3.i255, %conv2.3.i243
  %add8.3.i257 = add nsw i16 %add5.3.i256, %conv4.3.i245
  %sub.3.i258 = add nsw i16 %add8.3.i257, %conv7.3.i247
  %sub13.3.i259 = sub nsw i16 %sub.3.i258, %conv10.3.i248
  %sub16.3.i260 = sub nsw i16 %sub13.3.i259, %conv12.3.i250
  %sub19.3.i261 = sub nsw i16 %sub16.3.i260, %conv15.3.i252
  %add20.3.i262 = sub nsw i16 %sub19.3.i261, %conv18.3.i254
  %arrayidx12 = getelementptr inbounds i16, i16* %dct, i32 2
  store i16 %add20.3.i262, i16* %arrayidx12, align 2, !tbaa !24
  %arrayidx13 = getelementptr inbounds i8, i8* %pix1, i32 68
  %arrayidx14 = getelementptr inbounds i8, i8* %pix2, i32 132
  %96 = load i8, i8* %arrayidx13, align 1, !tbaa !23
  %conv.i77 = zext i8 %96 to i32
  %arrayidx1.i78 = getelementptr inbounds i8, i8* %pix1, i32 69
  %97 = load i8, i8* %arrayidx1.i78, align 1, !tbaa !23
  %conv2.i79 = zext i8 %97 to i32
  %arrayidx3.i80 = getelementptr inbounds i8, i8* %pix1, i32 70
  %98 = load i8, i8* %arrayidx3.i80, align 1, !tbaa !23
  %conv4.i81 = zext i8 %98 to i32
  %arrayidx6.i82 = getelementptr inbounds i8, i8* %pix1, i32 71
  %99 = load i8, i8* %arrayidx6.i82, align 1, !tbaa !23
  %conv7.i83 = zext i8 %99 to i32
  %100 = load i8, i8* %arrayidx14, align 1, !tbaa !23
  %conv10.i84 = zext i8 %100 to i32
  %arrayidx11.i85 = getelementptr inbounds i8, i8* %pix2, i32 133
  %101 = load i8, i8* %arrayidx11.i85, align 1, !tbaa !23
  %conv12.i86 = zext i8 %101 to i32
  %arrayidx14.i87 = getelementptr inbounds i8, i8* %pix2, i32 134
  %102 = load i8, i8* %arrayidx14.i87, align 1, !tbaa !23
  %conv15.i88 = zext i8 %102 to i32
  %arrayidx17.i89 = getelementptr inbounds i8, i8* %pix2, i32 135
  %103 = load i8, i8* %arrayidx17.i89, align 1, !tbaa !23
  %conv18.i90 = zext i8 %103 to i32
  %add5.i91 = add nuw nsw i32 %conv2.i79, %conv.i77
  %add8.i92 = add nuw nsw i32 %add5.i91, %conv4.i81
  %sub.i93 = add nuw nsw i32 %add8.i92, %conv7.i83
  %sub13.i94 = sub nsw i32 %sub.i93, %conv10.i84
  %sub16.i95 = sub nsw i32 %sub13.i94, %conv12.i86
  %sub19.i96 = sub nsw i32 %sub16.i95, %conv15.i88
  %add20.i97 = sub nsw i32 %sub19.i96, %conv18.i90
  %add.ptr.i98 = getelementptr inbounds i8, i8* %pix1, i32 84
  %add.ptr21.i99 = getelementptr inbounds i8, i8* %pix2, i32 164
  %104 = load i8, i8* %add.ptr.i98, align 1, !tbaa !23
  %conv.1.i100 = zext i8 %104 to i32
  %arrayidx1.1.i101 = getelementptr inbounds i8, i8* %pix1, i32 85
  %105 = load i8, i8* %arrayidx1.1.i101, align 1, !tbaa !23
  %conv2.1.i102 = zext i8 %105 to i32
  %arrayidx3.1.i103 = getelementptr inbounds i8, i8* %pix1, i32 86
  %106 = load i8, i8* %arrayidx3.1.i103, align 1, !tbaa !23
  %conv4.1.i104 = zext i8 %106 to i32
  %arrayidx6.1.i105 = getelementptr inbounds i8, i8* %pix1, i32 87
  %107 = load i8, i8* %arrayidx6.1.i105, align 1, !tbaa !23
  %conv7.1.i106 = zext i8 %107 to i32
  %108 = load i8, i8* %add.ptr21.i99, align 1, !tbaa !23
  %conv10.1.i107 = zext i8 %108 to i32
  %arrayidx11.1.i108 = getelementptr inbounds i8, i8* %pix2, i32 165
  %109 = load i8, i8* %arrayidx11.1.i108, align 1, !tbaa !23
  %conv12.1.i109 = zext i8 %109 to i32
  %arrayidx14.1.i110 = getelementptr inbounds i8, i8* %pix2, i32 166
  %110 = load i8, i8* %arrayidx14.1.i110, align 1, !tbaa !23
  %conv15.1.i111 = zext i8 %110 to i32
  %arrayidx17.1.i112 = getelementptr inbounds i8, i8* %pix2, i32 167
  %111 = load i8, i8* %arrayidx17.1.i112, align 1, !tbaa !23
  %conv18.1.i113 = zext i8 %111 to i32
  %add.1.i114 = add nsw i32 %add20.i97, %conv.1.i100
  %add5.1.i115 = add nsw i32 %add.1.i114, %conv2.1.i102
  %add8.1.i116 = add nsw i32 %add5.1.i115, %conv4.1.i104
  %sub.1.i117 = add nsw i32 %add8.1.i116, %conv7.1.i106
  %sub13.1.i118 = sub nsw i32 %sub.1.i117, %conv10.1.i107
  %sub16.1.i119 = sub nsw i32 %sub13.1.i118, %conv12.1.i109
  %sub19.1.i120 = sub nsw i32 %sub16.1.i119, %conv15.1.i111
  %add20.1.i121 = sub nsw i32 %sub19.1.i120, %conv18.1.i113
  %add.ptr.1.i122 = getelementptr inbounds i8, i8* %pix1, i32 100
  %add.ptr21.1.i123 = getelementptr inbounds i8, i8* %pix2, i32 196
  %112 = load i8, i8* %add.ptr.1.i122, align 1, !tbaa !23
  %conv.2.i124 = zext i8 %112 to i32
  %arrayidx1.2.i125 = getelementptr inbounds i8, i8* %pix1, i32 101
  %113 = load i8, i8* %arrayidx1.2.i125, align 1, !tbaa !23
  %conv2.2.i126 = zext i8 %113 to i32
  %arrayidx3.2.i127 = getelementptr inbounds i8, i8* %pix1, i32 102
  %114 = load i8, i8* %arrayidx3.2.i127, align 1, !tbaa !23
  %conv4.2.i128 = zext i8 %114 to i32
  %arrayidx6.2.i129 = getelementptr inbounds i8, i8* %pix1, i32 103
  %115 = load i8, i8* %arrayidx6.2.i129, align 1, !tbaa !23
  %conv7.2.i130 = zext i8 %115 to i32
  %116 = load i8, i8* %add.ptr21.1.i123, align 1, !tbaa !23
  %conv10.2.i131 = zext i8 %116 to i32
  %arrayidx11.2.i132 = getelementptr inbounds i8, i8* %pix2, i32 197
  %117 = load i8, i8* %arrayidx11.2.i132, align 1, !tbaa !23
  %conv12.2.i133 = zext i8 %117 to i32
  %arrayidx14.2.i134 = getelementptr inbounds i8, i8* %pix2, i32 198
  %118 = load i8, i8* %arrayidx14.2.i134, align 1, !tbaa !23
  %conv15.2.i135 = zext i8 %118 to i32
  %arrayidx17.2.i136 = getelementptr inbounds i8, i8* %pix2, i32 199
  %119 = load i8, i8* %arrayidx17.2.i136, align 1, !tbaa !23
  %conv18.2.i137 = zext i8 %119 to i32
  %add.2.i138 = add nsw i32 %add20.1.i121, %conv.2.i124
  %add5.2.i139 = add nsw i32 %add.2.i138, %conv2.2.i126
  %add8.2.i140 = add nsw i32 %add5.2.i139, %conv4.2.i128
  %sub.2.i141 = add nsw i32 %add8.2.i140, %conv7.2.i130
  %sub13.2.i142 = sub nsw i32 %sub.2.i141, %conv10.2.i131
  %sub16.2.i143 = sub nsw i32 %sub13.2.i142, %conv12.2.i133
  %sub19.2.i144 = sub nsw i32 %sub16.2.i143, %conv15.2.i135
  %add20.2.i145 = sub nsw i32 %sub19.2.i144, %conv18.2.i137
  %add.ptr.2.i146 = getelementptr inbounds i8, i8* %pix1, i32 116
  %add.ptr21.2.i147 = getelementptr inbounds i8, i8* %pix2, i32 228
  %120 = load i8, i8* %add.ptr.2.i146, align 1, !tbaa !23
  %conv.3.i148 = zext i8 %120 to i32
  %arrayidx1.3.i149 = getelementptr inbounds i8, i8* %pix1, i32 117
  %121 = load i8, i8* %arrayidx1.3.i149, align 1, !tbaa !23
  %conv2.3.i150 = zext i8 %121 to i32
  %arrayidx3.3.i151 = getelementptr inbounds i8, i8* %pix1, i32 118
  %122 = load i8, i8* %arrayidx3.3.i151, align 1, !tbaa !23
  %conv4.3.i152 = zext i8 %122 to i32
  %arrayidx6.3.i153 = getelementptr inbounds i8, i8* %pix1, i32 119
  %123 = load i8, i8* %arrayidx6.3.i153, align 1, !tbaa !23
  %conv7.3.i154 = zext i8 %123 to i32
  %124 = load i8, i8* %add.ptr21.2.i147, align 1, !tbaa !23
  %conv10.3.i155 = zext i8 %124 to i32
  %arrayidx11.3.i156 = getelementptr inbounds i8, i8* %pix2, i32 229
  %125 = load i8, i8* %arrayidx11.3.i156, align 1, !tbaa !23
  %conv12.3.i157 = zext i8 %125 to i32
  %arrayidx14.3.i158 = getelementptr inbounds i8, i8* %pix2, i32 230
  %126 = load i8, i8* %arrayidx14.3.i158, align 1, !tbaa !23
  %conv15.3.i159 = zext i8 %126 to i32
  %arrayidx17.3.i160 = getelementptr inbounds i8, i8* %pix2, i32 231
  %127 = load i8, i8* %arrayidx17.3.i160, align 1, !tbaa !23
  %conv18.3.i161 = zext i8 %127 to i32
  %add.3.i162 = add nsw i32 %add20.2.i145, %conv.3.i148
  %add5.3.i163 = add nsw i32 %add.3.i162, %conv2.3.i150
  %add8.3.i164 = add nsw i32 %add5.3.i163, %conv4.3.i152
  %sub.3.i165 = add nsw i32 %add8.3.i164, %conv7.3.i154
  %sub13.3.i166 = sub nsw i32 %sub.3.i165, %conv10.3.i155
  %sub16.3.i167 = sub nsw i32 %sub13.3.i166, %conv12.3.i157
  %sub19.3.i168 = sub nsw i32 %sub16.3.i167, %conv15.3.i159
  %add20.3.i169 = sub nsw i32 %sub19.3.i168, %conv18.3.i161
  %arrayidx17 = getelementptr inbounds i16, i16* %dct, i32 3
  %conv19 = sext i16 %add20.3.i to i32
  %conv21 = sext i16 %add20.3.i355 to i32
  %add = add nsw i32 %conv21, %conv19
  %conv23 = sext i16 %add20.3.i262 to i32
  %add26 = add nsw i32 %add20.3.i169, %conv23
  %sub = sub nsw i32 %conv19, %conv21
  %sub35 = sub nsw i32 %conv23, %add20.3.i169
  %add36 = add nsw i32 %add26, %add
  %conv37 = trunc i32 %add36 to i16
  store i16 %conv37, i16* %dct, align 2, !tbaa !24
  %sub39 = sub nsw i32 %add, %add26
  %conv40 = trunc i32 %sub39 to i16
  store i16 %conv40, i16* %arrayidx7, align 2, !tbaa !24
  %add42 = add nsw i32 %sub35, %sub
  %conv43 = trunc i32 %add42 to i16
  store i16 %conv43, i16* %arrayidx12, align 2, !tbaa !24
  %sub45 = sub nsw i32 %sub, %sub35
  %conv46 = trunc i32 %sub45 to i16
  store i16 %conv46, i16* %arrayidx17, align 2, !tbaa !24
  ret void
}

; Function Attrs: nounwind
define internal void @add8x8_idct(i8* nocapture %p_dst, [16 x i16]* nocapture readonly %dct) #1 {
entry:
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 0
  tail call void @add4x4_idct(i8* %p_dst, i16* %arraydecay)
  %arrayidx2 = getelementptr inbounds i8, i8* %p_dst, i32 4
  %arraydecay4 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 1, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx2, i16* nonnull %arraydecay4)
  %arrayidx5 = getelementptr inbounds i8, i8* %p_dst, i32 128
  %arraydecay7 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 2, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx5, i16* nonnull %arraydecay7)
  %arrayidx8 = getelementptr inbounds i8, i8* %p_dst, i32 132
  %arraydecay10 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 3, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx8, i16* nonnull %arraydecay10)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @add8x8_idct_dc(i8* nocapture %p_dst, i16* nocapture readonly %dct) #2 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* %p_dst, i16 signext %0)
  %arrayidx2 = getelementptr inbounds i8, i8* %p_dst, i32 4
  %arrayidx3 = getelementptr inbounds i16, i16* %dct, i32 1
  %1 = load i16, i16* %arrayidx3, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx2, i16 signext %1)
  %arrayidx4 = getelementptr inbounds i8, i8* %p_dst, i32 128
  %arrayidx5 = getelementptr inbounds i16, i16* %dct, i32 2
  %2 = load i16, i16* %arrayidx5, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx4, i16 signext %2)
  %arrayidx6 = getelementptr inbounds i8, i8* %p_dst, i32 132
  %arrayidx7 = getelementptr inbounds i16, i16* %dct, i32 3
  %3 = load i16, i16* %arrayidx7, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx6, i16 signext %3)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @sub8x16_dct_dc(i16* nocapture %dct, i8* readonly %pix1, i8* readonly %pix2) #2 {
entry:
  %0 = load i8, i8* %pix1, align 1, !tbaa !23
  %conv.i = zext i8 %0 to i32
  %arrayidx1.i = getelementptr inbounds i8, i8* %pix1, i32 1
  %1 = load i8, i8* %arrayidx1.i, align 1, !tbaa !23
  %conv2.i = zext i8 %1 to i32
  %arrayidx3.i = getelementptr inbounds i8, i8* %pix1, i32 2
  %2 = load i8, i8* %arrayidx3.i, align 1, !tbaa !23
  %conv4.i = zext i8 %2 to i32
  %arrayidx6.i = getelementptr inbounds i8, i8* %pix1, i32 3
  %3 = load i8, i8* %arrayidx6.i, align 1, !tbaa !23
  %conv7.i = zext i8 %3 to i32
  %4 = load i8, i8* %pix2, align 1, !tbaa !23
  %conv10.i = zext i8 %4 to i32
  %arrayidx11.i = getelementptr inbounds i8, i8* %pix2, i32 1
  %5 = load i8, i8* %arrayidx11.i, align 1, !tbaa !23
  %conv12.i = zext i8 %5 to i32
  %arrayidx14.i = getelementptr inbounds i8, i8* %pix2, i32 2
  %6 = load i8, i8* %arrayidx14.i, align 1, !tbaa !23
  %conv15.i = zext i8 %6 to i32
  %arrayidx17.i = getelementptr inbounds i8, i8* %pix2, i32 3
  %7 = load i8, i8* %arrayidx17.i, align 1, !tbaa !23
  %conv18.i = zext i8 %7 to i32
  %add5.i = add nuw nsw i32 %conv2.i, %conv.i
  %add8.i = add nuw nsw i32 %add5.i, %conv4.i
  %sub.i = add nuw nsw i32 %add8.i, %conv7.i
  %sub13.i = sub nsw i32 %sub.i, %conv10.i
  %sub16.i = sub nsw i32 %sub13.i, %conv12.i
  %sub19.i = sub nsw i32 %sub16.i, %conv15.i
  %add20.i = sub nsw i32 %sub19.i, %conv18.i
  %add.ptr.i = getelementptr inbounds i8, i8* %pix1, i32 16
  %add.ptr21.i = getelementptr inbounds i8, i8* %pix2, i32 32
  %8 = load i8, i8* %add.ptr.i, align 1, !tbaa !23
  %conv.1.i = zext i8 %8 to i32
  %arrayidx1.1.i = getelementptr inbounds i8, i8* %pix1, i32 17
  %9 = load i8, i8* %arrayidx1.1.i, align 1, !tbaa !23
  %conv2.1.i = zext i8 %9 to i32
  %arrayidx3.1.i = getelementptr inbounds i8, i8* %pix1, i32 18
  %10 = load i8, i8* %arrayidx3.1.i, align 1, !tbaa !23
  %conv4.1.i = zext i8 %10 to i32
  %arrayidx6.1.i = getelementptr inbounds i8, i8* %pix1, i32 19
  %11 = load i8, i8* %arrayidx6.1.i, align 1, !tbaa !23
  %conv7.1.i = zext i8 %11 to i32
  %12 = load i8, i8* %add.ptr21.i, align 1, !tbaa !23
  %conv10.1.i = zext i8 %12 to i32
  %arrayidx11.1.i = getelementptr inbounds i8, i8* %pix2, i32 33
  %13 = load i8, i8* %arrayidx11.1.i, align 1, !tbaa !23
  %conv12.1.i = zext i8 %13 to i32
  %arrayidx14.1.i = getelementptr inbounds i8, i8* %pix2, i32 34
  %14 = load i8, i8* %arrayidx14.1.i, align 1, !tbaa !23
  %conv15.1.i = zext i8 %14 to i32
  %arrayidx17.1.i = getelementptr inbounds i8, i8* %pix2, i32 35
  %15 = load i8, i8* %arrayidx17.1.i, align 1, !tbaa !23
  %conv18.1.i = zext i8 %15 to i32
  %add.1.i = add nsw i32 %add20.i, %conv.1.i
  %add5.1.i = add nsw i32 %add.1.i, %conv2.1.i
  %add8.1.i = add nsw i32 %add5.1.i, %conv4.1.i
  %sub.1.i = add nsw i32 %add8.1.i, %conv7.1.i
  %sub13.1.i = sub nsw i32 %sub.1.i, %conv10.1.i
  %sub16.1.i = sub nsw i32 %sub13.1.i, %conv12.1.i
  %sub19.1.i = sub nsw i32 %sub16.1.i, %conv15.1.i
  %add20.1.i = sub nsw i32 %sub19.1.i, %conv18.1.i
  %add.ptr.1.i = getelementptr inbounds i8, i8* %pix1, i32 32
  %add.ptr21.1.i = getelementptr inbounds i8, i8* %pix2, i32 64
  %16 = load i8, i8* %add.ptr.1.i, align 1, !tbaa !23
  %conv.2.i = zext i8 %16 to i32
  %arrayidx1.2.i = getelementptr inbounds i8, i8* %pix1, i32 33
  %17 = load i8, i8* %arrayidx1.2.i, align 1, !tbaa !23
  %conv2.2.i = zext i8 %17 to i32
  %arrayidx3.2.i = getelementptr inbounds i8, i8* %pix1, i32 34
  %18 = load i8, i8* %arrayidx3.2.i, align 1, !tbaa !23
  %conv4.2.i = zext i8 %18 to i32
  %arrayidx6.2.i = getelementptr inbounds i8, i8* %pix1, i32 35
  %19 = load i8, i8* %arrayidx6.2.i, align 1, !tbaa !23
  %conv7.2.i = zext i8 %19 to i32
  %20 = load i8, i8* %add.ptr21.1.i, align 1, !tbaa !23
  %conv10.2.i = zext i8 %20 to i32
  %arrayidx11.2.i = getelementptr inbounds i8, i8* %pix2, i32 65
  %21 = load i8, i8* %arrayidx11.2.i, align 1, !tbaa !23
  %conv12.2.i = zext i8 %21 to i32
  %arrayidx14.2.i = getelementptr inbounds i8, i8* %pix2, i32 66
  %22 = load i8, i8* %arrayidx14.2.i, align 1, !tbaa !23
  %conv15.2.i = zext i8 %22 to i32
  %arrayidx17.2.i = getelementptr inbounds i8, i8* %pix2, i32 67
  %23 = load i8, i8* %arrayidx17.2.i, align 1, !tbaa !23
  %conv18.2.i = zext i8 %23 to i32
  %add.2.i = add nsw i32 %add20.1.i, %conv.2.i
  %add5.2.i = add nsw i32 %add.2.i, %conv2.2.i
  %add8.2.i = add nsw i32 %add5.2.i, %conv4.2.i
  %sub.2.i = add nsw i32 %add8.2.i, %conv7.2.i
  %sub13.2.i = sub nsw i32 %sub.2.i, %conv10.2.i
  %sub16.2.i = sub nsw i32 %sub13.2.i, %conv12.2.i
  %sub19.2.i = sub nsw i32 %sub16.2.i, %conv15.2.i
  %add20.2.i = sub nsw i32 %sub19.2.i, %conv18.2.i
  %add.ptr.2.i = getelementptr inbounds i8, i8* %pix1, i32 48
  %add.ptr21.2.i = getelementptr inbounds i8, i8* %pix2, i32 96
  %24 = load i8, i8* %add.ptr.2.i, align 1, !tbaa !23
  %conv.3.i = zext i8 %24 to i32
  %arrayidx1.3.i = getelementptr inbounds i8, i8* %pix1, i32 49
  %25 = load i8, i8* %arrayidx1.3.i, align 1, !tbaa !23
  %conv2.3.i = zext i8 %25 to i32
  %arrayidx3.3.i = getelementptr inbounds i8, i8* %pix1, i32 50
  %26 = load i8, i8* %arrayidx3.3.i, align 1, !tbaa !23
  %conv4.3.i = zext i8 %26 to i32
  %arrayidx6.3.i = getelementptr inbounds i8, i8* %pix1, i32 51
  %27 = load i8, i8* %arrayidx6.3.i, align 1, !tbaa !23
  %conv7.3.i = zext i8 %27 to i32
  %28 = load i8, i8* %add.ptr21.2.i, align 1, !tbaa !23
  %conv10.3.i = zext i8 %28 to i32
  %arrayidx11.3.i = getelementptr inbounds i8, i8* %pix2, i32 97
  %29 = load i8, i8* %arrayidx11.3.i, align 1, !tbaa !23
  %conv12.3.i = zext i8 %29 to i32
  %arrayidx14.3.i = getelementptr inbounds i8, i8* %pix2, i32 98
  %30 = load i8, i8* %arrayidx14.3.i, align 1, !tbaa !23
  %conv15.3.i = zext i8 %30 to i32
  %arrayidx17.3.i = getelementptr inbounds i8, i8* %pix2, i32 99
  %31 = load i8, i8* %arrayidx17.3.i, align 1, !tbaa !23
  %conv18.3.i = zext i8 %31 to i32
  %add.3.i = add nsw i32 %add20.2.i, %conv.3.i
  %add5.3.i = add nsw i32 %add.3.i, %conv2.3.i
  %add8.3.i = add nsw i32 %add5.3.i, %conv4.3.i
  %sub.3.i = add nsw i32 %add8.3.i, %conv7.3.i
  %sub13.3.i = sub nsw i32 %sub.3.i, %conv10.3.i
  %sub16.3.i = sub nsw i32 %sub13.3.i, %conv12.3.i
  %sub19.3.i = sub nsw i32 %sub16.3.i, %conv15.3.i
  %add20.3.i = sub nsw i32 %sub19.3.i, %conv18.3.i
  %arrayidx2 = getelementptr inbounds i8, i8* %pix1, i32 4
  %arrayidx3 = getelementptr inbounds i8, i8* %pix2, i32 4
  %32 = load i8, i8* %arrayidx2, align 1, !tbaa !23
  %conv.i687 = zext i8 %32 to i32
  %arrayidx1.i688 = getelementptr inbounds i8, i8* %pix1, i32 5
  %33 = load i8, i8* %arrayidx1.i688, align 1, !tbaa !23
  %conv2.i689 = zext i8 %33 to i32
  %arrayidx3.i690 = getelementptr inbounds i8, i8* %pix1, i32 6
  %34 = load i8, i8* %arrayidx3.i690, align 1, !tbaa !23
  %conv4.i691 = zext i8 %34 to i32
  %arrayidx6.i692 = getelementptr inbounds i8, i8* %pix1, i32 7
  %35 = load i8, i8* %arrayidx6.i692, align 1, !tbaa !23
  %conv7.i693 = zext i8 %35 to i32
  %36 = load i8, i8* %arrayidx3, align 1, !tbaa !23
  %conv10.i694 = zext i8 %36 to i32
  %arrayidx11.i695 = getelementptr inbounds i8, i8* %pix2, i32 5
  %37 = load i8, i8* %arrayidx11.i695, align 1, !tbaa !23
  %conv12.i696 = zext i8 %37 to i32
  %arrayidx14.i697 = getelementptr inbounds i8, i8* %pix2, i32 6
  %38 = load i8, i8* %arrayidx14.i697, align 1, !tbaa !23
  %conv15.i698 = zext i8 %38 to i32
  %arrayidx17.i699 = getelementptr inbounds i8, i8* %pix2, i32 7
  %39 = load i8, i8* %arrayidx17.i699, align 1, !tbaa !23
  %conv18.i700 = zext i8 %39 to i32
  %add5.i701 = add nuw nsw i32 %conv2.i689, %conv.i687
  %add8.i702 = add nuw nsw i32 %add5.i701, %conv4.i691
  %sub.i703 = add nuw nsw i32 %add8.i702, %conv7.i693
  %sub13.i704 = sub nsw i32 %sub.i703, %conv10.i694
  %sub16.i705 = sub nsw i32 %sub13.i704, %conv12.i696
  %sub19.i706 = sub nsw i32 %sub16.i705, %conv15.i698
  %add20.i707 = sub nsw i32 %sub19.i706, %conv18.i700
  %add.ptr.i708 = getelementptr inbounds i8, i8* %pix1, i32 20
  %add.ptr21.i709 = getelementptr inbounds i8, i8* %pix2, i32 36
  %40 = load i8, i8* %add.ptr.i708, align 1, !tbaa !23
  %conv.1.i710 = zext i8 %40 to i32
  %arrayidx1.1.i711 = getelementptr inbounds i8, i8* %pix1, i32 21
  %41 = load i8, i8* %arrayidx1.1.i711, align 1, !tbaa !23
  %conv2.1.i712 = zext i8 %41 to i32
  %arrayidx3.1.i713 = getelementptr inbounds i8, i8* %pix1, i32 22
  %42 = load i8, i8* %arrayidx3.1.i713, align 1, !tbaa !23
  %conv4.1.i714 = zext i8 %42 to i32
  %arrayidx6.1.i715 = getelementptr inbounds i8, i8* %pix1, i32 23
  %43 = load i8, i8* %arrayidx6.1.i715, align 1, !tbaa !23
  %conv7.1.i716 = zext i8 %43 to i32
  %44 = load i8, i8* %add.ptr21.i709, align 1, !tbaa !23
  %conv10.1.i717 = zext i8 %44 to i32
  %arrayidx11.1.i718 = getelementptr inbounds i8, i8* %pix2, i32 37
  %45 = load i8, i8* %arrayidx11.1.i718, align 1, !tbaa !23
  %conv12.1.i719 = zext i8 %45 to i32
  %arrayidx14.1.i720 = getelementptr inbounds i8, i8* %pix2, i32 38
  %46 = load i8, i8* %arrayidx14.1.i720, align 1, !tbaa !23
  %conv15.1.i721 = zext i8 %46 to i32
  %arrayidx17.1.i722 = getelementptr inbounds i8, i8* %pix2, i32 39
  %47 = load i8, i8* %arrayidx17.1.i722, align 1, !tbaa !23
  %conv18.1.i723 = zext i8 %47 to i32
  %add.1.i724 = add nsw i32 %add20.i707, %conv.1.i710
  %add5.1.i725 = add nsw i32 %add.1.i724, %conv2.1.i712
  %add8.1.i726 = add nsw i32 %add5.1.i725, %conv4.1.i714
  %sub.1.i727 = add nsw i32 %add8.1.i726, %conv7.1.i716
  %sub13.1.i728 = sub nsw i32 %sub.1.i727, %conv10.1.i717
  %sub16.1.i729 = sub nsw i32 %sub13.1.i728, %conv12.1.i719
  %sub19.1.i730 = sub nsw i32 %sub16.1.i729, %conv15.1.i721
  %add20.1.i731 = sub nsw i32 %sub19.1.i730, %conv18.1.i723
  %add.ptr.1.i732 = getelementptr inbounds i8, i8* %pix1, i32 36
  %add.ptr21.1.i733 = getelementptr inbounds i8, i8* %pix2, i32 68
  %48 = load i8, i8* %add.ptr.1.i732, align 1, !tbaa !23
  %conv.2.i734 = zext i8 %48 to i32
  %arrayidx1.2.i735 = getelementptr inbounds i8, i8* %pix1, i32 37
  %49 = load i8, i8* %arrayidx1.2.i735, align 1, !tbaa !23
  %conv2.2.i736 = zext i8 %49 to i32
  %arrayidx3.2.i737 = getelementptr inbounds i8, i8* %pix1, i32 38
  %50 = load i8, i8* %arrayidx3.2.i737, align 1, !tbaa !23
  %conv4.2.i738 = zext i8 %50 to i32
  %arrayidx6.2.i739 = getelementptr inbounds i8, i8* %pix1, i32 39
  %51 = load i8, i8* %arrayidx6.2.i739, align 1, !tbaa !23
  %conv7.2.i740 = zext i8 %51 to i32
  %52 = load i8, i8* %add.ptr21.1.i733, align 1, !tbaa !23
  %conv10.2.i741 = zext i8 %52 to i32
  %arrayidx11.2.i742 = getelementptr inbounds i8, i8* %pix2, i32 69
  %53 = load i8, i8* %arrayidx11.2.i742, align 1, !tbaa !23
  %conv12.2.i743 = zext i8 %53 to i32
  %arrayidx14.2.i744 = getelementptr inbounds i8, i8* %pix2, i32 70
  %54 = load i8, i8* %arrayidx14.2.i744, align 1, !tbaa !23
  %conv15.2.i745 = zext i8 %54 to i32
  %arrayidx17.2.i746 = getelementptr inbounds i8, i8* %pix2, i32 71
  %55 = load i8, i8* %arrayidx17.2.i746, align 1, !tbaa !23
  %conv18.2.i747 = zext i8 %55 to i32
  %add.2.i748 = add nsw i32 %add20.1.i731, %conv.2.i734
  %add5.2.i749 = add nsw i32 %add.2.i748, %conv2.2.i736
  %add8.2.i750 = add nsw i32 %add5.2.i749, %conv4.2.i738
  %sub.2.i751 = add nsw i32 %add8.2.i750, %conv7.2.i740
  %sub13.2.i752 = sub nsw i32 %sub.2.i751, %conv10.2.i741
  %sub16.2.i753 = sub nsw i32 %sub13.2.i752, %conv12.2.i743
  %sub19.2.i754 = sub nsw i32 %sub16.2.i753, %conv15.2.i745
  %add20.2.i755 = sub nsw i32 %sub19.2.i754, %conv18.2.i747
  %add.ptr.2.i756 = getelementptr inbounds i8, i8* %pix1, i32 52
  %add.ptr21.2.i757 = getelementptr inbounds i8, i8* %pix2, i32 100
  %56 = load i8, i8* %add.ptr.2.i756, align 1, !tbaa !23
  %conv.3.i758 = zext i8 %56 to i32
  %arrayidx1.3.i759 = getelementptr inbounds i8, i8* %pix1, i32 53
  %57 = load i8, i8* %arrayidx1.3.i759, align 1, !tbaa !23
  %conv2.3.i760 = zext i8 %57 to i32
  %arrayidx3.3.i761 = getelementptr inbounds i8, i8* %pix1, i32 54
  %58 = load i8, i8* %arrayidx3.3.i761, align 1, !tbaa !23
  %conv4.3.i762 = zext i8 %58 to i32
  %arrayidx6.3.i763 = getelementptr inbounds i8, i8* %pix1, i32 55
  %59 = load i8, i8* %arrayidx6.3.i763, align 1, !tbaa !23
  %conv7.3.i764 = zext i8 %59 to i32
  %60 = load i8, i8* %add.ptr21.2.i757, align 1, !tbaa !23
  %conv10.3.i765 = zext i8 %60 to i32
  %arrayidx11.3.i766 = getelementptr inbounds i8, i8* %pix2, i32 101
  %61 = load i8, i8* %arrayidx11.3.i766, align 1, !tbaa !23
  %conv12.3.i767 = zext i8 %61 to i32
  %arrayidx14.3.i768 = getelementptr inbounds i8, i8* %pix2, i32 102
  %62 = load i8, i8* %arrayidx14.3.i768, align 1, !tbaa !23
  %conv15.3.i769 = zext i8 %62 to i32
  %arrayidx17.3.i770 = getelementptr inbounds i8, i8* %pix2, i32 103
  %63 = load i8, i8* %arrayidx17.3.i770, align 1, !tbaa !23
  %conv18.3.i771 = zext i8 %63 to i32
  %add.3.i772 = add nsw i32 %add20.2.i755, %conv.3.i758
  %add5.3.i773 = add nsw i32 %add.3.i772, %conv2.3.i760
  %add8.3.i774 = add nsw i32 %add5.3.i773, %conv4.3.i762
  %sub.3.i775 = add nsw i32 %add8.3.i774, %conv7.3.i764
  %sub13.3.i776 = sub nsw i32 %sub.3.i775, %conv10.3.i765
  %sub16.3.i777 = sub nsw i32 %sub13.3.i776, %conv12.3.i767
  %sub19.3.i778 = sub nsw i32 %sub16.3.i777, %conv15.3.i769
  %add20.3.i779 = sub nsw i32 %sub19.3.i778, %conv18.3.i771
  %arrayidx5 = getelementptr inbounds i8, i8* %pix1, i32 64
  %arrayidx6 = getelementptr inbounds i8, i8* %pix2, i32 128
  %64 = load i8, i8* %arrayidx5, align 1, !tbaa !23
  %conv.i594 = zext i8 %64 to i32
  %arrayidx1.i595 = getelementptr inbounds i8, i8* %pix1, i32 65
  %65 = load i8, i8* %arrayidx1.i595, align 1, !tbaa !23
  %conv2.i596 = zext i8 %65 to i32
  %arrayidx3.i597 = getelementptr inbounds i8, i8* %pix1, i32 66
  %66 = load i8, i8* %arrayidx3.i597, align 1, !tbaa !23
  %conv4.i598 = zext i8 %66 to i32
  %arrayidx6.i599 = getelementptr inbounds i8, i8* %pix1, i32 67
  %67 = load i8, i8* %arrayidx6.i599, align 1, !tbaa !23
  %conv7.i600 = zext i8 %67 to i32
  %68 = load i8, i8* %arrayidx6, align 1, !tbaa !23
  %conv10.i601 = zext i8 %68 to i32
  %arrayidx11.i602 = getelementptr inbounds i8, i8* %pix2, i32 129
  %69 = load i8, i8* %arrayidx11.i602, align 1, !tbaa !23
  %conv12.i603 = zext i8 %69 to i32
  %arrayidx14.i604 = getelementptr inbounds i8, i8* %pix2, i32 130
  %70 = load i8, i8* %arrayidx14.i604, align 1, !tbaa !23
  %conv15.i605 = zext i8 %70 to i32
  %arrayidx17.i606 = getelementptr inbounds i8, i8* %pix2, i32 131
  %71 = load i8, i8* %arrayidx17.i606, align 1, !tbaa !23
  %conv18.i607 = zext i8 %71 to i32
  %add5.i608 = add nuw nsw i32 %conv2.i596, %conv.i594
  %add8.i609 = add nuw nsw i32 %add5.i608, %conv4.i598
  %sub.i610 = add nuw nsw i32 %add8.i609, %conv7.i600
  %sub13.i611 = sub nsw i32 %sub.i610, %conv10.i601
  %sub16.i612 = sub nsw i32 %sub13.i611, %conv12.i603
  %sub19.i613 = sub nsw i32 %sub16.i612, %conv15.i605
  %add20.i614 = sub nsw i32 %sub19.i613, %conv18.i607
  %add.ptr.i615 = getelementptr inbounds i8, i8* %pix1, i32 80
  %add.ptr21.i616 = getelementptr inbounds i8, i8* %pix2, i32 160
  %72 = load i8, i8* %add.ptr.i615, align 1, !tbaa !23
  %conv.1.i617 = zext i8 %72 to i32
  %arrayidx1.1.i618 = getelementptr inbounds i8, i8* %pix1, i32 81
  %73 = load i8, i8* %arrayidx1.1.i618, align 1, !tbaa !23
  %conv2.1.i619 = zext i8 %73 to i32
  %arrayidx3.1.i620 = getelementptr inbounds i8, i8* %pix1, i32 82
  %74 = load i8, i8* %arrayidx3.1.i620, align 1, !tbaa !23
  %conv4.1.i621 = zext i8 %74 to i32
  %arrayidx6.1.i622 = getelementptr inbounds i8, i8* %pix1, i32 83
  %75 = load i8, i8* %arrayidx6.1.i622, align 1, !tbaa !23
  %conv7.1.i623 = zext i8 %75 to i32
  %76 = load i8, i8* %add.ptr21.i616, align 1, !tbaa !23
  %conv10.1.i624 = zext i8 %76 to i32
  %arrayidx11.1.i625 = getelementptr inbounds i8, i8* %pix2, i32 161
  %77 = load i8, i8* %arrayidx11.1.i625, align 1, !tbaa !23
  %conv12.1.i626 = zext i8 %77 to i32
  %arrayidx14.1.i627 = getelementptr inbounds i8, i8* %pix2, i32 162
  %78 = load i8, i8* %arrayidx14.1.i627, align 1, !tbaa !23
  %conv15.1.i628 = zext i8 %78 to i32
  %arrayidx17.1.i629 = getelementptr inbounds i8, i8* %pix2, i32 163
  %79 = load i8, i8* %arrayidx17.1.i629, align 1, !tbaa !23
  %conv18.1.i630 = zext i8 %79 to i32
  %add.1.i631 = add nsw i32 %add20.i614, %conv.1.i617
  %add5.1.i632 = add nsw i32 %add.1.i631, %conv2.1.i619
  %add8.1.i633 = add nsw i32 %add5.1.i632, %conv4.1.i621
  %sub.1.i634 = add nsw i32 %add8.1.i633, %conv7.1.i623
  %sub13.1.i635 = sub nsw i32 %sub.1.i634, %conv10.1.i624
  %sub16.1.i636 = sub nsw i32 %sub13.1.i635, %conv12.1.i626
  %sub19.1.i637 = sub nsw i32 %sub16.1.i636, %conv15.1.i628
  %add20.1.i638 = sub nsw i32 %sub19.1.i637, %conv18.1.i630
  %add.ptr.1.i639 = getelementptr inbounds i8, i8* %pix1, i32 96
  %add.ptr21.1.i640 = getelementptr inbounds i8, i8* %pix2, i32 192
  %80 = load i8, i8* %add.ptr.1.i639, align 1, !tbaa !23
  %conv.2.i641 = zext i8 %80 to i32
  %arrayidx1.2.i642 = getelementptr inbounds i8, i8* %pix1, i32 97
  %81 = load i8, i8* %arrayidx1.2.i642, align 1, !tbaa !23
  %conv2.2.i643 = zext i8 %81 to i32
  %arrayidx3.2.i644 = getelementptr inbounds i8, i8* %pix1, i32 98
  %82 = load i8, i8* %arrayidx3.2.i644, align 1, !tbaa !23
  %conv4.2.i645 = zext i8 %82 to i32
  %arrayidx6.2.i646 = getelementptr inbounds i8, i8* %pix1, i32 99
  %83 = load i8, i8* %arrayidx6.2.i646, align 1, !tbaa !23
  %conv7.2.i647 = zext i8 %83 to i32
  %84 = load i8, i8* %add.ptr21.1.i640, align 1, !tbaa !23
  %conv10.2.i648 = zext i8 %84 to i32
  %arrayidx11.2.i649 = getelementptr inbounds i8, i8* %pix2, i32 193
  %85 = load i8, i8* %arrayidx11.2.i649, align 1, !tbaa !23
  %conv12.2.i650 = zext i8 %85 to i32
  %arrayidx14.2.i651 = getelementptr inbounds i8, i8* %pix2, i32 194
  %86 = load i8, i8* %arrayidx14.2.i651, align 1, !tbaa !23
  %conv15.2.i652 = zext i8 %86 to i32
  %arrayidx17.2.i653 = getelementptr inbounds i8, i8* %pix2, i32 195
  %87 = load i8, i8* %arrayidx17.2.i653, align 1, !tbaa !23
  %conv18.2.i654 = zext i8 %87 to i32
  %add.2.i655 = add nsw i32 %add20.1.i638, %conv.2.i641
  %add5.2.i656 = add nsw i32 %add.2.i655, %conv2.2.i643
  %add8.2.i657 = add nsw i32 %add5.2.i656, %conv4.2.i645
  %sub.2.i658 = add nsw i32 %add8.2.i657, %conv7.2.i647
  %sub13.2.i659 = sub nsw i32 %sub.2.i658, %conv10.2.i648
  %sub16.2.i660 = sub nsw i32 %sub13.2.i659, %conv12.2.i650
  %sub19.2.i661 = sub nsw i32 %sub16.2.i660, %conv15.2.i652
  %add20.2.i662 = sub nsw i32 %sub19.2.i661, %conv18.2.i654
  %add.ptr.2.i663 = getelementptr inbounds i8, i8* %pix1, i32 112
  %add.ptr21.2.i664 = getelementptr inbounds i8, i8* %pix2, i32 224
  %88 = load i8, i8* %add.ptr.2.i663, align 1, !tbaa !23
  %conv.3.i665 = zext i8 %88 to i32
  %arrayidx1.3.i666 = getelementptr inbounds i8, i8* %pix1, i32 113
  %89 = load i8, i8* %arrayidx1.3.i666, align 1, !tbaa !23
  %conv2.3.i667 = zext i8 %89 to i32
  %arrayidx3.3.i668 = getelementptr inbounds i8, i8* %pix1, i32 114
  %90 = load i8, i8* %arrayidx3.3.i668, align 1, !tbaa !23
  %conv4.3.i669 = zext i8 %90 to i32
  %arrayidx6.3.i670 = getelementptr inbounds i8, i8* %pix1, i32 115
  %91 = load i8, i8* %arrayidx6.3.i670, align 1, !tbaa !23
  %conv7.3.i671 = zext i8 %91 to i32
  %92 = load i8, i8* %add.ptr21.2.i664, align 1, !tbaa !23
  %conv10.3.i672 = zext i8 %92 to i32
  %arrayidx11.3.i673 = getelementptr inbounds i8, i8* %pix2, i32 225
  %93 = load i8, i8* %arrayidx11.3.i673, align 1, !tbaa !23
  %conv12.3.i674 = zext i8 %93 to i32
  %arrayidx14.3.i675 = getelementptr inbounds i8, i8* %pix2, i32 226
  %94 = load i8, i8* %arrayidx14.3.i675, align 1, !tbaa !23
  %conv15.3.i676 = zext i8 %94 to i32
  %arrayidx17.3.i677 = getelementptr inbounds i8, i8* %pix2, i32 227
  %95 = load i8, i8* %arrayidx17.3.i677, align 1, !tbaa !23
  %conv18.3.i678 = zext i8 %95 to i32
  %add.3.i679 = add nsw i32 %add20.2.i662, %conv.3.i665
  %add5.3.i680 = add nsw i32 %add.3.i679, %conv2.3.i667
  %add8.3.i681 = add nsw i32 %add5.3.i680, %conv4.3.i669
  %sub.3.i682 = add nsw i32 %add8.3.i681, %conv7.3.i671
  %sub13.3.i683 = sub nsw i32 %sub.3.i682, %conv10.3.i672
  %sub16.3.i684 = sub nsw i32 %sub13.3.i683, %conv12.3.i674
  %sub19.3.i685 = sub nsw i32 %sub16.3.i684, %conv15.3.i676
  %add20.3.i686 = sub nsw i32 %sub19.3.i685, %conv18.3.i678
  %arrayidx8 = getelementptr inbounds i8, i8* %pix1, i32 68
  %arrayidx9 = getelementptr inbounds i8, i8* %pix2, i32 132
  %96 = load i8, i8* %arrayidx8, align 1, !tbaa !23
  %conv.i501 = zext i8 %96 to i32
  %arrayidx1.i502 = getelementptr inbounds i8, i8* %pix1, i32 69
  %97 = load i8, i8* %arrayidx1.i502, align 1, !tbaa !23
  %conv2.i503 = zext i8 %97 to i32
  %arrayidx3.i504 = getelementptr inbounds i8, i8* %pix1, i32 70
  %98 = load i8, i8* %arrayidx3.i504, align 1, !tbaa !23
  %conv4.i505 = zext i8 %98 to i32
  %arrayidx6.i506 = getelementptr inbounds i8, i8* %pix1, i32 71
  %99 = load i8, i8* %arrayidx6.i506, align 1, !tbaa !23
  %conv7.i507 = zext i8 %99 to i32
  %100 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10.i508 = zext i8 %100 to i32
  %arrayidx11.i509 = getelementptr inbounds i8, i8* %pix2, i32 133
  %101 = load i8, i8* %arrayidx11.i509, align 1, !tbaa !23
  %conv12.i510 = zext i8 %101 to i32
  %arrayidx14.i511 = getelementptr inbounds i8, i8* %pix2, i32 134
  %102 = load i8, i8* %arrayidx14.i511, align 1, !tbaa !23
  %conv15.i512 = zext i8 %102 to i32
  %arrayidx17.i513 = getelementptr inbounds i8, i8* %pix2, i32 135
  %103 = load i8, i8* %arrayidx17.i513, align 1, !tbaa !23
  %conv18.i514 = zext i8 %103 to i32
  %add5.i515 = add nuw nsw i32 %conv2.i503, %conv.i501
  %add8.i516 = add nuw nsw i32 %add5.i515, %conv4.i505
  %sub.i517 = add nuw nsw i32 %add8.i516, %conv7.i507
  %sub13.i518 = sub nsw i32 %sub.i517, %conv10.i508
  %sub16.i519 = sub nsw i32 %sub13.i518, %conv12.i510
  %sub19.i520 = sub nsw i32 %sub16.i519, %conv15.i512
  %add20.i521 = sub nsw i32 %sub19.i520, %conv18.i514
  %add.ptr.i522 = getelementptr inbounds i8, i8* %pix1, i32 84
  %add.ptr21.i523 = getelementptr inbounds i8, i8* %pix2, i32 164
  %104 = load i8, i8* %add.ptr.i522, align 1, !tbaa !23
  %conv.1.i524 = zext i8 %104 to i32
  %arrayidx1.1.i525 = getelementptr inbounds i8, i8* %pix1, i32 85
  %105 = load i8, i8* %arrayidx1.1.i525, align 1, !tbaa !23
  %conv2.1.i526 = zext i8 %105 to i32
  %arrayidx3.1.i527 = getelementptr inbounds i8, i8* %pix1, i32 86
  %106 = load i8, i8* %arrayidx3.1.i527, align 1, !tbaa !23
  %conv4.1.i528 = zext i8 %106 to i32
  %arrayidx6.1.i529 = getelementptr inbounds i8, i8* %pix1, i32 87
  %107 = load i8, i8* %arrayidx6.1.i529, align 1, !tbaa !23
  %conv7.1.i530 = zext i8 %107 to i32
  %108 = load i8, i8* %add.ptr21.i523, align 1, !tbaa !23
  %conv10.1.i531 = zext i8 %108 to i32
  %arrayidx11.1.i532 = getelementptr inbounds i8, i8* %pix2, i32 165
  %109 = load i8, i8* %arrayidx11.1.i532, align 1, !tbaa !23
  %conv12.1.i533 = zext i8 %109 to i32
  %arrayidx14.1.i534 = getelementptr inbounds i8, i8* %pix2, i32 166
  %110 = load i8, i8* %arrayidx14.1.i534, align 1, !tbaa !23
  %conv15.1.i535 = zext i8 %110 to i32
  %arrayidx17.1.i536 = getelementptr inbounds i8, i8* %pix2, i32 167
  %111 = load i8, i8* %arrayidx17.1.i536, align 1, !tbaa !23
  %conv18.1.i537 = zext i8 %111 to i32
  %add.1.i538 = add nsw i32 %add20.i521, %conv.1.i524
  %add5.1.i539 = add nsw i32 %add.1.i538, %conv2.1.i526
  %add8.1.i540 = add nsw i32 %add5.1.i539, %conv4.1.i528
  %sub.1.i541 = add nsw i32 %add8.1.i540, %conv7.1.i530
  %sub13.1.i542 = sub nsw i32 %sub.1.i541, %conv10.1.i531
  %sub16.1.i543 = sub nsw i32 %sub13.1.i542, %conv12.1.i533
  %sub19.1.i544 = sub nsw i32 %sub16.1.i543, %conv15.1.i535
  %add20.1.i545 = sub nsw i32 %sub19.1.i544, %conv18.1.i537
  %add.ptr.1.i546 = getelementptr inbounds i8, i8* %pix1, i32 100
  %add.ptr21.1.i547 = getelementptr inbounds i8, i8* %pix2, i32 196
  %112 = load i8, i8* %add.ptr.1.i546, align 1, !tbaa !23
  %conv.2.i548 = zext i8 %112 to i32
  %arrayidx1.2.i549 = getelementptr inbounds i8, i8* %pix1, i32 101
  %113 = load i8, i8* %arrayidx1.2.i549, align 1, !tbaa !23
  %conv2.2.i550 = zext i8 %113 to i32
  %arrayidx3.2.i551 = getelementptr inbounds i8, i8* %pix1, i32 102
  %114 = load i8, i8* %arrayidx3.2.i551, align 1, !tbaa !23
  %conv4.2.i552 = zext i8 %114 to i32
  %arrayidx6.2.i553 = getelementptr inbounds i8, i8* %pix1, i32 103
  %115 = load i8, i8* %arrayidx6.2.i553, align 1, !tbaa !23
  %conv7.2.i554 = zext i8 %115 to i32
  %116 = load i8, i8* %add.ptr21.1.i547, align 1, !tbaa !23
  %conv10.2.i555 = zext i8 %116 to i32
  %arrayidx11.2.i556 = getelementptr inbounds i8, i8* %pix2, i32 197
  %117 = load i8, i8* %arrayidx11.2.i556, align 1, !tbaa !23
  %conv12.2.i557 = zext i8 %117 to i32
  %arrayidx14.2.i558 = getelementptr inbounds i8, i8* %pix2, i32 198
  %118 = load i8, i8* %arrayidx14.2.i558, align 1, !tbaa !23
  %conv15.2.i559 = zext i8 %118 to i32
  %arrayidx17.2.i560 = getelementptr inbounds i8, i8* %pix2, i32 199
  %119 = load i8, i8* %arrayidx17.2.i560, align 1, !tbaa !23
  %conv18.2.i561 = zext i8 %119 to i32
  %add.2.i562 = add nsw i32 %add20.1.i545, %conv.2.i548
  %add5.2.i563 = add nsw i32 %add.2.i562, %conv2.2.i550
  %add8.2.i564 = add nsw i32 %add5.2.i563, %conv4.2.i552
  %sub.2.i565 = add nsw i32 %add8.2.i564, %conv7.2.i554
  %sub13.2.i566 = sub nsw i32 %sub.2.i565, %conv10.2.i555
  %sub16.2.i567 = sub nsw i32 %sub13.2.i566, %conv12.2.i557
  %sub19.2.i568 = sub nsw i32 %sub16.2.i567, %conv15.2.i559
  %add20.2.i569 = sub nsw i32 %sub19.2.i568, %conv18.2.i561
  %add.ptr.2.i570 = getelementptr inbounds i8, i8* %pix1, i32 116
  %add.ptr21.2.i571 = getelementptr inbounds i8, i8* %pix2, i32 228
  %120 = load i8, i8* %add.ptr.2.i570, align 1, !tbaa !23
  %conv.3.i572 = zext i8 %120 to i32
  %arrayidx1.3.i573 = getelementptr inbounds i8, i8* %pix1, i32 117
  %121 = load i8, i8* %arrayidx1.3.i573, align 1, !tbaa !23
  %conv2.3.i574 = zext i8 %121 to i32
  %arrayidx3.3.i575 = getelementptr inbounds i8, i8* %pix1, i32 118
  %122 = load i8, i8* %arrayidx3.3.i575, align 1, !tbaa !23
  %conv4.3.i576 = zext i8 %122 to i32
  %arrayidx6.3.i577 = getelementptr inbounds i8, i8* %pix1, i32 119
  %123 = load i8, i8* %arrayidx6.3.i577, align 1, !tbaa !23
  %conv7.3.i578 = zext i8 %123 to i32
  %124 = load i8, i8* %add.ptr21.2.i571, align 1, !tbaa !23
  %conv10.3.i579 = zext i8 %124 to i32
  %arrayidx11.3.i580 = getelementptr inbounds i8, i8* %pix2, i32 229
  %125 = load i8, i8* %arrayidx11.3.i580, align 1, !tbaa !23
  %conv12.3.i581 = zext i8 %125 to i32
  %arrayidx14.3.i582 = getelementptr inbounds i8, i8* %pix2, i32 230
  %126 = load i8, i8* %arrayidx14.3.i582, align 1, !tbaa !23
  %conv15.3.i583 = zext i8 %126 to i32
  %arrayidx17.3.i584 = getelementptr inbounds i8, i8* %pix2, i32 231
  %127 = load i8, i8* %arrayidx17.3.i584, align 1, !tbaa !23
  %conv18.3.i585 = zext i8 %127 to i32
  %add.3.i586 = add nsw i32 %add20.2.i569, %conv.3.i572
  %add5.3.i587 = add nsw i32 %add.3.i586, %conv2.3.i574
  %add8.3.i588 = add nsw i32 %add5.3.i587, %conv4.3.i576
  %sub.3.i589 = add nsw i32 %add8.3.i588, %conv7.3.i578
  %sub13.3.i590 = sub nsw i32 %sub.3.i589, %conv10.3.i579
  %sub16.3.i591 = sub nsw i32 %sub13.3.i590, %conv12.3.i581
  %sub19.3.i592 = sub nsw i32 %sub16.3.i591, %conv15.3.i583
  %add20.3.i593 = sub nsw i32 %sub19.3.i592, %conv18.3.i585
  %arrayidx11 = getelementptr inbounds i8, i8* %pix1, i32 128
  %arrayidx12 = getelementptr inbounds i8, i8* %pix2, i32 256
  %128 = load i8, i8* %arrayidx11, align 1, !tbaa !23
  %conv.i408 = zext i8 %128 to i32
  %arrayidx1.i409 = getelementptr inbounds i8, i8* %pix1, i32 129
  %129 = load i8, i8* %arrayidx1.i409, align 1, !tbaa !23
  %conv2.i410 = zext i8 %129 to i32
  %arrayidx3.i411 = getelementptr inbounds i8, i8* %pix1, i32 130
  %130 = load i8, i8* %arrayidx3.i411, align 1, !tbaa !23
  %conv4.i412 = zext i8 %130 to i32
  %arrayidx6.i413 = getelementptr inbounds i8, i8* %pix1, i32 131
  %131 = load i8, i8* %arrayidx6.i413, align 1, !tbaa !23
  %conv7.i414 = zext i8 %131 to i32
  %132 = load i8, i8* %arrayidx12, align 1, !tbaa !23
  %conv10.i415 = zext i8 %132 to i32
  %arrayidx11.i416 = getelementptr inbounds i8, i8* %pix2, i32 257
  %133 = load i8, i8* %arrayidx11.i416, align 1, !tbaa !23
  %conv12.i417 = zext i8 %133 to i32
  %arrayidx14.i418 = getelementptr inbounds i8, i8* %pix2, i32 258
  %134 = load i8, i8* %arrayidx14.i418, align 1, !tbaa !23
  %conv15.i419 = zext i8 %134 to i32
  %arrayidx17.i420 = getelementptr inbounds i8, i8* %pix2, i32 259
  %135 = load i8, i8* %arrayidx17.i420, align 1, !tbaa !23
  %conv18.i421 = zext i8 %135 to i32
  %add5.i422 = add nuw nsw i32 %conv2.i410, %conv.i408
  %add8.i423 = add nuw nsw i32 %add5.i422, %conv4.i412
  %sub.i424 = add nuw nsw i32 %add8.i423, %conv7.i414
  %sub13.i425 = sub nsw i32 %sub.i424, %conv10.i415
  %sub16.i426 = sub nsw i32 %sub13.i425, %conv12.i417
  %sub19.i427 = sub nsw i32 %sub16.i426, %conv15.i419
  %add20.i428 = sub nsw i32 %sub19.i427, %conv18.i421
  %add.ptr.i429 = getelementptr inbounds i8, i8* %pix1, i32 144
  %add.ptr21.i430 = getelementptr inbounds i8, i8* %pix2, i32 288
  %136 = load i8, i8* %add.ptr.i429, align 1, !tbaa !23
  %conv.1.i431 = zext i8 %136 to i32
  %arrayidx1.1.i432 = getelementptr inbounds i8, i8* %pix1, i32 145
  %137 = load i8, i8* %arrayidx1.1.i432, align 1, !tbaa !23
  %conv2.1.i433 = zext i8 %137 to i32
  %arrayidx3.1.i434 = getelementptr inbounds i8, i8* %pix1, i32 146
  %138 = load i8, i8* %arrayidx3.1.i434, align 1, !tbaa !23
  %conv4.1.i435 = zext i8 %138 to i32
  %arrayidx6.1.i436 = getelementptr inbounds i8, i8* %pix1, i32 147
  %139 = load i8, i8* %arrayidx6.1.i436, align 1, !tbaa !23
  %conv7.1.i437 = zext i8 %139 to i32
  %140 = load i8, i8* %add.ptr21.i430, align 1, !tbaa !23
  %conv10.1.i438 = zext i8 %140 to i32
  %arrayidx11.1.i439 = getelementptr inbounds i8, i8* %pix2, i32 289
  %141 = load i8, i8* %arrayidx11.1.i439, align 1, !tbaa !23
  %conv12.1.i440 = zext i8 %141 to i32
  %arrayidx14.1.i441 = getelementptr inbounds i8, i8* %pix2, i32 290
  %142 = load i8, i8* %arrayidx14.1.i441, align 1, !tbaa !23
  %conv15.1.i442 = zext i8 %142 to i32
  %arrayidx17.1.i443 = getelementptr inbounds i8, i8* %pix2, i32 291
  %143 = load i8, i8* %arrayidx17.1.i443, align 1, !tbaa !23
  %conv18.1.i444 = zext i8 %143 to i32
  %add.1.i445 = add nsw i32 %add20.i428, %conv.1.i431
  %add5.1.i446 = add nsw i32 %add.1.i445, %conv2.1.i433
  %add8.1.i447 = add nsw i32 %add5.1.i446, %conv4.1.i435
  %sub.1.i448 = add nsw i32 %add8.1.i447, %conv7.1.i437
  %sub13.1.i449 = sub nsw i32 %sub.1.i448, %conv10.1.i438
  %sub16.1.i450 = sub nsw i32 %sub13.1.i449, %conv12.1.i440
  %sub19.1.i451 = sub nsw i32 %sub16.1.i450, %conv15.1.i442
  %add20.1.i452 = sub nsw i32 %sub19.1.i451, %conv18.1.i444
  %add.ptr.1.i453 = getelementptr inbounds i8, i8* %pix1, i32 160
  %add.ptr21.1.i454 = getelementptr inbounds i8, i8* %pix2, i32 320
  %144 = load i8, i8* %add.ptr.1.i453, align 1, !tbaa !23
  %conv.2.i455 = zext i8 %144 to i32
  %arrayidx1.2.i456 = getelementptr inbounds i8, i8* %pix1, i32 161
  %145 = load i8, i8* %arrayidx1.2.i456, align 1, !tbaa !23
  %conv2.2.i457 = zext i8 %145 to i32
  %arrayidx3.2.i458 = getelementptr inbounds i8, i8* %pix1, i32 162
  %146 = load i8, i8* %arrayidx3.2.i458, align 1, !tbaa !23
  %conv4.2.i459 = zext i8 %146 to i32
  %arrayidx6.2.i460 = getelementptr inbounds i8, i8* %pix1, i32 163
  %147 = load i8, i8* %arrayidx6.2.i460, align 1, !tbaa !23
  %conv7.2.i461 = zext i8 %147 to i32
  %148 = load i8, i8* %add.ptr21.1.i454, align 1, !tbaa !23
  %conv10.2.i462 = zext i8 %148 to i32
  %arrayidx11.2.i463 = getelementptr inbounds i8, i8* %pix2, i32 321
  %149 = load i8, i8* %arrayidx11.2.i463, align 1, !tbaa !23
  %conv12.2.i464 = zext i8 %149 to i32
  %arrayidx14.2.i465 = getelementptr inbounds i8, i8* %pix2, i32 322
  %150 = load i8, i8* %arrayidx14.2.i465, align 1, !tbaa !23
  %conv15.2.i466 = zext i8 %150 to i32
  %arrayidx17.2.i467 = getelementptr inbounds i8, i8* %pix2, i32 323
  %151 = load i8, i8* %arrayidx17.2.i467, align 1, !tbaa !23
  %conv18.2.i468 = zext i8 %151 to i32
  %add.2.i469 = add nsw i32 %add20.1.i452, %conv.2.i455
  %add5.2.i470 = add nsw i32 %add.2.i469, %conv2.2.i457
  %add8.2.i471 = add nsw i32 %add5.2.i470, %conv4.2.i459
  %sub.2.i472 = add nsw i32 %add8.2.i471, %conv7.2.i461
  %sub13.2.i473 = sub nsw i32 %sub.2.i472, %conv10.2.i462
  %sub16.2.i474 = sub nsw i32 %sub13.2.i473, %conv12.2.i464
  %sub19.2.i475 = sub nsw i32 %sub16.2.i474, %conv15.2.i466
  %add20.2.i476 = sub nsw i32 %sub19.2.i475, %conv18.2.i468
  %add.ptr.2.i477 = getelementptr inbounds i8, i8* %pix1, i32 176
  %add.ptr21.2.i478 = getelementptr inbounds i8, i8* %pix2, i32 352
  %152 = load i8, i8* %add.ptr.2.i477, align 1, !tbaa !23
  %conv.3.i479 = zext i8 %152 to i32
  %arrayidx1.3.i480 = getelementptr inbounds i8, i8* %pix1, i32 177
  %153 = load i8, i8* %arrayidx1.3.i480, align 1, !tbaa !23
  %conv2.3.i481 = zext i8 %153 to i32
  %arrayidx3.3.i482 = getelementptr inbounds i8, i8* %pix1, i32 178
  %154 = load i8, i8* %arrayidx3.3.i482, align 1, !tbaa !23
  %conv4.3.i483 = zext i8 %154 to i32
  %arrayidx6.3.i484 = getelementptr inbounds i8, i8* %pix1, i32 179
  %155 = load i8, i8* %arrayidx6.3.i484, align 1, !tbaa !23
  %conv7.3.i485 = zext i8 %155 to i32
  %156 = load i8, i8* %add.ptr21.2.i478, align 1, !tbaa !23
  %conv10.3.i486 = zext i8 %156 to i32
  %arrayidx11.3.i487 = getelementptr inbounds i8, i8* %pix2, i32 353
  %157 = load i8, i8* %arrayidx11.3.i487, align 1, !tbaa !23
  %conv12.3.i488 = zext i8 %157 to i32
  %arrayidx14.3.i489 = getelementptr inbounds i8, i8* %pix2, i32 354
  %158 = load i8, i8* %arrayidx14.3.i489, align 1, !tbaa !23
  %conv15.3.i490 = zext i8 %158 to i32
  %arrayidx17.3.i491 = getelementptr inbounds i8, i8* %pix2, i32 355
  %159 = load i8, i8* %arrayidx17.3.i491, align 1, !tbaa !23
  %conv18.3.i492 = zext i8 %159 to i32
  %add.3.i493 = add nsw i32 %add20.2.i476, %conv.3.i479
  %add5.3.i494 = add nsw i32 %add.3.i493, %conv2.3.i481
  %add8.3.i495 = add nsw i32 %add5.3.i494, %conv4.3.i483
  %sub.3.i496 = add nsw i32 %add8.3.i495, %conv7.3.i485
  %sub13.3.i497 = sub nsw i32 %sub.3.i496, %conv10.3.i486
  %sub16.3.i498 = sub nsw i32 %sub13.3.i497, %conv12.3.i488
  %sub19.3.i499 = sub nsw i32 %sub16.3.i498, %conv15.3.i490
  %add20.3.i500 = sub nsw i32 %sub19.3.i499, %conv18.3.i492
  %arrayidx14 = getelementptr inbounds i8, i8* %pix1, i32 132
  %arrayidx15 = getelementptr inbounds i8, i8* %pix2, i32 260
  %160 = load i8, i8* %arrayidx14, align 1, !tbaa !23
  %conv.i315 = zext i8 %160 to i32
  %arrayidx1.i316 = getelementptr inbounds i8, i8* %pix1, i32 133
  %161 = load i8, i8* %arrayidx1.i316, align 1, !tbaa !23
  %conv2.i317 = zext i8 %161 to i32
  %arrayidx3.i318 = getelementptr inbounds i8, i8* %pix1, i32 134
  %162 = load i8, i8* %arrayidx3.i318, align 1, !tbaa !23
  %conv4.i319 = zext i8 %162 to i32
  %arrayidx6.i320 = getelementptr inbounds i8, i8* %pix1, i32 135
  %163 = load i8, i8* %arrayidx6.i320, align 1, !tbaa !23
  %conv7.i321 = zext i8 %163 to i32
  %164 = load i8, i8* %arrayidx15, align 1, !tbaa !23
  %conv10.i322 = zext i8 %164 to i32
  %arrayidx11.i323 = getelementptr inbounds i8, i8* %pix2, i32 261
  %165 = load i8, i8* %arrayidx11.i323, align 1, !tbaa !23
  %conv12.i324 = zext i8 %165 to i32
  %arrayidx14.i325 = getelementptr inbounds i8, i8* %pix2, i32 262
  %166 = load i8, i8* %arrayidx14.i325, align 1, !tbaa !23
  %conv15.i326 = zext i8 %166 to i32
  %arrayidx17.i327 = getelementptr inbounds i8, i8* %pix2, i32 263
  %167 = load i8, i8* %arrayidx17.i327, align 1, !tbaa !23
  %conv18.i328 = zext i8 %167 to i32
  %add5.i329 = add nuw nsw i32 %conv2.i317, %conv.i315
  %add8.i330 = add nuw nsw i32 %add5.i329, %conv4.i319
  %sub.i331 = add nuw nsw i32 %add8.i330, %conv7.i321
  %sub13.i332 = sub nsw i32 %sub.i331, %conv10.i322
  %sub16.i333 = sub nsw i32 %sub13.i332, %conv12.i324
  %sub19.i334 = sub nsw i32 %sub16.i333, %conv15.i326
  %add20.i335 = sub nsw i32 %sub19.i334, %conv18.i328
  %add.ptr.i336 = getelementptr inbounds i8, i8* %pix1, i32 148
  %add.ptr21.i337 = getelementptr inbounds i8, i8* %pix2, i32 292
  %168 = load i8, i8* %add.ptr.i336, align 1, !tbaa !23
  %conv.1.i338 = zext i8 %168 to i32
  %arrayidx1.1.i339 = getelementptr inbounds i8, i8* %pix1, i32 149
  %169 = load i8, i8* %arrayidx1.1.i339, align 1, !tbaa !23
  %conv2.1.i340 = zext i8 %169 to i32
  %arrayidx3.1.i341 = getelementptr inbounds i8, i8* %pix1, i32 150
  %170 = load i8, i8* %arrayidx3.1.i341, align 1, !tbaa !23
  %conv4.1.i342 = zext i8 %170 to i32
  %arrayidx6.1.i343 = getelementptr inbounds i8, i8* %pix1, i32 151
  %171 = load i8, i8* %arrayidx6.1.i343, align 1, !tbaa !23
  %conv7.1.i344 = zext i8 %171 to i32
  %172 = load i8, i8* %add.ptr21.i337, align 1, !tbaa !23
  %conv10.1.i345 = zext i8 %172 to i32
  %arrayidx11.1.i346 = getelementptr inbounds i8, i8* %pix2, i32 293
  %173 = load i8, i8* %arrayidx11.1.i346, align 1, !tbaa !23
  %conv12.1.i347 = zext i8 %173 to i32
  %arrayidx14.1.i348 = getelementptr inbounds i8, i8* %pix2, i32 294
  %174 = load i8, i8* %arrayidx14.1.i348, align 1, !tbaa !23
  %conv15.1.i349 = zext i8 %174 to i32
  %arrayidx17.1.i350 = getelementptr inbounds i8, i8* %pix2, i32 295
  %175 = load i8, i8* %arrayidx17.1.i350, align 1, !tbaa !23
  %conv18.1.i351 = zext i8 %175 to i32
  %add.1.i352 = add nsw i32 %add20.i335, %conv.1.i338
  %add5.1.i353 = add nsw i32 %add.1.i352, %conv2.1.i340
  %add8.1.i354 = add nsw i32 %add5.1.i353, %conv4.1.i342
  %sub.1.i355 = add nsw i32 %add8.1.i354, %conv7.1.i344
  %sub13.1.i356 = sub nsw i32 %sub.1.i355, %conv10.1.i345
  %sub16.1.i357 = sub nsw i32 %sub13.1.i356, %conv12.1.i347
  %sub19.1.i358 = sub nsw i32 %sub16.1.i357, %conv15.1.i349
  %add20.1.i359 = sub nsw i32 %sub19.1.i358, %conv18.1.i351
  %add.ptr.1.i360 = getelementptr inbounds i8, i8* %pix1, i32 164
  %add.ptr21.1.i361 = getelementptr inbounds i8, i8* %pix2, i32 324
  %176 = load i8, i8* %add.ptr.1.i360, align 1, !tbaa !23
  %conv.2.i362 = zext i8 %176 to i32
  %arrayidx1.2.i363 = getelementptr inbounds i8, i8* %pix1, i32 165
  %177 = load i8, i8* %arrayidx1.2.i363, align 1, !tbaa !23
  %conv2.2.i364 = zext i8 %177 to i32
  %arrayidx3.2.i365 = getelementptr inbounds i8, i8* %pix1, i32 166
  %178 = load i8, i8* %arrayidx3.2.i365, align 1, !tbaa !23
  %conv4.2.i366 = zext i8 %178 to i32
  %arrayidx6.2.i367 = getelementptr inbounds i8, i8* %pix1, i32 167
  %179 = load i8, i8* %arrayidx6.2.i367, align 1, !tbaa !23
  %conv7.2.i368 = zext i8 %179 to i32
  %180 = load i8, i8* %add.ptr21.1.i361, align 1, !tbaa !23
  %conv10.2.i369 = zext i8 %180 to i32
  %arrayidx11.2.i370 = getelementptr inbounds i8, i8* %pix2, i32 325
  %181 = load i8, i8* %arrayidx11.2.i370, align 1, !tbaa !23
  %conv12.2.i371 = zext i8 %181 to i32
  %arrayidx14.2.i372 = getelementptr inbounds i8, i8* %pix2, i32 326
  %182 = load i8, i8* %arrayidx14.2.i372, align 1, !tbaa !23
  %conv15.2.i373 = zext i8 %182 to i32
  %arrayidx17.2.i374 = getelementptr inbounds i8, i8* %pix2, i32 327
  %183 = load i8, i8* %arrayidx17.2.i374, align 1, !tbaa !23
  %conv18.2.i375 = zext i8 %183 to i32
  %add.2.i376 = add nsw i32 %add20.1.i359, %conv.2.i362
  %add5.2.i377 = add nsw i32 %add.2.i376, %conv2.2.i364
  %add8.2.i378 = add nsw i32 %add5.2.i377, %conv4.2.i366
  %sub.2.i379 = add nsw i32 %add8.2.i378, %conv7.2.i368
  %sub13.2.i380 = sub nsw i32 %sub.2.i379, %conv10.2.i369
  %sub16.2.i381 = sub nsw i32 %sub13.2.i380, %conv12.2.i371
  %sub19.2.i382 = sub nsw i32 %sub16.2.i381, %conv15.2.i373
  %add20.2.i383 = sub nsw i32 %sub19.2.i382, %conv18.2.i375
  %add.ptr.2.i384 = getelementptr inbounds i8, i8* %pix1, i32 180
  %add.ptr21.2.i385 = getelementptr inbounds i8, i8* %pix2, i32 356
  %184 = load i8, i8* %add.ptr.2.i384, align 1, !tbaa !23
  %conv.3.i386 = zext i8 %184 to i32
  %arrayidx1.3.i387 = getelementptr inbounds i8, i8* %pix1, i32 181
  %185 = load i8, i8* %arrayidx1.3.i387, align 1, !tbaa !23
  %conv2.3.i388 = zext i8 %185 to i32
  %arrayidx3.3.i389 = getelementptr inbounds i8, i8* %pix1, i32 182
  %186 = load i8, i8* %arrayidx3.3.i389, align 1, !tbaa !23
  %conv4.3.i390 = zext i8 %186 to i32
  %arrayidx6.3.i391 = getelementptr inbounds i8, i8* %pix1, i32 183
  %187 = load i8, i8* %arrayidx6.3.i391, align 1, !tbaa !23
  %conv7.3.i392 = zext i8 %187 to i32
  %188 = load i8, i8* %add.ptr21.2.i385, align 1, !tbaa !23
  %conv10.3.i393 = zext i8 %188 to i32
  %arrayidx11.3.i394 = getelementptr inbounds i8, i8* %pix2, i32 357
  %189 = load i8, i8* %arrayidx11.3.i394, align 1, !tbaa !23
  %conv12.3.i395 = zext i8 %189 to i32
  %arrayidx14.3.i396 = getelementptr inbounds i8, i8* %pix2, i32 358
  %190 = load i8, i8* %arrayidx14.3.i396, align 1, !tbaa !23
  %conv15.3.i397 = zext i8 %190 to i32
  %arrayidx17.3.i398 = getelementptr inbounds i8, i8* %pix2, i32 359
  %191 = load i8, i8* %arrayidx17.3.i398, align 1, !tbaa !23
  %conv18.3.i399 = zext i8 %191 to i32
  %add.3.i400 = add nsw i32 %add20.2.i383, %conv.3.i386
  %add5.3.i401 = add nsw i32 %add.3.i400, %conv2.3.i388
  %add8.3.i402 = add nsw i32 %add5.3.i401, %conv4.3.i390
  %sub.3.i403 = add nsw i32 %add8.3.i402, %conv7.3.i392
  %sub13.3.i404 = sub nsw i32 %sub.3.i403, %conv10.3.i393
  %sub16.3.i405 = sub nsw i32 %sub13.3.i404, %conv12.3.i395
  %sub19.3.i406 = sub nsw i32 %sub16.3.i405, %conv15.3.i397
  %add20.3.i407 = sub nsw i32 %sub19.3.i406, %conv18.3.i399
  %arrayidx17 = getelementptr inbounds i8, i8* %pix1, i32 192
  %arrayidx18 = getelementptr inbounds i8, i8* %pix2, i32 384
  %192 = load i8, i8* %arrayidx17, align 1, !tbaa !23
  %conv.i222 = zext i8 %192 to i32
  %arrayidx1.i223 = getelementptr inbounds i8, i8* %pix1, i32 193
  %193 = load i8, i8* %arrayidx1.i223, align 1, !tbaa !23
  %conv2.i224 = zext i8 %193 to i32
  %arrayidx3.i225 = getelementptr inbounds i8, i8* %pix1, i32 194
  %194 = load i8, i8* %arrayidx3.i225, align 1, !tbaa !23
  %conv4.i226 = zext i8 %194 to i32
  %arrayidx6.i227 = getelementptr inbounds i8, i8* %pix1, i32 195
  %195 = load i8, i8* %arrayidx6.i227, align 1, !tbaa !23
  %conv7.i228 = zext i8 %195 to i32
  %196 = load i8, i8* %arrayidx18, align 1, !tbaa !23
  %conv10.i229 = zext i8 %196 to i32
  %arrayidx11.i230 = getelementptr inbounds i8, i8* %pix2, i32 385
  %197 = load i8, i8* %arrayidx11.i230, align 1, !tbaa !23
  %conv12.i231 = zext i8 %197 to i32
  %arrayidx14.i232 = getelementptr inbounds i8, i8* %pix2, i32 386
  %198 = load i8, i8* %arrayidx14.i232, align 1, !tbaa !23
  %conv15.i233 = zext i8 %198 to i32
  %arrayidx17.i234 = getelementptr inbounds i8, i8* %pix2, i32 387
  %199 = load i8, i8* %arrayidx17.i234, align 1, !tbaa !23
  %conv18.i235 = zext i8 %199 to i32
  %add5.i236 = add nuw nsw i32 %conv2.i224, %conv.i222
  %add8.i237 = add nuw nsw i32 %add5.i236, %conv4.i226
  %sub.i238 = add nuw nsw i32 %add8.i237, %conv7.i228
  %sub13.i239 = sub nsw i32 %sub.i238, %conv10.i229
  %sub16.i240 = sub nsw i32 %sub13.i239, %conv12.i231
  %sub19.i241 = sub nsw i32 %sub16.i240, %conv15.i233
  %add20.i242 = sub nsw i32 %sub19.i241, %conv18.i235
  %add.ptr.i243 = getelementptr inbounds i8, i8* %pix1, i32 208
  %add.ptr21.i244 = getelementptr inbounds i8, i8* %pix2, i32 416
  %200 = load i8, i8* %add.ptr.i243, align 1, !tbaa !23
  %conv.1.i245 = zext i8 %200 to i32
  %arrayidx1.1.i246 = getelementptr inbounds i8, i8* %pix1, i32 209
  %201 = load i8, i8* %arrayidx1.1.i246, align 1, !tbaa !23
  %conv2.1.i247 = zext i8 %201 to i32
  %arrayidx3.1.i248 = getelementptr inbounds i8, i8* %pix1, i32 210
  %202 = load i8, i8* %arrayidx3.1.i248, align 1, !tbaa !23
  %conv4.1.i249 = zext i8 %202 to i32
  %arrayidx6.1.i250 = getelementptr inbounds i8, i8* %pix1, i32 211
  %203 = load i8, i8* %arrayidx6.1.i250, align 1, !tbaa !23
  %conv7.1.i251 = zext i8 %203 to i32
  %204 = load i8, i8* %add.ptr21.i244, align 1, !tbaa !23
  %conv10.1.i252 = zext i8 %204 to i32
  %arrayidx11.1.i253 = getelementptr inbounds i8, i8* %pix2, i32 417
  %205 = load i8, i8* %arrayidx11.1.i253, align 1, !tbaa !23
  %conv12.1.i254 = zext i8 %205 to i32
  %arrayidx14.1.i255 = getelementptr inbounds i8, i8* %pix2, i32 418
  %206 = load i8, i8* %arrayidx14.1.i255, align 1, !tbaa !23
  %conv15.1.i256 = zext i8 %206 to i32
  %arrayidx17.1.i257 = getelementptr inbounds i8, i8* %pix2, i32 419
  %207 = load i8, i8* %arrayidx17.1.i257, align 1, !tbaa !23
  %conv18.1.i258 = zext i8 %207 to i32
  %add.1.i259 = add nsw i32 %add20.i242, %conv.1.i245
  %add5.1.i260 = add nsw i32 %add.1.i259, %conv2.1.i247
  %add8.1.i261 = add nsw i32 %add5.1.i260, %conv4.1.i249
  %sub.1.i262 = add nsw i32 %add8.1.i261, %conv7.1.i251
  %sub13.1.i263 = sub nsw i32 %sub.1.i262, %conv10.1.i252
  %sub16.1.i264 = sub nsw i32 %sub13.1.i263, %conv12.1.i254
  %sub19.1.i265 = sub nsw i32 %sub16.1.i264, %conv15.1.i256
  %add20.1.i266 = sub nsw i32 %sub19.1.i265, %conv18.1.i258
  %add.ptr.1.i267 = getelementptr inbounds i8, i8* %pix1, i32 224
  %add.ptr21.1.i268 = getelementptr inbounds i8, i8* %pix2, i32 448
  %208 = load i8, i8* %add.ptr.1.i267, align 1, !tbaa !23
  %conv.2.i269 = zext i8 %208 to i32
  %arrayidx1.2.i270 = getelementptr inbounds i8, i8* %pix1, i32 225
  %209 = load i8, i8* %arrayidx1.2.i270, align 1, !tbaa !23
  %conv2.2.i271 = zext i8 %209 to i32
  %arrayidx3.2.i272 = getelementptr inbounds i8, i8* %pix1, i32 226
  %210 = load i8, i8* %arrayidx3.2.i272, align 1, !tbaa !23
  %conv4.2.i273 = zext i8 %210 to i32
  %arrayidx6.2.i274 = getelementptr inbounds i8, i8* %pix1, i32 227
  %211 = load i8, i8* %arrayidx6.2.i274, align 1, !tbaa !23
  %conv7.2.i275 = zext i8 %211 to i32
  %212 = load i8, i8* %add.ptr21.1.i268, align 1, !tbaa !23
  %conv10.2.i276 = zext i8 %212 to i32
  %arrayidx11.2.i277 = getelementptr inbounds i8, i8* %pix2, i32 449
  %213 = load i8, i8* %arrayidx11.2.i277, align 1, !tbaa !23
  %conv12.2.i278 = zext i8 %213 to i32
  %arrayidx14.2.i279 = getelementptr inbounds i8, i8* %pix2, i32 450
  %214 = load i8, i8* %arrayidx14.2.i279, align 1, !tbaa !23
  %conv15.2.i280 = zext i8 %214 to i32
  %arrayidx17.2.i281 = getelementptr inbounds i8, i8* %pix2, i32 451
  %215 = load i8, i8* %arrayidx17.2.i281, align 1, !tbaa !23
  %conv18.2.i282 = zext i8 %215 to i32
  %add.2.i283 = add nsw i32 %add20.1.i266, %conv.2.i269
  %add5.2.i284 = add nsw i32 %add.2.i283, %conv2.2.i271
  %add8.2.i285 = add nsw i32 %add5.2.i284, %conv4.2.i273
  %sub.2.i286 = add nsw i32 %add8.2.i285, %conv7.2.i275
  %sub13.2.i287 = sub nsw i32 %sub.2.i286, %conv10.2.i276
  %sub16.2.i288 = sub nsw i32 %sub13.2.i287, %conv12.2.i278
  %sub19.2.i289 = sub nsw i32 %sub16.2.i288, %conv15.2.i280
  %add20.2.i290 = sub nsw i32 %sub19.2.i289, %conv18.2.i282
  %add.ptr.2.i291 = getelementptr inbounds i8, i8* %pix1, i32 240
  %add.ptr21.2.i292 = getelementptr inbounds i8, i8* %pix2, i32 480
  %216 = load i8, i8* %add.ptr.2.i291, align 1, !tbaa !23
  %conv.3.i293 = zext i8 %216 to i32
  %arrayidx1.3.i294 = getelementptr inbounds i8, i8* %pix1, i32 241
  %217 = load i8, i8* %arrayidx1.3.i294, align 1, !tbaa !23
  %conv2.3.i295 = zext i8 %217 to i32
  %arrayidx3.3.i296 = getelementptr inbounds i8, i8* %pix1, i32 242
  %218 = load i8, i8* %arrayidx3.3.i296, align 1, !tbaa !23
  %conv4.3.i297 = zext i8 %218 to i32
  %arrayidx6.3.i298 = getelementptr inbounds i8, i8* %pix1, i32 243
  %219 = load i8, i8* %arrayidx6.3.i298, align 1, !tbaa !23
  %conv7.3.i299 = zext i8 %219 to i32
  %220 = load i8, i8* %add.ptr21.2.i292, align 1, !tbaa !23
  %conv10.3.i300 = zext i8 %220 to i32
  %arrayidx11.3.i301 = getelementptr inbounds i8, i8* %pix2, i32 481
  %221 = load i8, i8* %arrayidx11.3.i301, align 1, !tbaa !23
  %conv12.3.i302 = zext i8 %221 to i32
  %arrayidx14.3.i303 = getelementptr inbounds i8, i8* %pix2, i32 482
  %222 = load i8, i8* %arrayidx14.3.i303, align 1, !tbaa !23
  %conv15.3.i304 = zext i8 %222 to i32
  %arrayidx17.3.i305 = getelementptr inbounds i8, i8* %pix2, i32 483
  %223 = load i8, i8* %arrayidx17.3.i305, align 1, !tbaa !23
  %conv18.3.i306 = zext i8 %223 to i32
  %add.3.i307 = add nsw i32 %add20.2.i290, %conv.3.i293
  %add5.3.i308 = add nsw i32 %add.3.i307, %conv2.3.i295
  %add8.3.i309 = add nsw i32 %add5.3.i308, %conv4.3.i297
  %sub.3.i310 = add nsw i32 %add8.3.i309, %conv7.3.i299
  %sub13.3.i311 = sub nsw i32 %sub.3.i310, %conv10.3.i300
  %sub16.3.i312 = sub nsw i32 %sub13.3.i311, %conv12.3.i302
  %sub19.3.i313 = sub nsw i32 %sub16.3.i312, %conv15.3.i304
  %add20.3.i314 = sub nsw i32 %sub19.3.i313, %conv18.3.i306
  %arrayidx20 = getelementptr inbounds i8, i8* %pix1, i32 196
  %arrayidx21 = getelementptr inbounds i8, i8* %pix2, i32 388
  %224 = load i8, i8* %arrayidx20, align 1, !tbaa !23
  %conv.i129 = zext i8 %224 to i32
  %arrayidx1.i130 = getelementptr inbounds i8, i8* %pix1, i32 197
  %225 = load i8, i8* %arrayidx1.i130, align 1, !tbaa !23
  %conv2.i131 = zext i8 %225 to i32
  %arrayidx3.i132 = getelementptr inbounds i8, i8* %pix1, i32 198
  %226 = load i8, i8* %arrayidx3.i132, align 1, !tbaa !23
  %conv4.i133 = zext i8 %226 to i32
  %arrayidx6.i134 = getelementptr inbounds i8, i8* %pix1, i32 199
  %227 = load i8, i8* %arrayidx6.i134, align 1, !tbaa !23
  %conv7.i135 = zext i8 %227 to i32
  %228 = load i8, i8* %arrayidx21, align 1, !tbaa !23
  %conv10.i136 = zext i8 %228 to i32
  %arrayidx11.i137 = getelementptr inbounds i8, i8* %pix2, i32 389
  %229 = load i8, i8* %arrayidx11.i137, align 1, !tbaa !23
  %conv12.i138 = zext i8 %229 to i32
  %arrayidx14.i139 = getelementptr inbounds i8, i8* %pix2, i32 390
  %230 = load i8, i8* %arrayidx14.i139, align 1, !tbaa !23
  %conv15.i140 = zext i8 %230 to i32
  %arrayidx17.i141 = getelementptr inbounds i8, i8* %pix2, i32 391
  %231 = load i8, i8* %arrayidx17.i141, align 1, !tbaa !23
  %conv18.i142 = zext i8 %231 to i32
  %add5.i143 = add nuw nsw i32 %conv2.i131, %conv.i129
  %add8.i144 = add nuw nsw i32 %add5.i143, %conv4.i133
  %sub.i145 = add nuw nsw i32 %add8.i144, %conv7.i135
  %sub13.i146 = sub nsw i32 %sub.i145, %conv10.i136
  %sub16.i147 = sub nsw i32 %sub13.i146, %conv12.i138
  %sub19.i148 = sub nsw i32 %sub16.i147, %conv15.i140
  %add20.i149 = sub nsw i32 %sub19.i148, %conv18.i142
  %add.ptr.i150 = getelementptr inbounds i8, i8* %pix1, i32 212
  %add.ptr21.i151 = getelementptr inbounds i8, i8* %pix2, i32 420
  %232 = load i8, i8* %add.ptr.i150, align 1, !tbaa !23
  %conv.1.i152 = zext i8 %232 to i32
  %arrayidx1.1.i153 = getelementptr inbounds i8, i8* %pix1, i32 213
  %233 = load i8, i8* %arrayidx1.1.i153, align 1, !tbaa !23
  %conv2.1.i154 = zext i8 %233 to i32
  %arrayidx3.1.i155 = getelementptr inbounds i8, i8* %pix1, i32 214
  %234 = load i8, i8* %arrayidx3.1.i155, align 1, !tbaa !23
  %conv4.1.i156 = zext i8 %234 to i32
  %arrayidx6.1.i157 = getelementptr inbounds i8, i8* %pix1, i32 215
  %235 = load i8, i8* %arrayidx6.1.i157, align 1, !tbaa !23
  %conv7.1.i158 = zext i8 %235 to i32
  %236 = load i8, i8* %add.ptr21.i151, align 1, !tbaa !23
  %conv10.1.i159 = zext i8 %236 to i32
  %arrayidx11.1.i160 = getelementptr inbounds i8, i8* %pix2, i32 421
  %237 = load i8, i8* %arrayidx11.1.i160, align 1, !tbaa !23
  %conv12.1.i161 = zext i8 %237 to i32
  %arrayidx14.1.i162 = getelementptr inbounds i8, i8* %pix2, i32 422
  %238 = load i8, i8* %arrayidx14.1.i162, align 1, !tbaa !23
  %conv15.1.i163 = zext i8 %238 to i32
  %arrayidx17.1.i164 = getelementptr inbounds i8, i8* %pix2, i32 423
  %239 = load i8, i8* %arrayidx17.1.i164, align 1, !tbaa !23
  %conv18.1.i165 = zext i8 %239 to i32
  %add.1.i166 = add nsw i32 %add20.i149, %conv.1.i152
  %add5.1.i167 = add nsw i32 %add.1.i166, %conv2.1.i154
  %add8.1.i168 = add nsw i32 %add5.1.i167, %conv4.1.i156
  %sub.1.i169 = add nsw i32 %add8.1.i168, %conv7.1.i158
  %sub13.1.i170 = sub nsw i32 %sub.1.i169, %conv10.1.i159
  %sub16.1.i171 = sub nsw i32 %sub13.1.i170, %conv12.1.i161
  %sub19.1.i172 = sub nsw i32 %sub16.1.i171, %conv15.1.i163
  %add20.1.i173 = sub nsw i32 %sub19.1.i172, %conv18.1.i165
  %add.ptr.1.i174 = getelementptr inbounds i8, i8* %pix1, i32 228
  %add.ptr21.1.i175 = getelementptr inbounds i8, i8* %pix2, i32 452
  %240 = load i8, i8* %add.ptr.1.i174, align 1, !tbaa !23
  %conv.2.i176 = zext i8 %240 to i32
  %arrayidx1.2.i177 = getelementptr inbounds i8, i8* %pix1, i32 229
  %241 = load i8, i8* %arrayidx1.2.i177, align 1, !tbaa !23
  %conv2.2.i178 = zext i8 %241 to i32
  %arrayidx3.2.i179 = getelementptr inbounds i8, i8* %pix1, i32 230
  %242 = load i8, i8* %arrayidx3.2.i179, align 1, !tbaa !23
  %conv4.2.i180 = zext i8 %242 to i32
  %arrayidx6.2.i181 = getelementptr inbounds i8, i8* %pix1, i32 231
  %243 = load i8, i8* %arrayidx6.2.i181, align 1, !tbaa !23
  %conv7.2.i182 = zext i8 %243 to i32
  %244 = load i8, i8* %add.ptr21.1.i175, align 1, !tbaa !23
  %conv10.2.i183 = zext i8 %244 to i32
  %arrayidx11.2.i184 = getelementptr inbounds i8, i8* %pix2, i32 453
  %245 = load i8, i8* %arrayidx11.2.i184, align 1, !tbaa !23
  %conv12.2.i185 = zext i8 %245 to i32
  %arrayidx14.2.i186 = getelementptr inbounds i8, i8* %pix2, i32 454
  %246 = load i8, i8* %arrayidx14.2.i186, align 1, !tbaa !23
  %conv15.2.i187 = zext i8 %246 to i32
  %arrayidx17.2.i188 = getelementptr inbounds i8, i8* %pix2, i32 455
  %247 = load i8, i8* %arrayidx17.2.i188, align 1, !tbaa !23
  %conv18.2.i189 = zext i8 %247 to i32
  %add.2.i190 = add nsw i32 %add20.1.i173, %conv.2.i176
  %add5.2.i191 = add nsw i32 %add.2.i190, %conv2.2.i178
  %add8.2.i192 = add nsw i32 %add5.2.i191, %conv4.2.i180
  %sub.2.i193 = add nsw i32 %add8.2.i192, %conv7.2.i182
  %sub13.2.i194 = sub nsw i32 %sub.2.i193, %conv10.2.i183
  %sub16.2.i195 = sub nsw i32 %sub13.2.i194, %conv12.2.i185
  %sub19.2.i196 = sub nsw i32 %sub16.2.i195, %conv15.2.i187
  %add20.2.i197 = sub nsw i32 %sub19.2.i196, %conv18.2.i189
  %add.ptr.2.i198 = getelementptr inbounds i8, i8* %pix1, i32 244
  %add.ptr21.2.i199 = getelementptr inbounds i8, i8* %pix2, i32 484
  %248 = load i8, i8* %add.ptr.2.i198, align 1, !tbaa !23
  %conv.3.i200 = zext i8 %248 to i32
  %arrayidx1.3.i201 = getelementptr inbounds i8, i8* %pix1, i32 245
  %249 = load i8, i8* %arrayidx1.3.i201, align 1, !tbaa !23
  %conv2.3.i202 = zext i8 %249 to i32
  %arrayidx3.3.i203 = getelementptr inbounds i8, i8* %pix1, i32 246
  %250 = load i8, i8* %arrayidx3.3.i203, align 1, !tbaa !23
  %conv4.3.i204 = zext i8 %250 to i32
  %arrayidx6.3.i205 = getelementptr inbounds i8, i8* %pix1, i32 247
  %251 = load i8, i8* %arrayidx6.3.i205, align 1, !tbaa !23
  %conv7.3.i206 = zext i8 %251 to i32
  %252 = load i8, i8* %add.ptr21.2.i199, align 1, !tbaa !23
  %conv10.3.i207 = zext i8 %252 to i32
  %arrayidx11.3.i208 = getelementptr inbounds i8, i8* %pix2, i32 485
  %253 = load i8, i8* %arrayidx11.3.i208, align 1, !tbaa !23
  %conv12.3.i209 = zext i8 %253 to i32
  %arrayidx14.3.i210 = getelementptr inbounds i8, i8* %pix2, i32 486
  %254 = load i8, i8* %arrayidx14.3.i210, align 1, !tbaa !23
  %conv15.3.i211 = zext i8 %254 to i32
  %arrayidx17.3.i212 = getelementptr inbounds i8, i8* %pix2, i32 487
  %255 = load i8, i8* %arrayidx17.3.i212, align 1, !tbaa !23
  %conv18.3.i213 = zext i8 %255 to i32
  %add.3.i214 = add nsw i32 %add20.2.i197, %conv.3.i200
  %add5.3.i215 = add nsw i32 %add.3.i214, %conv2.3.i202
  %add8.3.i216 = add nsw i32 %add5.3.i215, %conv4.3.i204
  %sub.3.i217 = add nsw i32 %add8.3.i216, %conv7.3.i206
  %sub13.3.i218 = sub nsw i32 %sub.3.i217, %conv10.3.i207
  %sub16.3.i219 = sub nsw i32 %sub13.3.i218, %conv12.3.i209
  %sub19.3.i220 = sub nsw i32 %sub16.3.i219, %conv15.3.i211
  %add20.3.i221 = sub nsw i32 %sub19.3.i220, %conv18.3.i213
  %add = add nsw i32 %add20.3.i779, %add20.3.i
  %add23 = add nsw i32 %add20.3.i593, %add20.3.i686
  %add24 = add nsw i32 %add20.3.i407, %add20.3.i500
  %add25 = add nsw i32 %add20.3.i221, %add20.3.i314
  %sub = sub nsw i32 %add20.3.i, %add20.3.i779
  %sub26 = sub nsw i32 %add20.3.i686, %add20.3.i593
  %sub27 = sub nsw i32 %add20.3.i500, %add20.3.i407
  %sub28 = sub nsw i32 %add20.3.i314, %add20.3.i221
  %add29 = add nsw i32 %add23, %add
  %add30 = add nsw i32 %add25, %add24
  %add31 = add nsw i32 %sub26, %sub
  %add32 = add nsw i32 %sub28, %sub27
  %sub33 = sub nsw i32 %add, %add23
  %sub34 = sub nsw i32 %add24, %add25
  %sub35 = sub nsw i32 %sub, %sub26
  %sub36 = sub nsw i32 %sub27, %sub28
  %add37 = add nsw i32 %add30, %add29
  %conv = trunc i32 %add37 to i16
  store i16 %conv, i16* %dct, align 2, !tbaa !24
  %add39 = add nsw i32 %add32, %add31
  %conv40 = trunc i32 %add39 to i16
  %arrayidx41 = getelementptr inbounds i16, i16* %dct, i32 1
  store i16 %conv40, i16* %arrayidx41, align 2, !tbaa !24
  %sub42 = sub nsw i32 %add29, %add30
  %conv43 = trunc i32 %sub42 to i16
  %arrayidx44 = getelementptr inbounds i16, i16* %dct, i32 2
  store i16 %conv43, i16* %arrayidx44, align 2, !tbaa !24
  %sub45 = sub nsw i32 %add31, %add32
  %conv46 = trunc i32 %sub45 to i16
  %arrayidx47 = getelementptr inbounds i16, i16* %dct, i32 3
  store i16 %conv46, i16* %arrayidx47, align 2, !tbaa !24
  %sub48 = sub nsw i32 %sub33, %sub34
  %conv49 = trunc i32 %sub48 to i16
  %arrayidx50 = getelementptr inbounds i16, i16* %dct, i32 4
  store i16 %conv49, i16* %arrayidx50, align 2, !tbaa !24
  %sub51 = sub nsw i32 %sub35, %sub36
  %conv52 = trunc i32 %sub51 to i16
  %arrayidx53 = getelementptr inbounds i16, i16* %dct, i32 5
  store i16 %conv52, i16* %arrayidx53, align 2, !tbaa !24
  %add54 = add nsw i32 %sub34, %sub33
  %conv55 = trunc i32 %add54 to i16
  %arrayidx56 = getelementptr inbounds i16, i16* %dct, i32 6
  store i16 %conv55, i16* %arrayidx56, align 2, !tbaa !24
  %add57 = add nsw i32 %sub36, %sub35
  %conv58 = trunc i32 %add57 to i16
  %arrayidx59 = getelementptr inbounds i16, i16* %dct, i32 7
  store i16 %conv58, i16* %arrayidx59, align 2, !tbaa !24
  ret void
}

; Function Attrs: nounwind
define internal void @sub16x16_dct([16 x i16]* nocapture %dct, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2) #1 {
entry:
  %arraydecay.i = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 0
  tail call void @sub4x4_dct(i16* %arraydecay.i, i8* %pix1, i8* %pix2) #5
  %arraydecay4.i = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 1, i32 0
  %arrayidx5.i = getelementptr inbounds i8, i8* %pix1, i32 4
  %arrayidx6.i = getelementptr inbounds i8, i8* %pix2, i32 4
  tail call void @sub4x4_dct(i16* nonnull %arraydecay4.i, i8* nonnull %arrayidx5.i, i8* nonnull %arrayidx6.i) #5
  %arraydecay8.i = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 2, i32 0
  %arrayidx9.i = getelementptr inbounds i8, i8* %pix1, i32 64
  %arrayidx10.i = getelementptr inbounds i8, i8* %pix2, i32 128
  tail call void @sub4x4_dct(i16* nonnull %arraydecay8.i, i8* nonnull %arrayidx9.i, i8* nonnull %arrayidx10.i) #5
  %arraydecay12.i = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 3, i32 0
  %arrayidx13.i = getelementptr inbounds i8, i8* %pix1, i32 68
  %arrayidx14.i = getelementptr inbounds i8, i8* %pix2, i32 132
  tail call void @sub4x4_dct(i16* nonnull %arraydecay12.i, i8* nonnull %arrayidx13.i, i8* nonnull %arrayidx14.i) #5
  %arrayidx4 = getelementptr inbounds i8, i8* %pix1, i32 8
  %arrayidx5 = getelementptr inbounds i8, i8* %pix2, i32 8
  %arraydecay.i21 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 4, i32 0
  tail call void @sub4x4_dct(i16* nonnull %arraydecay.i21, i8* nonnull %arrayidx4, i8* nonnull %arrayidx5) #5
  %arraydecay4.i22 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 5, i32 0
  %arrayidx5.i23 = getelementptr inbounds i8, i8* %pix1, i32 12
  %arrayidx6.i24 = getelementptr inbounds i8, i8* %pix2, i32 12
  tail call void @sub4x4_dct(i16* nonnull %arraydecay4.i22, i8* nonnull %arrayidx5.i23, i8* nonnull %arrayidx6.i24) #5
  %arraydecay8.i25 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 6, i32 0
  %arrayidx9.i26 = getelementptr inbounds i8, i8* %pix1, i32 72
  %arrayidx10.i27 = getelementptr inbounds i8, i8* %pix2, i32 136
  tail call void @sub4x4_dct(i16* nonnull %arraydecay8.i25, i8* nonnull %arrayidx9.i26, i8* nonnull %arrayidx10.i27) #5
  %arraydecay12.i28 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 7, i32 0
  %arrayidx13.i29 = getelementptr inbounds i8, i8* %pix1, i32 76
  %arrayidx14.i30 = getelementptr inbounds i8, i8* %pix2, i32 140
  tail call void @sub4x4_dct(i16* nonnull %arraydecay12.i28, i8* nonnull %arrayidx13.i29, i8* nonnull %arrayidx14.i30) #5
  %arrayidx7 = getelementptr inbounds i8, i8* %pix1, i32 128
  %arrayidx8 = getelementptr inbounds i8, i8* %pix2, i32 256
  %arraydecay.i31 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 8, i32 0
  tail call void @sub4x4_dct(i16* nonnull %arraydecay.i31, i8* nonnull %arrayidx7, i8* nonnull %arrayidx8) #5
  %arraydecay4.i32 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 9, i32 0
  %arrayidx5.i33 = getelementptr inbounds i8, i8* %pix1, i32 132
  %arrayidx6.i34 = getelementptr inbounds i8, i8* %pix2, i32 260
  tail call void @sub4x4_dct(i16* nonnull %arraydecay4.i32, i8* nonnull %arrayidx5.i33, i8* nonnull %arrayidx6.i34) #5
  %arraydecay8.i35 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 10, i32 0
  %arrayidx9.i36 = getelementptr inbounds i8, i8* %pix1, i32 192
  %arrayidx10.i37 = getelementptr inbounds i8, i8* %pix2, i32 384
  tail call void @sub4x4_dct(i16* nonnull %arraydecay8.i35, i8* nonnull %arrayidx9.i36, i8* nonnull %arrayidx10.i37) #5
  %arraydecay12.i38 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 11, i32 0
  %arrayidx13.i39 = getelementptr inbounds i8, i8* %pix1, i32 196
  %arrayidx14.i40 = getelementptr inbounds i8, i8* %pix2, i32 388
  tail call void @sub4x4_dct(i16* nonnull %arraydecay12.i38, i8* nonnull %arrayidx13.i39, i8* nonnull %arrayidx14.i40) #5
  %arrayidx10 = getelementptr inbounds i8, i8* %pix1, i32 136
  %arrayidx11 = getelementptr inbounds i8, i8* %pix2, i32 264
  %arraydecay.i41 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 12, i32 0
  tail call void @sub4x4_dct(i16* nonnull %arraydecay.i41, i8* nonnull %arrayidx10, i8* nonnull %arrayidx11) #5
  %arraydecay4.i42 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 13, i32 0
  %arrayidx5.i43 = getelementptr inbounds i8, i8* %pix1, i32 140
  %arrayidx6.i44 = getelementptr inbounds i8, i8* %pix2, i32 268
  tail call void @sub4x4_dct(i16* nonnull %arraydecay4.i42, i8* nonnull %arrayidx5.i43, i8* nonnull %arrayidx6.i44) #5
  %arraydecay8.i45 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 14, i32 0
  %arrayidx9.i46 = getelementptr inbounds i8, i8* %pix1, i32 200
  %arrayidx10.i47 = getelementptr inbounds i8, i8* %pix2, i32 392
  tail call void @sub4x4_dct(i16* nonnull %arraydecay8.i45, i8* nonnull %arrayidx9.i46, i8* nonnull %arrayidx10.i47) #5
  %arraydecay12.i48 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 15, i32 0
  %arrayidx13.i49 = getelementptr inbounds i8, i8* %pix1, i32 204
  %arrayidx14.i50 = getelementptr inbounds i8, i8* %pix2, i32 396
  tail call void @sub4x4_dct(i16* nonnull %arraydecay12.i48, i8* nonnull %arrayidx13.i49, i8* nonnull %arrayidx14.i50) #5
  ret void
}

; Function Attrs: nounwind
define internal void @add16x16_idct(i8* nocapture %p_dst, [16 x i16]* nocapture readonly %dct) #1 {
entry:
  %arraydecay.i = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 0, i32 0
  tail call void @add4x4_idct(i8* %p_dst, i16* %arraydecay.i) #5
  %arrayidx2.i = getelementptr inbounds i8, i8* %p_dst, i32 4
  %arraydecay4.i = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 1, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx2.i, i16* nonnull %arraydecay4.i) #5
  %arrayidx5.i = getelementptr inbounds i8, i8* %p_dst, i32 128
  %arraydecay7.i = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 2, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx5.i, i16* nonnull %arraydecay7.i) #5
  %arrayidx8.i = getelementptr inbounds i8, i8* %p_dst, i32 132
  %arraydecay10.i = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 3, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx8.i, i16* nonnull %arraydecay10.i) #5
  %arrayidx2 = getelementptr inbounds i8, i8* %p_dst, i32 8
  %arraydecay.i14 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 4, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx2, i16* nonnull %arraydecay.i14) #5
  %arrayidx2.i15 = getelementptr inbounds i8, i8* %p_dst, i32 12
  %arraydecay4.i16 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 5, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx2.i15, i16* nonnull %arraydecay4.i16) #5
  %arrayidx5.i17 = getelementptr inbounds i8, i8* %p_dst, i32 136
  %arraydecay7.i18 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 6, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx5.i17, i16* nonnull %arraydecay7.i18) #5
  %arrayidx8.i19 = getelementptr inbounds i8, i8* %p_dst, i32 140
  %arraydecay10.i20 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 7, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx8.i19, i16* nonnull %arraydecay10.i20) #5
  %arrayidx4 = getelementptr inbounds i8, i8* %p_dst, i32 256
  %arraydecay.i21 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 8, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx4, i16* nonnull %arraydecay.i21) #5
  %arrayidx2.i22 = getelementptr inbounds i8, i8* %p_dst, i32 260
  %arraydecay4.i23 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 9, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx2.i22, i16* nonnull %arraydecay4.i23) #5
  %arrayidx5.i24 = getelementptr inbounds i8, i8* %p_dst, i32 384
  %arraydecay7.i25 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 10, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx5.i24, i16* nonnull %arraydecay7.i25) #5
  %arrayidx8.i26 = getelementptr inbounds i8, i8* %p_dst, i32 388
  %arraydecay10.i27 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 11, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx8.i26, i16* nonnull %arraydecay10.i27) #5
  %arrayidx6 = getelementptr inbounds i8, i8* %p_dst, i32 264
  %arraydecay.i28 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 12, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx6, i16* nonnull %arraydecay.i28) #5
  %arrayidx2.i29 = getelementptr inbounds i8, i8* %p_dst, i32 268
  %arraydecay4.i30 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 13, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx2.i29, i16* nonnull %arraydecay4.i30) #5
  %arrayidx5.i31 = getelementptr inbounds i8, i8* %p_dst, i32 392
  %arraydecay7.i32 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 14, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx5.i31, i16* nonnull %arraydecay7.i32) #5
  %arrayidx8.i33 = getelementptr inbounds i8, i8* %p_dst, i32 396
  %arraydecay10.i34 = getelementptr inbounds [16 x i16], [16 x i16]* %dct, i32 15, i32 0
  tail call void @add4x4_idct(i8* nonnull %arrayidx8.i33, i16* nonnull %arraydecay10.i34) #5
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @add16x16_idct_dc(i8* nocapture %p_dst, i16* nocapture readonly %dct) #2 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* %p_dst, i16 signext %0)
  %arrayidx2 = getelementptr inbounds i8, i8* %p_dst, i32 4
  %arrayidx3 = getelementptr inbounds i16, i16* %dct, i32 1
  %1 = load i16, i16* %arrayidx3, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx2, i16 signext %1)
  %arrayidx4 = getelementptr inbounds i8, i8* %p_dst, i32 8
  %arrayidx5 = getelementptr inbounds i16, i16* %dct, i32 2
  %2 = load i16, i16* %arrayidx5, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx4, i16 signext %2)
  %arrayidx6 = getelementptr inbounds i8, i8* %p_dst, i32 12
  %arrayidx7 = getelementptr inbounds i16, i16* %dct, i32 3
  %3 = load i16, i16* %arrayidx7, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx6, i16 signext %3)
  %add.ptr = getelementptr inbounds i16, i16* %dct, i32 4
  %add.ptr8 = getelementptr inbounds i8, i8* %p_dst, i32 128
  %4 = load i16, i16* %add.ptr, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %add.ptr8, i16 signext %4)
  %arrayidx2.1 = getelementptr inbounds i8, i8* %p_dst, i32 132
  %arrayidx3.1 = getelementptr inbounds i16, i16* %dct, i32 5
  %5 = load i16, i16* %arrayidx3.1, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx2.1, i16 signext %5)
  %arrayidx4.1 = getelementptr inbounds i8, i8* %p_dst, i32 136
  %arrayidx5.1 = getelementptr inbounds i16, i16* %dct, i32 6
  %6 = load i16, i16* %arrayidx5.1, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx4.1, i16 signext %6)
  %arrayidx6.1 = getelementptr inbounds i8, i8* %p_dst, i32 140
  %arrayidx7.1 = getelementptr inbounds i16, i16* %dct, i32 7
  %7 = load i16, i16* %arrayidx7.1, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx6.1, i16 signext %7)
  %add.ptr.1 = getelementptr inbounds i16, i16* %dct, i32 8
  %add.ptr8.1 = getelementptr inbounds i8, i8* %p_dst, i32 256
  %8 = load i16, i16* %add.ptr.1, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %add.ptr8.1, i16 signext %8)
  %arrayidx2.2 = getelementptr inbounds i8, i8* %p_dst, i32 260
  %arrayidx3.2 = getelementptr inbounds i16, i16* %dct, i32 9
  %9 = load i16, i16* %arrayidx3.2, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx2.2, i16 signext %9)
  %arrayidx4.2 = getelementptr inbounds i8, i8* %p_dst, i32 264
  %arrayidx5.2 = getelementptr inbounds i16, i16* %dct, i32 10
  %10 = load i16, i16* %arrayidx5.2, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx4.2, i16 signext %10)
  %arrayidx6.2 = getelementptr inbounds i8, i8* %p_dst, i32 268
  %arrayidx7.2 = getelementptr inbounds i16, i16* %dct, i32 11
  %11 = load i16, i16* %arrayidx7.2, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx6.2, i16 signext %11)
  %add.ptr.2 = getelementptr inbounds i16, i16* %dct, i32 12
  %add.ptr8.2 = getelementptr inbounds i8, i8* %p_dst, i32 384
  %12 = load i16, i16* %add.ptr.2, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %add.ptr8.2, i16 signext %12)
  %arrayidx2.3 = getelementptr inbounds i8, i8* %p_dst, i32 388
  %arrayidx3.3 = getelementptr inbounds i16, i16* %dct, i32 13
  %13 = load i16, i16* %arrayidx3.3, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx2.3, i16 signext %13)
  %arrayidx4.3 = getelementptr inbounds i8, i8* %p_dst, i32 392
  %arrayidx5.3 = getelementptr inbounds i16, i16* %dct, i32 14
  %14 = load i16, i16* %arrayidx5.3, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx4.3, i16 signext %14)
  %arrayidx6.3 = getelementptr inbounds i8, i8* %p_dst, i32 396
  %arrayidx7.3 = getelementptr inbounds i16, i16* %dct, i32 15
  %15 = load i16, i16* %arrayidx7.3, align 2, !tbaa !24
  tail call fastcc void @add4x4_idct_dc(i8* nonnull %arrayidx6.3, i16 signext %15)
  ret void
}

; Function Attrs: nounwind
define internal void @sub8x8_dct8(i16* nocapture %dct, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2) #1 {
entry:
  %tmp = alloca [64 x i16], align 4
  %0 = bitcast [64 x i16]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #5
  %1 = load i8, i8* %pix1, align 1, !tbaa !23
  %conv.us.i = zext i8 %1 to i16
  %2 = load i8, i8* %pix2, align 1, !tbaa !23
  %conv6.us.i = zext i8 %2 to i16
  %sub.us.i = sub nsw i16 %conv.us.i, %conv6.us.i
  %arrayidx8.us.i = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 0
  store i16 %sub.us.i, i16* %arrayidx8.us.i, align 4, !tbaa !24
  %arrayidx.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 1
  %3 = load i8, i8* %arrayidx.us.i.1, align 1, !tbaa !23
  %conv.us.i.1 = zext i8 %3 to i16
  %arrayidx5.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 1
  %4 = load i8, i8* %arrayidx5.us.i.1, align 1, !tbaa !23
  %conv6.us.i.1 = zext i8 %4 to i16
  %sub.us.i.1 = sub nsw i16 %conv.us.i.1, %conv6.us.i.1
  %arrayidx8.us.i.1 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 1
  store i16 %sub.us.i.1, i16* %arrayidx8.us.i.1, align 2, !tbaa !24
  %arrayidx.us.i.2 = getelementptr inbounds i8, i8* %pix1, i32 2
  %5 = load i8, i8* %arrayidx.us.i.2, align 1, !tbaa !23
  %conv.us.i.2 = zext i8 %5 to i16
  %arrayidx5.us.i.2 = getelementptr inbounds i8, i8* %pix2, i32 2
  %6 = load i8, i8* %arrayidx5.us.i.2, align 1, !tbaa !23
  %conv6.us.i.2 = zext i8 %6 to i16
  %sub.us.i.2 = sub nsw i16 %conv.us.i.2, %conv6.us.i.2
  %arrayidx8.us.i.2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 2
  store i16 %sub.us.i.2, i16* %arrayidx8.us.i.2, align 4, !tbaa !24
  %arrayidx.us.i.3 = getelementptr inbounds i8, i8* %pix1, i32 3
  %7 = load i8, i8* %arrayidx.us.i.3, align 1, !tbaa !23
  %conv.us.i.3 = zext i8 %7 to i16
  %arrayidx5.us.i.3 = getelementptr inbounds i8, i8* %pix2, i32 3
  %8 = load i8, i8* %arrayidx5.us.i.3, align 1, !tbaa !23
  %conv6.us.i.3 = zext i8 %8 to i16
  %sub.us.i.3 = sub nsw i16 %conv.us.i.3, %conv6.us.i.3
  %arrayidx8.us.i.3 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 3
  store i16 %sub.us.i.3, i16* %arrayidx8.us.i.3, align 2, !tbaa !24
  %arrayidx.us.i.4 = getelementptr inbounds i8, i8* %pix1, i32 4
  %9 = load i8, i8* %arrayidx.us.i.4, align 1, !tbaa !23
  %conv.us.i.4 = zext i8 %9 to i16
  %arrayidx5.us.i.4 = getelementptr inbounds i8, i8* %pix2, i32 4
  %10 = load i8, i8* %arrayidx5.us.i.4, align 1, !tbaa !23
  %conv6.us.i.4 = zext i8 %10 to i16
  %sub.us.i.4 = sub nsw i16 %conv.us.i.4, %conv6.us.i.4
  %arrayidx8.us.i.4 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 4
  store i16 %sub.us.i.4, i16* %arrayidx8.us.i.4, align 4, !tbaa !24
  %arrayidx.us.i.5 = getelementptr inbounds i8, i8* %pix1, i32 5
  %11 = load i8, i8* %arrayidx.us.i.5, align 1, !tbaa !23
  %conv.us.i.5 = zext i8 %11 to i16
  %arrayidx5.us.i.5 = getelementptr inbounds i8, i8* %pix2, i32 5
  %12 = load i8, i8* %arrayidx5.us.i.5, align 1, !tbaa !23
  %conv6.us.i.5 = zext i8 %12 to i16
  %sub.us.i.5 = sub nsw i16 %conv.us.i.5, %conv6.us.i.5
  %arrayidx8.us.i.5 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 5
  store i16 %sub.us.i.5, i16* %arrayidx8.us.i.5, align 2, !tbaa !24
  %arrayidx.us.i.6 = getelementptr inbounds i8, i8* %pix1, i32 6
  %13 = load i8, i8* %arrayidx.us.i.6, align 1, !tbaa !23
  %conv.us.i.6 = zext i8 %13 to i16
  %arrayidx5.us.i.6 = getelementptr inbounds i8, i8* %pix2, i32 6
  %14 = load i8, i8* %arrayidx5.us.i.6, align 1, !tbaa !23
  %conv6.us.i.6 = zext i8 %14 to i16
  %sub.us.i.6 = sub nsw i16 %conv.us.i.6, %conv6.us.i.6
  %arrayidx8.us.i.6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 6
  store i16 %sub.us.i.6, i16* %arrayidx8.us.i.6, align 4, !tbaa !24
  %arrayidx.us.i.7 = getelementptr inbounds i8, i8* %pix1, i32 7
  %15 = load i8, i8* %arrayidx.us.i.7, align 1, !tbaa !23
  %conv.us.i.7 = zext i8 %15 to i16
  %arrayidx5.us.i.7 = getelementptr inbounds i8, i8* %pix2, i32 7
  %16 = load i8, i8* %arrayidx5.us.i.7, align 1, !tbaa !23
  %conv6.us.i.7 = zext i8 %16 to i16
  %sub.us.i.7 = sub nsw i16 %conv.us.i.7, %conv6.us.i.7
  %arrayidx8.us.i.7 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 7
  store i16 %sub.us.i.7, i16* %arrayidx8.us.i.7, align 2, !tbaa !24
  %add.ptr.us.i = getelementptr inbounds i8, i8* %pix1, i32 16
  %add.ptr9.us.i = getelementptr inbounds i8, i8* %pix2, i32 32
  %17 = load i8, i8* %add.ptr.us.i, align 1, !tbaa !23
  %conv.us.i.1406 = zext i8 %17 to i16
  %18 = load i8, i8* %add.ptr9.us.i, align 1, !tbaa !23
  %conv6.us.i.1407 = zext i8 %18 to i16
  %sub.us.i.1408 = sub nsw i16 %conv.us.i.1406, %conv6.us.i.1407
  %arrayidx8.us.i.1409 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 8
  store i16 %sub.us.i.1408, i16* %arrayidx8.us.i.1409, align 4, !tbaa !24
  %arrayidx.us.i.1.1 = getelementptr inbounds i8, i8* %pix1, i32 17
  %19 = load i8, i8* %arrayidx.us.i.1.1, align 1, !tbaa !23
  %conv.us.i.1.1 = zext i8 %19 to i16
  %arrayidx5.us.i.1.1 = getelementptr inbounds i8, i8* %pix2, i32 33
  %20 = load i8, i8* %arrayidx5.us.i.1.1, align 1, !tbaa !23
  %conv6.us.i.1.1 = zext i8 %20 to i16
  %sub.us.i.1.1 = sub nsw i16 %conv.us.i.1.1, %conv6.us.i.1.1
  %arrayidx8.us.i.1.1 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 9
  store i16 %sub.us.i.1.1, i16* %arrayidx8.us.i.1.1, align 2, !tbaa !24
  %arrayidx.us.i.2.1 = getelementptr inbounds i8, i8* %pix1, i32 18
  %21 = load i8, i8* %arrayidx.us.i.2.1, align 1, !tbaa !23
  %conv.us.i.2.1 = zext i8 %21 to i16
  %arrayidx5.us.i.2.1 = getelementptr inbounds i8, i8* %pix2, i32 34
  %22 = load i8, i8* %arrayidx5.us.i.2.1, align 1, !tbaa !23
  %conv6.us.i.2.1 = zext i8 %22 to i16
  %sub.us.i.2.1 = sub nsw i16 %conv.us.i.2.1, %conv6.us.i.2.1
  %arrayidx8.us.i.2.1 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 10
  store i16 %sub.us.i.2.1, i16* %arrayidx8.us.i.2.1, align 4, !tbaa !24
  %arrayidx.us.i.3.1 = getelementptr inbounds i8, i8* %pix1, i32 19
  %23 = load i8, i8* %arrayidx.us.i.3.1, align 1, !tbaa !23
  %conv.us.i.3.1 = zext i8 %23 to i16
  %arrayidx5.us.i.3.1 = getelementptr inbounds i8, i8* %pix2, i32 35
  %24 = load i8, i8* %arrayidx5.us.i.3.1, align 1, !tbaa !23
  %conv6.us.i.3.1 = zext i8 %24 to i16
  %sub.us.i.3.1 = sub nsw i16 %conv.us.i.3.1, %conv6.us.i.3.1
  %arrayidx8.us.i.3.1 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 11
  store i16 %sub.us.i.3.1, i16* %arrayidx8.us.i.3.1, align 2, !tbaa !24
  %arrayidx.us.i.4.1 = getelementptr inbounds i8, i8* %pix1, i32 20
  %25 = load i8, i8* %arrayidx.us.i.4.1, align 1, !tbaa !23
  %conv.us.i.4.1 = zext i8 %25 to i16
  %arrayidx5.us.i.4.1 = getelementptr inbounds i8, i8* %pix2, i32 36
  %26 = load i8, i8* %arrayidx5.us.i.4.1, align 1, !tbaa !23
  %conv6.us.i.4.1 = zext i8 %26 to i16
  %sub.us.i.4.1 = sub nsw i16 %conv.us.i.4.1, %conv6.us.i.4.1
  %arrayidx8.us.i.4.1 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 12
  store i16 %sub.us.i.4.1, i16* %arrayidx8.us.i.4.1, align 4, !tbaa !24
  %arrayidx.us.i.5.1 = getelementptr inbounds i8, i8* %pix1, i32 21
  %27 = load i8, i8* %arrayidx.us.i.5.1, align 1, !tbaa !23
  %conv.us.i.5.1 = zext i8 %27 to i16
  %arrayidx5.us.i.5.1 = getelementptr inbounds i8, i8* %pix2, i32 37
  %28 = load i8, i8* %arrayidx5.us.i.5.1, align 1, !tbaa !23
  %conv6.us.i.5.1 = zext i8 %28 to i16
  %sub.us.i.5.1 = sub nsw i16 %conv.us.i.5.1, %conv6.us.i.5.1
  %arrayidx8.us.i.5.1 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 13
  store i16 %sub.us.i.5.1, i16* %arrayidx8.us.i.5.1, align 2, !tbaa !24
  %arrayidx.us.i.6.1 = getelementptr inbounds i8, i8* %pix1, i32 22
  %29 = load i8, i8* %arrayidx.us.i.6.1, align 1, !tbaa !23
  %conv.us.i.6.1 = zext i8 %29 to i16
  %arrayidx5.us.i.6.1 = getelementptr inbounds i8, i8* %pix2, i32 38
  %30 = load i8, i8* %arrayidx5.us.i.6.1, align 1, !tbaa !23
  %conv6.us.i.6.1 = zext i8 %30 to i16
  %sub.us.i.6.1 = sub nsw i16 %conv.us.i.6.1, %conv6.us.i.6.1
  %arrayidx8.us.i.6.1 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 14
  store i16 %sub.us.i.6.1, i16* %arrayidx8.us.i.6.1, align 4, !tbaa !24
  %arrayidx.us.i.7.1 = getelementptr inbounds i8, i8* %pix1, i32 23
  %31 = load i8, i8* %arrayidx.us.i.7.1, align 1, !tbaa !23
  %conv.us.i.7.1 = zext i8 %31 to i16
  %arrayidx5.us.i.7.1 = getelementptr inbounds i8, i8* %pix2, i32 39
  %32 = load i8, i8* %arrayidx5.us.i.7.1, align 1, !tbaa !23
  %conv6.us.i.7.1 = zext i8 %32 to i16
  %sub.us.i.7.1 = sub nsw i16 %conv.us.i.7.1, %conv6.us.i.7.1
  %arrayidx8.us.i.7.1 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 15
  store i16 %sub.us.i.7.1, i16* %arrayidx8.us.i.7.1, align 2, !tbaa !24
  %add.ptr.us.i.1 = getelementptr inbounds i8, i8* %pix1, i32 32
  %add.ptr9.us.i.1 = getelementptr inbounds i8, i8* %pix2, i32 64
  %33 = load i8, i8* %add.ptr.us.i.1, align 1, !tbaa !23
  %conv.us.i.2410 = zext i8 %33 to i16
  %34 = load i8, i8* %add.ptr9.us.i.1, align 1, !tbaa !23
  %conv6.us.i.2411 = zext i8 %34 to i16
  %sub.us.i.2412 = sub nsw i16 %conv.us.i.2410, %conv6.us.i.2411
  %arrayidx8.us.i.2413 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 16
  store i16 %sub.us.i.2412, i16* %arrayidx8.us.i.2413, align 4, !tbaa !24
  %arrayidx.us.i.1.2 = getelementptr inbounds i8, i8* %pix1, i32 33
  %35 = load i8, i8* %arrayidx.us.i.1.2, align 1, !tbaa !23
  %conv.us.i.1.2 = zext i8 %35 to i16
  %arrayidx5.us.i.1.2 = getelementptr inbounds i8, i8* %pix2, i32 65
  %36 = load i8, i8* %arrayidx5.us.i.1.2, align 1, !tbaa !23
  %conv6.us.i.1.2 = zext i8 %36 to i16
  %sub.us.i.1.2 = sub nsw i16 %conv.us.i.1.2, %conv6.us.i.1.2
  %arrayidx8.us.i.1.2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 17
  store i16 %sub.us.i.1.2, i16* %arrayidx8.us.i.1.2, align 2, !tbaa !24
  %arrayidx.us.i.2.2 = getelementptr inbounds i8, i8* %pix1, i32 34
  %37 = load i8, i8* %arrayidx.us.i.2.2, align 1, !tbaa !23
  %conv.us.i.2.2 = zext i8 %37 to i16
  %arrayidx5.us.i.2.2 = getelementptr inbounds i8, i8* %pix2, i32 66
  %38 = load i8, i8* %arrayidx5.us.i.2.2, align 1, !tbaa !23
  %conv6.us.i.2.2 = zext i8 %38 to i16
  %sub.us.i.2.2 = sub nsw i16 %conv.us.i.2.2, %conv6.us.i.2.2
  %arrayidx8.us.i.2.2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 18
  store i16 %sub.us.i.2.2, i16* %arrayidx8.us.i.2.2, align 4, !tbaa !24
  %arrayidx.us.i.3.2 = getelementptr inbounds i8, i8* %pix1, i32 35
  %39 = load i8, i8* %arrayidx.us.i.3.2, align 1, !tbaa !23
  %conv.us.i.3.2 = zext i8 %39 to i16
  %arrayidx5.us.i.3.2 = getelementptr inbounds i8, i8* %pix2, i32 67
  %40 = load i8, i8* %arrayidx5.us.i.3.2, align 1, !tbaa !23
  %conv6.us.i.3.2 = zext i8 %40 to i16
  %sub.us.i.3.2 = sub nsw i16 %conv.us.i.3.2, %conv6.us.i.3.2
  %arrayidx8.us.i.3.2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 19
  store i16 %sub.us.i.3.2, i16* %arrayidx8.us.i.3.2, align 2, !tbaa !24
  %arrayidx.us.i.4.2 = getelementptr inbounds i8, i8* %pix1, i32 36
  %41 = load i8, i8* %arrayidx.us.i.4.2, align 1, !tbaa !23
  %conv.us.i.4.2 = zext i8 %41 to i16
  %arrayidx5.us.i.4.2 = getelementptr inbounds i8, i8* %pix2, i32 68
  %42 = load i8, i8* %arrayidx5.us.i.4.2, align 1, !tbaa !23
  %conv6.us.i.4.2 = zext i8 %42 to i16
  %sub.us.i.4.2 = sub nsw i16 %conv.us.i.4.2, %conv6.us.i.4.2
  %arrayidx8.us.i.4.2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 20
  store i16 %sub.us.i.4.2, i16* %arrayidx8.us.i.4.2, align 4, !tbaa !24
  %arrayidx.us.i.5.2 = getelementptr inbounds i8, i8* %pix1, i32 37
  %43 = load i8, i8* %arrayidx.us.i.5.2, align 1, !tbaa !23
  %conv.us.i.5.2 = zext i8 %43 to i16
  %arrayidx5.us.i.5.2 = getelementptr inbounds i8, i8* %pix2, i32 69
  %44 = load i8, i8* %arrayidx5.us.i.5.2, align 1, !tbaa !23
  %conv6.us.i.5.2 = zext i8 %44 to i16
  %sub.us.i.5.2 = sub nsw i16 %conv.us.i.5.2, %conv6.us.i.5.2
  %arrayidx8.us.i.5.2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 21
  store i16 %sub.us.i.5.2, i16* %arrayidx8.us.i.5.2, align 2, !tbaa !24
  %arrayidx.us.i.6.2 = getelementptr inbounds i8, i8* %pix1, i32 38
  %45 = load i8, i8* %arrayidx.us.i.6.2, align 1, !tbaa !23
  %conv.us.i.6.2 = zext i8 %45 to i16
  %arrayidx5.us.i.6.2 = getelementptr inbounds i8, i8* %pix2, i32 70
  %46 = load i8, i8* %arrayidx5.us.i.6.2, align 1, !tbaa !23
  %conv6.us.i.6.2 = zext i8 %46 to i16
  %sub.us.i.6.2 = sub nsw i16 %conv.us.i.6.2, %conv6.us.i.6.2
  %arrayidx8.us.i.6.2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 22
  store i16 %sub.us.i.6.2, i16* %arrayidx8.us.i.6.2, align 4, !tbaa !24
  %arrayidx.us.i.7.2 = getelementptr inbounds i8, i8* %pix1, i32 39
  %47 = load i8, i8* %arrayidx.us.i.7.2, align 1, !tbaa !23
  %conv.us.i.7.2 = zext i8 %47 to i16
  %arrayidx5.us.i.7.2 = getelementptr inbounds i8, i8* %pix2, i32 71
  %48 = load i8, i8* %arrayidx5.us.i.7.2, align 1, !tbaa !23
  %conv6.us.i.7.2 = zext i8 %48 to i16
  %sub.us.i.7.2 = sub nsw i16 %conv.us.i.7.2, %conv6.us.i.7.2
  %arrayidx8.us.i.7.2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 23
  store i16 %sub.us.i.7.2, i16* %arrayidx8.us.i.7.2, align 2, !tbaa !24
  %add.ptr.us.i.2 = getelementptr inbounds i8, i8* %pix1, i32 48
  %add.ptr9.us.i.2 = getelementptr inbounds i8, i8* %pix2, i32 96
  %49 = load i8, i8* %add.ptr.us.i.2, align 1, !tbaa !23
  %conv.us.i.3414 = zext i8 %49 to i16
  %50 = load i8, i8* %add.ptr9.us.i.2, align 1, !tbaa !23
  %conv6.us.i.3415 = zext i8 %50 to i16
  %sub.us.i.3416 = sub nsw i16 %conv.us.i.3414, %conv6.us.i.3415
  %arrayidx8.us.i.3417 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 24
  store i16 %sub.us.i.3416, i16* %arrayidx8.us.i.3417, align 4, !tbaa !24
  %arrayidx.us.i.1.3 = getelementptr inbounds i8, i8* %pix1, i32 49
  %51 = load i8, i8* %arrayidx.us.i.1.3, align 1, !tbaa !23
  %conv.us.i.1.3 = zext i8 %51 to i16
  %arrayidx5.us.i.1.3 = getelementptr inbounds i8, i8* %pix2, i32 97
  %52 = load i8, i8* %arrayidx5.us.i.1.3, align 1, !tbaa !23
  %conv6.us.i.1.3 = zext i8 %52 to i16
  %sub.us.i.1.3 = sub nsw i16 %conv.us.i.1.3, %conv6.us.i.1.3
  %arrayidx8.us.i.1.3 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 25
  store i16 %sub.us.i.1.3, i16* %arrayidx8.us.i.1.3, align 2, !tbaa !24
  %arrayidx.us.i.2.3 = getelementptr inbounds i8, i8* %pix1, i32 50
  %53 = load i8, i8* %arrayidx.us.i.2.3, align 1, !tbaa !23
  %conv.us.i.2.3 = zext i8 %53 to i16
  %arrayidx5.us.i.2.3 = getelementptr inbounds i8, i8* %pix2, i32 98
  %54 = load i8, i8* %arrayidx5.us.i.2.3, align 1, !tbaa !23
  %conv6.us.i.2.3 = zext i8 %54 to i16
  %sub.us.i.2.3 = sub nsw i16 %conv.us.i.2.3, %conv6.us.i.2.3
  %arrayidx8.us.i.2.3 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 26
  store i16 %sub.us.i.2.3, i16* %arrayidx8.us.i.2.3, align 4, !tbaa !24
  %arrayidx.us.i.3.3 = getelementptr inbounds i8, i8* %pix1, i32 51
  %55 = load i8, i8* %arrayidx.us.i.3.3, align 1, !tbaa !23
  %conv.us.i.3.3 = zext i8 %55 to i16
  %arrayidx5.us.i.3.3 = getelementptr inbounds i8, i8* %pix2, i32 99
  %56 = load i8, i8* %arrayidx5.us.i.3.3, align 1, !tbaa !23
  %conv6.us.i.3.3 = zext i8 %56 to i16
  %sub.us.i.3.3 = sub nsw i16 %conv.us.i.3.3, %conv6.us.i.3.3
  %arrayidx8.us.i.3.3 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 27
  store i16 %sub.us.i.3.3, i16* %arrayidx8.us.i.3.3, align 2, !tbaa !24
  %arrayidx.us.i.4.3 = getelementptr inbounds i8, i8* %pix1, i32 52
  %57 = load i8, i8* %arrayidx.us.i.4.3, align 1, !tbaa !23
  %conv.us.i.4.3 = zext i8 %57 to i16
  %arrayidx5.us.i.4.3 = getelementptr inbounds i8, i8* %pix2, i32 100
  %58 = load i8, i8* %arrayidx5.us.i.4.3, align 1, !tbaa !23
  %conv6.us.i.4.3 = zext i8 %58 to i16
  %sub.us.i.4.3 = sub nsw i16 %conv.us.i.4.3, %conv6.us.i.4.3
  %arrayidx8.us.i.4.3 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 28
  store i16 %sub.us.i.4.3, i16* %arrayidx8.us.i.4.3, align 4, !tbaa !24
  %arrayidx.us.i.5.3 = getelementptr inbounds i8, i8* %pix1, i32 53
  %59 = load i8, i8* %arrayidx.us.i.5.3, align 1, !tbaa !23
  %conv.us.i.5.3 = zext i8 %59 to i16
  %arrayidx5.us.i.5.3 = getelementptr inbounds i8, i8* %pix2, i32 101
  %60 = load i8, i8* %arrayidx5.us.i.5.3, align 1, !tbaa !23
  %conv6.us.i.5.3 = zext i8 %60 to i16
  %sub.us.i.5.3 = sub nsw i16 %conv.us.i.5.3, %conv6.us.i.5.3
  %arrayidx8.us.i.5.3 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 29
  store i16 %sub.us.i.5.3, i16* %arrayidx8.us.i.5.3, align 2, !tbaa !24
  %arrayidx.us.i.6.3 = getelementptr inbounds i8, i8* %pix1, i32 54
  %61 = load i8, i8* %arrayidx.us.i.6.3, align 1, !tbaa !23
  %conv.us.i.6.3 = zext i8 %61 to i16
  %arrayidx5.us.i.6.3 = getelementptr inbounds i8, i8* %pix2, i32 102
  %62 = load i8, i8* %arrayidx5.us.i.6.3, align 1, !tbaa !23
  %conv6.us.i.6.3 = zext i8 %62 to i16
  %sub.us.i.6.3 = sub nsw i16 %conv.us.i.6.3, %conv6.us.i.6.3
  %arrayidx8.us.i.6.3 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 30
  store i16 %sub.us.i.6.3, i16* %arrayidx8.us.i.6.3, align 4, !tbaa !24
  %arrayidx.us.i.7.3 = getelementptr inbounds i8, i8* %pix1, i32 55
  %63 = load i8, i8* %arrayidx.us.i.7.3, align 1, !tbaa !23
  %conv.us.i.7.3 = zext i8 %63 to i16
  %arrayidx5.us.i.7.3 = getelementptr inbounds i8, i8* %pix2, i32 103
  %64 = load i8, i8* %arrayidx5.us.i.7.3, align 1, !tbaa !23
  %conv6.us.i.7.3 = zext i8 %64 to i16
  %sub.us.i.7.3 = sub nsw i16 %conv.us.i.7.3, %conv6.us.i.7.3
  %arrayidx8.us.i.7.3 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 31
  store i16 %sub.us.i.7.3, i16* %arrayidx8.us.i.7.3, align 2, !tbaa !24
  %add.ptr.us.i.3 = getelementptr inbounds i8, i8* %pix1, i32 64
  %add.ptr9.us.i.3 = getelementptr inbounds i8, i8* %pix2, i32 128
  %65 = load i8, i8* %add.ptr.us.i.3, align 1, !tbaa !23
  %conv.us.i.4418 = zext i8 %65 to i16
  %66 = load i8, i8* %add.ptr9.us.i.3, align 1, !tbaa !23
  %conv6.us.i.4419 = zext i8 %66 to i16
  %sub.us.i.4420 = sub nsw i16 %conv.us.i.4418, %conv6.us.i.4419
  %arrayidx8.us.i.4421 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 32
  store i16 %sub.us.i.4420, i16* %arrayidx8.us.i.4421, align 4, !tbaa !24
  %arrayidx.us.i.1.4 = getelementptr inbounds i8, i8* %pix1, i32 65
  %67 = load i8, i8* %arrayidx.us.i.1.4, align 1, !tbaa !23
  %conv.us.i.1.4 = zext i8 %67 to i16
  %arrayidx5.us.i.1.4 = getelementptr inbounds i8, i8* %pix2, i32 129
  %68 = load i8, i8* %arrayidx5.us.i.1.4, align 1, !tbaa !23
  %conv6.us.i.1.4 = zext i8 %68 to i16
  %sub.us.i.1.4 = sub nsw i16 %conv.us.i.1.4, %conv6.us.i.1.4
  %arrayidx8.us.i.1.4 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 33
  store i16 %sub.us.i.1.4, i16* %arrayidx8.us.i.1.4, align 2, !tbaa !24
  %arrayidx.us.i.2.4 = getelementptr inbounds i8, i8* %pix1, i32 66
  %69 = load i8, i8* %arrayidx.us.i.2.4, align 1, !tbaa !23
  %conv.us.i.2.4 = zext i8 %69 to i16
  %arrayidx5.us.i.2.4 = getelementptr inbounds i8, i8* %pix2, i32 130
  %70 = load i8, i8* %arrayidx5.us.i.2.4, align 1, !tbaa !23
  %conv6.us.i.2.4 = zext i8 %70 to i16
  %sub.us.i.2.4 = sub nsw i16 %conv.us.i.2.4, %conv6.us.i.2.4
  %arrayidx8.us.i.2.4 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 34
  store i16 %sub.us.i.2.4, i16* %arrayidx8.us.i.2.4, align 4, !tbaa !24
  %arrayidx.us.i.3.4 = getelementptr inbounds i8, i8* %pix1, i32 67
  %71 = load i8, i8* %arrayidx.us.i.3.4, align 1, !tbaa !23
  %conv.us.i.3.4 = zext i8 %71 to i16
  %arrayidx5.us.i.3.4 = getelementptr inbounds i8, i8* %pix2, i32 131
  %72 = load i8, i8* %arrayidx5.us.i.3.4, align 1, !tbaa !23
  %conv6.us.i.3.4 = zext i8 %72 to i16
  %sub.us.i.3.4 = sub nsw i16 %conv.us.i.3.4, %conv6.us.i.3.4
  %arrayidx8.us.i.3.4 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 35
  store i16 %sub.us.i.3.4, i16* %arrayidx8.us.i.3.4, align 2, !tbaa !24
  %arrayidx.us.i.4.4 = getelementptr inbounds i8, i8* %pix1, i32 68
  %73 = load i8, i8* %arrayidx.us.i.4.4, align 1, !tbaa !23
  %conv.us.i.4.4 = zext i8 %73 to i16
  %arrayidx5.us.i.4.4 = getelementptr inbounds i8, i8* %pix2, i32 132
  %74 = load i8, i8* %arrayidx5.us.i.4.4, align 1, !tbaa !23
  %conv6.us.i.4.4 = zext i8 %74 to i16
  %sub.us.i.4.4 = sub nsw i16 %conv.us.i.4.4, %conv6.us.i.4.4
  %arrayidx8.us.i.4.4 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 36
  store i16 %sub.us.i.4.4, i16* %arrayidx8.us.i.4.4, align 4, !tbaa !24
  %arrayidx.us.i.5.4 = getelementptr inbounds i8, i8* %pix1, i32 69
  %75 = load i8, i8* %arrayidx.us.i.5.4, align 1, !tbaa !23
  %conv.us.i.5.4 = zext i8 %75 to i16
  %arrayidx5.us.i.5.4 = getelementptr inbounds i8, i8* %pix2, i32 133
  %76 = load i8, i8* %arrayidx5.us.i.5.4, align 1, !tbaa !23
  %conv6.us.i.5.4 = zext i8 %76 to i16
  %sub.us.i.5.4 = sub nsw i16 %conv.us.i.5.4, %conv6.us.i.5.4
  %arrayidx8.us.i.5.4 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 37
  store i16 %sub.us.i.5.4, i16* %arrayidx8.us.i.5.4, align 2, !tbaa !24
  %arrayidx.us.i.6.4 = getelementptr inbounds i8, i8* %pix1, i32 70
  %77 = load i8, i8* %arrayidx.us.i.6.4, align 1, !tbaa !23
  %conv.us.i.6.4 = zext i8 %77 to i16
  %arrayidx5.us.i.6.4 = getelementptr inbounds i8, i8* %pix2, i32 134
  %78 = load i8, i8* %arrayidx5.us.i.6.4, align 1, !tbaa !23
  %conv6.us.i.6.4 = zext i8 %78 to i16
  %sub.us.i.6.4 = sub nsw i16 %conv.us.i.6.4, %conv6.us.i.6.4
  %arrayidx8.us.i.6.4 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 38
  store i16 %sub.us.i.6.4, i16* %arrayidx8.us.i.6.4, align 4, !tbaa !24
  %arrayidx.us.i.7.4 = getelementptr inbounds i8, i8* %pix1, i32 71
  %79 = load i8, i8* %arrayidx.us.i.7.4, align 1, !tbaa !23
  %conv.us.i.7.4 = zext i8 %79 to i16
  %arrayidx5.us.i.7.4 = getelementptr inbounds i8, i8* %pix2, i32 135
  %80 = load i8, i8* %arrayidx5.us.i.7.4, align 1, !tbaa !23
  %conv6.us.i.7.4 = zext i8 %80 to i16
  %sub.us.i.7.4 = sub nsw i16 %conv.us.i.7.4, %conv6.us.i.7.4
  %arrayidx8.us.i.7.4 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 39
  store i16 %sub.us.i.7.4, i16* %arrayidx8.us.i.7.4, align 2, !tbaa !24
  %add.ptr.us.i.4 = getelementptr inbounds i8, i8* %pix1, i32 80
  %add.ptr9.us.i.4 = getelementptr inbounds i8, i8* %pix2, i32 160
  %81 = load i8, i8* %add.ptr.us.i.4, align 1, !tbaa !23
  %conv.us.i.5422 = zext i8 %81 to i16
  %82 = load i8, i8* %add.ptr9.us.i.4, align 1, !tbaa !23
  %conv6.us.i.5423 = zext i8 %82 to i16
  %sub.us.i.5424 = sub nsw i16 %conv.us.i.5422, %conv6.us.i.5423
  %arrayidx8.us.i.5425 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 40
  store i16 %sub.us.i.5424, i16* %arrayidx8.us.i.5425, align 4, !tbaa !24
  %arrayidx.us.i.1.5 = getelementptr inbounds i8, i8* %pix1, i32 81
  %83 = load i8, i8* %arrayidx.us.i.1.5, align 1, !tbaa !23
  %conv.us.i.1.5 = zext i8 %83 to i16
  %arrayidx5.us.i.1.5 = getelementptr inbounds i8, i8* %pix2, i32 161
  %84 = load i8, i8* %arrayidx5.us.i.1.5, align 1, !tbaa !23
  %conv6.us.i.1.5 = zext i8 %84 to i16
  %sub.us.i.1.5 = sub nsw i16 %conv.us.i.1.5, %conv6.us.i.1.5
  %arrayidx8.us.i.1.5 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 41
  store i16 %sub.us.i.1.5, i16* %arrayidx8.us.i.1.5, align 2, !tbaa !24
  %arrayidx.us.i.2.5 = getelementptr inbounds i8, i8* %pix1, i32 82
  %85 = load i8, i8* %arrayidx.us.i.2.5, align 1, !tbaa !23
  %conv.us.i.2.5 = zext i8 %85 to i16
  %arrayidx5.us.i.2.5 = getelementptr inbounds i8, i8* %pix2, i32 162
  %86 = load i8, i8* %arrayidx5.us.i.2.5, align 1, !tbaa !23
  %conv6.us.i.2.5 = zext i8 %86 to i16
  %sub.us.i.2.5 = sub nsw i16 %conv.us.i.2.5, %conv6.us.i.2.5
  %arrayidx8.us.i.2.5 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 42
  store i16 %sub.us.i.2.5, i16* %arrayidx8.us.i.2.5, align 4, !tbaa !24
  %arrayidx.us.i.3.5 = getelementptr inbounds i8, i8* %pix1, i32 83
  %87 = load i8, i8* %arrayidx.us.i.3.5, align 1, !tbaa !23
  %conv.us.i.3.5 = zext i8 %87 to i16
  %arrayidx5.us.i.3.5 = getelementptr inbounds i8, i8* %pix2, i32 163
  %88 = load i8, i8* %arrayidx5.us.i.3.5, align 1, !tbaa !23
  %conv6.us.i.3.5 = zext i8 %88 to i16
  %sub.us.i.3.5 = sub nsw i16 %conv.us.i.3.5, %conv6.us.i.3.5
  %arrayidx8.us.i.3.5 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 43
  store i16 %sub.us.i.3.5, i16* %arrayidx8.us.i.3.5, align 2, !tbaa !24
  %arrayidx.us.i.4.5 = getelementptr inbounds i8, i8* %pix1, i32 84
  %89 = load i8, i8* %arrayidx.us.i.4.5, align 1, !tbaa !23
  %conv.us.i.4.5 = zext i8 %89 to i16
  %arrayidx5.us.i.4.5 = getelementptr inbounds i8, i8* %pix2, i32 164
  %90 = load i8, i8* %arrayidx5.us.i.4.5, align 1, !tbaa !23
  %conv6.us.i.4.5 = zext i8 %90 to i16
  %sub.us.i.4.5 = sub nsw i16 %conv.us.i.4.5, %conv6.us.i.4.5
  %arrayidx8.us.i.4.5 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 44
  store i16 %sub.us.i.4.5, i16* %arrayidx8.us.i.4.5, align 4, !tbaa !24
  %arrayidx.us.i.5.5 = getelementptr inbounds i8, i8* %pix1, i32 85
  %91 = load i8, i8* %arrayidx.us.i.5.5, align 1, !tbaa !23
  %conv.us.i.5.5 = zext i8 %91 to i16
  %arrayidx5.us.i.5.5 = getelementptr inbounds i8, i8* %pix2, i32 165
  %92 = load i8, i8* %arrayidx5.us.i.5.5, align 1, !tbaa !23
  %conv6.us.i.5.5 = zext i8 %92 to i16
  %sub.us.i.5.5 = sub nsw i16 %conv.us.i.5.5, %conv6.us.i.5.5
  %arrayidx8.us.i.5.5 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 45
  store i16 %sub.us.i.5.5, i16* %arrayidx8.us.i.5.5, align 2, !tbaa !24
  %arrayidx.us.i.6.5 = getelementptr inbounds i8, i8* %pix1, i32 86
  %93 = load i8, i8* %arrayidx.us.i.6.5, align 1, !tbaa !23
  %conv.us.i.6.5 = zext i8 %93 to i16
  %arrayidx5.us.i.6.5 = getelementptr inbounds i8, i8* %pix2, i32 166
  %94 = load i8, i8* %arrayidx5.us.i.6.5, align 1, !tbaa !23
  %conv6.us.i.6.5 = zext i8 %94 to i16
  %sub.us.i.6.5 = sub nsw i16 %conv.us.i.6.5, %conv6.us.i.6.5
  %arrayidx8.us.i.6.5 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 46
  store i16 %sub.us.i.6.5, i16* %arrayidx8.us.i.6.5, align 4, !tbaa !24
  %arrayidx.us.i.7.5 = getelementptr inbounds i8, i8* %pix1, i32 87
  %95 = load i8, i8* %arrayidx.us.i.7.5, align 1, !tbaa !23
  %conv.us.i.7.5 = zext i8 %95 to i16
  %arrayidx5.us.i.7.5 = getelementptr inbounds i8, i8* %pix2, i32 167
  %96 = load i8, i8* %arrayidx5.us.i.7.5, align 1, !tbaa !23
  %conv6.us.i.7.5 = zext i8 %96 to i16
  %sub.us.i.7.5 = sub nsw i16 %conv.us.i.7.5, %conv6.us.i.7.5
  %arrayidx8.us.i.7.5 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 47
  store i16 %sub.us.i.7.5, i16* %arrayidx8.us.i.7.5, align 2, !tbaa !24
  %add.ptr.us.i.5 = getelementptr inbounds i8, i8* %pix1, i32 96
  %add.ptr9.us.i.5 = getelementptr inbounds i8, i8* %pix2, i32 192
  %97 = load i8, i8* %add.ptr.us.i.5, align 1, !tbaa !23
  %conv.us.i.6426 = zext i8 %97 to i16
  %98 = load i8, i8* %add.ptr9.us.i.5, align 1, !tbaa !23
  %conv6.us.i.6427 = zext i8 %98 to i16
  %sub.us.i.6428 = sub nsw i16 %conv.us.i.6426, %conv6.us.i.6427
  %arrayidx8.us.i.6429 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 48
  store i16 %sub.us.i.6428, i16* %arrayidx8.us.i.6429, align 4, !tbaa !24
  %arrayidx.us.i.1.6 = getelementptr inbounds i8, i8* %pix1, i32 97
  %99 = load i8, i8* %arrayidx.us.i.1.6, align 1, !tbaa !23
  %conv.us.i.1.6 = zext i8 %99 to i16
  %arrayidx5.us.i.1.6 = getelementptr inbounds i8, i8* %pix2, i32 193
  %100 = load i8, i8* %arrayidx5.us.i.1.6, align 1, !tbaa !23
  %conv6.us.i.1.6 = zext i8 %100 to i16
  %sub.us.i.1.6 = sub nsw i16 %conv.us.i.1.6, %conv6.us.i.1.6
  %arrayidx8.us.i.1.6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 49
  store i16 %sub.us.i.1.6, i16* %arrayidx8.us.i.1.6, align 2, !tbaa !24
  %arrayidx.us.i.2.6 = getelementptr inbounds i8, i8* %pix1, i32 98
  %101 = load i8, i8* %arrayidx.us.i.2.6, align 1, !tbaa !23
  %conv.us.i.2.6 = zext i8 %101 to i16
  %arrayidx5.us.i.2.6 = getelementptr inbounds i8, i8* %pix2, i32 194
  %102 = load i8, i8* %arrayidx5.us.i.2.6, align 1, !tbaa !23
  %conv6.us.i.2.6 = zext i8 %102 to i16
  %sub.us.i.2.6 = sub nsw i16 %conv.us.i.2.6, %conv6.us.i.2.6
  %arrayidx8.us.i.2.6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 50
  store i16 %sub.us.i.2.6, i16* %arrayidx8.us.i.2.6, align 4, !tbaa !24
  %arrayidx.us.i.3.6 = getelementptr inbounds i8, i8* %pix1, i32 99
  %103 = load i8, i8* %arrayidx.us.i.3.6, align 1, !tbaa !23
  %conv.us.i.3.6 = zext i8 %103 to i16
  %arrayidx5.us.i.3.6 = getelementptr inbounds i8, i8* %pix2, i32 195
  %104 = load i8, i8* %arrayidx5.us.i.3.6, align 1, !tbaa !23
  %conv6.us.i.3.6 = zext i8 %104 to i16
  %sub.us.i.3.6 = sub nsw i16 %conv.us.i.3.6, %conv6.us.i.3.6
  %arrayidx8.us.i.3.6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 51
  store i16 %sub.us.i.3.6, i16* %arrayidx8.us.i.3.6, align 2, !tbaa !24
  %arrayidx.us.i.4.6 = getelementptr inbounds i8, i8* %pix1, i32 100
  %105 = load i8, i8* %arrayidx.us.i.4.6, align 1, !tbaa !23
  %conv.us.i.4.6 = zext i8 %105 to i16
  %arrayidx5.us.i.4.6 = getelementptr inbounds i8, i8* %pix2, i32 196
  %106 = load i8, i8* %arrayidx5.us.i.4.6, align 1, !tbaa !23
  %conv6.us.i.4.6 = zext i8 %106 to i16
  %sub.us.i.4.6 = sub nsw i16 %conv.us.i.4.6, %conv6.us.i.4.6
  %arrayidx8.us.i.4.6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 52
  store i16 %sub.us.i.4.6, i16* %arrayidx8.us.i.4.6, align 4, !tbaa !24
  %arrayidx.us.i.5.6 = getelementptr inbounds i8, i8* %pix1, i32 101
  %107 = load i8, i8* %arrayidx.us.i.5.6, align 1, !tbaa !23
  %conv.us.i.5.6 = zext i8 %107 to i16
  %arrayidx5.us.i.5.6 = getelementptr inbounds i8, i8* %pix2, i32 197
  %108 = load i8, i8* %arrayidx5.us.i.5.6, align 1, !tbaa !23
  %conv6.us.i.5.6 = zext i8 %108 to i16
  %sub.us.i.5.6 = sub nsw i16 %conv.us.i.5.6, %conv6.us.i.5.6
  %arrayidx8.us.i.5.6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 53
  store i16 %sub.us.i.5.6, i16* %arrayidx8.us.i.5.6, align 2, !tbaa !24
  %arrayidx.us.i.6.6 = getelementptr inbounds i8, i8* %pix1, i32 102
  %109 = load i8, i8* %arrayidx.us.i.6.6, align 1, !tbaa !23
  %conv.us.i.6.6 = zext i8 %109 to i16
  %arrayidx5.us.i.6.6 = getelementptr inbounds i8, i8* %pix2, i32 198
  %110 = load i8, i8* %arrayidx5.us.i.6.6, align 1, !tbaa !23
  %conv6.us.i.6.6 = zext i8 %110 to i16
  %sub.us.i.6.6 = sub nsw i16 %conv.us.i.6.6, %conv6.us.i.6.6
  %arrayidx8.us.i.6.6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 54
  store i16 %sub.us.i.6.6, i16* %arrayidx8.us.i.6.6, align 4, !tbaa !24
  %arrayidx.us.i.7.6 = getelementptr inbounds i8, i8* %pix1, i32 103
  %111 = load i8, i8* %arrayidx.us.i.7.6, align 1, !tbaa !23
  %conv.us.i.7.6 = zext i8 %111 to i16
  %arrayidx5.us.i.7.6 = getelementptr inbounds i8, i8* %pix2, i32 199
  %112 = load i8, i8* %arrayidx5.us.i.7.6, align 1, !tbaa !23
  %conv6.us.i.7.6 = zext i8 %112 to i16
  %sub.us.i.7.6 = sub nsw i16 %conv.us.i.7.6, %conv6.us.i.7.6
  %arrayidx8.us.i.7.6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 55
  store i16 %sub.us.i.7.6, i16* %arrayidx8.us.i.7.6, align 2, !tbaa !24
  %add.ptr.us.i.6 = getelementptr inbounds i8, i8* %pix1, i32 112
  %add.ptr9.us.i.6 = getelementptr inbounds i8, i8* %pix2, i32 224
  %113 = load i8, i8* %add.ptr.us.i.6, align 1, !tbaa !23
  %conv.us.i.7430 = zext i8 %113 to i16
  %114 = load i8, i8* %add.ptr9.us.i.6, align 1, !tbaa !23
  %conv6.us.i.7431 = zext i8 %114 to i16
  %sub.us.i.7432 = sub nsw i16 %conv.us.i.7430, %conv6.us.i.7431
  %arrayidx8.us.i.7433 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 56
  store i16 %sub.us.i.7432, i16* %arrayidx8.us.i.7433, align 4, !tbaa !24
  %arrayidx.us.i.1.7 = getelementptr inbounds i8, i8* %pix1, i32 113
  %115 = load i8, i8* %arrayidx.us.i.1.7, align 1, !tbaa !23
  %conv.us.i.1.7 = zext i8 %115 to i16
  %arrayidx5.us.i.1.7 = getelementptr inbounds i8, i8* %pix2, i32 225
  %116 = load i8, i8* %arrayidx5.us.i.1.7, align 1, !tbaa !23
  %conv6.us.i.1.7 = zext i8 %116 to i16
  %sub.us.i.1.7 = sub nsw i16 %conv.us.i.1.7, %conv6.us.i.1.7
  %arrayidx8.us.i.1.7 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 57
  store i16 %sub.us.i.1.7, i16* %arrayidx8.us.i.1.7, align 2, !tbaa !24
  %arrayidx.us.i.2.7 = getelementptr inbounds i8, i8* %pix1, i32 114
  %117 = load i8, i8* %arrayidx.us.i.2.7, align 1, !tbaa !23
  %conv.us.i.2.7 = zext i8 %117 to i16
  %arrayidx5.us.i.2.7 = getelementptr inbounds i8, i8* %pix2, i32 226
  %118 = load i8, i8* %arrayidx5.us.i.2.7, align 1, !tbaa !23
  %conv6.us.i.2.7 = zext i8 %118 to i16
  %sub.us.i.2.7 = sub nsw i16 %conv.us.i.2.7, %conv6.us.i.2.7
  %arrayidx8.us.i.2.7 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 58
  store i16 %sub.us.i.2.7, i16* %arrayidx8.us.i.2.7, align 4, !tbaa !24
  %arrayidx.us.i.3.7 = getelementptr inbounds i8, i8* %pix1, i32 115
  %119 = load i8, i8* %arrayidx.us.i.3.7, align 1, !tbaa !23
  %conv.us.i.3.7 = zext i8 %119 to i16
  %arrayidx5.us.i.3.7 = getelementptr inbounds i8, i8* %pix2, i32 227
  %120 = load i8, i8* %arrayidx5.us.i.3.7, align 1, !tbaa !23
  %conv6.us.i.3.7 = zext i8 %120 to i16
  %sub.us.i.3.7 = sub nsw i16 %conv.us.i.3.7, %conv6.us.i.3.7
  %arrayidx8.us.i.3.7 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 59
  store i16 %sub.us.i.3.7, i16* %arrayidx8.us.i.3.7, align 2, !tbaa !24
  %arrayidx.us.i.4.7 = getelementptr inbounds i8, i8* %pix1, i32 116
  %121 = load i8, i8* %arrayidx.us.i.4.7, align 1, !tbaa !23
  %conv.us.i.4.7 = zext i8 %121 to i16
  %arrayidx5.us.i.4.7 = getelementptr inbounds i8, i8* %pix2, i32 228
  %122 = load i8, i8* %arrayidx5.us.i.4.7, align 1, !tbaa !23
  %conv6.us.i.4.7 = zext i8 %122 to i16
  %sub.us.i.4.7 = sub nsw i16 %conv.us.i.4.7, %conv6.us.i.4.7
  %arrayidx8.us.i.4.7 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 60
  store i16 %sub.us.i.4.7, i16* %arrayidx8.us.i.4.7, align 4, !tbaa !24
  %arrayidx.us.i.5.7 = getelementptr inbounds i8, i8* %pix1, i32 117
  %123 = load i8, i8* %arrayidx.us.i.5.7, align 1, !tbaa !23
  %conv.us.i.5.7 = zext i8 %123 to i16
  %arrayidx5.us.i.5.7 = getelementptr inbounds i8, i8* %pix2, i32 229
  %124 = load i8, i8* %arrayidx5.us.i.5.7, align 1, !tbaa !23
  %conv6.us.i.5.7 = zext i8 %124 to i16
  %sub.us.i.5.7 = sub nsw i16 %conv.us.i.5.7, %conv6.us.i.5.7
  %arrayidx8.us.i.5.7 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 61
  store i16 %sub.us.i.5.7, i16* %arrayidx8.us.i.5.7, align 2, !tbaa !24
  %arrayidx.us.i.6.7 = getelementptr inbounds i8, i8* %pix1, i32 118
  %125 = load i8, i8* %arrayidx.us.i.6.7, align 1, !tbaa !23
  %conv.us.i.6.7 = zext i8 %125 to i16
  %arrayidx5.us.i.6.7 = getelementptr inbounds i8, i8* %pix2, i32 230
  %126 = load i8, i8* %arrayidx5.us.i.6.7, align 1, !tbaa !23
  %conv6.us.i.6.7 = zext i8 %126 to i16
  %sub.us.i.6.7 = sub nsw i16 %conv.us.i.6.7, %conv6.us.i.6.7
  %arrayidx8.us.i.6.7 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 62
  store i16 %sub.us.i.6.7, i16* %arrayidx8.us.i.6.7, align 4, !tbaa !24
  %arrayidx.us.i.7.7 = getelementptr inbounds i8, i8* %pix1, i32 119
  %127 = load i8, i8* %arrayidx.us.i.7.7, align 1, !tbaa !23
  %conv.us.i.7.7 = zext i8 %127 to i16
  %arrayidx5.us.i.7.7 = getelementptr inbounds i8, i8* %pix2, i32 231
  %128 = load i8, i8* %arrayidx5.us.i.7.7, align 1, !tbaa !23
  %conv6.us.i.7.7 = zext i8 %128 to i16
  %sub.us.i.7.7 = sub nsw i16 %conv.us.i.7.7, %conv6.us.i.7.7
  %arrayidx8.us.i.7.7 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 63
  store i16 %sub.us.i.7.7, i16* %arrayidx8.us.i.7.7, align 2, !tbaa !24
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.0404 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %i.0404
  %129 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = sext i16 %129 to i32
  %add1 = add nuw nsw i32 %i.0404, 56
  %arrayidx2 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add1
  %130 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %conv3 = sext i16 %130 to i32
  %add4 = add nsw i32 %conv3, %conv
  %add5 = add nuw nsw i32 %i.0404, 8
  %arrayidx6 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add5
  %131 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %conv7 = sext i16 %131 to i32
  %add8 = add nuw nsw i32 %i.0404, 48
  %arrayidx9 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add8
  %132 = load i16, i16* %arrayidx9, align 2, !tbaa !24
  %conv10 = sext i16 %132 to i32
  %add11 = add nsw i32 %conv10, %conv7
  %add12 = add nuw nsw i32 %i.0404, 16
  %arrayidx13 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add12
  %133 = load i16, i16* %arrayidx13, align 2, !tbaa !24
  %conv14 = sext i16 %133 to i32
  %add15 = add nuw nsw i32 %i.0404, 40
  %arrayidx16 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add15
  %134 = load i16, i16* %arrayidx16, align 2, !tbaa !24
  %conv17 = sext i16 %134 to i32
  %add18 = add nsw i32 %conv17, %conv14
  %add19 = add nuw nsw i32 %i.0404, 24
  %arrayidx20 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add19
  %135 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = sext i16 %135 to i32
  %add22 = add nuw nsw i32 %i.0404, 32
  %arrayidx23 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add22
  %136 = load i16, i16* %arrayidx23, align 2, !tbaa !24
  %conv24 = sext i16 %136 to i32
  %add25 = add nsw i32 %conv24, %conv21
  %add26 = add nsw i32 %add25, %add4
  %add27 = add nsw i32 %add18, %add11
  %sub = sub nsw i32 %add4, %add25
  %sub28 = sub nsw i32 %add11, %add18
  %sub35 = sub nsw i32 %conv, %conv3
  %sub42 = sub nsw i32 %conv7, %conv10
  %sub49 = sub nsw i32 %conv14, %conv17
  %sub56 = sub nsw i32 %conv21, %conv24
  %shr = ashr i32 %sub35, 1
  %add57 = add nsw i32 %shr, %sub35
  %add58 = add nsw i32 %add57, %sub42
  %add59 = add nsw i32 %add58, %sub49
  %sub60 = sub nsw i32 %sub35, %sub56
  %shr61 = ashr i32 %sub49, 1
  %137 = add nsw i32 %shr61, %sub49
  %sub63 = sub nsw i32 %sub60, %137
  %shr65 = ashr i32 %sub42, 1
  %add66.neg = sub nsw i32 %sub35, %sub42
  %add64 = sub nsw i32 %add66.neg, %shr65
  %sub67 = add nsw i32 %add64, %sub56
  %sub68 = sub nsw i32 %sub42, %sub49
  %shr69 = ashr i32 %sub56, 1
  %add70 = add nsw i32 %sub56, %sub68
  %add71 = add nsw i32 %add70, %shr69
  %add72 = add nsw i32 %add26, %add27
  %conv73 = trunc i32 %add72 to i16
  store i16 %conv73, i16* %arrayidx, align 2, !tbaa !24
  %138 = lshr i32 %add71, 2
  %add77 = add nsw i32 %138, %add59
  %conv78 = trunc i32 %add77 to i16
  store i16 %conv78, i16* %arrayidx6, align 2, !tbaa !24
  %139 = lshr i32 %sub28, 1
  %add82 = add i32 %sub, %139
  %conv83 = trunc i32 %add82 to i16
  store i16 %conv83, i16* %arrayidx13, align 2, !tbaa !24
  %140 = lshr i32 %sub67, 2
  %add87 = add nsw i32 %sub63, %140
  %conv88 = trunc i32 %add87 to i16
  store i16 %conv88, i16* %arrayidx20, align 2, !tbaa !24
  %sub91 = sub nsw i32 %add26, %add27
  %conv92 = trunc i32 %sub91 to i16
  store i16 %conv92, i16* %arrayidx23, align 2, !tbaa !24
  %141 = lshr i32 %sub63, 2
  %sub96 = sub nsw i32 %sub67, %141
  %conv97 = trunc i32 %sub96 to i16
  store i16 %conv97, i16* %arrayidx16, align 2, !tbaa !24
  %142 = lshr i32 %sub, 1
  %sub101 = sub i32 %142, %sub28
  %conv102 = trunc i32 %sub101 to i16
  store i16 %conv102, i16* %arrayidx9, align 2, !tbaa !24
  %143 = lshr i32 %add59, 2
  %sub106 = sub nsw i32 %143, %add71
  %conv107 = trunc i32 %sub106 to i16
  store i16 %conv107, i16* %arrayidx2, align 2, !tbaa !24
  %inc = add nuw nsw i32 %i.0404, 1
  %exitcond405 = icmp eq i32 %inc, 8
  br i1 %exitcond405, label %for.body115, label %for.body

for.cond.cleanup114:                              ; preds = %for.body115
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #5
  ret void

for.body115:                                      ; preds = %for.body, %for.body115
  %i110.0403 = phi i32 [ %inc262, %for.body115 ], [ 0, %for.body ]
  %mul = shl nuw nsw i32 %i110.0403, 3
  %arrayidx118 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %mul
  %144 = load i16, i16* %arrayidx118, align 4, !tbaa !24
  %conv119 = sext i16 %144 to i32
  %add121 = or i32 %mul, 7
  %arrayidx122 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add121
  %145 = load i16, i16* %arrayidx122, align 2, !tbaa !24
  %conv123 = sext i16 %145 to i32
  %add124 = add nsw i32 %conv123, %conv119
  %add127 = or i32 %mul, 1
  %arrayidx128 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add127
  %146 = load i16, i16* %arrayidx128, align 2, !tbaa !24
  %conv129 = sext i16 %146 to i32
  %add131 = or i32 %mul, 6
  %arrayidx132 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add131
  %147 = load i16, i16* %arrayidx132, align 4, !tbaa !24
  %conv133 = sext i16 %147 to i32
  %add134 = add nsw i32 %conv133, %conv129
  %add137 = or i32 %mul, 2
  %arrayidx138 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add137
  %148 = load i16, i16* %arrayidx138, align 4, !tbaa !24
  %conv139 = sext i16 %148 to i32
  %add141 = or i32 %mul, 5
  %arrayidx142 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add141
  %149 = load i16, i16* %arrayidx142, align 2, !tbaa !24
  %conv143 = sext i16 %149 to i32
  %add144 = add nsw i32 %conv143, %conv139
  %add147 = or i32 %mul, 3
  %arrayidx148 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add147
  %150 = load i16, i16* %arrayidx148, align 2, !tbaa !24
  %conv149 = sext i16 %150 to i32
  %add151 = or i32 %mul, 4
  %arrayidx152 = getelementptr inbounds [64 x i16], [64 x i16]* %tmp, i32 0, i32 %add151
  %151 = load i16, i16* %arrayidx152, align 4, !tbaa !24
  %conv153 = sext i16 %151 to i32
  %add154 = add nsw i32 %conv153, %conv149
  %add156 = add nsw i32 %add154, %add124
  %add158 = add nsw i32 %add144, %add134
  %sub160 = sub nsw i32 %add124, %add154
  %sub162 = sub nsw i32 %add134, %add144
  %sub172 = sub nsw i32 %conv119, %conv123
  %sub182 = sub nsw i32 %conv129, %conv133
  %sub192 = sub nsw i32 %conv139, %conv143
  %sub202 = sub nsw i32 %conv149, %conv153
  %shr205 = ashr i32 %sub172, 1
  %add204 = add nsw i32 %shr205, %sub172
  %add206 = add nsw i32 %add204, %sub182
  %add207 = add nsw i32 %add206, %sub192
  %sub209 = sub nsw i32 %sub172, %sub202
  %shr210 = ashr i32 %sub192, 1
  %152 = add nsw i32 %shr210, %sub192
  %sub212 = sub nsw i32 %sub209, %152
  %shr215 = ashr i32 %sub182, 1
  %add216.neg = sub nsw i32 %sub172, %sub182
  %add214 = sub nsw i32 %add216.neg, %shr215
  %sub217 = add nsw i32 %add214, %sub202
  %sub219 = sub nsw i32 %sub182, %sub192
  %shr220 = ashr i32 %sub202, 1
  %add221 = add nsw i32 %sub202, %sub219
  %add222 = add nsw i32 %add221, %shr220
  %add223 = add nsw i32 %add156, %add158
  %conv224 = trunc i32 %add223 to i16
  %arrayidx226 = getelementptr inbounds i16, i16* %dct, i32 %i110.0403
  store i16 %conv224, i16* %arrayidx226, align 2, !tbaa !24
  %153 = lshr i32 %add222, 2
  %add228 = add nsw i32 %153, %add207
  %conv229 = trunc i32 %add228 to i16
  %add230 = add nuw nsw i32 %i110.0403, 8
  %arrayidx231 = getelementptr inbounds i16, i16* %dct, i32 %add230
  store i16 %conv229, i16* %arrayidx231, align 2, !tbaa !24
  %154 = lshr i32 %sub162, 1
  %add233 = add i32 %sub160, %154
  %conv234 = trunc i32 %add233 to i16
  %add235 = add nuw nsw i32 %i110.0403, 16
  %arrayidx236 = getelementptr inbounds i16, i16* %dct, i32 %add235
  store i16 %conv234, i16* %arrayidx236, align 2, !tbaa !24
  %155 = lshr i32 %sub217, 2
  %add238 = add nsw i32 %sub212, %155
  %conv239 = trunc i32 %add238 to i16
  %add240 = add nuw nsw i32 %i110.0403, 24
  %arrayidx241 = getelementptr inbounds i16, i16* %dct, i32 %add240
  store i16 %conv239, i16* %arrayidx241, align 2, !tbaa !24
  %sub242 = sub nsw i32 %add156, %add158
  %conv243 = trunc i32 %sub242 to i16
  %add244 = add nuw nsw i32 %i110.0403, 32
  %arrayidx245 = getelementptr inbounds i16, i16* %dct, i32 %add244
  store i16 %conv243, i16* %arrayidx245, align 2, !tbaa !24
  %156 = lshr i32 %sub212, 2
  %sub247 = sub nsw i32 %sub217, %156
  %conv248 = trunc i32 %sub247 to i16
  %add249 = add nuw nsw i32 %i110.0403, 40
  %arrayidx250 = getelementptr inbounds i16, i16* %dct, i32 %add249
  store i16 %conv248, i16* %arrayidx250, align 2, !tbaa !24
  %157 = lshr i32 %sub160, 1
  %sub252 = sub i32 %157, %sub162
  %conv253 = trunc i32 %sub252 to i16
  %add254 = add nuw nsw i32 %i110.0403, 48
  %arrayidx255 = getelementptr inbounds i16, i16* %dct, i32 %add254
  store i16 %conv253, i16* %arrayidx255, align 2, !tbaa !24
  %158 = lshr i32 %add207, 2
  %sub257 = sub nsw i32 %158, %add222
  %conv258 = trunc i32 %sub257 to i16
  %add259 = add nuw nsw i32 %i110.0403, 56
  %arrayidx260 = getelementptr inbounds i16, i16* %dct, i32 %add259
  store i16 %conv258, i16* %arrayidx260, align 2, !tbaa !24
  %inc262 = add nuw nsw i32 %i110.0403, 1
  %exitcond = icmp eq i32 %inc262, 8
  br i1 %exitcond, label %for.cond.cleanup114, label %for.body115
}

; Function Attrs: nofree norecurse nounwind
define internal void @add8x8_idct8(i8* nocapture %dst, i16* nocapture %dct) #2 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !24
  %add = add i16 %0, 32
  store i16 %add, i16* %dct, align 2, !tbaa !24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %1 = phi i16 [ %add, %entry ], [ %.pre, %for.body.for.body_crit_edge ]
  %i.0615 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx4 = getelementptr inbounds i16, i16* %dct, i32 %i.0615
  %conv5 = sext i16 %1 to i32
  %add6 = add nuw nsw i32 %i.0615, 32
  %arrayidx7 = getelementptr inbounds i16, i16* %dct, i32 %add6
  %2 = load i16, i16* %arrayidx7, align 2, !tbaa !24
  %conv8 = sext i16 %2 to i32
  %add9 = add nsw i32 %conv8, %conv5
  %sub = sub nsw i32 %conv5, %conv8
  %add16 = add nuw nsw i32 %i.0615, 16
  %arrayidx17 = getelementptr inbounds i16, i16* %dct, i32 %add16
  %3 = load i16, i16* %arrayidx17, align 2, !tbaa !24
  %conv18 = sext i16 %3 to i32
  %shr = ashr i32 %conv18, 1
  %add19 = add nuw nsw i32 %i.0615, 48
  %arrayidx20 = getelementptr inbounds i16, i16* %dct, i32 %add19
  %4 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = sext i16 %4 to i32
  %sub22 = sub nsw i32 %shr, %conv21
  %shr26 = ashr i32 %conv21, 1
  %add30 = add nsw i32 %shr26, %conv18
  %add31 = add nsw i32 %add30, %add9
  %add32 = add nsw i32 %sub22, %sub
  %sub33 = sub nsw i32 %sub, %sub22
  %sub34 = sub nsw i32 %add9, %add30
  %add35 = add nuw nsw i32 %i.0615, 24
  %arrayidx36 = getelementptr inbounds i16, i16* %dct, i32 %add35
  %5 = load i16, i16* %arrayidx36, align 2, !tbaa !24
  %conv37 = sext i16 %5 to i32
  %add39 = add nuw nsw i32 %i.0615, 40
  %arrayidx40 = getelementptr inbounds i16, i16* %dct, i32 %add39
  %6 = load i16, i16* %arrayidx40, align 2, !tbaa !24
  %conv41 = sext i16 %6 to i32
  %add42 = sub nsw i32 %conv41, %conv37
  %add43 = add nuw nsw i32 %i.0615, 56
  %arrayidx44 = getelementptr inbounds i16, i16* %dct, i32 %add43
  %7 = load i16, i16* %arrayidx44, align 2, !tbaa !24
  %conv45 = sext i16 %7 to i32
  %sub46 = sub nsw i32 %add42, %conv45
  %shr50 = ashr i32 %conv45, 1
  %sub51 = sub nsw i32 %sub46, %shr50
  %add52 = add nuw nsw i32 %i.0615, 8
  %arrayidx53 = getelementptr inbounds i16, i16* %dct, i32 %add52
  %8 = load i16, i16* %arrayidx53, align 2, !tbaa !24
  %conv54 = sext i16 %8 to i32
  %shr66 = ashr i32 %conv37, 1
  %9 = add nsw i32 %shr66, %conv37
  %sub62 = sub nsw i32 %conv45, %9
  %sub67 = add nsw i32 %sub62, %conv54
  %shr83 = ashr i32 %conv41, 1
  %add75 = add nsw i32 %conv45, %conv41
  %add79 = add nsw i32 %add75, %shr83
  %add84 = sub nsw i32 %add79, %conv54
  %add91 = add nsw i32 %conv41, %conv37
  %add95 = add nsw i32 %add91, %conv54
  %shr99 = ashr i32 %conv54, 1
  %add100 = add nsw i32 %add95, %shr99
  %shr101 = ashr i32 %add100, 2
  %add102 = add nsw i32 %shr101, %sub51
  %shr103 = ashr i32 %add84, 2
  %add104 = add nsw i32 %shr103, %sub67
  %shr105 = ashr i32 %sub67, 2
  %sub106 = sub nsw i32 %shr105, %add84
  %shr107 = ashr i32 %sub51, 2
  %sub108 = sub nsw i32 %add100, %shr107
  %add109 = add nsw i32 %sub108, %add31
  %conv110 = trunc i32 %add109 to i16
  store i16 %conv110, i16* %arrayidx4, align 2, !tbaa !24
  %add113 = add nsw i32 %sub106, %add32
  %conv114 = trunc i32 %add113 to i16
  store i16 %conv114, i16* %arrayidx53, align 2, !tbaa !24
  %add117 = add nsw i32 %add104, %sub33
  %conv118 = trunc i32 %add117 to i16
  store i16 %conv118, i16* %arrayidx17, align 2, !tbaa !24
  %add121 = add nsw i32 %add102, %sub34
  %conv122 = trunc i32 %add121 to i16
  store i16 %conv122, i16* %arrayidx36, align 2, !tbaa !24
  %sub125 = sub nsw i32 %sub34, %add102
  %conv126 = trunc i32 %sub125 to i16
  store i16 %conv126, i16* %arrayidx7, align 2, !tbaa !24
  %sub129 = sub nsw i32 %sub33, %add104
  %conv130 = trunc i32 %sub129 to i16
  store i16 %conv130, i16* %arrayidx40, align 2, !tbaa !24
  %sub133 = sub nsw i32 %add32, %sub106
  %conv134 = trunc i32 %sub133 to i16
  store i16 %conv134, i16* %arrayidx20, align 2, !tbaa !24
  %sub137 = sub nsw i32 %add31, %sub108
  %conv138 = trunc i32 %sub137 to i16
  store i16 %conv138, i16* %arrayidx44, align 2, !tbaa !24
  %inc = add nuw nsw i32 %i.0615, 1
  %exitcond616 = icmp eq i32 %inc, 8
  br i1 %exitcond616, label %for.body146, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx4.phi.trans.insert = getelementptr inbounds i16, i16* %dct, i32 %inc
  %.pre = load i16, i16* %arrayidx4.phi.trans.insert, align 2, !tbaa !24
  br label %for.body

for.cond.cleanup145:                              ; preds = %for.body146
  ret void

for.body146:                                      ; preds = %for.body, %for.body146
  %i141.0614 = phi i32 [ %inc366, %for.body146 ], [ 0, %for.body ]
  %mul = shl nuw nsw i32 %i141.0614, 3
  %arrayidx149 = getelementptr inbounds i16, i16* %dct, i32 %mul
  %10 = load i16, i16* %arrayidx149, align 2, !tbaa !24
  %conv150 = sext i16 %10 to i32
  %add152 = or i32 %mul, 4
  %arrayidx153 = getelementptr inbounds i16, i16* %dct, i32 %add152
  %11 = load i16, i16* %arrayidx153, align 2, !tbaa !24
  %conv154 = sext i16 %11 to i32
  %add155 = add nsw i32 %conv154, %conv150
  %sub165 = sub nsw i32 %conv150, %conv154
  %add168 = or i32 %mul, 2
  %arrayidx169 = getelementptr inbounds i16, i16* %dct, i32 %add168
  %12 = load i16, i16* %arrayidx169, align 2, !tbaa !24
  %conv170 = sext i16 %12 to i32
  %shr171 = ashr i32 %conv170, 1
  %add173 = or i32 %mul, 6
  %arrayidx174 = getelementptr inbounds i16, i16* %dct, i32 %add173
  %13 = load i16, i16* %arrayidx174, align 2, !tbaa !24
  %conv175 = sext i16 %13 to i32
  %sub176 = sub nsw i32 %shr171, %conv175
  %shr182 = ashr i32 %conv175, 1
  %add187 = add nsw i32 %shr182, %conv170
  %add189 = add nsw i32 %add187, %add155
  %add191 = add nsw i32 %sub176, %sub165
  %sub193 = sub nsw i32 %sub165, %sub176
  %sub195 = sub nsw i32 %add155, %add187
  %add198 = or i32 %mul, 3
  %arrayidx199 = getelementptr inbounds i16, i16* %dct, i32 %add198
  %14 = load i16, i16* %arrayidx199, align 2, !tbaa !24
  %conv200 = sext i16 %14 to i32
  %add203 = or i32 %mul, 5
  %arrayidx204 = getelementptr inbounds i16, i16* %dct, i32 %add203
  %15 = load i16, i16* %arrayidx204, align 2, !tbaa !24
  %conv205 = sext i16 %15 to i32
  %add206 = sub nsw i32 %conv205, %conv200
  %add208 = or i32 %mul, 7
  %arrayidx209 = getelementptr inbounds i16, i16* %dct, i32 %add208
  %16 = load i16, i16* %arrayidx209, align 2, !tbaa !24
  %conv210 = sext i16 %16 to i32
  %sub211 = sub nsw i32 %add206, %conv210
  %shr216 = ashr i32 %conv210, 1
  %sub217 = sub nsw i32 %sub211, %shr216
  %add220 = or i32 %mul, 1
  %arrayidx221 = getelementptr inbounds i16, i16* %dct, i32 %add220
  %17 = load i16, i16* %arrayidx221, align 2, !tbaa !24
  %conv222 = sext i16 %17 to i32
  %shr237 = ashr i32 %conv200, 1
  %18 = add nsw i32 %shr237, %conv200
  %sub232 = sub nsw i32 %conv210, %18
  %sub238 = add nsw i32 %sub232, %conv222
  %shr259 = ashr i32 %conv205, 1
  %add249 = add nsw i32 %conv210, %conv205
  %add254 = add nsw i32 %add249, %shr259
  %add260 = sub nsw i32 %add254, %conv222
  %add270 = add nsw i32 %conv205, %conv200
  %add275 = add nsw i32 %add270, %conv222
  %shr280 = ashr i32 %conv222, 1
  %add281 = add nsw i32 %add275, %shr280
  %shr283 = ashr i32 %add281, 2
  %add284 = add nsw i32 %shr283, %sub217
  %shr286 = ashr i32 %add260, 2
  %add287 = add nsw i32 %shr286, %sub238
  %shr289 = ashr i32 %sub238, 2
  %sub290 = sub nsw i32 %shr289, %add260
  %shr292 = ashr i32 %sub217, 2
  %sub293 = sub nsw i32 %add281, %shr292
  %arrayidx295 = getelementptr inbounds i8, i8* %dst, i32 %i141.0614
  %19 = load i8, i8* %arrayidx295, align 1, !tbaa !23
  %conv296 = zext i8 %19 to i32
  %add297 = add nsw i32 %sub293, %add189
  %shr298 = ashr i32 %add297, 6
  %add299 = add nsw i32 %shr298, %conv296
  %tobool.i = icmp ugt i32 %add299, 255
  %sub.i = sub nsw i32 0, %add299
  %shr.i = ashr i32 %sub.i, 31
  %cond.i = select i1 %tobool.i, i32 %shr.i, i32 %add299
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, i8* %arrayidx295, align 1, !tbaa !23
  %add302 = add nuw nsw i32 %i141.0614, 32
  %arrayidx303 = getelementptr inbounds i8, i8* %dst, i32 %add302
  %20 = load i8, i8* %arrayidx303, align 1, !tbaa !23
  %conv304 = zext i8 %20 to i32
  %add305 = add nsw i32 %sub290, %add191
  %shr306 = ashr i32 %add305, 6
  %add307 = add nsw i32 %shr306, %conv304
  %tobool.i609 = icmp ugt i32 %add307, 255
  %sub.i610 = sub nsw i32 0, %add307
  %shr.i611 = ashr i32 %sub.i610, 31
  %cond.i612 = select i1 %tobool.i609, i32 %shr.i611, i32 %add307
  %conv.i613 = trunc i32 %cond.i612 to i8
  store i8 %conv.i613, i8* %arrayidx303, align 1, !tbaa !23
  %add311 = add nuw nsw i32 %i141.0614, 64
  %arrayidx312 = getelementptr inbounds i8, i8* %dst, i32 %add311
  %21 = load i8, i8* %arrayidx312, align 1, !tbaa !23
  %conv313 = zext i8 %21 to i32
  %add314 = add nsw i32 %add287, %sub193
  %shr315 = ashr i32 %add314, 6
  %add316 = add nsw i32 %shr315, %conv313
  %tobool.i604 = icmp ugt i32 %add316, 255
  %sub.i605 = sub nsw i32 0, %add316
  %shr.i606 = ashr i32 %sub.i605, 31
  %cond.i607 = select i1 %tobool.i604, i32 %shr.i606, i32 %add316
  %conv.i608 = trunc i32 %cond.i607 to i8
  store i8 %conv.i608, i8* %arrayidx312, align 1, !tbaa !23
  %add320 = add nuw nsw i32 %i141.0614, 96
  %arrayidx321 = getelementptr inbounds i8, i8* %dst, i32 %add320
  %22 = load i8, i8* %arrayidx321, align 1, !tbaa !23
  %conv322 = zext i8 %22 to i32
  %add323 = add nsw i32 %add284, %sub195
  %shr324 = ashr i32 %add323, 6
  %add325 = add nsw i32 %shr324, %conv322
  %tobool.i599 = icmp ugt i32 %add325, 255
  %sub.i600 = sub nsw i32 0, %add325
  %shr.i601 = ashr i32 %sub.i600, 31
  %cond.i602 = select i1 %tobool.i599, i32 %shr.i601, i32 %add325
  %conv.i603 = trunc i32 %cond.i602 to i8
  store i8 %conv.i603, i8* %arrayidx321, align 1, !tbaa !23
  %add329 = add nuw nsw i32 %i141.0614, 128
  %arrayidx330 = getelementptr inbounds i8, i8* %dst, i32 %add329
  %23 = load i8, i8* %arrayidx330, align 1, !tbaa !23
  %conv331 = zext i8 %23 to i32
  %sub332 = sub nsw i32 %sub195, %add284
  %shr333 = ashr i32 %sub332, 6
  %add334 = add nsw i32 %shr333, %conv331
  %tobool.i594 = icmp ugt i32 %add334, 255
  %sub.i595 = sub nsw i32 0, %add334
  %shr.i596 = ashr i32 %sub.i595, 31
  %cond.i597 = select i1 %tobool.i594, i32 %shr.i596, i32 %add334
  %conv.i598 = trunc i32 %cond.i597 to i8
  store i8 %conv.i598, i8* %arrayidx330, align 1, !tbaa !23
  %add338 = add nuw nsw i32 %i141.0614, 160
  %arrayidx339 = getelementptr inbounds i8, i8* %dst, i32 %add338
  %24 = load i8, i8* %arrayidx339, align 1, !tbaa !23
  %conv340 = zext i8 %24 to i32
  %sub341 = sub nsw i32 %sub193, %add287
  %shr342 = ashr i32 %sub341, 6
  %add343 = add nsw i32 %shr342, %conv340
  %tobool.i589 = icmp ugt i32 %add343, 255
  %sub.i590 = sub nsw i32 0, %add343
  %shr.i591 = ashr i32 %sub.i590, 31
  %cond.i592 = select i1 %tobool.i589, i32 %shr.i591, i32 %add343
  %conv.i593 = trunc i32 %cond.i592 to i8
  store i8 %conv.i593, i8* %arrayidx339, align 1, !tbaa !23
  %add347 = add nuw nsw i32 %i141.0614, 192
  %arrayidx348 = getelementptr inbounds i8, i8* %dst, i32 %add347
  %25 = load i8, i8* %arrayidx348, align 1, !tbaa !23
  %conv349 = zext i8 %25 to i32
  %sub350 = sub nsw i32 %add191, %sub290
  %shr351 = ashr i32 %sub350, 6
  %add352 = add nsw i32 %shr351, %conv349
  %tobool.i584 = icmp ugt i32 %add352, 255
  %sub.i585 = sub nsw i32 0, %add352
  %shr.i586 = ashr i32 %sub.i585, 31
  %cond.i587 = select i1 %tobool.i584, i32 %shr.i586, i32 %add352
  %conv.i588 = trunc i32 %cond.i587 to i8
  store i8 %conv.i588, i8* %arrayidx348, align 1, !tbaa !23
  %add356 = add nuw nsw i32 %i141.0614, 224
  %arrayidx357 = getelementptr inbounds i8, i8* %dst, i32 %add356
  %26 = load i8, i8* %arrayidx357, align 1, !tbaa !23
  %conv358 = zext i8 %26 to i32
  %sub359 = sub nsw i32 %add189, %sub293
  %shr360 = ashr i32 %sub359, 6
  %add361 = add nsw i32 %shr360, %conv358
  %tobool.i579 = icmp ugt i32 %add361, 255
  %sub.i580 = sub nsw i32 0, %add361
  %shr.i581 = ashr i32 %sub.i580, 31
  %cond.i582 = select i1 %tobool.i579, i32 %shr.i581, i32 %add361
  %conv.i583 = trunc i32 %cond.i582 to i8
  store i8 %conv.i583, i8* %arrayidx357, align 1, !tbaa !23
  %inc366 = add nuw nsw i32 %i141.0614, 1
  %exitcond = icmp eq i32 %inc366, 8
  br i1 %exitcond, label %for.cond.cleanup145, label %for.body146
}

; Function Attrs: nounwind
define internal void @sub16x16_dct8([64 x i16]* nocapture %dct, i8* nocapture readonly %pix1, i8* nocapture readonly %pix2) #1 {
entry:
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %dct, i32 0, i32 0
  tail call void @sub8x8_dct8(i16* %arraydecay, i8* %pix1, i8* %pix2)
  %arraydecay4 = getelementptr inbounds [64 x i16], [64 x i16]* %dct, i32 1, i32 0
  %arrayidx5 = getelementptr inbounds i8, i8* %pix1, i32 8
  %arrayidx6 = getelementptr inbounds i8, i8* %pix2, i32 8
  tail call void @sub8x8_dct8(i16* nonnull %arraydecay4, i8* nonnull %arrayidx5, i8* nonnull %arrayidx6)
  %arraydecay8 = getelementptr inbounds [64 x i16], [64 x i16]* %dct, i32 2, i32 0
  %arrayidx9 = getelementptr inbounds i8, i8* %pix1, i32 128
  %arrayidx10 = getelementptr inbounds i8, i8* %pix2, i32 256
  tail call void @sub8x8_dct8(i16* nonnull %arraydecay8, i8* nonnull %arrayidx9, i8* nonnull %arrayidx10)
  %arraydecay12 = getelementptr inbounds [64 x i16], [64 x i16]* %dct, i32 3, i32 0
  %arrayidx13 = getelementptr inbounds i8, i8* %pix1, i32 136
  %arrayidx14 = getelementptr inbounds i8, i8* %pix2, i32 264
  tail call void @sub8x8_dct8(i16* nonnull %arraydecay12, i8* nonnull %arrayidx13, i8* nonnull %arrayidx14)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @add16x16_idct8(i8* nocapture %dst, [64 x i16]* nocapture %dct) #2 {
entry:
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %dct, i32 0, i32 0
  tail call void @add8x8_idct8(i8* %dst, i16* %arraydecay)
  %arrayidx2 = getelementptr inbounds i8, i8* %dst, i32 8
  %arraydecay4 = getelementptr inbounds [64 x i16], [64 x i16]* %dct, i32 1, i32 0
  tail call void @add8x8_idct8(i8* nonnull %arrayidx2, i16* nonnull %arraydecay4)
  %arrayidx5 = getelementptr inbounds i8, i8* %dst, i32 256
  %arraydecay7 = getelementptr inbounds [64 x i16], [64 x i16]* %dct, i32 2, i32 0
  tail call void @add8x8_idct8(i8* nonnull %arrayidx5, i16* nonnull %arraydecay7)
  %arrayidx8 = getelementptr inbounds i8, i8* %dst, i32 264
  %arraydecay10 = getelementptr inbounds [64 x i16], [64 x i16]* %dct, i32 3, i32 0
  tail call void @add8x8_idct8(i8* nonnull %arrayidx8, i16* nonnull %arraydecay10)
  ret void
}

; Function Attrs: nounwind
define internal void @dct4x4dc(i16* nocapture %d) #1 {
entry:
  %tmp = alloca [16 x i16], align 4
  %0 = bitcast [16 x i16]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %1 = load i16, i16* %d, align 2, !tbaa !24
  %conv = sext i16 %1 to i32
  %arrayidx3 = getelementptr inbounds i16, i16* %d, i32 1
  %2 = load i16, i16* %arrayidx3, align 2, !tbaa !24
  %conv4 = sext i16 %2 to i32
  %add5 = add nsw i32 %conv4, %conv
  %sub = sub nsw i32 %conv, %conv4
  %arrayidx16 = getelementptr inbounds i16, i16* %d, i32 2
  %3 = load i16, i16* %arrayidx16, align 2, !tbaa !24
  %conv17 = sext i16 %3 to i32
  %arrayidx20 = getelementptr inbounds i16, i16* %d, i32 3
  %4 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = sext i16 %4 to i32
  %add22 = add nsw i32 %conv21, %conv17
  %sub31 = sub nsw i32 %conv17, %conv21
  %add32 = add nsw i32 %add22, %add5
  %conv33 = trunc i32 %add32 to i16
  %arrayidx35 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 0
  store i16 %conv33, i16* %arrayidx35, align 4, !tbaa !24
  %sub36 = sub nsw i32 %add5, %add22
  %conv37 = trunc i32 %sub36 to i16
  %arrayidx39 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 4
  store i16 %conv37, i16* %arrayidx39, align 4, !tbaa !24
  %sub40 = sub nsw i32 %sub, %sub31
  %conv41 = trunc i32 %sub40 to i16
  %arrayidx43 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 8
  store i16 %conv41, i16* %arrayidx43, align 4, !tbaa !24
  %add44 = add nsw i32 %sub31, %sub
  %conv45 = trunc i32 %add44 to i16
  %arrayidx47 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 12
  store i16 %conv45, i16* %arrayidx47, align 4, !tbaa !24
  %arrayidx.1 = getelementptr inbounds i16, i16* %d, i32 4
  %5 = load i16, i16* %arrayidx.1, align 2, !tbaa !24
  %conv.1 = sext i16 %5 to i32
  %arrayidx3.1 = getelementptr inbounds i16, i16* %d, i32 5
  %6 = load i16, i16* %arrayidx3.1, align 2, !tbaa !24
  %conv4.1 = sext i16 %6 to i32
  %add5.1 = add nsw i32 %conv4.1, %conv.1
  %sub.1 = sub nsw i32 %conv.1, %conv4.1
  %arrayidx16.1 = getelementptr inbounds i16, i16* %d, i32 6
  %7 = load i16, i16* %arrayidx16.1, align 2, !tbaa !24
  %conv17.1 = sext i16 %7 to i32
  %arrayidx20.1 = getelementptr inbounds i16, i16* %d, i32 7
  %8 = load i16, i16* %arrayidx20.1, align 2, !tbaa !24
  %conv21.1 = sext i16 %8 to i32
  %add22.1 = add nsw i32 %conv21.1, %conv17.1
  %sub31.1 = sub nsw i32 %conv17.1, %conv21.1
  %add32.1 = add nsw i32 %add22.1, %add5.1
  %conv33.1 = trunc i32 %add32.1 to i16
  %arrayidx35.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 1
  store i16 %conv33.1, i16* %arrayidx35.1, align 2, !tbaa !24
  %sub36.1 = sub nsw i32 %add5.1, %add22.1
  %conv37.1 = trunc i32 %sub36.1 to i16
  %arrayidx39.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 5
  store i16 %conv37.1, i16* %arrayidx39.1, align 2, !tbaa !24
  %sub40.1 = sub nsw i32 %sub.1, %sub31.1
  %conv41.1 = trunc i32 %sub40.1 to i16
  %arrayidx43.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 9
  store i16 %conv41.1, i16* %arrayidx43.1, align 2, !tbaa !24
  %add44.1 = add nsw i32 %sub31.1, %sub.1
  %conv45.1 = trunc i32 %add44.1 to i16
  %arrayidx47.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 13
  store i16 %conv45.1, i16* %arrayidx47.1, align 2, !tbaa !24
  %arrayidx.2 = getelementptr inbounds i16, i16* %d, i32 8
  %9 = load i16, i16* %arrayidx.2, align 2, !tbaa !24
  %conv.2 = sext i16 %9 to i32
  %arrayidx3.2 = getelementptr inbounds i16, i16* %d, i32 9
  %10 = load i16, i16* %arrayidx3.2, align 2, !tbaa !24
  %conv4.2 = sext i16 %10 to i32
  %add5.2 = add nsw i32 %conv4.2, %conv.2
  %sub.2 = sub nsw i32 %conv.2, %conv4.2
  %arrayidx16.2 = getelementptr inbounds i16, i16* %d, i32 10
  %11 = load i16, i16* %arrayidx16.2, align 2, !tbaa !24
  %conv17.2 = sext i16 %11 to i32
  %arrayidx20.2 = getelementptr inbounds i16, i16* %d, i32 11
  %12 = load i16, i16* %arrayidx20.2, align 2, !tbaa !24
  %conv21.2 = sext i16 %12 to i32
  %add22.2 = add nsw i32 %conv21.2, %conv17.2
  %sub31.2 = sub nsw i32 %conv17.2, %conv21.2
  %add32.2 = add nsw i32 %add22.2, %add5.2
  %conv33.2 = trunc i32 %add32.2 to i16
  %arrayidx35.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 2
  store i16 %conv33.2, i16* %arrayidx35.2, align 4, !tbaa !24
  %sub36.2 = sub nsw i32 %add5.2, %add22.2
  %conv37.2 = trunc i32 %sub36.2 to i16
  %arrayidx39.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 6
  store i16 %conv37.2, i16* %arrayidx39.2, align 4, !tbaa !24
  %sub40.2 = sub nsw i32 %sub.2, %sub31.2
  %conv41.2 = trunc i32 %sub40.2 to i16
  %arrayidx43.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 10
  store i16 %conv41.2, i16* %arrayidx43.2, align 4, !tbaa !24
  %add44.2 = add nsw i32 %sub31.2, %sub.2
  %conv45.2 = trunc i32 %add44.2 to i16
  %arrayidx47.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 14
  store i16 %conv45.2, i16* %arrayidx47.2, align 4, !tbaa !24
  %arrayidx.3 = getelementptr inbounds i16, i16* %d, i32 12
  %13 = load i16, i16* %arrayidx.3, align 2, !tbaa !24
  %conv.3 = sext i16 %13 to i32
  %arrayidx3.3 = getelementptr inbounds i16, i16* %d, i32 13
  %14 = load i16, i16* %arrayidx3.3, align 2, !tbaa !24
  %conv4.3 = sext i16 %14 to i32
  %add5.3 = add nsw i32 %conv4.3, %conv.3
  %sub.3 = sub nsw i32 %conv.3, %conv4.3
  %arrayidx16.3 = getelementptr inbounds i16, i16* %d, i32 14
  %15 = load i16, i16* %arrayidx16.3, align 2, !tbaa !24
  %conv17.3 = sext i16 %15 to i32
  %arrayidx20.3 = getelementptr inbounds i16, i16* %d, i32 15
  %16 = load i16, i16* %arrayidx20.3, align 2, !tbaa !24
  %conv21.3 = sext i16 %16 to i32
  %add22.3 = add nsw i32 %conv21.3, %conv17.3
  %sub31.3 = sub nsw i32 %conv17.3, %conv21.3
  %add32.3 = add nsw i32 %add22.3, %add5.3
  %conv33.3 = trunc i32 %add32.3 to i16
  %arrayidx35.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 3
  store i16 %conv33.3, i16* %arrayidx35.3, align 2, !tbaa !24
  %sub36.3 = sub nsw i32 %add5.3, %add22.3
  %conv37.3 = trunc i32 %sub36.3 to i16
  %arrayidx39.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 7
  store i16 %conv37.3, i16* %arrayidx39.3, align 2, !tbaa !24
  %sub40.3 = sub nsw i32 %sub.3, %sub31.3
  %conv41.3 = trunc i32 %sub40.3 to i16
  %arrayidx43.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 11
  store i16 %conv41.3, i16* %arrayidx43.3, align 2, !tbaa !24
  %add44.3 = add nsw i32 %sub31.3, %sub.3
  %conv45.3 = trunc i32 %add44.3 to i16
  %arrayidx47.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 15
  store i16 %conv45.3, i16* %arrayidx47.3, align 2, !tbaa !24
  %17 = load i16, i16* %arrayidx35, align 4, !tbaa !24
  %conv58 = sext i16 %17 to i32
  %sext = shl i32 %add32.1, 16
  %conv62 = ashr exact i32 %sext, 16
  %add63 = add nsw i32 %conv62, %conv58
  %sub73 = sub nsw i32 %conv58, %conv62
  %sext181 = shl i32 %add32.2, 16
  %conv78 = ashr exact i32 %sext181, 16
  %sext182 = shl i32 %add32.3, 16
  %conv82 = ashr exact i32 %sext182, 16
  %add83 = add nsw i32 %conv82, %conv78
  %sub93 = sub nsw i32 %conv78, %conv82
  %add94 = add nsw i32 %add63, 1
  %add95 = add nsw i32 %add94, %add83
  %18 = lshr i32 %add95, 1
  %conv96 = trunc i32 %18 to i16
  store i16 %conv96, i16* %d, align 2, !tbaa !24
  %add101 = sub nsw i32 %add94, %add83
  %19 = lshr i32 %add101, 1
  %conv103 = trunc i32 %19 to i16
  store i16 %conv103, i16* %arrayidx3, align 2, !tbaa !24
  %sub107 = add nsw i32 %sub73, 1
  %add108 = sub nsw i32 %sub107, %sub93
  %20 = lshr i32 %add108, 1
  %conv110 = trunc i32 %20 to i16
  store i16 %conv110, i16* %arrayidx16, align 2, !tbaa !24
  %add115 = add nsw i32 %sub107, %sub93
  %21 = lshr i32 %add115, 1
  %conv117 = trunc i32 %21 to i16
  store i16 %conv117, i16* %arrayidx20, align 2, !tbaa !24
  %22 = load i16, i16* %arrayidx39, align 4, !tbaa !24
  %conv58.1 = sext i16 %22 to i32
  %23 = load i16, i16* %arrayidx39.1, align 2, !tbaa !24
  %conv62.1 = sext i16 %23 to i32
  %add63.1 = add nsw i32 %conv62.1, %conv58.1
  %sub73.1 = sub nsw i32 %conv58.1, %conv62.1
  %sext183 = shl i32 %sub36.2, 16
  %conv78.1 = ashr exact i32 %sext183, 16
  %sext184 = shl i32 %sub36.3, 16
  %conv82.1 = ashr exact i32 %sext184, 16
  %add83.1 = add nsw i32 %conv82.1, %conv78.1
  %sub93.1 = sub nsw i32 %conv78.1, %conv82.1
  %add94.1 = add nsw i32 %add63.1, 1
  %add95.1 = add nsw i32 %add94.1, %add83.1
  %24 = lshr i32 %add95.1, 1
  %conv96.1 = trunc i32 %24 to i16
  store i16 %conv96.1, i16* %arrayidx.1, align 2, !tbaa !24
  %add101.1 = sub nsw i32 %add94.1, %add83.1
  %25 = lshr i32 %add101.1, 1
  %conv103.1 = trunc i32 %25 to i16
  store i16 %conv103.1, i16* %arrayidx3.1, align 2, !tbaa !24
  %sub107.1 = add nsw i32 %sub73.1, 1
  %add108.1 = sub nsw i32 %sub107.1, %sub93.1
  %26 = lshr i32 %add108.1, 1
  %conv110.1 = trunc i32 %26 to i16
  store i16 %conv110.1, i16* %arrayidx16.1, align 2, !tbaa !24
  %add115.1 = add nsw i32 %sub107.1, %sub93.1
  %27 = lshr i32 %add115.1, 1
  %conv117.1 = trunc i32 %27 to i16
  store i16 %conv117.1, i16* %arrayidx20.1, align 2, !tbaa !24
  %28 = load i16, i16* %arrayidx43, align 4, !tbaa !24
  %conv58.2 = sext i16 %28 to i32
  %29 = load i16, i16* %arrayidx43.1, align 2, !tbaa !24
  %conv62.2 = sext i16 %29 to i32
  %add63.2 = add nsw i32 %conv62.2, %conv58.2
  %sub73.2 = sub nsw i32 %conv58.2, %conv62.2
  %sext185 = shl i32 %sub40.2, 16
  %conv78.2 = ashr exact i32 %sext185, 16
  %sext186 = shl i32 %sub40.3, 16
  %conv82.2 = ashr exact i32 %sext186, 16
  %add83.2 = add nsw i32 %conv82.2, %conv78.2
  %sub93.2 = sub nsw i32 %conv78.2, %conv82.2
  %add94.2 = add nsw i32 %add63.2, 1
  %add95.2 = add nsw i32 %add94.2, %add83.2
  %30 = lshr i32 %add95.2, 1
  %conv96.2 = trunc i32 %30 to i16
  store i16 %conv96.2, i16* %arrayidx.2, align 2, !tbaa !24
  %add101.2 = sub nsw i32 %add94.2, %add83.2
  %31 = lshr i32 %add101.2, 1
  %conv103.2 = trunc i32 %31 to i16
  store i16 %conv103.2, i16* %arrayidx3.2, align 2, !tbaa !24
  %sub107.2 = add nsw i32 %sub73.2, 1
  %add108.2 = sub nsw i32 %sub107.2, %sub93.2
  %32 = lshr i32 %add108.2, 1
  %conv110.2 = trunc i32 %32 to i16
  store i16 %conv110.2, i16* %arrayidx16.2, align 2, !tbaa !24
  %add115.2 = add nsw i32 %sub107.2, %sub93.2
  %33 = lshr i32 %add115.2, 1
  %conv117.2 = trunc i32 %33 to i16
  store i16 %conv117.2, i16* %arrayidx20.2, align 2, !tbaa !24
  %34 = load i16, i16* %arrayidx47, align 4, !tbaa !24
  %conv58.3 = sext i16 %34 to i32
  %35 = load i16, i16* %arrayidx47.1, align 2, !tbaa !24
  %conv62.3 = sext i16 %35 to i32
  %add63.3 = add nsw i32 %conv62.3, %conv58.3
  %sub73.3 = sub nsw i32 %conv58.3, %conv62.3
  %36 = load i16, i16* %arrayidx47.2, align 4, !tbaa !24
  %conv78.3 = sext i16 %36 to i32
  %sext187 = shl i32 %add44.3, 16
  %conv82.3 = ashr exact i32 %sext187, 16
  %add83.3 = add nsw i32 %conv82.3, %conv78.3
  %sub93.3 = sub nsw i32 %conv78.3, %conv82.3
  %add94.3 = add nsw i32 %add63.3, 1
  %add95.3 = add nsw i32 %add94.3, %add83.3
  %37 = lshr i32 %add95.3, 1
  %conv96.3 = trunc i32 %37 to i16
  store i16 %conv96.3, i16* %arrayidx.3, align 2, !tbaa !24
  %add101.3 = sub nsw i32 %add94.3, %add83.3
  %38 = lshr i32 %add101.3, 1
  %conv103.3 = trunc i32 %38 to i16
  store i16 %conv103.3, i16* %arrayidx3.3, align 2, !tbaa !24
  %sub107.3 = add nsw i32 %sub73.3, 1
  %add108.3 = sub nsw i32 %sub107.3, %sub93.3
  %39 = lshr i32 %add108.3, 1
  %conv110.3 = trunc i32 %39 to i16
  store i16 %conv110.3, i16* %arrayidx16.3, align 2, !tbaa !24
  %add115.3 = add nsw i32 %sub107.3, %sub93.3
  %40 = lshr i32 %add115.3, 1
  %conv117.3 = trunc i32 %40 to i16
  store i16 %conv117.3, i16* %arrayidx20.3, align 2, !tbaa !24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret void
}

; Function Attrs: nounwind
define internal void @idct4x4dc(i16* nocapture %d) #1 {
entry:
  %tmp = alloca [16 x i16], align 4
  %0 = bitcast [16 x i16]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %1 = load i16, i16* %d, align 2, !tbaa !24
  %conv = sext i16 %1 to i32
  %arrayidx3 = getelementptr inbounds i16, i16* %d, i32 1
  %2 = load i16, i16* %arrayidx3, align 2, !tbaa !24
  %conv4 = sext i16 %2 to i32
  %add5 = add nsw i32 %conv4, %conv
  %sub = sub nsw i32 %conv, %conv4
  %arrayidx16 = getelementptr inbounds i16, i16* %d, i32 2
  %3 = load i16, i16* %arrayidx16, align 2, !tbaa !24
  %conv17 = sext i16 %3 to i32
  %arrayidx20 = getelementptr inbounds i16, i16* %d, i32 3
  %4 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = sext i16 %4 to i32
  %add22 = add nsw i32 %conv21, %conv17
  %sub31 = sub nsw i32 %conv17, %conv21
  %add32 = add nsw i32 %add22, %add5
  %conv33 = trunc i32 %add32 to i16
  %arrayidx35 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 0
  store i16 %conv33, i16* %arrayidx35, align 4, !tbaa !24
  %sub36 = sub nsw i32 %add5, %add22
  %conv37 = trunc i32 %sub36 to i16
  %arrayidx39 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 4
  store i16 %conv37, i16* %arrayidx39, align 4, !tbaa !24
  %sub40 = sub nsw i32 %sub, %sub31
  %conv41 = trunc i32 %sub40 to i16
  %arrayidx43 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 8
  store i16 %conv41, i16* %arrayidx43, align 4, !tbaa !24
  %add44 = add nsw i32 %sub31, %sub
  %conv45 = trunc i32 %add44 to i16
  %arrayidx47 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 12
  store i16 %conv45, i16* %arrayidx47, align 4, !tbaa !24
  %arrayidx.1 = getelementptr inbounds i16, i16* %d, i32 4
  %5 = load i16, i16* %arrayidx.1, align 2, !tbaa !24
  %conv.1 = sext i16 %5 to i32
  %arrayidx3.1 = getelementptr inbounds i16, i16* %d, i32 5
  %6 = load i16, i16* %arrayidx3.1, align 2, !tbaa !24
  %conv4.1 = sext i16 %6 to i32
  %add5.1 = add nsw i32 %conv4.1, %conv.1
  %sub.1 = sub nsw i32 %conv.1, %conv4.1
  %arrayidx16.1 = getelementptr inbounds i16, i16* %d, i32 6
  %7 = load i16, i16* %arrayidx16.1, align 2, !tbaa !24
  %conv17.1 = sext i16 %7 to i32
  %arrayidx20.1 = getelementptr inbounds i16, i16* %d, i32 7
  %8 = load i16, i16* %arrayidx20.1, align 2, !tbaa !24
  %conv21.1 = sext i16 %8 to i32
  %add22.1 = add nsw i32 %conv21.1, %conv17.1
  %sub31.1 = sub nsw i32 %conv17.1, %conv21.1
  %add32.1 = add nsw i32 %add22.1, %add5.1
  %conv33.1 = trunc i32 %add32.1 to i16
  %arrayidx35.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 1
  store i16 %conv33.1, i16* %arrayidx35.1, align 2, !tbaa !24
  %sub36.1 = sub nsw i32 %add5.1, %add22.1
  %conv37.1 = trunc i32 %sub36.1 to i16
  %arrayidx39.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 5
  store i16 %conv37.1, i16* %arrayidx39.1, align 2, !tbaa !24
  %sub40.1 = sub nsw i32 %sub.1, %sub31.1
  %conv41.1 = trunc i32 %sub40.1 to i16
  %arrayidx43.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 9
  store i16 %conv41.1, i16* %arrayidx43.1, align 2, !tbaa !24
  %add44.1 = add nsw i32 %sub31.1, %sub.1
  %conv45.1 = trunc i32 %add44.1 to i16
  %arrayidx47.1 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 13
  store i16 %conv45.1, i16* %arrayidx47.1, align 2, !tbaa !24
  %arrayidx.2 = getelementptr inbounds i16, i16* %d, i32 8
  %9 = load i16, i16* %arrayidx.2, align 2, !tbaa !24
  %conv.2 = sext i16 %9 to i32
  %arrayidx3.2 = getelementptr inbounds i16, i16* %d, i32 9
  %10 = load i16, i16* %arrayidx3.2, align 2, !tbaa !24
  %conv4.2 = sext i16 %10 to i32
  %add5.2 = add nsw i32 %conv4.2, %conv.2
  %sub.2 = sub nsw i32 %conv.2, %conv4.2
  %arrayidx16.2 = getelementptr inbounds i16, i16* %d, i32 10
  %11 = load i16, i16* %arrayidx16.2, align 2, !tbaa !24
  %conv17.2 = sext i16 %11 to i32
  %arrayidx20.2 = getelementptr inbounds i16, i16* %d, i32 11
  %12 = load i16, i16* %arrayidx20.2, align 2, !tbaa !24
  %conv21.2 = sext i16 %12 to i32
  %add22.2 = add nsw i32 %conv21.2, %conv17.2
  %sub31.2 = sub nsw i32 %conv17.2, %conv21.2
  %add32.2 = add nsw i32 %add22.2, %add5.2
  %conv33.2 = trunc i32 %add32.2 to i16
  %arrayidx35.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 2
  store i16 %conv33.2, i16* %arrayidx35.2, align 4, !tbaa !24
  %sub36.2 = sub nsw i32 %add5.2, %add22.2
  %conv37.2 = trunc i32 %sub36.2 to i16
  %arrayidx39.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 6
  store i16 %conv37.2, i16* %arrayidx39.2, align 4, !tbaa !24
  %sub40.2 = sub nsw i32 %sub.2, %sub31.2
  %conv41.2 = trunc i32 %sub40.2 to i16
  %arrayidx43.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 10
  store i16 %conv41.2, i16* %arrayidx43.2, align 4, !tbaa !24
  %add44.2 = add nsw i32 %sub31.2, %sub.2
  %conv45.2 = trunc i32 %add44.2 to i16
  %arrayidx47.2 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 14
  store i16 %conv45.2, i16* %arrayidx47.2, align 4, !tbaa !24
  %arrayidx.3 = getelementptr inbounds i16, i16* %d, i32 12
  %13 = load i16, i16* %arrayidx.3, align 2, !tbaa !24
  %conv.3 = sext i16 %13 to i32
  %arrayidx3.3 = getelementptr inbounds i16, i16* %d, i32 13
  %14 = load i16, i16* %arrayidx3.3, align 2, !tbaa !24
  %conv4.3 = sext i16 %14 to i32
  %add5.3 = add nsw i32 %conv4.3, %conv.3
  %sub.3 = sub nsw i32 %conv.3, %conv4.3
  %arrayidx16.3 = getelementptr inbounds i16, i16* %d, i32 14
  %15 = load i16, i16* %arrayidx16.3, align 2, !tbaa !24
  %conv17.3 = sext i16 %15 to i32
  %arrayidx20.3 = getelementptr inbounds i16, i16* %d, i32 15
  %16 = load i16, i16* %arrayidx20.3, align 2, !tbaa !24
  %conv21.3 = sext i16 %16 to i32
  %add22.3 = add nsw i32 %conv21.3, %conv17.3
  %sub31.3 = sub nsw i32 %conv17.3, %conv21.3
  %add32.3 = add nsw i32 %add22.3, %add5.3
  %conv33.3 = trunc i32 %add32.3 to i16
  %arrayidx35.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 3
  store i16 %conv33.3, i16* %arrayidx35.3, align 2, !tbaa !24
  %sub36.3 = sub nsw i32 %add5.3, %add22.3
  %conv37.3 = trunc i32 %sub36.3 to i16
  %arrayidx39.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 7
  store i16 %conv37.3, i16* %arrayidx39.3, align 2, !tbaa !24
  %sub40.3 = sub nsw i32 %sub.3, %sub31.3
  %conv41.3 = trunc i32 %sub40.3 to i16
  %arrayidx43.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 11
  store i16 %conv41.3, i16* %arrayidx43.3, align 2, !tbaa !24
  %add44.3 = add nsw i32 %sub31.3, %sub.3
  %conv45.3 = trunc i32 %add44.3 to i16
  %arrayidx47.3 = getelementptr inbounds [16 x i16], [16 x i16]* %tmp, i32 0, i32 15
  store i16 %conv45.3, i16* %arrayidx47.3, align 2, !tbaa !24
  %17 = load i16, i16* %arrayidx35, align 4, !tbaa !24
  %conv58 = sext i16 %17 to i32
  %sext = shl i32 %add32.1, 16
  %conv62 = ashr exact i32 %sext, 16
  %add63 = add nsw i32 %conv62, %conv58
  %sub73 = sub nsw i32 %conv58, %conv62
  %sext174 = shl i32 %add32.2, 16
  %conv78 = ashr exact i32 %sext174, 16
  %sext175 = shl i32 %add32.3, 16
  %conv82 = ashr exact i32 %sext175, 16
  %add83 = add nsw i32 %conv82, %conv78
  %sub93 = sub nsw i32 %conv78, %conv82
  %add94 = add nsw i32 %add83, %add63
  %conv95 = trunc i32 %add94 to i16
  store i16 %conv95, i16* %d, align 2, !tbaa !24
  %sub99 = sub nsw i32 %add63, %add83
  %conv100 = trunc i32 %sub99 to i16
  store i16 %conv100, i16* %arrayidx3, align 2, !tbaa !24
  %sub104 = sub nsw i32 %sub73, %sub93
  %conv105 = trunc i32 %sub104 to i16
  store i16 %conv105, i16* %arrayidx16, align 2, !tbaa !24
  %add109 = add nsw i32 %sub93, %sub73
  %conv110 = trunc i32 %add109 to i16
  store i16 %conv110, i16* %arrayidx20, align 2, !tbaa !24
  %18 = load i16, i16* %arrayidx39, align 4, !tbaa !24
  %conv58.1 = sext i16 %18 to i32
  %sext176 = shl i32 %sub36.1, 16
  %conv62.1 = ashr exact i32 %sext176, 16
  %add63.1 = add nsw i32 %conv62.1, %conv58.1
  %sub73.1 = sub nsw i32 %conv58.1, %conv62.1
  %sext177 = shl i32 %sub36.2, 16
  %conv78.1 = ashr exact i32 %sext177, 16
  %sext178 = shl i32 %sub36.3, 16
  %conv82.1 = ashr exact i32 %sext178, 16
  %add83.1 = add nsw i32 %conv82.1, %conv78.1
  %sub93.1 = sub nsw i32 %conv78.1, %conv82.1
  %add94.1 = add nsw i32 %add83.1, %add63.1
  %conv95.1 = trunc i32 %add94.1 to i16
  store i16 %conv95.1, i16* %arrayidx.1, align 2, !tbaa !24
  %sub99.1 = sub nsw i32 %add63.1, %add83.1
  %conv100.1 = trunc i32 %sub99.1 to i16
  store i16 %conv100.1, i16* %arrayidx3.1, align 2, !tbaa !24
  %sub104.1 = sub nsw i32 %sub73.1, %sub93.1
  %conv105.1 = trunc i32 %sub104.1 to i16
  store i16 %conv105.1, i16* %arrayidx16.1, align 2, !tbaa !24
  %add109.1 = add nsw i32 %sub93.1, %sub73.1
  %conv110.1 = trunc i32 %add109.1 to i16
  store i16 %conv110.1, i16* %arrayidx20.1, align 2, !tbaa !24
  %19 = load i16, i16* %arrayidx43, align 4, !tbaa !24
  %conv58.2 = sext i16 %19 to i32
  %20 = load i16, i16* %arrayidx43.1, align 2, !tbaa !24
  %conv62.2 = sext i16 %20 to i32
  %add63.2 = add nsw i32 %conv62.2, %conv58.2
  %sub73.2 = sub nsw i32 %conv58.2, %conv62.2
  %sext179 = shl i32 %sub40.2, 16
  %conv78.2 = ashr exact i32 %sext179, 16
  %sext180 = shl i32 %sub40.3, 16
  %conv82.2 = ashr exact i32 %sext180, 16
  %add83.2 = add nsw i32 %conv82.2, %conv78.2
  %sub93.2 = sub nsw i32 %conv78.2, %conv82.2
  %add94.2 = add nsw i32 %add83.2, %add63.2
  %conv95.2 = trunc i32 %add94.2 to i16
  store i16 %conv95.2, i16* %arrayidx.2, align 2, !tbaa !24
  %sub99.2 = sub nsw i32 %add63.2, %add83.2
  %conv100.2 = trunc i32 %sub99.2 to i16
  store i16 %conv100.2, i16* %arrayidx3.2, align 2, !tbaa !24
  %sub104.2 = sub nsw i32 %sub73.2, %sub93.2
  %conv105.2 = trunc i32 %sub104.2 to i16
  store i16 %conv105.2, i16* %arrayidx16.2, align 2, !tbaa !24
  %add109.2 = add nsw i32 %sub93.2, %sub73.2
  %conv110.2 = trunc i32 %add109.2 to i16
  store i16 %conv110.2, i16* %arrayidx20.2, align 2, !tbaa !24
  %21 = load i16, i16* %arrayidx47, align 4, !tbaa !24
  %conv58.3 = sext i16 %21 to i32
  %22 = load i16, i16* %arrayidx47.1, align 2, !tbaa !24
  %conv62.3 = sext i16 %22 to i32
  %add63.3 = add nsw i32 %conv62.3, %conv58.3
  %sub73.3 = sub nsw i32 %conv58.3, %conv62.3
  %23 = load i16, i16* %arrayidx47.2, align 4, !tbaa !24
  %conv78.3 = sext i16 %23 to i32
  %sext181 = shl i32 %add44.3, 16
  %conv82.3 = ashr exact i32 %sext181, 16
  %add83.3 = add nsw i32 %conv82.3, %conv78.3
  %sub93.3 = sub nsw i32 %conv78.3, %conv82.3
  %add94.3 = add nsw i32 %add83.3, %add63.3
  %conv95.3 = trunc i32 %add94.3 to i16
  store i16 %conv95.3, i16* %arrayidx.3, align 2, !tbaa !24
  %sub99.3 = sub nsw i32 %add63.3, %add83.3
  %conv100.3 = trunc i32 %sub99.3 to i16
  store i16 %conv100.3, i16* %arrayidx3.3, align 2, !tbaa !24
  %sub104.3 = sub nsw i32 %sub73.3, %sub93.3
  %conv105.3 = trunc i32 %sub104.3 to i16
  store i16 %conv105.3, i16* %arrayidx16.3, align 2, !tbaa !24
  %add109.3 = add nsw i32 %sub93.3, %sub73.3
  %conv110.3 = trunc i32 %add109.3 to i16
  store i16 %conv110.3, i16* %arrayidx20.3, align 2, !tbaa !24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @dct2x4dc(i16* nocapture %dct, [16 x i16]* nocapture %dct4x4) #2 {
entry:
  %arrayidx1 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 0, i32 0
  %0 = load i16, i16* %arrayidx1, align 2, !tbaa !24
  %conv = sext i16 %0 to i32
  %arrayidx3 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 1, i32 0
  %1 = load i16, i16* %arrayidx3, align 2, !tbaa !24
  %conv4 = sext i16 %1 to i32
  %add = add nsw i32 %conv4, %conv
  %arrayidx6 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 2, i32 0
  %2 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %conv7 = sext i16 %2 to i32
  %arrayidx9 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 3, i32 0
  %3 = load i16, i16* %arrayidx9, align 2, !tbaa !24
  %conv10 = sext i16 %3 to i32
  %add11 = add nsw i32 %conv10, %conv7
  %arrayidx13 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 4, i32 0
  %4 = load i16, i16* %arrayidx13, align 2, !tbaa !24
  %conv14 = sext i16 %4 to i32
  %arrayidx16 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 5, i32 0
  %5 = load i16, i16* %arrayidx16, align 2, !tbaa !24
  %conv17 = sext i16 %5 to i32
  %add18 = add nsw i32 %conv17, %conv14
  %arrayidx20 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 6, i32 0
  %6 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = sext i16 %6 to i32
  %arrayidx23 = getelementptr inbounds [16 x i16], [16 x i16]* %dct4x4, i32 7, i32 0
  %7 = load i16, i16* %arrayidx23, align 2, !tbaa !24
  %conv24 = sext i16 %7 to i32
  %add25 = add nsw i32 %conv24, %conv21
  %sub = sub nsw i32 %conv, %conv4
  %sub38 = sub nsw i32 %conv7, %conv10
  %sub45 = sub nsw i32 %conv14, %conv17
  %sub52 = sub nsw i32 %conv21, %conv24
  %add53 = add nsw i32 %add11, %add
  %add54 = add nsw i32 %add25, %add18
  %add55 = add nsw i32 %sub38, %sub
  %add56 = add nsw i32 %sub52, %sub45
  %sub57 = sub nsw i32 %add, %add11
  %sub58 = sub nsw i32 %add18, %add25
  %sub59 = sub nsw i32 %sub, %sub38
  %sub60 = sub nsw i32 %sub45, %sub52
  %add61 = add nsw i32 %add54, %add53
  %conv62 = trunc i32 %add61 to i16
  store i16 %conv62, i16* %dct, align 2, !tbaa !24
  %add64 = add nsw i32 %add56, %add55
  %conv65 = trunc i32 %add64 to i16
  %arrayidx66 = getelementptr inbounds i16, i16* %dct, i32 1
  store i16 %conv65, i16* %arrayidx66, align 2, !tbaa !24
  %sub67 = sub nsw i32 %add53, %add54
  %conv68 = trunc i32 %sub67 to i16
  %arrayidx69 = getelementptr inbounds i16, i16* %dct, i32 2
  store i16 %conv68, i16* %arrayidx69, align 2, !tbaa !24
  %sub70 = sub nsw i32 %add55, %add56
  %conv71 = trunc i32 %sub70 to i16
  %arrayidx72 = getelementptr inbounds i16, i16* %dct, i32 3
  store i16 %conv71, i16* %arrayidx72, align 2, !tbaa !24
  %sub73 = sub nsw i32 %sub57, %sub58
  %conv74 = trunc i32 %sub73 to i16
  %arrayidx75 = getelementptr inbounds i16, i16* %dct, i32 4
  store i16 %conv74, i16* %arrayidx75, align 2, !tbaa !24
  %sub76 = sub nsw i32 %sub59, %sub60
  %conv77 = trunc i32 %sub76 to i16
  %arrayidx78 = getelementptr inbounds i16, i16* %dct, i32 5
  store i16 %conv77, i16* %arrayidx78, align 2, !tbaa !24
  %add79 = add nsw i32 %sub58, %sub57
  %conv80 = trunc i32 %add79 to i16
  %arrayidx81 = getelementptr inbounds i16, i16* %dct, i32 6
  store i16 %conv80, i16* %arrayidx81, align 2, !tbaa !24
  %add82 = add nsw i32 %sub60, %sub59
  %conv83 = trunc i32 %add82 to i16
  %arrayidx84 = getelementptr inbounds i16, i16* %dct, i32 7
  store i16 %conv83, i16* %arrayidx84, align 2, !tbaa !24
  store i16 0, i16* %arrayidx1, align 2, !tbaa !24
  store i16 0, i16* %arrayidx3, align 2, !tbaa !24
  store i16 0, i16* %arrayidx6, align 2, !tbaa !24
  store i16 0, i16* %arrayidx9, align 2, !tbaa !24
  store i16 0, i16* %arrayidx13, align 2, !tbaa !24
  store i16 0, i16* %arrayidx16, align 2, !tbaa !24
  store i16 0, i16* %arrayidx20, align 2, !tbaa !24
  store i16 0, i16* %arrayidx23, align 2, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_zigzag_init(i32 %cpu, %struct.x264_zigzag_function_t* nocapture %pf_progressive, %struct.x264_zigzag_function_t* nocapture %pf_interlaced) local_unnamed_addr #0 {
entry:
  %scan_8x8 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_interlaced, i32 0, i32 0
  store void (i16*, i16*)* @zigzag_scan_8x8_field, void (i16*, i16*)** %scan_8x8, align 4, !tbaa !26
  %scan_8x81 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_progressive, i32 0, i32 0
  store void (i16*, i16*)* @zigzag_scan_8x8_frame, void (i16*, i16*)** %scan_8x81, align 4, !tbaa !26
  %scan_4x4 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_interlaced, i32 0, i32 1
  store void (i16*, i16*)* @zigzag_scan_4x4_field, void (i16*, i16*)** %scan_4x4, align 4, !tbaa !28
  %scan_4x42 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_progressive, i32 0, i32 1
  store void (i16*, i16*)* @zigzag_scan_4x4_frame, void (i16*, i16*)** %scan_4x42, align 4, !tbaa !28
  %sub_8x8 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_interlaced, i32 0, i32 2
  store i32 (i16*, i8*, i8*)* @zigzag_sub_8x8_field, i32 (i16*, i8*, i8*)** %sub_8x8, align 4, !tbaa !29
  %sub_8x83 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_progressive, i32 0, i32 2
  store i32 (i16*, i8*, i8*)* @zigzag_sub_8x8_frame, i32 (i16*, i8*, i8*)** %sub_8x83, align 4, !tbaa !29
  %sub_4x4 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_interlaced, i32 0, i32 3
  store i32 (i16*, i8*, i8*)* @zigzag_sub_4x4_field, i32 (i16*, i8*, i8*)** %sub_4x4, align 4, !tbaa !30
  %sub_4x44 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_progressive, i32 0, i32 3
  store i32 (i16*, i8*, i8*)* @zigzag_sub_4x4_frame, i32 (i16*, i8*, i8*)** %sub_4x44, align 4, !tbaa !30
  %sub_4x4ac = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_interlaced, i32 0, i32 4
  store i32 (i16*, i8*, i8*, i16*)* @zigzag_sub_4x4ac_field, i32 (i16*, i8*, i8*, i16*)** %sub_4x4ac, align 4, !tbaa !31
  %sub_4x4ac5 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_progressive, i32 0, i32 4
  store i32 (i16*, i8*, i8*, i16*)* @zigzag_sub_4x4ac_frame, i32 (i16*, i8*, i8*, i16*)** %sub_4x4ac5, align 4, !tbaa !31
  %interleave_8x8_cavlc = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_progressive, i32 0, i32 5
  store void (i16*, i16*, i8*)* @zigzag_interleave_8x8_cavlc, void (i16*, i16*, i8*)** %interleave_8x8_cavlc, align 4, !tbaa !32
  %interleave_8x8_cavlc6 = getelementptr inbounds %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t* %pf_interlaced, i32 0, i32 5
  store void (i16*, i16*, i8*)* @zigzag_interleave_8x8_cavlc, void (i16*, i16*, i8*)** %interleave_8x8_cavlc6, align 4, !tbaa !32
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @zigzag_scan_8x8_field(i16* %level, i16* readonly %dct) #2 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !24
  store i16 %0, i16* %level, align 2, !tbaa !24
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 1
  %1 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %arrayidx3 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %1, i16* %arrayidx3, align 2, !tbaa !24
  %arrayidx4 = getelementptr inbounds i16, i16* %dct, i32 2
  %2 = load i16, i16* %arrayidx4, align 2, !tbaa !24
  %arrayidx5 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %2, i16* %arrayidx5, align 2, !tbaa !24
  %arrayidx6 = getelementptr inbounds i16, i16* %dct, i32 8
  %3 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %arrayidx7 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %3, i16* %arrayidx7, align 2, !tbaa !24
  %arrayidx8 = getelementptr inbounds i16, i16* %dct, i32 9
  %4 = load i16, i16* %arrayidx8, align 2, !tbaa !24
  %arrayidx9 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %4, i16* %arrayidx9, align 2, !tbaa !24
  %arrayidx10 = getelementptr inbounds i16, i16* %dct, i32 3
  %5 = load i16, i16* %arrayidx10, align 2, !tbaa !24
  %arrayidx11 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %5, i16* %arrayidx11, align 2, !tbaa !24
  %arrayidx12 = getelementptr inbounds i16, i16* %dct, i32 4
  %6 = load i16, i16* %arrayidx12, align 2, !tbaa !24
  %arrayidx13 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %6, i16* %arrayidx13, align 2, !tbaa !24
  %arrayidx14 = getelementptr inbounds i16, i16* %dct, i32 10
  %7 = load i16, i16* %arrayidx14, align 2, !tbaa !24
  %arrayidx15 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %7, i16* %arrayidx15, align 2, !tbaa !24
  %arrayidx16 = getelementptr inbounds i16, i16* %dct, i32 16
  %8 = load i16, i16* %arrayidx16, align 2, !tbaa !24
  %arrayidx17 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %8, i16* %arrayidx17, align 2, !tbaa !24
  %arrayidx18 = getelementptr inbounds i16, i16* %dct, i32 11
  %9 = load i16, i16* %arrayidx18, align 2, !tbaa !24
  %arrayidx19 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %9, i16* %arrayidx19, align 2, !tbaa !24
  %arrayidx20 = getelementptr inbounds i16, i16* %dct, i32 5
  %10 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %arrayidx21 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %10, i16* %arrayidx21, align 2, !tbaa !24
  %arrayidx22 = getelementptr inbounds i16, i16* %dct, i32 6
  %11 = load i16, i16* %arrayidx22, align 2, !tbaa !24
  %arrayidx23 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %11, i16* %arrayidx23, align 2, !tbaa !24
  %arrayidx24 = getelementptr inbounds i16, i16* %dct, i32 7
  %12 = load i16, i16* %arrayidx24, align 2, !tbaa !24
  %arrayidx25 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %12, i16* %arrayidx25, align 2, !tbaa !24
  %arrayidx26 = getelementptr inbounds i16, i16* %dct, i32 12
  %13 = load i16, i16* %arrayidx26, align 2, !tbaa !24
  %arrayidx27 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %13, i16* %arrayidx27, align 2, !tbaa !24
  %arrayidx28 = getelementptr inbounds i16, i16* %dct, i32 17
  %14 = load i16, i16* %arrayidx28, align 2, !tbaa !24
  %arrayidx29 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %14, i16* %arrayidx29, align 2, !tbaa !24
  %arrayidx30 = getelementptr inbounds i16, i16* %dct, i32 24
  %15 = load i16, i16* %arrayidx30, align 2, !tbaa !24
  %arrayidx31 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %15, i16* %arrayidx31, align 2, !tbaa !24
  %arrayidx32 = getelementptr inbounds i16, i16* %dct, i32 18
  %16 = load i16, i16* %arrayidx32, align 2, !tbaa !24
  %arrayidx33 = getelementptr inbounds i16, i16* %level, i32 16
  store i16 %16, i16* %arrayidx33, align 2, !tbaa !24
  %arrayidx34 = getelementptr inbounds i16, i16* %dct, i32 13
  %17 = load i16, i16* %arrayidx34, align 2, !tbaa !24
  %arrayidx35 = getelementptr inbounds i16, i16* %level, i32 17
  store i16 %17, i16* %arrayidx35, align 2, !tbaa !24
  %arrayidx36 = getelementptr inbounds i16, i16* %dct, i32 14
  %18 = load i16, i16* %arrayidx36, align 2, !tbaa !24
  %arrayidx37 = getelementptr inbounds i16, i16* %level, i32 18
  store i16 %18, i16* %arrayidx37, align 2, !tbaa !24
  %arrayidx38 = getelementptr inbounds i16, i16* %dct, i32 15
  %19 = load i16, i16* %arrayidx38, align 2, !tbaa !24
  %arrayidx39 = getelementptr inbounds i16, i16* %level, i32 19
  store i16 %19, i16* %arrayidx39, align 2, !tbaa !24
  %arrayidx40 = getelementptr inbounds i16, i16* %dct, i32 19
  %20 = load i16, i16* %arrayidx40, align 2, !tbaa !24
  %arrayidx41 = getelementptr inbounds i16, i16* %level, i32 20
  store i16 %20, i16* %arrayidx41, align 2, !tbaa !24
  %arrayidx42 = getelementptr inbounds i16, i16* %dct, i32 25
  %21 = load i16, i16* %arrayidx42, align 2, !tbaa !24
  %arrayidx43 = getelementptr inbounds i16, i16* %level, i32 21
  store i16 %21, i16* %arrayidx43, align 2, !tbaa !24
  %arrayidx44 = getelementptr inbounds i16, i16* %dct, i32 32
  %22 = load i16, i16* %arrayidx44, align 2, !tbaa !24
  %arrayidx45 = getelementptr inbounds i16, i16* %level, i32 22
  store i16 %22, i16* %arrayidx45, align 2, !tbaa !24
  %arrayidx46 = getelementptr inbounds i16, i16* %dct, i32 26
  %23 = load i16, i16* %arrayidx46, align 2, !tbaa !24
  %arrayidx47 = getelementptr inbounds i16, i16* %level, i32 23
  store i16 %23, i16* %arrayidx47, align 2, !tbaa !24
  %arrayidx48 = getelementptr inbounds i16, i16* %dct, i32 20
  %24 = load i16, i16* %arrayidx48, align 2, !tbaa !24
  %arrayidx49 = getelementptr inbounds i16, i16* %level, i32 24
  store i16 %24, i16* %arrayidx49, align 2, !tbaa !24
  %arrayidx50 = getelementptr inbounds i16, i16* %dct, i32 21
  %25 = load i16, i16* %arrayidx50, align 2, !tbaa !24
  %arrayidx51 = getelementptr inbounds i16, i16* %level, i32 25
  store i16 %25, i16* %arrayidx51, align 2, !tbaa !24
  %arrayidx52 = getelementptr inbounds i16, i16* %dct, i32 22
  %26 = load i16, i16* %arrayidx52, align 2, !tbaa !24
  %arrayidx53 = getelementptr inbounds i16, i16* %level, i32 26
  store i16 %26, i16* %arrayidx53, align 2, !tbaa !24
  %arrayidx54 = getelementptr inbounds i16, i16* %dct, i32 23
  %27 = load i16, i16* %arrayidx54, align 2, !tbaa !24
  %arrayidx55 = getelementptr inbounds i16, i16* %level, i32 27
  store i16 %27, i16* %arrayidx55, align 2, !tbaa !24
  %arrayidx56 = getelementptr inbounds i16, i16* %dct, i32 27
  %28 = load i16, i16* %arrayidx56, align 2, !tbaa !24
  %arrayidx57 = getelementptr inbounds i16, i16* %level, i32 28
  store i16 %28, i16* %arrayidx57, align 2, !tbaa !24
  %arrayidx58 = getelementptr inbounds i16, i16* %dct, i32 33
  %29 = load i16, i16* %arrayidx58, align 2, !tbaa !24
  %arrayidx59 = getelementptr inbounds i16, i16* %level, i32 29
  store i16 %29, i16* %arrayidx59, align 2, !tbaa !24
  %arrayidx60 = getelementptr inbounds i16, i16* %dct, i32 40
  %30 = load i16, i16* %arrayidx60, align 2, !tbaa !24
  %arrayidx61 = getelementptr inbounds i16, i16* %level, i32 30
  store i16 %30, i16* %arrayidx61, align 2, !tbaa !24
  %arrayidx62 = getelementptr inbounds i16, i16* %dct, i32 34
  %31 = load i16, i16* %arrayidx62, align 2, !tbaa !24
  %arrayidx63 = getelementptr inbounds i16, i16* %level, i32 31
  store i16 %31, i16* %arrayidx63, align 2, !tbaa !24
  %arrayidx64 = getelementptr inbounds i16, i16* %dct, i32 28
  %32 = load i16, i16* %arrayidx64, align 2, !tbaa !24
  %arrayidx65 = getelementptr inbounds i16, i16* %level, i32 32
  store i16 %32, i16* %arrayidx65, align 2, !tbaa !24
  %arrayidx66 = getelementptr inbounds i16, i16* %dct, i32 29
  %33 = load i16, i16* %arrayidx66, align 2, !tbaa !24
  %arrayidx67 = getelementptr inbounds i16, i16* %level, i32 33
  store i16 %33, i16* %arrayidx67, align 2, !tbaa !24
  %arrayidx68 = getelementptr inbounds i16, i16* %dct, i32 30
  %34 = load i16, i16* %arrayidx68, align 2, !tbaa !24
  %arrayidx69 = getelementptr inbounds i16, i16* %level, i32 34
  store i16 %34, i16* %arrayidx69, align 2, !tbaa !24
  %arrayidx70 = getelementptr inbounds i16, i16* %dct, i32 31
  %35 = load i16, i16* %arrayidx70, align 2, !tbaa !24
  %arrayidx71 = getelementptr inbounds i16, i16* %level, i32 35
  store i16 %35, i16* %arrayidx71, align 2, !tbaa !24
  %arrayidx72 = getelementptr inbounds i16, i16* %dct, i32 35
  %36 = load i16, i16* %arrayidx72, align 2, !tbaa !24
  %arrayidx73 = getelementptr inbounds i16, i16* %level, i32 36
  store i16 %36, i16* %arrayidx73, align 2, !tbaa !24
  %arrayidx74 = getelementptr inbounds i16, i16* %dct, i32 41
  %37 = load i16, i16* %arrayidx74, align 2, !tbaa !24
  %arrayidx75 = getelementptr inbounds i16, i16* %level, i32 37
  store i16 %37, i16* %arrayidx75, align 2, !tbaa !24
  %arrayidx76 = getelementptr inbounds i16, i16* %dct, i32 48
  %38 = load i16, i16* %arrayidx76, align 2, !tbaa !24
  %arrayidx77 = getelementptr inbounds i16, i16* %level, i32 38
  store i16 %38, i16* %arrayidx77, align 2, !tbaa !24
  %arrayidx78 = getelementptr inbounds i16, i16* %dct, i32 42
  %39 = load i16, i16* %arrayidx78, align 2, !tbaa !24
  %arrayidx79 = getelementptr inbounds i16, i16* %level, i32 39
  store i16 %39, i16* %arrayidx79, align 2, !tbaa !24
  %arrayidx80 = getelementptr inbounds i16, i16* %dct, i32 36
  %40 = load i16, i16* %arrayidx80, align 2, !tbaa !24
  %arrayidx81 = getelementptr inbounds i16, i16* %level, i32 40
  store i16 %40, i16* %arrayidx81, align 2, !tbaa !24
  %arrayidx82 = getelementptr inbounds i16, i16* %dct, i32 37
  %41 = load i16, i16* %arrayidx82, align 2, !tbaa !24
  %arrayidx83 = getelementptr inbounds i16, i16* %level, i32 41
  store i16 %41, i16* %arrayidx83, align 2, !tbaa !24
  %arrayidx84 = getelementptr inbounds i16, i16* %dct, i32 38
  %42 = load i16, i16* %arrayidx84, align 2, !tbaa !24
  %arrayidx85 = getelementptr inbounds i16, i16* %level, i32 42
  store i16 %42, i16* %arrayidx85, align 2, !tbaa !24
  %arrayidx86 = getelementptr inbounds i16, i16* %dct, i32 39
  %43 = load i16, i16* %arrayidx86, align 2, !tbaa !24
  %arrayidx87 = getelementptr inbounds i16, i16* %level, i32 43
  store i16 %43, i16* %arrayidx87, align 2, !tbaa !24
  %arrayidx88 = getelementptr inbounds i16, i16* %dct, i32 43
  %44 = load i16, i16* %arrayidx88, align 2, !tbaa !24
  %arrayidx89 = getelementptr inbounds i16, i16* %level, i32 44
  store i16 %44, i16* %arrayidx89, align 2, !tbaa !24
  %arrayidx90 = getelementptr inbounds i16, i16* %dct, i32 49
  %45 = load i16, i16* %arrayidx90, align 2, !tbaa !24
  %arrayidx91 = getelementptr inbounds i16, i16* %level, i32 45
  store i16 %45, i16* %arrayidx91, align 2, !tbaa !24
  %arrayidx92 = getelementptr inbounds i16, i16* %dct, i32 50
  %46 = load i16, i16* %arrayidx92, align 2, !tbaa !24
  %arrayidx93 = getelementptr inbounds i16, i16* %level, i32 46
  store i16 %46, i16* %arrayidx93, align 2, !tbaa !24
  %arrayidx94 = getelementptr inbounds i16, i16* %dct, i32 44
  %47 = load i16, i16* %arrayidx94, align 2, !tbaa !24
  %arrayidx95 = getelementptr inbounds i16, i16* %level, i32 47
  store i16 %47, i16* %arrayidx95, align 2, !tbaa !24
  %arrayidx96 = getelementptr inbounds i16, i16* %dct, i32 45
  %48 = load i16, i16* %arrayidx96, align 2, !tbaa !24
  %arrayidx97 = getelementptr inbounds i16, i16* %level, i32 48
  store i16 %48, i16* %arrayidx97, align 2, !tbaa !24
  %arrayidx98 = getelementptr inbounds i16, i16* %dct, i32 46
  %49 = load i16, i16* %arrayidx98, align 2, !tbaa !24
  %arrayidx99 = getelementptr inbounds i16, i16* %level, i32 49
  store i16 %49, i16* %arrayidx99, align 2, !tbaa !24
  %arrayidx100 = getelementptr inbounds i16, i16* %dct, i32 47
  %50 = load i16, i16* %arrayidx100, align 2, !tbaa !24
  %arrayidx101 = getelementptr inbounds i16, i16* %level, i32 50
  store i16 %50, i16* %arrayidx101, align 2, !tbaa !24
  %arrayidx102 = getelementptr inbounds i16, i16* %dct, i32 51
  %51 = load i16, i16* %arrayidx102, align 2, !tbaa !24
  %arrayidx103 = getelementptr inbounds i16, i16* %level, i32 51
  store i16 %51, i16* %arrayidx103, align 2, !tbaa !24
  %arrayidx104 = getelementptr inbounds i16, i16* %dct, i32 56
  %52 = load i16, i16* %arrayidx104, align 2, !tbaa !24
  %arrayidx105 = getelementptr inbounds i16, i16* %level, i32 52
  store i16 %52, i16* %arrayidx105, align 2, !tbaa !24
  %arrayidx106 = getelementptr inbounds i16, i16* %dct, i32 57
  %53 = load i16, i16* %arrayidx106, align 2, !tbaa !24
  %arrayidx107 = getelementptr inbounds i16, i16* %level, i32 53
  store i16 %53, i16* %arrayidx107, align 2, !tbaa !24
  %arrayidx108 = getelementptr inbounds i16, i16* %dct, i32 52
  %54 = load i16, i16* %arrayidx108, align 2, !tbaa !24
  %arrayidx109 = getelementptr inbounds i16, i16* %level, i32 54
  store i16 %54, i16* %arrayidx109, align 2, !tbaa !24
  %arrayidx110 = getelementptr inbounds i16, i16* %dct, i32 53
  %55 = load i16, i16* %arrayidx110, align 2, !tbaa !24
  %arrayidx111 = getelementptr inbounds i16, i16* %level, i32 55
  store i16 %55, i16* %arrayidx111, align 2, !tbaa !24
  %arrayidx112 = getelementptr inbounds i16, i16* %dct, i32 54
  %56 = load i16, i16* %arrayidx112, align 2, !tbaa !24
  %arrayidx113 = getelementptr inbounds i16, i16* %level, i32 56
  store i16 %56, i16* %arrayidx113, align 2, !tbaa !24
  %arrayidx114 = getelementptr inbounds i16, i16* %dct, i32 55
  %57 = load i16, i16* %arrayidx114, align 2, !tbaa !24
  %arrayidx115 = getelementptr inbounds i16, i16* %level, i32 57
  store i16 %57, i16* %arrayidx115, align 2, !tbaa !24
  %arrayidx116 = getelementptr inbounds i16, i16* %dct, i32 58
  %58 = load i16, i16* %arrayidx116, align 2, !tbaa !24
  %arrayidx117 = getelementptr inbounds i16, i16* %level, i32 58
  store i16 %58, i16* %arrayidx117, align 2, !tbaa !24
  %arrayidx118 = getelementptr inbounds i16, i16* %dct, i32 59
  %59 = load i16, i16* %arrayidx118, align 2, !tbaa !24
  %arrayidx119 = getelementptr inbounds i16, i16* %level, i32 59
  store i16 %59, i16* %arrayidx119, align 2, !tbaa !24
  %arrayidx120 = getelementptr inbounds i16, i16* %dct, i32 60
  %60 = load i16, i16* %arrayidx120, align 2, !tbaa !24
  %arrayidx121 = getelementptr inbounds i16, i16* %level, i32 60
  store i16 %60, i16* %arrayidx121, align 2, !tbaa !24
  %arrayidx122 = getelementptr inbounds i16, i16* %dct, i32 61
  %61 = load i16, i16* %arrayidx122, align 2, !tbaa !24
  %arrayidx123 = getelementptr inbounds i16, i16* %level, i32 61
  store i16 %61, i16* %arrayidx123, align 2, !tbaa !24
  %arrayidx124 = getelementptr inbounds i16, i16* %dct, i32 62
  %62 = load i16, i16* %arrayidx124, align 2, !tbaa !24
  %arrayidx125 = getelementptr inbounds i16, i16* %level, i32 62
  store i16 %62, i16* %arrayidx125, align 2, !tbaa !24
  %arrayidx126 = getelementptr inbounds i16, i16* %dct, i32 63
  %63 = load i16, i16* %arrayidx126, align 2, !tbaa !24
  %arrayidx127 = getelementptr inbounds i16, i16* %level, i32 63
  store i16 %63, i16* %arrayidx127, align 2, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @zigzag_scan_8x8_frame(i16* %level, i16* readonly %dct) #2 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !24
  store i16 %0, i16* %level, align 2, !tbaa !24
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 8
  %1 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %arrayidx3 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %1, i16* %arrayidx3, align 2, !tbaa !24
  %arrayidx4 = getelementptr inbounds i16, i16* %dct, i32 1
  %2 = load i16, i16* %arrayidx4, align 2, !tbaa !24
  %arrayidx5 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %2, i16* %arrayidx5, align 2, !tbaa !24
  %arrayidx6 = getelementptr inbounds i16, i16* %dct, i32 2
  %3 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %arrayidx7 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %3, i16* %arrayidx7, align 2, !tbaa !24
  %arrayidx8 = getelementptr inbounds i16, i16* %dct, i32 9
  %4 = load i16, i16* %arrayidx8, align 2, !tbaa !24
  %arrayidx9 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %4, i16* %arrayidx9, align 2, !tbaa !24
  %arrayidx10 = getelementptr inbounds i16, i16* %dct, i32 16
  %5 = load i16, i16* %arrayidx10, align 2, !tbaa !24
  %arrayidx11 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %5, i16* %arrayidx11, align 2, !tbaa !24
  %arrayidx12 = getelementptr inbounds i16, i16* %dct, i32 24
  %6 = load i16, i16* %arrayidx12, align 2, !tbaa !24
  %arrayidx13 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %6, i16* %arrayidx13, align 2, !tbaa !24
  %arrayidx14 = getelementptr inbounds i16, i16* %dct, i32 17
  %7 = load i16, i16* %arrayidx14, align 2, !tbaa !24
  %arrayidx15 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %7, i16* %arrayidx15, align 2, !tbaa !24
  %arrayidx16 = getelementptr inbounds i16, i16* %dct, i32 10
  %8 = load i16, i16* %arrayidx16, align 2, !tbaa !24
  %arrayidx17 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %8, i16* %arrayidx17, align 2, !tbaa !24
  %arrayidx18 = getelementptr inbounds i16, i16* %dct, i32 3
  %9 = load i16, i16* %arrayidx18, align 2, !tbaa !24
  %arrayidx19 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %9, i16* %arrayidx19, align 2, !tbaa !24
  %arrayidx20 = getelementptr inbounds i16, i16* %dct, i32 4
  %10 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %arrayidx21 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %10, i16* %arrayidx21, align 2, !tbaa !24
  %arrayidx22 = getelementptr inbounds i16, i16* %dct, i32 11
  %11 = load i16, i16* %arrayidx22, align 2, !tbaa !24
  %arrayidx23 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %11, i16* %arrayidx23, align 2, !tbaa !24
  %arrayidx24 = getelementptr inbounds i16, i16* %dct, i32 18
  %12 = load i16, i16* %arrayidx24, align 2, !tbaa !24
  %arrayidx25 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %12, i16* %arrayidx25, align 2, !tbaa !24
  %arrayidx26 = getelementptr inbounds i16, i16* %dct, i32 25
  %13 = load i16, i16* %arrayidx26, align 2, !tbaa !24
  %arrayidx27 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %13, i16* %arrayidx27, align 2, !tbaa !24
  %arrayidx28 = getelementptr inbounds i16, i16* %dct, i32 32
  %14 = load i16, i16* %arrayidx28, align 2, !tbaa !24
  %arrayidx29 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %14, i16* %arrayidx29, align 2, !tbaa !24
  %arrayidx30 = getelementptr inbounds i16, i16* %dct, i32 40
  %15 = load i16, i16* %arrayidx30, align 2, !tbaa !24
  %arrayidx31 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %15, i16* %arrayidx31, align 2, !tbaa !24
  %arrayidx32 = getelementptr inbounds i16, i16* %dct, i32 33
  %16 = load i16, i16* %arrayidx32, align 2, !tbaa !24
  %arrayidx33 = getelementptr inbounds i16, i16* %level, i32 16
  store i16 %16, i16* %arrayidx33, align 2, !tbaa !24
  %arrayidx34 = getelementptr inbounds i16, i16* %dct, i32 26
  %17 = load i16, i16* %arrayidx34, align 2, !tbaa !24
  %arrayidx35 = getelementptr inbounds i16, i16* %level, i32 17
  store i16 %17, i16* %arrayidx35, align 2, !tbaa !24
  %arrayidx36 = getelementptr inbounds i16, i16* %dct, i32 19
  %18 = load i16, i16* %arrayidx36, align 2, !tbaa !24
  %arrayidx37 = getelementptr inbounds i16, i16* %level, i32 18
  store i16 %18, i16* %arrayidx37, align 2, !tbaa !24
  %arrayidx38 = getelementptr inbounds i16, i16* %dct, i32 12
  %19 = load i16, i16* %arrayidx38, align 2, !tbaa !24
  %arrayidx39 = getelementptr inbounds i16, i16* %level, i32 19
  store i16 %19, i16* %arrayidx39, align 2, !tbaa !24
  %arrayidx40 = getelementptr inbounds i16, i16* %dct, i32 5
  %20 = load i16, i16* %arrayidx40, align 2, !tbaa !24
  %arrayidx41 = getelementptr inbounds i16, i16* %level, i32 20
  store i16 %20, i16* %arrayidx41, align 2, !tbaa !24
  %arrayidx42 = getelementptr inbounds i16, i16* %dct, i32 6
  %21 = load i16, i16* %arrayidx42, align 2, !tbaa !24
  %arrayidx43 = getelementptr inbounds i16, i16* %level, i32 21
  store i16 %21, i16* %arrayidx43, align 2, !tbaa !24
  %arrayidx44 = getelementptr inbounds i16, i16* %dct, i32 13
  %22 = load i16, i16* %arrayidx44, align 2, !tbaa !24
  %arrayidx45 = getelementptr inbounds i16, i16* %level, i32 22
  store i16 %22, i16* %arrayidx45, align 2, !tbaa !24
  %arrayidx46 = getelementptr inbounds i16, i16* %dct, i32 20
  %23 = load i16, i16* %arrayidx46, align 2, !tbaa !24
  %arrayidx47 = getelementptr inbounds i16, i16* %level, i32 23
  store i16 %23, i16* %arrayidx47, align 2, !tbaa !24
  %arrayidx48 = getelementptr inbounds i16, i16* %dct, i32 27
  %24 = load i16, i16* %arrayidx48, align 2, !tbaa !24
  %arrayidx49 = getelementptr inbounds i16, i16* %level, i32 24
  store i16 %24, i16* %arrayidx49, align 2, !tbaa !24
  %arrayidx50 = getelementptr inbounds i16, i16* %dct, i32 34
  %25 = load i16, i16* %arrayidx50, align 2, !tbaa !24
  %arrayidx51 = getelementptr inbounds i16, i16* %level, i32 25
  store i16 %25, i16* %arrayidx51, align 2, !tbaa !24
  %arrayidx52 = getelementptr inbounds i16, i16* %dct, i32 41
  %26 = load i16, i16* %arrayidx52, align 2, !tbaa !24
  %arrayidx53 = getelementptr inbounds i16, i16* %level, i32 26
  store i16 %26, i16* %arrayidx53, align 2, !tbaa !24
  %arrayidx54 = getelementptr inbounds i16, i16* %dct, i32 48
  %27 = load i16, i16* %arrayidx54, align 2, !tbaa !24
  %arrayidx55 = getelementptr inbounds i16, i16* %level, i32 27
  store i16 %27, i16* %arrayidx55, align 2, !tbaa !24
  %arrayidx56 = getelementptr inbounds i16, i16* %dct, i32 56
  %28 = load i16, i16* %arrayidx56, align 2, !tbaa !24
  %arrayidx57 = getelementptr inbounds i16, i16* %level, i32 28
  store i16 %28, i16* %arrayidx57, align 2, !tbaa !24
  %arrayidx58 = getelementptr inbounds i16, i16* %dct, i32 49
  %29 = load i16, i16* %arrayidx58, align 2, !tbaa !24
  %arrayidx59 = getelementptr inbounds i16, i16* %level, i32 29
  store i16 %29, i16* %arrayidx59, align 2, !tbaa !24
  %arrayidx60 = getelementptr inbounds i16, i16* %dct, i32 42
  %30 = load i16, i16* %arrayidx60, align 2, !tbaa !24
  %arrayidx61 = getelementptr inbounds i16, i16* %level, i32 30
  store i16 %30, i16* %arrayidx61, align 2, !tbaa !24
  %arrayidx62 = getelementptr inbounds i16, i16* %dct, i32 35
  %31 = load i16, i16* %arrayidx62, align 2, !tbaa !24
  %arrayidx63 = getelementptr inbounds i16, i16* %level, i32 31
  store i16 %31, i16* %arrayidx63, align 2, !tbaa !24
  %arrayidx64 = getelementptr inbounds i16, i16* %dct, i32 28
  %32 = load i16, i16* %arrayidx64, align 2, !tbaa !24
  %arrayidx65 = getelementptr inbounds i16, i16* %level, i32 32
  store i16 %32, i16* %arrayidx65, align 2, !tbaa !24
  %arrayidx66 = getelementptr inbounds i16, i16* %dct, i32 21
  %33 = load i16, i16* %arrayidx66, align 2, !tbaa !24
  %arrayidx67 = getelementptr inbounds i16, i16* %level, i32 33
  store i16 %33, i16* %arrayidx67, align 2, !tbaa !24
  %arrayidx68 = getelementptr inbounds i16, i16* %dct, i32 14
  %34 = load i16, i16* %arrayidx68, align 2, !tbaa !24
  %arrayidx69 = getelementptr inbounds i16, i16* %level, i32 34
  store i16 %34, i16* %arrayidx69, align 2, !tbaa !24
  %arrayidx70 = getelementptr inbounds i16, i16* %dct, i32 7
  %35 = load i16, i16* %arrayidx70, align 2, !tbaa !24
  %arrayidx71 = getelementptr inbounds i16, i16* %level, i32 35
  store i16 %35, i16* %arrayidx71, align 2, !tbaa !24
  %arrayidx72 = getelementptr inbounds i16, i16* %dct, i32 15
  %36 = load i16, i16* %arrayidx72, align 2, !tbaa !24
  %arrayidx73 = getelementptr inbounds i16, i16* %level, i32 36
  store i16 %36, i16* %arrayidx73, align 2, !tbaa !24
  %arrayidx74 = getelementptr inbounds i16, i16* %dct, i32 22
  %37 = load i16, i16* %arrayidx74, align 2, !tbaa !24
  %arrayidx75 = getelementptr inbounds i16, i16* %level, i32 37
  store i16 %37, i16* %arrayidx75, align 2, !tbaa !24
  %arrayidx76 = getelementptr inbounds i16, i16* %dct, i32 29
  %38 = load i16, i16* %arrayidx76, align 2, !tbaa !24
  %arrayidx77 = getelementptr inbounds i16, i16* %level, i32 38
  store i16 %38, i16* %arrayidx77, align 2, !tbaa !24
  %arrayidx78 = getelementptr inbounds i16, i16* %dct, i32 36
  %39 = load i16, i16* %arrayidx78, align 2, !tbaa !24
  %arrayidx79 = getelementptr inbounds i16, i16* %level, i32 39
  store i16 %39, i16* %arrayidx79, align 2, !tbaa !24
  %arrayidx80 = getelementptr inbounds i16, i16* %dct, i32 43
  %40 = load i16, i16* %arrayidx80, align 2, !tbaa !24
  %arrayidx81 = getelementptr inbounds i16, i16* %level, i32 40
  store i16 %40, i16* %arrayidx81, align 2, !tbaa !24
  %arrayidx82 = getelementptr inbounds i16, i16* %dct, i32 50
  %41 = load i16, i16* %arrayidx82, align 2, !tbaa !24
  %arrayidx83 = getelementptr inbounds i16, i16* %level, i32 41
  store i16 %41, i16* %arrayidx83, align 2, !tbaa !24
  %arrayidx84 = getelementptr inbounds i16, i16* %dct, i32 57
  %42 = load i16, i16* %arrayidx84, align 2, !tbaa !24
  %arrayidx85 = getelementptr inbounds i16, i16* %level, i32 42
  store i16 %42, i16* %arrayidx85, align 2, !tbaa !24
  %arrayidx86 = getelementptr inbounds i16, i16* %dct, i32 58
  %43 = load i16, i16* %arrayidx86, align 2, !tbaa !24
  %arrayidx87 = getelementptr inbounds i16, i16* %level, i32 43
  store i16 %43, i16* %arrayidx87, align 2, !tbaa !24
  %arrayidx88 = getelementptr inbounds i16, i16* %dct, i32 51
  %44 = load i16, i16* %arrayidx88, align 2, !tbaa !24
  %arrayidx89 = getelementptr inbounds i16, i16* %level, i32 44
  store i16 %44, i16* %arrayidx89, align 2, !tbaa !24
  %arrayidx90 = getelementptr inbounds i16, i16* %dct, i32 44
  %45 = load i16, i16* %arrayidx90, align 2, !tbaa !24
  %arrayidx91 = getelementptr inbounds i16, i16* %level, i32 45
  store i16 %45, i16* %arrayidx91, align 2, !tbaa !24
  %arrayidx92 = getelementptr inbounds i16, i16* %dct, i32 37
  %46 = load i16, i16* %arrayidx92, align 2, !tbaa !24
  %arrayidx93 = getelementptr inbounds i16, i16* %level, i32 46
  store i16 %46, i16* %arrayidx93, align 2, !tbaa !24
  %arrayidx94 = getelementptr inbounds i16, i16* %dct, i32 30
  %47 = load i16, i16* %arrayidx94, align 2, !tbaa !24
  %arrayidx95 = getelementptr inbounds i16, i16* %level, i32 47
  store i16 %47, i16* %arrayidx95, align 2, !tbaa !24
  %arrayidx96 = getelementptr inbounds i16, i16* %dct, i32 23
  %48 = load i16, i16* %arrayidx96, align 2, !tbaa !24
  %arrayidx97 = getelementptr inbounds i16, i16* %level, i32 48
  store i16 %48, i16* %arrayidx97, align 2, !tbaa !24
  %arrayidx98 = getelementptr inbounds i16, i16* %dct, i32 31
  %49 = load i16, i16* %arrayidx98, align 2, !tbaa !24
  %arrayidx99 = getelementptr inbounds i16, i16* %level, i32 49
  store i16 %49, i16* %arrayidx99, align 2, !tbaa !24
  %arrayidx100 = getelementptr inbounds i16, i16* %dct, i32 38
  %50 = load i16, i16* %arrayidx100, align 2, !tbaa !24
  %arrayidx101 = getelementptr inbounds i16, i16* %level, i32 50
  store i16 %50, i16* %arrayidx101, align 2, !tbaa !24
  %arrayidx102 = getelementptr inbounds i16, i16* %dct, i32 45
  %51 = load i16, i16* %arrayidx102, align 2, !tbaa !24
  %arrayidx103 = getelementptr inbounds i16, i16* %level, i32 51
  store i16 %51, i16* %arrayidx103, align 2, !tbaa !24
  %arrayidx104 = getelementptr inbounds i16, i16* %dct, i32 52
  %52 = load i16, i16* %arrayidx104, align 2, !tbaa !24
  %arrayidx105 = getelementptr inbounds i16, i16* %level, i32 52
  store i16 %52, i16* %arrayidx105, align 2, !tbaa !24
  %arrayidx106 = getelementptr inbounds i16, i16* %dct, i32 59
  %53 = load i16, i16* %arrayidx106, align 2, !tbaa !24
  %arrayidx107 = getelementptr inbounds i16, i16* %level, i32 53
  store i16 %53, i16* %arrayidx107, align 2, !tbaa !24
  %arrayidx108 = getelementptr inbounds i16, i16* %dct, i32 60
  %54 = load i16, i16* %arrayidx108, align 2, !tbaa !24
  %arrayidx109 = getelementptr inbounds i16, i16* %level, i32 54
  store i16 %54, i16* %arrayidx109, align 2, !tbaa !24
  %arrayidx110 = getelementptr inbounds i16, i16* %dct, i32 53
  %55 = load i16, i16* %arrayidx110, align 2, !tbaa !24
  %arrayidx111 = getelementptr inbounds i16, i16* %level, i32 55
  store i16 %55, i16* %arrayidx111, align 2, !tbaa !24
  %arrayidx112 = getelementptr inbounds i16, i16* %dct, i32 46
  %56 = load i16, i16* %arrayidx112, align 2, !tbaa !24
  %arrayidx113 = getelementptr inbounds i16, i16* %level, i32 56
  store i16 %56, i16* %arrayidx113, align 2, !tbaa !24
  %arrayidx114 = getelementptr inbounds i16, i16* %dct, i32 39
  %57 = load i16, i16* %arrayidx114, align 2, !tbaa !24
  %arrayidx115 = getelementptr inbounds i16, i16* %level, i32 57
  store i16 %57, i16* %arrayidx115, align 2, !tbaa !24
  %arrayidx116 = getelementptr inbounds i16, i16* %dct, i32 47
  %58 = load i16, i16* %arrayidx116, align 2, !tbaa !24
  %arrayidx117 = getelementptr inbounds i16, i16* %level, i32 58
  store i16 %58, i16* %arrayidx117, align 2, !tbaa !24
  %arrayidx118 = getelementptr inbounds i16, i16* %dct, i32 54
  %59 = load i16, i16* %arrayidx118, align 2, !tbaa !24
  %arrayidx119 = getelementptr inbounds i16, i16* %level, i32 59
  store i16 %59, i16* %arrayidx119, align 2, !tbaa !24
  %arrayidx120 = getelementptr inbounds i16, i16* %dct, i32 61
  %60 = load i16, i16* %arrayidx120, align 2, !tbaa !24
  %arrayidx121 = getelementptr inbounds i16, i16* %level, i32 60
  store i16 %60, i16* %arrayidx121, align 2, !tbaa !24
  %arrayidx122 = getelementptr inbounds i16, i16* %dct, i32 62
  %61 = load i16, i16* %arrayidx122, align 2, !tbaa !24
  %arrayidx123 = getelementptr inbounds i16, i16* %level, i32 61
  store i16 %61, i16* %arrayidx123, align 2, !tbaa !24
  %arrayidx124 = getelementptr inbounds i16, i16* %dct, i32 55
  %62 = load i16, i16* %arrayidx124, align 2, !tbaa !24
  %arrayidx125 = getelementptr inbounds i16, i16* %level, i32 62
  store i16 %62, i16* %arrayidx125, align 2, !tbaa !24
  %arrayidx126 = getelementptr inbounds i16, i16* %dct, i32 63
  %63 = load i16, i16* %arrayidx126, align 2, !tbaa !24
  %arrayidx127 = getelementptr inbounds i16, i16* %level, i32 63
  store i16 %63, i16* %arrayidx127, align 2, !tbaa !24
  ret void
}

; Function Attrs: nounwind
define internal void @zigzag_scan_4x4_field(i16* nocapture %level, i16* nocapture readonly %dct) #1 {
entry:
  %0 = bitcast i16* %dct to i32*
  %1 = bitcast i16* %level to i32*
  %2 = load i32, i32* %0, align 2
  store i32 %2, i32* %1, align 2
  %arrayidx = getelementptr inbounds i16, i16* %dct, i32 4
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %arrayidx1 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %3, i16* %arrayidx1, align 2, !tbaa !24
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 2
  %4 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %arrayidx3 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %4, i16* %arrayidx3, align 2, !tbaa !24
  %arrayidx4 = getelementptr inbounds i16, i16* %dct, i32 3
  %5 = load i16, i16* %arrayidx4, align 2, !tbaa !24
  %arrayidx5 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %5, i16* %arrayidx5, align 2, !tbaa !24
  %arrayidx6 = getelementptr inbounds i16, i16* %dct, i32 5
  %6 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %arrayidx7 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %6, i16* %arrayidx7, align 2, !tbaa !24
  %add.ptr = getelementptr inbounds i16, i16* %level, i32 6
  %7 = bitcast i16* %add.ptr to i8*
  %add.ptr8 = getelementptr inbounds i16, i16* %dct, i32 6
  %8 = bitcast i16* %add.ptr8 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 2 dereferenceable(20) %7, i8* nonnull align 2 dereferenceable(20) %8, i32 20, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @zigzag_scan_4x4_frame(i16* nocapture %level, i16* nocapture readonly %dct) #2 {
entry:
  %0 = load i16, i16* %dct, align 2, !tbaa !24
  store i16 %0, i16* %level, align 2, !tbaa !24
  %arrayidx2 = getelementptr inbounds i16, i16* %dct, i32 4
  %1 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %arrayidx3 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %1, i16* %arrayidx3, align 2, !tbaa !24
  %arrayidx4 = getelementptr inbounds i16, i16* %dct, i32 1
  %2 = load i16, i16* %arrayidx4, align 2, !tbaa !24
  %arrayidx5 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %2, i16* %arrayidx5, align 2, !tbaa !24
  %arrayidx6 = getelementptr inbounds i16, i16* %dct, i32 2
  %3 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %arrayidx7 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %3, i16* %arrayidx7, align 2, !tbaa !24
  %arrayidx8 = getelementptr inbounds i16, i16* %dct, i32 5
  %4 = load i16, i16* %arrayidx8, align 2, !tbaa !24
  %arrayidx9 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %4, i16* %arrayidx9, align 2, !tbaa !24
  %arrayidx10 = getelementptr inbounds i16, i16* %dct, i32 8
  %5 = load i16, i16* %arrayidx10, align 2, !tbaa !24
  %arrayidx11 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %5, i16* %arrayidx11, align 2, !tbaa !24
  %arrayidx12 = getelementptr inbounds i16, i16* %dct, i32 12
  %6 = load i16, i16* %arrayidx12, align 2, !tbaa !24
  %arrayidx13 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %6, i16* %arrayidx13, align 2, !tbaa !24
  %arrayidx14 = getelementptr inbounds i16, i16* %dct, i32 9
  %7 = load i16, i16* %arrayidx14, align 2, !tbaa !24
  %arrayidx15 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %7, i16* %arrayidx15, align 2, !tbaa !24
  %arrayidx16 = getelementptr inbounds i16, i16* %dct, i32 6
  %8 = load i16, i16* %arrayidx16, align 2, !tbaa !24
  %arrayidx17 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %8, i16* %arrayidx17, align 2, !tbaa !24
  %arrayidx18 = getelementptr inbounds i16, i16* %dct, i32 3
  %9 = load i16, i16* %arrayidx18, align 2, !tbaa !24
  %arrayidx19 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %9, i16* %arrayidx19, align 2, !tbaa !24
  %arrayidx20 = getelementptr inbounds i16, i16* %dct, i32 7
  %10 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %arrayidx21 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %10, i16* %arrayidx21, align 2, !tbaa !24
  %arrayidx22 = getelementptr inbounds i16, i16* %dct, i32 10
  %11 = load i16, i16* %arrayidx22, align 2, !tbaa !24
  %arrayidx23 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %11, i16* %arrayidx23, align 2, !tbaa !24
  %arrayidx24 = getelementptr inbounds i16, i16* %dct, i32 13
  %12 = load i16, i16* %arrayidx24, align 2, !tbaa !24
  %arrayidx25 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %12, i16* %arrayidx25, align 2, !tbaa !24
  %arrayidx26 = getelementptr inbounds i16, i16* %dct, i32 14
  %13 = load i16, i16* %arrayidx26, align 2, !tbaa !24
  %arrayidx27 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %13, i16* %arrayidx27, align 2, !tbaa !24
  %arrayidx28 = getelementptr inbounds i16, i16* %dct, i32 11
  %14 = load i16, i16* %arrayidx28, align 2, !tbaa !24
  %arrayidx29 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %14, i16* %arrayidx29, align 2, !tbaa !24
  %arrayidx30 = getelementptr inbounds i16, i16* %dct, i32 15
  %15 = load i16, i16* %arrayidx30, align 2, !tbaa !24
  %arrayidx31 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %15, i16* %arrayidx31, align 2, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @zigzag_sub_8x8_field(i16* %level, i8* readonly %p_src, i8* %p_dst) #2 {
entry:
  %0 = load i8, i8* %p_src, align 1, !tbaa !23
  %conv = zext i8 %0 to i16
  %1 = load i8, i8* %p_dst, align 1, !tbaa !23
  %conv2 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv2
  store i16 %sub, i16* %level, align 2, !tbaa !24
  %arrayidx9 = getelementptr inbounds i8, i8* %p_src, i32 16
  %2 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10 = zext i8 %2 to i16
  %arrayidx11 = getelementptr inbounds i8, i8* %p_dst, i32 32
  %3 = load i8, i8* %arrayidx11, align 1, !tbaa !23
  %conv12 = zext i8 %3 to i16
  %sub13 = sub nsw i16 %conv10, %conv12
  %arrayidx15 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %sub13, i16* %arrayidx15, align 2, !tbaa !24
  %or181320 = or i16 %sub13, %sub
  %arrayidx21 = getelementptr inbounds i8, i8* %p_src, i32 32
  %4 = load i8, i8* %arrayidx21, align 1, !tbaa !23
  %conv22 = zext i8 %4 to i16
  %arrayidx23 = getelementptr inbounds i8, i8* %p_dst, i32 64
  %5 = load i8, i8* %arrayidx23, align 1, !tbaa !23
  %conv24 = zext i8 %5 to i16
  %sub25 = sub nsw i16 %conv22, %conv24
  %arrayidx27 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %sub25, i16* %arrayidx27, align 2, !tbaa !24
  %or301321 = or i16 %or181320, %sub25
  %arrayidx33 = getelementptr inbounds i8, i8* %p_src, i32 1
  %6 = load i8, i8* %arrayidx33, align 1, !tbaa !23
  %conv34 = zext i8 %6 to i16
  %arrayidx35 = getelementptr inbounds i8, i8* %p_dst, i32 1
  %7 = load i8, i8* %arrayidx35, align 1, !tbaa !23
  %conv36 = zext i8 %7 to i16
  %sub37 = sub nsw i16 %conv34, %conv36
  %arrayidx39 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %sub37, i16* %arrayidx39, align 2, !tbaa !24
  %or421322 = or i16 %or301321, %sub37
  %arrayidx45 = getelementptr inbounds i8, i8* %p_src, i32 17
  %8 = load i8, i8* %arrayidx45, align 1, !tbaa !23
  %conv46 = zext i8 %8 to i16
  %arrayidx47 = getelementptr inbounds i8, i8* %p_dst, i32 33
  %9 = load i8, i8* %arrayidx47, align 1, !tbaa !23
  %conv48 = zext i8 %9 to i16
  %sub49 = sub nsw i16 %conv46, %conv48
  %arrayidx51 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %sub49, i16* %arrayidx51, align 2, !tbaa !24
  %or541323 = or i16 %or421322, %sub49
  %arrayidx57 = getelementptr inbounds i8, i8* %p_src, i32 48
  %10 = load i8, i8* %arrayidx57, align 1, !tbaa !23
  %conv58 = zext i8 %10 to i16
  %arrayidx59 = getelementptr inbounds i8, i8* %p_dst, i32 96
  %11 = load i8, i8* %arrayidx59, align 1, !tbaa !23
  %conv60 = zext i8 %11 to i16
  %sub61 = sub nsw i16 %conv58, %conv60
  %arrayidx63 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %sub61, i16* %arrayidx63, align 2, !tbaa !24
  %or661324 = or i16 %or541323, %sub61
  %arrayidx69 = getelementptr inbounds i8, i8* %p_src, i32 64
  %12 = load i8, i8* %arrayidx69, align 1, !tbaa !23
  %conv70 = zext i8 %12 to i16
  %arrayidx71 = getelementptr inbounds i8, i8* %p_dst, i32 128
  %13 = load i8, i8* %arrayidx71, align 1, !tbaa !23
  %conv72 = zext i8 %13 to i16
  %sub73 = sub nsw i16 %conv70, %conv72
  %arrayidx75 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %sub73, i16* %arrayidx75, align 2, !tbaa !24
  %or781325 = or i16 %or661324, %sub73
  %arrayidx81 = getelementptr inbounds i8, i8* %p_src, i32 33
  %14 = load i8, i8* %arrayidx81, align 1, !tbaa !23
  %conv82 = zext i8 %14 to i16
  %arrayidx83 = getelementptr inbounds i8, i8* %p_dst, i32 65
  %15 = load i8, i8* %arrayidx83, align 1, !tbaa !23
  %conv84 = zext i8 %15 to i16
  %sub85 = sub nsw i16 %conv82, %conv84
  %arrayidx87 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %sub85, i16* %arrayidx87, align 2, !tbaa !24
  %or901326 = or i16 %or781325, %sub85
  %arrayidx93 = getelementptr inbounds i8, i8* %p_src, i32 2
  %16 = load i8, i8* %arrayidx93, align 1, !tbaa !23
  %conv94 = zext i8 %16 to i16
  %arrayidx95 = getelementptr inbounds i8, i8* %p_dst, i32 2
  %17 = load i8, i8* %arrayidx95, align 1, !tbaa !23
  %conv96 = zext i8 %17 to i16
  %sub97 = sub nsw i16 %conv94, %conv96
  %arrayidx99 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %sub97, i16* %arrayidx99, align 2, !tbaa !24
  %or1021327 = or i16 %or901326, %sub97
  %arrayidx105 = getelementptr inbounds i8, i8* %p_src, i32 49
  %18 = load i8, i8* %arrayidx105, align 1, !tbaa !23
  %conv106 = zext i8 %18 to i16
  %arrayidx107 = getelementptr inbounds i8, i8* %p_dst, i32 97
  %19 = load i8, i8* %arrayidx107, align 1, !tbaa !23
  %conv108 = zext i8 %19 to i16
  %sub109 = sub nsw i16 %conv106, %conv108
  %arrayidx111 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %sub109, i16* %arrayidx111, align 2, !tbaa !24
  %or1141328 = or i16 %or1021327, %sub109
  %arrayidx117 = getelementptr inbounds i8, i8* %p_src, i32 80
  %20 = load i8, i8* %arrayidx117, align 1, !tbaa !23
  %conv118 = zext i8 %20 to i16
  %arrayidx119 = getelementptr inbounds i8, i8* %p_dst, i32 160
  %21 = load i8, i8* %arrayidx119, align 1, !tbaa !23
  %conv120 = zext i8 %21 to i16
  %sub121 = sub nsw i16 %conv118, %conv120
  %arrayidx123 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %sub121, i16* %arrayidx123, align 2, !tbaa !24
  %or1261329 = or i16 %or1141328, %sub121
  %arrayidx129 = getelementptr inbounds i8, i8* %p_src, i32 96
  %22 = load i8, i8* %arrayidx129, align 1, !tbaa !23
  %conv130 = zext i8 %22 to i16
  %arrayidx131 = getelementptr inbounds i8, i8* %p_dst, i32 192
  %23 = load i8, i8* %arrayidx131, align 1, !tbaa !23
  %conv132 = zext i8 %23 to i16
  %sub133 = sub nsw i16 %conv130, %conv132
  %arrayidx135 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %sub133, i16* %arrayidx135, align 2, !tbaa !24
  %or1381330 = or i16 %or1261329, %sub133
  %arrayidx141 = getelementptr inbounds i8, i8* %p_src, i32 112
  %24 = load i8, i8* %arrayidx141, align 1, !tbaa !23
  %conv142 = zext i8 %24 to i16
  %arrayidx143 = getelementptr inbounds i8, i8* %p_dst, i32 224
  %25 = load i8, i8* %arrayidx143, align 1, !tbaa !23
  %conv144 = zext i8 %25 to i16
  %sub145 = sub nsw i16 %conv142, %conv144
  %arrayidx147 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %sub145, i16* %arrayidx147, align 2, !tbaa !24
  %or1501331 = or i16 %or1381330, %sub145
  %arrayidx153 = getelementptr inbounds i8, i8* %p_src, i32 65
  %26 = load i8, i8* %arrayidx153, align 1, !tbaa !23
  %conv154 = zext i8 %26 to i16
  %arrayidx155 = getelementptr inbounds i8, i8* %p_dst, i32 129
  %27 = load i8, i8* %arrayidx155, align 1, !tbaa !23
  %conv156 = zext i8 %27 to i16
  %sub157 = sub nsw i16 %conv154, %conv156
  %arrayidx159 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %sub157, i16* %arrayidx159, align 2, !tbaa !24
  %or1621332 = or i16 %or1501331, %sub157
  %arrayidx165 = getelementptr inbounds i8, i8* %p_src, i32 18
  %28 = load i8, i8* %arrayidx165, align 1, !tbaa !23
  %conv166 = zext i8 %28 to i16
  %arrayidx167 = getelementptr inbounds i8, i8* %p_dst, i32 34
  %29 = load i8, i8* %arrayidx167, align 1, !tbaa !23
  %conv168 = zext i8 %29 to i16
  %sub169 = sub nsw i16 %conv166, %conv168
  %arrayidx171 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %sub169, i16* %arrayidx171, align 2, !tbaa !24
  %or1741333 = or i16 %or1621332, %sub169
  %arrayidx177 = getelementptr inbounds i8, i8* %p_src, i32 3
  %30 = load i8, i8* %arrayidx177, align 1, !tbaa !23
  %conv178 = zext i8 %30 to i16
  %arrayidx179 = getelementptr inbounds i8, i8* %p_dst, i32 3
  %31 = load i8, i8* %arrayidx179, align 1, !tbaa !23
  %conv180 = zext i8 %31 to i16
  %sub181 = sub nsw i16 %conv178, %conv180
  %arrayidx183 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %sub181, i16* %arrayidx183, align 2, !tbaa !24
  %or1861334 = or i16 %or1741333, %sub181
  %arrayidx189 = getelementptr inbounds i8, i8* %p_src, i32 34
  %32 = load i8, i8* %arrayidx189, align 1, !tbaa !23
  %conv190 = zext i8 %32 to i16
  %arrayidx191 = getelementptr inbounds i8, i8* %p_dst, i32 66
  %33 = load i8, i8* %arrayidx191, align 1, !tbaa !23
  %conv192 = zext i8 %33 to i16
  %sub193 = sub nsw i16 %conv190, %conv192
  %arrayidx195 = getelementptr inbounds i16, i16* %level, i32 16
  store i16 %sub193, i16* %arrayidx195, align 2, !tbaa !24
  %or1981335 = or i16 %or1861334, %sub193
  %arrayidx201 = getelementptr inbounds i8, i8* %p_src, i32 81
  %34 = load i8, i8* %arrayidx201, align 1, !tbaa !23
  %conv202 = zext i8 %34 to i16
  %arrayidx203 = getelementptr inbounds i8, i8* %p_dst, i32 161
  %35 = load i8, i8* %arrayidx203, align 1, !tbaa !23
  %conv204 = zext i8 %35 to i16
  %sub205 = sub nsw i16 %conv202, %conv204
  %arrayidx207 = getelementptr inbounds i16, i16* %level, i32 17
  store i16 %sub205, i16* %arrayidx207, align 2, !tbaa !24
  %or2101336 = or i16 %or1981335, %sub205
  %arrayidx213 = getelementptr inbounds i8, i8* %p_src, i32 97
  %36 = load i8, i8* %arrayidx213, align 1, !tbaa !23
  %conv214 = zext i8 %36 to i16
  %arrayidx215 = getelementptr inbounds i8, i8* %p_dst, i32 193
  %37 = load i8, i8* %arrayidx215, align 1, !tbaa !23
  %conv216 = zext i8 %37 to i16
  %sub217 = sub nsw i16 %conv214, %conv216
  %arrayidx219 = getelementptr inbounds i16, i16* %level, i32 18
  store i16 %sub217, i16* %arrayidx219, align 2, !tbaa !24
  %or2221337 = or i16 %or2101336, %sub217
  %arrayidx225 = getelementptr inbounds i8, i8* %p_src, i32 113
  %38 = load i8, i8* %arrayidx225, align 1, !tbaa !23
  %conv226 = zext i8 %38 to i16
  %arrayidx227 = getelementptr inbounds i8, i8* %p_dst, i32 225
  %39 = load i8, i8* %arrayidx227, align 1, !tbaa !23
  %conv228 = zext i8 %39 to i16
  %sub229 = sub nsw i16 %conv226, %conv228
  %arrayidx231 = getelementptr inbounds i16, i16* %level, i32 19
  store i16 %sub229, i16* %arrayidx231, align 2, !tbaa !24
  %or2341338 = or i16 %or2221337, %sub229
  %arrayidx237 = getelementptr inbounds i8, i8* %p_src, i32 50
  %40 = load i8, i8* %arrayidx237, align 1, !tbaa !23
  %conv238 = zext i8 %40 to i16
  %arrayidx239 = getelementptr inbounds i8, i8* %p_dst, i32 98
  %41 = load i8, i8* %arrayidx239, align 1, !tbaa !23
  %conv240 = zext i8 %41 to i16
  %sub241 = sub nsw i16 %conv238, %conv240
  %arrayidx243 = getelementptr inbounds i16, i16* %level, i32 20
  store i16 %sub241, i16* %arrayidx243, align 2, !tbaa !24
  %or2461339 = or i16 %or2341338, %sub241
  %arrayidx249 = getelementptr inbounds i8, i8* %p_src, i32 19
  %42 = load i8, i8* %arrayidx249, align 1, !tbaa !23
  %conv250 = zext i8 %42 to i16
  %arrayidx251 = getelementptr inbounds i8, i8* %p_dst, i32 35
  %43 = load i8, i8* %arrayidx251, align 1, !tbaa !23
  %conv252 = zext i8 %43 to i16
  %sub253 = sub nsw i16 %conv250, %conv252
  %arrayidx255 = getelementptr inbounds i16, i16* %level, i32 21
  store i16 %sub253, i16* %arrayidx255, align 2, !tbaa !24
  %or2581340 = or i16 %or2461339, %sub253
  %arrayidx261 = getelementptr inbounds i8, i8* %p_src, i32 4
  %44 = load i8, i8* %arrayidx261, align 1, !tbaa !23
  %conv262 = zext i8 %44 to i16
  %arrayidx263 = getelementptr inbounds i8, i8* %p_dst, i32 4
  %45 = load i8, i8* %arrayidx263, align 1, !tbaa !23
  %conv264 = zext i8 %45 to i16
  %sub265 = sub nsw i16 %conv262, %conv264
  %arrayidx267 = getelementptr inbounds i16, i16* %level, i32 22
  store i16 %sub265, i16* %arrayidx267, align 2, !tbaa !24
  %or2701341 = or i16 %or2581340, %sub265
  %arrayidx273 = getelementptr inbounds i8, i8* %p_src, i32 35
  %46 = load i8, i8* %arrayidx273, align 1, !tbaa !23
  %conv274 = zext i8 %46 to i16
  %arrayidx275 = getelementptr inbounds i8, i8* %p_dst, i32 67
  %47 = load i8, i8* %arrayidx275, align 1, !tbaa !23
  %conv276 = zext i8 %47 to i16
  %sub277 = sub nsw i16 %conv274, %conv276
  %arrayidx279 = getelementptr inbounds i16, i16* %level, i32 23
  store i16 %sub277, i16* %arrayidx279, align 2, !tbaa !24
  %or2821342 = or i16 %or2701341, %sub277
  %arrayidx285 = getelementptr inbounds i8, i8* %p_src, i32 66
  %48 = load i8, i8* %arrayidx285, align 1, !tbaa !23
  %conv286 = zext i8 %48 to i16
  %arrayidx287 = getelementptr inbounds i8, i8* %p_dst, i32 130
  %49 = load i8, i8* %arrayidx287, align 1, !tbaa !23
  %conv288 = zext i8 %49 to i16
  %sub289 = sub nsw i16 %conv286, %conv288
  %arrayidx291 = getelementptr inbounds i16, i16* %level, i32 24
  store i16 %sub289, i16* %arrayidx291, align 2, !tbaa !24
  %or2941343 = or i16 %or2821342, %sub289
  %arrayidx297 = getelementptr inbounds i8, i8* %p_src, i32 82
  %50 = load i8, i8* %arrayidx297, align 1, !tbaa !23
  %conv298 = zext i8 %50 to i16
  %arrayidx299 = getelementptr inbounds i8, i8* %p_dst, i32 162
  %51 = load i8, i8* %arrayidx299, align 1, !tbaa !23
  %conv300 = zext i8 %51 to i16
  %sub301 = sub nsw i16 %conv298, %conv300
  %arrayidx303 = getelementptr inbounds i16, i16* %level, i32 25
  store i16 %sub301, i16* %arrayidx303, align 2, !tbaa !24
  %or3061344 = or i16 %or2941343, %sub301
  %arrayidx309 = getelementptr inbounds i8, i8* %p_src, i32 98
  %52 = load i8, i8* %arrayidx309, align 1, !tbaa !23
  %conv310 = zext i8 %52 to i16
  %arrayidx311 = getelementptr inbounds i8, i8* %p_dst, i32 194
  %53 = load i8, i8* %arrayidx311, align 1, !tbaa !23
  %conv312 = zext i8 %53 to i16
  %sub313 = sub nsw i16 %conv310, %conv312
  %arrayidx315 = getelementptr inbounds i16, i16* %level, i32 26
  store i16 %sub313, i16* %arrayidx315, align 2, !tbaa !24
  %or3181345 = or i16 %or3061344, %sub313
  %arrayidx321 = getelementptr inbounds i8, i8* %p_src, i32 114
  %54 = load i8, i8* %arrayidx321, align 1, !tbaa !23
  %conv322 = zext i8 %54 to i16
  %arrayidx323 = getelementptr inbounds i8, i8* %p_dst, i32 226
  %55 = load i8, i8* %arrayidx323, align 1, !tbaa !23
  %conv324 = zext i8 %55 to i16
  %sub325 = sub nsw i16 %conv322, %conv324
  %arrayidx327 = getelementptr inbounds i16, i16* %level, i32 27
  store i16 %sub325, i16* %arrayidx327, align 2, !tbaa !24
  %or3301346 = or i16 %or3181345, %sub325
  %arrayidx333 = getelementptr inbounds i8, i8* %p_src, i32 51
  %56 = load i8, i8* %arrayidx333, align 1, !tbaa !23
  %conv334 = zext i8 %56 to i16
  %arrayidx335 = getelementptr inbounds i8, i8* %p_dst, i32 99
  %57 = load i8, i8* %arrayidx335, align 1, !tbaa !23
  %conv336 = zext i8 %57 to i16
  %sub337 = sub nsw i16 %conv334, %conv336
  %arrayidx339 = getelementptr inbounds i16, i16* %level, i32 28
  store i16 %sub337, i16* %arrayidx339, align 2, !tbaa !24
  %or3421347 = or i16 %or3301346, %sub337
  %arrayidx345 = getelementptr inbounds i8, i8* %p_src, i32 20
  %58 = load i8, i8* %arrayidx345, align 1, !tbaa !23
  %conv346 = zext i8 %58 to i16
  %arrayidx347 = getelementptr inbounds i8, i8* %p_dst, i32 36
  %59 = load i8, i8* %arrayidx347, align 1, !tbaa !23
  %conv348 = zext i8 %59 to i16
  %sub349 = sub nsw i16 %conv346, %conv348
  %arrayidx351 = getelementptr inbounds i16, i16* %level, i32 29
  store i16 %sub349, i16* %arrayidx351, align 2, !tbaa !24
  %or3541348 = or i16 %or3421347, %sub349
  %arrayidx357 = getelementptr inbounds i8, i8* %p_src, i32 5
  %60 = load i8, i8* %arrayidx357, align 1, !tbaa !23
  %conv358 = zext i8 %60 to i16
  %arrayidx359 = getelementptr inbounds i8, i8* %p_dst, i32 5
  %61 = load i8, i8* %arrayidx359, align 1, !tbaa !23
  %conv360 = zext i8 %61 to i16
  %sub361 = sub nsw i16 %conv358, %conv360
  %arrayidx363 = getelementptr inbounds i16, i16* %level, i32 30
  store i16 %sub361, i16* %arrayidx363, align 2, !tbaa !24
  %or3661349 = or i16 %or3541348, %sub361
  %arrayidx369 = getelementptr inbounds i8, i8* %p_src, i32 36
  %62 = load i8, i8* %arrayidx369, align 1, !tbaa !23
  %conv370 = zext i8 %62 to i16
  %arrayidx371 = getelementptr inbounds i8, i8* %p_dst, i32 68
  %63 = load i8, i8* %arrayidx371, align 1, !tbaa !23
  %conv372 = zext i8 %63 to i16
  %sub373 = sub nsw i16 %conv370, %conv372
  %arrayidx375 = getelementptr inbounds i16, i16* %level, i32 31
  store i16 %sub373, i16* %arrayidx375, align 2, !tbaa !24
  %or3781350 = or i16 %or3661349, %sub373
  %arrayidx381 = getelementptr inbounds i8, i8* %p_src, i32 67
  %64 = load i8, i8* %arrayidx381, align 1, !tbaa !23
  %conv382 = zext i8 %64 to i16
  %arrayidx383 = getelementptr inbounds i8, i8* %p_dst, i32 131
  %65 = load i8, i8* %arrayidx383, align 1, !tbaa !23
  %conv384 = zext i8 %65 to i16
  %sub385 = sub nsw i16 %conv382, %conv384
  %arrayidx387 = getelementptr inbounds i16, i16* %level, i32 32
  store i16 %sub385, i16* %arrayidx387, align 2, !tbaa !24
  %or3901351 = or i16 %or3781350, %sub385
  %arrayidx393 = getelementptr inbounds i8, i8* %p_src, i32 83
  %66 = load i8, i8* %arrayidx393, align 1, !tbaa !23
  %conv394 = zext i8 %66 to i16
  %arrayidx395 = getelementptr inbounds i8, i8* %p_dst, i32 163
  %67 = load i8, i8* %arrayidx395, align 1, !tbaa !23
  %conv396 = zext i8 %67 to i16
  %sub397 = sub nsw i16 %conv394, %conv396
  %arrayidx399 = getelementptr inbounds i16, i16* %level, i32 33
  store i16 %sub397, i16* %arrayidx399, align 2, !tbaa !24
  %or4021352 = or i16 %or3901351, %sub397
  %arrayidx405 = getelementptr inbounds i8, i8* %p_src, i32 99
  %68 = load i8, i8* %arrayidx405, align 1, !tbaa !23
  %conv406 = zext i8 %68 to i16
  %arrayidx407 = getelementptr inbounds i8, i8* %p_dst, i32 195
  %69 = load i8, i8* %arrayidx407, align 1, !tbaa !23
  %conv408 = zext i8 %69 to i16
  %sub409 = sub nsw i16 %conv406, %conv408
  %arrayidx411 = getelementptr inbounds i16, i16* %level, i32 34
  store i16 %sub409, i16* %arrayidx411, align 2, !tbaa !24
  %or4141353 = or i16 %or4021352, %sub409
  %arrayidx417 = getelementptr inbounds i8, i8* %p_src, i32 115
  %70 = load i8, i8* %arrayidx417, align 1, !tbaa !23
  %conv418 = zext i8 %70 to i16
  %arrayidx419 = getelementptr inbounds i8, i8* %p_dst, i32 227
  %71 = load i8, i8* %arrayidx419, align 1, !tbaa !23
  %conv420 = zext i8 %71 to i16
  %sub421 = sub nsw i16 %conv418, %conv420
  %arrayidx423 = getelementptr inbounds i16, i16* %level, i32 35
  store i16 %sub421, i16* %arrayidx423, align 2, !tbaa !24
  %or4261354 = or i16 %or4141353, %sub421
  %arrayidx429 = getelementptr inbounds i8, i8* %p_src, i32 52
  %72 = load i8, i8* %arrayidx429, align 1, !tbaa !23
  %conv430 = zext i8 %72 to i16
  %arrayidx431 = getelementptr inbounds i8, i8* %p_dst, i32 100
  %73 = load i8, i8* %arrayidx431, align 1, !tbaa !23
  %conv432 = zext i8 %73 to i16
  %sub433 = sub nsw i16 %conv430, %conv432
  %arrayidx435 = getelementptr inbounds i16, i16* %level, i32 36
  store i16 %sub433, i16* %arrayidx435, align 2, !tbaa !24
  %or4381355 = or i16 %or4261354, %sub433
  %arrayidx441 = getelementptr inbounds i8, i8* %p_src, i32 21
  %74 = load i8, i8* %arrayidx441, align 1, !tbaa !23
  %conv442 = zext i8 %74 to i16
  %arrayidx443 = getelementptr inbounds i8, i8* %p_dst, i32 37
  %75 = load i8, i8* %arrayidx443, align 1, !tbaa !23
  %conv444 = zext i8 %75 to i16
  %sub445 = sub nsw i16 %conv442, %conv444
  %arrayidx447 = getelementptr inbounds i16, i16* %level, i32 37
  store i16 %sub445, i16* %arrayidx447, align 2, !tbaa !24
  %or4501356 = or i16 %or4381355, %sub445
  %arrayidx453 = getelementptr inbounds i8, i8* %p_src, i32 6
  %76 = load i8, i8* %arrayidx453, align 1, !tbaa !23
  %conv454 = zext i8 %76 to i16
  %arrayidx455 = getelementptr inbounds i8, i8* %p_dst, i32 6
  %77 = load i8, i8* %arrayidx455, align 1, !tbaa !23
  %conv456 = zext i8 %77 to i16
  %sub457 = sub nsw i16 %conv454, %conv456
  %arrayidx459 = getelementptr inbounds i16, i16* %level, i32 38
  store i16 %sub457, i16* %arrayidx459, align 2, !tbaa !24
  %or4621357 = or i16 %or4501356, %sub457
  %arrayidx465 = getelementptr inbounds i8, i8* %p_src, i32 37
  %78 = load i8, i8* %arrayidx465, align 1, !tbaa !23
  %conv466 = zext i8 %78 to i16
  %arrayidx467 = getelementptr inbounds i8, i8* %p_dst, i32 69
  %79 = load i8, i8* %arrayidx467, align 1, !tbaa !23
  %conv468 = zext i8 %79 to i16
  %sub469 = sub nsw i16 %conv466, %conv468
  %arrayidx471 = getelementptr inbounds i16, i16* %level, i32 39
  store i16 %sub469, i16* %arrayidx471, align 2, !tbaa !24
  %or4741358 = or i16 %or4621357, %sub469
  %arrayidx477 = getelementptr inbounds i8, i8* %p_src, i32 68
  %80 = load i8, i8* %arrayidx477, align 1, !tbaa !23
  %conv478 = zext i8 %80 to i16
  %arrayidx479 = getelementptr inbounds i8, i8* %p_dst, i32 132
  %81 = load i8, i8* %arrayidx479, align 1, !tbaa !23
  %conv480 = zext i8 %81 to i16
  %sub481 = sub nsw i16 %conv478, %conv480
  %arrayidx483 = getelementptr inbounds i16, i16* %level, i32 40
  store i16 %sub481, i16* %arrayidx483, align 2, !tbaa !24
  %or4861359 = or i16 %or4741358, %sub481
  %arrayidx489 = getelementptr inbounds i8, i8* %p_src, i32 84
  %82 = load i8, i8* %arrayidx489, align 1, !tbaa !23
  %conv490 = zext i8 %82 to i16
  %arrayidx491 = getelementptr inbounds i8, i8* %p_dst, i32 164
  %83 = load i8, i8* %arrayidx491, align 1, !tbaa !23
  %conv492 = zext i8 %83 to i16
  %sub493 = sub nsw i16 %conv490, %conv492
  %arrayidx495 = getelementptr inbounds i16, i16* %level, i32 41
  store i16 %sub493, i16* %arrayidx495, align 2, !tbaa !24
  %or4981360 = or i16 %or4861359, %sub493
  %arrayidx501 = getelementptr inbounds i8, i8* %p_src, i32 100
  %84 = load i8, i8* %arrayidx501, align 1, !tbaa !23
  %conv502 = zext i8 %84 to i16
  %arrayidx503 = getelementptr inbounds i8, i8* %p_dst, i32 196
  %85 = load i8, i8* %arrayidx503, align 1, !tbaa !23
  %conv504 = zext i8 %85 to i16
  %sub505 = sub nsw i16 %conv502, %conv504
  %arrayidx507 = getelementptr inbounds i16, i16* %level, i32 42
  store i16 %sub505, i16* %arrayidx507, align 2, !tbaa !24
  %or5101361 = or i16 %or4981360, %sub505
  %arrayidx513 = getelementptr inbounds i8, i8* %p_src, i32 116
  %86 = load i8, i8* %arrayidx513, align 1, !tbaa !23
  %conv514 = zext i8 %86 to i16
  %arrayidx515 = getelementptr inbounds i8, i8* %p_dst, i32 228
  %87 = load i8, i8* %arrayidx515, align 1, !tbaa !23
  %conv516 = zext i8 %87 to i16
  %sub517 = sub nsw i16 %conv514, %conv516
  %arrayidx519 = getelementptr inbounds i16, i16* %level, i32 43
  store i16 %sub517, i16* %arrayidx519, align 2, !tbaa !24
  %or5221362 = or i16 %or5101361, %sub517
  %arrayidx525 = getelementptr inbounds i8, i8* %p_src, i32 53
  %88 = load i8, i8* %arrayidx525, align 1, !tbaa !23
  %conv526 = zext i8 %88 to i16
  %arrayidx527 = getelementptr inbounds i8, i8* %p_dst, i32 101
  %89 = load i8, i8* %arrayidx527, align 1, !tbaa !23
  %conv528 = zext i8 %89 to i16
  %sub529 = sub nsw i16 %conv526, %conv528
  %arrayidx531 = getelementptr inbounds i16, i16* %level, i32 44
  store i16 %sub529, i16* %arrayidx531, align 2, !tbaa !24
  %or5341363 = or i16 %or5221362, %sub529
  %arrayidx537 = getelementptr inbounds i8, i8* %p_src, i32 22
  %90 = load i8, i8* %arrayidx537, align 1, !tbaa !23
  %conv538 = zext i8 %90 to i16
  %arrayidx539 = getelementptr inbounds i8, i8* %p_dst, i32 38
  %91 = load i8, i8* %arrayidx539, align 1, !tbaa !23
  %conv540 = zext i8 %91 to i16
  %sub541 = sub nsw i16 %conv538, %conv540
  %arrayidx543 = getelementptr inbounds i16, i16* %level, i32 45
  store i16 %sub541, i16* %arrayidx543, align 2, !tbaa !24
  %or5461364 = or i16 %or5341363, %sub541
  %arrayidx549 = getelementptr inbounds i8, i8* %p_src, i32 38
  %92 = load i8, i8* %arrayidx549, align 1, !tbaa !23
  %conv550 = zext i8 %92 to i16
  %arrayidx551 = getelementptr inbounds i8, i8* %p_dst, i32 70
  %93 = load i8, i8* %arrayidx551, align 1, !tbaa !23
  %conv552 = zext i8 %93 to i16
  %sub553 = sub nsw i16 %conv550, %conv552
  %arrayidx555 = getelementptr inbounds i16, i16* %level, i32 46
  store i16 %sub553, i16* %arrayidx555, align 2, !tbaa !24
  %or5581365 = or i16 %or5461364, %sub553
  %arrayidx561 = getelementptr inbounds i8, i8* %p_src, i32 69
  %94 = load i8, i8* %arrayidx561, align 1, !tbaa !23
  %conv562 = zext i8 %94 to i16
  %arrayidx563 = getelementptr inbounds i8, i8* %p_dst, i32 133
  %95 = load i8, i8* %arrayidx563, align 1, !tbaa !23
  %conv564 = zext i8 %95 to i16
  %sub565 = sub nsw i16 %conv562, %conv564
  %arrayidx567 = getelementptr inbounds i16, i16* %level, i32 47
  store i16 %sub565, i16* %arrayidx567, align 2, !tbaa !24
  %or5701366 = or i16 %or5581365, %sub565
  %arrayidx573 = getelementptr inbounds i8, i8* %p_src, i32 85
  %96 = load i8, i8* %arrayidx573, align 1, !tbaa !23
  %conv574 = zext i8 %96 to i16
  %arrayidx575 = getelementptr inbounds i8, i8* %p_dst, i32 165
  %97 = load i8, i8* %arrayidx575, align 1, !tbaa !23
  %conv576 = zext i8 %97 to i16
  %sub577 = sub nsw i16 %conv574, %conv576
  %arrayidx579 = getelementptr inbounds i16, i16* %level, i32 48
  store i16 %sub577, i16* %arrayidx579, align 2, !tbaa !24
  %or5821367 = or i16 %or5701366, %sub577
  %arrayidx585 = getelementptr inbounds i8, i8* %p_src, i32 101
  %98 = load i8, i8* %arrayidx585, align 1, !tbaa !23
  %conv586 = zext i8 %98 to i16
  %arrayidx587 = getelementptr inbounds i8, i8* %p_dst, i32 197
  %99 = load i8, i8* %arrayidx587, align 1, !tbaa !23
  %conv588 = zext i8 %99 to i16
  %sub589 = sub nsw i16 %conv586, %conv588
  %arrayidx591 = getelementptr inbounds i16, i16* %level, i32 49
  store i16 %sub589, i16* %arrayidx591, align 2, !tbaa !24
  %or5941368 = or i16 %or5821367, %sub589
  %arrayidx597 = getelementptr inbounds i8, i8* %p_src, i32 117
  %100 = load i8, i8* %arrayidx597, align 1, !tbaa !23
  %conv598 = zext i8 %100 to i16
  %arrayidx599 = getelementptr inbounds i8, i8* %p_dst, i32 229
  %101 = load i8, i8* %arrayidx599, align 1, !tbaa !23
  %conv600 = zext i8 %101 to i16
  %sub601 = sub nsw i16 %conv598, %conv600
  %arrayidx603 = getelementptr inbounds i16, i16* %level, i32 50
  store i16 %sub601, i16* %arrayidx603, align 2, !tbaa !24
  %or6061369 = or i16 %or5941368, %sub601
  %arrayidx609 = getelementptr inbounds i8, i8* %p_src, i32 54
  %102 = load i8, i8* %arrayidx609, align 1, !tbaa !23
  %conv610 = zext i8 %102 to i16
  %arrayidx611 = getelementptr inbounds i8, i8* %p_dst, i32 102
  %103 = load i8, i8* %arrayidx611, align 1, !tbaa !23
  %conv612 = zext i8 %103 to i16
  %sub613 = sub nsw i16 %conv610, %conv612
  %arrayidx615 = getelementptr inbounds i16, i16* %level, i32 51
  store i16 %sub613, i16* %arrayidx615, align 2, !tbaa !24
  %or6181370 = or i16 %or6061369, %sub613
  %arrayidx621 = getelementptr inbounds i8, i8* %p_src, i32 7
  %104 = load i8, i8* %arrayidx621, align 1, !tbaa !23
  %conv622 = zext i8 %104 to i16
  %arrayidx623 = getelementptr inbounds i8, i8* %p_dst, i32 7
  %105 = load i8, i8* %arrayidx623, align 1, !tbaa !23
  %conv624 = zext i8 %105 to i16
  %sub625 = sub nsw i16 %conv622, %conv624
  %arrayidx627 = getelementptr inbounds i16, i16* %level, i32 52
  store i16 %sub625, i16* %arrayidx627, align 2, !tbaa !24
  %or6301371 = or i16 %or6181370, %sub625
  %arrayidx633 = getelementptr inbounds i8, i8* %p_src, i32 23
  %106 = load i8, i8* %arrayidx633, align 1, !tbaa !23
  %conv634 = zext i8 %106 to i16
  %arrayidx635 = getelementptr inbounds i8, i8* %p_dst, i32 39
  %107 = load i8, i8* %arrayidx635, align 1, !tbaa !23
  %conv636 = zext i8 %107 to i16
  %sub637 = sub nsw i16 %conv634, %conv636
  %arrayidx639 = getelementptr inbounds i16, i16* %level, i32 53
  store i16 %sub637, i16* %arrayidx639, align 2, !tbaa !24
  %or6421372 = or i16 %or6301371, %sub637
  %arrayidx645 = getelementptr inbounds i8, i8* %p_src, i32 70
  %108 = load i8, i8* %arrayidx645, align 1, !tbaa !23
  %conv646 = zext i8 %108 to i16
  %arrayidx647 = getelementptr inbounds i8, i8* %p_dst, i32 134
  %109 = load i8, i8* %arrayidx647, align 1, !tbaa !23
  %conv648 = zext i8 %109 to i16
  %sub649 = sub nsw i16 %conv646, %conv648
  %arrayidx651 = getelementptr inbounds i16, i16* %level, i32 54
  store i16 %sub649, i16* %arrayidx651, align 2, !tbaa !24
  %or6541373 = or i16 %or6421372, %sub649
  %arrayidx657 = getelementptr inbounds i8, i8* %p_src, i32 86
  %110 = load i8, i8* %arrayidx657, align 1, !tbaa !23
  %conv658 = zext i8 %110 to i16
  %arrayidx659 = getelementptr inbounds i8, i8* %p_dst, i32 166
  %111 = load i8, i8* %arrayidx659, align 1, !tbaa !23
  %conv660 = zext i8 %111 to i16
  %sub661 = sub nsw i16 %conv658, %conv660
  %arrayidx663 = getelementptr inbounds i16, i16* %level, i32 55
  store i16 %sub661, i16* %arrayidx663, align 2, !tbaa !24
  %or6661374 = or i16 %or6541373, %sub661
  %arrayidx669 = getelementptr inbounds i8, i8* %p_src, i32 102
  %112 = load i8, i8* %arrayidx669, align 1, !tbaa !23
  %conv670 = zext i8 %112 to i16
  %arrayidx671 = getelementptr inbounds i8, i8* %p_dst, i32 198
  %113 = load i8, i8* %arrayidx671, align 1, !tbaa !23
  %conv672 = zext i8 %113 to i16
  %sub673 = sub nsw i16 %conv670, %conv672
  %arrayidx675 = getelementptr inbounds i16, i16* %level, i32 56
  store i16 %sub673, i16* %arrayidx675, align 2, !tbaa !24
  %or6781375 = or i16 %or6661374, %sub673
  %arrayidx681 = getelementptr inbounds i8, i8* %p_src, i32 118
  %114 = load i8, i8* %arrayidx681, align 1, !tbaa !23
  %conv682 = zext i8 %114 to i16
  %arrayidx683 = getelementptr inbounds i8, i8* %p_dst, i32 230
  %115 = load i8, i8* %arrayidx683, align 1, !tbaa !23
  %conv684 = zext i8 %115 to i16
  %sub685 = sub nsw i16 %conv682, %conv684
  %arrayidx687 = getelementptr inbounds i16, i16* %level, i32 57
  store i16 %sub685, i16* %arrayidx687, align 2, !tbaa !24
  %or6901376 = or i16 %or6781375, %sub685
  %arrayidx693 = getelementptr inbounds i8, i8* %p_src, i32 39
  %116 = load i8, i8* %arrayidx693, align 1, !tbaa !23
  %conv694 = zext i8 %116 to i16
  %arrayidx695 = getelementptr inbounds i8, i8* %p_dst, i32 71
  %117 = load i8, i8* %arrayidx695, align 1, !tbaa !23
  %conv696 = zext i8 %117 to i16
  %sub697 = sub nsw i16 %conv694, %conv696
  %arrayidx699 = getelementptr inbounds i16, i16* %level, i32 58
  store i16 %sub697, i16* %arrayidx699, align 2, !tbaa !24
  %or7021377 = or i16 %or6901376, %sub697
  %arrayidx705 = getelementptr inbounds i8, i8* %p_src, i32 55
  %118 = load i8, i8* %arrayidx705, align 1, !tbaa !23
  %conv706 = zext i8 %118 to i16
  %arrayidx707 = getelementptr inbounds i8, i8* %p_dst, i32 103
  %119 = load i8, i8* %arrayidx707, align 1, !tbaa !23
  %conv708 = zext i8 %119 to i16
  %sub709 = sub nsw i16 %conv706, %conv708
  %arrayidx711 = getelementptr inbounds i16, i16* %level, i32 59
  store i16 %sub709, i16* %arrayidx711, align 2, !tbaa !24
  %or7141378 = or i16 %or7021377, %sub709
  %arrayidx717 = getelementptr inbounds i8, i8* %p_src, i32 71
  %120 = load i8, i8* %arrayidx717, align 1, !tbaa !23
  %conv718 = zext i8 %120 to i16
  %arrayidx719 = getelementptr inbounds i8, i8* %p_dst, i32 135
  %121 = load i8, i8* %arrayidx719, align 1, !tbaa !23
  %conv720 = zext i8 %121 to i16
  %sub721 = sub nsw i16 %conv718, %conv720
  %arrayidx723 = getelementptr inbounds i16, i16* %level, i32 60
  store i16 %sub721, i16* %arrayidx723, align 2, !tbaa !24
  %or7261379 = or i16 %or7141378, %sub721
  %arrayidx729 = getelementptr inbounds i8, i8* %p_src, i32 87
  %122 = load i8, i8* %arrayidx729, align 1, !tbaa !23
  %conv730 = zext i8 %122 to i16
  %arrayidx731 = getelementptr inbounds i8, i8* %p_dst, i32 167
  %123 = load i8, i8* %arrayidx731, align 1, !tbaa !23
  %conv732 = zext i8 %123 to i16
  %sub733 = sub nsw i16 %conv730, %conv732
  %arrayidx735 = getelementptr inbounds i16, i16* %level, i32 61
  store i16 %sub733, i16* %arrayidx735, align 2, !tbaa !24
  %or7381380 = or i16 %or7261379, %sub733
  %arrayidx741 = getelementptr inbounds i8, i8* %p_src, i32 103
  %124 = load i8, i8* %arrayidx741, align 1, !tbaa !23
  %conv742 = zext i8 %124 to i16
  %arrayidx743 = getelementptr inbounds i8, i8* %p_dst, i32 199
  %125 = load i8, i8* %arrayidx743, align 1, !tbaa !23
  %conv744 = zext i8 %125 to i16
  %sub745 = sub nsw i16 %conv742, %conv744
  %arrayidx747 = getelementptr inbounds i16, i16* %level, i32 62
  store i16 %sub745, i16* %arrayidx747, align 2, !tbaa !24
  %or7501381 = or i16 %or7381380, %sub745
  %arrayidx753 = getelementptr inbounds i8, i8* %p_src, i32 119
  %126 = load i8, i8* %arrayidx753, align 1, !tbaa !23
  %conv754 = zext i8 %126 to i16
  %arrayidx755 = getelementptr inbounds i8, i8* %p_dst, i32 231
  %127 = load i8, i8* %arrayidx755, align 1, !tbaa !23
  %conv756 = zext i8 %127 to i16
  %sub757 = sub nsw i16 %conv754, %conv756
  %arrayidx759 = getelementptr inbounds i16, i16* %level, i32 63
  store i16 %sub757, i16* %arrayidx759, align 2, !tbaa !24
  %or7621382 = or i16 %or7501381, %sub757
  %i = bitcast i8* %p_src to i32*
  %128 = load i32, i32* %i, align 4, !tbaa !23
  %i764 = bitcast i8* %p_dst to i32*
  store i32 %128, i32* %i764, align 4, !tbaa !23
  %i767 = bitcast i8* %arrayidx261 to i32*
  %129 = load i32, i32* %i767, align 4, !tbaa !23
  %i770 = bitcast i8* %arrayidx263 to i32*
  store i32 %129, i32* %i770, align 4, !tbaa !23
  %i772 = bitcast i8* %arrayidx9 to i32*
  %130 = load i32, i32* %i772, align 4, !tbaa !23
  %i774 = bitcast i8* %arrayidx11 to i32*
  store i32 %130, i32* %i774, align 4, !tbaa !23
  %i777 = bitcast i8* %arrayidx345 to i32*
  %131 = load i32, i32* %i777, align 4, !tbaa !23
  %i780 = bitcast i8* %arrayidx347 to i32*
  store i32 %131, i32* %i780, align 4, !tbaa !23
  %i782 = bitcast i8* %arrayidx21 to i32*
  %132 = load i32, i32* %i782, align 4, !tbaa !23
  %i784 = bitcast i8* %arrayidx23 to i32*
  store i32 %132, i32* %i784, align 4, !tbaa !23
  %i787 = bitcast i8* %arrayidx369 to i32*
  %133 = load i32, i32* %i787, align 4, !tbaa !23
  %i790 = bitcast i8* %arrayidx371 to i32*
  store i32 %133, i32* %i790, align 4, !tbaa !23
  %i792 = bitcast i8* %arrayidx57 to i32*
  %134 = load i32, i32* %i792, align 4, !tbaa !23
  %i794 = bitcast i8* %arrayidx59 to i32*
  store i32 %134, i32* %i794, align 4, !tbaa !23
  %i797 = bitcast i8* %arrayidx429 to i32*
  %135 = load i32, i32* %i797, align 4, !tbaa !23
  %i800 = bitcast i8* %arrayidx431 to i32*
  store i32 %135, i32* %i800, align 4, !tbaa !23
  %i802 = bitcast i8* %arrayidx69 to i32*
  %136 = load i32, i32* %i802, align 4, !tbaa !23
  %i804 = bitcast i8* %arrayidx71 to i32*
  store i32 %136, i32* %i804, align 4, !tbaa !23
  %i807 = bitcast i8* %arrayidx477 to i32*
  %137 = load i32, i32* %i807, align 4, !tbaa !23
  %i810 = bitcast i8* %arrayidx479 to i32*
  store i32 %137, i32* %i810, align 4, !tbaa !23
  %i812 = bitcast i8* %arrayidx117 to i32*
  %138 = load i32, i32* %i812, align 4, !tbaa !23
  %i814 = bitcast i8* %arrayidx119 to i32*
  store i32 %138, i32* %i814, align 4, !tbaa !23
  %i817 = bitcast i8* %arrayidx489 to i32*
  %139 = load i32, i32* %i817, align 4, !tbaa !23
  %i820 = bitcast i8* %arrayidx491 to i32*
  store i32 %139, i32* %i820, align 4, !tbaa !23
  %i822 = bitcast i8* %arrayidx129 to i32*
  %140 = load i32, i32* %i822, align 4, !tbaa !23
  %i824 = bitcast i8* %arrayidx131 to i32*
  store i32 %140, i32* %i824, align 4, !tbaa !23
  %i827 = bitcast i8* %arrayidx501 to i32*
  %141 = load i32, i32* %i827, align 4, !tbaa !23
  %i830 = bitcast i8* %arrayidx503 to i32*
  store i32 %141, i32* %i830, align 4, !tbaa !23
  %i832 = bitcast i8* %arrayidx141 to i32*
  %142 = load i32, i32* %i832, align 4, !tbaa !23
  %i834 = bitcast i8* %arrayidx143 to i32*
  store i32 %142, i32* %i834, align 4, !tbaa !23
  %i837 = bitcast i8* %arrayidx513 to i32*
  %143 = load i32, i32* %i837, align 4, !tbaa !23
  %i840 = bitcast i8* %arrayidx515 to i32*
  store i32 %143, i32* %i840, align 4, !tbaa !23
  %tobool = icmp ne i16 %or7621382, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @zigzag_sub_8x8_frame(i16* %level, i8* readonly %p_src, i8* %p_dst) #2 {
entry:
  %0 = load i8, i8* %p_src, align 1, !tbaa !23
  %conv = zext i8 %0 to i16
  %1 = load i8, i8* %p_dst, align 1, !tbaa !23
  %conv2 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv2
  store i16 %sub, i16* %level, align 2, !tbaa !24
  %arrayidx9 = getelementptr inbounds i8, i8* %p_src, i32 1
  %2 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10 = zext i8 %2 to i16
  %arrayidx11 = getelementptr inbounds i8, i8* %p_dst, i32 1
  %3 = load i8, i8* %arrayidx11, align 1, !tbaa !23
  %conv12 = zext i8 %3 to i16
  %sub13 = sub nsw i16 %conv10, %conv12
  %arrayidx15 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %sub13, i16* %arrayidx15, align 2, !tbaa !24
  %or181320 = or i16 %sub13, %sub
  %arrayidx21 = getelementptr inbounds i8, i8* %p_src, i32 16
  %4 = load i8, i8* %arrayidx21, align 1, !tbaa !23
  %conv22 = zext i8 %4 to i16
  %arrayidx23 = getelementptr inbounds i8, i8* %p_dst, i32 32
  %5 = load i8, i8* %arrayidx23, align 1, !tbaa !23
  %conv24 = zext i8 %5 to i16
  %sub25 = sub nsw i16 %conv22, %conv24
  %arrayidx27 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %sub25, i16* %arrayidx27, align 2, !tbaa !24
  %or301321 = or i16 %or181320, %sub25
  %arrayidx33 = getelementptr inbounds i8, i8* %p_src, i32 32
  %6 = load i8, i8* %arrayidx33, align 1, !tbaa !23
  %conv34 = zext i8 %6 to i16
  %arrayidx35 = getelementptr inbounds i8, i8* %p_dst, i32 64
  %7 = load i8, i8* %arrayidx35, align 1, !tbaa !23
  %conv36 = zext i8 %7 to i16
  %sub37 = sub nsw i16 %conv34, %conv36
  %arrayidx39 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %sub37, i16* %arrayidx39, align 2, !tbaa !24
  %or421322 = or i16 %or301321, %sub37
  %arrayidx45 = getelementptr inbounds i8, i8* %p_src, i32 17
  %8 = load i8, i8* %arrayidx45, align 1, !tbaa !23
  %conv46 = zext i8 %8 to i16
  %arrayidx47 = getelementptr inbounds i8, i8* %p_dst, i32 33
  %9 = load i8, i8* %arrayidx47, align 1, !tbaa !23
  %conv48 = zext i8 %9 to i16
  %sub49 = sub nsw i16 %conv46, %conv48
  %arrayidx51 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %sub49, i16* %arrayidx51, align 2, !tbaa !24
  %or541323 = or i16 %or421322, %sub49
  %arrayidx57 = getelementptr inbounds i8, i8* %p_src, i32 2
  %10 = load i8, i8* %arrayidx57, align 1, !tbaa !23
  %conv58 = zext i8 %10 to i16
  %arrayidx59 = getelementptr inbounds i8, i8* %p_dst, i32 2
  %11 = load i8, i8* %arrayidx59, align 1, !tbaa !23
  %conv60 = zext i8 %11 to i16
  %sub61 = sub nsw i16 %conv58, %conv60
  %arrayidx63 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %sub61, i16* %arrayidx63, align 2, !tbaa !24
  %or661324 = or i16 %or541323, %sub61
  %arrayidx69 = getelementptr inbounds i8, i8* %p_src, i32 3
  %12 = load i8, i8* %arrayidx69, align 1, !tbaa !23
  %conv70 = zext i8 %12 to i16
  %arrayidx71 = getelementptr inbounds i8, i8* %p_dst, i32 3
  %13 = load i8, i8* %arrayidx71, align 1, !tbaa !23
  %conv72 = zext i8 %13 to i16
  %sub73 = sub nsw i16 %conv70, %conv72
  %arrayidx75 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %sub73, i16* %arrayidx75, align 2, !tbaa !24
  %or781325 = or i16 %or661324, %sub73
  %arrayidx81 = getelementptr inbounds i8, i8* %p_src, i32 18
  %14 = load i8, i8* %arrayidx81, align 1, !tbaa !23
  %conv82 = zext i8 %14 to i16
  %arrayidx83 = getelementptr inbounds i8, i8* %p_dst, i32 34
  %15 = load i8, i8* %arrayidx83, align 1, !tbaa !23
  %conv84 = zext i8 %15 to i16
  %sub85 = sub nsw i16 %conv82, %conv84
  %arrayidx87 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %sub85, i16* %arrayidx87, align 2, !tbaa !24
  %or901326 = or i16 %or781325, %sub85
  %arrayidx93 = getelementptr inbounds i8, i8* %p_src, i32 33
  %16 = load i8, i8* %arrayidx93, align 1, !tbaa !23
  %conv94 = zext i8 %16 to i16
  %arrayidx95 = getelementptr inbounds i8, i8* %p_dst, i32 65
  %17 = load i8, i8* %arrayidx95, align 1, !tbaa !23
  %conv96 = zext i8 %17 to i16
  %sub97 = sub nsw i16 %conv94, %conv96
  %arrayidx99 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %sub97, i16* %arrayidx99, align 2, !tbaa !24
  %or1021327 = or i16 %or901326, %sub97
  %arrayidx105 = getelementptr inbounds i8, i8* %p_src, i32 48
  %18 = load i8, i8* %arrayidx105, align 1, !tbaa !23
  %conv106 = zext i8 %18 to i16
  %arrayidx107 = getelementptr inbounds i8, i8* %p_dst, i32 96
  %19 = load i8, i8* %arrayidx107, align 1, !tbaa !23
  %conv108 = zext i8 %19 to i16
  %sub109 = sub nsw i16 %conv106, %conv108
  %arrayidx111 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %sub109, i16* %arrayidx111, align 2, !tbaa !24
  %or1141328 = or i16 %or1021327, %sub109
  %arrayidx117 = getelementptr inbounds i8, i8* %p_src, i32 64
  %20 = load i8, i8* %arrayidx117, align 1, !tbaa !23
  %conv118 = zext i8 %20 to i16
  %arrayidx119 = getelementptr inbounds i8, i8* %p_dst, i32 128
  %21 = load i8, i8* %arrayidx119, align 1, !tbaa !23
  %conv120 = zext i8 %21 to i16
  %sub121 = sub nsw i16 %conv118, %conv120
  %arrayidx123 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %sub121, i16* %arrayidx123, align 2, !tbaa !24
  %or1261329 = or i16 %or1141328, %sub121
  %arrayidx129 = getelementptr inbounds i8, i8* %p_src, i32 49
  %22 = load i8, i8* %arrayidx129, align 1, !tbaa !23
  %conv130 = zext i8 %22 to i16
  %arrayidx131 = getelementptr inbounds i8, i8* %p_dst, i32 97
  %23 = load i8, i8* %arrayidx131, align 1, !tbaa !23
  %conv132 = zext i8 %23 to i16
  %sub133 = sub nsw i16 %conv130, %conv132
  %arrayidx135 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %sub133, i16* %arrayidx135, align 2, !tbaa !24
  %or1381330 = or i16 %or1261329, %sub133
  %arrayidx141 = getelementptr inbounds i8, i8* %p_src, i32 34
  %24 = load i8, i8* %arrayidx141, align 1, !tbaa !23
  %conv142 = zext i8 %24 to i16
  %arrayidx143 = getelementptr inbounds i8, i8* %p_dst, i32 66
  %25 = load i8, i8* %arrayidx143, align 1, !tbaa !23
  %conv144 = zext i8 %25 to i16
  %sub145 = sub nsw i16 %conv142, %conv144
  %arrayidx147 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %sub145, i16* %arrayidx147, align 2, !tbaa !24
  %or1501331 = or i16 %or1381330, %sub145
  %arrayidx153 = getelementptr inbounds i8, i8* %p_src, i32 19
  %26 = load i8, i8* %arrayidx153, align 1, !tbaa !23
  %conv154 = zext i8 %26 to i16
  %arrayidx155 = getelementptr inbounds i8, i8* %p_dst, i32 35
  %27 = load i8, i8* %arrayidx155, align 1, !tbaa !23
  %conv156 = zext i8 %27 to i16
  %sub157 = sub nsw i16 %conv154, %conv156
  %arrayidx159 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %sub157, i16* %arrayidx159, align 2, !tbaa !24
  %or1621332 = or i16 %or1501331, %sub157
  %arrayidx165 = getelementptr inbounds i8, i8* %p_src, i32 4
  %28 = load i8, i8* %arrayidx165, align 1, !tbaa !23
  %conv166 = zext i8 %28 to i16
  %arrayidx167 = getelementptr inbounds i8, i8* %p_dst, i32 4
  %29 = load i8, i8* %arrayidx167, align 1, !tbaa !23
  %conv168 = zext i8 %29 to i16
  %sub169 = sub nsw i16 %conv166, %conv168
  %arrayidx171 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %sub169, i16* %arrayidx171, align 2, !tbaa !24
  %or1741333 = or i16 %or1621332, %sub169
  %arrayidx177 = getelementptr inbounds i8, i8* %p_src, i32 5
  %30 = load i8, i8* %arrayidx177, align 1, !tbaa !23
  %conv178 = zext i8 %30 to i16
  %arrayidx179 = getelementptr inbounds i8, i8* %p_dst, i32 5
  %31 = load i8, i8* %arrayidx179, align 1, !tbaa !23
  %conv180 = zext i8 %31 to i16
  %sub181 = sub nsw i16 %conv178, %conv180
  %arrayidx183 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %sub181, i16* %arrayidx183, align 2, !tbaa !24
  %or1861334 = or i16 %or1741333, %sub181
  %arrayidx189 = getelementptr inbounds i8, i8* %p_src, i32 20
  %32 = load i8, i8* %arrayidx189, align 1, !tbaa !23
  %conv190 = zext i8 %32 to i16
  %arrayidx191 = getelementptr inbounds i8, i8* %p_dst, i32 36
  %33 = load i8, i8* %arrayidx191, align 1, !tbaa !23
  %conv192 = zext i8 %33 to i16
  %sub193 = sub nsw i16 %conv190, %conv192
  %arrayidx195 = getelementptr inbounds i16, i16* %level, i32 16
  store i16 %sub193, i16* %arrayidx195, align 2, !tbaa !24
  %or1981335 = or i16 %or1861334, %sub193
  %arrayidx201 = getelementptr inbounds i8, i8* %p_src, i32 35
  %34 = load i8, i8* %arrayidx201, align 1, !tbaa !23
  %conv202 = zext i8 %34 to i16
  %arrayidx203 = getelementptr inbounds i8, i8* %p_dst, i32 67
  %35 = load i8, i8* %arrayidx203, align 1, !tbaa !23
  %conv204 = zext i8 %35 to i16
  %sub205 = sub nsw i16 %conv202, %conv204
  %arrayidx207 = getelementptr inbounds i16, i16* %level, i32 17
  store i16 %sub205, i16* %arrayidx207, align 2, !tbaa !24
  %or2101336 = or i16 %or1981335, %sub205
  %arrayidx213 = getelementptr inbounds i8, i8* %p_src, i32 50
  %36 = load i8, i8* %arrayidx213, align 1, !tbaa !23
  %conv214 = zext i8 %36 to i16
  %arrayidx215 = getelementptr inbounds i8, i8* %p_dst, i32 98
  %37 = load i8, i8* %arrayidx215, align 1, !tbaa !23
  %conv216 = zext i8 %37 to i16
  %sub217 = sub nsw i16 %conv214, %conv216
  %arrayidx219 = getelementptr inbounds i16, i16* %level, i32 18
  store i16 %sub217, i16* %arrayidx219, align 2, !tbaa !24
  %or2221337 = or i16 %or2101336, %sub217
  %arrayidx225 = getelementptr inbounds i8, i8* %p_src, i32 65
  %38 = load i8, i8* %arrayidx225, align 1, !tbaa !23
  %conv226 = zext i8 %38 to i16
  %arrayidx227 = getelementptr inbounds i8, i8* %p_dst, i32 129
  %39 = load i8, i8* %arrayidx227, align 1, !tbaa !23
  %conv228 = zext i8 %39 to i16
  %sub229 = sub nsw i16 %conv226, %conv228
  %arrayidx231 = getelementptr inbounds i16, i16* %level, i32 19
  store i16 %sub229, i16* %arrayidx231, align 2, !tbaa !24
  %or2341338 = or i16 %or2221337, %sub229
  %arrayidx237 = getelementptr inbounds i8, i8* %p_src, i32 80
  %40 = load i8, i8* %arrayidx237, align 1, !tbaa !23
  %conv238 = zext i8 %40 to i16
  %arrayidx239 = getelementptr inbounds i8, i8* %p_dst, i32 160
  %41 = load i8, i8* %arrayidx239, align 1, !tbaa !23
  %conv240 = zext i8 %41 to i16
  %sub241 = sub nsw i16 %conv238, %conv240
  %arrayidx243 = getelementptr inbounds i16, i16* %level, i32 20
  store i16 %sub241, i16* %arrayidx243, align 2, !tbaa !24
  %or2461339 = or i16 %or2341338, %sub241
  %arrayidx249 = getelementptr inbounds i8, i8* %p_src, i32 96
  %42 = load i8, i8* %arrayidx249, align 1, !tbaa !23
  %conv250 = zext i8 %42 to i16
  %arrayidx251 = getelementptr inbounds i8, i8* %p_dst, i32 192
  %43 = load i8, i8* %arrayidx251, align 1, !tbaa !23
  %conv252 = zext i8 %43 to i16
  %sub253 = sub nsw i16 %conv250, %conv252
  %arrayidx255 = getelementptr inbounds i16, i16* %level, i32 21
  store i16 %sub253, i16* %arrayidx255, align 2, !tbaa !24
  %or2581340 = or i16 %or2461339, %sub253
  %arrayidx261 = getelementptr inbounds i8, i8* %p_src, i32 81
  %44 = load i8, i8* %arrayidx261, align 1, !tbaa !23
  %conv262 = zext i8 %44 to i16
  %arrayidx263 = getelementptr inbounds i8, i8* %p_dst, i32 161
  %45 = load i8, i8* %arrayidx263, align 1, !tbaa !23
  %conv264 = zext i8 %45 to i16
  %sub265 = sub nsw i16 %conv262, %conv264
  %arrayidx267 = getelementptr inbounds i16, i16* %level, i32 22
  store i16 %sub265, i16* %arrayidx267, align 2, !tbaa !24
  %or2701341 = or i16 %or2581340, %sub265
  %arrayidx273 = getelementptr inbounds i8, i8* %p_src, i32 66
  %46 = load i8, i8* %arrayidx273, align 1, !tbaa !23
  %conv274 = zext i8 %46 to i16
  %arrayidx275 = getelementptr inbounds i8, i8* %p_dst, i32 130
  %47 = load i8, i8* %arrayidx275, align 1, !tbaa !23
  %conv276 = zext i8 %47 to i16
  %sub277 = sub nsw i16 %conv274, %conv276
  %arrayidx279 = getelementptr inbounds i16, i16* %level, i32 23
  store i16 %sub277, i16* %arrayidx279, align 2, !tbaa !24
  %or2821342 = or i16 %or2701341, %sub277
  %arrayidx285 = getelementptr inbounds i8, i8* %p_src, i32 51
  %48 = load i8, i8* %arrayidx285, align 1, !tbaa !23
  %conv286 = zext i8 %48 to i16
  %arrayidx287 = getelementptr inbounds i8, i8* %p_dst, i32 99
  %49 = load i8, i8* %arrayidx287, align 1, !tbaa !23
  %conv288 = zext i8 %49 to i16
  %sub289 = sub nsw i16 %conv286, %conv288
  %arrayidx291 = getelementptr inbounds i16, i16* %level, i32 24
  store i16 %sub289, i16* %arrayidx291, align 2, !tbaa !24
  %or2941343 = or i16 %or2821342, %sub289
  %arrayidx297 = getelementptr inbounds i8, i8* %p_src, i32 36
  %50 = load i8, i8* %arrayidx297, align 1, !tbaa !23
  %conv298 = zext i8 %50 to i16
  %arrayidx299 = getelementptr inbounds i8, i8* %p_dst, i32 68
  %51 = load i8, i8* %arrayidx299, align 1, !tbaa !23
  %conv300 = zext i8 %51 to i16
  %sub301 = sub nsw i16 %conv298, %conv300
  %arrayidx303 = getelementptr inbounds i16, i16* %level, i32 25
  store i16 %sub301, i16* %arrayidx303, align 2, !tbaa !24
  %or3061344 = or i16 %or2941343, %sub301
  %arrayidx309 = getelementptr inbounds i8, i8* %p_src, i32 21
  %52 = load i8, i8* %arrayidx309, align 1, !tbaa !23
  %conv310 = zext i8 %52 to i16
  %arrayidx311 = getelementptr inbounds i8, i8* %p_dst, i32 37
  %53 = load i8, i8* %arrayidx311, align 1, !tbaa !23
  %conv312 = zext i8 %53 to i16
  %sub313 = sub nsw i16 %conv310, %conv312
  %arrayidx315 = getelementptr inbounds i16, i16* %level, i32 26
  store i16 %sub313, i16* %arrayidx315, align 2, !tbaa !24
  %or3181345 = or i16 %or3061344, %sub313
  %arrayidx321 = getelementptr inbounds i8, i8* %p_src, i32 6
  %54 = load i8, i8* %arrayidx321, align 1, !tbaa !23
  %conv322 = zext i8 %54 to i16
  %arrayidx323 = getelementptr inbounds i8, i8* %p_dst, i32 6
  %55 = load i8, i8* %arrayidx323, align 1, !tbaa !23
  %conv324 = zext i8 %55 to i16
  %sub325 = sub nsw i16 %conv322, %conv324
  %arrayidx327 = getelementptr inbounds i16, i16* %level, i32 27
  store i16 %sub325, i16* %arrayidx327, align 2, !tbaa !24
  %or3301346 = or i16 %or3181345, %sub325
  %arrayidx333 = getelementptr inbounds i8, i8* %p_src, i32 7
  %56 = load i8, i8* %arrayidx333, align 1, !tbaa !23
  %conv334 = zext i8 %56 to i16
  %arrayidx335 = getelementptr inbounds i8, i8* %p_dst, i32 7
  %57 = load i8, i8* %arrayidx335, align 1, !tbaa !23
  %conv336 = zext i8 %57 to i16
  %sub337 = sub nsw i16 %conv334, %conv336
  %arrayidx339 = getelementptr inbounds i16, i16* %level, i32 28
  store i16 %sub337, i16* %arrayidx339, align 2, !tbaa !24
  %or3421347 = or i16 %or3301346, %sub337
  %arrayidx345 = getelementptr inbounds i8, i8* %p_src, i32 22
  %58 = load i8, i8* %arrayidx345, align 1, !tbaa !23
  %conv346 = zext i8 %58 to i16
  %arrayidx347 = getelementptr inbounds i8, i8* %p_dst, i32 38
  %59 = load i8, i8* %arrayidx347, align 1, !tbaa !23
  %conv348 = zext i8 %59 to i16
  %sub349 = sub nsw i16 %conv346, %conv348
  %arrayidx351 = getelementptr inbounds i16, i16* %level, i32 29
  store i16 %sub349, i16* %arrayidx351, align 2, !tbaa !24
  %or3541348 = or i16 %or3421347, %sub349
  %arrayidx357 = getelementptr inbounds i8, i8* %p_src, i32 37
  %60 = load i8, i8* %arrayidx357, align 1, !tbaa !23
  %conv358 = zext i8 %60 to i16
  %arrayidx359 = getelementptr inbounds i8, i8* %p_dst, i32 69
  %61 = load i8, i8* %arrayidx359, align 1, !tbaa !23
  %conv360 = zext i8 %61 to i16
  %sub361 = sub nsw i16 %conv358, %conv360
  %arrayidx363 = getelementptr inbounds i16, i16* %level, i32 30
  store i16 %sub361, i16* %arrayidx363, align 2, !tbaa !24
  %or3661349 = or i16 %or3541348, %sub361
  %arrayidx369 = getelementptr inbounds i8, i8* %p_src, i32 52
  %62 = load i8, i8* %arrayidx369, align 1, !tbaa !23
  %conv370 = zext i8 %62 to i16
  %arrayidx371 = getelementptr inbounds i8, i8* %p_dst, i32 100
  %63 = load i8, i8* %arrayidx371, align 1, !tbaa !23
  %conv372 = zext i8 %63 to i16
  %sub373 = sub nsw i16 %conv370, %conv372
  %arrayidx375 = getelementptr inbounds i16, i16* %level, i32 31
  store i16 %sub373, i16* %arrayidx375, align 2, !tbaa !24
  %or3781350 = or i16 %or3661349, %sub373
  %arrayidx381 = getelementptr inbounds i8, i8* %p_src, i32 67
  %64 = load i8, i8* %arrayidx381, align 1, !tbaa !23
  %conv382 = zext i8 %64 to i16
  %arrayidx383 = getelementptr inbounds i8, i8* %p_dst, i32 131
  %65 = load i8, i8* %arrayidx383, align 1, !tbaa !23
  %conv384 = zext i8 %65 to i16
  %sub385 = sub nsw i16 %conv382, %conv384
  %arrayidx387 = getelementptr inbounds i16, i16* %level, i32 32
  store i16 %sub385, i16* %arrayidx387, align 2, !tbaa !24
  %or3901351 = or i16 %or3781350, %sub385
  %arrayidx393 = getelementptr inbounds i8, i8* %p_src, i32 82
  %66 = load i8, i8* %arrayidx393, align 1, !tbaa !23
  %conv394 = zext i8 %66 to i16
  %arrayidx395 = getelementptr inbounds i8, i8* %p_dst, i32 162
  %67 = load i8, i8* %arrayidx395, align 1, !tbaa !23
  %conv396 = zext i8 %67 to i16
  %sub397 = sub nsw i16 %conv394, %conv396
  %arrayidx399 = getelementptr inbounds i16, i16* %level, i32 33
  store i16 %sub397, i16* %arrayidx399, align 2, !tbaa !24
  %or4021352 = or i16 %or3901351, %sub397
  %arrayidx405 = getelementptr inbounds i8, i8* %p_src, i32 97
  %68 = load i8, i8* %arrayidx405, align 1, !tbaa !23
  %conv406 = zext i8 %68 to i16
  %arrayidx407 = getelementptr inbounds i8, i8* %p_dst, i32 193
  %69 = load i8, i8* %arrayidx407, align 1, !tbaa !23
  %conv408 = zext i8 %69 to i16
  %sub409 = sub nsw i16 %conv406, %conv408
  %arrayidx411 = getelementptr inbounds i16, i16* %level, i32 34
  store i16 %sub409, i16* %arrayidx411, align 2, !tbaa !24
  %or4141353 = or i16 %or4021352, %sub409
  %arrayidx417 = getelementptr inbounds i8, i8* %p_src, i32 112
  %70 = load i8, i8* %arrayidx417, align 1, !tbaa !23
  %conv418 = zext i8 %70 to i16
  %arrayidx419 = getelementptr inbounds i8, i8* %p_dst, i32 224
  %71 = load i8, i8* %arrayidx419, align 1, !tbaa !23
  %conv420 = zext i8 %71 to i16
  %sub421 = sub nsw i16 %conv418, %conv420
  %arrayidx423 = getelementptr inbounds i16, i16* %level, i32 35
  store i16 %sub421, i16* %arrayidx423, align 2, !tbaa !24
  %or4261354 = or i16 %or4141353, %sub421
  %arrayidx429 = getelementptr inbounds i8, i8* %p_src, i32 113
  %72 = load i8, i8* %arrayidx429, align 1, !tbaa !23
  %conv430 = zext i8 %72 to i16
  %arrayidx431 = getelementptr inbounds i8, i8* %p_dst, i32 225
  %73 = load i8, i8* %arrayidx431, align 1, !tbaa !23
  %conv432 = zext i8 %73 to i16
  %sub433 = sub nsw i16 %conv430, %conv432
  %arrayidx435 = getelementptr inbounds i16, i16* %level, i32 36
  store i16 %sub433, i16* %arrayidx435, align 2, !tbaa !24
  %or4381355 = or i16 %or4261354, %sub433
  %arrayidx441 = getelementptr inbounds i8, i8* %p_src, i32 98
  %74 = load i8, i8* %arrayidx441, align 1, !tbaa !23
  %conv442 = zext i8 %74 to i16
  %arrayidx443 = getelementptr inbounds i8, i8* %p_dst, i32 194
  %75 = load i8, i8* %arrayidx443, align 1, !tbaa !23
  %conv444 = zext i8 %75 to i16
  %sub445 = sub nsw i16 %conv442, %conv444
  %arrayidx447 = getelementptr inbounds i16, i16* %level, i32 37
  store i16 %sub445, i16* %arrayidx447, align 2, !tbaa !24
  %or4501356 = or i16 %or4381355, %sub445
  %arrayidx453 = getelementptr inbounds i8, i8* %p_src, i32 83
  %76 = load i8, i8* %arrayidx453, align 1, !tbaa !23
  %conv454 = zext i8 %76 to i16
  %arrayidx455 = getelementptr inbounds i8, i8* %p_dst, i32 163
  %77 = load i8, i8* %arrayidx455, align 1, !tbaa !23
  %conv456 = zext i8 %77 to i16
  %sub457 = sub nsw i16 %conv454, %conv456
  %arrayidx459 = getelementptr inbounds i16, i16* %level, i32 38
  store i16 %sub457, i16* %arrayidx459, align 2, !tbaa !24
  %or4621357 = or i16 %or4501356, %sub457
  %arrayidx465 = getelementptr inbounds i8, i8* %p_src, i32 68
  %78 = load i8, i8* %arrayidx465, align 1, !tbaa !23
  %conv466 = zext i8 %78 to i16
  %arrayidx467 = getelementptr inbounds i8, i8* %p_dst, i32 132
  %79 = load i8, i8* %arrayidx467, align 1, !tbaa !23
  %conv468 = zext i8 %79 to i16
  %sub469 = sub nsw i16 %conv466, %conv468
  %arrayidx471 = getelementptr inbounds i16, i16* %level, i32 39
  store i16 %sub469, i16* %arrayidx471, align 2, !tbaa !24
  %or4741358 = or i16 %or4621357, %sub469
  %arrayidx477 = getelementptr inbounds i8, i8* %p_src, i32 53
  %80 = load i8, i8* %arrayidx477, align 1, !tbaa !23
  %conv478 = zext i8 %80 to i16
  %arrayidx479 = getelementptr inbounds i8, i8* %p_dst, i32 101
  %81 = load i8, i8* %arrayidx479, align 1, !tbaa !23
  %conv480 = zext i8 %81 to i16
  %sub481 = sub nsw i16 %conv478, %conv480
  %arrayidx483 = getelementptr inbounds i16, i16* %level, i32 40
  store i16 %sub481, i16* %arrayidx483, align 2, !tbaa !24
  %or4861359 = or i16 %or4741358, %sub481
  %arrayidx489 = getelementptr inbounds i8, i8* %p_src, i32 38
  %82 = load i8, i8* %arrayidx489, align 1, !tbaa !23
  %conv490 = zext i8 %82 to i16
  %arrayidx491 = getelementptr inbounds i8, i8* %p_dst, i32 70
  %83 = load i8, i8* %arrayidx491, align 1, !tbaa !23
  %conv492 = zext i8 %83 to i16
  %sub493 = sub nsw i16 %conv490, %conv492
  %arrayidx495 = getelementptr inbounds i16, i16* %level, i32 41
  store i16 %sub493, i16* %arrayidx495, align 2, !tbaa !24
  %or4981360 = or i16 %or4861359, %sub493
  %arrayidx501 = getelementptr inbounds i8, i8* %p_src, i32 23
  %84 = load i8, i8* %arrayidx501, align 1, !tbaa !23
  %conv502 = zext i8 %84 to i16
  %arrayidx503 = getelementptr inbounds i8, i8* %p_dst, i32 39
  %85 = load i8, i8* %arrayidx503, align 1, !tbaa !23
  %conv504 = zext i8 %85 to i16
  %sub505 = sub nsw i16 %conv502, %conv504
  %arrayidx507 = getelementptr inbounds i16, i16* %level, i32 42
  store i16 %sub505, i16* %arrayidx507, align 2, !tbaa !24
  %or5101361 = or i16 %or4981360, %sub505
  %arrayidx513 = getelementptr inbounds i8, i8* %p_src, i32 39
  %86 = load i8, i8* %arrayidx513, align 1, !tbaa !23
  %conv514 = zext i8 %86 to i16
  %arrayidx515 = getelementptr inbounds i8, i8* %p_dst, i32 71
  %87 = load i8, i8* %arrayidx515, align 1, !tbaa !23
  %conv516 = zext i8 %87 to i16
  %sub517 = sub nsw i16 %conv514, %conv516
  %arrayidx519 = getelementptr inbounds i16, i16* %level, i32 43
  store i16 %sub517, i16* %arrayidx519, align 2, !tbaa !24
  %or5221362 = or i16 %or5101361, %sub517
  %arrayidx525 = getelementptr inbounds i8, i8* %p_src, i32 54
  %88 = load i8, i8* %arrayidx525, align 1, !tbaa !23
  %conv526 = zext i8 %88 to i16
  %arrayidx527 = getelementptr inbounds i8, i8* %p_dst, i32 102
  %89 = load i8, i8* %arrayidx527, align 1, !tbaa !23
  %conv528 = zext i8 %89 to i16
  %sub529 = sub nsw i16 %conv526, %conv528
  %arrayidx531 = getelementptr inbounds i16, i16* %level, i32 44
  store i16 %sub529, i16* %arrayidx531, align 2, !tbaa !24
  %or5341363 = or i16 %or5221362, %sub529
  %arrayidx537 = getelementptr inbounds i8, i8* %p_src, i32 69
  %90 = load i8, i8* %arrayidx537, align 1, !tbaa !23
  %conv538 = zext i8 %90 to i16
  %arrayidx539 = getelementptr inbounds i8, i8* %p_dst, i32 133
  %91 = load i8, i8* %arrayidx539, align 1, !tbaa !23
  %conv540 = zext i8 %91 to i16
  %sub541 = sub nsw i16 %conv538, %conv540
  %arrayidx543 = getelementptr inbounds i16, i16* %level, i32 45
  store i16 %sub541, i16* %arrayidx543, align 2, !tbaa !24
  %or5461364 = or i16 %or5341363, %sub541
  %arrayidx549 = getelementptr inbounds i8, i8* %p_src, i32 84
  %92 = load i8, i8* %arrayidx549, align 1, !tbaa !23
  %conv550 = zext i8 %92 to i16
  %arrayidx551 = getelementptr inbounds i8, i8* %p_dst, i32 164
  %93 = load i8, i8* %arrayidx551, align 1, !tbaa !23
  %conv552 = zext i8 %93 to i16
  %sub553 = sub nsw i16 %conv550, %conv552
  %arrayidx555 = getelementptr inbounds i16, i16* %level, i32 46
  store i16 %sub553, i16* %arrayidx555, align 2, !tbaa !24
  %or5581365 = or i16 %or5461364, %sub553
  %arrayidx561 = getelementptr inbounds i8, i8* %p_src, i32 99
  %94 = load i8, i8* %arrayidx561, align 1, !tbaa !23
  %conv562 = zext i8 %94 to i16
  %arrayidx563 = getelementptr inbounds i8, i8* %p_dst, i32 195
  %95 = load i8, i8* %arrayidx563, align 1, !tbaa !23
  %conv564 = zext i8 %95 to i16
  %sub565 = sub nsw i16 %conv562, %conv564
  %arrayidx567 = getelementptr inbounds i16, i16* %level, i32 47
  store i16 %sub565, i16* %arrayidx567, align 2, !tbaa !24
  %or5701366 = or i16 %or5581365, %sub565
  %arrayidx573 = getelementptr inbounds i8, i8* %p_src, i32 114
  %96 = load i8, i8* %arrayidx573, align 1, !tbaa !23
  %conv574 = zext i8 %96 to i16
  %arrayidx575 = getelementptr inbounds i8, i8* %p_dst, i32 226
  %97 = load i8, i8* %arrayidx575, align 1, !tbaa !23
  %conv576 = zext i8 %97 to i16
  %sub577 = sub nsw i16 %conv574, %conv576
  %arrayidx579 = getelementptr inbounds i16, i16* %level, i32 48
  store i16 %sub577, i16* %arrayidx579, align 2, !tbaa !24
  %or5821367 = or i16 %or5701366, %sub577
  %arrayidx585 = getelementptr inbounds i8, i8* %p_src, i32 115
  %98 = load i8, i8* %arrayidx585, align 1, !tbaa !23
  %conv586 = zext i8 %98 to i16
  %arrayidx587 = getelementptr inbounds i8, i8* %p_dst, i32 227
  %99 = load i8, i8* %arrayidx587, align 1, !tbaa !23
  %conv588 = zext i8 %99 to i16
  %sub589 = sub nsw i16 %conv586, %conv588
  %arrayidx591 = getelementptr inbounds i16, i16* %level, i32 49
  store i16 %sub589, i16* %arrayidx591, align 2, !tbaa !24
  %or5941368 = or i16 %or5821367, %sub589
  %arrayidx597 = getelementptr inbounds i8, i8* %p_src, i32 100
  %100 = load i8, i8* %arrayidx597, align 1, !tbaa !23
  %conv598 = zext i8 %100 to i16
  %arrayidx599 = getelementptr inbounds i8, i8* %p_dst, i32 196
  %101 = load i8, i8* %arrayidx599, align 1, !tbaa !23
  %conv600 = zext i8 %101 to i16
  %sub601 = sub nsw i16 %conv598, %conv600
  %arrayidx603 = getelementptr inbounds i16, i16* %level, i32 50
  store i16 %sub601, i16* %arrayidx603, align 2, !tbaa !24
  %or6061369 = or i16 %or5941368, %sub601
  %arrayidx609 = getelementptr inbounds i8, i8* %p_src, i32 85
  %102 = load i8, i8* %arrayidx609, align 1, !tbaa !23
  %conv610 = zext i8 %102 to i16
  %arrayidx611 = getelementptr inbounds i8, i8* %p_dst, i32 165
  %103 = load i8, i8* %arrayidx611, align 1, !tbaa !23
  %conv612 = zext i8 %103 to i16
  %sub613 = sub nsw i16 %conv610, %conv612
  %arrayidx615 = getelementptr inbounds i16, i16* %level, i32 51
  store i16 %sub613, i16* %arrayidx615, align 2, !tbaa !24
  %or6181370 = or i16 %or6061369, %sub613
  %arrayidx621 = getelementptr inbounds i8, i8* %p_src, i32 70
  %104 = load i8, i8* %arrayidx621, align 1, !tbaa !23
  %conv622 = zext i8 %104 to i16
  %arrayidx623 = getelementptr inbounds i8, i8* %p_dst, i32 134
  %105 = load i8, i8* %arrayidx623, align 1, !tbaa !23
  %conv624 = zext i8 %105 to i16
  %sub625 = sub nsw i16 %conv622, %conv624
  %arrayidx627 = getelementptr inbounds i16, i16* %level, i32 52
  store i16 %sub625, i16* %arrayidx627, align 2, !tbaa !24
  %or6301371 = or i16 %or6181370, %sub625
  %arrayidx633 = getelementptr inbounds i8, i8* %p_src, i32 55
  %106 = load i8, i8* %arrayidx633, align 1, !tbaa !23
  %conv634 = zext i8 %106 to i16
  %arrayidx635 = getelementptr inbounds i8, i8* %p_dst, i32 103
  %107 = load i8, i8* %arrayidx635, align 1, !tbaa !23
  %conv636 = zext i8 %107 to i16
  %sub637 = sub nsw i16 %conv634, %conv636
  %arrayidx639 = getelementptr inbounds i16, i16* %level, i32 53
  store i16 %sub637, i16* %arrayidx639, align 2, !tbaa !24
  %or6421372 = or i16 %or6301371, %sub637
  %arrayidx645 = getelementptr inbounds i8, i8* %p_src, i32 71
  %108 = load i8, i8* %arrayidx645, align 1, !tbaa !23
  %conv646 = zext i8 %108 to i16
  %arrayidx647 = getelementptr inbounds i8, i8* %p_dst, i32 135
  %109 = load i8, i8* %arrayidx647, align 1, !tbaa !23
  %conv648 = zext i8 %109 to i16
  %sub649 = sub nsw i16 %conv646, %conv648
  %arrayidx651 = getelementptr inbounds i16, i16* %level, i32 54
  store i16 %sub649, i16* %arrayidx651, align 2, !tbaa !24
  %or6541373 = or i16 %or6421372, %sub649
  %arrayidx657 = getelementptr inbounds i8, i8* %p_src, i32 86
  %110 = load i8, i8* %arrayidx657, align 1, !tbaa !23
  %conv658 = zext i8 %110 to i16
  %arrayidx659 = getelementptr inbounds i8, i8* %p_dst, i32 166
  %111 = load i8, i8* %arrayidx659, align 1, !tbaa !23
  %conv660 = zext i8 %111 to i16
  %sub661 = sub nsw i16 %conv658, %conv660
  %arrayidx663 = getelementptr inbounds i16, i16* %level, i32 55
  store i16 %sub661, i16* %arrayidx663, align 2, !tbaa !24
  %or6661374 = or i16 %or6541373, %sub661
  %arrayidx669 = getelementptr inbounds i8, i8* %p_src, i32 101
  %112 = load i8, i8* %arrayidx669, align 1, !tbaa !23
  %conv670 = zext i8 %112 to i16
  %arrayidx671 = getelementptr inbounds i8, i8* %p_dst, i32 197
  %113 = load i8, i8* %arrayidx671, align 1, !tbaa !23
  %conv672 = zext i8 %113 to i16
  %sub673 = sub nsw i16 %conv670, %conv672
  %arrayidx675 = getelementptr inbounds i16, i16* %level, i32 56
  store i16 %sub673, i16* %arrayidx675, align 2, !tbaa !24
  %or6781375 = or i16 %or6661374, %sub673
  %arrayidx681 = getelementptr inbounds i8, i8* %p_src, i32 116
  %114 = load i8, i8* %arrayidx681, align 1, !tbaa !23
  %conv682 = zext i8 %114 to i16
  %arrayidx683 = getelementptr inbounds i8, i8* %p_dst, i32 228
  %115 = load i8, i8* %arrayidx683, align 1, !tbaa !23
  %conv684 = zext i8 %115 to i16
  %sub685 = sub nsw i16 %conv682, %conv684
  %arrayidx687 = getelementptr inbounds i16, i16* %level, i32 57
  store i16 %sub685, i16* %arrayidx687, align 2, !tbaa !24
  %or6901376 = or i16 %or6781375, %sub685
  %arrayidx693 = getelementptr inbounds i8, i8* %p_src, i32 117
  %116 = load i8, i8* %arrayidx693, align 1, !tbaa !23
  %conv694 = zext i8 %116 to i16
  %arrayidx695 = getelementptr inbounds i8, i8* %p_dst, i32 229
  %117 = load i8, i8* %arrayidx695, align 1, !tbaa !23
  %conv696 = zext i8 %117 to i16
  %sub697 = sub nsw i16 %conv694, %conv696
  %arrayidx699 = getelementptr inbounds i16, i16* %level, i32 58
  store i16 %sub697, i16* %arrayidx699, align 2, !tbaa !24
  %or7021377 = or i16 %or6901376, %sub697
  %arrayidx705 = getelementptr inbounds i8, i8* %p_src, i32 102
  %118 = load i8, i8* %arrayidx705, align 1, !tbaa !23
  %conv706 = zext i8 %118 to i16
  %arrayidx707 = getelementptr inbounds i8, i8* %p_dst, i32 198
  %119 = load i8, i8* %arrayidx707, align 1, !tbaa !23
  %conv708 = zext i8 %119 to i16
  %sub709 = sub nsw i16 %conv706, %conv708
  %arrayidx711 = getelementptr inbounds i16, i16* %level, i32 59
  store i16 %sub709, i16* %arrayidx711, align 2, !tbaa !24
  %or7141378 = or i16 %or7021377, %sub709
  %arrayidx717 = getelementptr inbounds i8, i8* %p_src, i32 87
  %120 = load i8, i8* %arrayidx717, align 1, !tbaa !23
  %conv718 = zext i8 %120 to i16
  %arrayidx719 = getelementptr inbounds i8, i8* %p_dst, i32 167
  %121 = load i8, i8* %arrayidx719, align 1, !tbaa !23
  %conv720 = zext i8 %121 to i16
  %sub721 = sub nsw i16 %conv718, %conv720
  %arrayidx723 = getelementptr inbounds i16, i16* %level, i32 60
  store i16 %sub721, i16* %arrayidx723, align 2, !tbaa !24
  %or7261379 = or i16 %or7141378, %sub721
  %arrayidx729 = getelementptr inbounds i8, i8* %p_src, i32 103
  %122 = load i8, i8* %arrayidx729, align 1, !tbaa !23
  %conv730 = zext i8 %122 to i16
  %arrayidx731 = getelementptr inbounds i8, i8* %p_dst, i32 199
  %123 = load i8, i8* %arrayidx731, align 1, !tbaa !23
  %conv732 = zext i8 %123 to i16
  %sub733 = sub nsw i16 %conv730, %conv732
  %arrayidx735 = getelementptr inbounds i16, i16* %level, i32 61
  store i16 %sub733, i16* %arrayidx735, align 2, !tbaa !24
  %or7381380 = or i16 %or7261379, %sub733
  %arrayidx741 = getelementptr inbounds i8, i8* %p_src, i32 118
  %124 = load i8, i8* %arrayidx741, align 1, !tbaa !23
  %conv742 = zext i8 %124 to i16
  %arrayidx743 = getelementptr inbounds i8, i8* %p_dst, i32 230
  %125 = load i8, i8* %arrayidx743, align 1, !tbaa !23
  %conv744 = zext i8 %125 to i16
  %sub745 = sub nsw i16 %conv742, %conv744
  %arrayidx747 = getelementptr inbounds i16, i16* %level, i32 62
  store i16 %sub745, i16* %arrayidx747, align 2, !tbaa !24
  %or7501381 = or i16 %or7381380, %sub745
  %arrayidx753 = getelementptr inbounds i8, i8* %p_src, i32 119
  %126 = load i8, i8* %arrayidx753, align 1, !tbaa !23
  %conv754 = zext i8 %126 to i16
  %arrayidx755 = getelementptr inbounds i8, i8* %p_dst, i32 231
  %127 = load i8, i8* %arrayidx755, align 1, !tbaa !23
  %conv756 = zext i8 %127 to i16
  %sub757 = sub nsw i16 %conv754, %conv756
  %arrayidx759 = getelementptr inbounds i16, i16* %level, i32 63
  store i16 %sub757, i16* %arrayidx759, align 2, !tbaa !24
  %or7621382 = or i16 %or7501381, %sub757
  %i = bitcast i8* %p_src to i32*
  %128 = load i32, i32* %i, align 4, !tbaa !23
  %i764 = bitcast i8* %p_dst to i32*
  store i32 %128, i32* %i764, align 4, !tbaa !23
  %i767 = bitcast i8* %arrayidx165 to i32*
  %129 = load i32, i32* %i767, align 4, !tbaa !23
  %i770 = bitcast i8* %arrayidx167 to i32*
  store i32 %129, i32* %i770, align 4, !tbaa !23
  %i772 = bitcast i8* %arrayidx21 to i32*
  %130 = load i32, i32* %i772, align 4, !tbaa !23
  %i774 = bitcast i8* %arrayidx23 to i32*
  store i32 %130, i32* %i774, align 4, !tbaa !23
  %i777 = bitcast i8* %arrayidx189 to i32*
  %131 = load i32, i32* %i777, align 4, !tbaa !23
  %i780 = bitcast i8* %arrayidx191 to i32*
  store i32 %131, i32* %i780, align 4, !tbaa !23
  %i782 = bitcast i8* %arrayidx33 to i32*
  %132 = load i32, i32* %i782, align 4, !tbaa !23
  %i784 = bitcast i8* %arrayidx35 to i32*
  store i32 %132, i32* %i784, align 4, !tbaa !23
  %i787 = bitcast i8* %arrayidx297 to i32*
  %133 = load i32, i32* %i787, align 4, !tbaa !23
  %i790 = bitcast i8* %arrayidx299 to i32*
  store i32 %133, i32* %i790, align 4, !tbaa !23
  %i792 = bitcast i8* %arrayidx105 to i32*
  %134 = load i32, i32* %i792, align 4, !tbaa !23
  %i794 = bitcast i8* %arrayidx107 to i32*
  store i32 %134, i32* %i794, align 4, !tbaa !23
  %i797 = bitcast i8* %arrayidx369 to i32*
  %135 = load i32, i32* %i797, align 4, !tbaa !23
  %i800 = bitcast i8* %arrayidx371 to i32*
  store i32 %135, i32* %i800, align 4, !tbaa !23
  %i802 = bitcast i8* %arrayidx117 to i32*
  %136 = load i32, i32* %i802, align 4, !tbaa !23
  %i804 = bitcast i8* %arrayidx119 to i32*
  store i32 %136, i32* %i804, align 4, !tbaa !23
  %i807 = bitcast i8* %arrayidx465 to i32*
  %137 = load i32, i32* %i807, align 4, !tbaa !23
  %i810 = bitcast i8* %arrayidx467 to i32*
  store i32 %137, i32* %i810, align 4, !tbaa !23
  %i812 = bitcast i8* %arrayidx237 to i32*
  %138 = load i32, i32* %i812, align 4, !tbaa !23
  %i814 = bitcast i8* %arrayidx239 to i32*
  store i32 %138, i32* %i814, align 4, !tbaa !23
  %i817 = bitcast i8* %arrayidx549 to i32*
  %139 = load i32, i32* %i817, align 4, !tbaa !23
  %i820 = bitcast i8* %arrayidx551 to i32*
  store i32 %139, i32* %i820, align 4, !tbaa !23
  %i822 = bitcast i8* %arrayidx249 to i32*
  %140 = load i32, i32* %i822, align 4, !tbaa !23
  %i824 = bitcast i8* %arrayidx251 to i32*
  store i32 %140, i32* %i824, align 4, !tbaa !23
  %i827 = bitcast i8* %arrayidx597 to i32*
  %141 = load i32, i32* %i827, align 4, !tbaa !23
  %i830 = bitcast i8* %arrayidx599 to i32*
  store i32 %141, i32* %i830, align 4, !tbaa !23
  %i832 = bitcast i8* %arrayidx417 to i32*
  %142 = load i32, i32* %i832, align 4, !tbaa !23
  %i834 = bitcast i8* %arrayidx419 to i32*
  store i32 %142, i32* %i834, align 4, !tbaa !23
  %i837 = bitcast i8* %arrayidx681 to i32*
  %143 = load i32, i32* %i837, align 4, !tbaa !23
  %i840 = bitcast i8* %arrayidx683 to i32*
  store i32 %143, i32* %i840, align 4, !tbaa !23
  %tobool = icmp ne i16 %or7621382, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @zigzag_sub_4x4_field(i16* nocapture %level, i8* nocapture readonly %p_src, i8* nocapture %p_dst) #2 {
entry:
  %0 = load i8, i8* %p_src, align 1, !tbaa !23
  %conv = zext i8 %0 to i16
  %1 = load i8, i8* %p_dst, align 1, !tbaa !23
  %conv2 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv2
  store i16 %sub, i16* %level, align 2, !tbaa !24
  %arrayidx9 = getelementptr inbounds i8, i8* %p_src, i32 16
  %2 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10 = zext i8 %2 to i16
  %arrayidx11 = getelementptr inbounds i8, i8* %p_dst, i32 32
  %3 = load i8, i8* %arrayidx11, align 1, !tbaa !23
  %conv12 = zext i8 %3 to i16
  %sub13 = sub nsw i16 %conv10, %conv12
  %arrayidx15 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %sub13, i16* %arrayidx15, align 2, !tbaa !24
  %or18320 = or i16 %sub13, %sub
  %arrayidx21 = getelementptr inbounds i8, i8* %p_src, i32 1
  %4 = load i8, i8* %arrayidx21, align 1, !tbaa !23
  %conv22 = zext i8 %4 to i16
  %arrayidx23 = getelementptr inbounds i8, i8* %p_dst, i32 1
  %5 = load i8, i8* %arrayidx23, align 1, !tbaa !23
  %conv24 = zext i8 %5 to i16
  %sub25 = sub nsw i16 %conv22, %conv24
  %arrayidx27 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %sub25, i16* %arrayidx27, align 2, !tbaa !24
  %or30321 = or i16 %or18320, %sub25
  %arrayidx33 = getelementptr inbounds i8, i8* %p_src, i32 32
  %6 = load i8, i8* %arrayidx33, align 1, !tbaa !23
  %conv34 = zext i8 %6 to i16
  %arrayidx35 = getelementptr inbounds i8, i8* %p_dst, i32 64
  %7 = load i8, i8* %arrayidx35, align 1, !tbaa !23
  %conv36 = zext i8 %7 to i16
  %sub37 = sub nsw i16 %conv34, %conv36
  %arrayidx39 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %sub37, i16* %arrayidx39, align 2, !tbaa !24
  %or42322 = or i16 %or30321, %sub37
  %arrayidx45 = getelementptr inbounds i8, i8* %p_src, i32 48
  %8 = load i8, i8* %arrayidx45, align 1, !tbaa !23
  %conv46 = zext i8 %8 to i16
  %arrayidx47 = getelementptr inbounds i8, i8* %p_dst, i32 96
  %9 = load i8, i8* %arrayidx47, align 1, !tbaa !23
  %conv48 = zext i8 %9 to i16
  %sub49 = sub nsw i16 %conv46, %conv48
  %arrayidx51 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %sub49, i16* %arrayidx51, align 2, !tbaa !24
  %or54323 = or i16 %or42322, %sub49
  %arrayidx57 = getelementptr inbounds i8, i8* %p_src, i32 17
  %10 = load i8, i8* %arrayidx57, align 1, !tbaa !23
  %conv58 = zext i8 %10 to i16
  %arrayidx59 = getelementptr inbounds i8, i8* %p_dst, i32 33
  %11 = load i8, i8* %arrayidx59, align 1, !tbaa !23
  %conv60 = zext i8 %11 to i16
  %sub61 = sub nsw i16 %conv58, %conv60
  %arrayidx63 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %sub61, i16* %arrayidx63, align 2, !tbaa !24
  %or66324 = or i16 %or54323, %sub61
  %arrayidx69 = getelementptr inbounds i8, i8* %p_src, i32 33
  %12 = load i8, i8* %arrayidx69, align 1, !tbaa !23
  %conv70 = zext i8 %12 to i16
  %arrayidx71 = getelementptr inbounds i8, i8* %p_dst, i32 65
  %13 = load i8, i8* %arrayidx71, align 1, !tbaa !23
  %conv72 = zext i8 %13 to i16
  %sub73 = sub nsw i16 %conv70, %conv72
  %arrayidx75 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %sub73, i16* %arrayidx75, align 2, !tbaa !24
  %or78325 = or i16 %or66324, %sub73
  %arrayidx81 = getelementptr inbounds i8, i8* %p_src, i32 49
  %14 = load i8, i8* %arrayidx81, align 1, !tbaa !23
  %conv82 = zext i8 %14 to i16
  %arrayidx83 = getelementptr inbounds i8, i8* %p_dst, i32 97
  %15 = load i8, i8* %arrayidx83, align 1, !tbaa !23
  %conv84 = zext i8 %15 to i16
  %sub85 = sub nsw i16 %conv82, %conv84
  %arrayidx87 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %sub85, i16* %arrayidx87, align 2, !tbaa !24
  %or90326 = or i16 %or78325, %sub85
  %arrayidx93 = getelementptr inbounds i8, i8* %p_src, i32 2
  %16 = load i8, i8* %arrayidx93, align 1, !tbaa !23
  %conv94 = zext i8 %16 to i16
  %arrayidx95 = getelementptr inbounds i8, i8* %p_dst, i32 2
  %17 = load i8, i8* %arrayidx95, align 1, !tbaa !23
  %conv96 = zext i8 %17 to i16
  %sub97 = sub nsw i16 %conv94, %conv96
  %arrayidx99 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %sub97, i16* %arrayidx99, align 2, !tbaa !24
  %or102327 = or i16 %or90326, %sub97
  %arrayidx105 = getelementptr inbounds i8, i8* %p_src, i32 18
  %18 = load i8, i8* %arrayidx105, align 1, !tbaa !23
  %conv106 = zext i8 %18 to i16
  %arrayidx107 = getelementptr inbounds i8, i8* %p_dst, i32 34
  %19 = load i8, i8* %arrayidx107, align 1, !tbaa !23
  %conv108 = zext i8 %19 to i16
  %sub109 = sub nsw i16 %conv106, %conv108
  %arrayidx111 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %sub109, i16* %arrayidx111, align 2, !tbaa !24
  %or114328 = or i16 %or102327, %sub109
  %arrayidx117 = getelementptr inbounds i8, i8* %p_src, i32 34
  %20 = load i8, i8* %arrayidx117, align 1, !tbaa !23
  %conv118 = zext i8 %20 to i16
  %arrayidx119 = getelementptr inbounds i8, i8* %p_dst, i32 66
  %21 = load i8, i8* %arrayidx119, align 1, !tbaa !23
  %conv120 = zext i8 %21 to i16
  %sub121 = sub nsw i16 %conv118, %conv120
  %arrayidx123 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %sub121, i16* %arrayidx123, align 2, !tbaa !24
  %or126329 = or i16 %or114328, %sub121
  %arrayidx129 = getelementptr inbounds i8, i8* %p_src, i32 50
  %22 = load i8, i8* %arrayidx129, align 1, !tbaa !23
  %conv130 = zext i8 %22 to i16
  %arrayidx131 = getelementptr inbounds i8, i8* %p_dst, i32 98
  %23 = load i8, i8* %arrayidx131, align 1, !tbaa !23
  %conv132 = zext i8 %23 to i16
  %sub133 = sub nsw i16 %conv130, %conv132
  %arrayidx135 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %sub133, i16* %arrayidx135, align 2, !tbaa !24
  %or138330 = or i16 %or126329, %sub133
  %arrayidx141 = getelementptr inbounds i8, i8* %p_src, i32 3
  %24 = load i8, i8* %arrayidx141, align 1, !tbaa !23
  %conv142 = zext i8 %24 to i16
  %arrayidx143 = getelementptr inbounds i8, i8* %p_dst, i32 3
  %25 = load i8, i8* %arrayidx143, align 1, !tbaa !23
  %conv144 = zext i8 %25 to i16
  %sub145 = sub nsw i16 %conv142, %conv144
  %arrayidx147 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %sub145, i16* %arrayidx147, align 2, !tbaa !24
  %or150331 = or i16 %or138330, %sub145
  %arrayidx153 = getelementptr inbounds i8, i8* %p_src, i32 19
  %26 = load i8, i8* %arrayidx153, align 1, !tbaa !23
  %conv154 = zext i8 %26 to i16
  %arrayidx155 = getelementptr inbounds i8, i8* %p_dst, i32 35
  %27 = load i8, i8* %arrayidx155, align 1, !tbaa !23
  %conv156 = zext i8 %27 to i16
  %sub157 = sub nsw i16 %conv154, %conv156
  %arrayidx159 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %sub157, i16* %arrayidx159, align 2, !tbaa !24
  %or162332 = or i16 %or150331, %sub157
  %arrayidx165 = getelementptr inbounds i8, i8* %p_src, i32 35
  %28 = load i8, i8* %arrayidx165, align 1, !tbaa !23
  %conv166 = zext i8 %28 to i16
  %arrayidx167 = getelementptr inbounds i8, i8* %p_dst, i32 67
  %29 = load i8, i8* %arrayidx167, align 1, !tbaa !23
  %conv168 = zext i8 %29 to i16
  %sub169 = sub nsw i16 %conv166, %conv168
  %arrayidx171 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %sub169, i16* %arrayidx171, align 2, !tbaa !24
  %or174333 = or i16 %or162332, %sub169
  %arrayidx177 = getelementptr inbounds i8, i8* %p_src, i32 51
  %30 = load i8, i8* %arrayidx177, align 1, !tbaa !23
  %conv178 = zext i8 %30 to i16
  %arrayidx179 = getelementptr inbounds i8, i8* %p_dst, i32 99
  %31 = load i8, i8* %arrayidx179, align 1, !tbaa !23
  %conv180 = zext i8 %31 to i16
  %sub181 = sub nsw i16 %conv178, %conv180
  %arrayidx183 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %sub181, i16* %arrayidx183, align 2, !tbaa !24
  %or186334 = or i16 %or174333, %sub181
  %i = bitcast i8* %p_src to i32*
  %32 = load i32, i32* %i, align 4, !tbaa !23
  %i188 = bitcast i8* %p_dst to i32*
  store i32 %32, i32* %i188, align 4, !tbaa !23
  %i190 = bitcast i8* %arrayidx9 to i32*
  %33 = load i32, i32* %i190, align 4, !tbaa !23
  %i192 = bitcast i8* %arrayidx11 to i32*
  store i32 %33, i32* %i192, align 4, !tbaa !23
  %i194 = bitcast i8* %arrayidx33 to i32*
  %34 = load i32, i32* %i194, align 4, !tbaa !23
  %i196 = bitcast i8* %arrayidx35 to i32*
  store i32 %34, i32* %i196, align 4, !tbaa !23
  %i198 = bitcast i8* %arrayidx45 to i32*
  %35 = load i32, i32* %i198, align 4, !tbaa !23
  %i200 = bitcast i8* %arrayidx47 to i32*
  store i32 %35, i32* %i200, align 4, !tbaa !23
  %tobool = icmp ne i16 %or186334, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @zigzag_sub_4x4_frame(i16* nocapture %level, i8* nocapture readonly %p_src, i8* nocapture %p_dst) #2 {
entry:
  %0 = load i8, i8* %p_src, align 1, !tbaa !23
  %conv = zext i8 %0 to i16
  %1 = load i8, i8* %p_dst, align 1, !tbaa !23
  %conv2 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv2
  store i16 %sub, i16* %level, align 2, !tbaa !24
  %arrayidx9 = getelementptr inbounds i8, i8* %p_src, i32 1
  %2 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10 = zext i8 %2 to i16
  %arrayidx11 = getelementptr inbounds i8, i8* %p_dst, i32 1
  %3 = load i8, i8* %arrayidx11, align 1, !tbaa !23
  %conv12 = zext i8 %3 to i16
  %sub13 = sub nsw i16 %conv10, %conv12
  %arrayidx15 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %sub13, i16* %arrayidx15, align 2, !tbaa !24
  %or18320 = or i16 %sub13, %sub
  %arrayidx21 = getelementptr inbounds i8, i8* %p_src, i32 16
  %4 = load i8, i8* %arrayidx21, align 1, !tbaa !23
  %conv22 = zext i8 %4 to i16
  %arrayidx23 = getelementptr inbounds i8, i8* %p_dst, i32 32
  %5 = load i8, i8* %arrayidx23, align 1, !tbaa !23
  %conv24 = zext i8 %5 to i16
  %sub25 = sub nsw i16 %conv22, %conv24
  %arrayidx27 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %sub25, i16* %arrayidx27, align 2, !tbaa !24
  %or30321 = or i16 %or18320, %sub25
  %arrayidx33 = getelementptr inbounds i8, i8* %p_src, i32 32
  %6 = load i8, i8* %arrayidx33, align 1, !tbaa !23
  %conv34 = zext i8 %6 to i16
  %arrayidx35 = getelementptr inbounds i8, i8* %p_dst, i32 64
  %7 = load i8, i8* %arrayidx35, align 1, !tbaa !23
  %conv36 = zext i8 %7 to i16
  %sub37 = sub nsw i16 %conv34, %conv36
  %arrayidx39 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %sub37, i16* %arrayidx39, align 2, !tbaa !24
  %or42322 = or i16 %or30321, %sub37
  %arrayidx45 = getelementptr inbounds i8, i8* %p_src, i32 17
  %8 = load i8, i8* %arrayidx45, align 1, !tbaa !23
  %conv46 = zext i8 %8 to i16
  %arrayidx47 = getelementptr inbounds i8, i8* %p_dst, i32 33
  %9 = load i8, i8* %arrayidx47, align 1, !tbaa !23
  %conv48 = zext i8 %9 to i16
  %sub49 = sub nsw i16 %conv46, %conv48
  %arrayidx51 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %sub49, i16* %arrayidx51, align 2, !tbaa !24
  %or54323 = or i16 %or42322, %sub49
  %arrayidx57 = getelementptr inbounds i8, i8* %p_src, i32 2
  %10 = load i8, i8* %arrayidx57, align 1, !tbaa !23
  %conv58 = zext i8 %10 to i16
  %arrayidx59 = getelementptr inbounds i8, i8* %p_dst, i32 2
  %11 = load i8, i8* %arrayidx59, align 1, !tbaa !23
  %conv60 = zext i8 %11 to i16
  %sub61 = sub nsw i16 %conv58, %conv60
  %arrayidx63 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %sub61, i16* %arrayidx63, align 2, !tbaa !24
  %or66324 = or i16 %or54323, %sub61
  %arrayidx69 = getelementptr inbounds i8, i8* %p_src, i32 3
  %12 = load i8, i8* %arrayidx69, align 1, !tbaa !23
  %conv70 = zext i8 %12 to i16
  %arrayidx71 = getelementptr inbounds i8, i8* %p_dst, i32 3
  %13 = load i8, i8* %arrayidx71, align 1, !tbaa !23
  %conv72 = zext i8 %13 to i16
  %sub73 = sub nsw i16 %conv70, %conv72
  %arrayidx75 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %sub73, i16* %arrayidx75, align 2, !tbaa !24
  %or78325 = or i16 %or66324, %sub73
  %arrayidx81 = getelementptr inbounds i8, i8* %p_src, i32 18
  %14 = load i8, i8* %arrayidx81, align 1, !tbaa !23
  %conv82 = zext i8 %14 to i16
  %arrayidx83 = getelementptr inbounds i8, i8* %p_dst, i32 34
  %15 = load i8, i8* %arrayidx83, align 1, !tbaa !23
  %conv84 = zext i8 %15 to i16
  %sub85 = sub nsw i16 %conv82, %conv84
  %arrayidx87 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %sub85, i16* %arrayidx87, align 2, !tbaa !24
  %or90326 = or i16 %or78325, %sub85
  %arrayidx93 = getelementptr inbounds i8, i8* %p_src, i32 33
  %16 = load i8, i8* %arrayidx93, align 1, !tbaa !23
  %conv94 = zext i8 %16 to i16
  %arrayidx95 = getelementptr inbounds i8, i8* %p_dst, i32 65
  %17 = load i8, i8* %arrayidx95, align 1, !tbaa !23
  %conv96 = zext i8 %17 to i16
  %sub97 = sub nsw i16 %conv94, %conv96
  %arrayidx99 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %sub97, i16* %arrayidx99, align 2, !tbaa !24
  %or102327 = or i16 %or90326, %sub97
  %arrayidx105 = getelementptr inbounds i8, i8* %p_src, i32 48
  %18 = load i8, i8* %arrayidx105, align 1, !tbaa !23
  %conv106 = zext i8 %18 to i16
  %arrayidx107 = getelementptr inbounds i8, i8* %p_dst, i32 96
  %19 = load i8, i8* %arrayidx107, align 1, !tbaa !23
  %conv108 = zext i8 %19 to i16
  %sub109 = sub nsw i16 %conv106, %conv108
  %arrayidx111 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %sub109, i16* %arrayidx111, align 2, !tbaa !24
  %or114328 = or i16 %or102327, %sub109
  %arrayidx117 = getelementptr inbounds i8, i8* %p_src, i32 49
  %20 = load i8, i8* %arrayidx117, align 1, !tbaa !23
  %conv118 = zext i8 %20 to i16
  %arrayidx119 = getelementptr inbounds i8, i8* %p_dst, i32 97
  %21 = load i8, i8* %arrayidx119, align 1, !tbaa !23
  %conv120 = zext i8 %21 to i16
  %sub121 = sub nsw i16 %conv118, %conv120
  %arrayidx123 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %sub121, i16* %arrayidx123, align 2, !tbaa !24
  %or126329 = or i16 %or114328, %sub121
  %arrayidx129 = getelementptr inbounds i8, i8* %p_src, i32 34
  %22 = load i8, i8* %arrayidx129, align 1, !tbaa !23
  %conv130 = zext i8 %22 to i16
  %arrayidx131 = getelementptr inbounds i8, i8* %p_dst, i32 66
  %23 = load i8, i8* %arrayidx131, align 1, !tbaa !23
  %conv132 = zext i8 %23 to i16
  %sub133 = sub nsw i16 %conv130, %conv132
  %arrayidx135 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %sub133, i16* %arrayidx135, align 2, !tbaa !24
  %or138330 = or i16 %or126329, %sub133
  %arrayidx141 = getelementptr inbounds i8, i8* %p_src, i32 19
  %24 = load i8, i8* %arrayidx141, align 1, !tbaa !23
  %conv142 = zext i8 %24 to i16
  %arrayidx143 = getelementptr inbounds i8, i8* %p_dst, i32 35
  %25 = load i8, i8* %arrayidx143, align 1, !tbaa !23
  %conv144 = zext i8 %25 to i16
  %sub145 = sub nsw i16 %conv142, %conv144
  %arrayidx147 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %sub145, i16* %arrayidx147, align 2, !tbaa !24
  %or150331 = or i16 %or138330, %sub145
  %arrayidx153 = getelementptr inbounds i8, i8* %p_src, i32 35
  %26 = load i8, i8* %arrayidx153, align 1, !tbaa !23
  %conv154 = zext i8 %26 to i16
  %arrayidx155 = getelementptr inbounds i8, i8* %p_dst, i32 67
  %27 = load i8, i8* %arrayidx155, align 1, !tbaa !23
  %conv156 = zext i8 %27 to i16
  %sub157 = sub nsw i16 %conv154, %conv156
  %arrayidx159 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %sub157, i16* %arrayidx159, align 2, !tbaa !24
  %or162332 = or i16 %or150331, %sub157
  %arrayidx165 = getelementptr inbounds i8, i8* %p_src, i32 50
  %28 = load i8, i8* %arrayidx165, align 1, !tbaa !23
  %conv166 = zext i8 %28 to i16
  %arrayidx167 = getelementptr inbounds i8, i8* %p_dst, i32 98
  %29 = load i8, i8* %arrayidx167, align 1, !tbaa !23
  %conv168 = zext i8 %29 to i16
  %sub169 = sub nsw i16 %conv166, %conv168
  %arrayidx171 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %sub169, i16* %arrayidx171, align 2, !tbaa !24
  %or174333 = or i16 %or162332, %sub169
  %arrayidx177 = getelementptr inbounds i8, i8* %p_src, i32 51
  %30 = load i8, i8* %arrayidx177, align 1, !tbaa !23
  %conv178 = zext i8 %30 to i16
  %arrayidx179 = getelementptr inbounds i8, i8* %p_dst, i32 99
  %31 = load i8, i8* %arrayidx179, align 1, !tbaa !23
  %conv180 = zext i8 %31 to i16
  %sub181 = sub nsw i16 %conv178, %conv180
  %arrayidx183 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %sub181, i16* %arrayidx183, align 2, !tbaa !24
  %or186334 = or i16 %or174333, %sub181
  %i = bitcast i8* %p_src to i32*
  %32 = load i32, i32* %i, align 4, !tbaa !23
  %i188 = bitcast i8* %p_dst to i32*
  store i32 %32, i32* %i188, align 4, !tbaa !23
  %i190 = bitcast i8* %arrayidx21 to i32*
  %33 = load i32, i32* %i190, align 4, !tbaa !23
  %i192 = bitcast i8* %arrayidx23 to i32*
  store i32 %33, i32* %i192, align 4, !tbaa !23
  %i194 = bitcast i8* %arrayidx33 to i32*
  %34 = load i32, i32* %i194, align 4, !tbaa !23
  %i196 = bitcast i8* %arrayidx35 to i32*
  store i32 %34, i32* %i196, align 4, !tbaa !23
  %i198 = bitcast i8* %arrayidx105 to i32*
  %35 = load i32, i32* %i198, align 4, !tbaa !23
  %i200 = bitcast i8* %arrayidx107 to i32*
  store i32 %35, i32* %i200, align 4, !tbaa !23
  %tobool = icmp ne i16 %or186334, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @zigzag_sub_4x4ac_field(i16* nocapture %level, i8* nocapture readonly %p_src, i8* nocapture %p_dst, i16* nocapture %dc) #2 {
entry:
  %0 = load i8, i8* %p_src, align 1, !tbaa !23
  %conv = zext i8 %0 to i16
  %1 = load i8, i8* %p_dst, align 1, !tbaa !23
  %conv2 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv2
  store i16 %sub, i16* %dc, align 2, !tbaa !24
  store i16 0, i16* %level, align 2, !tbaa !24
  %arrayidx7 = getelementptr inbounds i8, i8* %p_src, i32 16
  %2 = load i8, i8* %arrayidx7, align 1, !tbaa !23
  %conv8 = zext i8 %2 to i16
  %arrayidx9 = getelementptr inbounds i8, i8* %p_dst, i32 32
  %3 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10 = zext i8 %3 to i16
  %sub11 = sub nsw i16 %conv8, %conv10
  %arrayidx13 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %sub11, i16* %arrayidx13, align 2, !tbaa !24
  %arrayidx18 = getelementptr inbounds i8, i8* %p_src, i32 1
  %4 = load i8, i8* %arrayidx18, align 1, !tbaa !23
  %conv19 = zext i8 %4 to i16
  %arrayidx20 = getelementptr inbounds i8, i8* %p_dst, i32 1
  %5 = load i8, i8* %arrayidx20, align 1, !tbaa !23
  %conv21 = zext i8 %5 to i16
  %sub22 = sub nsw i16 %conv19, %conv21
  %arrayidx24 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %sub22, i16* %arrayidx24, align 2, !tbaa !24
  %or27315 = or i16 %sub22, %sub11
  %arrayidx30 = getelementptr inbounds i8, i8* %p_src, i32 32
  %6 = load i8, i8* %arrayidx30, align 1, !tbaa !23
  %conv31 = zext i8 %6 to i16
  %arrayidx32 = getelementptr inbounds i8, i8* %p_dst, i32 64
  %7 = load i8, i8* %arrayidx32, align 1, !tbaa !23
  %conv33 = zext i8 %7 to i16
  %sub34 = sub nsw i16 %conv31, %conv33
  %arrayidx36 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %sub34, i16* %arrayidx36, align 2, !tbaa !24
  %or39316 = or i16 %or27315, %sub34
  %arrayidx42 = getelementptr inbounds i8, i8* %p_src, i32 48
  %8 = load i8, i8* %arrayidx42, align 1, !tbaa !23
  %conv43 = zext i8 %8 to i16
  %arrayidx44 = getelementptr inbounds i8, i8* %p_dst, i32 96
  %9 = load i8, i8* %arrayidx44, align 1, !tbaa !23
  %conv45 = zext i8 %9 to i16
  %sub46 = sub nsw i16 %conv43, %conv45
  %arrayidx48 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %sub46, i16* %arrayidx48, align 2, !tbaa !24
  %or51317 = or i16 %or39316, %sub46
  %arrayidx54 = getelementptr inbounds i8, i8* %p_src, i32 17
  %10 = load i8, i8* %arrayidx54, align 1, !tbaa !23
  %conv55 = zext i8 %10 to i16
  %arrayidx56 = getelementptr inbounds i8, i8* %p_dst, i32 33
  %11 = load i8, i8* %arrayidx56, align 1, !tbaa !23
  %conv57 = zext i8 %11 to i16
  %sub58 = sub nsw i16 %conv55, %conv57
  %arrayidx60 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %sub58, i16* %arrayidx60, align 2, !tbaa !24
  %or63318 = or i16 %or51317, %sub58
  %arrayidx66 = getelementptr inbounds i8, i8* %p_src, i32 33
  %12 = load i8, i8* %arrayidx66, align 1, !tbaa !23
  %conv67 = zext i8 %12 to i16
  %arrayidx68 = getelementptr inbounds i8, i8* %p_dst, i32 65
  %13 = load i8, i8* %arrayidx68, align 1, !tbaa !23
  %conv69 = zext i8 %13 to i16
  %sub70 = sub nsw i16 %conv67, %conv69
  %arrayidx72 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %sub70, i16* %arrayidx72, align 2, !tbaa !24
  %or75319 = or i16 %or63318, %sub70
  %arrayidx78 = getelementptr inbounds i8, i8* %p_src, i32 49
  %14 = load i8, i8* %arrayidx78, align 1, !tbaa !23
  %conv79 = zext i8 %14 to i16
  %arrayidx80 = getelementptr inbounds i8, i8* %p_dst, i32 97
  %15 = load i8, i8* %arrayidx80, align 1, !tbaa !23
  %conv81 = zext i8 %15 to i16
  %sub82 = sub nsw i16 %conv79, %conv81
  %arrayidx84 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %sub82, i16* %arrayidx84, align 2, !tbaa !24
  %or87320 = or i16 %or75319, %sub82
  %arrayidx90 = getelementptr inbounds i8, i8* %p_src, i32 2
  %16 = load i8, i8* %arrayidx90, align 1, !tbaa !23
  %conv91 = zext i8 %16 to i16
  %arrayidx92 = getelementptr inbounds i8, i8* %p_dst, i32 2
  %17 = load i8, i8* %arrayidx92, align 1, !tbaa !23
  %conv93 = zext i8 %17 to i16
  %sub94 = sub nsw i16 %conv91, %conv93
  %arrayidx96 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %sub94, i16* %arrayidx96, align 2, !tbaa !24
  %or99321 = or i16 %or87320, %sub94
  %arrayidx102 = getelementptr inbounds i8, i8* %p_src, i32 18
  %18 = load i8, i8* %arrayidx102, align 1, !tbaa !23
  %conv103 = zext i8 %18 to i16
  %arrayidx104 = getelementptr inbounds i8, i8* %p_dst, i32 34
  %19 = load i8, i8* %arrayidx104, align 1, !tbaa !23
  %conv105 = zext i8 %19 to i16
  %sub106 = sub nsw i16 %conv103, %conv105
  %arrayidx108 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %sub106, i16* %arrayidx108, align 2, !tbaa !24
  %or111322 = or i16 %or99321, %sub106
  %arrayidx114 = getelementptr inbounds i8, i8* %p_src, i32 34
  %20 = load i8, i8* %arrayidx114, align 1, !tbaa !23
  %conv115 = zext i8 %20 to i16
  %arrayidx116 = getelementptr inbounds i8, i8* %p_dst, i32 66
  %21 = load i8, i8* %arrayidx116, align 1, !tbaa !23
  %conv117 = zext i8 %21 to i16
  %sub118 = sub nsw i16 %conv115, %conv117
  %arrayidx120 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %sub118, i16* %arrayidx120, align 2, !tbaa !24
  %or123323 = or i16 %or111322, %sub118
  %arrayidx126 = getelementptr inbounds i8, i8* %p_src, i32 50
  %22 = load i8, i8* %arrayidx126, align 1, !tbaa !23
  %conv127 = zext i8 %22 to i16
  %arrayidx128 = getelementptr inbounds i8, i8* %p_dst, i32 98
  %23 = load i8, i8* %arrayidx128, align 1, !tbaa !23
  %conv129 = zext i8 %23 to i16
  %sub130 = sub nsw i16 %conv127, %conv129
  %arrayidx132 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %sub130, i16* %arrayidx132, align 2, !tbaa !24
  %or135324 = or i16 %or123323, %sub130
  %arrayidx138 = getelementptr inbounds i8, i8* %p_src, i32 3
  %24 = load i8, i8* %arrayidx138, align 1, !tbaa !23
  %conv139 = zext i8 %24 to i16
  %arrayidx140 = getelementptr inbounds i8, i8* %p_dst, i32 3
  %25 = load i8, i8* %arrayidx140, align 1, !tbaa !23
  %conv141 = zext i8 %25 to i16
  %sub142 = sub nsw i16 %conv139, %conv141
  %arrayidx144 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %sub142, i16* %arrayidx144, align 2, !tbaa !24
  %or147325 = or i16 %or135324, %sub142
  %arrayidx150 = getelementptr inbounds i8, i8* %p_src, i32 19
  %26 = load i8, i8* %arrayidx150, align 1, !tbaa !23
  %conv151 = zext i8 %26 to i16
  %arrayidx152 = getelementptr inbounds i8, i8* %p_dst, i32 35
  %27 = load i8, i8* %arrayidx152, align 1, !tbaa !23
  %conv153 = zext i8 %27 to i16
  %sub154 = sub nsw i16 %conv151, %conv153
  %arrayidx156 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %sub154, i16* %arrayidx156, align 2, !tbaa !24
  %or159326 = or i16 %or147325, %sub154
  %arrayidx162 = getelementptr inbounds i8, i8* %p_src, i32 35
  %28 = load i8, i8* %arrayidx162, align 1, !tbaa !23
  %conv163 = zext i8 %28 to i16
  %arrayidx164 = getelementptr inbounds i8, i8* %p_dst, i32 67
  %29 = load i8, i8* %arrayidx164, align 1, !tbaa !23
  %conv165 = zext i8 %29 to i16
  %sub166 = sub nsw i16 %conv163, %conv165
  %arrayidx168 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %sub166, i16* %arrayidx168, align 2, !tbaa !24
  %or171327 = or i16 %or159326, %sub166
  %arrayidx174 = getelementptr inbounds i8, i8* %p_src, i32 51
  %30 = load i8, i8* %arrayidx174, align 1, !tbaa !23
  %conv175 = zext i8 %30 to i16
  %arrayidx176 = getelementptr inbounds i8, i8* %p_dst, i32 99
  %31 = load i8, i8* %arrayidx176, align 1, !tbaa !23
  %conv177 = zext i8 %31 to i16
  %sub178 = sub nsw i16 %conv175, %conv177
  %arrayidx180 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %sub178, i16* %arrayidx180, align 2, !tbaa !24
  %or183328 = or i16 %or171327, %sub178
  %i = bitcast i8* %p_src to i32*
  %32 = load i32, i32* %i, align 4, !tbaa !23
  %i185 = bitcast i8* %p_dst to i32*
  store i32 %32, i32* %i185, align 4, !tbaa !23
  %i187 = bitcast i8* %arrayidx7 to i32*
  %33 = load i32, i32* %i187, align 4, !tbaa !23
  %i189 = bitcast i8* %arrayidx9 to i32*
  store i32 %33, i32* %i189, align 4, !tbaa !23
  %i191 = bitcast i8* %arrayidx30 to i32*
  %34 = load i32, i32* %i191, align 4, !tbaa !23
  %i193 = bitcast i8* %arrayidx32 to i32*
  store i32 %34, i32* %i193, align 4, !tbaa !23
  %i195 = bitcast i8* %arrayidx42 to i32*
  %35 = load i32, i32* %i195, align 4, !tbaa !23
  %i197 = bitcast i8* %arrayidx44 to i32*
  store i32 %35, i32* %i197, align 4, !tbaa !23
  %tobool = icmp ne i16 %or183328, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree norecurse nounwind
define internal i32 @zigzag_sub_4x4ac_frame(i16* nocapture %level, i8* nocapture readonly %p_src, i8* nocapture %p_dst, i16* nocapture %dc) #2 {
entry:
  %0 = load i8, i8* %p_src, align 1, !tbaa !23
  %conv = zext i8 %0 to i16
  %1 = load i8, i8* %p_dst, align 1, !tbaa !23
  %conv2 = zext i8 %1 to i16
  %sub = sub nsw i16 %conv, %conv2
  store i16 %sub, i16* %dc, align 2, !tbaa !24
  store i16 0, i16* %level, align 2, !tbaa !24
  %arrayidx7 = getelementptr inbounds i8, i8* %p_src, i32 1
  %2 = load i8, i8* %arrayidx7, align 1, !tbaa !23
  %conv8 = zext i8 %2 to i16
  %arrayidx9 = getelementptr inbounds i8, i8* %p_dst, i32 1
  %3 = load i8, i8* %arrayidx9, align 1, !tbaa !23
  %conv10 = zext i8 %3 to i16
  %sub11 = sub nsw i16 %conv8, %conv10
  %arrayidx13 = getelementptr inbounds i16, i16* %level, i32 1
  store i16 %sub11, i16* %arrayidx13, align 2, !tbaa !24
  %arrayidx18 = getelementptr inbounds i8, i8* %p_src, i32 16
  %4 = load i8, i8* %arrayidx18, align 1, !tbaa !23
  %conv19 = zext i8 %4 to i16
  %arrayidx20 = getelementptr inbounds i8, i8* %p_dst, i32 32
  %5 = load i8, i8* %arrayidx20, align 1, !tbaa !23
  %conv21 = zext i8 %5 to i16
  %sub22 = sub nsw i16 %conv19, %conv21
  %arrayidx24 = getelementptr inbounds i16, i16* %level, i32 2
  store i16 %sub22, i16* %arrayidx24, align 2, !tbaa !24
  %or27315 = or i16 %sub22, %sub11
  %arrayidx30 = getelementptr inbounds i8, i8* %p_src, i32 32
  %6 = load i8, i8* %arrayidx30, align 1, !tbaa !23
  %conv31 = zext i8 %6 to i16
  %arrayidx32 = getelementptr inbounds i8, i8* %p_dst, i32 64
  %7 = load i8, i8* %arrayidx32, align 1, !tbaa !23
  %conv33 = zext i8 %7 to i16
  %sub34 = sub nsw i16 %conv31, %conv33
  %arrayidx36 = getelementptr inbounds i16, i16* %level, i32 3
  store i16 %sub34, i16* %arrayidx36, align 2, !tbaa !24
  %or39316 = or i16 %or27315, %sub34
  %arrayidx42 = getelementptr inbounds i8, i8* %p_src, i32 17
  %8 = load i8, i8* %arrayidx42, align 1, !tbaa !23
  %conv43 = zext i8 %8 to i16
  %arrayidx44 = getelementptr inbounds i8, i8* %p_dst, i32 33
  %9 = load i8, i8* %arrayidx44, align 1, !tbaa !23
  %conv45 = zext i8 %9 to i16
  %sub46 = sub nsw i16 %conv43, %conv45
  %arrayidx48 = getelementptr inbounds i16, i16* %level, i32 4
  store i16 %sub46, i16* %arrayidx48, align 2, !tbaa !24
  %or51317 = or i16 %or39316, %sub46
  %arrayidx54 = getelementptr inbounds i8, i8* %p_src, i32 2
  %10 = load i8, i8* %arrayidx54, align 1, !tbaa !23
  %conv55 = zext i8 %10 to i16
  %arrayidx56 = getelementptr inbounds i8, i8* %p_dst, i32 2
  %11 = load i8, i8* %arrayidx56, align 1, !tbaa !23
  %conv57 = zext i8 %11 to i16
  %sub58 = sub nsw i16 %conv55, %conv57
  %arrayidx60 = getelementptr inbounds i16, i16* %level, i32 5
  store i16 %sub58, i16* %arrayidx60, align 2, !tbaa !24
  %or63318 = or i16 %or51317, %sub58
  %arrayidx66 = getelementptr inbounds i8, i8* %p_src, i32 3
  %12 = load i8, i8* %arrayidx66, align 1, !tbaa !23
  %conv67 = zext i8 %12 to i16
  %arrayidx68 = getelementptr inbounds i8, i8* %p_dst, i32 3
  %13 = load i8, i8* %arrayidx68, align 1, !tbaa !23
  %conv69 = zext i8 %13 to i16
  %sub70 = sub nsw i16 %conv67, %conv69
  %arrayidx72 = getelementptr inbounds i16, i16* %level, i32 6
  store i16 %sub70, i16* %arrayidx72, align 2, !tbaa !24
  %or75319 = or i16 %or63318, %sub70
  %arrayidx78 = getelementptr inbounds i8, i8* %p_src, i32 18
  %14 = load i8, i8* %arrayidx78, align 1, !tbaa !23
  %conv79 = zext i8 %14 to i16
  %arrayidx80 = getelementptr inbounds i8, i8* %p_dst, i32 34
  %15 = load i8, i8* %arrayidx80, align 1, !tbaa !23
  %conv81 = zext i8 %15 to i16
  %sub82 = sub nsw i16 %conv79, %conv81
  %arrayidx84 = getelementptr inbounds i16, i16* %level, i32 7
  store i16 %sub82, i16* %arrayidx84, align 2, !tbaa !24
  %or87320 = or i16 %or75319, %sub82
  %arrayidx90 = getelementptr inbounds i8, i8* %p_src, i32 33
  %16 = load i8, i8* %arrayidx90, align 1, !tbaa !23
  %conv91 = zext i8 %16 to i16
  %arrayidx92 = getelementptr inbounds i8, i8* %p_dst, i32 65
  %17 = load i8, i8* %arrayidx92, align 1, !tbaa !23
  %conv93 = zext i8 %17 to i16
  %sub94 = sub nsw i16 %conv91, %conv93
  %arrayidx96 = getelementptr inbounds i16, i16* %level, i32 8
  store i16 %sub94, i16* %arrayidx96, align 2, !tbaa !24
  %or99321 = or i16 %or87320, %sub94
  %arrayidx102 = getelementptr inbounds i8, i8* %p_src, i32 48
  %18 = load i8, i8* %arrayidx102, align 1, !tbaa !23
  %conv103 = zext i8 %18 to i16
  %arrayidx104 = getelementptr inbounds i8, i8* %p_dst, i32 96
  %19 = load i8, i8* %arrayidx104, align 1, !tbaa !23
  %conv105 = zext i8 %19 to i16
  %sub106 = sub nsw i16 %conv103, %conv105
  %arrayidx108 = getelementptr inbounds i16, i16* %level, i32 9
  store i16 %sub106, i16* %arrayidx108, align 2, !tbaa !24
  %or111322 = or i16 %or99321, %sub106
  %arrayidx114 = getelementptr inbounds i8, i8* %p_src, i32 49
  %20 = load i8, i8* %arrayidx114, align 1, !tbaa !23
  %conv115 = zext i8 %20 to i16
  %arrayidx116 = getelementptr inbounds i8, i8* %p_dst, i32 97
  %21 = load i8, i8* %arrayidx116, align 1, !tbaa !23
  %conv117 = zext i8 %21 to i16
  %sub118 = sub nsw i16 %conv115, %conv117
  %arrayidx120 = getelementptr inbounds i16, i16* %level, i32 10
  store i16 %sub118, i16* %arrayidx120, align 2, !tbaa !24
  %or123323 = or i16 %or111322, %sub118
  %arrayidx126 = getelementptr inbounds i8, i8* %p_src, i32 34
  %22 = load i8, i8* %arrayidx126, align 1, !tbaa !23
  %conv127 = zext i8 %22 to i16
  %arrayidx128 = getelementptr inbounds i8, i8* %p_dst, i32 66
  %23 = load i8, i8* %arrayidx128, align 1, !tbaa !23
  %conv129 = zext i8 %23 to i16
  %sub130 = sub nsw i16 %conv127, %conv129
  %arrayidx132 = getelementptr inbounds i16, i16* %level, i32 11
  store i16 %sub130, i16* %arrayidx132, align 2, !tbaa !24
  %or135324 = or i16 %or123323, %sub130
  %arrayidx138 = getelementptr inbounds i8, i8* %p_src, i32 19
  %24 = load i8, i8* %arrayidx138, align 1, !tbaa !23
  %conv139 = zext i8 %24 to i16
  %arrayidx140 = getelementptr inbounds i8, i8* %p_dst, i32 35
  %25 = load i8, i8* %arrayidx140, align 1, !tbaa !23
  %conv141 = zext i8 %25 to i16
  %sub142 = sub nsw i16 %conv139, %conv141
  %arrayidx144 = getelementptr inbounds i16, i16* %level, i32 12
  store i16 %sub142, i16* %arrayidx144, align 2, !tbaa !24
  %or147325 = or i16 %or135324, %sub142
  %arrayidx150 = getelementptr inbounds i8, i8* %p_src, i32 35
  %26 = load i8, i8* %arrayidx150, align 1, !tbaa !23
  %conv151 = zext i8 %26 to i16
  %arrayidx152 = getelementptr inbounds i8, i8* %p_dst, i32 67
  %27 = load i8, i8* %arrayidx152, align 1, !tbaa !23
  %conv153 = zext i8 %27 to i16
  %sub154 = sub nsw i16 %conv151, %conv153
  %arrayidx156 = getelementptr inbounds i16, i16* %level, i32 13
  store i16 %sub154, i16* %arrayidx156, align 2, !tbaa !24
  %or159326 = or i16 %or147325, %sub154
  %arrayidx162 = getelementptr inbounds i8, i8* %p_src, i32 50
  %28 = load i8, i8* %arrayidx162, align 1, !tbaa !23
  %conv163 = zext i8 %28 to i16
  %arrayidx164 = getelementptr inbounds i8, i8* %p_dst, i32 98
  %29 = load i8, i8* %arrayidx164, align 1, !tbaa !23
  %conv165 = zext i8 %29 to i16
  %sub166 = sub nsw i16 %conv163, %conv165
  %arrayidx168 = getelementptr inbounds i16, i16* %level, i32 14
  store i16 %sub166, i16* %arrayidx168, align 2, !tbaa !24
  %or171327 = or i16 %or159326, %sub166
  %arrayidx174 = getelementptr inbounds i8, i8* %p_src, i32 51
  %30 = load i8, i8* %arrayidx174, align 1, !tbaa !23
  %conv175 = zext i8 %30 to i16
  %arrayidx176 = getelementptr inbounds i8, i8* %p_dst, i32 99
  %31 = load i8, i8* %arrayidx176, align 1, !tbaa !23
  %conv177 = zext i8 %31 to i16
  %sub178 = sub nsw i16 %conv175, %conv177
  %arrayidx180 = getelementptr inbounds i16, i16* %level, i32 15
  store i16 %sub178, i16* %arrayidx180, align 2, !tbaa !24
  %or183328 = or i16 %or171327, %sub178
  %i = bitcast i8* %p_src to i32*
  %32 = load i32, i32* %i, align 4, !tbaa !23
  %i185 = bitcast i8* %p_dst to i32*
  store i32 %32, i32* %i185, align 4, !tbaa !23
  %i187 = bitcast i8* %arrayidx18 to i32*
  %33 = load i32, i32* %i187, align 4, !tbaa !23
  %i189 = bitcast i8* %arrayidx20 to i32*
  store i32 %33, i32* %i189, align 4, !tbaa !23
  %i191 = bitcast i8* %arrayidx30 to i32*
  %34 = load i32, i32* %i191, align 4, !tbaa !23
  %i193 = bitcast i8* %arrayidx32 to i32*
  store i32 %34, i32* %i193, align 4, !tbaa !23
  %i195 = bitcast i8* %arrayidx102 to i32*
  %35 = load i32, i32* %i195, align 4, !tbaa !23
  %i197 = bitcast i8* %arrayidx104 to i32*
  store i32 %35, i32* %i197, align 4, !tbaa !23
  %tobool = icmp ne i16 %or183328, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree norecurse nounwind
define internal void @zigzag_interleave_8x8_cavlc(i16* nocapture %dst, i16* nocapture readonly %src, i8* nocapture %nnz) #2 {
entry:
  %0 = load i16, i16* %src, align 2, !tbaa !24
  store i16 %0, i16* %dst, align 2, !tbaa !24
  %arrayidx.1 = getelementptr inbounds i16, i16* %src, i32 4
  %1 = load i16, i16* %arrayidx.1, align 2, !tbaa !24
  %or.146 = or i16 %0, %1
  %arrayidx10.1 = getelementptr inbounds i16, i16* %dst, i32 1
  store i16 %1, i16* %arrayidx10.1, align 2, !tbaa !24
  %arrayidx.2 = getelementptr inbounds i16, i16* %src, i32 8
  %2 = load i16, i16* %arrayidx.2, align 2, !tbaa !24
  %or.247 = or i16 %or.146, %2
  %arrayidx10.2 = getelementptr inbounds i16, i16* %dst, i32 2
  store i16 %2, i16* %arrayidx10.2, align 2, !tbaa !24
  %arrayidx.3 = getelementptr inbounds i16, i16* %src, i32 12
  %3 = load i16, i16* %arrayidx.3, align 2, !tbaa !24
  %or.348 = or i16 %or.247, %3
  %arrayidx10.3 = getelementptr inbounds i16, i16* %dst, i32 3
  store i16 %3, i16* %arrayidx10.3, align 2, !tbaa !24
  %arrayidx.4 = getelementptr inbounds i16, i16* %src, i32 16
  %4 = load i16, i16* %arrayidx.4, align 2, !tbaa !24
  %or.449 = or i16 %or.348, %4
  %arrayidx10.4 = getelementptr inbounds i16, i16* %dst, i32 4
  store i16 %4, i16* %arrayidx10.4, align 2, !tbaa !24
  %arrayidx.5 = getelementptr inbounds i16, i16* %src, i32 20
  %5 = load i16, i16* %arrayidx.5, align 2, !tbaa !24
  %or.550 = or i16 %or.449, %5
  %arrayidx10.5 = getelementptr inbounds i16, i16* %dst, i32 5
  store i16 %5, i16* %arrayidx10.5, align 2, !tbaa !24
  %arrayidx.6 = getelementptr inbounds i16, i16* %src, i32 24
  %6 = load i16, i16* %arrayidx.6, align 2, !tbaa !24
  %or.651 = or i16 %or.550, %6
  %arrayidx10.6 = getelementptr inbounds i16, i16* %dst, i32 6
  store i16 %6, i16* %arrayidx10.6, align 2, !tbaa !24
  %arrayidx.7 = getelementptr inbounds i16, i16* %src, i32 28
  %7 = load i16, i16* %arrayidx.7, align 2, !tbaa !24
  %or.752 = or i16 %or.651, %7
  %arrayidx10.7 = getelementptr inbounds i16, i16* %dst, i32 7
  store i16 %7, i16* %arrayidx10.7, align 2, !tbaa !24
  %arrayidx.8 = getelementptr inbounds i16, i16* %src, i32 32
  %8 = load i16, i16* %arrayidx.8, align 2, !tbaa !24
  %or.853 = or i16 %or.752, %8
  %arrayidx10.8 = getelementptr inbounds i16, i16* %dst, i32 8
  store i16 %8, i16* %arrayidx10.8, align 2, !tbaa !24
  %arrayidx.9 = getelementptr inbounds i16, i16* %src, i32 36
  %9 = load i16, i16* %arrayidx.9, align 2, !tbaa !24
  %or.954 = or i16 %or.853, %9
  %arrayidx10.9 = getelementptr inbounds i16, i16* %dst, i32 9
  store i16 %9, i16* %arrayidx10.9, align 2, !tbaa !24
  %arrayidx.10 = getelementptr inbounds i16, i16* %src, i32 40
  %10 = load i16, i16* %arrayidx.10, align 2, !tbaa !24
  %or.1055 = or i16 %or.954, %10
  %arrayidx10.10 = getelementptr inbounds i16, i16* %dst, i32 10
  store i16 %10, i16* %arrayidx10.10, align 2, !tbaa !24
  %arrayidx.11 = getelementptr inbounds i16, i16* %src, i32 44
  %11 = load i16, i16* %arrayidx.11, align 2, !tbaa !24
  %or.1156 = or i16 %or.1055, %11
  %arrayidx10.11 = getelementptr inbounds i16, i16* %dst, i32 11
  store i16 %11, i16* %arrayidx10.11, align 2, !tbaa !24
  %arrayidx.12 = getelementptr inbounds i16, i16* %src, i32 48
  %12 = load i16, i16* %arrayidx.12, align 2, !tbaa !24
  %or.1257 = or i16 %or.1156, %12
  %arrayidx10.12 = getelementptr inbounds i16, i16* %dst, i32 12
  store i16 %12, i16* %arrayidx10.12, align 2, !tbaa !24
  %arrayidx.13 = getelementptr inbounds i16, i16* %src, i32 52
  %13 = load i16, i16* %arrayidx.13, align 2, !tbaa !24
  %or.1358 = or i16 %or.1257, %13
  %arrayidx10.13 = getelementptr inbounds i16, i16* %dst, i32 13
  store i16 %13, i16* %arrayidx10.13, align 2, !tbaa !24
  %arrayidx.14 = getelementptr inbounds i16, i16* %src, i32 56
  %14 = load i16, i16* %arrayidx.14, align 2, !tbaa !24
  %or.1459 = or i16 %or.1358, %14
  %arrayidx10.14 = getelementptr inbounds i16, i16* %dst, i32 14
  store i16 %14, i16* %arrayidx10.14, align 2, !tbaa !24
  %arrayidx.15 = getelementptr inbounds i16, i16* %src, i32 60
  %15 = load i16, i16* %arrayidx.15, align 2, !tbaa !24
  %or.1560 = or i16 %or.1459, %15
  %arrayidx10.15 = getelementptr inbounds i16, i16* %dst, i32 15
  store i16 %15, i16* %arrayidx10.15, align 2, !tbaa !24
  %tobool = icmp ne i16 %or.1560, 0
  %conv12 = zext i1 %tobool to i8
  store i8 %conv12, i8* %nnz, align 1, !tbaa !23
  %arrayidx.137 = getelementptr inbounds i16, i16* %src, i32 1
  %16 = load i16, i16* %arrayidx.137, align 2, !tbaa !24
  %arrayidx10.139 = getelementptr inbounds i16, i16* %dst, i32 16
  store i16 %16, i16* %arrayidx10.139, align 2, !tbaa !24
  %arrayidx.1.1 = getelementptr inbounds i16, i16* %src, i32 5
  %17 = load i16, i16* %arrayidx.1.1, align 2, !tbaa !24
  %or.1.161 = or i16 %16, %17
  %arrayidx10.1.1 = getelementptr inbounds i16, i16* %dst, i32 17
  store i16 %17, i16* %arrayidx10.1.1, align 2, !tbaa !24
  %arrayidx.2.1 = getelementptr inbounds i16, i16* %src, i32 9
  %18 = load i16, i16* %arrayidx.2.1, align 2, !tbaa !24
  %or.2.162 = or i16 %or.1.161, %18
  %arrayidx10.2.1 = getelementptr inbounds i16, i16* %dst, i32 18
  store i16 %18, i16* %arrayidx10.2.1, align 2, !tbaa !24
  %arrayidx.3.1 = getelementptr inbounds i16, i16* %src, i32 13
  %19 = load i16, i16* %arrayidx.3.1, align 2, !tbaa !24
  %or.3.163 = or i16 %or.2.162, %19
  %arrayidx10.3.1 = getelementptr inbounds i16, i16* %dst, i32 19
  store i16 %19, i16* %arrayidx10.3.1, align 2, !tbaa !24
  %arrayidx.4.1 = getelementptr inbounds i16, i16* %src, i32 17
  %20 = load i16, i16* %arrayidx.4.1, align 2, !tbaa !24
  %or.4.164 = or i16 %or.3.163, %20
  %arrayidx10.4.1 = getelementptr inbounds i16, i16* %dst, i32 20
  store i16 %20, i16* %arrayidx10.4.1, align 2, !tbaa !24
  %arrayidx.5.1 = getelementptr inbounds i16, i16* %src, i32 21
  %21 = load i16, i16* %arrayidx.5.1, align 2, !tbaa !24
  %or.5.165 = or i16 %or.4.164, %21
  %arrayidx10.5.1 = getelementptr inbounds i16, i16* %dst, i32 21
  store i16 %21, i16* %arrayidx10.5.1, align 2, !tbaa !24
  %arrayidx.6.1 = getelementptr inbounds i16, i16* %src, i32 25
  %22 = load i16, i16* %arrayidx.6.1, align 2, !tbaa !24
  %or.6.166 = or i16 %or.5.165, %22
  %arrayidx10.6.1 = getelementptr inbounds i16, i16* %dst, i32 22
  store i16 %22, i16* %arrayidx10.6.1, align 2, !tbaa !24
  %arrayidx.7.1 = getelementptr inbounds i16, i16* %src, i32 29
  %23 = load i16, i16* %arrayidx.7.1, align 2, !tbaa !24
  %or.7.167 = or i16 %or.6.166, %23
  %arrayidx10.7.1 = getelementptr inbounds i16, i16* %dst, i32 23
  store i16 %23, i16* %arrayidx10.7.1, align 2, !tbaa !24
  %arrayidx.8.1 = getelementptr inbounds i16, i16* %src, i32 33
  %24 = load i16, i16* %arrayidx.8.1, align 2, !tbaa !24
  %or.8.168 = or i16 %or.7.167, %24
  %arrayidx10.8.1 = getelementptr inbounds i16, i16* %dst, i32 24
  store i16 %24, i16* %arrayidx10.8.1, align 2, !tbaa !24
  %arrayidx.9.1 = getelementptr inbounds i16, i16* %src, i32 37
  %25 = load i16, i16* %arrayidx.9.1, align 2, !tbaa !24
  %or.9.169 = or i16 %or.8.168, %25
  %arrayidx10.9.1 = getelementptr inbounds i16, i16* %dst, i32 25
  store i16 %25, i16* %arrayidx10.9.1, align 2, !tbaa !24
  %arrayidx.10.1 = getelementptr inbounds i16, i16* %src, i32 41
  %26 = load i16, i16* %arrayidx.10.1, align 2, !tbaa !24
  %or.10.170 = or i16 %or.9.169, %26
  %arrayidx10.10.1 = getelementptr inbounds i16, i16* %dst, i32 26
  store i16 %26, i16* %arrayidx10.10.1, align 2, !tbaa !24
  %arrayidx.11.1 = getelementptr inbounds i16, i16* %src, i32 45
  %27 = load i16, i16* %arrayidx.11.1, align 2, !tbaa !24
  %or.11.171 = or i16 %or.10.170, %27
  %arrayidx10.11.1 = getelementptr inbounds i16, i16* %dst, i32 27
  store i16 %27, i16* %arrayidx10.11.1, align 2, !tbaa !24
  %arrayidx.12.1 = getelementptr inbounds i16, i16* %src, i32 49
  %28 = load i16, i16* %arrayidx.12.1, align 2, !tbaa !24
  %or.12.172 = or i16 %or.11.171, %28
  %arrayidx10.12.1 = getelementptr inbounds i16, i16* %dst, i32 28
  store i16 %28, i16* %arrayidx10.12.1, align 2, !tbaa !24
  %arrayidx.13.1 = getelementptr inbounds i16, i16* %src, i32 53
  %29 = load i16, i16* %arrayidx.13.1, align 2, !tbaa !24
  %or.13.173 = or i16 %or.12.172, %29
  %arrayidx10.13.1 = getelementptr inbounds i16, i16* %dst, i32 29
  store i16 %29, i16* %arrayidx10.13.1, align 2, !tbaa !24
  %arrayidx.14.1 = getelementptr inbounds i16, i16* %src, i32 57
  %30 = load i16, i16* %arrayidx.14.1, align 2, !tbaa !24
  %or.14.174 = or i16 %or.13.173, %30
  %arrayidx10.14.1 = getelementptr inbounds i16, i16* %dst, i32 30
  store i16 %30, i16* %arrayidx10.14.1, align 2, !tbaa !24
  %arrayidx.15.1 = getelementptr inbounds i16, i16* %src, i32 61
  %31 = load i16, i16* %arrayidx.15.1, align 2, !tbaa !24
  %or.15.175 = or i16 %or.14.174, %31
  %arrayidx10.15.1 = getelementptr inbounds i16, i16* %dst, i32 31
  store i16 %31, i16* %arrayidx10.15.1, align 2, !tbaa !24
  %tobool.1 = icmp ne i16 %or.15.175, 0
  %conv12.1 = zext i1 %tobool.1 to i8
  %arrayidx15.1 = getelementptr inbounds i8, i8* %nnz, i32 1
  store i8 %conv12.1, i8* %arrayidx15.1, align 1, !tbaa !23
  %arrayidx.240 = getelementptr inbounds i16, i16* %src, i32 2
  %32 = load i16, i16* %arrayidx.240, align 2, !tbaa !24
  %arrayidx10.242 = getelementptr inbounds i16, i16* %dst, i32 32
  store i16 %32, i16* %arrayidx10.242, align 2, !tbaa !24
  %arrayidx.1.2 = getelementptr inbounds i16, i16* %src, i32 6
  %33 = load i16, i16* %arrayidx.1.2, align 2, !tbaa !24
  %or.1.276 = or i16 %32, %33
  %arrayidx10.1.2 = getelementptr inbounds i16, i16* %dst, i32 33
  store i16 %33, i16* %arrayidx10.1.2, align 2, !tbaa !24
  %arrayidx.2.2 = getelementptr inbounds i16, i16* %src, i32 10
  %34 = load i16, i16* %arrayidx.2.2, align 2, !tbaa !24
  %or.2.277 = or i16 %or.1.276, %34
  %arrayidx10.2.2 = getelementptr inbounds i16, i16* %dst, i32 34
  store i16 %34, i16* %arrayidx10.2.2, align 2, !tbaa !24
  %arrayidx.3.2 = getelementptr inbounds i16, i16* %src, i32 14
  %35 = load i16, i16* %arrayidx.3.2, align 2, !tbaa !24
  %or.3.278 = or i16 %or.2.277, %35
  %arrayidx10.3.2 = getelementptr inbounds i16, i16* %dst, i32 35
  store i16 %35, i16* %arrayidx10.3.2, align 2, !tbaa !24
  %arrayidx.4.2 = getelementptr inbounds i16, i16* %src, i32 18
  %36 = load i16, i16* %arrayidx.4.2, align 2, !tbaa !24
  %or.4.279 = or i16 %or.3.278, %36
  %arrayidx10.4.2 = getelementptr inbounds i16, i16* %dst, i32 36
  store i16 %36, i16* %arrayidx10.4.2, align 2, !tbaa !24
  %arrayidx.5.2 = getelementptr inbounds i16, i16* %src, i32 22
  %37 = load i16, i16* %arrayidx.5.2, align 2, !tbaa !24
  %or.5.280 = or i16 %or.4.279, %37
  %arrayidx10.5.2 = getelementptr inbounds i16, i16* %dst, i32 37
  store i16 %37, i16* %arrayidx10.5.2, align 2, !tbaa !24
  %arrayidx.6.2 = getelementptr inbounds i16, i16* %src, i32 26
  %38 = load i16, i16* %arrayidx.6.2, align 2, !tbaa !24
  %or.6.281 = or i16 %or.5.280, %38
  %arrayidx10.6.2 = getelementptr inbounds i16, i16* %dst, i32 38
  store i16 %38, i16* %arrayidx10.6.2, align 2, !tbaa !24
  %arrayidx.7.2 = getelementptr inbounds i16, i16* %src, i32 30
  %39 = load i16, i16* %arrayidx.7.2, align 2, !tbaa !24
  %or.7.282 = or i16 %or.6.281, %39
  %arrayidx10.7.2 = getelementptr inbounds i16, i16* %dst, i32 39
  store i16 %39, i16* %arrayidx10.7.2, align 2, !tbaa !24
  %arrayidx.8.2 = getelementptr inbounds i16, i16* %src, i32 34
  %40 = load i16, i16* %arrayidx.8.2, align 2, !tbaa !24
  %or.8.283 = or i16 %or.7.282, %40
  %arrayidx10.8.2 = getelementptr inbounds i16, i16* %dst, i32 40
  store i16 %40, i16* %arrayidx10.8.2, align 2, !tbaa !24
  %arrayidx.9.2 = getelementptr inbounds i16, i16* %src, i32 38
  %41 = load i16, i16* %arrayidx.9.2, align 2, !tbaa !24
  %or.9.284 = or i16 %or.8.283, %41
  %arrayidx10.9.2 = getelementptr inbounds i16, i16* %dst, i32 41
  store i16 %41, i16* %arrayidx10.9.2, align 2, !tbaa !24
  %arrayidx.10.2 = getelementptr inbounds i16, i16* %src, i32 42
  %42 = load i16, i16* %arrayidx.10.2, align 2, !tbaa !24
  %or.10.285 = or i16 %or.9.284, %42
  %arrayidx10.10.2 = getelementptr inbounds i16, i16* %dst, i32 42
  store i16 %42, i16* %arrayidx10.10.2, align 2, !tbaa !24
  %arrayidx.11.2 = getelementptr inbounds i16, i16* %src, i32 46
  %43 = load i16, i16* %arrayidx.11.2, align 2, !tbaa !24
  %or.11.286 = or i16 %or.10.285, %43
  %arrayidx10.11.2 = getelementptr inbounds i16, i16* %dst, i32 43
  store i16 %43, i16* %arrayidx10.11.2, align 2, !tbaa !24
  %arrayidx.12.2 = getelementptr inbounds i16, i16* %src, i32 50
  %44 = load i16, i16* %arrayidx.12.2, align 2, !tbaa !24
  %or.12.287 = or i16 %or.11.286, %44
  %arrayidx10.12.2 = getelementptr inbounds i16, i16* %dst, i32 44
  store i16 %44, i16* %arrayidx10.12.2, align 2, !tbaa !24
  %arrayidx.13.2 = getelementptr inbounds i16, i16* %src, i32 54
  %45 = load i16, i16* %arrayidx.13.2, align 2, !tbaa !24
  %or.13.288 = or i16 %or.12.287, %45
  %arrayidx10.13.2 = getelementptr inbounds i16, i16* %dst, i32 45
  store i16 %45, i16* %arrayidx10.13.2, align 2, !tbaa !24
  %arrayidx.14.2 = getelementptr inbounds i16, i16* %src, i32 58
  %46 = load i16, i16* %arrayidx.14.2, align 2, !tbaa !24
  %or.14.289 = or i16 %or.13.288, %46
  %arrayidx10.14.2 = getelementptr inbounds i16, i16* %dst, i32 46
  store i16 %46, i16* %arrayidx10.14.2, align 2, !tbaa !24
  %arrayidx.15.2 = getelementptr inbounds i16, i16* %src, i32 62
  %47 = load i16, i16* %arrayidx.15.2, align 2, !tbaa !24
  %or.15.290 = or i16 %or.14.289, %47
  %arrayidx10.15.2 = getelementptr inbounds i16, i16* %dst, i32 47
  store i16 %47, i16* %arrayidx10.15.2, align 2, !tbaa !24
  %tobool.2 = icmp ne i16 %or.15.290, 0
  %conv12.2 = zext i1 %tobool.2 to i8
  %arrayidx15.2 = getelementptr inbounds i8, i8* %nnz, i32 8
  store i8 %conv12.2, i8* %arrayidx15.2, align 1, !tbaa !23
  %arrayidx.343 = getelementptr inbounds i16, i16* %src, i32 3
  %48 = load i16, i16* %arrayidx.343, align 2, !tbaa !24
  %arrayidx10.345 = getelementptr inbounds i16, i16* %dst, i32 48
  store i16 %48, i16* %arrayidx10.345, align 2, !tbaa !24
  %arrayidx.1.3 = getelementptr inbounds i16, i16* %src, i32 7
  %49 = load i16, i16* %arrayidx.1.3, align 2, !tbaa !24
  %or.1.391 = or i16 %48, %49
  %arrayidx10.1.3 = getelementptr inbounds i16, i16* %dst, i32 49
  store i16 %49, i16* %arrayidx10.1.3, align 2, !tbaa !24
  %arrayidx.2.3 = getelementptr inbounds i16, i16* %src, i32 11
  %50 = load i16, i16* %arrayidx.2.3, align 2, !tbaa !24
  %or.2.392 = or i16 %or.1.391, %50
  %arrayidx10.2.3 = getelementptr inbounds i16, i16* %dst, i32 50
  store i16 %50, i16* %arrayidx10.2.3, align 2, !tbaa !24
  %arrayidx.3.3 = getelementptr inbounds i16, i16* %src, i32 15
  %51 = load i16, i16* %arrayidx.3.3, align 2, !tbaa !24
  %or.3.393 = or i16 %or.2.392, %51
  %arrayidx10.3.3 = getelementptr inbounds i16, i16* %dst, i32 51
  store i16 %51, i16* %arrayidx10.3.3, align 2, !tbaa !24
  %arrayidx.4.3 = getelementptr inbounds i16, i16* %src, i32 19
  %52 = load i16, i16* %arrayidx.4.3, align 2, !tbaa !24
  %or.4.394 = or i16 %or.3.393, %52
  %arrayidx10.4.3 = getelementptr inbounds i16, i16* %dst, i32 52
  store i16 %52, i16* %arrayidx10.4.3, align 2, !tbaa !24
  %arrayidx.5.3 = getelementptr inbounds i16, i16* %src, i32 23
  %53 = load i16, i16* %arrayidx.5.3, align 2, !tbaa !24
  %or.5.395 = or i16 %or.4.394, %53
  %arrayidx10.5.3 = getelementptr inbounds i16, i16* %dst, i32 53
  store i16 %53, i16* %arrayidx10.5.3, align 2, !tbaa !24
  %arrayidx.6.3 = getelementptr inbounds i16, i16* %src, i32 27
  %54 = load i16, i16* %arrayidx.6.3, align 2, !tbaa !24
  %or.6.396 = or i16 %or.5.395, %54
  %arrayidx10.6.3 = getelementptr inbounds i16, i16* %dst, i32 54
  store i16 %54, i16* %arrayidx10.6.3, align 2, !tbaa !24
  %arrayidx.7.3 = getelementptr inbounds i16, i16* %src, i32 31
  %55 = load i16, i16* %arrayidx.7.3, align 2, !tbaa !24
  %or.7.397 = or i16 %or.6.396, %55
  %arrayidx10.7.3 = getelementptr inbounds i16, i16* %dst, i32 55
  store i16 %55, i16* %arrayidx10.7.3, align 2, !tbaa !24
  %arrayidx.8.3 = getelementptr inbounds i16, i16* %src, i32 35
  %56 = load i16, i16* %arrayidx.8.3, align 2, !tbaa !24
  %or.8.398 = or i16 %or.7.397, %56
  %arrayidx10.8.3 = getelementptr inbounds i16, i16* %dst, i32 56
  store i16 %56, i16* %arrayidx10.8.3, align 2, !tbaa !24
  %arrayidx.9.3 = getelementptr inbounds i16, i16* %src, i32 39
  %57 = load i16, i16* %arrayidx.9.3, align 2, !tbaa !24
  %or.9.399 = or i16 %or.8.398, %57
  %arrayidx10.9.3 = getelementptr inbounds i16, i16* %dst, i32 57
  store i16 %57, i16* %arrayidx10.9.3, align 2, !tbaa !24
  %arrayidx.10.3 = getelementptr inbounds i16, i16* %src, i32 43
  %58 = load i16, i16* %arrayidx.10.3, align 2, !tbaa !24
  %or.10.3100 = or i16 %or.9.399, %58
  %arrayidx10.10.3 = getelementptr inbounds i16, i16* %dst, i32 58
  store i16 %58, i16* %arrayidx10.10.3, align 2, !tbaa !24
  %arrayidx.11.3 = getelementptr inbounds i16, i16* %src, i32 47
  %59 = load i16, i16* %arrayidx.11.3, align 2, !tbaa !24
  %or.11.3101 = or i16 %or.10.3100, %59
  %arrayidx10.11.3 = getelementptr inbounds i16, i16* %dst, i32 59
  store i16 %59, i16* %arrayidx10.11.3, align 2, !tbaa !24
  %arrayidx.12.3 = getelementptr inbounds i16, i16* %src, i32 51
  %60 = load i16, i16* %arrayidx.12.3, align 2, !tbaa !24
  %or.12.3102 = or i16 %or.11.3101, %60
  %arrayidx10.12.3 = getelementptr inbounds i16, i16* %dst, i32 60
  store i16 %60, i16* %arrayidx10.12.3, align 2, !tbaa !24
  %arrayidx.13.3 = getelementptr inbounds i16, i16* %src, i32 55
  %61 = load i16, i16* %arrayidx.13.3, align 2, !tbaa !24
  %or.13.3103 = or i16 %or.12.3102, %61
  %arrayidx10.13.3 = getelementptr inbounds i16, i16* %dst, i32 61
  store i16 %61, i16* %arrayidx10.13.3, align 2, !tbaa !24
  %arrayidx.14.3 = getelementptr inbounds i16, i16* %src, i32 59
  %62 = load i16, i16* %arrayidx.14.3, align 2, !tbaa !24
  %or.14.3104 = or i16 %or.13.3103, %62
  %arrayidx10.14.3 = getelementptr inbounds i16, i16* %dst, i32 62
  store i16 %62, i16* %arrayidx10.14.3, align 2, !tbaa !24
  %arrayidx.15.3 = getelementptr inbounds i16, i16* %src, i32 63
  %63 = load i16, i16* %arrayidx.15.3, align 2, !tbaa !24
  %or.15.3105 = or i16 %or.14.3104, %63
  %arrayidx10.15.3 = getelementptr inbounds i16, i16* %dst, i32 63
  store i16 %63, i16* %arrayidx10.15.3, align 2, !tbaa !24
  %tobool.3 = icmp ne i16 %or.15.3105, 0
  %conv12.3 = zext i1 %tobool.3 to i8
  %arrayidx15.3 = getelementptr inbounds i8, i8* %nnz, i32 9
  store i8 %conv12.3, i8* %arrayidx15.3, align 1, !tbaa !23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nofree norecurse nounwind
define internal fastcc void @add4x4_idct_dc(i8* nocapture %p_dst, i16 signext %dc) unnamed_addr #4 {
entry:
  %conv = sext i16 %dc to i32
  %add = add nsw i32 %conv, 32
  %shr = ashr i32 %add, 6
  %0 = load i8, i8* %p_dst, align 1, !tbaa !23
  %conv3 = zext i8 %0 to i32
  %add5 = add nsw i32 %shr, %conv3
  %tobool.i = icmp ugt i32 %add5, 255
  %sub.i = sub nsw i32 0, %add5
  %shr.i = ashr i32 %sub.i, 31
  %cond.i = select i1 %tobool.i, i32 %shr.i, i32 %add5
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, i8* %p_dst, align 1, !tbaa !23
  %arrayidx7 = getelementptr inbounds i8, i8* %p_dst, i32 1
  %1 = load i8, i8* %arrayidx7, align 1, !tbaa !23
  %conv8 = zext i8 %1 to i32
  %add10 = add nsw i32 %shr, %conv8
  %tobool.i49 = icmp ugt i32 %add10, 255
  %sub.i50 = sub nsw i32 0, %add10
  %shr.i51 = ashr i32 %sub.i50, 31
  %cond.i52 = select i1 %tobool.i49, i32 %shr.i51, i32 %add10
  %conv.i53 = trunc i32 %cond.i52 to i8
  store i8 %conv.i53, i8* %arrayidx7, align 1, !tbaa !23
  %arrayidx13 = getelementptr inbounds i8, i8* %p_dst, i32 2
  %2 = load i8, i8* %arrayidx13, align 1, !tbaa !23
  %conv14 = zext i8 %2 to i32
  %add16 = add nsw i32 %shr, %conv14
  %tobool.i44 = icmp ugt i32 %add16, 255
  %sub.i45 = sub nsw i32 0, %add16
  %shr.i46 = ashr i32 %sub.i45, 31
  %cond.i47 = select i1 %tobool.i44, i32 %shr.i46, i32 %add16
  %conv.i48 = trunc i32 %cond.i47 to i8
  store i8 %conv.i48, i8* %arrayidx13, align 1, !tbaa !23
  %arrayidx19 = getelementptr inbounds i8, i8* %p_dst, i32 3
  %3 = load i8, i8* %arrayidx19, align 1, !tbaa !23
  %conv20 = zext i8 %3 to i32
  %add22 = add nsw i32 %shr, %conv20
  %tobool.i39 = icmp ugt i32 %add22, 255
  %sub.i40 = sub nsw i32 0, %add22
  %shr.i41 = ashr i32 %sub.i40, 31
  %cond.i42 = select i1 %tobool.i39, i32 %shr.i41, i32 %add22
  %conv.i43 = trunc i32 %cond.i42 to i8
  store i8 %conv.i43, i8* %arrayidx19, align 1, !tbaa !23
  %add.ptr = getelementptr inbounds i8, i8* %p_dst, i32 32
  %4 = load i8, i8* %add.ptr, align 1, !tbaa !23
  %conv3.1 = zext i8 %4 to i32
  %add5.1 = add nsw i32 %shr, %conv3.1
  %tobool.i.1 = icmp ugt i32 %add5.1, 255
  %sub.i.1 = sub nsw i32 0, %add5.1
  %shr.i.1 = ashr i32 %sub.i.1, 31
  %cond.i.1 = select i1 %tobool.i.1, i32 %shr.i.1, i32 %add5.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  store i8 %conv.i.1, i8* %add.ptr, align 1, !tbaa !23
  %arrayidx7.1 = getelementptr inbounds i8, i8* %p_dst, i32 33
  %5 = load i8, i8* %arrayidx7.1, align 1, !tbaa !23
  %conv8.1 = zext i8 %5 to i32
  %add10.1 = add nsw i32 %shr, %conv8.1
  %tobool.i49.1 = icmp ugt i32 %add10.1, 255
  %sub.i50.1 = sub nsw i32 0, %add10.1
  %shr.i51.1 = ashr i32 %sub.i50.1, 31
  %cond.i52.1 = select i1 %tobool.i49.1, i32 %shr.i51.1, i32 %add10.1
  %conv.i53.1 = trunc i32 %cond.i52.1 to i8
  store i8 %conv.i53.1, i8* %arrayidx7.1, align 1, !tbaa !23
  %arrayidx13.1 = getelementptr inbounds i8, i8* %p_dst, i32 34
  %6 = load i8, i8* %arrayidx13.1, align 1, !tbaa !23
  %conv14.1 = zext i8 %6 to i32
  %add16.1 = add nsw i32 %shr, %conv14.1
  %tobool.i44.1 = icmp ugt i32 %add16.1, 255
  %sub.i45.1 = sub nsw i32 0, %add16.1
  %shr.i46.1 = ashr i32 %sub.i45.1, 31
  %cond.i47.1 = select i1 %tobool.i44.1, i32 %shr.i46.1, i32 %add16.1
  %conv.i48.1 = trunc i32 %cond.i47.1 to i8
  store i8 %conv.i48.1, i8* %arrayidx13.1, align 1, !tbaa !23
  %arrayidx19.1 = getelementptr inbounds i8, i8* %p_dst, i32 35
  %7 = load i8, i8* %arrayidx19.1, align 1, !tbaa !23
  %conv20.1 = zext i8 %7 to i32
  %add22.1 = add nsw i32 %shr, %conv20.1
  %tobool.i39.1 = icmp ugt i32 %add22.1, 255
  %sub.i40.1 = sub nsw i32 0, %add22.1
  %shr.i41.1 = ashr i32 %sub.i40.1, 31
  %cond.i42.1 = select i1 %tobool.i39.1, i32 %shr.i41.1, i32 %add22.1
  %conv.i43.1 = trunc i32 %cond.i42.1 to i8
  store i8 %conv.i43.1, i8* %arrayidx19.1, align 1, !tbaa !23
  %add.ptr.1 = getelementptr inbounds i8, i8* %p_dst, i32 64
  %8 = load i8, i8* %add.ptr.1, align 1, !tbaa !23
  %conv3.2 = zext i8 %8 to i32
  %add5.2 = add nsw i32 %shr, %conv3.2
  %tobool.i.2 = icmp ugt i32 %add5.2, 255
  %sub.i.2 = sub nsw i32 0, %add5.2
  %shr.i.2 = ashr i32 %sub.i.2, 31
  %cond.i.2 = select i1 %tobool.i.2, i32 %shr.i.2, i32 %add5.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  store i8 %conv.i.2, i8* %add.ptr.1, align 1, !tbaa !23
  %arrayidx7.2 = getelementptr inbounds i8, i8* %p_dst, i32 65
  %9 = load i8, i8* %arrayidx7.2, align 1, !tbaa !23
  %conv8.2 = zext i8 %9 to i32
  %add10.2 = add nsw i32 %shr, %conv8.2
  %tobool.i49.2 = icmp ugt i32 %add10.2, 255
  %sub.i50.2 = sub nsw i32 0, %add10.2
  %shr.i51.2 = ashr i32 %sub.i50.2, 31
  %cond.i52.2 = select i1 %tobool.i49.2, i32 %shr.i51.2, i32 %add10.2
  %conv.i53.2 = trunc i32 %cond.i52.2 to i8
  store i8 %conv.i53.2, i8* %arrayidx7.2, align 1, !tbaa !23
  %arrayidx13.2 = getelementptr inbounds i8, i8* %p_dst, i32 66
  %10 = load i8, i8* %arrayidx13.2, align 1, !tbaa !23
  %conv14.2 = zext i8 %10 to i32
  %add16.2 = add nsw i32 %shr, %conv14.2
  %tobool.i44.2 = icmp ugt i32 %add16.2, 255
  %sub.i45.2 = sub nsw i32 0, %add16.2
  %shr.i46.2 = ashr i32 %sub.i45.2, 31
  %cond.i47.2 = select i1 %tobool.i44.2, i32 %shr.i46.2, i32 %add16.2
  %conv.i48.2 = trunc i32 %cond.i47.2 to i8
  store i8 %conv.i48.2, i8* %arrayidx13.2, align 1, !tbaa !23
  %arrayidx19.2 = getelementptr inbounds i8, i8* %p_dst, i32 67
  %11 = load i8, i8* %arrayidx19.2, align 1, !tbaa !23
  %conv20.2 = zext i8 %11 to i32
  %add22.2 = add nsw i32 %shr, %conv20.2
  %tobool.i39.2 = icmp ugt i32 %add22.2, 255
  %sub.i40.2 = sub nsw i32 0, %add22.2
  %shr.i41.2 = ashr i32 %sub.i40.2, 31
  %cond.i42.2 = select i1 %tobool.i39.2, i32 %shr.i41.2, i32 %add22.2
  %conv.i43.2 = trunc i32 %cond.i42.2 to i8
  store i8 %conv.i43.2, i8* %arrayidx19.2, align 1, !tbaa !23
  %add.ptr.2 = getelementptr inbounds i8, i8* %p_dst, i32 96
  %12 = load i8, i8* %add.ptr.2, align 1, !tbaa !23
  %conv3.3 = zext i8 %12 to i32
  %add5.3 = add nsw i32 %shr, %conv3.3
  %tobool.i.3 = icmp ugt i32 %add5.3, 255
  %sub.i.3 = sub nsw i32 0, %add5.3
  %shr.i.3 = ashr i32 %sub.i.3, 31
  %cond.i.3 = select i1 %tobool.i.3, i32 %shr.i.3, i32 %add5.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  store i8 %conv.i.3, i8* %add.ptr.2, align 1, !tbaa !23
  %arrayidx7.3 = getelementptr inbounds i8, i8* %p_dst, i32 97
  %13 = load i8, i8* %arrayidx7.3, align 1, !tbaa !23
  %conv8.3 = zext i8 %13 to i32
  %add10.3 = add nsw i32 %shr, %conv8.3
  %tobool.i49.3 = icmp ugt i32 %add10.3, 255
  %sub.i50.3 = sub nsw i32 0, %add10.3
  %shr.i51.3 = ashr i32 %sub.i50.3, 31
  %cond.i52.3 = select i1 %tobool.i49.3, i32 %shr.i51.3, i32 %add10.3
  %conv.i53.3 = trunc i32 %cond.i52.3 to i8
  store i8 %conv.i53.3, i8* %arrayidx7.3, align 1, !tbaa !23
  %arrayidx13.3 = getelementptr inbounds i8, i8* %p_dst, i32 98
  %14 = load i8, i8* %arrayidx13.3, align 1, !tbaa !23
  %conv14.3 = zext i8 %14 to i32
  %add16.3 = add nsw i32 %shr, %conv14.3
  %tobool.i44.3 = icmp ugt i32 %add16.3, 255
  %sub.i45.3 = sub nsw i32 0, %add16.3
  %shr.i46.3 = ashr i32 %sub.i45.3, 31
  %cond.i47.3 = select i1 %tobool.i44.3, i32 %shr.i46.3, i32 %add16.3
  %conv.i48.3 = trunc i32 %cond.i47.3 to i8
  store i8 %conv.i48.3, i8* %arrayidx13.3, align 1, !tbaa !23
  %arrayidx19.3 = getelementptr inbounds i8, i8* %p_dst, i32 99
  %15 = load i8, i8* %arrayidx19.3, align 1, !tbaa !23
  %conv20.3 = zext i8 %15 to i32
  %add22.3 = add nsw i32 %shr, %conv20.3
  %tobool.i39.3 = icmp ugt i32 %add22.3, 255
  %sub.i40.3 = sub nsw i32 0, %add22.3
  %shr.i41.3 = ashr i32 %sub.i40.3, 31
  %cond.i42.3 = select i1 %tobool.i39.3, i32 %shr.i41.3, i32 %add22.3
  %conv.i43.3 = trunc i32 %cond.i42.3 to i8
  store i8 %conv.i43.3, i8* %arrayidx19.3, align 1, !tbaa !23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

attributes #0 = { nofree norecurse nounwind writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { inlinehint nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 4}
!8 = !{!3, !4, i64 8}
!9 = !{!3, !4, i64 12}
!10 = !{!3, !4, i64 16}
!11 = !{!3, !4, i64 20}
!12 = !{!3, !4, i64 24}
!13 = !{!3, !4, i64 28}
!14 = !{!3, !4, i64 32}
!15 = !{!3, !4, i64 36}
!16 = !{!3, !4, i64 40}
!17 = !{!3, !4, i64 44}
!18 = !{!3, !4, i64 48}
!19 = !{!3, !4, i64 52}
!20 = !{!3, !4, i64 56}
!21 = !{!3, !4, i64 60}
!22 = !{!3, !4, i64 64}
!23 = !{!5, !5, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !5, i64 0}
!26 = !{!27, !4, i64 0}
!27 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!28 = !{!27, !4, i64 4}
!29 = !{!27, !4, i64 8}
!30 = !{!27, !4, i64 12}
!31 = !{!27, !4, i64 16}
!32 = !{!27, !4, i64 20}
