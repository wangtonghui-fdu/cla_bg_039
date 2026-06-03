; ModuleID = 'output/matroska_ebml.c'
source_filename = "output/matroska_ebml.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.mk_writer = type { %struct._IO_FILE*, i32, %struct.mk_context*, %struct.mk_context*, %struct.mk_context*, %struct.mk_context*, %struct.mk_context*, i64, i64, i64, i64, i64, i8, i8, i8, i8 }
%struct.mk_context = type { %struct.mk_context*, %struct.mk_context**, %struct.mk_context*, %struct.mk_writer*, i32, i8*, i32, i32 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.stat64 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Haali Matroska Writer b0\00", align 1

; Function Attrs: nounwind
define hidden %struct.mk_writer* @mk_create_writer(i8* %filename) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(80) i8* @calloc(i32 1, i32 80) #8
  %0 = bitcast i8* %call to %struct.mk_writer*
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup, label %if.else.i

if.else.i:                                        ; preds = %entry
  %freelist.i = getelementptr inbounds i8, i8* %call, i32 20
  %1 = bitcast i8* %freelist.i to %struct.mk_context**
  %call.i = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %tobool4.i = icmp eq i8* %call.i, null
  br i1 %tobool4.i, label %if.then4, label %mk_create_context.exit

mk_create_context.exit:                           ; preds = %if.else.i
  %owner.i = getelementptr inbounds i8, i8* %call.i, i32 12
  %2 = bitcast i8* %owner.i to i8**
  store i8* %call, i8** %2, align 4, !tbaa !2
  %actlist.i = getelementptr inbounds i8, i8* %call, i32 24
  %3 = bitcast i8* %actlist.i to %struct.mk_context**
  %prev21.i = getelementptr inbounds i8, i8* %call.i, i32 4
  %4 = bitcast i8* %prev21.i to i8**
  store i8* %actlist.i, i8** %4, align 4, !tbaa !8
  %5 = bitcast i8* %actlist.i to i8**
  store i8* %call.i, i8** %5, align 8, !tbaa !9
  %root = getelementptr inbounds i8, i8* %call, i32 8
  %6 = bitcast i8* %root to i8**
  store i8* %call.i, i8** %6, align 8, !tbaa !12
  %call6 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %filename, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #9
  %tobool7 = icmp eq i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else

if.then4:                                         ; preds = %if.else.i
  tail call void @free(i8* nonnull %call) #8
  br label %cleanup

if.then8:                                         ; preds = %mk_create_context.exit
  %7 = load i32, i32* bitcast (%struct._IO_FILE** @stdout to i32*), align 4, !tbaa !13
  %8 = bitcast i8* %call to i32*
  store i32 %7, i32* %8, align 8, !tbaa !14
  %9 = inttoptr i32 %7 to %struct._IO_FILE*
  br label %if.end11

if.else:                                          ; preds = %mk_create_context.exit
  %call9 = tail call %struct._IO_FILE* @fopen64(i8* %filename, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #8
  %fp10 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp10, align 8, !tbaa !14
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %10 = phi %struct._IO_FILE* [ %call9, %if.else ], [ %9, %if.then8 ]
  %tobool13 = icmp eq %struct._IO_FILE* %10, null
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %11 = load %struct.mk_context*, %struct.mk_context** %1, align 4, !tbaa !15
  %tobool29.i = icmp eq %struct.mk_context* %11, null
  br i1 %tobool29.i, label %for.cond.cleanup.i, label %for.body.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.then14
  %12 = load %struct.mk_context*, %struct.mk_context** %3, align 8, !tbaa !9
  %tobool427.i = icmp eq %struct.mk_context* %12, null
  br i1 %tobool427.i, label %mk_destroy_contexts.exit, label %for.body6.i

for.body.i:                                       ; preds = %if.then14, %for.body.i
  %cur.030.i = phi %struct.mk_context* [ %13, %for.body.i ], [ %11, %if.then14 ]
  %next1.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %cur.030.i, i32 0, i32 0
  %13 = load %struct.mk_context*, %struct.mk_context** %next1.i, align 4, !tbaa !16
  %data.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %cur.030.i, i32 0, i32 5
  %14 = load i8*, i8** %data.i, align 4, !tbaa !17
  tail call void @free(i8* %14) #8
  %15 = bitcast %struct.mk_context* %cur.030.i to i8*
  tail call void @free(i8* %15) #8
  %tobool.i30 = icmp eq %struct.mk_context* %13, null
  br i1 %tobool.i30, label %for.cond.cleanup.i, label %for.body.i

for.body6.i:                                      ; preds = %for.cond.cleanup.i, %for.body6.i
  %cur2.028.i = phi %struct.mk_context* [ %16, %for.body6.i ], [ %12, %for.cond.cleanup.i ]
  %next7.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %cur2.028.i, i32 0, i32 0
  %16 = load %struct.mk_context*, %struct.mk_context** %next7.i, align 4, !tbaa !16
  %data8.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %cur2.028.i, i32 0, i32 5
  %17 = load i8*, i8** %data8.i, align 4, !tbaa !17
  tail call void @free(i8* %17) #8
  %18 = bitcast %struct.mk_context* %cur2.028.i to i8*
  tail call void @free(i8* %18) #8
  %tobool4.i31 = icmp eq %struct.mk_context* %16, null
  br i1 %tobool4.i31, label %mk_destroy_contexts.exit, label %for.body6.i

mk_destroy_contexts.exit:                         ; preds = %for.body6.i, %for.cond.cleanup.i
  tail call void @free(i8* %call) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %timescale = getelementptr inbounds i8, i8* %call, i32 40
  %19 = bitcast i8* %timescale to i64*
  store i64 1000000, i64* %19, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15, %mk_destroy_contexts.exit, %if.then4
  %retval.0 = phi %struct.mk_writer* [ %0, %if.end15 ], [ null, %mk_destroy_contexts.exit ], [ null, %if.then4 ], [ null, %entry ]
  ret %struct.mk_writer* %retval.0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare dso_local %struct._IO_FILE* @fopen64(i8*, i8*) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define hidden i32 @mk_write_header(%struct.mk_writer* %w, i8* nocapture readonly %writing_app, i8* nocapture readonly %codec_id, i8* nocapture readonly %codec_private, i32 %codec_private_size, i64 %default_frame_duration, i64 %timescale, i32 %width, i32 %height, i32 %d_width, i32 %d_height, i32 %display_size_units, i32 %stereo_mode) local_unnamed_addr #0 {
entry:
  %wrote_header = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 12
  %0 = load i8, i8* %wrote_header, align 8, !tbaa !19
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %timescale1 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 8
  store i64 %timescale, i64* %timescale1, align 8, !tbaa !18
  %def_duration = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 7
  store i64 %default_frame_duration, i64* %def_duration, align 8, !tbaa !20
  %root = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 2
  %1 = bitcast %struct.mk_context** %root to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !12
  %freelist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 5
  %3 = load %struct.mk_context*, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %tobool.i = icmp eq %struct.mk_context* %3, null
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %4 = bitcast %struct.mk_context* %3 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !16
  %6 = bitcast %struct.mk_context** %freelist.i to i32*
  store i32 %5, i32* %6, align 4, !tbaa !15
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end
  %call.i = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %7 = bitcast i8* %call.i to %struct.mk_context*
  %tobool4.i = icmp eq i8* %call.i, null
  br i1 %tobool4.i, label %cleanup, label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi %struct.mk_context* [ %3, %if.then.i ], [ %7, %if.else.i ]
  %parent7.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 2
  %8 = bitcast %struct.mk_context** %parent7.i to i32*
  store i32 %2, i32* %8, align 4, !tbaa !21
  %owner.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 3
  store %struct.mk_writer* %w, %struct.mk_writer** %owner.i, align 4, !tbaa !2
  %id8.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 4
  store i32 440786851, i32* %id8.i, align 4, !tbaa !22
  %actlist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 6
  %9 = load %struct.mk_context*, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool10.i = icmp eq %struct.mk_context* %9, null
  %10 = ptrtoint %struct.mk_context* %9 to i32
  br i1 %tobool10.i, label %mk_create_context.exit, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  %next12.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 0
  %prev.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %9, i32 0, i32 1
  store %struct.mk_context** %next12.i, %struct.mk_context*** %prev.i, align 4, !tbaa !8
  br label %mk_create_context.exit

mk_create_context.exit:                           ; preds = %if.end6.i, %if.then11.i
  %11 = bitcast %struct.mk_context* %c.0.i to i32*
  store i32 %10, i32* %11, align 4, !tbaa !16
  %prev21.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 1
  store %struct.mk_context** %actlist.i, %struct.mk_context*** %prev21.i, align 4, !tbaa !8
  store %struct.mk_context* %c.0.i, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool2 = icmp eq %struct.mk_context* %c.0.i, null
  br i1 %tobool2, label %cleanup, label %do.body

do.body:                                          ; preds = %mk_create_context.exit
  %call5 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i, i32 17030, i64 1)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %cleanup, label %do.body8

do.body8:                                         ; preds = %do.body
  %call9 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i, i32 17143, i64 1)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %cleanup, label %do.body15

do.body15:                                        ; preds = %do.body8
  %call16 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i, i32 17138, i64 4)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %cleanup, label %do.body22

do.body22:                                        ; preds = %do.body15
  %call23 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i, i32 17139, i64 8)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %cleanup, label %do.body29

do.body29:                                        ; preds = %do.body22
  %d_cur.i1029 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 6
  %12 = load i32, i32* %d_cur.i1029, align 4, !tbaa !23
  %add.i1030 = add i32 %12, 2
  %d_max.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 7
  %13 = load i32, i32* %d_max.i, align 4, !tbaa !24
  %cmp.i1031 = icmp ugt i32 %add.i1030, %13
  br i1 %cmp.i1031, label %if.then.i1033, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %do.body29
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 5
  %.pre.i = load i8*, i8** %data12.phi.trans.insert.i, align 4, !tbaa !17
  br label %do.body2.i

if.then.i1033:                                    ; preds = %do.body29
  %tobool.i1032 = icmp eq i32 %13, 0
  %shl.i = shl i32 %13, 1
  %spec.select.i = select i1 %tobool.i1032, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i1033
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i1033 ], [ %shl4.i, %while.cond.i ]
  %cmp3.i1034 = icmp ugt i32 %add.i1030, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i1034, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 5
  %14 = load i8*, i8** %data5.i, align 4, !tbaa !17
  %call.i1035 = tail call i8* @realloc(i8* %14, i32 %dn.0.i) #8
  %tobool6.i = icmp eq i8* %call.i1035, null
  br i1 %tobool6.i, label %cleanup, label %if.end.i1036

if.end.i1036:                                     ; preds = %while.end.i
  store i8* %call.i1035, i8** %data5.i, align 4, !tbaa !17
  store i32 %dn.0.i, i32* %d_max.i, align 4, !tbaa !24
  %.pre36.i = load i32, i32* %d_cur.i1029, align 4, !tbaa !23
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.end.i1036, %entry.if.end11_crit_edge.i
  %15 = phi i32 [ %12, %entry.if.end11_crit_edge.i ], [ %.pre36.i, %if.end.i1036 ]
  %16 = phi i8* [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i1035, %if.end.i1036 ]
  %add.ptr.i = getelementptr inbounds i8, i8* %16, i32 %15
  store i8 66, i8* %add.ptr.i, align 1
  %c_id.i.sroa.6.2.add.ptr.i.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i, i32 1
  store i8 -126, i8* %c_id.i.sroa.6.2.add.ptr.i.sroa_raw_idx, align 1
  store i32 %add.i1030, i32* %d_cur.i1029, align 4, !tbaa !23
  %call3.i = tail call fastcc i32 @mk_write_size(%struct.mk_context* nonnull %c.0.i, i32 8) #8
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %cleanup, label %do.body9.i

do.body9.i:                                       ; preds = %do.body2.i
  %17 = load i32, i32* %d_cur.i1029, align 4, !tbaa !23
  %add.i.i = add i32 %17, 8
  %18 = load i32, i32* %d_max.i, align 4, !tbaa !24
  %cmp.i.i = icmp ugt i32 %add.i.i, %18
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body9.i
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 5
  %.pre.i.i = load i8*, i8** %data12.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %do.body36

if.then.i.i:                                      ; preds = %do.body9.i
  %tobool.i.i = icmp eq i32 %18, 0
  %shl.i.i = shl i32 %18, 1
  %spec.select.i.i = select i1 %tobool.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 5
  %19 = load i8*, i8** %data5.i.i, align 4, !tbaa !17
  %call.i.i = tail call i8* @realloc(i8* %19, i32 %dn.0.i.i) #8
  %tobool6.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool6.i.i, label %cleanup, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i, i8** %data5.i.i, align 4, !tbaa !17
  store i32 %dn.0.i.i, i32* %d_max.i, align 4, !tbaa !24
  %.pre36.i.i = load i32, i32* %d_cur.i1029, align 4, !tbaa !23
  br label %do.body36

do.body36:                                        ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %20 = phi i32 [ %17, %entry.if.end11_crit_edge.i.i ], [ %.pre36.i.i, %if.end.i.i ]
  %21 = phi i8* [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %21, i32 %20
  %22 = bitcast i8* %add.ptr.i.i to i64*
  store i64 7019831366685843821, i64* %22, align 1
  store i32 %add.i.i, i32* %d_cur.i1029, align 4, !tbaa !23
  %cmp37 = icmp sgt i32 %stereo_mode, -1
  %cond = select i1 %cmp37, i32 3, i32 2
  %conv = zext i32 %cond to i64
  %call38 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i, i32 17031, i64 %conv)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %cleanup, label %do.body45

do.body45:                                        ; preds = %do.body36
  %call46 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i, i32 17029, i64 2)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %cleanup, label %do.body53

do.body53:                                        ; preds = %do.body45
  %23 = load i32, i32* %id8.i, align 4, !tbaa !22
  %tobool.i356 = icmp eq i32 %23, 0
  br i1 %tobool.i356, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %do.body53
  %24 = load %struct.mk_context*, %struct.mk_context** %parent7.i, align 4, !tbaa !21
  %shr.i = lshr i32 %23, 24
  %conv.i = trunc i32 %shr.i to i8
  %shr1.i = lshr i32 %23, 16
  %conv2.i = trunc i32 %shr1.i to i8
  %shr4.i = lshr i32 %23, 8
  %conv5.i = trunc i32 %shr4.i to i8
  %conv7.i = trunc i32 %23 to i8
  %tobool.i1041 = icmp eq i8 %conv.i, 0
  br i1 %tobool.i1041, label %if.end.i1044, label %if.then.i1043

if.then.i1043:                                    ; preds = %do.body.i
  %d_cur.i1423 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 6
  %25 = load i32, i32* %d_cur.i1423, align 4, !tbaa !23
  %add.i1424 = add i32 %25, 4
  %d_max.i1425 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 7
  %26 = load i32, i32* %d_max.i1425, align 4, !tbaa !24
  %cmp.i1426 = icmp ugt i32 %add.i1424, %26
  br i1 %cmp.i1426, label %if.then.i1433, label %entry.if.end11_crit_edge.i1429

entry.if.end11_crit_edge.i1429:                   ; preds = %if.then.i1043
  %data12.phi.trans.insert.i1427 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %.pre.i1428 = load i8*, i8** %data12.phi.trans.insert.i1427, align 4, !tbaa !17
  br label %if.end11.i1445

if.then.i1433:                                    ; preds = %if.then.i1043
  %tobool.i1430 = icmp eq i32 %26, 0
  %shl.i1431 = shl i32 %26, 1
  %spec.select.i1432 = select i1 %tobool.i1430, i32 16, i32 %shl.i1431
  br label %while.cond.i1437

while.cond.i1437:                                 ; preds = %while.cond.i1437, %if.then.i1433
  %dn.0.i1434 = phi i32 [ %spec.select.i1432, %if.then.i1433 ], [ %shl4.i1436, %while.cond.i1437 ]
  %cmp3.i1435 = icmp ugt i32 %add.i1424, %dn.0.i1434
  %shl4.i1436 = shl i32 %dn.0.i1434, 1
  br i1 %cmp3.i1435, label %while.cond.i1437, label %while.end.i1441

while.end.i1441:                                  ; preds = %while.cond.i1437
  %data5.i1438 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %27 = load i8*, i8** %data5.i1438, align 4, !tbaa !17
  %call.i1439 = tail call i8* @realloc(i8* %27, i32 %dn.0.i1434) #8
  %tobool6.i1440 = icmp eq i8* %call.i1439, null
  br i1 %tobool6.i1440, label %cleanup, label %if.end.i1443

if.end.i1443:                                     ; preds = %while.end.i1441
  store i8* %call.i1439, i8** %data5.i1438, align 4, !tbaa !17
  store i32 %dn.0.i1434, i32* %d_max.i1425, align 4, !tbaa !24
  %.pre36.i1442 = load i32, i32* %d_cur.i1423, align 4, !tbaa !23
  br label %if.end11.i1445

if.end11.i1445:                                   ; preds = %if.end.i1443, %entry.if.end11_crit_edge.i1429
  %28 = phi i32 [ %25, %entry.if.end11_crit_edge.i1429 ], [ %.pre36.i1442, %if.end.i1443 ]
  %29 = phi i8* [ %.pre.i1428, %entry.if.end11_crit_edge.i1429 ], [ %call.i1439, %if.end.i1443 ]
  %add.ptr.i1444 = getelementptr inbounds i8, i8* %29, i32 %28
  store i8 %conv.i, i8* %add.ptr.i1444, align 1
  %c_id.i1037.sroa.4.0.add.ptr.i1444.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1444, i32 1
  store i8 %conv2.i, i8* %c_id.i1037.sroa.4.0.add.ptr.i1444.sroa_raw_idx, align 1
  %c_id.i1037.sroa.6.0.add.ptr.i1444.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1444, i32 2
  store i8 %conv5.i, i8* %c_id.i1037.sroa.6.0.add.ptr.i1444.sroa_raw_idx, align 1
  %c_id.i1037.sroa.8.0.add.ptr.i1444.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1444, i32 3
  store i8 %conv7.i, i8* %c_id.i1037.sroa.8.0.add.ptr.i1444.sroa_raw_idx, align 1
  store i32 %add.i1424, i32* %d_cur.i1423, align 4, !tbaa !23
  br label %do.body3.i

if.end.i1044:                                     ; preds = %do.body.i
  %tobool9.i = icmp eq i8 %conv2.i, 0
  br i1 %tobool9.i, label %if.end13.i1045, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i1044
  %d_cur.i1448 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 6
  %30 = load i32, i32* %d_cur.i1448, align 4, !tbaa !23
  %add.i1449 = add i32 %30, 3
  %d_max.i1450 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 7
  %31 = load i32, i32* %d_max.i1450, align 4, !tbaa !24
  %cmp.i1451 = icmp ugt i32 %add.i1449, %31
  br i1 %cmp.i1451, label %if.then.i1458, label %entry.if.end11_crit_edge.i1454

entry.if.end11_crit_edge.i1454:                   ; preds = %if.then10.i
  %data12.phi.trans.insert.i1452 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %.pre.i1453 = load i8*, i8** %data12.phi.trans.insert.i1452, align 4, !tbaa !17
  br label %if.end11.i1470

if.then.i1458:                                    ; preds = %if.then10.i
  %tobool.i1455 = icmp eq i32 %31, 0
  %shl.i1456 = shl i32 %31, 1
  %spec.select.i1457 = select i1 %tobool.i1455, i32 16, i32 %shl.i1456
  br label %while.cond.i1462

while.cond.i1462:                                 ; preds = %while.cond.i1462, %if.then.i1458
  %dn.0.i1459 = phi i32 [ %spec.select.i1457, %if.then.i1458 ], [ %shl4.i1461, %while.cond.i1462 ]
  %cmp3.i1460 = icmp ugt i32 %add.i1449, %dn.0.i1459
  %shl4.i1461 = shl i32 %dn.0.i1459, 1
  br i1 %cmp3.i1460, label %while.cond.i1462, label %while.end.i1466

while.end.i1466:                                  ; preds = %while.cond.i1462
  %data5.i1463 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %32 = load i8*, i8** %data5.i1463, align 4, !tbaa !17
  %call.i1464 = tail call i8* @realloc(i8* %32, i32 %dn.0.i1459) #8
  %tobool6.i1465 = icmp eq i8* %call.i1464, null
  br i1 %tobool6.i1465, label %cleanup, label %if.end.i1468

if.end.i1468:                                     ; preds = %while.end.i1466
  store i8* %call.i1464, i8** %data5.i1463, align 4, !tbaa !17
  store i32 %dn.0.i1459, i32* %d_max.i1450, align 4, !tbaa !24
  %.pre36.i1467 = load i32, i32* %d_cur.i1448, align 4, !tbaa !23
  br label %if.end11.i1470

if.end11.i1470:                                   ; preds = %if.end.i1468, %entry.if.end11_crit_edge.i1454
  %33 = phi i32 [ %30, %entry.if.end11_crit_edge.i1454 ], [ %.pre36.i1467, %if.end.i1468 ]
  %34 = phi i8* [ %.pre.i1453, %entry.if.end11_crit_edge.i1454 ], [ %call.i1464, %if.end.i1468 ]
  %add.ptr.i1469 = getelementptr inbounds i8, i8* %34, i32 %33
  store i8 %conv2.i, i8* %add.ptr.i1469, align 1
  %c_id.i1037.sroa.6.1.add.ptr.i1469.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1469, i32 1
  store i8 %conv5.i, i8* %c_id.i1037.sroa.6.1.add.ptr.i1469.sroa_raw_idx, align 1
  %c_id.i1037.sroa.8.1.add.ptr.i1469.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1469, i32 2
  store i8 %conv7.i, i8* %c_id.i1037.sroa.8.1.add.ptr.i1469.sroa_raw_idx, align 1
  store i32 %add.i1449, i32* %d_cur.i1448, align 4, !tbaa !23
  br label %do.body3.i

if.end13.i1045:                                   ; preds = %if.end.i1044
  %tobool15.i = icmp eq i8 %conv5.i, 0
  %d_cur.i1047 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 6
  %35 = load i32, i32* %d_cur.i1047, align 4, !tbaa !23
  br i1 %tobool15.i, label %if.end20.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i1045
  %add.i1474 = add i32 %35, 2
  %d_max.i1475 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 7
  %36 = load i32, i32* %d_max.i1475, align 4, !tbaa !24
  %cmp.i1476 = icmp ugt i32 %add.i1474, %36
  br i1 %cmp.i1476, label %if.then.i1483, label %entry.if.end11_crit_edge.i1479

entry.if.end11_crit_edge.i1479:                   ; preds = %if.then16.i
  %data12.phi.trans.insert.i1477 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %.pre.i1478 = load i8*, i8** %data12.phi.trans.insert.i1477, align 4, !tbaa !17
  br label %if.end11.i1495

if.then.i1483:                                    ; preds = %if.then16.i
  %tobool.i1480 = icmp eq i32 %36, 0
  %shl.i1481 = shl i32 %36, 1
  %spec.select.i1482 = select i1 %tobool.i1480, i32 16, i32 %shl.i1481
  br label %while.cond.i1487

while.cond.i1487:                                 ; preds = %while.cond.i1487, %if.then.i1483
  %dn.0.i1484 = phi i32 [ %spec.select.i1482, %if.then.i1483 ], [ %shl4.i1486, %while.cond.i1487 ]
  %cmp3.i1485 = icmp ugt i32 %add.i1474, %dn.0.i1484
  %shl4.i1486 = shl i32 %dn.0.i1484, 1
  br i1 %cmp3.i1485, label %while.cond.i1487, label %while.end.i1491

while.end.i1491:                                  ; preds = %while.cond.i1487
  %data5.i1488 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %37 = load i8*, i8** %data5.i1488, align 4, !tbaa !17
  %call.i1489 = tail call i8* @realloc(i8* %37, i32 %dn.0.i1484) #8
  %tobool6.i1490 = icmp eq i8* %call.i1489, null
  br i1 %tobool6.i1490, label %cleanup, label %if.end.i1493

if.end.i1493:                                     ; preds = %while.end.i1491
  store i8* %call.i1489, i8** %data5.i1488, align 4, !tbaa !17
  store i32 %dn.0.i1484, i32* %d_max.i1475, align 4, !tbaa !24
  %.pre36.i1492 = load i32, i32* %d_cur.i1047, align 4, !tbaa !23
  br label %if.end11.i1495

if.end11.i1495:                                   ; preds = %if.end.i1493, %entry.if.end11_crit_edge.i1479
  %38 = phi i32 [ %35, %entry.if.end11_crit_edge.i1479 ], [ %.pre36.i1492, %if.end.i1493 ]
  %39 = phi i8* [ %.pre.i1478, %entry.if.end11_crit_edge.i1479 ], [ %call.i1489, %if.end.i1493 ]
  %add.ptr.i1494 = getelementptr inbounds i8, i8* %39, i32 %38
  store i8 %conv5.i, i8* %add.ptr.i1494, align 1
  %c_id.i1037.sroa.8.2.add.ptr.i1494.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1494, i32 1
  store i8 %conv7.i, i8* %c_id.i1037.sroa.8.2.add.ptr.i1494.sroa_raw_idx, align 1
  store i32 %add.i1474, i32* %d_cur.i1047, align 4, !tbaa !23
  br label %do.body3.i

if.end20.i:                                       ; preds = %if.end13.i1045
  %add.i1048 = add i32 %35, 1
  %d_max.i1049 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 7
  %40 = load i32, i32* %d_max.i1049, align 4, !tbaa !24
  %cmp.i1050 = icmp ugt i32 %add.i1048, %40
  br i1 %cmp.i1050, label %if.then.i1057, label %entry.if.end11_crit_edge.i1053

entry.if.end11_crit_edge.i1053:                   ; preds = %if.end20.i
  %data12.phi.trans.insert.i1051 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %.pre.i1052 = load i8*, i8** %data12.phi.trans.insert.i1051, align 4, !tbaa !17
  br label %if.end11.i1069

if.then.i1057:                                    ; preds = %if.end20.i
  %tobool.i1054 = icmp eq i32 %40, 0
  %shl.i1055 = shl i32 %40, 1
  %spec.select.i1056 = select i1 %tobool.i1054, i32 16, i32 %shl.i1055
  br label %while.cond.i1061

while.cond.i1061:                                 ; preds = %while.cond.i1061, %if.then.i1057
  %dn.0.i1058 = phi i32 [ %spec.select.i1056, %if.then.i1057 ], [ %shl4.i1060, %while.cond.i1061 ]
  %cmp3.i1059 = icmp ugt i32 %add.i1048, %dn.0.i1058
  %shl4.i1060 = shl i32 %dn.0.i1058, 1
  br i1 %cmp3.i1059, label %while.cond.i1061, label %while.end.i1065

while.end.i1065:                                  ; preds = %while.cond.i1061
  %data5.i1062 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %41 = load i8*, i8** %data5.i1062, align 4, !tbaa !17
  %call.i1063 = tail call i8* @realloc(i8* %41, i32 %dn.0.i1058) #8
  %tobool6.i1064 = icmp eq i8* %call.i1063, null
  br i1 %tobool6.i1064, label %cleanup, label %if.end.i1067

if.end.i1067:                                     ; preds = %while.end.i1065
  store i8* %call.i1063, i8** %data5.i1062, align 4, !tbaa !17
  store i32 %dn.0.i1058, i32* %d_max.i1049, align 4, !tbaa !24
  %.pre36.i1066 = load i32, i32* %d_cur.i1047, align 4, !tbaa !23
  br label %if.end11.i1069

if.end11.i1069:                                   ; preds = %if.end.i1067, %entry.if.end11_crit_edge.i1053
  %42 = phi i32 [ %35, %entry.if.end11_crit_edge.i1053 ], [ %.pre36.i1066, %if.end.i1067 ]
  %43 = phi i8* [ %.pre.i1052, %entry.if.end11_crit_edge.i1053 ], [ %call.i1063, %if.end.i1067 ]
  %add.ptr.i1068 = getelementptr inbounds i8, i8* %43, i32 %42
  store i8 %conv7.i, i8* %add.ptr.i1068, align 1
  store i32 %add.i1048, i32* %d_cur.i1047, align 4, !tbaa !23
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.end11.i1445, %if.end11.i1470, %if.end11.i1495, %if.end11.i1069
  %44 = load %struct.mk_context*, %struct.mk_context** %parent7.i, align 4, !tbaa !21
  %45 = load i32, i32* %d_cur.i1029, align 4, !tbaa !23
  %call5.i = tail call fastcc i32 @mk_write_size(%struct.mk_context* %44, i32 %45) #8
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %cleanup, label %if.end10.i

if.end10.i:                                       ; preds = %do.body3.i, %do.body53
  %46 = load %struct.mk_context*, %struct.mk_context** %parent7.i, align 4, !tbaa !21
  %47 = load i32, i32* %d_cur.i1029, align 4, !tbaa !23
  %tobool.i364 = icmp eq i32 %47, 0
  br i1 %tobool.i364, label %do.end23.i, label %if.end.i

if.end.i:                                         ; preds = %if.end10.i
  %tobool1.i = icmp eq %struct.mk_context* %46, null
  %data7.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 5
  %48 = load i8*, i8** %data7.i, align 4, !tbaa !17
  br i1 %tobool1.i, label %if.else.i391, label %do.body.i370

do.body.i370:                                     ; preds = %if.end.i
  %d_cur.i.i366 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %46, i32 0, i32 6
  %49 = load i32, i32* %d_cur.i.i366, align 4, !tbaa !23
  %add.i.i367 = add i32 %49, %47
  %d_max.i.i368 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %46, i32 0, i32 7
  %50 = load i32, i32* %d_max.i.i368, align 4, !tbaa !24
  %cmp.i.i369 = icmp ugt i32 %add.i.i367, %50
  br i1 %cmp.i.i369, label %if.then.i.i377, label %entry.if.end11_crit_edge.i.i373

entry.if.end11_crit_edge.i.i373:                  ; preds = %do.body.i370
  %data12.phi.trans.insert.i.i371 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %46, i32 0, i32 5
  %.pre.i.i372 = load i8*, i8** %data12.phi.trans.insert.i.i371, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i389

if.then.i.i377:                                   ; preds = %do.body.i370
  %tobool.i.i374 = icmp eq i32 %50, 0
  %shl.i.i375 = shl i32 %50, 1
  %spec.select.i.i376 = select i1 %tobool.i.i374, i32 16, i32 %shl.i.i375
  br label %while.cond.i.i381

while.cond.i.i381:                                ; preds = %while.cond.i.i381, %if.then.i.i377
  %dn.0.i.i378 = phi i32 [ %spec.select.i.i376, %if.then.i.i377 ], [ %shl4.i.i380, %while.cond.i.i381 ]
  %cmp3.i.i379 = icmp ugt i32 %add.i.i367, %dn.0.i.i378
  %shl4.i.i380 = shl i32 %dn.0.i.i378, 1
  br i1 %cmp3.i.i379, label %while.cond.i.i381, label %while.end.i.i385

while.end.i.i385:                                 ; preds = %while.cond.i.i381
  %data5.i.i382 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %46, i32 0, i32 5
  %51 = load i8*, i8** %data5.i.i382, align 4, !tbaa !17
  %call.i.i383 = tail call i8* @realloc(i8* %51, i32 %dn.0.i.i378) #8
  %tobool6.i.i384 = icmp eq i8* %call.i.i383, null
  br i1 %tobool6.i.i384, label %cleanup, label %if.end.i.i387

if.end.i.i387:                                    ; preds = %while.end.i.i385
  store i8* %call.i.i383, i8** %data5.i.i382, align 4, !tbaa !17
  store i32 %dn.0.i.i378, i32* %d_max.i.i368, align 4, !tbaa !24
  %.pre36.i.i386 = load i32, i32* %d_cur.i.i366, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i389

mk_append_context_data.exit.i389:                 ; preds = %if.end.i.i387, %entry.if.end11_crit_edge.i.i373
  %52 = phi i32 [ %49, %entry.if.end11_crit_edge.i.i373 ], [ %.pre36.i.i386, %if.end.i.i387 ]
  %53 = phi i8* [ %.pre.i.i372, %entry.if.end11_crit_edge.i.i373 ], [ %call.i.i383, %if.end.i.i387 ]
  %add.ptr.i.i388 = getelementptr inbounds i8, i8* %53, i32 %52
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i388, i8* align 1 %48, i32 %47, i1 false) #8
  store i32 %add.i.i367, i32* %d_cur.i.i366, align 4, !tbaa !23
  br label %if.end13.i

if.else.i391:                                     ; preds = %if.end.i
  %54 = load %struct.mk_writer*, %struct.mk_writer** %owner.i, align 4, !tbaa !2
  %fp.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %54, i32 0, i32 0
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i, align 8, !tbaa !14
  %call9.i = tail call i32 @fwrite(i8* %48, i32 %47, i32 1, %struct._IO_FILE* %55) #8
  %cmp10.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.i, label %if.end13.i, label %cleanup

if.end13.i:                                       ; preds = %if.else.i391, %mk_append_context_data.exit.i389
  store i32 0, i32* %d_cur.i1029, align 4, !tbaa !23
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.end13.i, %if.end10.i
  %next.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 0
  %56 = load %struct.mk_context*, %struct.mk_context** %next.i, align 4, !tbaa !16
  %tobool24.i = icmp eq %struct.mk_context* %56, null
  %57 = ptrtoint %struct.mk_context* %56 to i32
  br i1 %tobool24.i, label %do.end60, label %if.then25.i

if.then25.i:                                      ; preds = %do.end23.i
  %58 = bitcast %struct.mk_context*** %prev21.i to i32*
  %59 = load i32, i32* %58, align 4, !tbaa !8
  %prev27.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %56, i32 0, i32 1
  %60 = bitcast %struct.mk_context*** %prev27.i to i32*
  store i32 %59, i32* %60, align 4, !tbaa !8
  br label %do.end60

do.end60:                                         ; preds = %if.then25.i, %do.end23.i
  %61 = bitcast %struct.mk_context*** %prev21.i to i32**
  %62 = load i32*, i32** %61, align 4, !tbaa !8
  store i32 %57, i32* %62, align 4, !tbaa !13
  %63 = load %struct.mk_writer*, %struct.mk_writer** %owner.i, align 4, !tbaa !2
  %freelist.i361 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %63, i32 0, i32 5
  %64 = bitcast %struct.mk_context** %freelist.i361 to i32*
  %65 = load i32, i32* %64, align 4, !tbaa !15
  store i32 %65, i32* %11, align 4, !tbaa !16
  store %struct.mk_context* %c.0.i, %struct.mk_context** %freelist.i361, align 4, !tbaa !15
  %66 = load i32, i32* %1, align 8, !tbaa !12
  %67 = load %struct.mk_context*, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %tobool.i394 = icmp eq %struct.mk_context* %67, null
  br i1 %tobool.i394, label %if.else.i398, label %if.then.i395

if.then.i395:                                     ; preds = %do.end60
  %68 = bitcast %struct.mk_context* %67 to i32*
  %69 = load i32, i32* %68, align 4, !tbaa !16
  %70 = bitcast %struct.mk_context** %freelist.i to i32*
  store i32 %69, i32* %70, align 4, !tbaa !15
  br label %if.end6.i405

if.else.i398:                                     ; preds = %do.end60
  %call.i396 = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %71 = bitcast i8* %call.i396 to %struct.mk_context*
  %tobool4.i397 = icmp eq i8* %call.i396, null
  br i1 %tobool4.i397, label %cleanup, label %if.end6.i405

if.end6.i405:                                     ; preds = %if.else.i398, %if.then.i395
  %c.0.i399 = phi %struct.mk_context* [ %67, %if.then.i395 ], [ %71, %if.else.i398 ]
  %parent7.i400 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i399, i32 0, i32 2
  %72 = bitcast %struct.mk_context** %parent7.i400 to i32*
  store i32 %66, i32* %72, align 4, !tbaa !21
  %owner.i401 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i399, i32 0, i32 3
  store %struct.mk_writer* %w, %struct.mk_writer** %owner.i401, align 4, !tbaa !2
  %id8.i402 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i399, i32 0, i32 4
  store i32 408125543, i32* %id8.i402, align 4, !tbaa !22
  %73 = load %struct.mk_context*, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool10.i404 = icmp eq %struct.mk_context* %73, null
  %74 = ptrtoint %struct.mk_context* %73 to i32
  %75 = inttoptr i32 %66 to %struct.mk_context*
  br i1 %tobool10.i404, label %mk_create_context.exit412, label %if.then11.i408

if.then11.i408:                                   ; preds = %if.end6.i405
  %next12.i406 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i399, i32 0, i32 0
  %prev.i407 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %73, i32 0, i32 1
  store %struct.mk_context** %next12.i406, %struct.mk_context*** %prev.i407, align 4, !tbaa !8
  br label %mk_create_context.exit412

mk_create_context.exit412:                        ; preds = %if.end6.i405, %if.then11.i408
  %76 = bitcast %struct.mk_context* %c.0.i399 to i32*
  store i32 %74, i32* %76, align 4, !tbaa !16
  %prev21.i409 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i399, i32 0, i32 1
  store %struct.mk_context** %actlist.i, %struct.mk_context*** %prev21.i409, align 4, !tbaa !8
  store %struct.mk_context* %c.0.i399, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool63 = icmp eq %struct.mk_context* %c.0.i399, null
  br i1 %tobool63, label %cleanup, label %if.then.i.i418

if.then.i.i418:                                   ; preds = %mk_create_context.exit412
  %d_cur.i46.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %75, i32 0, i32 6
  %77 = load i32, i32* %d_cur.i46.i, align 4, !tbaa !23
  %add.i47.i = add i32 %77, 4
  %d_max.i48.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %75, i32 0, i32 7
  %78 = load i32, i32* %d_max.i48.i, align 4, !tbaa !24
  %cmp.i49.i = icmp ugt i32 %add.i47.i, %78
  br i1 %cmp.i49.i, label %if.then.i56.i, label %entry.if.end11_crit_edge.i52.i

entry.if.end11_crit_edge.i52.i:                   ; preds = %if.then.i.i418
  %data12.phi.trans.insert.i50.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %75, i32 0, i32 5
  %.pre.i51.i = load i8*, i8** %data12.phi.trans.insert.i50.i, align 4, !tbaa !17
  br label %do.body4.i

if.then.i56.i:                                    ; preds = %if.then.i.i418
  %tobool.i53.i = icmp eq i32 %78, 0
  %shl.i54.i = shl i32 %78, 1
  %spec.select.i55.i = select i1 %tobool.i53.i, i32 16, i32 %shl.i54.i
  br label %while.cond.i60.i

while.cond.i60.i:                                 ; preds = %while.cond.i60.i, %if.then.i56.i
  %dn.0.i57.i = phi i32 [ %spec.select.i55.i, %if.then.i56.i ], [ %shl4.i59.i, %while.cond.i60.i ]
  %cmp3.i58.i = icmp ugt i32 %add.i47.i, %dn.0.i57.i
  %shl4.i59.i = shl i32 %dn.0.i57.i, 1
  br i1 %cmp3.i58.i, label %while.cond.i60.i, label %while.end.i64.i

while.end.i64.i:                                  ; preds = %while.cond.i60.i
  %data5.i61.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %75, i32 0, i32 5
  %79 = load i8*, i8** %data5.i61.i, align 4, !tbaa !17
  %call.i62.i = tail call i8* @realloc(i8* %79, i32 %dn.0.i57.i) #8
  %tobool6.i63.i = icmp eq i8* %call.i62.i, null
  br i1 %tobool6.i63.i, label %cleanup, label %if.end.i66.i

if.end.i66.i:                                     ; preds = %while.end.i64.i
  store i8* %call.i62.i, i8** %data5.i61.i, align 4, !tbaa !17
  store i32 %dn.0.i57.i, i32* %d_max.i48.i, align 4, !tbaa !24
  %.pre36.i65.i = load i32, i32* %d_cur.i46.i, align 4, !tbaa !23
  br label %do.body4.i

do.body4.i:                                       ; preds = %entry.if.end11_crit_edge.i52.i, %if.end.i66.i
  %80 = phi i32 [ %77, %entry.if.end11_crit_edge.i52.i ], [ %.pre36.i65.i, %if.end.i66.i ]
  %81 = phi i8* [ %.pre.i51.i, %entry.if.end11_crit_edge.i52.i ], [ %call.i62.i, %if.end.i66.i ]
  %add.ptr.i67.i = getelementptr inbounds i8, i8* %81, i32 %80
  store i8 24, i8* %add.ptr.i67.i, align 1
  %c_id.i.sroa.4.0.add.ptr.i67.sroa_raw_idx.i = getelementptr inbounds i8, i8* %add.ptr.i67.i, i32 1
  store i8 83, i8* %c_id.i.sroa.4.0.add.ptr.i67.sroa_raw_idx.i, align 1
  %c_id.i.sroa.6.0.add.ptr.i67.sroa_raw_idx.i = getelementptr inbounds i8, i8* %add.ptr.i67.i, i32 2
  store i8 -128, i8* %c_id.i.sroa.6.0.add.ptr.i67.sroa_raw_idx.i, align 1
  %c_id.i.sroa.8.0.add.ptr.i67.sroa_raw_idx.i = getelementptr inbounds i8, i8* %add.ptr.i67.i, i32 3
  store i8 103, i8* %c_id.i.sroa.8.0.add.ptr.i67.sroa_raw_idx.i, align 1
  store i32 %add.i47.i, i32* %d_cur.i46.i, align 4, !tbaa !23
  %.pre = load %struct.mk_context*, %struct.mk_context** %parent7.i400, align 4, !tbaa !21
  %d_cur.i21.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %.pre, i32 0, i32 6
  %82 = load i32, i32* %d_cur.i21.i, align 4, !tbaa !23
  %add.i22.i = add i32 %82, 1
  %d_max.i23.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %.pre, i32 0, i32 7
  %83 = load i32, i32* %d_max.i23.i, align 4, !tbaa !24
  %cmp.i24.i = icmp ugt i32 %add.i22.i, %83
  br i1 %cmp.i24.i, label %if.then.i31.i, label %entry.if.end11_crit_edge.i27.i

entry.if.end11_crit_edge.i27.i:                   ; preds = %do.body4.i
  %data12.phi.trans.insert.i25.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %.pre, i32 0, i32 5
  %.pre.i26.i = load i8*, i8** %data12.phi.trans.insert.i25.i, align 4, !tbaa !17
  br label %if.end10.i452

if.then.i31.i:                                    ; preds = %do.body4.i
  %tobool.i28.i = icmp eq i32 %83, 0
  %shl.i29.i = shl i32 %83, 1
  %spec.select.i30.i = select i1 %tobool.i28.i, i32 16, i32 %shl.i29.i
  br label %while.cond.i35.i

while.cond.i35.i:                                 ; preds = %while.cond.i35.i, %if.then.i31.i
  %dn.0.i32.i = phi i32 [ %spec.select.i30.i, %if.then.i31.i ], [ %shl4.i34.i, %while.cond.i35.i ]
  %cmp3.i33.i = icmp ugt i32 %add.i22.i, %dn.0.i32.i
  %shl4.i34.i = shl i32 %dn.0.i32.i, 1
  br i1 %cmp3.i33.i, label %while.cond.i35.i, label %while.end.i39.i

while.end.i39.i:                                  ; preds = %while.cond.i35.i
  %data5.i36.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %.pre, i32 0, i32 5
  %84 = load i8*, i8** %data5.i36.i, align 4, !tbaa !17
  %call.i37.i = tail call i8* @realloc(i8* %84, i32 %dn.0.i32.i) #8
  %tobool6.i38.i = icmp eq i8* %call.i37.i, null
  br i1 %tobool6.i38.i, label %cleanup, label %if.end.i41.i

if.end.i41.i:                                     ; preds = %while.end.i39.i
  store i8* %call.i37.i, i8** %data5.i36.i, align 4, !tbaa !17
  store i32 %dn.0.i32.i, i32* %d_max.i23.i, align 4, !tbaa !24
  %.pre36.i40.i = load i32, i32* %d_cur.i21.i, align 4, !tbaa !23
  br label %if.end10.i452

if.end10.i452:                                    ; preds = %entry.if.end11_crit_edge.i27.i, %if.end.i41.i
  %85 = phi i32 [ %82, %entry.if.end11_crit_edge.i27.i ], [ %.pre36.i40.i, %if.end.i41.i ]
  %86 = phi i8* [ %.pre.i26.i, %entry.if.end11_crit_edge.i27.i ], [ %call.i37.i, %if.end.i41.i ]
  %add.ptr.i42.i = getelementptr inbounds i8, i8* %86, i32 %85
  store i8 -1, i8* %add.ptr.i42.i, align 1
  store i32 %add.i22.i, i32* %d_cur.i21.i, align 4, !tbaa !23
  store i32 0, i32* %id8.i402, align 4, !tbaa !22
  %.pre1969 = load %struct.mk_context*, %struct.mk_context** %parent7.i400, align 4, !tbaa !21
  %d_cur.i466 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i399, i32 0, i32 6
  %87 = load i32, i32* %d_cur.i466, align 4, !tbaa !23
  %tobool.i467 = icmp eq i32 %87, 0
  br i1 %tobool.i467, label %do.end23.i456, label %if.end.i471

if.end.i471:                                      ; preds = %if.end10.i452
  %tobool1.i469 = icmp eq %struct.mk_context* %.pre1969, null
  %data7.i470 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i399, i32 0, i32 5
  %88 = load i8*, i8** %data7.i470, align 4, !tbaa !17
  br i1 %tobool1.i469, label %if.else.i500, label %do.body.i476

do.body.i476:                                     ; preds = %if.end.i471
  %d_cur.i.i472 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %.pre1969, i32 0, i32 6
  %89 = load i32, i32* %d_cur.i.i472, align 4, !tbaa !23
  %add.i.i473 = add i32 %89, %87
  %d_max.i.i474 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %.pre1969, i32 0, i32 7
  %90 = load i32, i32* %d_max.i.i474, align 4, !tbaa !24
  %cmp.i.i475 = icmp ugt i32 %add.i.i473, %90
  br i1 %cmp.i.i475, label %if.then.i.i483, label %entry.if.end11_crit_edge.i.i479

entry.if.end11_crit_edge.i.i479:                  ; preds = %do.body.i476
  %data12.phi.trans.insert.i.i477 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %.pre1969, i32 0, i32 5
  %.pre.i.i478 = load i8*, i8** %data12.phi.trans.insert.i.i477, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i495

if.then.i.i483:                                   ; preds = %do.body.i476
  %tobool.i.i480 = icmp eq i32 %90, 0
  %shl.i.i481 = shl i32 %90, 1
  %spec.select.i.i482 = select i1 %tobool.i.i480, i32 16, i32 %shl.i.i481
  br label %while.cond.i.i487

while.cond.i.i487:                                ; preds = %while.cond.i.i487, %if.then.i.i483
  %dn.0.i.i484 = phi i32 [ %spec.select.i.i482, %if.then.i.i483 ], [ %shl4.i.i486, %while.cond.i.i487 ]
  %cmp3.i.i485 = icmp ugt i32 %add.i.i473, %dn.0.i.i484
  %shl4.i.i486 = shl i32 %dn.0.i.i484, 1
  br i1 %cmp3.i.i485, label %while.cond.i.i487, label %while.end.i.i491

while.end.i.i491:                                 ; preds = %while.cond.i.i487
  %data5.i.i488 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %.pre1969, i32 0, i32 5
  %91 = load i8*, i8** %data5.i.i488, align 4, !tbaa !17
  %call.i.i489 = tail call i8* @realloc(i8* %91, i32 %dn.0.i.i484) #8
  %tobool6.i.i490 = icmp eq i8* %call.i.i489, null
  br i1 %tobool6.i.i490, label %cleanup, label %if.end.i.i493

if.end.i.i493:                                    ; preds = %while.end.i.i491
  store i8* %call.i.i489, i8** %data5.i.i488, align 4, !tbaa !17
  store i32 %dn.0.i.i484, i32* %d_max.i.i474, align 4, !tbaa !24
  %.pre36.i.i492 = load i32, i32* %d_cur.i.i472, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i495

mk_append_context_data.exit.i495:                 ; preds = %if.end.i.i493, %entry.if.end11_crit_edge.i.i479
  %92 = phi i32 [ %89, %entry.if.end11_crit_edge.i.i479 ], [ %.pre36.i.i492, %if.end.i.i493 ]
  %93 = phi i8* [ %.pre.i.i478, %entry.if.end11_crit_edge.i.i479 ], [ %call.i.i489, %if.end.i.i493 ]
  %add.ptr.i.i494 = getelementptr inbounds i8, i8* %93, i32 %92
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i494, i8* align 1 %88, i32 %87, i1 false) #8
  store i32 %add.i.i473, i32* %d_cur.i.i472, align 4, !tbaa !23
  br label %if.end13.i501

if.else.i500:                                     ; preds = %if.end.i471
  %94 = load %struct.mk_writer*, %struct.mk_writer** %owner.i401, align 4, !tbaa !2
  %fp.i497 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %94, i32 0, i32 0
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i497, align 8, !tbaa !14
  %call9.i498 = tail call i32 @fwrite(i8* %88, i32 %87, i32 1, %struct._IO_FILE* %95) #8
  %cmp10.i499 = icmp eq i32 %call9.i498, 1
  br i1 %cmp10.i499, label %if.end13.i501, label %cleanup

if.end13.i501:                                    ; preds = %if.else.i500, %mk_append_context_data.exit.i495
  store i32 0, i32* %d_cur.i466, align 4, !tbaa !23
  br label %do.end23.i456

do.end23.i456:                                    ; preds = %if.end13.i501, %if.end10.i452
  %next.i454 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i399, i32 0, i32 0
  %96 = load %struct.mk_context*, %struct.mk_context** %next.i454, align 4, !tbaa !16
  %tobool24.i455 = icmp eq %struct.mk_context* %96, null
  %97 = ptrtoint %struct.mk_context* %96 to i32
  br i1 %tobool24.i455, label %do.end81, label %if.then25.i459

if.then25.i459:                                   ; preds = %do.end23.i456
  %98 = bitcast %struct.mk_context*** %prev21.i409 to i32*
  %99 = load i32, i32* %98, align 4, !tbaa !8
  %prev27.i458 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %96, i32 0, i32 1
  %100 = bitcast %struct.mk_context*** %prev27.i458 to i32*
  store i32 %99, i32* %100, align 4, !tbaa !8
  br label %do.end81

do.end81:                                         ; preds = %if.then25.i459, %do.end23.i456
  %101 = bitcast %struct.mk_context*** %prev21.i409 to i32**
  %102 = load i32*, i32** %101, align 4, !tbaa !8
  store i32 %97, i32* %102, align 4, !tbaa !13
  %103 = load %struct.mk_writer*, %struct.mk_writer** %owner.i401, align 4, !tbaa !2
  %freelist.i462 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %103, i32 0, i32 5
  %104 = bitcast %struct.mk_context** %freelist.i462 to i32*
  %105 = load i32, i32* %104, align 4, !tbaa !15
  store i32 %105, i32* %76, align 4, !tbaa !16
  store %struct.mk_context* %c.0.i399, %struct.mk_context** %freelist.i462, align 4, !tbaa !15
  %106 = load i32, i32* %1, align 8, !tbaa !12
  %107 = load %struct.mk_context*, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %tobool.i505 = icmp eq %struct.mk_context* %107, null
  br i1 %tobool.i505, label %if.else.i509, label %if.then.i506

if.then.i506:                                     ; preds = %do.end81
  %108 = bitcast %struct.mk_context* %107 to i32*
  %109 = load i32, i32* %108, align 4, !tbaa !16
  %110 = bitcast %struct.mk_context** %freelist.i to i32*
  store i32 %109, i32* %110, align 4, !tbaa !15
  br label %if.end6.i516

if.else.i509:                                     ; preds = %do.end81
  %call.i507 = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %111 = bitcast i8* %call.i507 to %struct.mk_context*
  %tobool4.i508 = icmp eq i8* %call.i507, null
  br i1 %tobool4.i508, label %cleanup, label %if.end6.i516

if.end6.i516:                                     ; preds = %if.else.i509, %if.then.i506
  %c.0.i510 = phi %struct.mk_context* [ %107, %if.then.i506 ], [ %111, %if.else.i509 ]
  %parent7.i511 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 2
  %112 = bitcast %struct.mk_context** %parent7.i511 to i32*
  store i32 %106, i32* %112, align 4, !tbaa !21
  %owner.i512 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 3
  store %struct.mk_writer* %w, %struct.mk_writer** %owner.i512, align 4, !tbaa !2
  %id8.i513 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 4
  store i32 357149030, i32* %id8.i513, align 4, !tbaa !22
  %113 = load %struct.mk_context*, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool10.i515 = icmp eq %struct.mk_context* %113, null
  %114 = ptrtoint %struct.mk_context* %113 to i32
  br i1 %tobool10.i515, label %mk_create_context.exit523, label %if.then11.i519

if.then11.i519:                                   ; preds = %if.end6.i516
  %next12.i517 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 0
  %prev.i518 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %113, i32 0, i32 1
  store %struct.mk_context** %next12.i517, %struct.mk_context*** %prev.i518, align 4, !tbaa !8
  br label %mk_create_context.exit523

mk_create_context.exit523:                        ; preds = %if.end6.i516, %if.then11.i519
  %115 = bitcast %struct.mk_context* %c.0.i510 to i32*
  store i32 %114, i32* %115, align 4, !tbaa !16
  %prev21.i520 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 1
  store %struct.mk_context** %actlist.i, %struct.mk_context*** %prev21.i520, align 4, !tbaa !8
  store %struct.mk_context* %c.0.i510, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool84 = icmp eq %struct.mk_context* %c.0.i510, null
  br i1 %tobool84, label %cleanup, label %do.body87

do.body87:                                        ; preds = %mk_create_context.exit523
  %d_cur.i1131 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 6
  %116 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  %add.i1132 = add i32 %116, 2
  %d_max.i1133 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 7
  %117 = load i32, i32* %d_max.i1133, align 4, !tbaa !24
  %cmp.i1134 = icmp ugt i32 %add.i1132, %117
  br i1 %cmp.i1134, label %if.then.i1141, label %entry.if.end11_crit_edge.i1137

entry.if.end11_crit_edge.i1137:                   ; preds = %do.body87
  %data12.phi.trans.insert.i1135 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %.pre.i1136 = load i8*, i8** %data12.phi.trans.insert.i1135, align 4, !tbaa !17
  br label %do.body2.i529

if.then.i1141:                                    ; preds = %do.body87
  %tobool.i1138 = icmp eq i32 %117, 0
  %shl.i1139 = shl i32 %117, 1
  %spec.select.i1140 = select i1 %tobool.i1138, i32 16, i32 %shl.i1139
  br label %while.cond.i1145

while.cond.i1145:                                 ; preds = %while.cond.i1145, %if.then.i1141
  %dn.0.i1142 = phi i32 [ %spec.select.i1140, %if.then.i1141 ], [ %shl4.i1144, %while.cond.i1145 ]
  %cmp3.i1143 = icmp ugt i32 %add.i1132, %dn.0.i1142
  %shl4.i1144 = shl i32 %dn.0.i1142, 1
  br i1 %cmp3.i1143, label %while.cond.i1145, label %while.end.i1149

while.end.i1149:                                  ; preds = %while.cond.i1145
  %data5.i1146 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %118 = load i8*, i8** %data5.i1146, align 4, !tbaa !17
  %call.i1147 = tail call i8* @realloc(i8* %118, i32 %dn.0.i1142) #8
  %tobool6.i1148 = icmp eq i8* %call.i1147, null
  br i1 %tobool6.i1148, label %cleanup, label %if.end.i1151

if.end.i1151:                                     ; preds = %while.end.i1149
  store i8* %call.i1147, i8** %data5.i1146, align 4, !tbaa !17
  store i32 %dn.0.i1142, i32* %d_max.i1133, align 4, !tbaa !24
  %.pre36.i1150 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  br label %do.body2.i529

do.body2.i529:                                    ; preds = %if.end.i1151, %entry.if.end11_crit_edge.i1137
  %119 = phi i32 [ %116, %entry.if.end11_crit_edge.i1137 ], [ %.pre36.i1150, %if.end.i1151 ]
  %120 = phi i8* [ %.pre.i1136, %entry.if.end11_crit_edge.i1137 ], [ %call.i1147, %if.end.i1151 ]
  %add.ptr.i1152 = getelementptr inbounds i8, i8* %120, i32 %119
  store i8 77, i8* %add.ptr.i1152, align 1
  %c_id.i1122.sroa.6.2.add.ptr.i1152.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1152, i32 1
  store i8 -128, i8* %c_id.i1122.sroa.6.2.add.ptr.i1152.sroa_raw_idx, align 1
  store i32 %add.i1132, i32* %d_cur.i1131, align 4, !tbaa !23
  %call3.i527 = tail call fastcc i32 @mk_write_size(%struct.mk_context* nonnull %c.0.i510, i32 24) #8
  %cmp4.i528 = icmp slt i32 %call3.i527, 0
  br i1 %cmp4.i528, label %cleanup, label %do.body9.i534

do.body9.i534:                                    ; preds = %do.body2.i529
  %121 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  %add.i.i531 = add i32 %121, 24
  %122 = load i32, i32* %d_max.i1133, align 4, !tbaa !24
  %cmp.i.i533 = icmp ugt i32 %add.i.i531, %122
  br i1 %cmp.i.i533, label %if.then.i.i541, label %entry.if.end11_crit_edge.i.i537

entry.if.end11_crit_edge.i.i537:                  ; preds = %do.body9.i534
  %data12.phi.trans.insert.i.i535 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %.pre.i.i536 = load i8*, i8** %data12.phi.trans.insert.i.i535, align 4, !tbaa !17
  br label %do.body95

if.then.i.i541:                                   ; preds = %do.body9.i534
  %tobool.i.i538 = icmp eq i32 %122, 0
  %shl.i.i539 = shl i32 %122, 1
  %spec.select.i.i540 = select i1 %tobool.i.i538, i32 16, i32 %shl.i.i539
  br label %while.cond.i.i545

while.cond.i.i545:                                ; preds = %while.cond.i.i545, %if.then.i.i541
  %dn.0.i.i542 = phi i32 [ %spec.select.i.i540, %if.then.i.i541 ], [ %shl4.i.i544, %while.cond.i.i545 ]
  %cmp3.i.i543 = icmp ugt i32 %add.i.i531, %dn.0.i.i542
  %shl4.i.i544 = shl i32 %dn.0.i.i542, 1
  br i1 %cmp3.i.i543, label %while.cond.i.i545, label %while.end.i.i549

while.end.i.i549:                                 ; preds = %while.cond.i.i545
  %data5.i.i546 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %123 = load i8*, i8** %data5.i.i546, align 4, !tbaa !17
  %call.i.i547 = tail call i8* @realloc(i8* %123, i32 %dn.0.i.i542) #8
  %tobool6.i.i548 = icmp eq i8* %call.i.i547, null
  br i1 %tobool6.i.i548, label %cleanup, label %if.end.i.i551

if.end.i.i551:                                    ; preds = %while.end.i.i549
  store i8* %call.i.i547, i8** %data5.i.i546, align 4, !tbaa !17
  store i32 %dn.0.i.i542, i32* %d_max.i1133, align 4, !tbaa !24
  %.pre36.i.i550 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  br label %do.body95

do.body95:                                        ; preds = %if.end.i.i551, %entry.if.end11_crit_edge.i.i537
  %124 = phi i32 [ %121, %entry.if.end11_crit_edge.i.i537 ], [ %.pre36.i.i550, %if.end.i.i551 ]
  %125 = phi i8* [ %.pre.i.i536, %entry.if.end11_crit_edge.i.i537 ], [ %call.i.i547, %if.end.i.i551 ]
  %add.ptr.i.i552 = getelementptr inbounds i8, i8* %125, i32 %124
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(24) %add.ptr.i.i552, i8* nonnull align 1 dereferenceable(24) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 24, i1 false) #8
  store i32 %add.i.i531, i32* %d_cur.i1131, align 4, !tbaa !23
  %call.i556 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %writing_app) #9
  %add.i1166 = add i32 %121, 26
  %126 = load i32, i32* %d_max.i1133, align 4, !tbaa !24
  %cmp.i1168 = icmp ugt i32 %add.i1166, %126
  br i1 %cmp.i1168, label %if.then.i1175, label %entry.if.end11_crit_edge.i1171

entry.if.end11_crit_edge.i1171:                   ; preds = %do.body95
  %data12.phi.trans.insert.i1169 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %.pre.i1170 = load i8*, i8** %data12.phi.trans.insert.i1169, align 4, !tbaa !17
  br label %do.body2.i561

if.then.i1175:                                    ; preds = %do.body95
  %tobool.i1172 = icmp eq i32 %126, 0
  %shl.i1173 = shl i32 %126, 1
  %spec.select.i1174 = select i1 %tobool.i1172, i32 16, i32 %shl.i1173
  br label %while.cond.i1179

while.cond.i1179:                                 ; preds = %while.cond.i1179, %if.then.i1175
  %dn.0.i1176 = phi i32 [ %spec.select.i1174, %if.then.i1175 ], [ %shl4.i1178, %while.cond.i1179 ]
  %cmp3.i1177 = icmp ugt i32 %add.i1166, %dn.0.i1176
  %shl4.i1178 = shl i32 %dn.0.i1176, 1
  br i1 %cmp3.i1177, label %while.cond.i1179, label %while.end.i1183

while.end.i1183:                                  ; preds = %while.cond.i1179
  %data5.i1180 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %127 = load i8*, i8** %data5.i1180, align 4, !tbaa !17
  %call.i1181 = tail call i8* @realloc(i8* %127, i32 %dn.0.i1176) #8
  %tobool6.i1182 = icmp eq i8* %call.i1181, null
  br i1 %tobool6.i1182, label %cleanup, label %if.end.i1185

if.end.i1185:                                     ; preds = %while.end.i1183
  store i8* %call.i1181, i8** %data5.i1180, align 4, !tbaa !17
  store i32 %dn.0.i1176, i32* %d_max.i1133, align 4, !tbaa !24
  %.pre36.i1184 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  br label %do.body2.i561

do.body2.i561:                                    ; preds = %if.end.i1185, %entry.if.end11_crit_edge.i1171
  %128 = phi i32 [ %add.i.i531, %entry.if.end11_crit_edge.i1171 ], [ %.pre36.i1184, %if.end.i1185 ]
  %129 = phi i8* [ %.pre.i1170, %entry.if.end11_crit_edge.i1171 ], [ %call.i1181, %if.end.i1185 ]
  %add.ptr.i1186 = getelementptr inbounds i8, i8* %129, i32 %128
  store i8 87, i8* %add.ptr.i1186, align 1
  %c_id.i1156.sroa.6.2.add.ptr.i1186.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1186, i32 1
  store i8 65, i8* %c_id.i1156.sroa.6.2.add.ptr.i1186.sroa_raw_idx, align 1
  store i32 %add.i1166, i32* %d_cur.i1131, align 4, !tbaa !23
  %call3.i559 = tail call fastcc i32 @mk_write_size(%struct.mk_context* nonnull %c.0.i510, i32 %call.i556) #8
  %cmp4.i560 = icmp slt i32 %call3.i559, 0
  br i1 %cmp4.i560, label %cleanup, label %do.body9.i566

do.body9.i566:                                    ; preds = %do.body2.i561
  %130 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  %add.i.i563 = add i32 %130, %call.i556
  %131 = load i32, i32* %d_max.i1133, align 4, !tbaa !24
  %cmp.i.i565 = icmp ugt i32 %add.i.i563, %131
  br i1 %cmp.i.i565, label %if.then.i.i573, label %entry.if.end11_crit_edge.i.i569

entry.if.end11_crit_edge.i.i569:                  ; preds = %do.body9.i566
  %data12.phi.trans.insert.i.i567 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %.pre.i.i568 = load i8*, i8** %data12.phi.trans.insert.i.i567, align 4, !tbaa !17
  br label %do.body103

if.then.i.i573:                                   ; preds = %do.body9.i566
  %tobool.i.i570 = icmp eq i32 %131, 0
  %shl.i.i571 = shl i32 %131, 1
  %spec.select.i.i572 = select i1 %tobool.i.i570, i32 16, i32 %shl.i.i571
  br label %while.cond.i.i577

while.cond.i.i577:                                ; preds = %while.cond.i.i577, %if.then.i.i573
  %dn.0.i.i574 = phi i32 [ %spec.select.i.i572, %if.then.i.i573 ], [ %shl4.i.i576, %while.cond.i.i577 ]
  %cmp3.i.i575 = icmp ugt i32 %add.i.i563, %dn.0.i.i574
  %shl4.i.i576 = shl i32 %dn.0.i.i574, 1
  br i1 %cmp3.i.i575, label %while.cond.i.i577, label %while.end.i.i581

while.end.i.i581:                                 ; preds = %while.cond.i.i577
  %data5.i.i578 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %132 = load i8*, i8** %data5.i.i578, align 4, !tbaa !17
  %call.i.i579 = tail call i8* @realloc(i8* %132, i32 %dn.0.i.i574) #8
  %tobool6.i.i580 = icmp eq i8* %call.i.i579, null
  br i1 %tobool6.i.i580, label %cleanup, label %if.end.i.i583

if.end.i.i583:                                    ; preds = %while.end.i.i581
  store i8* %call.i.i579, i8** %data5.i.i578, align 4, !tbaa !17
  store i32 %dn.0.i.i574, i32* %d_max.i1133, align 4, !tbaa !24
  %.pre36.i.i582 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  br label %do.body103

do.body103:                                       ; preds = %if.end.i.i583, %entry.if.end11_crit_edge.i.i569
  %133 = phi i32 [ %130, %entry.if.end11_crit_edge.i.i569 ], [ %.pre36.i.i582, %if.end.i.i583 ]
  %134 = phi i8* [ %.pre.i.i568, %entry.if.end11_crit_edge.i.i569 ], [ %call.i.i579, %if.end.i.i583 ]
  %add.ptr.i.i584 = getelementptr inbounds i8, i8* %134, i32 %133
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i584, i8* align 1 %writing_app, i32 %call.i556, i1 false) #8
  store i32 %add.i.i563, i32* %d_cur.i1131, align 4, !tbaa !23
  %135 = load i64, i64* %timescale1, align 8, !tbaa !18
  %call105 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i510, i32 2807729, i64 %135)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %cleanup, label %do.body112

do.body112:                                       ; preds = %do.body103
  %136 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  %add.i.i589 = add i32 %136, 2
  %137 = load i32, i32* %d_max.i1133, align 4, !tbaa !24
  %cmp.i.i591 = icmp ugt i32 %add.i.i589, %137
  br i1 %cmp.i.i591, label %if.then.i.i598, label %entry.if.end11_crit_edge.i.i594

entry.if.end11_crit_edge.i.i594:                  ; preds = %do.body112
  %data12.phi.trans.insert.i.i592 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %.pre.i.i593 = load i8*, i8** %data12.phi.trans.insert.i.i592, align 4, !tbaa !17
  br label %do.body1.i

if.then.i.i598:                                   ; preds = %do.body112
  %tobool.i.i595 = icmp eq i32 %137, 0
  %shl.i.i596 = shl i32 %137, 1
  %spec.select.i.i597 = select i1 %tobool.i.i595, i32 16, i32 %shl.i.i596
  br label %while.cond.i.i602

while.cond.i.i602:                                ; preds = %while.cond.i.i602, %if.then.i.i598
  %dn.0.i.i599 = phi i32 [ %spec.select.i.i597, %if.then.i.i598 ], [ %shl4.i.i601, %while.cond.i.i602 ]
  %cmp3.i.i600 = icmp ugt i32 %add.i.i589, %dn.0.i.i599
  %shl4.i.i601 = shl i32 %dn.0.i.i599, 1
  br i1 %cmp3.i.i600, label %while.cond.i.i602, label %while.end.i.i606

while.end.i.i606:                                 ; preds = %while.cond.i.i602
  %data5.i.i603 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %138 = load i8*, i8** %data5.i.i603, align 4, !tbaa !17
  %call.i.i604 = tail call i8* @realloc(i8* %138, i32 %dn.0.i.i599) #8
  %tobool6.i.i605 = icmp eq i8* %call.i.i604, null
  br i1 %tobool6.i.i605, label %cleanup, label %if.end.i.i608

if.end.i.i608:                                    ; preds = %while.end.i.i606
  store i8* %call.i.i604, i8** %data5.i.i603, align 4, !tbaa !17
  store i32 %dn.0.i.i599, i32* %d_max.i1133, align 4, !tbaa !24
  %.pre36.i.i607 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.i608, %entry.if.end11_crit_edge.i.i594
  %139 = phi i32 [ %136, %entry.if.end11_crit_edge.i.i594 ], [ %.pre36.i.i607, %if.end.i.i608 ]
  %140 = phi i8* [ %.pre.i.i593, %entry.if.end11_crit_edge.i.i594 ], [ %call.i.i604, %if.end.i.i608 ]
  %add.ptr.i.i609 = getelementptr inbounds i8, i8* %140, i32 %139
  store i8 68, i8* %add.ptr.i.i609, align 1
  %c_id.i.sroa.6.2.add.ptr.i.sroa_raw_idx.i = getelementptr inbounds i8, i8* %add.ptr.i.i609, i32 1
  store i8 -119, i8* %c_id.i.sroa.6.2.add.ptr.i.sroa_raw_idx.i, align 1
  store i32 %add.i.i589, i32* %d_cur.i1131, align 4, !tbaa !23
  %add.i.i.i = add i32 %136, 3
  %141 = load i32, i32* %d_max.i1133, align 4, !tbaa !24
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %141
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %entry.if.end11_crit_edge.i.i.i

entry.if.end11_crit_edge.i.i.i:                   ; preds = %do.body1.i
  %data12.phi.trans.insert.i.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %.pre.i.i.i = load i8*, i8** %data12.phi.trans.insert.i.i.i, align 4, !tbaa !17
  br label %do.body7.i

if.then.i.i.i:                                    ; preds = %do.body1.i
  %tobool.i.i.i = icmp eq i32 %141, 0
  %shl.i.i.i = shl i32 %141, 1
  %spec.select.i.i.i = select i1 %tobool.i.i.i, i32 16, i32 %shl.i.i.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i, %if.then.i.i.i
  %dn.0.i.i.i = phi i32 [ %spec.select.i.i.i, %if.then.i.i.i ], [ %shl4.i.i.i, %while.cond.i.i.i ]
  %cmp3.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i
  %shl4.i.i.i = shl i32 %dn.0.i.i.i, 1
  br i1 %cmp3.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %data5.i.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %142 = load i8*, i8** %data5.i.i.i, align 4, !tbaa !17
  %call.i.i.i = tail call i8* @realloc(i8* %142, i32 %dn.0.i.i.i) #8
  %tobool6.i.i.i = icmp eq i8* %call.i.i.i, null
  br i1 %tobool6.i.i.i, label %cleanup, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store i8* %call.i.i.i, i8** %data5.i.i.i, align 4, !tbaa !17
  store i32 %dn.0.i.i.i, i32* %d_max.i1133, align 4, !tbaa !24
  %.pre36.i.i.i = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  br label %do.body7.i

do.body7.i:                                       ; preds = %if.end.i.i.i, %entry.if.end11_crit_edge.i.i.i
  %143 = phi i32 [ %add.i.i589, %entry.if.end11_crit_edge.i.i.i ], [ %.pre36.i.i.i, %if.end.i.i.i ]
  %144 = phi i8* [ %.pre.i.i.i, %entry.if.end11_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %144, i32 %143
  store i8 -124, i8* %add.ptr.i.i.i, align 1
  store i32 %add.i.i.i, i32* %d_cur.i1131, align 4, !tbaa !23
  %add.i.i3.i = add i32 %136, 7
  %145 = load i32, i32* %d_max.i1133, align 4, !tbaa !24
  %cmp.i.i5.i = icmp ugt i32 %add.i.i3.i, %145
  br i1 %cmp.i.i5.i, label %if.then.i.i12.i, label %entry.if.end11_crit_edge.i.i8.i

entry.if.end11_crit_edge.i.i8.i:                  ; preds = %do.body7.i
  %data12.phi.trans.insert.i.i6.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %.pre.i.i7.i = load i8*, i8** %data12.phi.trans.insert.i.i6.i, align 4, !tbaa !17
  br label %do.end119

if.then.i.i12.i:                                  ; preds = %do.body7.i
  %tobool.i.i9.i = icmp eq i32 %145, 0
  %shl.i.i10.i = shl i32 %145, 1
  %spec.select.i.i11.i = select i1 %tobool.i.i9.i, i32 16, i32 %shl.i.i10.i
  br label %while.cond.i.i16.i

while.cond.i.i16.i:                               ; preds = %while.cond.i.i16.i, %if.then.i.i12.i
  %dn.0.i.i13.i = phi i32 [ %spec.select.i.i11.i, %if.then.i.i12.i ], [ %shl4.i.i15.i, %while.cond.i.i16.i ]
  %cmp3.i.i14.i = icmp ugt i32 %add.i.i3.i, %dn.0.i.i13.i
  %shl4.i.i15.i = shl i32 %dn.0.i.i13.i, 1
  br i1 %cmp3.i.i14.i, label %while.cond.i.i16.i, label %while.end.i.i20.i

while.end.i.i20.i:                                ; preds = %while.cond.i.i16.i
  %data5.i.i17.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %146 = load i8*, i8** %data5.i.i17.i, align 4, !tbaa !17
  %call.i.i18.i = tail call i8* @realloc(i8* %146, i32 %dn.0.i.i13.i) #8
  %tobool6.i.i19.i = icmp eq i8* %call.i.i18.i, null
  br i1 %tobool6.i.i19.i, label %cleanup, label %if.end.i.i22.i

if.end.i.i22.i:                                   ; preds = %while.end.i.i20.i
  store i8* %call.i.i18.i, i8** %data5.i.i17.i, align 4, !tbaa !17
  store i32 %dn.0.i.i13.i, i32* %d_max.i1133, align 4, !tbaa !24
  %.pre36.i.i21.i = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  br label %do.end119

do.end119:                                        ; preds = %if.end.i.i22.i, %entry.if.end11_crit_edge.i.i8.i
  %147 = phi i32 [ %add.i.i.i, %entry.if.end11_crit_edge.i.i8.i ], [ %.pre36.i.i21.i, %if.end.i.i22.i ]
  %148 = phi i8* [ %.pre.i.i7.i, %entry.if.end11_crit_edge.i.i8.i ], [ %call.i.i18.i, %if.end.i.i22.i ]
  %add.ptr.i.i23.i = getelementptr inbounds i8, i8* %148, i32 %147
  %149 = bitcast i8* %add.ptr.i.i23.i to i32*
  store i32 0, i32* %149, align 1
  store i32 %add.i.i3.i, i32* %d_cur.i1131, align 4, !tbaa !23
  %duration_ptr = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 1
  store i32 %add.i.i.i, i32* %duration_ptr, align 4, !tbaa !25
  %150 = load i32, i32* %id8.i513, align 4, !tbaa !22
  %tobool.i612 = icmp eq i32 %150, 0
  br i1 %tobool.i612, label %if.end10.i623, label %do.body.i616

do.body.i616:                                     ; preds = %do.end119
  %151 = load %struct.mk_context*, %struct.mk_context** %parent7.i511, align 4, !tbaa !21
  %shr.i1191 = lshr i32 %150, 24
  %conv.i1192 = trunc i32 %shr.i1191 to i8
  %shr1.i1194 = lshr i32 %150, 16
  %conv2.i1195 = trunc i32 %shr1.i1194 to i8
  %shr4.i1197 = lshr i32 %150, 8
  %conv5.i1198 = trunc i32 %shr4.i1197 to i8
  %conv7.i1200 = trunc i32 %150 to i8
  %tobool.i1201 = icmp eq i8 %conv.i1192, 0
  br i1 %tobool.i1201, label %if.end.i1205, label %if.then.i1203

if.then.i1203:                                    ; preds = %do.body.i616
  %d_cur.i1573 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 6
  %152 = load i32, i32* %d_cur.i1573, align 4, !tbaa !23
  %add.i1574 = add i32 %152, 4
  %d_max.i1575 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 7
  %153 = load i32, i32* %d_max.i1575, align 4, !tbaa !24
  %cmp.i1576 = icmp ugt i32 %add.i1574, %153
  br i1 %cmp.i1576, label %if.then.i1583, label %entry.if.end11_crit_edge.i1579

entry.if.end11_crit_edge.i1579:                   ; preds = %if.then.i1203
  %data12.phi.trans.insert.i1577 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 5
  %.pre.i1578 = load i8*, i8** %data12.phi.trans.insert.i1577, align 4, !tbaa !17
  br label %if.end11.i1595

if.then.i1583:                                    ; preds = %if.then.i1203
  %tobool.i1580 = icmp eq i32 %153, 0
  %shl.i1581 = shl i32 %153, 1
  %spec.select.i1582 = select i1 %tobool.i1580, i32 16, i32 %shl.i1581
  br label %while.cond.i1587

while.cond.i1587:                                 ; preds = %while.cond.i1587, %if.then.i1583
  %dn.0.i1584 = phi i32 [ %spec.select.i1582, %if.then.i1583 ], [ %shl4.i1586, %while.cond.i1587 ]
  %cmp3.i1585 = icmp ugt i32 %add.i1574, %dn.0.i1584
  %shl4.i1586 = shl i32 %dn.0.i1584, 1
  br i1 %cmp3.i1585, label %while.cond.i1587, label %while.end.i1591

while.end.i1591:                                  ; preds = %while.cond.i1587
  %data5.i1588 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 5
  %154 = load i8*, i8** %data5.i1588, align 4, !tbaa !17
  %call.i1589 = tail call i8* @realloc(i8* %154, i32 %dn.0.i1584) #8
  %tobool6.i1590 = icmp eq i8* %call.i1589, null
  br i1 %tobool6.i1590, label %cleanup, label %if.end.i1593

if.end.i1593:                                     ; preds = %while.end.i1591
  store i8* %call.i1589, i8** %data5.i1588, align 4, !tbaa !17
  store i32 %dn.0.i1584, i32* %d_max.i1575, align 4, !tbaa !24
  %.pre36.i1592 = load i32, i32* %d_cur.i1573, align 4, !tbaa !23
  br label %if.end11.i1595

if.end11.i1595:                                   ; preds = %if.end.i1593, %entry.if.end11_crit_edge.i1579
  %155 = phi i32 [ %152, %entry.if.end11_crit_edge.i1579 ], [ %.pre36.i1592, %if.end.i1593 ]
  %156 = phi i8* [ %.pre.i1578, %entry.if.end11_crit_edge.i1579 ], [ %call.i1589, %if.end.i1593 ]
  %add.ptr.i1594 = getelementptr inbounds i8, i8* %156, i32 %155
  store i8 %conv.i1192, i8* %add.ptr.i1594, align 1
  %c_id.i1190.sroa.4.0.add.ptr.i1594.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1594, i32 1
  store i8 %conv2.i1195, i8* %c_id.i1190.sroa.4.0.add.ptr.i1594.sroa_raw_idx, align 1
  %c_id.i1190.sroa.6.0.add.ptr.i1594.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1594, i32 2
  store i8 %conv5.i1198, i8* %c_id.i1190.sroa.6.0.add.ptr.i1594.sroa_raw_idx, align 1
  %c_id.i1190.sroa.8.0.add.ptr.i1594.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1594, i32 3
  store i8 %conv7.i1200, i8* %c_id.i1190.sroa.8.0.add.ptr.i1594.sroa_raw_idx, align 1
  store i32 %add.i1574, i32* %d_cur.i1573, align 4, !tbaa !23
  br label %do.body3.i620

if.end.i1205:                                     ; preds = %do.body.i616
  %tobool9.i1204 = icmp eq i8 %conv2.i1195, 0
  br i1 %tobool9.i1204, label %if.end13.i1209, label %if.then10.i1207

if.then10.i1207:                                  ; preds = %if.end.i1205
  %d_cur.i1598 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 6
  %157 = load i32, i32* %d_cur.i1598, align 4, !tbaa !23
  %add.i1599 = add i32 %157, 3
  %d_max.i1600 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 7
  %158 = load i32, i32* %d_max.i1600, align 4, !tbaa !24
  %cmp.i1601 = icmp ugt i32 %add.i1599, %158
  br i1 %cmp.i1601, label %if.then.i1608, label %entry.if.end11_crit_edge.i1604

entry.if.end11_crit_edge.i1604:                   ; preds = %if.then10.i1207
  %data12.phi.trans.insert.i1602 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 5
  %.pre.i1603 = load i8*, i8** %data12.phi.trans.insert.i1602, align 4, !tbaa !17
  br label %if.end11.i1620

if.then.i1608:                                    ; preds = %if.then10.i1207
  %tobool.i1605 = icmp eq i32 %158, 0
  %shl.i1606 = shl i32 %158, 1
  %spec.select.i1607 = select i1 %tobool.i1605, i32 16, i32 %shl.i1606
  br label %while.cond.i1612

while.cond.i1612:                                 ; preds = %while.cond.i1612, %if.then.i1608
  %dn.0.i1609 = phi i32 [ %spec.select.i1607, %if.then.i1608 ], [ %shl4.i1611, %while.cond.i1612 ]
  %cmp3.i1610 = icmp ugt i32 %add.i1599, %dn.0.i1609
  %shl4.i1611 = shl i32 %dn.0.i1609, 1
  br i1 %cmp3.i1610, label %while.cond.i1612, label %while.end.i1616

while.end.i1616:                                  ; preds = %while.cond.i1612
  %data5.i1613 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 5
  %159 = load i8*, i8** %data5.i1613, align 4, !tbaa !17
  %call.i1614 = tail call i8* @realloc(i8* %159, i32 %dn.0.i1609) #8
  %tobool6.i1615 = icmp eq i8* %call.i1614, null
  br i1 %tobool6.i1615, label %cleanup, label %if.end.i1618

if.end.i1618:                                     ; preds = %while.end.i1616
  store i8* %call.i1614, i8** %data5.i1613, align 4, !tbaa !17
  store i32 %dn.0.i1609, i32* %d_max.i1600, align 4, !tbaa !24
  %.pre36.i1617 = load i32, i32* %d_cur.i1598, align 4, !tbaa !23
  br label %if.end11.i1620

if.end11.i1620:                                   ; preds = %if.end.i1618, %entry.if.end11_crit_edge.i1604
  %160 = phi i32 [ %157, %entry.if.end11_crit_edge.i1604 ], [ %.pre36.i1617, %if.end.i1618 ]
  %161 = phi i8* [ %.pre.i1603, %entry.if.end11_crit_edge.i1604 ], [ %call.i1614, %if.end.i1618 ]
  %add.ptr.i1619 = getelementptr inbounds i8, i8* %161, i32 %160
  store i8 %conv2.i1195, i8* %add.ptr.i1619, align 1
  %c_id.i1190.sroa.6.1.add.ptr.i1619.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1619, i32 1
  store i8 %conv5.i1198, i8* %c_id.i1190.sroa.6.1.add.ptr.i1619.sroa_raw_idx, align 1
  %c_id.i1190.sroa.8.1.add.ptr.i1619.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1619, i32 2
  store i8 %conv7.i1200, i8* %c_id.i1190.sroa.8.1.add.ptr.i1619.sroa_raw_idx, align 1
  store i32 %add.i1599, i32* %d_cur.i1598, align 4, !tbaa !23
  br label %do.body3.i620

if.end13.i1209:                                   ; preds = %if.end.i1205
  %tobool15.i1208 = icmp eq i8 %conv5.i1198, 0
  %d_cur.i1215 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 6
  %162 = load i32, i32* %d_cur.i1215, align 4, !tbaa !23
  br i1 %tobool15.i1208, label %if.end20.i1212, label %if.then16.i1211

if.then16.i1211:                                  ; preds = %if.end13.i1209
  %add.i1624 = add i32 %162, 2
  %d_max.i1625 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 7
  %163 = load i32, i32* %d_max.i1625, align 4, !tbaa !24
  %cmp.i1626 = icmp ugt i32 %add.i1624, %163
  br i1 %cmp.i1626, label %if.then.i1633, label %entry.if.end11_crit_edge.i1629

entry.if.end11_crit_edge.i1629:                   ; preds = %if.then16.i1211
  %data12.phi.trans.insert.i1627 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 5
  %.pre.i1628 = load i8*, i8** %data12.phi.trans.insert.i1627, align 4, !tbaa !17
  br label %if.end11.i1645

if.then.i1633:                                    ; preds = %if.then16.i1211
  %tobool.i1630 = icmp eq i32 %163, 0
  %shl.i1631 = shl i32 %163, 1
  %spec.select.i1632 = select i1 %tobool.i1630, i32 16, i32 %shl.i1631
  br label %while.cond.i1637

while.cond.i1637:                                 ; preds = %while.cond.i1637, %if.then.i1633
  %dn.0.i1634 = phi i32 [ %spec.select.i1632, %if.then.i1633 ], [ %shl4.i1636, %while.cond.i1637 ]
  %cmp3.i1635 = icmp ugt i32 %add.i1624, %dn.0.i1634
  %shl4.i1636 = shl i32 %dn.0.i1634, 1
  br i1 %cmp3.i1635, label %while.cond.i1637, label %while.end.i1641

while.end.i1641:                                  ; preds = %while.cond.i1637
  %data5.i1638 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 5
  %164 = load i8*, i8** %data5.i1638, align 4, !tbaa !17
  %call.i1639 = tail call i8* @realloc(i8* %164, i32 %dn.0.i1634) #8
  %tobool6.i1640 = icmp eq i8* %call.i1639, null
  br i1 %tobool6.i1640, label %cleanup, label %if.end.i1643

if.end.i1643:                                     ; preds = %while.end.i1641
  store i8* %call.i1639, i8** %data5.i1638, align 4, !tbaa !17
  store i32 %dn.0.i1634, i32* %d_max.i1625, align 4, !tbaa !24
  %.pre36.i1642 = load i32, i32* %d_cur.i1215, align 4, !tbaa !23
  br label %if.end11.i1645

if.end11.i1645:                                   ; preds = %if.end.i1643, %entry.if.end11_crit_edge.i1629
  %165 = phi i32 [ %162, %entry.if.end11_crit_edge.i1629 ], [ %.pre36.i1642, %if.end.i1643 ]
  %166 = phi i8* [ %.pre.i1628, %entry.if.end11_crit_edge.i1629 ], [ %call.i1639, %if.end.i1643 ]
  %add.ptr.i1644 = getelementptr inbounds i8, i8* %166, i32 %165
  store i8 %conv5.i1198, i8* %add.ptr.i1644, align 1
  %c_id.i1190.sroa.8.2.add.ptr.i1644.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1644, i32 1
  store i8 %conv7.i1200, i8* %c_id.i1190.sroa.8.2.add.ptr.i1644.sroa_raw_idx, align 1
  store i32 %add.i1624, i32* %d_cur.i1215, align 4, !tbaa !23
  br label %do.body3.i620

if.end20.i1212:                                   ; preds = %if.end13.i1209
  %add.i1216 = add i32 %162, 1
  %d_max.i1217 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 7
  %167 = load i32, i32* %d_max.i1217, align 4, !tbaa !24
  %cmp.i1218 = icmp ugt i32 %add.i1216, %167
  br i1 %cmp.i1218, label %if.then.i1225, label %entry.if.end11_crit_edge.i1221

entry.if.end11_crit_edge.i1221:                   ; preds = %if.end20.i1212
  %data12.phi.trans.insert.i1219 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 5
  %.pre.i1220 = load i8*, i8** %data12.phi.trans.insert.i1219, align 4, !tbaa !17
  br label %if.end11.i1237

if.then.i1225:                                    ; preds = %if.end20.i1212
  %tobool.i1222 = icmp eq i32 %167, 0
  %shl.i1223 = shl i32 %167, 1
  %spec.select.i1224 = select i1 %tobool.i1222, i32 16, i32 %shl.i1223
  br label %while.cond.i1229

while.cond.i1229:                                 ; preds = %while.cond.i1229, %if.then.i1225
  %dn.0.i1226 = phi i32 [ %spec.select.i1224, %if.then.i1225 ], [ %shl4.i1228, %while.cond.i1229 ]
  %cmp3.i1227 = icmp ugt i32 %add.i1216, %dn.0.i1226
  %shl4.i1228 = shl i32 %dn.0.i1226, 1
  br i1 %cmp3.i1227, label %while.cond.i1229, label %while.end.i1233

while.end.i1233:                                  ; preds = %while.cond.i1229
  %data5.i1230 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %151, i32 0, i32 5
  %168 = load i8*, i8** %data5.i1230, align 4, !tbaa !17
  %call.i1231 = tail call i8* @realloc(i8* %168, i32 %dn.0.i1226) #8
  %tobool6.i1232 = icmp eq i8* %call.i1231, null
  br i1 %tobool6.i1232, label %cleanup, label %if.end.i1235

if.end.i1235:                                     ; preds = %while.end.i1233
  store i8* %call.i1231, i8** %data5.i1230, align 4, !tbaa !17
  store i32 %dn.0.i1226, i32* %d_max.i1217, align 4, !tbaa !24
  %.pre36.i1234 = load i32, i32* %d_cur.i1215, align 4, !tbaa !23
  br label %if.end11.i1237

if.end11.i1237:                                   ; preds = %if.end.i1235, %entry.if.end11_crit_edge.i1221
  %169 = phi i32 [ %162, %entry.if.end11_crit_edge.i1221 ], [ %.pre36.i1234, %if.end.i1235 ]
  %170 = phi i8* [ %.pre.i1220, %entry.if.end11_crit_edge.i1221 ], [ %call.i1231, %if.end.i1235 ]
  %add.ptr.i1236 = getelementptr inbounds i8, i8* %170, i32 %169
  store i8 %conv7.i1200, i8* %add.ptr.i1236, align 1
  store i32 %add.i1216, i32* %d_cur.i1215, align 4, !tbaa !23
  br label %do.body3.i620

do.body3.i620:                                    ; preds = %if.end11.i1595, %if.end11.i1620, %if.end11.i1645, %if.end11.i1237
  %171 = load %struct.mk_context*, %struct.mk_context** %parent7.i511, align 4, !tbaa !21
  %172 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  %call5.i618 = tail call fastcc i32 @mk_write_size(%struct.mk_context* %171, i32 %172) #8
  %cmp6.i619 = icmp slt i32 %call5.i618, 0
  br i1 %cmp6.i619, label %cleanup, label %if.end10.i623

if.end10.i623:                                    ; preds = %do.body3.i620, %do.end119
  %173 = load %struct.mk_context*, %struct.mk_context** %parent7.i511, align 4, !tbaa !21
  %tobool12.i622 = icmp eq %struct.mk_context* %173, null
  br i1 %tobool12.i622, label %do.body18.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end10.i623
  %d_cur16.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %173, i32 0, i32 6
  %174 = load i32, i32* %d_cur16.i, align 4, !tbaa !23
  %175 = load i32, i32* %duration_ptr, align 4, !tbaa !26
  %add.i = add i32 %175, %174
  store i32 %add.i, i32* %duration_ptr, align 4, !tbaa !26
  br label %do.body18.i

do.body18.i:                                      ; preds = %if.end10.i623, %if.then14.i
  %176 = load i32, i32* %d_cur.i1131, align 4, !tbaa !23
  %tobool.i638 = icmp eq i32 %176, 0
  br i1 %tobool.i638, label %do.end23.i627, label %if.end.i642

if.end.i642:                                      ; preds = %do.body18.i
  %data7.i641 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 5
  %177 = load i8*, i8** %data7.i641, align 4, !tbaa !17
  br i1 %tobool12.i622, label %if.else.i671, label %do.body.i647

do.body.i647:                                     ; preds = %if.end.i642
  %d_cur.i.i643 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %173, i32 0, i32 6
  %178 = load i32, i32* %d_cur.i.i643, align 4, !tbaa !23
  %add.i.i644 = add i32 %178, %176
  %d_max.i.i645 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %173, i32 0, i32 7
  %179 = load i32, i32* %d_max.i.i645, align 4, !tbaa !24
  %cmp.i.i646 = icmp ugt i32 %add.i.i644, %179
  br i1 %cmp.i.i646, label %if.then.i.i654, label %entry.if.end11_crit_edge.i.i650

entry.if.end11_crit_edge.i.i650:                  ; preds = %do.body.i647
  %data12.phi.trans.insert.i.i648 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %173, i32 0, i32 5
  %.pre.i.i649 = load i8*, i8** %data12.phi.trans.insert.i.i648, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i666

if.then.i.i654:                                   ; preds = %do.body.i647
  %tobool.i.i651 = icmp eq i32 %179, 0
  %shl.i.i652 = shl i32 %179, 1
  %spec.select.i.i653 = select i1 %tobool.i.i651, i32 16, i32 %shl.i.i652
  br label %while.cond.i.i658

while.cond.i.i658:                                ; preds = %while.cond.i.i658, %if.then.i.i654
  %dn.0.i.i655 = phi i32 [ %spec.select.i.i653, %if.then.i.i654 ], [ %shl4.i.i657, %while.cond.i.i658 ]
  %cmp3.i.i656 = icmp ugt i32 %add.i.i644, %dn.0.i.i655
  %shl4.i.i657 = shl i32 %dn.0.i.i655, 1
  br i1 %cmp3.i.i656, label %while.cond.i.i658, label %while.end.i.i662

while.end.i.i662:                                 ; preds = %while.cond.i.i658
  %data5.i.i659 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %173, i32 0, i32 5
  %180 = load i8*, i8** %data5.i.i659, align 4, !tbaa !17
  %call.i.i660 = tail call i8* @realloc(i8* %180, i32 %dn.0.i.i655) #8
  %tobool6.i.i661 = icmp eq i8* %call.i.i660, null
  br i1 %tobool6.i.i661, label %cleanup, label %if.end.i.i664

if.end.i.i664:                                    ; preds = %while.end.i.i662
  store i8* %call.i.i660, i8** %data5.i.i659, align 4, !tbaa !17
  store i32 %dn.0.i.i655, i32* %d_max.i.i645, align 4, !tbaa !24
  %.pre36.i.i663 = load i32, i32* %d_cur.i.i643, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i666

mk_append_context_data.exit.i666:                 ; preds = %if.end.i.i664, %entry.if.end11_crit_edge.i.i650
  %181 = phi i32 [ %178, %entry.if.end11_crit_edge.i.i650 ], [ %.pre36.i.i663, %if.end.i.i664 ]
  %182 = phi i8* [ %.pre.i.i649, %entry.if.end11_crit_edge.i.i650 ], [ %call.i.i660, %if.end.i.i664 ]
  %add.ptr.i.i665 = getelementptr inbounds i8, i8* %182, i32 %181
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i665, i8* align 1 %177, i32 %176, i1 false) #8
  store i32 %add.i.i644, i32* %d_cur.i.i643, align 4, !tbaa !23
  br label %if.end13.i672

if.else.i671:                                     ; preds = %if.end.i642
  %183 = load %struct.mk_writer*, %struct.mk_writer** %owner.i512, align 4, !tbaa !2
  %fp.i668 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %183, i32 0, i32 0
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i668, align 8, !tbaa !14
  %call9.i669 = tail call i32 @fwrite(i8* %177, i32 %176, i32 1, %struct._IO_FILE* %184) #8
  %cmp10.i670 = icmp eq i32 %call9.i669, 1
  br i1 %cmp10.i670, label %if.end13.i672, label %cleanup

if.end13.i672:                                    ; preds = %if.else.i671, %mk_append_context_data.exit.i666
  store i32 0, i32* %d_cur.i1131, align 4, !tbaa !23
  br label %do.end23.i627

do.end23.i627:                                    ; preds = %if.end13.i672, %do.body18.i
  %next.i625 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i510, i32 0, i32 0
  %185 = load %struct.mk_context*, %struct.mk_context** %next.i625, align 4, !tbaa !16
  %tobool24.i626 = icmp eq %struct.mk_context* %185, null
  %186 = ptrtoint %struct.mk_context* %185 to i32
  br i1 %tobool24.i626, label %do.end128, label %if.then25.i630

if.then25.i630:                                   ; preds = %do.end23.i627
  %187 = bitcast %struct.mk_context*** %prev21.i520 to i32*
  %188 = load i32, i32* %187, align 4, !tbaa !8
  %prev27.i629 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %185, i32 0, i32 1
  %189 = bitcast %struct.mk_context*** %prev27.i629 to i32*
  store i32 %188, i32* %189, align 4, !tbaa !8
  br label %do.end128

do.end128:                                        ; preds = %if.then25.i630, %do.end23.i627
  %190 = bitcast %struct.mk_context*** %prev21.i520 to i32**
  %191 = load i32*, i32** %190, align 4, !tbaa !8
  store i32 %186, i32* %191, align 4, !tbaa !13
  %192 = load %struct.mk_writer*, %struct.mk_writer** %owner.i512, align 4, !tbaa !2
  %freelist.i633 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %192, i32 0, i32 5
  %193 = bitcast %struct.mk_context** %freelist.i633 to i32*
  %194 = load i32, i32* %193, align 4, !tbaa !15
  store i32 %194, i32* %115, align 4, !tbaa !16
  store %struct.mk_context* %c.0.i510, %struct.mk_context** %freelist.i633, align 4, !tbaa !15
  %195 = load i32, i32* %1, align 8, !tbaa !12
  %196 = load %struct.mk_context*, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %tobool.i676 = icmp eq %struct.mk_context* %196, null
  br i1 %tobool.i676, label %if.else.i680, label %if.then.i677

if.then.i677:                                     ; preds = %do.end128
  %197 = bitcast %struct.mk_context* %196 to i32*
  %198 = load i32, i32* %197, align 4, !tbaa !16
  %199 = bitcast %struct.mk_context** %freelist.i to i32*
  store i32 %198, i32* %199, align 4, !tbaa !15
  %200 = inttoptr i32 %198 to %struct.mk_context*
  br label %if.end6.i687

if.else.i680:                                     ; preds = %do.end128
  %call.i678 = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %201 = bitcast i8* %call.i678 to %struct.mk_context*
  %tobool4.i679 = icmp eq i8* %call.i678, null
  br i1 %tobool4.i679, label %cleanup, label %if.end6.i687

if.end6.i687:                                     ; preds = %if.else.i680, %if.then.i677
  %202 = phi %struct.mk_context* [ %200, %if.then.i677 ], [ null, %if.else.i680 ]
  %203 = phi %struct.mk_context* [ %196, %if.then.i677 ], [ %201, %if.else.i680 ]
  %parent7.i682 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 2
  %204 = bitcast %struct.mk_context** %parent7.i682 to i32*
  store i32 %195, i32* %204, align 4, !tbaa !21
  %owner.i683 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 3
  store %struct.mk_writer* %w, %struct.mk_writer** %owner.i683, align 4, !tbaa !2
  %id8.i684 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 4
  store i32 374648427, i32* %id8.i684, align 4, !tbaa !22
  %205 = load %struct.mk_context*, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool10.i686 = icmp eq %struct.mk_context* %205, null
  %206 = ptrtoint %struct.mk_context* %205 to i32
  br i1 %tobool10.i686, label %mk_create_context.exit694, label %if.then11.i690

if.then11.i690:                                   ; preds = %if.end6.i687
  %next12.i688 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 0
  %prev.i689 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %205, i32 0, i32 1
  store %struct.mk_context** %next12.i688, %struct.mk_context*** %prev.i689, align 4, !tbaa !8
  br label %mk_create_context.exit694

mk_create_context.exit694:                        ; preds = %if.end6.i687, %if.then11.i690
  %207 = bitcast %struct.mk_context* %203 to i32*
  store i32 %206, i32* %207, align 4, !tbaa !16
  %prev21.i691 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 1
  store %struct.mk_context** %actlist.i, %struct.mk_context*** %prev21.i691, align 4, !tbaa !8
  store %struct.mk_context* %203, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool131 = icmp eq %struct.mk_context* %203, null
  br i1 %tobool131, label %cleanup, label %if.end133

if.end133:                                        ; preds = %mk_create_context.exit694
  %tobool.i696 = icmp eq %struct.mk_context* %202, null
  br i1 %tobool.i696, label %if.else.i700, label %if.then.i697

if.then.i697:                                     ; preds = %if.end133
  %208 = bitcast %struct.mk_context* %202 to i32*
  %209 = load i32, i32* %208, align 4, !tbaa !16
  %210 = bitcast %struct.mk_context** %freelist.i to i32*
  store i32 %209, i32* %210, align 4, !tbaa !15
  br label %mk_create_context.exit714

if.else.i700:                                     ; preds = %if.end133
  %call.i698 = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %211 = bitcast i8* %call.i698 to %struct.mk_context*
  %tobool4.i699 = icmp eq i8* %call.i698, null
  br i1 %tobool4.i699, label %cleanup, label %mk_create_context.exit714

mk_create_context.exit714:                        ; preds = %if.else.i700, %if.then.i697
  %c.0.i701 = phi %struct.mk_context* [ %202, %if.then.i697 ], [ %211, %if.else.i700 ]
  %parent7.i702 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 2
  store %struct.mk_context* %203, %struct.mk_context** %parent7.i702, align 4, !tbaa !21
  %owner.i703 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 3
  store %struct.mk_writer* %w, %struct.mk_writer** %owner.i703, align 4, !tbaa !2
  %id8.i704 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 4
  store i32 174, i32* %id8.i704, align 4, !tbaa !22
  %212 = ptrtoint %struct.mk_context* %203 to i32
  %next12.i708 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 0
  store %struct.mk_context** %next12.i708, %struct.mk_context*** %prev21.i691, align 4, !tbaa !8
  %213 = bitcast %struct.mk_context* %c.0.i701 to i32*
  store i32 %212, i32* %213, align 4, !tbaa !16
  %prev21.i711 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 1
  store %struct.mk_context** %actlist.i, %struct.mk_context*** %prev21.i711, align 4, !tbaa !8
  store %struct.mk_context* %c.0.i701, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool135 = icmp eq %struct.mk_context* %c.0.i701, null
  br i1 %tobool135, label %cleanup, label %do.body138

do.body138:                                       ; preds = %mk_create_context.exit714
  %call139 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i701, i32 215, i64 1)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %cleanup, label %do.body146

do.body146:                                       ; preds = %do.body138
  %call147 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i701, i32 29637, i64 1)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %cleanup, label %do.body154

do.body154:                                       ; preds = %do.body146
  %call155 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i701, i32 131, i64 1)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %cleanup, label %do.body162

do.body162:                                       ; preds = %do.body154
  %call163 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i701, i32 156, i64 0)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %cleanup, label %do.body170

do.body170:                                       ; preds = %do.body162
  %call.i715 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %codec_id) #9
  %d_cur.i1248 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 6
  %214 = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  %add.i1249 = add i32 %214, 1
  %d_max.i1250 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 7
  %215 = load i32, i32* %d_max.i1250, align 4, !tbaa !24
  %cmp.i1251 = icmp ugt i32 %add.i1249, %215
  br i1 %cmp.i1251, label %if.then.i1258, label %entry.if.end11_crit_edge.i1254

entry.if.end11_crit_edge.i1254:                   ; preds = %do.body170
  %data12.phi.trans.insert.i1252 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %.pre.i1253 = load i8*, i8** %data12.phi.trans.insert.i1252, align 4, !tbaa !17
  br label %do.body2.i720

if.then.i1258:                                    ; preds = %do.body170
  %tobool.i1255 = icmp eq i32 %215, 0
  %shl.i1256 = shl i32 %215, 1
  %spec.select.i1257 = select i1 %tobool.i1255, i32 16, i32 %shl.i1256
  br label %while.cond.i1262

while.cond.i1262:                                 ; preds = %while.cond.i1262, %if.then.i1258
  %dn.0.i1259 = phi i32 [ %spec.select.i1257, %if.then.i1258 ], [ %shl4.i1261, %while.cond.i1262 ]
  %cmp3.i1260 = icmp ugt i32 %add.i1249, %dn.0.i1259
  %shl4.i1261 = shl i32 %dn.0.i1259, 1
  br i1 %cmp3.i1260, label %while.cond.i1262, label %while.end.i1266

while.end.i1266:                                  ; preds = %while.cond.i1262
  %data5.i1263 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %216 = load i8*, i8** %data5.i1263, align 4, !tbaa !17
  %call.i1264 = tail call i8* @realloc(i8* %216, i32 %dn.0.i1259) #8
  %tobool6.i1265 = icmp eq i8* %call.i1264, null
  br i1 %tobool6.i1265, label %cleanup, label %if.end.i1268

if.end.i1268:                                     ; preds = %while.end.i1266
  store i8* %call.i1264, i8** %data5.i1263, align 4, !tbaa !17
  store i32 %dn.0.i1259, i32* %d_max.i1250, align 4, !tbaa !24
  %.pre36.i1267 = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  br label %do.body2.i720

do.body2.i720:                                    ; preds = %if.end.i1268, %entry.if.end11_crit_edge.i1254
  %217 = phi i32 [ %214, %entry.if.end11_crit_edge.i1254 ], [ %.pre36.i1267, %if.end.i1268 ]
  %218 = phi i8* [ %.pre.i1253, %entry.if.end11_crit_edge.i1254 ], [ %call.i1264, %if.end.i1268 ]
  %add.ptr.i1269 = getelementptr inbounds i8, i8* %218, i32 %217
  store i8 -122, i8* %add.ptr.i1269, align 1
  store i32 %add.i1249, i32* %d_cur.i1248, align 4, !tbaa !23
  %call3.i718 = tail call fastcc i32 @mk_write_size(%struct.mk_context* nonnull %c.0.i701, i32 %call.i715) #8
  %cmp4.i719 = icmp slt i32 %call3.i718, 0
  br i1 %cmp4.i719, label %cleanup, label %do.body9.i725

do.body9.i725:                                    ; preds = %do.body2.i720
  %219 = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  %add.i.i722 = add i32 %219, %call.i715
  %220 = load i32, i32* %d_max.i1250, align 4, !tbaa !24
  %cmp.i.i724 = icmp ugt i32 %add.i.i722, %220
  br i1 %cmp.i.i724, label %if.then.i.i732, label %entry.if.end11_crit_edge.i.i728

entry.if.end11_crit_edge.i.i728:                  ; preds = %do.body9.i725
  %data12.phi.trans.insert.i.i726 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %.pre.i.i727 = load i8*, i8** %data12.phi.trans.insert.i.i726, align 4, !tbaa !17
  br label %do.end177

if.then.i.i732:                                   ; preds = %do.body9.i725
  %tobool.i.i729 = icmp eq i32 %220, 0
  %shl.i.i730 = shl i32 %220, 1
  %spec.select.i.i731 = select i1 %tobool.i.i729, i32 16, i32 %shl.i.i730
  br label %while.cond.i.i736

while.cond.i.i736:                                ; preds = %while.cond.i.i736, %if.then.i.i732
  %dn.0.i.i733 = phi i32 [ %spec.select.i.i731, %if.then.i.i732 ], [ %shl4.i.i735, %while.cond.i.i736 ]
  %cmp3.i.i734 = icmp ugt i32 %add.i.i722, %dn.0.i.i733
  %shl4.i.i735 = shl i32 %dn.0.i.i733, 1
  br i1 %cmp3.i.i734, label %while.cond.i.i736, label %while.end.i.i740

while.end.i.i740:                                 ; preds = %while.cond.i.i736
  %data5.i.i737 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %221 = load i8*, i8** %data5.i.i737, align 4, !tbaa !17
  %call.i.i738 = tail call i8* @realloc(i8* %221, i32 %dn.0.i.i733) #8
  %tobool6.i.i739 = icmp eq i8* %call.i.i738, null
  br i1 %tobool6.i.i739, label %cleanup, label %if.end.i.i742

if.end.i.i742:                                    ; preds = %while.end.i.i740
  store i8* %call.i.i738, i8** %data5.i.i737, align 4, !tbaa !17
  store i32 %dn.0.i.i733, i32* %d_max.i1250, align 4, !tbaa !24
  %.pre36.i.i741 = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  br label %do.end177

do.end177:                                        ; preds = %if.end.i.i742, %entry.if.end11_crit_edge.i.i728
  %222 = phi i32 [ %219, %entry.if.end11_crit_edge.i.i728 ], [ %.pre36.i.i741, %if.end.i.i742 ]
  %223 = phi i8* [ %.pre.i.i727, %entry.if.end11_crit_edge.i.i728 ], [ %call.i.i738, %if.end.i.i742 ]
  %add.ptr.i.i743 = getelementptr inbounds i8, i8* %223, i32 %222
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i743, i8* align 1 %codec_id, i32 %call.i715, i1 false) #8
  store i32 %add.i.i722, i32* %d_cur.i1248, align 4, !tbaa !23
  %tobool178 = icmp eq i32 %codec_private_size, 0
  br i1 %tobool178, label %if.end188, label %do.body180

do.body180:                                       ; preds = %do.end177
  %add.i.i748 = add i32 %add.i.i722, 2
  %224 = load i32, i32* %d_max.i1250, align 4, !tbaa !24
  %cmp.i.i750 = icmp ugt i32 %add.i.i748, %224
  br i1 %cmp.i.i750, label %if.then.i.i757, label %entry.if.end11_crit_edge.i.i753

entry.if.end11_crit_edge.i.i753:                  ; preds = %do.body180
  %data12.phi.trans.insert.i.i751 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %.pre.i.i752 = load i8*, i8** %data12.phi.trans.insert.i.i751, align 4, !tbaa !17
  br label %do.body1.i770

if.then.i.i757:                                   ; preds = %do.body180
  %tobool.i.i754 = icmp eq i32 %224, 0
  %shl.i.i755 = shl i32 %224, 1
  %spec.select.i.i756 = select i1 %tobool.i.i754, i32 16, i32 %shl.i.i755
  br label %while.cond.i.i761

while.cond.i.i761:                                ; preds = %while.cond.i.i761, %if.then.i.i757
  %dn.0.i.i758 = phi i32 [ %spec.select.i.i756, %if.then.i.i757 ], [ %shl4.i.i760, %while.cond.i.i761 ]
  %cmp3.i.i759 = icmp ugt i32 %add.i.i748, %dn.0.i.i758
  %shl4.i.i760 = shl i32 %dn.0.i.i758, 1
  br i1 %cmp3.i.i759, label %while.cond.i.i761, label %while.end.i.i765

while.end.i.i765:                                 ; preds = %while.cond.i.i761
  %data5.i.i762 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %225 = load i8*, i8** %data5.i.i762, align 4, !tbaa !17
  %call.i.i763 = tail call i8* @realloc(i8* %225, i32 %dn.0.i.i758) #8
  %tobool6.i.i764 = icmp eq i8* %call.i.i763, null
  br i1 %tobool6.i.i764, label %cleanup, label %if.end.i.i767

if.end.i.i767:                                    ; preds = %while.end.i.i765
  store i8* %call.i.i763, i8** %data5.i.i762, align 4, !tbaa !17
  store i32 %dn.0.i.i758, i32* %d_max.i1250, align 4, !tbaa !24
  %.pre36.i.i766 = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  br label %do.body1.i770

do.body1.i770:                                    ; preds = %if.end.i.i767, %entry.if.end11_crit_edge.i.i753
  %226 = phi i32 [ %add.i.i722, %entry.if.end11_crit_edge.i.i753 ], [ %.pre36.i.i766, %if.end.i.i767 ]
  %227 = phi i8* [ %.pre.i.i752, %entry.if.end11_crit_edge.i.i753 ], [ %call.i.i763, %if.end.i.i767 ]
  %add.ptr.i.i768 = getelementptr inbounds i8, i8* %227, i32 %226
  store i8 99, i8* %add.ptr.i.i768, align 1
  %c_id.i.sroa.6.2.add.ptr.i.sroa_raw_idx.i769 = getelementptr inbounds i8, i8* %add.ptr.i.i768, i32 1
  store i8 -94, i8* %c_id.i.sroa.6.2.add.ptr.i.sroa_raw_idx.i769, align 1
  store i32 %add.i.i748, i32* %d_cur.i1248, align 4, !tbaa !23
  %call2.i = tail call fastcc i32 @mk_write_size(%struct.mk_context* nonnull %c.0.i701, i32 %codec_private_size) #8
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %cleanup, label %do.body7.i771

do.body7.i771:                                    ; preds = %do.body1.i770
  %228 = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  %add.i2.i = add i32 %228, %codec_private_size
  %229 = load i32, i32* %d_max.i1250, align 4, !tbaa !24
  %cmp.i4.i = icmp ugt i32 %add.i2.i, %229
  br i1 %cmp.i4.i, label %if.then.i11.i, label %entry.if.end11_crit_edge.i7.i

entry.if.end11_crit_edge.i7.i:                    ; preds = %do.body7.i771
  %data12.phi.trans.insert.i5.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %.pre.i6.i = load i8*, i8** %data12.phi.trans.insert.i5.i, align 4, !tbaa !17
  br label %mk_write_bin.exit

if.then.i11.i:                                    ; preds = %do.body7.i771
  %tobool.i8.i = icmp eq i32 %229, 0
  %shl.i9.i = shl i32 %229, 1
  %spec.select.i10.i = select i1 %tobool.i8.i, i32 16, i32 %shl.i9.i
  br label %while.cond.i15.i

while.cond.i15.i:                                 ; preds = %while.cond.i15.i, %if.then.i11.i
  %dn.0.i12.i = phi i32 [ %spec.select.i10.i, %if.then.i11.i ], [ %shl4.i14.i, %while.cond.i15.i ]
  %cmp3.i13.i = icmp ugt i32 %add.i2.i, %dn.0.i12.i
  %shl4.i14.i = shl i32 %dn.0.i12.i, 1
  br i1 %cmp3.i13.i, label %while.cond.i15.i, label %while.end.i19.i

while.end.i19.i:                                  ; preds = %while.cond.i15.i
  %data5.i16.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %230 = load i8*, i8** %data5.i16.i, align 4, !tbaa !17
  %call.i17.i = tail call i8* @realloc(i8* %230, i32 %dn.0.i12.i) #8
  %tobool6.i18.i = icmp eq i8* %call.i17.i, null
  br i1 %tobool6.i18.i, label %cleanup, label %if.end.i21.i

if.end.i21.i:                                     ; preds = %while.end.i19.i
  store i8* %call.i17.i, i8** %data5.i16.i, align 4, !tbaa !17
  store i32 %dn.0.i12.i, i32* %d_max.i1250, align 4, !tbaa !24
  %.pre36.i20.i = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  br label %mk_write_bin.exit

mk_write_bin.exit:                                ; preds = %entry.if.end11_crit_edge.i7.i, %if.end.i21.i
  %231 = phi i32 [ %228, %entry.if.end11_crit_edge.i7.i ], [ %.pre36.i20.i, %if.end.i21.i ]
  %232 = phi i8* [ %.pre.i6.i, %entry.if.end11_crit_edge.i7.i ], [ %call.i17.i, %if.end.i21.i ]
  %add.ptr.i22.i = getelementptr inbounds i8, i8* %232, i32 %231
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i22.i, i8* align 1 %codec_private, i32 %codec_private_size, i1 false) #8
  store i32 %add.i2.i, i32* %d_cur.i1248, align 4, !tbaa !23
  br label %if.end188

if.end188:                                        ; preds = %mk_write_bin.exit, %do.end177
  %tobool189 = icmp eq i64 %default_frame_duration, 0
  br i1 %tobool189, label %if.end199, label %do.body191

do.body191:                                       ; preds = %if.end188
  %call192 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i701, i32 2352003, i64 %default_frame_duration)
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %cleanup, label %if.end199

if.end199:                                        ; preds = %if.end188, %do.body191
  %233 = load %struct.mk_context*, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %tobool.i774 = icmp eq %struct.mk_context* %233, null
  br i1 %tobool.i774, label %if.else.i778, label %if.then.i775

if.then.i775:                                     ; preds = %if.end199
  %234 = bitcast %struct.mk_context* %233 to i32*
  %235 = load i32, i32* %234, align 4, !tbaa !16
  %236 = bitcast %struct.mk_context** %freelist.i to i32*
  store i32 %235, i32* %236, align 4, !tbaa !15
  br label %if.end6.i785

if.else.i778:                                     ; preds = %if.end199
  %call.i776 = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %237 = bitcast i8* %call.i776 to %struct.mk_context*
  %tobool4.i777 = icmp eq i8* %call.i776, null
  br i1 %tobool4.i777, label %cleanup, label %if.end6.i785

if.end6.i785:                                     ; preds = %if.else.i778, %if.then.i775
  %c.0.i779 = phi %struct.mk_context* [ %233, %if.then.i775 ], [ %237, %if.else.i778 ]
  %parent7.i780 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 2
  store %struct.mk_context* %c.0.i701, %struct.mk_context** %parent7.i780, align 4, !tbaa !21
  %owner.i781 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 3
  store %struct.mk_writer* %w, %struct.mk_writer** %owner.i781, align 4, !tbaa !2
  %id8.i782 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 4
  store i32 224, i32* %id8.i782, align 4, !tbaa !22
  %238 = load %struct.mk_context*, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool10.i784 = icmp eq %struct.mk_context* %238, null
  %239 = ptrtoint %struct.mk_context* %238 to i32
  br i1 %tobool10.i784, label %mk_create_context.exit792, label %if.then11.i788

if.then11.i788:                                   ; preds = %if.end6.i785
  %next12.i786 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 0
  %prev.i787 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %238, i32 0, i32 1
  store %struct.mk_context** %next12.i786, %struct.mk_context*** %prev.i787, align 4, !tbaa !8
  br label %mk_create_context.exit792

mk_create_context.exit792:                        ; preds = %if.end6.i785, %if.then11.i788
  %240 = bitcast %struct.mk_context* %c.0.i779 to i32*
  store i32 %239, i32* %240, align 4, !tbaa !16
  %prev21.i789 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 1
  store %struct.mk_context** %actlist.i, %struct.mk_context*** %prev21.i789, align 4, !tbaa !8
  store %struct.mk_context* %c.0.i779, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool201 = icmp eq %struct.mk_context* %c.0.i779, null
  br i1 %tobool201, label %cleanup, label %do.body204

do.body204:                                       ; preds = %mk_create_context.exit792
  %conv205 = zext i32 %width to i64
  %call206 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i779, i32 176, i64 %conv205)
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %cleanup, label %do.body213

do.body213:                                       ; preds = %do.body204
  %conv214 = zext i32 %height to i64
  %call215 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i779, i32 186, i64 %conv214)
  %cmp216 = icmp slt i32 %call215, 0
  br i1 %cmp216, label %cleanup, label %do.body222

do.body222:                                       ; preds = %do.body213
  %conv223 = sext i32 %display_size_units to i64
  %call224 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i779, i32 21682, i64 %conv223)
  %cmp225 = icmp slt i32 %call224, 0
  br i1 %cmp225, label %cleanup, label %do.body231

do.body231:                                       ; preds = %do.body222
  %conv232 = zext i32 %d_width to i64
  %call233 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i779, i32 21680, i64 %conv232)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %cleanup, label %do.body240

do.body240:                                       ; preds = %do.body231
  %conv241 = zext i32 %d_height to i64
  %call242 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i779, i32 21690, i64 %conv241)
  %cmp243 = icmp slt i32 %call242, 0
  br i1 %cmp243, label %cleanup, label %do.end248

do.end248:                                        ; preds = %do.body240
  br i1 %cmp37, label %do.body252, label %do.body262

do.body252:                                       ; preds = %do.end248
  %conv2531968 = zext i32 %stereo_mode to i64
  %call254 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i779, i32 21432, i64 %conv2531968)
  %cmp255 = icmp slt i32 %call254, 0
  br i1 %cmp255, label %cleanup, label %do.body262

do.body262:                                       ; preds = %do.end248, %do.body252
  %241 = load i32, i32* %id8.i782, align 4, !tbaa !22
  %tobool.i794 = icmp eq i32 %241, 0
  br i1 %tobool.i794, label %if.end10.i805, label %do.body.i798

do.body.i798:                                     ; preds = %do.body262
  %242 = load %struct.mk_context*, %struct.mk_context** %parent7.i780, align 4, !tbaa !21
  %shr.i1274 = lshr i32 %241, 24
  %conv.i1275 = trunc i32 %shr.i1274 to i8
  %shr1.i1277 = lshr i32 %241, 16
  %conv2.i1278 = trunc i32 %shr1.i1277 to i8
  %shr4.i1280 = lshr i32 %241, 8
  %conv5.i1281 = trunc i32 %shr4.i1280 to i8
  %conv7.i1283 = trunc i32 %241 to i8
  %tobool.i1284 = icmp eq i8 %conv.i1275, 0
  br i1 %tobool.i1284, label %if.end.i1288, label %if.then.i1286

if.then.i1286:                                    ; preds = %do.body.i798
  %d_cur.i1648 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 6
  %243 = load i32, i32* %d_cur.i1648, align 4, !tbaa !23
  %add.i1649 = add i32 %243, 4
  %d_max.i1650 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 7
  %244 = load i32, i32* %d_max.i1650, align 4, !tbaa !24
  %cmp.i1651 = icmp ugt i32 %add.i1649, %244
  br i1 %cmp.i1651, label %if.then.i1658, label %entry.if.end11_crit_edge.i1654

entry.if.end11_crit_edge.i1654:                   ; preds = %if.then.i1286
  %data12.phi.trans.insert.i1652 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 5
  %.pre.i1653 = load i8*, i8** %data12.phi.trans.insert.i1652, align 4, !tbaa !17
  br label %if.end11.i1670

if.then.i1658:                                    ; preds = %if.then.i1286
  %tobool.i1655 = icmp eq i32 %244, 0
  %shl.i1656 = shl i32 %244, 1
  %spec.select.i1657 = select i1 %tobool.i1655, i32 16, i32 %shl.i1656
  br label %while.cond.i1662

while.cond.i1662:                                 ; preds = %while.cond.i1662, %if.then.i1658
  %dn.0.i1659 = phi i32 [ %spec.select.i1657, %if.then.i1658 ], [ %shl4.i1661, %while.cond.i1662 ]
  %cmp3.i1660 = icmp ugt i32 %add.i1649, %dn.0.i1659
  %shl4.i1661 = shl i32 %dn.0.i1659, 1
  br i1 %cmp3.i1660, label %while.cond.i1662, label %while.end.i1666

while.end.i1666:                                  ; preds = %while.cond.i1662
  %data5.i1663 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 5
  %245 = load i8*, i8** %data5.i1663, align 4, !tbaa !17
  %call.i1664 = tail call i8* @realloc(i8* %245, i32 %dn.0.i1659) #8
  %tobool6.i1665 = icmp eq i8* %call.i1664, null
  br i1 %tobool6.i1665, label %cleanup, label %if.end.i1668

if.end.i1668:                                     ; preds = %while.end.i1666
  store i8* %call.i1664, i8** %data5.i1663, align 4, !tbaa !17
  store i32 %dn.0.i1659, i32* %d_max.i1650, align 4, !tbaa !24
  %.pre36.i1667 = load i32, i32* %d_cur.i1648, align 4, !tbaa !23
  br label %if.end11.i1670

if.end11.i1670:                                   ; preds = %if.end.i1668, %entry.if.end11_crit_edge.i1654
  %246 = phi i32 [ %243, %entry.if.end11_crit_edge.i1654 ], [ %.pre36.i1667, %if.end.i1668 ]
  %247 = phi i8* [ %.pre.i1653, %entry.if.end11_crit_edge.i1654 ], [ %call.i1664, %if.end.i1668 ]
  %add.ptr.i1669 = getelementptr inbounds i8, i8* %247, i32 %246
  store i8 %conv.i1275, i8* %add.ptr.i1669, align 1
  %c_id.i1273.sroa.4.0.add.ptr.i1669.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1669, i32 1
  store i8 %conv2.i1278, i8* %c_id.i1273.sroa.4.0.add.ptr.i1669.sroa_raw_idx, align 1
  %c_id.i1273.sroa.6.0.add.ptr.i1669.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1669, i32 2
  store i8 %conv5.i1281, i8* %c_id.i1273.sroa.6.0.add.ptr.i1669.sroa_raw_idx, align 1
  %c_id.i1273.sroa.8.0.add.ptr.i1669.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1669, i32 3
  store i8 %conv7.i1283, i8* %c_id.i1273.sroa.8.0.add.ptr.i1669.sroa_raw_idx, align 1
  store i32 %add.i1649, i32* %d_cur.i1648, align 4, !tbaa !23
  br label %do.body3.i802

if.end.i1288:                                     ; preds = %do.body.i798
  %tobool9.i1287 = icmp eq i8 %conv2.i1278, 0
  br i1 %tobool9.i1287, label %if.end13.i1292, label %if.then10.i1290

if.then10.i1290:                                  ; preds = %if.end.i1288
  %d_cur.i1673 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 6
  %248 = load i32, i32* %d_cur.i1673, align 4, !tbaa !23
  %add.i1674 = add i32 %248, 3
  %d_max.i1675 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 7
  %249 = load i32, i32* %d_max.i1675, align 4, !tbaa !24
  %cmp.i1676 = icmp ugt i32 %add.i1674, %249
  br i1 %cmp.i1676, label %if.then.i1683, label %entry.if.end11_crit_edge.i1679

entry.if.end11_crit_edge.i1679:                   ; preds = %if.then10.i1290
  %data12.phi.trans.insert.i1677 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 5
  %.pre.i1678 = load i8*, i8** %data12.phi.trans.insert.i1677, align 4, !tbaa !17
  br label %if.end11.i1695

if.then.i1683:                                    ; preds = %if.then10.i1290
  %tobool.i1680 = icmp eq i32 %249, 0
  %shl.i1681 = shl i32 %249, 1
  %spec.select.i1682 = select i1 %tobool.i1680, i32 16, i32 %shl.i1681
  br label %while.cond.i1687

while.cond.i1687:                                 ; preds = %while.cond.i1687, %if.then.i1683
  %dn.0.i1684 = phi i32 [ %spec.select.i1682, %if.then.i1683 ], [ %shl4.i1686, %while.cond.i1687 ]
  %cmp3.i1685 = icmp ugt i32 %add.i1674, %dn.0.i1684
  %shl4.i1686 = shl i32 %dn.0.i1684, 1
  br i1 %cmp3.i1685, label %while.cond.i1687, label %while.end.i1691

while.end.i1691:                                  ; preds = %while.cond.i1687
  %data5.i1688 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 5
  %250 = load i8*, i8** %data5.i1688, align 4, !tbaa !17
  %call.i1689 = tail call i8* @realloc(i8* %250, i32 %dn.0.i1684) #8
  %tobool6.i1690 = icmp eq i8* %call.i1689, null
  br i1 %tobool6.i1690, label %cleanup, label %if.end.i1693

if.end.i1693:                                     ; preds = %while.end.i1691
  store i8* %call.i1689, i8** %data5.i1688, align 4, !tbaa !17
  store i32 %dn.0.i1684, i32* %d_max.i1675, align 4, !tbaa !24
  %.pre36.i1692 = load i32, i32* %d_cur.i1673, align 4, !tbaa !23
  br label %if.end11.i1695

if.end11.i1695:                                   ; preds = %if.end.i1693, %entry.if.end11_crit_edge.i1679
  %251 = phi i32 [ %248, %entry.if.end11_crit_edge.i1679 ], [ %.pre36.i1692, %if.end.i1693 ]
  %252 = phi i8* [ %.pre.i1678, %entry.if.end11_crit_edge.i1679 ], [ %call.i1689, %if.end.i1693 ]
  %add.ptr.i1694 = getelementptr inbounds i8, i8* %252, i32 %251
  store i8 %conv2.i1278, i8* %add.ptr.i1694, align 1
  %c_id.i1273.sroa.6.1.add.ptr.i1694.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1694, i32 1
  store i8 %conv5.i1281, i8* %c_id.i1273.sroa.6.1.add.ptr.i1694.sroa_raw_idx, align 1
  %c_id.i1273.sroa.8.1.add.ptr.i1694.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1694, i32 2
  store i8 %conv7.i1283, i8* %c_id.i1273.sroa.8.1.add.ptr.i1694.sroa_raw_idx, align 1
  store i32 %add.i1674, i32* %d_cur.i1673, align 4, !tbaa !23
  br label %do.body3.i802

if.end13.i1292:                                   ; preds = %if.end.i1288
  %tobool15.i1291 = icmp eq i8 %conv5.i1281, 0
  %d_cur.i1298 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 6
  %253 = load i32, i32* %d_cur.i1298, align 4, !tbaa !23
  br i1 %tobool15.i1291, label %if.end20.i1295, label %if.then16.i1294

if.then16.i1294:                                  ; preds = %if.end13.i1292
  %add.i1699 = add i32 %253, 2
  %d_max.i1700 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 7
  %254 = load i32, i32* %d_max.i1700, align 4, !tbaa !24
  %cmp.i1701 = icmp ugt i32 %add.i1699, %254
  br i1 %cmp.i1701, label %if.then.i1708, label %entry.if.end11_crit_edge.i1704

entry.if.end11_crit_edge.i1704:                   ; preds = %if.then16.i1294
  %data12.phi.trans.insert.i1702 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 5
  %.pre.i1703 = load i8*, i8** %data12.phi.trans.insert.i1702, align 4, !tbaa !17
  br label %if.end11.i1720

if.then.i1708:                                    ; preds = %if.then16.i1294
  %tobool.i1705 = icmp eq i32 %254, 0
  %shl.i1706 = shl i32 %254, 1
  %spec.select.i1707 = select i1 %tobool.i1705, i32 16, i32 %shl.i1706
  br label %while.cond.i1712

while.cond.i1712:                                 ; preds = %while.cond.i1712, %if.then.i1708
  %dn.0.i1709 = phi i32 [ %spec.select.i1707, %if.then.i1708 ], [ %shl4.i1711, %while.cond.i1712 ]
  %cmp3.i1710 = icmp ugt i32 %add.i1699, %dn.0.i1709
  %shl4.i1711 = shl i32 %dn.0.i1709, 1
  br i1 %cmp3.i1710, label %while.cond.i1712, label %while.end.i1716

while.end.i1716:                                  ; preds = %while.cond.i1712
  %data5.i1713 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 5
  %255 = load i8*, i8** %data5.i1713, align 4, !tbaa !17
  %call.i1714 = tail call i8* @realloc(i8* %255, i32 %dn.0.i1709) #8
  %tobool6.i1715 = icmp eq i8* %call.i1714, null
  br i1 %tobool6.i1715, label %cleanup, label %if.end.i1718

if.end.i1718:                                     ; preds = %while.end.i1716
  store i8* %call.i1714, i8** %data5.i1713, align 4, !tbaa !17
  store i32 %dn.0.i1709, i32* %d_max.i1700, align 4, !tbaa !24
  %.pre36.i1717 = load i32, i32* %d_cur.i1298, align 4, !tbaa !23
  br label %if.end11.i1720

if.end11.i1720:                                   ; preds = %if.end.i1718, %entry.if.end11_crit_edge.i1704
  %256 = phi i32 [ %253, %entry.if.end11_crit_edge.i1704 ], [ %.pre36.i1717, %if.end.i1718 ]
  %257 = phi i8* [ %.pre.i1703, %entry.if.end11_crit_edge.i1704 ], [ %call.i1714, %if.end.i1718 ]
  %add.ptr.i1719 = getelementptr inbounds i8, i8* %257, i32 %256
  store i8 %conv5.i1281, i8* %add.ptr.i1719, align 1
  %c_id.i1273.sroa.8.2.add.ptr.i1719.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1719, i32 1
  store i8 %conv7.i1283, i8* %c_id.i1273.sroa.8.2.add.ptr.i1719.sroa_raw_idx, align 1
  store i32 %add.i1699, i32* %d_cur.i1298, align 4, !tbaa !23
  br label %do.body3.i802

if.end20.i1295:                                   ; preds = %if.end13.i1292
  %add.i1299 = add i32 %253, 1
  %d_max.i1300 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 7
  %258 = load i32, i32* %d_max.i1300, align 4, !tbaa !24
  %cmp.i1301 = icmp ugt i32 %add.i1299, %258
  br i1 %cmp.i1301, label %if.then.i1308, label %entry.if.end11_crit_edge.i1304

entry.if.end11_crit_edge.i1304:                   ; preds = %if.end20.i1295
  %data12.phi.trans.insert.i1302 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 5
  %.pre.i1303 = load i8*, i8** %data12.phi.trans.insert.i1302, align 4, !tbaa !17
  br label %if.end11.i1320

if.then.i1308:                                    ; preds = %if.end20.i1295
  %tobool.i1305 = icmp eq i32 %258, 0
  %shl.i1306 = shl i32 %258, 1
  %spec.select.i1307 = select i1 %tobool.i1305, i32 16, i32 %shl.i1306
  br label %while.cond.i1312

while.cond.i1312:                                 ; preds = %while.cond.i1312, %if.then.i1308
  %dn.0.i1309 = phi i32 [ %spec.select.i1307, %if.then.i1308 ], [ %shl4.i1311, %while.cond.i1312 ]
  %cmp3.i1310 = icmp ugt i32 %add.i1299, %dn.0.i1309
  %shl4.i1311 = shl i32 %dn.0.i1309, 1
  br i1 %cmp3.i1310, label %while.cond.i1312, label %while.end.i1316

while.end.i1316:                                  ; preds = %while.cond.i1312
  %data5.i1313 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %242, i32 0, i32 5
  %259 = load i8*, i8** %data5.i1313, align 4, !tbaa !17
  %call.i1314 = tail call i8* @realloc(i8* %259, i32 %dn.0.i1309) #8
  %tobool6.i1315 = icmp eq i8* %call.i1314, null
  br i1 %tobool6.i1315, label %cleanup, label %if.end.i1318

if.end.i1318:                                     ; preds = %while.end.i1316
  store i8* %call.i1314, i8** %data5.i1313, align 4, !tbaa !17
  store i32 %dn.0.i1309, i32* %d_max.i1300, align 4, !tbaa !24
  %.pre36.i1317 = load i32, i32* %d_cur.i1298, align 4, !tbaa !23
  br label %if.end11.i1320

if.end11.i1320:                                   ; preds = %if.end.i1318, %entry.if.end11_crit_edge.i1304
  %260 = phi i32 [ %253, %entry.if.end11_crit_edge.i1304 ], [ %.pre36.i1317, %if.end.i1318 ]
  %261 = phi i8* [ %.pre.i1303, %entry.if.end11_crit_edge.i1304 ], [ %call.i1314, %if.end.i1318 ]
  %add.ptr.i1319 = getelementptr inbounds i8, i8* %261, i32 %260
  store i8 %conv7.i1283, i8* %add.ptr.i1319, align 1
  store i32 %add.i1299, i32* %d_cur.i1298, align 4, !tbaa !23
  br label %do.body3.i802

do.body3.i802:                                    ; preds = %if.end11.i1670, %if.end11.i1695, %if.end11.i1720, %if.end11.i1320
  %262 = load %struct.mk_context*, %struct.mk_context** %parent7.i780, align 4, !tbaa !21
  %d_cur.i799 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 6
  %263 = load i32, i32* %d_cur.i799, align 4, !tbaa !23
  %call5.i800 = tail call fastcc i32 @mk_write_size(%struct.mk_context* %262, i32 %263) #8
  %cmp6.i801 = icmp slt i32 %call5.i800, 0
  br i1 %cmp6.i801, label %cleanup, label %if.end10.i805

if.end10.i805:                                    ; preds = %do.body3.i802, %do.body262
  %264 = load %struct.mk_context*, %struct.mk_context** %parent7.i780, align 4, !tbaa !21
  %d_cur.i820 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 6
  %265 = load i32, i32* %d_cur.i820, align 4, !tbaa !23
  %tobool.i821 = icmp eq i32 %265, 0
  br i1 %tobool.i821, label %do.end23.i810, label %if.end.i825

if.end.i825:                                      ; preds = %if.end10.i805
  %tobool1.i823 = icmp eq %struct.mk_context* %264, null
  %data7.i824 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 5
  %266 = load i8*, i8** %data7.i824, align 4, !tbaa !17
  br i1 %tobool1.i823, label %if.else.i854, label %do.body.i830

do.body.i830:                                     ; preds = %if.end.i825
  %d_cur.i.i826 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %264, i32 0, i32 6
  %267 = load i32, i32* %d_cur.i.i826, align 4, !tbaa !23
  %add.i.i827 = add i32 %267, %265
  %d_max.i.i828 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %264, i32 0, i32 7
  %268 = load i32, i32* %d_max.i.i828, align 4, !tbaa !24
  %cmp.i.i829 = icmp ugt i32 %add.i.i827, %268
  br i1 %cmp.i.i829, label %if.then.i.i837, label %entry.if.end11_crit_edge.i.i833

entry.if.end11_crit_edge.i.i833:                  ; preds = %do.body.i830
  %data12.phi.trans.insert.i.i831 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %264, i32 0, i32 5
  %.pre.i.i832 = load i8*, i8** %data12.phi.trans.insert.i.i831, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i849

if.then.i.i837:                                   ; preds = %do.body.i830
  %tobool.i.i834 = icmp eq i32 %268, 0
  %shl.i.i835 = shl i32 %268, 1
  %spec.select.i.i836 = select i1 %tobool.i.i834, i32 16, i32 %shl.i.i835
  br label %while.cond.i.i841

while.cond.i.i841:                                ; preds = %while.cond.i.i841, %if.then.i.i837
  %dn.0.i.i838 = phi i32 [ %spec.select.i.i836, %if.then.i.i837 ], [ %shl4.i.i840, %while.cond.i.i841 ]
  %cmp3.i.i839 = icmp ugt i32 %add.i.i827, %dn.0.i.i838
  %shl4.i.i840 = shl i32 %dn.0.i.i838, 1
  br i1 %cmp3.i.i839, label %while.cond.i.i841, label %while.end.i.i845

while.end.i.i845:                                 ; preds = %while.cond.i.i841
  %data5.i.i842 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %264, i32 0, i32 5
  %269 = load i8*, i8** %data5.i.i842, align 4, !tbaa !17
  %call.i.i843 = tail call i8* @realloc(i8* %269, i32 %dn.0.i.i838) #8
  %tobool6.i.i844 = icmp eq i8* %call.i.i843, null
  br i1 %tobool6.i.i844, label %cleanup, label %if.end.i.i847

if.end.i.i847:                                    ; preds = %while.end.i.i845
  store i8* %call.i.i843, i8** %data5.i.i842, align 4, !tbaa !17
  store i32 %dn.0.i.i838, i32* %d_max.i.i828, align 4, !tbaa !24
  %.pre36.i.i846 = load i32, i32* %d_cur.i.i826, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i849

mk_append_context_data.exit.i849:                 ; preds = %if.end.i.i847, %entry.if.end11_crit_edge.i.i833
  %270 = phi i32 [ %267, %entry.if.end11_crit_edge.i.i833 ], [ %.pre36.i.i846, %if.end.i.i847 ]
  %271 = phi i8* [ %.pre.i.i832, %entry.if.end11_crit_edge.i.i833 ], [ %call.i.i843, %if.end.i.i847 ]
  %add.ptr.i.i848 = getelementptr inbounds i8, i8* %271, i32 %270
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i848, i8* align 1 %266, i32 %265, i1 false) #8
  store i32 %add.i.i827, i32* %d_cur.i.i826, align 4, !tbaa !23
  br label %if.end13.i855

if.else.i854:                                     ; preds = %if.end.i825
  %272 = load %struct.mk_writer*, %struct.mk_writer** %owner.i781, align 4, !tbaa !2
  %fp.i851 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %272, i32 0, i32 0
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i851, align 8, !tbaa !14
  %call9.i852 = tail call i32 @fwrite(i8* %266, i32 %265, i32 1, %struct._IO_FILE* %273) #8
  %cmp10.i853 = icmp eq i32 %call9.i852, 1
  br i1 %cmp10.i853, label %if.end13.i855, label %cleanup

if.end13.i855:                                    ; preds = %if.else.i854, %mk_append_context_data.exit.i849
  store i32 0, i32* %d_cur.i820, align 4, !tbaa !23
  br label %do.end23.i810

do.end23.i810:                                    ; preds = %if.end13.i855, %if.end10.i805
  %next.i808 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i779, i32 0, i32 0
  %274 = load %struct.mk_context*, %struct.mk_context** %next.i808, align 4, !tbaa !16
  %tobool24.i809 = icmp eq %struct.mk_context* %274, null
  %275 = ptrtoint %struct.mk_context* %274 to i32
  br i1 %tobool24.i809, label %do.body270, label %if.then25.i813

if.then25.i813:                                   ; preds = %do.end23.i810
  %276 = bitcast %struct.mk_context*** %prev21.i789 to i32*
  %277 = load i32, i32* %276, align 4, !tbaa !8
  %prev27.i812 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %274, i32 0, i32 1
  %278 = bitcast %struct.mk_context*** %prev27.i812 to i32*
  store i32 %277, i32* %278, align 4, !tbaa !8
  br label %do.body270

do.body270:                                       ; preds = %if.then25.i813, %do.end23.i810
  %279 = bitcast %struct.mk_context*** %prev21.i789 to i32**
  %280 = load i32*, i32** %279, align 4, !tbaa !8
  store i32 %275, i32* %280, align 4, !tbaa !13
  %281 = load %struct.mk_writer*, %struct.mk_writer** %owner.i781, align 4, !tbaa !2
  %freelist.i816 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %281, i32 0, i32 5
  %282 = bitcast %struct.mk_context** %freelist.i816 to i32*
  %283 = load i32, i32* %282, align 4, !tbaa !15
  store i32 %283, i32* %240, align 4, !tbaa !16
  store %struct.mk_context* %c.0.i779, %struct.mk_context** %freelist.i816, align 4, !tbaa !15
  %284 = load i32, i32* %id8.i704, align 4, !tbaa !22
  %tobool.i859 = icmp eq i32 %284, 0
  br i1 %tobool.i859, label %if.end10.i870, label %do.body.i863

do.body.i863:                                     ; preds = %do.body270
  %285 = load %struct.mk_context*, %struct.mk_context** %parent7.i702, align 4, !tbaa !21
  %shr.i1324 = lshr i32 %284, 24
  %conv.i1325 = trunc i32 %shr.i1324 to i8
  %shr1.i1327 = lshr i32 %284, 16
  %conv2.i1328 = trunc i32 %shr1.i1327 to i8
  %shr4.i1330 = lshr i32 %284, 8
  %conv5.i1331 = trunc i32 %shr4.i1330 to i8
  %conv7.i1333 = trunc i32 %284 to i8
  %tobool.i1334 = icmp eq i8 %conv.i1325, 0
  br i1 %tobool.i1334, label %if.end.i1338, label %if.then.i1336

if.then.i1336:                                    ; preds = %do.body.i863
  %d_cur.i1723 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 6
  %286 = load i32, i32* %d_cur.i1723, align 4, !tbaa !23
  %add.i1724 = add i32 %286, 4
  %d_max.i1725 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 7
  %287 = load i32, i32* %d_max.i1725, align 4, !tbaa !24
  %cmp.i1726 = icmp ugt i32 %add.i1724, %287
  br i1 %cmp.i1726, label %if.then.i1733, label %entry.if.end11_crit_edge.i1729

entry.if.end11_crit_edge.i1729:                   ; preds = %if.then.i1336
  %data12.phi.trans.insert.i1727 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 5
  %.pre.i1728 = load i8*, i8** %data12.phi.trans.insert.i1727, align 4, !tbaa !17
  br label %if.end11.i1745

if.then.i1733:                                    ; preds = %if.then.i1336
  %tobool.i1730 = icmp eq i32 %287, 0
  %shl.i1731 = shl i32 %287, 1
  %spec.select.i1732 = select i1 %tobool.i1730, i32 16, i32 %shl.i1731
  br label %while.cond.i1737

while.cond.i1737:                                 ; preds = %while.cond.i1737, %if.then.i1733
  %dn.0.i1734 = phi i32 [ %spec.select.i1732, %if.then.i1733 ], [ %shl4.i1736, %while.cond.i1737 ]
  %cmp3.i1735 = icmp ugt i32 %add.i1724, %dn.0.i1734
  %shl4.i1736 = shl i32 %dn.0.i1734, 1
  br i1 %cmp3.i1735, label %while.cond.i1737, label %while.end.i1741

while.end.i1741:                                  ; preds = %while.cond.i1737
  %data5.i1738 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 5
  %288 = load i8*, i8** %data5.i1738, align 4, !tbaa !17
  %call.i1739 = tail call i8* @realloc(i8* %288, i32 %dn.0.i1734) #8
  %tobool6.i1740 = icmp eq i8* %call.i1739, null
  br i1 %tobool6.i1740, label %cleanup, label %if.end.i1743

if.end.i1743:                                     ; preds = %while.end.i1741
  store i8* %call.i1739, i8** %data5.i1738, align 4, !tbaa !17
  store i32 %dn.0.i1734, i32* %d_max.i1725, align 4, !tbaa !24
  %.pre36.i1742 = load i32, i32* %d_cur.i1723, align 4, !tbaa !23
  br label %if.end11.i1745

if.end11.i1745:                                   ; preds = %if.end.i1743, %entry.if.end11_crit_edge.i1729
  %289 = phi i32 [ %286, %entry.if.end11_crit_edge.i1729 ], [ %.pre36.i1742, %if.end.i1743 ]
  %290 = phi i8* [ %.pre.i1728, %entry.if.end11_crit_edge.i1729 ], [ %call.i1739, %if.end.i1743 ]
  %add.ptr.i1744 = getelementptr inbounds i8, i8* %290, i32 %289
  store i8 %conv.i1325, i8* %add.ptr.i1744, align 1
  %c_id.i1323.sroa.4.0.add.ptr.i1744.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1744, i32 1
  store i8 %conv2.i1328, i8* %c_id.i1323.sroa.4.0.add.ptr.i1744.sroa_raw_idx, align 1
  %c_id.i1323.sroa.6.0.add.ptr.i1744.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1744, i32 2
  store i8 %conv5.i1331, i8* %c_id.i1323.sroa.6.0.add.ptr.i1744.sroa_raw_idx, align 1
  %c_id.i1323.sroa.8.0.add.ptr.i1744.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1744, i32 3
  store i8 %conv7.i1333, i8* %c_id.i1323.sroa.8.0.add.ptr.i1744.sroa_raw_idx, align 1
  store i32 %add.i1724, i32* %d_cur.i1723, align 4, !tbaa !23
  br label %do.body3.i867

if.end.i1338:                                     ; preds = %do.body.i863
  %tobool9.i1337 = icmp eq i8 %conv2.i1328, 0
  br i1 %tobool9.i1337, label %if.end13.i1342, label %if.then10.i1340

if.then10.i1340:                                  ; preds = %if.end.i1338
  %d_cur.i1748 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 6
  %291 = load i32, i32* %d_cur.i1748, align 4, !tbaa !23
  %add.i1749 = add i32 %291, 3
  %d_max.i1750 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 7
  %292 = load i32, i32* %d_max.i1750, align 4, !tbaa !24
  %cmp.i1751 = icmp ugt i32 %add.i1749, %292
  br i1 %cmp.i1751, label %if.then.i1758, label %entry.if.end11_crit_edge.i1754

entry.if.end11_crit_edge.i1754:                   ; preds = %if.then10.i1340
  %data12.phi.trans.insert.i1752 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 5
  %.pre.i1753 = load i8*, i8** %data12.phi.trans.insert.i1752, align 4, !tbaa !17
  br label %if.end11.i1770

if.then.i1758:                                    ; preds = %if.then10.i1340
  %tobool.i1755 = icmp eq i32 %292, 0
  %shl.i1756 = shl i32 %292, 1
  %spec.select.i1757 = select i1 %tobool.i1755, i32 16, i32 %shl.i1756
  br label %while.cond.i1762

while.cond.i1762:                                 ; preds = %while.cond.i1762, %if.then.i1758
  %dn.0.i1759 = phi i32 [ %spec.select.i1757, %if.then.i1758 ], [ %shl4.i1761, %while.cond.i1762 ]
  %cmp3.i1760 = icmp ugt i32 %add.i1749, %dn.0.i1759
  %shl4.i1761 = shl i32 %dn.0.i1759, 1
  br i1 %cmp3.i1760, label %while.cond.i1762, label %while.end.i1766

while.end.i1766:                                  ; preds = %while.cond.i1762
  %data5.i1763 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 5
  %293 = load i8*, i8** %data5.i1763, align 4, !tbaa !17
  %call.i1764 = tail call i8* @realloc(i8* %293, i32 %dn.0.i1759) #8
  %tobool6.i1765 = icmp eq i8* %call.i1764, null
  br i1 %tobool6.i1765, label %cleanup, label %if.end.i1768

if.end.i1768:                                     ; preds = %while.end.i1766
  store i8* %call.i1764, i8** %data5.i1763, align 4, !tbaa !17
  store i32 %dn.0.i1759, i32* %d_max.i1750, align 4, !tbaa !24
  %.pre36.i1767 = load i32, i32* %d_cur.i1748, align 4, !tbaa !23
  br label %if.end11.i1770

if.end11.i1770:                                   ; preds = %if.end.i1768, %entry.if.end11_crit_edge.i1754
  %294 = phi i32 [ %291, %entry.if.end11_crit_edge.i1754 ], [ %.pre36.i1767, %if.end.i1768 ]
  %295 = phi i8* [ %.pre.i1753, %entry.if.end11_crit_edge.i1754 ], [ %call.i1764, %if.end.i1768 ]
  %add.ptr.i1769 = getelementptr inbounds i8, i8* %295, i32 %294
  store i8 %conv2.i1328, i8* %add.ptr.i1769, align 1
  %c_id.i1323.sroa.6.1.add.ptr.i1769.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1769, i32 1
  store i8 %conv5.i1331, i8* %c_id.i1323.sroa.6.1.add.ptr.i1769.sroa_raw_idx, align 1
  %c_id.i1323.sroa.8.1.add.ptr.i1769.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1769, i32 2
  store i8 %conv7.i1333, i8* %c_id.i1323.sroa.8.1.add.ptr.i1769.sroa_raw_idx, align 1
  store i32 %add.i1749, i32* %d_cur.i1748, align 4, !tbaa !23
  br label %do.body3.i867

if.end13.i1342:                                   ; preds = %if.end.i1338
  %tobool15.i1341 = icmp eq i8 %conv5.i1331, 0
  %d_cur.i1348 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 6
  %296 = load i32, i32* %d_cur.i1348, align 4, !tbaa !23
  br i1 %tobool15.i1341, label %if.end20.i1345, label %if.then16.i1344

if.then16.i1344:                                  ; preds = %if.end13.i1342
  %add.i1774 = add i32 %296, 2
  %d_max.i1775 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 7
  %297 = load i32, i32* %d_max.i1775, align 4, !tbaa !24
  %cmp.i1776 = icmp ugt i32 %add.i1774, %297
  br i1 %cmp.i1776, label %if.then.i1783, label %entry.if.end11_crit_edge.i1779

entry.if.end11_crit_edge.i1779:                   ; preds = %if.then16.i1344
  %data12.phi.trans.insert.i1777 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 5
  %.pre.i1778 = load i8*, i8** %data12.phi.trans.insert.i1777, align 4, !tbaa !17
  br label %if.end11.i1795

if.then.i1783:                                    ; preds = %if.then16.i1344
  %tobool.i1780 = icmp eq i32 %297, 0
  %shl.i1781 = shl i32 %297, 1
  %spec.select.i1782 = select i1 %tobool.i1780, i32 16, i32 %shl.i1781
  br label %while.cond.i1787

while.cond.i1787:                                 ; preds = %while.cond.i1787, %if.then.i1783
  %dn.0.i1784 = phi i32 [ %spec.select.i1782, %if.then.i1783 ], [ %shl4.i1786, %while.cond.i1787 ]
  %cmp3.i1785 = icmp ugt i32 %add.i1774, %dn.0.i1784
  %shl4.i1786 = shl i32 %dn.0.i1784, 1
  br i1 %cmp3.i1785, label %while.cond.i1787, label %while.end.i1791

while.end.i1791:                                  ; preds = %while.cond.i1787
  %data5.i1788 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 5
  %298 = load i8*, i8** %data5.i1788, align 4, !tbaa !17
  %call.i1789 = tail call i8* @realloc(i8* %298, i32 %dn.0.i1784) #8
  %tobool6.i1790 = icmp eq i8* %call.i1789, null
  br i1 %tobool6.i1790, label %cleanup, label %if.end.i1793

if.end.i1793:                                     ; preds = %while.end.i1791
  store i8* %call.i1789, i8** %data5.i1788, align 4, !tbaa !17
  store i32 %dn.0.i1784, i32* %d_max.i1775, align 4, !tbaa !24
  %.pre36.i1792 = load i32, i32* %d_cur.i1348, align 4, !tbaa !23
  br label %if.end11.i1795

if.end11.i1795:                                   ; preds = %if.end.i1793, %entry.if.end11_crit_edge.i1779
  %299 = phi i32 [ %296, %entry.if.end11_crit_edge.i1779 ], [ %.pre36.i1792, %if.end.i1793 ]
  %300 = phi i8* [ %.pre.i1778, %entry.if.end11_crit_edge.i1779 ], [ %call.i1789, %if.end.i1793 ]
  %add.ptr.i1794 = getelementptr inbounds i8, i8* %300, i32 %299
  store i8 %conv5.i1331, i8* %add.ptr.i1794, align 1
  %c_id.i1323.sroa.8.2.add.ptr.i1794.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1794, i32 1
  store i8 %conv7.i1333, i8* %c_id.i1323.sroa.8.2.add.ptr.i1794.sroa_raw_idx, align 1
  store i32 %add.i1774, i32* %d_cur.i1348, align 4, !tbaa !23
  br label %do.body3.i867

if.end20.i1345:                                   ; preds = %if.end13.i1342
  %add.i1349 = add i32 %296, 1
  %d_max.i1350 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 7
  %301 = load i32, i32* %d_max.i1350, align 4, !tbaa !24
  %cmp.i1351 = icmp ugt i32 %add.i1349, %301
  br i1 %cmp.i1351, label %if.then.i1358, label %entry.if.end11_crit_edge.i1354

entry.if.end11_crit_edge.i1354:                   ; preds = %if.end20.i1345
  %data12.phi.trans.insert.i1352 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 5
  %.pre.i1353 = load i8*, i8** %data12.phi.trans.insert.i1352, align 4, !tbaa !17
  br label %if.end11.i1370

if.then.i1358:                                    ; preds = %if.end20.i1345
  %tobool.i1355 = icmp eq i32 %301, 0
  %shl.i1356 = shl i32 %301, 1
  %spec.select.i1357 = select i1 %tobool.i1355, i32 16, i32 %shl.i1356
  br label %while.cond.i1362

while.cond.i1362:                                 ; preds = %while.cond.i1362, %if.then.i1358
  %dn.0.i1359 = phi i32 [ %spec.select.i1357, %if.then.i1358 ], [ %shl4.i1361, %while.cond.i1362 ]
  %cmp3.i1360 = icmp ugt i32 %add.i1349, %dn.0.i1359
  %shl4.i1361 = shl i32 %dn.0.i1359, 1
  br i1 %cmp3.i1360, label %while.cond.i1362, label %while.end.i1366

while.end.i1366:                                  ; preds = %while.cond.i1362
  %data5.i1363 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %285, i32 0, i32 5
  %302 = load i8*, i8** %data5.i1363, align 4, !tbaa !17
  %call.i1364 = tail call i8* @realloc(i8* %302, i32 %dn.0.i1359) #8
  %tobool6.i1365 = icmp eq i8* %call.i1364, null
  br i1 %tobool6.i1365, label %cleanup, label %if.end.i1368

if.end.i1368:                                     ; preds = %while.end.i1366
  store i8* %call.i1364, i8** %data5.i1363, align 4, !tbaa !17
  store i32 %dn.0.i1359, i32* %d_max.i1350, align 4, !tbaa !24
  %.pre36.i1367 = load i32, i32* %d_cur.i1348, align 4, !tbaa !23
  br label %if.end11.i1370

if.end11.i1370:                                   ; preds = %if.end.i1368, %entry.if.end11_crit_edge.i1354
  %303 = phi i32 [ %296, %entry.if.end11_crit_edge.i1354 ], [ %.pre36.i1367, %if.end.i1368 ]
  %304 = phi i8* [ %.pre.i1353, %entry.if.end11_crit_edge.i1354 ], [ %call.i1364, %if.end.i1368 ]
  %add.ptr.i1369 = getelementptr inbounds i8, i8* %304, i32 %303
  store i8 %conv7.i1333, i8* %add.ptr.i1369, align 1
  store i32 %add.i1349, i32* %d_cur.i1348, align 4, !tbaa !23
  br label %do.body3.i867

do.body3.i867:                                    ; preds = %if.end11.i1745, %if.end11.i1770, %if.end11.i1795, %if.end11.i1370
  %305 = load %struct.mk_context*, %struct.mk_context** %parent7.i702, align 4, !tbaa !21
  %306 = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  %call5.i865 = tail call fastcc i32 @mk_write_size(%struct.mk_context* %305, i32 %306) #8
  %cmp6.i866 = icmp slt i32 %call5.i865, 0
  br i1 %cmp6.i866, label %cleanup, label %if.end10.i870

if.end10.i870:                                    ; preds = %do.body3.i867, %do.body270
  %307 = load %struct.mk_context*, %struct.mk_context** %parent7.i702, align 4, !tbaa !21
  %308 = load i32, i32* %d_cur.i1248, align 4, !tbaa !23
  %tobool.i886 = icmp eq i32 %308, 0
  br i1 %tobool.i886, label %do.end23.i875, label %if.end.i890

if.end.i890:                                      ; preds = %if.end10.i870
  %tobool1.i888 = icmp eq %struct.mk_context* %307, null
  %data7.i889 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 5
  %309 = load i8*, i8** %data7.i889, align 4, !tbaa !17
  br i1 %tobool1.i888, label %if.else.i919, label %do.body.i895

do.body.i895:                                     ; preds = %if.end.i890
  %d_cur.i.i891 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %307, i32 0, i32 6
  %310 = load i32, i32* %d_cur.i.i891, align 4, !tbaa !23
  %add.i.i892 = add i32 %310, %308
  %d_max.i.i893 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %307, i32 0, i32 7
  %311 = load i32, i32* %d_max.i.i893, align 4, !tbaa !24
  %cmp.i.i894 = icmp ugt i32 %add.i.i892, %311
  br i1 %cmp.i.i894, label %if.then.i.i902, label %entry.if.end11_crit_edge.i.i898

entry.if.end11_crit_edge.i.i898:                  ; preds = %do.body.i895
  %data12.phi.trans.insert.i.i896 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %307, i32 0, i32 5
  %.pre.i.i897 = load i8*, i8** %data12.phi.trans.insert.i.i896, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i914

if.then.i.i902:                                   ; preds = %do.body.i895
  %tobool.i.i899 = icmp eq i32 %311, 0
  %shl.i.i900 = shl i32 %311, 1
  %spec.select.i.i901 = select i1 %tobool.i.i899, i32 16, i32 %shl.i.i900
  br label %while.cond.i.i906

while.cond.i.i906:                                ; preds = %while.cond.i.i906, %if.then.i.i902
  %dn.0.i.i903 = phi i32 [ %spec.select.i.i901, %if.then.i.i902 ], [ %shl4.i.i905, %while.cond.i.i906 ]
  %cmp3.i.i904 = icmp ugt i32 %add.i.i892, %dn.0.i.i903
  %shl4.i.i905 = shl i32 %dn.0.i.i903, 1
  br i1 %cmp3.i.i904, label %while.cond.i.i906, label %while.end.i.i910

while.end.i.i910:                                 ; preds = %while.cond.i.i906
  %data5.i.i907 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %307, i32 0, i32 5
  %312 = load i8*, i8** %data5.i.i907, align 4, !tbaa !17
  %call.i.i908 = tail call i8* @realloc(i8* %312, i32 %dn.0.i.i903) #8
  %tobool6.i.i909 = icmp eq i8* %call.i.i908, null
  br i1 %tobool6.i.i909, label %cleanup, label %if.end.i.i912

if.end.i.i912:                                    ; preds = %while.end.i.i910
  store i8* %call.i.i908, i8** %data5.i.i907, align 4, !tbaa !17
  store i32 %dn.0.i.i903, i32* %d_max.i.i893, align 4, !tbaa !24
  %.pre36.i.i911 = load i32, i32* %d_cur.i.i891, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i914

mk_append_context_data.exit.i914:                 ; preds = %if.end.i.i912, %entry.if.end11_crit_edge.i.i898
  %313 = phi i32 [ %310, %entry.if.end11_crit_edge.i.i898 ], [ %.pre36.i.i911, %if.end.i.i912 ]
  %314 = phi i8* [ %.pre.i.i897, %entry.if.end11_crit_edge.i.i898 ], [ %call.i.i908, %if.end.i.i912 ]
  %add.ptr.i.i913 = getelementptr inbounds i8, i8* %314, i32 %313
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i913, i8* align 1 %309, i32 %308, i1 false) #8
  store i32 %add.i.i892, i32* %d_cur.i.i891, align 4, !tbaa !23
  br label %if.end13.i920

if.else.i919:                                     ; preds = %if.end.i890
  %315 = load %struct.mk_writer*, %struct.mk_writer** %owner.i703, align 4, !tbaa !2
  %fp.i916 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %315, i32 0, i32 0
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i916, align 8, !tbaa !14
  %call9.i917 = tail call i32 @fwrite(i8* %309, i32 %308, i32 1, %struct._IO_FILE* %316) #8
  %cmp10.i918 = icmp eq i32 %call9.i917, 1
  br i1 %cmp10.i918, label %if.end13.i920, label %cleanup

if.end13.i920:                                    ; preds = %if.else.i919, %mk_append_context_data.exit.i914
  store i32 0, i32* %d_cur.i1248, align 4, !tbaa !23
  br label %do.end23.i875

do.end23.i875:                                    ; preds = %if.end13.i920, %if.end10.i870
  %next.i873 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i701, i32 0, i32 0
  %317 = load %struct.mk_context*, %struct.mk_context** %next.i873, align 4, !tbaa !16
  %tobool24.i874 = icmp eq %struct.mk_context* %317, null
  %318 = ptrtoint %struct.mk_context* %317 to i32
  br i1 %tobool24.i874, label %do.body278, label %if.then25.i878

if.then25.i878:                                   ; preds = %do.end23.i875
  %319 = bitcast %struct.mk_context*** %prev21.i711 to i32*
  %320 = load i32, i32* %319, align 4, !tbaa !8
  %prev27.i877 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %317, i32 0, i32 1
  %321 = bitcast %struct.mk_context*** %prev27.i877 to i32*
  store i32 %320, i32* %321, align 4, !tbaa !8
  br label %do.body278

do.body278:                                       ; preds = %if.then25.i878, %do.end23.i875
  %322 = bitcast %struct.mk_context*** %prev21.i711 to i32**
  %323 = load i32*, i32** %322, align 4, !tbaa !8
  store i32 %318, i32* %323, align 4, !tbaa !13
  %324 = load %struct.mk_writer*, %struct.mk_writer** %owner.i703, align 4, !tbaa !2
  %freelist.i881 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %324, i32 0, i32 5
  %325 = bitcast %struct.mk_context** %freelist.i881 to i32*
  %326 = load i32, i32* %325, align 4, !tbaa !15
  store i32 %326, i32* %213, align 4, !tbaa !16
  store %struct.mk_context* %c.0.i701, %struct.mk_context** %freelist.i881, align 4, !tbaa !15
  %327 = load i32, i32* %id8.i684, align 4, !tbaa !22
  %tobool.i924 = icmp eq i32 %327, 0
  br i1 %tobool.i924, label %if.end10.i935, label %do.body.i928

do.body.i928:                                     ; preds = %do.body278
  %328 = load %struct.mk_context*, %struct.mk_context** %parent7.i682, align 4, !tbaa !21
  %shr.i1374 = lshr i32 %327, 24
  %conv.i1375 = trunc i32 %shr.i1374 to i8
  %shr1.i1377 = lshr i32 %327, 16
  %conv2.i1378 = trunc i32 %shr1.i1377 to i8
  %shr4.i1380 = lshr i32 %327, 8
  %conv5.i1381 = trunc i32 %shr4.i1380 to i8
  %conv7.i1383 = trunc i32 %327 to i8
  %tobool.i1384 = icmp eq i8 %conv.i1375, 0
  br i1 %tobool.i1384, label %if.end.i1388, label %if.then.i1386

if.then.i1386:                                    ; preds = %do.body.i928
  %d_cur.i1798 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 6
  %329 = load i32, i32* %d_cur.i1798, align 4, !tbaa !23
  %add.i1799 = add i32 %329, 4
  %d_max.i1800 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 7
  %330 = load i32, i32* %d_max.i1800, align 4, !tbaa !24
  %cmp.i1801 = icmp ugt i32 %add.i1799, %330
  br i1 %cmp.i1801, label %if.then.i1808, label %entry.if.end11_crit_edge.i1804

entry.if.end11_crit_edge.i1804:                   ; preds = %if.then.i1386
  %data12.phi.trans.insert.i1802 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 5
  %.pre.i1803 = load i8*, i8** %data12.phi.trans.insert.i1802, align 4, !tbaa !17
  br label %if.end11.i1820

if.then.i1808:                                    ; preds = %if.then.i1386
  %tobool.i1805 = icmp eq i32 %330, 0
  %shl.i1806 = shl i32 %330, 1
  %spec.select.i1807 = select i1 %tobool.i1805, i32 16, i32 %shl.i1806
  br label %while.cond.i1812

while.cond.i1812:                                 ; preds = %while.cond.i1812, %if.then.i1808
  %dn.0.i1809 = phi i32 [ %spec.select.i1807, %if.then.i1808 ], [ %shl4.i1811, %while.cond.i1812 ]
  %cmp3.i1810 = icmp ugt i32 %add.i1799, %dn.0.i1809
  %shl4.i1811 = shl i32 %dn.0.i1809, 1
  br i1 %cmp3.i1810, label %while.cond.i1812, label %while.end.i1816

while.end.i1816:                                  ; preds = %while.cond.i1812
  %data5.i1813 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 5
  %331 = load i8*, i8** %data5.i1813, align 4, !tbaa !17
  %call.i1814 = tail call i8* @realloc(i8* %331, i32 %dn.0.i1809) #8
  %tobool6.i1815 = icmp eq i8* %call.i1814, null
  br i1 %tobool6.i1815, label %cleanup, label %if.end.i1818

if.end.i1818:                                     ; preds = %while.end.i1816
  store i8* %call.i1814, i8** %data5.i1813, align 4, !tbaa !17
  store i32 %dn.0.i1809, i32* %d_max.i1800, align 4, !tbaa !24
  %.pre36.i1817 = load i32, i32* %d_cur.i1798, align 4, !tbaa !23
  br label %if.end11.i1820

if.end11.i1820:                                   ; preds = %if.end.i1818, %entry.if.end11_crit_edge.i1804
  %332 = phi i32 [ %329, %entry.if.end11_crit_edge.i1804 ], [ %.pre36.i1817, %if.end.i1818 ]
  %333 = phi i8* [ %.pre.i1803, %entry.if.end11_crit_edge.i1804 ], [ %call.i1814, %if.end.i1818 ]
  %add.ptr.i1819 = getelementptr inbounds i8, i8* %333, i32 %332
  store i8 %conv.i1375, i8* %add.ptr.i1819, align 1
  %c_id.i1373.sroa.4.0.add.ptr.i1819.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1819, i32 1
  store i8 %conv2.i1378, i8* %c_id.i1373.sroa.4.0.add.ptr.i1819.sroa_raw_idx, align 1
  %c_id.i1373.sroa.6.0.add.ptr.i1819.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1819, i32 2
  store i8 %conv5.i1381, i8* %c_id.i1373.sroa.6.0.add.ptr.i1819.sroa_raw_idx, align 1
  %c_id.i1373.sroa.8.0.add.ptr.i1819.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1819, i32 3
  store i8 %conv7.i1383, i8* %c_id.i1373.sroa.8.0.add.ptr.i1819.sroa_raw_idx, align 1
  store i32 %add.i1799, i32* %d_cur.i1798, align 4, !tbaa !23
  br label %do.body3.i932

if.end.i1388:                                     ; preds = %do.body.i928
  %tobool9.i1387 = icmp eq i8 %conv2.i1378, 0
  br i1 %tobool9.i1387, label %if.end13.i1392, label %if.then10.i1390

if.then10.i1390:                                  ; preds = %if.end.i1388
  %d_cur.i1823 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 6
  %334 = load i32, i32* %d_cur.i1823, align 4, !tbaa !23
  %add.i1824 = add i32 %334, 3
  %d_max.i1825 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 7
  %335 = load i32, i32* %d_max.i1825, align 4, !tbaa !24
  %cmp.i1826 = icmp ugt i32 %add.i1824, %335
  br i1 %cmp.i1826, label %if.then.i1833, label %entry.if.end11_crit_edge.i1829

entry.if.end11_crit_edge.i1829:                   ; preds = %if.then10.i1390
  %data12.phi.trans.insert.i1827 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 5
  %.pre.i1828 = load i8*, i8** %data12.phi.trans.insert.i1827, align 4, !tbaa !17
  br label %if.end11.i1845

if.then.i1833:                                    ; preds = %if.then10.i1390
  %tobool.i1830 = icmp eq i32 %335, 0
  %shl.i1831 = shl i32 %335, 1
  %spec.select.i1832 = select i1 %tobool.i1830, i32 16, i32 %shl.i1831
  br label %while.cond.i1837

while.cond.i1837:                                 ; preds = %while.cond.i1837, %if.then.i1833
  %dn.0.i1834 = phi i32 [ %spec.select.i1832, %if.then.i1833 ], [ %shl4.i1836, %while.cond.i1837 ]
  %cmp3.i1835 = icmp ugt i32 %add.i1824, %dn.0.i1834
  %shl4.i1836 = shl i32 %dn.0.i1834, 1
  br i1 %cmp3.i1835, label %while.cond.i1837, label %while.end.i1841

while.end.i1841:                                  ; preds = %while.cond.i1837
  %data5.i1838 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 5
  %336 = load i8*, i8** %data5.i1838, align 4, !tbaa !17
  %call.i1839 = tail call i8* @realloc(i8* %336, i32 %dn.0.i1834) #8
  %tobool6.i1840 = icmp eq i8* %call.i1839, null
  br i1 %tobool6.i1840, label %cleanup, label %if.end.i1843

if.end.i1843:                                     ; preds = %while.end.i1841
  store i8* %call.i1839, i8** %data5.i1838, align 4, !tbaa !17
  store i32 %dn.0.i1834, i32* %d_max.i1825, align 4, !tbaa !24
  %.pre36.i1842 = load i32, i32* %d_cur.i1823, align 4, !tbaa !23
  br label %if.end11.i1845

if.end11.i1845:                                   ; preds = %if.end.i1843, %entry.if.end11_crit_edge.i1829
  %337 = phi i32 [ %334, %entry.if.end11_crit_edge.i1829 ], [ %.pre36.i1842, %if.end.i1843 ]
  %338 = phi i8* [ %.pre.i1828, %entry.if.end11_crit_edge.i1829 ], [ %call.i1839, %if.end.i1843 ]
  %add.ptr.i1844 = getelementptr inbounds i8, i8* %338, i32 %337
  store i8 %conv2.i1378, i8* %add.ptr.i1844, align 1
  %c_id.i1373.sroa.6.1.add.ptr.i1844.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1844, i32 1
  store i8 %conv5.i1381, i8* %c_id.i1373.sroa.6.1.add.ptr.i1844.sroa_raw_idx, align 1
  %c_id.i1373.sroa.8.1.add.ptr.i1844.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1844, i32 2
  store i8 %conv7.i1383, i8* %c_id.i1373.sroa.8.1.add.ptr.i1844.sroa_raw_idx, align 1
  store i32 %add.i1824, i32* %d_cur.i1823, align 4, !tbaa !23
  br label %do.body3.i932

if.end13.i1392:                                   ; preds = %if.end.i1388
  %tobool15.i1391 = icmp eq i8 %conv5.i1381, 0
  %d_cur.i1398 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 6
  %339 = load i32, i32* %d_cur.i1398, align 4, !tbaa !23
  br i1 %tobool15.i1391, label %if.end20.i1395, label %if.then16.i1394

if.then16.i1394:                                  ; preds = %if.end13.i1392
  %add.i1849 = add i32 %339, 2
  %d_max.i1850 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 7
  %340 = load i32, i32* %d_max.i1850, align 4, !tbaa !24
  %cmp.i1851 = icmp ugt i32 %add.i1849, %340
  br i1 %cmp.i1851, label %if.then.i1858, label %entry.if.end11_crit_edge.i1854

entry.if.end11_crit_edge.i1854:                   ; preds = %if.then16.i1394
  %data12.phi.trans.insert.i1852 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 5
  %.pre.i1853 = load i8*, i8** %data12.phi.trans.insert.i1852, align 4, !tbaa !17
  br label %if.end11.i1870

if.then.i1858:                                    ; preds = %if.then16.i1394
  %tobool.i1855 = icmp eq i32 %340, 0
  %shl.i1856 = shl i32 %340, 1
  %spec.select.i1857 = select i1 %tobool.i1855, i32 16, i32 %shl.i1856
  br label %while.cond.i1862

while.cond.i1862:                                 ; preds = %while.cond.i1862, %if.then.i1858
  %dn.0.i1859 = phi i32 [ %spec.select.i1857, %if.then.i1858 ], [ %shl4.i1861, %while.cond.i1862 ]
  %cmp3.i1860 = icmp ugt i32 %add.i1849, %dn.0.i1859
  %shl4.i1861 = shl i32 %dn.0.i1859, 1
  br i1 %cmp3.i1860, label %while.cond.i1862, label %while.end.i1866

while.end.i1866:                                  ; preds = %while.cond.i1862
  %data5.i1863 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 5
  %341 = load i8*, i8** %data5.i1863, align 4, !tbaa !17
  %call.i1864 = tail call i8* @realloc(i8* %341, i32 %dn.0.i1859) #8
  %tobool6.i1865 = icmp eq i8* %call.i1864, null
  br i1 %tobool6.i1865, label %cleanup, label %if.end.i1868

if.end.i1868:                                     ; preds = %while.end.i1866
  store i8* %call.i1864, i8** %data5.i1863, align 4, !tbaa !17
  store i32 %dn.0.i1859, i32* %d_max.i1850, align 4, !tbaa !24
  %.pre36.i1867 = load i32, i32* %d_cur.i1398, align 4, !tbaa !23
  br label %if.end11.i1870

if.end11.i1870:                                   ; preds = %if.end.i1868, %entry.if.end11_crit_edge.i1854
  %342 = phi i32 [ %339, %entry.if.end11_crit_edge.i1854 ], [ %.pre36.i1867, %if.end.i1868 ]
  %343 = phi i8* [ %.pre.i1853, %entry.if.end11_crit_edge.i1854 ], [ %call.i1864, %if.end.i1868 ]
  %add.ptr.i1869 = getelementptr inbounds i8, i8* %343, i32 %342
  store i8 %conv5.i1381, i8* %add.ptr.i1869, align 1
  %c_id.i1373.sroa.8.2.add.ptr.i1869.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i1869, i32 1
  store i8 %conv7.i1383, i8* %c_id.i1373.sroa.8.2.add.ptr.i1869.sroa_raw_idx, align 1
  store i32 %add.i1849, i32* %d_cur.i1398, align 4, !tbaa !23
  br label %do.body3.i932

if.end20.i1395:                                   ; preds = %if.end13.i1392
  %add.i1399 = add i32 %339, 1
  %d_max.i1400 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 7
  %344 = load i32, i32* %d_max.i1400, align 4, !tbaa !24
  %cmp.i1401 = icmp ugt i32 %add.i1399, %344
  br i1 %cmp.i1401, label %if.then.i1408, label %entry.if.end11_crit_edge.i1404

entry.if.end11_crit_edge.i1404:                   ; preds = %if.end20.i1395
  %data12.phi.trans.insert.i1402 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 5
  %.pre.i1403 = load i8*, i8** %data12.phi.trans.insert.i1402, align 4, !tbaa !17
  br label %if.end11.i1420

if.then.i1408:                                    ; preds = %if.end20.i1395
  %tobool.i1405 = icmp eq i32 %344, 0
  %shl.i1406 = shl i32 %344, 1
  %spec.select.i1407 = select i1 %tobool.i1405, i32 16, i32 %shl.i1406
  br label %while.cond.i1412

while.cond.i1412:                                 ; preds = %while.cond.i1412, %if.then.i1408
  %dn.0.i1409 = phi i32 [ %spec.select.i1407, %if.then.i1408 ], [ %shl4.i1411, %while.cond.i1412 ]
  %cmp3.i1410 = icmp ugt i32 %add.i1399, %dn.0.i1409
  %shl4.i1411 = shl i32 %dn.0.i1409, 1
  br i1 %cmp3.i1410, label %while.cond.i1412, label %while.end.i1416

while.end.i1416:                                  ; preds = %while.cond.i1412
  %data5.i1413 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %328, i32 0, i32 5
  %345 = load i8*, i8** %data5.i1413, align 4, !tbaa !17
  %call.i1414 = tail call i8* @realloc(i8* %345, i32 %dn.0.i1409) #8
  %tobool6.i1415 = icmp eq i8* %call.i1414, null
  br i1 %tobool6.i1415, label %cleanup, label %if.end.i1418

if.end.i1418:                                     ; preds = %while.end.i1416
  store i8* %call.i1414, i8** %data5.i1413, align 4, !tbaa !17
  store i32 %dn.0.i1409, i32* %d_max.i1400, align 4, !tbaa !24
  %.pre36.i1417 = load i32, i32* %d_cur.i1398, align 4, !tbaa !23
  br label %if.end11.i1420

if.end11.i1420:                                   ; preds = %if.end.i1418, %entry.if.end11_crit_edge.i1404
  %346 = phi i32 [ %339, %entry.if.end11_crit_edge.i1404 ], [ %.pre36.i1417, %if.end.i1418 ]
  %347 = phi i8* [ %.pre.i1403, %entry.if.end11_crit_edge.i1404 ], [ %call.i1414, %if.end.i1418 ]
  %add.ptr.i1419 = getelementptr inbounds i8, i8* %347, i32 %346
  store i8 %conv7.i1383, i8* %add.ptr.i1419, align 1
  store i32 %add.i1399, i32* %d_cur.i1398, align 4, !tbaa !23
  br label %do.body3.i932

do.body3.i932:                                    ; preds = %if.end11.i1820, %if.end11.i1845, %if.end11.i1870, %if.end11.i1420
  %348 = load %struct.mk_context*, %struct.mk_context** %parent7.i682, align 4, !tbaa !21
  %d_cur.i929 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 6
  %349 = load i32, i32* %d_cur.i929, align 4, !tbaa !23
  %call5.i930 = tail call fastcc i32 @mk_write_size(%struct.mk_context* %348, i32 %349) #8
  %cmp6.i931 = icmp slt i32 %call5.i930, 0
  br i1 %cmp6.i931, label %cleanup, label %if.end10.i935

if.end10.i935:                                    ; preds = %do.body3.i932, %do.body278
  %350 = load %struct.mk_context*, %struct.mk_context** %parent7.i682, align 4, !tbaa !21
  %d_cur.i950 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 6
  %351 = load i32, i32* %d_cur.i950, align 4, !tbaa !23
  %tobool.i951 = icmp eq i32 %351, 0
  br i1 %tobool.i951, label %do.end23.i940, label %if.end.i955

if.end.i955:                                      ; preds = %if.end10.i935
  %tobool1.i953 = icmp eq %struct.mk_context* %350, null
  %data7.i954 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 5
  %352 = load i8*, i8** %data7.i954, align 4, !tbaa !17
  br i1 %tobool1.i953, label %if.else.i984, label %do.body.i960

do.body.i960:                                     ; preds = %if.end.i955
  %d_cur.i.i956 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %350, i32 0, i32 6
  %353 = load i32, i32* %d_cur.i.i956, align 4, !tbaa !23
  %add.i.i957 = add i32 %353, %351
  %d_max.i.i958 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %350, i32 0, i32 7
  %354 = load i32, i32* %d_max.i.i958, align 4, !tbaa !24
  %cmp.i.i959 = icmp ugt i32 %add.i.i957, %354
  br i1 %cmp.i.i959, label %if.then.i.i967, label %entry.if.end11_crit_edge.i.i963

entry.if.end11_crit_edge.i.i963:                  ; preds = %do.body.i960
  %data12.phi.trans.insert.i.i961 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %350, i32 0, i32 5
  %.pre.i.i962 = load i8*, i8** %data12.phi.trans.insert.i.i961, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i979

if.then.i.i967:                                   ; preds = %do.body.i960
  %tobool.i.i964 = icmp eq i32 %354, 0
  %shl.i.i965 = shl i32 %354, 1
  %spec.select.i.i966 = select i1 %tobool.i.i964, i32 16, i32 %shl.i.i965
  br label %while.cond.i.i971

while.cond.i.i971:                                ; preds = %while.cond.i.i971, %if.then.i.i967
  %dn.0.i.i968 = phi i32 [ %spec.select.i.i966, %if.then.i.i967 ], [ %shl4.i.i970, %while.cond.i.i971 ]
  %cmp3.i.i969 = icmp ugt i32 %add.i.i957, %dn.0.i.i968
  %shl4.i.i970 = shl i32 %dn.0.i.i968, 1
  br i1 %cmp3.i.i969, label %while.cond.i.i971, label %while.end.i.i975

while.end.i.i975:                                 ; preds = %while.cond.i.i971
  %data5.i.i972 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %350, i32 0, i32 5
  %355 = load i8*, i8** %data5.i.i972, align 4, !tbaa !17
  %call.i.i973 = tail call i8* @realloc(i8* %355, i32 %dn.0.i.i968) #8
  %tobool6.i.i974 = icmp eq i8* %call.i.i973, null
  br i1 %tobool6.i.i974, label %cleanup, label %if.end.i.i977

if.end.i.i977:                                    ; preds = %while.end.i.i975
  store i8* %call.i.i973, i8** %data5.i.i972, align 4, !tbaa !17
  store i32 %dn.0.i.i968, i32* %d_max.i.i958, align 4, !tbaa !24
  %.pre36.i.i976 = load i32, i32* %d_cur.i.i956, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i979

mk_append_context_data.exit.i979:                 ; preds = %if.end.i.i977, %entry.if.end11_crit_edge.i.i963
  %356 = phi i32 [ %353, %entry.if.end11_crit_edge.i.i963 ], [ %.pre36.i.i976, %if.end.i.i977 ]
  %357 = phi i8* [ %.pre.i.i962, %entry.if.end11_crit_edge.i.i963 ], [ %call.i.i973, %if.end.i.i977 ]
  %add.ptr.i.i978 = getelementptr inbounds i8, i8* %357, i32 %356
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i978, i8* align 1 %352, i32 %351, i1 false) #8
  store i32 %add.i.i957, i32* %d_cur.i.i956, align 4, !tbaa !23
  br label %if.end13.i985

if.else.i984:                                     ; preds = %if.end.i955
  %358 = load %struct.mk_writer*, %struct.mk_writer** %owner.i683, align 4, !tbaa !2
  %fp.i981 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %358, i32 0, i32 0
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i981, align 8, !tbaa !14
  %call9.i982 = tail call i32 @fwrite(i8* %352, i32 %351, i32 1, %struct._IO_FILE* %359) #8
  %cmp10.i983 = icmp eq i32 %call9.i982, 1
  br i1 %cmp10.i983, label %if.end13.i985, label %cleanup

if.end13.i985:                                    ; preds = %if.else.i984, %mk_append_context_data.exit.i979
  store i32 0, i32* %d_cur.i950, align 4, !tbaa !23
  br label %do.end23.i940

do.end23.i940:                                    ; preds = %if.end13.i985, %if.end10.i935
  %next.i938 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %203, i32 0, i32 0
  %360 = load %struct.mk_context*, %struct.mk_context** %next.i938, align 4, !tbaa !16
  %tobool24.i939 = icmp eq %struct.mk_context* %360, null
  %361 = ptrtoint %struct.mk_context* %360 to i32
  br i1 %tobool24.i939, label %do.body286, label %if.then25.i943

if.then25.i943:                                   ; preds = %do.end23.i940
  %362 = bitcast %struct.mk_context*** %prev21.i691 to i32*
  %363 = load i32, i32* %362, align 4, !tbaa !8
  %prev27.i942 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %360, i32 0, i32 1
  %364 = bitcast %struct.mk_context*** %prev27.i942 to i32*
  store i32 %363, i32* %364, align 4, !tbaa !8
  br label %do.body286

do.body286:                                       ; preds = %if.then25.i943, %do.end23.i940
  %365 = bitcast %struct.mk_context*** %prev21.i691 to i32**
  %366 = load i32*, i32** %365, align 4, !tbaa !8
  store i32 %361, i32* %366, align 4, !tbaa !13
  %367 = load %struct.mk_writer*, %struct.mk_writer** %owner.i683, align 4, !tbaa !2
  %freelist.i946 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %367, i32 0, i32 5
  %368 = bitcast %struct.mk_context** %freelist.i946 to i32*
  %369 = load i32, i32* %368, align 4, !tbaa !15
  store i32 %369, i32* %207, align 4, !tbaa !16
  store %struct.mk_context* %203, %struct.mk_context** %freelist.i946, align 4, !tbaa !15
  %370 = load %struct.mk_context*, %struct.mk_context** %root, align 8, !tbaa !12
  %d_cur.i988 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %370, i32 0, i32 6
  %371 = load i32, i32* %d_cur.i988, align 4, !tbaa !23
  %tobool.i989 = icmp eq i32 %371, 0
  br i1 %tobool.i989, label %do.end294, label %if.end.i993

if.end.i993:                                      ; preds = %do.body286
  %parent.i990 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %370, i32 0, i32 2
  %372 = load %struct.mk_context*, %struct.mk_context** %parent.i990, align 4, !tbaa !21
  %tobool1.i991 = icmp eq %struct.mk_context* %372, null
  %data7.i992 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %370, i32 0, i32 5
  %373 = load i8*, i8** %data7.i992, align 4, !tbaa !17
  br i1 %tobool1.i991, label %if.else.i1022, label %do.body.i998

do.body.i998:                                     ; preds = %if.end.i993
  %d_cur.i.i994 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %372, i32 0, i32 6
  %374 = load i32, i32* %d_cur.i.i994, align 4, !tbaa !23
  %add.i.i995 = add i32 %374, %371
  %d_max.i.i996 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %372, i32 0, i32 7
  %375 = load i32, i32* %d_max.i.i996, align 4, !tbaa !24
  %cmp.i.i997 = icmp ugt i32 %add.i.i995, %375
  br i1 %cmp.i.i997, label %if.then.i.i1005, label %entry.if.end11_crit_edge.i.i1001

entry.if.end11_crit_edge.i.i1001:                 ; preds = %do.body.i998
  %data12.phi.trans.insert.i.i999 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %372, i32 0, i32 5
  %.pre.i.i1000 = load i8*, i8** %data12.phi.trans.insert.i.i999, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i1017

if.then.i.i1005:                                  ; preds = %do.body.i998
  %tobool.i.i1002 = icmp eq i32 %375, 0
  %shl.i.i1003 = shl i32 %375, 1
  %spec.select.i.i1004 = select i1 %tobool.i.i1002, i32 16, i32 %shl.i.i1003
  br label %while.cond.i.i1009

while.cond.i.i1009:                               ; preds = %while.cond.i.i1009, %if.then.i.i1005
  %dn.0.i.i1006 = phi i32 [ %spec.select.i.i1004, %if.then.i.i1005 ], [ %shl4.i.i1008, %while.cond.i.i1009 ]
  %cmp3.i.i1007 = icmp ugt i32 %add.i.i995, %dn.0.i.i1006
  %shl4.i.i1008 = shl i32 %dn.0.i.i1006, 1
  br i1 %cmp3.i.i1007, label %while.cond.i.i1009, label %while.end.i.i1013

while.end.i.i1013:                                ; preds = %while.cond.i.i1009
  %data5.i.i1010 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %372, i32 0, i32 5
  %376 = load i8*, i8** %data5.i.i1010, align 4, !tbaa !17
  %call.i.i1011 = tail call i8* @realloc(i8* %376, i32 %dn.0.i.i1006) #8
  %tobool6.i.i1012 = icmp eq i8* %call.i.i1011, null
  br i1 %tobool6.i.i1012, label %cleanup, label %if.end.i.i1015

if.end.i.i1015:                                   ; preds = %while.end.i.i1013
  store i8* %call.i.i1011, i8** %data5.i.i1010, align 4, !tbaa !17
  store i32 %dn.0.i.i1006, i32* %d_max.i.i996, align 4, !tbaa !24
  %.pre36.i.i1014 = load i32, i32* %d_cur.i.i994, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i1017

mk_append_context_data.exit.i1017:                ; preds = %if.end.i.i1015, %entry.if.end11_crit_edge.i.i1001
  %377 = phi i32 [ %374, %entry.if.end11_crit_edge.i.i1001 ], [ %.pre36.i.i1014, %if.end.i.i1015 ]
  %378 = phi i8* [ %.pre.i.i1000, %entry.if.end11_crit_edge.i.i1001 ], [ %call.i.i1011, %if.end.i.i1015 ]
  %add.ptr.i.i1016 = getelementptr inbounds i8, i8* %378, i32 %377
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i1016, i8* align 1 %373, i32 %371, i1 false) #8
  store i32 %add.i.i995, i32* %d_cur.i.i994, align 4, !tbaa !23
  br label %if.end13.i1023

if.else.i1022:                                    ; preds = %if.end.i993
  %owner.i1018 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %370, i32 0, i32 3
  %379 = load %struct.mk_writer*, %struct.mk_writer** %owner.i1018, align 4, !tbaa !2
  %fp.i1019 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %379, i32 0, i32 0
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i1019, align 8, !tbaa !14
  %call9.i1020 = tail call i32 @fwrite(i8* %373, i32 %371, i32 1, %struct._IO_FILE* %380) #8
  %cmp10.i1021 = icmp eq i32 %call9.i1020, 1
  br i1 %cmp10.i1021, label %if.end13.i1023, label %cleanup

if.end13.i1023:                                   ; preds = %if.else.i1022, %mk_append_context_data.exit.i1017
  store i32 0, i32* %d_cur.i988, align 4, !tbaa !23
  br label %do.end294

do.end294:                                        ; preds = %if.end13.i1023, %do.body286
  store i8 1, i8* %wrote_header, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %while.end.i.i1013, %if.else.i1022, %while.end.i.i975, %if.else.i984, %while.end.i1416, %while.end.i1866, %while.end.i1841, %while.end.i1816, %do.body3.i932, %while.end.i.i910, %if.else.i919, %while.end.i1366, %while.end.i1791, %while.end.i1766, %while.end.i1741, %do.body3.i867, %while.end.i.i845, %if.else.i854, %while.end.i1316, %while.end.i1716, %while.end.i1691, %while.end.i1666, %do.body3.i802, %if.else.i778, %while.end.i.i765, %while.end.i19.i, %do.body1.i770, %while.end.i1266, %while.end.i.i740, %do.body2.i720, %if.else.i700, %if.else.i680, %while.end.i.i662, %if.else.i671, %while.end.i1233, %while.end.i1641, %while.end.i1616, %while.end.i1591, %do.body3.i620, %while.end.i.i.i, %while.end.i.i606, %while.end.i.i20.i, %while.end.i1183, %while.end.i.i581, %do.body2.i561, %while.end.i1149, %while.end.i.i549, %do.body2.i529, %if.else.i509, %if.else.i500, %while.end.i.i491, %while.end.i39.i, %while.end.i64.i, %if.else.i398, %while.end.i.i385, %if.else.i391, %while.end.i1065, %while.end.i1491, %while.end.i1466, %while.end.i1441, %do.body3.i, %while.end.i, %while.end.i.i, %do.body2.i, %if.else.i, %do.body252, %do.body240, %do.body231, %do.body222, %do.body213, %do.body204, %mk_create_context.exit792, %do.body191, %do.body162, %do.body154, %do.body146, %do.body138, %mk_create_context.exit714, %mk_create_context.exit694, %do.body103, %mk_create_context.exit523, %mk_create_context.exit412, %do.body45, %do.body36, %do.body22, %do.body15, %do.body8, %do.body, %mk_create_context.exit, %entry, %do.end294
  %retval.0 = phi i32 [ 0, %do.end294 ], [ -1, %entry ], [ -1, %mk_create_context.exit ], [ -1, %do.body ], [ -1, %do.body8 ], [ -1, %do.body15 ], [ -1, %do.body22 ], [ -1, %do.body36 ], [ -1, %do.body45 ], [ -1, %mk_create_context.exit412 ], [ -1, %mk_create_context.exit523 ], [ -1, %do.body103 ], [ -1, %mk_create_context.exit694 ], [ -1, %mk_create_context.exit714 ], [ -1, %do.body138 ], [ -1, %do.body146 ], [ -1, %do.body154 ], [ -1, %do.body162 ], [ -1, %do.body191 ], [ -1, %mk_create_context.exit792 ], [ -1, %do.body204 ], [ -1, %do.body213 ], [ -1, %do.body222 ], [ -1, %do.body231 ], [ -1, %do.body240 ], [ -1, %do.body252 ], [ -1, %if.else.i ], [ -1, %do.body2.i ], [ -1, %while.end.i.i ], [ -1, %while.end.i ], [ -1, %do.body3.i ], [ -1, %while.end.i1441 ], [ -1, %while.end.i1466 ], [ -1, %while.end.i1491 ], [ -1, %while.end.i1065 ], [ -1, %if.else.i391 ], [ -1, %while.end.i.i385 ], [ -1, %if.else.i398 ], [ -1, %while.end.i64.i ], [ -1, %while.end.i39.i ], [ -1, %while.end.i.i491 ], [ -1, %if.else.i500 ], [ -1, %if.else.i509 ], [ -1, %do.body2.i529 ], [ -1, %while.end.i.i549 ], [ -1, %while.end.i1149 ], [ -1, %do.body2.i561 ], [ -1, %while.end.i.i581 ], [ -1, %while.end.i1183 ], [ -1, %while.end.i.i20.i ], [ -1, %while.end.i.i606 ], [ -1, %while.end.i.i.i ], [ -1, %do.body3.i620 ], [ -1, %while.end.i1591 ], [ -1, %while.end.i1616 ], [ -1, %while.end.i1641 ], [ -1, %while.end.i1233 ], [ -1, %if.else.i671 ], [ -1, %while.end.i.i662 ], [ -1, %if.else.i680 ], [ -1, %if.else.i700 ], [ -1, %do.body2.i720 ], [ -1, %while.end.i.i740 ], [ -1, %while.end.i1266 ], [ -1, %do.body1.i770 ], [ -1, %while.end.i19.i ], [ -1, %while.end.i.i765 ], [ -1, %if.else.i778 ], [ -1, %do.body3.i802 ], [ -1, %while.end.i1666 ], [ -1, %while.end.i1691 ], [ -1, %while.end.i1716 ], [ -1, %while.end.i1316 ], [ -1, %if.else.i854 ], [ -1, %while.end.i.i845 ], [ -1, %do.body3.i867 ], [ -1, %while.end.i1741 ], [ -1, %while.end.i1766 ], [ -1, %while.end.i1791 ], [ -1, %while.end.i1366 ], [ -1, %if.else.i919 ], [ -1, %while.end.i.i910 ], [ -1, %do.body3.i932 ], [ -1, %while.end.i1816 ], [ -1, %while.end.i1841 ], [ -1, %while.end.i1866 ], [ -1, %while.end.i1416 ], [ -1, %if.else.i984 ], [ -1, %while.end.i.i975 ], [ -1, %if.else.i1022 ], [ -1, %while.end.i.i1013 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal fastcc i32 @mk_write_uint(%struct.mk_context* %c, i32 %id, i64 %ui) unnamed_addr #0 {
entry:
  %c_ui = alloca [8 x i8], align 4
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %shr = lshr i64 %ui, 56
  %conv = trunc i64 %shr to i8
  store i8 %conv, i8* %0, align 4, !tbaa !27
  %arrayinit.element = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 1
  %shr1 = lshr i64 %ui, 48
  %conv2 = trunc i64 %shr1 to i8
  store i8 %conv2, i8* %arrayinit.element, align 1, !tbaa !27
  %arrayinit.element3 = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 2
  %shr4 = lshr i64 %ui, 40
  %conv5 = trunc i64 %shr4 to i8
  store i8 %conv5, i8* %arrayinit.element3, align 2, !tbaa !27
  %arrayinit.element6 = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 3
  %shr7 = lshr i64 %ui, 32
  %conv8 = trunc i64 %shr7 to i8
  store i8 %conv8, i8* %arrayinit.element6, align 1, !tbaa !27
  %arrayinit.element9 = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 4
  %shr10 = lshr i64 %ui, 24
  %conv11 = trunc i64 %shr10 to i8
  store i8 %conv11, i8* %arrayinit.element9, align 4, !tbaa !27
  %arrayinit.element12 = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 5
  %shr13 = lshr i64 %ui, 16
  %conv14 = trunc i64 %shr13 to i8
  store i8 %conv14, i8* %arrayinit.element12, align 1, !tbaa !27
  %arrayinit.element15 = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 6
  %shr16 = lshr i64 %ui, 8
  %conv17 = trunc i64 %shr16 to i8
  store i8 %conv17, i8* %arrayinit.element15, align 2, !tbaa !27
  %arrayinit.element18 = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 7
  %conv19 = trunc i64 %ui to i8
  store i8 %conv19, i8* %arrayinit.element18, align 1, !tbaa !27
  %shr.i = lshr i32 %id, 24
  %conv.i = trunc i32 %shr.i to i8
  %shr1.i = lshr i32 %id, 16
  %conv2.i = trunc i32 %shr1.i to i8
  %shr4.i = lshr i32 %id, 8
  %conv5.i = trunc i32 %shr4.i to i8
  %conv7.i = trunc i32 %id to i8
  %tobool.i = icmp eq i8 %conv.i, 0
  br i1 %tobool.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %d_cur.i85 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %1 = load i32, i32* %d_cur.i85, align 4, !tbaa !23
  %add.i86 = add i32 %1, 4
  %d_max.i87 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %2 = load i32, i32* %d_max.i87, align 4, !tbaa !24
  %cmp.i88 = icmp ugt i32 %add.i86, %2
  br i1 %cmp.i88, label %if.then.i95, label %entry.if.end11_crit_edge.i91

entry.if.end11_crit_edge.i91:                     ; preds = %if.then.i
  %data12.phi.trans.insert.i89 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i90 = load i8*, i8** %data12.phi.trans.insert.i89, align 4, !tbaa !17
  br label %if.end11.i107

if.then.i95:                                      ; preds = %if.then.i
  %tobool.i92 = icmp eq i32 %2, 0
  %shl.i93 = shl i32 %2, 1
  %spec.select.i94 = select i1 %tobool.i92, i32 16, i32 %shl.i93
  br label %while.cond.i99

while.cond.i99:                                   ; preds = %while.cond.i99, %if.then.i95
  %dn.0.i96 = phi i32 [ %spec.select.i94, %if.then.i95 ], [ %shl4.i98, %while.cond.i99 ]
  %cmp3.i97 = icmp ugt i32 %add.i86, %dn.0.i96
  %shl4.i98 = shl i32 %dn.0.i96, 1
  br i1 %cmp3.i97, label %while.cond.i99, label %while.end.i103

while.end.i103:                                   ; preds = %while.cond.i99
  %data5.i100 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %3 = load i8*, i8** %data5.i100, align 4, !tbaa !17
  %call.i101 = tail call i8* @realloc(i8* %3, i32 %dn.0.i96) #8
  %tobool6.i102 = icmp eq i8* %call.i101, null
  br i1 %tobool6.i102, label %cleanup, label %if.end.i105

if.end.i105:                                      ; preds = %while.end.i103
  store i8* %call.i101, i8** %data5.i100, align 4, !tbaa !17
  store i32 %dn.0.i96, i32* %d_max.i87, align 4, !tbaa !24
  %.pre36.i104 = load i32, i32* %d_cur.i85, align 4, !tbaa !23
  br label %if.end11.i107

if.end11.i107:                                    ; preds = %if.end.i105, %entry.if.end11_crit_edge.i91
  %4 = phi i32 [ %1, %entry.if.end11_crit_edge.i91 ], [ %.pre36.i104, %if.end.i105 ]
  %5 = phi i8* [ %.pre.i90, %entry.if.end11_crit_edge.i91 ], [ %call.i101, %if.end.i105 ]
  %add.ptr.i106 = getelementptr inbounds i8, i8* %5, i32 %4
  store i8 %conv.i, i8* %add.ptr.i106, align 1
  %c_id.i.sroa.4.0.add.ptr.i106.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i106, i32 1
  store i8 %conv2.i, i8* %c_id.i.sroa.4.0.add.ptr.i106.sroa_raw_idx, align 1
  %c_id.i.sroa.6.0.add.ptr.i106.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i106, i32 2
  store i8 %conv5.i, i8* %c_id.i.sroa.6.0.add.ptr.i106.sroa_raw_idx, align 1
  %c_id.i.sroa.8.0.add.ptr.i106.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i106, i32 3
  store i8 %conv7.i, i8* %c_id.i.sroa.8.0.add.ptr.i106.sroa_raw_idx, align 1
  store i32 %add.i86, i32* %d_cur.i85, align 4, !tbaa !23
  br label %mk_write_id.exit

if.end.i:                                         ; preds = %entry
  %tobool9.i = icmp eq i8 %conv2.i, 0
  br i1 %tobool9.i, label %if.end13.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  %d_cur.i110 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %6 = load i32, i32* %d_cur.i110, align 4, !tbaa !23
  %add.i111 = add i32 %6, 3
  %d_max.i112 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %7 = load i32, i32* %d_max.i112, align 4, !tbaa !24
  %cmp.i113 = icmp ugt i32 %add.i111, %7
  br i1 %cmp.i113, label %if.then.i120, label %entry.if.end11_crit_edge.i116

entry.if.end11_crit_edge.i116:                    ; preds = %if.then10.i
  %data12.phi.trans.insert.i114 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i115 = load i8*, i8** %data12.phi.trans.insert.i114, align 4, !tbaa !17
  br label %if.end11.i131

if.then.i120:                                     ; preds = %if.then10.i
  %tobool.i117 = icmp eq i32 %7, 0
  %shl.i118 = shl i32 %7, 1
  %spec.select.i119 = select i1 %tobool.i117, i32 16, i32 %shl.i118
  br label %while.cond.i124

while.cond.i124:                                  ; preds = %while.cond.i124, %if.then.i120
  %dn.0.i121 = phi i32 [ %spec.select.i119, %if.then.i120 ], [ %shl4.i123, %while.cond.i124 ]
  %cmp3.i122 = icmp ugt i32 %add.i111, %dn.0.i121
  %shl4.i123 = shl i32 %dn.0.i121, 1
  br i1 %cmp3.i122, label %while.cond.i124, label %while.end.i127

while.end.i127:                                   ; preds = %while.cond.i124
  %data5.i125 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %8 = load i8*, i8** %data5.i125, align 4, !tbaa !17
  %call.i = tail call i8* @realloc(i8* %8, i32 %dn.0.i121) #8
  %tobool6.i126 = icmp eq i8* %call.i, null
  br i1 %tobool6.i126, label %cleanup, label %if.end.i129

if.end.i129:                                      ; preds = %while.end.i127
  store i8* %call.i, i8** %data5.i125, align 4, !tbaa !17
  store i32 %dn.0.i121, i32* %d_max.i112, align 4, !tbaa !24
  %.pre36.i128 = load i32, i32* %d_cur.i110, align 4, !tbaa !23
  br label %if.end11.i131

if.end11.i131:                                    ; preds = %if.end.i129, %entry.if.end11_crit_edge.i116
  %9 = phi i32 [ %6, %entry.if.end11_crit_edge.i116 ], [ %.pre36.i128, %if.end.i129 ]
  %10 = phi i8* [ %.pre.i115, %entry.if.end11_crit_edge.i116 ], [ %call.i, %if.end.i129 ]
  %add.ptr.i130 = getelementptr inbounds i8, i8* %10, i32 %9
  store i8 %conv2.i, i8* %add.ptr.i130, align 1
  %c_id.i.sroa.6.1.add.ptr.i130.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i130, i32 1
  store i8 %conv5.i, i8* %c_id.i.sroa.6.1.add.ptr.i130.sroa_raw_idx, align 1
  %c_id.i.sroa.8.1.add.ptr.i130.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i130, i32 2
  store i8 %conv7.i, i8* %c_id.i.sroa.8.1.add.ptr.i130.sroa_raw_idx, align 1
  store i32 %add.i111, i32* %d_cur.i110, align 4, !tbaa !23
  br label %mk_write_id.exit

if.end13.i:                                       ; preds = %if.end.i
  %tobool15.i = icmp eq i8 %conv5.i, 0
  %d_cur.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %11 = load i32, i32* %d_cur.i, align 4, !tbaa !23
  br i1 %tobool15.i, label %if.end20.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  %add.i135 = add i32 %11, 2
  %d_max.i136 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %12 = load i32, i32* %d_max.i136, align 4, !tbaa !24
  %cmp.i137 = icmp ugt i32 %add.i135, %12
  br i1 %cmp.i137, label %if.then.i144, label %entry.if.end11_crit_edge.i140

entry.if.end11_crit_edge.i140:                    ; preds = %if.then16.i
  %data12.phi.trans.insert.i138 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i139 = load i8*, i8** %data12.phi.trans.insert.i138, align 4, !tbaa !17
  br label %if.end11.i156

if.then.i144:                                     ; preds = %if.then16.i
  %tobool.i141 = icmp eq i32 %12, 0
  %shl.i142 = shl i32 %12, 1
  %spec.select.i143 = select i1 %tobool.i141, i32 16, i32 %shl.i142
  br label %while.cond.i148

while.cond.i148:                                  ; preds = %while.cond.i148, %if.then.i144
  %dn.0.i145 = phi i32 [ %spec.select.i143, %if.then.i144 ], [ %shl4.i147, %while.cond.i148 ]
  %cmp3.i146 = icmp ugt i32 %add.i135, %dn.0.i145
  %shl4.i147 = shl i32 %dn.0.i145, 1
  br i1 %cmp3.i146, label %while.cond.i148, label %while.end.i152

while.end.i152:                                   ; preds = %while.cond.i148
  %data5.i149 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %13 = load i8*, i8** %data5.i149, align 4, !tbaa !17
  %call.i150 = tail call i8* @realloc(i8* %13, i32 %dn.0.i145) #8
  %tobool6.i151 = icmp eq i8* %call.i150, null
  br i1 %tobool6.i151, label %cleanup, label %if.end.i154

if.end.i154:                                      ; preds = %while.end.i152
  store i8* %call.i150, i8** %data5.i149, align 4, !tbaa !17
  store i32 %dn.0.i145, i32* %d_max.i136, align 4, !tbaa !24
  %.pre36.i153 = load i32, i32* %d_cur.i, align 4, !tbaa !23
  br label %if.end11.i156

if.end11.i156:                                    ; preds = %if.end.i154, %entry.if.end11_crit_edge.i140
  %14 = phi i32 [ %11, %entry.if.end11_crit_edge.i140 ], [ %.pre36.i153, %if.end.i154 ]
  %15 = phi i8* [ %.pre.i139, %entry.if.end11_crit_edge.i140 ], [ %call.i150, %if.end.i154 ]
  %add.ptr.i155 = getelementptr inbounds i8, i8* %15, i32 %14
  store i8 %conv5.i, i8* %add.ptr.i155, align 1
  %c_id.i.sroa.8.2.add.ptr.i155.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i155, i32 1
  store i8 %conv7.i, i8* %c_id.i.sroa.8.2.add.ptr.i155.sroa_raw_idx, align 1
  store i32 %add.i135, i32* %d_cur.i, align 4, !tbaa !23
  br label %mk_write_id.exit

if.end20.i:                                       ; preds = %if.end13.i
  %add.i = add i32 %11, 1
  %d_max.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %16 = load i32, i32* %d_max.i, align 4, !tbaa !24
  %cmp.i = icmp ugt i32 %add.i, %16
  br i1 %cmp.i, label %if.then.i57, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %if.end20.i
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i = load i8*, i8** %data12.phi.trans.insert.i, align 4, !tbaa !17
  br label %if.end11.i

if.then.i57:                                      ; preds = %if.end20.i
  %tobool.i56 = icmp eq i32 %16, 0
  %shl.i = shl i32 %16, 1
  %spec.select.i = select i1 %tobool.i56, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i57
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i57 ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %17 = load i8*, i8** %data5.i, align 4, !tbaa !17
  %call.i58 = tail call i8* @realloc(i8* %17, i32 %dn.0.i) #8
  %tobool6.i = icmp eq i8* %call.i58, null
  br i1 %tobool6.i, label %cleanup, label %if.end.i59

if.end.i59:                                       ; preds = %while.end.i
  store i8* %call.i58, i8** %data5.i, align 4, !tbaa !17
  store i32 %dn.0.i, i32* %d_max.i, align 4, !tbaa !24
  %.pre36.i = load i32, i32* %d_cur.i, align 4, !tbaa !23
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i59, %entry.if.end11_crit_edge.i
  %18 = phi i32 [ %11, %entry.if.end11_crit_edge.i ], [ %.pre36.i, %if.end.i59 ]
  %19 = phi i8* [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i58, %if.end.i59 ]
  %add.ptr.i = getelementptr inbounds i8, i8* %19, i32 %18
  store i8 %conv7.i, i8* %add.ptr.i, align 1
  store i32 %add.i, i32* %d_cur.i, align 4, !tbaa !23
  br label %mk_write_id.exit

mk_write_id.exit:                                 ; preds = %if.end11.i, %if.end11.i156, %if.end11.i131, %if.end11.i107
  %tobool = icmp eq i8 %conv, 0
  br i1 %tobool, label %while.body, label %do.body23

while.body:                                       ; preds = %mk_write_id.exit
  %tobool.1 = icmp eq i8 %conv2, 0
  br i1 %tobool.1, label %while.body.1, label %do.body23

do.body23:                                        ; preds = %while.body.5, %while.body.4, %while.body.3, %while.body.2, %while.body.1, %while.body, %mk_write_id.exit
  %i.0.lcssa = phi i32 [ 0, %mk_write_id.exit ], [ 1, %while.body ], [ 2, %while.body.1 ], [ 3, %while.body.2 ], [ 4, %while.body.3 ], [ 5, %while.body.4 ], [ %spec.select, %while.body.5 ]
  %sub = sub nuw nsw i32 8, %i.0.lcssa
  %call24 = tail call fastcc i32 @mk_write_size(%struct.mk_context* nonnull %c, i32 %sub)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %cleanup, label %do.body31

do.body31:                                        ; preds = %do.body23
  %add.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %c_ui, i32 0, i32 %i.0.lcssa
  %d_cur.i60 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %20 = load i32, i32* %d_cur.i60, align 4, !tbaa !23
  %add.i61 = add i32 %20, %sub
  %d_max.i62 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %21 = load i32, i32* %d_max.i62, align 4, !tbaa !24
  %cmp.i63 = icmp ugt i32 %add.i61, %21
  br i1 %cmp.i63, label %if.then.i70, label %entry.if.end11_crit_edge.i66

entry.if.end11_crit_edge.i66:                     ; preds = %do.body31
  %data12.phi.trans.insert.i64 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i65 = load i8*, i8** %data12.phi.trans.insert.i64, align 4, !tbaa !17
  br label %mk_append_context_data.exit84

if.then.i70:                                      ; preds = %do.body31
  %tobool.i67 = icmp eq i32 %21, 0
  %shl.i68 = shl i32 %21, 1
  %spec.select.i69 = select i1 %tobool.i67, i32 16, i32 %shl.i68
  br label %while.cond.i74

while.cond.i74:                                   ; preds = %while.cond.i74, %if.then.i70
  %dn.0.i71 = phi i32 [ %spec.select.i69, %if.then.i70 ], [ %shl4.i73, %while.cond.i74 ]
  %cmp3.i72 = icmp ugt i32 %add.i61, %dn.0.i71
  %shl4.i73 = shl i32 %dn.0.i71, 1
  br i1 %cmp3.i72, label %while.cond.i74, label %while.end.i78

while.end.i78:                                    ; preds = %while.cond.i74
  %data5.i75 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %22 = load i8*, i8** %data5.i75, align 4, !tbaa !17
  %call.i76 = tail call i8* @realloc(i8* %22, i32 %dn.0.i71) #8
  %tobool6.i77 = icmp eq i8* %call.i76, null
  br i1 %tobool6.i77, label %cleanup, label %if.end.i80

if.end.i80:                                       ; preds = %while.end.i78
  store i8* %call.i76, i8** %data5.i75, align 4, !tbaa !17
  store i32 %dn.0.i71, i32* %d_max.i62, align 4, !tbaa !24
  %.pre36.i79 = load i32, i32* %d_cur.i60, align 4, !tbaa !23
  br label %mk_append_context_data.exit84

mk_append_context_data.exit84:                    ; preds = %entry.if.end11_crit_edge.i66, %if.end.i80
  %23 = phi i32 [ %20, %entry.if.end11_crit_edge.i66 ], [ %.pre36.i79, %if.end.i80 ]
  %24 = phi i8* [ %.pre.i65, %entry.if.end11_crit_edge.i66 ], [ %call.i76, %if.end.i80 ]
  %add.ptr.i81 = getelementptr inbounds i8, i8* %24, i32 %23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i81, i8* nonnull align 1 %add.ptr, i32 %sub, i1 false) #8
  store i32 %add.i61, i32* %d_cur.i60, align 4, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %while.end.i152, %while.end.i127, %while.end.i103, %mk_append_context_data.exit84, %while.end.i78, %do.body23
  %retval.0 = phi i32 [ -1, %do.body23 ], [ 0, %mk_append_context_data.exit84 ], [ -1, %while.end.i78 ], [ -1, %while.end.i103 ], [ -1, %while.end.i127 ], [ -1, %while.end.i152 ], [ -1, %while.end.i ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0

while.body.1:                                     ; preds = %while.body
  %tobool.2 = icmp eq i8 %conv5, 0
  br i1 %tobool.2, label %while.body.2, label %do.body23

while.body.2:                                     ; preds = %while.body.1
  %tobool.3 = icmp eq i8 %conv8, 0
  br i1 %tobool.3, label %while.body.3, label %do.body23

while.body.3:                                     ; preds = %while.body.2
  %tobool.4 = icmp eq i8 %conv11, 0
  br i1 %tobool.4, label %while.body.4, label %do.body23

while.body.4:                                     ; preds = %while.body.3
  %tobool.5 = icmp eq i8 %conv14, 0
  br i1 %tobool.5, label %while.body.5, label %do.body23

while.body.5:                                     ; preds = %while.body.4
  %tobool.6 = icmp eq i8 %conv17, 0
  %spec.select = select i1 %tobool.6, i32 7, i32 6
  br label %do.body23
}

; Function Attrs: nounwind
define hidden i32 @mk_start_frame(%struct.mk_writer* %w) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @mk_flush_frame(%struct.mk_writer* %w)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %in_frame = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 13
  store i8 1, i8* %in_frame, align 1, !tbaa !28
  %keyframe = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 14
  store i8 0, i8* %keyframe, align 2, !tbaa !29
  %skippable = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 15
  store i8 0, i8* %skippable, align 1, !tbaa !30
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define internal fastcc i32 @mk_flush_frame(%struct.mk_writer* %w) unnamed_addr #0 {
entry:
  %in_frame = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 13
  %0 = load i8, i8* %in_frame, align 1, !tbaa !28
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %frame_tc = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 10
  %1 = load i64, i64* %frame_tc, align 8, !tbaa !31
  %timescale = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 8
  %2 = load i64, i64* %timescale, align 8, !tbaa !18
  %div = sdiv i64 %1, %2
  %cluster_tc_scaled = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 9
  %3 = load i64, i64* %cluster_tc_scaled, align 8, !tbaa !32
  %sub = sub nsw i64 %div, %3
  %sub.off = add i64 %sub, 32768
  %4 = icmp ugt i64 %sub.off, 65535
  br i1 %4, label %do.body, label %if.end6

do.body:                                          ; preds = %if.end
  %call = tail call fastcc i32 @mk_close_cluster(%struct.mk_writer* nonnull %w)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %do.body, %if.end
  %cluster = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 3
  %5 = load %struct.mk_context*, %struct.mk_context** %cluster, align 4, !tbaa !33
  %tobool7 = icmp eq %struct.mk_context* %5, null
  %extract.t = trunc i64 %sub to i8
  %extract = lshr i64 %sub, 8
  %extract.t141 = trunc i64 %extract to i8
  br i1 %tobool7, label %if.then8, label %if.end28

if.then8:                                         ; preds = %if.end6
  %6 = load i64, i64* %frame_tc, align 8, !tbaa !31
  %7 = load i64, i64* %timescale, align 8, !tbaa !18
  %div11 = sdiv i64 %6, %7
  store i64 %div11, i64* %cluster_tc_scaled, align 8, !tbaa !32
  %root = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 2
  %8 = bitcast %struct.mk_context** %root to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !12
  %freelist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 5
  %10 = load %struct.mk_context*, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %tobool.i = icmp eq %struct.mk_context* %10, null
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  %11 = bitcast %struct.mk_context* %10 to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !16
  %13 = bitcast %struct.mk_context** %freelist.i to i32*
  store i32 %12, i32* %13, align 4, !tbaa !15
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then8
  %call.i = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %14 = bitcast i8* %call.i to %struct.mk_context*
  %tobool4.i = icmp eq i8* %call.i, null
  br i1 %tobool4.i, label %mk_create_context.exit.thread, label %if.end6.i

mk_create_context.exit.thread:                    ; preds = %if.else.i
  store %struct.mk_context* null, %struct.mk_context** %cluster, align 4, !tbaa !33
  br label %cleanup

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi %struct.mk_context* [ %10, %if.then.i ], [ %14, %if.else.i ]
  %parent7.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 2
  %15 = bitcast %struct.mk_context** %parent7.i to i32*
  store i32 %9, i32* %15, align 4, !tbaa !21
  %owner.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 3
  store %struct.mk_writer* %w, %struct.mk_writer** %owner.i, align 4, !tbaa !2
  %id8.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 4
  store i32 524531317, i32* %id8.i, align 4, !tbaa !22
  %actlist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 6
  %16 = load %struct.mk_context*, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool10.i = icmp eq %struct.mk_context* %16, null
  %17 = ptrtoint %struct.mk_context* %16 to i32
  br i1 %tobool10.i, label %mk_create_context.exit, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  %next12.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 0
  %prev.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %16, i32 0, i32 1
  store %struct.mk_context** %next12.i, %struct.mk_context*** %prev.i, align 4, !tbaa !8
  br label %mk_create_context.exit

mk_create_context.exit:                           ; preds = %if.end6.i, %if.then11.i
  %18 = bitcast %struct.mk_context* %c.0.i to i32*
  store i32 %17, i32* %18, align 4, !tbaa !16
  %prev21.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 1
  store %struct.mk_context** %actlist.i, %struct.mk_context*** %prev21.i, align 4, !tbaa !8
  store %struct.mk_context* %c.0.i, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  store %struct.mk_context* %c.0.i, %struct.mk_context** %cluster, align 4, !tbaa !33
  %tobool16 = icmp eq %struct.mk_context* %c.0.i, null
  br i1 %tobool16, label %cleanup, label %do.body19

do.body19:                                        ; preds = %mk_create_context.exit
  %call22 = tail call fastcc i32 @mk_write_uint(%struct.mk_context* nonnull %c.0.i, i32 231, i64 %div11)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %cleanup, label %if.end28

if.end28:                                         ; preds = %do.body19, %if.end6
  %delta.0.off0 = phi i8 [ %extract.t, %if.end6 ], [ 0, %do.body19 ]
  %delta.0.off8 = phi i8 [ %extract.t141, %if.end6 ], [ 0, %do.body19 ]
  %frame = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 4
  %19 = load %struct.mk_context*, %struct.mk_context** %frame, align 8, !tbaa !34
  %tobool29 = icmp eq %struct.mk_context* %19, null
  br i1 %tobool29, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end28
  %d_cur = getelementptr inbounds %struct.mk_context, %struct.mk_context* %19, i32 0, i32 6
  %20 = load i32, i32* %d_cur, align 4, !tbaa !23
  %phitmp = add i32 %20, 4
  br label %cond.end

cond.end:                                         ; preds = %if.end28, %cond.true
  %cond = phi i32 [ %phitmp, %cond.true ], [ 4, %if.end28 ]
  %21 = load %struct.mk_context*, %struct.mk_context** %cluster, align 4, !tbaa !33
  %d_cur.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %21, i32 0, i32 6
  %22 = load i32, i32* %d_cur.i, align 4, !tbaa !23
  %add.i = add i32 %22, 1
  %d_max.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %21, i32 0, i32 7
  %23 = load i32, i32* %d_max.i, align 4, !tbaa !24
  %cmp.i = icmp ugt i32 %add.i, %23
  br i1 %cmp.i, label %if.then.i144, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %cond.end
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %21, i32 0, i32 5
  %.pre.i = load i8*, i8** %data12.phi.trans.insert.i, align 4, !tbaa !17
  br label %do.body39

if.then.i144:                                     ; preds = %cond.end
  %tobool.i143 = icmp eq i32 %23, 0
  %shl.i = shl i32 %23, 1
  %spec.select.i = select i1 %tobool.i143, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i144
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i144 ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %21, i32 0, i32 5
  %24 = load i8*, i8** %data5.i, align 4, !tbaa !17
  %call.i145 = tail call i8* @realloc(i8* %24, i32 %dn.0.i) #8
  %tobool6.i = icmp eq i8* %call.i145, null
  br i1 %tobool6.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store i8* %call.i145, i8** %data5.i, align 4, !tbaa !17
  store i32 %dn.0.i, i32* %d_max.i, align 4, !tbaa !24
  %.pre36.i = load i32, i32* %d_cur.i, align 4, !tbaa !23
  br label %do.body39

do.body39:                                        ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %25 = phi i32 [ %22, %entry.if.end11_crit_edge.i ], [ %.pre36.i, %if.end.i ]
  %26 = phi i8* [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i145, %if.end.i ]
  %add.ptr.i = getelementptr inbounds i8, i8* %26, i32 %25
  store i8 -93, i8* %add.ptr.i, align 1
  store i32 %add.i, i32* %d_cur.i, align 4, !tbaa !23
  %27 = load %struct.mk_context*, %struct.mk_context** %cluster, align 4, !tbaa !33
  %call41 = tail call fastcc i32 @mk_write_size(%struct.mk_context* %27, i32 %cond)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %cleanup, label %do.body47

do.body47:                                        ; preds = %do.body39
  %28 = load %struct.mk_context*, %struct.mk_context** %cluster, align 4, !tbaa !33
  %d_cur.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %28, i32 0, i32 6
  %29 = load i32, i32* %d_cur.i.i, align 4, !tbaa !23
  %add.i.i = add i32 %29, 1
  %d_max.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %28, i32 0, i32 7
  %30 = load i32, i32* %d_max.i.i, align 4, !tbaa !24
  %cmp.i.i = icmp ugt i32 %add.i.i, %30
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body47
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %28, i32 0, i32 5
  %.pre.i.i = load i8*, i8** %data12.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %do.end54

if.then.i.i:                                      ; preds = %do.body47
  %tobool.i.i = icmp eq i32 %30, 0
  %shl.i.i = shl i32 %30, 1
  %spec.select.i.i = select i1 %tobool.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %28, i32 0, i32 5
  %31 = load i8*, i8** %data5.i.i, align 4, !tbaa !17
  %call.i.i = tail call i8* @realloc(i8* %31, i32 %dn.0.i.i) #8
  %tobool6.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool6.i.i, label %cleanup, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i, i8** %data5.i.i, align 4, !tbaa !17
  store i32 %dn.0.i.i, i32* %d_max.i.i, align 4, !tbaa !24
  %.pre36.i.i = load i32, i32* %d_cur.i.i, align 4, !tbaa !23
  br label %do.end54

do.end54:                                         ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %32 = phi i32 [ %29, %entry.if.end11_crit_edge.i.i ], [ %.pre36.i.i, %if.end.i.i ]
  %33 = phi i8* [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %33, i32 %32
  store i8 -127, i8* %add.ptr.i.i, align 1
  store i32 %add.i.i, i32* %d_cur.i.i, align 4, !tbaa !23
  %keyframe = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 14
  %34 = load i8, i8* %keyframe, align 2, !tbaa !29
  %shl = shl i8 %34, 7
  %skippable = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 15
  %35 = load i8, i8* %skippable, align 1, !tbaa !30
  %or = or i8 %shl, %35
  %36 = load %struct.mk_context*, %struct.mk_context** %cluster, align 4, !tbaa !33
  %d_cur.i148 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %36, i32 0, i32 6
  %37 = load i32, i32* %d_cur.i148, align 4, !tbaa !23
  %add.i149 = add i32 %37, 3
  %d_max.i150 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %36, i32 0, i32 7
  %38 = load i32, i32* %d_max.i150, align 4, !tbaa !24
  %cmp.i151 = icmp ugt i32 %add.i149, %38
  br i1 %cmp.i151, label %if.then.i158, label %entry.if.end11_crit_edge.i154

entry.if.end11_crit_edge.i154:                    ; preds = %do.end54
  %data12.phi.trans.insert.i152 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %36, i32 0, i32 5
  %.pre.i153 = load i8*, i8** %data12.phi.trans.insert.i152, align 4, !tbaa !17
  br label %do.end69

if.then.i158:                                     ; preds = %do.end54
  %tobool.i155 = icmp eq i32 %38, 0
  %shl.i156 = shl i32 %38, 1
  %spec.select.i157 = select i1 %tobool.i155, i32 16, i32 %shl.i156
  br label %while.cond.i162

while.cond.i162:                                  ; preds = %while.cond.i162, %if.then.i158
  %dn.0.i159 = phi i32 [ %spec.select.i157, %if.then.i158 ], [ %shl4.i161, %while.cond.i162 ]
  %cmp3.i160 = icmp ugt i32 %add.i149, %dn.0.i159
  %shl4.i161 = shl i32 %dn.0.i159, 1
  br i1 %cmp3.i160, label %while.cond.i162, label %while.end.i166

while.end.i166:                                   ; preds = %while.cond.i162
  %data5.i163 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %36, i32 0, i32 5
  %39 = load i8*, i8** %data5.i163, align 4, !tbaa !17
  %call.i164 = tail call i8* @realloc(i8* %39, i32 %dn.0.i159) #8
  %tobool6.i165 = icmp eq i8* %call.i164, null
  br i1 %tobool6.i165, label %cleanup, label %if.end.i168

if.end.i168:                                      ; preds = %while.end.i166
  store i8* %call.i164, i8** %data5.i163, align 4, !tbaa !17
  store i32 %dn.0.i159, i32* %d_max.i150, align 4, !tbaa !24
  %.pre36.i167 = load i32, i32* %d_cur.i148, align 4, !tbaa !23
  br label %do.end69

do.end69:                                         ; preds = %if.end.i168, %entry.if.end11_crit_edge.i154
  %40 = phi i32 [ %37, %entry.if.end11_crit_edge.i154 ], [ %.pre36.i167, %if.end.i168 ]
  %41 = phi i8* [ %.pre.i153, %entry.if.end11_crit_edge.i154 ], [ %call.i164, %if.end.i168 ]
  %add.ptr.i169 = getelementptr inbounds i8, i8* %41, i32 %40
  store i8 %delta.0.off8, i8* %add.ptr.i169, align 1
  %c_delta_flags.sroa.4.0.add.ptr.i169.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i169, i32 1
  store i8 %delta.0.off0, i8* %c_delta_flags.sroa.4.0.add.ptr.i169.sroa_raw_idx, align 1
  %c_delta_flags.sroa.5.0.add.ptr.i169.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i169, i32 2
  store i8 %or, i8* %c_delta_flags.sroa.5.0.add.ptr.i169.sroa_raw_idx, align 1
  store i32 %add.i149, i32* %d_cur.i148, align 4, !tbaa !23
  %42 = load %struct.mk_context*, %struct.mk_context** %frame, align 8, !tbaa !34
  %tobool71 = icmp eq %struct.mk_context* %42, null
  br i1 %tobool71, label %if.end87, label %do.body73

do.body73:                                        ; preds = %do.end69
  %43 = load %struct.mk_context*, %struct.mk_context** %cluster, align 4, !tbaa !33
  %data = getelementptr inbounds %struct.mk_context, %struct.mk_context* %42, i32 0, i32 5
  %44 = load i8*, i8** %data, align 4, !tbaa !17
  %d_cur77 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %42, i32 0, i32 6
  %45 = load i32, i32* %d_cur77, align 4, !tbaa !23
  %d_cur.i173 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %43, i32 0, i32 6
  %46 = load i32, i32* %d_cur.i173, align 4, !tbaa !23
  %add.i174 = add i32 %46, %45
  %d_max.i175 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %43, i32 0, i32 7
  %47 = load i32, i32* %d_max.i175, align 4, !tbaa !24
  %cmp.i176 = icmp ugt i32 %add.i174, %47
  br i1 %cmp.i176, label %if.then.i183, label %entry.if.end11_crit_edge.i179

entry.if.end11_crit_edge.i179:                    ; preds = %do.body73
  %data12.phi.trans.insert.i177 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %43, i32 0, i32 5
  %.pre.i178 = load i8*, i8** %data12.phi.trans.insert.i177, align 4, !tbaa !17
  br label %do.end84

if.then.i183:                                     ; preds = %do.body73
  %tobool.i180 = icmp eq i32 %47, 0
  %shl.i181 = shl i32 %47, 1
  %spec.select.i182 = select i1 %tobool.i180, i32 16, i32 %shl.i181
  br label %while.cond.i187

while.cond.i187:                                  ; preds = %while.cond.i187, %if.then.i183
  %dn.0.i184 = phi i32 [ %spec.select.i182, %if.then.i183 ], [ %shl4.i186, %while.cond.i187 ]
  %cmp3.i185 = icmp ugt i32 %add.i174, %dn.0.i184
  %shl4.i186 = shl i32 %dn.0.i184, 1
  br i1 %cmp3.i185, label %while.cond.i187, label %while.end.i191

while.end.i191:                                   ; preds = %while.cond.i187
  %data5.i188 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %43, i32 0, i32 5
  %48 = load i8*, i8** %data5.i188, align 4, !tbaa !17
  %call.i189 = tail call i8* @realloc(i8* %48, i32 %dn.0.i184) #8
  %tobool6.i190 = icmp eq i8* %call.i189, null
  br i1 %tobool6.i190, label %cleanup, label %if.end.i193

if.end.i193:                                      ; preds = %while.end.i191
  store i8* %call.i189, i8** %data5.i188, align 4, !tbaa !17
  store i32 %dn.0.i184, i32* %d_max.i175, align 4, !tbaa !24
  %.pre36.i192 = load i32, i32* %d_cur.i173, align 4, !tbaa !23
  br label %do.end84

do.end84:                                         ; preds = %if.end.i193, %entry.if.end11_crit_edge.i179
  %49 = phi i32 [ %46, %entry.if.end11_crit_edge.i179 ], [ %.pre36.i192, %if.end.i193 ]
  %50 = phi i8* [ %.pre.i178, %entry.if.end11_crit_edge.i179 ], [ %call.i189, %if.end.i193 ]
  %add.ptr.i194 = getelementptr inbounds i8, i8* %50, i32 %49
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i194, i8* align 1 %44, i32 %45, i1 false) #8
  store i32 %add.i174, i32* %d_cur.i173, align 4, !tbaa !23
  %51 = load %struct.mk_context*, %struct.mk_context** %frame, align 8, !tbaa !34
  %d_cur86 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %51, i32 0, i32 6
  store i32 0, i32* %d_cur86, align 4, !tbaa !23
  br label %if.end87

if.end87:                                         ; preds = %do.end69, %do.end84
  store i8 0, i8* %in_frame, align 1, !tbaa !28
  %52 = load %struct.mk_context*, %struct.mk_context** %cluster, align 4, !tbaa !33
  %d_cur90 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %52, i32 0, i32 6
  %53 = load i32, i32* %d_cur90, align 4, !tbaa !23
  %cmp91 = icmp ugt i32 %53, 1048576
  br i1 %cmp91, label %do.body94, label %if.end102

do.body94:                                        ; preds = %if.end87
  %call95 = tail call fastcc i32 @mk_close_cluster(%struct.mk_writer* nonnull %w)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %cleanup, label %if.end102

if.end102:                                        ; preds = %do.body94, %if.end87
  br label %cleanup

cleanup:                                          ; preds = %while.end.i191, %while.end.i166, %while.end.i.i, %while.end.i, %mk_create_context.exit.thread, %do.body94, %do.body39, %do.body19, %mk_create_context.exit, %do.body, %entry, %if.end102
  %retval.0 = phi i32 [ 0, %if.end102 ], [ 0, %entry ], [ -1, %do.body ], [ -1, %mk_create_context.exit ], [ -1, %do.body19 ], [ -1, %do.body39 ], [ -1, %do.body94 ], [ -1, %mk_create_context.exit.thread ], [ -1, %while.end.i ], [ -1, %while.end.i.i ], [ -1, %while.end.i166 ], [ -1, %while.end.i191 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind
define hidden i32 @mk_set_frame_flags(%struct.mk_writer* nocapture %w, i64 %timestamp, i32 %keyframe, i32 %skippable) local_unnamed_addr #6 {
entry:
  %in_frame = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 13
  %0 = load i8, i8* %in_frame, align 1, !tbaa !28
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %frame_tc = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 10
  store i64 %timestamp, i64* %frame_tc, align 8, !tbaa !31
  %cmp = icmp ne i32 %keyframe, 0
  %conv1 = zext i1 %cmp to i8
  %keyframe2 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 14
  store i8 %conv1, i8* %keyframe2, align 2, !tbaa !29
  %cmp3 = icmp ne i32 %skippable, 0
  %conv5 = zext i1 %cmp3 to i8
  %skippable6 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 15
  store i8 %conv5, i8* %skippable6, align 1, !tbaa !30
  %max_frame_tc = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 11
  %1 = load i64, i64* %max_frame_tc, align 8, !tbaa !35
  %cmp7 = icmp slt i64 %1, %timestamp
  br i1 %cmp7, label %if.then9, label %return

if.then9:                                         ; preds = %if.end
  store i64 %timestamp, i64* %max_frame_tc, align 8, !tbaa !35
  br label %return

return:                                           ; preds = %if.end, %if.then9, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.then9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define hidden i32 @mk_add_frame_data(%struct.mk_writer* %w, i8* nocapture readonly %data, i32 %size) local_unnamed_addr #0 {
entry:
  %in_frame = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 13
  %0 = load i8, i8* %in_frame, align 1, !tbaa !28
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %frame = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 4
  %1 = load %struct.mk_context*, %struct.mk_context** %frame, align 8, !tbaa !34
  %tobool1 = icmp eq %struct.mk_context* %1, null
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %freelist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 5
  %2 = load %struct.mk_context*, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %tobool.i = icmp eq %struct.mk_context* %2, null
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  %3 = bitcast %struct.mk_context* %2 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !16
  %5 = bitcast %struct.mk_context** %freelist.i to i32*
  store i32 %4, i32* %5, align 4, !tbaa !15
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then2
  %call.i = tail call noalias dereferenceable_or_null(32) i8* @calloc(i32 1, i32 32) #8
  %6 = bitcast i8* %call.i to %struct.mk_context*
  %tobool4.i = icmp eq i8* %call.i, null
  br i1 %tobool4.i, label %mk_create_context.exit.thread, label %if.end6.i

mk_create_context.exit.thread:                    ; preds = %if.else.i
  store %struct.mk_context* null, %struct.mk_context** %frame, align 8, !tbaa !34
  br label %return

if.end6.i:                                        ; preds = %if.else.i, %if.then.i
  %c.0.i = phi %struct.mk_context* [ %2, %if.then.i ], [ %6, %if.else.i ]
  %parent7.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 2
  store %struct.mk_context* null, %struct.mk_context** %parent7.i, align 4, !tbaa !21
  %owner.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 3
  store %struct.mk_writer* %w, %struct.mk_writer** %owner.i, align 4, !tbaa !2
  %id8.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 4
  store i32 0, i32* %id8.i, align 4, !tbaa !22
  %actlist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 6
  %7 = load %struct.mk_context*, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool10.i = icmp eq %struct.mk_context* %7, null
  %8 = ptrtoint %struct.mk_context* %7 to i32
  br i1 %tobool10.i, label %mk_create_context.exit, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  %next12.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 0
  %prev.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %7, i32 0, i32 1
  store %struct.mk_context** %next12.i, %struct.mk_context*** %prev.i, align 4, !tbaa !8
  br label %mk_create_context.exit

mk_create_context.exit:                           ; preds = %if.end6.i, %if.then11.i
  %9 = bitcast %struct.mk_context* %c.0.i to i32*
  store i32 %8, i32* %9, align 4, !tbaa !16
  %prev21.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c.0.i, i32 0, i32 1
  store %struct.mk_context** %actlist.i, %struct.mk_context*** %prev21.i, align 4, !tbaa !8
  store %struct.mk_context* %c.0.i, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  store %struct.mk_context* %c.0.i, %struct.mk_context** %frame, align 8, !tbaa !34
  %tobool4 = icmp eq %struct.mk_context* %c.0.i, null
  br i1 %tobool4, label %return, label %if.end7

if.end7:                                          ; preds = %mk_create_context.exit, %if.end
  %10 = phi %struct.mk_context* [ %c.0.i, %mk_create_context.exit ], [ %1, %if.end ]
  %d_cur.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %10, i32 0, i32 6
  %11 = load i32, i32* %d_cur.i, align 4, !tbaa !23
  %add.i = add i32 %11, %size
  %d_max.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %10, i32 0, i32 7
  %12 = load i32, i32* %d_max.i, align 4, !tbaa !24
  %cmp.i = icmp ugt i32 %add.i, %12
  br i1 %cmp.i, label %if.then.i15, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %if.end7
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %10, i32 0, i32 5
  %.pre.i = load i8*, i8** %data12.phi.trans.insert.i, align 4, !tbaa !17
  br label %if.end11.i

if.then.i15:                                      ; preds = %if.end7
  %tobool.i14 = icmp eq i32 %12, 0
  %shl.i = shl i32 %12, 1
  %spec.select.i = select i1 %tobool.i14, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i15
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i15 ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %10, i32 0, i32 5
  %13 = load i8*, i8** %data5.i, align 4, !tbaa !17
  %call.i16 = tail call i8* @realloc(i8* %13, i32 %dn.0.i) #8
  %tobool6.i = icmp eq i8* %call.i16, null
  br i1 %tobool6.i, label %return, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store i8* %call.i16, i8** %data5.i, align 4, !tbaa !17
  store i32 %dn.0.i, i32* %d_max.i, align 4, !tbaa !24
  %.pre36.i = load i32, i32* %d_cur.i, align 4, !tbaa !23
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %14 = phi i32 [ %11, %entry.if.end11_crit_edge.i ], [ %.pre36.i, %if.end.i ]
  %15 = phi i8* [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i16, %if.end.i ]
  %add.ptr.i = getelementptr inbounds i8, i8* %15, i32 %14
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i, i8* align 1 %data, i32 %size, i1 false) #8
  store i32 %add.i, i32* %d_cur.i, align 4, !tbaa !23
  br label %return

return:                                           ; preds = %if.end11.i, %while.end.i, %mk_create_context.exit.thread, %mk_create_context.exit, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %mk_create_context.exit ], [ -1, %mk_create_context.exit.thread ], [ 0, %if.end11.i ], [ -1, %while.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
define hidden i32 @mk_close(%struct.mk_writer* %w, i64 %last_delta) local_unnamed_addr #0 {
entry:
  %file_stat.i = alloca %struct.stat, align 8
  %call = tail call fastcc i32 @mk_flush_frame(%struct.mk_writer* %w)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @mk_close_cluster(%struct.mk_writer* %w)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %ret.0 = phi i32 [ -1, %if.then ], [ 0, %lor.lhs.false ]
  %wrote_header = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 12
  %0 = load i8, i8* %wrote_header, align 8, !tbaa !19
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %fp = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !14
  %2 = bitcast %struct.stat* %file_stat.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %2) #8
  %call.i = tail call i32 @fileno(%struct._IO_FILE* %1) #8
  %3 = bitcast %struct.stat* %file_stat.i to %struct.stat64*
  %call.i.i = call i32 @__fxstat64(i32 3, i32 %call.i, %struct.stat64* nonnull %3) #8
  %tobool.i = icmp eq i32 %call.i.i, 0
  %st_mode.i = getelementptr inbounds %struct.stat, %struct.stat* %file_stat.i, i32 0, i32 3
  %4 = load i32, i32* %st_mode.i, align 8
  %and.i = and i32 %4, 61440
  %cmp.i = icmp ne i32 %and.i, 32768
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %2) #8
  %tobool4 = and i1 %tobool.i, %cmp.i
  br i1 %tobool4, label %if.end25, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %def_duration = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 7
  %5 = load i64, i64* %def_duration, align 8, !tbaa !20
  %max_frame_tc = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 11
  %6 = load i64, i64* %max_frame_tc, align 8, !tbaa !35
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !14
  %duration_ptr = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 1
  %8 = load i32, i32* %duration_ptr, align 4, !tbaa !25
  %call9 = call i32 @fseek(%struct._IO_FILE* %7, i32 %8, i32 0)
  %tobool10 = icmp eq i32 %call9, 0
  br i1 %tobool10, label %lor.lhs.false11, label %if.end25

lor.lhs.false11:                                  ; preds = %if.then5
  %tobool6 = icmp eq i64 %5, 0
  %last_delta. = select i1 %tobool6, i64 %last_delta, i64 %5
  %add = add nsw i64 %last_delta., %6
  %root = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 2
  %9 = load %struct.mk_context*, %struct.mk_context** %root, align 8, !tbaa !12
  %conv12 = sitofp i64 %add to double
  %timescale = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 8
  %10 = load i64, i64* %timescale, align 8, !tbaa !18
  %conv13 = sitofp i64 %10 to double
  %div = fdiv fast double %conv12, %conv13
  %conv14 = fptrunc double %div to float
  %11 = bitcast float %conv14 to i32
  %shr.i = lshr i32 %11, 24
  %conv.i = trunc i32 %shr.i to i8
  %shr4.i = lshr i32 %11, 16
  %conv5.i = trunc i32 %shr4.i to i8
  %shr8.i = lshr i32 %11, 8
  %conv9.i = trunc i32 %shr8.i to i8
  %conv12.i = trunc i32 %11 to i8
  %d_cur.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %9, i32 0, i32 6
  %12 = load i32, i32* %d_cur.i.i, align 4, !tbaa !23
  %add.i.i = add i32 %12, 4
  %d_max.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %9, i32 0, i32 7
  %13 = load i32, i32* %d_max.i.i, align 4, !tbaa !24
  %cmp.i.i = icmp ugt i32 %add.i.i, %13
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %lor.lhs.false11
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %9, i32 0, i32 5
  %.pre.i.i = load i8*, i8** %data12.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %lor.lhs.false18

if.then.i.i:                                      ; preds = %lor.lhs.false11
  %tobool.i.i = icmp eq i32 %13, 0
  %shl.i.i = shl i32 %13, 1
  %spec.select.i.i = select i1 %tobool.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %9, i32 0, i32 5
  %14 = load i8*, i8** %data5.i.i, align 4, !tbaa !17
  %call.i.i45 = call i8* @realloc(i8* %14, i32 %dn.0.i.i) #8
  %tobool6.i.i = icmp eq i8* %call.i.i45, null
  br i1 %tobool6.i.i, label %if.end25, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i45, i8** %data5.i.i, align 4, !tbaa !17
  store i32 %dn.0.i.i, i32* %d_max.i.i, align 4, !tbaa !24
  %.pre36.i.i = load i32, i32* %d_cur.i.i, align 4, !tbaa !23
  br label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %15 = phi i32 [ %12, %entry.if.end11_crit_edge.i.i ], [ %.pre36.i.i, %if.end.i.i ]
  %16 = phi i8* [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i45, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %16, i32 %15
  store i8 %conv.i, i8* %add.ptr.i.i, align 1
  %c_f.sroa.4.0.add.ptr.i.sroa_raw_idx.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i32 1
  store i8 %conv5.i, i8* %c_f.sroa.4.0.add.ptr.i.sroa_raw_idx.i, align 1
  %c_f.sroa.5.0.add.ptr.i.sroa_raw_idx.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i32 2
  store i8 %conv9.i, i8* %c_f.sroa.5.0.add.ptr.i.sroa_raw_idx.i, align 1
  %c_f.sroa.6.0.add.ptr.i.sroa_raw_idx.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i32 3
  store i8 %conv12.i, i8* %c_f.sroa.6.0.add.ptr.i.sroa_raw_idx.i, align 1
  store i32 %add.i.i, i32* %d_cur.i.i, align 4, !tbaa !23
  %17 = load %struct.mk_context*, %struct.mk_context** %root, align 8, !tbaa !12
  %d_cur.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %17, i32 0, i32 6
  %18 = load i32, i32* %d_cur.i, align 4, !tbaa !23
  %tobool.i46 = icmp eq i32 %18, 0
  br i1 %tobool.i46, label %if.end25, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false18
  %parent.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %17, i32 0, i32 2
  %19 = load %struct.mk_context*, %struct.mk_context** %parent.i, align 4, !tbaa !21
  %tobool1.i = icmp eq %struct.mk_context* %19, null
  %data7.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %17, i32 0, i32 5
  %20 = load i8*, i8** %data7.i, align 4, !tbaa !17
  br i1 %tobool1.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %d_cur.i.i47 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %19, i32 0, i32 6
  %21 = load i32, i32* %d_cur.i.i47, align 4, !tbaa !23
  %add.i.i48 = add i32 %21, %18
  %d_max.i.i49 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %19, i32 0, i32 7
  %22 = load i32, i32* %d_max.i.i49, align 4, !tbaa !24
  %cmp.i.i50 = icmp ugt i32 %add.i.i48, %22
  br i1 %cmp.i.i50, label %if.then.i.i57, label %entry.if.end11_crit_edge.i.i53

entry.if.end11_crit_edge.i.i53:                   ; preds = %do.body.i
  %data12.phi.trans.insert.i.i51 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %19, i32 0, i32 5
  %.pre.i.i52 = load i8*, i8** %data12.phi.trans.insert.i.i51, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i

if.then.i.i57:                                    ; preds = %do.body.i
  %tobool.i.i54 = icmp eq i32 %22, 0
  %shl.i.i55 = shl i32 %22, 1
  %spec.select.i.i56 = select i1 %tobool.i.i54, i32 16, i32 %shl.i.i55
  br label %while.cond.i.i61

while.cond.i.i61:                                 ; preds = %while.cond.i.i61, %if.then.i.i57
  %dn.0.i.i58 = phi i32 [ %spec.select.i.i56, %if.then.i.i57 ], [ %shl4.i.i60, %while.cond.i.i61 ]
  %cmp3.i.i59 = icmp ugt i32 %add.i.i48, %dn.0.i.i58
  %shl4.i.i60 = shl i32 %dn.0.i.i58, 1
  br i1 %cmp3.i.i59, label %while.cond.i.i61, label %while.end.i.i65

while.end.i.i65:                                  ; preds = %while.cond.i.i61
  %data5.i.i62 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %19, i32 0, i32 5
  %23 = load i8*, i8** %data5.i.i62, align 4, !tbaa !17
  %call.i.i63 = call i8* @realloc(i8* %23, i32 %dn.0.i.i58) #8
  %tobool6.i.i64 = icmp eq i8* %call.i.i63, null
  br i1 %tobool6.i.i64, label %if.end25, label %if.end.i.i67

if.end.i.i67:                                     ; preds = %while.end.i.i65
  store i8* %call.i.i63, i8** %data5.i.i62, align 4, !tbaa !17
  store i32 %dn.0.i.i58, i32* %d_max.i.i49, align 4, !tbaa !24
  %.pre36.i.i66 = load i32, i32* %d_cur.i.i47, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i67, %entry.if.end11_crit_edge.i.i53
  %24 = phi i32 [ %21, %entry.if.end11_crit_edge.i.i53 ], [ %.pre36.i.i66, %if.end.i.i67 ]
  %25 = phi i8* [ %.pre.i.i52, %entry.if.end11_crit_edge.i.i53 ], [ %call.i.i63, %if.end.i.i67 ]
  %add.ptr.i.i68 = getelementptr inbounds i8, i8* %25, i32 %24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i68, i8* align 1 %20, i32 %18, i1 false) #8
  store i32 %add.i.i48, i32* %d_cur.i.i47, align 4, !tbaa !23
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i
  %owner.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %17, i32 0, i32 3
  %26 = load %struct.mk_writer*, %struct.mk_writer** %owner.i, align 4, !tbaa !2
  %fp.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %26, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i, align 8, !tbaa !14
  %call9.i = call i32 @fwrite(i8* %20, i32 %18, i32 1, %struct._IO_FILE* %27) #8
  %cmp10.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.i, label %if.end13.i, label %if.end25

if.end13.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, i32* %d_cur.i, align 4, !tbaa !23
  br label %if.end25

if.end25:                                         ; preds = %while.end.i.i65, %if.else.i, %while.end.i.i, %if.then5, %if.end13.i, %lor.lhs.false18, %land.lhs.true, %if.end
  %ret.2 = phi i32 [ %ret.0, %land.lhs.true ], [ %ret.0, %if.end ], [ %ret.0, %lor.lhs.false18 ], [ %ret.0, %if.end13.i ], [ -1, %if.then5 ], [ -1, %while.end.i.i ], [ -1, %if.else.i ], [ -1, %while.end.i.i65 ]
  %freelist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 5
  %28 = load %struct.mk_context*, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %tobool29.i = icmp eq %struct.mk_context* %28, null
  br i1 %tobool29.i, label %for.cond.cleanup.i, label %for.body.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.end25
  %actlist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 6
  %29 = load %struct.mk_context*, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  %tobool427.i = icmp eq %struct.mk_context* %29, null
  br i1 %tobool427.i, label %mk_destroy_contexts.exit, label %for.body6.i

for.body.i:                                       ; preds = %if.end25, %for.body.i
  %cur.030.i = phi %struct.mk_context* [ %30, %for.body.i ], [ %28, %if.end25 ]
  %next1.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %cur.030.i, i32 0, i32 0
  %30 = load %struct.mk_context*, %struct.mk_context** %next1.i, align 4, !tbaa !16
  %data.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %cur.030.i, i32 0, i32 5
  %31 = load i8*, i8** %data.i, align 4, !tbaa !17
  call void @free(i8* %31) #8
  %32 = bitcast %struct.mk_context* %cur.030.i to i8*
  call void @free(i8* %32) #8
  %tobool.i70 = icmp eq %struct.mk_context* %30, null
  br i1 %tobool.i70, label %for.cond.cleanup.i, label %for.body.i

for.body6.i:                                      ; preds = %for.cond.cleanup.i, %for.body6.i
  %cur2.028.i = phi %struct.mk_context* [ %33, %for.body6.i ], [ %29, %for.cond.cleanup.i ]
  %next7.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %cur2.028.i, i32 0, i32 0
  %33 = load %struct.mk_context*, %struct.mk_context** %next7.i, align 4, !tbaa !16
  %data8.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %cur2.028.i, i32 0, i32 5
  %34 = load i8*, i8** %data8.i, align 4, !tbaa !17
  call void @free(i8* %34) #8
  %35 = bitcast %struct.mk_context* %cur2.028.i to i8*
  call void @free(i8* %35) #8
  %tobool4.i = icmp eq %struct.mk_context* %33, null
  br i1 %tobool4.i, label %mk_destroy_contexts.exit, label %for.body6.i

mk_destroy_contexts.exit:                         ; preds = %for.body6.i, %for.cond.cleanup.i
  %root.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 2
  store %struct.mk_context* null, %struct.mk_context** %root.i, align 8, !tbaa !12
  store %struct.mk_context* null, %struct.mk_context** %actlist.i, align 8, !tbaa !9
  store %struct.mk_context* null, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  %fp26 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp26, align 8, !tbaa !14
  %call27 = call i32 @fclose(%struct._IO_FILE* %36)
  %37 = bitcast %struct.mk_writer* %w to i8*
  call void @free(i8* %37) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind
define internal fastcc i32 @mk_close_cluster(%struct.mk_writer* nocapture %w) unnamed_addr #0 {
entry:
  %cluster = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 3
  %0 = load %struct.mk_context*, %struct.mk_context** %cluster, align 4, !tbaa !33
  %cmp = icmp eq %struct.mk_context* %0, null
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry
  %id.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 4
  %1 = load i32, i32* %id.i, align 4, !tbaa !22
  %tobool.i = icmp eq i32 %1, 0
  br i1 %tobool.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %do.body
  %parent.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 2
  %2 = load %struct.mk_context*, %struct.mk_context** %parent.i, align 4, !tbaa !21
  %shr.i = lshr i32 %1, 24
  %conv.i = trunc i32 %shr.i to i8
  %shr1.i = lshr i32 %1, 16
  %conv2.i = trunc i32 %shr1.i to i8
  %shr4.i = lshr i32 %1, 8
  %conv5.i = trunc i32 %shr4.i to i8
  %conv7.i = trunc i32 %1 to i8
  %tobool.i59 = icmp eq i8 %conv.i, 0
  br i1 %tobool.i59, label %if.end.i61, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  %d_cur.i69 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 6
  %3 = load i32, i32* %d_cur.i69, align 4, !tbaa !23
  %add.i70 = add i32 %3, 4
  %d_max.i71 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 7
  %4 = load i32, i32* %d_max.i71, align 4, !tbaa !24
  %cmp.i72 = icmp ugt i32 %add.i70, %4
  br i1 %cmp.i72, label %if.then.i79, label %entry.if.end11_crit_edge.i75

entry.if.end11_crit_edge.i75:                     ; preds = %if.then.i
  %data12.phi.trans.insert.i73 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 5
  %.pre.i74 = load i8*, i8** %data12.phi.trans.insert.i73, align 4, !tbaa !17
  br label %if.end11.i91

if.then.i79:                                      ; preds = %if.then.i
  %tobool.i76 = icmp eq i32 %4, 0
  %shl.i77 = shl i32 %4, 1
  %spec.select.i78 = select i1 %tobool.i76, i32 16, i32 %shl.i77
  br label %while.cond.i83

while.cond.i83:                                   ; preds = %while.cond.i83, %if.then.i79
  %dn.0.i80 = phi i32 [ %spec.select.i78, %if.then.i79 ], [ %shl4.i82, %while.cond.i83 ]
  %cmp3.i81 = icmp ugt i32 %add.i70, %dn.0.i80
  %shl4.i82 = shl i32 %dn.0.i80, 1
  br i1 %cmp3.i81, label %while.cond.i83, label %while.end.i87

while.end.i87:                                    ; preds = %while.cond.i83
  %data5.i84 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 5
  %5 = load i8*, i8** %data5.i84, align 4, !tbaa !17
  %call.i85 = tail call i8* @realloc(i8* %5, i32 %dn.0.i80) #8
  %tobool6.i86 = icmp eq i8* %call.i85, null
  br i1 %tobool6.i86, label %return, label %if.end.i89

if.end.i89:                                       ; preds = %while.end.i87
  store i8* %call.i85, i8** %data5.i84, align 4, !tbaa !17
  store i32 %dn.0.i80, i32* %d_max.i71, align 4, !tbaa !24
  %.pre36.i88 = load i32, i32* %d_cur.i69, align 4, !tbaa !23
  br label %if.end11.i91

if.end11.i91:                                     ; preds = %if.end.i89, %entry.if.end11_crit_edge.i75
  %6 = phi i32 [ %3, %entry.if.end11_crit_edge.i75 ], [ %.pre36.i88, %if.end.i89 ]
  %7 = phi i8* [ %.pre.i74, %entry.if.end11_crit_edge.i75 ], [ %call.i85, %if.end.i89 ]
  %add.ptr.i90 = getelementptr inbounds i8, i8* %7, i32 %6
  store i8 %conv.i, i8* %add.ptr.i90, align 1
  %c_id.i.sroa.4.0.add.ptr.i90.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i90, i32 1
  store i8 %conv2.i, i8* %c_id.i.sroa.4.0.add.ptr.i90.sroa_raw_idx, align 1
  %c_id.i.sroa.6.0.add.ptr.i90.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i90, i32 2
  store i8 %conv5.i, i8* %c_id.i.sroa.6.0.add.ptr.i90.sroa_raw_idx, align 1
  %c_id.i.sroa.8.0.add.ptr.i90.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i90, i32 3
  store i8 %conv7.i, i8* %c_id.i.sroa.8.0.add.ptr.i90.sroa_raw_idx, align 1
  store i32 %add.i70, i32* %d_cur.i69, align 4, !tbaa !23
  br label %do.body3.i

if.end.i61:                                       ; preds = %do.body.i
  %tobool9.i = icmp eq i8 %conv2.i, 0
  br i1 %tobool9.i, label %if.end13.i62, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i61
  %d_cur.i94 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 6
  %8 = load i32, i32* %d_cur.i94, align 4, !tbaa !23
  %add.i95 = add i32 %8, 3
  %d_max.i96 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 7
  %9 = load i32, i32* %d_max.i96, align 4, !tbaa !24
  %cmp.i97 = icmp ugt i32 %add.i95, %9
  br i1 %cmp.i97, label %if.then.i104, label %entry.if.end11_crit_edge.i100

entry.if.end11_crit_edge.i100:                    ; preds = %if.then10.i
  %data12.phi.trans.insert.i98 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 5
  %.pre.i99 = load i8*, i8** %data12.phi.trans.insert.i98, align 4, !tbaa !17
  br label %if.end11.i116

if.then.i104:                                     ; preds = %if.then10.i
  %tobool.i101 = icmp eq i32 %9, 0
  %shl.i102 = shl i32 %9, 1
  %spec.select.i103 = select i1 %tobool.i101, i32 16, i32 %shl.i102
  br label %while.cond.i108

while.cond.i108:                                  ; preds = %while.cond.i108, %if.then.i104
  %dn.0.i105 = phi i32 [ %spec.select.i103, %if.then.i104 ], [ %shl4.i107, %while.cond.i108 ]
  %cmp3.i106 = icmp ugt i32 %add.i95, %dn.0.i105
  %shl4.i107 = shl i32 %dn.0.i105, 1
  br i1 %cmp3.i106, label %while.cond.i108, label %while.end.i112

while.end.i112:                                   ; preds = %while.cond.i108
  %data5.i109 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 5
  %10 = load i8*, i8** %data5.i109, align 4, !tbaa !17
  %call.i110 = tail call i8* @realloc(i8* %10, i32 %dn.0.i105) #8
  %tobool6.i111 = icmp eq i8* %call.i110, null
  br i1 %tobool6.i111, label %return, label %if.end.i114

if.end.i114:                                      ; preds = %while.end.i112
  store i8* %call.i110, i8** %data5.i109, align 4, !tbaa !17
  store i32 %dn.0.i105, i32* %d_max.i96, align 4, !tbaa !24
  %.pre36.i113 = load i32, i32* %d_cur.i94, align 4, !tbaa !23
  br label %if.end11.i116

if.end11.i116:                                    ; preds = %if.end.i114, %entry.if.end11_crit_edge.i100
  %11 = phi i32 [ %8, %entry.if.end11_crit_edge.i100 ], [ %.pre36.i113, %if.end.i114 ]
  %12 = phi i8* [ %.pre.i99, %entry.if.end11_crit_edge.i100 ], [ %call.i110, %if.end.i114 ]
  %add.ptr.i115 = getelementptr inbounds i8, i8* %12, i32 %11
  store i8 %conv2.i, i8* %add.ptr.i115, align 1
  %c_id.i.sroa.6.1.add.ptr.i115.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i115, i32 1
  store i8 %conv5.i, i8* %c_id.i.sroa.6.1.add.ptr.i115.sroa_raw_idx, align 1
  %c_id.i.sroa.8.1.add.ptr.i115.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i115, i32 2
  store i8 %conv7.i, i8* %c_id.i.sroa.8.1.add.ptr.i115.sroa_raw_idx, align 1
  store i32 %add.i95, i32* %d_cur.i94, align 4, !tbaa !23
  br label %do.body3.i

if.end13.i62:                                     ; preds = %if.end.i61
  %tobool15.i = icmp eq i8 %conv5.i, 0
  %d_cur.i64 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 6
  %13 = load i32, i32* %d_cur.i64, align 4, !tbaa !23
  br i1 %tobool15.i, label %if.end20.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i62
  %add.i120 = add i32 %13, 2
  %d_max.i121 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 7
  %14 = load i32, i32* %d_max.i121, align 4, !tbaa !24
  %cmp.i122 = icmp ugt i32 %add.i120, %14
  br i1 %cmp.i122, label %if.then.i129, label %entry.if.end11_crit_edge.i125

entry.if.end11_crit_edge.i125:                    ; preds = %if.then16.i
  %data12.phi.trans.insert.i123 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 5
  %.pre.i124 = load i8*, i8** %data12.phi.trans.insert.i123, align 4, !tbaa !17
  br label %if.end11.i141

if.then.i129:                                     ; preds = %if.then16.i
  %tobool.i126 = icmp eq i32 %14, 0
  %shl.i127 = shl i32 %14, 1
  %spec.select.i128 = select i1 %tobool.i126, i32 16, i32 %shl.i127
  br label %while.cond.i133

while.cond.i133:                                  ; preds = %while.cond.i133, %if.then.i129
  %dn.0.i130 = phi i32 [ %spec.select.i128, %if.then.i129 ], [ %shl4.i132, %while.cond.i133 ]
  %cmp3.i131 = icmp ugt i32 %add.i120, %dn.0.i130
  %shl4.i132 = shl i32 %dn.0.i130, 1
  br i1 %cmp3.i131, label %while.cond.i133, label %while.end.i137

while.end.i137:                                   ; preds = %while.cond.i133
  %data5.i134 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 5
  %15 = load i8*, i8** %data5.i134, align 4, !tbaa !17
  %call.i135 = tail call i8* @realloc(i8* %15, i32 %dn.0.i130) #8
  %tobool6.i136 = icmp eq i8* %call.i135, null
  br i1 %tobool6.i136, label %return, label %if.end.i139

if.end.i139:                                      ; preds = %while.end.i137
  store i8* %call.i135, i8** %data5.i134, align 4, !tbaa !17
  store i32 %dn.0.i130, i32* %d_max.i121, align 4, !tbaa !24
  %.pre36.i138 = load i32, i32* %d_cur.i64, align 4, !tbaa !23
  br label %if.end11.i141

if.end11.i141:                                    ; preds = %if.end.i139, %entry.if.end11_crit_edge.i125
  %16 = phi i32 [ %13, %entry.if.end11_crit_edge.i125 ], [ %.pre36.i138, %if.end.i139 ]
  %17 = phi i8* [ %.pre.i124, %entry.if.end11_crit_edge.i125 ], [ %call.i135, %if.end.i139 ]
  %add.ptr.i140 = getelementptr inbounds i8, i8* %17, i32 %16
  store i8 %conv5.i, i8* %add.ptr.i140, align 1
  %c_id.i.sroa.8.2.add.ptr.i140.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i140, i32 1
  store i8 %conv7.i, i8* %c_id.i.sroa.8.2.add.ptr.i140.sroa_raw_idx, align 1
  store i32 %add.i120, i32* %d_cur.i64, align 4, !tbaa !23
  br label %do.body3.i

if.end20.i:                                       ; preds = %if.end13.i62
  %add.i = add i32 %13, 1
  %d_max.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 7
  %18 = load i32, i32* %d_max.i, align 4, !tbaa !24
  %cmp.i65 = icmp ugt i32 %add.i, %18
  br i1 %cmp.i65, label %if.then.i67, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %if.end20.i
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 5
  %.pre.i = load i8*, i8** %data12.phi.trans.insert.i, align 4, !tbaa !17
  br label %if.end11.i

if.then.i67:                                      ; preds = %if.end20.i
  %tobool.i66 = icmp eq i32 %18, 0
  %shl.i = shl i32 %18, 1
  %spec.select.i = select i1 %tobool.i66, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i67
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i67 ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %2, i32 0, i32 5
  %19 = load i8*, i8** %data5.i, align 4, !tbaa !17
  %call.i = tail call i8* @realloc(i8* %19, i32 %dn.0.i) #8
  %tobool6.i = icmp eq i8* %call.i, null
  br i1 %tobool6.i, label %return, label %if.end.i68

if.end.i68:                                       ; preds = %while.end.i
  store i8* %call.i, i8** %data5.i, align 4, !tbaa !17
  store i32 %dn.0.i, i32* %d_max.i, align 4, !tbaa !24
  %.pre36.i = load i32, i32* %d_cur.i64, align 4, !tbaa !23
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i68, %entry.if.end11_crit_edge.i
  %20 = phi i32 [ %13, %entry.if.end11_crit_edge.i ], [ %.pre36.i, %if.end.i68 ]
  %21 = phi i8* [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i68 ]
  %add.ptr.i = getelementptr inbounds i8, i8* %21, i32 %20
  store i8 %conv7.i, i8* %add.ptr.i, align 1
  store i32 %add.i, i32* %d_cur.i64, align 4, !tbaa !23
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.end11.i91, %if.end11.i116, %if.end11.i141, %if.end11.i
  %22 = load %struct.mk_context*, %struct.mk_context** %parent.i, align 4, !tbaa !21
  %d_cur.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 6
  %23 = load i32, i32* %d_cur.i, align 4, !tbaa !23
  %call5.i = tail call fastcc i32 @mk_write_size(%struct.mk_context* %22, i32 %23) #8
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %return, label %if.end10.i

if.end10.i:                                       ; preds = %do.body3.i, %do.body
  %parent11.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 2
  %24 = load %struct.mk_context*, %struct.mk_context** %parent11.i, align 4, !tbaa !21
  %d_cur.i15 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 6
  %25 = load i32, i32* %d_cur.i15, align 4, !tbaa !23
  %tobool.i16 = icmp eq i32 %25, 0
  br i1 %tobool.i16, label %do.end23.i, label %if.end.i

if.end.i:                                         ; preds = %if.end10.i
  %tobool1.i = icmp eq %struct.mk_context* %24, null
  %data7.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 5
  %26 = load i8*, i8** %data7.i, align 4, !tbaa !17
  br i1 %tobool1.i, label %if.else.i, label %do.body.i18

do.body.i18:                                      ; preds = %if.end.i
  %d_cur.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 6
  %27 = load i32, i32* %d_cur.i.i, align 4, !tbaa !23
  %add.i.i = add i32 %27, %25
  %d_max.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 7
  %28 = load i32, i32* %d_max.i.i, align 4, !tbaa !24
  %cmp.i.i = icmp ugt i32 %add.i.i, %28
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end11_crit_edge.i.i

entry.if.end11_crit_edge.i.i:                     ; preds = %do.body.i18
  %data12.phi.trans.insert.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %.pre.i.i = load i8*, i8** %data12.phi.trans.insert.i.i, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i

if.then.i.i:                                      ; preds = %do.body.i18
  %tobool.i.i = icmp eq i32 %28, 0
  %shl.i.i = shl i32 %28, 1
  %spec.select.i.i = select i1 %tobool.i.i, i32 16, i32 %shl.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then.i.i
  %dn.0.i.i = phi i32 [ %spec.select.i.i, %if.then.i.i ], [ %shl4.i.i, %while.cond.i.i ]
  %cmp3.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i
  %shl4.i.i = shl i32 %dn.0.i.i, 1
  br i1 %cmp3.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %data5.i.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %24, i32 0, i32 5
  %29 = load i8*, i8** %data5.i.i, align 4, !tbaa !17
  %call.i.i = tail call i8* @realloc(i8* %29, i32 %dn.0.i.i) #8
  %tobool6.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool6.i.i, label %return, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.end.i.i
  store i8* %call.i.i, i8** %data5.i.i, align 4, !tbaa !17
  store i32 %dn.0.i.i, i32* %d_max.i.i, align 4, !tbaa !24
  %.pre36.i.i = load i32, i32* %d_cur.i.i, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i

mk_append_context_data.exit.i:                    ; preds = %if.end.i.i, %entry.if.end11_crit_edge.i.i
  %30 = phi i32 [ %27, %entry.if.end11_crit_edge.i.i ], [ %.pre36.i.i, %if.end.i.i ]
  %31 = phi i8* [ %.pre.i.i, %entry.if.end11_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ]
  %add.ptr.i.i = getelementptr inbounds i8, i8* %31, i32 %30
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i, i8* align 1 %26, i32 %25, i1 false) #8
  store i32 %add.i.i, i32* %d_cur.i.i, align 4, !tbaa !23
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i
  %owner.i19 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 3
  %32 = load %struct.mk_writer*, %struct.mk_writer** %owner.i19, align 4, !tbaa !2
  %fp.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %32, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i, align 8, !tbaa !14
  %call9.i = tail call i32 @fwrite(i8* %26, i32 %25, i32 1, %struct._IO_FILE* %33) #8
  %cmp10.i = icmp eq i32 %call9.i, 1
  br i1 %cmp10.i, label %if.end13.i, label %return

if.end13.i:                                       ; preds = %if.else.i, %mk_append_context_data.exit.i
  store i32 0, i32* %d_cur.i15, align 4, !tbaa !23
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.end13.i, %if.end10.i
  %next.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 0
  %34 = load %struct.mk_context*, %struct.mk_context** %next.i, align 4, !tbaa !16
  %tobool24.i = icmp eq %struct.mk_context* %34, null
  %35 = ptrtoint %struct.mk_context* %34 to i32
  br i1 %tobool24.i, label %do.end, label %if.then25.i

if.then25.i:                                      ; preds = %do.end23.i
  %prev.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 1
  %36 = bitcast %struct.mk_context*** %prev.i to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !8
  %prev27.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %34, i32 0, i32 1
  %38 = bitcast %struct.mk_context*** %prev27.i to i32*
  store i32 %37, i32* %38, align 4, !tbaa !8
  br label %do.end

do.end:                                           ; preds = %if.then25.i, %do.end23.i
  %39 = bitcast %struct.mk_context* %0 to i32*
  %prev30.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 1
  %40 = bitcast %struct.mk_context*** %prev30.i to i32**
  %41 = load i32*, i32** %40, align 4, !tbaa !8
  store i32 %35, i32* %41, align 4, !tbaa !13
  %owner.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %0, i32 0, i32 3
  %42 = load %struct.mk_writer*, %struct.mk_writer** %owner.i, align 4, !tbaa !2
  %freelist.i = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %42, i32 0, i32 5
  %43 = bitcast %struct.mk_context** %freelist.i to i32*
  %44 = load i32, i32* %43, align 4, !tbaa !15
  store i32 %44, i32* %39, align 4, !tbaa !16
  store %struct.mk_context* %0, %struct.mk_context** %freelist.i, align 4, !tbaa !15
  store %struct.mk_context* null, %struct.mk_context** %cluster, align 4, !tbaa !33
  %root = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %w, i32 0, i32 2
  %45 = load %struct.mk_context*, %struct.mk_context** %root, align 8, !tbaa !12
  %d_cur.i21 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %45, i32 0, i32 6
  %46 = load i32, i32* %d_cur.i21, align 4, !tbaa !23
  %tobool.i22 = icmp eq i32 %46, 0
  br i1 %tobool.i22, label %return, label %if.end.i26

if.end.i26:                                       ; preds = %do.end
  %parent.i23 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %45, i32 0, i32 2
  %47 = load %struct.mk_context*, %struct.mk_context** %parent.i23, align 4, !tbaa !21
  %tobool1.i24 = icmp eq %struct.mk_context* %47, null
  %data7.i25 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %45, i32 0, i32 5
  %48 = load i8*, i8** %data7.i25, align 4, !tbaa !17
  br i1 %tobool1.i24, label %if.else.i55, label %do.body.i31

do.body.i31:                                      ; preds = %if.end.i26
  %d_cur.i.i27 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %47, i32 0, i32 6
  %49 = load i32, i32* %d_cur.i.i27, align 4, !tbaa !23
  %add.i.i28 = add i32 %49, %46
  %d_max.i.i29 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %47, i32 0, i32 7
  %50 = load i32, i32* %d_max.i.i29, align 4, !tbaa !24
  %cmp.i.i30 = icmp ugt i32 %add.i.i28, %50
  br i1 %cmp.i.i30, label %if.then.i.i38, label %entry.if.end11_crit_edge.i.i34

entry.if.end11_crit_edge.i.i34:                   ; preds = %do.body.i31
  %data12.phi.trans.insert.i.i32 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %47, i32 0, i32 5
  %.pre.i.i33 = load i8*, i8** %data12.phi.trans.insert.i.i32, align 4, !tbaa !17
  br label %mk_append_context_data.exit.i50

if.then.i.i38:                                    ; preds = %do.body.i31
  %tobool.i.i35 = icmp eq i32 %50, 0
  %shl.i.i36 = shl i32 %50, 1
  %spec.select.i.i37 = select i1 %tobool.i.i35, i32 16, i32 %shl.i.i36
  br label %while.cond.i.i42

while.cond.i.i42:                                 ; preds = %while.cond.i.i42, %if.then.i.i38
  %dn.0.i.i39 = phi i32 [ %spec.select.i.i37, %if.then.i.i38 ], [ %shl4.i.i41, %while.cond.i.i42 ]
  %cmp3.i.i40 = icmp ugt i32 %add.i.i28, %dn.0.i.i39
  %shl4.i.i41 = shl i32 %dn.0.i.i39, 1
  br i1 %cmp3.i.i40, label %while.cond.i.i42, label %while.end.i.i46

while.end.i.i46:                                  ; preds = %while.cond.i.i42
  %data5.i.i43 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %47, i32 0, i32 5
  %51 = load i8*, i8** %data5.i.i43, align 4, !tbaa !17
  %call.i.i44 = tail call i8* @realloc(i8* %51, i32 %dn.0.i.i39) #8
  %tobool6.i.i45 = icmp eq i8* %call.i.i44, null
  br i1 %tobool6.i.i45, label %return, label %if.end.i.i48

if.end.i.i48:                                     ; preds = %while.end.i.i46
  store i8* %call.i.i44, i8** %data5.i.i43, align 4, !tbaa !17
  store i32 %dn.0.i.i39, i32* %d_max.i.i29, align 4, !tbaa !24
  %.pre36.i.i47 = load i32, i32* %d_cur.i.i27, align 4, !tbaa !23
  br label %mk_append_context_data.exit.i50

mk_append_context_data.exit.i50:                  ; preds = %if.end.i.i48, %entry.if.end11_crit_edge.i.i34
  %52 = phi i32 [ %49, %entry.if.end11_crit_edge.i.i34 ], [ %.pre36.i.i47, %if.end.i.i48 ]
  %53 = phi i8* [ %.pre.i.i33, %entry.if.end11_crit_edge.i.i34 ], [ %call.i.i44, %if.end.i.i48 ]
  %add.ptr.i.i49 = getelementptr inbounds i8, i8* %53, i32 %52
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %add.ptr.i.i49, i8* align 1 %48, i32 %46, i1 false) #8
  store i32 %add.i.i28, i32* %d_cur.i.i27, align 4, !tbaa !23
  br label %if.end13.i56

if.else.i55:                                      ; preds = %if.end.i26
  %owner.i51 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %45, i32 0, i32 3
  %54 = load %struct.mk_writer*, %struct.mk_writer** %owner.i51, align 4, !tbaa !2
  %fp.i52 = getelementptr inbounds %struct.mk_writer, %struct.mk_writer* %54, i32 0, i32 0
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.i52, align 8, !tbaa !14
  %call9.i53 = tail call i32 @fwrite(i8* %48, i32 %46, i32 1, %struct._IO_FILE* %55) #8
  %cmp10.i54 = icmp eq i32 %call9.i53, 1
  br i1 %cmp10.i54, label %if.end13.i56, label %return

if.end13.i56:                                     ; preds = %if.else.i55, %mk_append_context_data.exit.i50
  store i32 0, i32* %d_cur.i21, align 4, !tbaa !23
  br label %return

return:                                           ; preds = %while.end.i.i, %if.else.i, %while.end.i, %while.end.i137, %while.end.i112, %while.end.i87, %do.body3.i, %do.end, %if.end13.i56, %if.else.i55, %while.end.i.i46, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %do.end ], [ 0, %if.end13.i56 ], [ -1, %if.else.i55 ], [ -1, %while.end.i.i46 ], [ -1, %do.body3.i ], [ -1, %while.end.i87 ], [ -1, %while.end.i112 ], [ -1, %while.end.i137 ], [ -1, %while.end.i ], [ -1, %if.else.i ], [ -1, %while.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fseek(%struct._IO_FILE* nocapture, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc i32 @mk_write_size(%struct.mk_context* nocapture %c, i32 %size) unnamed_addr #0 {
entry:
  %shr = lshr i32 %size, 24
  %conv = trunc i32 %shr to i8
  %shr2 = lshr i32 %size, 16
  %conv3 = trunc i32 %shr2 to i8
  %shr5 = lshr i32 %size, 8
  %conv6 = trunc i32 %shr5 to i8
  %conv8 = trunc i32 %size to i8
  %cmp = icmp ult i32 %size, 127
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = or i8 %conv8, -128
  %d_cur.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %1 = load i32, i32* %d_cur.i, align 4, !tbaa !23
  %add.i = add i32 %1, 1
  %d_max.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %2 = load i32, i32* %d_max.i, align 4, !tbaa !24
  %cmp.i = icmp ugt i32 %add.i, %2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end11_crit_edge.i

entry.if.end11_crit_edge.i:                       ; preds = %if.then
  %data12.phi.trans.insert.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i = load i8*, i8** %data12.phi.trans.insert.i, align 4, !tbaa !17
  br label %if.end11.i

if.then.i:                                        ; preds = %if.then
  %tobool.i = icmp eq i32 %2, 0
  %shl.i = shl i32 %2, 1
  %spec.select.i = select i1 %tobool.i, i32 16, i32 %shl.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.then.i
  %dn.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ %shl4.i, %while.cond.i ]
  %cmp3.i = icmp ugt i32 %add.i, %dn.0.i
  %shl4.i = shl i32 %dn.0.i, 1
  br i1 %cmp3.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %data5.i = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %3 = load i8*, i8** %data5.i, align 4, !tbaa !17
  %call.i = tail call i8* @realloc(i8* %3, i32 %dn.0.i) #8
  %tobool6.i = icmp eq i8* %call.i, null
  br i1 %tobool6.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %while.end.i
  store i8* %call.i, i8** %data5.i, align 4, !tbaa !17
  store i32 %dn.0.i, i32* %d_max.i, align 4, !tbaa !24
  %.pre36.i = load i32, i32* %d_cur.i, align 4, !tbaa !23
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %entry.if.end11_crit_edge.i
  %4 = phi i32 [ %1, %entry.if.end11_crit_edge.i ], [ %.pre36.i, %if.end.i ]
  %5 = phi i8* [ %.pre.i, %entry.if.end11_crit_edge.i ], [ %call.i, %if.end.i ]
  %add.ptr.i = getelementptr inbounds i8, i8* %5, i32 %4
  store i8 %0, i8* %add.ptr.i, align 1
  store i32 %add.i, i32* %d_cur.i, align 4, !tbaa !23
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp12 = icmp ult i32 %size, 16383
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end
  %6 = or i8 %conv6, 64
  %d_cur.i58 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %7 = load i32, i32* %d_cur.i58, align 4, !tbaa !23
  %add.i59 = add i32 %7, 2
  %d_max.i60 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %8 = load i32, i32* %d_max.i60, align 4, !tbaa !24
  %cmp.i61 = icmp ugt i32 %add.i59, %8
  br i1 %cmp.i61, label %if.then.i68, label %entry.if.end11_crit_edge.i64

entry.if.end11_crit_edge.i64:                     ; preds = %if.then14
  %data12.phi.trans.insert.i62 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i63 = load i8*, i8** %data12.phi.trans.insert.i62, align 4, !tbaa !17
  br label %if.end11.i80

if.then.i68:                                      ; preds = %if.then14
  %tobool.i65 = icmp eq i32 %8, 0
  %shl.i66 = shl i32 %8, 1
  %spec.select.i67 = select i1 %tobool.i65, i32 16, i32 %shl.i66
  br label %while.cond.i72

while.cond.i72:                                   ; preds = %while.cond.i72, %if.then.i68
  %dn.0.i69 = phi i32 [ %spec.select.i67, %if.then.i68 ], [ %shl4.i71, %while.cond.i72 ]
  %cmp3.i70 = icmp ugt i32 %add.i59, %dn.0.i69
  %shl4.i71 = shl i32 %dn.0.i69, 1
  br i1 %cmp3.i70, label %while.cond.i72, label %while.end.i76

while.end.i76:                                    ; preds = %while.cond.i72
  %data5.i73 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %9 = load i8*, i8** %data5.i73, align 4, !tbaa !17
  %call.i74 = tail call i8* @realloc(i8* %9, i32 %dn.0.i69) #8
  %tobool6.i75 = icmp eq i8* %call.i74, null
  br i1 %tobool6.i75, label %cleanup, label %if.end.i78

if.end.i78:                                       ; preds = %while.end.i76
  store i8* %call.i74, i8** %data5.i73, align 4, !tbaa !17
  store i32 %dn.0.i69, i32* %d_max.i60, align 4, !tbaa !24
  %.pre36.i77 = load i32, i32* %d_cur.i58, align 4, !tbaa !23
  br label %if.end11.i80

if.end11.i80:                                     ; preds = %if.end.i78, %entry.if.end11_crit_edge.i64
  %10 = phi i32 [ %7, %entry.if.end11_crit_edge.i64 ], [ %.pre36.i77, %if.end.i78 ]
  %11 = phi i8* [ %.pre.i63, %entry.if.end11_crit_edge.i64 ], [ %call.i74, %if.end.i78 ]
  %add.ptr.i79 = getelementptr inbounds i8, i8* %11, i32 %10
  store i8 %6, i8* %add.ptr.i79, align 1
  %c_size.sroa.16.3.add.ptr.i79.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i79, i32 1
  store i8 %conv8, i8* %c_size.sroa.16.3.add.ptr.i79.sroa_raw_idx, align 1
  store i32 %add.i59, i32* %d_cur.i58, align 4, !tbaa !23
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %cmp23 = icmp ult i32 %size, 2097151
  br i1 %cmp23, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end22
  %12 = or i8 %conv3, 32
  %d_cur.i83 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %13 = load i32, i32* %d_cur.i83, align 4, !tbaa !23
  %add.i84 = add i32 %13, 3
  %d_max.i85 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %14 = load i32, i32* %d_max.i85, align 4, !tbaa !24
  %cmp.i86 = icmp ugt i32 %add.i84, %14
  br i1 %cmp.i86, label %if.then.i93, label %entry.if.end11_crit_edge.i89

entry.if.end11_crit_edge.i89:                     ; preds = %if.then25
  %data12.phi.trans.insert.i87 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i88 = load i8*, i8** %data12.phi.trans.insert.i87, align 4, !tbaa !17
  br label %if.end11.i105

if.then.i93:                                      ; preds = %if.then25
  %tobool.i90 = icmp eq i32 %14, 0
  %shl.i91 = shl i32 %14, 1
  %spec.select.i92 = select i1 %tobool.i90, i32 16, i32 %shl.i91
  br label %while.cond.i97

while.cond.i97:                                   ; preds = %while.cond.i97, %if.then.i93
  %dn.0.i94 = phi i32 [ %spec.select.i92, %if.then.i93 ], [ %shl4.i96, %while.cond.i97 ]
  %cmp3.i95 = icmp ugt i32 %add.i84, %dn.0.i94
  %shl4.i96 = shl i32 %dn.0.i94, 1
  br i1 %cmp3.i95, label %while.cond.i97, label %while.end.i101

while.end.i101:                                   ; preds = %while.cond.i97
  %data5.i98 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %15 = load i8*, i8** %data5.i98, align 4, !tbaa !17
  %call.i99 = tail call i8* @realloc(i8* %15, i32 %dn.0.i94) #8
  %tobool6.i100 = icmp eq i8* %call.i99, null
  br i1 %tobool6.i100, label %cleanup, label %if.end.i103

if.end.i103:                                      ; preds = %while.end.i101
  store i8* %call.i99, i8** %data5.i98, align 4, !tbaa !17
  store i32 %dn.0.i94, i32* %d_max.i85, align 4, !tbaa !24
  %.pre36.i102 = load i32, i32* %d_cur.i83, align 4, !tbaa !23
  br label %if.end11.i105

if.end11.i105:                                    ; preds = %if.end.i103, %entry.if.end11_crit_edge.i89
  %16 = phi i32 [ %13, %entry.if.end11_crit_edge.i89 ], [ %.pre36.i102, %if.end.i103 ]
  %17 = phi i8* [ %.pre.i88, %entry.if.end11_crit_edge.i89 ], [ %call.i99, %if.end.i103 ]
  %add.ptr.i104 = getelementptr inbounds i8, i8* %17, i32 %16
  store i8 %12, i8* %add.ptr.i104, align 1
  %c_size.sroa.12.2.add.ptr.i104.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i104, i32 1
  store i8 %conv6, i8* %c_size.sroa.12.2.add.ptr.i104.sroa_raw_idx, align 1
  %c_size.sroa.16.2.add.ptr.i104.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i104, i32 2
  store i8 %conv8, i8* %c_size.sroa.16.2.add.ptr.i104.sroa_raw_idx, align 1
  store i32 %add.i84, i32* %d_cur.i83, align 4, !tbaa !23
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %cmp34 = icmp ult i32 %size, 268435455
  br i1 %cmp34, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end33
  %18 = or i8 %conv, 16
  %d_cur.i108 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %19 = load i32, i32* %d_cur.i108, align 4, !tbaa !23
  %add.i109 = add i32 %19, 4
  %d_max.i110 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %20 = load i32, i32* %d_max.i110, align 4, !tbaa !24
  %cmp.i111 = icmp ugt i32 %add.i109, %20
  br i1 %cmp.i111, label %if.then.i118, label %entry.if.end11_crit_edge.i114

entry.if.end11_crit_edge.i114:                    ; preds = %if.then36
  %data12.phi.trans.insert.i112 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i113 = load i8*, i8** %data12.phi.trans.insert.i112, align 4, !tbaa !17
  br label %if.end11.i130

if.then.i118:                                     ; preds = %if.then36
  %tobool.i115 = icmp eq i32 %20, 0
  %shl.i116 = shl i32 %20, 1
  %spec.select.i117 = select i1 %tobool.i115, i32 16, i32 %shl.i116
  br label %while.cond.i122

while.cond.i122:                                  ; preds = %while.cond.i122, %if.then.i118
  %dn.0.i119 = phi i32 [ %spec.select.i117, %if.then.i118 ], [ %shl4.i121, %while.cond.i122 ]
  %cmp3.i120 = icmp ugt i32 %add.i109, %dn.0.i119
  %shl4.i121 = shl i32 %dn.0.i119, 1
  br i1 %cmp3.i120, label %while.cond.i122, label %while.end.i126

while.end.i126:                                   ; preds = %while.cond.i122
  %data5.i123 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %21 = load i8*, i8** %data5.i123, align 4, !tbaa !17
  %call.i124 = tail call i8* @realloc(i8* %21, i32 %dn.0.i119) #8
  %tobool6.i125 = icmp eq i8* %call.i124, null
  br i1 %tobool6.i125, label %cleanup, label %if.end.i128

if.end.i128:                                      ; preds = %while.end.i126
  store i8* %call.i124, i8** %data5.i123, align 4, !tbaa !17
  store i32 %dn.0.i119, i32* %d_max.i110, align 4, !tbaa !24
  %.pre36.i127 = load i32, i32* %d_cur.i108, align 4, !tbaa !23
  br label %if.end11.i130

if.end11.i130:                                    ; preds = %if.end.i128, %entry.if.end11_crit_edge.i114
  %22 = phi i32 [ %19, %entry.if.end11_crit_edge.i114 ], [ %.pre36.i127, %if.end.i128 ]
  %23 = phi i8* [ %.pre.i113, %entry.if.end11_crit_edge.i114 ], [ %call.i124, %if.end.i128 ]
  %add.ptr.i129 = getelementptr inbounds i8, i8* %23, i32 %22
  store i8 %18, i8* %add.ptr.i129, align 1
  %c_size.sroa.8.1.add.ptr.i129.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i129, i32 1
  store i8 %conv3, i8* %c_size.sroa.8.1.add.ptr.i129.sroa_raw_idx, align 1
  %c_size.sroa.12.1.add.ptr.i129.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i129, i32 2
  store i8 %conv6, i8* %c_size.sroa.12.1.add.ptr.i129.sroa_raw_idx, align 1
  %c_size.sroa.16.1.add.ptr.i129.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i129, i32 3
  store i8 %conv8, i8* %c_size.sroa.16.1.add.ptr.i129.sroa_raw_idx, align 1
  store i32 %add.i109, i32* %d_cur.i108, align 4, !tbaa !23
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %d_cur.i133 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 6
  %24 = load i32, i32* %d_cur.i133, align 4, !tbaa !23
  %add.i134 = add i32 %24, 5
  %d_max.i135 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 7
  %25 = load i32, i32* %d_max.i135, align 4, !tbaa !24
  %cmp.i136 = icmp ugt i32 %add.i134, %25
  br i1 %cmp.i136, label %if.then.i143, label %entry.if.end11_crit_edge.i139

entry.if.end11_crit_edge.i139:                    ; preds = %if.end44
  %data12.phi.trans.insert.i137 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %.pre.i138 = load i8*, i8** %data12.phi.trans.insert.i137, align 4, !tbaa !17
  br label %if.end11.i155

if.then.i143:                                     ; preds = %if.end44
  %tobool.i140 = icmp eq i32 %25, 0
  %shl.i141 = shl i32 %25, 1
  %spec.select.i142 = select i1 %tobool.i140, i32 16, i32 %shl.i141
  br label %while.cond.i147

while.cond.i147:                                  ; preds = %while.cond.i147, %if.then.i143
  %dn.0.i144 = phi i32 [ %spec.select.i142, %if.then.i143 ], [ %shl4.i146, %while.cond.i147 ]
  %cmp3.i145 = icmp ugt i32 %add.i134, %dn.0.i144
  %shl4.i146 = shl i32 %dn.0.i144, 1
  br i1 %cmp3.i145, label %while.cond.i147, label %while.end.i151

while.end.i151:                                   ; preds = %while.cond.i147
  %data5.i148 = getelementptr inbounds %struct.mk_context, %struct.mk_context* %c, i32 0, i32 5
  %26 = load i8*, i8** %data5.i148, align 4, !tbaa !17
  %call.i149 = tail call i8* @realloc(i8* %26, i32 %dn.0.i144) #8
  %tobool6.i150 = icmp eq i8* %call.i149, null
  br i1 %tobool6.i150, label %cleanup, label %if.end.i153

if.end.i153:                                      ; preds = %while.end.i151
  store i8* %call.i149, i8** %data5.i148, align 4, !tbaa !17
  store i32 %dn.0.i144, i32* %d_max.i135, align 4, !tbaa !24
  %.pre36.i152 = load i32, i32* %d_cur.i133, align 4, !tbaa !23
  br label %if.end11.i155

if.end11.i155:                                    ; preds = %if.end.i153, %entry.if.end11_crit_edge.i139
  %27 = phi i32 [ %24, %entry.if.end11_crit_edge.i139 ], [ %.pre36.i152, %if.end.i153 ]
  %28 = phi i8* [ %.pre.i138, %entry.if.end11_crit_edge.i139 ], [ %call.i149, %if.end.i153 ]
  %add.ptr.i154 = getelementptr inbounds i8, i8* %28, i32 %27
  store i8 8, i8* %add.ptr.i154, align 1
  %c_size.sroa.4.0.add.ptr.i154.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i154, i32 1
  store i8 %conv, i8* %c_size.sroa.4.0.add.ptr.i154.sroa_raw_idx, align 1
  %c_size.sroa.8.0.add.ptr.i154.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i154, i32 2
  store i8 %conv3, i8* %c_size.sroa.8.0.add.ptr.i154.sroa_raw_idx, align 1
  %c_size.sroa.12.0.add.ptr.i154.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i154, i32 3
  store i8 %conv6, i8* %c_size.sroa.12.0.add.ptr.i154.sroa_raw_idx, align 1
  %c_size.sroa.16.0.add.ptr.i154.sroa_raw_idx = getelementptr inbounds i8, i8* %add.ptr.i154, i32 4
  store i8 %conv8, i8* %c_size.sroa.16.0.add.ptr.i154.sroa_raw_idx, align 1
  store i32 %add.i134, i32* %d_cur.i133, align 4, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i155, %while.end.i151, %if.end11.i130, %while.end.i126, %if.end11.i105, %while.end.i101, %if.end11.i80, %while.end.i76, %if.end11.i, %while.end.i
  %retval.0 = phi i32 [ 0, %if.end11.i ], [ -1, %while.end.i ], [ 0, %if.end11.i80 ], [ -1, %while.end.i76 ], [ 0, %if.end11.i105 ], [ -1, %while.end.i101 ], [ 0, %if.end11.i130 ], [ -1, %while.end.i126 ], [ 0, %if.end11.i155 ], [ -1, %while.end.i151 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local noalias i8* @realloc(i8* nocapture, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 12}
!3 = !{!"mk_context", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !7, i64 16, !4, i64 20, !7, i64 24, !7, i64 28}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 4}
!9 = !{!10, !4, i64 24}
!10 = !{!"mk_writer", !4, i64 0, !7, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 73, !5, i64 74, !5, i64 75}
!11 = !{!"long long", !5, i64 0}
!12 = !{!10, !4, i64 8}
!13 = !{!4, !4, i64 0}
!14 = !{!10, !4, i64 0}
!15 = !{!10, !4, i64 20}
!16 = !{!3, !4, i64 0}
!17 = !{!3, !4, i64 20}
!18 = !{!10, !11, i64 40}
!19 = !{!10, !5, i64 72}
!20 = !{!10, !11, i64 32}
!21 = !{!3, !4, i64 8}
!22 = !{!3, !7, i64 16}
!23 = !{!3, !7, i64 24}
!24 = !{!3, !7, i64 28}
!25 = !{!10, !7, i64 4}
!26 = !{!7, !7, i64 0}
!27 = !{!5, !5, i64 0}
!28 = !{!10, !5, i64 73}
!29 = !{!10, !5, i64 74}
!30 = !{!10, !5, i64 75}
!31 = !{!10, !11, i64 56}
!32 = !{!10, !11, i64 48}
!33 = !{!10, !4, i64 12}
!34 = !{!10, !4, i64 16}
!35 = !{!10, !11, i64 64}
