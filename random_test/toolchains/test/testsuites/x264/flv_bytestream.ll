; ModuleID = 'output/flv_bytestream.c'
source_filename = "output/flv_bytestream.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.flv_buffer = type { i8*, i32, i32, %struct._IO_FILE*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: norecurse nounwind readnone
define hidden i64 @flv_dbl2int(double %value) local_unnamed_addr #0 {
entry:
  %0 = bitcast double %value to i64
  ret i64 %0
}

; Function Attrs: nounwind
define hidden void @flv_put_byte(%struct.flv_buffer* nocapture %c, i8 zeroext %b) local_unnamed_addr #1 {
entry:
  %d_cur.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %0 = load i32, i32* %d_cur.i, align 4, !tbaa !2
  %add.i = add i32 %0, 1
  %d_max.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 2
  %1 = load i32, i32* %d_max.i, align 8, !tbaa !9
  %cmp.i = icmp ugt i32 %add.i, %1
  br i1 %cmp.i, label %while.cond.i, label %entry.if.end7_crit_edge.i

entry.if.end7_crit_edge.i:                        ; preds = %entry
  %data8.phi.trans.insert.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i = load i8*, i8** %data8.phi.trans.insert.i, align 8, !tbaa !10
  br label %if.end7.i

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %dn.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 16, %entry ]
  %cmp1.i = icmp ugt i32 %add.i, %dn.0.i
  %shl.i = shl i32 %dn.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data2.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %2 = load i8*, i8** %data2.i, align 8, !tbaa !10
  %call.i = tail call i8* @realloc(i8* %2, i32 %dn.0.i) #10
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %flv_append_data.exit, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store i8* %call.i, i8** %data2.i, align 8, !tbaa !10
  store i32 %dn.0.i, i32* %d_max.i, align 8, !tbaa !9
  %.pre29.i = load i32, i32* %d_cur.i, align 4, !tbaa !2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i ], [ %.pre29.i, %if.end.i ]
  %4 = phi i8* [ %.pre.i, %entry.if.end7_crit_edge.i ], [ %call.i, %if.end.i ]
  %add.ptr.i = getelementptr inbounds i8, i8* %4, i32 %3
  store i8 %b, i8* %add.ptr.i, align 1
  store i32 %add.i, i32* %d_cur.i, align 4, !tbaa !2
  br label %flv_append_data.exit

flv_append_data.exit:                             ; preds = %while.end.i, %if.end7.i
  ret void
}

; Function Attrs: nounwind
define hidden i32 @flv_append_data(%struct.flv_buffer* nocapture %c, i8* nocapture readonly %data, i32 %size) local_unnamed_addr #1 {
entry:
  %d_cur = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %0 = load i32, i32* %d_cur, align 4, !tbaa !2
  %add = add i32 %0, %size
  %d_max = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 2
  %1 = load i32, i32* %d_max, align 8, !tbaa !9
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %while.cond, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  %data8.phi.trans.insert = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre = load i8*, i8** %data8.phi.trans.insert, align 8, !tbaa !10
  br label %if.end7

while.cond:                                       ; preds = %entry, %while.cond
  %dn.0 = phi i32 [ %shl, %while.cond ], [ 16, %entry ]
  %cmp1 = icmp ugt i32 %add, %dn.0
  %shl = shl i32 %dn.0, 1
  br i1 %cmp1, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %data2 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %2 = load i8*, i8** %data2, align 8, !tbaa !10
  %call = tail call i8* @realloc(i8* %2, i32 %dn.0) #10
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup11, label %if.end

if.end:                                           ; preds = %while.end
  store i8* %call, i8** %data2, align 8, !tbaa !10
  store i32 %dn.0, i32* %d_max, align 8, !tbaa !9
  %.pre29 = load i32, i32* %d_cur, align 4, !tbaa !2
  br label %if.end7

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.end
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge ], [ %.pre29, %if.end ]
  %4 = phi i8* [ %.pre, %entry.if.end7_crit_edge ], [ %call, %if.end ]
  %add.ptr = getelementptr inbounds i8, i8* %4, i32 %3
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr, i8* align 1 %data, i32 %size, i1 false)
  store i32 %add, i32* %d_cur, align 4, !tbaa !2
  br label %cleanup11

cleanup11:                                        ; preds = %while.end, %if.end7
  %retval.1 = phi i32 [ 0, %if.end7 ], [ -1, %while.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
define hidden void @flv_put_be32(%struct.flv_buffer* nocapture %c, i32 %val) local_unnamed_addr #1 {
entry:
  %shr = lshr i32 %val, 24
  %conv = trunc i32 %shr to i8
  %d_cur.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %0 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  %add.i.i = add i32 %0, 1
  %d_max.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 2
  %1 = load i32, i32* %d_max.i.i, align 8, !tbaa !9
  %cmp.i.i = icmp ugt i32 %add.i.i, %1
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %data8.phi.trans.insert.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i = load i8*, i8** %data8.phi.trans.insert.i.i, align 8, !tbaa !10
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data2.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %2 = load i8*, i8** %data2.i.i, align 8, !tbaa !10
  %call.i.i = tail call i8* @realloc(i8* %2, i32 %dn.0.i.i) #10
  %tobool.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool.i.i, label %while.end.i.i.flv_put_byte.exit_crit_edge, label %if.end.i.i

while.end.i.i.flv_put_byte.exit_crit_edge:        ; preds = %while.end.i.i
  %.pre = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i, i8** %data2.i.i, align 8, !tbaa !10
  store i32 %dn.0.i.i, i32* %d_max.i.i, align 8, !tbaa !9
  %.pre29.i.i = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i.i ], [ %.pre29.i.i, %if.end.i.i ]
  %4 = phi i8* [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i32 %3
  store i8 %conv, i8* %add.ptr.i.i, align 1
  store i32 %add.i.i, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit

flv_put_byte.exit:                                ; preds = %while.end.i.i.flv_put_byte.exit_crit_edge, %if.end7.i.i
  %5 = phi i32 [ %.pre, %while.end.i.i.flv_put_byte.exit_crit_edge ], [ %add.i.i, %if.end7.i.i ]
  %shr1 = lshr i32 %val, 16
  %conv2 = trunc i32 %shr1 to i8
  %add.i.i13 = add i32 %5, 1
  %6 = load i32, i32* %d_max.i.i, align 8, !tbaa !9
  %cmp.i.i15 = icmp ugt i32 %add.i.i13, %6
  br i1 %cmp.i.i15, label %while.cond.i.i22, label %entry.if.end7_crit_edge.i.i18

entry.if.end7_crit_edge.i.i18:                    ; preds = %flv_put_byte.exit
  %data8.phi.trans.insert.i.i16 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i17 = load i8*, i8** %data8.phi.trans.insert.i.i16, align 8, !tbaa !10
  br label %if.end7.i.i30

while.cond.i.i22:                                 ; preds = %flv_put_byte.exit, %while.cond.i.i22
  %dn.0.i.i19 = phi i32 [ %shl.i.i21, %while.cond.i.i22 ], [ 16, %flv_put_byte.exit ]
  %cmp1.i.i20 = icmp ugt i32 %add.i.i13, %dn.0.i.i19
  %shl.i.i21 = shl i32 %dn.0.i.i19, 1
  br i1 %cmp1.i.i20, label %while.cond.i.i22, label %while.end.i.i26

while.end.i.i26:                                  ; preds = %while.cond.i.i22
  %data2.i.i23 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %7 = load i8*, i8** %data2.i.i23, align 8, !tbaa !10
  %call.i.i24 = tail call i8* @realloc(i8* %7, i32 %dn.0.i.i19) #10
  %tobool.i.i25 = icmp eq i8* %call.i.i24, null
  br i1 %tobool.i.i25, label %while.end.i.i26.flv_put_byte.exit31_crit_edge, label %if.end.i.i28

while.end.i.i26.flv_put_byte.exit31_crit_edge:    ; preds = %while.end.i.i26
  %.pre72 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit31

if.end.i.i28:                                     ; preds = %while.end.i.i26
  store i8* %call.i.i24, i8** %data2.i.i23, align 8, !tbaa !10
  store i32 %dn.0.i.i19, i32* %d_max.i.i, align 8, !tbaa !9
  %.pre29.i.i27 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %if.end7.i.i30

if.end7.i.i30:                                    ; preds = %if.end.i.i28, %entry.if.end7_crit_edge.i.i18
  %8 = phi i32 [ %5, %entry.if.end7_crit_edge.i.i18 ], [ %.pre29.i.i27, %if.end.i.i28 ]
  %9 = phi i8* [ %.pre.i.i17, %entry.if.end7_crit_edge.i.i18 ], [ %call.i.i24, %if.end.i.i28 ]
  %add.ptr.i.i29 = getelementptr inbounds i8, i8* %9, i32 %8
  store i8 %conv2, i8* %add.ptr.i.i29, align 1
  store i32 %add.i.i13, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit31

flv_put_byte.exit31:                              ; preds = %while.end.i.i26.flv_put_byte.exit31_crit_edge, %if.end7.i.i30
  %10 = phi i32 [ %.pre72, %while.end.i.i26.flv_put_byte.exit31_crit_edge ], [ %add.i.i13, %if.end7.i.i30 ]
  %shr3 = lshr i32 %val, 8
  %conv4 = trunc i32 %shr3 to i8
  %add.i.i33 = add i32 %10, 1
  %11 = load i32, i32* %d_max.i.i, align 8, !tbaa !9
  %cmp.i.i35 = icmp ugt i32 %add.i.i33, %11
  br i1 %cmp.i.i35, label %while.cond.i.i42, label %entry.if.end7_crit_edge.i.i38

entry.if.end7_crit_edge.i.i38:                    ; preds = %flv_put_byte.exit31
  %data8.phi.trans.insert.i.i36 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i37 = load i8*, i8** %data8.phi.trans.insert.i.i36, align 8, !tbaa !10
  br label %if.end7.i.i50

while.cond.i.i42:                                 ; preds = %flv_put_byte.exit31, %while.cond.i.i42
  %dn.0.i.i39 = phi i32 [ %shl.i.i41, %while.cond.i.i42 ], [ 16, %flv_put_byte.exit31 ]
  %cmp1.i.i40 = icmp ugt i32 %add.i.i33, %dn.0.i.i39
  %shl.i.i41 = shl i32 %dn.0.i.i39, 1
  br i1 %cmp1.i.i40, label %while.cond.i.i42, label %while.end.i.i46

while.end.i.i46:                                  ; preds = %while.cond.i.i42
  %data2.i.i43 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %12 = load i8*, i8** %data2.i.i43, align 8, !tbaa !10
  %call.i.i44 = tail call i8* @realloc(i8* %12, i32 %dn.0.i.i39) #10
  %tobool.i.i45 = icmp eq i8* %call.i.i44, null
  br i1 %tobool.i.i45, label %while.end.i.i46.flv_put_byte.exit51_crit_edge, label %if.end.i.i48

while.end.i.i46.flv_put_byte.exit51_crit_edge:    ; preds = %while.end.i.i46
  %.pre73 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit51

if.end.i.i48:                                     ; preds = %while.end.i.i46
  store i8* %call.i.i44, i8** %data2.i.i43, align 8, !tbaa !10
  store i32 %dn.0.i.i39, i32* %d_max.i.i, align 8, !tbaa !9
  %.pre29.i.i47 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %if.end7.i.i50

if.end7.i.i50:                                    ; preds = %if.end.i.i48, %entry.if.end7_crit_edge.i.i38
  %13 = phi i32 [ %10, %entry.if.end7_crit_edge.i.i38 ], [ %.pre29.i.i47, %if.end.i.i48 ]
  %14 = phi i8* [ %.pre.i.i37, %entry.if.end7_crit_edge.i.i38 ], [ %call.i.i44, %if.end.i.i48 ]
  %add.ptr.i.i49 = getelementptr inbounds i8, i8* %14, i32 %13
  store i8 %conv4, i8* %add.ptr.i.i49, align 1
  store i32 %add.i.i33, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit51

flv_put_byte.exit51:                              ; preds = %while.end.i.i46.flv_put_byte.exit51_crit_edge, %if.end7.i.i50
  %15 = phi i32 [ %.pre73, %while.end.i.i46.flv_put_byte.exit51_crit_edge ], [ %add.i.i33, %if.end7.i.i50 ]
  %conv5 = trunc i32 %val to i8
  %add.i.i53 = add i32 %15, 1
  %16 = load i32, i32* %d_max.i.i, align 8, !tbaa !9
  %cmp.i.i55 = icmp ugt i32 %add.i.i53, %16
  br i1 %cmp.i.i55, label %while.cond.i.i62, label %entry.if.end7_crit_edge.i.i58

entry.if.end7_crit_edge.i.i58:                    ; preds = %flv_put_byte.exit51
  %data8.phi.trans.insert.i.i56 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i57 = load i8*, i8** %data8.phi.trans.insert.i.i56, align 8, !tbaa !10
  br label %if.end7.i.i70

while.cond.i.i62:                                 ; preds = %flv_put_byte.exit51, %while.cond.i.i62
  %dn.0.i.i59 = phi i32 [ %shl.i.i61, %while.cond.i.i62 ], [ 16, %flv_put_byte.exit51 ]
  %cmp1.i.i60 = icmp ugt i32 %add.i.i53, %dn.0.i.i59
  %shl.i.i61 = shl i32 %dn.0.i.i59, 1
  br i1 %cmp1.i.i60, label %while.cond.i.i62, label %while.end.i.i66

while.end.i.i66:                                  ; preds = %while.cond.i.i62
  %data2.i.i63 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %17 = load i8*, i8** %data2.i.i63, align 8, !tbaa !10
  %call.i.i64 = tail call i8* @realloc(i8* %17, i32 %dn.0.i.i59) #10
  %tobool.i.i65 = icmp eq i8* %call.i.i64, null
  br i1 %tobool.i.i65, label %flv_put_byte.exit71, label %if.end.i.i68

if.end.i.i68:                                     ; preds = %while.end.i.i66
  store i8* %call.i.i64, i8** %data2.i.i63, align 8, !tbaa !10
  store i32 %dn.0.i.i59, i32* %d_max.i.i, align 8, !tbaa !9
  %.pre29.i.i67 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %if.end7.i.i70

if.end7.i.i70:                                    ; preds = %if.end.i.i68, %entry.if.end7_crit_edge.i.i58
  %18 = phi i32 [ %15, %entry.if.end7_crit_edge.i.i58 ], [ %.pre29.i.i67, %if.end.i.i68 ]
  %19 = phi i8* [ %.pre.i.i57, %entry.if.end7_crit_edge.i.i58 ], [ %call.i.i64, %if.end.i.i68 ]
  %add.ptr.i.i69 = getelementptr inbounds i8, i8* %19, i32 %18
  store i8 %conv5, i8* %add.ptr.i.i69, align 1
  store i32 %add.i.i53, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit71

flv_put_byte.exit71:                              ; preds = %while.end.i.i66, %if.end7.i.i70
  ret void
}

; Function Attrs: nounwind
define hidden void @flv_put_be64(%struct.flv_buffer* nocapture %c, i64 %val) local_unnamed_addr #1 {
entry:
  %shr = lshr i64 %val, 32
  %conv = trunc i64 %shr to i32
  tail call void @flv_put_be32(%struct.flv_buffer* %c, i32 %conv)
  %conv1 = trunc i64 %val to i32
  tail call void @flv_put_be32(%struct.flv_buffer* %c, i32 %conv1)
  ret void
}

; Function Attrs: nounwind
define hidden void @flv_put_be16(%struct.flv_buffer* nocapture %c, i16 zeroext %val) local_unnamed_addr #1 {
entry:
  %0 = lshr i16 %val, 8
  %conv1 = trunc i16 %0 to i8
  %d_cur.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %1 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  %add.i.i = add i32 %1, 1
  %d_max.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 2
  %2 = load i32, i32* %d_max.i.i, align 8, !tbaa !9
  %cmp.i.i = icmp ugt i32 %add.i.i, %2
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %data8.phi.trans.insert.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i = load i8*, i8** %data8.phi.trans.insert.i.i, align 8, !tbaa !10
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data2.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %3 = load i8*, i8** %data2.i.i, align 8, !tbaa !10
  %call.i.i = tail call i8* @realloc(i8* %3, i32 %dn.0.i.i) #10
  %tobool.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool.i.i, label %while.end.i.i.flv_put_byte.exit_crit_edge, label %if.end.i.i

while.end.i.i.flv_put_byte.exit_crit_edge:        ; preds = %while.end.i.i
  %.pre = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i, i8** %data2.i.i, align 8, !tbaa !10
  store i32 %dn.0.i.i, i32* %d_max.i.i, align 8, !tbaa !9
  %.pre29.i.i = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i ], [ %.pre29.i.i, %if.end.i.i ]
  %5 = phi i8* [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %5, i32 %4
  store i8 %conv1, i8* %add.ptr.i.i, align 1
  store i32 %add.i.i, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit

flv_put_byte.exit:                                ; preds = %while.end.i.i.flv_put_byte.exit_crit_edge, %if.end7.i.i
  %6 = phi i32 [ %.pre, %while.end.i.i.flv_put_byte.exit_crit_edge ], [ %add.i.i, %if.end7.i.i ]
  %conv2 = trunc i16 %val to i8
  %add.i.i6 = add i32 %6, 1
  %7 = load i32, i32* %d_max.i.i, align 8, !tbaa !9
  %cmp.i.i8 = icmp ugt i32 %add.i.i6, %7
  br i1 %cmp.i.i8, label %while.cond.i.i15, label %entry.if.end7_crit_edge.i.i11

entry.if.end7_crit_edge.i.i11:                    ; preds = %flv_put_byte.exit
  %data8.phi.trans.insert.i.i9 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i10 = load i8*, i8** %data8.phi.trans.insert.i.i9, align 8, !tbaa !10
  br label %if.end7.i.i23

while.cond.i.i15:                                 ; preds = %flv_put_byte.exit, %while.cond.i.i15
  %dn.0.i.i12 = phi i32 [ %shl.i.i14, %while.cond.i.i15 ], [ 16, %flv_put_byte.exit ]
  %cmp1.i.i13 = icmp ugt i32 %add.i.i6, %dn.0.i.i12
  %shl.i.i14 = shl i32 %dn.0.i.i12, 1
  br i1 %cmp1.i.i13, label %while.cond.i.i15, label %while.end.i.i19

while.end.i.i19:                                  ; preds = %while.cond.i.i15
  %data2.i.i16 = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %8 = load i8*, i8** %data2.i.i16, align 8, !tbaa !10
  %call.i.i17 = tail call i8* @realloc(i8* %8, i32 %dn.0.i.i12) #10
  %tobool.i.i18 = icmp eq i8* %call.i.i17, null
  br i1 %tobool.i.i18, label %flv_put_byte.exit24, label %if.end.i.i21

if.end.i.i21:                                     ; preds = %while.end.i.i19
  store i8* %call.i.i17, i8** %data2.i.i16, align 8, !tbaa !10
  store i32 %dn.0.i.i12, i32* %d_max.i.i, align 8, !tbaa !9
  %.pre29.i.i20 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %if.end7.i.i23

if.end7.i.i23:                                    ; preds = %if.end.i.i21, %entry.if.end7_crit_edge.i.i11
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i11 ], [ %.pre29.i.i20, %if.end.i.i21 ]
  %10 = phi i8* [ %.pre.i.i10, %entry.if.end7_crit_edge.i.i11 ], [ %call.i.i17, %if.end.i.i21 ]
  %add.ptr.i.i22 = getelementptr inbounds i8, i8* %10, i32 %9
  store i8 %conv2, i8* %add.ptr.i.i22, align 1
  store i32 %add.i.i6, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit24

flv_put_byte.exit24:                              ; preds = %while.end.i.i19, %if.end7.i.i23
  ret void
}

; Function Attrs: nounwind
define hidden void @flv_put_be24(%struct.flv_buffer* nocapture %c, i32 %val) local_unnamed_addr #1 {
entry:
  %shr = lshr i32 %val, 8
  %0 = lshr i32 %val, 16
  %1 = trunc i32 %0 to i8
  %d_cur.i.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %2 = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  %add.i.i.i = add i32 %2, 1
  %d_max.i.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 2
  %3 = load i32, i32* %d_max.i.i.i, align 8, !tbaa !9
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %3
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %entry.if.end7_crit_edge.i.i.i

entry.if.end7_crit_edge.i.i.i:                    ; preds = %entry
  %data8.phi.trans.insert.i.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i.i = load i8*, i8** %data8.phi.trans.insert.i.i.i, align 8, !tbaa !10
  br label %if.end7.i.i.i

while.cond.i.i.i:                                 ; preds = %entry, %while.cond.i.i.i
  %dn.0.i.i.i = phi i32 [ %shl.i.i.i, %while.cond.i.i.i ], [ 16, %entry ]
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i
  %shl.i.i.i = shl i32 %dn.0.i.i.i, 1
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %data2.i.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %4 = load i8*, i8** %data2.i.i.i, align 8, !tbaa !10
  %call.i.i.i = tail call i8* @realloc(i8* %4, i32 %dn.0.i.i.i) #10
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null
  br i1 %tobool.i.i.i, label %while.end.i.i.flv_put_byte.exit_crit_edge.i, label %if.end.i.i.i

while.end.i.i.flv_put_byte.exit_crit_edge.i:      ; preds = %while.end.i.i.i
  %.pre.i = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store i8* %call.i.i.i, i8** %data2.i.i.i, align 8, !tbaa !10
  store i32 %dn.0.i.i.i, i32* %d_max.i.i.i, align 8, !tbaa !9
  %.pre29.i.i.i = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i, %entry.if.end7_crit_edge.i.i.i
  %5 = phi i32 [ %2, %entry.if.end7_crit_edge.i.i.i ], [ %.pre29.i.i.i, %if.end.i.i.i ]
  %6 = phi i8* [ %.pre.i.i.i, %entry.if.end7_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %6, i32 %5
  store i8 %1, i8* %add.ptr.i.i.i, align 1
  store i32 %add.i.i.i, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit.i

flv_put_byte.exit.i:                              ; preds = %if.end7.i.i.i, %while.end.i.i.flv_put_byte.exit_crit_edge.i
  %7 = phi i32 [ %.pre.i, %while.end.i.i.flv_put_byte.exit_crit_edge.i ], [ %add.i.i.i, %if.end7.i.i.i ]
  %conv2.i = trunc i32 %shr to i8
  %add.i.i6.i = add i32 %7, 1
  %8 = load i32, i32* %d_max.i.i.i, align 8, !tbaa !9
  %cmp.i.i8.i = icmp ugt i32 %add.i.i6.i, %8
  br i1 %cmp.i.i8.i, label %while.cond.i.i15.i, label %entry.if.end7_crit_edge.i.i11.i

entry.if.end7_crit_edge.i.i11.i:                  ; preds = %flv_put_byte.exit.i
  %data8.phi.trans.insert.i.i9.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i10.i = load i8*, i8** %data8.phi.trans.insert.i.i9.i, align 8, !tbaa !10
  br label %if.end7.i.i23.i

while.cond.i.i15.i:                               ; preds = %flv_put_byte.exit.i, %while.cond.i.i15.i
  %dn.0.i.i12.i = phi i32 [ %shl.i.i14.i, %while.cond.i.i15.i ], [ 16, %flv_put_byte.exit.i ]
  %cmp1.i.i13.i = icmp ugt i32 %add.i.i6.i, %dn.0.i.i12.i
  %shl.i.i14.i = shl i32 %dn.0.i.i12.i, 1
  br i1 %cmp1.i.i13.i, label %while.cond.i.i15.i, label %while.end.i.i19.i

while.end.i.i19.i:                                ; preds = %while.cond.i.i15.i
  %data2.i.i16.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %9 = load i8*, i8** %data2.i.i16.i, align 8, !tbaa !10
  %call.i.i17.i = tail call i8* @realloc(i8* %9, i32 %dn.0.i.i12.i) #10
  %tobool.i.i18.i = icmp eq i8* %call.i.i17.i, null
  br i1 %tobool.i.i18.i, label %while.end.i.i19.i.flv_put_be16.exit_crit_edge, label %if.end.i.i21.i

while.end.i.i19.i.flv_put_be16.exit_crit_edge:    ; preds = %while.end.i.i19.i
  %.pre = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_be16.exit

if.end.i.i21.i:                                   ; preds = %while.end.i.i19.i
  store i8* %call.i.i17.i, i8** %data2.i.i16.i, align 8, !tbaa !10
  store i32 %dn.0.i.i12.i, i32* %d_max.i.i.i, align 8, !tbaa !9
  %.pre29.i.i20.i = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %if.end7.i.i23.i

if.end7.i.i23.i:                                  ; preds = %if.end.i.i21.i, %entry.if.end7_crit_edge.i.i11.i
  %10 = phi i32 [ %7, %entry.if.end7_crit_edge.i.i11.i ], [ %.pre29.i.i20.i, %if.end.i.i21.i ]
  %11 = phi i8* [ %.pre.i.i10.i, %entry.if.end7_crit_edge.i.i11.i ], [ %call.i.i17.i, %if.end.i.i21.i ]
  %add.ptr.i.i22.i = getelementptr inbounds i8, i8* %11, i32 %10
  store i8 %conv2.i, i8* %add.ptr.i.i22.i, align 1
  store i32 %add.i.i6.i, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_be16.exit

flv_put_be16.exit:                                ; preds = %while.end.i.i19.i.flv_put_be16.exit_crit_edge, %if.end7.i.i23.i
  %12 = phi i32 [ %.pre, %while.end.i.i19.i.flv_put_be16.exit_crit_edge ], [ %add.i.i6.i, %if.end7.i.i23.i ]
  %conv1 = trunc i32 %val to i8
  %add.i.i = add i32 %12, 1
  %13 = load i32, i32* %d_max.i.i.i, align 8, !tbaa !9
  %cmp.i.i = icmp ugt i32 %add.i.i, %13
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %flv_put_be16.exit
  %data8.phi.trans.insert.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i = load i8*, i8** %data8.phi.trans.insert.i.i, align 8, !tbaa !10
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %flv_put_be16.exit, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %flv_put_be16.exit ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data2.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %14 = load i8*, i8** %data2.i.i, align 8, !tbaa !10
  %call.i.i = tail call i8* @realloc(i8* %14, i32 %dn.0.i.i) #10
  %tobool.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool.i.i, label %flv_put_byte.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i, i8** %data2.i.i, align 8, !tbaa !10
  store i32 %dn.0.i.i, i32* %d_max.i.i.i, align 8, !tbaa !9
  %.pre29.i.i = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %15 = phi i32 [ %12, %entry.if.end7_crit_edge.i.i ], [ %.pre29.i.i, %if.end.i.i ]
  %16 = phi i8* [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %16, i32 %15
  store i8 %conv1, i8* %add.ptr.i.i, align 1
  store i32 %add.i.i, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit

flv_put_byte.exit:                                ; preds = %while.end.i.i, %if.end7.i.i
  ret void
}

; Function Attrs: nounwind
define hidden void @flv_put_tag(%struct.flv_buffer* nocapture %c, i8* nocapture readonly %tag) local_unnamed_addr #1 {
entry:
  %0 = load i8, i8* %tag, align 1, !tbaa !11
  %tobool2 = icmp eq i8 %0, 0
  br i1 %tobool2, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %d_cur.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %d_max.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 2
  %data8.phi.trans.insert.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %flv_put_byte.exit
  %1 = phi i8 [ %0, %while.body.lr.ph ], [ %7, %flv_put_byte.exit ]
  %tag.addr.03 = phi i8* [ %tag, %while.body.lr.ph ], [ %incdec.ptr, %flv_put_byte.exit ]
  %incdec.ptr = getelementptr inbounds i8, i8* %tag.addr.03, i32 1
  %2 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  %add.i.i = add i32 %2, 1
  %3 = load i32, i32* %d_max.i.i, align 8, !tbaa !9
  %cmp.i.i = icmp ugt i32 %add.i.i, %3
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %while.body
  %.pre.i.i = load i8*, i8** %data8.phi.trans.insert.i.i, align 8, !tbaa !10
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %while.body, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %while.body ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %4 = load i8*, i8** %data8.phi.trans.insert.i.i, align 8, !tbaa !10
  %call.i.i = tail call i8* @realloc(i8* %4, i32 %dn.0.i.i) #10
  %tobool.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool.i.i, label %flv_put_byte.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i, i8** %data8.phi.trans.insert.i.i, align 8, !tbaa !10
  store i32 %dn.0.i.i, i32* %d_max.i.i, align 8, !tbaa !9
  %.pre29.i.i = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %5 = phi i32 [ %2, %entry.if.end7_crit_edge.i.i ], [ %.pre29.i.i, %if.end.i.i ]
  %6 = phi i8* [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %6, i32 %5
  store i8 %1, i8* %add.ptr.i.i, align 1
  store i32 %add.i.i, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit

flv_put_byte.exit:                                ; preds = %while.end.i.i, %if.end7.i.i
  %7 = load i8, i8* %incdec.ptr, align 1, !tbaa !11
  %tobool = icmp eq i8 %7, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %flv_put_byte.exit, %entry
  ret void
}

; Function Attrs: nounwind
define hidden void @flv_put_amf_string(%struct.flv_buffer* nocapture %c, i8* nocapture readonly %str) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @strlen(i8* nonnull dereferenceable(1) %str) #11
  %conv = trunc i32 %call to i16
  %0 = lshr i16 %conv, 8
  %conv1.i = trunc i16 %0 to i8
  %d_cur.i.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %1 = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  %add.i.i.i = add i32 %1, 1
  %d_max.i.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 2
  %2 = load i32, i32* %d_max.i.i.i, align 8, !tbaa !9
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %2
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %entry.if.end7_crit_edge.i.i.i

entry.if.end7_crit_edge.i.i.i:                    ; preds = %entry
  %data8.phi.trans.insert.i.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i.i = load i8*, i8** %data8.phi.trans.insert.i.i.i, align 8, !tbaa !10
  br label %if.end7.i.i.i

while.cond.i.i.i:                                 ; preds = %entry, %while.cond.i.i.i
  %dn.0.i.i.i = phi i32 [ %shl.i.i.i, %while.cond.i.i.i ], [ 16, %entry ]
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i
  %shl.i.i.i = shl i32 %dn.0.i.i.i, 1
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %data2.i.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %3 = load i8*, i8** %data2.i.i.i, align 8, !tbaa !10
  %call.i.i.i = tail call i8* @realloc(i8* %3, i32 %dn.0.i.i.i) #10
  %tobool.i.i.i = icmp eq i8* %call.i.i.i, null
  br i1 %tobool.i.i.i, label %while.end.i.i.flv_put_byte.exit_crit_edge.i, label %if.end.i.i.i

while.end.i.i.flv_put_byte.exit_crit_edge.i:      ; preds = %while.end.i.i.i
  %.pre.i = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store i8* %call.i.i.i, i8** %data2.i.i.i, align 8, !tbaa !10
  store i32 %dn.0.i.i.i, i32* %d_max.i.i.i, align 8, !tbaa !9
  %.pre29.i.i.i = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i, %entry.if.end7_crit_edge.i.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i.i ], [ %.pre29.i.i.i, %if.end.i.i.i ]
  %5 = phi i8* [ %.pre.i.i.i, %entry.if.end7_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %5, i32 %4
  store i8 %conv1.i, i8* %add.ptr.i.i.i, align 1
  store i32 %add.i.i.i, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit.i

flv_put_byte.exit.i:                              ; preds = %if.end7.i.i.i, %while.end.i.i.flv_put_byte.exit_crit_edge.i
  %6 = phi i32 [ %.pre.i, %while.end.i.i.flv_put_byte.exit_crit_edge.i ], [ %add.i.i.i, %if.end7.i.i.i ]
  %conv2.i = trunc i32 %call to i8
  %add.i.i6.i = add i32 %6, 1
  %7 = load i32, i32* %d_max.i.i.i, align 8, !tbaa !9
  %cmp.i.i8.i = icmp ugt i32 %add.i.i6.i, %7
  br i1 %cmp.i.i8.i, label %while.cond.i.i15.i, label %entry.if.end7_crit_edge.i.i11.i

entry.if.end7_crit_edge.i.i11.i:                  ; preds = %flv_put_byte.exit.i
  %data8.phi.trans.insert.i.i9.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i10.i = load i8*, i8** %data8.phi.trans.insert.i.i9.i, align 8, !tbaa !10
  br label %if.end7.i.i23.i

while.cond.i.i15.i:                               ; preds = %flv_put_byte.exit.i, %while.cond.i.i15.i
  %dn.0.i.i12.i = phi i32 [ %shl.i.i14.i, %while.cond.i.i15.i ], [ 16, %flv_put_byte.exit.i ]
  %cmp1.i.i13.i = icmp ugt i32 %add.i.i6.i, %dn.0.i.i12.i
  %shl.i.i14.i = shl i32 %dn.0.i.i12.i, 1
  br i1 %cmp1.i.i13.i, label %while.cond.i.i15.i, label %while.end.i.i19.i

while.end.i.i19.i:                                ; preds = %while.cond.i.i15.i
  %data2.i.i16.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %8 = load i8*, i8** %data2.i.i16.i, align 8, !tbaa !10
  %call.i.i17.i = tail call i8* @realloc(i8* %8, i32 %dn.0.i.i12.i) #10
  %tobool.i.i18.i = icmp eq i8* %call.i.i17.i, null
  br i1 %tobool.i.i18.i, label %while.end.i.i19.i.flv_put_be16.exit_crit_edge, label %if.end.i.i21.i

while.end.i.i19.i.flv_put_be16.exit_crit_edge:    ; preds = %while.end.i.i19.i
  %.pre = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_be16.exit

if.end.i.i21.i:                                   ; preds = %while.end.i.i19.i
  store i8* %call.i.i17.i, i8** %data2.i.i16.i, align 8, !tbaa !10
  store i32 %dn.0.i.i12.i, i32* %d_max.i.i.i, align 8, !tbaa !9
  %.pre29.i.i20.i = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %if.end7.i.i23.i

if.end7.i.i23.i:                                  ; preds = %if.end.i.i21.i, %entry.if.end7_crit_edge.i.i11.i
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i11.i ], [ %.pre29.i.i20.i, %if.end.i.i21.i ]
  %10 = phi i8* [ %.pre.i.i10.i, %entry.if.end7_crit_edge.i.i11.i ], [ %call.i.i17.i, %if.end.i.i21.i ]
  %add.ptr.i.i22.i = getelementptr inbounds i8, i8* %10, i32 %9
  store i8 %conv2.i, i8* %add.ptr.i.i22.i, align 1
  store i32 %add.i.i6.i, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_put_be16.exit

flv_put_be16.exit:                                ; preds = %while.end.i.i19.i.flv_put_be16.exit_crit_edge, %if.end7.i.i23.i
  %11 = phi i32 [ %.pre, %while.end.i.i19.i.flv_put_be16.exit_crit_edge ], [ %add.i.i6.i, %if.end7.i.i23.i ]
  %conv1 = and i32 %call, 65535
  %add.i = add i32 %11, %conv1
  %12 = load i32, i32* %d_max.i.i.i, align 8, !tbaa !9
  %cmp.i = icmp ugt i32 %add.i, %12
  br i1 %cmp.i, label %while.cond.i, label %entry.if.end7_crit_edge.i

entry.if.end7_crit_edge.i:                        ; preds = %flv_put_be16.exit
  %data8.phi.trans.insert.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i7 = load i8*, i8** %data8.phi.trans.insert.i, align 8, !tbaa !10
  br label %if.end7.i

while.cond.i:                                     ; preds = %flv_put_be16.exit, %while.cond.i
  %dn.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 16, %flv_put_be16.exit ]
  %cmp1.i = icmp ugt i32 %add.i, %dn.0.i
  %shl.i = shl i32 %dn.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data2.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %13 = load i8*, i8** %data2.i, align 8, !tbaa !10
  %call.i = tail call i8* @realloc(i8* %13, i32 %dn.0.i) #10
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %flv_append_data.exit, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store i8* %call.i, i8** %data2.i, align 8, !tbaa !10
  store i32 %dn.0.i, i32* %d_max.i.i.i, align 8, !tbaa !9
  %.pre29.i = load i32, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %14 = phi i32 [ %11, %entry.if.end7_crit_edge.i ], [ %.pre29.i, %if.end.i ]
  %15 = phi i8* [ %.pre.i7, %entry.if.end7_crit_edge.i ], [ %call.i, %if.end.i ]
  %add.ptr.i = getelementptr inbounds i8, i8* %15, i32 %14
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i, i8* align 1 %str, i32 %conv1, i1 false) #10
  store i32 %add.i, i32* %d_cur.i.i.i, align 4, !tbaa !2
  br label %flv_append_data.exit

flv_append_data.exit:                             ; preds = %while.end.i, %if.end7.i
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
define hidden void @flv_put_amf_double(%struct.flv_buffer* nocapture %c, double %d) local_unnamed_addr #1 {
entry:
  %d_cur.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %0 = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  %add.i.i = add i32 %0, 1
  %d_max.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 2
  %1 = load i32, i32* %d_max.i.i, align 8, !tbaa !9
  %cmp.i.i = icmp ugt i32 %add.i.i, %1
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %data8.phi.trans.insert.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %.pre.i.i = load i8*, i8** %data8.phi.trans.insert.i.i, align 8, !tbaa !10
  br label %if.end7.i.i

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data2.i.i = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %2 = load i8*, i8** %data2.i.i, align 8, !tbaa !10
  %call.i.i = tail call i8* @realloc(i8* %2, i32 %dn.0.i.i) #10
  %tobool.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool.i.i, label %flv_put_byte.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i, i8** %data2.i.i, align 8, !tbaa !10
  store i32 %dn.0.i.i, i32* %d_max.i.i, align 8, !tbaa !9
  %.pre29.i.i = load i32, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i.i ], [ %.pre29.i.i, %if.end.i.i ]
  %4 = phi i8* [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %4, i32 %3
  store i8 0, i8* %add.ptr.i.i, align 1
  store i32 %add.i.i, i32* %d_cur.i.i, align 4, !tbaa !2
  br label %flv_put_byte.exit

flv_put_byte.exit:                                ; preds = %while.end.i.i, %if.end7.i.i
  %5 = bitcast double %d to i64
  %shr.i = lshr i64 %5, 32
  %conv.i = trunc i64 %shr.i to i32
  tail call void @flv_put_be32(%struct.flv_buffer* nonnull %c, i32 %conv.i) #10
  %conv1.i = trunc i64 %5 to i32
  tail call void @flv_put_be32(%struct.flv_buffer* nonnull %c, i32 %conv1.i) #10
  ret void
}

; Function Attrs: nounwind
define hidden noalias %struct.flv_buffer* @flv_create_writer(i8* %filename) local_unnamed_addr #1 {
entry:
  %call = tail call noalias dereferenceable_or_null(24) i8* @calloc(i32 1, i32 24) #10
  %0 = bitcast i8* %call to %struct.flv_buffer*
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %filename, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #11
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %1 = load i32, i32* bitcast (%struct._IO_FILE** @stdout to i32*), align 4, !tbaa !12
  %fp = getelementptr inbounds i8, i8* %call, i32 12
  %2 = bitcast i8* %fp to i32*
  store i32 %1, i32* %2, align 4, !tbaa !13
  %3 = inttoptr i32 %1 to %struct._IO_FILE*
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call4 = tail call %struct._IO_FILE* @fopen64(i8* %filename, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #10
  %fp5 = getelementptr inbounds i8, i8* %call, i32 12
  %4 = bitcast i8* %fp5 to %struct._IO_FILE**
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %4, align 4, !tbaa !13
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %5 = phi %struct._IO_FILE* [ %call4, %if.else ], [ %3, %if.then3 ]
  %tobool8 = icmp eq %struct._IO_FILE* %5, null
  br i1 %tobool8, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end6
  tail call void @free(i8* nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %if.then9
  %retval.0 = phi %struct.flv_buffer* [ null, %if.then9 ], [ null, %entry ], [ %0, %if.end6 ]
  ret %struct.flv_buffer* %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare dso_local %struct._IO_FILE* @fopen64(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local noalias i8* @realloc(i8* nocapture, i32) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nofree norecurse nounwind
define hidden void @flv_rewrite_amf_be24(%struct.flv_buffer* nocapture readonly %c, i32 %length, i32 %start) local_unnamed_addr #8 {
entry:
  %shr = lshr i32 %length, 16
  %conv = trunc i32 %shr to i8
  %data = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %0 = load i8*, i8** %data, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %0, i32 %start
  store i8 %conv, i8* %add.ptr, align 1, !tbaa !11
  %shr2 = lshr i32 %length, 8
  %conv3 = trunc i32 %shr2 to i8
  %1 = load i8*, i8** %data, align 8, !tbaa !10
  %add.ptr5 = getelementptr inbounds i8, i8* %1, i32 %start
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i32 1
  store i8 %conv3, i8* %add.ptr6, align 1, !tbaa !11
  %conv8 = trunc i32 %length to i8
  %2 = load i8*, i8** %data, align 8, !tbaa !10
  %add.ptr10 = getelementptr inbounds i8, i8* %2, i32 %start
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i32 2
  store i8 %conv8, i8* %add.ptr11, align 1, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind
define hidden i32 @flv_flush_data(%struct.flv_buffer* nocapture %c) local_unnamed_addr #9 {
entry:
  %d_cur = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 1
  %0 = load i32, i32* %d_cur, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !10
  %fp = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 3
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 4, !tbaa !13
  %call = tail call i32 @fwrite(i8* %1, i32 %0, i32 1, %struct._IO_FILE* %2)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* %d_cur, align 4, !tbaa !2
  %conv = zext i32 %3 to i64
  %d_total = getelementptr inbounds %struct.flv_buffer, %struct.flv_buffer* %c, i32 0, i32 4
  %4 = load i64, i64* %d_total, align 8, !tbaa !14
  %add = add i64 %4, %conv
  store i64 %add, i64* %d_total, align 8, !tbaa !14
  store i32 0, i32* %d_cur, align 4, !tbaa !2
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

attributes #0 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !7, i64 4}
!3 = !{!"flv_buffer", !4, i64 0, !7, i64 4, !7, i64 8, !4, i64 12, !8, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"long long", !5, i64 0}
!9 = !{!3, !7, i64 8}
!10 = !{!3, !4, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!4, !4, i64 0}
!13 = !{!3, !4, i64 12}
!14 = !{!3, !8, i64 16}
