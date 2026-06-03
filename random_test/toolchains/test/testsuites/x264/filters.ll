; ModuleID = 'filters/filters.c'
source_filename = "filters/filters.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@.str = private unnamed_addr constant [3 x i8] c"=,\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid option '%.*s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Too many options given\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Ordered option given after named\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"offset == size\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"filters/filters.c\00", align 1
@__PRETTY_FUNCTION__.x264_split_options = private unnamed_addr constant [61 x i8] c"char **x264_split_options(const char *, const char *const *)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: nounwind
define hidden i8** @x264_split_options(i8* %opt_str, i8** nocapture readonly %options) local_unnamed_addr #0 {
entry:
  %tobool = icmp eq i8* %opt_str, null
  br i1 %tobool, label %cleanup111, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %options_count.0 = phi i32 [ %inc, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8*, i8** %options, i32 %options_count.0
  %0 = load i8*, i8** %arrayidx, align 4, !tbaa !2
  %tobool1 = icmp eq i8* %0, null
  %inc = add nuw nsw i32 %options_count.0, 1
  br i1 %tobool1, label %do.body, label %while.cond

do.body:                                          ; preds = %while.cond, %do.cond42
  %found_named.0 = phi i32 [ %found_named.2, %do.cond42 ], [ 0, %while.cond ]
  %size.0 = phi i32 [ %size.1, %do.cond42 ], [ 0, %while.cond ]
  %opt.0 = phi i8* [ %incdec.ptr43, %do.cond42 ], [ %opt_str, %while.cond ]
  %opt_count.0 = phi i32 [ %inc37, %do.cond42 ], [ 0, %while.cond ]
  %call = tail call i32 @strcspn(i8* %opt.0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #9
  %arrayidx2 = getelementptr inbounds i8, i8* %opt.0, i32 %call
  %1 = load i8, i8* %arrayidx2, align 1, !tbaa !6
  %cmp = icmp eq i8 %1, 61
  br i1 %cmp, label %while.cond5.preheader, label %do.body19

while.cond5.preheader:                            ; preds = %do.body
  %2 = load i8*, i8** %options, align 4, !tbaa !2
  %tobool6218 = icmp eq i8* %2, null
  br i1 %tobool6218, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %while.cond5.preheader, %while.body12
  %3 = phi i8* [ %4, %while.body12 ], [ %2, %while.cond5.preheader ]
  %option.0219 = phi i8** [ %incdec.ptr, %while.body12 ], [ %options, %while.cond5.preheader ]
  %call7 = tail call i32 @strlen(i8* nonnull %3) #9
  %cmp8 = icmp eq i32 %call7, %call
  br i1 %cmp8, label %lor.rhs, label %while.body12

lor.rhs:                                          ; preds = %land.rhs
  %call10 = tail call i32 @strncmp(i8* %opt.0, i8* nonnull %3, i32 %call) #9
  %tobool11 = icmp eq i32 %call10, 0
  br i1 %tobool11, label %cleanup.thread, label %while.body12

while.body12:                                     ; preds = %lor.rhs, %land.rhs
  %incdec.ptr = getelementptr inbounds i8*, i8** %option.0219, i32 1
  %4 = load i8*, i8** %incdec.ptr, align 4, !tbaa !2
  %tobool6 = icmp eq i8* %4, null
  br i1 %tobool6, label %cleanup, label %land.rhs

cleanup.thread:                                   ; preds = %lor.rhs
  %call18 = tail call i32 @strcspn(i8* nonnull %arrayidx2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #9
  %add = add i32 %call18, %call
  %add.ptr38.phi.trans.insert = getelementptr inbounds i8, i8* %opt.0, i32 %add
  %.pre = load i8, i8* %add.ptr38.phi.trans.insert, align 1, !tbaa !6
  br label %do.cond42

cleanup:                                          ; preds = %while.cond5.preheader, %while.body12
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %call, i8* %opt.0) #10
  br label %cleanup111

do.body19:                                        ; preds = %do.body
  %cmp20 = icmp ult i32 %opt_count.0, %options_count.0
  br i1 %cmp20, label %do.body26, label %if.then22

if.then22:                                        ; preds = %do.body19
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)) #10
  br label %cleanup111

do.body26:                                        ; preds = %do.body19
  %tobool27 = icmp eq i32 %found_named.0, 0
  br i1 %tobool27, label %do.end31, label %if.then28

if.then28:                                        ; preds = %do.body26
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0)) #10
  br label %cleanup111

do.end31:                                         ; preds = %do.body26
  %arrayidx32 = getelementptr inbounds i8*, i8** %options, i32 %opt_count.0
  %5 = load i8*, i8** %arrayidx32, align 4, !tbaa !2
  %call33 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %5) #9
  %add34 = add i32 %size.0, 1
  %add35 = add i32 %add34, %call33
  br label %do.cond42

do.cond42:                                        ; preds = %cleanup.thread, %do.end31
  %6 = phi i8 [ %1, %do.end31 ], [ %.pre, %cleanup.thread ]
  %found_named.2 = phi i32 [ 0, %do.end31 ], [ 1, %cleanup.thread ]
  %size.1 = phi i32 [ %add35, %do.end31 ], [ %size.0, %cleanup.thread ]
  %length.1 = phi i32 [ %call, %do.end31 ], [ %add, %cleanup.thread ]
  %inc37 = add nuw nsw i32 %opt_count.0, 1
  %add.ptr38 = getelementptr inbounds i8, i8* %opt.0, i32 1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %add.ptr38, i32 %length.1
  %tobool44 = icmp eq i8 %6, 0
  br i1 %tobool44, label %do.end45, label %do.body

do.end45:                                         ; preds = %do.cond42
  %add46 = shl i32 %inc37, 3
  %mul47 = add i32 %add46, 8
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr43 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %opt_str to i32
  %sub.ptr.sub = sub i32 %mul47, %sub.ptr.rhs.cast
  %add48 = add i32 %sub.ptr.sub, %size.1
  %add49 = add i32 %add48, %sub.ptr.lhs.cast
  %call50 = tail call noalias i8* @calloc(i32 1, i32 %add49) #10
  %7 = bitcast i8* %call50 to i8**
  %tobool52 = icmp eq i8* %call50, null
  br i1 %tobool52, label %if.then53, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end45
  %mul57 = shl nuw nsw i32 %inc37, 1
  br label %for.body

if.then53:                                        ; preds = %do.end45
  tail call void (i8*, i32, i8*, ...) @x264_cli_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #10
  br label %cleanup111

for.cond.cleanup:                                 ; preds = %do.body93
  %cmp104 = icmp eq i32 %add98, %add49
  br i1 %cmp104, label %cleanup111, label %if.else107

for.body:                                         ; preds = %for.body.preheader, %do.body93
  %opt_str.addr.0217 = phi i8* [ %add.ptr100, %do.body93 ], [ %opt_str, %for.body.preheader ]
  %i.0216 = phi i32 [ %inc95, %do.body93 ], [ 0, %for.body.preheader ]
  %offset.0215 = phi i32 [ %add98, %do.body93 ], [ %mul47, %for.body.preheader ]
  %call61 = tail call i32 @strcspn(i8* %opt_str.addr.0217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #9
  %arrayidx62 = getelementptr inbounds i8, i8* %opt_str.addr.0217, i32 %call61
  %8 = load i8, i8* %arrayidx62, align 1, !tbaa !6
  %cmp64 = icmp eq i8 %8, 61
  br i1 %cmp64, label %do.body67, label %if.else78

do.body67:                                        ; preds = %for.body
  %add.ptr68 = getelementptr inbounds i8, i8* %call50, i32 %offset.0215
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr68, i8* nonnull align 1 %opt_str.addr.0217, i32 %call61, i1 false)
  %arrayidx70 = getelementptr inbounds i8*, i8** %7, i32 %i.0216
  store i8* %add.ptr68, i8** %arrayidx70, align 4, !tbaa !2
  %add71 = add i32 %call61, 1
  %add.ptr74 = getelementptr inbounds i8, i8* %opt_str.addr.0217, i32 %add71
  %call77 = tail call i32 @strcspn(i8* %add.ptr74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #9
  br label %do.body93

if.else78:                                        ; preds = %for.body
  %div = lshr exact i32 %i.0216, 1
  %arrayidx80 = getelementptr inbounds i8*, i8** %options, i32 %div
  %9 = load i8*, i8** %arrayidx80, align 4, !tbaa !2
  %call81 = tail call i32 @strlen(i8* nonnull dereferenceable(1) %9) #9
  %add.ptr83 = getelementptr inbounds i8, i8* %call50, i32 %offset.0215
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr83, i8* align 1 %9, i32 %call81, i1 false)
  %arrayidx85 = getelementptr inbounds i8*, i8** %7, i32 %i.0216
  store i8* %add.ptr83, i8** %arrayidx85, align 4, !tbaa !2
  %add86 = add i32 %call81, 1
  br label %do.body93

do.body93:                                        ; preds = %do.body67, %if.else78
  %add71.pn = phi i32 [ %add71, %do.body67 ], [ %add86, %if.else78 ]
  %length60.0 = phi i32 [ %call77, %do.body67 ], [ %call61, %if.else78 ]
  %opt_str.addr.1 = phi i8* [ %add.ptr74, %do.body67 ], [ %opt_str.addr.0217, %if.else78 ]
  %i.1 = or i32 %i.0216, 1
  %offset.1 = add i32 %add71.pn, %offset.0215
  %add.ptr94 = getelementptr inbounds i8, i8* %call50, i32 %offset.1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %add.ptr94, i8* align 1 %opt_str.addr.1, i32 %length60.0, i1 false)
  %inc95 = add nuw nsw i32 %i.0216, 2
  %arrayidx96 = getelementptr inbounds i8*, i8** %7, i32 %i.1
  store i8* %add.ptr94, i8** %arrayidx96, align 4, !tbaa !2
  %add97 = add i32 %length60.0, 1
  %add98 = add i32 %add97, %offset.1
  %add.ptr100 = getelementptr inbounds i8, i8* %opt_str.addr.1, i32 %add97
  %cmp58 = icmp slt i32 %inc95, %mul57
  br i1 %cmp58, label %for.body, label %for.cond.cleanup

if.else107:                                       ; preds = %for.cond.cleanup
  tail call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 96, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.x264_split_options, i32 0, i32 0)) #11
  unreachable

cleanup111:                                       ; preds = %if.then28, %if.then22, %cleanup, %if.then53, %for.cond.cleanup, %entry
  %retval.5 = phi i8** [ null, %entry ], [ null, %if.then53 ], [ %7, %for.cond.cleanup ], [ null, %cleanup ], [ null, %if.then22 ], [ null, %if.then28 ]
  ret i8** %retval.5
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i32 @strlen(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strncmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #2

declare dso_local void @x264_cli_log(i8*, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind readonly
define hidden i8* @x264_get_option(i8* nocapture readonly %name, i8** readonly %split_options) local_unnamed_addr #7 {
entry:
  %tobool = icmp eq i8** %split_options, null
  br i1 %tobool, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %0 = load i8*, i8** %split_options, align 4, !tbaa !2
  %tobool128 = icmp eq i8* %0, null
  br i1 %tobool128, label %cleanup.thread, label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %cmp = icmp sgt i32 %spec.select, -1
  br i1 %cmp, label %land.lhs.true, label %cleanup.thread

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %1 = phi i8* [ %2, %for.body ], [ %0, %for.cond.preheader ]
  %i.030 = phi i32 [ %add, %for.body ], [ 0, %for.cond.preheader ]
  %last_i.029 = phi i32 [ %spec.select, %for.body ], [ -1, %for.cond.preheader ]
  %call = tail call i32 @strcmp(i8* nonnull %1, i8* nonnull dereferenceable(1) %name) #9
  %tobool3 = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool3, i32 %i.030, i32 %last_i.029
  %add = add nuw nsw i32 %i.030, 2
  %arrayidx = getelementptr inbounds i8*, i8** %split_options, i32 %add
  %2 = load i8*, i8** %arrayidx, align 4, !tbaa !2
  %tobool1 = icmp eq i8* %2, null
  br i1 %tobool1, label %for.cond.cleanup, label %for.body

land.lhs.true:                                    ; preds = %for.cond.cleanup
  %add5 = add nuw nsw i32 %spec.select, 1
  %arrayidx6 = getelementptr inbounds i8*, i8** %split_options, i32 %add5
  %3 = load i8*, i8** %arrayidx6, align 4, !tbaa !2
  %4 = load i8, i8* %3, align 1, !tbaa !6
  %tobool8 = icmp eq i8 %4, 0
  br i1 %tobool8, label %cleanup.thread, label %return

cleanup.thread:                                   ; preds = %for.cond.preheader, %for.cond.cleanup, %land.lhs.true
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %land.lhs.true
  %retval.1 = phi i8* [ %3, %land.lhs.true ], [ null, %cleanup.thread ], [ null, %entry ]
  ret i8* %retval.1
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
define hidden i32 @x264_otob(i8* readonly %str, i32 %def) local_unnamed_addr #7 {
entry:
  %tobool = icmp eq i8* %str, null
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcasecmp(i8* nonnull %str, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #9
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @strcmp(i8* nonnull %str, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #9
  %tobool3 = icmp eq i32 %call2, 0
  br i1 %tobool3, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcasecmp(i8* nonnull %str, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #9
  %tobool5 = icmp eq i32 %call4, 0
  %phitmp = zext i1 %tobool5 to i32
  br label %return

return:                                           ; preds = %entry, %lor.rhs, %if.then, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %if.then ], [ %phitmp, %lor.rhs ], [ %def, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcasecmp(i8* nocapture, i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
define hidden double @x264_otof(i8* readonly %str, double %def) local_unnamed_addr #0 {
entry:
  %end = alloca i8*, align 4
  %tobool = icmp eq i8* %str, null
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %call = call fast double @strtod(i8* nonnull %str, i8** nonnull %end) #10
  %1 = load i8*, i8** %end, align 4, !tbaa !2
  %cmp = icmp eq i8* %1, %str
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i8, i8* %1, align 1, !tbaa !6
  %cmp1 = icmp eq i8 %2, 0
  br i1 %cmp1, label %if.end, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then3
  %ret.0 = phi double [ %def, %if.then3 ], [ %call, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  %ret.1 = phi double [ %ret.0, %if.end ], [ %def, %entry ]
  ret double %ret.1
}

; Function Attrs: nofree nounwind
declare dso_local double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
define hidden i32 @x264_otoi(i8* readonly %str, i32 %def) local_unnamed_addr #0 {
entry:
  %end = alloca i8*, align 4
  %tobool = icmp eq i8* %str, null
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %call = call i32 @strtol(i8* nonnull %str, i8** nonnull %end, i32 0) #10
  %1 = load i8*, i8** %end, align 4, !tbaa !2
  %cmp = icmp eq i8* %1, %str
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i8, i8* %1, align 1, !tbaa !6
  %cmp1 = icmp eq i8 %2, 0
  br i1 %cmp1, label %if.end, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then3
  %ret.0 = phi i32 [ %def, %if.then3 ], [ %call, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ %def, %entry ]
  ret i32 %ret.1
}

; Function Attrs: nofree nounwind
declare dso_local i32 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #5

; Function Attrs: norecurse nounwind readnone
define hidden i8* @x264_otos(i8* readnone %str, i8* readnone %def) local_unnamed_addr #8 {
entry:
  %tobool = icmp eq i8* %str, null
  %cond = select i1 %tobool, i8* %def, i8* %str
  ret i8* %cond
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
