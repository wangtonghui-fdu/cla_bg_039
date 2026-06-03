; ModuleID = 'common/bitstream.c'
source_filename = "common/bitstream.c"
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

%struct.x264_t = type { %struct.x264_param_t, i8*, [129 x %struct.x264_t*], [16 x %struct.x264_t*], i32, i32, i32, i32, i32, i32, %struct.x264_threadpool_t*, %struct.x264_threadpool_t*, i32, i32, %struct.anon.5, i8*, i32, %struct.x264_t*, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i32]*], [4 x [64 x i32]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [16 x i16]*], [4 x [64 x i16]*], [4 x [64 x i16]]*, [70 x i16*], [70 x [4 x i16*]], %struct.anon.6*, i8*, %struct.x264_slice_header_t, [1 x %struct.x264_sps_t], [1 x %struct.x264_pps_t], i32, [4 x i8], %struct.x264_slice_header_t, [48 x i8], %struct.x264_cabac_t, %struct.anon.12, %struct.x264_frame*, %struct.x264_frame*, [2 x i32], [2 x [19 x %struct.x264_frame*]], [2 x %struct.x264_frame*], [2 x i32], i32, i32, i64, %struct.anon.13, %struct.anon.14, %struct.x264_ratecontrol_t*, %struct.anon.17, [64 x i16]*, [64 x i32]*, i32*, [28 x i8], [4 x [64 x i16]], [2 x [4 x [64 x i32]]], [2 x [4 x i32]], [7 x i8], i8*, i8*, [5 x [3 x i8*]], [2 x [2 x [8 x [4 x i8]]]*], [7 x void (i8*)*], [12 x void (i8*, i8*)*], [12 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], [7 x void (i8*)*], void (i8*, i8*, i32, i32)*, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, %struct.x264_bitstream_function_t, %struct.x264_lookahead_t* }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], void (i8*, i32, i8*, i8*)*, i8*, i32, i32, i8*, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, void (i8*)*, void (%struct.x264_t*, %struct.x264_nal_t*, i8*)*, i8* }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, i32, float, i32, i32, i32, i8*, i32, i8*, float, float, float, %struct.x264_zone_t*, i32, i8* }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, %struct.x264_param_t* }
%struct.anon.2 = type { i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.anon.4 = type { i32, i32, i32 }
%struct.x264_threadpool_t = type opaque
%struct.anon.5 = type { i32, i32, %struct.x264_nal_t*, i32, i8*, %struct.bs_s }
%struct.bs_s = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.anon.6 = type { [70 x [3 x [33 x i16]]], [70 x [17 x i16]] }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.7, i32, %struct.anon.8, i32, i32, i32, i32, i32, [8 x i8*] }
%struct.anon.7 = type { i32, i32, i32, i32 }
%struct.anon.8 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.9, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.9 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_slice_header_t = type { %struct.x264_sps_t*, %struct.x264_pps_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [2 x i32], [2 x [16 x %struct.anon.10]], i32, [4 x i8], [32 x [3 x %struct.x264_weight_t]], i32, i32, [16 x %struct.anon.11], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.anon.10 = type { i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)** }
%struct.anon.11 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, i8*, i8*, i8*, [36 x i8], i32, [1024 x i8], [12 x i8], [48 x i8] }
%struct.anon.12 = type { %struct.x264_frame**, [2 x %struct.x264_frame**], %struct.x264_frame**, [18 x %struct.x264_frame*], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], i64, i64, i32, i32 }
%struct.x264_frame = type { i8*, i32, [2 x i32], i32, i32, i32, i64, i64, i64, i64, float, i64, i64, i64, %struct.x264_param_t*, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, float, float, float, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x i8*], [3 x i8*], [3 x [4 x i8*]], [3 x [4 x i8*]], [4 x i8*], i16*, [4 x i8*], [4 x i8*], i8*, [12 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x i8*], i32, %struct.x264_frame*, i8*, i8*, [2 x [2 x i16]*], [2 x i16]*, [2 x [17 x [2 x i16]*]], i8*, i8*, [18 x [18 x i16*]], [2 x [17 x i32*]], [2 x i8*], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x i32*]], i32*, i32*, float*, float*, float*, float*, i32, i16*, i16*, i16*, i32, [18 x float], [3 x i32], [3 x i64], %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i64, i64, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, %struct.x264_sei_t, i8*, i8*, void (i8*)*, [12 x i8] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_sei_t = type { i32, %struct.x264_sei_payload_t*, void (i8*)* }
%struct.x264_sei_payload_t = type { i32, i32, i8* }
%struct.anon.13 = type { [3 x [16 x i16]], [2 x [8 x i16]], [12 x [64 x i16]], [48 x [16 x i16]] }
%struct.anon.14 = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [3 x i32], [3 x i32], [2 x i32], [2 x i32], [3 x i32], [3 x i32], [4 x i8], [2 x [2 x i16]], [3 x i32], [3 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, [2 x i32], i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, %struct.x264_left_table_t*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i16*, [8 x i8]*, [48 x i8]*, i8*, [2 x [2 x i16]*], [2 x [8 x [2 x i8]]*], [2 x i8*], [2 x [32 x [2 x i16]*]], i8*, i8*, i32*, i8*, [16 x i8*], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.anon.15, %struct.anon.16, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [2 x i32]], i32, i32, [2 x [2 x [32 x [4 x i16]]]], [4 x i16]*, [2 x [2 x [32 x [4 x i8]]]], [4 x i8]*, [18 x i8], i32, [34 x i8], [38 x i8] }
%struct.x264_left_table_t = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.anon.15 = type { [768 x i8], [1728 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x i32], [4 x i32], [4 x [64 x i16]], [16 x [16 x i16]], [32 x i32], [9 x i64], i32, i32, [3 x i8*], [3 x i8*], [3 x i8*], [2 x i32], [2 x [32 x [12 x i8*]]], [32 x i8*], [2 x [16 x i16*]], [3 x i32], [56 x i8] }
%struct.anon.16 = type { [40 x i8], [120 x i8], [2 x [40 x i8]], [2 x [40 x [2 x i16]]], [2 x [40 x [2 x i8]]], [40 x i8], [2 x [4 x [2 x i16]]], [2 x [4 x i8]], i32, [2 x i16], i32, i32, i32, i32, [2 x [3 x [2 x i16]]], [2 x [3 x i8]], [8 x [4 x i8]]*, [4 x i8] }
%struct.x264_ratecontrol_t = type opaque
%struct.anon.17 = type { [3 x i32], [3 x i64], [3 x double], [17 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [6 x i64], [4 x [13 x i64]], [3 x i64], [2 x i32], [2 x i32], [2 x i32], %struct.x264_frame_stat_t }
%struct.x264_frame_stat_t = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], [6 x i32], [4 x [13 x i32]], [3 x i32], [2 x i32], [3 x i64], double, i32 }
%struct.x264_pixel_function_t = type { [8 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [7 x i32 (i8*, i32, i8*, i32)*], [4 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [8 x i32 (i8*, i32, i8*, i32)*], [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [8 x i32 (i8*, i32, i8*, i32)*], i32 (i8*, i32, i32)*, i32 (i8*, i32, i8*, i32, i32)*, [1 x i64 (i8*, i32, i8*, i32)*], [4 x i64 (i8*, i32)*], [4 x i32 (i8*, i8*, i32*)*], [4 x i64 (i8*, i32)*], void (i8*, i32, i8*, i32, i32, i32, i64*, i64*)*, void (i8*, i32, i8*, i32, [4 x i32]*)*, float ([4 x i32]*, [4 x i32]*, i32)*, [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i32, i32*)*], [7 x void (i8*, i8*, i8*, i8*, i8*, i32, i32*)*], [7 x i32 (i32*, i16*, i32, i16*, i16*, i32, i32)*], void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, void (i8*, i8*, i32*)*, i32 (i8*, i8*, i16*)*, i32 (i8*, i8*, i16*)*, i32 (i8*, i8*, i16*)*, i32 (i8*, i8*, i8*, i16*, i16*)*, i32 (i8*, i8*, i8*, i16*, i16*)*, i32 (i8*, i8*, i8*, i16*, i16*)* }
%struct.x264_mc_functions_t = type { void (i8*, i32, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, i8* (i8*, i32*, i8**, i32, i32, i32, i32, i32, %struct.x264_weight_t*)*, void (i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)*, [12 x void (i8*, i32, i8*, i32, i8*, i32, i32)*], [7 x void (i8*, i32, i8*, i32, i32)*], void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i8*, i32)*, void (i8*, i8*, i32, i32)*, void (i8*, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i32, i32)*, void (i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32)*, void (i8*, i32, i8*, i32, i32*, i32, i32, i32)*, void (i8*, i8*, i8*, i8*, i32, i32, i32, i16*)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i8*, i32, i32)*, void (i8*, i32, i32)*, i8* (i8*, i8*, i32)*, void (i8*, i32)*, void (i16*, i8*, i32)*, void (i16*, i8*, i32)*, void (i16*, i16*, i32)*, void (i16*, i32)*, void (i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32)*, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (i8*, i32, i8*, i32, %struct.x264_weight_t*, i32)**, void (%struct.x264_t*, %struct.x264_weight_t*)*, void (i16*, i16*, i16*, i16*, i16*, float*, i32)*, void (%struct.x264_t*, i16*, [2 x i16]*, i16*, i16*, i32, i32, i32, i32)*, void (i16*, float*, i32)*, void (float*, i16*, i32)* }
%struct.x264_dct_function_t = type { void (i16*, i8*, i8*)*, void (i8*, i16*)*, void ([16 x i16]*, i8*, i8*)*, void (i16*, i8*, i8*)*, void (i8*, [16 x i16]*)*, void (i8*, i16*)*, void (i16*, i8*, i8*)*, void ([16 x i16]*, i8*, i8*)*, void (i8*, [16 x i16]*)*, void (i8*, i16*)*, void (i16*, i8*, i8*)*, void (i8*, i16*)*, void ([64 x i16]*, i8*, i8*)*, void (i8*, [64 x i16]*)*, void (i16*)*, void (i16*)*, void (i16*, [16 x i16]*)* }
%struct.x264_zigzag_function_t = type { void (i16*, i16*)*, void (i16*, i16*)*, i32 (i16*, i8*, i8*)*, i32 (i16*, i8*, i8*)*, i32 (i16*, i8*, i8*, i16*)*, void (i16*, i16*, i8*)* }
%struct.x264_quant_function_t = type { i32 (i16*, i16*, i16*)*, i32 (i16*, i16*, i16*)*, i32 ([16 x i16]*, i16*, i16*)*, i32 (i16*, i32, i32)*, i32 (i16*, i32, i32)*, void (i16*, [64 x i32]*, i32)*, void (i16*, [16 x i32]*, i32)*, void (i16*, [16 x i32]*, i32)*, void (i16*, [16 x i16]*, [16 x i32]*, i32)*, void (i16*, [16 x i32]*, i32)*, i32 (i16*, i32)*, i32 (i16*, i32)*, void (i16*, i32*, i16*, i32)*, i32 (i16*)*, i32 (i16*)*, i32 (i16*)*, [14 x i32 (i16*)*], i32 (i16*)*, i32 (i16*)*, [13 x i32 (i16*, %struct.x264_run_level_t*)*], i32 (i16*, %struct.x264_run_level_t*)*, i32 (i16*, %struct.x264_run_level_t*)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32, i16*, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32, i16*, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16, i32)*, i32 (i32*, i8*, i32, i32, i16*, i16*, i16*, i8*, i8*, i64, i16)* }
%struct.x264_run_level_t = type { i32, i32, [8 x i8], [18 x i16], [12 x i8] }
%struct.x264_deblock_function_t = type { [2 x void (i8*, i32, i32, i32, i8*)*], [2 x void (i8*, i32, i32, i32, i8*)*], void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, [2 x void (i8*, i32, i32, i32)*], [2 x void (i8*, i32, i32, i32)*], void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32, i8*)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, i32, i32, i32)*, void (i8*, [40 x i8]*, [40 x [2 x i16]]*, [8 x [4 x i8]]*, i32, i32)* }
%struct.x264_bitstream_function_t = type { i8* (i8*, i8*, i8*)*, void (i16*, i32, i32, %struct.x264_cabac_t*)*, void (i16*, i32, i32, %struct.x264_cabac_t*)*, void (i16*, i32, i32, %struct.x264_cabac_t*)* }
%struct.x264_lookahead_t = type { i8, i8, i8, i32, i32, %struct.x264_frame*, i32, %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t, %struct.x264_sync_frame_list_t }
%struct.x264_sync_frame_list_t = type { %struct.x264_frame**, i32, i32, i32, i32, i32 }
%struct.x264_nal_t = type { i32, i32, i32, i32, i32, i32, i8*, i32 }

; Function Attrs: nounwind
define hidden void @x264_8_nal_encode(%struct.x264_t* nocapture readonly %h, i8* %dst, %struct.x264_nal_t* nocapture %nal) local_unnamed_addr #0 {
entry:
  %p_payload = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %nal, i32 0, i32 6
  %0 = load i8*, i8** %p_payload, align 4, !tbaa !2
  %i_payload = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %nal, i32 0, i32 5
  %1 = load i32, i32* %i_payload, align 4, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %0, i32 %1
  %b_annexb = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 60
  %2 = load i32, i32* %b_annexb, align 16, !tbaa !9
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %b_long_startcode = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %nal, i32 0, i32 2
  %3 = load i32, i32* %b_long_startcode, align 4, !tbaa !39
  %tobool2 = icmp eq i32 %3, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8, i8* %dst, i32 1
  store i8 0, i8* %dst, align 1, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then3
  %dst.addr.0 = phi i8* [ %incdec.ptr, %if.then3 ], [ %dst, %if.then ]
  %incdec.ptr4 = getelementptr inbounds i8, i8* %dst.addr.0, i32 1
  store i8 0, i8* %dst.addr.0, align 1, !tbaa !40
  %incdec.ptr5 = getelementptr inbounds i8, i8* %dst.addr.0, i32 2
  store i8 0, i8* %incdec.ptr4, align 1, !tbaa !40
  %incdec.ptr6 = getelementptr inbounds i8, i8* %dst.addr.0, i32 3
  store i8 1, i8* %incdec.ptr5, align 1, !tbaa !40
  br label %if.end8

if.else:                                          ; preds = %entry
  %add.ptr7 = getelementptr inbounds i8, i8* %dst, i32 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %dst.addr.1 = phi i8* [ %incdec.ptr6, %if.end ], [ %add.ptr7, %if.else ]
  %i_ref_idc = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %nal, i32 0, i32 0
  %4 = load i32, i32* %i_ref_idc, align 4, !tbaa !41
  %shl = shl i32 %4, 5
  %i_type = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %nal, i32 0, i32 1
  %5 = load i32, i32* %i_type, align 4, !tbaa !42
  %or9 = or i32 %shl, %5
  %conv = trunc i32 %or9 to i8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %dst.addr.1, i32 1
  store i8 %conv, i8* %dst.addr.1, align 1, !tbaa !40
  %nal_escape = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 100, i32 0
  %6 = load i8* (i8*, i8*, i8*)*, i8* (i8*, i8*, i8*)** %nal_escape, align 4, !tbaa !43
  %call = tail call i8* %6(i8* nonnull %incdec.ptr10, i8* %0, i8* %add.ptr) #3
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %dst to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %i_avcintra_class = getelementptr inbounds %struct.x264_t, %struct.x264_t* %h, i32 0, i32 0, i32 27
  %7 = load i32, i32* %i_avcintra_class, align 4, !tbaa !44
  %tobool12 = icmp eq i32 %7, 0
  br i1 %tobool12, label %if.end23, label %if.then13

if.then13:                                        ; preds = %if.end8
  %8 = load i32, i32* %i_payload, align 4, !tbaa !8
  %i_padding = getelementptr inbounds %struct.x264_nal_t, %struct.x264_nal_t* %nal, i32 0, i32 7
  %9 = load i32, i32* %i_padding, align 4, !tbaa !45
  %add = add i32 %8, 5
  %add15 = add i32 %add, %9
  %sub = sub nsw i32 %add15, %sub.ptr.sub
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then13
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %call, i8 0, i32 %sub, i1 false)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then13
  %size.0 = phi i32 [ %add15, %if.then17 ], [ %sub.ptr.sub, %if.then13 ]
  %cond = select i1 %cmp, i32 %sub, i32 0
  store i32 %cond, i32* %i_padding, align 4, !tbaa !45
  br label %if.end23

if.end23:                                         ; preds = %if.end8, %if.end19
  %size.1 = phi i32 [ %size.0, %if.end19 ], [ %sub.ptr.sub, %if.end8 ]
  %10 = load i32, i32* %b_annexb, align 16, !tbaa !9
  %tobool26 = icmp eq i32 %10, 0
  br i1 %tobool26, label %if.then27, label %if.end39

if.then27:                                        ; preds = %if.end23
  %sub28 = add nsw i32 %size.1, -4
  %11 = lshr i32 %sub28, 24
  %conv29 = trunc i32 %11 to i8
  store i8 %conv29, i8* %dst, align 1, !tbaa !40
  %12 = lshr i32 %sub28, 16
  %conv31 = trunc i32 %12 to i8
  %arrayidx32 = getelementptr inbounds i8, i8* %dst, i32 1
  store i8 %conv31, i8* %arrayidx32, align 1, !tbaa !40
  %13 = lshr i32 %sub28, 8
  %conv34 = trunc i32 %13 to i8
  %arrayidx35 = getelementptr inbounds i8, i8* %dst, i32 2
  store i8 %conv34, i8* %arrayidx35, align 1, !tbaa !40
  %conv37 = trunc i32 %sub28 to i8
  %arrayidx38 = getelementptr inbounds i8, i8* %dst, i32 3
  store i8 %conv37, i8* %arrayidx38, align 1, !tbaa !40
  br label %if.end39

if.end39:                                         ; preds = %if.end23, %if.then27
  store i32 %size.1, i32* %i_payload, align 4, !tbaa !8
  store i8* %dst, i8** %p_payload, align 4, !tbaa !2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind
define hidden void @x264_8_bitstream_init(i32 %cpu, %struct.x264_bitstream_function_t* nocapture %pf) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.x264_bitstream_function_t, %struct.x264_bitstream_function_t* %pf, i32 0, i32 1
  %1 = bitcast void (i16*, i32, i32, %struct.x264_cabac_t*)** %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %1, i8 0, i32 12, i1 false)
  %nal_escape = getelementptr inbounds %struct.x264_bitstream_function_t, %struct.x264_bitstream_function_t* %pf, i32 0, i32 0
  store i8* (i8*, i8*, i8*)* @nal_escape_c, i8* (i8*, i8*, i8*)** %nal_escape, align 4, !tbaa !46
  ret void
}

; Function Attrs: nofree norecurse nounwind
define internal i8* @nal_escape_c(i8* %dst, i8* readonly %src, i8* readnone %end) #2 {
entry:
  %cmp = icmp ult i8* %src, %end
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %src, i32 1
  %0 = load i8, i8* %src, align 1, !tbaa !40
  %incdec.ptr1 = getelementptr inbounds i8, i8* %dst, i32 1
  store i8 %0, i8* %dst, align 1, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %src.addr.0 = phi i8* [ %incdec.ptr, %if.then ], [ %src, %entry ]
  %dst.addr.0 = phi i8* [ %incdec.ptr1, %if.then ], [ %dst, %entry ]
  %cmp2 = icmp ult i8* %src.addr.0, %end
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %incdec.ptr4 = getelementptr inbounds i8, i8* %src.addr.0, i32 1
  %1 = load i8, i8* %src.addr.0, align 1, !tbaa !40
  %incdec.ptr5 = getelementptr inbounds i8, i8* %dst.addr.0, i32 1
  store i8 %1, i8* %dst.addr.0, align 1, !tbaa !40
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %src.addr.1 = phi i8* [ %incdec.ptr4, %if.then3 ], [ %src.addr.0, %if.end ]
  %dst.addr.1 = phi i8* [ %incdec.ptr5, %if.then3 ], [ %dst.addr.0, %if.end ]
  %cmp733 = icmp ult i8* %src.addr.1, %end
  br i1 %cmp733, label %while.body, label %while.end

while.body:                                       ; preds = %if.end6, %if.end16
  %dst.addr.235 = phi i8* [ %incdec.ptr18, %if.end16 ], [ %dst.addr.1, %if.end6 ]
  %src.addr.234 = phi i8* [ %incdec.ptr17, %if.end16 ], [ %src.addr.1, %if.end6 ]
  %2 = load i8, i8* %src.addr.234, align 1, !tbaa !40
  %cmp8 = icmp ult i8 %2, 4
  br i1 %cmp8, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %while.body
  %arrayidx10 = getelementptr inbounds i8, i8* %dst.addr.235, i32 -2
  %3 = load i8, i8* %arrayidx10, align 1, !tbaa !40
  %tobool = icmp eq i8 %3, 0
  br i1 %tobool, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr inbounds i8, i8* %dst.addr.235, i32 -1
  %4 = load i8, i8* %arrayidx12, align 1, !tbaa !40
  %tobool13 = icmp eq i8 %4, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true11
  %incdec.ptr15 = getelementptr inbounds i8, i8* %dst.addr.235, i32 1
  store i8 3, i8* %dst.addr.235, align 1, !tbaa !40
  %.pre = load i8, i8* %src.addr.234, align 1, !tbaa !40
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true11, %land.lhs.true, %if.then14, %while.body
  %5 = phi i8 [ %2, %land.lhs.true ], [ %2, %land.lhs.true11 ], [ %.pre, %if.then14 ], [ %2, %while.body ]
  %dst.addr.3 = phi i8* [ %dst.addr.235, %land.lhs.true ], [ %dst.addr.235, %land.lhs.true11 ], [ %incdec.ptr15, %if.then14 ], [ %dst.addr.235, %while.body ]
  %incdec.ptr17 = getelementptr inbounds i8, i8* %src.addr.234, i32 1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %dst.addr.3, i32 1
  store i8 %5, i8* %dst.addr.3, align 1, !tbaa !40
  %exitcond = icmp eq i8* %incdec.ptr17, %end
  br i1 %exitcond, label %while.end, label %while.body

while.end:                                        ; preds = %if.end16, %if.end6
  %dst.addr.2.lcssa = phi i8* [ %dst.addr.1, %if.end6 ], [ %incdec.ptr18, %if.end16 ]
  ret i8* %dst.addr.2.lcssa
}

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="dspse" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (http://10.18.30.194:8888/compiler/compiler10.git 713ef477716300a9b04a1522e3fce445623444dc)"}
!2 = !{!3, !7, i64 24}
!3 = !{!"x264_nal_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !7, i64 24, !4, i64 28}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!3, !4, i64 20}
!9 = !{!10, !4, i64 848}
!10 = !{!"x264_t", !11, i64 0, !7, i64 944, !5, i64 948, !5, i64 1464, !4, i64 1528, !4, i64 1532, !4, i64 1536, !4, i64 1540, !4, i64 1544, !4, i64 1548, !7, i64 1552, !7, i64 1556, !4, i64 1560, !4, i64 1564, !20, i64 1568, !7, i64 1612, !4, i64 1616, !7, i64 1620, !4, i64 1624, !4, i64 1628, !4, i64 1632, !4, i64 1636, !4, i64 1640, !4, i64 1644, !18, i64 1648, !4, i64 1656, !18, i64 1664, !18, i64 1672, !18, i64 1680, !18, i64 1688, !18, i64 1696, !18, i64 1704, !18, i64 1712, !4, i64 1720, !18, i64 1728, !4, i64 1736, !5, i64 1740, !5, i64 1756, !5, i64 1772, !5, i64 1788, !5, i64 1804, !5, i64 1820, !5, i64 1836, !5, i64 1852, !5, i64 1868, !5, i64 1884, !7, i64 1900, !5, i64 1904, !5, i64 2184, !7, i64 3304, !7, i64 3308, !22, i64 3312, !5, i64 8448, !5, i64 8760, !4, i64 8824, !22, i64 8832, !23, i64 14016, !24, i64 15168, !7, i64 15352, !7, i64 15356, !5, i64 15360, !5, i64 15368, !5, i64 15520, !5, i64 15528, !4, i64 15536, !4, i64 15540, !18, i64 15544, !25, i64 15552, !26, i64 18752, !7, i64 30784, !29, i64 30792, !7, i64 34104, !7, i64 34108, !7, i64 34112, !5, i64 34144, !5, i64 34656, !5, i64 36704, !5, i64 36736, !7, i64 36744, !7, i64 36748, !5, i64 36752, !5, i64 36812, !5, i64 36820, !5, i64 36848, !5, i64 36896, !5, i64 36944, !5, i64 36972, !5, i64 37000, !7, i64 37028, !32, i64 37032, !33, i64 37664, !34, i64 37880, !35, i64 37948, !35, i64 37972, !35, i64 37996, !36, i64 38020, !37, i64 38232, !38, i64 38316, !7, i64 38332}
!11 = !{!"x264_param_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !12, i64 56, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !7, i64 180, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !5, i64 312, !5, i64 376, !5, i64 440, !7, i64 504, !7, i64 508, !4, i64 512, !4, i64 516, !7, i64 520, !13, i64 524, !15, i64 632, !16, i64 748, !4, i64 764, !17, i64 768, !19, i64 824, !4, i64 836, !4, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !4, i64 860, !4, i64 864, !4, i64 868, !4, i64 872, !4, i64 876, !4, i64 880, !4, i64 884, !4, i64 888, !4, i64 892, !4, i64 896, !4, i64 900, !7, i64 904, !7, i64 908, !4, i64 912, !4, i64 916, !4, i64 920, !4, i64 924, !4, i64 928, !7, i64 932, !7, i64 936, !7, i64 940}
!12 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !14, i64 72, !14, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !5, i64 92, !4, i64 100, !4, i64 104}
!14 = !{!"float", !5, i64 0}
!15 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !7, i64 80, !4, i64 84, !7, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !7, i64 104, !4, i64 108, !7, i64 112}
!16 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!17 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !18, i64 40, !18, i64 48}
!18 = !{!"long long", !5, i64 0}
!19 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!20 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !4, i64 12, !7, i64 16, !21, i64 20}
!21 = !{!"bs_s", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!22 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !5, i64 52, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !5, i64 80, !5, i64 88, !4, i64 344, !5, i64 352, !4, i64 4960, !4, i64 4964, !5, i64 4968, !4, i64 5096, !4, i64 5100, !4, i64 5104, !4, i64 5108, !4, i64 5112, !4, i64 5116, !4, i64 5120, !4, i64 5124}
!23 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !4, i64 64, !5, i64 68, !5, i64 1092}
!24 = !{!"", !7, i64 0, !5, i64 4, !7, i64 12, !5, i64 16, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !18, i64 128, !18, i64 136, !5, i64 144, !18, i64 160, !18, i64 168, !4, i64 176, !4, i64 180}
!25 = !{!"", !5, i64 0, !5, i64 96, !5, i64 128, !5, i64 1664}
!26 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !5, i64 108, !5, i64 116, !5, i64 124, !5, i64 136, !5, i64 148, !5, i64 156, !5, i64 164, !5, i64 176, !5, i64 192, !5, i64 200, !5, i64 212, !4, i64 224, !5, i64 228, !5, i64 244, !4, i64 308, !4, i64 312, !4, i64 316, !5, i64 320, !4, i64 328, !4, i64 332, !4, i64 336, !5, i64 340, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !7, i64 372, !4, i64 376, !4, i64 380, !4, i64 384, !4, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !5, i64 720, !4, i64 784, !4, i64 788, !5, i64 792, !4, i64 796, !4, i64 800, !4, i64 804, !4, i64 808, !4, i64 812, !4, i64 816, !4, i64 820, !4, i64 824, !4, i64 828, !4, i64 832, !4, i64 836, !27, i64 896, !28, i64 9472, !4, i64 10336, !4, i64 10340, !4, i64 10344, !4, i64 10348, !4, i64 10352, !4, i64 10356, !4, i64 10360, !4, i64 10364, !5, i64 10368, !4, i64 10384, !4, i64 10388, !5, i64 10392, !7, i64 11416, !5, i64 11420, !7, i64 11932, !5, i64 11936, !4, i64 11956, !5, i64 11960}
!27 = !{!"", !5, i64 0, !5, i64 768, !5, i64 2496, !5, i64 2752, !5, i64 3008, !5, i64 3392, !5, i64 3872, !5, i64 3888, !5, i64 3904, !5, i64 4416, !5, i64 4928, !5, i64 5056, !4, i64 5128, !4, i64 5132, !5, i64 5136, !5, i64 5148, !5, i64 5160, !5, i64 5172, !5, i64 5180, !5, i64 8252, !5, i64 8380, !5, i64 8508}
!28 = !{!"", !5, i64 0, !5, i64 40, !5, i64 160, !5, i64 240, !5, i64 560, !5, i64 720, !5, i64 760, !5, i64 792, !4, i64 800, !5, i64 804, !4, i64 808, !4, i64 812, !4, i64 816, !4, i64 820, !5, i64 824, !5, i64 848, !7, i64 856}
!29 = !{!"", !5, i64 0, !5, i64 16, !5, i64 40, !5, i64 64, !5, i64 136, !5, i64 160, !5, i64 184, !5, i64 208, !5, i64 232, !5, i64 256, !5, i64 280, !5, i64 304, !5, i64 760, !5, i64 1032, !5, i64 1048, !5, i64 2072, !5, i64 2120, !5, i64 2536, !5, i64 2560, !5, i64 2568, !5, i64 2576, !30, i64 2584}
!30 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12, !4, i64 88, !4, i64 92, !4, i64 96, !5, i64 100, !5, i64 108, !5, i64 364, !5, i64 432, !5, i64 456, !5, i64 664, !5, i64 676, !5, i64 688, !31, i64 712, !4, i64 720}
!31 = !{!"double", !5, i64 0}
!32 = !{!"", !5, i64 0, !5, i64 32, !5, i64 64, !5, i64 96, !5, i64 124, !5, i64 140, !5, i64 172, !5, i64 204, !5, i64 236, !5, i64 264, !5, i64 292, !7, i64 324, !7, i64 328, !5, i64 332, !5, i64 336, !5, i64 352, !5, i64 368, !7, i64 384, !7, i64 388, !7, i64 392, !5, i64 396, !5, i64 424, !5, i64 452, !5, i64 480, !5, i64 508, !7, i64 536, !7, i64 540, !7, i64 544, !7, i64 548, !7, i64 552, !7, i64 556, !7, i64 560, !7, i64 564, !7, i64 568, !7, i64 572, !7, i64 576, !7, i64 580, !7, i64 584, !7, i64 588, !7, i64 592, !7, i64 596, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !7, i64 620, !7, i64 624, !7, i64 628}
!33 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !5, i64 12, !5, i64 60, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212}
!34 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64}
!35 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!36 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !5, i64 64, !7, i64 120, !7, i64 124, !5, i64 128, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208}
!37 = !{!"", !5, i64 0, !5, i64 8, !7, i64 16, !7, i64 20, !5, i64 24, !5, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80}
!38 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!39 = !{!3, !4, i64 8}
!40 = !{!5, !5, i64 0}
!41 = !{!3, !4, i64 0}
!42 = !{!3, !4, i64 4}
!43 = !{!10, !7, i64 38316}
!44 = !{!10, !4, i64 140}
!45 = !{!3, !4, i64 28}
!46 = !{!38, !7, i64 0}
