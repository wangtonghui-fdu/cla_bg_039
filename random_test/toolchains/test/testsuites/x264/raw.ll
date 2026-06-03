; ModuleID = 'output/raw.c'
source_filename = "output/raw.c"
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@raw_output = hidden local_unnamed_addr constant %struct.cli_output_t { i32 (i8*, i8**, %struct.cli_output_opt_t*)* @open_file, i32 (i8*, %struct.x264_param_t*)* @set_param, i32 (i8*, %struct.x264_nal_t*)* @write_headers, i32 (i8*, i8*, i32, %struct.x264_picture_t*)* @write_frame, i32 (i8*, i64, i64)* @close_file }, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1

; Function Attrs: nounwind
define internal i32 @open_file(i8* %psz_filename, i8** nocapture %p_handle, %struct.cli_output_opt_t* nocapture readnone %opt) #0 {
entry:
  %call = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %psz_filename, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* bitcast (%struct._IO_FILE** @stdout to i32*), align 4, !tbaa !2
  %1 = bitcast i8** %p_handle to i32*
  store i32 %0, i32* %1, align 4, !tbaa !2
  br label %if.end4

if.else:                                          ; preds = %entry
  %call1 = tail call %struct._IO_FILE* @fopen64(i8* %psz_filename, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #7
  %2 = bitcast i8** %p_handle to %struct._IO_FILE**
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %2, align 4, !tbaa !2
  %tobool2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %tobool2, label %return, label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  br label %return

return:                                           ; preds = %if.else, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: norecurse nounwind readnone
define internal i32 @set_param(i8* nocapture readnone %handle, %struct.x264_param_t* nocapture readnone %p_param) #1 {
entry:
  ret i32 0
}

; Function Attrs: nofree nounwind
define internal i32 @write_headers(i8* nocapture %handle, %struct.x264_nal_t* nocapture readonly %p_nal) #2 {
entry:
  %i_payload = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 0, i32 5
  %0 = load i32, i32* %i_payload, align 4, !tbaa !6
  %i_payload2 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 1, i32 5
  %1 = load i32, i32* %i_payload2, align 4, !tbaa !6
  %add = add nsw i32 %1, %0
  %i_payload4 = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 2, i32 5
  %2 = load i32, i32* %i_payload4, align 4, !tbaa !6
  %add5 = add nsw i32 %add, %2
  %p_payload = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %p_nal, i32 0, i32 6
  %3 = load i8*, i8** %p_payload, align 4, !tbaa !9
  %4 = bitcast i8* %handle to %struct._IO_FILE*
  %call = tail call i32 @fwrite(i8* %3, i32 %add5, i32 1, %struct._IO_FILE* %4)
  %tobool = icmp eq i32 %call, 0
  %.add5 = select i1 %tobool, i32 -1, i32 %add5
  ret i32 %.add5
}

; Function Attrs: nofree nounwind
define internal i32 @write_frame(i8* nocapture %handle, i8* nocapture %p_nalu, i32 %i_size, %struct.x264_picture_t* nocapture readnone %p_picture) #2 {
entry:
  %0 = bitcast i8* %handle to %struct._IO_FILE*
  %call = tail call i32 @fwrite(i8* %p_nalu, i32 %i_size, i32 1, %struct._IO_FILE* %0)
  %tobool = icmp eq i32 %call, 0
  %.i_size = select i1 %tobool, i32 -1, i32 %i_size
  ret i32 %.i_size
}

; Function Attrs: nofree nounwind
define internal i32 @close_file(i8* %handle, i64 %largest_pts, i64 %second_largest_pts) #2 {
entry:
  %tobool = icmp eq i8* %handle, null
  %0 = load i8*, i8** bitcast (%struct._IO_FILE** @stdout to i8**), align 4
  %cmp = icmp eq i8* %0, %handle
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %handle to %struct._IO_FILE*
  %call = tail call i32 @fclose(%struct._IO_FILE* nonnull %1)
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #3

declare dso_local %struct._IO_FILE* @fopen64(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @fwrite(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #5

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 20}
!7 = !{!"x264_nal_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !3, i64 24, !8, i64 28}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 24}
