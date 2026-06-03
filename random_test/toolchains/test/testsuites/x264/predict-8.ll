; ModuleID = 'common/predict.c'
source_filename = "common/predict.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_16x16_dc_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx2 = getelementptr inbounds i8, i8* %src, i32 -32
  %1 = load i8, i8* %arrayidx2, align 1, !tbaa !2
  %conv3 = zext i8 %1 to i32
  %add4 = add nuw nsw i32 %conv, %conv3
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 31
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %2 to i32
  %add1.1 = add nuw nsw i32 %add4, %conv.1
  %arrayidx2.1 = getelementptr inbounds i8, i8* %src, i32 -31
  %3 = load i8, i8* %arrayidx2.1, align 1, !tbaa !2
  %conv3.1 = zext i8 %3 to i32
  %add4.1 = add nuw nsw i32 %add1.1, %conv3.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 63
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %4 to i32
  %add1.2 = add nuw nsw i32 %add4.1, %conv.2
  %arrayidx2.2 = getelementptr inbounds i8, i8* %src, i32 -30
  %5 = load i8, i8* %arrayidx2.2, align 1, !tbaa !2
  %conv3.2 = zext i8 %5 to i32
  %add4.2 = add nuw nsw i32 %add1.2, %conv3.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 95
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %6 to i32
  %add1.3 = add nuw nsw i32 %add4.2, %conv.3
  %arrayidx2.3 = getelementptr inbounds i8, i8* %src, i32 -29
  %7 = load i8, i8* %arrayidx2.3, align 1, !tbaa !2
  %conv3.3 = zext i8 %7 to i32
  %add4.3 = add nuw nsw i32 %add1.3, %conv3.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %src, i32 127
  %8 = load i8, i8* %arrayidx.4, align 1, !tbaa !2
  %conv.4 = zext i8 %8 to i32
  %add1.4 = add nuw nsw i32 %add4.3, %conv.4
  %arrayidx2.4 = getelementptr inbounds i8, i8* %src, i32 -28
  %9 = load i8, i8* %arrayidx2.4, align 1, !tbaa !2
  %conv3.4 = zext i8 %9 to i32
  %add4.4 = add nuw nsw i32 %add1.4, %conv3.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %src, i32 159
  %10 = load i8, i8* %arrayidx.5, align 1, !tbaa !2
  %conv.5 = zext i8 %10 to i32
  %add1.5 = add nuw nsw i32 %add4.4, %conv.5
  %arrayidx2.5 = getelementptr inbounds i8, i8* %src, i32 -27
  %11 = load i8, i8* %arrayidx2.5, align 1, !tbaa !2
  %conv3.5 = zext i8 %11 to i32
  %add4.5 = add nuw nsw i32 %add1.5, %conv3.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %src, i32 191
  %12 = load i8, i8* %arrayidx.6, align 1, !tbaa !2
  %conv.6 = zext i8 %12 to i32
  %add1.6 = add nuw nsw i32 %add4.5, %conv.6
  %arrayidx2.6 = getelementptr inbounds i8, i8* %src, i32 -26
  %13 = load i8, i8* %arrayidx2.6, align 1, !tbaa !2
  %conv3.6 = zext i8 %13 to i32
  %add4.6 = add nuw nsw i32 %add1.6, %conv3.6
  %arrayidx.7 = getelementptr inbounds i8, i8* %src, i32 223
  %14 = load i8, i8* %arrayidx.7, align 1, !tbaa !2
  %conv.7 = zext i8 %14 to i32
  %add1.7 = add nuw nsw i32 %add4.6, %conv.7
  %arrayidx2.7 = getelementptr inbounds i8, i8* %src, i32 -25
  %15 = load i8, i8* %arrayidx2.7, align 1, !tbaa !2
  %conv3.7 = zext i8 %15 to i32
  %add4.7 = add nuw nsw i32 %add1.7, %conv3.7
  %arrayidx.8 = getelementptr inbounds i8, i8* %src, i32 255
  %16 = load i8, i8* %arrayidx.8, align 1, !tbaa !2
  %conv.8 = zext i8 %16 to i32
  %add1.8 = add nuw nsw i32 %add4.7, %conv.8
  %arrayidx2.8 = getelementptr inbounds i8, i8* %src, i32 -24
  %17 = load i8, i8* %arrayidx2.8, align 1, !tbaa !2
  %conv3.8 = zext i8 %17 to i32
  %add4.8 = add nuw nsw i32 %add1.8, %conv3.8
  %arrayidx.9 = getelementptr inbounds i8, i8* %src, i32 287
  %18 = load i8, i8* %arrayidx.9, align 1, !tbaa !2
  %conv.9 = zext i8 %18 to i32
  %add1.9 = add nuw nsw i32 %add4.8, %conv.9
  %arrayidx2.9 = getelementptr inbounds i8, i8* %src, i32 -23
  %19 = load i8, i8* %arrayidx2.9, align 1, !tbaa !2
  %conv3.9 = zext i8 %19 to i32
  %add4.9 = add nuw nsw i32 %add1.9, %conv3.9
  %arrayidx.10 = getelementptr inbounds i8, i8* %src, i32 319
  %20 = load i8, i8* %arrayidx.10, align 1, !tbaa !2
  %conv.10 = zext i8 %20 to i32
  %add1.10 = add nuw nsw i32 %add4.9, %conv.10
  %arrayidx2.10 = getelementptr inbounds i8, i8* %src, i32 -22
  %21 = load i8, i8* %arrayidx2.10, align 1, !tbaa !2
  %conv3.10 = zext i8 %21 to i32
  %add4.10 = add nuw nsw i32 %add1.10, %conv3.10
  %arrayidx.11 = getelementptr inbounds i8, i8* %src, i32 351
  %22 = load i8, i8* %arrayidx.11, align 1, !tbaa !2
  %conv.11 = zext i8 %22 to i32
  %add1.11 = add nuw nsw i32 %add4.10, %conv.11
  %arrayidx2.11 = getelementptr inbounds i8, i8* %src, i32 -21
  %23 = load i8, i8* %arrayidx2.11, align 1, !tbaa !2
  %conv3.11 = zext i8 %23 to i32
  %add4.11 = add nuw nsw i32 %add1.11, %conv3.11
  %arrayidx.12 = getelementptr inbounds i8, i8* %src, i32 383
  %24 = load i8, i8* %arrayidx.12, align 1, !tbaa !2
  %conv.12 = zext i8 %24 to i32
  %add1.12 = add nuw nsw i32 %add4.11, %conv.12
  %arrayidx2.12 = getelementptr inbounds i8, i8* %src, i32 -20
  %25 = load i8, i8* %arrayidx2.12, align 1, !tbaa !2
  %conv3.12 = zext i8 %25 to i32
  %add4.12 = add nuw nsw i32 %add1.12, %conv3.12
  %arrayidx.13 = getelementptr inbounds i8, i8* %src, i32 415
  %26 = load i8, i8* %arrayidx.13, align 1, !tbaa !2
  %conv.13 = zext i8 %26 to i32
  %add1.13 = add nuw nsw i32 %add4.12, %conv.13
  %arrayidx2.13 = getelementptr inbounds i8, i8* %src, i32 -19
  %27 = load i8, i8* %arrayidx2.13, align 1, !tbaa !2
  %conv3.13 = zext i8 %27 to i32
  %add4.13 = add nuw nsw i32 %add1.13, %conv3.13
  %arrayidx.14 = getelementptr inbounds i8, i8* %src, i32 447
  %28 = load i8, i8* %arrayidx.14, align 1, !tbaa !2
  %conv.14 = zext i8 %28 to i32
  %add1.14 = add nuw nsw i32 %add4.13, %conv.14
  %arrayidx2.14 = getelementptr inbounds i8, i8* %src, i32 -18
  %29 = load i8, i8* %arrayidx2.14, align 1, !tbaa !2
  %conv3.14 = zext i8 %29 to i32
  %add4.14 = add nuw nsw i32 %add1.14, %conv3.14
  %arrayidx.15 = getelementptr inbounds i8, i8* %src, i32 479
  %30 = load i8, i8* %arrayidx.15, align 1, !tbaa !2
  %conv.15 = zext i8 %30 to i32
  %add1.15 = add nuw nsw i32 %add4.14, %conv.15
  %arrayidx2.15 = getelementptr inbounds i8, i8* %src, i32 -17
  %31 = load i8, i8* %arrayidx2.15, align 1, !tbaa !2
  %conv3.15 = zext i8 %31 to i32
  %add4.15 = add nuw nsw i32 %add1.15, %conv3.15
  %add5 = add nuw nsw i32 %add4.15, 16
  %shr = ashr i32 %add5, 5
  %mul6 = mul nuw i32 %shr, 16843009
  %i13 = bitcast i8* %src to i32*
  store i32 %mul6, i32* %i13, align 4, !tbaa !2
  %add.ptr14 = getelementptr inbounds i8, i8* %src, i32 4
  %i15 = bitcast i8* %add.ptr14 to i32*
  store i32 %mul6, i32* %i15, align 4, !tbaa !2
  %add.ptr16 = getelementptr inbounds i8, i8* %src, i32 8
  %i17 = bitcast i8* %add.ptr16 to i32*
  store i32 %mul6, i32* %i17, align 4, !tbaa !2
  %add.ptr18 = getelementptr inbounds i8, i8* %src, i32 12
  %i19 = bitcast i8* %add.ptr18 to i32*
  store i32 %mul6, i32* %i19, align 4, !tbaa !2
  %add.ptr20 = getelementptr inbounds i8, i8* %src, i32 32
  %i13.1 = bitcast i8* %add.ptr20 to i32*
  store i32 %mul6, i32* %i13.1, align 4, !tbaa !2
  %add.ptr14.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i15.1 = bitcast i8* %add.ptr14.1 to i32*
  store i32 %mul6, i32* %i15.1, align 4, !tbaa !2
  %add.ptr16.1 = getelementptr inbounds i8, i8* %src, i32 40
  %i17.1 = bitcast i8* %add.ptr16.1 to i32*
  store i32 %mul6, i32* %i17.1, align 4, !tbaa !2
  %add.ptr18.1 = getelementptr inbounds i8, i8* %src, i32 44
  %i19.1 = bitcast i8* %add.ptr18.1 to i32*
  store i32 %mul6, i32* %i19.1, align 4, !tbaa !2
  %add.ptr20.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i13.2 = bitcast i8* %add.ptr20.1 to i32*
  store i32 %mul6, i32* %i13.2, align 4, !tbaa !2
  %add.ptr14.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i15.2 = bitcast i8* %add.ptr14.2 to i32*
  store i32 %mul6, i32* %i15.2, align 4, !tbaa !2
  %add.ptr16.2 = getelementptr inbounds i8, i8* %src, i32 72
  %i17.2 = bitcast i8* %add.ptr16.2 to i32*
  store i32 %mul6, i32* %i17.2, align 4, !tbaa !2
  %add.ptr18.2 = getelementptr inbounds i8, i8* %src, i32 76
  %i19.2 = bitcast i8* %add.ptr18.2 to i32*
  store i32 %mul6, i32* %i19.2, align 4, !tbaa !2
  %add.ptr20.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i13.3 = bitcast i8* %add.ptr20.2 to i32*
  store i32 %mul6, i32* %i13.3, align 4, !tbaa !2
  %add.ptr14.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i15.3 = bitcast i8* %add.ptr14.3 to i32*
  store i32 %mul6, i32* %i15.3, align 4, !tbaa !2
  %add.ptr16.3 = getelementptr inbounds i8, i8* %src, i32 104
  %i17.3 = bitcast i8* %add.ptr16.3 to i32*
  store i32 %mul6, i32* %i17.3, align 4, !tbaa !2
  %add.ptr18.3 = getelementptr inbounds i8, i8* %src, i32 108
  %i19.3 = bitcast i8* %add.ptr18.3 to i32*
  store i32 %mul6, i32* %i19.3, align 4, !tbaa !2
  %add.ptr20.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i13.4 = bitcast i8* %add.ptr20.3 to i32*
  store i32 %mul6, i32* %i13.4, align 4, !tbaa !2
  %add.ptr14.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i15.4 = bitcast i8* %add.ptr14.4 to i32*
  store i32 %mul6, i32* %i15.4, align 4, !tbaa !2
  %add.ptr16.4 = getelementptr inbounds i8, i8* %src, i32 136
  %i17.4 = bitcast i8* %add.ptr16.4 to i32*
  store i32 %mul6, i32* %i17.4, align 4, !tbaa !2
  %add.ptr18.4 = getelementptr inbounds i8, i8* %src, i32 140
  %i19.4 = bitcast i8* %add.ptr18.4 to i32*
  store i32 %mul6, i32* %i19.4, align 4, !tbaa !2
  %add.ptr20.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i13.5 = bitcast i8* %add.ptr20.4 to i32*
  store i32 %mul6, i32* %i13.5, align 4, !tbaa !2
  %add.ptr14.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i15.5 = bitcast i8* %add.ptr14.5 to i32*
  store i32 %mul6, i32* %i15.5, align 4, !tbaa !2
  %add.ptr16.5 = getelementptr inbounds i8, i8* %src, i32 168
  %i17.5 = bitcast i8* %add.ptr16.5 to i32*
  store i32 %mul6, i32* %i17.5, align 4, !tbaa !2
  %add.ptr18.5 = getelementptr inbounds i8, i8* %src, i32 172
  %i19.5 = bitcast i8* %add.ptr18.5 to i32*
  store i32 %mul6, i32* %i19.5, align 4, !tbaa !2
  %add.ptr20.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i13.6 = bitcast i8* %add.ptr20.5 to i32*
  store i32 %mul6, i32* %i13.6, align 4, !tbaa !2
  %add.ptr14.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i15.6 = bitcast i8* %add.ptr14.6 to i32*
  store i32 %mul6, i32* %i15.6, align 4, !tbaa !2
  %add.ptr16.6 = getelementptr inbounds i8, i8* %src, i32 200
  %i17.6 = bitcast i8* %add.ptr16.6 to i32*
  store i32 %mul6, i32* %i17.6, align 4, !tbaa !2
  %add.ptr18.6 = getelementptr inbounds i8, i8* %src, i32 204
  %i19.6 = bitcast i8* %add.ptr18.6 to i32*
  store i32 %mul6, i32* %i19.6, align 4, !tbaa !2
  %add.ptr20.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i13.7 = bitcast i8* %add.ptr20.6 to i32*
  store i32 %mul6, i32* %i13.7, align 4, !tbaa !2
  %add.ptr14.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i15.7 = bitcast i8* %add.ptr14.7 to i32*
  store i32 %mul6, i32* %i15.7, align 4, !tbaa !2
  %add.ptr16.7 = getelementptr inbounds i8, i8* %src, i32 232
  %i17.7 = bitcast i8* %add.ptr16.7 to i32*
  store i32 %mul6, i32* %i17.7, align 4, !tbaa !2
  %add.ptr18.7 = getelementptr inbounds i8, i8* %src, i32 236
  %i19.7 = bitcast i8* %add.ptr18.7 to i32*
  store i32 %mul6, i32* %i19.7, align 4, !tbaa !2
  %add.ptr20.7 = getelementptr inbounds i8, i8* %src, i32 256
  %i13.8 = bitcast i8* %add.ptr20.7 to i32*
  store i32 %mul6, i32* %i13.8, align 4, !tbaa !2
  %add.ptr14.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i15.8 = bitcast i8* %add.ptr14.8 to i32*
  store i32 %mul6, i32* %i15.8, align 4, !tbaa !2
  %add.ptr16.8 = getelementptr inbounds i8, i8* %src, i32 264
  %i17.8 = bitcast i8* %add.ptr16.8 to i32*
  store i32 %mul6, i32* %i17.8, align 4, !tbaa !2
  %add.ptr18.8 = getelementptr inbounds i8, i8* %src, i32 268
  %i19.8 = bitcast i8* %add.ptr18.8 to i32*
  store i32 %mul6, i32* %i19.8, align 4, !tbaa !2
  %add.ptr20.8 = getelementptr inbounds i8, i8* %src, i32 288
  %i13.9 = bitcast i8* %add.ptr20.8 to i32*
  store i32 %mul6, i32* %i13.9, align 4, !tbaa !2
  %add.ptr14.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i15.9 = bitcast i8* %add.ptr14.9 to i32*
  store i32 %mul6, i32* %i15.9, align 4, !tbaa !2
  %add.ptr16.9 = getelementptr inbounds i8, i8* %src, i32 296
  %i17.9 = bitcast i8* %add.ptr16.9 to i32*
  store i32 %mul6, i32* %i17.9, align 4, !tbaa !2
  %add.ptr18.9 = getelementptr inbounds i8, i8* %src, i32 300
  %i19.9 = bitcast i8* %add.ptr18.9 to i32*
  store i32 %mul6, i32* %i19.9, align 4, !tbaa !2
  %add.ptr20.9 = getelementptr inbounds i8, i8* %src, i32 320
  %i13.10 = bitcast i8* %add.ptr20.9 to i32*
  store i32 %mul6, i32* %i13.10, align 4, !tbaa !2
  %add.ptr14.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i15.10 = bitcast i8* %add.ptr14.10 to i32*
  store i32 %mul6, i32* %i15.10, align 4, !tbaa !2
  %add.ptr16.10 = getelementptr inbounds i8, i8* %src, i32 328
  %i17.10 = bitcast i8* %add.ptr16.10 to i32*
  store i32 %mul6, i32* %i17.10, align 4, !tbaa !2
  %add.ptr18.10 = getelementptr inbounds i8, i8* %src, i32 332
  %i19.10 = bitcast i8* %add.ptr18.10 to i32*
  store i32 %mul6, i32* %i19.10, align 4, !tbaa !2
  %add.ptr20.10 = getelementptr inbounds i8, i8* %src, i32 352
  %i13.11 = bitcast i8* %add.ptr20.10 to i32*
  store i32 %mul6, i32* %i13.11, align 4, !tbaa !2
  %add.ptr14.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i15.11 = bitcast i8* %add.ptr14.11 to i32*
  store i32 %mul6, i32* %i15.11, align 4, !tbaa !2
  %add.ptr16.11 = getelementptr inbounds i8, i8* %src, i32 360
  %i17.11 = bitcast i8* %add.ptr16.11 to i32*
  store i32 %mul6, i32* %i17.11, align 4, !tbaa !2
  %add.ptr18.11 = getelementptr inbounds i8, i8* %src, i32 364
  %i19.11 = bitcast i8* %add.ptr18.11 to i32*
  store i32 %mul6, i32* %i19.11, align 4, !tbaa !2
  %add.ptr20.11 = getelementptr inbounds i8, i8* %src, i32 384
  %i13.12 = bitcast i8* %add.ptr20.11 to i32*
  store i32 %mul6, i32* %i13.12, align 4, !tbaa !2
  %add.ptr14.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i15.12 = bitcast i8* %add.ptr14.12 to i32*
  store i32 %mul6, i32* %i15.12, align 4, !tbaa !2
  %add.ptr16.12 = getelementptr inbounds i8, i8* %src, i32 392
  %i17.12 = bitcast i8* %add.ptr16.12 to i32*
  store i32 %mul6, i32* %i17.12, align 4, !tbaa !2
  %add.ptr18.12 = getelementptr inbounds i8, i8* %src, i32 396
  %i19.12 = bitcast i8* %add.ptr18.12 to i32*
  store i32 %mul6, i32* %i19.12, align 4, !tbaa !2
  %add.ptr20.12 = getelementptr inbounds i8, i8* %src, i32 416
  %i13.13 = bitcast i8* %add.ptr20.12 to i32*
  store i32 %mul6, i32* %i13.13, align 4, !tbaa !2
  %add.ptr14.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i15.13 = bitcast i8* %add.ptr14.13 to i32*
  store i32 %mul6, i32* %i15.13, align 4, !tbaa !2
  %add.ptr16.13 = getelementptr inbounds i8, i8* %src, i32 424
  %i17.13 = bitcast i8* %add.ptr16.13 to i32*
  store i32 %mul6, i32* %i17.13, align 4, !tbaa !2
  %add.ptr18.13 = getelementptr inbounds i8, i8* %src, i32 428
  %i19.13 = bitcast i8* %add.ptr18.13 to i32*
  store i32 %mul6, i32* %i19.13, align 4, !tbaa !2
  %add.ptr20.13 = getelementptr inbounds i8, i8* %src, i32 448
  %i13.14 = bitcast i8* %add.ptr20.13 to i32*
  store i32 %mul6, i32* %i13.14, align 4, !tbaa !2
  %add.ptr14.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i15.14 = bitcast i8* %add.ptr14.14 to i32*
  store i32 %mul6, i32* %i15.14, align 4, !tbaa !2
  %add.ptr16.14 = getelementptr inbounds i8, i8* %src, i32 456
  %i17.14 = bitcast i8* %add.ptr16.14 to i32*
  store i32 %mul6, i32* %i17.14, align 4, !tbaa !2
  %add.ptr18.14 = getelementptr inbounds i8, i8* %src, i32 460
  %i19.14 = bitcast i8* %add.ptr18.14 to i32*
  store i32 %mul6, i32* %i19.14, align 4, !tbaa !2
  %add.ptr20.14 = getelementptr inbounds i8, i8* %src, i32 480
  %i13.15 = bitcast i8* %add.ptr20.14 to i32*
  store i32 %mul6, i32* %i13.15, align 4, !tbaa !2
  %add.ptr14.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i15.15 = bitcast i8* %add.ptr14.15 to i32*
  store i32 %mul6, i32* %i15.15, align 4, !tbaa !2
  %add.ptr16.15 = getelementptr inbounds i8, i8* %src, i32 488
  %i17.15 = bitcast i8* %add.ptr16.15 to i32*
  store i32 %mul6, i32* %i17.15, align 4, !tbaa !2
  %add.ptr18.15 = getelementptr inbounds i8, i8* %src, i32 492
  %i19.15 = bitcast i8* %add.ptr18.15 to i32*
  store i32 %mul6, i32* %i19.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_16x16_h_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %mul = mul nuw i32 %conv, 16843009
  %i1 = bitcast i8* %src to i32*
  store i32 %mul, i32* %i1, align 4, !tbaa !2
  %add.ptr2 = getelementptr inbounds i8, i8* %src, i32 4
  %i3 = bitcast i8* %add.ptr2 to i32*
  store i32 %mul, i32* %i3, align 4, !tbaa !2
  %add.ptr4 = getelementptr inbounds i8, i8* %src, i32 8
  %i5 = bitcast i8* %add.ptr4 to i32*
  store i32 %mul, i32* %i5, align 4, !tbaa !2
  %add.ptr6 = getelementptr inbounds i8, i8* %src, i32 12
  %i7 = bitcast i8* %add.ptr6 to i32*
  store i32 %mul, i32* %i7, align 4, !tbaa !2
  %add.ptr8 = getelementptr inbounds i8, i8* %src, i32 32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %1 to i32
  %mul.1 = mul nuw i32 %conv.1, 16843009
  %i1.1 = bitcast i8* %add.ptr8 to i32*
  store i32 %mul.1, i32* %i1.1, align 4, !tbaa !2
  %add.ptr2.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i3.1 = bitcast i8* %add.ptr2.1 to i32*
  store i32 %mul.1, i32* %i3.1, align 4, !tbaa !2
  %add.ptr4.1 = getelementptr inbounds i8, i8* %src, i32 40
  %i5.1 = bitcast i8* %add.ptr4.1 to i32*
  store i32 %mul.1, i32* %i5.1, align 4, !tbaa !2
  %add.ptr6.1 = getelementptr inbounds i8, i8* %src, i32 44
  %i7.1 = bitcast i8* %add.ptr6.1 to i32*
  store i32 %mul.1, i32* %i7.1, align 4, !tbaa !2
  %add.ptr8.1 = getelementptr inbounds i8, i8* %src, i32 64
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %2 to i32
  %mul.2 = mul nuw i32 %conv.2, 16843009
  %i1.2 = bitcast i8* %add.ptr8.1 to i32*
  store i32 %mul.2, i32* %i1.2, align 4, !tbaa !2
  %add.ptr2.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i3.2 = bitcast i8* %add.ptr2.2 to i32*
  store i32 %mul.2, i32* %i3.2, align 4, !tbaa !2
  %add.ptr4.2 = getelementptr inbounds i8, i8* %src, i32 72
  %i5.2 = bitcast i8* %add.ptr4.2 to i32*
  store i32 %mul.2, i32* %i5.2, align 4, !tbaa !2
  %add.ptr6.2 = getelementptr inbounds i8, i8* %src, i32 76
  %i7.2 = bitcast i8* %add.ptr6.2 to i32*
  store i32 %mul.2, i32* %i7.2, align 4, !tbaa !2
  %add.ptr8.2 = getelementptr inbounds i8, i8* %src, i32 96
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %3 to i32
  %mul.3 = mul nuw i32 %conv.3, 16843009
  %i1.3 = bitcast i8* %add.ptr8.2 to i32*
  store i32 %mul.3, i32* %i1.3, align 4, !tbaa !2
  %add.ptr2.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i3.3 = bitcast i8* %add.ptr2.3 to i32*
  store i32 %mul.3, i32* %i3.3, align 4, !tbaa !2
  %add.ptr4.3 = getelementptr inbounds i8, i8* %src, i32 104
  %i5.3 = bitcast i8* %add.ptr4.3 to i32*
  store i32 %mul.3, i32* %i5.3, align 4, !tbaa !2
  %add.ptr6.3 = getelementptr inbounds i8, i8* %src, i32 108
  %i7.3 = bitcast i8* %add.ptr6.3 to i32*
  store i32 %mul.3, i32* %i7.3, align 4, !tbaa !2
  %add.ptr8.3 = getelementptr inbounds i8, i8* %src, i32 128
  %arrayidx.4 = getelementptr inbounds i8, i8* %src, i32 127
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !2
  %conv.4 = zext i8 %4 to i32
  %mul.4 = mul nuw i32 %conv.4, 16843009
  %i1.4 = bitcast i8* %add.ptr8.3 to i32*
  store i32 %mul.4, i32* %i1.4, align 4, !tbaa !2
  %add.ptr2.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i3.4 = bitcast i8* %add.ptr2.4 to i32*
  store i32 %mul.4, i32* %i3.4, align 4, !tbaa !2
  %add.ptr4.4 = getelementptr inbounds i8, i8* %src, i32 136
  %i5.4 = bitcast i8* %add.ptr4.4 to i32*
  store i32 %mul.4, i32* %i5.4, align 4, !tbaa !2
  %add.ptr6.4 = getelementptr inbounds i8, i8* %src, i32 140
  %i7.4 = bitcast i8* %add.ptr6.4 to i32*
  store i32 %mul.4, i32* %i7.4, align 4, !tbaa !2
  %add.ptr8.4 = getelementptr inbounds i8, i8* %src, i32 160
  %arrayidx.5 = getelementptr inbounds i8, i8* %src, i32 159
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !2
  %conv.5 = zext i8 %5 to i32
  %mul.5 = mul nuw i32 %conv.5, 16843009
  %i1.5 = bitcast i8* %add.ptr8.4 to i32*
  store i32 %mul.5, i32* %i1.5, align 4, !tbaa !2
  %add.ptr2.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i3.5 = bitcast i8* %add.ptr2.5 to i32*
  store i32 %mul.5, i32* %i3.5, align 4, !tbaa !2
  %add.ptr4.5 = getelementptr inbounds i8, i8* %src, i32 168
  %i5.5 = bitcast i8* %add.ptr4.5 to i32*
  store i32 %mul.5, i32* %i5.5, align 4, !tbaa !2
  %add.ptr6.5 = getelementptr inbounds i8, i8* %src, i32 172
  %i7.5 = bitcast i8* %add.ptr6.5 to i32*
  store i32 %mul.5, i32* %i7.5, align 4, !tbaa !2
  %add.ptr8.5 = getelementptr inbounds i8, i8* %src, i32 192
  %arrayidx.6 = getelementptr inbounds i8, i8* %src, i32 191
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !2
  %conv.6 = zext i8 %6 to i32
  %mul.6 = mul nuw i32 %conv.6, 16843009
  %i1.6 = bitcast i8* %add.ptr8.5 to i32*
  store i32 %mul.6, i32* %i1.6, align 4, !tbaa !2
  %add.ptr2.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i3.6 = bitcast i8* %add.ptr2.6 to i32*
  store i32 %mul.6, i32* %i3.6, align 4, !tbaa !2
  %add.ptr4.6 = getelementptr inbounds i8, i8* %src, i32 200
  %i5.6 = bitcast i8* %add.ptr4.6 to i32*
  store i32 %mul.6, i32* %i5.6, align 4, !tbaa !2
  %add.ptr6.6 = getelementptr inbounds i8, i8* %src, i32 204
  %i7.6 = bitcast i8* %add.ptr6.6 to i32*
  store i32 %mul.6, i32* %i7.6, align 4, !tbaa !2
  %add.ptr8.6 = getelementptr inbounds i8, i8* %src, i32 224
  %arrayidx.7 = getelementptr inbounds i8, i8* %src, i32 223
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !2
  %conv.7 = zext i8 %7 to i32
  %mul.7 = mul nuw i32 %conv.7, 16843009
  %i1.7 = bitcast i8* %add.ptr8.6 to i32*
  store i32 %mul.7, i32* %i1.7, align 4, !tbaa !2
  %add.ptr2.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i3.7 = bitcast i8* %add.ptr2.7 to i32*
  store i32 %mul.7, i32* %i3.7, align 4, !tbaa !2
  %add.ptr4.7 = getelementptr inbounds i8, i8* %src, i32 232
  %i5.7 = bitcast i8* %add.ptr4.7 to i32*
  store i32 %mul.7, i32* %i5.7, align 4, !tbaa !2
  %add.ptr6.7 = getelementptr inbounds i8, i8* %src, i32 236
  %i7.7 = bitcast i8* %add.ptr6.7 to i32*
  store i32 %mul.7, i32* %i7.7, align 4, !tbaa !2
  %add.ptr8.7 = getelementptr inbounds i8, i8* %src, i32 256
  %arrayidx.8 = getelementptr inbounds i8, i8* %src, i32 255
  %8 = load i8, i8* %arrayidx.8, align 1, !tbaa !2
  %conv.8 = zext i8 %8 to i32
  %mul.8 = mul nuw i32 %conv.8, 16843009
  %i1.8 = bitcast i8* %add.ptr8.7 to i32*
  store i32 %mul.8, i32* %i1.8, align 4, !tbaa !2
  %add.ptr2.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i3.8 = bitcast i8* %add.ptr2.8 to i32*
  store i32 %mul.8, i32* %i3.8, align 4, !tbaa !2
  %add.ptr4.8 = getelementptr inbounds i8, i8* %src, i32 264
  %i5.8 = bitcast i8* %add.ptr4.8 to i32*
  store i32 %mul.8, i32* %i5.8, align 4, !tbaa !2
  %add.ptr6.8 = getelementptr inbounds i8, i8* %src, i32 268
  %i7.8 = bitcast i8* %add.ptr6.8 to i32*
  store i32 %mul.8, i32* %i7.8, align 4, !tbaa !2
  %add.ptr8.8 = getelementptr inbounds i8, i8* %src, i32 288
  %arrayidx.9 = getelementptr inbounds i8, i8* %src, i32 287
  %9 = load i8, i8* %arrayidx.9, align 1, !tbaa !2
  %conv.9 = zext i8 %9 to i32
  %mul.9 = mul nuw i32 %conv.9, 16843009
  %i1.9 = bitcast i8* %add.ptr8.8 to i32*
  store i32 %mul.9, i32* %i1.9, align 4, !tbaa !2
  %add.ptr2.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i3.9 = bitcast i8* %add.ptr2.9 to i32*
  store i32 %mul.9, i32* %i3.9, align 4, !tbaa !2
  %add.ptr4.9 = getelementptr inbounds i8, i8* %src, i32 296
  %i5.9 = bitcast i8* %add.ptr4.9 to i32*
  store i32 %mul.9, i32* %i5.9, align 4, !tbaa !2
  %add.ptr6.9 = getelementptr inbounds i8, i8* %src, i32 300
  %i7.9 = bitcast i8* %add.ptr6.9 to i32*
  store i32 %mul.9, i32* %i7.9, align 4, !tbaa !2
  %add.ptr8.9 = getelementptr inbounds i8, i8* %src, i32 320
  %arrayidx.10 = getelementptr inbounds i8, i8* %src, i32 319
  %10 = load i8, i8* %arrayidx.10, align 1, !tbaa !2
  %conv.10 = zext i8 %10 to i32
  %mul.10 = mul nuw i32 %conv.10, 16843009
  %i1.10 = bitcast i8* %add.ptr8.9 to i32*
  store i32 %mul.10, i32* %i1.10, align 4, !tbaa !2
  %add.ptr2.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i3.10 = bitcast i8* %add.ptr2.10 to i32*
  store i32 %mul.10, i32* %i3.10, align 4, !tbaa !2
  %add.ptr4.10 = getelementptr inbounds i8, i8* %src, i32 328
  %i5.10 = bitcast i8* %add.ptr4.10 to i32*
  store i32 %mul.10, i32* %i5.10, align 4, !tbaa !2
  %add.ptr6.10 = getelementptr inbounds i8, i8* %src, i32 332
  %i7.10 = bitcast i8* %add.ptr6.10 to i32*
  store i32 %mul.10, i32* %i7.10, align 4, !tbaa !2
  %add.ptr8.10 = getelementptr inbounds i8, i8* %src, i32 352
  %arrayidx.11 = getelementptr inbounds i8, i8* %src, i32 351
  %11 = load i8, i8* %arrayidx.11, align 1, !tbaa !2
  %conv.11 = zext i8 %11 to i32
  %mul.11 = mul nuw i32 %conv.11, 16843009
  %i1.11 = bitcast i8* %add.ptr8.10 to i32*
  store i32 %mul.11, i32* %i1.11, align 4, !tbaa !2
  %add.ptr2.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i3.11 = bitcast i8* %add.ptr2.11 to i32*
  store i32 %mul.11, i32* %i3.11, align 4, !tbaa !2
  %add.ptr4.11 = getelementptr inbounds i8, i8* %src, i32 360
  %i5.11 = bitcast i8* %add.ptr4.11 to i32*
  store i32 %mul.11, i32* %i5.11, align 4, !tbaa !2
  %add.ptr6.11 = getelementptr inbounds i8, i8* %src, i32 364
  %i7.11 = bitcast i8* %add.ptr6.11 to i32*
  store i32 %mul.11, i32* %i7.11, align 4, !tbaa !2
  %add.ptr8.11 = getelementptr inbounds i8, i8* %src, i32 384
  %arrayidx.12 = getelementptr inbounds i8, i8* %src, i32 383
  %12 = load i8, i8* %arrayidx.12, align 1, !tbaa !2
  %conv.12 = zext i8 %12 to i32
  %mul.12 = mul nuw i32 %conv.12, 16843009
  %i1.12 = bitcast i8* %add.ptr8.11 to i32*
  store i32 %mul.12, i32* %i1.12, align 4, !tbaa !2
  %add.ptr2.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i3.12 = bitcast i8* %add.ptr2.12 to i32*
  store i32 %mul.12, i32* %i3.12, align 4, !tbaa !2
  %add.ptr4.12 = getelementptr inbounds i8, i8* %src, i32 392
  %i5.12 = bitcast i8* %add.ptr4.12 to i32*
  store i32 %mul.12, i32* %i5.12, align 4, !tbaa !2
  %add.ptr6.12 = getelementptr inbounds i8, i8* %src, i32 396
  %i7.12 = bitcast i8* %add.ptr6.12 to i32*
  store i32 %mul.12, i32* %i7.12, align 4, !tbaa !2
  %add.ptr8.12 = getelementptr inbounds i8, i8* %src, i32 416
  %arrayidx.13 = getelementptr inbounds i8, i8* %src, i32 415
  %13 = load i8, i8* %arrayidx.13, align 1, !tbaa !2
  %conv.13 = zext i8 %13 to i32
  %mul.13 = mul nuw i32 %conv.13, 16843009
  %i1.13 = bitcast i8* %add.ptr8.12 to i32*
  store i32 %mul.13, i32* %i1.13, align 4, !tbaa !2
  %add.ptr2.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i3.13 = bitcast i8* %add.ptr2.13 to i32*
  store i32 %mul.13, i32* %i3.13, align 4, !tbaa !2
  %add.ptr4.13 = getelementptr inbounds i8, i8* %src, i32 424
  %i5.13 = bitcast i8* %add.ptr4.13 to i32*
  store i32 %mul.13, i32* %i5.13, align 4, !tbaa !2
  %add.ptr6.13 = getelementptr inbounds i8, i8* %src, i32 428
  %i7.13 = bitcast i8* %add.ptr6.13 to i32*
  store i32 %mul.13, i32* %i7.13, align 4, !tbaa !2
  %add.ptr8.13 = getelementptr inbounds i8, i8* %src, i32 448
  %arrayidx.14 = getelementptr inbounds i8, i8* %src, i32 447
  %14 = load i8, i8* %arrayidx.14, align 1, !tbaa !2
  %conv.14 = zext i8 %14 to i32
  %mul.14 = mul nuw i32 %conv.14, 16843009
  %i1.14 = bitcast i8* %add.ptr8.13 to i32*
  store i32 %mul.14, i32* %i1.14, align 4, !tbaa !2
  %add.ptr2.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i3.14 = bitcast i8* %add.ptr2.14 to i32*
  store i32 %mul.14, i32* %i3.14, align 4, !tbaa !2
  %add.ptr4.14 = getelementptr inbounds i8, i8* %src, i32 456
  %i5.14 = bitcast i8* %add.ptr4.14 to i32*
  store i32 %mul.14, i32* %i5.14, align 4, !tbaa !2
  %add.ptr6.14 = getelementptr inbounds i8, i8* %src, i32 460
  %i7.14 = bitcast i8* %add.ptr6.14 to i32*
  store i32 %mul.14, i32* %i7.14, align 4, !tbaa !2
  %add.ptr8.14 = getelementptr inbounds i8, i8* %src, i32 480
  %arrayidx.15 = getelementptr inbounds i8, i8* %src, i32 479
  %15 = load i8, i8* %arrayidx.15, align 1, !tbaa !2
  %conv.15 = zext i8 %15 to i32
  %mul.15 = mul nuw i32 %conv.15, 16843009
  %i1.15 = bitcast i8* %add.ptr8.14 to i32*
  store i32 %mul.15, i32* %i1.15, align 4, !tbaa !2
  %add.ptr2.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i3.15 = bitcast i8* %add.ptr2.15 to i32*
  store i32 %mul.15, i32* %i3.15, align 4, !tbaa !2
  %add.ptr4.15 = getelementptr inbounds i8, i8* %src, i32 488
  %i5.15 = bitcast i8* %add.ptr4.15 to i32*
  store i32 %mul.15, i32* %i5.15, align 4, !tbaa !2
  %add.ptr6.15 = getelementptr inbounds i8, i8* %src, i32 492
  %i7.15 = bitcast i8* %add.ptr6.15 to i32*
  store i32 %mul.15, i32* %i7.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_16x16_v_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %i = bitcast i8* %arrayidx to i32*
  %0 = load i32, i32* %i, align 4, !tbaa !2
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 -28
  %i2 = bitcast i8* %arrayidx1 to i32*
  %1 = load i32, i32* %i2, align 4, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 -24
  %i4 = bitcast i8* %arrayidx3 to i32*
  %2 = load i32, i32* %i4, align 4, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 -20
  %i6 = bitcast i8* %arrayidx5 to i32*
  %3 = load i32, i32* %i6, align 4, !tbaa !2
  %i8 = bitcast i8* %src to i32*
  store i32 %0, i32* %i8, align 4, !tbaa !2
  %add.ptr9 = getelementptr inbounds i8, i8* %src, i32 4
  %i10 = bitcast i8* %add.ptr9 to i32*
  store i32 %1, i32* %i10, align 4, !tbaa !2
  %add.ptr11 = getelementptr inbounds i8, i8* %src, i32 8
  %i12 = bitcast i8* %add.ptr11 to i32*
  store i32 %2, i32* %i12, align 4, !tbaa !2
  %add.ptr13 = getelementptr inbounds i8, i8* %src, i32 12
  %i14 = bitcast i8* %add.ptr13 to i32*
  store i32 %3, i32* %i14, align 4, !tbaa !2
  %add.ptr15 = getelementptr inbounds i8, i8* %src, i32 32
  %i8.1 = bitcast i8* %add.ptr15 to i32*
  store i32 %0, i32* %i8.1, align 4, !tbaa !2
  %add.ptr9.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i10.1 = bitcast i8* %add.ptr9.1 to i32*
  store i32 %1, i32* %i10.1, align 4, !tbaa !2
  %add.ptr11.1 = getelementptr inbounds i8, i8* %src, i32 40
  %i12.1 = bitcast i8* %add.ptr11.1 to i32*
  store i32 %2, i32* %i12.1, align 4, !tbaa !2
  %add.ptr13.1 = getelementptr inbounds i8, i8* %src, i32 44
  %i14.1 = bitcast i8* %add.ptr13.1 to i32*
  store i32 %3, i32* %i14.1, align 4, !tbaa !2
  %add.ptr15.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i8.2 = bitcast i8* %add.ptr15.1 to i32*
  store i32 %0, i32* %i8.2, align 4, !tbaa !2
  %add.ptr9.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i10.2 = bitcast i8* %add.ptr9.2 to i32*
  store i32 %1, i32* %i10.2, align 4, !tbaa !2
  %add.ptr11.2 = getelementptr inbounds i8, i8* %src, i32 72
  %i12.2 = bitcast i8* %add.ptr11.2 to i32*
  store i32 %2, i32* %i12.2, align 4, !tbaa !2
  %add.ptr13.2 = getelementptr inbounds i8, i8* %src, i32 76
  %i14.2 = bitcast i8* %add.ptr13.2 to i32*
  store i32 %3, i32* %i14.2, align 4, !tbaa !2
  %add.ptr15.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i8.3 = bitcast i8* %add.ptr15.2 to i32*
  store i32 %0, i32* %i8.3, align 4, !tbaa !2
  %add.ptr9.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i10.3 = bitcast i8* %add.ptr9.3 to i32*
  store i32 %1, i32* %i10.3, align 4, !tbaa !2
  %add.ptr11.3 = getelementptr inbounds i8, i8* %src, i32 104
  %i12.3 = bitcast i8* %add.ptr11.3 to i32*
  store i32 %2, i32* %i12.3, align 4, !tbaa !2
  %add.ptr13.3 = getelementptr inbounds i8, i8* %src, i32 108
  %i14.3 = bitcast i8* %add.ptr13.3 to i32*
  store i32 %3, i32* %i14.3, align 4, !tbaa !2
  %add.ptr15.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i8.4 = bitcast i8* %add.ptr15.3 to i32*
  store i32 %0, i32* %i8.4, align 4, !tbaa !2
  %add.ptr9.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i10.4 = bitcast i8* %add.ptr9.4 to i32*
  store i32 %1, i32* %i10.4, align 4, !tbaa !2
  %add.ptr11.4 = getelementptr inbounds i8, i8* %src, i32 136
  %i12.4 = bitcast i8* %add.ptr11.4 to i32*
  store i32 %2, i32* %i12.4, align 4, !tbaa !2
  %add.ptr13.4 = getelementptr inbounds i8, i8* %src, i32 140
  %i14.4 = bitcast i8* %add.ptr13.4 to i32*
  store i32 %3, i32* %i14.4, align 4, !tbaa !2
  %add.ptr15.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i8.5 = bitcast i8* %add.ptr15.4 to i32*
  store i32 %0, i32* %i8.5, align 4, !tbaa !2
  %add.ptr9.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i10.5 = bitcast i8* %add.ptr9.5 to i32*
  store i32 %1, i32* %i10.5, align 4, !tbaa !2
  %add.ptr11.5 = getelementptr inbounds i8, i8* %src, i32 168
  %i12.5 = bitcast i8* %add.ptr11.5 to i32*
  store i32 %2, i32* %i12.5, align 4, !tbaa !2
  %add.ptr13.5 = getelementptr inbounds i8, i8* %src, i32 172
  %i14.5 = bitcast i8* %add.ptr13.5 to i32*
  store i32 %3, i32* %i14.5, align 4, !tbaa !2
  %add.ptr15.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i8.6 = bitcast i8* %add.ptr15.5 to i32*
  store i32 %0, i32* %i8.6, align 4, !tbaa !2
  %add.ptr9.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i10.6 = bitcast i8* %add.ptr9.6 to i32*
  store i32 %1, i32* %i10.6, align 4, !tbaa !2
  %add.ptr11.6 = getelementptr inbounds i8, i8* %src, i32 200
  %i12.6 = bitcast i8* %add.ptr11.6 to i32*
  store i32 %2, i32* %i12.6, align 4, !tbaa !2
  %add.ptr13.6 = getelementptr inbounds i8, i8* %src, i32 204
  %i14.6 = bitcast i8* %add.ptr13.6 to i32*
  store i32 %3, i32* %i14.6, align 4, !tbaa !2
  %add.ptr15.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i8.7 = bitcast i8* %add.ptr15.6 to i32*
  store i32 %0, i32* %i8.7, align 4, !tbaa !2
  %add.ptr9.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i10.7 = bitcast i8* %add.ptr9.7 to i32*
  store i32 %1, i32* %i10.7, align 4, !tbaa !2
  %add.ptr11.7 = getelementptr inbounds i8, i8* %src, i32 232
  %i12.7 = bitcast i8* %add.ptr11.7 to i32*
  store i32 %2, i32* %i12.7, align 4, !tbaa !2
  %add.ptr13.7 = getelementptr inbounds i8, i8* %src, i32 236
  %i14.7 = bitcast i8* %add.ptr13.7 to i32*
  store i32 %3, i32* %i14.7, align 4, !tbaa !2
  %add.ptr15.7 = getelementptr inbounds i8, i8* %src, i32 256
  %i8.8 = bitcast i8* %add.ptr15.7 to i32*
  store i32 %0, i32* %i8.8, align 4, !tbaa !2
  %add.ptr9.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i10.8 = bitcast i8* %add.ptr9.8 to i32*
  store i32 %1, i32* %i10.8, align 4, !tbaa !2
  %add.ptr11.8 = getelementptr inbounds i8, i8* %src, i32 264
  %i12.8 = bitcast i8* %add.ptr11.8 to i32*
  store i32 %2, i32* %i12.8, align 4, !tbaa !2
  %add.ptr13.8 = getelementptr inbounds i8, i8* %src, i32 268
  %i14.8 = bitcast i8* %add.ptr13.8 to i32*
  store i32 %3, i32* %i14.8, align 4, !tbaa !2
  %add.ptr15.8 = getelementptr inbounds i8, i8* %src, i32 288
  %i8.9 = bitcast i8* %add.ptr15.8 to i32*
  store i32 %0, i32* %i8.9, align 4, !tbaa !2
  %add.ptr9.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i10.9 = bitcast i8* %add.ptr9.9 to i32*
  store i32 %1, i32* %i10.9, align 4, !tbaa !2
  %add.ptr11.9 = getelementptr inbounds i8, i8* %src, i32 296
  %i12.9 = bitcast i8* %add.ptr11.9 to i32*
  store i32 %2, i32* %i12.9, align 4, !tbaa !2
  %add.ptr13.9 = getelementptr inbounds i8, i8* %src, i32 300
  %i14.9 = bitcast i8* %add.ptr13.9 to i32*
  store i32 %3, i32* %i14.9, align 4, !tbaa !2
  %add.ptr15.9 = getelementptr inbounds i8, i8* %src, i32 320
  %i8.10 = bitcast i8* %add.ptr15.9 to i32*
  store i32 %0, i32* %i8.10, align 4, !tbaa !2
  %add.ptr9.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i10.10 = bitcast i8* %add.ptr9.10 to i32*
  store i32 %1, i32* %i10.10, align 4, !tbaa !2
  %add.ptr11.10 = getelementptr inbounds i8, i8* %src, i32 328
  %i12.10 = bitcast i8* %add.ptr11.10 to i32*
  store i32 %2, i32* %i12.10, align 4, !tbaa !2
  %add.ptr13.10 = getelementptr inbounds i8, i8* %src, i32 332
  %i14.10 = bitcast i8* %add.ptr13.10 to i32*
  store i32 %3, i32* %i14.10, align 4, !tbaa !2
  %add.ptr15.10 = getelementptr inbounds i8, i8* %src, i32 352
  %i8.11 = bitcast i8* %add.ptr15.10 to i32*
  store i32 %0, i32* %i8.11, align 4, !tbaa !2
  %add.ptr9.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i10.11 = bitcast i8* %add.ptr9.11 to i32*
  store i32 %1, i32* %i10.11, align 4, !tbaa !2
  %add.ptr11.11 = getelementptr inbounds i8, i8* %src, i32 360
  %i12.11 = bitcast i8* %add.ptr11.11 to i32*
  store i32 %2, i32* %i12.11, align 4, !tbaa !2
  %add.ptr13.11 = getelementptr inbounds i8, i8* %src, i32 364
  %i14.11 = bitcast i8* %add.ptr13.11 to i32*
  store i32 %3, i32* %i14.11, align 4, !tbaa !2
  %add.ptr15.11 = getelementptr inbounds i8, i8* %src, i32 384
  %i8.12 = bitcast i8* %add.ptr15.11 to i32*
  store i32 %0, i32* %i8.12, align 4, !tbaa !2
  %add.ptr9.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i10.12 = bitcast i8* %add.ptr9.12 to i32*
  store i32 %1, i32* %i10.12, align 4, !tbaa !2
  %add.ptr11.12 = getelementptr inbounds i8, i8* %src, i32 392
  %i12.12 = bitcast i8* %add.ptr11.12 to i32*
  store i32 %2, i32* %i12.12, align 4, !tbaa !2
  %add.ptr13.12 = getelementptr inbounds i8, i8* %src, i32 396
  %i14.12 = bitcast i8* %add.ptr13.12 to i32*
  store i32 %3, i32* %i14.12, align 4, !tbaa !2
  %add.ptr15.12 = getelementptr inbounds i8, i8* %src, i32 416
  %i8.13 = bitcast i8* %add.ptr15.12 to i32*
  store i32 %0, i32* %i8.13, align 4, !tbaa !2
  %add.ptr9.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i10.13 = bitcast i8* %add.ptr9.13 to i32*
  store i32 %1, i32* %i10.13, align 4, !tbaa !2
  %add.ptr11.13 = getelementptr inbounds i8, i8* %src, i32 424
  %i12.13 = bitcast i8* %add.ptr11.13 to i32*
  store i32 %2, i32* %i12.13, align 4, !tbaa !2
  %add.ptr13.13 = getelementptr inbounds i8, i8* %src, i32 428
  %i14.13 = bitcast i8* %add.ptr13.13 to i32*
  store i32 %3, i32* %i14.13, align 4, !tbaa !2
  %add.ptr15.13 = getelementptr inbounds i8, i8* %src, i32 448
  %i8.14 = bitcast i8* %add.ptr15.13 to i32*
  store i32 %0, i32* %i8.14, align 4, !tbaa !2
  %add.ptr9.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i10.14 = bitcast i8* %add.ptr9.14 to i32*
  store i32 %1, i32* %i10.14, align 4, !tbaa !2
  %add.ptr11.14 = getelementptr inbounds i8, i8* %src, i32 456
  %i12.14 = bitcast i8* %add.ptr11.14 to i32*
  store i32 %2, i32* %i12.14, align 4, !tbaa !2
  %add.ptr13.14 = getelementptr inbounds i8, i8* %src, i32 460
  %i14.14 = bitcast i8* %add.ptr13.14 to i32*
  store i32 %3, i32* %i14.14, align 4, !tbaa !2
  %add.ptr15.14 = getelementptr inbounds i8, i8* %src, i32 480
  %i8.15 = bitcast i8* %add.ptr15.14 to i32*
  store i32 %0, i32* %i8.15, align 4, !tbaa !2
  %add.ptr9.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i10.15 = bitcast i8* %add.ptr9.15 to i32*
  store i32 %1, i32* %i10.15, align 4, !tbaa !2
  %add.ptr11.15 = getelementptr inbounds i8, i8* %src, i32 488
  %i12.15 = bitcast i8* %add.ptr11.15 to i32*
  store i32 %2, i32* %i12.15, align 4, !tbaa !2
  %add.ptr13.15 = getelementptr inbounds i8, i8* %src, i32 492
  %i14.15 = bitcast i8* %add.ptr13.15 to i32*
  store i32 %3, i32* %i14.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_16x16_p_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -24
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, i8* %src, i32 -26
  %1 = load i8, i8* %arrayidx4, align 1, !tbaa !2
  %conv5 = zext i8 %1 to i32
  %sub6 = sub nsw i32 %conv, %conv5
  %arrayidx12 = getelementptr inbounds i8, i8* %src, i32 255
  %2 = load i8, i8* %arrayidx12, align 1, !tbaa !2
  %conv13 = zext i8 %2 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %src, i32 191
  %3 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %3 to i32
  %sub19 = sub nsw i32 %conv13, %conv18
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 -23
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %4 to i32
  %arrayidx4.1 = getelementptr inbounds i8, i8* %src, i32 -27
  %5 = load i8, i8* %arrayidx4.1, align 1, !tbaa !2
  %conv5.1 = zext i8 %5 to i32
  %sub6.1 = sub nsw i32 %conv.1, %conv5.1
  %mul.1 = shl nsw i32 %sub6.1, 1
  %add7.1 = add nsw i32 %mul.1, %sub6
  %arrayidx12.1 = getelementptr inbounds i8, i8* %src, i32 287
  %6 = load i8, i8* %arrayidx12.1, align 1, !tbaa !2
  %conv13.1 = zext i8 %6 to i32
  %arrayidx17.1 = getelementptr inbounds i8, i8* %src, i32 159
  %7 = load i8, i8* %arrayidx17.1, align 1, !tbaa !2
  %conv18.1 = zext i8 %7 to i32
  %sub19.1 = sub nsw i32 %conv13.1, %conv18.1
  %mul20.1 = shl nsw i32 %sub19.1, 1
  %add21.1 = add nsw i32 %mul20.1, %sub19
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 -22
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %8 to i32
  %arrayidx4.2 = getelementptr inbounds i8, i8* %src, i32 -28
  %9 = load i8, i8* %arrayidx4.2, align 1, !tbaa !2
  %conv5.2 = zext i8 %9 to i32
  %sub6.2 = sub nsw i32 %conv.2, %conv5.2
  %mul.2 = mul nsw i32 %sub6.2, 3
  %add7.2 = add nsw i32 %mul.2, %add7.1
  %arrayidx12.2 = getelementptr inbounds i8, i8* %src, i32 319
  %10 = load i8, i8* %arrayidx12.2, align 1, !tbaa !2
  %conv13.2 = zext i8 %10 to i32
  %arrayidx17.2 = getelementptr inbounds i8, i8* %src, i32 127
  %11 = load i8, i8* %arrayidx17.2, align 1, !tbaa !2
  %conv18.2 = zext i8 %11 to i32
  %sub19.2 = sub nsw i32 %conv13.2, %conv18.2
  %mul20.2 = mul nsw i32 %sub19.2, 3
  %add21.2 = add nsw i32 %mul20.2, %add21.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 -21
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %12 to i32
  %arrayidx4.3 = getelementptr inbounds i8, i8* %src, i32 -29
  %13 = load i8, i8* %arrayidx4.3, align 1, !tbaa !2
  %conv5.3 = zext i8 %13 to i32
  %sub6.3 = sub nsw i32 %conv.3, %conv5.3
  %mul.3 = shl nsw i32 %sub6.3, 2
  %add7.3 = add nsw i32 %mul.3, %add7.2
  %arrayidx12.3 = getelementptr inbounds i8, i8* %src, i32 351
  %14 = load i8, i8* %arrayidx12.3, align 1, !tbaa !2
  %conv13.3 = zext i8 %14 to i32
  %arrayidx17.3 = getelementptr inbounds i8, i8* %src, i32 95
  %15 = load i8, i8* %arrayidx17.3, align 1, !tbaa !2
  %conv18.3 = zext i8 %15 to i32
  %sub19.3 = sub nsw i32 %conv13.3, %conv18.3
  %mul20.3 = shl nsw i32 %sub19.3, 2
  %add21.3 = add nsw i32 %mul20.3, %add21.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %src, i32 -20
  %16 = load i8, i8* %arrayidx.4, align 1, !tbaa !2
  %conv.4 = zext i8 %16 to i32
  %arrayidx4.4 = getelementptr inbounds i8, i8* %src, i32 -30
  %17 = load i8, i8* %arrayidx4.4, align 1, !tbaa !2
  %conv5.4 = zext i8 %17 to i32
  %sub6.4 = sub nsw i32 %conv.4, %conv5.4
  %mul.4 = mul nsw i32 %sub6.4, 5
  %add7.4 = add nsw i32 %mul.4, %add7.3
  %arrayidx12.4 = getelementptr inbounds i8, i8* %src, i32 383
  %18 = load i8, i8* %arrayidx12.4, align 1, !tbaa !2
  %conv13.4 = zext i8 %18 to i32
  %arrayidx17.4 = getelementptr inbounds i8, i8* %src, i32 63
  %19 = load i8, i8* %arrayidx17.4, align 1, !tbaa !2
  %conv18.4 = zext i8 %19 to i32
  %sub19.4 = sub nsw i32 %conv13.4, %conv18.4
  %mul20.4 = mul nsw i32 %sub19.4, 5
  %add21.4 = add nsw i32 %mul20.4, %add21.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %src, i32 -19
  %20 = load i8, i8* %arrayidx.5, align 1, !tbaa !2
  %conv.5 = zext i8 %20 to i32
  %arrayidx4.5 = getelementptr inbounds i8, i8* %src, i32 -31
  %21 = load i8, i8* %arrayidx4.5, align 1, !tbaa !2
  %conv5.5 = zext i8 %21 to i32
  %sub6.5 = sub nsw i32 %conv.5, %conv5.5
  %mul.5 = mul nsw i32 %sub6.5, 6
  %add7.5 = add nsw i32 %mul.5, %add7.4
  %arrayidx12.5 = getelementptr inbounds i8, i8* %src, i32 415
  %22 = load i8, i8* %arrayidx12.5, align 1, !tbaa !2
  %conv13.5 = zext i8 %22 to i32
  %arrayidx17.5 = getelementptr inbounds i8, i8* %src, i32 31
  %23 = load i8, i8* %arrayidx17.5, align 1, !tbaa !2
  %conv18.5 = zext i8 %23 to i32
  %sub19.5 = sub nsw i32 %conv13.5, %conv18.5
  %mul20.5 = mul nsw i32 %sub19.5, 6
  %add21.5 = add nsw i32 %mul20.5, %add21.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %src, i32 -18
  %24 = load i8, i8* %arrayidx.6, align 1, !tbaa !2
  %conv.6 = zext i8 %24 to i32
  %arrayidx4.6 = getelementptr inbounds i8, i8* %src, i32 -32
  %25 = load i8, i8* %arrayidx4.6, align 1, !tbaa !2
  %conv5.6 = zext i8 %25 to i32
  %sub6.6 = sub nsw i32 %conv.6, %conv5.6
  %mul.6 = mul nsw i32 %sub6.6, 7
  %add7.6 = add nsw i32 %mul.6, %add7.5
  %arrayidx12.6 = getelementptr inbounds i8, i8* %src, i32 447
  %26 = load i8, i8* %arrayidx12.6, align 1, !tbaa !2
  %conv13.6 = zext i8 %26 to i32
  %arrayidx17.6 = getelementptr inbounds i8, i8* %src, i32 -1
  %27 = load i8, i8* %arrayidx17.6, align 1, !tbaa !2
  %conv18.6 = zext i8 %27 to i32
  %sub19.6 = sub nsw i32 %conv13.6, %conv18.6
  %mul20.6 = mul nsw i32 %sub19.6, 7
  %add21.6 = add nsw i32 %mul20.6, %add21.5
  %arrayidx.7 = getelementptr inbounds i8, i8* %src, i32 -17
  %28 = load i8, i8* %arrayidx.7, align 1, !tbaa !2
  %conv.7 = zext i8 %28 to i32
  %arrayidx4.7 = getelementptr inbounds i8, i8* %src, i32 -33
  %29 = load i8, i8* %arrayidx4.7, align 1, !tbaa !2
  %conv5.7 = zext i8 %29 to i32
  %sub6.7 = sub nsw i32 %conv.7, %conv5.7
  %mul.7 = shl nsw i32 %sub6.7, 3
  %add7.7 = add nsw i32 %mul.7, %add7.6
  %arrayidx12.7 = getelementptr inbounds i8, i8* %src, i32 479
  %30 = load i8, i8* %arrayidx12.7, align 1, !tbaa !2
  %conv13.7 = zext i8 %30 to i32
  %sub19.7 = sub nsw i32 %conv13.7, %conv5.7
  %mul20.7 = shl nsw i32 %sub19.7, 3
  %add21.7 = add nsw i32 %mul20.7, %add21.6
  %add26 = add nuw nsw i32 %conv.7, %conv13.7
  %mul27 = shl nuw nsw i32 %add26, 4
  %mul28 = mul nsw i32 %add7.7, 5
  %add29 = add nsw i32 %mul28, 32
  %shr = ashr i32 %add29, 6
  %mul30 = mul nsw i32 %add21.7, 5
  %add31 = add nsw i32 %mul30, 32
  %shr32 = ashr i32 %add31, 6
  %reass.add = add nsw i32 %shr, %shr32
  %reass.mul = mul nsw i32 %reass.add, -7
  %sub36 = add nsw i32 %reass.mul, 16
  %add37 = add nsw i32 %sub36, %mul27
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond43.preheader, %entry
  %y.095 = phi i32 [ 0, %entry ], [ %inc56, %for.cond43.preheader ]
  %i00.094 = phi i32 [ %add37, %entry ], [ %add54, %for.cond43.preheader ]
  %src.addr.093 = phi i8* [ %src, %entry ], [ %add.ptr, %for.cond43.preheader ]
  %shr48 = ashr i32 %i00.094, 5
  %tobool.i = icmp ugt i32 %shr48, 255
  %sub.i = sub nsw i32 0, %shr48
  %shr.i = ashr i32 %sub.i, 31
  %cond.i = select i1 %tobool.i, i32 %shr.i, i32 %shr48
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, i8* %src.addr.093, align 1, !tbaa !2
  %add50 = add nsw i32 %i00.094, %shr
  %shr48.1 = ashr i32 %add50, 5
  %tobool.i.1 = icmp ugt i32 %shr48.1, 255
  %sub.i.1 = sub nsw i32 0, %shr48.1
  %shr.i.1 = ashr i32 %sub.i.1, 31
  %cond.i.1 = select i1 %tobool.i.1, i32 %shr.i.1, i32 %shr48.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  %arrayidx49.1 = getelementptr inbounds i8, i8* %src.addr.093, i32 1
  store i8 %conv.i.1, i8* %arrayidx49.1, align 1, !tbaa !2
  %add50.1 = add nsw i32 %add50, %shr
  %shr48.2 = ashr i32 %add50.1, 5
  %tobool.i.2 = icmp ugt i32 %shr48.2, 255
  %sub.i.2 = sub nsw i32 0, %shr48.2
  %shr.i.2 = ashr i32 %sub.i.2, 31
  %cond.i.2 = select i1 %tobool.i.2, i32 %shr.i.2, i32 %shr48.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  %arrayidx49.2 = getelementptr inbounds i8, i8* %src.addr.093, i32 2
  store i8 %conv.i.2, i8* %arrayidx49.2, align 1, !tbaa !2
  %add50.2 = add nsw i32 %add50.1, %shr
  %shr48.3 = ashr i32 %add50.2, 5
  %tobool.i.3 = icmp ugt i32 %shr48.3, 255
  %sub.i.3 = sub nsw i32 0, %shr48.3
  %shr.i.3 = ashr i32 %sub.i.3, 31
  %cond.i.3 = select i1 %tobool.i.3, i32 %shr.i.3, i32 %shr48.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  %arrayidx49.3 = getelementptr inbounds i8, i8* %src.addr.093, i32 3
  store i8 %conv.i.3, i8* %arrayidx49.3, align 1, !tbaa !2
  %add50.3 = add nsw i32 %add50.2, %shr
  %shr48.4 = ashr i32 %add50.3, 5
  %tobool.i.4 = icmp ugt i32 %shr48.4, 255
  %sub.i.4 = sub nsw i32 0, %shr48.4
  %shr.i.4 = ashr i32 %sub.i.4, 31
  %cond.i.4 = select i1 %tobool.i.4, i32 %shr.i.4, i32 %shr48.4
  %conv.i.4 = trunc i32 %cond.i.4 to i8
  %arrayidx49.4 = getelementptr inbounds i8, i8* %src.addr.093, i32 4
  store i8 %conv.i.4, i8* %arrayidx49.4, align 1, !tbaa !2
  %add50.4 = add nsw i32 %add50.3, %shr
  %shr48.5 = ashr i32 %add50.4, 5
  %tobool.i.5 = icmp ugt i32 %shr48.5, 255
  %sub.i.5 = sub nsw i32 0, %shr48.5
  %shr.i.5 = ashr i32 %sub.i.5, 31
  %cond.i.5 = select i1 %tobool.i.5, i32 %shr.i.5, i32 %shr48.5
  %conv.i.5 = trunc i32 %cond.i.5 to i8
  %arrayidx49.5 = getelementptr inbounds i8, i8* %src.addr.093, i32 5
  store i8 %conv.i.5, i8* %arrayidx49.5, align 1, !tbaa !2
  %add50.5 = add nsw i32 %add50.4, %shr
  %shr48.6 = ashr i32 %add50.5, 5
  %tobool.i.6 = icmp ugt i32 %shr48.6, 255
  %sub.i.6 = sub nsw i32 0, %shr48.6
  %shr.i.6 = ashr i32 %sub.i.6, 31
  %cond.i.6 = select i1 %tobool.i.6, i32 %shr.i.6, i32 %shr48.6
  %conv.i.6 = trunc i32 %cond.i.6 to i8
  %arrayidx49.6 = getelementptr inbounds i8, i8* %src.addr.093, i32 6
  store i8 %conv.i.6, i8* %arrayidx49.6, align 1, !tbaa !2
  %add50.6 = add nsw i32 %add50.5, %shr
  %shr48.7 = ashr i32 %add50.6, 5
  %tobool.i.7 = icmp ugt i32 %shr48.7, 255
  %sub.i.7 = sub nsw i32 0, %shr48.7
  %shr.i.7 = ashr i32 %sub.i.7, 31
  %cond.i.7 = select i1 %tobool.i.7, i32 %shr.i.7, i32 %shr48.7
  %conv.i.7 = trunc i32 %cond.i.7 to i8
  %arrayidx49.7 = getelementptr inbounds i8, i8* %src.addr.093, i32 7
  store i8 %conv.i.7, i8* %arrayidx49.7, align 1, !tbaa !2
  %add50.7 = add nsw i32 %add50.6, %shr
  %shr48.8 = ashr i32 %add50.7, 5
  %tobool.i.8 = icmp ugt i32 %shr48.8, 255
  %sub.i.8 = sub nsw i32 0, %shr48.8
  %shr.i.8 = ashr i32 %sub.i.8, 31
  %cond.i.8 = select i1 %tobool.i.8, i32 %shr.i.8, i32 %shr48.8
  %conv.i.8 = trunc i32 %cond.i.8 to i8
  %arrayidx49.8 = getelementptr inbounds i8, i8* %src.addr.093, i32 8
  store i8 %conv.i.8, i8* %arrayidx49.8, align 1, !tbaa !2
  %add50.8 = add nsw i32 %add50.7, %shr
  %shr48.9 = ashr i32 %add50.8, 5
  %tobool.i.9 = icmp ugt i32 %shr48.9, 255
  %sub.i.9 = sub nsw i32 0, %shr48.9
  %shr.i.9 = ashr i32 %sub.i.9, 31
  %cond.i.9 = select i1 %tobool.i.9, i32 %shr.i.9, i32 %shr48.9
  %conv.i.9 = trunc i32 %cond.i.9 to i8
  %arrayidx49.9 = getelementptr inbounds i8, i8* %src.addr.093, i32 9
  store i8 %conv.i.9, i8* %arrayidx49.9, align 1, !tbaa !2
  %add50.9 = add nsw i32 %add50.8, %shr
  %shr48.10 = ashr i32 %add50.9, 5
  %tobool.i.10 = icmp ugt i32 %shr48.10, 255
  %sub.i.10 = sub nsw i32 0, %shr48.10
  %shr.i.10 = ashr i32 %sub.i.10, 31
  %cond.i.10 = select i1 %tobool.i.10, i32 %shr.i.10, i32 %shr48.10
  %conv.i.10 = trunc i32 %cond.i.10 to i8
  %arrayidx49.10 = getelementptr inbounds i8, i8* %src.addr.093, i32 10
  store i8 %conv.i.10, i8* %arrayidx49.10, align 1, !tbaa !2
  %add50.10 = add nsw i32 %add50.9, %shr
  %shr48.11 = ashr i32 %add50.10, 5
  %tobool.i.11 = icmp ugt i32 %shr48.11, 255
  %sub.i.11 = sub nsw i32 0, %shr48.11
  %shr.i.11 = ashr i32 %sub.i.11, 31
  %cond.i.11 = select i1 %tobool.i.11, i32 %shr.i.11, i32 %shr48.11
  %conv.i.11 = trunc i32 %cond.i.11 to i8
  %arrayidx49.11 = getelementptr inbounds i8, i8* %src.addr.093, i32 11
  store i8 %conv.i.11, i8* %arrayidx49.11, align 1, !tbaa !2
  %add50.11 = add nsw i32 %add50.10, %shr
  %shr48.12 = ashr i32 %add50.11, 5
  %tobool.i.12 = icmp ugt i32 %shr48.12, 255
  %sub.i.12 = sub nsw i32 0, %shr48.12
  %shr.i.12 = ashr i32 %sub.i.12, 31
  %cond.i.12 = select i1 %tobool.i.12, i32 %shr.i.12, i32 %shr48.12
  %conv.i.12 = trunc i32 %cond.i.12 to i8
  %arrayidx49.12 = getelementptr inbounds i8, i8* %src.addr.093, i32 12
  store i8 %conv.i.12, i8* %arrayidx49.12, align 1, !tbaa !2
  %add50.12 = add nsw i32 %add50.11, %shr
  %shr48.13 = ashr i32 %add50.12, 5
  %tobool.i.13 = icmp ugt i32 %shr48.13, 255
  %sub.i.13 = sub nsw i32 0, %shr48.13
  %shr.i.13 = ashr i32 %sub.i.13, 31
  %cond.i.13 = select i1 %tobool.i.13, i32 %shr.i.13, i32 %shr48.13
  %conv.i.13 = trunc i32 %cond.i.13 to i8
  %arrayidx49.13 = getelementptr inbounds i8, i8* %src.addr.093, i32 13
  store i8 %conv.i.13, i8* %arrayidx49.13, align 1, !tbaa !2
  %add50.13 = add nsw i32 %add50.12, %shr
  %shr48.14 = ashr i32 %add50.13, 5
  %tobool.i.14 = icmp ugt i32 %shr48.14, 255
  %sub.i.14 = sub nsw i32 0, %shr48.14
  %shr.i.14 = ashr i32 %sub.i.14, 31
  %cond.i.14 = select i1 %tobool.i.14, i32 %shr.i.14, i32 %shr48.14
  %conv.i.14 = trunc i32 %cond.i.14 to i8
  %arrayidx49.14 = getelementptr inbounds i8, i8* %src.addr.093, i32 14
  store i8 %conv.i.14, i8* %arrayidx49.14, align 1, !tbaa !2
  %add50.14 = add nsw i32 %add50.13, %shr
  %shr48.15 = ashr i32 %add50.14, 5
  %tobool.i.15 = icmp ugt i32 %shr48.15, 255
  %sub.i.15 = sub nsw i32 0, %shr48.15
  %shr.i.15 = ashr i32 %sub.i.15, 31
  %cond.i.15 = select i1 %tobool.i.15, i32 %shr.i.15, i32 %shr48.15
  %conv.i.15 = trunc i32 %cond.i.15 to i8
  %arrayidx49.15 = getelementptr inbounds i8, i8* %src.addr.093, i32 15
  store i8 %conv.i.15, i8* %arrayidx49.15, align 1, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %src.addr.093, i32 32
  %add54 = add nsw i32 %i00.094, %shr32
  %inc56 = add nuw nsw i32 %y.095, 1
  %exitcond = icmp eq i32 %inc56, 16
  br i1 %exitcond, label %for.cond.cleanup41, label %for.cond43.preheader

for.cond.cleanup41:                               ; preds = %for.cond43.preheader
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x8c_dc_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 -28
  %1 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %1 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %src, i32 -1
  %2 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %2 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %src, i32 127
  %3 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %3 to i32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 -31
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %4 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx3.1 = getelementptr inbounds i8, i8* %src, i32 -27
  %5 = load i8, i8* %arrayidx3.1, align 1, !tbaa !2
  %conv4.1 = zext i8 %5 to i32
  %add5.1 = add nuw nsw i32 %conv4, %conv4.1
  %arrayidx7.1 = getelementptr inbounds i8, i8* %src, i32 31
  %6 = load i8, i8* %arrayidx7.1, align 1, !tbaa !2
  %conv8.1 = zext i8 %6 to i32
  %add9.1 = add nuw nsw i32 %conv8, %conv8.1
  %arrayidx13.1 = getelementptr inbounds i8, i8* %src, i32 159
  %7 = load i8, i8* %arrayidx13.1, align 1, !tbaa !2
  %conv14.1 = zext i8 %7 to i32
  %add15.1 = add nuw nsw i32 %conv14, %conv14.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 -30
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %8 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx3.2 = getelementptr inbounds i8, i8* %src, i32 -26
  %9 = load i8, i8* %arrayidx3.2, align 1, !tbaa !2
  %conv4.2 = zext i8 %9 to i32
  %add5.2 = add nuw nsw i32 %add5.1, %conv4.2
  %arrayidx7.2 = getelementptr inbounds i8, i8* %src, i32 63
  %10 = load i8, i8* %arrayidx7.2, align 1, !tbaa !2
  %conv8.2 = zext i8 %10 to i32
  %add9.2 = add nuw nsw i32 %add9.1, %conv8.2
  %arrayidx13.2 = getelementptr inbounds i8, i8* %src, i32 191
  %11 = load i8, i8* %arrayidx13.2, align 1, !tbaa !2
  %conv14.2 = zext i8 %11 to i32
  %add15.2 = add nuw nsw i32 %add15.1, %conv14.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 -29
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %12 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx3.3 = getelementptr inbounds i8, i8* %src, i32 -25
  %13 = load i8, i8* %arrayidx3.3, align 1, !tbaa !2
  %conv4.3 = zext i8 %13 to i32
  %add5.3 = add nuw nsw i32 %add5.2, %conv4.3
  %arrayidx7.3 = getelementptr inbounds i8, i8* %src, i32 95
  %14 = load i8, i8* %arrayidx7.3, align 1, !tbaa !2
  %conv8.3 = zext i8 %14 to i32
  %add9.3 = add nuw nsw i32 %add9.2, %conv8.3
  %arrayidx13.3 = getelementptr inbounds i8, i8* %src, i32 223
  %15 = load i8, i8* %arrayidx13.3, align 1, !tbaa !2
  %conv14.3 = zext i8 %15 to i32
  %add15.3 = add nuw nsw i32 %add15.2, %conv14.3
  %add16 = add nuw nsw i32 %add9.3, 4
  %add17 = add nuw nsw i32 %add16, %add.3
  %16 = lshr i32 %add17, 3
  %mul18 = mul nuw i32 %16, 16843009
  %add19 = add nuw nsw i32 %add5.3, 2
  %17 = lshr i32 %add19, 2
  %mul21 = mul nuw i32 %17, 16843009
  %add22 = add nuw nsw i32 %add15.3, 2
  %18 = lshr i32 %add22, 2
  %add25 = add nuw nsw i32 %add15.3, 4
  %add26 = add nuw nsw i32 %add25, %add5.3
  %19 = lshr i32 %add26, 3
  %i34 = bitcast i8* %src to i32*
  store i32 %mul18, i32* %i34, align 4, !tbaa !2
  %add.ptr35 = getelementptr inbounds i8, i8* %src, i32 4
  %i36 = bitcast i8* %add.ptr35 to i32*
  store i32 %mul21, i32* %i36, align 4, !tbaa !2
  %add.ptr37 = getelementptr inbounds i8, i8* %src, i32 32
  %i34.1 = bitcast i8* %add.ptr37 to i32*
  store i32 %mul18, i32* %i34.1, align 4, !tbaa !2
  %add.ptr35.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i36.1 = bitcast i8* %add.ptr35.1 to i32*
  store i32 %mul21, i32* %i36.1, align 4, !tbaa !2
  %add.ptr37.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i34.2 = bitcast i8* %add.ptr37.1 to i32*
  store i32 %mul18, i32* %i34.2, align 4, !tbaa !2
  %add.ptr35.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i36.2 = bitcast i8* %add.ptr35.2 to i32*
  store i32 %mul21, i32* %i36.2, align 4, !tbaa !2
  %add.ptr37.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i34.3 = bitcast i8* %add.ptr37.2 to i32*
  store i32 %mul18, i32* %i34.3, align 4, !tbaa !2
  %add.ptr35.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i36.3 = bitcast i8* %add.ptr35.3 to i32*
  store i32 %mul21, i32* %i36.3, align 4, !tbaa !2
  %add.ptr37.3 = getelementptr inbounds i8, i8* %src, i32 128
  %mul24 = mul nuw i32 %18, 16843009
  %mul28 = mul nuw i32 %19, 16843009
  %i48 = bitcast i8* %add.ptr37.3 to i32*
  store i32 %mul24, i32* %i48, align 4, !tbaa !2
  %add.ptr49 = getelementptr inbounds i8, i8* %src, i32 132
  %i50 = bitcast i8* %add.ptr49 to i32*
  store i32 %mul28, i32* %i50, align 4, !tbaa !2
  %add.ptr51 = getelementptr inbounds i8, i8* %src, i32 160
  %i48.1 = bitcast i8* %add.ptr51 to i32*
  store i32 %mul24, i32* %i48.1, align 4, !tbaa !2
  %add.ptr49.1 = getelementptr inbounds i8, i8* %src, i32 164
  %i50.1 = bitcast i8* %add.ptr49.1 to i32*
  store i32 %mul28, i32* %i50.1, align 4, !tbaa !2
  %add.ptr51.1 = getelementptr inbounds i8, i8* %src, i32 192
  %i48.2 = bitcast i8* %add.ptr51.1 to i32*
  store i32 %mul24, i32* %i48.2, align 4, !tbaa !2
  %add.ptr49.2 = getelementptr inbounds i8, i8* %src, i32 196
  %i50.2 = bitcast i8* %add.ptr49.2 to i32*
  store i32 %mul28, i32* %i50.2, align 4, !tbaa !2
  %add.ptr51.2 = getelementptr inbounds i8, i8* %src, i32 224
  %i48.3 = bitcast i8* %add.ptr51.2 to i32*
  store i32 %mul24, i32* %i48.3, align 4, !tbaa !2
  %add.ptr49.3 = getelementptr inbounds i8, i8* %src, i32 228
  %i50.3 = bitcast i8* %add.ptr49.3 to i32*
  store i32 %mul28, i32* %i50.3, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x8c_h_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %mul = mul nuw i32 %conv, 16843009
  %i1 = bitcast i8* %src to i32*
  store i32 %mul, i32* %i1, align 4, !tbaa !2
  %add.ptr2 = getelementptr inbounds i8, i8* %src, i32 4
  %i3 = bitcast i8* %add.ptr2 to i32*
  store i32 %mul, i32* %i3, align 4, !tbaa !2
  %add.ptr4 = getelementptr inbounds i8, i8* %src, i32 32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %1 to i32
  %mul.1 = mul nuw i32 %conv.1, 16843009
  %i1.1 = bitcast i8* %add.ptr4 to i32*
  store i32 %mul.1, i32* %i1.1, align 4, !tbaa !2
  %add.ptr2.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i3.1 = bitcast i8* %add.ptr2.1 to i32*
  store i32 %mul.1, i32* %i3.1, align 4, !tbaa !2
  %add.ptr4.1 = getelementptr inbounds i8, i8* %src, i32 64
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %2 to i32
  %mul.2 = mul nuw i32 %conv.2, 16843009
  %i1.2 = bitcast i8* %add.ptr4.1 to i32*
  store i32 %mul.2, i32* %i1.2, align 4, !tbaa !2
  %add.ptr2.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i3.2 = bitcast i8* %add.ptr2.2 to i32*
  store i32 %mul.2, i32* %i3.2, align 4, !tbaa !2
  %add.ptr4.2 = getelementptr inbounds i8, i8* %src, i32 96
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %3 to i32
  %mul.3 = mul nuw i32 %conv.3, 16843009
  %i1.3 = bitcast i8* %add.ptr4.2 to i32*
  store i32 %mul.3, i32* %i1.3, align 4, !tbaa !2
  %add.ptr2.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i3.3 = bitcast i8* %add.ptr2.3 to i32*
  store i32 %mul.3, i32* %i3.3, align 4, !tbaa !2
  %add.ptr4.3 = getelementptr inbounds i8, i8* %src, i32 128
  %arrayidx.4 = getelementptr inbounds i8, i8* %src, i32 127
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !2
  %conv.4 = zext i8 %4 to i32
  %mul.4 = mul nuw i32 %conv.4, 16843009
  %i1.4 = bitcast i8* %add.ptr4.3 to i32*
  store i32 %mul.4, i32* %i1.4, align 4, !tbaa !2
  %add.ptr2.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i3.4 = bitcast i8* %add.ptr2.4 to i32*
  store i32 %mul.4, i32* %i3.4, align 4, !tbaa !2
  %add.ptr4.4 = getelementptr inbounds i8, i8* %src, i32 160
  %arrayidx.5 = getelementptr inbounds i8, i8* %src, i32 159
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !2
  %conv.5 = zext i8 %5 to i32
  %mul.5 = mul nuw i32 %conv.5, 16843009
  %i1.5 = bitcast i8* %add.ptr4.4 to i32*
  store i32 %mul.5, i32* %i1.5, align 4, !tbaa !2
  %add.ptr2.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i3.5 = bitcast i8* %add.ptr2.5 to i32*
  store i32 %mul.5, i32* %i3.5, align 4, !tbaa !2
  %add.ptr4.5 = getelementptr inbounds i8, i8* %src, i32 192
  %arrayidx.6 = getelementptr inbounds i8, i8* %src, i32 191
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !2
  %conv.6 = zext i8 %6 to i32
  %mul.6 = mul nuw i32 %conv.6, 16843009
  %i1.6 = bitcast i8* %add.ptr4.5 to i32*
  store i32 %mul.6, i32* %i1.6, align 4, !tbaa !2
  %add.ptr2.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i3.6 = bitcast i8* %add.ptr2.6 to i32*
  store i32 %mul.6, i32* %i3.6, align 4, !tbaa !2
  %add.ptr4.6 = getelementptr inbounds i8, i8* %src, i32 224
  %arrayidx.7 = getelementptr inbounds i8, i8* %src, i32 223
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !2
  %conv.7 = zext i8 %7 to i32
  %mul.7 = mul nuw i32 %conv.7, 16843009
  %i1.7 = bitcast i8* %add.ptr4.6 to i32*
  store i32 %mul.7, i32* %i1.7, align 4, !tbaa !2
  %add.ptr2.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i3.7 = bitcast i8* %add.ptr2.7 to i32*
  store i32 %mul.7, i32* %i3.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x8c_v_c(i8* nocapture %src) #0 {
entry:
  %add.ptr1 = getelementptr inbounds i8, i8* %src, i32 -32
  %i = bitcast i8* %add.ptr1 to i32*
  %0 = load i32, i32* %i, align 4, !tbaa !2
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i32 -28
  %i4 = bitcast i8* %add.ptr3 to i32*
  %1 = load i32, i32* %i4, align 4, !tbaa !2
  %i7 = bitcast i8* %src to i32*
  store i32 %0, i32* %i7, align 4, !tbaa !2
  %add.ptr8 = getelementptr inbounds i8, i8* %src, i32 4
  %i9 = bitcast i8* %add.ptr8 to i32*
  store i32 %1, i32* %i9, align 4, !tbaa !2
  %add.ptr10 = getelementptr inbounds i8, i8* %src, i32 32
  %i7.1 = bitcast i8* %add.ptr10 to i32*
  store i32 %0, i32* %i7.1, align 4, !tbaa !2
  %add.ptr8.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i9.1 = bitcast i8* %add.ptr8.1 to i32*
  store i32 %1, i32* %i9.1, align 4, !tbaa !2
  %add.ptr10.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i7.2 = bitcast i8* %add.ptr10.1 to i32*
  store i32 %0, i32* %i7.2, align 4, !tbaa !2
  %add.ptr8.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i9.2 = bitcast i8* %add.ptr8.2 to i32*
  store i32 %1, i32* %i9.2, align 4, !tbaa !2
  %add.ptr10.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i7.3 = bitcast i8* %add.ptr10.2 to i32*
  store i32 %0, i32* %i7.3, align 4, !tbaa !2
  %add.ptr8.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i9.3 = bitcast i8* %add.ptr8.3 to i32*
  store i32 %1, i32* %i9.3, align 4, !tbaa !2
  %add.ptr10.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i7.4 = bitcast i8* %add.ptr10.3 to i32*
  store i32 %0, i32* %i7.4, align 4, !tbaa !2
  %add.ptr8.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i9.4 = bitcast i8* %add.ptr8.4 to i32*
  store i32 %1, i32* %i9.4, align 4, !tbaa !2
  %add.ptr10.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i7.5 = bitcast i8* %add.ptr10.4 to i32*
  store i32 %0, i32* %i7.5, align 4, !tbaa !2
  %add.ptr8.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i9.5 = bitcast i8* %add.ptr8.5 to i32*
  store i32 %1, i32* %i9.5, align 4, !tbaa !2
  %add.ptr10.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i7.6 = bitcast i8* %add.ptr10.5 to i32*
  store i32 %0, i32* %i7.6, align 4, !tbaa !2
  %add.ptr8.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i9.6 = bitcast i8* %add.ptr8.6 to i32*
  store i32 %1, i32* %i9.6, align 4, !tbaa !2
  %add.ptr10.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i7.7 = bitcast i8* %add.ptr10.6 to i32*
  store i32 %0, i32* %i7.7, align 4, !tbaa !2
  %add.ptr8.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i9.7 = bitcast i8* %add.ptr8.7 to i32*
  store i32 %1, i32* %i9.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x8c_p_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -28
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, i8* %src, i32 -30
  %1 = load i8, i8* %arrayidx4, align 1, !tbaa !2
  %conv5 = zext i8 %1 to i32
  %sub6 = sub nsw i32 %conv, %conv5
  %arrayidx12 = getelementptr inbounds i8, i8* %src, i32 127
  %2 = load i8, i8* %arrayidx12, align 1, !tbaa !2
  %conv13 = zext i8 %2 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %src, i32 63
  %3 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %3 to i32
  %sub19 = sub nsw i32 %conv13, %conv18
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 -27
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %4 to i32
  %arrayidx4.1 = getelementptr inbounds i8, i8* %src, i32 -31
  %5 = load i8, i8* %arrayidx4.1, align 1, !tbaa !2
  %conv5.1 = zext i8 %5 to i32
  %sub6.1 = sub nsw i32 %conv.1, %conv5.1
  %mul.1 = shl nsw i32 %sub6.1, 1
  %add7.1 = add nsw i32 %mul.1, %sub6
  %arrayidx12.1 = getelementptr inbounds i8, i8* %src, i32 159
  %6 = load i8, i8* %arrayidx12.1, align 1, !tbaa !2
  %conv13.1 = zext i8 %6 to i32
  %arrayidx17.1 = getelementptr inbounds i8, i8* %src, i32 31
  %7 = load i8, i8* %arrayidx17.1, align 1, !tbaa !2
  %conv18.1 = zext i8 %7 to i32
  %sub19.1 = sub nsw i32 %conv13.1, %conv18.1
  %mul20.1 = shl nsw i32 %sub19.1, 1
  %add21.1 = add nsw i32 %mul20.1, %sub19
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 -26
  %8 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %8 to i32
  %arrayidx4.2 = getelementptr inbounds i8, i8* %src, i32 -32
  %9 = load i8, i8* %arrayidx4.2, align 1, !tbaa !2
  %conv5.2 = zext i8 %9 to i32
  %sub6.2 = sub nsw i32 %conv.2, %conv5.2
  %mul.2 = mul nsw i32 %sub6.2, 3
  %add7.2 = add nsw i32 %mul.2, %add7.1
  %arrayidx12.2 = getelementptr inbounds i8, i8* %src, i32 191
  %10 = load i8, i8* %arrayidx12.2, align 1, !tbaa !2
  %conv13.2 = zext i8 %10 to i32
  %arrayidx17.2 = getelementptr inbounds i8, i8* %src, i32 -1
  %11 = load i8, i8* %arrayidx17.2, align 1, !tbaa !2
  %conv18.2 = zext i8 %11 to i32
  %sub19.2 = sub nsw i32 %conv13.2, %conv18.2
  %mul20.2 = mul nsw i32 %sub19.2, 3
  %add21.2 = add nsw i32 %mul20.2, %add21.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 -25
  %12 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %12 to i32
  %arrayidx4.3 = getelementptr inbounds i8, i8* %src, i32 -33
  %13 = load i8, i8* %arrayidx4.3, align 1, !tbaa !2
  %conv5.3 = zext i8 %13 to i32
  %sub6.3 = sub nsw i32 %conv.3, %conv5.3
  %mul.3 = shl nsw i32 %sub6.3, 2
  %add7.3 = add nsw i32 %mul.3, %add7.2
  %arrayidx12.3 = getelementptr inbounds i8, i8* %src, i32 223
  %14 = load i8, i8* %arrayidx12.3, align 1, !tbaa !2
  %conv13.3 = zext i8 %14 to i32
  %sub19.3 = sub nsw i32 %conv13.3, %conv5.3
  %mul20.3 = shl nsw i32 %sub19.3, 2
  %add21.3 = add nsw i32 %mul20.3, %add21.2
  %add26 = add nuw nsw i32 %conv.3, %conv13.3
  %mul27 = shl nuw nsw i32 %add26, 4
  %mul28 = mul nsw i32 %add7.3, 17
  %add29 = add nsw i32 %mul28, 16
  %shr = ashr i32 %add29, 5
  %mul30 = mul nsw i32 %add21.3, 17
  %add31 = add nsw i32 %mul30, 16
  %shr32 = ashr i32 %add31, 5
  %reass.add = add nsw i32 %shr, %shr32
  %reass.mul = mul nsw i32 %reass.add, -3
  %sub36 = add nsw i32 %reass.mul, 16
  %add37 = add nsw i32 %sub36, %mul27
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond43.preheader, %entry
  %y.095 = phi i32 [ 0, %entry ], [ %inc56, %for.cond43.preheader ]
  %i00.094 = phi i32 [ %add37, %entry ], [ %add54, %for.cond43.preheader ]
  %src.addr.093 = phi i8* [ %src, %entry ], [ %add.ptr, %for.cond43.preheader ]
  %shr48 = ashr i32 %i00.094, 5
  %tobool.i = icmp ugt i32 %shr48, 255
  %sub.i = sub nsw i32 0, %shr48
  %shr.i = ashr i32 %sub.i, 31
  %cond.i = select i1 %tobool.i, i32 %shr.i, i32 %shr48
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, i8* %src.addr.093, align 1, !tbaa !2
  %add50 = add nsw i32 %i00.094, %shr
  %shr48.1 = ashr i32 %add50, 5
  %tobool.i.1 = icmp ugt i32 %shr48.1, 255
  %sub.i.1 = sub nsw i32 0, %shr48.1
  %shr.i.1 = ashr i32 %sub.i.1, 31
  %cond.i.1 = select i1 %tobool.i.1, i32 %shr.i.1, i32 %shr48.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  %arrayidx49.1 = getelementptr inbounds i8, i8* %src.addr.093, i32 1
  store i8 %conv.i.1, i8* %arrayidx49.1, align 1, !tbaa !2
  %add50.1 = add nsw i32 %add50, %shr
  %shr48.2 = ashr i32 %add50.1, 5
  %tobool.i.2 = icmp ugt i32 %shr48.2, 255
  %sub.i.2 = sub nsw i32 0, %shr48.2
  %shr.i.2 = ashr i32 %sub.i.2, 31
  %cond.i.2 = select i1 %tobool.i.2, i32 %shr.i.2, i32 %shr48.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  %arrayidx49.2 = getelementptr inbounds i8, i8* %src.addr.093, i32 2
  store i8 %conv.i.2, i8* %arrayidx49.2, align 1, !tbaa !2
  %add50.2 = add nsw i32 %add50.1, %shr
  %shr48.3 = ashr i32 %add50.2, 5
  %tobool.i.3 = icmp ugt i32 %shr48.3, 255
  %sub.i.3 = sub nsw i32 0, %shr48.3
  %shr.i.3 = ashr i32 %sub.i.3, 31
  %cond.i.3 = select i1 %tobool.i.3, i32 %shr.i.3, i32 %shr48.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  %arrayidx49.3 = getelementptr inbounds i8, i8* %src.addr.093, i32 3
  store i8 %conv.i.3, i8* %arrayidx49.3, align 1, !tbaa !2
  %add50.3 = add nsw i32 %add50.2, %shr
  %shr48.4 = ashr i32 %add50.3, 5
  %tobool.i.4 = icmp ugt i32 %shr48.4, 255
  %sub.i.4 = sub nsw i32 0, %shr48.4
  %shr.i.4 = ashr i32 %sub.i.4, 31
  %cond.i.4 = select i1 %tobool.i.4, i32 %shr.i.4, i32 %shr48.4
  %conv.i.4 = trunc i32 %cond.i.4 to i8
  %arrayidx49.4 = getelementptr inbounds i8, i8* %src.addr.093, i32 4
  store i8 %conv.i.4, i8* %arrayidx49.4, align 1, !tbaa !2
  %add50.4 = add nsw i32 %add50.3, %shr
  %shr48.5 = ashr i32 %add50.4, 5
  %tobool.i.5 = icmp ugt i32 %shr48.5, 255
  %sub.i.5 = sub nsw i32 0, %shr48.5
  %shr.i.5 = ashr i32 %sub.i.5, 31
  %cond.i.5 = select i1 %tobool.i.5, i32 %shr.i.5, i32 %shr48.5
  %conv.i.5 = trunc i32 %cond.i.5 to i8
  %arrayidx49.5 = getelementptr inbounds i8, i8* %src.addr.093, i32 5
  store i8 %conv.i.5, i8* %arrayidx49.5, align 1, !tbaa !2
  %add50.5 = add nsw i32 %add50.4, %shr
  %shr48.6 = ashr i32 %add50.5, 5
  %tobool.i.6 = icmp ugt i32 %shr48.6, 255
  %sub.i.6 = sub nsw i32 0, %shr48.6
  %shr.i.6 = ashr i32 %sub.i.6, 31
  %cond.i.6 = select i1 %tobool.i.6, i32 %shr.i.6, i32 %shr48.6
  %conv.i.6 = trunc i32 %cond.i.6 to i8
  %arrayidx49.6 = getelementptr inbounds i8, i8* %src.addr.093, i32 6
  store i8 %conv.i.6, i8* %arrayidx49.6, align 1, !tbaa !2
  %add50.6 = add nsw i32 %add50.5, %shr
  %shr48.7 = ashr i32 %add50.6, 5
  %tobool.i.7 = icmp ugt i32 %shr48.7, 255
  %sub.i.7 = sub nsw i32 0, %shr48.7
  %shr.i.7 = ashr i32 %sub.i.7, 31
  %cond.i.7 = select i1 %tobool.i.7, i32 %shr.i.7, i32 %shr48.7
  %conv.i.7 = trunc i32 %cond.i.7 to i8
  %arrayidx49.7 = getelementptr inbounds i8, i8* %src.addr.093, i32 7
  store i8 %conv.i.7, i8* %arrayidx49.7, align 1, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %src.addr.093, i32 32
  %add54 = add nsw i32 %i00.094, %shr32
  %inc56 = add nuw nsw i32 %y.095, 1
  %exitcond = icmp eq i32 %inc56, 8
  br i1 %exitcond, label %for.cond.cleanup41, label %for.cond43.preheader

for.cond.cleanup41:                               ; preds = %for.cond43.preheader
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x16c_dc_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, i8* %src, i32 -28
  %1 = load i8, i8* %arrayidx4, align 1, !tbaa !2
  %conv5 = zext i8 %1 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %src, i32 -1
  %2 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %2 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %src, i32 127
  %3 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %3 to i32
  %arrayidx21 = getelementptr inbounds i8, i8* %src, i32 255
  %4 = load i8, i8* %arrayidx21, align 1, !tbaa !2
  %conv22 = zext i8 %4 to i32
  %arrayidx27 = getelementptr inbounds i8, i8* %src, i32 383
  %5 = load i8, i8* %arrayidx27, align 1, !tbaa !2
  %conv28 = zext i8 %5 to i32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 -31
  %6 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %6 to i32
  %add1.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx4.1 = getelementptr inbounds i8, i8* %src, i32 -27
  %7 = load i8, i8* %arrayidx4.1, align 1, !tbaa !2
  %conv5.1 = zext i8 %7 to i32
  %add6.1 = add nuw nsw i32 %conv5, %conv5.1
  %arrayidx9.1 = getelementptr inbounds i8, i8* %src, i32 31
  %8 = load i8, i8* %arrayidx9.1, align 1, !tbaa !2
  %conv10.1 = zext i8 %8 to i32
  %add11.1 = add nuw nsw i32 %conv10, %conv10.1
  %arrayidx15.1 = getelementptr inbounds i8, i8* %src, i32 159
  %9 = load i8, i8* %arrayidx15.1, align 1, !tbaa !2
  %conv16.1 = zext i8 %9 to i32
  %add17.1 = add nuw nsw i32 %conv16, %conv16.1
  %arrayidx21.1 = getelementptr inbounds i8, i8* %src, i32 287
  %10 = load i8, i8* %arrayidx21.1, align 1, !tbaa !2
  %conv22.1 = zext i8 %10 to i32
  %add23.1 = add nuw nsw i32 %conv22, %conv22.1
  %arrayidx27.1 = getelementptr inbounds i8, i8* %src, i32 415
  %11 = load i8, i8* %arrayidx27.1, align 1, !tbaa !2
  %conv28.1 = zext i8 %11 to i32
  %add29.1 = add nuw nsw i32 %conv28, %conv28.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 -30
  %12 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %12 to i32
  %add1.2 = add nuw nsw i32 %add1.1, %conv.2
  %arrayidx4.2 = getelementptr inbounds i8, i8* %src, i32 -26
  %13 = load i8, i8* %arrayidx4.2, align 1, !tbaa !2
  %conv5.2 = zext i8 %13 to i32
  %add6.2 = add nuw nsw i32 %add6.1, %conv5.2
  %arrayidx9.2 = getelementptr inbounds i8, i8* %src, i32 63
  %14 = load i8, i8* %arrayidx9.2, align 1, !tbaa !2
  %conv10.2 = zext i8 %14 to i32
  %add11.2 = add nuw nsw i32 %add11.1, %conv10.2
  %arrayidx15.2 = getelementptr inbounds i8, i8* %src, i32 191
  %15 = load i8, i8* %arrayidx15.2, align 1, !tbaa !2
  %conv16.2 = zext i8 %15 to i32
  %add17.2 = add nuw nsw i32 %add17.1, %conv16.2
  %arrayidx21.2 = getelementptr inbounds i8, i8* %src, i32 319
  %16 = load i8, i8* %arrayidx21.2, align 1, !tbaa !2
  %conv22.2 = zext i8 %16 to i32
  %add23.2 = add nuw nsw i32 %add23.1, %conv22.2
  %arrayidx27.2 = getelementptr inbounds i8, i8* %src, i32 447
  %17 = load i8, i8* %arrayidx27.2, align 1, !tbaa !2
  %conv28.2 = zext i8 %17 to i32
  %add29.2 = add nuw nsw i32 %add29.1, %conv28.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 -29
  %18 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %18 to i32
  %add1.3 = add nuw nsw i32 %add1.2, %conv.3
  %arrayidx4.3 = getelementptr inbounds i8, i8* %src, i32 -25
  %19 = load i8, i8* %arrayidx4.3, align 1, !tbaa !2
  %conv5.3 = zext i8 %19 to i32
  %add6.3 = add nuw nsw i32 %add6.2, %conv5.3
  %arrayidx9.3 = getelementptr inbounds i8, i8* %src, i32 95
  %20 = load i8, i8* %arrayidx9.3, align 1, !tbaa !2
  %conv10.3 = zext i8 %20 to i32
  %add11.3 = add nuw nsw i32 %add11.2, %conv10.3
  %arrayidx15.3 = getelementptr inbounds i8, i8* %src, i32 223
  %21 = load i8, i8* %arrayidx15.3, align 1, !tbaa !2
  %conv16.3 = zext i8 %21 to i32
  %add17.3 = add nuw nsw i32 %add17.2, %conv16.3
  %arrayidx21.3 = getelementptr inbounds i8, i8* %src, i32 351
  %22 = load i8, i8* %arrayidx21.3, align 1, !tbaa !2
  %conv22.3 = zext i8 %22 to i32
  %add23.3 = add nuw nsw i32 %add23.2, %conv22.3
  %arrayidx27.3 = getelementptr inbounds i8, i8* %src, i32 479
  %23 = load i8, i8* %arrayidx27.3, align 1, !tbaa !2
  %conv28.3 = zext i8 %23 to i32
  %add29.3 = add nuw nsw i32 %add29.2, %conv28.3
  %add30 = add nuw nsw i32 %add11.3, 4
  %add31 = add nuw nsw i32 %add30, %add1.3
  %24 = lshr i32 %add31, 3
  %mul32 = mul nuw i32 %24, 16843009
  %add33 = add nuw nsw i32 %add6.3, 2
  %25 = lshr i32 %add33, 2
  %mul35 = mul nuw i32 %25, 16843009
  %add36 = add nuw nsw i32 %add17.3, 2
  %26 = lshr i32 %add36, 2
  %add39 = add nuw nsw i32 %add6.3, 4
  %add40 = add nuw nsw i32 %add39, %add17.3
  %27 = lshr i32 %add40, 3
  %add43 = add nuw nsw i32 %add23.3, 2
  %28 = lshr i32 %add43, 2
  %add47 = add nuw nsw i32 %add39, %add23.3
  %29 = lshr i32 %add47, 3
  %add50 = add nuw nsw i32 %add29.3, 2
  %30 = lshr i32 %add50, 2
  %add54 = add nuw nsw i32 %add39, %add29.3
  %31 = lshr i32 %add54, 3
  %i62 = bitcast i8* %src to i32*
  store i32 %mul32, i32* %i62, align 4, !tbaa !2
  %add.ptr63 = getelementptr inbounds i8, i8* %src, i32 4
  %i64 = bitcast i8* %add.ptr63 to i32*
  store i32 %mul35, i32* %i64, align 4, !tbaa !2
  %add.ptr65 = getelementptr inbounds i8, i8* %src, i32 32
  %i62.1 = bitcast i8* %add.ptr65 to i32*
  store i32 %mul32, i32* %i62.1, align 4, !tbaa !2
  %add.ptr63.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i64.1 = bitcast i8* %add.ptr63.1 to i32*
  store i32 %mul35, i32* %i64.1, align 4, !tbaa !2
  %add.ptr65.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i62.2 = bitcast i8* %add.ptr65.1 to i32*
  store i32 %mul32, i32* %i62.2, align 4, !tbaa !2
  %add.ptr63.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i64.2 = bitcast i8* %add.ptr63.2 to i32*
  store i32 %mul35, i32* %i64.2, align 4, !tbaa !2
  %add.ptr65.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i62.3 = bitcast i8* %add.ptr65.2 to i32*
  store i32 %mul32, i32* %i62.3, align 4, !tbaa !2
  %add.ptr63.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i64.3 = bitcast i8* %add.ptr63.3 to i32*
  store i32 %mul35, i32* %i64.3, align 4, !tbaa !2
  %add.ptr65.3 = getelementptr inbounds i8, i8* %src, i32 128
  %mul38 = mul nuw i32 %26, 16843009
  %mul42 = mul nuw i32 %27, 16843009
  %mul45 = mul nuw i32 %28, 16843009
  %mul49 = mul nuw i32 %29, 16843009
  %mul52 = mul nuw i32 %30, 16843009
  %mul56 = mul nuw i32 %31, 16843009
  %i76 = bitcast i8* %add.ptr65.3 to i32*
  store i32 %mul38, i32* %i76, align 4, !tbaa !2
  %add.ptr77 = getelementptr inbounds i8, i8* %src, i32 132
  %i78 = bitcast i8* %add.ptr77 to i32*
  store i32 %mul42, i32* %i78, align 4, !tbaa !2
  %add.ptr79 = getelementptr inbounds i8, i8* %src, i32 160
  %i76.1 = bitcast i8* %add.ptr79 to i32*
  store i32 %mul38, i32* %i76.1, align 4, !tbaa !2
  %add.ptr77.1 = getelementptr inbounds i8, i8* %src, i32 164
  %i78.1 = bitcast i8* %add.ptr77.1 to i32*
  store i32 %mul42, i32* %i78.1, align 4, !tbaa !2
  %add.ptr79.1 = getelementptr inbounds i8, i8* %src, i32 192
  %i76.2 = bitcast i8* %add.ptr79.1 to i32*
  store i32 %mul38, i32* %i76.2, align 4, !tbaa !2
  %add.ptr77.2 = getelementptr inbounds i8, i8* %src, i32 196
  %i78.2 = bitcast i8* %add.ptr77.2 to i32*
  store i32 %mul42, i32* %i78.2, align 4, !tbaa !2
  %add.ptr79.2 = getelementptr inbounds i8, i8* %src, i32 224
  %i76.3 = bitcast i8* %add.ptr79.2 to i32*
  store i32 %mul38, i32* %i76.3, align 4, !tbaa !2
  %add.ptr77.3 = getelementptr inbounds i8, i8* %src, i32 228
  %i78.3 = bitcast i8* %add.ptr77.3 to i32*
  store i32 %mul42, i32* %i78.3, align 4, !tbaa !2
  %add.ptr79.3 = getelementptr inbounds i8, i8* %src, i32 256
  %i90 = bitcast i8* %add.ptr79.3 to i32*
  store i32 %mul45, i32* %i90, align 4, !tbaa !2
  %add.ptr91 = getelementptr inbounds i8, i8* %src, i32 260
  %i92 = bitcast i8* %add.ptr91 to i32*
  store i32 %mul49, i32* %i92, align 4, !tbaa !2
  %add.ptr93 = getelementptr inbounds i8, i8* %src, i32 288
  %i90.1 = bitcast i8* %add.ptr93 to i32*
  store i32 %mul45, i32* %i90.1, align 4, !tbaa !2
  %add.ptr91.1 = getelementptr inbounds i8, i8* %src, i32 292
  %i92.1 = bitcast i8* %add.ptr91.1 to i32*
  store i32 %mul49, i32* %i92.1, align 4, !tbaa !2
  %add.ptr93.1 = getelementptr inbounds i8, i8* %src, i32 320
  %i90.2 = bitcast i8* %add.ptr93.1 to i32*
  store i32 %mul45, i32* %i90.2, align 4, !tbaa !2
  %add.ptr91.2 = getelementptr inbounds i8, i8* %src, i32 324
  %i92.2 = bitcast i8* %add.ptr91.2 to i32*
  store i32 %mul49, i32* %i92.2, align 4, !tbaa !2
  %add.ptr93.2 = getelementptr inbounds i8, i8* %src, i32 352
  %i90.3 = bitcast i8* %add.ptr93.2 to i32*
  store i32 %mul45, i32* %i90.3, align 4, !tbaa !2
  %add.ptr91.3 = getelementptr inbounds i8, i8* %src, i32 356
  %i92.3 = bitcast i8* %add.ptr91.3 to i32*
  store i32 %mul49, i32* %i92.3, align 4, !tbaa !2
  %add.ptr93.3 = getelementptr inbounds i8, i8* %src, i32 384
  %i104 = bitcast i8* %add.ptr93.3 to i32*
  store i32 %mul52, i32* %i104, align 4, !tbaa !2
  %add.ptr105 = getelementptr inbounds i8, i8* %src, i32 388
  %i106 = bitcast i8* %add.ptr105 to i32*
  store i32 %mul56, i32* %i106, align 4, !tbaa !2
  %add.ptr107 = getelementptr inbounds i8, i8* %src, i32 416
  %i104.1 = bitcast i8* %add.ptr107 to i32*
  store i32 %mul52, i32* %i104.1, align 4, !tbaa !2
  %add.ptr105.1 = getelementptr inbounds i8, i8* %src, i32 420
  %i106.1 = bitcast i8* %add.ptr105.1 to i32*
  store i32 %mul56, i32* %i106.1, align 4, !tbaa !2
  %add.ptr107.1 = getelementptr inbounds i8, i8* %src, i32 448
  %i104.2 = bitcast i8* %add.ptr107.1 to i32*
  store i32 %mul52, i32* %i104.2, align 4, !tbaa !2
  %add.ptr105.2 = getelementptr inbounds i8, i8* %src, i32 452
  %i106.2 = bitcast i8* %add.ptr105.2 to i32*
  store i32 %mul56, i32* %i106.2, align 4, !tbaa !2
  %add.ptr107.2 = getelementptr inbounds i8, i8* %src, i32 480
  %i104.3 = bitcast i8* %add.ptr107.2 to i32*
  store i32 %mul52, i32* %i104.3, align 4, !tbaa !2
  %add.ptr105.3 = getelementptr inbounds i8, i8* %src, i32 484
  %i106.3 = bitcast i8* %add.ptr105.3 to i32*
  store i32 %mul56, i32* %i106.3, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x16c_h_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %mul = mul nuw i32 %conv, 16843009
  %i1 = bitcast i8* %src to i32*
  store i32 %mul, i32* %i1, align 4, !tbaa !2
  %add.ptr2 = getelementptr inbounds i8, i8* %src, i32 4
  %i3 = bitcast i8* %add.ptr2 to i32*
  store i32 %mul, i32* %i3, align 4, !tbaa !2
  %add.ptr4 = getelementptr inbounds i8, i8* %src, i32 32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %1 to i32
  %mul.1 = mul nuw i32 %conv.1, 16843009
  %i1.1 = bitcast i8* %add.ptr4 to i32*
  store i32 %mul.1, i32* %i1.1, align 4, !tbaa !2
  %add.ptr2.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i3.1 = bitcast i8* %add.ptr2.1 to i32*
  store i32 %mul.1, i32* %i3.1, align 4, !tbaa !2
  %add.ptr4.1 = getelementptr inbounds i8, i8* %src, i32 64
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %2 to i32
  %mul.2 = mul nuw i32 %conv.2, 16843009
  %i1.2 = bitcast i8* %add.ptr4.1 to i32*
  store i32 %mul.2, i32* %i1.2, align 4, !tbaa !2
  %add.ptr2.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i3.2 = bitcast i8* %add.ptr2.2 to i32*
  store i32 %mul.2, i32* %i3.2, align 4, !tbaa !2
  %add.ptr4.2 = getelementptr inbounds i8, i8* %src, i32 96
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %3 to i32
  %mul.3 = mul nuw i32 %conv.3, 16843009
  %i1.3 = bitcast i8* %add.ptr4.2 to i32*
  store i32 %mul.3, i32* %i1.3, align 4, !tbaa !2
  %add.ptr2.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i3.3 = bitcast i8* %add.ptr2.3 to i32*
  store i32 %mul.3, i32* %i3.3, align 4, !tbaa !2
  %add.ptr4.3 = getelementptr inbounds i8, i8* %src, i32 128
  %arrayidx.4 = getelementptr inbounds i8, i8* %src, i32 127
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !2
  %conv.4 = zext i8 %4 to i32
  %mul.4 = mul nuw i32 %conv.4, 16843009
  %i1.4 = bitcast i8* %add.ptr4.3 to i32*
  store i32 %mul.4, i32* %i1.4, align 4, !tbaa !2
  %add.ptr2.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i3.4 = bitcast i8* %add.ptr2.4 to i32*
  store i32 %mul.4, i32* %i3.4, align 4, !tbaa !2
  %add.ptr4.4 = getelementptr inbounds i8, i8* %src, i32 160
  %arrayidx.5 = getelementptr inbounds i8, i8* %src, i32 159
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !2
  %conv.5 = zext i8 %5 to i32
  %mul.5 = mul nuw i32 %conv.5, 16843009
  %i1.5 = bitcast i8* %add.ptr4.4 to i32*
  store i32 %mul.5, i32* %i1.5, align 4, !tbaa !2
  %add.ptr2.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i3.5 = bitcast i8* %add.ptr2.5 to i32*
  store i32 %mul.5, i32* %i3.5, align 4, !tbaa !2
  %add.ptr4.5 = getelementptr inbounds i8, i8* %src, i32 192
  %arrayidx.6 = getelementptr inbounds i8, i8* %src, i32 191
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !2
  %conv.6 = zext i8 %6 to i32
  %mul.6 = mul nuw i32 %conv.6, 16843009
  %i1.6 = bitcast i8* %add.ptr4.5 to i32*
  store i32 %mul.6, i32* %i1.6, align 4, !tbaa !2
  %add.ptr2.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i3.6 = bitcast i8* %add.ptr2.6 to i32*
  store i32 %mul.6, i32* %i3.6, align 4, !tbaa !2
  %add.ptr4.6 = getelementptr inbounds i8, i8* %src, i32 224
  %arrayidx.7 = getelementptr inbounds i8, i8* %src, i32 223
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !2
  %conv.7 = zext i8 %7 to i32
  %mul.7 = mul nuw i32 %conv.7, 16843009
  %i1.7 = bitcast i8* %add.ptr4.6 to i32*
  store i32 %mul.7, i32* %i1.7, align 4, !tbaa !2
  %add.ptr2.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i3.7 = bitcast i8* %add.ptr2.7 to i32*
  store i32 %mul.7, i32* %i3.7, align 4, !tbaa !2
  %add.ptr4.7 = getelementptr inbounds i8, i8* %src, i32 256
  %arrayidx.8 = getelementptr inbounds i8, i8* %src, i32 255
  %8 = load i8, i8* %arrayidx.8, align 1, !tbaa !2
  %conv.8 = zext i8 %8 to i32
  %mul.8 = mul nuw i32 %conv.8, 16843009
  %i1.8 = bitcast i8* %add.ptr4.7 to i32*
  store i32 %mul.8, i32* %i1.8, align 4, !tbaa !2
  %add.ptr2.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i3.8 = bitcast i8* %add.ptr2.8 to i32*
  store i32 %mul.8, i32* %i3.8, align 4, !tbaa !2
  %add.ptr4.8 = getelementptr inbounds i8, i8* %src, i32 288
  %arrayidx.9 = getelementptr inbounds i8, i8* %src, i32 287
  %9 = load i8, i8* %arrayidx.9, align 1, !tbaa !2
  %conv.9 = zext i8 %9 to i32
  %mul.9 = mul nuw i32 %conv.9, 16843009
  %i1.9 = bitcast i8* %add.ptr4.8 to i32*
  store i32 %mul.9, i32* %i1.9, align 4, !tbaa !2
  %add.ptr2.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i3.9 = bitcast i8* %add.ptr2.9 to i32*
  store i32 %mul.9, i32* %i3.9, align 4, !tbaa !2
  %add.ptr4.9 = getelementptr inbounds i8, i8* %src, i32 320
  %arrayidx.10 = getelementptr inbounds i8, i8* %src, i32 319
  %10 = load i8, i8* %arrayidx.10, align 1, !tbaa !2
  %conv.10 = zext i8 %10 to i32
  %mul.10 = mul nuw i32 %conv.10, 16843009
  %i1.10 = bitcast i8* %add.ptr4.9 to i32*
  store i32 %mul.10, i32* %i1.10, align 4, !tbaa !2
  %add.ptr2.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i3.10 = bitcast i8* %add.ptr2.10 to i32*
  store i32 %mul.10, i32* %i3.10, align 4, !tbaa !2
  %add.ptr4.10 = getelementptr inbounds i8, i8* %src, i32 352
  %arrayidx.11 = getelementptr inbounds i8, i8* %src, i32 351
  %11 = load i8, i8* %arrayidx.11, align 1, !tbaa !2
  %conv.11 = zext i8 %11 to i32
  %mul.11 = mul nuw i32 %conv.11, 16843009
  %i1.11 = bitcast i8* %add.ptr4.10 to i32*
  store i32 %mul.11, i32* %i1.11, align 4, !tbaa !2
  %add.ptr2.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i3.11 = bitcast i8* %add.ptr2.11 to i32*
  store i32 %mul.11, i32* %i3.11, align 4, !tbaa !2
  %add.ptr4.11 = getelementptr inbounds i8, i8* %src, i32 384
  %arrayidx.12 = getelementptr inbounds i8, i8* %src, i32 383
  %12 = load i8, i8* %arrayidx.12, align 1, !tbaa !2
  %conv.12 = zext i8 %12 to i32
  %mul.12 = mul nuw i32 %conv.12, 16843009
  %i1.12 = bitcast i8* %add.ptr4.11 to i32*
  store i32 %mul.12, i32* %i1.12, align 4, !tbaa !2
  %add.ptr2.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i3.12 = bitcast i8* %add.ptr2.12 to i32*
  store i32 %mul.12, i32* %i3.12, align 4, !tbaa !2
  %add.ptr4.12 = getelementptr inbounds i8, i8* %src, i32 416
  %arrayidx.13 = getelementptr inbounds i8, i8* %src, i32 415
  %13 = load i8, i8* %arrayidx.13, align 1, !tbaa !2
  %conv.13 = zext i8 %13 to i32
  %mul.13 = mul nuw i32 %conv.13, 16843009
  %i1.13 = bitcast i8* %add.ptr4.12 to i32*
  store i32 %mul.13, i32* %i1.13, align 4, !tbaa !2
  %add.ptr2.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i3.13 = bitcast i8* %add.ptr2.13 to i32*
  store i32 %mul.13, i32* %i3.13, align 4, !tbaa !2
  %add.ptr4.13 = getelementptr inbounds i8, i8* %src, i32 448
  %arrayidx.14 = getelementptr inbounds i8, i8* %src, i32 447
  %14 = load i8, i8* %arrayidx.14, align 1, !tbaa !2
  %conv.14 = zext i8 %14 to i32
  %mul.14 = mul nuw i32 %conv.14, 16843009
  %i1.14 = bitcast i8* %add.ptr4.13 to i32*
  store i32 %mul.14, i32* %i1.14, align 4, !tbaa !2
  %add.ptr2.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i3.14 = bitcast i8* %add.ptr2.14 to i32*
  store i32 %mul.14, i32* %i3.14, align 4, !tbaa !2
  %add.ptr4.14 = getelementptr inbounds i8, i8* %src, i32 480
  %arrayidx.15 = getelementptr inbounds i8, i8* %src, i32 479
  %15 = load i8, i8* %arrayidx.15, align 1, !tbaa !2
  %conv.15 = zext i8 %15 to i32
  %mul.15 = mul nuw i32 %conv.15, 16843009
  %i1.15 = bitcast i8* %add.ptr4.14 to i32*
  store i32 %mul.15, i32* %i1.15, align 4, !tbaa !2
  %add.ptr2.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i3.15 = bitcast i8* %add.ptr2.15 to i32*
  store i32 %mul.15, i32* %i3.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x16c_v_c(i8* nocapture %src) #0 {
entry:
  %add.ptr1 = getelementptr inbounds i8, i8* %src, i32 -32
  %i = bitcast i8* %add.ptr1 to i32*
  %0 = load i32, i32* %i, align 4, !tbaa !2
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i32 -28
  %i4 = bitcast i8* %add.ptr3 to i32*
  %1 = load i32, i32* %i4, align 4, !tbaa !2
  %i7 = bitcast i8* %src to i32*
  store i32 %0, i32* %i7, align 4, !tbaa !2
  %add.ptr8 = getelementptr inbounds i8, i8* %src, i32 4
  %i9 = bitcast i8* %add.ptr8 to i32*
  store i32 %1, i32* %i9, align 4, !tbaa !2
  %add.ptr10 = getelementptr inbounds i8, i8* %src, i32 32
  %i7.1 = bitcast i8* %add.ptr10 to i32*
  store i32 %0, i32* %i7.1, align 4, !tbaa !2
  %add.ptr8.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i9.1 = bitcast i8* %add.ptr8.1 to i32*
  store i32 %1, i32* %i9.1, align 4, !tbaa !2
  %add.ptr10.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i7.2 = bitcast i8* %add.ptr10.1 to i32*
  store i32 %0, i32* %i7.2, align 4, !tbaa !2
  %add.ptr8.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i9.2 = bitcast i8* %add.ptr8.2 to i32*
  store i32 %1, i32* %i9.2, align 4, !tbaa !2
  %add.ptr10.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i7.3 = bitcast i8* %add.ptr10.2 to i32*
  store i32 %0, i32* %i7.3, align 4, !tbaa !2
  %add.ptr8.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i9.3 = bitcast i8* %add.ptr8.3 to i32*
  store i32 %1, i32* %i9.3, align 4, !tbaa !2
  %add.ptr10.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i7.4 = bitcast i8* %add.ptr10.3 to i32*
  store i32 %0, i32* %i7.4, align 4, !tbaa !2
  %add.ptr8.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i9.4 = bitcast i8* %add.ptr8.4 to i32*
  store i32 %1, i32* %i9.4, align 4, !tbaa !2
  %add.ptr10.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i7.5 = bitcast i8* %add.ptr10.4 to i32*
  store i32 %0, i32* %i7.5, align 4, !tbaa !2
  %add.ptr8.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i9.5 = bitcast i8* %add.ptr8.5 to i32*
  store i32 %1, i32* %i9.5, align 4, !tbaa !2
  %add.ptr10.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i7.6 = bitcast i8* %add.ptr10.5 to i32*
  store i32 %0, i32* %i7.6, align 4, !tbaa !2
  %add.ptr8.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i9.6 = bitcast i8* %add.ptr8.6 to i32*
  store i32 %1, i32* %i9.6, align 4, !tbaa !2
  %add.ptr10.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i7.7 = bitcast i8* %add.ptr10.6 to i32*
  store i32 %0, i32* %i7.7, align 4, !tbaa !2
  %add.ptr8.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i9.7 = bitcast i8* %add.ptr8.7 to i32*
  store i32 %1, i32* %i9.7, align 4, !tbaa !2
  %add.ptr10.7 = getelementptr inbounds i8, i8* %src, i32 256
  %i7.8 = bitcast i8* %add.ptr10.7 to i32*
  store i32 %0, i32* %i7.8, align 4, !tbaa !2
  %add.ptr8.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i9.8 = bitcast i8* %add.ptr8.8 to i32*
  store i32 %1, i32* %i9.8, align 4, !tbaa !2
  %add.ptr10.8 = getelementptr inbounds i8, i8* %src, i32 288
  %i7.9 = bitcast i8* %add.ptr10.8 to i32*
  store i32 %0, i32* %i7.9, align 4, !tbaa !2
  %add.ptr8.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i9.9 = bitcast i8* %add.ptr8.9 to i32*
  store i32 %1, i32* %i9.9, align 4, !tbaa !2
  %add.ptr10.9 = getelementptr inbounds i8, i8* %src, i32 320
  %i7.10 = bitcast i8* %add.ptr10.9 to i32*
  store i32 %0, i32* %i7.10, align 4, !tbaa !2
  %add.ptr8.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i9.10 = bitcast i8* %add.ptr8.10 to i32*
  store i32 %1, i32* %i9.10, align 4, !tbaa !2
  %add.ptr10.10 = getelementptr inbounds i8, i8* %src, i32 352
  %i7.11 = bitcast i8* %add.ptr10.10 to i32*
  store i32 %0, i32* %i7.11, align 4, !tbaa !2
  %add.ptr8.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i9.11 = bitcast i8* %add.ptr8.11 to i32*
  store i32 %1, i32* %i9.11, align 4, !tbaa !2
  %add.ptr10.11 = getelementptr inbounds i8, i8* %src, i32 384
  %i7.12 = bitcast i8* %add.ptr10.11 to i32*
  store i32 %0, i32* %i7.12, align 4, !tbaa !2
  %add.ptr8.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i9.12 = bitcast i8* %add.ptr8.12 to i32*
  store i32 %1, i32* %i9.12, align 4, !tbaa !2
  %add.ptr10.12 = getelementptr inbounds i8, i8* %src, i32 416
  %i7.13 = bitcast i8* %add.ptr10.12 to i32*
  store i32 %0, i32* %i7.13, align 4, !tbaa !2
  %add.ptr8.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i9.13 = bitcast i8* %add.ptr8.13 to i32*
  store i32 %1, i32* %i9.13, align 4, !tbaa !2
  %add.ptr10.13 = getelementptr inbounds i8, i8* %src, i32 448
  %i7.14 = bitcast i8* %add.ptr10.13 to i32*
  store i32 %0, i32* %i7.14, align 4, !tbaa !2
  %add.ptr8.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i9.14 = bitcast i8* %add.ptr8.14 to i32*
  store i32 %1, i32* %i9.14, align 4, !tbaa !2
  %add.ptr10.14 = getelementptr inbounds i8, i8* %src, i32 480
  %i7.15 = bitcast i8* %add.ptr10.14 to i32*
  store i32 %0, i32* %i7.15, align 4, !tbaa !2
  %add.ptr8.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i9.15 = bitcast i8* %add.ptr8.15 to i32*
  store i32 %1, i32* %i9.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x16c_p_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -28
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, i8* %src, i32 -30
  %1 = load i8, i8* %arrayidx4, align 1, !tbaa !2
  %conv5 = zext i8 %1 to i32
  %sub6 = sub nsw i32 %conv, %conv5
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 -27
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %2 to i32
  %arrayidx4.1 = getelementptr inbounds i8, i8* %src, i32 -31
  %3 = load i8, i8* %arrayidx4.1, align 1, !tbaa !2
  %conv5.1 = zext i8 %3 to i32
  %sub6.1 = sub nsw i32 %conv.1, %conv5.1
  %mul.1 = shl nsw i32 %sub6.1, 1
  %add7.1 = add nsw i32 %mul.1, %sub6
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 -26
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %4 to i32
  %arrayidx4.2 = getelementptr inbounds i8, i8* %src, i32 -32
  %5 = load i8, i8* %arrayidx4.2, align 1, !tbaa !2
  %conv5.2 = zext i8 %5 to i32
  %sub6.2 = sub nsw i32 %conv.2, %conv5.2
  %mul.2 = mul nsw i32 %sub6.2, 3
  %add7.2 = add nsw i32 %mul.2, %add7.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 -25
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %6 to i32
  %arrayidx4.3 = getelementptr inbounds i8, i8* %src, i32 -33
  %7 = load i8, i8* %arrayidx4.3, align 1, !tbaa !2
  %conv5.3 = zext i8 %7 to i32
  %sub6.3 = sub nsw i32 %conv.3, %conv5.3
  %mul.3 = shl nsw i32 %sub6.3, 2
  %add7.3 = add nsw i32 %mul.3, %add7.2
  %arrayidx18 = getelementptr inbounds i8, i8* %src, i32 255
  %8 = load i8, i8* %arrayidx18, align 1, !tbaa !2
  %conv19 = zext i8 %8 to i32
  %arrayidx23 = getelementptr inbounds i8, i8* %src, i32 191
  %9 = load i8, i8* %arrayidx23, align 1, !tbaa !2
  %conv24 = zext i8 %9 to i32
  %sub25 = sub nsw i32 %conv19, %conv24
  %arrayidx18.1 = getelementptr inbounds i8, i8* %src, i32 287
  %10 = load i8, i8* %arrayidx18.1, align 1, !tbaa !2
  %conv19.1 = zext i8 %10 to i32
  %arrayidx23.1 = getelementptr inbounds i8, i8* %src, i32 159
  %11 = load i8, i8* %arrayidx23.1, align 1, !tbaa !2
  %conv24.1 = zext i8 %11 to i32
  %sub25.1 = sub nsw i32 %conv19.1, %conv24.1
  %mul26.1 = shl nsw i32 %sub25.1, 1
  %add27.1 = add nsw i32 %mul26.1, %sub25
  %arrayidx18.2 = getelementptr inbounds i8, i8* %src, i32 319
  %12 = load i8, i8* %arrayidx18.2, align 1, !tbaa !2
  %conv19.2 = zext i8 %12 to i32
  %arrayidx23.2 = getelementptr inbounds i8, i8* %src, i32 127
  %13 = load i8, i8* %arrayidx23.2, align 1, !tbaa !2
  %conv24.2 = zext i8 %13 to i32
  %sub25.2 = sub nsw i32 %conv19.2, %conv24.2
  %mul26.2 = mul nsw i32 %sub25.2, 3
  %add27.2 = add nsw i32 %mul26.2, %add27.1
  %arrayidx18.3 = getelementptr inbounds i8, i8* %src, i32 351
  %14 = load i8, i8* %arrayidx18.3, align 1, !tbaa !2
  %conv19.3 = zext i8 %14 to i32
  %arrayidx23.3 = getelementptr inbounds i8, i8* %src, i32 95
  %15 = load i8, i8* %arrayidx23.3, align 1, !tbaa !2
  %conv24.3 = zext i8 %15 to i32
  %sub25.3 = sub nsw i32 %conv19.3, %conv24.3
  %mul26.3 = shl nsw i32 %sub25.3, 2
  %add27.3 = add nsw i32 %mul26.3, %add27.2
  %arrayidx18.4 = getelementptr inbounds i8, i8* %src, i32 383
  %16 = load i8, i8* %arrayidx18.4, align 1, !tbaa !2
  %conv19.4 = zext i8 %16 to i32
  %arrayidx23.4 = getelementptr inbounds i8, i8* %src, i32 63
  %17 = load i8, i8* %arrayidx23.4, align 1, !tbaa !2
  %conv24.4 = zext i8 %17 to i32
  %sub25.4 = sub nsw i32 %conv19.4, %conv24.4
  %mul26.4 = mul nsw i32 %sub25.4, 5
  %add27.4 = add nsw i32 %mul26.4, %add27.3
  %arrayidx18.5 = getelementptr inbounds i8, i8* %src, i32 415
  %18 = load i8, i8* %arrayidx18.5, align 1, !tbaa !2
  %conv19.5 = zext i8 %18 to i32
  %arrayidx23.5 = getelementptr inbounds i8, i8* %src, i32 31
  %19 = load i8, i8* %arrayidx23.5, align 1, !tbaa !2
  %conv24.5 = zext i8 %19 to i32
  %sub25.5 = sub nsw i32 %conv19.5, %conv24.5
  %mul26.5 = mul nsw i32 %sub25.5, 6
  %add27.5 = add nsw i32 %mul26.5, %add27.4
  %arrayidx18.6 = getelementptr inbounds i8, i8* %src, i32 447
  %20 = load i8, i8* %arrayidx18.6, align 1, !tbaa !2
  %conv19.6 = zext i8 %20 to i32
  %arrayidx23.6 = getelementptr inbounds i8, i8* %src, i32 -1
  %21 = load i8, i8* %arrayidx23.6, align 1, !tbaa !2
  %conv24.6 = zext i8 %21 to i32
  %sub25.6 = sub nsw i32 %conv19.6, %conv24.6
  %mul26.6 = mul nsw i32 %sub25.6, 7
  %add27.6 = add nsw i32 %mul26.6, %add27.5
  %arrayidx18.7 = getelementptr inbounds i8, i8* %src, i32 479
  %22 = load i8, i8* %arrayidx18.7, align 1, !tbaa !2
  %conv19.7 = zext i8 %22 to i32
  %sub25.7 = sub nsw i32 %conv19.7, %conv5.3
  %mul26.7 = shl nsw i32 %sub25.7, 3
  %add27.7 = add nsw i32 %mul26.7, %add27.6
  %add35 = add nuw nsw i32 %conv.3, %conv19.7
  %mul36 = shl nuw nsw i32 %add35, 4
  %mul37 = mul nsw i32 %add7.3, 17
  %add38 = add nsw i32 %mul37, 16
  %shr = ashr i32 %add38, 5
  %mul39 = mul nsw i32 %add27.7, 5
  %add40 = add nsw i32 %mul39, 32
  %shr41 = ashr i32 %add40, 6
  %23 = mul nsw i32 %shr, -3
  %24 = mul nsw i32 %shr41, -7
  %sub43 = add nsw i32 %23, 16
  %sub45 = add nsw i32 %sub43, %24
  %add46 = add nsw i32 %sub45, %mul36
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.cond52.preheader, %entry
  %y.0106 = phi i32 [ 0, %entry ], [ %inc65, %for.cond52.preheader ]
  %i00.0105 = phi i32 [ %add46, %entry ], [ %add63, %for.cond52.preheader ]
  %src.addr.0104 = phi i8* [ %src, %entry ], [ %add.ptr, %for.cond52.preheader ]
  %shr57 = ashr i32 %i00.0105, 5
  %tobool.i = icmp ugt i32 %shr57, 255
  %sub.i = sub nsw i32 0, %shr57
  %shr.i = ashr i32 %sub.i, 31
  %cond.i = select i1 %tobool.i, i32 %shr.i, i32 %shr57
  %conv.i = trunc i32 %cond.i to i8
  store i8 %conv.i, i8* %src.addr.0104, align 1, !tbaa !2
  %add59 = add nsw i32 %i00.0105, %shr
  %shr57.1 = ashr i32 %add59, 5
  %tobool.i.1 = icmp ugt i32 %shr57.1, 255
  %sub.i.1 = sub nsw i32 0, %shr57.1
  %shr.i.1 = ashr i32 %sub.i.1, 31
  %cond.i.1 = select i1 %tobool.i.1, i32 %shr.i.1, i32 %shr57.1
  %conv.i.1 = trunc i32 %cond.i.1 to i8
  %arrayidx58.1 = getelementptr inbounds i8, i8* %src.addr.0104, i32 1
  store i8 %conv.i.1, i8* %arrayidx58.1, align 1, !tbaa !2
  %add59.1 = add nsw i32 %add59, %shr
  %shr57.2 = ashr i32 %add59.1, 5
  %tobool.i.2 = icmp ugt i32 %shr57.2, 255
  %sub.i.2 = sub nsw i32 0, %shr57.2
  %shr.i.2 = ashr i32 %sub.i.2, 31
  %cond.i.2 = select i1 %tobool.i.2, i32 %shr.i.2, i32 %shr57.2
  %conv.i.2 = trunc i32 %cond.i.2 to i8
  %arrayidx58.2 = getelementptr inbounds i8, i8* %src.addr.0104, i32 2
  store i8 %conv.i.2, i8* %arrayidx58.2, align 1, !tbaa !2
  %add59.2 = add nsw i32 %add59.1, %shr
  %shr57.3 = ashr i32 %add59.2, 5
  %tobool.i.3 = icmp ugt i32 %shr57.3, 255
  %sub.i.3 = sub nsw i32 0, %shr57.3
  %shr.i.3 = ashr i32 %sub.i.3, 31
  %cond.i.3 = select i1 %tobool.i.3, i32 %shr.i.3, i32 %shr57.3
  %conv.i.3 = trunc i32 %cond.i.3 to i8
  %arrayidx58.3 = getelementptr inbounds i8, i8* %src.addr.0104, i32 3
  store i8 %conv.i.3, i8* %arrayidx58.3, align 1, !tbaa !2
  %add59.3 = add nsw i32 %add59.2, %shr
  %shr57.4 = ashr i32 %add59.3, 5
  %tobool.i.4 = icmp ugt i32 %shr57.4, 255
  %sub.i.4 = sub nsw i32 0, %shr57.4
  %shr.i.4 = ashr i32 %sub.i.4, 31
  %cond.i.4 = select i1 %tobool.i.4, i32 %shr.i.4, i32 %shr57.4
  %conv.i.4 = trunc i32 %cond.i.4 to i8
  %arrayidx58.4 = getelementptr inbounds i8, i8* %src.addr.0104, i32 4
  store i8 %conv.i.4, i8* %arrayidx58.4, align 1, !tbaa !2
  %add59.4 = add nsw i32 %add59.3, %shr
  %shr57.5 = ashr i32 %add59.4, 5
  %tobool.i.5 = icmp ugt i32 %shr57.5, 255
  %sub.i.5 = sub nsw i32 0, %shr57.5
  %shr.i.5 = ashr i32 %sub.i.5, 31
  %cond.i.5 = select i1 %tobool.i.5, i32 %shr.i.5, i32 %shr57.5
  %conv.i.5 = trunc i32 %cond.i.5 to i8
  %arrayidx58.5 = getelementptr inbounds i8, i8* %src.addr.0104, i32 5
  store i8 %conv.i.5, i8* %arrayidx58.5, align 1, !tbaa !2
  %add59.5 = add nsw i32 %add59.4, %shr
  %shr57.6 = ashr i32 %add59.5, 5
  %tobool.i.6 = icmp ugt i32 %shr57.6, 255
  %sub.i.6 = sub nsw i32 0, %shr57.6
  %shr.i.6 = ashr i32 %sub.i.6, 31
  %cond.i.6 = select i1 %tobool.i.6, i32 %shr.i.6, i32 %shr57.6
  %conv.i.6 = trunc i32 %cond.i.6 to i8
  %arrayidx58.6 = getelementptr inbounds i8, i8* %src.addr.0104, i32 6
  store i8 %conv.i.6, i8* %arrayidx58.6, align 1, !tbaa !2
  %add59.6 = add nsw i32 %add59.5, %shr
  %shr57.7 = ashr i32 %add59.6, 5
  %tobool.i.7 = icmp ugt i32 %shr57.7, 255
  %sub.i.7 = sub nsw i32 0, %shr57.7
  %shr.i.7 = ashr i32 %sub.i.7, 31
  %cond.i.7 = select i1 %tobool.i.7, i32 %shr.i.7, i32 %shr57.7
  %conv.i.7 = trunc i32 %cond.i.7 to i8
  %arrayidx58.7 = getelementptr inbounds i8, i8* %src.addr.0104, i32 7
  store i8 %conv.i.7, i8* %arrayidx58.7, align 1, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %src.addr.0104, i32 32
  %add63 = add nsw i32 %i00.0105, %shr41
  %inc65 = add nuw nsw i32 %y.0106, 1
  %exitcond = icmp eq i32 %inc65, 16
  br i1 %exitcond, label %for.cond.cleanup50, label %for.cond52.preheader

for.cond.cleanup50:                               ; preds = %for.cond52.preheader
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_4x4_dc_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx6 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx6, align 1, !tbaa !2
  %conv7 = zext i8 %3 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %src, i32 -32
  %4 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %4 to i32
  %arrayidx12 = getelementptr inbounds i8, i8* %src, i32 -31
  %5 = load i8, i8* %arrayidx12, align 1, !tbaa !2
  %conv13 = zext i8 %5 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %src, i32 -30
  %6 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %6 to i32
  %arrayidx18 = getelementptr inbounds i8, i8* %src, i32 -29
  %7 = load i8, i8* %arrayidx18, align 1, !tbaa !2
  %conv19 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 4
  %add5 = add nuw nsw i32 %add, %conv2
  %add8 = add nuw nsw i32 %add5, %conv4
  %add11 = add nuw nsw i32 %add8, %conv7
  %add14 = add nuw nsw i32 %add11, %conv10
  %add17 = add nuw nsw i32 %add14, %conv13
  %add20 = add nuw nsw i32 %add17, %conv16
  %add21 = add nuw nsw i32 %add20, %conv19
  %shr = ashr i32 %add21, 3
  %mul = mul nuw i32 %shr, 16843009
  %arrayidx22 = getelementptr inbounds i8, i8* %src, i32 96
  %i = bitcast i8* %arrayidx22 to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %arrayidx23 = getelementptr inbounds i8, i8* %src, i32 64
  %i24 = bitcast i8* %arrayidx23 to i32*
  store i32 %mul, i32* %i24, align 4, !tbaa !2
  %arrayidx25 = getelementptr inbounds i8, i8* %src, i32 32
  %i26 = bitcast i8* %arrayidx25 to i32*
  store i32 %mul, i32* %i26, align 4, !tbaa !2
  %i28 = bitcast i8* %src to i32*
  store i32 %mul, i32* %i28, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_4x4_h_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %mul = mul nuw i32 %conv, 16843009
  %i = bitcast i8* %src to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %arrayidx2 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx2, align 1, !tbaa !2
  %conv3 = zext i8 %1 to i32
  %mul4 = mul nuw i32 %conv3, 16843009
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 32
  %i6 = bitcast i8* %arrayidx5 to i32*
  store i32 %mul4, i32* %i6, align 4, !tbaa !2
  %arrayidx7 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %2 to i32
  %mul9 = mul nuw i32 %conv8, 16843009
  %arrayidx10 = getelementptr inbounds i8, i8* %src, i32 64
  %i11 = bitcast i8* %arrayidx10 to i32*
  store i32 %mul9, i32* %i11, align 4, !tbaa !2
  %arrayidx12 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx12, align 1, !tbaa !2
  %conv13 = zext i8 %3 to i32
  %mul14 = mul nuw i32 %conv13, 16843009
  %arrayidx15 = getelementptr inbounds i8, i8* %src, i32 96
  %i16 = bitcast i8* %arrayidx15 to i32*
  store i32 %mul14, i32* %i16, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_4x4_v_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %i = bitcast i8* %arrayidx to i32*
  %0 = load i32, i32* %i, align 4, !tbaa !2
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 96
  %i2 = bitcast i8* %arrayidx1 to i32*
  store i32 %0, i32* %i2, align 4, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 64
  %i4 = bitcast i8* %arrayidx3 to i32*
  store i32 %0, i32* %i4, align 4, !tbaa !2
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 32
  %i6 = bitcast i8* %arrayidx5 to i32*
  store i32 %0, i32* %i6, align 4, !tbaa !2
  %i8 = bitcast i8* %src to i32*
  store i32 %0, i32* %i8, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x8_dc_c(i8* nocapture %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 14
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 13
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 12
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 11
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 10
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 9
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 8
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 7
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %edge, i32 16
  %8 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %8 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %edge, i32 17
  %9 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %edge, i32 18
  %10 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv20 = zext i8 %10 to i32
  %arrayidx21 = getelementptr inbounds i8, i8* %edge, i32 19
  %11 = load i8, i8* %arrayidx21, align 1, !tbaa !2
  %conv22 = zext i8 %11 to i32
  %arrayidx23 = getelementptr inbounds i8, i8* %edge, i32 20
  %12 = load i8, i8* %arrayidx23, align 1, !tbaa !2
  %conv24 = zext i8 %12 to i32
  %arrayidx25 = getelementptr inbounds i8, i8* %edge, i32 21
  %13 = load i8, i8* %arrayidx25, align 1, !tbaa !2
  %conv26 = zext i8 %13 to i32
  %arrayidx27 = getelementptr inbounds i8, i8* %edge, i32 22
  %14 = load i8, i8* %arrayidx27, align 1, !tbaa !2
  %conv28 = zext i8 %14 to i32
  %arrayidx29 = getelementptr inbounds i8, i8* %edge, i32 23
  %15 = load i8, i8* %arrayidx29, align 1, !tbaa !2
  %conv30 = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv, 8
  %add31 = add nuw nsw i32 %add, %conv2
  %add32 = add nuw nsw i32 %add31, %conv4
  %add33 = add nuw nsw i32 %add32, %conv6
  %add34 = add nuw nsw i32 %add33, %conv8
  %add35 = add nuw nsw i32 %add34, %conv10
  %add36 = add nuw nsw i32 %add35, %conv12
  %add37 = add nuw nsw i32 %add36, %conv14
  %add38 = add nuw nsw i32 %add37, %conv16
  %add39 = add nuw nsw i32 %add38, %conv18
  %add40 = add nuw nsw i32 %add39, %conv20
  %add41 = add nuw nsw i32 %add40, %conv22
  %add42 = add nuw nsw i32 %add41, %conv24
  %add43 = add nuw nsw i32 %add42, %conv26
  %add44 = add nuw nsw i32 %add43, %conv28
  %add45 = add nuw nsw i32 %add44, %conv30
  %shr = ashr i32 %add45, 4
  %mul = mul nuw i32 %shr, 16843009
  %i = bitcast i8* %src to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %add.ptr47 = getelementptr inbounds i8, i8* %src, i32 4
  %i48 = bitcast i8* %add.ptr47 to i32*
  store i32 %mul, i32* %i48, align 4, !tbaa !2
  %add.ptr49 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr49 to i32*
  store i32 %mul, i32* %i.1, align 4, !tbaa !2
  %add.ptr47.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i48.1 = bitcast i8* %add.ptr47.1 to i32*
  store i32 %mul, i32* %i48.1, align 4, !tbaa !2
  %add.ptr49.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr49.1 to i32*
  store i32 %mul, i32* %i.2, align 4, !tbaa !2
  %add.ptr47.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i48.2 = bitcast i8* %add.ptr47.2 to i32*
  store i32 %mul, i32* %i48.2, align 4, !tbaa !2
  %add.ptr49.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr49.2 to i32*
  store i32 %mul, i32* %i.3, align 4, !tbaa !2
  %add.ptr47.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i48.3 = bitcast i8* %add.ptr47.3 to i32*
  store i32 %mul, i32* %i48.3, align 4, !tbaa !2
  %add.ptr49.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i.4 = bitcast i8* %add.ptr49.3 to i32*
  store i32 %mul, i32* %i.4, align 4, !tbaa !2
  %add.ptr47.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i48.4 = bitcast i8* %add.ptr47.4 to i32*
  store i32 %mul, i32* %i48.4, align 4, !tbaa !2
  %add.ptr49.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i.5 = bitcast i8* %add.ptr49.4 to i32*
  store i32 %mul, i32* %i.5, align 4, !tbaa !2
  %add.ptr47.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i48.5 = bitcast i8* %add.ptr47.5 to i32*
  store i32 %mul, i32* %i48.5, align 4, !tbaa !2
  %add.ptr49.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i.6 = bitcast i8* %add.ptr49.5 to i32*
  store i32 %mul, i32* %i.6, align 4, !tbaa !2
  %add.ptr47.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i48.6 = bitcast i8* %add.ptr47.6 to i32*
  store i32 %mul, i32* %i48.6, align 4, !tbaa !2
  %add.ptr49.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i.7 = bitcast i8* %add.ptr49.6 to i32*
  store i32 %mul, i32* %i.7, align 4, !tbaa !2
  %add.ptr47.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i48.7 = bitcast i8* %add.ptr47.7 to i32*
  store i32 %mul, i32* %i48.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x8_h_c(i8* nocapture %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 14
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 13
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 12
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 11
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 10
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 9
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 8
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 7
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %mul = mul nuw i32 %conv, 16843009
  %add.ptr15 = getelementptr inbounds i8, i8* %src, i32 4
  %i = bitcast i8* %add.ptr15 to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %i18 = bitcast i8* %src to i32*
  store i32 %mul, i32* %i18, align 4, !tbaa !2
  %mul19 = mul nuw i32 %conv2, 16843009
  %add.ptr20 = getelementptr inbounds i8, i8* %src, i32 32
  %add.ptr21 = getelementptr inbounds i8, i8* %src, i32 36
  %i22 = bitcast i8* %add.ptr21 to i32*
  store i32 %mul19, i32* %i22, align 4, !tbaa !2
  %i25 = bitcast i8* %add.ptr20 to i32*
  store i32 %mul19, i32* %i25, align 4, !tbaa !2
  %mul26 = mul nuw i32 %conv4, 16843009
  %add.ptr27 = getelementptr inbounds i8, i8* %src, i32 64
  %add.ptr28 = getelementptr inbounds i8, i8* %src, i32 68
  %i29 = bitcast i8* %add.ptr28 to i32*
  store i32 %mul26, i32* %i29, align 4, !tbaa !2
  %i32 = bitcast i8* %add.ptr27 to i32*
  store i32 %mul26, i32* %i32, align 4, !tbaa !2
  %mul33 = mul nuw i32 %conv6, 16843009
  %add.ptr34 = getelementptr inbounds i8, i8* %src, i32 96
  %add.ptr35 = getelementptr inbounds i8, i8* %src, i32 100
  %i36 = bitcast i8* %add.ptr35 to i32*
  store i32 %mul33, i32* %i36, align 4, !tbaa !2
  %i39 = bitcast i8* %add.ptr34 to i32*
  store i32 %mul33, i32* %i39, align 4, !tbaa !2
  %mul40 = mul nuw i32 %conv8, 16843009
  %add.ptr41 = getelementptr inbounds i8, i8* %src, i32 128
  %add.ptr42 = getelementptr inbounds i8, i8* %src, i32 132
  %i43 = bitcast i8* %add.ptr42 to i32*
  store i32 %mul40, i32* %i43, align 4, !tbaa !2
  %i46 = bitcast i8* %add.ptr41 to i32*
  store i32 %mul40, i32* %i46, align 4, !tbaa !2
  %mul47 = mul nuw i32 %conv10, 16843009
  %add.ptr48 = getelementptr inbounds i8, i8* %src, i32 160
  %add.ptr49 = getelementptr inbounds i8, i8* %src, i32 164
  %i50 = bitcast i8* %add.ptr49 to i32*
  store i32 %mul47, i32* %i50, align 4, !tbaa !2
  %i53 = bitcast i8* %add.ptr48 to i32*
  store i32 %mul47, i32* %i53, align 4, !tbaa !2
  %mul54 = mul nuw i32 %conv12, 16843009
  %add.ptr55 = getelementptr inbounds i8, i8* %src, i32 192
  %add.ptr56 = getelementptr inbounds i8, i8* %src, i32 196
  %i57 = bitcast i8* %add.ptr56 to i32*
  store i32 %mul54, i32* %i57, align 4, !tbaa !2
  %i60 = bitcast i8* %add.ptr55 to i32*
  store i32 %mul54, i32* %i60, align 4, !tbaa !2
  %mul61 = mul nuw i32 %conv14, 16843009
  %add.ptr62 = getelementptr inbounds i8, i8* %src, i32 224
  %add.ptr63 = getelementptr inbounds i8, i8* %src, i32 228
  %i64 = bitcast i8* %add.ptr63 to i32*
  store i32 %mul61, i32* %i64, align 4, !tbaa !2
  %i67 = bitcast i8* %add.ptr62 to i32*
  store i32 %mul61, i32* %i67, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define hidden void @x264_8_predict_8x8_v_c(i8* nocapture %src, i8* nocapture readonly %edge) #0 {
entry:
  %add.ptr = getelementptr inbounds i8, i8* %edge, i32 16
  %i = bitcast i8* %add.ptr to i32*
  %0 = load i32, i32* %i, align 4, !tbaa !2
  %add.ptr1 = getelementptr inbounds i8, i8* %edge, i32 20
  %i2 = bitcast i8* %add.ptr1 to i32*
  %1 = load i32, i32* %i2, align 4, !tbaa !2
  %i5 = bitcast i8* %src to i32*
  store i32 %0, i32* %i5, align 4, !tbaa !2
  %add.ptr9 = getelementptr inbounds i8, i8* %src, i32 4
  %i10 = bitcast i8* %add.ptr9 to i32*
  store i32 %1, i32* %i10, align 4, !tbaa !2
  %add.ptr3.1 = getelementptr inbounds i8, i8* %src, i32 32
  %i5.1 = bitcast i8* %add.ptr3.1 to i32*
  store i32 %0, i32* %i5.1, align 4, !tbaa !2
  %add.ptr9.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i10.1 = bitcast i8* %add.ptr9.1 to i32*
  store i32 %1, i32* %i10.1, align 4, !tbaa !2
  %add.ptr3.2 = getelementptr inbounds i8, i8* %src, i32 64
  %i5.2 = bitcast i8* %add.ptr3.2 to i32*
  store i32 %0, i32* %i5.2, align 4, !tbaa !2
  %add.ptr9.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i10.2 = bitcast i8* %add.ptr9.2 to i32*
  store i32 %1, i32* %i10.2, align 4, !tbaa !2
  %add.ptr3.3 = getelementptr inbounds i8, i8* %src, i32 96
  %i5.3 = bitcast i8* %add.ptr3.3 to i32*
  store i32 %0, i32* %i5.3, align 4, !tbaa !2
  %add.ptr9.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i10.3 = bitcast i8* %add.ptr9.3 to i32*
  store i32 %1, i32* %i10.3, align 4, !tbaa !2
  %add.ptr3.4 = getelementptr inbounds i8, i8* %src, i32 128
  %i5.4 = bitcast i8* %add.ptr3.4 to i32*
  store i32 %0, i32* %i5.4, align 4, !tbaa !2
  %add.ptr9.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i10.4 = bitcast i8* %add.ptr9.4 to i32*
  store i32 %1, i32* %i10.4, align 4, !tbaa !2
  %add.ptr3.5 = getelementptr inbounds i8, i8* %src, i32 160
  %i5.5 = bitcast i8* %add.ptr3.5 to i32*
  store i32 %0, i32* %i5.5, align 4, !tbaa !2
  %add.ptr9.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i10.5 = bitcast i8* %add.ptr9.5 to i32*
  store i32 %1, i32* %i10.5, align 4, !tbaa !2
  %add.ptr3.6 = getelementptr inbounds i8, i8* %src, i32 192
  %i5.6 = bitcast i8* %add.ptr3.6 to i32*
  store i32 %0, i32* %i5.6, align 4, !tbaa !2
  %add.ptr9.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i10.6 = bitcast i8* %add.ptr9.6 to i32*
  store i32 %1, i32* %i10.6, align 4, !tbaa !2
  %add.ptr3.7 = getelementptr inbounds i8, i8* %src, i32 224
  %i5.7 = bitcast i8* %add.ptr3.7 to i32*
  store i32 %0, i32* %i5.7, align 4, !tbaa !2
  %add.ptr9.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i10.7 = bitcast i8* %add.ptr9.7 to i32*
  store i32 %1, i32* %i10.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_predict_16x16_init(i32 %cpu, void (i8*)** nocapture %pf) local_unnamed_addr #1 {
entry:
  store void (i8*)* @x264_8_predict_16x16_v_c, void (i8*)** %pf, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 1
  store void (i8*)* @x264_8_predict_16x16_h_c, void (i8*)** %arrayidx1, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 2
  store void (i8*)* @x264_8_predict_16x16_dc_c, void (i8*)** %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 3
  store void (i8*)* @x264_8_predict_16x16_p_c, void (i8*)** %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 4
  store void (i8*)* @predict_16x16_dc_left_c, void (i8*)** %arrayidx4, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 5
  store void (i8*)* @predict_16x16_dc_top_c, void (i8*)** %arrayidx5, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 6
  store void (i8*)* @predict_16x16_dc_128_c, void (i8*)** %arrayidx6, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_16x16_dc_left_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %1 to i32
  %add1.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %2 to i32
  %add1.2 = add nuw nsw i32 %add1.1, %conv.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %3 to i32
  %add1.3 = add nuw nsw i32 %add1.2, %conv.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %src, i32 127
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !2
  %conv.4 = zext i8 %4 to i32
  %add1.4 = add nuw nsw i32 %add1.3, %conv.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %src, i32 159
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !2
  %conv.5 = zext i8 %5 to i32
  %add1.5 = add nuw nsw i32 %add1.4, %conv.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %src, i32 191
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !2
  %conv.6 = zext i8 %6 to i32
  %add1.6 = add nuw nsw i32 %add1.5, %conv.6
  %arrayidx.7 = getelementptr inbounds i8, i8* %src, i32 223
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !2
  %conv.7 = zext i8 %7 to i32
  %add1.7 = add nuw nsw i32 %add1.6, %conv.7
  %arrayidx.8 = getelementptr inbounds i8, i8* %src, i32 255
  %8 = load i8, i8* %arrayidx.8, align 1, !tbaa !2
  %conv.8 = zext i8 %8 to i32
  %add1.8 = add nuw nsw i32 %add1.7, %conv.8
  %arrayidx.9 = getelementptr inbounds i8, i8* %src, i32 287
  %9 = load i8, i8* %arrayidx.9, align 1, !tbaa !2
  %conv.9 = zext i8 %9 to i32
  %add1.9 = add nuw nsw i32 %add1.8, %conv.9
  %arrayidx.10 = getelementptr inbounds i8, i8* %src, i32 319
  %10 = load i8, i8* %arrayidx.10, align 1, !tbaa !2
  %conv.10 = zext i8 %10 to i32
  %add1.10 = add nuw nsw i32 %add1.9, %conv.10
  %arrayidx.11 = getelementptr inbounds i8, i8* %src, i32 351
  %11 = load i8, i8* %arrayidx.11, align 1, !tbaa !2
  %conv.11 = zext i8 %11 to i32
  %add1.11 = add nuw nsw i32 %add1.10, %conv.11
  %arrayidx.12 = getelementptr inbounds i8, i8* %src, i32 383
  %12 = load i8, i8* %arrayidx.12, align 1, !tbaa !2
  %conv.12 = zext i8 %12 to i32
  %add1.12 = add nuw nsw i32 %add1.11, %conv.12
  %arrayidx.13 = getelementptr inbounds i8, i8* %src, i32 415
  %13 = load i8, i8* %arrayidx.13, align 1, !tbaa !2
  %conv.13 = zext i8 %13 to i32
  %add1.13 = add nuw nsw i32 %add1.12, %conv.13
  %arrayidx.14 = getelementptr inbounds i8, i8* %src, i32 447
  %14 = load i8, i8* %arrayidx.14, align 1, !tbaa !2
  %conv.14 = zext i8 %14 to i32
  %add1.14 = add nuw nsw i32 %add1.13, %conv.14
  %arrayidx.15 = getelementptr inbounds i8, i8* %src, i32 479
  %15 = load i8, i8* %arrayidx.15, align 1, !tbaa !2
  %conv.15 = zext i8 %15 to i32
  %add1.15 = add nuw nsw i32 %add1.14, %conv.15
  %add2 = add nuw nsw i32 %add1.15, 8
  %16 = lshr i32 %add2, 4
  %mul3 = mul nuw i32 %16, 16843009
  %i10 = bitcast i8* %src to i32*
  store i32 %mul3, i32* %i10, align 4, !tbaa !2
  %add.ptr11 = getelementptr inbounds i8, i8* %src, i32 4
  %i12 = bitcast i8* %add.ptr11 to i32*
  store i32 %mul3, i32* %i12, align 4, !tbaa !2
  %add.ptr13 = getelementptr inbounds i8, i8* %src, i32 8
  %i14 = bitcast i8* %add.ptr13 to i32*
  store i32 %mul3, i32* %i14, align 4, !tbaa !2
  %add.ptr15 = getelementptr inbounds i8, i8* %src, i32 12
  %i16 = bitcast i8* %add.ptr15 to i32*
  store i32 %mul3, i32* %i16, align 4, !tbaa !2
  %add.ptr17 = getelementptr inbounds i8, i8* %src, i32 32
  %i10.1 = bitcast i8* %add.ptr17 to i32*
  store i32 %mul3, i32* %i10.1, align 4, !tbaa !2
  %add.ptr11.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i12.1 = bitcast i8* %add.ptr11.1 to i32*
  store i32 %mul3, i32* %i12.1, align 4, !tbaa !2
  %add.ptr13.1 = getelementptr inbounds i8, i8* %src, i32 40
  %i14.1 = bitcast i8* %add.ptr13.1 to i32*
  store i32 %mul3, i32* %i14.1, align 4, !tbaa !2
  %add.ptr15.1 = getelementptr inbounds i8, i8* %src, i32 44
  %i16.1 = bitcast i8* %add.ptr15.1 to i32*
  store i32 %mul3, i32* %i16.1, align 4, !tbaa !2
  %add.ptr17.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i10.2 = bitcast i8* %add.ptr17.1 to i32*
  store i32 %mul3, i32* %i10.2, align 4, !tbaa !2
  %add.ptr11.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i12.2 = bitcast i8* %add.ptr11.2 to i32*
  store i32 %mul3, i32* %i12.2, align 4, !tbaa !2
  %add.ptr13.2 = getelementptr inbounds i8, i8* %src, i32 72
  %i14.2 = bitcast i8* %add.ptr13.2 to i32*
  store i32 %mul3, i32* %i14.2, align 4, !tbaa !2
  %add.ptr15.2 = getelementptr inbounds i8, i8* %src, i32 76
  %i16.2 = bitcast i8* %add.ptr15.2 to i32*
  store i32 %mul3, i32* %i16.2, align 4, !tbaa !2
  %add.ptr17.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i10.3 = bitcast i8* %add.ptr17.2 to i32*
  store i32 %mul3, i32* %i10.3, align 4, !tbaa !2
  %add.ptr11.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i12.3 = bitcast i8* %add.ptr11.3 to i32*
  store i32 %mul3, i32* %i12.3, align 4, !tbaa !2
  %add.ptr13.3 = getelementptr inbounds i8, i8* %src, i32 104
  %i14.3 = bitcast i8* %add.ptr13.3 to i32*
  store i32 %mul3, i32* %i14.3, align 4, !tbaa !2
  %add.ptr15.3 = getelementptr inbounds i8, i8* %src, i32 108
  %i16.3 = bitcast i8* %add.ptr15.3 to i32*
  store i32 %mul3, i32* %i16.3, align 4, !tbaa !2
  %add.ptr17.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i10.4 = bitcast i8* %add.ptr17.3 to i32*
  store i32 %mul3, i32* %i10.4, align 4, !tbaa !2
  %add.ptr11.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i12.4 = bitcast i8* %add.ptr11.4 to i32*
  store i32 %mul3, i32* %i12.4, align 4, !tbaa !2
  %add.ptr13.4 = getelementptr inbounds i8, i8* %src, i32 136
  %i14.4 = bitcast i8* %add.ptr13.4 to i32*
  store i32 %mul3, i32* %i14.4, align 4, !tbaa !2
  %add.ptr15.4 = getelementptr inbounds i8, i8* %src, i32 140
  %i16.4 = bitcast i8* %add.ptr15.4 to i32*
  store i32 %mul3, i32* %i16.4, align 4, !tbaa !2
  %add.ptr17.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i10.5 = bitcast i8* %add.ptr17.4 to i32*
  store i32 %mul3, i32* %i10.5, align 4, !tbaa !2
  %add.ptr11.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i12.5 = bitcast i8* %add.ptr11.5 to i32*
  store i32 %mul3, i32* %i12.5, align 4, !tbaa !2
  %add.ptr13.5 = getelementptr inbounds i8, i8* %src, i32 168
  %i14.5 = bitcast i8* %add.ptr13.5 to i32*
  store i32 %mul3, i32* %i14.5, align 4, !tbaa !2
  %add.ptr15.5 = getelementptr inbounds i8, i8* %src, i32 172
  %i16.5 = bitcast i8* %add.ptr15.5 to i32*
  store i32 %mul3, i32* %i16.5, align 4, !tbaa !2
  %add.ptr17.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i10.6 = bitcast i8* %add.ptr17.5 to i32*
  store i32 %mul3, i32* %i10.6, align 4, !tbaa !2
  %add.ptr11.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i12.6 = bitcast i8* %add.ptr11.6 to i32*
  store i32 %mul3, i32* %i12.6, align 4, !tbaa !2
  %add.ptr13.6 = getelementptr inbounds i8, i8* %src, i32 200
  %i14.6 = bitcast i8* %add.ptr13.6 to i32*
  store i32 %mul3, i32* %i14.6, align 4, !tbaa !2
  %add.ptr15.6 = getelementptr inbounds i8, i8* %src, i32 204
  %i16.6 = bitcast i8* %add.ptr15.6 to i32*
  store i32 %mul3, i32* %i16.6, align 4, !tbaa !2
  %add.ptr17.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i10.7 = bitcast i8* %add.ptr17.6 to i32*
  store i32 %mul3, i32* %i10.7, align 4, !tbaa !2
  %add.ptr11.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i12.7 = bitcast i8* %add.ptr11.7 to i32*
  store i32 %mul3, i32* %i12.7, align 4, !tbaa !2
  %add.ptr13.7 = getelementptr inbounds i8, i8* %src, i32 232
  %i14.7 = bitcast i8* %add.ptr13.7 to i32*
  store i32 %mul3, i32* %i14.7, align 4, !tbaa !2
  %add.ptr15.7 = getelementptr inbounds i8, i8* %src, i32 236
  %i16.7 = bitcast i8* %add.ptr15.7 to i32*
  store i32 %mul3, i32* %i16.7, align 4, !tbaa !2
  %add.ptr17.7 = getelementptr inbounds i8, i8* %src, i32 256
  %i10.8 = bitcast i8* %add.ptr17.7 to i32*
  store i32 %mul3, i32* %i10.8, align 4, !tbaa !2
  %add.ptr11.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i12.8 = bitcast i8* %add.ptr11.8 to i32*
  store i32 %mul3, i32* %i12.8, align 4, !tbaa !2
  %add.ptr13.8 = getelementptr inbounds i8, i8* %src, i32 264
  %i14.8 = bitcast i8* %add.ptr13.8 to i32*
  store i32 %mul3, i32* %i14.8, align 4, !tbaa !2
  %add.ptr15.8 = getelementptr inbounds i8, i8* %src, i32 268
  %i16.8 = bitcast i8* %add.ptr15.8 to i32*
  store i32 %mul3, i32* %i16.8, align 4, !tbaa !2
  %add.ptr17.8 = getelementptr inbounds i8, i8* %src, i32 288
  %i10.9 = bitcast i8* %add.ptr17.8 to i32*
  store i32 %mul3, i32* %i10.9, align 4, !tbaa !2
  %add.ptr11.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i12.9 = bitcast i8* %add.ptr11.9 to i32*
  store i32 %mul3, i32* %i12.9, align 4, !tbaa !2
  %add.ptr13.9 = getelementptr inbounds i8, i8* %src, i32 296
  %i14.9 = bitcast i8* %add.ptr13.9 to i32*
  store i32 %mul3, i32* %i14.9, align 4, !tbaa !2
  %add.ptr15.9 = getelementptr inbounds i8, i8* %src, i32 300
  %i16.9 = bitcast i8* %add.ptr15.9 to i32*
  store i32 %mul3, i32* %i16.9, align 4, !tbaa !2
  %add.ptr17.9 = getelementptr inbounds i8, i8* %src, i32 320
  %i10.10 = bitcast i8* %add.ptr17.9 to i32*
  store i32 %mul3, i32* %i10.10, align 4, !tbaa !2
  %add.ptr11.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i12.10 = bitcast i8* %add.ptr11.10 to i32*
  store i32 %mul3, i32* %i12.10, align 4, !tbaa !2
  %add.ptr13.10 = getelementptr inbounds i8, i8* %src, i32 328
  %i14.10 = bitcast i8* %add.ptr13.10 to i32*
  store i32 %mul3, i32* %i14.10, align 4, !tbaa !2
  %add.ptr15.10 = getelementptr inbounds i8, i8* %src, i32 332
  %i16.10 = bitcast i8* %add.ptr15.10 to i32*
  store i32 %mul3, i32* %i16.10, align 4, !tbaa !2
  %add.ptr17.10 = getelementptr inbounds i8, i8* %src, i32 352
  %i10.11 = bitcast i8* %add.ptr17.10 to i32*
  store i32 %mul3, i32* %i10.11, align 4, !tbaa !2
  %add.ptr11.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i12.11 = bitcast i8* %add.ptr11.11 to i32*
  store i32 %mul3, i32* %i12.11, align 4, !tbaa !2
  %add.ptr13.11 = getelementptr inbounds i8, i8* %src, i32 360
  %i14.11 = bitcast i8* %add.ptr13.11 to i32*
  store i32 %mul3, i32* %i14.11, align 4, !tbaa !2
  %add.ptr15.11 = getelementptr inbounds i8, i8* %src, i32 364
  %i16.11 = bitcast i8* %add.ptr15.11 to i32*
  store i32 %mul3, i32* %i16.11, align 4, !tbaa !2
  %add.ptr17.11 = getelementptr inbounds i8, i8* %src, i32 384
  %i10.12 = bitcast i8* %add.ptr17.11 to i32*
  store i32 %mul3, i32* %i10.12, align 4, !tbaa !2
  %add.ptr11.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i12.12 = bitcast i8* %add.ptr11.12 to i32*
  store i32 %mul3, i32* %i12.12, align 4, !tbaa !2
  %add.ptr13.12 = getelementptr inbounds i8, i8* %src, i32 392
  %i14.12 = bitcast i8* %add.ptr13.12 to i32*
  store i32 %mul3, i32* %i14.12, align 4, !tbaa !2
  %add.ptr15.12 = getelementptr inbounds i8, i8* %src, i32 396
  %i16.12 = bitcast i8* %add.ptr15.12 to i32*
  store i32 %mul3, i32* %i16.12, align 4, !tbaa !2
  %add.ptr17.12 = getelementptr inbounds i8, i8* %src, i32 416
  %i10.13 = bitcast i8* %add.ptr17.12 to i32*
  store i32 %mul3, i32* %i10.13, align 4, !tbaa !2
  %add.ptr11.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i12.13 = bitcast i8* %add.ptr11.13 to i32*
  store i32 %mul3, i32* %i12.13, align 4, !tbaa !2
  %add.ptr13.13 = getelementptr inbounds i8, i8* %src, i32 424
  %i14.13 = bitcast i8* %add.ptr13.13 to i32*
  store i32 %mul3, i32* %i14.13, align 4, !tbaa !2
  %add.ptr15.13 = getelementptr inbounds i8, i8* %src, i32 428
  %i16.13 = bitcast i8* %add.ptr15.13 to i32*
  store i32 %mul3, i32* %i16.13, align 4, !tbaa !2
  %add.ptr17.13 = getelementptr inbounds i8, i8* %src, i32 448
  %i10.14 = bitcast i8* %add.ptr17.13 to i32*
  store i32 %mul3, i32* %i10.14, align 4, !tbaa !2
  %add.ptr11.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i12.14 = bitcast i8* %add.ptr11.14 to i32*
  store i32 %mul3, i32* %i12.14, align 4, !tbaa !2
  %add.ptr13.14 = getelementptr inbounds i8, i8* %src, i32 456
  %i14.14 = bitcast i8* %add.ptr13.14 to i32*
  store i32 %mul3, i32* %i14.14, align 4, !tbaa !2
  %add.ptr15.14 = getelementptr inbounds i8, i8* %src, i32 460
  %i16.14 = bitcast i8* %add.ptr15.14 to i32*
  store i32 %mul3, i32* %i16.14, align 4, !tbaa !2
  %add.ptr17.14 = getelementptr inbounds i8, i8* %src, i32 480
  %i10.15 = bitcast i8* %add.ptr17.14 to i32*
  store i32 %mul3, i32* %i10.15, align 4, !tbaa !2
  %add.ptr11.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i12.15 = bitcast i8* %add.ptr11.15 to i32*
  store i32 %mul3, i32* %i12.15, align 4, !tbaa !2
  %add.ptr13.15 = getelementptr inbounds i8, i8* %src, i32 488
  %i14.15 = bitcast i8* %add.ptr13.15 to i32*
  store i32 %mul3, i32* %i14.15, align 4, !tbaa !2
  %add.ptr15.15 = getelementptr inbounds i8, i8* %src, i32 492
  %i16.15 = bitcast i8* %add.ptr15.15 to i32*
  store i32 %mul3, i32* %i16.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_16x16_dc_top_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 -31
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %1 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 -30
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %2 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 -29
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %3 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %src, i32 -28
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !2
  %conv.4 = zext i8 %4 to i32
  %add.4 = add nuw nsw i32 %add.3, %conv.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %src, i32 -27
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !2
  %conv.5 = zext i8 %5 to i32
  %add.5 = add nuw nsw i32 %add.4, %conv.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %src, i32 -26
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !2
  %conv.6 = zext i8 %6 to i32
  %add.6 = add nuw nsw i32 %add.5, %conv.6
  %arrayidx.7 = getelementptr inbounds i8, i8* %src, i32 -25
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !2
  %conv.7 = zext i8 %7 to i32
  %add.7 = add nuw nsw i32 %add.6, %conv.7
  %arrayidx.8 = getelementptr inbounds i8, i8* %src, i32 -24
  %8 = load i8, i8* %arrayidx.8, align 1, !tbaa !2
  %conv.8 = zext i8 %8 to i32
  %add.8 = add nuw nsw i32 %add.7, %conv.8
  %arrayidx.9 = getelementptr inbounds i8, i8* %src, i32 -23
  %9 = load i8, i8* %arrayidx.9, align 1, !tbaa !2
  %conv.9 = zext i8 %9 to i32
  %add.9 = add nuw nsw i32 %add.8, %conv.9
  %arrayidx.10 = getelementptr inbounds i8, i8* %src, i32 -22
  %10 = load i8, i8* %arrayidx.10, align 1, !tbaa !2
  %conv.10 = zext i8 %10 to i32
  %add.10 = add nuw nsw i32 %add.9, %conv.10
  %arrayidx.11 = getelementptr inbounds i8, i8* %src, i32 -21
  %11 = load i8, i8* %arrayidx.11, align 1, !tbaa !2
  %conv.11 = zext i8 %11 to i32
  %add.11 = add nuw nsw i32 %add.10, %conv.11
  %arrayidx.12 = getelementptr inbounds i8, i8* %src, i32 -20
  %12 = load i8, i8* %arrayidx.12, align 1, !tbaa !2
  %conv.12 = zext i8 %12 to i32
  %add.12 = add nuw nsw i32 %add.11, %conv.12
  %arrayidx.13 = getelementptr inbounds i8, i8* %src, i32 -19
  %13 = load i8, i8* %arrayidx.13, align 1, !tbaa !2
  %conv.13 = zext i8 %13 to i32
  %add.13 = add nuw nsw i32 %add.12, %conv.13
  %arrayidx.14 = getelementptr inbounds i8, i8* %src, i32 -18
  %14 = load i8, i8* %arrayidx.14, align 1, !tbaa !2
  %conv.14 = zext i8 %14 to i32
  %add.14 = add nuw nsw i32 %add.13, %conv.14
  %arrayidx.15 = getelementptr inbounds i8, i8* %src, i32 -17
  %15 = load i8, i8* %arrayidx.15, align 1, !tbaa !2
  %conv.15 = zext i8 %15 to i32
  %add.15 = add nuw nsw i32 %add.14, %conv.15
  %add1 = add nuw nsw i32 %add.15, 8
  %16 = lshr i32 %add1, 4
  %mul = mul nuw i32 %16, 16843009
  %i8 = bitcast i8* %src to i32*
  store i32 %mul, i32* %i8, align 4, !tbaa !2
  %add.ptr9 = getelementptr inbounds i8, i8* %src, i32 4
  %i10 = bitcast i8* %add.ptr9 to i32*
  store i32 %mul, i32* %i10, align 4, !tbaa !2
  %add.ptr11 = getelementptr inbounds i8, i8* %src, i32 8
  %i12 = bitcast i8* %add.ptr11 to i32*
  store i32 %mul, i32* %i12, align 4, !tbaa !2
  %add.ptr13 = getelementptr inbounds i8, i8* %src, i32 12
  %i14 = bitcast i8* %add.ptr13 to i32*
  store i32 %mul, i32* %i14, align 4, !tbaa !2
  %add.ptr15 = getelementptr inbounds i8, i8* %src, i32 32
  %i8.1 = bitcast i8* %add.ptr15 to i32*
  store i32 %mul, i32* %i8.1, align 4, !tbaa !2
  %add.ptr9.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i10.1 = bitcast i8* %add.ptr9.1 to i32*
  store i32 %mul, i32* %i10.1, align 4, !tbaa !2
  %add.ptr11.1 = getelementptr inbounds i8, i8* %src, i32 40
  %i12.1 = bitcast i8* %add.ptr11.1 to i32*
  store i32 %mul, i32* %i12.1, align 4, !tbaa !2
  %add.ptr13.1 = getelementptr inbounds i8, i8* %src, i32 44
  %i14.1 = bitcast i8* %add.ptr13.1 to i32*
  store i32 %mul, i32* %i14.1, align 4, !tbaa !2
  %add.ptr15.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i8.2 = bitcast i8* %add.ptr15.1 to i32*
  store i32 %mul, i32* %i8.2, align 4, !tbaa !2
  %add.ptr9.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i10.2 = bitcast i8* %add.ptr9.2 to i32*
  store i32 %mul, i32* %i10.2, align 4, !tbaa !2
  %add.ptr11.2 = getelementptr inbounds i8, i8* %src, i32 72
  %i12.2 = bitcast i8* %add.ptr11.2 to i32*
  store i32 %mul, i32* %i12.2, align 4, !tbaa !2
  %add.ptr13.2 = getelementptr inbounds i8, i8* %src, i32 76
  %i14.2 = bitcast i8* %add.ptr13.2 to i32*
  store i32 %mul, i32* %i14.2, align 4, !tbaa !2
  %add.ptr15.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i8.3 = bitcast i8* %add.ptr15.2 to i32*
  store i32 %mul, i32* %i8.3, align 4, !tbaa !2
  %add.ptr9.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i10.3 = bitcast i8* %add.ptr9.3 to i32*
  store i32 %mul, i32* %i10.3, align 4, !tbaa !2
  %add.ptr11.3 = getelementptr inbounds i8, i8* %src, i32 104
  %i12.3 = bitcast i8* %add.ptr11.3 to i32*
  store i32 %mul, i32* %i12.3, align 4, !tbaa !2
  %add.ptr13.3 = getelementptr inbounds i8, i8* %src, i32 108
  %i14.3 = bitcast i8* %add.ptr13.3 to i32*
  store i32 %mul, i32* %i14.3, align 4, !tbaa !2
  %add.ptr15.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i8.4 = bitcast i8* %add.ptr15.3 to i32*
  store i32 %mul, i32* %i8.4, align 4, !tbaa !2
  %add.ptr9.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i10.4 = bitcast i8* %add.ptr9.4 to i32*
  store i32 %mul, i32* %i10.4, align 4, !tbaa !2
  %add.ptr11.4 = getelementptr inbounds i8, i8* %src, i32 136
  %i12.4 = bitcast i8* %add.ptr11.4 to i32*
  store i32 %mul, i32* %i12.4, align 4, !tbaa !2
  %add.ptr13.4 = getelementptr inbounds i8, i8* %src, i32 140
  %i14.4 = bitcast i8* %add.ptr13.4 to i32*
  store i32 %mul, i32* %i14.4, align 4, !tbaa !2
  %add.ptr15.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i8.5 = bitcast i8* %add.ptr15.4 to i32*
  store i32 %mul, i32* %i8.5, align 4, !tbaa !2
  %add.ptr9.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i10.5 = bitcast i8* %add.ptr9.5 to i32*
  store i32 %mul, i32* %i10.5, align 4, !tbaa !2
  %add.ptr11.5 = getelementptr inbounds i8, i8* %src, i32 168
  %i12.5 = bitcast i8* %add.ptr11.5 to i32*
  store i32 %mul, i32* %i12.5, align 4, !tbaa !2
  %add.ptr13.5 = getelementptr inbounds i8, i8* %src, i32 172
  %i14.5 = bitcast i8* %add.ptr13.5 to i32*
  store i32 %mul, i32* %i14.5, align 4, !tbaa !2
  %add.ptr15.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i8.6 = bitcast i8* %add.ptr15.5 to i32*
  store i32 %mul, i32* %i8.6, align 4, !tbaa !2
  %add.ptr9.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i10.6 = bitcast i8* %add.ptr9.6 to i32*
  store i32 %mul, i32* %i10.6, align 4, !tbaa !2
  %add.ptr11.6 = getelementptr inbounds i8, i8* %src, i32 200
  %i12.6 = bitcast i8* %add.ptr11.6 to i32*
  store i32 %mul, i32* %i12.6, align 4, !tbaa !2
  %add.ptr13.6 = getelementptr inbounds i8, i8* %src, i32 204
  %i14.6 = bitcast i8* %add.ptr13.6 to i32*
  store i32 %mul, i32* %i14.6, align 4, !tbaa !2
  %add.ptr15.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i8.7 = bitcast i8* %add.ptr15.6 to i32*
  store i32 %mul, i32* %i8.7, align 4, !tbaa !2
  %add.ptr9.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i10.7 = bitcast i8* %add.ptr9.7 to i32*
  store i32 %mul, i32* %i10.7, align 4, !tbaa !2
  %add.ptr11.7 = getelementptr inbounds i8, i8* %src, i32 232
  %i12.7 = bitcast i8* %add.ptr11.7 to i32*
  store i32 %mul, i32* %i12.7, align 4, !tbaa !2
  %add.ptr13.7 = getelementptr inbounds i8, i8* %src, i32 236
  %i14.7 = bitcast i8* %add.ptr13.7 to i32*
  store i32 %mul, i32* %i14.7, align 4, !tbaa !2
  %add.ptr15.7 = getelementptr inbounds i8, i8* %src, i32 256
  %i8.8 = bitcast i8* %add.ptr15.7 to i32*
  store i32 %mul, i32* %i8.8, align 4, !tbaa !2
  %add.ptr9.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i10.8 = bitcast i8* %add.ptr9.8 to i32*
  store i32 %mul, i32* %i10.8, align 4, !tbaa !2
  %add.ptr11.8 = getelementptr inbounds i8, i8* %src, i32 264
  %i12.8 = bitcast i8* %add.ptr11.8 to i32*
  store i32 %mul, i32* %i12.8, align 4, !tbaa !2
  %add.ptr13.8 = getelementptr inbounds i8, i8* %src, i32 268
  %i14.8 = bitcast i8* %add.ptr13.8 to i32*
  store i32 %mul, i32* %i14.8, align 4, !tbaa !2
  %add.ptr15.8 = getelementptr inbounds i8, i8* %src, i32 288
  %i8.9 = bitcast i8* %add.ptr15.8 to i32*
  store i32 %mul, i32* %i8.9, align 4, !tbaa !2
  %add.ptr9.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i10.9 = bitcast i8* %add.ptr9.9 to i32*
  store i32 %mul, i32* %i10.9, align 4, !tbaa !2
  %add.ptr11.9 = getelementptr inbounds i8, i8* %src, i32 296
  %i12.9 = bitcast i8* %add.ptr11.9 to i32*
  store i32 %mul, i32* %i12.9, align 4, !tbaa !2
  %add.ptr13.9 = getelementptr inbounds i8, i8* %src, i32 300
  %i14.9 = bitcast i8* %add.ptr13.9 to i32*
  store i32 %mul, i32* %i14.9, align 4, !tbaa !2
  %add.ptr15.9 = getelementptr inbounds i8, i8* %src, i32 320
  %i8.10 = bitcast i8* %add.ptr15.9 to i32*
  store i32 %mul, i32* %i8.10, align 4, !tbaa !2
  %add.ptr9.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i10.10 = bitcast i8* %add.ptr9.10 to i32*
  store i32 %mul, i32* %i10.10, align 4, !tbaa !2
  %add.ptr11.10 = getelementptr inbounds i8, i8* %src, i32 328
  %i12.10 = bitcast i8* %add.ptr11.10 to i32*
  store i32 %mul, i32* %i12.10, align 4, !tbaa !2
  %add.ptr13.10 = getelementptr inbounds i8, i8* %src, i32 332
  %i14.10 = bitcast i8* %add.ptr13.10 to i32*
  store i32 %mul, i32* %i14.10, align 4, !tbaa !2
  %add.ptr15.10 = getelementptr inbounds i8, i8* %src, i32 352
  %i8.11 = bitcast i8* %add.ptr15.10 to i32*
  store i32 %mul, i32* %i8.11, align 4, !tbaa !2
  %add.ptr9.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i10.11 = bitcast i8* %add.ptr9.11 to i32*
  store i32 %mul, i32* %i10.11, align 4, !tbaa !2
  %add.ptr11.11 = getelementptr inbounds i8, i8* %src, i32 360
  %i12.11 = bitcast i8* %add.ptr11.11 to i32*
  store i32 %mul, i32* %i12.11, align 4, !tbaa !2
  %add.ptr13.11 = getelementptr inbounds i8, i8* %src, i32 364
  %i14.11 = bitcast i8* %add.ptr13.11 to i32*
  store i32 %mul, i32* %i14.11, align 4, !tbaa !2
  %add.ptr15.11 = getelementptr inbounds i8, i8* %src, i32 384
  %i8.12 = bitcast i8* %add.ptr15.11 to i32*
  store i32 %mul, i32* %i8.12, align 4, !tbaa !2
  %add.ptr9.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i10.12 = bitcast i8* %add.ptr9.12 to i32*
  store i32 %mul, i32* %i10.12, align 4, !tbaa !2
  %add.ptr11.12 = getelementptr inbounds i8, i8* %src, i32 392
  %i12.12 = bitcast i8* %add.ptr11.12 to i32*
  store i32 %mul, i32* %i12.12, align 4, !tbaa !2
  %add.ptr13.12 = getelementptr inbounds i8, i8* %src, i32 396
  %i14.12 = bitcast i8* %add.ptr13.12 to i32*
  store i32 %mul, i32* %i14.12, align 4, !tbaa !2
  %add.ptr15.12 = getelementptr inbounds i8, i8* %src, i32 416
  %i8.13 = bitcast i8* %add.ptr15.12 to i32*
  store i32 %mul, i32* %i8.13, align 4, !tbaa !2
  %add.ptr9.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i10.13 = bitcast i8* %add.ptr9.13 to i32*
  store i32 %mul, i32* %i10.13, align 4, !tbaa !2
  %add.ptr11.13 = getelementptr inbounds i8, i8* %src, i32 424
  %i12.13 = bitcast i8* %add.ptr11.13 to i32*
  store i32 %mul, i32* %i12.13, align 4, !tbaa !2
  %add.ptr13.13 = getelementptr inbounds i8, i8* %src, i32 428
  %i14.13 = bitcast i8* %add.ptr13.13 to i32*
  store i32 %mul, i32* %i14.13, align 4, !tbaa !2
  %add.ptr15.13 = getelementptr inbounds i8, i8* %src, i32 448
  %i8.14 = bitcast i8* %add.ptr15.13 to i32*
  store i32 %mul, i32* %i8.14, align 4, !tbaa !2
  %add.ptr9.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i10.14 = bitcast i8* %add.ptr9.14 to i32*
  store i32 %mul, i32* %i10.14, align 4, !tbaa !2
  %add.ptr11.14 = getelementptr inbounds i8, i8* %src, i32 456
  %i12.14 = bitcast i8* %add.ptr11.14 to i32*
  store i32 %mul, i32* %i12.14, align 4, !tbaa !2
  %add.ptr13.14 = getelementptr inbounds i8, i8* %src, i32 460
  %i14.14 = bitcast i8* %add.ptr13.14 to i32*
  store i32 %mul, i32* %i14.14, align 4, !tbaa !2
  %add.ptr15.14 = getelementptr inbounds i8, i8* %src, i32 480
  %i8.15 = bitcast i8* %add.ptr15.14 to i32*
  store i32 %mul, i32* %i8.15, align 4, !tbaa !2
  %add.ptr9.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i10.15 = bitcast i8* %add.ptr9.15 to i32*
  store i32 %mul, i32* %i10.15, align 4, !tbaa !2
  %add.ptr11.15 = getelementptr inbounds i8, i8* %src, i32 488
  %i12.15 = bitcast i8* %add.ptr11.15 to i32*
  store i32 %mul, i32* %i12.15, align 4, !tbaa !2
  %add.ptr13.15 = getelementptr inbounds i8, i8* %src, i32 492
  %i14.15 = bitcast i8* %add.ptr13.15 to i32*
  store i32 %mul, i32* %i14.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @predict_16x16_dc_128_c(i8* nocapture %src) #1 {
entry:
  %add.ptr8 = getelementptr inbounds i8, i8* %src, i32 32
  %add.ptr8.1 = getelementptr inbounds i8, i8* %src, i32 64
  %add.ptr8.2 = getelementptr inbounds i8, i8* %src, i32 96
  %add.ptr8.3 = getelementptr inbounds i8, i8* %src, i32 128
  %add.ptr8.4 = getelementptr inbounds i8, i8* %src, i32 160
  %add.ptr8.5 = getelementptr inbounds i8, i8* %src, i32 192
  %add.ptr8.6 = getelementptr inbounds i8, i8* %src, i32 224
  %add.ptr8.7 = getelementptr inbounds i8, i8* %src, i32 256
  %add.ptr8.8 = getelementptr inbounds i8, i8* %src, i32 288
  %add.ptr8.9 = getelementptr inbounds i8, i8* %src, i32 320
  %add.ptr8.10 = getelementptr inbounds i8, i8* %src, i32 352
  %add.ptr8.11 = getelementptr inbounds i8, i8* %src, i32 384
  %add.ptr8.12 = getelementptr inbounds i8, i8* %src, i32 416
  %add.ptr8.13 = getelementptr inbounds i8, i8* %src, i32 448
  %add.ptr8.14 = getelementptr inbounds i8, i8* %src, i32 480
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %src, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.1, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.2, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.3, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.4, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.5, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.6, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.7, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.8, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.9, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.10, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.11, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.12, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.13, i8 -128, i64 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %add.ptr8.14, i8 -128, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_predict_8x8c_init(i32 %cpu, void (i8*)** nocapture %pf) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 2
  store void (i8*)* @x264_8_predict_8x8c_v_c, void (i8*)** %arrayidx, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 1
  store void (i8*)* @x264_8_predict_8x8c_h_c, void (i8*)** %arrayidx1, align 4, !tbaa !5
  store void (i8*)* @x264_8_predict_8x8c_dc_c, void (i8*)** %pf, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 3
  store void (i8*)* @x264_8_predict_8x8c_p_c, void (i8*)** %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 4
  store void (i8*)* @predict_8x8c_dc_left_c, void (i8*)** %arrayidx4, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 5
  store void (i8*)* @predict_8x8c_dc_top_c, void (i8*)** %arrayidx5, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 6
  store void (i8*)* @predict_8x8c_dc_128_c, void (i8*)** %arrayidx6, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8c_dc_left_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx4 = getelementptr inbounds i8, i8* %src, i32 127
  %1 = load i8, i8* %arrayidx4, align 1, !tbaa !2
  %conv5 = zext i8 %1 to i32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 31
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %2 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx4.1 = getelementptr inbounds i8, i8* %src, i32 159
  %3 = load i8, i8* %arrayidx4.1, align 1, !tbaa !2
  %conv5.1 = zext i8 %3 to i32
  %add6.1 = add nuw nsw i32 %conv5, %conv5.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 63
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %4 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx4.2 = getelementptr inbounds i8, i8* %src, i32 191
  %5 = load i8, i8* %arrayidx4.2, align 1, !tbaa !2
  %conv5.2 = zext i8 %5 to i32
  %add6.2 = add nuw nsw i32 %add6.1, %conv5.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 95
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %6 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx4.3 = getelementptr inbounds i8, i8* %src, i32 223
  %7 = load i8, i8* %arrayidx4.3, align 1, !tbaa !2
  %conv5.3 = zext i8 %7 to i32
  %add6.3 = add nuw nsw i32 %add6.2, %conv5.3
  %add7 = add nuw nsw i32 %add.3, 2
  %8 = lshr i32 %add7, 2
  %mul8 = mul nuw i32 %8, 16843009
  %add9 = add nuw nsw i32 %add6.3, 2
  %9 = lshr i32 %add9, 2
  %i = bitcast i8* %src to i32*
  store i32 %mul8, i32* %i, align 4, !tbaa !2
  %add.ptr18 = getelementptr inbounds i8, i8* %src, i32 4
  %i19 = bitcast i8* %add.ptr18 to i32*
  store i32 %mul8, i32* %i19, align 4, !tbaa !2
  %add.ptr20 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr20 to i32*
  store i32 %mul8, i32* %i.1, align 4, !tbaa !2
  %add.ptr18.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i19.1 = bitcast i8* %add.ptr18.1 to i32*
  store i32 %mul8, i32* %i19.1, align 4, !tbaa !2
  %add.ptr20.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr20.1 to i32*
  store i32 %mul8, i32* %i.2, align 4, !tbaa !2
  %add.ptr18.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i19.2 = bitcast i8* %add.ptr18.2 to i32*
  store i32 %mul8, i32* %i19.2, align 4, !tbaa !2
  %add.ptr20.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr20.2 to i32*
  store i32 %mul8, i32* %i.3, align 4, !tbaa !2
  %add.ptr18.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i19.3 = bitcast i8* %add.ptr18.3 to i32*
  store i32 %mul8, i32* %i19.3, align 4, !tbaa !2
  %add.ptr20.3 = getelementptr inbounds i8, i8* %src, i32 128
  %mul11 = mul nuw i32 %9, 16843009
  %i31 = bitcast i8* %add.ptr20.3 to i32*
  store i32 %mul11, i32* %i31, align 4, !tbaa !2
  %add.ptr32 = getelementptr inbounds i8, i8* %src, i32 132
  %i33 = bitcast i8* %add.ptr32 to i32*
  store i32 %mul11, i32* %i33, align 4, !tbaa !2
  %add.ptr34 = getelementptr inbounds i8, i8* %src, i32 160
  %i31.1 = bitcast i8* %add.ptr34 to i32*
  store i32 %mul11, i32* %i31.1, align 4, !tbaa !2
  %add.ptr32.1 = getelementptr inbounds i8, i8* %src, i32 164
  %i33.1 = bitcast i8* %add.ptr32.1 to i32*
  store i32 %mul11, i32* %i33.1, align 4, !tbaa !2
  %add.ptr34.1 = getelementptr inbounds i8, i8* %src, i32 192
  %i31.2 = bitcast i8* %add.ptr34.1 to i32*
  store i32 %mul11, i32* %i31.2, align 4, !tbaa !2
  %add.ptr32.2 = getelementptr inbounds i8, i8* %src, i32 196
  %i33.2 = bitcast i8* %add.ptr32.2 to i32*
  store i32 %mul11, i32* %i33.2, align 4, !tbaa !2
  %add.ptr34.2 = getelementptr inbounds i8, i8* %src, i32 224
  %i31.3 = bitcast i8* %add.ptr34.2 to i32*
  store i32 %mul11, i32* %i31.3, align 4, !tbaa !2
  %add.ptr32.3 = getelementptr inbounds i8, i8* %src, i32 228
  %i33.3 = bitcast i8* %add.ptr32.3 to i32*
  store i32 %mul11, i32* %i33.3, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8c_dc_top_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 -28
  %1 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %1 to i32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 -31
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %2 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx3.1 = getelementptr inbounds i8, i8* %src, i32 -27
  %3 = load i8, i8* %arrayidx3.1, align 1, !tbaa !2
  %conv4.1 = zext i8 %3 to i32
  %add5.1 = add nuw nsw i32 %conv4, %conv4.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 -30
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %4 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx3.2 = getelementptr inbounds i8, i8* %src, i32 -26
  %5 = load i8, i8* %arrayidx3.2, align 1, !tbaa !2
  %conv4.2 = zext i8 %5 to i32
  %add5.2 = add nuw nsw i32 %add5.1, %conv4.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 -29
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %6 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx3.3 = getelementptr inbounds i8, i8* %src, i32 -25
  %7 = load i8, i8* %arrayidx3.3, align 1, !tbaa !2
  %conv4.3 = zext i8 %7 to i32
  %add5.3 = add nuw nsw i32 %add5.2, %conv4.3
  %add6 = add nuw nsw i32 %add.3, 2
  %8 = lshr i32 %add6, 2
  %mul = mul nuw i32 %8, 16843009
  %add7 = add nuw nsw i32 %add5.3, 2
  %9 = lshr i32 %add7, 2
  %mul9 = mul nuw i32 %9, 16843009
  %i = bitcast i8* %src to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %add.ptr15 = getelementptr inbounds i8, i8* %src, i32 4
  %i16 = bitcast i8* %add.ptr15 to i32*
  store i32 %mul9, i32* %i16, align 4, !tbaa !2
  %add.ptr17 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr17 to i32*
  store i32 %mul, i32* %i.1, align 4, !tbaa !2
  %add.ptr15.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i16.1 = bitcast i8* %add.ptr15.1 to i32*
  store i32 %mul9, i32* %i16.1, align 4, !tbaa !2
  %add.ptr17.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr17.1 to i32*
  store i32 %mul, i32* %i.2, align 4, !tbaa !2
  %add.ptr15.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i16.2 = bitcast i8* %add.ptr15.2 to i32*
  store i32 %mul9, i32* %i16.2, align 4, !tbaa !2
  %add.ptr17.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr17.2 to i32*
  store i32 %mul, i32* %i.3, align 4, !tbaa !2
  %add.ptr15.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i16.3 = bitcast i8* %add.ptr15.3 to i32*
  store i32 %mul9, i32* %i16.3, align 4, !tbaa !2
  %add.ptr17.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i.4 = bitcast i8* %add.ptr17.3 to i32*
  store i32 %mul, i32* %i.4, align 4, !tbaa !2
  %add.ptr15.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i16.4 = bitcast i8* %add.ptr15.4 to i32*
  store i32 %mul9, i32* %i16.4, align 4, !tbaa !2
  %add.ptr17.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i.5 = bitcast i8* %add.ptr17.4 to i32*
  store i32 %mul, i32* %i.5, align 4, !tbaa !2
  %add.ptr15.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i16.5 = bitcast i8* %add.ptr15.5 to i32*
  store i32 %mul9, i32* %i16.5, align 4, !tbaa !2
  %add.ptr17.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i.6 = bitcast i8* %add.ptr17.5 to i32*
  store i32 %mul, i32* %i.6, align 4, !tbaa !2
  %add.ptr15.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i16.6 = bitcast i8* %add.ptr15.6 to i32*
  store i32 %mul9, i32* %i16.6, align 4, !tbaa !2
  %add.ptr17.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i.7 = bitcast i8* %add.ptr17.6 to i32*
  store i32 %mul, i32* %i.7, align 4, !tbaa !2
  %add.ptr15.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i16.7 = bitcast i8* %add.ptr15.7 to i32*
  store i32 %mul9, i32* %i16.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @predict_8x8c_dc_128_c(i8* nocapture %src) #1 {
entry:
  %i = bitcast i8* %src to i32*
  store i32 -2139062144, i32* %i, align 4, !tbaa !2
  %add.ptr1 = getelementptr inbounds i8, i8* %src, i32 4
  %i2 = bitcast i8* %add.ptr1 to i32*
  store i32 -2139062144, i32* %i2, align 4, !tbaa !2
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr3 to i32*
  store i32 -2139062144, i32* %i.1, align 4, !tbaa !2
  %add.ptr1.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i2.1 = bitcast i8* %add.ptr1.1 to i32*
  store i32 -2139062144, i32* %i2.1, align 4, !tbaa !2
  %add.ptr3.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr3.1 to i32*
  store i32 -2139062144, i32* %i.2, align 4, !tbaa !2
  %add.ptr1.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i2.2 = bitcast i8* %add.ptr1.2 to i32*
  store i32 -2139062144, i32* %i2.2, align 4, !tbaa !2
  %add.ptr3.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr3.2 to i32*
  store i32 -2139062144, i32* %i.3, align 4, !tbaa !2
  %add.ptr1.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i2.3 = bitcast i8* %add.ptr1.3 to i32*
  store i32 -2139062144, i32* %i2.3, align 4, !tbaa !2
  %add.ptr3.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i.4 = bitcast i8* %add.ptr3.3 to i32*
  store i32 -2139062144, i32* %i.4, align 4, !tbaa !2
  %add.ptr1.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i2.4 = bitcast i8* %add.ptr1.4 to i32*
  store i32 -2139062144, i32* %i2.4, align 4, !tbaa !2
  %add.ptr3.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i.5 = bitcast i8* %add.ptr3.4 to i32*
  store i32 -2139062144, i32* %i.5, align 4, !tbaa !2
  %add.ptr1.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i2.5 = bitcast i8* %add.ptr1.5 to i32*
  store i32 -2139062144, i32* %i2.5, align 4, !tbaa !2
  %add.ptr3.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i.6 = bitcast i8* %add.ptr3.5 to i32*
  store i32 -2139062144, i32* %i.6, align 4, !tbaa !2
  %add.ptr1.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i2.6 = bitcast i8* %add.ptr1.6 to i32*
  store i32 -2139062144, i32* %i2.6, align 4, !tbaa !2
  %add.ptr3.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i.7 = bitcast i8* %add.ptr3.6 to i32*
  store i32 -2139062144, i32* %i.7, align 4, !tbaa !2
  %add.ptr1.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i2.7 = bitcast i8* %add.ptr1.7 to i32*
  store i32 -2139062144, i32* %i2.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_predict_8x16c_init(i32 %cpu, void (i8*)** nocapture %pf) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 2
  store void (i8*)* @x264_8_predict_8x16c_v_c, void (i8*)** %arrayidx, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 1
  store void (i8*)* @x264_8_predict_8x16c_h_c, void (i8*)** %arrayidx1, align 4, !tbaa !5
  store void (i8*)* @x264_8_predict_8x16c_dc_c, void (i8*)** %pf, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 3
  store void (i8*)* @x264_8_predict_8x16c_p_c, void (i8*)** %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 4
  store void (i8*)* @predict_8x16c_dc_left_c, void (i8*)** %arrayidx4, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 5
  store void (i8*)* @predict_8x16c_dc_top_c, void (i8*)** %arrayidx5, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 6
  store void (i8*)* @predict_8x16c_dc_128_c, void (i8*)** %arrayidx6, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x16c_dc_left_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %1 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %2 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %3 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %add5 = add nuw nsw i32 %add.3, 2
  %4 = lshr i32 %add5, 2
  %mul6 = mul nuw i32 %4, 16843009
  %i13 = bitcast i8* %src to i32*
  store i32 %mul6, i32* %i13, align 4, !tbaa !2
  %add.ptr14 = getelementptr inbounds i8, i8* %src, i32 4
  %i15 = bitcast i8* %add.ptr14 to i32*
  store i32 %mul6, i32* %i15, align 4, !tbaa !2
  %add.ptr16 = getelementptr inbounds i8, i8* %src, i32 32
  %i13.1 = bitcast i8* %add.ptr16 to i32*
  store i32 %mul6, i32* %i13.1, align 4, !tbaa !2
  %add.ptr14.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i15.1 = bitcast i8* %add.ptr14.1 to i32*
  store i32 %mul6, i32* %i15.1, align 4, !tbaa !2
  %add.ptr16.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i13.2 = bitcast i8* %add.ptr16.1 to i32*
  store i32 %mul6, i32* %i13.2, align 4, !tbaa !2
  %add.ptr14.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i15.2 = bitcast i8* %add.ptr14.2 to i32*
  store i32 %mul6, i32* %i15.2, align 4, !tbaa !2
  %add.ptr16.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i13.3 = bitcast i8* %add.ptr16.2 to i32*
  store i32 %mul6, i32* %i13.3, align 4, !tbaa !2
  %add.ptr14.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i15.3 = bitcast i8* %add.ptr14.3 to i32*
  store i32 %mul6, i32* %i15.3, align 4, !tbaa !2
  %add.ptr16.3 = getelementptr inbounds i8, i8* %src, i32 128
  %arrayidx.143 = getelementptr inbounds i8, i8* %src, i32 127
  %5 = load i8, i8* %arrayidx.143, align 1, !tbaa !2
  %conv.144 = zext i8 %5 to i32
  %arrayidx.1.1 = getelementptr inbounds i8, i8* %src, i32 159
  %6 = load i8, i8* %arrayidx.1.1, align 1, !tbaa !2
  %conv.1.1 = zext i8 %6 to i32
  %add.1.1 = add nuw nsw i32 %conv.144, %conv.1.1
  %arrayidx.2.1 = getelementptr inbounds i8, i8* %src, i32 191
  %7 = load i8, i8* %arrayidx.2.1, align 1, !tbaa !2
  %conv.2.1 = zext i8 %7 to i32
  %add.2.1 = add nuw nsw i32 %add.1.1, %conv.2.1
  %arrayidx.3.1 = getelementptr inbounds i8, i8* %src, i32 223
  %8 = load i8, i8* %arrayidx.3.1, align 1, !tbaa !2
  %conv.3.1 = zext i8 %8 to i32
  %add.3.1 = add nuw nsw i32 %add.2.1, %conv.3.1
  %add5.1 = add nuw nsw i32 %add.3.1, 2
  %9 = lshr i32 %add5.1, 2
  %mul6.1 = mul nuw i32 %9, 16843009
  %i13.145 = bitcast i8* %add.ptr16.3 to i32*
  store i32 %mul6.1, i32* %i13.145, align 4, !tbaa !2
  %add.ptr14.146 = getelementptr inbounds i8, i8* %src, i32 132
  %i15.147 = bitcast i8* %add.ptr14.146 to i32*
  store i32 %mul6.1, i32* %i15.147, align 4, !tbaa !2
  %add.ptr16.148 = getelementptr inbounds i8, i8* %src, i32 160
  %i13.1.1 = bitcast i8* %add.ptr16.148 to i32*
  store i32 %mul6.1, i32* %i13.1.1, align 4, !tbaa !2
  %add.ptr14.1.1 = getelementptr inbounds i8, i8* %src, i32 164
  %i15.1.1 = bitcast i8* %add.ptr14.1.1 to i32*
  store i32 %mul6.1, i32* %i15.1.1, align 4, !tbaa !2
  %add.ptr16.1.1 = getelementptr inbounds i8, i8* %src, i32 192
  %i13.2.1 = bitcast i8* %add.ptr16.1.1 to i32*
  store i32 %mul6.1, i32* %i13.2.1, align 4, !tbaa !2
  %add.ptr14.2.1 = getelementptr inbounds i8, i8* %src, i32 196
  %i15.2.1 = bitcast i8* %add.ptr14.2.1 to i32*
  store i32 %mul6.1, i32* %i15.2.1, align 4, !tbaa !2
  %add.ptr16.2.1 = getelementptr inbounds i8, i8* %src, i32 224
  %i13.3.1 = bitcast i8* %add.ptr16.2.1 to i32*
  store i32 %mul6.1, i32* %i13.3.1, align 4, !tbaa !2
  %add.ptr14.3.1 = getelementptr inbounds i8, i8* %src, i32 228
  %i15.3.1 = bitcast i8* %add.ptr14.3.1 to i32*
  store i32 %mul6.1, i32* %i15.3.1, align 4, !tbaa !2
  %add.ptr16.3.1 = getelementptr inbounds i8, i8* %src, i32 256
  %arrayidx.249 = getelementptr inbounds i8, i8* %src, i32 255
  %10 = load i8, i8* %arrayidx.249, align 1, !tbaa !2
  %conv.250 = zext i8 %10 to i32
  %arrayidx.1.2 = getelementptr inbounds i8, i8* %src, i32 287
  %11 = load i8, i8* %arrayidx.1.2, align 1, !tbaa !2
  %conv.1.2 = zext i8 %11 to i32
  %add.1.2 = add nuw nsw i32 %conv.250, %conv.1.2
  %arrayidx.2.2 = getelementptr inbounds i8, i8* %src, i32 319
  %12 = load i8, i8* %arrayidx.2.2, align 1, !tbaa !2
  %conv.2.2 = zext i8 %12 to i32
  %add.2.2 = add nuw nsw i32 %add.1.2, %conv.2.2
  %arrayidx.3.2 = getelementptr inbounds i8, i8* %src, i32 351
  %13 = load i8, i8* %arrayidx.3.2, align 1, !tbaa !2
  %conv.3.2 = zext i8 %13 to i32
  %add.3.2 = add nuw nsw i32 %add.2.2, %conv.3.2
  %add5.2 = add nuw nsw i32 %add.3.2, 2
  %14 = lshr i32 %add5.2, 2
  %mul6.2 = mul nuw i32 %14, 16843009
  %i13.251 = bitcast i8* %add.ptr16.3.1 to i32*
  store i32 %mul6.2, i32* %i13.251, align 4, !tbaa !2
  %add.ptr14.252 = getelementptr inbounds i8, i8* %src, i32 260
  %i15.253 = bitcast i8* %add.ptr14.252 to i32*
  store i32 %mul6.2, i32* %i15.253, align 4, !tbaa !2
  %add.ptr16.254 = getelementptr inbounds i8, i8* %src, i32 288
  %i13.1.2 = bitcast i8* %add.ptr16.254 to i32*
  store i32 %mul6.2, i32* %i13.1.2, align 4, !tbaa !2
  %add.ptr14.1.2 = getelementptr inbounds i8, i8* %src, i32 292
  %i15.1.2 = bitcast i8* %add.ptr14.1.2 to i32*
  store i32 %mul6.2, i32* %i15.1.2, align 4, !tbaa !2
  %add.ptr16.1.2 = getelementptr inbounds i8, i8* %src, i32 320
  %i13.2.2 = bitcast i8* %add.ptr16.1.2 to i32*
  store i32 %mul6.2, i32* %i13.2.2, align 4, !tbaa !2
  %add.ptr14.2.2 = getelementptr inbounds i8, i8* %src, i32 324
  %i15.2.2 = bitcast i8* %add.ptr14.2.2 to i32*
  store i32 %mul6.2, i32* %i15.2.2, align 4, !tbaa !2
  %add.ptr16.2.2 = getelementptr inbounds i8, i8* %src, i32 352
  %i13.3.2 = bitcast i8* %add.ptr16.2.2 to i32*
  store i32 %mul6.2, i32* %i13.3.2, align 4, !tbaa !2
  %add.ptr14.3.2 = getelementptr inbounds i8, i8* %src, i32 356
  %i15.3.2 = bitcast i8* %add.ptr14.3.2 to i32*
  store i32 %mul6.2, i32* %i15.3.2, align 4, !tbaa !2
  %add.ptr16.3.2 = getelementptr inbounds i8, i8* %src, i32 384
  %arrayidx.355 = getelementptr inbounds i8, i8* %src, i32 383
  %15 = load i8, i8* %arrayidx.355, align 1, !tbaa !2
  %conv.356 = zext i8 %15 to i32
  %arrayidx.1.3 = getelementptr inbounds i8, i8* %src, i32 415
  %16 = load i8, i8* %arrayidx.1.3, align 1, !tbaa !2
  %conv.1.3 = zext i8 %16 to i32
  %add.1.3 = add nuw nsw i32 %conv.356, %conv.1.3
  %arrayidx.2.3 = getelementptr inbounds i8, i8* %src, i32 447
  %17 = load i8, i8* %arrayidx.2.3, align 1, !tbaa !2
  %conv.2.3 = zext i8 %17 to i32
  %add.2.3 = add nuw nsw i32 %add.1.3, %conv.2.3
  %arrayidx.3.3 = getelementptr inbounds i8, i8* %src, i32 479
  %18 = load i8, i8* %arrayidx.3.3, align 1, !tbaa !2
  %conv.3.3 = zext i8 %18 to i32
  %add.3.3 = add nuw nsw i32 %add.2.3, %conv.3.3
  %add5.3 = add nuw nsw i32 %add.3.3, 2
  %19 = lshr i32 %add5.3, 2
  %mul6.3 = mul nuw i32 %19, 16843009
  %i13.357 = bitcast i8* %add.ptr16.3.2 to i32*
  store i32 %mul6.3, i32* %i13.357, align 4, !tbaa !2
  %add.ptr14.358 = getelementptr inbounds i8, i8* %src, i32 388
  %i15.359 = bitcast i8* %add.ptr14.358 to i32*
  store i32 %mul6.3, i32* %i15.359, align 4, !tbaa !2
  %add.ptr16.360 = getelementptr inbounds i8, i8* %src, i32 416
  %i13.1.3 = bitcast i8* %add.ptr16.360 to i32*
  store i32 %mul6.3, i32* %i13.1.3, align 4, !tbaa !2
  %add.ptr14.1.3 = getelementptr inbounds i8, i8* %src, i32 420
  %i15.1.3 = bitcast i8* %add.ptr14.1.3 to i32*
  store i32 %mul6.3, i32* %i15.1.3, align 4, !tbaa !2
  %add.ptr16.1.3 = getelementptr inbounds i8, i8* %src, i32 448
  %i13.2.3 = bitcast i8* %add.ptr16.1.3 to i32*
  store i32 %mul6.3, i32* %i13.2.3, align 4, !tbaa !2
  %add.ptr14.2.3 = getelementptr inbounds i8, i8* %src, i32 452
  %i15.2.3 = bitcast i8* %add.ptr14.2.3 to i32*
  store i32 %mul6.3, i32* %i15.2.3, align 4, !tbaa !2
  %add.ptr16.2.3 = getelementptr inbounds i8, i8* %src, i32 480
  %i13.3.3 = bitcast i8* %add.ptr16.2.3 to i32*
  store i32 %mul6.3, i32* %i13.3.3, align 4, !tbaa !2
  %add.ptr14.3.3 = getelementptr inbounds i8, i8* %src, i32 484
  %i15.3.3 = bitcast i8* %add.ptr14.3.3 to i32*
  store i32 %mul6.3, i32* %i15.3.3, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x16c_dc_top_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 -28
  %1 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %1 to i32
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i32 -31
  %2 = load i8, i8* %arrayidx.1, align 1, !tbaa !2
  %conv.1 = zext i8 %2 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx3.1 = getelementptr inbounds i8, i8* %src, i32 -27
  %3 = load i8, i8* %arrayidx3.1, align 1, !tbaa !2
  %conv4.1 = zext i8 %3 to i32
  %add5.1 = add nuw nsw i32 %conv4, %conv4.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %src, i32 -30
  %4 = load i8, i8* %arrayidx.2, align 1, !tbaa !2
  %conv.2 = zext i8 %4 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx3.2 = getelementptr inbounds i8, i8* %src, i32 -26
  %5 = load i8, i8* %arrayidx3.2, align 1, !tbaa !2
  %conv4.2 = zext i8 %5 to i32
  %add5.2 = add nuw nsw i32 %add5.1, %conv4.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %src, i32 -29
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !2
  %conv.3 = zext i8 %6 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx3.3 = getelementptr inbounds i8, i8* %src, i32 -25
  %7 = load i8, i8* %arrayidx3.3, align 1, !tbaa !2
  %conv4.3 = zext i8 %7 to i32
  %add5.3 = add nuw nsw i32 %add5.2, %conv4.3
  %add6 = add nuw nsw i32 %add.3, 2
  %8 = lshr i32 %add6, 2
  %mul = mul nuw i32 %8, 16843009
  %add7 = add nuw nsw i32 %add5.3, 2
  %9 = lshr i32 %add7, 2
  %mul9 = mul nuw i32 %9, 16843009
  %i = bitcast i8* %src to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %add.ptr15 = getelementptr inbounds i8, i8* %src, i32 4
  %i16 = bitcast i8* %add.ptr15 to i32*
  store i32 %mul9, i32* %i16, align 4, !tbaa !2
  %add.ptr17 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr17 to i32*
  store i32 %mul, i32* %i.1, align 4, !tbaa !2
  %add.ptr15.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i16.1 = bitcast i8* %add.ptr15.1 to i32*
  store i32 %mul9, i32* %i16.1, align 4, !tbaa !2
  %add.ptr17.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr17.1 to i32*
  store i32 %mul, i32* %i.2, align 4, !tbaa !2
  %add.ptr15.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i16.2 = bitcast i8* %add.ptr15.2 to i32*
  store i32 %mul9, i32* %i16.2, align 4, !tbaa !2
  %add.ptr17.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr17.2 to i32*
  store i32 %mul, i32* %i.3, align 4, !tbaa !2
  %add.ptr15.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i16.3 = bitcast i8* %add.ptr15.3 to i32*
  store i32 %mul9, i32* %i16.3, align 4, !tbaa !2
  %add.ptr17.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i.4 = bitcast i8* %add.ptr17.3 to i32*
  store i32 %mul, i32* %i.4, align 4, !tbaa !2
  %add.ptr15.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i16.4 = bitcast i8* %add.ptr15.4 to i32*
  store i32 %mul9, i32* %i16.4, align 4, !tbaa !2
  %add.ptr17.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i.5 = bitcast i8* %add.ptr17.4 to i32*
  store i32 %mul, i32* %i.5, align 4, !tbaa !2
  %add.ptr15.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i16.5 = bitcast i8* %add.ptr15.5 to i32*
  store i32 %mul9, i32* %i16.5, align 4, !tbaa !2
  %add.ptr17.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i.6 = bitcast i8* %add.ptr17.5 to i32*
  store i32 %mul, i32* %i.6, align 4, !tbaa !2
  %add.ptr15.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i16.6 = bitcast i8* %add.ptr15.6 to i32*
  store i32 %mul9, i32* %i16.6, align 4, !tbaa !2
  %add.ptr17.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i.7 = bitcast i8* %add.ptr17.6 to i32*
  store i32 %mul, i32* %i.7, align 4, !tbaa !2
  %add.ptr15.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i16.7 = bitcast i8* %add.ptr15.7 to i32*
  store i32 %mul9, i32* %i16.7, align 4, !tbaa !2
  %add.ptr17.7 = getelementptr inbounds i8, i8* %src, i32 256
  %i.8 = bitcast i8* %add.ptr17.7 to i32*
  store i32 %mul, i32* %i.8, align 4, !tbaa !2
  %add.ptr15.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i16.8 = bitcast i8* %add.ptr15.8 to i32*
  store i32 %mul9, i32* %i16.8, align 4, !tbaa !2
  %add.ptr17.8 = getelementptr inbounds i8, i8* %src, i32 288
  %i.9 = bitcast i8* %add.ptr17.8 to i32*
  store i32 %mul, i32* %i.9, align 4, !tbaa !2
  %add.ptr15.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i16.9 = bitcast i8* %add.ptr15.9 to i32*
  store i32 %mul9, i32* %i16.9, align 4, !tbaa !2
  %add.ptr17.9 = getelementptr inbounds i8, i8* %src, i32 320
  %i.10 = bitcast i8* %add.ptr17.9 to i32*
  store i32 %mul, i32* %i.10, align 4, !tbaa !2
  %add.ptr15.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i16.10 = bitcast i8* %add.ptr15.10 to i32*
  store i32 %mul9, i32* %i16.10, align 4, !tbaa !2
  %add.ptr17.10 = getelementptr inbounds i8, i8* %src, i32 352
  %i.11 = bitcast i8* %add.ptr17.10 to i32*
  store i32 %mul, i32* %i.11, align 4, !tbaa !2
  %add.ptr15.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i16.11 = bitcast i8* %add.ptr15.11 to i32*
  store i32 %mul9, i32* %i16.11, align 4, !tbaa !2
  %add.ptr17.11 = getelementptr inbounds i8, i8* %src, i32 384
  %i.12 = bitcast i8* %add.ptr17.11 to i32*
  store i32 %mul, i32* %i.12, align 4, !tbaa !2
  %add.ptr15.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i16.12 = bitcast i8* %add.ptr15.12 to i32*
  store i32 %mul9, i32* %i16.12, align 4, !tbaa !2
  %add.ptr17.12 = getelementptr inbounds i8, i8* %src, i32 416
  %i.13 = bitcast i8* %add.ptr17.12 to i32*
  store i32 %mul, i32* %i.13, align 4, !tbaa !2
  %add.ptr15.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i16.13 = bitcast i8* %add.ptr15.13 to i32*
  store i32 %mul9, i32* %i16.13, align 4, !tbaa !2
  %add.ptr17.13 = getelementptr inbounds i8, i8* %src, i32 448
  %i.14 = bitcast i8* %add.ptr17.13 to i32*
  store i32 %mul, i32* %i.14, align 4, !tbaa !2
  %add.ptr15.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i16.14 = bitcast i8* %add.ptr15.14 to i32*
  store i32 %mul9, i32* %i16.14, align 4, !tbaa !2
  %add.ptr17.14 = getelementptr inbounds i8, i8* %src, i32 480
  %i.15 = bitcast i8* %add.ptr17.14 to i32*
  store i32 %mul, i32* %i.15, align 4, !tbaa !2
  %add.ptr15.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i16.15 = bitcast i8* %add.ptr15.15 to i32*
  store i32 %mul9, i32* %i16.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @predict_8x16c_dc_128_c(i8* nocapture %src) #1 {
entry:
  %i = bitcast i8* %src to i32*
  store i32 -2139062144, i32* %i, align 4, !tbaa !2
  %add.ptr1 = getelementptr inbounds i8, i8* %src, i32 4
  %i2 = bitcast i8* %add.ptr1 to i32*
  store i32 -2139062144, i32* %i2, align 4, !tbaa !2
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr3 to i32*
  store i32 -2139062144, i32* %i.1, align 4, !tbaa !2
  %add.ptr1.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i2.1 = bitcast i8* %add.ptr1.1 to i32*
  store i32 -2139062144, i32* %i2.1, align 4, !tbaa !2
  %add.ptr3.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr3.1 to i32*
  store i32 -2139062144, i32* %i.2, align 4, !tbaa !2
  %add.ptr1.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i2.2 = bitcast i8* %add.ptr1.2 to i32*
  store i32 -2139062144, i32* %i2.2, align 4, !tbaa !2
  %add.ptr3.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr3.2 to i32*
  store i32 -2139062144, i32* %i.3, align 4, !tbaa !2
  %add.ptr1.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i2.3 = bitcast i8* %add.ptr1.3 to i32*
  store i32 -2139062144, i32* %i2.3, align 4, !tbaa !2
  %add.ptr3.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i.4 = bitcast i8* %add.ptr3.3 to i32*
  store i32 -2139062144, i32* %i.4, align 4, !tbaa !2
  %add.ptr1.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i2.4 = bitcast i8* %add.ptr1.4 to i32*
  store i32 -2139062144, i32* %i2.4, align 4, !tbaa !2
  %add.ptr3.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i.5 = bitcast i8* %add.ptr3.4 to i32*
  store i32 -2139062144, i32* %i.5, align 4, !tbaa !2
  %add.ptr1.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i2.5 = bitcast i8* %add.ptr1.5 to i32*
  store i32 -2139062144, i32* %i2.5, align 4, !tbaa !2
  %add.ptr3.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i.6 = bitcast i8* %add.ptr3.5 to i32*
  store i32 -2139062144, i32* %i.6, align 4, !tbaa !2
  %add.ptr1.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i2.6 = bitcast i8* %add.ptr1.6 to i32*
  store i32 -2139062144, i32* %i2.6, align 4, !tbaa !2
  %add.ptr3.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i.7 = bitcast i8* %add.ptr3.6 to i32*
  store i32 -2139062144, i32* %i.7, align 4, !tbaa !2
  %add.ptr1.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i2.7 = bitcast i8* %add.ptr1.7 to i32*
  store i32 -2139062144, i32* %i2.7, align 4, !tbaa !2
  %add.ptr3.7 = getelementptr inbounds i8, i8* %src, i32 256
  %i.8 = bitcast i8* %add.ptr3.7 to i32*
  store i32 -2139062144, i32* %i.8, align 4, !tbaa !2
  %add.ptr1.8 = getelementptr inbounds i8, i8* %src, i32 260
  %i2.8 = bitcast i8* %add.ptr1.8 to i32*
  store i32 -2139062144, i32* %i2.8, align 4, !tbaa !2
  %add.ptr3.8 = getelementptr inbounds i8, i8* %src, i32 288
  %i.9 = bitcast i8* %add.ptr3.8 to i32*
  store i32 -2139062144, i32* %i.9, align 4, !tbaa !2
  %add.ptr1.9 = getelementptr inbounds i8, i8* %src, i32 292
  %i2.9 = bitcast i8* %add.ptr1.9 to i32*
  store i32 -2139062144, i32* %i2.9, align 4, !tbaa !2
  %add.ptr3.9 = getelementptr inbounds i8, i8* %src, i32 320
  %i.10 = bitcast i8* %add.ptr3.9 to i32*
  store i32 -2139062144, i32* %i.10, align 4, !tbaa !2
  %add.ptr1.10 = getelementptr inbounds i8, i8* %src, i32 324
  %i2.10 = bitcast i8* %add.ptr1.10 to i32*
  store i32 -2139062144, i32* %i2.10, align 4, !tbaa !2
  %add.ptr3.10 = getelementptr inbounds i8, i8* %src, i32 352
  %i.11 = bitcast i8* %add.ptr3.10 to i32*
  store i32 -2139062144, i32* %i.11, align 4, !tbaa !2
  %add.ptr1.11 = getelementptr inbounds i8, i8* %src, i32 356
  %i2.11 = bitcast i8* %add.ptr1.11 to i32*
  store i32 -2139062144, i32* %i2.11, align 4, !tbaa !2
  %add.ptr3.11 = getelementptr inbounds i8, i8* %src, i32 384
  %i.12 = bitcast i8* %add.ptr3.11 to i32*
  store i32 -2139062144, i32* %i.12, align 4, !tbaa !2
  %add.ptr1.12 = getelementptr inbounds i8, i8* %src, i32 388
  %i2.12 = bitcast i8* %add.ptr1.12 to i32*
  store i32 -2139062144, i32* %i2.12, align 4, !tbaa !2
  %add.ptr3.12 = getelementptr inbounds i8, i8* %src, i32 416
  %i.13 = bitcast i8* %add.ptr3.12 to i32*
  store i32 -2139062144, i32* %i.13, align 4, !tbaa !2
  %add.ptr1.13 = getelementptr inbounds i8, i8* %src, i32 420
  %i2.13 = bitcast i8* %add.ptr1.13 to i32*
  store i32 -2139062144, i32* %i2.13, align 4, !tbaa !2
  %add.ptr3.13 = getelementptr inbounds i8, i8* %src, i32 448
  %i.14 = bitcast i8* %add.ptr3.13 to i32*
  store i32 -2139062144, i32* %i.14, align 4, !tbaa !2
  %add.ptr1.14 = getelementptr inbounds i8, i8* %src, i32 452
  %i2.14 = bitcast i8* %add.ptr1.14 to i32*
  store i32 -2139062144, i32* %i2.14, align 4, !tbaa !2
  %add.ptr3.14 = getelementptr inbounds i8, i8* %src, i32 480
  %i.15 = bitcast i8* %add.ptr3.14 to i32*
  store i32 -2139062144, i32* %i.15, align 4, !tbaa !2
  %add.ptr1.15 = getelementptr inbounds i8, i8* %src, i32 484
  %i2.15 = bitcast i8* %add.ptr1.15 to i32*
  store i32 -2139062144, i32* %i2.15, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_predict_8x8_init(i32 %cpu, void (i8*, i8*)** nocapture %pf, void (i8*, i8*, i32, i32)** nocapture %predict_filter) local_unnamed_addr #1 {
entry:
  store void (i8*, i8*)* @x264_8_predict_8x8_v_c, void (i8*, i8*)** %pf, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 1
  store void (i8*, i8*)* @x264_8_predict_8x8_h_c, void (i8*, i8*)** %arrayidx1, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 2
  store void (i8*, i8*)* @x264_8_predict_8x8_dc_c, void (i8*, i8*)** %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 3
  store void (i8*, i8*)* @predict_8x8_ddl_c, void (i8*, i8*)** %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 4
  store void (i8*, i8*)* @predict_8x8_ddr_c, void (i8*, i8*)** %arrayidx4, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 5
  store void (i8*, i8*)* @predict_8x8_vr_c, void (i8*, i8*)** %arrayidx5, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 6
  store void (i8*, i8*)* @predict_8x8_hd_c, void (i8*, i8*)** %arrayidx6, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 7
  store void (i8*, i8*)* @predict_8x8_vl_c, void (i8*, i8*)** %arrayidx7, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 8
  store void (i8*, i8*)* @predict_8x8_hu_c, void (i8*, i8*)** %arrayidx8, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 9
  store void (i8*, i8*)* @predict_8x8_dc_left_c, void (i8*, i8*)** %arrayidx9, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 10
  store void (i8*, i8*)* @predict_8x8_dc_top_c, void (i8*, i8*)** %arrayidx10, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds void (i8*, i8*)*, void (i8*, i8*)** %pf, i32 11
  store void (i8*, i8*)* @predict_8x8_dc_128_c, void (i8*, i8*)** %arrayidx11, align 4, !tbaa !5
  store void (i8*, i8*, i32, i32)* @predict_8x8_filter_c, void (i8*, i8*, i32, i32)** %predict_filter, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_ddl_c(i8* %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 16
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 17
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 18
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 19
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 20
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 21
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 22
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 23
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %edge, i32 24
  %8 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %8 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %edge, i32 25
  %9 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %edge, i32 26
  %10 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv20 = zext i8 %10 to i32
  %arrayidx21 = getelementptr inbounds i8, i8* %edge, i32 27
  %11 = load i8, i8* %arrayidx21, align 1, !tbaa !2
  %conv22 = zext i8 %11 to i32
  %arrayidx23 = getelementptr inbounds i8, i8* %edge, i32 28
  %12 = load i8, i8* %arrayidx23, align 1, !tbaa !2
  %conv24 = zext i8 %12 to i32
  %arrayidx25 = getelementptr inbounds i8, i8* %edge, i32 29
  %13 = load i8, i8* %arrayidx25, align 1, !tbaa !2
  %conv26 = zext i8 %13 to i32
  %arrayidx27 = getelementptr inbounds i8, i8* %edge, i32 30
  %14 = load i8, i8* %arrayidx27, align 1, !tbaa !2
  %conv28 = zext i8 %14 to i32
  %arrayidx29 = getelementptr inbounds i8, i8* %edge, i32 31
  %15 = load i8, i8* %arrayidx29, align 1, !tbaa !2
  %conv30 = zext i8 %15 to i32
  %mul = shl nuw nsw i32 %conv2, 1
  %add = add nuw nsw i32 %conv4, 2
  %add31 = add nuw nsw i32 %add, %conv
  %add32 = add nuw nsw i32 %add31, %mul
  %16 = lshr i32 %add32, 2
  %conv33 = trunc i32 %16 to i8
  store i8 %conv33, i8* %src, align 1, !tbaa !2
  %mul35 = shl nuw nsw i32 %conv4, 1
  %add36 = add nuw nsw i32 %conv6, 2
  %add37 = add nuw nsw i32 %add36, %conv2
  %add38 = add nuw nsw i32 %add37, %mul35
  %17 = lshr i32 %add38, 2
  %conv40 = trunc i32 %17 to i8
  %arrayidx41 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv40, i8* %arrayidx41, align 1, !tbaa !2
  %arrayidx42 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv40, i8* %arrayidx42, align 1, !tbaa !2
  %mul43 = shl nuw nsw i32 %conv6, 1
  %add45 = add nuw nsw i32 %add, %mul43
  %add46 = add nuw nsw i32 %add45, %conv8
  %18 = lshr i32 %add46, 2
  %conv48 = trunc i32 %18 to i8
  %arrayidx49 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv48, i8* %arrayidx49, align 1, !tbaa !2
  %arrayidx50 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv48, i8* %arrayidx50, align 1, !tbaa !2
  %arrayidx51 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv48, i8* %arrayidx51, align 1, !tbaa !2
  %mul52 = shl nuw nsw i32 %conv8, 1
  %add54 = add nuw nsw i32 %add36, %mul52
  %add55 = add nuw nsw i32 %add54, %conv10
  %19 = lshr i32 %add55, 2
  %conv57 = trunc i32 %19 to i8
  %arrayidx58 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv57, i8* %arrayidx58, align 1, !tbaa !2
  %arrayidx59 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv57, i8* %arrayidx59, align 1, !tbaa !2
  %arrayidx60 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv57, i8* %arrayidx60, align 1, !tbaa !2
  %arrayidx61 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv57, i8* %arrayidx61, align 1, !tbaa !2
  %mul62 = shl nuw nsw i32 %conv10, 1
  %add63 = add nuw nsw i32 %conv8, 2
  %add64 = add nuw nsw i32 %add63, %mul62
  %add65 = add nuw nsw i32 %add64, %conv12
  %20 = lshr i32 %add65, 2
  %conv67 = trunc i32 %20 to i8
  %arrayidx68 = getelementptr inbounds i8, i8* %src, i32 4
  store i8 %conv67, i8* %arrayidx68, align 1, !tbaa !2
  %arrayidx69 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv67, i8* %arrayidx69, align 1, !tbaa !2
  %arrayidx70 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv67, i8* %arrayidx70, align 1, !tbaa !2
  %arrayidx71 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv67, i8* %arrayidx71, align 1, !tbaa !2
  %arrayidx72 = getelementptr inbounds i8, i8* %src, i32 128
  store i8 %conv67, i8* %arrayidx72, align 1, !tbaa !2
  %mul73 = shl nuw nsw i32 %conv12, 1
  %add74 = add nuw nsw i32 %conv10, 2
  %add75 = add nuw nsw i32 %add74, %mul73
  %add76 = add nuw nsw i32 %add75, %conv14
  %21 = lshr i32 %add76, 2
  %conv78 = trunc i32 %21 to i8
  %arrayidx79 = getelementptr inbounds i8, i8* %src, i32 5
  store i8 %conv78, i8* %arrayidx79, align 1, !tbaa !2
  %arrayidx80 = getelementptr inbounds i8, i8* %src, i32 36
  store i8 %conv78, i8* %arrayidx80, align 1, !tbaa !2
  %arrayidx81 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv78, i8* %arrayidx81, align 1, !tbaa !2
  %arrayidx82 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv78, i8* %arrayidx82, align 1, !tbaa !2
  %arrayidx83 = getelementptr inbounds i8, i8* %src, i32 129
  store i8 %conv78, i8* %arrayidx83, align 1, !tbaa !2
  %arrayidx84 = getelementptr inbounds i8, i8* %src, i32 160
  store i8 %conv78, i8* %arrayidx84, align 1, !tbaa !2
  %mul85 = shl nuw nsw i32 %conv14, 1
  %add86 = add nuw nsw i32 %conv12, 2
  %add87 = add nuw nsw i32 %add86, %mul85
  %add88 = add nuw nsw i32 %add87, %conv16
  %22 = lshr i32 %add88, 2
  %conv90 = trunc i32 %22 to i8
  %arrayidx91 = getelementptr inbounds i8, i8* %src, i32 6
  store i8 %conv90, i8* %arrayidx91, align 1, !tbaa !2
  %arrayidx92 = getelementptr inbounds i8, i8* %src, i32 37
  store i8 %conv90, i8* %arrayidx92, align 1, !tbaa !2
  %arrayidx93 = getelementptr inbounds i8, i8* %src, i32 68
  store i8 %conv90, i8* %arrayidx93, align 1, !tbaa !2
  %arrayidx94 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv90, i8* %arrayidx94, align 1, !tbaa !2
  %arrayidx95 = getelementptr inbounds i8, i8* %src, i32 130
  store i8 %conv90, i8* %arrayidx95, align 1, !tbaa !2
  %arrayidx96 = getelementptr inbounds i8, i8* %src, i32 161
  store i8 %conv90, i8* %arrayidx96, align 1, !tbaa !2
  %arrayidx97 = getelementptr inbounds i8, i8* %src, i32 192
  store i8 %conv90, i8* %arrayidx97, align 1, !tbaa !2
  %mul98 = shl nuw nsw i32 %conv16, 1
  %add99 = add nuw nsw i32 %conv14, 2
  %add100 = add nuw nsw i32 %add99, %mul98
  %add101 = add nuw nsw i32 %add100, %conv18
  %23 = lshr i32 %add101, 2
  %conv103 = trunc i32 %23 to i8
  %arrayidx104 = getelementptr inbounds i8, i8* %src, i32 7
  store i8 %conv103, i8* %arrayidx104, align 1, !tbaa !2
  %arrayidx105 = getelementptr inbounds i8, i8* %src, i32 38
  store i8 %conv103, i8* %arrayidx105, align 1, !tbaa !2
  %arrayidx106 = getelementptr inbounds i8, i8* %src, i32 69
  store i8 %conv103, i8* %arrayidx106, align 1, !tbaa !2
  %arrayidx107 = getelementptr inbounds i8, i8* %src, i32 100
  store i8 %conv103, i8* %arrayidx107, align 1, !tbaa !2
  %arrayidx108 = getelementptr inbounds i8, i8* %src, i32 131
  store i8 %conv103, i8* %arrayidx108, align 1, !tbaa !2
  %arrayidx109 = getelementptr inbounds i8, i8* %src, i32 162
  store i8 %conv103, i8* %arrayidx109, align 1, !tbaa !2
  %arrayidx110 = getelementptr inbounds i8, i8* %src, i32 193
  store i8 %conv103, i8* %arrayidx110, align 1, !tbaa !2
  %arrayidx111 = getelementptr inbounds i8, i8* %src, i32 224
  store i8 %conv103, i8* %arrayidx111, align 1, !tbaa !2
  %mul112 = shl nuw nsw i32 %conv18, 1
  %add113 = add nuw nsw i32 %conv16, 2
  %add114 = add nuw nsw i32 %add113, %mul112
  %add115 = add nuw nsw i32 %add114, %conv20
  %24 = lshr i32 %add115, 2
  %conv117 = trunc i32 %24 to i8
  %arrayidx118 = getelementptr inbounds i8, i8* %src, i32 39
  store i8 %conv117, i8* %arrayidx118, align 1, !tbaa !2
  %arrayidx119 = getelementptr inbounds i8, i8* %src, i32 70
  store i8 %conv117, i8* %arrayidx119, align 1, !tbaa !2
  %arrayidx120 = getelementptr inbounds i8, i8* %src, i32 101
  store i8 %conv117, i8* %arrayidx120, align 1, !tbaa !2
  %arrayidx121 = getelementptr inbounds i8, i8* %src, i32 132
  store i8 %conv117, i8* %arrayidx121, align 1, !tbaa !2
  %arrayidx122 = getelementptr inbounds i8, i8* %src, i32 163
  store i8 %conv117, i8* %arrayidx122, align 1, !tbaa !2
  %arrayidx123 = getelementptr inbounds i8, i8* %src, i32 194
  store i8 %conv117, i8* %arrayidx123, align 1, !tbaa !2
  %arrayidx124 = getelementptr inbounds i8, i8* %src, i32 225
  store i8 %conv117, i8* %arrayidx124, align 1, !tbaa !2
  %mul125 = shl nuw nsw i32 %conv20, 1
  %add126 = add nuw nsw i32 %conv18, 2
  %add127 = add nuw nsw i32 %add126, %mul125
  %add128 = add nuw nsw i32 %add127, %conv22
  %25 = lshr i32 %add128, 2
  %conv130 = trunc i32 %25 to i8
  %arrayidx131 = getelementptr inbounds i8, i8* %src, i32 71
  store i8 %conv130, i8* %arrayidx131, align 1, !tbaa !2
  %arrayidx132 = getelementptr inbounds i8, i8* %src, i32 102
  store i8 %conv130, i8* %arrayidx132, align 1, !tbaa !2
  %arrayidx133 = getelementptr inbounds i8, i8* %src, i32 133
  store i8 %conv130, i8* %arrayidx133, align 1, !tbaa !2
  %arrayidx134 = getelementptr inbounds i8, i8* %src, i32 164
  store i8 %conv130, i8* %arrayidx134, align 1, !tbaa !2
  %arrayidx135 = getelementptr inbounds i8, i8* %src, i32 195
  store i8 %conv130, i8* %arrayidx135, align 1, !tbaa !2
  %arrayidx136 = getelementptr inbounds i8, i8* %src, i32 226
  store i8 %conv130, i8* %arrayidx136, align 1, !tbaa !2
  %mul137 = shl nuw nsw i32 %conv22, 1
  %add138 = add nuw nsw i32 %conv20, 2
  %add139 = add nuw nsw i32 %add138, %mul137
  %add140 = add nuw nsw i32 %add139, %conv24
  %26 = lshr i32 %add140, 2
  %conv142 = trunc i32 %26 to i8
  %arrayidx143 = getelementptr inbounds i8, i8* %src, i32 103
  store i8 %conv142, i8* %arrayidx143, align 1, !tbaa !2
  %arrayidx144 = getelementptr inbounds i8, i8* %src, i32 134
  store i8 %conv142, i8* %arrayidx144, align 1, !tbaa !2
  %arrayidx145 = getelementptr inbounds i8, i8* %src, i32 165
  store i8 %conv142, i8* %arrayidx145, align 1, !tbaa !2
  %arrayidx146 = getelementptr inbounds i8, i8* %src, i32 196
  store i8 %conv142, i8* %arrayidx146, align 1, !tbaa !2
  %arrayidx147 = getelementptr inbounds i8, i8* %src, i32 227
  store i8 %conv142, i8* %arrayidx147, align 1, !tbaa !2
  %mul148 = shl nuw nsw i32 %conv24, 1
  %add149 = add nuw nsw i32 %conv22, 2
  %add150 = add nuw nsw i32 %add149, %mul148
  %add151 = add nuw nsw i32 %add150, %conv26
  %27 = lshr i32 %add151, 2
  %conv153 = trunc i32 %27 to i8
  %arrayidx154 = getelementptr inbounds i8, i8* %src, i32 135
  store i8 %conv153, i8* %arrayidx154, align 1, !tbaa !2
  %arrayidx155 = getelementptr inbounds i8, i8* %src, i32 166
  store i8 %conv153, i8* %arrayidx155, align 1, !tbaa !2
  %arrayidx156 = getelementptr inbounds i8, i8* %src, i32 197
  store i8 %conv153, i8* %arrayidx156, align 1, !tbaa !2
  %arrayidx157 = getelementptr inbounds i8, i8* %src, i32 228
  store i8 %conv153, i8* %arrayidx157, align 1, !tbaa !2
  %mul158 = shl nuw nsw i32 %conv26, 1
  %add159 = add nuw nsw i32 %conv24, 2
  %add160 = add nuw nsw i32 %add159, %mul158
  %add161 = add nuw nsw i32 %add160, %conv28
  %28 = lshr i32 %add161, 2
  %conv163 = trunc i32 %28 to i8
  %arrayidx164 = getelementptr inbounds i8, i8* %src, i32 167
  store i8 %conv163, i8* %arrayidx164, align 1, !tbaa !2
  %arrayidx165 = getelementptr inbounds i8, i8* %src, i32 198
  store i8 %conv163, i8* %arrayidx165, align 1, !tbaa !2
  %arrayidx166 = getelementptr inbounds i8, i8* %src, i32 229
  store i8 %conv163, i8* %arrayidx166, align 1, !tbaa !2
  %mul167 = shl nuw nsw i32 %conv28, 1
  %add168 = add nuw nsw i32 %conv26, 2
  %add169 = add nuw nsw i32 %add168, %mul167
  %add170 = add nuw nsw i32 %add169, %conv30
  %29 = lshr i32 %add170, 2
  %conv172 = trunc i32 %29 to i8
  %arrayidx173 = getelementptr inbounds i8, i8* %src, i32 199
  store i8 %conv172, i8* %arrayidx173, align 1, !tbaa !2
  %arrayidx174 = getelementptr inbounds i8, i8* %src, i32 230
  store i8 %conv172, i8* %arrayidx174, align 1, !tbaa !2
  %mul175 = shl nuw nsw i32 %conv30, 1
  %add176 = add nuw nsw i32 %conv28, 2
  %add177 = add nuw nsw i32 %add176, %conv30
  %add178 = add nuw nsw i32 %add177, %mul175
  %30 = lshr i32 %add178, 2
  %conv180 = trunc i32 %30 to i8
  %arrayidx181 = getelementptr inbounds i8, i8* %src, i32 231
  store i8 %conv180, i8* %arrayidx181, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_ddr_c(i8* %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 16
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 17
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 18
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 19
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 20
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 21
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 22
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 23
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %edge, i32 14
  %8 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %8 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %edge, i32 13
  %9 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %edge, i32 12
  %10 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv20 = zext i8 %10 to i32
  %arrayidx21 = getelementptr inbounds i8, i8* %edge, i32 11
  %11 = load i8, i8* %arrayidx21, align 1, !tbaa !2
  %conv22 = zext i8 %11 to i32
  %arrayidx23 = getelementptr inbounds i8, i8* %edge, i32 10
  %12 = load i8, i8* %arrayidx23, align 1, !tbaa !2
  %conv24 = zext i8 %12 to i32
  %arrayidx25 = getelementptr inbounds i8, i8* %edge, i32 9
  %13 = load i8, i8* %arrayidx25, align 1, !tbaa !2
  %conv26 = zext i8 %13 to i32
  %arrayidx27 = getelementptr inbounds i8, i8* %edge, i32 8
  %14 = load i8, i8* %arrayidx27, align 1, !tbaa !2
  %conv28 = zext i8 %14 to i32
  %arrayidx29 = getelementptr inbounds i8, i8* %edge, i32 7
  %15 = load i8, i8* %arrayidx29, align 1, !tbaa !2
  %conv30 = zext i8 %15 to i32
  %arrayidx31 = getelementptr inbounds i8, i8* %edge, i32 15
  %16 = load i8, i8* %arrayidx31, align 1, !tbaa !2
  %conv32 = zext i8 %16 to i32
  %mul = shl nuw nsw i32 %conv28, 1
  %add = add nuw nsw i32 %conv26, 2
  %add33 = add nuw nsw i32 %add, %conv30
  %add34 = add nuw nsw i32 %add33, %mul
  %17 = lshr i32 %add34, 2
  %conv35 = trunc i32 %17 to i8
  %arrayidx36 = getelementptr inbounds i8, i8* %src, i32 224
  store i8 %conv35, i8* %arrayidx36, align 1, !tbaa !2
  %mul37 = shl nuw nsw i32 %conv26, 1
  %add38 = add nuw nsw i32 %conv24, 2
  %add39 = add nuw nsw i32 %add38, %conv28
  %add40 = add nuw nsw i32 %add39, %mul37
  %18 = lshr i32 %add40, 2
  %conv42 = trunc i32 %18 to i8
  %arrayidx43 = getelementptr inbounds i8, i8* %src, i32 225
  store i8 %conv42, i8* %arrayidx43, align 1, !tbaa !2
  %arrayidx44 = getelementptr inbounds i8, i8* %src, i32 192
  store i8 %conv42, i8* %arrayidx44, align 1, !tbaa !2
  %mul45 = shl nuw nsw i32 %conv24, 1
  %add46 = add nuw nsw i32 %conv22, 2
  %add47 = add nuw nsw i32 %add46, %conv26
  %add48 = add nuw nsw i32 %add47, %mul45
  %19 = lshr i32 %add48, 2
  %conv50 = trunc i32 %19 to i8
  %arrayidx51 = getelementptr inbounds i8, i8* %src, i32 226
  store i8 %conv50, i8* %arrayidx51, align 1, !tbaa !2
  %arrayidx52 = getelementptr inbounds i8, i8* %src, i32 193
  store i8 %conv50, i8* %arrayidx52, align 1, !tbaa !2
  %arrayidx53 = getelementptr inbounds i8, i8* %src, i32 160
  store i8 %conv50, i8* %arrayidx53, align 1, !tbaa !2
  %mul54 = shl nuw nsw i32 %conv22, 1
  %add55 = add nuw nsw i32 %conv20, 2
  %add56 = add nuw nsw i32 %add55, %conv24
  %add57 = add nuw nsw i32 %add56, %mul54
  %20 = lshr i32 %add57, 2
  %conv59 = trunc i32 %20 to i8
  %arrayidx60 = getelementptr inbounds i8, i8* %src, i32 227
  store i8 %conv59, i8* %arrayidx60, align 1, !tbaa !2
  %arrayidx61 = getelementptr inbounds i8, i8* %src, i32 194
  store i8 %conv59, i8* %arrayidx61, align 1, !tbaa !2
  %arrayidx62 = getelementptr inbounds i8, i8* %src, i32 161
  store i8 %conv59, i8* %arrayidx62, align 1, !tbaa !2
  %arrayidx63 = getelementptr inbounds i8, i8* %src, i32 128
  store i8 %conv59, i8* %arrayidx63, align 1, !tbaa !2
  %mul64 = shl nuw nsw i32 %conv20, 1
  %add65 = add nuw nsw i32 %conv18, 2
  %add66 = add nuw nsw i32 %add65, %conv22
  %add67 = add nuw nsw i32 %add66, %mul64
  %21 = lshr i32 %add67, 2
  %conv69 = trunc i32 %21 to i8
  %arrayidx70 = getelementptr inbounds i8, i8* %src, i32 228
  store i8 %conv69, i8* %arrayidx70, align 1, !tbaa !2
  %arrayidx71 = getelementptr inbounds i8, i8* %src, i32 195
  store i8 %conv69, i8* %arrayidx71, align 1, !tbaa !2
  %arrayidx72 = getelementptr inbounds i8, i8* %src, i32 162
  store i8 %conv69, i8* %arrayidx72, align 1, !tbaa !2
  %arrayidx73 = getelementptr inbounds i8, i8* %src, i32 129
  store i8 %conv69, i8* %arrayidx73, align 1, !tbaa !2
  %arrayidx74 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv69, i8* %arrayidx74, align 1, !tbaa !2
  %mul75 = shl nuw nsw i32 %conv18, 1
  %add76 = add nuw nsw i32 %conv16, 2
  %add77 = add nuw nsw i32 %add76, %conv20
  %add78 = add nuw nsw i32 %add77, %mul75
  %22 = lshr i32 %add78, 2
  %conv80 = trunc i32 %22 to i8
  %arrayidx81 = getelementptr inbounds i8, i8* %src, i32 229
  store i8 %conv80, i8* %arrayidx81, align 1, !tbaa !2
  %arrayidx82 = getelementptr inbounds i8, i8* %src, i32 196
  store i8 %conv80, i8* %arrayidx82, align 1, !tbaa !2
  %arrayidx83 = getelementptr inbounds i8, i8* %src, i32 163
  store i8 %conv80, i8* %arrayidx83, align 1, !tbaa !2
  %arrayidx84 = getelementptr inbounds i8, i8* %src, i32 130
  store i8 %conv80, i8* %arrayidx84, align 1, !tbaa !2
  %arrayidx85 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv80, i8* %arrayidx85, align 1, !tbaa !2
  %arrayidx86 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv80, i8* %arrayidx86, align 1, !tbaa !2
  %mul87 = shl nuw nsw i32 %conv16, 1
  %add89 = add nuw nsw i32 %add65, %mul87
  %add90 = add nuw nsw i32 %add89, %conv32
  %23 = lshr i32 %add90, 2
  %conv92 = trunc i32 %23 to i8
  %arrayidx93 = getelementptr inbounds i8, i8* %src, i32 230
  store i8 %conv92, i8* %arrayidx93, align 1, !tbaa !2
  %arrayidx94 = getelementptr inbounds i8, i8* %src, i32 197
  store i8 %conv92, i8* %arrayidx94, align 1, !tbaa !2
  %arrayidx95 = getelementptr inbounds i8, i8* %src, i32 164
  store i8 %conv92, i8* %arrayidx95, align 1, !tbaa !2
  %arrayidx96 = getelementptr inbounds i8, i8* %src, i32 131
  store i8 %conv92, i8* %arrayidx96, align 1, !tbaa !2
  %arrayidx97 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv92, i8* %arrayidx97, align 1, !tbaa !2
  %arrayidx98 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv92, i8* %arrayidx98, align 1, !tbaa !2
  %arrayidx99 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv92, i8* %arrayidx99, align 1, !tbaa !2
  %mul100 = shl nuw nsw i32 %conv32, 1
  %add101 = add nuw nsw i32 %conv, 2
  %add102 = add nuw nsw i32 %add101, %conv16
  %add103 = add nuw nsw i32 %add102, %mul100
  %24 = lshr i32 %add103, 2
  %conv105 = trunc i32 %24 to i8
  %arrayidx106 = getelementptr inbounds i8, i8* %src, i32 231
  store i8 %conv105, i8* %arrayidx106, align 1, !tbaa !2
  %arrayidx107 = getelementptr inbounds i8, i8* %src, i32 198
  store i8 %conv105, i8* %arrayidx107, align 1, !tbaa !2
  %arrayidx108 = getelementptr inbounds i8, i8* %src, i32 165
  store i8 %conv105, i8* %arrayidx108, align 1, !tbaa !2
  %arrayidx109 = getelementptr inbounds i8, i8* %src, i32 132
  store i8 %conv105, i8* %arrayidx109, align 1, !tbaa !2
  %arrayidx110 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv105, i8* %arrayidx110, align 1, !tbaa !2
  %arrayidx111 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv105, i8* %arrayidx111, align 1, !tbaa !2
  %arrayidx112 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv105, i8* %arrayidx112, align 1, !tbaa !2
  store i8 %conv105, i8* %src, align 1, !tbaa !2
  %mul114 = shl nuw nsw i32 %conv, 1
  %add115 = add nuw nsw i32 %conv2, 2
  %add116 = add nuw nsw i32 %add115, %mul114
  %add117 = add nuw nsw i32 %add116, %conv32
  %25 = lshr i32 %add117, 2
  %conv119 = trunc i32 %25 to i8
  %arrayidx120 = getelementptr inbounds i8, i8* %src, i32 199
  store i8 %conv119, i8* %arrayidx120, align 1, !tbaa !2
  %arrayidx121 = getelementptr inbounds i8, i8* %src, i32 166
  store i8 %conv119, i8* %arrayidx121, align 1, !tbaa !2
  %arrayidx122 = getelementptr inbounds i8, i8* %src, i32 133
  store i8 %conv119, i8* %arrayidx122, align 1, !tbaa !2
  %arrayidx123 = getelementptr inbounds i8, i8* %src, i32 100
  store i8 %conv119, i8* %arrayidx123, align 1, !tbaa !2
  %arrayidx124 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv119, i8* %arrayidx124, align 1, !tbaa !2
  %arrayidx125 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv119, i8* %arrayidx125, align 1, !tbaa !2
  %arrayidx126 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv119, i8* %arrayidx126, align 1, !tbaa !2
  %mul127 = shl nuw nsw i32 %conv2, 1
  %add129 = add nuw nsw i32 %add101, %mul127
  %add130 = add nuw nsw i32 %add129, %conv4
  %26 = lshr i32 %add130, 2
  %conv132 = trunc i32 %26 to i8
  %arrayidx133 = getelementptr inbounds i8, i8* %src, i32 167
  store i8 %conv132, i8* %arrayidx133, align 1, !tbaa !2
  %arrayidx134 = getelementptr inbounds i8, i8* %src, i32 134
  store i8 %conv132, i8* %arrayidx134, align 1, !tbaa !2
  %arrayidx135 = getelementptr inbounds i8, i8* %src, i32 101
  store i8 %conv132, i8* %arrayidx135, align 1, !tbaa !2
  %arrayidx136 = getelementptr inbounds i8, i8* %src, i32 68
  store i8 %conv132, i8* %arrayidx136, align 1, !tbaa !2
  %arrayidx137 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv132, i8* %arrayidx137, align 1, !tbaa !2
  %arrayidx138 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv132, i8* %arrayidx138, align 1, !tbaa !2
  %mul139 = shl nuw nsw i32 %conv4, 1
  %add141 = add nuw nsw i32 %add115, %mul139
  %add142 = add nuw nsw i32 %add141, %conv6
  %27 = lshr i32 %add142, 2
  %conv144 = trunc i32 %27 to i8
  %arrayidx145 = getelementptr inbounds i8, i8* %src, i32 135
  store i8 %conv144, i8* %arrayidx145, align 1, !tbaa !2
  %arrayidx146 = getelementptr inbounds i8, i8* %src, i32 102
  store i8 %conv144, i8* %arrayidx146, align 1, !tbaa !2
  %arrayidx147 = getelementptr inbounds i8, i8* %src, i32 69
  store i8 %conv144, i8* %arrayidx147, align 1, !tbaa !2
  %arrayidx148 = getelementptr inbounds i8, i8* %src, i32 36
  store i8 %conv144, i8* %arrayidx148, align 1, !tbaa !2
  %arrayidx149 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv144, i8* %arrayidx149, align 1, !tbaa !2
  %mul150 = shl nuw nsw i32 %conv6, 1
  %add151 = add nuw nsw i32 %conv4, 2
  %add152 = add nuw nsw i32 %add151, %mul150
  %add153 = add nuw nsw i32 %add152, %conv8
  %28 = lshr i32 %add153, 2
  %conv155 = trunc i32 %28 to i8
  %arrayidx156 = getelementptr inbounds i8, i8* %src, i32 103
  store i8 %conv155, i8* %arrayidx156, align 1, !tbaa !2
  %arrayidx157 = getelementptr inbounds i8, i8* %src, i32 70
  store i8 %conv155, i8* %arrayidx157, align 1, !tbaa !2
  %arrayidx158 = getelementptr inbounds i8, i8* %src, i32 37
  store i8 %conv155, i8* %arrayidx158, align 1, !tbaa !2
  %arrayidx159 = getelementptr inbounds i8, i8* %src, i32 4
  store i8 %conv155, i8* %arrayidx159, align 1, !tbaa !2
  %mul160 = shl nuw nsw i32 %conv8, 1
  %add161 = add nuw nsw i32 %conv6, 2
  %add162 = add nuw nsw i32 %add161, %mul160
  %add163 = add nuw nsw i32 %add162, %conv10
  %29 = lshr i32 %add163, 2
  %conv165 = trunc i32 %29 to i8
  %arrayidx166 = getelementptr inbounds i8, i8* %src, i32 71
  store i8 %conv165, i8* %arrayidx166, align 1, !tbaa !2
  %arrayidx167 = getelementptr inbounds i8, i8* %src, i32 38
  store i8 %conv165, i8* %arrayidx167, align 1, !tbaa !2
  %arrayidx168 = getelementptr inbounds i8, i8* %src, i32 5
  store i8 %conv165, i8* %arrayidx168, align 1, !tbaa !2
  %mul169 = shl nuw nsw i32 %conv10, 1
  %add170 = add nuw nsw i32 %conv8, 2
  %add171 = add nuw nsw i32 %add170, %mul169
  %add172 = add nuw nsw i32 %add171, %conv12
  %30 = lshr i32 %add172, 2
  %conv174 = trunc i32 %30 to i8
  %arrayidx175 = getelementptr inbounds i8, i8* %src, i32 39
  store i8 %conv174, i8* %arrayidx175, align 1, !tbaa !2
  %arrayidx176 = getelementptr inbounds i8, i8* %src, i32 6
  store i8 %conv174, i8* %arrayidx176, align 1, !tbaa !2
  %mul177 = shl nuw nsw i32 %conv12, 1
  %add178 = add nuw nsw i32 %conv10, 2
  %add179 = add nuw nsw i32 %add178, %mul177
  %add180 = add nuw nsw i32 %add179, %conv14
  %31 = lshr i32 %add180, 2
  %conv182 = trunc i32 %31 to i8
  %arrayidx183 = getelementptr inbounds i8, i8* %src, i32 7
  store i8 %conv182, i8* %arrayidx183, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_vr_c(i8* %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 16
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 17
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 18
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 19
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 20
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 21
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 22
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 23
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %edge, i32 14
  %8 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %8 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %edge, i32 13
  %9 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %edge, i32 12
  %10 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv20 = zext i8 %10 to i32
  %arrayidx21 = getelementptr inbounds i8, i8* %edge, i32 11
  %11 = load i8, i8* %arrayidx21, align 1, !tbaa !2
  %conv22 = zext i8 %11 to i32
  %arrayidx23 = getelementptr inbounds i8, i8* %edge, i32 10
  %12 = load i8, i8* %arrayidx23, align 1, !tbaa !2
  %conv24 = zext i8 %12 to i32
  %arrayidx25 = getelementptr inbounds i8, i8* %edge, i32 9
  %13 = load i8, i8* %arrayidx25, align 1, !tbaa !2
  %conv26 = zext i8 %13 to i32
  %arrayidx27 = getelementptr inbounds i8, i8* %edge, i32 8
  %14 = load i8, i8* %arrayidx27, align 1, !tbaa !2
  %conv28 = zext i8 %14 to i32
  %arrayidx31 = getelementptr inbounds i8, i8* %edge, i32 15
  %15 = load i8, i8* %arrayidx31, align 1, !tbaa !2
  %conv32 = zext i8 %15 to i32
  %mul = shl nuw nsw i32 %conv24, 1
  %add = add nuw nsw i32 %conv22, 2
  %add33 = add nuw nsw i32 %add, %conv26
  %add34 = add nuw nsw i32 %add33, %mul
  %16 = lshr i32 %add34, 2
  %conv35 = trunc i32 %16 to i8
  %arrayidx36 = getelementptr inbounds i8, i8* %src, i32 192
  store i8 %conv35, i8* %arrayidx36, align 1, !tbaa !2
  %mul37 = shl nuw nsw i32 %conv26, 1
  %add38 = add nuw nsw i32 %conv24, 2
  %add39 = add nuw nsw i32 %add38, %conv28
  %add40 = add nuw nsw i32 %add39, %mul37
  %17 = lshr i32 %add40, 2
  %conv42 = trunc i32 %17 to i8
  %arrayidx43 = getelementptr inbounds i8, i8* %src, i32 224
  store i8 %conv42, i8* %arrayidx43, align 1, !tbaa !2
  %mul44 = shl nuw nsw i32 %conv20, 1
  %add45 = add nuw nsw i32 %conv18, 2
  %add46 = add nuw nsw i32 %add45, %conv22
  %add47 = add nuw nsw i32 %add46, %mul44
  %18 = lshr i32 %add47, 2
  %conv49 = trunc i32 %18 to i8
  %arrayidx50 = getelementptr inbounds i8, i8* %src, i32 193
  store i8 %conv49, i8* %arrayidx50, align 1, !tbaa !2
  %arrayidx51 = getelementptr inbounds i8, i8* %src, i32 128
  store i8 %conv49, i8* %arrayidx51, align 1, !tbaa !2
  %mul52 = shl nuw nsw i32 %conv22, 1
  %add53 = add nuw nsw i32 %conv20, 2
  %add54 = add nuw nsw i32 %add53, %conv24
  %add55 = add nuw nsw i32 %add54, %mul52
  %19 = lshr i32 %add55, 2
  %conv57 = trunc i32 %19 to i8
  %arrayidx58 = getelementptr inbounds i8, i8* %src, i32 225
  store i8 %conv57, i8* %arrayidx58, align 1, !tbaa !2
  %arrayidx59 = getelementptr inbounds i8, i8* %src, i32 160
  store i8 %conv57, i8* %arrayidx59, align 1, !tbaa !2
  %mul60 = shl nuw nsw i32 %conv16, 1
  %add62 = add nuw nsw i32 %add45, %mul60
  %add63 = add nuw nsw i32 %add62, %conv32
  %20 = lshr i32 %add63, 2
  %conv65 = trunc i32 %20 to i8
  %arrayidx66 = getelementptr inbounds i8, i8* %src, i32 194
  store i8 %conv65, i8* %arrayidx66, align 1, !tbaa !2
  %arrayidx67 = getelementptr inbounds i8, i8* %src, i32 129
  store i8 %conv65, i8* %arrayidx67, align 1, !tbaa !2
  %arrayidx68 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv65, i8* %arrayidx68, align 1, !tbaa !2
  %mul69 = shl nuw nsw i32 %conv18, 1
  %add70 = add nuw nsw i32 %conv16, 2
  %add71 = add nuw nsw i32 %add70, %conv20
  %add72 = add nuw nsw i32 %add71, %mul69
  %21 = lshr i32 %add72, 2
  %conv74 = trunc i32 %21 to i8
  %arrayidx75 = getelementptr inbounds i8, i8* %src, i32 226
  store i8 %conv74, i8* %arrayidx75, align 1, !tbaa !2
  %arrayidx76 = getelementptr inbounds i8, i8* %src, i32 161
  store i8 %conv74, i8* %arrayidx76, align 1, !tbaa !2
  %arrayidx77 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv74, i8* %arrayidx77, align 1, !tbaa !2
  %mul78 = shl nuw nsw i32 %conv32, 1
  %add79 = add nuw nsw i32 %conv, 2
  %add80 = add nuw nsw i32 %add79, %conv16
  %add81 = add nuw nsw i32 %add80, %mul78
  %22 = lshr i32 %add81, 2
  %conv83 = trunc i32 %22 to i8
  %arrayidx84 = getelementptr inbounds i8, i8* %src, i32 227
  store i8 %conv83, i8* %arrayidx84, align 1, !tbaa !2
  %arrayidx85 = getelementptr inbounds i8, i8* %src, i32 162
  store i8 %conv83, i8* %arrayidx85, align 1, !tbaa !2
  %arrayidx86 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv83, i8* %arrayidx86, align 1, !tbaa !2
  %arrayidx87 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv83, i8* %arrayidx87, align 1, !tbaa !2
  %add88 = add nuw nsw i32 %conv, 1
  %add89 = add nuw nsw i32 %add88, %conv32
  %23 = lshr i32 %add89, 1
  %conv91 = trunc i32 %23 to i8
  %arrayidx92 = getelementptr inbounds i8, i8* %src, i32 195
  store i8 %conv91, i8* %arrayidx92, align 1, !tbaa !2
  %arrayidx93 = getelementptr inbounds i8, i8* %src, i32 130
  store i8 %conv91, i8* %arrayidx93, align 1, !tbaa !2
  %arrayidx94 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv91, i8* %arrayidx94, align 1, !tbaa !2
  store i8 %conv91, i8* %src, align 1, !tbaa !2
  %mul96 = shl nuw nsw i32 %conv, 1
  %add97 = add nuw nsw i32 %conv2, 2
  %add98 = add nuw nsw i32 %add97, %mul96
  %add99 = add nuw nsw i32 %add98, %conv32
  %24 = lshr i32 %add99, 2
  %conv101 = trunc i32 %24 to i8
  %arrayidx102 = getelementptr inbounds i8, i8* %src, i32 228
  store i8 %conv101, i8* %arrayidx102, align 1, !tbaa !2
  %arrayidx103 = getelementptr inbounds i8, i8* %src, i32 163
  store i8 %conv101, i8* %arrayidx103, align 1, !tbaa !2
  %arrayidx104 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv101, i8* %arrayidx104, align 1, !tbaa !2
  %arrayidx105 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv101, i8* %arrayidx105, align 1, !tbaa !2
  %add107 = add nuw nsw i32 %add88, %conv2
  %25 = lshr i32 %add107, 1
  %conv109 = trunc i32 %25 to i8
  %arrayidx110 = getelementptr inbounds i8, i8* %src, i32 196
  store i8 %conv109, i8* %arrayidx110, align 1, !tbaa !2
  %arrayidx111 = getelementptr inbounds i8, i8* %src, i32 131
  store i8 %conv109, i8* %arrayidx111, align 1, !tbaa !2
  %arrayidx112 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv109, i8* %arrayidx112, align 1, !tbaa !2
  %arrayidx113 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv109, i8* %arrayidx113, align 1, !tbaa !2
  %mul114 = shl nuw nsw i32 %conv2, 1
  %add116 = add nuw nsw i32 %add79, %mul114
  %add117 = add nuw nsw i32 %add116, %conv4
  %26 = lshr i32 %add117, 2
  %conv119 = trunc i32 %26 to i8
  %arrayidx120 = getelementptr inbounds i8, i8* %src, i32 229
  store i8 %conv119, i8* %arrayidx120, align 1, !tbaa !2
  %arrayidx121 = getelementptr inbounds i8, i8* %src, i32 164
  store i8 %conv119, i8* %arrayidx121, align 1, !tbaa !2
  %arrayidx122 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv119, i8* %arrayidx122, align 1, !tbaa !2
  %arrayidx123 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv119, i8* %arrayidx123, align 1, !tbaa !2
  %add124 = add nuw nsw i32 %conv2, 1
  %add125 = add nuw nsw i32 %add124, %conv4
  %27 = lshr i32 %add125, 1
  %conv127 = trunc i32 %27 to i8
  %arrayidx128 = getelementptr inbounds i8, i8* %src, i32 197
  store i8 %conv127, i8* %arrayidx128, align 1, !tbaa !2
  %arrayidx129 = getelementptr inbounds i8, i8* %src, i32 132
  store i8 %conv127, i8* %arrayidx129, align 1, !tbaa !2
  %arrayidx130 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv127, i8* %arrayidx130, align 1, !tbaa !2
  %arrayidx131 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv127, i8* %arrayidx131, align 1, !tbaa !2
  %mul132 = shl nuw nsw i32 %conv4, 1
  %add134 = add nuw nsw i32 %add97, %mul132
  %add135 = add nuw nsw i32 %add134, %conv6
  %28 = lshr i32 %add135, 2
  %conv137 = trunc i32 %28 to i8
  %arrayidx138 = getelementptr inbounds i8, i8* %src, i32 230
  store i8 %conv137, i8* %arrayidx138, align 1, !tbaa !2
  %arrayidx139 = getelementptr inbounds i8, i8* %src, i32 165
  store i8 %conv137, i8* %arrayidx139, align 1, !tbaa !2
  %arrayidx140 = getelementptr inbounds i8, i8* %src, i32 100
  store i8 %conv137, i8* %arrayidx140, align 1, !tbaa !2
  %arrayidx141 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv137, i8* %arrayidx141, align 1, !tbaa !2
  %add142 = add nuw nsw i32 %conv4, 1
  %add143 = add nuw nsw i32 %add142, %conv6
  %29 = lshr i32 %add143, 1
  %conv145 = trunc i32 %29 to i8
  %arrayidx146 = getelementptr inbounds i8, i8* %src, i32 198
  store i8 %conv145, i8* %arrayidx146, align 1, !tbaa !2
  %arrayidx147 = getelementptr inbounds i8, i8* %src, i32 133
  store i8 %conv145, i8* %arrayidx147, align 1, !tbaa !2
  %arrayidx148 = getelementptr inbounds i8, i8* %src, i32 68
  store i8 %conv145, i8* %arrayidx148, align 1, !tbaa !2
  %arrayidx149 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv145, i8* %arrayidx149, align 1, !tbaa !2
  %mul150 = shl nuw nsw i32 %conv6, 1
  %add151 = add nuw nsw i32 %conv4, 2
  %add152 = add nuw nsw i32 %add151, %mul150
  %add153 = add nuw nsw i32 %add152, %conv8
  %30 = lshr i32 %add153, 2
  %conv155 = trunc i32 %30 to i8
  %arrayidx156 = getelementptr inbounds i8, i8* %src, i32 231
  store i8 %conv155, i8* %arrayidx156, align 1, !tbaa !2
  %arrayidx157 = getelementptr inbounds i8, i8* %src, i32 166
  store i8 %conv155, i8* %arrayidx157, align 1, !tbaa !2
  %arrayidx158 = getelementptr inbounds i8, i8* %src, i32 101
  store i8 %conv155, i8* %arrayidx158, align 1, !tbaa !2
  %arrayidx159 = getelementptr inbounds i8, i8* %src, i32 36
  store i8 %conv155, i8* %arrayidx159, align 1, !tbaa !2
  %add160 = add nuw nsw i32 %conv6, 1
  %add161 = add nuw nsw i32 %add160, %conv8
  %31 = lshr i32 %add161, 1
  %conv163 = trunc i32 %31 to i8
  %arrayidx164 = getelementptr inbounds i8, i8* %src, i32 199
  store i8 %conv163, i8* %arrayidx164, align 1, !tbaa !2
  %arrayidx165 = getelementptr inbounds i8, i8* %src, i32 134
  store i8 %conv163, i8* %arrayidx165, align 1, !tbaa !2
  %arrayidx166 = getelementptr inbounds i8, i8* %src, i32 69
  store i8 %conv163, i8* %arrayidx166, align 1, !tbaa !2
  %arrayidx167 = getelementptr inbounds i8, i8* %src, i32 4
  store i8 %conv163, i8* %arrayidx167, align 1, !tbaa !2
  %mul168 = shl nuw nsw i32 %conv8, 1
  %add169 = add nuw nsw i32 %conv6, 2
  %add170 = add nuw nsw i32 %add169, %mul168
  %add171 = add nuw nsw i32 %add170, %conv10
  %32 = lshr i32 %add171, 2
  %conv173 = trunc i32 %32 to i8
  %arrayidx174 = getelementptr inbounds i8, i8* %src, i32 167
  store i8 %conv173, i8* %arrayidx174, align 1, !tbaa !2
  %arrayidx175 = getelementptr inbounds i8, i8* %src, i32 102
  store i8 %conv173, i8* %arrayidx175, align 1, !tbaa !2
  %arrayidx176 = getelementptr inbounds i8, i8* %src, i32 37
  store i8 %conv173, i8* %arrayidx176, align 1, !tbaa !2
  %add177 = add nuw nsw i32 %conv8, 1
  %add178 = add nuw nsw i32 %add177, %conv10
  %33 = lshr i32 %add178, 1
  %conv180 = trunc i32 %33 to i8
  %arrayidx181 = getelementptr inbounds i8, i8* %src, i32 135
  store i8 %conv180, i8* %arrayidx181, align 1, !tbaa !2
  %arrayidx182 = getelementptr inbounds i8, i8* %src, i32 70
  store i8 %conv180, i8* %arrayidx182, align 1, !tbaa !2
  %arrayidx183 = getelementptr inbounds i8, i8* %src, i32 5
  store i8 %conv180, i8* %arrayidx183, align 1, !tbaa !2
  %mul184 = shl nuw nsw i32 %conv10, 1
  %add185 = add nuw nsw i32 %conv8, 2
  %add186 = add nuw nsw i32 %add185, %mul184
  %add187 = add nuw nsw i32 %add186, %conv12
  %34 = lshr i32 %add187, 2
  %conv189 = trunc i32 %34 to i8
  %arrayidx190 = getelementptr inbounds i8, i8* %src, i32 103
  store i8 %conv189, i8* %arrayidx190, align 1, !tbaa !2
  %arrayidx191 = getelementptr inbounds i8, i8* %src, i32 38
  store i8 %conv189, i8* %arrayidx191, align 1, !tbaa !2
  %add192 = add nuw nsw i32 %conv10, 1
  %add193 = add nuw nsw i32 %add192, %conv12
  %35 = lshr i32 %add193, 1
  %conv195 = trunc i32 %35 to i8
  %arrayidx196 = getelementptr inbounds i8, i8* %src, i32 71
  store i8 %conv195, i8* %arrayidx196, align 1, !tbaa !2
  %arrayidx197 = getelementptr inbounds i8, i8* %src, i32 6
  store i8 %conv195, i8* %arrayidx197, align 1, !tbaa !2
  %mul198 = shl nuw nsw i32 %conv12, 1
  %add199 = add nuw nsw i32 %conv10, 2
  %add200 = add nuw nsw i32 %add199, %mul198
  %add201 = add nuw nsw i32 %add200, %conv14
  %36 = lshr i32 %add201, 2
  %conv203 = trunc i32 %36 to i8
  %arrayidx204 = getelementptr inbounds i8, i8* %src, i32 39
  store i8 %conv203, i8* %arrayidx204, align 1, !tbaa !2
  %add205 = add nuw nsw i32 %conv12, 1
  %add206 = add nuw nsw i32 %add205, %conv14
  %37 = lshr i32 %add206, 1
  %conv208 = trunc i32 %37 to i8
  %arrayidx209 = getelementptr inbounds i8, i8* %src, i32 7
  store i8 %conv208, i8* %arrayidx209, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_hd_c(i8* nocapture %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 16
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 17
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 18
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 19
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 20
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 21
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 22
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %edge, i32 14
  %7 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %7 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %edge, i32 13
  %8 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %8 to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %edge, i32 12
  %9 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv20 = zext i8 %9 to i32
  %arrayidx21 = getelementptr inbounds i8, i8* %edge, i32 11
  %10 = load i8, i8* %arrayidx21, align 1, !tbaa !2
  %conv22 = zext i8 %10 to i32
  %arrayidx23 = getelementptr inbounds i8, i8* %edge, i32 10
  %11 = load i8, i8* %arrayidx23, align 1, !tbaa !2
  %conv24 = zext i8 %11 to i32
  %arrayidx25 = getelementptr inbounds i8, i8* %edge, i32 9
  %12 = load i8, i8* %arrayidx25, align 1, !tbaa !2
  %conv26 = zext i8 %12 to i32
  %arrayidx27 = getelementptr inbounds i8, i8* %edge, i32 8
  %13 = load i8, i8* %arrayidx27, align 1, !tbaa !2
  %conv28 = zext i8 %13 to i32
  %arrayidx29 = getelementptr inbounds i8, i8* %edge, i32 7
  %14 = load i8, i8* %arrayidx29, align 1, !tbaa !2
  %conv30 = zext i8 %14 to i32
  %arrayidx31 = getelementptr inbounds i8, i8* %edge, i32 15
  %15 = load i8, i8* %arrayidx31, align 1, !tbaa !2
  %conv32 = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv28, 1
  %add33 = add nuw nsw i32 %add, %conv30
  %16 = lshr i32 %add33, 1
  %mul = shl nuw nsw i32 %conv28, 1
  %add34 = add nuw nsw i32 %conv26, 2
  %add35 = add nuw nsw i32 %add34, %mul
  %add36 = add nuw nsw i32 %add35, %conv30
  %17 = lshr i32 %add36, 2
  %shl.i = shl nuw nsw i32 %17, 8
  %add.i = add nuw nsw i32 %shl.i, %16
  %add38 = add nuw nsw i32 %conv26, 1
  %add39 = add nuw nsw i32 %add38, %conv28
  %18 = lshr i32 %add39, 1
  %mul41 = shl nuw nsw i32 %conv26, 1
  %add42 = add nuw nsw i32 %conv24, 2
  %add43 = add nuw nsw i32 %add42, %mul41
  %add44 = add nuw nsw i32 %add43, %conv28
  %19 = lshr i32 %add44, 2
  %shl.i323 = shl nuw nsw i32 %19, 8
  %add.i324 = add nuw nsw i32 %shl.i323, %18
  %add47 = add nuw nsw i32 %conv24, 1
  %add48 = add nuw nsw i32 %add47, %conv26
  %20 = lshr i32 %add48, 1
  %mul50 = shl nuw nsw i32 %conv24, 1
  %add51 = add nuw nsw i32 %conv22, 2
  %add52 = add nuw nsw i32 %add51, %mul50
  %add53 = add nuw nsw i32 %add52, %conv26
  %21 = lshr i32 %add53, 2
  %shl.i321 = shl nuw nsw i32 %21, 8
  %add.i322 = add nuw nsw i32 %shl.i321, %20
  %add56 = add nuw nsw i32 %conv22, 1
  %add57 = add nuw nsw i32 %add56, %conv24
  %22 = lshr i32 %add57, 1
  %mul59 = shl nuw nsw i32 %conv22, 1
  %add60 = add nuw nsw i32 %conv20, 2
  %add61 = add nuw nsw i32 %add60, %mul59
  %add62 = add nuw nsw i32 %add61, %conv24
  %23 = lshr i32 %add62, 2
  %shl.i319 = shl nuw nsw i32 %23, 8
  %add.i320 = add nuw nsw i32 %shl.i319, %22
  %add65 = add nuw nsw i32 %conv20, 1
  %add66 = add nuw nsw i32 %add65, %conv22
  %24 = lshr i32 %add66, 1
  %mul68 = shl nuw nsw i32 %conv20, 1
  %add69 = add nuw nsw i32 %conv18, 2
  %add70 = add nuw nsw i32 %add69, %mul68
  %add71 = add nuw nsw i32 %add70, %conv22
  %25 = lshr i32 %add71, 2
  %shl.i317 = shl nuw nsw i32 %25, 8
  %add.i318 = add nuw nsw i32 %shl.i317, %24
  %add74 = add nuw nsw i32 %conv18, 1
  %add75 = add nuw nsw i32 %add74, %conv20
  %26 = lshr i32 %add75, 1
  %mul77 = shl nuw nsw i32 %conv18, 1
  %add78 = add nuw nsw i32 %conv16, 2
  %add79 = add nuw nsw i32 %add78, %mul77
  %add80 = add nuw nsw i32 %add79, %conv20
  %27 = lshr i32 %add80, 2
  %shl.i315 = shl nuw nsw i32 %27, 8
  %add.i316 = add nuw nsw i32 %shl.i315, %26
  %add83 = add nuw nsw i32 %conv16, 1
  %add84 = add nuw nsw i32 %add83, %conv18
  %28 = lshr i32 %add84, 1
  %mul86 = shl nuw nsw i32 %conv16, 1
  %add88 = add nuw nsw i32 %add69, %mul86
  %add89 = add nuw nsw i32 %add88, %conv32
  %29 = lshr i32 %add89, 2
  %shl.i313 = shl nuw nsw i32 %29, 8
  %add.i314 = add nuw nsw i32 %shl.i313, %28
  %add93 = add nuw nsw i32 %add83, %conv32
  %30 = lshr i32 %add93, 1
  %mul95 = shl nuw nsw i32 %conv32, 1
  %add96 = add nuw nsw i32 %conv, 2
  %add97 = add nuw nsw i32 %add96, %conv16
  %add98 = add nuw nsw i32 %add97, %mul95
  %31 = lshr i32 %add98, 2
  %shl.i311 = shl nuw nsw i32 %31, 8
  %add.i312 = add nuw nsw i32 %shl.i311, %30
  %mul101 = shl nuw nsw i32 %conv, 1
  %add102 = add nuw nsw i32 %conv2, 2
  %add103 = add nuw nsw i32 %add102, %mul101
  %add104 = add nuw nsw i32 %add103, %conv32
  %32 = lshr i32 %add104, 2
  %mul106 = shl nuw nsw i32 %conv2, 1
  %add108 = add nuw nsw i32 %add96, %conv4
  %add109 = add nuw nsw i32 %add108, %mul106
  %33 = lshr i32 %add109, 2
  %shl.i309 = shl nuw nsw i32 %33, 8
  %add.i310 = add nuw nsw i32 %32, %shl.i309
  %mul112 = shl nuw nsw i32 %conv4, 1
  %add114 = add nuw nsw i32 %add102, %conv6
  %add115 = add nuw nsw i32 %add114, %mul112
  %34 = lshr i32 %add115, 2
  %mul117 = shl nuw nsw i32 %conv6, 1
  %add118 = add nuw nsw i32 %conv4, 2
  %add119 = add nuw nsw i32 %add118, %conv8
  %add120 = add nuw nsw i32 %add119, %mul117
  %35 = lshr i32 %add120, 2
  %shl.i307 = shl nuw nsw i32 %35, 8
  %add.i308 = add nuw nsw i32 %shl.i307, %34
  %mul123 = shl nuw nsw i32 %conv8, 1
  %add124 = add nuw nsw i32 %conv6, 2
  %add125 = add nuw nsw i32 %add124, %conv10
  %add126 = add nuw nsw i32 %add125, %mul123
  %36 = lshr i32 %add126, 2
  %mul128 = shl nuw nsw i32 %conv10, 1
  %add129 = add nuw nsw i32 %conv8, 2
  %add130 = add nuw nsw i32 %add129, %conv12
  %add131 = add nuw nsw i32 %add130, %mul128
  %37 = lshr i32 %add131, 2
  %shl.i305 = shl nuw nsw i32 %37, 8
  %add.i306 = add nuw nsw i32 %shl.i305, %36
  %shl.i303 = shl nuw i32 %add.i324, 16
  %add.i304 = add nuw i32 %add.i, %shl.i303
  %arrayidx135 = getelementptr inbounds i8, i8* %src, i32 224
  %i = bitcast i8* %arrayidx135 to i32*
  store i32 %add.i304, i32* %i, align 4, !tbaa !2
  %shl.i301 = shl nuw i32 %add.i322, 16
  %add.i302 = add nuw i32 %shl.i301, %add.i324
  %arrayidx137 = getelementptr inbounds i8, i8* %src, i32 192
  %i138 = bitcast i8* %arrayidx137 to i32*
  store i32 %add.i302, i32* %i138, align 4, !tbaa !2
  %shl.i299 = shl nuw i32 %add.i320, 16
  %add.i300 = add nuw i32 %shl.i299, %add.i322
  %arrayidx140 = getelementptr inbounds i8, i8* %src, i32 160
  %i141 = bitcast i8* %arrayidx140 to i32*
  store i32 %add.i300, i32* %i141, align 4, !tbaa !2
  %arrayidx142 = getelementptr inbounds i8, i8* %src, i32 228
  %i143 = bitcast i8* %arrayidx142 to i32*
  store i32 %add.i300, i32* %i143, align 4, !tbaa !2
  %shl.i297 = shl nuw i32 %add.i318, 16
  %add.i298 = add nuw i32 %shl.i297, %add.i320
  %arrayidx145 = getelementptr inbounds i8, i8* %src, i32 128
  %i146 = bitcast i8* %arrayidx145 to i32*
  store i32 %add.i298, i32* %i146, align 4, !tbaa !2
  %arrayidx147 = getelementptr inbounds i8, i8* %src, i32 196
  %i148 = bitcast i8* %arrayidx147 to i32*
  store i32 %add.i298, i32* %i148, align 4, !tbaa !2
  %shl.i295 = shl nuw i32 %add.i316, 16
  %add.i296 = add nuw i32 %shl.i295, %add.i318
  %arrayidx150 = getelementptr inbounds i8, i8* %src, i32 96
  %i151 = bitcast i8* %arrayidx150 to i32*
  store i32 %add.i296, i32* %i151, align 4, !tbaa !2
  %arrayidx152 = getelementptr inbounds i8, i8* %src, i32 164
  %i153 = bitcast i8* %arrayidx152 to i32*
  store i32 %add.i296, i32* %i153, align 4, !tbaa !2
  %shl.i293 = shl nuw i32 %add.i314, 16
  %add.i294 = add nuw i32 %shl.i293, %add.i316
  %arrayidx155 = getelementptr inbounds i8, i8* %src, i32 64
  %i156 = bitcast i8* %arrayidx155 to i32*
  store i32 %add.i294, i32* %i156, align 4, !tbaa !2
  %arrayidx157 = getelementptr inbounds i8, i8* %src, i32 132
  %i158 = bitcast i8* %arrayidx157 to i32*
  store i32 %add.i294, i32* %i158, align 4, !tbaa !2
  %shl.i291 = shl nuw i32 %add.i312, 16
  %add.i292 = add nuw i32 %shl.i291, %add.i314
  %arrayidx160 = getelementptr inbounds i8, i8* %src, i32 32
  %i161 = bitcast i8* %arrayidx160 to i32*
  store i32 %add.i292, i32* %i161, align 4, !tbaa !2
  %arrayidx162 = getelementptr inbounds i8, i8* %src, i32 100
  %i163 = bitcast i8* %arrayidx162 to i32*
  store i32 %add.i292, i32* %i163, align 4, !tbaa !2
  %shl.i289 = shl nuw i32 %add.i310, 16
  %add.i290 = add nuw i32 %add.i312, %shl.i289
  %i166 = bitcast i8* %src to i32*
  store i32 %add.i290, i32* %i166, align 4, !tbaa !2
  %arrayidx167 = getelementptr inbounds i8, i8* %src, i32 68
  %i168 = bitcast i8* %arrayidx167 to i32*
  store i32 %add.i290, i32* %i168, align 4, !tbaa !2
  %shl.i287 = shl nuw i32 %add.i308, 16
  %add.i288 = add nuw i32 %add.i310, %shl.i287
  %arrayidx170 = getelementptr inbounds i8, i8* %src, i32 36
  %i171 = bitcast i8* %arrayidx170 to i32*
  store i32 %add.i288, i32* %i171, align 4, !tbaa !2
  %shl.i285 = shl nuw i32 %add.i306, 16
  %add.i286 = add nuw i32 %shl.i285, %add.i308
  %arrayidx173 = getelementptr inbounds i8, i8* %src, i32 4
  %i174 = bitcast i8* %arrayidx173 to i32*
  store i32 %add.i286, i32* %i174, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_vl_c(i8* %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 16
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 17
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 18
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 19
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 20
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 21
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 22
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 23
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %edge, i32 24
  %8 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %8 to i32
  %arrayidx17 = getelementptr inbounds i8, i8* %edge, i32 25
  %9 = load i8, i8* %arrayidx17, align 1, !tbaa !2
  %conv18 = zext i8 %9 to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %edge, i32 26
  %10 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv20 = zext i8 %10 to i32
  %arrayidx21 = getelementptr inbounds i8, i8* %edge, i32 27
  %11 = load i8, i8* %arrayidx21, align 1, !tbaa !2
  %conv22 = zext i8 %11 to i32
  %arrayidx23 = getelementptr inbounds i8, i8* %edge, i32 28
  %12 = load i8, i8* %arrayidx23, align 1, !tbaa !2
  %conv24 = zext i8 %12 to i32
  %add = add nuw nsw i32 %conv2, 1
  %add31 = add nuw nsw i32 %add, %conv
  %13 = lshr i32 %add31, 1
  %conv32 = trunc i32 %13 to i8
  store i8 %conv32, i8* %src, align 1, !tbaa !2
  %mul = shl nuw nsw i32 %conv2, 1
  %add34 = add nuw nsw i32 %conv4, 2
  %add35 = add nuw nsw i32 %add34, %conv
  %add36 = add nuw nsw i32 %add35, %mul
  %14 = lshr i32 %add36, 2
  %conv38 = trunc i32 %14 to i8
  %arrayidx39 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv38, i8* %arrayidx39, align 1, !tbaa !2
  %add41 = add nuw nsw i32 %add, %conv4
  %15 = lshr i32 %add41, 1
  %conv43 = trunc i32 %15 to i8
  %arrayidx44 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv43, i8* %arrayidx44, align 1, !tbaa !2
  %arrayidx45 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv43, i8* %arrayidx45, align 1, !tbaa !2
  %mul46 = shl nuw nsw i32 %conv4, 1
  %add47 = add nuw nsw i32 %conv6, 2
  %add48 = add nuw nsw i32 %add47, %conv2
  %add49 = add nuw nsw i32 %add48, %mul46
  %16 = lshr i32 %add49, 2
  %conv51 = trunc i32 %16 to i8
  %arrayidx52 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv51, i8* %arrayidx52, align 1, !tbaa !2
  %arrayidx53 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv51, i8* %arrayidx53, align 1, !tbaa !2
  %add54 = add nuw nsw i32 %conv4, 1
  %add55 = add nuw nsw i32 %add54, %conv6
  %17 = lshr i32 %add55, 1
  %conv57 = trunc i32 %17 to i8
  %arrayidx58 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv57, i8* %arrayidx58, align 1, !tbaa !2
  %arrayidx59 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv57, i8* %arrayidx59, align 1, !tbaa !2
  %arrayidx60 = getelementptr inbounds i8, i8* %src, i32 128
  store i8 %conv57, i8* %arrayidx60, align 1, !tbaa !2
  %mul61 = shl nuw nsw i32 %conv6, 1
  %add63 = add nuw nsw i32 %add34, %mul61
  %add64 = add nuw nsw i32 %add63, %conv8
  %18 = lshr i32 %add64, 2
  %conv66 = trunc i32 %18 to i8
  %arrayidx67 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv66, i8* %arrayidx67, align 1, !tbaa !2
  %arrayidx68 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv66, i8* %arrayidx68, align 1, !tbaa !2
  %arrayidx69 = getelementptr inbounds i8, i8* %src, i32 160
  store i8 %conv66, i8* %arrayidx69, align 1, !tbaa !2
  %add70 = add nuw nsw i32 %conv6, 1
  %add71 = add nuw nsw i32 %add70, %conv8
  %19 = lshr i32 %add71, 1
  %conv73 = trunc i32 %19 to i8
  %arrayidx74 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv73, i8* %arrayidx74, align 1, !tbaa !2
  %arrayidx75 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv73, i8* %arrayidx75, align 1, !tbaa !2
  %arrayidx76 = getelementptr inbounds i8, i8* %src, i32 129
  store i8 %conv73, i8* %arrayidx76, align 1, !tbaa !2
  %arrayidx77 = getelementptr inbounds i8, i8* %src, i32 192
  store i8 %conv73, i8* %arrayidx77, align 1, !tbaa !2
  %mul78 = shl nuw nsw i32 %conv8, 1
  %add80 = add nuw nsw i32 %add47, %mul78
  %add81 = add nuw nsw i32 %add80, %conv10
  %20 = lshr i32 %add81, 2
  %conv83 = trunc i32 %20 to i8
  %arrayidx84 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv83, i8* %arrayidx84, align 1, !tbaa !2
  %arrayidx85 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv83, i8* %arrayidx85, align 1, !tbaa !2
  %arrayidx86 = getelementptr inbounds i8, i8* %src, i32 161
  store i8 %conv83, i8* %arrayidx86, align 1, !tbaa !2
  %arrayidx87 = getelementptr inbounds i8, i8* %src, i32 224
  store i8 %conv83, i8* %arrayidx87, align 1, !tbaa !2
  %add88 = add nuw nsw i32 %conv8, 1
  %add89 = add nuw nsw i32 %add88, %conv10
  %21 = lshr i32 %add89, 1
  %conv91 = trunc i32 %21 to i8
  %arrayidx92 = getelementptr inbounds i8, i8* %src, i32 4
  store i8 %conv91, i8* %arrayidx92, align 1, !tbaa !2
  %arrayidx93 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv91, i8* %arrayidx93, align 1, !tbaa !2
  %arrayidx94 = getelementptr inbounds i8, i8* %src, i32 130
  store i8 %conv91, i8* %arrayidx94, align 1, !tbaa !2
  %arrayidx95 = getelementptr inbounds i8, i8* %src, i32 193
  store i8 %conv91, i8* %arrayidx95, align 1, !tbaa !2
  %mul96 = shl nuw nsw i32 %conv10, 1
  %add97 = add nuw nsw i32 %conv8, 2
  %add98 = add nuw nsw i32 %add97, %mul96
  %add99 = add nuw nsw i32 %add98, %conv12
  %22 = lshr i32 %add99, 2
  %conv101 = trunc i32 %22 to i8
  %arrayidx102 = getelementptr inbounds i8, i8* %src, i32 36
  store i8 %conv101, i8* %arrayidx102, align 1, !tbaa !2
  %arrayidx103 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv101, i8* %arrayidx103, align 1, !tbaa !2
  %arrayidx104 = getelementptr inbounds i8, i8* %src, i32 162
  store i8 %conv101, i8* %arrayidx104, align 1, !tbaa !2
  %arrayidx105 = getelementptr inbounds i8, i8* %src, i32 225
  store i8 %conv101, i8* %arrayidx105, align 1, !tbaa !2
  %add106 = add nuw nsw i32 %conv10, 1
  %add107 = add nuw nsw i32 %add106, %conv12
  %23 = lshr i32 %add107, 1
  %conv109 = trunc i32 %23 to i8
  %arrayidx110 = getelementptr inbounds i8, i8* %src, i32 5
  store i8 %conv109, i8* %arrayidx110, align 1, !tbaa !2
  %arrayidx111 = getelementptr inbounds i8, i8* %src, i32 68
  store i8 %conv109, i8* %arrayidx111, align 1, !tbaa !2
  %arrayidx112 = getelementptr inbounds i8, i8* %src, i32 131
  store i8 %conv109, i8* %arrayidx112, align 1, !tbaa !2
  %arrayidx113 = getelementptr inbounds i8, i8* %src, i32 194
  store i8 %conv109, i8* %arrayidx113, align 1, !tbaa !2
  %mul114 = shl nuw nsw i32 %conv12, 1
  %add115 = add nuw nsw i32 %conv10, 2
  %add116 = add nuw nsw i32 %add115, %mul114
  %add117 = add nuw nsw i32 %add116, %conv14
  %24 = lshr i32 %add117, 2
  %conv119 = trunc i32 %24 to i8
  %arrayidx120 = getelementptr inbounds i8, i8* %src, i32 37
  store i8 %conv119, i8* %arrayidx120, align 1, !tbaa !2
  %arrayidx121 = getelementptr inbounds i8, i8* %src, i32 100
  store i8 %conv119, i8* %arrayidx121, align 1, !tbaa !2
  %arrayidx122 = getelementptr inbounds i8, i8* %src, i32 163
  store i8 %conv119, i8* %arrayidx122, align 1, !tbaa !2
  %arrayidx123 = getelementptr inbounds i8, i8* %src, i32 226
  store i8 %conv119, i8* %arrayidx123, align 1, !tbaa !2
  %add124 = add nuw nsw i32 %conv12, 1
  %add125 = add nuw nsw i32 %add124, %conv14
  %25 = lshr i32 %add125, 1
  %conv127 = trunc i32 %25 to i8
  %arrayidx128 = getelementptr inbounds i8, i8* %src, i32 6
  store i8 %conv127, i8* %arrayidx128, align 1, !tbaa !2
  %arrayidx129 = getelementptr inbounds i8, i8* %src, i32 69
  store i8 %conv127, i8* %arrayidx129, align 1, !tbaa !2
  %arrayidx130 = getelementptr inbounds i8, i8* %src, i32 132
  store i8 %conv127, i8* %arrayidx130, align 1, !tbaa !2
  %arrayidx131 = getelementptr inbounds i8, i8* %src, i32 195
  store i8 %conv127, i8* %arrayidx131, align 1, !tbaa !2
  %mul132 = shl nuw nsw i32 %conv14, 1
  %add133 = add nuw nsw i32 %conv12, 2
  %add134 = add nuw nsw i32 %add133, %mul132
  %add135 = add nuw nsw i32 %add134, %conv16
  %26 = lshr i32 %add135, 2
  %conv137 = trunc i32 %26 to i8
  %arrayidx138 = getelementptr inbounds i8, i8* %src, i32 38
  store i8 %conv137, i8* %arrayidx138, align 1, !tbaa !2
  %arrayidx139 = getelementptr inbounds i8, i8* %src, i32 101
  store i8 %conv137, i8* %arrayidx139, align 1, !tbaa !2
  %arrayidx140 = getelementptr inbounds i8, i8* %src, i32 164
  store i8 %conv137, i8* %arrayidx140, align 1, !tbaa !2
  %arrayidx141 = getelementptr inbounds i8, i8* %src, i32 227
  store i8 %conv137, i8* %arrayidx141, align 1, !tbaa !2
  %add142 = add nuw nsw i32 %conv14, 1
  %add143 = add nuw nsw i32 %add142, %conv16
  %27 = lshr i32 %add143, 1
  %conv145 = trunc i32 %27 to i8
  %arrayidx146 = getelementptr inbounds i8, i8* %src, i32 7
  store i8 %conv145, i8* %arrayidx146, align 1, !tbaa !2
  %arrayidx147 = getelementptr inbounds i8, i8* %src, i32 70
  store i8 %conv145, i8* %arrayidx147, align 1, !tbaa !2
  %arrayidx148 = getelementptr inbounds i8, i8* %src, i32 133
  store i8 %conv145, i8* %arrayidx148, align 1, !tbaa !2
  %arrayidx149 = getelementptr inbounds i8, i8* %src, i32 196
  store i8 %conv145, i8* %arrayidx149, align 1, !tbaa !2
  %mul150 = shl nuw nsw i32 %conv16, 1
  %add151 = add nuw nsw i32 %conv14, 2
  %add152 = add nuw nsw i32 %add151, %mul150
  %add153 = add nuw nsw i32 %add152, %conv18
  %28 = lshr i32 %add153, 2
  %conv155 = trunc i32 %28 to i8
  %arrayidx156 = getelementptr inbounds i8, i8* %src, i32 39
  store i8 %conv155, i8* %arrayidx156, align 1, !tbaa !2
  %arrayidx157 = getelementptr inbounds i8, i8* %src, i32 102
  store i8 %conv155, i8* %arrayidx157, align 1, !tbaa !2
  %arrayidx158 = getelementptr inbounds i8, i8* %src, i32 165
  store i8 %conv155, i8* %arrayidx158, align 1, !tbaa !2
  %arrayidx159 = getelementptr inbounds i8, i8* %src, i32 228
  store i8 %conv155, i8* %arrayidx159, align 1, !tbaa !2
  %add160 = add nuw nsw i32 %conv16, 1
  %add161 = add nuw nsw i32 %add160, %conv18
  %29 = lshr i32 %add161, 1
  %conv163 = trunc i32 %29 to i8
  %arrayidx164 = getelementptr inbounds i8, i8* %src, i32 71
  store i8 %conv163, i8* %arrayidx164, align 1, !tbaa !2
  %arrayidx165 = getelementptr inbounds i8, i8* %src, i32 134
  store i8 %conv163, i8* %arrayidx165, align 1, !tbaa !2
  %arrayidx166 = getelementptr inbounds i8, i8* %src, i32 197
  store i8 %conv163, i8* %arrayidx166, align 1, !tbaa !2
  %mul167 = shl nuw nsw i32 %conv18, 1
  %add168 = add nuw nsw i32 %conv16, 2
  %add169 = add nuw nsw i32 %add168, %mul167
  %add170 = add nuw nsw i32 %add169, %conv20
  %30 = lshr i32 %add170, 2
  %conv172 = trunc i32 %30 to i8
  %arrayidx173 = getelementptr inbounds i8, i8* %src, i32 103
  store i8 %conv172, i8* %arrayidx173, align 1, !tbaa !2
  %arrayidx174 = getelementptr inbounds i8, i8* %src, i32 166
  store i8 %conv172, i8* %arrayidx174, align 1, !tbaa !2
  %arrayidx175 = getelementptr inbounds i8, i8* %src, i32 229
  store i8 %conv172, i8* %arrayidx175, align 1, !tbaa !2
  %add176 = add nuw nsw i32 %conv18, 1
  %add177 = add nuw nsw i32 %add176, %conv20
  %31 = lshr i32 %add177, 1
  %conv179 = trunc i32 %31 to i8
  %arrayidx180 = getelementptr inbounds i8, i8* %src, i32 135
  store i8 %conv179, i8* %arrayidx180, align 1, !tbaa !2
  %arrayidx181 = getelementptr inbounds i8, i8* %src, i32 198
  store i8 %conv179, i8* %arrayidx181, align 1, !tbaa !2
  %mul182 = shl nuw nsw i32 %conv20, 1
  %add183 = add nuw nsw i32 %conv18, 2
  %add184 = add nuw nsw i32 %add183, %mul182
  %add185 = add nuw nsw i32 %add184, %conv22
  %32 = lshr i32 %add185, 2
  %conv187 = trunc i32 %32 to i8
  %arrayidx188 = getelementptr inbounds i8, i8* %src, i32 167
  store i8 %conv187, i8* %arrayidx188, align 1, !tbaa !2
  %arrayidx189 = getelementptr inbounds i8, i8* %src, i32 230
  store i8 %conv187, i8* %arrayidx189, align 1, !tbaa !2
  %add190 = add nuw nsw i32 %conv20, 1
  %add191 = add nuw nsw i32 %add190, %conv22
  %33 = lshr i32 %add191, 1
  %conv193 = trunc i32 %33 to i8
  %arrayidx194 = getelementptr inbounds i8, i8* %src, i32 199
  store i8 %conv193, i8* %arrayidx194, align 1, !tbaa !2
  %mul195 = shl nuw nsw i32 %conv22, 1
  %add196 = add nuw nsw i32 %conv20, 2
  %add197 = add nuw nsw i32 %add196, %mul195
  %add198 = add nuw nsw i32 %add197, %conv24
  %34 = lshr i32 %add198, 2
  %conv200 = trunc i32 %34 to i8
  %arrayidx201 = getelementptr inbounds i8, i8* %src, i32 231
  store i8 %conv200, i8* %arrayidx201, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_hu_c(i8* nocapture %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 14
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 13
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 12
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 11
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 10
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 9
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 8
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 7
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv2, 1
  %add15 = add nuw nsw i32 %add, %conv
  %8 = lshr i32 %add15, 1
  %mul = shl nuw nsw i32 %conv2, 1
  %add16 = add nuw nsw i32 %conv4, 2
  %add17 = add nuw nsw i32 %add16, %conv
  %add18 = add nuw nsw i32 %add17, %mul
  %9 = lshr i32 %add18, 2
  %shl.i = shl nuw nsw i32 %9, 8
  %add.i = add nuw nsw i32 %shl.i, %8
  %add21 = add nuw nsw i32 %add, %conv4
  %10 = lshr i32 %add21, 1
  %mul23 = shl nuw nsw i32 %conv4, 1
  %add24 = add nuw nsw i32 %conv6, 2
  %add25 = add nuw nsw i32 %add24, %conv2
  %add26 = add nuw nsw i32 %add25, %mul23
  %11 = lshr i32 %add26, 2
  %shl.i217 = shl nuw nsw i32 %11, 8
  %add.i218 = add nuw nsw i32 %shl.i217, %10
  %add29 = add nuw nsw i32 %conv4, 1
  %add30 = add nuw nsw i32 %add29, %conv6
  %12 = lshr i32 %add30, 1
  %mul32 = shl nuw nsw i32 %conv6, 1
  %add34 = add nuw nsw i32 %add16, %mul32
  %add35 = add nuw nsw i32 %add34, %conv8
  %13 = lshr i32 %add35, 2
  %shl.i215 = shl nuw nsw i32 %13, 8
  %add.i216 = add nuw nsw i32 %shl.i215, %12
  %add38 = add nuw nsw i32 %conv6, 1
  %add39 = add nuw nsw i32 %add38, %conv8
  %14 = lshr i32 %add39, 1
  %mul41 = shl nuw nsw i32 %conv8, 1
  %add43 = add nuw nsw i32 %add24, %mul41
  %add44 = add nuw nsw i32 %add43, %conv10
  %15 = lshr i32 %add44, 2
  %shl.i213 = shl nuw nsw i32 %15, 8
  %add.i214 = add nuw nsw i32 %shl.i213, %14
  %add47 = add nuw nsw i32 %conv8, 1
  %add48 = add nuw nsw i32 %add47, %conv10
  %16 = lshr i32 %add48, 1
  %mul50 = shl nuw nsw i32 %conv10, 1
  %add51 = add nuw nsw i32 %conv8, 2
  %add52 = add nuw nsw i32 %add51, %mul50
  %add53 = add nuw nsw i32 %add52, %conv12
  %17 = lshr i32 %add53, 2
  %shl.i211 = shl nuw nsw i32 %17, 8
  %add.i212 = add nuw nsw i32 %shl.i211, %16
  %add56 = add nuw nsw i32 %conv10, 1
  %add57 = add nuw nsw i32 %add56, %conv12
  %18 = lshr i32 %add57, 1
  %mul59 = shl nuw nsw i32 %conv12, 1
  %add60 = add nuw nsw i32 %conv10, 2
  %add61 = add nuw nsw i32 %add60, %mul59
  %add62 = add nuw nsw i32 %add61, %conv14
  %19 = lshr i32 %add62, 2
  %shl.i209 = shl nuw nsw i32 %19, 8
  %add.i210 = add nuw nsw i32 %shl.i209, %18
  %add65 = add nuw nsw i32 %conv12, 1
  %add66 = add nuw nsw i32 %add65, %conv14
  %20 = lshr i32 %add66, 1
  %mul68 = shl nuw nsw i32 %conv14, 1
  %add69 = add nuw nsw i32 %conv12, 2
  %add70 = add nuw nsw i32 %add69, %conv14
  %add71 = add nuw nsw i32 %add70, %mul68
  %21 = lshr i32 %add71, 2
  %shl.i207 = shl nuw nsw i32 %21, 8
  %add.i208 = add nuw nsw i32 %shl.i207, %20
  %shl.i203 = shl nuw i32 %add.i218, 16
  %add.i204 = add nuw i32 %add.i, %shl.i203
  %i = bitcast i8* %src to i32*
  store i32 %add.i204, i32* %i, align 4, !tbaa !2
  %shl.i201 = shl nuw i32 %add.i216, 16
  %add.i202 = add nuw i32 %shl.i201, %add.i218
  %arrayidx78 = getelementptr inbounds i8, i8* %src, i32 32
  %i79 = bitcast i8* %arrayidx78 to i32*
  store i32 %add.i202, i32* %i79, align 4, !tbaa !2
  %shl.i199 = shl nuw i32 %add.i214, 16
  %add.i200 = add nuw i32 %shl.i199, %add.i216
  %arrayidx81 = getelementptr inbounds i8, i8* %src, i32 64
  %i82 = bitcast i8* %arrayidx81 to i32*
  store i32 %add.i200, i32* %i82, align 4, !tbaa !2
  %arrayidx83 = getelementptr inbounds i8, i8* %src, i32 4
  %i84 = bitcast i8* %arrayidx83 to i32*
  store i32 %add.i200, i32* %i84, align 4, !tbaa !2
  %shl.i197 = shl nuw i32 %add.i212, 16
  %add.i198 = add nuw i32 %shl.i197, %add.i214
  %arrayidx86 = getelementptr inbounds i8, i8* %src, i32 96
  %i87 = bitcast i8* %arrayidx86 to i32*
  store i32 %add.i198, i32* %i87, align 4, !tbaa !2
  %arrayidx88 = getelementptr inbounds i8, i8* %src, i32 36
  %i89 = bitcast i8* %arrayidx88 to i32*
  store i32 %add.i198, i32* %i89, align 4, !tbaa !2
  %shl.i195 = shl nuw i32 %add.i210, 16
  %add.i196 = add nuw i32 %shl.i195, %add.i212
  %arrayidx91 = getelementptr inbounds i8, i8* %src, i32 128
  %i92 = bitcast i8* %arrayidx91 to i32*
  store i32 %add.i196, i32* %i92, align 4, !tbaa !2
  %arrayidx93 = getelementptr inbounds i8, i8* %src, i32 68
  %i94 = bitcast i8* %arrayidx93 to i32*
  store i32 %add.i196, i32* %i94, align 4, !tbaa !2
  %shl.i193 = shl nuw i32 %add.i208, 16
  %add.i194 = add nuw i32 %shl.i193, %add.i210
  %arrayidx96 = getelementptr inbounds i8, i8* %src, i32 160
  %i97 = bitcast i8* %arrayidx96 to i32*
  store i32 %add.i194, i32* %i97, align 4, !tbaa !2
  %arrayidx98 = getelementptr inbounds i8, i8* %src, i32 100
  %i99 = bitcast i8* %arrayidx98 to i32*
  store i32 %add.i194, i32* %i99, align 4, !tbaa !2
  %shl.i191 = mul nuw i32 %conv14, 16842752
  %add.i192 = add nuw i32 %add.i208, %shl.i191
  %arrayidx101 = getelementptr inbounds i8, i8* %src, i32 192
  %i102 = bitcast i8* %arrayidx101 to i32*
  store i32 %add.i192, i32* %i102, align 4, !tbaa !2
  %arrayidx103 = getelementptr inbounds i8, i8* %src, i32 132
  %i104 = bitcast i8* %arrayidx103 to i32*
  store i32 %add.i192, i32* %i104, align 4, !tbaa !2
  %add.i190 = mul nuw i32 %conv14, 16843009
  %arrayidx106 = getelementptr inbounds i8, i8* %src, i32 228
  %i107 = bitcast i8* %arrayidx106 to i32*
  store i32 %add.i190, i32* %i107, align 4, !tbaa !2
  %arrayidx108 = getelementptr inbounds i8, i8* %src, i32 224
  %i109 = bitcast i8* %arrayidx108 to i32*
  store i32 %add.i190, i32* %i109, align 4, !tbaa !2
  %arrayidx110 = getelementptr inbounds i8, i8* %src, i32 196
  %i111 = bitcast i8* %arrayidx110 to i32*
  store i32 %add.i190, i32* %i111, align 4, !tbaa !2
  %arrayidx112 = getelementptr inbounds i8, i8* %src, i32 164
  %i113 = bitcast i8* %arrayidx112 to i32*
  store i32 %add.i190, i32* %i113, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_dc_left_c(i8* nocapture %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 14
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 13
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 12
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 11
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 10
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 9
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 8
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 7
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 4
  %add15 = add nuw nsw i32 %add, %conv2
  %add16 = add nuw nsw i32 %add15, %conv4
  %add17 = add nuw nsw i32 %add16, %conv6
  %add18 = add nuw nsw i32 %add17, %conv8
  %add19 = add nuw nsw i32 %add18, %conv10
  %add20 = add nuw nsw i32 %add19, %conv12
  %add21 = add nuw nsw i32 %add20, %conv14
  %shr = ashr i32 %add21, 3
  %mul = mul nuw i32 %shr, 16843009
  %i = bitcast i8* %src to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %add.ptr23 = getelementptr inbounds i8, i8* %src, i32 4
  %i24 = bitcast i8* %add.ptr23 to i32*
  store i32 %mul, i32* %i24, align 4, !tbaa !2
  %add.ptr25 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr25 to i32*
  store i32 %mul, i32* %i.1, align 4, !tbaa !2
  %add.ptr23.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i24.1 = bitcast i8* %add.ptr23.1 to i32*
  store i32 %mul, i32* %i24.1, align 4, !tbaa !2
  %add.ptr25.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr25.1 to i32*
  store i32 %mul, i32* %i.2, align 4, !tbaa !2
  %add.ptr23.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i24.2 = bitcast i8* %add.ptr23.2 to i32*
  store i32 %mul, i32* %i24.2, align 4, !tbaa !2
  %add.ptr25.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr25.2 to i32*
  store i32 %mul, i32* %i.3, align 4, !tbaa !2
  %add.ptr23.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i24.3 = bitcast i8* %add.ptr23.3 to i32*
  store i32 %mul, i32* %i24.3, align 4, !tbaa !2
  %add.ptr25.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i.4 = bitcast i8* %add.ptr25.3 to i32*
  store i32 %mul, i32* %i.4, align 4, !tbaa !2
  %add.ptr23.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i24.4 = bitcast i8* %add.ptr23.4 to i32*
  store i32 %mul, i32* %i24.4, align 4, !tbaa !2
  %add.ptr25.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i.5 = bitcast i8* %add.ptr25.4 to i32*
  store i32 %mul, i32* %i.5, align 4, !tbaa !2
  %add.ptr23.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i24.5 = bitcast i8* %add.ptr23.5 to i32*
  store i32 %mul, i32* %i24.5, align 4, !tbaa !2
  %add.ptr25.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i.6 = bitcast i8* %add.ptr25.5 to i32*
  store i32 %mul, i32* %i.6, align 4, !tbaa !2
  %add.ptr23.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i24.6 = bitcast i8* %add.ptr23.6 to i32*
  store i32 %mul, i32* %i24.6, align 4, !tbaa !2
  %add.ptr25.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i.7 = bitcast i8* %add.ptr25.6 to i32*
  store i32 %mul, i32* %i.7, align 4, !tbaa !2
  %add.ptr23.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i24.7 = bitcast i8* %add.ptr23.7 to i32*
  store i32 %mul, i32* %i24.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_dc_top_c(i8* nocapture %src, i8* nocapture readonly %edge) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %edge, i32 16
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %edge, i32 17
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %edge, i32 18
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %edge, i32 19
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %edge, i32 20
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 21
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %edge, i32 22
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %edge, i32 23
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 4
  %add15 = add nuw nsw i32 %add, %conv2
  %add16 = add nuw nsw i32 %add15, %conv4
  %add17 = add nuw nsw i32 %add16, %conv6
  %add18 = add nuw nsw i32 %add17, %conv8
  %add19 = add nuw nsw i32 %add18, %conv10
  %add20 = add nuw nsw i32 %add19, %conv12
  %add21 = add nuw nsw i32 %add20, %conv14
  %shr = ashr i32 %add21, 3
  %mul = mul nuw i32 %shr, 16843009
  %i = bitcast i8* %src to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %add.ptr23 = getelementptr inbounds i8, i8* %src, i32 4
  %i24 = bitcast i8* %add.ptr23 to i32*
  store i32 %mul, i32* %i24, align 4, !tbaa !2
  %add.ptr25 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr25 to i32*
  store i32 %mul, i32* %i.1, align 4, !tbaa !2
  %add.ptr23.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i24.1 = bitcast i8* %add.ptr23.1 to i32*
  store i32 %mul, i32* %i24.1, align 4, !tbaa !2
  %add.ptr25.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr25.1 to i32*
  store i32 %mul, i32* %i.2, align 4, !tbaa !2
  %add.ptr23.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i24.2 = bitcast i8* %add.ptr23.2 to i32*
  store i32 %mul, i32* %i24.2, align 4, !tbaa !2
  %add.ptr25.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr25.2 to i32*
  store i32 %mul, i32* %i.3, align 4, !tbaa !2
  %add.ptr23.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i24.3 = bitcast i8* %add.ptr23.3 to i32*
  store i32 %mul, i32* %i24.3, align 4, !tbaa !2
  %add.ptr25.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i.4 = bitcast i8* %add.ptr25.3 to i32*
  store i32 %mul, i32* %i.4, align 4, !tbaa !2
  %add.ptr23.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i24.4 = bitcast i8* %add.ptr23.4 to i32*
  store i32 %mul, i32* %i24.4, align 4, !tbaa !2
  %add.ptr25.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i.5 = bitcast i8* %add.ptr25.4 to i32*
  store i32 %mul, i32* %i.5, align 4, !tbaa !2
  %add.ptr23.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i24.5 = bitcast i8* %add.ptr23.5 to i32*
  store i32 %mul, i32* %i24.5, align 4, !tbaa !2
  %add.ptr25.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i.6 = bitcast i8* %add.ptr25.5 to i32*
  store i32 %mul, i32* %i.6, align 4, !tbaa !2
  %add.ptr23.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i24.6 = bitcast i8* %add.ptr23.6 to i32*
  store i32 %mul, i32* %i24.6, align 4, !tbaa !2
  %add.ptr25.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i.7 = bitcast i8* %add.ptr25.6 to i32*
  store i32 %mul, i32* %i.7, align 4, !tbaa !2
  %add.ptr23.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i24.7 = bitcast i8* %add.ptr23.7 to i32*
  store i32 %mul, i32* %i24.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @predict_8x8_dc_128_c(i8* nocapture %src, i8* nocapture readnone %edge) #1 {
entry:
  %i = bitcast i8* %src to i32*
  store i32 -2139062144, i32* %i, align 4, !tbaa !2
  %add.ptr1 = getelementptr inbounds i8, i8* %src, i32 4
  %i2 = bitcast i8* %add.ptr1 to i32*
  store i32 -2139062144, i32* %i2, align 4, !tbaa !2
  %add.ptr3 = getelementptr inbounds i8, i8* %src, i32 32
  %i.1 = bitcast i8* %add.ptr3 to i32*
  store i32 -2139062144, i32* %i.1, align 4, !tbaa !2
  %add.ptr1.1 = getelementptr inbounds i8, i8* %src, i32 36
  %i2.1 = bitcast i8* %add.ptr1.1 to i32*
  store i32 -2139062144, i32* %i2.1, align 4, !tbaa !2
  %add.ptr3.1 = getelementptr inbounds i8, i8* %src, i32 64
  %i.2 = bitcast i8* %add.ptr3.1 to i32*
  store i32 -2139062144, i32* %i.2, align 4, !tbaa !2
  %add.ptr1.2 = getelementptr inbounds i8, i8* %src, i32 68
  %i2.2 = bitcast i8* %add.ptr1.2 to i32*
  store i32 -2139062144, i32* %i2.2, align 4, !tbaa !2
  %add.ptr3.2 = getelementptr inbounds i8, i8* %src, i32 96
  %i.3 = bitcast i8* %add.ptr3.2 to i32*
  store i32 -2139062144, i32* %i.3, align 4, !tbaa !2
  %add.ptr1.3 = getelementptr inbounds i8, i8* %src, i32 100
  %i2.3 = bitcast i8* %add.ptr1.3 to i32*
  store i32 -2139062144, i32* %i2.3, align 4, !tbaa !2
  %add.ptr3.3 = getelementptr inbounds i8, i8* %src, i32 128
  %i.4 = bitcast i8* %add.ptr3.3 to i32*
  store i32 -2139062144, i32* %i.4, align 4, !tbaa !2
  %add.ptr1.4 = getelementptr inbounds i8, i8* %src, i32 132
  %i2.4 = bitcast i8* %add.ptr1.4 to i32*
  store i32 -2139062144, i32* %i2.4, align 4, !tbaa !2
  %add.ptr3.4 = getelementptr inbounds i8, i8* %src, i32 160
  %i.5 = bitcast i8* %add.ptr3.4 to i32*
  store i32 -2139062144, i32* %i.5, align 4, !tbaa !2
  %add.ptr1.5 = getelementptr inbounds i8, i8* %src, i32 164
  %i2.5 = bitcast i8* %add.ptr1.5 to i32*
  store i32 -2139062144, i32* %i2.5, align 4, !tbaa !2
  %add.ptr3.5 = getelementptr inbounds i8, i8* %src, i32 192
  %i.6 = bitcast i8* %add.ptr3.5 to i32*
  store i32 -2139062144, i32* %i.6, align 4, !tbaa !2
  %add.ptr1.6 = getelementptr inbounds i8, i8* %src, i32 196
  %i2.6 = bitcast i8* %add.ptr1.6 to i32*
  store i32 -2139062144, i32* %i2.6, align 4, !tbaa !2
  %add.ptr3.6 = getelementptr inbounds i8, i8* %src, i32 224
  %i.7 = bitcast i8* %add.ptr3.6 to i32*
  store i32 -2139062144, i32* %i.7, align 4, !tbaa !2
  %add.ptr1.7 = getelementptr inbounds i8, i8* %src, i32 228
  %i2.7 = bitcast i8* %add.ptr1.7 to i32*
  store i32 -2139062144, i32* %i2.7, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_8x8_filter_c(i8* readonly %src, i8* %edge, i32 %i_neighbor, i32 %i_filters) #0 {
entry:
  %and = and i32 %i_neighbor, 8
  %and1 = and i32 %i_filters, 1
  %tobool = icmp eq i32 %and1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx2 = getelementptr inbounds i8, i8* %src, i32 -33
  %1 = load i8, i8* %arrayidx2, align 1, !tbaa !2
  %conv3 = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv3, 1
  %arrayidx4 = getelementptr inbounds i8, i8* %src, i32 -1
  %2 = load i8, i8* %arrayidx4, align 1, !tbaa !2
  %conv5 = zext i8 %2 to i32
  %add = add nuw nsw i32 %conv, 2
  %add6 = add nuw nsw i32 %add, %mul
  %add7 = add nuw nsw i32 %add6, %conv5
  %3 = lshr i32 %add7, 2
  %conv8 = trunc i32 %3 to i8
  %arrayidx9 = getelementptr inbounds i8, i8* %edge, i32 15
  store i8 %conv8, i8* %arrayidx9, align 1, !tbaa !2
  %tobool10 = icmp eq i32 %and, 0
  %arrayidx4.val = load i8, i8* %arrayidx4, align 1
  %arrayidx2.val = load i8, i8* %arrayidx2, align 1
  %cond.in = select i1 %tobool10, i8 %arrayidx4.val, i8 %arrayidx2.val
  %cond = zext i8 %cond.in to i32
  %conv16 = zext i8 %arrayidx4.val to i32
  %mul17 = shl nuw nsw i32 %conv16, 1
  %arrayidx19 = getelementptr inbounds i8, i8* %src, i32 31
  %4 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv20 = zext i8 %4 to i32
  %add18 = add nuw nsw i32 %mul17, 2
  %add21 = add nuw nsw i32 %add18, %cond
  %add22 = add nuw nsw i32 %add21, %conv20
  %5 = lshr i32 %add22, 2
  %conv24 = trunc i32 %5 to i8
  %arrayidx25 = getelementptr inbounds i8, i8* %edge, i32 14
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !2
  %6 = load i8, i8* %arrayidx4, align 1, !tbaa !2
  %conv27 = zext i8 %6 to i32
  %7 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv29 = zext i8 %7 to i32
  %mul30 = shl nuw nsw i32 %conv29, 1
  %arrayidx32 = getelementptr inbounds i8, i8* %src, i32 63
  %8 = load i8, i8* %arrayidx32, align 1, !tbaa !2
  %conv33 = zext i8 %8 to i32
  %add31 = add nuw nsw i32 %conv27, 2
  %add34 = add nuw nsw i32 %add31, %mul30
  %add35 = add nuw nsw i32 %add34, %conv33
  %9 = lshr i32 %add35, 2
  %conv37 = trunc i32 %9 to i8
  %arrayidx38 = getelementptr inbounds i8, i8* %edge, i32 13
  store i8 %conv37, i8* %arrayidx38, align 1, !tbaa !2
  %10 = load i8, i8* %arrayidx19, align 1, !tbaa !2
  %conv40 = zext i8 %10 to i32
  %11 = load i8, i8* %arrayidx32, align 1, !tbaa !2
  %conv42 = zext i8 %11 to i32
  %mul43 = shl nuw nsw i32 %conv42, 1
  %arrayidx45 = getelementptr inbounds i8, i8* %src, i32 95
  %12 = load i8, i8* %arrayidx45, align 1, !tbaa !2
  %conv46 = zext i8 %12 to i32
  %add44 = add nuw nsw i32 %conv40, 2
  %add47 = add nuw nsw i32 %add44, %mul43
  %add48 = add nuw nsw i32 %add47, %conv46
  %13 = lshr i32 %add48, 2
  %conv50 = trunc i32 %13 to i8
  %arrayidx51 = getelementptr inbounds i8, i8* %edge, i32 12
  store i8 %conv50, i8* %arrayidx51, align 1, !tbaa !2
  %14 = load i8, i8* %arrayidx32, align 1, !tbaa !2
  %conv53 = zext i8 %14 to i32
  %15 = load i8, i8* %arrayidx45, align 1, !tbaa !2
  %conv55 = zext i8 %15 to i32
  %mul56 = shl nuw nsw i32 %conv55, 1
  %arrayidx58 = getelementptr inbounds i8, i8* %src, i32 127
  %16 = load i8, i8* %arrayidx58, align 1, !tbaa !2
  %conv59 = zext i8 %16 to i32
  %add57 = add nuw nsw i32 %conv53, 2
  %add60 = add nuw nsw i32 %add57, %mul56
  %add61 = add nuw nsw i32 %add60, %conv59
  %17 = lshr i32 %add61, 2
  %conv63 = trunc i32 %17 to i8
  %arrayidx64 = getelementptr inbounds i8, i8* %edge, i32 11
  store i8 %conv63, i8* %arrayidx64, align 1, !tbaa !2
  %18 = load i8, i8* %arrayidx45, align 1, !tbaa !2
  %conv66 = zext i8 %18 to i32
  %19 = load i8, i8* %arrayidx58, align 1, !tbaa !2
  %conv68 = zext i8 %19 to i32
  %mul69 = shl nuw nsw i32 %conv68, 1
  %arrayidx71 = getelementptr inbounds i8, i8* %src, i32 159
  %20 = load i8, i8* %arrayidx71, align 1, !tbaa !2
  %conv72 = zext i8 %20 to i32
  %add70 = add nuw nsw i32 %conv66, 2
  %add73 = add nuw nsw i32 %add70, %mul69
  %add74 = add nuw nsw i32 %add73, %conv72
  %21 = lshr i32 %add74, 2
  %conv76 = trunc i32 %21 to i8
  %arrayidx77 = getelementptr inbounds i8, i8* %edge, i32 10
  store i8 %conv76, i8* %arrayidx77, align 1, !tbaa !2
  %22 = load i8, i8* %arrayidx58, align 1, !tbaa !2
  %conv79 = zext i8 %22 to i32
  %23 = load i8, i8* %arrayidx71, align 1, !tbaa !2
  %conv81 = zext i8 %23 to i32
  %mul82 = shl nuw nsw i32 %conv81, 1
  %arrayidx84 = getelementptr inbounds i8, i8* %src, i32 191
  %24 = load i8, i8* %arrayidx84, align 1, !tbaa !2
  %conv85 = zext i8 %24 to i32
  %add83 = add nuw nsw i32 %conv79, 2
  %add86 = add nuw nsw i32 %add83, %mul82
  %add87 = add nuw nsw i32 %add86, %conv85
  %25 = lshr i32 %add87, 2
  %conv89 = trunc i32 %25 to i8
  %arrayidx90 = getelementptr inbounds i8, i8* %edge, i32 9
  store i8 %conv89, i8* %arrayidx90, align 1, !tbaa !2
  %26 = load i8, i8* %arrayidx71, align 1, !tbaa !2
  %conv92 = zext i8 %26 to i32
  %27 = load i8, i8* %arrayidx84, align 1, !tbaa !2
  %conv94 = zext i8 %27 to i32
  %mul95 = shl nuw nsw i32 %conv94, 1
  %arrayidx97 = getelementptr inbounds i8, i8* %src, i32 223
  %28 = load i8, i8* %arrayidx97, align 1, !tbaa !2
  %conv98 = zext i8 %28 to i32
  %add96 = add nuw nsw i32 %conv92, 2
  %add99 = add nuw nsw i32 %add96, %mul95
  %add100 = add nuw nsw i32 %add99, %conv98
  %29 = lshr i32 %add100, 2
  %conv102 = trunc i32 %29 to i8
  %arrayidx103 = getelementptr inbounds i8, i8* %edge, i32 8
  store i8 %conv102, i8* %arrayidx103, align 1, !tbaa !2
  %30 = load i8, i8* %arrayidx84, align 1, !tbaa !2
  %conv105 = zext i8 %30 to i32
  %31 = load i8, i8* %arrayidx97, align 1, !tbaa !2
  %conv107 = zext i8 %31 to i32
  %mul108 = mul nuw nsw i32 %conv107, 3
  %add109 = add nuw nsw i32 %conv105, 2
  %add110 = add nuw nsw i32 %add109, %mul108
  %32 = lshr i32 %add110, 2
  %conv112 = trunc i32 %32 to i8
  %arrayidx113 = getelementptr inbounds i8, i8* %edge, i32 7
  store i8 %conv112, i8* %arrayidx113, align 1, !tbaa !2
  %arrayidx114 = getelementptr inbounds i8, i8* %edge, i32 6
  store i8 %conv112, i8* %arrayidx114, align 1, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %and115 = and i32 %i_filters, 2
  %tobool116 = icmp eq i32 %and115, 0
  br i1 %tobool116, label %if.end356, label %if.then117

if.then117:                                       ; preds = %if.end
  %and118 = and i32 %i_neighbor, 4
  %tobool119 = icmp eq i32 %and, 0
  %arrayidx121 = getelementptr inbounds i8, i8* %src, i32 -33
  %arrayidx124 = getelementptr inbounds i8, i8* %src, i32 -32
  %cond127.in.in = select i1 %tobool119, i8* %arrayidx124, i8* %arrayidx121
  %cond127.in = load i8, i8* %cond127.in.in, align 1, !tbaa !2
  %cond127 = zext i8 %cond127.in to i32
  %33 = load i8, i8* %arrayidx124, align 1, !tbaa !2
  %conv129 = zext i8 %33 to i32
  %mul130 = shl nuw nsw i32 %conv129, 1
  %arrayidx132 = getelementptr inbounds i8, i8* %src, i32 -31
  %34 = load i8, i8* %arrayidx132, align 1, !tbaa !2
  %conv133 = zext i8 %34 to i32
  %add131 = add nuw nsw i32 %cond127, 2
  %add134 = add nuw nsw i32 %add131, %mul130
  %add135 = add nuw nsw i32 %add134, %conv133
  %35 = lshr i32 %add135, 2
  %conv137 = trunc i32 %35 to i8
  %arrayidx138 = getelementptr inbounds i8, i8* %edge, i32 16
  store i8 %conv137, i8* %arrayidx138, align 1, !tbaa !2
  %36 = load i8, i8* %arrayidx124, align 1, !tbaa !2
  %conv140 = zext i8 %36 to i32
  %37 = load i8, i8* %arrayidx132, align 1, !tbaa !2
  %conv142 = zext i8 %37 to i32
  %mul143 = shl nuw nsw i32 %conv142, 1
  %arrayidx145 = getelementptr inbounds i8, i8* %src, i32 -30
  %38 = load i8, i8* %arrayidx145, align 1, !tbaa !2
  %conv146 = zext i8 %38 to i32
  %add144 = add nuw nsw i32 %conv140, 2
  %add147 = add nuw nsw i32 %add144, %mul143
  %add148 = add nuw nsw i32 %add147, %conv146
  %39 = lshr i32 %add148, 2
  %conv150 = trunc i32 %39 to i8
  %arrayidx151 = getelementptr inbounds i8, i8* %edge, i32 17
  store i8 %conv150, i8* %arrayidx151, align 1, !tbaa !2
  %40 = load i8, i8* %arrayidx132, align 1, !tbaa !2
  %conv153 = zext i8 %40 to i32
  %41 = load i8, i8* %arrayidx145, align 1, !tbaa !2
  %conv155 = zext i8 %41 to i32
  %mul156 = shl nuw nsw i32 %conv155, 1
  %arrayidx158 = getelementptr inbounds i8, i8* %src, i32 -29
  %42 = load i8, i8* %arrayidx158, align 1, !tbaa !2
  %conv159 = zext i8 %42 to i32
  %add157 = add nuw nsw i32 %conv153, 2
  %add160 = add nuw nsw i32 %add157, %mul156
  %add161 = add nuw nsw i32 %add160, %conv159
  %43 = lshr i32 %add161, 2
  %conv163 = trunc i32 %43 to i8
  %arrayidx164 = getelementptr inbounds i8, i8* %edge, i32 18
  store i8 %conv163, i8* %arrayidx164, align 1, !tbaa !2
  %44 = load i8, i8* %arrayidx145, align 1, !tbaa !2
  %conv166 = zext i8 %44 to i32
  %45 = load i8, i8* %arrayidx158, align 1, !tbaa !2
  %conv168 = zext i8 %45 to i32
  %mul169 = shl nuw nsw i32 %conv168, 1
  %arrayidx171 = getelementptr inbounds i8, i8* %src, i32 -28
  %46 = load i8, i8* %arrayidx171, align 1, !tbaa !2
  %conv172 = zext i8 %46 to i32
  %add170 = add nuw nsw i32 %conv166, 2
  %add173 = add nuw nsw i32 %add170, %mul169
  %add174 = add nuw nsw i32 %add173, %conv172
  %47 = lshr i32 %add174, 2
  %conv176 = trunc i32 %47 to i8
  %arrayidx177 = getelementptr inbounds i8, i8* %edge, i32 19
  store i8 %conv176, i8* %arrayidx177, align 1, !tbaa !2
  %48 = load i8, i8* %arrayidx158, align 1, !tbaa !2
  %conv179 = zext i8 %48 to i32
  %49 = load i8, i8* %arrayidx171, align 1, !tbaa !2
  %conv181 = zext i8 %49 to i32
  %mul182 = shl nuw nsw i32 %conv181, 1
  %arrayidx184 = getelementptr inbounds i8, i8* %src, i32 -27
  %50 = load i8, i8* %arrayidx184, align 1, !tbaa !2
  %conv185 = zext i8 %50 to i32
  %add183 = add nuw nsw i32 %conv179, 2
  %add186 = add nuw nsw i32 %add183, %mul182
  %add187 = add nuw nsw i32 %add186, %conv185
  %51 = lshr i32 %add187, 2
  %conv189 = trunc i32 %51 to i8
  %arrayidx190 = getelementptr inbounds i8, i8* %edge, i32 20
  store i8 %conv189, i8* %arrayidx190, align 1, !tbaa !2
  %52 = load i8, i8* %arrayidx171, align 1, !tbaa !2
  %conv192 = zext i8 %52 to i32
  %53 = load i8, i8* %arrayidx184, align 1, !tbaa !2
  %conv194 = zext i8 %53 to i32
  %mul195 = shl nuw nsw i32 %conv194, 1
  %arrayidx197 = getelementptr inbounds i8, i8* %src, i32 -26
  %54 = load i8, i8* %arrayidx197, align 1, !tbaa !2
  %conv198 = zext i8 %54 to i32
  %add196 = add nuw nsw i32 %conv192, 2
  %add199 = add nuw nsw i32 %add196, %mul195
  %add200 = add nuw nsw i32 %add199, %conv198
  %55 = lshr i32 %add200, 2
  %conv202 = trunc i32 %55 to i8
  %arrayidx203 = getelementptr inbounds i8, i8* %edge, i32 21
  store i8 %conv202, i8* %arrayidx203, align 1, !tbaa !2
  %56 = load i8, i8* %arrayidx184, align 1, !tbaa !2
  %conv205 = zext i8 %56 to i32
  %57 = load i8, i8* %arrayidx197, align 1, !tbaa !2
  %conv207 = zext i8 %57 to i32
  %mul208 = shl nuw nsw i32 %conv207, 1
  %arrayidx210 = getelementptr inbounds i8, i8* %src, i32 -25
  %58 = load i8, i8* %arrayidx210, align 1, !tbaa !2
  %conv211 = zext i8 %58 to i32
  %add209 = add nuw nsw i32 %conv205, 2
  %add212 = add nuw nsw i32 %add209, %mul208
  %add213 = add nuw nsw i32 %add212, %conv211
  %59 = lshr i32 %add213, 2
  %conv215 = trunc i32 %59 to i8
  %arrayidx216 = getelementptr inbounds i8, i8* %edge, i32 22
  store i8 %conv215, i8* %arrayidx216, align 1, !tbaa !2
  %60 = load i8, i8* %arrayidx197, align 1, !tbaa !2
  %conv218 = zext i8 %60 to i32
  %61 = load i8, i8* %arrayidx210, align 1, !tbaa !2
  %conv220 = zext i8 %61 to i32
  %mul221 = shl nuw nsw i32 %conv220, 1
  %tobool223 = icmp ne i32 %and118, 0
  br i1 %tobool223, label %cond.true224, label %cond.end230

cond.true224:                                     ; preds = %if.then117
  %arrayidx225 = getelementptr inbounds i8, i8* %src, i32 -24
  %62 = load i8, i8* %arrayidx225, align 1, !tbaa !2
  %conv226 = zext i8 %62 to i32
  br label %cond.end230

cond.end230:                                      ; preds = %if.then117, %cond.true224
  %cond231 = phi i32 [ %conv226, %cond.true224 ], [ %conv220, %if.then117 ]
  %add222 = add nuw nsw i32 %conv218, 2
  %add232 = add nuw nsw i32 %add222, %mul221
  %add233 = add nuw nsw i32 %add232, %cond231
  %63 = lshr i32 %add233, 2
  %conv235 = trunc i32 %63 to i8
  %arrayidx236 = getelementptr inbounds i8, i8* %edge, i32 23
  store i8 %conv235, i8* %arrayidx236, align 1, !tbaa !2
  %and237 = and i32 %i_filters, 4
  %tobool238 = icmp eq i32 %and237, 0
  br i1 %tobool238, label %if.end356, label %if.then239

if.then239:                                       ; preds = %cond.end230
  %64 = load i8, i8* %arrayidx210, align 1, !tbaa !2
  %conv243 = zext i8 %64 to i32
  br i1 %tobool223, label %if.then241, label %if.else

if.then241:                                       ; preds = %if.then239
  %arrayidx244 = getelementptr inbounds i8, i8* %src, i32 -24
  %65 = load i8, i8* %arrayidx244, align 1, !tbaa !2
  %conv245 = zext i8 %65 to i32
  %mul246 = shl nuw nsw i32 %conv245, 1
  %arrayidx248 = getelementptr inbounds i8, i8* %src, i32 -23
  %66 = load i8, i8* %arrayidx248, align 1, !tbaa !2
  %conv249 = zext i8 %66 to i32
  %add247 = add nuw nsw i32 %conv243, 2
  %add250 = add nuw nsw i32 %add247, %mul246
  %add251 = add nuw nsw i32 %add250, %conv249
  %67 = lshr i32 %add251, 2
  %conv253 = trunc i32 %67 to i8
  %arrayidx254 = getelementptr inbounds i8, i8* %edge, i32 24
  store i8 %conv253, i8* %arrayidx254, align 1, !tbaa !2
  %68 = load i8, i8* %arrayidx244, align 1, !tbaa !2
  %conv256 = zext i8 %68 to i32
  %69 = load i8, i8* %arrayidx248, align 1, !tbaa !2
  %conv258 = zext i8 %69 to i32
  %mul259 = shl nuw nsw i32 %conv258, 1
  %arrayidx261 = getelementptr inbounds i8, i8* %src, i32 -22
  %70 = load i8, i8* %arrayidx261, align 1, !tbaa !2
  %conv262 = zext i8 %70 to i32
  %add260 = add nuw nsw i32 %conv256, 2
  %add263 = add nuw nsw i32 %add260, %mul259
  %add264 = add nuw nsw i32 %add263, %conv262
  %71 = lshr i32 %add264, 2
  %conv266 = trunc i32 %71 to i8
  %arrayidx267 = getelementptr inbounds i8, i8* %edge, i32 25
  store i8 %conv266, i8* %arrayidx267, align 1, !tbaa !2
  %72 = load i8, i8* %arrayidx248, align 1, !tbaa !2
  %conv269 = zext i8 %72 to i32
  %73 = load i8, i8* %arrayidx261, align 1, !tbaa !2
  %conv271 = zext i8 %73 to i32
  %mul272 = shl nuw nsw i32 %conv271, 1
  %arrayidx274 = getelementptr inbounds i8, i8* %src, i32 -21
  %74 = load i8, i8* %arrayidx274, align 1, !tbaa !2
  %conv275 = zext i8 %74 to i32
  %add273 = add nuw nsw i32 %conv269, 2
  %add276 = add nuw nsw i32 %add273, %mul272
  %add277 = add nuw nsw i32 %add276, %conv275
  %75 = lshr i32 %add277, 2
  %conv279 = trunc i32 %75 to i8
  %arrayidx280 = getelementptr inbounds i8, i8* %edge, i32 26
  store i8 %conv279, i8* %arrayidx280, align 1, !tbaa !2
  %76 = load i8, i8* %arrayidx261, align 1, !tbaa !2
  %conv282 = zext i8 %76 to i32
  %77 = load i8, i8* %arrayidx274, align 1, !tbaa !2
  %conv284 = zext i8 %77 to i32
  %mul285 = shl nuw nsw i32 %conv284, 1
  %arrayidx287 = getelementptr inbounds i8, i8* %src, i32 -20
  %78 = load i8, i8* %arrayidx287, align 1, !tbaa !2
  %conv288 = zext i8 %78 to i32
  %add286 = add nuw nsw i32 %conv282, 2
  %add289 = add nuw nsw i32 %add286, %mul285
  %add290 = add nuw nsw i32 %add289, %conv288
  %79 = lshr i32 %add290, 2
  %conv292 = trunc i32 %79 to i8
  %arrayidx293 = getelementptr inbounds i8, i8* %edge, i32 27
  store i8 %conv292, i8* %arrayidx293, align 1, !tbaa !2
  %80 = load i8, i8* %arrayidx274, align 1, !tbaa !2
  %conv295 = zext i8 %80 to i32
  %81 = load i8, i8* %arrayidx287, align 1, !tbaa !2
  %conv297 = zext i8 %81 to i32
  %mul298 = shl nuw nsw i32 %conv297, 1
  %arrayidx300 = getelementptr inbounds i8, i8* %src, i32 -19
  %82 = load i8, i8* %arrayidx300, align 1, !tbaa !2
  %conv301 = zext i8 %82 to i32
  %add299 = add nuw nsw i32 %conv295, 2
  %add302 = add nuw nsw i32 %add299, %mul298
  %add303 = add nuw nsw i32 %add302, %conv301
  %83 = lshr i32 %add303, 2
  %conv305 = trunc i32 %83 to i8
  %arrayidx306 = getelementptr inbounds i8, i8* %edge, i32 28
  store i8 %conv305, i8* %arrayidx306, align 1, !tbaa !2
  %84 = load i8, i8* %arrayidx287, align 1, !tbaa !2
  %conv308 = zext i8 %84 to i32
  %85 = load i8, i8* %arrayidx300, align 1, !tbaa !2
  %conv310 = zext i8 %85 to i32
  %mul311 = shl nuw nsw i32 %conv310, 1
  %arrayidx313 = getelementptr inbounds i8, i8* %src, i32 -18
  %86 = load i8, i8* %arrayidx313, align 1, !tbaa !2
  %conv314 = zext i8 %86 to i32
  %add312 = add nuw nsw i32 %conv308, 2
  %add315 = add nuw nsw i32 %add312, %mul311
  %add316 = add nuw nsw i32 %add315, %conv314
  %87 = lshr i32 %add316, 2
  %conv318 = trunc i32 %87 to i8
  %arrayidx319 = getelementptr inbounds i8, i8* %edge, i32 29
  store i8 %conv318, i8* %arrayidx319, align 1, !tbaa !2
  %88 = load i8, i8* %arrayidx300, align 1, !tbaa !2
  %conv321 = zext i8 %88 to i32
  %89 = load i8, i8* %arrayidx313, align 1, !tbaa !2
  %conv323 = zext i8 %89 to i32
  %mul324 = shl nuw nsw i32 %conv323, 1
  %arrayidx326 = getelementptr inbounds i8, i8* %src, i32 -17
  %90 = load i8, i8* %arrayidx326, align 1, !tbaa !2
  %conv327 = zext i8 %90 to i32
  %add325 = add nuw nsw i32 %conv321, 2
  %add328 = add nuw nsw i32 %add325, %mul324
  %add329 = add nuw nsw i32 %add328, %conv327
  %91 = lshr i32 %add329, 2
  %conv331 = trunc i32 %91 to i8
  %arrayidx332 = getelementptr inbounds i8, i8* %edge, i32 30
  store i8 %conv331, i8* %arrayidx332, align 1, !tbaa !2
  %92 = load i8, i8* %arrayidx313, align 1, !tbaa !2
  %conv334 = zext i8 %92 to i32
  %93 = load i8, i8* %arrayidx326, align 1, !tbaa !2
  %conv336 = zext i8 %93 to i32
  %mul337 = mul nuw nsw i32 %conv336, 3
  %add338 = add nuw nsw i32 %conv334, 2
  %add339 = add nuw nsw i32 %add338, %mul337
  %94 = lshr i32 %add339, 2
  %conv341 = trunc i32 %94 to i8
  %arrayidx342 = getelementptr inbounds i8, i8* %edge, i32 32
  store i8 %conv341, i8* %arrayidx342, align 1, !tbaa !2
  %arrayidx343 = getelementptr inbounds i8, i8* %edge, i32 31
  store i8 %conv341, i8* %arrayidx343, align 1, !tbaa !2
  br label %if.end356

if.else:                                          ; preds = %if.then239
  %mul346 = mul nuw i32 %conv243, 16843009
  %add.ptr = getelementptr inbounds i8, i8* %edge, i32 24
  %i = bitcast i8* %add.ptr to i32*
  store i32 %mul346, i32* %i, align 4, !tbaa !2
  %95 = load i8, i8* %arrayidx210, align 1, !tbaa !2
  %conv348 = zext i8 %95 to i32
  %mul349 = mul nuw i32 %conv348, 16843009
  %add.ptr350 = getelementptr inbounds i8, i8* %edge, i32 28
  %i351 = bitcast i8* %add.ptr350 to i32*
  store i32 %mul349, i32* %i351, align 4, !tbaa !2
  %96 = load i8, i8* %arrayidx210, align 1, !tbaa !2
  %arrayidx353 = getelementptr inbounds i8, i8* %edge, i32 32
  store i8 %96, i8* %arrayidx353, align 1, !tbaa !2
  br label %if.end356

if.end356:                                        ; preds = %if.else, %if.then241, %cond.end230, %if.end
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define hidden void @x264_8_predict_4x4_init(i32 %cpu, void (i8*)** nocapture %pf) local_unnamed_addr #1 {
entry:
  store void (i8*)* @x264_8_predict_4x4_v_c, void (i8*)** %pf, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 1
  store void (i8*)* @x264_8_predict_4x4_h_c, void (i8*)** %arrayidx1, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 2
  store void (i8*)* @x264_8_predict_4x4_dc_c, void (i8*)** %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 3
  store void (i8*)* @predict_4x4_ddl_c, void (i8*)** %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 4
  store void (i8*)* @predict_4x4_ddr_c, void (i8*)** %arrayidx4, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 5
  store void (i8*)* @predict_4x4_vr_c, void (i8*)** %arrayidx5, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 6
  store void (i8*)* @predict_4x4_hd_c, void (i8*)** %arrayidx6, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 7
  store void (i8*)* @predict_4x4_vl_c, void (i8*)** %arrayidx7, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 8
  store void (i8*)* @predict_4x4_hu_c, void (i8*)** %arrayidx8, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 9
  store void (i8*)* @predict_4x4_dc_left_c, void (i8*)** %arrayidx9, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 10
  store void (i8*)* @predict_4x4_dc_top_c, void (i8*)** %arrayidx10, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds void (i8*)*, void (i8*)** %pf, i32 11
  store void (i8*)* @predict_4x4_dc_128_c, void (i8*)** %arrayidx11, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_4x4_ddl_c(i8* %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 -31
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 -30
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 -29
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %src, i32 -28
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %src, i32 -27
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %src, i32 -26
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %src, i32 -25
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv2, 1
  %add = add nuw nsw i32 %conv4, 2
  %add15 = add nuw nsw i32 %add, %conv
  %add16 = add nuw nsw i32 %add15, %mul
  %8 = lshr i32 %add16, 2
  %conv17 = trunc i32 %8 to i8
  store i8 %conv17, i8* %src, align 1, !tbaa !2
  %mul19 = shl nuw nsw i32 %conv4, 1
  %add20 = add nuw nsw i32 %conv6, 2
  %add21 = add nuw nsw i32 %add20, %conv2
  %add22 = add nuw nsw i32 %add21, %mul19
  %9 = lshr i32 %add22, 2
  %conv24 = trunc i32 %9 to i8
  %arrayidx25 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !2
  %arrayidx26 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv24, i8* %arrayidx26, align 1, !tbaa !2
  %mul27 = shl nuw nsw i32 %conv6, 1
  %add29 = add nuw nsw i32 %add, %mul27
  %add30 = add nuw nsw i32 %add29, %conv8
  %10 = lshr i32 %add30, 2
  %conv32 = trunc i32 %10 to i8
  %arrayidx33 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv32, i8* %arrayidx33, align 1, !tbaa !2
  %arrayidx34 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv32, i8* %arrayidx34, align 1, !tbaa !2
  %arrayidx35 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv32, i8* %arrayidx35, align 1, !tbaa !2
  %mul36 = shl nuw nsw i32 %conv8, 1
  %add38 = add nuw nsw i32 %add20, %mul36
  %add39 = add nuw nsw i32 %add38, %conv10
  %11 = lshr i32 %add39, 2
  %conv41 = trunc i32 %11 to i8
  %arrayidx42 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv41, i8* %arrayidx42, align 1, !tbaa !2
  %arrayidx43 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv41, i8* %arrayidx43, align 1, !tbaa !2
  %arrayidx44 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv41, i8* %arrayidx44, align 1, !tbaa !2
  %arrayidx45 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv41, i8* %arrayidx45, align 1, !tbaa !2
  %mul46 = shl nuw nsw i32 %conv10, 1
  %add47 = add nuw nsw i32 %conv8, 2
  %add48 = add nuw nsw i32 %add47, %mul46
  %add49 = add nuw nsw i32 %add48, %conv12
  %12 = lshr i32 %add49, 2
  %conv51 = trunc i32 %12 to i8
  %arrayidx52 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv51, i8* %arrayidx52, align 1, !tbaa !2
  %arrayidx53 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv51, i8* %arrayidx53, align 1, !tbaa !2
  %arrayidx54 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv51, i8* %arrayidx54, align 1, !tbaa !2
  %mul55 = shl nuw nsw i32 %conv12, 1
  %add56 = add nuw nsw i32 %conv10, 2
  %add57 = add nuw nsw i32 %add56, %mul55
  %add58 = add nuw nsw i32 %add57, %conv14
  %13 = lshr i32 %add58, 2
  %conv60 = trunc i32 %13 to i8
  %arrayidx61 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv60, i8* %arrayidx61, align 1, !tbaa !2
  %arrayidx62 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv60, i8* %arrayidx62, align 1, !tbaa !2
  %mul63 = shl nuw nsw i32 %conv14, 1
  %add64 = add nuw nsw i32 %conv12, 2
  %add65 = add nuw nsw i32 %add64, %conv14
  %add66 = add nuw nsw i32 %add65, %mul63
  %14 = lshr i32 %add66, 2
  %conv68 = trunc i32 %14 to i8
  %arrayidx69 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv68, i8* %arrayidx69, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_4x4_ddr_c(i8* %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -33
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 -1
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 31
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 63
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %src, i32 95
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %src, i32 -32
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %src, i32 -31
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %src, i32 -30
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %src, i32 -29
  %8 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %8 to i32
  %mul = shl nuw nsw i32 %conv14, 1
  %add = add nuw nsw i32 %conv12, 2
  %add17 = add nuw nsw i32 %add, %conv16
  %add18 = add nuw nsw i32 %add17, %mul
  %9 = lshr i32 %add18, 2
  %conv19 = trunc i32 %9 to i8
  %arrayidx20 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !2
  %mul21 = shl nuw nsw i32 %conv12, 1
  %add22 = add nuw nsw i32 %conv10, 2
  %add23 = add nuw nsw i32 %add22, %conv14
  %add24 = add nuw nsw i32 %add23, %mul21
  %10 = lshr i32 %add24, 2
  %conv26 = trunc i32 %10 to i8
  %arrayidx27 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv26, i8* %arrayidx27, align 1, !tbaa !2
  %arrayidx28 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv26, i8* %arrayidx28, align 1, !tbaa !2
  %mul29 = shl nuw nsw i32 %conv10, 1
  %add30 = add nuw nsw i32 %conv, 2
  %add31 = add nuw nsw i32 %add30, %conv12
  %add32 = add nuw nsw i32 %add31, %mul29
  %11 = lshr i32 %add32, 2
  %conv34 = trunc i32 %11 to i8
  %arrayidx35 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv34, i8* %arrayidx35, align 1, !tbaa !2
  %arrayidx36 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv34, i8* %arrayidx36, align 1, !tbaa !2
  %arrayidx37 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv34, i8* %arrayidx37, align 1, !tbaa !2
  %mul38 = shl nuw nsw i32 %conv, 1
  %add39 = add nuw nsw i32 %conv2, 2
  %add40 = add nuw nsw i32 %add39, %mul38
  %add41 = add nuw nsw i32 %add40, %conv10
  %12 = lshr i32 %add41, 2
  %conv43 = trunc i32 %12 to i8
  %arrayidx44 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv43, i8* %arrayidx44, align 1, !tbaa !2
  %arrayidx45 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv43, i8* %arrayidx45, align 1, !tbaa !2
  %arrayidx46 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv43, i8* %arrayidx46, align 1, !tbaa !2
  store i8 %conv43, i8* %src, align 1, !tbaa !2
  %mul48 = shl nuw nsw i32 %conv2, 1
  %add50 = add nuw nsw i32 %add30, %mul48
  %add51 = add nuw nsw i32 %add50, %conv4
  %13 = lshr i32 %add51, 2
  %conv53 = trunc i32 %13 to i8
  %arrayidx54 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv53, i8* %arrayidx54, align 1, !tbaa !2
  %arrayidx55 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv53, i8* %arrayidx55, align 1, !tbaa !2
  %arrayidx56 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv53, i8* %arrayidx56, align 1, !tbaa !2
  %mul57 = shl nuw nsw i32 %conv4, 1
  %add59 = add nuw nsw i32 %add39, %mul57
  %add60 = add nuw nsw i32 %add59, %conv6
  %14 = lshr i32 %add60, 2
  %conv62 = trunc i32 %14 to i8
  %arrayidx63 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv62, i8* %arrayidx63, align 1, !tbaa !2
  %arrayidx64 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv62, i8* %arrayidx64, align 1, !tbaa !2
  %mul65 = shl nuw nsw i32 %conv6, 1
  %add66 = add nuw nsw i32 %conv4, 2
  %add67 = add nuw nsw i32 %add66, %mul65
  %add68 = add nuw nsw i32 %add67, %conv8
  %15 = lshr i32 %add68, 2
  %conv70 = trunc i32 %15 to i8
  %arrayidx71 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv70, i8* %arrayidx71, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_4x4_vr_c(i8* %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -33
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 -1
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 31
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 63
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %src, i32 -32
  %4 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %4 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %src, i32 -31
  %5 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %5 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %src, i32 -30
  %6 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %6 to i32
  %arrayidx15 = getelementptr inbounds i8, i8* %src, i32 -29
  %7 = load i8, i8* %arrayidx15, align 1, !tbaa !2
  %conv16 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv4, 1
  %add = add nuw nsw i32 %conv2, 2
  %add17 = add nuw nsw i32 %add, %conv6
  %add18 = add nuw nsw i32 %add17, %mul
  %8 = lshr i32 %add18, 2
  %conv19 = trunc i32 %8 to i8
  %arrayidx20 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !2
  %mul21 = shl nuw nsw i32 %conv2, 1
  %add22 = add nuw nsw i32 %conv, 2
  %add23 = add nuw nsw i32 %add22, %conv4
  %add24 = add nuw nsw i32 %add23, %mul21
  %9 = lshr i32 %add24, 2
  %conv26 = trunc i32 %9 to i8
  %arrayidx27 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv26, i8* %arrayidx27, align 1, !tbaa !2
  %mul28 = shl nuw nsw i32 %conv, 1
  %add30 = add nuw nsw i32 %add, %mul28
  %add31 = add nuw nsw i32 %add30, %conv10
  %10 = lshr i32 %add31, 2
  %conv33 = trunc i32 %10 to i8
  %arrayidx34 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv33, i8* %arrayidx34, align 1, !tbaa !2
  %arrayidx35 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv33, i8* %arrayidx35, align 1, !tbaa !2
  %add36 = add nuw nsw i32 %conv10, 1
  %add37 = add nuw nsw i32 %add36, %conv
  %11 = lshr i32 %add37, 1
  %conv39 = trunc i32 %11 to i8
  %arrayidx40 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv39, i8* %arrayidx40, align 1, !tbaa !2
  store i8 %conv39, i8* %src, align 1, !tbaa !2
  %mul42 = shl nuw nsw i32 %conv10, 1
  %add44 = add nuw nsw i32 %add22, %mul42
  %add45 = add nuw nsw i32 %add44, %conv12
  %12 = lshr i32 %add45, 2
  %conv47 = trunc i32 %12 to i8
  %arrayidx48 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv47, i8* %arrayidx48, align 1, !tbaa !2
  %arrayidx49 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv47, i8* %arrayidx49, align 1, !tbaa !2
  %add51 = add nuw nsw i32 %add36, %conv12
  %13 = lshr i32 %add51, 1
  %conv53 = trunc i32 %13 to i8
  %arrayidx54 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv53, i8* %arrayidx54, align 1, !tbaa !2
  %arrayidx55 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv53, i8* %arrayidx55, align 1, !tbaa !2
  %mul56 = shl nuw nsw i32 %conv12, 1
  %add57 = add nuw nsw i32 %conv10, 2
  %add58 = add nuw nsw i32 %add57, %mul56
  %add59 = add nuw nsw i32 %add58, %conv14
  %14 = lshr i32 %add59, 2
  %conv61 = trunc i32 %14 to i8
  %arrayidx62 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv61, i8* %arrayidx62, align 1, !tbaa !2
  %arrayidx63 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv61, i8* %arrayidx63, align 1, !tbaa !2
  %add64 = add nuw nsw i32 %conv12, 1
  %add65 = add nuw nsw i32 %add64, %conv14
  %15 = lshr i32 %add65, 1
  %conv67 = trunc i32 %15 to i8
  %arrayidx68 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv67, i8* %arrayidx68, align 1, !tbaa !2
  %arrayidx69 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv67, i8* %arrayidx69, align 1, !tbaa !2
  %mul70 = shl nuw nsw i32 %conv14, 1
  %add71 = add nuw nsw i32 %conv12, 2
  %add72 = add nuw nsw i32 %add71, %mul70
  %add73 = add nuw nsw i32 %add72, %conv16
  %16 = lshr i32 %add73, 2
  %conv75 = trunc i32 %16 to i8
  %arrayidx76 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv75, i8* %arrayidx76, align 1, !tbaa !2
  %add77 = add nuw nsw i32 %conv14, 1
  %add78 = add nuw nsw i32 %add77, %conv16
  %17 = lshr i32 %add78, 1
  %conv80 = trunc i32 %17 to i8
  %arrayidx81 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv80, i8* %arrayidx81, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_4x4_hd_c(i8* %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -33
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 -1
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 31
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 63
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %src, i32 95
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %src, i32 -32
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %src, i32 -31
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds i8, i8* %src, i32 -30
  %7 = load i8, i8* %arrayidx13, align 1, !tbaa !2
  %conv14 = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv6, 1
  %add17 = add nuw nsw i32 %add, %conv8
  %8 = lshr i32 %add17, 1
  %conv18 = trunc i32 %8 to i8
  %arrayidx19 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !2
  %mul = shl nuw nsw i32 %conv6, 1
  %add20 = add nuw nsw i32 %conv4, 2
  %add21 = add nuw nsw i32 %add20, %mul
  %add22 = add nuw nsw i32 %add21, %conv8
  %9 = lshr i32 %add22, 2
  %conv24 = trunc i32 %9 to i8
  %arrayidx25 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !2
  %add26 = add nuw nsw i32 %conv4, 1
  %add27 = add nuw nsw i32 %add26, %conv6
  %10 = lshr i32 %add27, 1
  %conv29 = trunc i32 %10 to i8
  %arrayidx30 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !2
  %arrayidx31 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv29, i8* %arrayidx31, align 1, !tbaa !2
  %mul32 = shl nuw nsw i32 %conv4, 1
  %add33 = add nuw nsw i32 %conv2, 2
  %add34 = add nuw nsw i32 %add33, %mul32
  %add35 = add nuw nsw i32 %add34, %conv6
  %11 = lshr i32 %add35, 2
  %conv37 = trunc i32 %11 to i8
  %arrayidx38 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv37, i8* %arrayidx38, align 1, !tbaa !2
  %arrayidx39 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv37, i8* %arrayidx39, align 1, !tbaa !2
  %add40 = add nuw nsw i32 %conv2, 1
  %add41 = add nuw nsw i32 %add40, %conv4
  %12 = lshr i32 %add41, 1
  %conv43 = trunc i32 %12 to i8
  %arrayidx44 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv43, i8* %arrayidx44, align 1, !tbaa !2
  %arrayidx45 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv43, i8* %arrayidx45, align 1, !tbaa !2
  %mul46 = shl nuw nsw i32 %conv2, 1
  %add47 = add nuw nsw i32 %conv, 2
  %add48 = add nuw nsw i32 %add47, %mul46
  %add49 = add nuw nsw i32 %add48, %conv4
  %13 = lshr i32 %add49, 2
  %conv51 = trunc i32 %13 to i8
  %arrayidx52 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv51, i8* %arrayidx52, align 1, !tbaa !2
  %arrayidx53 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv51, i8* %arrayidx53, align 1, !tbaa !2
  %add55 = add nuw nsw i32 %add40, %conv
  %14 = lshr i32 %add55, 1
  %conv57 = trunc i32 %14 to i8
  %arrayidx58 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv57, i8* %arrayidx58, align 1, !tbaa !2
  store i8 %conv57, i8* %src, align 1, !tbaa !2
  %mul60 = shl nuw nsw i32 %conv, 1
  %add62 = add nuw nsw i32 %add33, %mul60
  %add63 = add nuw nsw i32 %add62, %conv10
  %15 = lshr i32 %add63, 2
  %conv65 = trunc i32 %15 to i8
  %arrayidx66 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv65, i8* %arrayidx66, align 1, !tbaa !2
  %arrayidx67 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv65, i8* %arrayidx67, align 1, !tbaa !2
  %mul68 = shl nuw nsw i32 %conv10, 1
  %add70 = add nuw nsw i32 %add47, %conv12
  %add71 = add nuw nsw i32 %add70, %mul68
  %16 = lshr i32 %add71, 2
  %conv73 = trunc i32 %16 to i8
  %arrayidx74 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv73, i8* %arrayidx74, align 1, !tbaa !2
  %mul75 = shl nuw nsw i32 %conv12, 1
  %add76 = add nuw nsw i32 %conv10, 2
  %add77 = add nuw nsw i32 %add76, %conv14
  %add78 = add nuw nsw i32 %add77, %mul75
  %17 = lshr i32 %add78, 2
  %conv80 = trunc i32 %17 to i8
  %arrayidx81 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv80, i8* %arrayidx81, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_4x4_vl_c(i8* %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 -31
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 -30
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 -29
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds i8, i8* %src, i32 -28
  %4 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds i8, i8* %src, i32 -27
  %5 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %src, i32 -26
  %6 = load i8, i8* %arrayidx11, align 1, !tbaa !2
  %conv12 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv2, 1
  %add15 = add nuw nsw i32 %add, %conv
  %7 = lshr i32 %add15, 1
  %conv16 = trunc i32 %7 to i8
  store i8 %conv16, i8* %src, align 1, !tbaa !2
  %mul = shl nuw nsw i32 %conv2, 1
  %add18 = add nuw nsw i32 %conv4, 2
  %add19 = add nuw nsw i32 %add18, %conv
  %add20 = add nuw nsw i32 %add19, %mul
  %8 = lshr i32 %add20, 2
  %conv22 = trunc i32 %8 to i8
  %arrayidx23 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv22, i8* %arrayidx23, align 1, !tbaa !2
  %add25 = add nuw nsw i32 %add, %conv4
  %9 = lshr i32 %add25, 1
  %conv27 = trunc i32 %9 to i8
  %arrayidx28 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv27, i8* %arrayidx28, align 1, !tbaa !2
  %arrayidx29 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv27, i8* %arrayidx29, align 1, !tbaa !2
  %mul30 = shl nuw nsw i32 %conv4, 1
  %add31 = add nuw nsw i32 %conv6, 2
  %add32 = add nuw nsw i32 %add31, %conv2
  %add33 = add nuw nsw i32 %add32, %mul30
  %10 = lshr i32 %add33, 2
  %conv35 = trunc i32 %10 to i8
  %arrayidx36 = getelementptr inbounds i8, i8* %src, i32 96
  store i8 %conv35, i8* %arrayidx36, align 1, !tbaa !2
  %arrayidx37 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv35, i8* %arrayidx37, align 1, !tbaa !2
  %add38 = add nuw nsw i32 %conv4, 1
  %add39 = add nuw nsw i32 %add38, %conv6
  %11 = lshr i32 %add39, 1
  %conv41 = trunc i32 %11 to i8
  %arrayidx42 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv41, i8* %arrayidx42, align 1, !tbaa !2
  %arrayidx43 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv41, i8* %arrayidx43, align 1, !tbaa !2
  %mul44 = shl nuw nsw i32 %conv6, 1
  %add46 = add nuw nsw i32 %add18, %mul44
  %add47 = add nuw nsw i32 %add46, %conv8
  %12 = lshr i32 %add47, 2
  %conv49 = trunc i32 %12 to i8
  %arrayidx50 = getelementptr inbounds i8, i8* %src, i32 97
  store i8 %conv49, i8* %arrayidx50, align 1, !tbaa !2
  %arrayidx51 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv49, i8* %arrayidx51, align 1, !tbaa !2
  %add52 = add nuw nsw i32 %conv6, 1
  %add53 = add nuw nsw i32 %add52, %conv8
  %13 = lshr i32 %add53, 1
  %conv55 = trunc i32 %13 to i8
  %arrayidx56 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %conv55, i8* %arrayidx56, align 1, !tbaa !2
  %arrayidx57 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv55, i8* %arrayidx57, align 1, !tbaa !2
  %mul58 = shl nuw nsw i32 %conv8, 1
  %add60 = add nuw nsw i32 %add31, %mul58
  %add61 = add nuw nsw i32 %add60, %conv10
  %14 = lshr i32 %add61, 2
  %conv63 = trunc i32 %14 to i8
  %arrayidx64 = getelementptr inbounds i8, i8* %src, i32 98
  store i8 %conv63, i8* %arrayidx64, align 1, !tbaa !2
  %arrayidx65 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv63, i8* %arrayidx65, align 1, !tbaa !2
  %add66 = add nuw nsw i32 %conv8, 1
  %add67 = add nuw nsw i32 %add66, %conv10
  %15 = lshr i32 %add67, 1
  %conv69 = trunc i32 %15 to i8
  %arrayidx70 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %conv69, i8* %arrayidx70, align 1, !tbaa !2
  %mul71 = shl nuw nsw i32 %conv10, 1
  %add72 = add nuw nsw i32 %conv8, 2
  %add73 = add nuw nsw i32 %add72, %mul71
  %add74 = add nuw nsw i32 %add73, %conv12
  %16 = lshr i32 %add74, 2
  %conv76 = trunc i32 %16 to i8
  %arrayidx77 = getelementptr inbounds i8, i8* %src, i32 99
  store i8 %conv76, i8* %arrayidx77, align 1, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_4x4_hu_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx5, align 1, !tbaa !2
  %conv6 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv2, 1
  %add7 = add nuw nsw i32 %add, %conv
  %4 = lshr i32 %add7, 1
  %conv8 = trunc i32 %4 to i8
  store i8 %conv8, i8* %src, align 1, !tbaa !2
  %mul = shl nuw nsw i32 %conv2, 1
  %add10 = add nuw nsw i32 %conv4, 2
  %add11 = add nuw nsw i32 %add10, %conv
  %add12 = add nuw nsw i32 %add11, %mul
  %5 = lshr i32 %add12, 2
  %conv14 = trunc i32 %5 to i8
  %arrayidx15 = getelementptr inbounds i8, i8* %src, i32 1
  store i8 %conv14, i8* %arrayidx15, align 1, !tbaa !2
  %add17 = add nuw nsw i32 %add, %conv4
  %6 = lshr i32 %add17, 1
  %conv19 = trunc i32 %6 to i8
  %arrayidx20 = getelementptr inbounds i8, i8* %src, i32 32
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !2
  %arrayidx21 = getelementptr inbounds i8, i8* %src, i32 2
  store i8 %conv19, i8* %arrayidx21, align 1, !tbaa !2
  %mul22 = shl nuw nsw i32 %conv4, 1
  %add23 = add nuw nsw i32 %conv6, 2
  %add24 = add nuw nsw i32 %add23, %conv2
  %add25 = add nuw nsw i32 %add24, %mul22
  %7 = lshr i32 %add25, 2
  %conv27 = trunc i32 %7 to i8
  %arrayidx28 = getelementptr inbounds i8, i8* %src, i32 33
  store i8 %conv27, i8* %arrayidx28, align 1, !tbaa !2
  %arrayidx29 = getelementptr inbounds i8, i8* %src, i32 3
  store i8 %conv27, i8* %arrayidx29, align 1, !tbaa !2
  %add30 = add nuw nsw i32 %conv4, 1
  %add31 = add nuw nsw i32 %add30, %conv6
  %8 = lshr i32 %add31, 1
  %conv33 = trunc i32 %8 to i8
  %arrayidx34 = getelementptr inbounds i8, i8* %src, i32 64
  store i8 %conv33, i8* %arrayidx34, align 1, !tbaa !2
  %arrayidx35 = getelementptr inbounds i8, i8* %src, i32 34
  store i8 %conv33, i8* %arrayidx35, align 1, !tbaa !2
  %mul36 = shl nuw nsw i32 %conv6, 1
  %add38 = add nuw nsw i32 %add10, %conv6
  %add39 = add nuw nsw i32 %add38, %mul36
  %9 = lshr i32 %add39, 2
  %conv41 = trunc i32 %9 to i8
  %arrayidx42 = getelementptr inbounds i8, i8* %src, i32 65
  store i8 %conv41, i8* %arrayidx42, align 1, !tbaa !2
  %arrayidx43 = getelementptr inbounds i8, i8* %src, i32 35
  store i8 %conv41, i8* %arrayidx43, align 1, !tbaa !2
  %arrayidx47 = getelementptr inbounds i8, i8* %src, i32 66
  store i8 %3, i8* %arrayidx47, align 1, !tbaa !2
  %arrayidx48 = getelementptr inbounds i8, i8* %src, i32 96
  %arrayidx50 = getelementptr inbounds i8, i8* %src, i32 67
  store i8 %3, i8* %arrayidx50, align 1, !tbaa !2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(4) %arrayidx48, i8 %3, i64 4, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_4x4_dc_left_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 31
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 63
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx6 = getelementptr inbounds i8, i8* %src, i32 95
  %3 = load i8, i8* %arrayidx6, align 1, !tbaa !2
  %conv7 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  %add5 = add nuw nsw i32 %add, %conv2
  %add8 = add nuw nsw i32 %add5, %conv4
  %add9 = add nuw nsw i32 %add8, %conv7
  %4 = lshr i32 %add9, 2
  %mul = mul nuw i32 %4, 16843009
  %arrayidx10 = getelementptr inbounds i8, i8* %src, i32 96
  %i = bitcast i8* %arrayidx10 to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8, i8* %src, i32 64
  %i12 = bitcast i8* %arrayidx11 to i32*
  store i32 %mul, i32* %i12, align 4, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8, i8* %src, i32 32
  %i14 = bitcast i8* %arrayidx13 to i32*
  store i32 %mul, i32* %i14, align 4, !tbaa !2
  %i16 = bitcast i8* %src to i32*
  store i32 %mul, i32* %i16, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal void @predict_4x4_dc_top_c(i8* nocapture %src) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 -32
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 -31
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !2
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 -30
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !2
  %conv4 = zext i8 %2 to i32
  %arrayidx6 = getelementptr inbounds i8, i8* %src, i32 -29
  %3 = load i8, i8* %arrayidx6, align 1, !tbaa !2
  %conv7 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  %add5 = add nuw nsw i32 %add, %conv2
  %add8 = add nuw nsw i32 %add5, %conv4
  %add9 = add nuw nsw i32 %add8, %conv7
  %4 = lshr i32 %add9, 2
  %mul = mul nuw i32 %4, 16843009
  %arrayidx10 = getelementptr inbounds i8, i8* %src, i32 96
  %i = bitcast i8* %arrayidx10 to i32*
  store i32 %mul, i32* %i, align 4, !tbaa !2
  %arrayidx11 = getelementptr inbounds i8, i8* %src, i32 64
  %i12 = bitcast i8* %arrayidx11 to i32*
  store i32 %mul, i32* %i12, align 4, !tbaa !2
  %arrayidx13 = getelementptr inbounds i8, i8* %src, i32 32
  %i14 = bitcast i8* %arrayidx13 to i32*
  store i32 %mul, i32* %i14, align 4, !tbaa !2
  %i16 = bitcast i8* %src to i32*
  store i32 %mul, i32* %i16, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @predict_4x4_dc_128_c(i8* nocapture %src) #1 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %src, i32 96
  %i = bitcast i8* %arrayidx to i32*
  store i32 -2139062144, i32* %i, align 4, !tbaa !2
  %arrayidx1 = getelementptr inbounds i8, i8* %src, i32 64
  %i2 = bitcast i8* %arrayidx1 to i32*
  store i32 -2139062144, i32* %i2, align 4, !tbaa !2
  %arrayidx3 = getelementptr inbounds i8, i8* %src, i32 32
  %i4 = bitcast i8* %arrayidx3 to i32*
  store i32 -2139062144, i32* %i4, align 4, !tbaa !2
  %i6 = bitcast i8* %src to i32*
  store i32 -2139062144, i32* %i6, align 4, !tbaa !2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
