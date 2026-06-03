; ModuleID = 'encoder/api.c'
source_filename = "encoder/api.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_t = type opaque
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], void (i8*, i32, i8*, i8*)*, i8*, i32, i32, i8*, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, void (i8*)*, void (%struct.x264_t*, %struct.x264_nal_t*, i8*)*, i8* }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, i32, float, i32, i32, i32, i8*, i32, i8*, float, float, float, %struct.x264_zone_t*, i32, i8* }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, %struct.x264_param_t* }
%struct.anon.2 = type { i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.anon.4 = type { i32, i32, i32 }
%struct.x264_nal_t = type { i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, %struct.x264_param_t*, %struct.x264_image_t, %struct.x264_image_properties_t, %struct.x264_hrd_t, %struct.x264_sei_t, i8* }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x i8*] }
%struct.x264_image_properties_t = type { float*, void (i8*)*, i8*, void (i8*)*, double, double, [3 x double], double }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_sei_t = type { i32, %struct.x264_sei_payload_t*, void (i8*)* }
%struct.x264_sei_payload_t = type { i32, i32, i8* }
%struct.x264_api_t = type { %struct.x264_t*, void (%struct.x264_t*, i8*, %struct.x264_nal_t*)*, i32 (%struct.x264_t*, %struct.x264_param_t*)*, void (%struct.x264_t*, %struct.x264_param_t*)*, i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*)*, i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*)*, void (%struct.x264_t*)*, i32 (%struct.x264_t*)*, i32 (%struct.x264_t*)*, void (%struct.x264_t*)*, i32 (%struct.x264_t*, i64)* }

@x264_chroma_format = hidden local_unnamed_addr constant i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"not compiled with %d bit depth support\0A\00", align 1

; Function Attrs: nounwind
define hidden %struct.x264_t* @x264_encoder_open_164(%struct.x264_param_t* %param) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(44) i8* @calloc(i32 1, i32 44) #4
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_bitdepth = getelementptr inbounds %struct.x264_param_t, %struct.x264_param_t* %param, i32 0, i32 10
  %0 = load i32, i32* %i_bitdepth, align 8, !tbaa !2
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %nal_encode = getelementptr inbounds i8, i8* %call, i32 4
  %1 = bitcast i8* %nal_encode to void (%struct.x264_t*, i8*, %struct.x264_nal_t*)**
  store void (%struct.x264_t*, i8*, %struct.x264_nal_t*)* @x264_8_nal_encode, void (%struct.x264_t*, i8*, %struct.x264_nal_t*)** %1, align 4, !tbaa !16
  %encoder_reconfig = getelementptr inbounds i8, i8* %call, i32 8
  %2 = bitcast i8* %encoder_reconfig to i32 (%struct.x264_t*, %struct.x264_param_t*)**
  store i32 (%struct.x264_t*, %struct.x264_param_t*)* @x264_8_encoder_reconfig, i32 (%struct.x264_t*, %struct.x264_param_t*)** %2, align 4, !tbaa !18
  %encoder_parameters = getelementptr inbounds i8, i8* %call, i32 12
  %3 = bitcast i8* %encoder_parameters to void (%struct.x264_t*, %struct.x264_param_t*)**
  store void (%struct.x264_t*, %struct.x264_param_t*)* @x264_8_encoder_parameters, void (%struct.x264_t*, %struct.x264_param_t*)** %3, align 4, !tbaa !19
  %encoder_headers = getelementptr inbounds i8, i8* %call, i32 16
  %4 = bitcast i8* %encoder_headers to i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*)**
  store i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*)* @x264_8_encoder_headers, i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*)** %4, align 4, !tbaa !20
  %encoder_encode = getelementptr inbounds i8, i8* %call, i32 20
  %5 = bitcast i8* %encoder_encode to i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*)**
  store i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*)* @x264_8_encoder_encode, i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*)** %5, align 4, !tbaa !21
  %encoder_close = getelementptr inbounds i8, i8* %call, i32 24
  %6 = bitcast i8* %encoder_close to void (%struct.x264_t*)**
  store void (%struct.x264_t*)* @x264_8_encoder_close, void (%struct.x264_t*)** %6, align 4, !tbaa !22
  %encoder_delayed_frames = getelementptr inbounds i8, i8* %call, i32 28
  %7 = bitcast i8* %encoder_delayed_frames to i32 (%struct.x264_t*)**
  store i32 (%struct.x264_t*)* @x264_8_encoder_delayed_frames, i32 (%struct.x264_t*)** %7, align 4, !tbaa !23
  %encoder_maximum_delayed_frames = getelementptr inbounds i8, i8* %call, i32 32
  %8 = bitcast i8* %encoder_maximum_delayed_frames to i32 (%struct.x264_t*)**
  store i32 (%struct.x264_t*)* @x264_8_encoder_maximum_delayed_frames, i32 (%struct.x264_t*)** %8, align 4, !tbaa !24
  %encoder_intra_refresh = getelementptr inbounds i8, i8* %call, i32 36
  %9 = bitcast i8* %encoder_intra_refresh to void (%struct.x264_t*)**
  store void (%struct.x264_t*)* @x264_8_encoder_intra_refresh, void (%struct.x264_t*)** %9, align 4, !tbaa !25
  %encoder_invalidate_reference = getelementptr inbounds i8, i8* %call, i32 40
  %10 = bitcast i8* %encoder_invalidate_reference to i32 (%struct.x264_t*, i64)**
  store i32 (%struct.x264_t*, i64)* @x264_8_encoder_invalidate_reference, i32 (%struct.x264_t*, i64)** %10, align 4, !tbaa !26
  %call2 = tail call %struct.x264_t* @x264_8_encoder_open(%struct.x264_param_t* nonnull %param, i8* nonnull %call) #4
  %x264 = bitcast i8* %call to %struct.x264_t**
  store %struct.x264_t* %call2, %struct.x264_t** %x264, align 4, !tbaa !27
  br label %if.end4

if.else:                                          ; preds = %if.end
  tail call void (i32, i8*, ...) @x264_log_internal(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i32 %0) #4
  %x2645.phi.trans.insert = bitcast i8* %call to %struct.x264_t**
  %.pre = load %struct.x264_t*, %struct.x264_t** %x2645.phi.trans.insert, align 4, !tbaa !27
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %11 = phi %struct.x264_t* [ %.pre, %if.else ], [ %call2, %if.then1 ]
  %tobool6 = icmp eq %struct.x264_t* %11, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @free(i8* nonnull %call) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = bitcast i8* %call to %struct.x264_t*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then7
  %retval.0 = phi %struct.x264_t* [ %12, %if.end8 ], [ null, %if.then7 ], [ null, %entry ]
  ret %struct.x264_t* %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #1

declare dso_local void @x264_8_nal_encode(%struct.x264_t*, i8*, %struct.x264_nal_t*) #2

declare dso_local i32 @x264_8_encoder_reconfig(%struct.x264_t*, %struct.x264_param_t*) #2

declare dso_local void @x264_8_encoder_parameters(%struct.x264_t*, %struct.x264_param_t*) #2

declare dso_local i32 @x264_8_encoder_headers(%struct.x264_t*, %struct.x264_nal_t**, i32*) #2

declare dso_local i32 @x264_8_encoder_encode(%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*) #2

declare dso_local void @x264_8_encoder_close(%struct.x264_t*) #2

declare dso_local i32 @x264_8_encoder_delayed_frames(%struct.x264_t*) #2

declare dso_local i32 @x264_8_encoder_maximum_delayed_frames(%struct.x264_t*) #2

declare dso_local void @x264_8_encoder_intra_refresh(%struct.x264_t*) #2

declare dso_local i32 @x264_8_encoder_invalidate_reference(%struct.x264_t*, i64) #2

declare dso_local %struct.x264_t* @x264_8_encoder_open(%struct.x264_param_t*, i8*) local_unnamed_addr #2

declare dso_local void @x264_log_internal(i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
define hidden void @x264_encoder_close(%struct.x264_t* nocapture %h) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_close = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 6
  %1 = load void (%struct.x264_t*)*, void (%struct.x264_t*)** %encoder_close, align 4, !tbaa !22
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  tail call void %1(%struct.x264_t* %2) #4
  %3 = bitcast %struct.x264_t* %h to i8*
  tail call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind
define hidden void @x264_nal_encode(%struct.x264_t* nocapture readonly %h, i8* %dst, %struct.x264_nal_t* %nal) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %nal_encode = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 1
  %1 = load void (%struct.x264_t*, i8*, %struct.x264_nal_t*)*, void (%struct.x264_t*, i8*, %struct.x264_nal_t*)** %nal_encode, align 4, !tbaa !16
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  tail call void %1(%struct.x264_t* %2, i8* %dst, %struct.x264_nal_t* %nal) #4
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_encoder_reconfig(%struct.x264_t* nocapture readonly %h, %struct.x264_param_t* %param) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_reconfig = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 2
  %1 = load i32 (%struct.x264_t*, %struct.x264_param_t*)*, i32 (%struct.x264_t*, %struct.x264_param_t*)** %encoder_reconfig, align 4, !tbaa !18
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  %call = tail call i32 %1(%struct.x264_t* %2, %struct.x264_param_t* %param) #4
  ret i32 %call
}

; Function Attrs: nounwind
define hidden void @x264_encoder_parameters(%struct.x264_t* nocapture readonly %h, %struct.x264_param_t* %param) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_parameters = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 3
  %1 = load void (%struct.x264_t*, %struct.x264_param_t*)*, void (%struct.x264_t*, %struct.x264_param_t*)** %encoder_parameters, align 4, !tbaa !19
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  tail call void %1(%struct.x264_t* %2, %struct.x264_param_t* %param) #4
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_encoder_headers(%struct.x264_t* nocapture readonly %h, %struct.x264_nal_t** %pp_nal, i32* %pi_nal) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_headers = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 4
  %1 = load i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*)*, i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*)** %encoder_headers, align 4, !tbaa !20
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  %call = tail call i32 %1(%struct.x264_t* %2, %struct.x264_nal_t** %pp_nal, i32* %pi_nal) #4
  ret i32 %call
}

; Function Attrs: nounwind
define hidden i32 @x264_encoder_encode(%struct.x264_t* nocapture readonly %h, %struct.x264_nal_t** %pp_nal, i32* %pi_nal, %struct.x264_picture_t* %pic_in, %struct.x264_picture_t* %pic_out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_encode = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 5
  %1 = load i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*)*, i32 (%struct.x264_t*, %struct.x264_nal_t**, i32*, %struct.x264_picture_t*, %struct.x264_picture_t*)** %encoder_encode, align 4, !tbaa !21
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  %call = tail call i32 %1(%struct.x264_t* %2, %struct.x264_nal_t** %pp_nal, i32* %pi_nal, %struct.x264_picture_t* %pic_in, %struct.x264_picture_t* %pic_out) #4
  ret i32 %call
}

; Function Attrs: nounwind
define hidden i32 @x264_encoder_delayed_frames(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_delayed_frames = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 7
  %1 = load i32 (%struct.x264_t*)*, i32 (%struct.x264_t*)** %encoder_delayed_frames, align 4, !tbaa !23
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  %call = tail call i32 %1(%struct.x264_t* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind
define hidden i32 @x264_encoder_maximum_delayed_frames(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_maximum_delayed_frames = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 8
  %1 = load i32 (%struct.x264_t*)*, i32 (%struct.x264_t*)** %encoder_maximum_delayed_frames, align 4, !tbaa !24
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  %call = tail call i32 %1(%struct.x264_t* %2) #4
  ret i32 %call
}

; Function Attrs: nounwind
define hidden void @x264_encoder_intra_refresh(%struct.x264_t* nocapture readonly %h) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_intra_refresh = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 9
  %1 = load void (%struct.x264_t*)*, void (%struct.x264_t*)** %encoder_intra_refresh, align 4, !tbaa !25
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  tail call void %1(%struct.x264_t* %2) #4
  ret void
}

; Function Attrs: nounwind
define hidden i32 @x264_encoder_invalidate_reference(%struct.x264_t* nocapture readonly %h, i64 %pts) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x264_t* %h to %struct.x264_api_t*
  %encoder_invalidate_reference = getelementptr inbounds %struct.x264_api_t, %struct.x264_api_t* %0, i32 0, i32 10
  %1 = load i32 (%struct.x264_t*, i64)*, i32 (%struct.x264_t*, i64)** %encoder_invalidate_reference, align 4, !tbaa !26
  %x264 = bitcast %struct.x264_t* %h to %struct.x264_t**
  %2 = load %struct.x264_t*, %struct.x264_t** %x264, align 4, !tbaa !27
  %call = tail call i32 %1(%struct.x264_t* %2, i64 %pts) #4
  ret i32 %call
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !4, i64 40}
!3 = !{!"x264_param_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !7, i64 56, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !8, i64 180, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !5, i64 312, !5, i64 376, !5, i64 440, !8, i64 504, !8, i64 508, !4, i64 512, !4, i64 516, !8, i64 520, !9, i64 524, !11, i64 632, !12, i64 748, !4, i64 764, !13, i64 768, !15, i64 824, !4, i64 836, !4, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !4, i64 860, !4, i64 864, !4, i64 868, !4, i64 872, !4, i64 876, !4, i64 880, !4, i64 884, !4, i64 888, !4, i64 892, !4, i64 896, !4, i64 900, !8, i64 904, !8, i64 908, !4, i64 912, !4, i64 916, !4, i64 920, !4, i64 924, !4, i64 928, !8, i64 932, !8, i64 936, !8, i64 940}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !10, i64 72, !10, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !5, i64 92, !4, i64 100, !4, i64 104}
!10 = !{!"float", !5, i64 0}
!11 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !4, i64 36, !4, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !4, i64 56, !4, i64 60, !10, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !8, i64 80, !4, i64 84, !8, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !8, i64 104, !4, i64 108, !8, i64 112}
!12 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !14, i64 40, !14, i64 48}
!14 = !{!"long long", !5, i64 0}
!15 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!16 = !{!17, !8, i64 4}
!17 = !{!"x264_api_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40}
!18 = !{!17, !8, i64 8}
!19 = !{!17, !8, i64 12}
!20 = !{!17, !8, i64 16}
!21 = !{!17, !8, i64 20}
!22 = !{!17, !8, i64 24}
!23 = !{!17, !8, i64 28}
!24 = !{!17, !8, i64 32}
!25 = !{!17, !8, i64 36}
!26 = !{!17, !8, i64 40}
!27 = !{!17, !8, i64 0}
