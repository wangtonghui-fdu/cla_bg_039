; ModuleID = 'common/rectangle.c'
source_filename = "common/rectangle.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@x264_8_cache_mv_func_table = hidden local_unnamed_addr global [10 x void (i8*, i32)*] [void (i8*, i32)* @macroblock_cache_mv_1_1, void (i8*, i32)* @macroblock_cache_mv_2_1, void (i8*, i32)* @macroblock_cache_mv_1_2, void (i8*, i32)* @macroblock_cache_mv_2_2, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_mv_4_2, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_mv_2_4, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_mv_4_4], align 4
@x264_8_cache_mvd_func_table = hidden local_unnamed_addr global [10 x void (i8*, i32)*] [void (i8*, i32)* @macroblock_cache_mvd_1_1, void (i8*, i32)* @macroblock_cache_mvd_2_1, void (i8*, i32)* @macroblock_cache_mvd_1_2, void (i8*, i32)* @macroblock_cache_mvd_2_2, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_mvd_4_2, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_mvd_2_4, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_mvd_4_4], align 4
@x264_8_cache_ref_func_table = hidden local_unnamed_addr global [10 x void (i8*, i32)*] [void (i8*, i32)* @macroblock_cache_ref_1_1, void (i8*, i32)* @macroblock_cache_ref_2_1, void (i8*, i32)* @macroblock_cache_ref_1_2, void (i8*, i32)* @macroblock_cache_ref_2_2, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_ref_4_2, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_ref_2_4, void (i8*, i32)* null, void (i8*, i32)* @macroblock_cache_ref_4_4], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"common/rectangle.h\00", align 1
@__PRETTY_FUNCTION__.x264_macroblock_cache_rect = private unnamed_addr constant [65 x i8] c"void x264_macroblock_cache_rect(void *, int, int, int, uint32_t)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mv_1_1(i8* nocapture %target, i32 %val) #0 {
entry:
  %i42.i = bitcast i8* %target to i32*
  store i32 %val, i32* %i42.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mv_2_1(i8* nocapture %target, i32 %val) #0 {
entry:
  %i67.i = bitcast i8* %target to i32*
  store i32 %val, i32* %i67.i, align 4, !tbaa !2
  %add.ptr70.i = getelementptr inbounds i8, i8* %target, i32 4
  %i71.i = bitcast i8* %add.ptr70.i to i32*
  store i32 %val, i32* %i71.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mv_1_2(i8* nocapture %target, i32 %val) #0 {
entry:
  %i42.i = bitcast i8* %target to i32*
  store i32 %val, i32* %i42.i, align 4, !tbaa !2
  %add.ptr48.i = getelementptr inbounds i8, i8* %target, i32 32
  %i49.i = bitcast i8* %add.ptr48.i to i32*
  store i32 %val, i32* %i49.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mv_2_2(i8* nocapture %target, i32 %val) #0 {
entry:
  %i67.i = bitcast i8* %target to i32*
  store i32 %val, i32* %i67.i, align 4, !tbaa !2
  %add.ptr70.i = getelementptr inbounds i8, i8* %target, i32 4
  %i71.i = bitcast i8* %add.ptr70.i to i32*
  store i32 %val, i32* %i71.i, align 4, !tbaa !2
  %add.ptr77.i = getelementptr inbounds i8, i8* %target, i32 32
  %i79.i = bitcast i8* %add.ptr77.i to i32*
  store i32 %val, i32* %i79.i, align 4, !tbaa !2
  %add.ptr82.i = getelementptr inbounds i8, i8* %target, i32 36
  %i83.i = bitcast i8* %add.ptr82.i to i32*
  store i32 %val, i32* %i83.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mv_4_2(i8* nocapture %target, i32 %val) #0 {
entry:
  %i114.i = bitcast i8* %target to i32*
  store i32 %val, i32* %i114.i, align 4, !tbaa !2
  %add.ptr115.i = getelementptr inbounds i8, i8* %target, i32 4
  %i116.i = bitcast i8* %add.ptr115.i to i32*
  store i32 %val, i32* %i116.i, align 4, !tbaa !2
  %add.ptr117.i = getelementptr inbounds i8, i8* %target, i32 8
  %i118.i = bitcast i8* %add.ptr117.i to i32*
  store i32 %val, i32* %i118.i, align 4, !tbaa !2
  %add.ptr119.i = getelementptr inbounds i8, i8* %target, i32 12
  %i120.i = bitcast i8* %add.ptr119.i to i32*
  store i32 %val, i32* %i120.i, align 4, !tbaa !2
  %add.ptr121.i = getelementptr inbounds i8, i8* %target, i32 32
  %i114.i.1 = bitcast i8* %add.ptr121.i to i32*
  store i32 %val, i32* %i114.i.1, align 4, !tbaa !2
  %add.ptr115.i.1 = getelementptr inbounds i8, i8* %target, i32 36
  %i116.i.1 = bitcast i8* %add.ptr115.i.1 to i32*
  store i32 %val, i32* %i116.i.1, align 4, !tbaa !2
  %add.ptr117.i.1 = getelementptr inbounds i8, i8* %target, i32 40
  %i118.i.1 = bitcast i8* %add.ptr117.i.1 to i32*
  store i32 %val, i32* %i118.i.1, align 4, !tbaa !2
  %add.ptr119.i.1 = getelementptr inbounds i8, i8* %target, i32 44
  %i120.i.1 = bitcast i8* %add.ptr119.i.1 to i32*
  store i32 %val, i32* %i120.i.1, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mv_2_4(i8* nocapture %target, i32 %val) #0 {
entry:
  %i67.i = bitcast i8* %target to i32*
  store i32 %val, i32* %i67.i, align 4, !tbaa !2
  %add.ptr70.i = getelementptr inbounds i8, i8* %target, i32 4
  %i71.i = bitcast i8* %add.ptr70.i to i32*
  store i32 %val, i32* %i71.i, align 4, !tbaa !2
  %add.ptr77.i = getelementptr inbounds i8, i8* %target, i32 32
  %i79.i = bitcast i8* %add.ptr77.i to i32*
  store i32 %val, i32* %i79.i, align 4, !tbaa !2
  %add.ptr82.i = getelementptr inbounds i8, i8* %target, i32 36
  %i83.i = bitcast i8* %add.ptr82.i to i32*
  store i32 %val, i32* %i83.i, align 4, !tbaa !2
  %add.ptr89.i = getelementptr inbounds i8, i8* %target, i32 64
  %i91.i = bitcast i8* %add.ptr89.i to i32*
  store i32 %val, i32* %i91.i, align 4, !tbaa !2
  %add.ptr94.i = getelementptr inbounds i8, i8* %target, i32 68
  %i95.i = bitcast i8* %add.ptr94.i to i32*
  store i32 %val, i32* %i95.i, align 4, !tbaa !2
  %add.ptr97.i = getelementptr inbounds i8, i8* %target, i32 96
  %i99.i = bitcast i8* %add.ptr97.i to i32*
  store i32 %val, i32* %i99.i, align 4, !tbaa !2
  %add.ptr102.i = getelementptr inbounds i8, i8* %target, i32 100
  %i103.i = bitcast i8* %add.ptr102.i to i32*
  store i32 %val, i32* %i103.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mv_4_4(i8* nocapture %target, i32 %val) #0 {
entry:
  %i114.i = bitcast i8* %target to i32*
  store i32 %val, i32* %i114.i, align 4, !tbaa !2
  %add.ptr115.i = getelementptr inbounds i8, i8* %target, i32 4
  %i116.i = bitcast i8* %add.ptr115.i to i32*
  store i32 %val, i32* %i116.i, align 4, !tbaa !2
  %add.ptr117.i = getelementptr inbounds i8, i8* %target, i32 8
  %i118.i = bitcast i8* %add.ptr117.i to i32*
  store i32 %val, i32* %i118.i, align 4, !tbaa !2
  %add.ptr119.i = getelementptr inbounds i8, i8* %target, i32 12
  %i120.i = bitcast i8* %add.ptr119.i to i32*
  store i32 %val, i32* %i120.i, align 4, !tbaa !2
  %add.ptr121.i = getelementptr inbounds i8, i8* %target, i32 32
  %i114.i.1 = bitcast i8* %add.ptr121.i to i32*
  store i32 %val, i32* %i114.i.1, align 4, !tbaa !2
  %add.ptr115.i.1 = getelementptr inbounds i8, i8* %target, i32 36
  %i116.i.1 = bitcast i8* %add.ptr115.i.1 to i32*
  store i32 %val, i32* %i116.i.1, align 4, !tbaa !2
  %add.ptr117.i.1 = getelementptr inbounds i8, i8* %target, i32 40
  %i118.i.1 = bitcast i8* %add.ptr117.i.1 to i32*
  store i32 %val, i32* %i118.i.1, align 4, !tbaa !2
  %add.ptr119.i.1 = getelementptr inbounds i8, i8* %target, i32 44
  %i120.i.1 = bitcast i8* %add.ptr119.i.1 to i32*
  store i32 %val, i32* %i120.i.1, align 4, !tbaa !2
  %add.ptr121.i.1 = getelementptr inbounds i8, i8* %target, i32 64
  %i114.i.2 = bitcast i8* %add.ptr121.i.1 to i32*
  store i32 %val, i32* %i114.i.2, align 4, !tbaa !2
  %add.ptr115.i.2 = getelementptr inbounds i8, i8* %target, i32 68
  %i116.i.2 = bitcast i8* %add.ptr115.i.2 to i32*
  store i32 %val, i32* %i116.i.2, align 4, !tbaa !2
  %add.ptr117.i.2 = getelementptr inbounds i8, i8* %target, i32 72
  %i118.i.2 = bitcast i8* %add.ptr117.i.2 to i32*
  store i32 %val, i32* %i118.i.2, align 4, !tbaa !2
  %add.ptr119.i.2 = getelementptr inbounds i8, i8* %target, i32 76
  %i120.i.2 = bitcast i8* %add.ptr119.i.2 to i32*
  store i32 %val, i32* %i120.i.2, align 4, !tbaa !2
  %add.ptr121.i.2 = getelementptr inbounds i8, i8* %target, i32 96
  %i114.i.3 = bitcast i8* %add.ptr121.i.2 to i32*
  store i32 %val, i32* %i114.i.3, align 4, !tbaa !2
  %add.ptr115.i.3 = getelementptr inbounds i8, i8* %target, i32 100
  %i116.i.3 = bitcast i8* %add.ptr115.i.3 to i32*
  store i32 %val, i32* %i116.i.3, align 4, !tbaa !2
  %add.ptr117.i.3 = getelementptr inbounds i8, i8* %target, i32 104
  %i118.i.3 = bitcast i8* %add.ptr117.i.3 to i32*
  store i32 %val, i32* %i118.i.3, align 4, !tbaa !2
  %add.ptr119.i.3 = getelementptr inbounds i8, i8* %target, i32 108
  %i120.i.3 = bitcast i8* %add.ptr119.i.3 to i32*
  store i32 %val, i32* %i120.i.3, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mvd_1_1(i8* nocapture %target, i32 %val) #0 {
entry:
  %conv.i = trunc i32 %val to i16
  %i.i = bitcast i8* %target to i16*
  store i16 %conv.i, i16* %i.i, align 2, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mvd_2_1(i8* nocapture %target, i32 %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  %i42.i = bitcast i8* %target to i32*
  store i32 %cond14.i, i32* %i42.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mvd_1_2(i8* nocapture %target, i32 %val) #0 {
entry:
  %conv.i = trunc i32 %val to i16
  %i.i = bitcast i8* %target to i16*
  store i16 %conv.i, i16* %i.i, align 2, !tbaa !2
  %add.ptr25.i = getelementptr inbounds i8, i8* %target, i32 16
  %i26.i = bitcast i8* %add.ptr25.i to i16*
  store i16 %conv.i, i16* %i26.i, align 2, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mvd_2_2(i8* nocapture %target, i32 %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  %i42.i = bitcast i8* %target to i32*
  store i32 %cond14.i, i32* %i42.i, align 4, !tbaa !2
  %add.ptr48.i = getelementptr inbounds i8, i8* %target, i32 16
  %i49.i = bitcast i8* %add.ptr48.i to i32*
  store i32 %cond14.i, i32* %i49.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mvd_4_2(i8* nocapture %target, i32 %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  %i67.i = bitcast i8* %target to i32*
  store i32 %cond14.i, i32* %i67.i, align 4, !tbaa !2
  %add.ptr70.i = getelementptr inbounds i8, i8* %target, i32 4
  %i71.i = bitcast i8* %add.ptr70.i to i32*
  store i32 %cond14.i, i32* %i71.i, align 4, !tbaa !2
  %add.ptr77.i = getelementptr inbounds i8, i8* %target, i32 16
  %i79.i = bitcast i8* %add.ptr77.i to i32*
  store i32 %cond14.i, i32* %i79.i, align 4, !tbaa !2
  %add.ptr82.i = getelementptr inbounds i8, i8* %target, i32 20
  %i83.i = bitcast i8* %add.ptr82.i to i32*
  store i32 %cond14.i, i32* %i83.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mvd_2_4(i8* nocapture %target, i32 %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  %i42.i = bitcast i8* %target to i32*
  store i32 %cond14.i, i32* %i42.i, align 4, !tbaa !2
  %add.ptr48.i = getelementptr inbounds i8, i8* %target, i32 16
  %i49.i = bitcast i8* %add.ptr48.i to i32*
  store i32 %cond14.i, i32* %i49.i, align 4, !tbaa !2
  %add.ptr55.i = getelementptr inbounds i8, i8* %target, i32 32
  %i56.i = bitcast i8* %add.ptr55.i to i32*
  store i32 %cond14.i, i32* %i56.i, align 4, !tbaa !2
  %add.ptr58.i = getelementptr inbounds i8, i8* %target, i32 48
  %i59.i = bitcast i8* %add.ptr58.i to i32*
  store i32 %cond14.i, i32* %i59.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_mvd_4_4(i8* nocapture %target, i32 %val) #0 {
entry:
  %cond14.i = mul i32 %val, 65537
  %i67.i = bitcast i8* %target to i32*
  store i32 %cond14.i, i32* %i67.i, align 4, !tbaa !2
  %add.ptr70.i = getelementptr inbounds i8, i8* %target, i32 4
  %i71.i = bitcast i8* %add.ptr70.i to i32*
  store i32 %cond14.i, i32* %i71.i, align 4, !tbaa !2
  %add.ptr77.i = getelementptr inbounds i8, i8* %target, i32 16
  %i79.i = bitcast i8* %add.ptr77.i to i32*
  store i32 %cond14.i, i32* %i79.i, align 4, !tbaa !2
  %add.ptr82.i = getelementptr inbounds i8, i8* %target, i32 20
  %i83.i = bitcast i8* %add.ptr82.i to i32*
  store i32 %cond14.i, i32* %i83.i, align 4, !tbaa !2
  %add.ptr89.i = getelementptr inbounds i8, i8* %target, i32 32
  %i91.i = bitcast i8* %add.ptr89.i to i32*
  store i32 %cond14.i, i32* %i91.i, align 4, !tbaa !2
  %add.ptr94.i = getelementptr inbounds i8, i8* %target, i32 36
  %i95.i = bitcast i8* %add.ptr94.i to i32*
  store i32 %cond14.i, i32* %i95.i, align 4, !tbaa !2
  %add.ptr97.i = getelementptr inbounds i8, i8* %target, i32 48
  %i99.i = bitcast i8* %add.ptr97.i to i32*
  store i32 %cond14.i, i32* %i99.i, align 4, !tbaa !2
  %add.ptr102.i = getelementptr inbounds i8, i8* %target, i32 52
  %i103.i = bitcast i8* %add.ptr102.i to i32*
  store i32 %cond14.i, i32* %i103.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind
define internal void @macroblock_cache_ref_1_1(i8* nocapture readnone %target, i32 %val) #1 {
entry:
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.x264_macroblock_cache_rect, i32 0, i32 0)) #3
  unreachable
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_ref_2_1(i8* nocapture %target, i32 %val) #0 {
entry:
  %0 = trunc i32 %val to i16
  %conv.i = mul i16 %0, 257
  %i.i = bitcast i8* %target to i16*
  store i16 %conv.i, i16* %i.i, align 2, !tbaa !2
  ret void
}

; Function Attrs: nounwind
define internal void @macroblock_cache_ref_1_2(i8* nocapture readnone %target, i32 %val) #1 {
entry:
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.x264_macroblock_cache_rect, i32 0, i32 0)) #3
  unreachable
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_ref_2_2(i8* nocapture %target, i32 %val) #0 {
entry:
  %0 = trunc i32 %val to i16
  %conv.i = mul i16 %0, 257
  %i.i = bitcast i8* %target to i16*
  store i16 %conv.i, i16* %i.i, align 2, !tbaa !2
  %add.ptr25.i = getelementptr inbounds i8, i8* %target, i32 8
  %i26.i = bitcast i8* %add.ptr25.i to i16*
  store i16 %conv.i, i16* %i26.i, align 2, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_ref_4_2(i8* nocapture %target, i32 %val) #0 {
entry:
  %cond14.i = mul i32 %val, 16843009
  %i42.i = bitcast i8* %target to i32*
  store i32 %cond14.i, i32* %i42.i, align 4, !tbaa !2
  %add.ptr48.i = getelementptr inbounds i8, i8* %target, i32 8
  %i49.i = bitcast i8* %add.ptr48.i to i32*
  store i32 %cond14.i, i32* %i49.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_ref_2_4(i8* nocapture %target, i32 %val) #0 {
entry:
  %0 = trunc i32 %val to i16
  %conv.i = mul i16 %0, 257
  %i.i = bitcast i8* %target to i16*
  store i16 %conv.i, i16* %i.i, align 2, !tbaa !2
  %add.ptr25.i = getelementptr inbounds i8, i8* %target, i32 8
  %i26.i = bitcast i8* %add.ptr25.i to i16*
  store i16 %conv.i, i16* %i26.i, align 2, !tbaa !2
  %add.ptr32.i = getelementptr inbounds i8, i8* %target, i32 16
  %i33.i = bitcast i8* %add.ptr32.i to i16*
  store i16 %conv.i, i16* %i33.i, align 2, !tbaa !2
  %add.ptr35.i = getelementptr inbounds i8, i8* %target, i32 24
  %i36.i = bitcast i8* %add.ptr35.i to i16*
  store i16 %conv.i, i16* %i36.i, align 2, !tbaa !2
  ret void
}

; Function Attrs: nofree norecurse nounwind writeonly
define internal void @macroblock_cache_ref_4_4(i8* nocapture %target, i32 %val) #0 {
entry:
  %cond14.i = mul i32 %val, 16843009
  %i42.i = bitcast i8* %target to i32*
  store i32 %cond14.i, i32* %i42.i, align 4, !tbaa !2
  %add.ptr48.i = getelementptr inbounds i8, i8* %target, i32 8
  %i49.i = bitcast i8* %add.ptr48.i to i32*
  store i32 %cond14.i, i32* %i49.i, align 4, !tbaa !2
  %add.ptr55.i = getelementptr inbounds i8, i8* %target, i32 16
  %i56.i = bitcast i8* %add.ptr55.i to i32*
  store i32 %cond14.i, i32* %i56.i, align 4, !tbaa !2
  %add.ptr58.i = getelementptr inbounds i8, i8* %target, i32 24
  %i59.i = bitcast i8* %add.ptr58.i to i32*
  store i32 %cond14.i, i32* %i59.i, align 4, !tbaa !2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #2

attributes #0 = { nofree norecurse nounwind writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
